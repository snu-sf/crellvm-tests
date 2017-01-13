; ModuleID = './MultiSource.Benchmarks.MiBench/75.consumer-typeset.z44.bc'
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
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"VerticalHyphenate: type(y) != HCAT!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"TransferLinks: start_link!\00", align 1
@zz_res = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"FirstDefiniteCompressed!\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NDWGC!\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"FirstDefiniteWithGapCompressed: mode(gap(g))!\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MoveIndexes: is_index!\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"ConvertGalleyList: x!\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"ConvertGalleyList: y!\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"BuildEnclose: no enclose!\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%s may not have a left or named parameter\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"@Enclose\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s may not have a body parameter\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"%s must have a right parameter\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"BuildEnclose:  hd child!\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"EncloseInHCat: Up(nxt) == nxt!\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"EncloseInHCat: Up(nxt) != nxt!\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"EncloseInHcat: type(s2) != SPLIT!\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"FindTarget: unknown index\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"BuildMergeTree: has_m!\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"BuildMergeTree: y!\00", align 1

; Function Attrs: nounwind uwtable
define i32 @VerticalHyphenate(%union.rec* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %y.addr = alloca %union.rec*, align 8
  %large_comp = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %row_thread = alloca %union.rec*, align 8
  %s1 = alloca %union.rec*, align 8
  %s2 = alloca %union.rec*, align 8
  %sh = alloca %union.rec*, align 8
  %sv = alloca %union.rec*, align 8
  %shp = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %nxt = alloca %union.rec*, align 8
  %large_comp_split = alloca %union.rec*, align 8
  %rump_fwd = alloca i32, align 4
  %jn = alloca i32, align 4
  %xxstart = alloca %union.rec*, align 8
  %xxstop = alloca %union.rec*, align 8
  %xxdest = alloca %union.rec*, align 8
  %start_link = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %yg = alloca %union.rec*, align 8
  %z629 = alloca %union.rec*, align 8
  %jn630 = alloca i32, align 4
  %xxstart1038 = alloca %union.rec*, align 8
  %xxstop1043 = alloca %union.rec*, align 8
  %xxdest1044 = alloca %union.rec*, align 8
  %xxstart1572 = alloca %union.rec*, align 8
  %xxstop1577 = alloca %union.rec*, align 8
  %xxdest1578 = alloca %union.rec*, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store %union.rec* null, %union.rec** %large_comp, align 8
  store %union.rec* null, %union.rec** %row_thread, align 8
  store i32 0, i32* %rump_fwd, align 4
  %0 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 18
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %y.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %4, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.194, %if.end
  %5 = load %union.rec*, %union.rec** %link, align 8
  %6 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp3 = icmp ne %union.rec* %5, %6
  br i1 %cmp3, label %for.body, label %for.end.199

for.body:                                         ; preds = %for.cond
  %7 = load %union.rec*, %union.rec** %link, align 8
  %os15 = bitcast %union.rec* %7 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %8, %union.rec** %s1, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %9 = load %union.rec*, %union.rec** %s1, align 8
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
  %11 = load %union.rec*, %union.rec** %s1, align 8
  %os117 = bitcast %union.rec* %11 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %opred20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred20, align 8
  store %union.rec* %12, %union.rec** %s1, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %13 = load %union.rec*, %union.rec** %s1, align 8
  %os121 = bitcast %union.rec* %13 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %14 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %14 to i32
  %cmp26 = icmp eq i32 %conv25, 1
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %for.end
  %15 = load %union.rec*, %union.rec** %s1, align 8
  %os5 = bitcast %union.rec* %15 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %16 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %16, align 4
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.28
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.28
  br label %for.inc.194

if.end.31:                                        ; preds = %for.end
  %17 = load %union.rec*, %union.rec** %s1, align 8
  %os132 = bitcast %union.rec* %17 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %os1134 = bitcast %union.FIRST_UNION* %ou133 to %struct.anon*
  %otype35 = getelementptr inbounds %struct.anon, %struct.anon* %os1134, i32 0, i32 0
  %18 = load i8, i8* %otype35, align 1
  %conv36 = zext i8 %18 to i32
  %cmp37 = icmp eq i32 %conv36, 26
  br i1 %cmp37, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %19 = load %union.rec*, %union.rec** %s1, align 8
  %os139 = bitcast %union.rec* %19 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %os1141 = bitcast %union.FIRST_UNION* %ou140 to %struct.anon*
  %otype42 = getelementptr inbounds %struct.anon, %struct.anon* %os1141, i32 0, i32 0
  %20 = load i8, i8* %otype42, align 1
  %conv43 = zext i8 %20 to i32
  %cmp44 = icmp eq i32 %conv43, 24
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %lor.lhs.false, %if.end.31
  %21 = load %union.rec*, %union.rec** %s1, align 8
  %os147 = bitcast %union.rec* %21 to %struct.word_type*
  %olist48 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist48, i32 0, i64 0
  %osucc50 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx49, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %osucc50, align 8
  %os151 = bitcast %union.rec* %22 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 1
  %opred54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred54, align 8
  store %union.rec* %23, %union.rec** %s2, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.64, %if.then.46
  %24 = load %union.rec*, %union.rec** %s2, align 8
  %os156 = bitcast %union.rec* %24 to %struct.word_type*
  %ou157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 1
  %os1158 = bitcast %union.FIRST_UNION* %ou157 to %struct.anon*
  %otype59 = getelementptr inbounds %struct.anon, %struct.anon* %os1158, i32 0, i32 0
  %25 = load i8, i8* %otype59, align 1
  %conv60 = zext i8 %25 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %for.body.63, label %for.end.69

for.body.63:                                      ; preds = %for.cond.55
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.63
  %26 = load %union.rec*, %union.rec** %s2, align 8
  %os165 = bitcast %union.rec* %26 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %opred68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred68, align 8
  store %union.rec* %27, %union.rec** %s2, align 8
  br label %for.cond.55

for.end.69:                                       ; preds = %for.cond.55
  br label %if.end.70

if.else:                                          ; preds = %lor.lhs.false
  %28 = load %union.rec*, %union.rec** %s1, align 8
  store %union.rec* %28, %union.rec** %s2, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else, %for.end.69
  %29 = load %union.rec*, %union.rec** %s2, align 8
  %os171 = bitcast %union.rec* %29 to %struct.word_type*
  %ou172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 1
  %os1173 = bitcast %union.FIRST_UNION* %ou172 to %struct.anon*
  %otype74 = getelementptr inbounds %struct.anon, %struct.anon* %os1173, i32 0, i32 0
  %30 = load i8, i8* %otype74, align 1
  %conv75 = zext i8 %30 to i32
  %cmp76 = icmp ne i32 %conv75, 9
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.70
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.70
  %31 = load %union.rec*, %union.rec** %s2, align 8
  %os180 = bitcast %union.rec* %31 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 0
  %osucc83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %osucc83, align 8
  %os184 = bitcast %union.rec* %32 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred87, align 8
  store %union.rec* %33, %union.rec** %sh, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.97, %if.end.79
  %34 = load %union.rec*, %union.rec** %sh, align 8
  %os189 = bitcast %union.rec* %34 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %os1191 = bitcast %union.FIRST_UNION* %ou190 to %struct.anon*
  %otype92 = getelementptr inbounds %struct.anon, %struct.anon* %os1191, i32 0, i32 0
  %35 = load i8, i8* %otype92, align 1
  %conv93 = zext i8 %35 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %for.body.96, label %for.end.102

for.body.96:                                      ; preds = %for.cond.88
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.96
  %36 = load %union.rec*, %union.rec** %sh, align 8
  %os198 = bitcast %union.rec* %36 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 1
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred101, align 8
  store %union.rec* %37, %union.rec** %sh, align 8
  br label %for.cond.88

for.end.102:                                      ; preds = %for.cond.88
  %38 = load %union.rec*, %union.rec** %s2, align 8
  %os1103 = bitcast %union.rec* %38 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 0
  %opred106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred106, align 8
  %os1107 = bitcast %union.rec* %39 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 1
  %opred110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %opred110, align 8
  store %union.rec* %40, %union.rec** %sv, align 8
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.120, %for.end.102
  %41 = load %union.rec*, %union.rec** %sv, align 8
  %os1112 = bitcast %union.rec* %41 to %struct.word_type*
  %ou1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 1
  %os11114 = bitcast %union.FIRST_UNION* %ou1113 to %struct.anon*
  %otype115 = getelementptr inbounds %struct.anon, %struct.anon* %os11114, i32 0, i32 0
  %42 = load i8, i8* %otype115, align 1
  %conv116 = zext i8 %42 to i32
  %cmp117 = icmp eq i32 %conv116, 0
  br i1 %cmp117, label %for.body.119, label %for.end.125

for.body.119:                                     ; preds = %for.cond.111
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.119
  %43 = load %union.rec*, %union.rec** %sv, align 8
  %os1121 = bitcast %union.rec* %43 to %struct.word_type*
  %olist122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist122, i32 0, i64 1
  %opred124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx123, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred124, align 8
  store %union.rec* %44, %union.rec** %sv, align 8
  br label %for.cond.111

for.end.125:                                      ; preds = %for.cond.111
  %45 = load %union.rec*, %union.rec** %sv, align 8
  %os1126 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 1
  %os11128 = bitcast %union.FIRST_UNION* %ou1127 to %struct.anon*
  %otype129 = getelementptr inbounds %struct.anon, %struct.anon* %os11128, i32 0, i32 0
  %46 = load i8, i8* %otype129, align 1
  %conv130 = zext i8 %46 to i32
  %cmp131 = icmp ne i32 %conv130, 15
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %for.end.125
  store i32 0, i32* %retval
  br label %return

if.end.134:                                       ; preds = %for.end.125
  %47 = load %union.rec*, %union.rec** %row_thread, align 8
  %cmp135 = icmp eq %union.rec* %47, null
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.134
  %48 = load %union.rec*, %union.rec** %sv, align 8
  store %union.rec* %48, %union.rec** %row_thread, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.134
  %49 = load %union.rec*, %union.rec** %sv, align 8
  %50 = load %union.rec*, %union.rec** %row_thread, align 8
  %cmp139 = icmp ne %union.rec* %49, %50
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.138
  store i32 0, i32* %retval
  br label %return

if.end.142:                                       ; preds = %if.end.138
  %51 = load %union.rec*, %union.rec** %sh, align 8
  %os1143 = bitcast %union.rec* %51 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 1
  %opred146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred146, align 8
  %os1147 = bitcast %union.rec* %52 to %struct.word_type*
  %olist148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist148, i32 0, i64 0
  %opred150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx149, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %opred150, align 8
  store %union.rec* %53, %union.rec** %shp, align 8
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.160, %if.end.142
  %54 = load %union.rec*, %union.rec** %shp, align 8
  %os1152 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 1
  %os11154 = bitcast %union.FIRST_UNION* %ou1153 to %struct.anon*
  %otype155 = getelementptr inbounds %struct.anon, %struct.anon* %os11154, i32 0, i32 0
  %55 = load i8, i8* %otype155, align 1
  %conv156 = zext i8 %55 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  br i1 %cmp157, label %for.body.159, label %for.end.165

for.body.159:                                     ; preds = %for.cond.151
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.159
  %56 = load %union.rec*, %union.rec** %shp, align 8
  %os1161 = bitcast %union.rec* %56 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 0
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %opred164, align 8
  store %union.rec* %57, %union.rec** %shp, align 8
  br label %for.cond.151

for.end.165:                                      ; preds = %for.cond.151
  %58 = load %union.rec*, %union.rec** %shp, align 8
  %59 = load %union.rec*, %union.rec** %row_thread, align 8
  %cmp166 = icmp ne %union.rec* %58, %59
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %for.end.165
  store i32 0, i32* %retval
  br label %return

if.end.169:                                       ; preds = %for.end.165
  %60 = load %union.rec*, %union.rec** %sh, align 8
  %os1170 = bitcast %union.rec* %60 to %struct.word_type*
  %ou1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 1
  %os11172 = bitcast %union.FIRST_UNION* %ou1171 to %struct.anon*
  %otype173 = getelementptr inbounds %struct.anon, %struct.anon* %os11172, i32 0, i32 0
  %61 = load i8, i8* %otype173, align 1
  %conv174 = zext i8 %61 to i32
  %cmp175 = icmp ne i32 %conv174, 19
  br i1 %cmp175, label %if.then.177, label %if.else.187

if.then.177:                                      ; preds = %if.end.169
  %62 = load i32, i32* %rump_fwd, align 4
  %63 = load %union.rec*, %union.rec** %sh, align 8
  %os1178 = bitcast %union.rec* %63 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 1
  %64 = load i32, i32* %arrayidx179, align 4
  %cmp180 = icmp slt i32 %62, %64
  br i1 %cmp180, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.177
  %65 = load %union.rec*, %union.rec** %sh, align 8
  %os1182 = bitcast %union.rec* %65 to %struct.word_type*
  %ou3183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 3
  %os31184 = bitcast %union.THIRD_UNION* %ou3183 to %struct.anon.6*
  %ofwd185 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31184, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd185, i32 0, i64 1
  %66 = load i32, i32* %arrayidx186, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.177
  %67 = load i32, i32* %rump_fwd, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %66, %cond.true ], [ %67, %cond.false ]
  store i32 %cond, i32* %rump_fwd, align 4
  br label %if.end.193

if.else.187:                                      ; preds = %if.end.169
  %68 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp188 = icmp ne %union.rec* %68, null
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %if.else.187
  store i32 0, i32* %retval
  br label %return

if.else.191:                                      ; preds = %if.else.187
  %69 = load %union.rec*, %union.rec** %sh, align 8
  store %union.rec* %69, %union.rec** %large_comp, align 8
  %70 = load %union.rec*, %union.rec** %s2, align 8
  store %union.rec* %70, %union.rec** %large_comp_split, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.191
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %cond.end
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193, %if.end.30
  %71 = load %union.rec*, %union.rec** %link, align 8
  %os1195 = bitcast %union.rec* %71 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 0
  %osucc198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %osucc198, align 8
  store %union.rec* %72, %union.rec** %link, align 8
  br label %for.cond

for.end.199:                                      ; preds = %for.cond
  %73 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp200 = icmp eq %union.rec* %73, null
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %for.end.199
  store i32 0, i32* %retval
  br label %return

if.end.203:                                       ; preds = %for.end.199
  store i32 1, i32* %jn, align 4
  %74 = load %union.rec*, %union.rec** %large_comp, align 8
  %os1204 = bitcast %union.rec* %74 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 0
  %osucc207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 1
  %75 = load %union.rec*, %union.rec** %osucc207, align 8
  store %union.rec* %75, %union.rec** %link, align 8
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.279, %if.end.203
  %76 = load %union.rec*, %union.rec** %link, align 8
  %77 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp209 = icmp ne %union.rec* %76, %77
  br i1 %cmp209, label %for.body.211, label %for.end.284

for.body.211:                                     ; preds = %for.cond.208
  %78 = load %union.rec*, %union.rec** %link, align 8
  %os1212 = bitcast %union.rec* %78 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 1
  %opred215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 0
  %79 = load %union.rec*, %union.rec** %opred215, align 8
  store %union.rec* %79, %union.rec** %prev, align 8
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.225, %for.body.211
  %80 = load %union.rec*, %union.rec** %prev, align 8
  %os1217 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 1
  %os11219 = bitcast %union.FIRST_UNION* %ou1218 to %struct.anon*
  %otype220 = getelementptr inbounds %struct.anon, %struct.anon* %os11219, i32 0, i32 0
  %81 = load i8, i8* %otype220, align 1
  %conv221 = zext i8 %81 to i32
  %cmp222 = icmp eq i32 %conv221, 0
  br i1 %cmp222, label %for.body.224, label %for.end.230

for.body.224:                                     ; preds = %for.cond.216
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.body.224
  %82 = load %union.rec*, %union.rec** %prev, align 8
  %os1226 = bitcast %union.rec* %82 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %opred229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred229, align 8
  store %union.rec* %83, %union.rec** %prev, align 8
  br label %for.cond.216

for.end.230:                                      ; preds = %for.cond.216
  %84 = load %union.rec*, %union.rec** %prev, align 8
  %os1231 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1231, i32 0, i32 1
  %os11233 = bitcast %union.FIRST_UNION* %ou1232 to %struct.anon*
  %otype234 = getelementptr inbounds %struct.anon, %struct.anon* %os11233, i32 0, i32 0
  %85 = load i8, i8* %otype234, align 1
  %conv235 = zext i8 %85 to i32
  %cmp236 = icmp eq i32 %conv235, 1
  br i1 %cmp236, label %if.then.238, label %if.else.247

if.then.238:                                      ; preds = %for.end.230
  %86 = load i32, i32* %jn, align 4
  %tobool239 = icmp ne i32 %86, 0
  br i1 %tobool239, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.238
  %87 = load %union.rec*, %union.rec** %prev, align 8
  %os5240 = bitcast %union.rec* %87 to %struct.gapobj_type*
  %ogap241 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5240, i32 0, i32 3
  %88 = bitcast %struct.GAP* %ogap241 to i16*
  %bf.load242 = load i16, i16* %88, align 4
  %bf.lshr243 = lshr i16 %bf.load242, 9
  %bf.clear244 = and i16 %bf.lshr243, 1
  %bf.cast245 = zext i16 %bf.clear244 to i32
  %tobool246 = icmp ne i32 %bf.cast245, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.238
  %89 = phi i1 [ false, %if.then.238 ], [ %tobool246, %land.rhs ]
  %land.ext = zext i1 %89 to i32
  store i32 %land.ext, i32* %jn, align 4
  br label %if.end.278

if.else.247:                                      ; preds = %for.end.230
  %90 = load %union.rec*, %union.rec** %prev, align 8
  %os1248 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 1
  %os11250 = bitcast %union.FIRST_UNION* %ou1249 to %struct.anon*
  %otype251 = getelementptr inbounds %struct.anon, %struct.anon* %os11250, i32 0, i32 0
  %91 = load i8, i8* %otype251, align 1
  %conv252 = zext i8 %91 to i32
  %cmp253 = icmp eq i32 %conv252, 9
  br i1 %cmp253, label %cond.true.255, label %cond.false.258

cond.true.255:                                    ; preds = %if.else.247
  %92 = load %union.rec*, %union.rec** %prev, align 8
  %call256 = call i32 @SplitIsDefinite(%union.rec* %92)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.then.276, label %if.end.277

cond.false.258:                                   ; preds = %if.else.247
  %93 = load %union.rec*, %union.rec** %prev, align 8
  %os1259 = bitcast %union.rec* %93 to %struct.word_type*
  %ou1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 1
  %os11261 = bitcast %union.FIRST_UNION* %ou1260 to %struct.anon*
  %otype262 = getelementptr inbounds %struct.anon, %struct.anon* %os11261, i32 0, i32 0
  %94 = load i8, i8* %otype262, align 1
  %conv263 = zext i8 %94 to i32
  %cmp264 = icmp sge i32 %conv263, 9
  br i1 %cmp264, label %land.rhs.266, label %land.end.274

land.rhs.266:                                     ; preds = %cond.false.258
  %95 = load %union.rec*, %union.rec** %prev, align 8
  %os1267 = bitcast %union.rec* %95 to %struct.word_type*
  %ou1268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 1
  %os11269 = bitcast %union.FIRST_UNION* %ou1268 to %struct.anon*
  %otype270 = getelementptr inbounds %struct.anon, %struct.anon* %os11269, i32 0, i32 0
  %96 = load i8, i8* %otype270, align 1
  %conv271 = zext i8 %96 to i32
  %cmp272 = icmp sle i32 %conv271, 99
  br label %land.end.274

land.end.274:                                     ; preds = %land.rhs.266, %cond.false.258
  %97 = phi i1 [ false, %cond.false.258 ], [ %cmp272, %land.rhs.266 ]
  br i1 %97, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %land.end.274, %cond.true.255
  br label %for.end.284

if.end.277:                                       ; preds = %land.end.274, %cond.true.255
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %land.end
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.278
  %98 = load %union.rec*, %union.rec** %link, align 8
  %os1280 = bitcast %union.rec* %98 to %struct.word_type*
  %olist281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist281, i32 0, i64 0
  %osucc283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx282, i32 0, i32 1
  %99 = load %union.rec*, %union.rec** %osucc283, align 8
  store %union.rec* %99, %union.rec** %link, align 8
  br label %for.cond.208

for.end.284:                                      ; preds = %if.then.276, %for.cond.208
  br label %while.cond

while.cond:                                       ; preds = %for.end.600, %for.end.284
  %100 = load %union.rec*, %union.rec** %link, align 8
  %101 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp285 = icmp ne %union.rec* %100, %101
  br i1 %cmp285, label %land.rhs.287, label %land.end.295

land.rhs.287:                                     ; preds = %while.cond
  %102 = load %union.rec*, %union.rec** %prev, align 8
  %os1288 = bitcast %union.rec* %102 to %struct.word_type*
  %ou1289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 1
  %os11290 = bitcast %union.FIRST_UNION* %ou1289 to %struct.anon*
  %otype291 = getelementptr inbounds %struct.anon, %struct.anon* %os11290, i32 0, i32 0
  %103 = load i8, i8* %otype291, align 1
  %conv292 = zext i8 %103 to i32
  %cmp293 = icmp eq i32 %conv292, 19
  br label %land.end.295

land.end.295:                                     ; preds = %land.rhs.287, %while.cond
  %104 = phi i1 [ false, %while.cond ], [ %cmp293, %land.rhs.287 ]
  br i1 %104, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.295
  %105 = load %union.rec*, %union.rec** %prev, align 8
  %os1297 = bitcast %union.rec* %105 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 0
  %osucc300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 1
  %106 = load %union.rec*, %union.rec** %osucc300, align 8
  store %union.rec* %106, %union.rec** %xxstart, align 8
  %107 = load %union.rec*, %union.rec** %prev, align 8
  store %union.rec* %107, %union.rec** %xxstop, align 8
  %108 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %108, %union.rec** %xxdest, align 8
  %109 = load %union.rec*, %union.rec** %xxstart, align 8
  %110 = load %union.rec*, %union.rec** %xxstop, align 8
  %cmp301 = icmp ne %union.rec* %109, %110
  br i1 %cmp301, label %if.then.303, label %if.end.394

if.then.303:                                      ; preds = %while.body
  %111 = load %union.rec*, %union.rec** %xxstart, align 8
  %os1304 = bitcast %union.rec* %111 to %struct.word_type*
  %ou1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 1
  %os11306 = bitcast %union.FIRST_UNION* %ou1305 to %struct.anon*
  %otype307 = getelementptr inbounds %struct.anon, %struct.anon* %os11306, i32 0, i32 0
  %112 = load i8, i8* %otype307, align 1
  %conv308 = zext i8 %112 to i32
  %cmp309 = icmp eq i32 %conv308, 0
  br i1 %cmp309, label %if.end.313, label %if.then.311

if.then.311:                                      ; preds = %if.then.303
  %113 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call312 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %if.then.303
  %114 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %114, %union.rec** @zz_res, align 8
  %115 = load %union.rec*, %union.rec** %xxstop, align 8
  store %union.rec* %115, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp314 = icmp eq %union.rec* %116, null
  br i1 %cmp314, label %cond.true.316, label %cond.false.317

cond.true.316:                                    ; preds = %if.end.313
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.352

cond.false.317:                                   ; preds = %if.end.313
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp318 = icmp eq %union.rec* %118, null
  br i1 %cmp318, label %cond.true.320, label %cond.false.321

cond.true.320:                                    ; preds = %cond.false.317
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.350

cond.false.321:                                   ; preds = %cond.false.317
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1322 = bitcast %union.rec* %120 to %struct.word_type*
  %olist323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1322, i32 0, i32 0
  %arrayidx324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist323, i32 0, i64 0
  %opred325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx324, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred325, align 8
  store %union.rec* %121, %union.rec** @zz_tmp, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1326 = bitcast %union.rec* %122 to %struct.word_type*
  %olist327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1326, i32 0, i32 0
  %arrayidx328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist327, i32 0, i64 0
  %opred329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx328, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred329, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1330 = bitcast %union.rec* %124 to %struct.word_type*
  %olist331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist331, i32 0, i64 0
  %opred333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx332, i32 0, i32 0
  store %union.rec* %123, %union.rec** %opred333, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1334 = bitcast %union.rec* %126 to %struct.word_type*
  %olist335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1334, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist335, i32 0, i64 0
  %opred337 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx336, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %opred337, align 8
  %os1338 = bitcast %union.rec* %127 to %struct.word_type*
  %olist339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1338, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist339, i32 0, i64 0
  %osucc341 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx340, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc341, align 8
  %128 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %129 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1342 = bitcast %union.rec* %129 to %struct.word_type*
  %olist343 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1342, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist343, i32 0, i64 0
  %opred345 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx344, i32 0, i32 0
  store %union.rec* %128, %union.rec** %opred345, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1346 = bitcast %union.rec* %131 to %struct.word_type*
  %olist347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1346, i32 0, i32 0
  %arrayidx348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist347, i32 0, i64 0
  %osucc349 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx348, i32 0, i32 1
  store %union.rec* %130, %union.rec** %osucc349, align 8
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.false.321, %cond.true.320
  %cond351 = phi %union.rec* [ %119, %cond.true.320 ], [ %130, %cond.false.321 ]
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.end.350, %cond.true.316
  %cond353 = phi %union.rec* [ %117, %cond.true.316 ], [ %cond351, %cond.end.350 ]
  %132 = load %union.rec*, %union.rec** %xxstart, align 8
  store %union.rec* %132, %union.rec** @zz_res, align 8
  %133 = load %union.rec*, %union.rec** %xxdest, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp354 = icmp eq %union.rec* %134, null
  br i1 %cmp354, label %cond.true.356, label %cond.false.357

cond.true.356:                                    ; preds = %cond.end.352
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.392

cond.false.357:                                   ; preds = %cond.end.352
  %136 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp358 = icmp eq %union.rec* %136, null
  br i1 %cmp358, label %cond.true.360, label %cond.false.361

cond.true.360:                                    ; preds = %cond.false.357
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.390

cond.false.361:                                   ; preds = %cond.false.357
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1362 = bitcast %union.rec* %138 to %struct.word_type*
  %olist363 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1362, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist363, i32 0, i64 0
  %opred365 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx364, i32 0, i32 0
  %139 = load %union.rec*, %union.rec** %opred365, align 8
  store %union.rec* %139, %union.rec** @zz_tmp, align 8
  %140 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1366 = bitcast %union.rec* %140 to %struct.word_type*
  %olist367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1366, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist367, i32 0, i64 0
  %opred369 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx368, i32 0, i32 0
  %141 = load %union.rec*, %union.rec** %opred369, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1370 = bitcast %union.rec* %142 to %struct.word_type*
  %olist371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist371, i32 0, i64 0
  %opred373 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx372, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred373, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1374 = bitcast %union.rec* %144 to %struct.word_type*
  %olist375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 0
  %arrayidx376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist375, i32 0, i64 0
  %opred377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx376, i32 0, i32 0
  %145 = load %union.rec*, %union.rec** %opred377, align 8
  %os1378 = bitcast %union.rec* %145 to %struct.word_type*
  %olist379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist379, i32 0, i64 0
  %osucc381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx380, i32 0, i32 1
  store %union.rec* %143, %union.rec** %osucc381, align 8
  %146 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1382 = bitcast %union.rec* %147 to %struct.word_type*
  %olist383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 0
  %arrayidx384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist383, i32 0, i64 0
  %opred385 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx384, i32 0, i32 0
  store %union.rec* %146, %union.rec** %opred385, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %149 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1386 = bitcast %union.rec* %149 to %struct.word_type*
  %olist387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 0
  %arrayidx388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist387, i32 0, i64 0
  %osucc389 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx388, i32 0, i32 1
  store %union.rec* %148, %union.rec** %osucc389, align 8
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.361, %cond.true.360
  %cond391 = phi %union.rec* [ %137, %cond.true.360 ], [ %148, %cond.false.361 ]
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.end.390, %cond.true.356
  %cond393 = phi %union.rec* [ %135, %cond.true.356 ], [ %cond391, %cond.end.390 ]
  br label %if.end.394

if.end.394:                                       ; preds = %cond.end.392, %while.body
  %150 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %150, %union.rec** @xx_link, align 8
  %151 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %151, %union.rec** @zz_hold, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1395 = bitcast %union.rec* %152 to %struct.word_type*
  %olist396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1395, i32 0, i32 0
  %arrayidx397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist396, i32 0, i64 1
  %osucc398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx397, i32 0, i32 1
  %153 = load %union.rec*, %union.rec** %osucc398, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp399 = icmp eq %union.rec* %153, %154
  br i1 %cmp399, label %cond.true.401, label %cond.false.402

cond.true.401:                                    ; preds = %if.end.394
  br label %cond.end.431

cond.false.402:                                   ; preds = %if.end.394
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1403 = bitcast %union.rec* %155 to %struct.word_type*
  %olist404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1403, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist404, i32 0, i64 1
  %osucc406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx405, i32 0, i32 1
  %156 = load %union.rec*, %union.rec** %osucc406, align 8
  store %union.rec* %156, %union.rec** @zz_res, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1407 = bitcast %union.rec* %157 to %struct.word_type*
  %olist408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist408, i32 0, i64 1
  %opred410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx409, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %opred410, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1411 = bitcast %union.rec* %159 to %struct.word_type*
  %olist412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1411, i32 0, i32 0
  %arrayidx413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist412, i32 0, i64 1
  %opred414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx413, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred414, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1415 = bitcast %union.rec* %161 to %struct.word_type*
  %olist416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist416, i32 0, i64 1
  %opred418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx417, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %opred418, align 8
  %os1419 = bitcast %union.rec* %162 to %struct.word_type*
  %olist420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist420, i32 0, i64 1
  %osucc422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx421, i32 0, i32 1
  store %union.rec* %160, %union.rec** %osucc422, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1423 = bitcast %union.rec* %164 to %struct.word_type*
  %olist424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist424, i32 0, i64 1
  %osucc426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx425, i32 0, i32 1
  store %union.rec* %163, %union.rec** %osucc426, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1427 = bitcast %union.rec* %165 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 1
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  store %union.rec* %163, %union.rec** %opred430, align 8
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.431

cond.end.431:                                     ; preds = %cond.false.402, %cond.true.401
  %cond432 = phi %union.rec* [ null, %cond.true.401 ], [ %166, %cond.false.402 ]
  store %union.rec* %cond432, %union.rec** @xx_tmp, align 8
  %167 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1433 = bitcast %union.rec* %168 to %struct.word_type*
  %olist434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1433, i32 0, i32 0
  %arrayidx435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist434, i32 0, i64 0
  %osucc436 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx435, i32 0, i32 1
  %169 = load %union.rec*, %union.rec** %osucc436, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp437 = icmp eq %union.rec* %169, %170
  br i1 %cmp437, label %cond.true.439, label %cond.false.440

cond.true.439:                                    ; preds = %cond.end.431
  br label %cond.end.469

cond.false.440:                                   ; preds = %cond.end.431
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1441 = bitcast %union.rec* %171 to %struct.word_type*
  %olist442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1441, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist442, i32 0, i64 0
  %osucc444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx443, i32 0, i32 1
  %172 = load %union.rec*, %union.rec** %osucc444, align 8
  store %union.rec* %172, %union.rec** @zz_res, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1445 = bitcast %union.rec* %173 to %struct.word_type*
  %olist446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1445, i32 0, i32 0
  %arrayidx447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist446, i32 0, i64 0
  %opred448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx447, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %opred448, align 8
  %175 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1449 = bitcast %union.rec* %175 to %struct.word_type*
  %olist450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist450, i32 0, i64 0
  %opred452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx451, i32 0, i32 0
  store %union.rec* %174, %union.rec** %opred452, align 8
  %176 = load %union.rec*, %union.rec** @zz_res, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1453 = bitcast %union.rec* %177 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 0
  %opred456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %opred456, align 8
  %os1457 = bitcast %union.rec* %178 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 0
  %osucc460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 1
  store %union.rec* %176, %union.rec** %osucc460, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1461 = bitcast %union.rec* %180 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 0
  %osucc464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 1
  store %union.rec* %179, %union.rec** %osucc464, align 8
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1465 = bitcast %union.rec* %181 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 0
  %opred468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 0
  store %union.rec* %179, %union.rec** %opred468, align 8
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.440, %cond.true.439
  %cond470 = phi %union.rec* [ null, %cond.true.439 ], [ %182, %cond.false.440 ]
  %183 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %183, %union.rec** @zz_hold, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %184, %union.rec** @zz_hold, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1471 = bitcast %union.rec* %185 to %struct.word_type*
  %ou1472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 1
  %os11473 = bitcast %union.FIRST_UNION* %ou1472 to %struct.anon*
  %otype474 = getelementptr inbounds %struct.anon, %struct.anon* %os11473, i32 0, i32 0
  %186 = load i8, i8* %otype474, align 1
  %conv475 = zext i8 %186 to i32
  %cmp476 = icmp eq i32 %conv475, 11
  br i1 %cmp476, label %cond.true.486, label %lor.lhs.false.478

lor.lhs.false.478:                                ; preds = %cond.end.469
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1479 = bitcast %union.rec* %187 to %struct.word_type*
  %ou1480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 1
  %os11481 = bitcast %union.FIRST_UNION* %ou1480 to %struct.anon*
  %otype482 = getelementptr inbounds %struct.anon, %struct.anon* %os11481, i32 0, i32 0
  %188 = load i8, i8* %otype482, align 1
  %conv483 = zext i8 %188 to i32
  %cmp484 = icmp eq i32 %conv483, 12
  br i1 %cmp484, label %cond.true.486, label %cond.false.491

cond.true.486:                                    ; preds = %lor.lhs.false.478, %cond.end.469
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1487 = bitcast %union.rec* %189 to %struct.word_type*
  %ou1488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 1
  %os11489 = bitcast %union.FIRST_UNION* %ou1488 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11489, i32 0, i32 1
  %190 = load i8, i8* %orec_size, align 1
  %conv490 = zext i8 %190 to i32
  br label %cond.end.498

cond.false.491:                                   ; preds = %lor.lhs.false.478
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1492 = bitcast %union.rec* %191 to %struct.word_type*
  %ou1493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1492, i32 0, i32 1
  %os11494 = bitcast %union.FIRST_UNION* %ou1493 to %struct.anon*
  %otype495 = getelementptr inbounds %struct.anon, %struct.anon* %os11494, i32 0, i32 0
  %192 = load i8, i8* %otype495, align 1
  %idxprom = zext i8 %192 to i64
  %arrayidx496 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %193 = load i8, i8* %arrayidx496, align 1
  %conv497 = zext i8 %193 to i32
  br label %cond.end.498

cond.end.498:                                     ; preds = %cond.false.491, %cond.true.486
  %cond499 = phi i32 [ %conv490, %cond.true.486 ], [ %conv497, %cond.false.491 ]
  store i32 %cond499, i32* @zz_size, align 4
  %194 = load i32, i32* @zz_size, align 4
  %idxprom500 = sext i32 %194 to i64
  %arrayidx501 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom500
  %195 = load %union.rec*, %union.rec** %arrayidx501, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1502 = bitcast %union.rec* %196 to %struct.word_type*
  %olist503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1502, i32 0, i32 0
  %arrayidx504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist503, i32 0, i64 0
  %opred505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx504, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred505, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %198 = load i32, i32* @zz_size, align 4
  %idxprom506 = sext i32 %198 to i64
  %arrayidx507 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom506
  store %union.rec* %197, %union.rec** %arrayidx507, align 8
  %199 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1508 = bitcast %union.rec* %199 to %struct.word_type*
  %olist509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist509, i32 0, i64 1
  %osucc511 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx510, i32 0, i32 1
  %200 = load %union.rec*, %union.rec** %osucc511, align 8
  %201 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp512 = icmp eq %union.rec* %200, %201
  br i1 %cmp512, label %if.then.514, label %if.end.516

if.then.514:                                      ; preds = %cond.end.498
  %202 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call515 = call i32 @DisposeObject(%union.rec* %202)
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.514, %cond.end.498
  store i32 1, i32* %jn, align 4
  %203 = load %union.rec*, %union.rec** %large_comp, align 8
  %os1517 = bitcast %union.rec* %203 to %struct.word_type*
  %olist518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist518, i32 0, i64 0
  %osucc520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx519, i32 0, i32 1
  %204 = load %union.rec*, %union.rec** %osucc520, align 8
  store %union.rec* %204, %union.rec** %link, align 8
  br label %for.cond.521

for.cond.521:                                     ; preds = %for.inc.595, %if.end.516
  %205 = load %union.rec*, %union.rec** %link, align 8
  %206 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp522 = icmp ne %union.rec* %205, %206
  br i1 %cmp522, label %for.body.524, label %for.end.600

for.body.524:                                     ; preds = %for.cond.521
  %207 = load %union.rec*, %union.rec** %link, align 8
  %os1525 = bitcast %union.rec* %207 to %struct.word_type*
  %olist526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist526, i32 0, i64 1
  %opred528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx527, i32 0, i32 0
  %208 = load %union.rec*, %union.rec** %opred528, align 8
  store %union.rec* %208, %union.rec** %prev, align 8
  br label %for.cond.529

for.cond.529:                                     ; preds = %for.inc.538, %for.body.524
  %209 = load %union.rec*, %union.rec** %prev, align 8
  %os1530 = bitcast %union.rec* %209 to %struct.word_type*
  %ou1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1530, i32 0, i32 1
  %os11532 = bitcast %union.FIRST_UNION* %ou1531 to %struct.anon*
  %otype533 = getelementptr inbounds %struct.anon, %struct.anon* %os11532, i32 0, i32 0
  %210 = load i8, i8* %otype533, align 1
  %conv534 = zext i8 %210 to i32
  %cmp535 = icmp eq i32 %conv534, 0
  br i1 %cmp535, label %for.body.537, label %for.end.543

for.body.537:                                     ; preds = %for.cond.529
  br label %for.inc.538

for.inc.538:                                      ; preds = %for.body.537
  %211 = load %union.rec*, %union.rec** %prev, align 8
  %os1539 = bitcast %union.rec* %211 to %struct.word_type*
  %olist540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist540, i32 0, i64 1
  %opred542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx541, i32 0, i32 0
  %212 = load %union.rec*, %union.rec** %opred542, align 8
  store %union.rec* %212, %union.rec** %prev, align 8
  br label %for.cond.529

for.end.543:                                      ; preds = %for.cond.529
  %213 = load %union.rec*, %union.rec** %prev, align 8
  %os1544 = bitcast %union.rec* %213 to %struct.word_type*
  %ou1545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 1
  %os11546 = bitcast %union.FIRST_UNION* %ou1545 to %struct.anon*
  %otype547 = getelementptr inbounds %struct.anon, %struct.anon* %os11546, i32 0, i32 0
  %214 = load i8, i8* %otype547, align 1
  %conv548 = zext i8 %214 to i32
  %cmp549 = icmp eq i32 %conv548, 1
  br i1 %cmp549, label %if.then.551, label %if.else.563

if.then.551:                                      ; preds = %for.end.543
  %215 = load i32, i32* %jn, align 4
  %tobool552 = icmp ne i32 %215, 0
  br i1 %tobool552, label %land.rhs.553, label %land.end.561

land.rhs.553:                                     ; preds = %if.then.551
  %216 = load %union.rec*, %union.rec** %prev, align 8
  %os5554 = bitcast %union.rec* %216 to %struct.gapobj_type*
  %ogap555 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5554, i32 0, i32 3
  %217 = bitcast %struct.GAP* %ogap555 to i16*
  %bf.load556 = load i16, i16* %217, align 4
  %bf.lshr557 = lshr i16 %bf.load556, 9
  %bf.clear558 = and i16 %bf.lshr557, 1
  %bf.cast559 = zext i16 %bf.clear558 to i32
  %tobool560 = icmp ne i32 %bf.cast559, 0
  br label %land.end.561

land.end.561:                                     ; preds = %land.rhs.553, %if.then.551
  %218 = phi i1 [ false, %if.then.551 ], [ %tobool560, %land.rhs.553 ]
  %land.ext562 = zext i1 %218 to i32
  store i32 %land.ext562, i32* %jn, align 4
  br label %if.end.594

if.else.563:                                      ; preds = %for.end.543
  %219 = load %union.rec*, %union.rec** %prev, align 8
  %os1564 = bitcast %union.rec* %219 to %struct.word_type*
  %ou1565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1564, i32 0, i32 1
  %os11566 = bitcast %union.FIRST_UNION* %ou1565 to %struct.anon*
  %otype567 = getelementptr inbounds %struct.anon, %struct.anon* %os11566, i32 0, i32 0
  %220 = load i8, i8* %otype567, align 1
  %conv568 = zext i8 %220 to i32
  %cmp569 = icmp eq i32 %conv568, 9
  br i1 %cmp569, label %cond.true.571, label %cond.false.574

cond.true.571:                                    ; preds = %if.else.563
  %221 = load %union.rec*, %union.rec** %prev, align 8
  %call572 = call i32 @SplitIsDefinite(%union.rec* %221)
  %tobool573 = icmp ne i32 %call572, 0
  br i1 %tobool573, label %if.then.592, label %if.end.593

cond.false.574:                                   ; preds = %if.else.563
  %222 = load %union.rec*, %union.rec** %prev, align 8
  %os1575 = bitcast %union.rec* %222 to %struct.word_type*
  %ou1576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1575, i32 0, i32 1
  %os11577 = bitcast %union.FIRST_UNION* %ou1576 to %struct.anon*
  %otype578 = getelementptr inbounds %struct.anon, %struct.anon* %os11577, i32 0, i32 0
  %223 = load i8, i8* %otype578, align 1
  %conv579 = zext i8 %223 to i32
  %cmp580 = icmp sge i32 %conv579, 9
  br i1 %cmp580, label %land.rhs.582, label %land.end.590

land.rhs.582:                                     ; preds = %cond.false.574
  %224 = load %union.rec*, %union.rec** %prev, align 8
  %os1583 = bitcast %union.rec* %224 to %struct.word_type*
  %ou1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1583, i32 0, i32 1
  %os11585 = bitcast %union.FIRST_UNION* %ou1584 to %struct.anon*
  %otype586 = getelementptr inbounds %struct.anon, %struct.anon* %os11585, i32 0, i32 0
  %225 = load i8, i8* %otype586, align 1
  %conv587 = zext i8 %225 to i32
  %cmp588 = icmp sle i32 %conv587, 99
  br label %land.end.590

land.end.590:                                     ; preds = %land.rhs.582, %cond.false.574
  %226 = phi i1 [ false, %cond.false.574 ], [ %cmp588, %land.rhs.582 ]
  br i1 %226, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %land.end.590, %cond.true.571
  br label %for.end.600

if.end.593:                                       ; preds = %land.end.590, %cond.true.571
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %land.end.561
  br label %for.inc.595

for.inc.595:                                      ; preds = %if.end.594
  %227 = load %union.rec*, %union.rec** %link, align 8
  %os1596 = bitcast %union.rec* %227 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 0
  %osucc599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 1
  %228 = load %union.rec*, %union.rec** %osucc599, align 8
  store %union.rec* %228, %union.rec** %link, align 8
  br label %for.cond.521

for.end.600:                                      ; preds = %if.then.592, %for.cond.521
  br label %while.cond

while.end:                                        ; preds = %land.end.295
  %229 = load %union.rec*, %union.rec** %link, align 8
  %230 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp601 = icmp eq %union.rec* %229, %230
  br i1 %cmp601, label %if.end.620, label %lor.lhs.false.603

lor.lhs.false.603:                                ; preds = %while.end
  %231 = load %union.rec*, %union.rec** %prev, align 8
  %os1604 = bitcast %union.rec* %231 to %struct.word_type*
  %ou1605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1604, i32 0, i32 1
  %os11606 = bitcast %union.FIRST_UNION* %ou1605 to %struct.anon*
  %otype607 = getelementptr inbounds %struct.anon, %struct.anon* %os11606, i32 0, i32 0
  %232 = load i8, i8* %otype607, align 1
  %conv608 = zext i8 %232 to i32
  %cmp609 = icmp sge i32 %conv608, 9
  br i1 %cmp609, label %land.lhs.true, label %if.then.618

land.lhs.true:                                    ; preds = %lor.lhs.false.603
  %233 = load %union.rec*, %union.rec** %prev, align 8
  %os1611 = bitcast %union.rec* %233 to %struct.word_type*
  %ou1612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 1
  %os11613 = bitcast %union.FIRST_UNION* %ou1612 to %struct.anon*
  %otype614 = getelementptr inbounds %struct.anon, %struct.anon* %os11613, i32 0, i32 0
  %234 = load i8, i8* %otype614, align 1
  %conv615 = zext i8 %234 to i32
  %cmp616 = icmp sle i32 %conv615, 99
  br i1 %cmp616, label %if.end.620, label %if.then.618

if.then.618:                                      ; preds = %land.lhs.true, %lor.lhs.false.603
  %235 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call619 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.620

if.end.620:                                       ; preds = %if.then.618, %land.lhs.true, %while.end
  %236 = load %union.rec*, %union.rec** %link, align 8
  %237 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp621 = icmp eq %union.rec* %236, %237
  br i1 %cmp621, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %if.end.620
  store i32 0, i32* %retval
  br label %return

if.end.624:                                       ; preds = %if.end.620
  %238 = load %union.rec*, %union.rec** %link, align 8
  %os1625 = bitcast %union.rec* %238 to %struct.word_type*
  %olist626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1625, i32 0, i32 0
  %arrayidx627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist626, i32 0, i64 0
  %opred628 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx627, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %opred628, align 8
  store %union.rec* %239, %union.rec** %start_link, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn630, align 4
  %240 = load %union.rec*, %union.rec** %link, align 8
  %os1631 = bitcast %union.rec* %240 to %struct.word_type*
  %olist632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1631, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist632, i32 0, i64 0
  %osucc634 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx633, i32 0, i32 1
  %241 = load %union.rec*, %union.rec** %osucc634, align 8
  store %union.rec* %241, %union.rec** %link, align 8
  br label %for.cond.635

for.cond.635:                                     ; preds = %for.inc.714, %if.end.624
  %242 = load %union.rec*, %union.rec** %link, align 8
  %243 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp636 = icmp ne %union.rec* %242, %243
  br i1 %cmp636, label %for.body.638, label %for.end.719

for.body.638:                                     ; preds = %for.cond.635
  %244 = load %union.rec*, %union.rec** %link, align 8
  %os1639 = bitcast %union.rec* %244 to %struct.word_type*
  %olist640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist640, i32 0, i64 1
  %opred642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx641, i32 0, i32 0
  %245 = load %union.rec*, %union.rec** %opred642, align 8
  store %union.rec* %245, %union.rec** %nxt, align 8
  br label %for.cond.643

for.cond.643:                                     ; preds = %for.inc.652, %for.body.638
  %246 = load %union.rec*, %union.rec** %nxt, align 8
  %os1644 = bitcast %union.rec* %246 to %struct.word_type*
  %ou1645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1644, i32 0, i32 1
  %os11646 = bitcast %union.FIRST_UNION* %ou1645 to %struct.anon*
  %otype647 = getelementptr inbounds %struct.anon, %struct.anon* %os11646, i32 0, i32 0
  %247 = load i8, i8* %otype647, align 1
  %conv648 = zext i8 %247 to i32
  %cmp649 = icmp eq i32 %conv648, 0
  br i1 %cmp649, label %for.body.651, label %for.end.657

for.body.651:                                     ; preds = %for.cond.643
  br label %for.inc.652

for.inc.652:                                      ; preds = %for.body.651
  %248 = load %union.rec*, %union.rec** %nxt, align 8
  %os1653 = bitcast %union.rec* %248 to %struct.word_type*
  %olist654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1653, i32 0, i32 0
  %arrayidx655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist654, i32 0, i64 1
  %opred656 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx655, i32 0, i32 0
  %249 = load %union.rec*, %union.rec** %opred656, align 8
  store %union.rec* %249, %union.rec** %nxt, align 8
  br label %for.cond.643

for.end.657:                                      ; preds = %for.cond.643
  %250 = load %union.rec*, %union.rec** %nxt, align 8
  %os1658 = bitcast %union.rec* %250 to %struct.word_type*
  %ou1659 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1658, i32 0, i32 1
  %os11660 = bitcast %union.FIRST_UNION* %ou1659 to %struct.anon*
  %otype661 = getelementptr inbounds %struct.anon, %struct.anon* %os11660, i32 0, i32 0
  %251 = load i8, i8* %otype661, align 1
  %conv662 = zext i8 %251 to i32
  %cmp663 = icmp eq i32 %conv662, 1
  br i1 %cmp663, label %if.then.665, label %if.else.677

if.then.665:                                      ; preds = %for.end.657
  %252 = load %union.rec*, %union.rec** %nxt, align 8
  store %union.rec* %252, %union.rec** %g, align 8
  %253 = load i32, i32* %jn630, align 4
  %tobool666 = icmp ne i32 %253, 0
  br i1 %tobool666, label %land.rhs.667, label %land.end.675

land.rhs.667:                                     ; preds = %if.then.665
  %254 = load %union.rec*, %union.rec** %nxt, align 8
  %os5668 = bitcast %union.rec* %254 to %struct.gapobj_type*
  %ogap669 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5668, i32 0, i32 3
  %255 = bitcast %struct.GAP* %ogap669 to i16*
  %bf.load670 = load i16, i16* %255, align 4
  %bf.lshr671 = lshr i16 %bf.load670, 9
  %bf.clear672 = and i16 %bf.lshr671, 1
  %bf.cast673 = zext i16 %bf.clear672 to i32
  %tobool674 = icmp ne i32 %bf.cast673, 0
  br label %land.end.675

land.end.675:                                     ; preds = %land.rhs.667, %if.then.665
  %256 = phi i1 [ false, %if.then.665 ], [ %tobool674, %land.rhs.667 ]
  %land.ext676 = zext i1 %256 to i32
  store i32 %land.ext676, i32* %jn630, align 4
  br label %if.end.713

if.else.677:                                      ; preds = %for.end.657
  %257 = load %union.rec*, %union.rec** %nxt, align 8
  %os1678 = bitcast %union.rec* %257 to %struct.word_type*
  %ou1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1678, i32 0, i32 1
  %os11680 = bitcast %union.FIRST_UNION* %ou1679 to %struct.anon*
  %otype681 = getelementptr inbounds %struct.anon, %struct.anon* %os11680, i32 0, i32 0
  %258 = load i8, i8* %otype681, align 1
  %conv682 = zext i8 %258 to i32
  %cmp683 = icmp eq i32 %conv682, 9
  br i1 %cmp683, label %cond.true.685, label %cond.false.688

cond.true.685:                                    ; preds = %if.else.677
  %259 = load %union.rec*, %union.rec** %nxt, align 8
  %call686 = call i32 @SplitIsDefinite(%union.rec* %259)
  %tobool687 = icmp ne i32 %call686, 0
  br i1 %tobool687, label %if.then.706, label %if.end.712

cond.false.688:                                   ; preds = %if.else.677
  %260 = load %union.rec*, %union.rec** %nxt, align 8
  %os1689 = bitcast %union.rec* %260 to %struct.word_type*
  %ou1690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 1
  %os11691 = bitcast %union.FIRST_UNION* %ou1690 to %struct.anon*
  %otype692 = getelementptr inbounds %struct.anon, %struct.anon* %os11691, i32 0, i32 0
  %261 = load i8, i8* %otype692, align 1
  %conv693 = zext i8 %261 to i32
  %cmp694 = icmp sge i32 %conv693, 9
  br i1 %cmp694, label %land.rhs.696, label %land.end.704

land.rhs.696:                                     ; preds = %cond.false.688
  %262 = load %union.rec*, %union.rec** %nxt, align 8
  %os1697 = bitcast %union.rec* %262 to %struct.word_type*
  %ou1698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 1
  %os11699 = bitcast %union.FIRST_UNION* %ou1698 to %struct.anon*
  %otype700 = getelementptr inbounds %struct.anon, %struct.anon* %os11699, i32 0, i32 0
  %263 = load i8, i8* %otype700, align 1
  %conv701 = zext i8 %263 to i32
  %cmp702 = icmp sle i32 %conv701, 99
  br label %land.end.704

land.end.704:                                     ; preds = %land.rhs.696, %cond.false.688
  %264 = phi i1 [ false, %cond.false.688 ], [ %cmp702, %land.rhs.696 ]
  br i1 %264, label %if.then.706, label %if.end.712

if.then.706:                                      ; preds = %land.end.704, %cond.true.685
  %265 = load %union.rec*, %union.rec** %g, align 8
  %cmp707 = icmp ne %union.rec* %265, null
  br i1 %cmp707, label %if.end.711, label %if.then.709

if.then.709:                                      ; preds = %if.then.706
  %266 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call710 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %266, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.709, %if.then.706
  br label %for.end.719

if.end.712:                                       ; preds = %land.end.704, %cond.true.685
  br label %if.end.713

if.end.713:                                       ; preds = %if.end.712, %land.end.675
  br label %for.inc.714

for.inc.714:                                      ; preds = %if.end.713
  %267 = load %union.rec*, %union.rec** %link, align 8
  %os1715 = bitcast %union.rec* %267 to %struct.word_type*
  %olist716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1715, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist716, i32 0, i64 0
  %osucc718 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx717, i32 0, i32 1
  %268 = load %union.rec*, %union.rec** %osucc718, align 8
  store %union.rec* %268, %union.rec** %link, align 8
  br label %for.cond.635

for.end.719:                                      ; preds = %if.end.711, %for.cond.635
  br label %while.cond.720

while.cond.720:                                   ; preds = %for.end.1358, %for.end.719
  %269 = load %union.rec*, %union.rec** %link, align 8
  %270 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp721 = icmp ne %union.rec* %269, %270
  br i1 %cmp721, label %land.rhs.723, label %land.end.731

land.rhs.723:                                     ; preds = %while.cond.720
  %271 = load %union.rec*, %union.rec** %nxt, align 8
  %os1724 = bitcast %union.rec* %271 to %struct.word_type*
  %ou1725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1724, i32 0, i32 1
  %os11726 = bitcast %union.FIRST_UNION* %ou1725 to %struct.anon*
  %otype727 = getelementptr inbounds %struct.anon, %struct.anon* %os11726, i32 0, i32 0
  %272 = load i8, i8* %otype727, align 1
  %conv728 = zext i8 %272 to i32
  %cmp729 = icmp eq i32 %conv728, 19
  br label %land.end.731

land.end.731:                                     ; preds = %land.rhs.723, %while.cond.720
  %273 = phi i1 [ false, %while.cond.720 ], [ %cmp729, %land.rhs.723 ]
  br i1 %273, label %while.body.733, label %while.end.1359

while.body.733:                                   ; preds = %land.end.731
  store i32 1, i32* %jn630, align 4
  %274 = load %union.rec*, %union.rec** %nxt, align 8
  %os1734 = bitcast %union.rec* %274 to %struct.word_type*
  %olist735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1734, i32 0, i32 0
  %arrayidx736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist735, i32 0, i64 0
  %osucc737 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx736, i32 0, i32 1
  %275 = load %union.rec*, %union.rec** %osucc737, align 8
  store %union.rec* %275, %union.rec** %ylink, align 8
  br label %for.cond.738

for.cond.738:                                     ; preds = %for.inc.812, %while.body.733
  %276 = load %union.rec*, %union.rec** %ylink, align 8
  %277 = load %union.rec*, %union.rec** %nxt, align 8
  %cmp739 = icmp ne %union.rec* %276, %277
  br i1 %cmp739, label %for.body.741, label %for.end.817

for.body.741:                                     ; preds = %for.cond.738
  %278 = load %union.rec*, %union.rec** %ylink, align 8
  %os1742 = bitcast %union.rec* %278 to %struct.word_type*
  %olist743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist743, i32 0, i64 1
  %opred745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx744, i32 0, i32 0
  %279 = load %union.rec*, %union.rec** %opred745, align 8
  store %union.rec* %279, %union.rec** %z629, align 8
  br label %for.cond.746

for.cond.746:                                     ; preds = %for.inc.755, %for.body.741
  %280 = load %union.rec*, %union.rec** %z629, align 8
  %os1747 = bitcast %union.rec* %280 to %struct.word_type*
  %ou1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1747, i32 0, i32 1
  %os11749 = bitcast %union.FIRST_UNION* %ou1748 to %struct.anon*
  %otype750 = getelementptr inbounds %struct.anon, %struct.anon* %os11749, i32 0, i32 0
  %281 = load i8, i8* %otype750, align 1
  %conv751 = zext i8 %281 to i32
  %cmp752 = icmp eq i32 %conv751, 0
  br i1 %cmp752, label %for.body.754, label %for.end.760

for.body.754:                                     ; preds = %for.cond.746
  br label %for.inc.755

for.inc.755:                                      ; preds = %for.body.754
  %282 = load %union.rec*, %union.rec** %z629, align 8
  %os1756 = bitcast %union.rec* %282 to %struct.word_type*
  %olist757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1756, i32 0, i32 0
  %arrayidx758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist757, i32 0, i64 1
  %opred759 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx758, i32 0, i32 0
  %283 = load %union.rec*, %union.rec** %opred759, align 8
  store %union.rec* %283, %union.rec** %z629, align 8
  br label %for.cond.746

for.end.760:                                      ; preds = %for.cond.746
  %284 = load %union.rec*, %union.rec** %z629, align 8
  %os1761 = bitcast %union.rec* %284 to %struct.word_type*
  %ou1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 1
  %os11763 = bitcast %union.FIRST_UNION* %ou1762 to %struct.anon*
  %otype764 = getelementptr inbounds %struct.anon, %struct.anon* %os11763, i32 0, i32 0
  %285 = load i8, i8* %otype764, align 1
  %conv765 = zext i8 %285 to i32
  %cmp766 = icmp eq i32 %conv765, 1
  br i1 %cmp766, label %if.then.768, label %if.else.780

if.then.768:                                      ; preds = %for.end.760
  %286 = load i32, i32* %jn630, align 4
  %tobool769 = icmp ne i32 %286, 0
  br i1 %tobool769, label %land.rhs.770, label %land.end.778

land.rhs.770:                                     ; preds = %if.then.768
  %287 = load %union.rec*, %union.rec** %z629, align 8
  %os5771 = bitcast %union.rec* %287 to %struct.gapobj_type*
  %ogap772 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5771, i32 0, i32 3
  %288 = bitcast %struct.GAP* %ogap772 to i16*
  %bf.load773 = load i16, i16* %288, align 4
  %bf.lshr774 = lshr i16 %bf.load773, 9
  %bf.clear775 = and i16 %bf.lshr774, 1
  %bf.cast776 = zext i16 %bf.clear775 to i32
  %tobool777 = icmp ne i32 %bf.cast776, 0
  br label %land.end.778

land.end.778:                                     ; preds = %land.rhs.770, %if.then.768
  %289 = phi i1 [ false, %if.then.768 ], [ %tobool777, %land.rhs.770 ]
  %land.ext779 = zext i1 %289 to i32
  store i32 %land.ext779, i32* %jn630, align 4
  br label %if.end.811

if.else.780:                                      ; preds = %for.end.760
  %290 = load %union.rec*, %union.rec** %z629, align 8
  %os1781 = bitcast %union.rec* %290 to %struct.word_type*
  %ou1782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 1
  %os11783 = bitcast %union.FIRST_UNION* %ou1782 to %struct.anon*
  %otype784 = getelementptr inbounds %struct.anon, %struct.anon* %os11783, i32 0, i32 0
  %291 = load i8, i8* %otype784, align 1
  %conv785 = zext i8 %291 to i32
  %cmp786 = icmp eq i32 %conv785, 9
  br i1 %cmp786, label %cond.true.788, label %cond.false.791

cond.true.788:                                    ; preds = %if.else.780
  %292 = load %union.rec*, %union.rec** %z629, align 8
  %call789 = call i32 @SplitIsDefinite(%union.rec* %292)
  %tobool790 = icmp ne i32 %call789, 0
  br i1 %tobool790, label %if.then.809, label %if.end.810

cond.false.791:                                   ; preds = %if.else.780
  %293 = load %union.rec*, %union.rec** %z629, align 8
  %os1792 = bitcast %union.rec* %293 to %struct.word_type*
  %ou1793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1792, i32 0, i32 1
  %os11794 = bitcast %union.FIRST_UNION* %ou1793 to %struct.anon*
  %otype795 = getelementptr inbounds %struct.anon, %struct.anon* %os11794, i32 0, i32 0
  %294 = load i8, i8* %otype795, align 1
  %conv796 = zext i8 %294 to i32
  %cmp797 = icmp sge i32 %conv796, 9
  br i1 %cmp797, label %land.rhs.799, label %land.end.807

land.rhs.799:                                     ; preds = %cond.false.791
  %295 = load %union.rec*, %union.rec** %z629, align 8
  %os1800 = bitcast %union.rec* %295 to %struct.word_type*
  %ou1801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1800, i32 0, i32 1
  %os11802 = bitcast %union.FIRST_UNION* %ou1801 to %struct.anon*
  %otype803 = getelementptr inbounds %struct.anon, %struct.anon* %os11802, i32 0, i32 0
  %296 = load i8, i8* %otype803, align 1
  %conv804 = zext i8 %296 to i32
  %cmp805 = icmp sle i32 %conv804, 99
  br label %land.end.807

land.end.807:                                     ; preds = %land.rhs.799, %cond.false.791
  %297 = phi i1 [ false, %cond.false.791 ], [ %cmp805, %land.rhs.799 ]
  br i1 %297, label %if.then.809, label %if.end.810

if.then.809:                                      ; preds = %land.end.807, %cond.true.788
  br label %for.end.817

if.end.810:                                       ; preds = %land.end.807, %cond.true.788
  br label %if.end.811

if.end.811:                                       ; preds = %if.end.810, %land.end.778
  br label %for.inc.812

for.inc.812:                                      ; preds = %if.end.811
  %298 = load %union.rec*, %union.rec** %ylink, align 8
  %os1813 = bitcast %union.rec* %298 to %struct.word_type*
  %olist814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1813, i32 0, i32 0
  %arrayidx815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist814, i32 0, i64 0
  %osucc816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx815, i32 0, i32 1
  %299 = load %union.rec*, %union.rec** %osucc816, align 8
  store %union.rec* %299, %union.rec** %ylink, align 8
  br label %for.cond.738

for.end.817:                                      ; preds = %if.then.809, %for.cond.738
  %300 = load %union.rec*, %union.rec** %ylink, align 8
  %301 = load %union.rec*, %union.rec** %nxt, align 8
  %cmp818 = icmp ne %union.rec* %300, %301
  br i1 %cmp818, label %land.lhs.true.820, label %if.end.1037

land.lhs.true.820:                                ; preds = %for.end.817
  %302 = load %union.rec*, %union.rec** %ylink, align 8
  %os1821 = bitcast %union.rec* %302 to %struct.word_type*
  %olist822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1821, i32 0, i32 0
  %arrayidx823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist822, i32 0, i64 0
  %opred824 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx823, i32 0, i32 0
  %303 = load %union.rec*, %union.rec** %opred824, align 8
  %304 = load %union.rec*, %union.rec** %nxt, align 8
  %cmp825 = icmp ne %union.rec* %303, %304
  br i1 %cmp825, label %if.then.827, label %if.end.1037

if.then.827:                                      ; preds = %land.lhs.true.820
  %305 = load %union.rec*, %union.rec** %ylink, align 8
  %os1828 = bitcast %union.rec* %305 to %struct.word_type*
  %olist829 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1828, i32 0, i32 0
  %arrayidx830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist829, i32 0, i64 0
  %opred831 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx830, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %opred831, align 8
  %os1832 = bitcast %union.rec* %306 to %struct.word_type*
  %olist833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1832, i32 0, i32 0
  %arrayidx834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist833, i32 0, i64 1
  %opred835 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx834, i32 0, i32 0
  %307 = load %union.rec*, %union.rec** %opred835, align 8
  store %union.rec* %307, %union.rec** %yg, align 8
  br label %for.cond.836

for.cond.836:                                     ; preds = %for.inc.845, %if.then.827
  %308 = load %union.rec*, %union.rec** %yg, align 8
  %os1837 = bitcast %union.rec* %308 to %struct.word_type*
  %ou1838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1837, i32 0, i32 1
  %os11839 = bitcast %union.FIRST_UNION* %ou1838 to %struct.anon*
  %otype840 = getelementptr inbounds %struct.anon, %struct.anon* %os11839, i32 0, i32 0
  %309 = load i8, i8* %otype840, align 1
  %conv841 = zext i8 %309 to i32
  %cmp842 = icmp eq i32 %conv841, 0
  br i1 %cmp842, label %for.body.844, label %for.end.850

for.body.844:                                     ; preds = %for.cond.836
  br label %for.inc.845

for.inc.845:                                      ; preds = %for.body.844
  %310 = load %union.rec*, %union.rec** %yg, align 8
  %os1846 = bitcast %union.rec* %310 to %struct.word_type*
  %olist847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1846, i32 0, i32 0
  %arrayidx848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist847, i32 0, i64 1
  %opred849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx848, i32 0, i32 0
  %311 = load %union.rec*, %union.rec** %opred849, align 8
  store %union.rec* %311, %union.rec** %yg, align 8
  br label %for.cond.836

for.end.850:                                      ; preds = %for.cond.836
  %312 = load %union.rec*, %union.rec** %yg, align 8
  %os1851 = bitcast %union.rec* %312 to %struct.word_type*
  %ou1852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1851, i32 0, i32 1
  %os11853 = bitcast %union.FIRST_UNION* %ou1852 to %struct.anon*
  %otype854 = getelementptr inbounds %struct.anon, %struct.anon* %os11853, i32 0, i32 0
  %313 = load i8, i8* %otype854, align 1
  %conv855 = zext i8 %313 to i32
  %cmp856 = icmp eq i32 %conv855, 1
  br i1 %cmp856, label %land.lhs.true.858, label %if.then.866

land.lhs.true.858:                                ; preds = %for.end.850
  %314 = load %union.rec*, %union.rec** %yg, align 8
  %os5859 = bitcast %union.rec* %314 to %struct.gapobj_type*
  %ogap860 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5859, i32 0, i32 3
  %315 = bitcast %struct.GAP* %ogap860 to i16*
  %bf.load861 = load i16, i16* %315, align 4
  %bf.lshr862 = lshr i16 %bf.load861, 13
  %bf.cast863 = zext i16 %bf.lshr862 to i32
  %cmp864 = icmp ne i32 %bf.cast863, 0
  br i1 %cmp864, label %if.end.868, label %if.then.866

if.then.866:                                      ; preds = %land.lhs.true.858, %for.end.850
  %316 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call867 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.868

if.end.868:                                       ; preds = %if.then.866, %land.lhs.true.858
  %317 = load %union.rec*, %union.rec** %ylink, align 8
  %os1869 = bitcast %union.rec* %317 to %struct.word_type*
  %olist870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1869, i32 0, i32 0
  %arrayidx871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist870, i32 0, i64 0
  %opred872 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx871, i32 0, i32 0
  %318 = load %union.rec*, %union.rec** %opred872, align 8
  store %union.rec* %318, %union.rec** @xx_link, align 8
  %319 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1873 = bitcast %union.rec* %320 to %struct.word_type*
  %olist874 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1873, i32 0, i32 0
  %arrayidx875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist874, i32 0, i64 0
  %osucc876 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx875, i32 0, i32 1
  %321 = load %union.rec*, %union.rec** %osucc876, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp877 = icmp eq %union.rec* %321, %322
  br i1 %cmp877, label %cond.true.879, label %cond.false.880

cond.true.879:                                    ; preds = %if.end.868
  br label %cond.end.909

cond.false.880:                                   ; preds = %if.end.868
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1881 = bitcast %union.rec* %323 to %struct.word_type*
  %olist882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1881, i32 0, i32 0
  %arrayidx883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist882, i32 0, i64 0
  %osucc884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx883, i32 0, i32 1
  %324 = load %union.rec*, %union.rec** %osucc884, align 8
  store %union.rec* %324, %union.rec** @zz_res, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1885 = bitcast %union.rec* %325 to %struct.word_type*
  %olist886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1885, i32 0, i32 0
  %arrayidx887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist886, i32 0, i64 0
  %opred888 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx887, i32 0, i32 0
  %326 = load %union.rec*, %union.rec** %opred888, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1889 = bitcast %union.rec* %327 to %struct.word_type*
  %olist890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1889, i32 0, i32 0
  %arrayidx891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist890, i32 0, i64 0
  %opred892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx891, i32 0, i32 0
  store %union.rec* %326, %union.rec** %opred892, align 8
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1893 = bitcast %union.rec* %329 to %struct.word_type*
  %olist894 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1893, i32 0, i32 0
  %arrayidx895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist894, i32 0, i64 0
  %opred896 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx895, i32 0, i32 0
  %330 = load %union.rec*, %union.rec** %opred896, align 8
  %os1897 = bitcast %union.rec* %330 to %struct.word_type*
  %olist898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1897, i32 0, i32 0
  %arrayidx899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist898, i32 0, i64 0
  %osucc900 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx899, i32 0, i32 1
  store %union.rec* %328, %union.rec** %osucc900, align 8
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1901 = bitcast %union.rec* %332 to %struct.word_type*
  %olist902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1901, i32 0, i32 0
  %arrayidx903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist902, i32 0, i64 0
  %osucc904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx903, i32 0, i32 1
  store %union.rec* %331, %union.rec** %osucc904, align 8
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1905 = bitcast %union.rec* %333 to %struct.word_type*
  %olist906 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1905, i32 0, i32 0
  %arrayidx907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist906, i32 0, i64 0
  %opred908 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx907, i32 0, i32 0
  store %union.rec* %331, %union.rec** %opred908, align 8
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.909

cond.end.909:                                     ; preds = %cond.false.880, %cond.true.879
  %cond910 = phi %union.rec* [ null, %cond.true.879 ], [ %334, %cond.false.880 ]
  %335 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %335, %union.rec** @zz_res, align 8
  %336 = load %union.rec*, %union.rec** %g, align 8
  %os1911 = bitcast %union.rec* %336 to %struct.word_type*
  %olist912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1911, i32 0, i32 0
  %arrayidx913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist912, i32 0, i64 1
  %osucc914 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx913, i32 0, i32 1
  %337 = load %union.rec*, %union.rec** %osucc914, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp915 = icmp eq %union.rec* %338, null
  br i1 %cmp915, label %cond.true.917, label %cond.false.918

cond.true.917:                                    ; preds = %cond.end.909
  %339 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.953

cond.false.918:                                   ; preds = %cond.end.909
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp919 = icmp eq %union.rec* %340, null
  br i1 %cmp919, label %cond.true.921, label %cond.false.922

cond.true.921:                                    ; preds = %cond.false.918
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.951

cond.false.922:                                   ; preds = %cond.false.918
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1923 = bitcast %union.rec* %342 to %struct.word_type*
  %olist924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1923, i32 0, i32 0
  %arrayidx925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist924, i32 0, i64 0
  %opred926 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx925, i32 0, i32 0
  %343 = load %union.rec*, %union.rec** %opred926, align 8
  store %union.rec* %343, %union.rec** @zz_tmp, align 8
  %344 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1927 = bitcast %union.rec* %344 to %struct.word_type*
  %olist928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist928, i32 0, i64 0
  %opred930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx929, i32 0, i32 0
  %345 = load %union.rec*, %union.rec** %opred930, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1931 = bitcast %union.rec* %346 to %struct.word_type*
  %olist932 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1931, i32 0, i32 0
  %arrayidx933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist932, i32 0, i64 0
  %opred934 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx933, i32 0, i32 0
  store %union.rec* %345, %union.rec** %opred934, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1935 = bitcast %union.rec* %348 to %struct.word_type*
  %olist936 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1935, i32 0, i32 0
  %arrayidx937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist936, i32 0, i64 0
  %opred938 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx937, i32 0, i32 0
  %349 = load %union.rec*, %union.rec** %opred938, align 8
  %os1939 = bitcast %union.rec* %349 to %struct.word_type*
  %olist940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1939, i32 0, i32 0
  %arrayidx941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist940, i32 0, i64 0
  %osucc942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx941, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc942, align 8
  %350 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1943 = bitcast %union.rec* %351 to %struct.word_type*
  %olist944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1943, i32 0, i32 0
  %arrayidx945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist944, i32 0, i64 0
  %opred946 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx945, i32 0, i32 0
  store %union.rec* %350, %union.rec** %opred946, align 8
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %353 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1947 = bitcast %union.rec* %353 to %struct.word_type*
  %olist948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1947, i32 0, i32 0
  %arrayidx949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist948, i32 0, i64 0
  %osucc950 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx949, i32 0, i32 1
  store %union.rec* %352, %union.rec** %osucc950, align 8
  br label %cond.end.951

cond.end.951:                                     ; preds = %cond.false.922, %cond.true.921
  %cond952 = phi %union.rec* [ %341, %cond.true.921 ], [ %352, %cond.false.922 ]
  br label %cond.end.953

cond.end.953:                                     ; preds = %cond.end.951, %cond.true.917
  %cond954 = phi %union.rec* [ %339, %cond.true.917 ], [ %cond952, %cond.end.951 ]
  %354 = load %union.rec*, %union.rec** %g, align 8
  %os1955 = bitcast %union.rec* %354 to %struct.word_type*
  %olist956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1955, i32 0, i32 0
  %arrayidx957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist956, i32 0, i64 1
  %osucc958 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx957, i32 0, i32 1
  %355 = load %union.rec*, %union.rec** %osucc958, align 8
  store %union.rec* %355, %union.rec** @xx_link, align 8
  %356 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %356, %union.rec** @zz_hold, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1959 = bitcast %union.rec* %357 to %struct.word_type*
  %olist960 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1959, i32 0, i32 0
  %arrayidx961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist960, i32 0, i64 0
  %osucc962 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx961, i32 0, i32 1
  %358 = load %union.rec*, %union.rec** %osucc962, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp963 = icmp eq %union.rec* %358, %359
  br i1 %cmp963, label %cond.true.965, label %cond.false.966

cond.true.965:                                    ; preds = %cond.end.953
  br label %cond.end.995

cond.false.966:                                   ; preds = %cond.end.953
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1967 = bitcast %union.rec* %360 to %struct.word_type*
  %olist968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1967, i32 0, i32 0
  %arrayidx969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist968, i32 0, i64 0
  %osucc970 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx969, i32 0, i32 1
  %361 = load %union.rec*, %union.rec** %osucc970, align 8
  store %union.rec* %361, %union.rec** @zz_res, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1971 = bitcast %union.rec* %362 to %struct.word_type*
  %olist972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1971, i32 0, i32 0
  %arrayidx973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist972, i32 0, i64 0
  %opred974 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx973, i32 0, i32 0
  %363 = load %union.rec*, %union.rec** %opred974, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1975 = bitcast %union.rec* %364 to %struct.word_type*
  %olist976 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1975, i32 0, i32 0
  %arrayidx977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist976, i32 0, i64 0
  %opred978 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx977, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred978, align 8
  %365 = load %union.rec*, %union.rec** @zz_res, align 8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1979 = bitcast %union.rec* %366 to %struct.word_type*
  %olist980 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1979, i32 0, i32 0
  %arrayidx981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist980, i32 0, i64 0
  %opred982 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx981, i32 0, i32 0
  %367 = load %union.rec*, %union.rec** %opred982, align 8
  %os1983 = bitcast %union.rec* %367 to %struct.word_type*
  %olist984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1983, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist984, i32 0, i64 0
  %osucc986 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx985, i32 0, i32 1
  store %union.rec* %365, %union.rec** %osucc986, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1987 = bitcast %union.rec* %369 to %struct.word_type*
  %olist988 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1987, i32 0, i32 0
  %arrayidx989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist988, i32 0, i64 0
  %osucc990 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx989, i32 0, i32 1
  store %union.rec* %368, %union.rec** %osucc990, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1991 = bitcast %union.rec* %370 to %struct.word_type*
  %olist992 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1991, i32 0, i32 0
  %arrayidx993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist992, i32 0, i64 0
  %opred994 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx993, i32 0, i32 0
  store %union.rec* %368, %union.rec** %opred994, align 8
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.995

cond.end.995:                                     ; preds = %cond.false.966, %cond.true.965
  %cond996 = phi %union.rec* [ null, %cond.true.965 ], [ %371, %cond.false.966 ]
  %372 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %372, %union.rec** @zz_res, align 8
  %373 = load %union.rec*, %union.rec** %ylink, align 8
  store %union.rec* %373, %union.rec** @zz_hold, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp997 = icmp eq %union.rec* %374, null
  br i1 %cmp997, label %cond.true.999, label %cond.false.1000

cond.true.999:                                    ; preds = %cond.end.995
  %375 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1035

cond.false.1000:                                  ; preds = %cond.end.995
  %376 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1001 = icmp eq %union.rec* %376, null
  br i1 %cmp1001, label %cond.true.1003, label %cond.false.1004

cond.true.1003:                                   ; preds = %cond.false.1000
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1033

cond.false.1004:                                  ; preds = %cond.false.1000
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11005 = bitcast %union.rec* %378 to %struct.word_type*
  %olist1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11005, i32 0, i32 0
  %arrayidx1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1006, i32 0, i64 0
  %opred1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1007, i32 0, i32 0
  %379 = load %union.rec*, %union.rec** %opred1008, align 8
  store %union.rec* %379, %union.rec** @zz_tmp, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11009 = bitcast %union.rec* %380 to %struct.word_type*
  %olist1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11009, i32 0, i32 0
  %arrayidx1011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1010, i32 0, i64 0
  %opred1012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1011, i32 0, i32 0
  %381 = load %union.rec*, %union.rec** %opred1012, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11013 = bitcast %union.rec* %382 to %struct.word_type*
  %olist1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11013, i32 0, i32 0
  %arrayidx1015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1014, i32 0, i64 0
  %opred1016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1015, i32 0, i32 0
  store %union.rec* %381, %union.rec** %opred1016, align 8
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %384 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11017 = bitcast %union.rec* %384 to %struct.word_type*
  %olist1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11017, i32 0, i32 0
  %arrayidx1019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1018, i32 0, i64 0
  %opred1020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1019, i32 0, i32 0
  %385 = load %union.rec*, %union.rec** %opred1020, align 8
  %os11021 = bitcast %union.rec* %385 to %struct.word_type*
  %olist1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 0
  %arrayidx1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1022, i32 0, i64 0
  %osucc1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1023, i32 0, i32 1
  store %union.rec* %383, %union.rec** %osucc1024, align 8
  %386 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %387 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11025 = bitcast %union.rec* %387 to %struct.word_type*
  %olist1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11025, i32 0, i32 0
  %arrayidx1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1026, i32 0, i64 0
  %opred1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1027, i32 0, i32 0
  store %union.rec* %386, %union.rec** %opred1028, align 8
  %388 = load %union.rec*, %union.rec** @zz_res, align 8
  %389 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11029 = bitcast %union.rec* %389 to %struct.word_type*
  %olist1030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1030, i32 0, i64 0
  %osucc1032 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1031, i32 0, i32 1
  store %union.rec* %388, %union.rec** %osucc1032, align 8
  br label %cond.end.1033

cond.end.1033:                                    ; preds = %cond.false.1004, %cond.true.1003
  %cond1034 = phi %union.rec* [ %377, %cond.true.1003 ], [ %388, %cond.false.1004 ]
  br label %cond.end.1035

cond.end.1035:                                    ; preds = %cond.end.1033, %cond.true.999
  %cond1036 = phi %union.rec* [ %375, %cond.true.999 ], [ %cond1034, %cond.end.1033 ]
  br label %if.end.1037

if.end.1037:                                      ; preds = %cond.end.1035, %land.lhs.true.820, %for.end.817
  %390 = load %union.rec*, %union.rec** %nxt, align 8
  %os11039 = bitcast %union.rec* %390 to %struct.word_type*
  %olist1040 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11039, i32 0, i32 0
  %arrayidx1041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1040, i32 0, i64 0
  %osucc1042 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1041, i32 0, i32 1
  %391 = load %union.rec*, %union.rec** %osucc1042, align 8
  store %union.rec* %391, %union.rec** %xxstart1038, align 8
  %392 = load %union.rec*, %union.rec** %nxt, align 8
  store %union.rec* %392, %union.rec** %xxstop1043, align 8
  %393 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %393, %union.rec** %xxdest1044, align 8
  %394 = load %union.rec*, %union.rec** %xxstart1038, align 8
  %395 = load %union.rec*, %union.rec** %xxstop1043, align 8
  %cmp1045 = icmp ne %union.rec* %394, %395
  br i1 %cmp1045, label %if.then.1047, label %if.end.1139

if.then.1047:                                     ; preds = %if.end.1037
  %396 = load %union.rec*, %union.rec** %xxstart1038, align 8
  %os11048 = bitcast %union.rec* %396 to %struct.word_type*
  %ou11049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11048, i32 0, i32 1
  %os111050 = bitcast %union.FIRST_UNION* %ou11049 to %struct.anon*
  %otype1051 = getelementptr inbounds %struct.anon, %struct.anon* %os111050, i32 0, i32 0
  %397 = load i8, i8* %otype1051, align 1
  %conv1052 = zext i8 %397 to i32
  %cmp1053 = icmp eq i32 %conv1052, 0
  br i1 %cmp1053, label %if.end.1057, label %if.then.1055

if.then.1055:                                     ; preds = %if.then.1047
  %398 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1056 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %398, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.1057

if.end.1057:                                      ; preds = %if.then.1055, %if.then.1047
  %399 = load %union.rec*, %union.rec** %xxstart1038, align 8
  store %union.rec* %399, %union.rec** @zz_res, align 8
  %400 = load %union.rec*, %union.rec** %xxstop1043, align 8
  store %union.rec* %400, %union.rec** @zz_hold, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1058 = icmp eq %union.rec* %401, null
  br i1 %cmp1058, label %cond.true.1060, label %cond.false.1061

cond.true.1060:                                   ; preds = %if.end.1057
  %402 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1096

cond.false.1061:                                  ; preds = %if.end.1057
  %403 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1062 = icmp eq %union.rec* %403, null
  br i1 %cmp1062, label %cond.true.1064, label %cond.false.1065

cond.true.1064:                                   ; preds = %cond.false.1061
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1094

cond.false.1065:                                  ; preds = %cond.false.1061
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11066 = bitcast %union.rec* %405 to %struct.word_type*
  %olist1067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11066, i32 0, i32 0
  %arrayidx1068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1067, i32 0, i64 0
  %opred1069 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1068, i32 0, i32 0
  %406 = load %union.rec*, %union.rec** %opred1069, align 8
  store %union.rec* %406, %union.rec** @zz_tmp, align 8
  %407 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11070 = bitcast %union.rec* %407 to %struct.word_type*
  %olist1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11070, i32 0, i32 0
  %arrayidx1072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1071, i32 0, i64 0
  %opred1073 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1072, i32 0, i32 0
  %408 = load %union.rec*, %union.rec** %opred1073, align 8
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11074 = bitcast %union.rec* %409 to %struct.word_type*
  %olist1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11074, i32 0, i32 0
  %arrayidx1076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1075, i32 0, i64 0
  %opred1077 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1076, i32 0, i32 0
  store %union.rec* %408, %union.rec** %opred1077, align 8
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11078 = bitcast %union.rec* %411 to %struct.word_type*
  %olist1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11078, i32 0, i32 0
  %arrayidx1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1079, i32 0, i64 0
  %opred1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1080, i32 0, i32 0
  %412 = load %union.rec*, %union.rec** %opred1081, align 8
  %os11082 = bitcast %union.rec* %412 to %struct.word_type*
  %olist1083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11082, i32 0, i32 0
  %arrayidx1084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1083, i32 0, i64 0
  %osucc1085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1084, i32 0, i32 1
  store %union.rec* %410, %union.rec** %osucc1085, align 8
  %413 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %414 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11086 = bitcast %union.rec* %414 to %struct.word_type*
  %olist1087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11086, i32 0, i32 0
  %arrayidx1088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1087, i32 0, i64 0
  %opred1089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1088, i32 0, i32 0
  store %union.rec* %413, %union.rec** %opred1089, align 8
  %415 = load %union.rec*, %union.rec** @zz_res, align 8
  %416 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11090 = bitcast %union.rec* %416 to %struct.word_type*
  %olist1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 0
  %arrayidx1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1091, i32 0, i64 0
  %osucc1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1092, i32 0, i32 1
  store %union.rec* %415, %union.rec** %osucc1093, align 8
  br label %cond.end.1094

cond.end.1094:                                    ; preds = %cond.false.1065, %cond.true.1064
  %cond1095 = phi %union.rec* [ %404, %cond.true.1064 ], [ %415, %cond.false.1065 ]
  br label %cond.end.1096

cond.end.1096:                                    ; preds = %cond.end.1094, %cond.true.1060
  %cond1097 = phi %union.rec* [ %402, %cond.true.1060 ], [ %cond1095, %cond.end.1094 ]
  %417 = load %union.rec*, %union.rec** %xxstart1038, align 8
  store %union.rec* %417, %union.rec** @zz_res, align 8
  %418 = load %union.rec*, %union.rec** %xxdest1044, align 8
  store %union.rec* %418, %union.rec** @zz_hold, align 8
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1098 = icmp eq %union.rec* %419, null
  br i1 %cmp1098, label %cond.true.1100, label %cond.false.1101

cond.true.1100:                                   ; preds = %cond.end.1096
  %420 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1137

cond.false.1101:                                  ; preds = %cond.end.1096
  %421 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1102 = icmp eq %union.rec* %421, null
  br i1 %cmp1102, label %cond.true.1104, label %cond.false.1105

cond.true.1104:                                   ; preds = %cond.false.1101
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1135

cond.false.1105:                                  ; preds = %cond.false.1101
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11106 = bitcast %union.rec* %423 to %struct.word_type*
  %olist1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11106, i32 0, i32 0
  %arrayidx1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1107, i32 0, i64 0
  %opred1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1108, i32 0, i32 0
  %424 = load %union.rec*, %union.rec** %opred1109, align 8
  store %union.rec* %424, %union.rec** @zz_tmp, align 8
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11110 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11110, i32 0, i32 0
  %arrayidx1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1111, i32 0, i64 0
  %opred1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1112, i32 0, i32 0
  %426 = load %union.rec*, %union.rec** %opred1113, align 8
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11115 = bitcast %union.rec* %427 to %struct.word_type*
  %olist1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11115, i32 0, i32 0
  %arrayidx1117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1116, i32 0, i64 0
  %opred1118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1117, i32 0, i32 0
  store %union.rec* %426, %union.rec** %opred1118, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %429 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11119 = bitcast %union.rec* %429 to %struct.word_type*
  %olist1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11119, i32 0, i32 0
  %arrayidx1121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1120, i32 0, i64 0
  %opred1122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1121, i32 0, i32 0
  %430 = load %union.rec*, %union.rec** %opred1122, align 8
  %os11123 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11123, i32 0, i32 0
  %arrayidx1125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1124, i32 0, i64 0
  %osucc1126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1125, i32 0, i32 1
  store %union.rec* %428, %union.rec** %osucc1126, align 8
  %431 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %432 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11127 = bitcast %union.rec* %432 to %struct.word_type*
  %olist1128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11127, i32 0, i32 0
  %arrayidx1129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1128, i32 0, i64 0
  %opred1130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1129, i32 0, i32 0
  store %union.rec* %431, %union.rec** %opred1130, align 8
  %433 = load %union.rec*, %union.rec** @zz_res, align 8
  %434 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11131 = bitcast %union.rec* %434 to %struct.word_type*
  %olist1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11131, i32 0, i32 0
  %arrayidx1133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1132, i32 0, i64 0
  %osucc1134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1133, i32 0, i32 1
  store %union.rec* %433, %union.rec** %osucc1134, align 8
  br label %cond.end.1135

cond.end.1135:                                    ; preds = %cond.false.1105, %cond.true.1104
  %cond1136 = phi %union.rec* [ %422, %cond.true.1104 ], [ %433, %cond.false.1105 ]
  br label %cond.end.1137

cond.end.1137:                                    ; preds = %cond.end.1135, %cond.true.1100
  %cond1138 = phi %union.rec* [ %420, %cond.true.1100 ], [ %cond1136, %cond.end.1135 ]
  br label %if.end.1139

if.end.1139:                                      ; preds = %cond.end.1137, %if.end.1037
  %435 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %435, %union.rec** @xx_link, align 8
  %436 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %436, %union.rec** @zz_hold, align 8
  %437 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11140 = bitcast %union.rec* %437 to %struct.word_type*
  %olist1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11140, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1141, i32 0, i64 1
  %osucc1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1142, i32 0, i32 1
  %438 = load %union.rec*, %union.rec** %osucc1143, align 8
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1144 = icmp eq %union.rec* %438, %439
  br i1 %cmp1144, label %cond.true.1146, label %cond.false.1147

cond.true.1146:                                   ; preds = %if.end.1139
  br label %cond.end.1177

cond.false.1147:                                  ; preds = %if.end.1139
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11148 = bitcast %union.rec* %440 to %struct.word_type*
  %olist1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11148, i32 0, i32 0
  %arrayidx1150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1149, i32 0, i64 1
  %osucc1151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1150, i32 0, i32 1
  %441 = load %union.rec*, %union.rec** %osucc1151, align 8
  store %union.rec* %441, %union.rec** @zz_res, align 8
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11152 = bitcast %union.rec* %442 to %struct.word_type*
  %olist1153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11152, i32 0, i32 0
  %arrayidx1154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1153, i32 0, i64 1
  %opred1155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1154, i32 0, i32 0
  %443 = load %union.rec*, %union.rec** %opred1155, align 8
  %444 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11156 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11156, i32 0, i32 0
  %arrayidx1158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1157, i32 0, i64 1
  %opred1159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1158, i32 0, i32 0
  store %union.rec* %443, %union.rec** %opred1159, align 8
  %445 = load %union.rec*, %union.rec** @zz_res, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11160 = bitcast %union.rec* %446 to %struct.word_type*
  %olist1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11160, i32 0, i32 0
  %arrayidx1162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1161, i32 0, i64 1
  %opred1163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1162, i32 0, i32 0
  %447 = load %union.rec*, %union.rec** %opred1163, align 8
  %os11164 = bitcast %union.rec* %447 to %struct.word_type*
  %olist1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11164, i32 0, i32 0
  %arrayidx1166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1165, i32 0, i64 1
  %osucc1167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1166, i32 0, i32 1
  store %union.rec* %445, %union.rec** %osucc1167, align 8
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11168 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11168, i32 0, i32 0
  %arrayidx1170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1169, i32 0, i64 1
  %osucc1171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1170, i32 0, i32 1
  store %union.rec* %448, %union.rec** %osucc1171, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11173 = bitcast %union.rec* %450 to %struct.word_type*
  %olist1174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11173, i32 0, i32 0
  %arrayidx1175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1174, i32 0, i64 1
  %opred1176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1175, i32 0, i32 0
  store %union.rec* %448, %union.rec** %opred1176, align 8
  %451 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1177

cond.end.1177:                                    ; preds = %cond.false.1147, %cond.true.1146
  %cond1178 = phi %union.rec* [ null, %cond.true.1146 ], [ %451, %cond.false.1147 ]
  store %union.rec* %cond1178, %union.rec** @xx_tmp, align 8
  %452 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %452, %union.rec** @zz_hold, align 8
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11179 = bitcast %union.rec* %453 to %struct.word_type*
  %olist1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11179, i32 0, i32 0
  %arrayidx1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1180, i32 0, i64 0
  %osucc1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1181, i32 0, i32 1
  %454 = load %union.rec*, %union.rec** %osucc1182, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1183 = icmp eq %union.rec* %454, %455
  br i1 %cmp1183, label %cond.true.1185, label %cond.false.1186

cond.true.1185:                                   ; preds = %cond.end.1177
  br label %cond.end.1215

cond.false.1186:                                  ; preds = %cond.end.1177
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11187 = bitcast %union.rec* %456 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 0
  %osucc1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 1
  %457 = load %union.rec*, %union.rec** %osucc1190, align 8
  store %union.rec* %457, %union.rec** @zz_res, align 8
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11191 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11191, i32 0, i32 0
  %arrayidx1193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1192, i32 0, i64 0
  %opred1194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1193, i32 0, i32 0
  %459 = load %union.rec*, %union.rec** %opred1194, align 8
  %460 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11195 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11195, i32 0, i32 0
  %arrayidx1197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1196, i32 0, i64 0
  %opred1198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1197, i32 0, i32 0
  store %union.rec* %459, %union.rec** %opred1198, align 8
  %461 = load %union.rec*, %union.rec** @zz_res, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11199 = bitcast %union.rec* %462 to %struct.word_type*
  %olist1200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11199, i32 0, i32 0
  %arrayidx1201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1200, i32 0, i64 0
  %opred1202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1201, i32 0, i32 0
  %463 = load %union.rec*, %union.rec** %opred1202, align 8
  %os11203 = bitcast %union.rec* %463 to %struct.word_type*
  %olist1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11203, i32 0, i32 0
  %arrayidx1205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1204, i32 0, i64 0
  %osucc1206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1205, i32 0, i32 1
  store %union.rec* %461, %union.rec** %osucc1206, align 8
  %464 = load %union.rec*, %union.rec** @zz_hold, align 8
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11207 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11207, i32 0, i32 0
  %arrayidx1209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1208, i32 0, i64 0
  %osucc1210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1209, i32 0, i32 1
  store %union.rec* %464, %union.rec** %osucc1210, align 8
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11211 = bitcast %union.rec* %466 to %struct.word_type*
  %olist1212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11211, i32 0, i32 0
  %arrayidx1213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1212, i32 0, i64 0
  %opred1214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1213, i32 0, i32 0
  store %union.rec* %464, %union.rec** %opred1214, align 8
  %467 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1215

cond.end.1215:                                    ; preds = %cond.false.1186, %cond.true.1185
  %cond1216 = phi %union.rec* [ null, %cond.true.1185 ], [ %467, %cond.false.1186 ]
  %468 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %468, %union.rec** @zz_hold, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %469, %union.rec** @zz_hold, align 8
  %470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11217 = bitcast %union.rec* %470 to %struct.word_type*
  %ou11218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11217, i32 0, i32 1
  %os111219 = bitcast %union.FIRST_UNION* %ou11218 to %struct.anon*
  %otype1220 = getelementptr inbounds %struct.anon, %struct.anon* %os111219, i32 0, i32 0
  %471 = load i8, i8* %otype1220, align 1
  %conv1221 = zext i8 %471 to i32
  %cmp1222 = icmp eq i32 %conv1221, 11
  br i1 %cmp1222, label %cond.true.1232, label %lor.lhs.false.1224

lor.lhs.false.1224:                               ; preds = %cond.end.1215
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11225 = bitcast %union.rec* %472 to %struct.word_type*
  %ou11226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11225, i32 0, i32 1
  %os111227 = bitcast %union.FIRST_UNION* %ou11226 to %struct.anon*
  %otype1228 = getelementptr inbounds %struct.anon, %struct.anon* %os111227, i32 0, i32 0
  %473 = load i8, i8* %otype1228, align 1
  %conv1229 = zext i8 %473 to i32
  %cmp1230 = icmp eq i32 %conv1229, 12
  br i1 %cmp1230, label %cond.true.1232, label %cond.false.1239

cond.true.1232:                                   ; preds = %lor.lhs.false.1224, %cond.end.1215
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11234 = bitcast %union.rec* %474 to %struct.word_type*
  %ou11235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11234, i32 0, i32 1
  %os111236 = bitcast %union.FIRST_UNION* %ou11235 to %struct.anon*
  %orec_size1237 = getelementptr inbounds %struct.anon, %struct.anon* %os111236, i32 0, i32 1
  %475 = load i8, i8* %orec_size1237, align 1
  %conv1238 = zext i8 %475 to i32
  br label %cond.end.1247

cond.false.1239:                                  ; preds = %lor.lhs.false.1224
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11240 = bitcast %union.rec* %476 to %struct.word_type*
  %ou11241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11240, i32 0, i32 1
  %os111242 = bitcast %union.FIRST_UNION* %ou11241 to %struct.anon*
  %otype1243 = getelementptr inbounds %struct.anon, %struct.anon* %os111242, i32 0, i32 0
  %477 = load i8, i8* %otype1243, align 1
  %idxprom1244 = zext i8 %477 to i64
  %arrayidx1245 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1244
  %478 = load i8, i8* %arrayidx1245, align 1
  %conv1246 = zext i8 %478 to i32
  br label %cond.end.1247

cond.end.1247:                                    ; preds = %cond.false.1239, %cond.true.1232
  %cond1248 = phi i32 [ %conv1238, %cond.true.1232 ], [ %conv1246, %cond.false.1239 ]
  store i32 %cond1248, i32* @zz_size, align 4
  %479 = load i32, i32* @zz_size, align 4
  %idxprom1249 = sext i32 %479 to i64
  %arrayidx1250 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1249
  %480 = load %union.rec*, %union.rec** %arrayidx1250, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11251 = bitcast %union.rec* %481 to %struct.word_type*
  %olist1252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11251, i32 0, i32 0
  %arrayidx1253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1252, i32 0, i64 0
  %opred1254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1253, i32 0, i32 0
  store %union.rec* %480, %union.rec** %opred1254, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %483 = load i32, i32* @zz_size, align 4
  %idxprom1255 = sext i32 %483 to i64
  %arrayidx1256 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1255
  store %union.rec* %482, %union.rec** %arrayidx1256, align 8
  %484 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os11257 = bitcast %union.rec* %484 to %struct.word_type*
  %olist1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11257, i32 0, i32 0
  %arrayidx1259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1258, i32 0, i64 1
  %osucc1260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1259, i32 0, i32 1
  %485 = load %union.rec*, %union.rec** %osucc1260, align 8
  %486 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp1261 = icmp eq %union.rec* %485, %486
  br i1 %cmp1261, label %if.then.1263, label %if.end.1265

if.then.1263:                                     ; preds = %cond.end.1247
  %487 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call1264 = call i32 @DisposeObject(%union.rec* %487)
  br label %if.end.1265

if.end.1265:                                      ; preds = %if.then.1263, %cond.end.1247
  %488 = load %union.rec*, %union.rec** %start_link, align 8
  %os11266 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11266, i32 0, i32 0
  %arrayidx1268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1267, i32 0, i64 0
  %osucc1269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1268, i32 0, i32 1
  %489 = load %union.rec*, %union.rec** %osucc1269, align 8
  store %union.rec* %489, %union.rec** %link, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn630, align 4
  %490 = load %union.rec*, %union.rec** %link, align 8
  %os11270 = bitcast %union.rec* %490 to %struct.word_type*
  %olist1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11270, i32 0, i32 0
  %arrayidx1272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1271, i32 0, i64 0
  %osucc1273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1272, i32 0, i32 1
  %491 = load %union.rec*, %union.rec** %osucc1273, align 8
  store %union.rec* %491, %union.rec** %link, align 8
  br label %for.cond.1274

for.cond.1274:                                    ; preds = %for.inc.1353, %if.end.1265
  %492 = load %union.rec*, %union.rec** %link, align 8
  %493 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp1275 = icmp ne %union.rec* %492, %493
  br i1 %cmp1275, label %for.body.1277, label %for.end.1358

for.body.1277:                                    ; preds = %for.cond.1274
  %494 = load %union.rec*, %union.rec** %link, align 8
  %os11278 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11278, i32 0, i32 0
  %arrayidx1280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1279, i32 0, i64 1
  %opred1281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1280, i32 0, i32 0
  %495 = load %union.rec*, %union.rec** %opred1281, align 8
  store %union.rec* %495, %union.rec** %nxt, align 8
  br label %for.cond.1282

for.cond.1282:                                    ; preds = %for.inc.1291, %for.body.1277
  %496 = load %union.rec*, %union.rec** %nxt, align 8
  %os11283 = bitcast %union.rec* %496 to %struct.word_type*
  %ou11284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11283, i32 0, i32 1
  %os111285 = bitcast %union.FIRST_UNION* %ou11284 to %struct.anon*
  %otype1286 = getelementptr inbounds %struct.anon, %struct.anon* %os111285, i32 0, i32 0
  %497 = load i8, i8* %otype1286, align 1
  %conv1287 = zext i8 %497 to i32
  %cmp1288 = icmp eq i32 %conv1287, 0
  br i1 %cmp1288, label %for.body.1290, label %for.end.1296

for.body.1290:                                    ; preds = %for.cond.1282
  br label %for.inc.1291

for.inc.1291:                                     ; preds = %for.body.1290
  %498 = load %union.rec*, %union.rec** %nxt, align 8
  %os11292 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11292, i32 0, i32 0
  %arrayidx1294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1293, i32 0, i64 1
  %opred1295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1294, i32 0, i32 0
  %499 = load %union.rec*, %union.rec** %opred1295, align 8
  store %union.rec* %499, %union.rec** %nxt, align 8
  br label %for.cond.1282

for.end.1296:                                     ; preds = %for.cond.1282
  %500 = load %union.rec*, %union.rec** %nxt, align 8
  %os11297 = bitcast %union.rec* %500 to %struct.word_type*
  %ou11298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11297, i32 0, i32 1
  %os111299 = bitcast %union.FIRST_UNION* %ou11298 to %struct.anon*
  %otype1300 = getelementptr inbounds %struct.anon, %struct.anon* %os111299, i32 0, i32 0
  %501 = load i8, i8* %otype1300, align 1
  %conv1301 = zext i8 %501 to i32
  %cmp1302 = icmp eq i32 %conv1301, 1
  br i1 %cmp1302, label %if.then.1304, label %if.else.1316

if.then.1304:                                     ; preds = %for.end.1296
  %502 = load %union.rec*, %union.rec** %nxt, align 8
  store %union.rec* %502, %union.rec** %g, align 8
  %503 = load i32, i32* %jn630, align 4
  %tobool1305 = icmp ne i32 %503, 0
  br i1 %tobool1305, label %land.rhs.1306, label %land.end.1314

land.rhs.1306:                                    ; preds = %if.then.1304
  %504 = load %union.rec*, %union.rec** %nxt, align 8
  %os51307 = bitcast %union.rec* %504 to %struct.gapobj_type*
  %ogap1308 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51307, i32 0, i32 3
  %505 = bitcast %struct.GAP* %ogap1308 to i16*
  %bf.load1309 = load i16, i16* %505, align 4
  %bf.lshr1310 = lshr i16 %bf.load1309, 9
  %bf.clear1311 = and i16 %bf.lshr1310, 1
  %bf.cast1312 = zext i16 %bf.clear1311 to i32
  %tobool1313 = icmp ne i32 %bf.cast1312, 0
  br label %land.end.1314

land.end.1314:                                    ; preds = %land.rhs.1306, %if.then.1304
  %506 = phi i1 [ false, %if.then.1304 ], [ %tobool1313, %land.rhs.1306 ]
  %land.ext1315 = zext i1 %506 to i32
  store i32 %land.ext1315, i32* %jn630, align 4
  br label %if.end.1352

if.else.1316:                                     ; preds = %for.end.1296
  %507 = load %union.rec*, %union.rec** %nxt, align 8
  %os11317 = bitcast %union.rec* %507 to %struct.word_type*
  %ou11318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11317, i32 0, i32 1
  %os111319 = bitcast %union.FIRST_UNION* %ou11318 to %struct.anon*
  %otype1320 = getelementptr inbounds %struct.anon, %struct.anon* %os111319, i32 0, i32 0
  %508 = load i8, i8* %otype1320, align 1
  %conv1321 = zext i8 %508 to i32
  %cmp1322 = icmp eq i32 %conv1321, 9
  br i1 %cmp1322, label %cond.true.1324, label %cond.false.1327

cond.true.1324:                                   ; preds = %if.else.1316
  %509 = load %union.rec*, %union.rec** %nxt, align 8
  %call1325 = call i32 @SplitIsDefinite(%union.rec* %509)
  %tobool1326 = icmp ne i32 %call1325, 0
  br i1 %tobool1326, label %if.then.1345, label %if.end.1351

cond.false.1327:                                  ; preds = %if.else.1316
  %510 = load %union.rec*, %union.rec** %nxt, align 8
  %os11328 = bitcast %union.rec* %510 to %struct.word_type*
  %ou11329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11328, i32 0, i32 1
  %os111330 = bitcast %union.FIRST_UNION* %ou11329 to %struct.anon*
  %otype1331 = getelementptr inbounds %struct.anon, %struct.anon* %os111330, i32 0, i32 0
  %511 = load i8, i8* %otype1331, align 1
  %conv1332 = zext i8 %511 to i32
  %cmp1333 = icmp sge i32 %conv1332, 9
  br i1 %cmp1333, label %land.rhs.1335, label %land.end.1343

land.rhs.1335:                                    ; preds = %cond.false.1327
  %512 = load %union.rec*, %union.rec** %nxt, align 8
  %os11336 = bitcast %union.rec* %512 to %struct.word_type*
  %ou11337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11336, i32 0, i32 1
  %os111338 = bitcast %union.FIRST_UNION* %ou11337 to %struct.anon*
  %otype1339 = getelementptr inbounds %struct.anon, %struct.anon* %os111338, i32 0, i32 0
  %513 = load i8, i8* %otype1339, align 1
  %conv1340 = zext i8 %513 to i32
  %cmp1341 = icmp sle i32 %conv1340, 99
  br label %land.end.1343

land.end.1343:                                    ; preds = %land.rhs.1335, %cond.false.1327
  %514 = phi i1 [ false, %cond.false.1327 ], [ %cmp1341, %land.rhs.1335 ]
  br i1 %514, label %if.then.1345, label %if.end.1351

if.then.1345:                                     ; preds = %land.end.1343, %cond.true.1324
  %515 = load %union.rec*, %union.rec** %g, align 8
  %cmp1346 = icmp ne %union.rec* %515, null
  br i1 %cmp1346, label %if.end.1350, label %if.then.1348

if.then.1348:                                     ; preds = %if.then.1345
  %516 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1349 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %516, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.1350

if.end.1350:                                      ; preds = %if.then.1348, %if.then.1345
  br label %for.end.1358

if.end.1351:                                      ; preds = %land.end.1343, %cond.true.1324
  br label %if.end.1352

if.end.1352:                                      ; preds = %if.end.1351, %land.end.1314
  br label %for.inc.1353

for.inc.1353:                                     ; preds = %if.end.1352
  %517 = load %union.rec*, %union.rec** %link, align 8
  %os11354 = bitcast %union.rec* %517 to %struct.word_type*
  %olist1355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11354, i32 0, i32 0
  %arrayidx1356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1355, i32 0, i64 0
  %osucc1357 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1356, i32 0, i32 1
  %518 = load %union.rec*, %union.rec** %osucc1357, align 8
  store %union.rec* %518, %union.rec** %link, align 8
  br label %for.cond.1274

for.end.1358:                                     ; preds = %if.end.1350, %for.cond.1274
  br label %while.cond.720

while.end.1359:                                   ; preds = %land.end.731
  %519 = load %union.rec*, %union.rec** %link, align 8
  %520 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp1360 = icmp eq %union.rec* %519, %520
  br i1 %cmp1360, label %if.end.1380, label %lor.lhs.false.1362

lor.lhs.false.1362:                               ; preds = %while.end.1359
  %521 = load %union.rec*, %union.rec** %nxt, align 8
  %os11363 = bitcast %union.rec* %521 to %struct.word_type*
  %ou11364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11363, i32 0, i32 1
  %os111365 = bitcast %union.FIRST_UNION* %ou11364 to %struct.anon*
  %otype1366 = getelementptr inbounds %struct.anon, %struct.anon* %os111365, i32 0, i32 0
  %522 = load i8, i8* %otype1366, align 1
  %conv1367 = zext i8 %522 to i32
  %cmp1368 = icmp sge i32 %conv1367, 9
  br i1 %cmp1368, label %land.lhs.true.1370, label %if.then.1378

land.lhs.true.1370:                               ; preds = %lor.lhs.false.1362
  %523 = load %union.rec*, %union.rec** %nxt, align 8
  %os11371 = bitcast %union.rec* %523 to %struct.word_type*
  %ou11372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11371, i32 0, i32 1
  %os111373 = bitcast %union.FIRST_UNION* %ou11372 to %struct.anon*
  %otype1374 = getelementptr inbounds %struct.anon, %struct.anon* %os111373, i32 0, i32 0
  %524 = load i8, i8* %otype1374, align 1
  %conv1375 = zext i8 %524 to i32
  %cmp1376 = icmp sle i32 %conv1375, 99
  br i1 %cmp1376, label %if.end.1380, label %if.then.1378

if.then.1378:                                     ; preds = %land.lhs.true.1370, %lor.lhs.false.1362
  %525 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1379 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %525, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.1380

if.end.1380:                                      ; preds = %if.then.1378, %land.lhs.true.1370, %while.end.1359
  %526 = load %union.rec*, %union.rec** %link, align 8
  %527 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp1381 = icmp eq %union.rec* %526, %527
  br i1 %cmp1381, label %if.end.1393, label %lor.lhs.false.1383

lor.lhs.false.1383:                               ; preds = %if.end.1380
  %528 = load %union.rec*, %union.rec** %g, align 8
  %os51384 = bitcast %union.rec* %528 to %struct.gapobj_type*
  %ogap1385 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51384, i32 0, i32 3
  %529 = bitcast %struct.GAP* %ogap1385 to i16*
  %bf.load1386 = load i16, i16* %529, align 4
  %bf.lshr1387 = lshr i16 %bf.load1386, 13
  %bf.cast1388 = zext i16 %bf.lshr1387 to i32
  %cmp1389 = icmp ne i32 %bf.cast1388, 0
  br i1 %cmp1389, label %if.end.1393, label %if.then.1391

if.then.1391:                                     ; preds = %lor.lhs.false.1383
  %530 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1392 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %530, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.1393

if.end.1393:                                      ; preds = %if.then.1391, %lor.lhs.false.1383, %if.end.1380
  %531 = load %union.rec*, %union.rec** %link, align 8
  %532 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp1394 = icmp eq %union.rec* %531, %532
  br i1 %cmp1394, label %if.then.1396, label %if.end.1397

if.then.1396:                                     ; preds = %if.end.1393
  store i32 0, i32* %retval
  br label %return

if.end.1397:                                      ; preds = %if.end.1393
  %533 = load i32, i32* %rump_fwd, align 4
  %534 = load %union.rec*, %union.rec** %prev, align 8
  %os11398 = bitcast %union.rec* %534 to %struct.word_type*
  %ou31399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11398, i32 0, i32 3
  %os311400 = bitcast %union.THIRD_UNION* %ou31399 to %struct.anon.6*
  %ofwd1401 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311400, i32 0, i32 1
  %arrayidx1402 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1401, i32 0, i64 1
  %535 = load i32, i32* %arrayidx1402, align 4
  %cmp1403 = icmp slt i32 %533, %535
  br i1 %cmp1403, label %cond.true.1405, label %cond.false.1411

cond.true.1405:                                   ; preds = %if.end.1397
  %536 = load %union.rec*, %union.rec** %prev, align 8
  %os11406 = bitcast %union.rec* %536 to %struct.word_type*
  %ou31407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11406, i32 0, i32 3
  %os311408 = bitcast %union.THIRD_UNION* %ou31407 to %struct.anon.6*
  %ofwd1409 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311408, i32 0, i32 1
  %arrayidx1410 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1409, i32 0, i64 1
  %537 = load i32, i32* %arrayidx1410, align 4
  br label %cond.end.1412

cond.false.1411:                                  ; preds = %if.end.1397
  %538 = load i32, i32* %rump_fwd, align 4
  br label %cond.end.1412

cond.end.1412:                                    ; preds = %cond.false.1411, %cond.true.1405
  %cond1413 = phi i32 [ %537, %cond.true.1405 ], [ %538, %cond.false.1411 ]
  store i32 %cond1413, i32* %rump_fwd, align 4
  %539 = load i32, i32* %rump_fwd, align 4
  %540 = load %union.rec*, %union.rec** %nxt, align 8
  %os11414 = bitcast %union.rec* %540 to %struct.word_type*
  %ou31415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11414, i32 0, i32 3
  %os311416 = bitcast %union.THIRD_UNION* %ou31415 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311416, i32 0, i32 0
  %arrayidx1417 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  %541 = load i32, i32* %arrayidx1417, align 4
  %542 = load %union.rec*, %union.rec** %nxt, align 8
  %os11418 = bitcast %union.rec* %542 to %struct.word_type*
  %ou31419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11418, i32 0, i32 3
  %os311420 = bitcast %union.THIRD_UNION* %ou31419 to %struct.anon.6*
  %ofwd1421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311420, i32 0, i32 1
  %arrayidx1422 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1421, i32 0, i64 1
  %543 = load i32, i32* %arrayidx1422, align 4
  %544 = load %union.rec*, %union.rec** %g, align 8
  %os51423 = bitcast %union.rec* %544 to %struct.gapobj_type*
  %ogap1424 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51423, i32 0, i32 3
  %call1425 = call i32 @MinGap(i32 %539, i32 %541, i32 %543, %struct.GAP* %ogap1424)
  %545 = load %union.rec*, %union.rec** %prev, align 8
  %os11426 = bitcast %union.rec* %545 to %struct.word_type*
  %ou31427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11426, i32 0, i32 3
  %os311428 = bitcast %union.THIRD_UNION* %ou31427 to %struct.anon.6*
  %ofwd1429 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311428, i32 0, i32 1
  %arrayidx1430 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1429, i32 0, i64 1
  %546 = load i32, i32* %arrayidx1430, align 4
  %547 = load %union.rec*, %union.rec** %nxt, align 8
  %os11431 = bitcast %union.rec* %547 to %struct.word_type*
  %ou31432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11431, i32 0, i32 3
  %os311433 = bitcast %union.THIRD_UNION* %ou31432 to %struct.anon.6*
  %oback1434 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311433, i32 0, i32 0
  %arrayidx1435 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1434, i32 0, i64 1
  %548 = load i32, i32* %arrayidx1435, align 4
  %549 = load %union.rec*, %union.rec** %nxt, align 8
  %os11436 = bitcast %union.rec* %549 to %struct.word_type*
  %ou31437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11436, i32 0, i32 3
  %os311438 = bitcast %union.THIRD_UNION* %ou31437 to %struct.anon.6*
  %ofwd1439 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311438, i32 0, i32 1
  %arrayidx1440 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1439, i32 0, i64 1
  %550 = load i32, i32* %arrayidx1440, align 4
  %551 = load %union.rec*, %union.rec** %g, align 8
  %os51441 = bitcast %union.rec* %551 to %struct.gapobj_type*
  %ogap1442 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51441, i32 0, i32 3
  %call1443 = call i32 @MinGap(i32 %546, i32 %548, i32 %550, %struct.GAP* %ogap1442)
  %cmp1444 = icmp ne i32 %call1425, %call1443
  br i1 %cmp1444, label %if.then.1446, label %if.end.1447

if.then.1446:                                     ; preds = %cond.end.1412
  store i32 0, i32* %retval
  br label %return

if.end.1447:                                      ; preds = %cond.end.1412
  %552 = load %union.rec*, %union.rec** %large_comp, align 8
  %os11448 = bitcast %union.rec* %552 to %struct.word_type*
  %olist1449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11448, i32 0, i32 0
  %arrayidx1450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1449, i32 0, i64 0
  %osucc1451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1450, i32 0, i32 1
  %553 = load %union.rec*, %union.rec** %osucc1451, align 8
  store %union.rec* %553, %union.rec** %link, align 8
  br label %for.cond.1452

for.cond.1452:                                    ; preds = %for.inc.1500, %if.end.1447
  %554 = load %union.rec*, %union.rec** %link, align 8
  %555 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp1453 = icmp ne %union.rec* %554, %555
  br i1 %cmp1453, label %for.body.1455, label %for.end.1505

for.body.1455:                                    ; preds = %for.cond.1452
  %556 = load %union.rec*, %union.rec** %link, align 8
  %os11456 = bitcast %union.rec* %556 to %struct.word_type*
  %olist1457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11456, i32 0, i32 0
  %arrayidx1458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1457, i32 0, i64 1
  %opred1459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1458, i32 0, i32 0
  %557 = load %union.rec*, %union.rec** %opred1459, align 8
  store %union.rec* %557, %union.rec** %z, align 8
  br label %for.cond.1460

for.cond.1460:                                    ; preds = %for.inc.1469, %for.body.1455
  %558 = load %union.rec*, %union.rec** %z, align 8
  %os11461 = bitcast %union.rec* %558 to %struct.word_type*
  %ou11462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11461, i32 0, i32 1
  %os111463 = bitcast %union.FIRST_UNION* %ou11462 to %struct.anon*
  %otype1464 = getelementptr inbounds %struct.anon, %struct.anon* %os111463, i32 0, i32 0
  %559 = load i8, i8* %otype1464, align 1
  %conv1465 = zext i8 %559 to i32
  %cmp1466 = icmp eq i32 %conv1465, 0
  br i1 %cmp1466, label %for.body.1468, label %for.end.1474

for.body.1468:                                    ; preds = %for.cond.1460
  br label %for.inc.1469

for.inc.1469:                                     ; preds = %for.body.1468
  %560 = load %union.rec*, %union.rec** %z, align 8
  %os11470 = bitcast %union.rec* %560 to %struct.word_type*
  %olist1471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11470, i32 0, i32 0
  %arrayidx1472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1471, i32 0, i64 1
  %opred1473 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1472, i32 0, i32 0
  %561 = load %union.rec*, %union.rec** %opred1473, align 8
  store %union.rec* %561, %union.rec** %z, align 8
  br label %for.cond.1460

for.end.1474:                                     ; preds = %for.cond.1460
  %562 = load %union.rec*, %union.rec** %z, align 8
  %os11475 = bitcast %union.rec* %562 to %struct.word_type*
  %ou11476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11475, i32 0, i32 1
  %os111477 = bitcast %union.FIRST_UNION* %ou11476 to %struct.anon*
  %otype1478 = getelementptr inbounds %struct.anon, %struct.anon* %os111477, i32 0, i32 0
  %563 = load i8, i8* %otype1478, align 1
  %conv1479 = zext i8 %563 to i32
  %cmp1480 = icmp eq i32 %conv1479, 1
  br i1 %cmp1480, label %land.lhs.true.1482, label %if.end.1499

land.lhs.true.1482:                               ; preds = %for.end.1474
  %564 = load %union.rec*, %union.rec** %z, align 8
  %os51483 = bitcast %union.rec* %564 to %struct.gapobj_type*
  %ogap1484 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51483, i32 0, i32 3
  %565 = bitcast %struct.GAP* %ogap1484 to i16*
  %bf.load1485 = load i16, i16* %565, align 4
  %bf.lshr1486 = lshr i16 %bf.load1485, 13
  %bf.cast1487 = zext i16 %bf.lshr1486 to i32
  %cmp1488 = icmp ne i32 %bf.cast1487, 0
  br i1 %cmp1488, label %land.lhs.true.1490, label %if.end.1499

land.lhs.true.1490:                               ; preds = %land.lhs.true.1482
  %566 = load %union.rec*, %union.rec** %z, align 8
  %os51491 = bitcast %union.rec* %566 to %struct.gapobj_type*
  %ogap1492 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51491, i32 0, i32 3
  %567 = bitcast %struct.GAP* %ogap1492 to i16*
  %bf.load1493 = load i16, i16* %567, align 4
  %bf.lshr1494 = lshr i16 %bf.load1493, 9
  %bf.clear1495 = and i16 %bf.lshr1494, 1
  %bf.cast1496 = zext i16 %bf.clear1495 to i32
  %tobool1497 = icmp ne i32 %bf.cast1496, 0
  br i1 %tobool1497, label %if.then.1498, label %if.end.1499

if.then.1498:                                     ; preds = %land.lhs.true.1490
  store i32 0, i32* %retval
  br label %return

if.end.1499:                                      ; preds = %land.lhs.true.1490, %land.lhs.true.1482, %for.end.1474
  br label %for.inc.1500

for.inc.1500:                                     ; preds = %if.end.1499
  %568 = load %union.rec*, %union.rec** %link, align 8
  %os11501 = bitcast %union.rec* %568 to %struct.word_type*
  %olist1502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11501, i32 0, i32 0
  %arrayidx1503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1502, i32 0, i64 0
  %osucc1504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1503, i32 0, i32 1
  %569 = load %union.rec*, %union.rec** %osucc1504, align 8
  store %union.rec* %569, %union.rec** %link, align 8
  br label %for.cond.1452

for.end.1505:                                     ; preds = %for.cond.1452
  %570 = load %union.rec*, %union.rec** %prev, align 8
  %os11506 = bitcast %union.rec* %570 to %struct.word_type*
  %olist1507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11506, i32 0, i32 0
  %arrayidx1508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1507, i32 0, i64 1
  %osucc1509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1508, i32 0, i32 1
  %571 = load %union.rec*, %union.rec** %osucc1509, align 8
  %os11510 = bitcast %union.rec* %571 to %struct.word_type*
  %olist1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11510, i32 0, i32 0
  %arrayidx1512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1511, i32 0, i64 0
  %osucc1513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1512, i32 0, i32 1
  %572 = load %union.rec*, %union.rec** %osucc1513, align 8
  store %union.rec* %572, %union.rec** %link, align 8
  br label %for.cond.1514

for.cond.1514:                                    ; preds = %for.inc.1565, %for.end.1505
  %573 = load %union.rec*, %union.rec** %link, align 8
  %574 = load %union.rec*, %union.rec** %large_comp, align 8
  %cmp1515 = icmp ne %union.rec* %573, %574
  br i1 %cmp1515, label %for.body.1517, label %for.end.1571

for.body.1517:                                    ; preds = %for.cond.1514
  %575 = load %union.rec*, %union.rec** %link, align 8
  %os11518 = bitcast %union.rec* %575 to %struct.word_type*
  %olist1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11518, i32 0, i32 0
  %arrayidx1520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1519, i32 0, i64 1
  %opred1521 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1520, i32 0, i32 0
  %576 = load %union.rec*, %union.rec** %opred1521, align 8
  store %union.rec* %576, %union.rec** %nxt, align 8
  br label %for.cond.1522

for.cond.1522:                                    ; preds = %for.inc.1531, %for.body.1517
  %577 = load %union.rec*, %union.rec** %nxt, align 8
  %os11523 = bitcast %union.rec* %577 to %struct.word_type*
  %ou11524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11523, i32 0, i32 1
  %os111525 = bitcast %union.FIRST_UNION* %ou11524 to %struct.anon*
  %otype1526 = getelementptr inbounds %struct.anon, %struct.anon* %os111525, i32 0, i32 0
  %578 = load i8, i8* %otype1526, align 1
  %conv1527 = zext i8 %578 to i32
  %cmp1528 = icmp eq i32 %conv1527, 0
  br i1 %cmp1528, label %for.body.1530, label %for.end.1537

for.body.1530:                                    ; preds = %for.cond.1522
  br label %for.inc.1531

for.inc.1531:                                     ; preds = %for.body.1530
  %579 = load %union.rec*, %union.rec** %nxt, align 8
  %os11533 = bitcast %union.rec* %579 to %struct.word_type*
  %olist1534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11533, i32 0, i32 0
  %arrayidx1535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1534, i32 0, i64 1
  %opred1536 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1535, i32 0, i32 0
  %580 = load %union.rec*, %union.rec** %opred1536, align 8
  store %union.rec* %580, %union.rec** %nxt, align 8
  br label %for.cond.1522

for.end.1537:                                     ; preds = %for.cond.1522
  %581 = load %union.rec*, %union.rec** %nxt, align 8
  %os11538 = bitcast %union.rec* %581 to %struct.word_type*
  %ou11539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11538, i32 0, i32 1
  %os111540 = bitcast %union.FIRST_UNION* %ou11539 to %struct.anon*
  %otype1541 = getelementptr inbounds %struct.anon, %struct.anon* %os111540, i32 0, i32 0
  %582 = load i8, i8* %otype1541, align 1
  %conv1542 = zext i8 %582 to i32
  %cmp1543 = icmp eq i32 %conv1542, 1
  br i1 %cmp1543, label %if.then.1545, label %if.end.1546

if.then.1545:                                     ; preds = %for.end.1537
  br label %for.inc.1565

if.end.1546:                                      ; preds = %for.end.1537
  %583 = load %union.rec*, %union.rec** %nxt, align 8
  %os11547 = bitcast %union.rec* %583 to %struct.word_type*
  %ou11548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11547, i32 0, i32 1
  %os111549 = bitcast %union.FIRST_UNION* %ou11548 to %struct.anon*
  %otype1550 = getelementptr inbounds %struct.anon, %struct.anon* %os111549, i32 0, i32 0
  %584 = load i8, i8* %otype1550, align 1
  %conv1551 = zext i8 %584 to i32
  %cmp1552 = icmp sge i32 %conv1551, 9
  br i1 %cmp1552, label %land.lhs.true.1554, label %if.end.1564

land.lhs.true.1554:                               ; preds = %if.end.1546
  %585 = load %union.rec*, %union.rec** %nxt, align 8
  %os11555 = bitcast %union.rec* %585 to %struct.word_type*
  %ou11556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11555, i32 0, i32 1
  %os111557 = bitcast %union.FIRST_UNION* %ou11556 to %struct.anon*
  %otype1558 = getelementptr inbounds %struct.anon, %struct.anon* %os111557, i32 0, i32 0
  %586 = load i8, i8* %otype1558, align 1
  %conv1559 = zext i8 %586 to i32
  %cmp1560 = icmp sle i32 %conv1559, 99
  br i1 %cmp1560, label %if.then.1562, label %if.end.1564

if.then.1562:                                     ; preds = %land.lhs.true.1554
  %587 = load %union.rec*, %union.rec** %nxt, align 8
  %588 = load %union.rec*, %union.rec** %y.addr, align 8
  %589 = load %union.rec*, %union.rec** %large_comp, align 8
  %call1563 = call %union.rec* @EncloseInHcat(%union.rec* %587, %union.rec* %588, %union.rec* %589)
  store %union.rec* %call1563, %union.rec** %nxt, align 8
  br label %if.end.1564

if.end.1564:                                      ; preds = %if.then.1562, %land.lhs.true.1554, %if.end.1546
  br label %for.inc.1565

for.inc.1565:                                     ; preds = %if.end.1564, %if.then.1545
  %590 = load %union.rec*, %union.rec** %link, align 8
  %os11567 = bitcast %union.rec* %590 to %struct.word_type*
  %olist1568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11567, i32 0, i32 0
  %arrayidx1569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1568, i32 0, i64 0
  %osucc1570 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1569, i32 0, i32 1
  %591 = load %union.rec*, %union.rec** %osucc1570, align 8
  store %union.rec* %591, %union.rec** %link, align 8
  br label %for.cond.1514

for.end.1571:                                     ; preds = %for.cond.1514
  %592 = load %union.rec*, %union.rec** %g, align 8
  %os11573 = bitcast %union.rec* %592 to %struct.word_type*
  %olist1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11573, i32 0, i32 0
  %arrayidx1575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1574, i32 0, i64 1
  %osucc1576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1575, i32 0, i32 1
  %593 = load %union.rec*, %union.rec** %osucc1576, align 8
  store %union.rec* %593, %union.rec** %xxstart1572, align 8
  %594 = load %union.rec*, %union.rec** %large_comp, align 8
  store %union.rec* %594, %union.rec** %xxstop1577, align 8
  %595 = load %union.rec*, %union.rec** %y.addr, align 8
  %os11579 = bitcast %union.rec* %595 to %struct.word_type*
  %olist1580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11579, i32 0, i32 0
  %arrayidx1581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1580, i32 0, i64 1
  %osucc1582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1581, i32 0, i32 1
  %596 = load %union.rec*, %union.rec** %osucc1582, align 8
  %os11583 = bitcast %union.rec* %596 to %struct.word_type*
  %olist1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11583, i32 0, i32 0
  %arrayidx1585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1584, i32 0, i64 0
  %osucc1586 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1585, i32 0, i32 1
  %597 = load %union.rec*, %union.rec** %osucc1586, align 8
  store %union.rec* %597, %union.rec** %xxdest1578, align 8
  %598 = load %union.rec*, %union.rec** %xxstart1572, align 8
  %599 = load %union.rec*, %union.rec** %xxstop1577, align 8
  %cmp1587 = icmp ne %union.rec* %598, %599
  br i1 %cmp1587, label %if.then.1589, label %if.end.1681

if.then.1589:                                     ; preds = %for.end.1571
  %600 = load %union.rec*, %union.rec** %xxstart1572, align 8
  %os11590 = bitcast %union.rec* %600 to %struct.word_type*
  %ou11591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11590, i32 0, i32 1
  %os111592 = bitcast %union.FIRST_UNION* %ou11591 to %struct.anon*
  %otype1593 = getelementptr inbounds %struct.anon, %struct.anon* %os111592, i32 0, i32 0
  %601 = load i8, i8* %otype1593, align 1
  %conv1594 = zext i8 %601 to i32
  %cmp1595 = icmp eq i32 %conv1594, 0
  br i1 %cmp1595, label %if.end.1599, label %if.then.1597

if.then.1597:                                     ; preds = %if.then.1589
  %602 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1598 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %602, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.1599

if.end.1599:                                      ; preds = %if.then.1597, %if.then.1589
  %603 = load %union.rec*, %union.rec** %xxstart1572, align 8
  store %union.rec* %603, %union.rec** @zz_res, align 8
  %604 = load %union.rec*, %union.rec** %xxstop1577, align 8
  store %union.rec* %604, %union.rec** @zz_hold, align 8
  %605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1600 = icmp eq %union.rec* %605, null
  br i1 %cmp1600, label %cond.true.1602, label %cond.false.1603

cond.true.1602:                                   ; preds = %if.end.1599
  %606 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1638

cond.false.1603:                                  ; preds = %if.end.1599
  %607 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1604 = icmp eq %union.rec* %607, null
  br i1 %cmp1604, label %cond.true.1606, label %cond.false.1607

cond.true.1606:                                   ; preds = %cond.false.1603
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1636

cond.false.1607:                                  ; preds = %cond.false.1603
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11608 = bitcast %union.rec* %609 to %struct.word_type*
  %olist1609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11608, i32 0, i32 0
  %arrayidx1610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1609, i32 0, i64 0
  %opred1611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1610, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %opred1611, align 8
  store %union.rec* %610, %union.rec** @zz_tmp, align 8
  %611 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11612 = bitcast %union.rec* %611 to %struct.word_type*
  %olist1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11612, i32 0, i32 0
  %arrayidx1614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1613, i32 0, i64 0
  %opred1615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1614, i32 0, i32 0
  %612 = load %union.rec*, %union.rec** %opred1615, align 8
  %613 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11616 = bitcast %union.rec* %613 to %struct.word_type*
  %olist1617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11616, i32 0, i32 0
  %arrayidx1618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1617, i32 0, i64 0
  %opred1619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1618, i32 0, i32 0
  store %union.rec* %612, %union.rec** %opred1619, align 8
  %614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %615 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11620 = bitcast %union.rec* %615 to %struct.word_type*
  %olist1621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11620, i32 0, i32 0
  %arrayidx1622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1621, i32 0, i64 0
  %opred1623 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1622, i32 0, i32 0
  %616 = load %union.rec*, %union.rec** %opred1623, align 8
  %os11624 = bitcast %union.rec* %616 to %struct.word_type*
  %olist1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11624, i32 0, i32 0
  %arrayidx1626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1625, i32 0, i64 0
  %osucc1627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1626, i32 0, i32 1
  store %union.rec* %614, %union.rec** %osucc1627, align 8
  %617 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %618 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11628 = bitcast %union.rec* %618 to %struct.word_type*
  %olist1629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11628, i32 0, i32 0
  %arrayidx1630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1629, i32 0, i64 0
  %opred1631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1630, i32 0, i32 0
  store %union.rec* %617, %union.rec** %opred1631, align 8
  %619 = load %union.rec*, %union.rec** @zz_res, align 8
  %620 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11632 = bitcast %union.rec* %620 to %struct.word_type*
  %olist1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11632, i32 0, i32 0
  %arrayidx1634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1633, i32 0, i64 0
  %osucc1635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1634, i32 0, i32 1
  store %union.rec* %619, %union.rec** %osucc1635, align 8
  br label %cond.end.1636

cond.end.1636:                                    ; preds = %cond.false.1607, %cond.true.1606
  %cond1637 = phi %union.rec* [ %608, %cond.true.1606 ], [ %619, %cond.false.1607 ]
  br label %cond.end.1638

cond.end.1638:                                    ; preds = %cond.end.1636, %cond.true.1602
  %cond1639 = phi %union.rec* [ %606, %cond.true.1602 ], [ %cond1637, %cond.end.1636 ]
  %621 = load %union.rec*, %union.rec** %xxstart1572, align 8
  store %union.rec* %621, %union.rec** @zz_res, align 8
  %622 = load %union.rec*, %union.rec** %xxdest1578, align 8
  store %union.rec* %622, %union.rec** @zz_hold, align 8
  %623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1640 = icmp eq %union.rec* %623, null
  br i1 %cmp1640, label %cond.true.1642, label %cond.false.1643

cond.true.1642:                                   ; preds = %cond.end.1638
  %624 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1679

cond.false.1643:                                  ; preds = %cond.end.1638
  %625 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1644 = icmp eq %union.rec* %625, null
  br i1 %cmp1644, label %cond.true.1646, label %cond.false.1647

cond.true.1646:                                   ; preds = %cond.false.1643
  %626 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1677

cond.false.1647:                                  ; preds = %cond.false.1643
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11648 = bitcast %union.rec* %627 to %struct.word_type*
  %olist1649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11648, i32 0, i32 0
  %arrayidx1650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1649, i32 0, i64 0
  %opred1651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1650, i32 0, i32 0
  %628 = load %union.rec*, %union.rec** %opred1651, align 8
  store %union.rec* %628, %union.rec** @zz_tmp, align 8
  %629 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11652 = bitcast %union.rec* %629 to %struct.word_type*
  %olist1653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11652, i32 0, i32 0
  %arrayidx1654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1653, i32 0, i64 0
  %opred1655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1654, i32 0, i32 0
  %630 = load %union.rec*, %union.rec** %opred1655, align 8
  %631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11656 = bitcast %union.rec* %631 to %struct.word_type*
  %olist1657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11656, i32 0, i32 0
  %arrayidx1658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1657, i32 0, i64 0
  %opred1659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1658, i32 0, i32 0
  store %union.rec* %630, %union.rec** %opred1659, align 8
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %633 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11661 = bitcast %union.rec* %633 to %struct.word_type*
  %olist1662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11661, i32 0, i32 0
  %arrayidx1663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1662, i32 0, i64 0
  %opred1664 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1663, i32 0, i32 0
  %634 = load %union.rec*, %union.rec** %opred1664, align 8
  %os11665 = bitcast %union.rec* %634 to %struct.word_type*
  %olist1666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11665, i32 0, i32 0
  %arrayidx1667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1666, i32 0, i64 0
  %osucc1668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1667, i32 0, i32 1
  store %union.rec* %632, %union.rec** %osucc1668, align 8
  %635 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %636 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11669 = bitcast %union.rec* %636 to %struct.word_type*
  %olist1670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11669, i32 0, i32 0
  %arrayidx1671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1670, i32 0, i64 0
  %opred1672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1671, i32 0, i32 0
  store %union.rec* %635, %union.rec** %opred1672, align 8
  %637 = load %union.rec*, %union.rec** @zz_res, align 8
  %638 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11673 = bitcast %union.rec* %638 to %struct.word_type*
  %olist1674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11673, i32 0, i32 0
  %arrayidx1675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1674, i32 0, i64 0
  %osucc1676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1675, i32 0, i32 1
  store %union.rec* %637, %union.rec** %osucc1676, align 8
  br label %cond.end.1677

cond.end.1677:                                    ; preds = %cond.false.1647, %cond.true.1646
  %cond1678 = phi %union.rec* [ %626, %cond.true.1646 ], [ %637, %cond.false.1647 ]
  br label %cond.end.1679

cond.end.1679:                                    ; preds = %cond.end.1677, %cond.true.1642
  %cond1680 = phi %union.rec* [ %624, %cond.true.1642 ], [ %cond1678, %cond.end.1677 ]
  br label %if.end.1681

if.end.1681:                                      ; preds = %cond.end.1679, %for.end.1571
  %639 = load %union.rec*, %union.rec** %prev, align 8
  %os11682 = bitcast %union.rec* %639 to %struct.word_type*
  %ou31683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11682, i32 0, i32 3
  %os311684 = bitcast %union.THIRD_UNION* %ou31683 to %struct.anon.6*
  %ofwd1685 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311684, i32 0, i32 1
  %arrayidx1686 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1685, i32 0, i64 1
  %640 = load i32, i32* %arrayidx1686, align 4
  %641 = load %union.rec*, %union.rec** %large_comp_split, align 8
  %os11687 = bitcast %union.rec* %641 to %struct.word_type*
  %ou31688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11687, i32 0, i32 3
  %os311689 = bitcast %union.THIRD_UNION* %ou31688 to %struct.anon.6*
  %ofwd1690 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311689, i32 0, i32 1
  %arrayidx1691 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1690, i32 0, i64 1
  store i32 %640, i32* %arrayidx1691, align 4
  %642 = load %union.rec*, %union.rec** %large_comp, align 8
  %os11692 = bitcast %union.rec* %642 to %struct.word_type*
  %ou31693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11692, i32 0, i32 3
  %os311694 = bitcast %union.THIRD_UNION* %ou31693 to %struct.anon.6*
  %ofwd1695 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311694, i32 0, i32 1
  %arrayidx1696 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1695, i32 0, i64 1
  store i32 %640, i32* %arrayidx1696, align 4
  %643 = load %union.rec*, %union.rec** %row_thread, align 8
  %os11697 = bitcast %union.rec* %643 to %struct.word_type*
  %ou31698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11697, i32 0, i32 3
  %os311699 = bitcast %union.THIRD_UNION* %ou31698 to %struct.anon.6*
  %ofwd1700 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311699, i32 0, i32 1
  %arrayidx1701 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1700, i32 0, i64 1
  store i32 %640, i32* %arrayidx1701, align 4
  %644 = load %union.rec*, %union.rec** %y.addr, align 8
  %os11702 = bitcast %union.rec* %644 to %struct.word_type*
  %ou31703 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11702, i32 0, i32 3
  %os311704 = bitcast %union.THIRD_UNION* %ou31703 to %struct.anon.6*
  %ofwd1705 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311704, i32 0, i32 1
  %arrayidx1706 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1705, i32 0, i64 1
  store i32 %640, i32* %arrayidx1706, align 4
  %645 = load %union.rec*, %union.rec** %y.addr, align 8
  %os11707 = bitcast %union.rec* %645 to %struct.word_type*
  %olist1708 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11707, i32 0, i32 0
  %arrayidx1709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1708, i32 0, i64 1
  %osucc1710 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1709, i32 0, i32 1
  %646 = load %union.rec*, %union.rec** %osucc1710, align 8
  %os11711 = bitcast %union.rec* %646 to %struct.word_type*
  %olist1712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11711, i32 0, i32 0
  %arrayidx1713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1712, i32 0, i64 0
  %opred1714 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1713, i32 0, i32 0
  %647 = load %union.rec*, %union.rec** %opred1714, align 8
  store %union.rec* %647, %union.rec** %link, align 8
  br label %for.cond.1715

for.cond.1715:                                    ; preds = %for.inc.1760, %if.end.1681
  %648 = load %union.rec*, %union.rec** %link, align 8
  %os11716 = bitcast %union.rec* %648 to %struct.word_type*
  %ou11717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11716, i32 0, i32 1
  %os111718 = bitcast %union.FIRST_UNION* %ou11717 to %struct.anon*
  %otype1719 = getelementptr inbounds %struct.anon, %struct.anon* %os111718, i32 0, i32 0
  %649 = load i8, i8* %otype1719, align 1
  %conv1720 = zext i8 %649 to i32
  %cmp1721 = icmp eq i32 %conv1720, 0
  br i1 %cmp1721, label %for.body.1723, label %for.end.1765

for.body.1723:                                    ; preds = %for.cond.1715
  %650 = load %union.rec*, %union.rec** %link, align 8
  %os11724 = bitcast %union.rec* %650 to %struct.word_type*
  %olist1725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11724, i32 0, i32 0
  %arrayidx1726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1725, i32 0, i64 1
  %opred1727 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1726, i32 0, i32 0
  %651 = load %union.rec*, %union.rec** %opred1727, align 8
  store %union.rec* %651, %union.rec** %index, align 8
  br label %for.cond.1728

for.cond.1728:                                    ; preds = %for.inc.1737, %for.body.1723
  %652 = load %union.rec*, %union.rec** %index, align 8
  %os11729 = bitcast %union.rec* %652 to %struct.word_type*
  %ou11730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11729, i32 0, i32 1
  %os111731 = bitcast %union.FIRST_UNION* %ou11730 to %struct.anon*
  %otype1732 = getelementptr inbounds %struct.anon, %struct.anon* %os111731, i32 0, i32 0
  %653 = load i8, i8* %otype1732, align 1
  %conv1733 = zext i8 %653 to i32
  %cmp1734 = icmp eq i32 %conv1733, 0
  br i1 %cmp1734, label %for.body.1736, label %for.end.1742

for.body.1736:                                    ; preds = %for.cond.1728
  br label %for.inc.1737

for.inc.1737:                                     ; preds = %for.body.1736
  %654 = load %union.rec*, %union.rec** %index, align 8
  %os11738 = bitcast %union.rec* %654 to %struct.word_type*
  %olist1739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11738, i32 0, i32 0
  %arrayidx1740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1739, i32 0, i64 1
  %opred1741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1740, i32 0, i32 0
  %655 = load %union.rec*, %union.rec** %opred1741, align 8
  store %union.rec* %655, %union.rec** %index, align 8
  br label %for.cond.1728

for.end.1742:                                     ; preds = %for.cond.1728
  %656 = load %union.rec*, %union.rec** %index, align 8
  %os11743 = bitcast %union.rec* %656 to %struct.word_type*
  %ou11744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11743, i32 0, i32 1
  %os111745 = bitcast %union.FIRST_UNION* %ou11744 to %struct.anon*
  %otype1746 = getelementptr inbounds %struct.anon, %struct.anon* %os111745, i32 0, i32 0
  %657 = load i8, i8* %otype1746, align 1
  %conv1747 = zext i8 %657 to i32
  %cmp1748 = icmp sge i32 %conv1747, 119
  br i1 %cmp1748, label %land.lhs.true.1750, label %if.then.1758

land.lhs.true.1750:                               ; preds = %for.end.1742
  %658 = load %union.rec*, %union.rec** %index, align 8
  %os11751 = bitcast %union.rec* %658 to %struct.word_type*
  %ou11752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11751, i32 0, i32 1
  %os111753 = bitcast %union.FIRST_UNION* %ou11752 to %struct.anon*
  %otype1754 = getelementptr inbounds %struct.anon, %struct.anon* %os111753, i32 0, i32 0
  %659 = load i8, i8* %otype1754, align 1
  %conv1755 = zext i8 %659 to i32
  %cmp1756 = icmp sle i32 %conv1755, 138
  br i1 %cmp1756, label %if.end.1759, label %if.then.1758

if.then.1758:                                     ; preds = %land.lhs.true.1750, %for.end.1742
  br label %for.end.1765

if.end.1759:                                      ; preds = %land.lhs.true.1750
  br label %for.inc.1760

for.inc.1760:                                     ; preds = %if.end.1759
  %660 = load %union.rec*, %union.rec** %link, align 8
  %os11761 = bitcast %union.rec* %660 to %struct.word_type*
  %olist1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11761, i32 0, i32 0
  %arrayidx1763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1762, i32 0, i64 0
  %opred1764 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1763, i32 0, i32 0
  %661 = load %union.rec*, %union.rec** %opred1764, align 8
  store %union.rec* %661, %union.rec** %link, align 8
  br label %for.cond.1715

for.end.1765:                                     ; preds = %if.then.1758, %for.cond.1715
  br label %while.cond.1766

while.cond.1766:                                  ; preds = %if.end.1927, %for.end.1765
  %662 = load %union.rec*, %union.rec** %link, align 8
  %os11767 = bitcast %union.rec* %662 to %struct.word_type*
  %olist1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11767, i32 0, i32 0
  %arrayidx1769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1768, i32 0, i64 0
  %osucc1770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1769, i32 0, i32 1
  %663 = load %union.rec*, %union.rec** %osucc1770, align 8
  %664 = load %union.rec*, %union.rec** %y.addr, align 8
  %os11771 = bitcast %union.rec* %664 to %struct.word_type*
  %olist1772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11771, i32 0, i32 0
  %arrayidx1773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1772, i32 0, i64 1
  %osucc1774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1773, i32 0, i32 1
  %665 = load %union.rec*, %union.rec** %osucc1774, align 8
  %cmp1775 = icmp ne %union.rec* %663, %665
  br i1 %cmp1775, label %while.body.1777, label %while.end.1928

while.body.1777:                                  ; preds = %while.cond.1766
  %666 = load %union.rec*, %union.rec** %link, align 8
  %os11778 = bitcast %union.rec* %666 to %struct.word_type*
  %olist1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11778, i32 0, i32 0
  %arrayidx1780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1779, i32 0, i64 0
  %osucc1781 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1780, i32 0, i32 1
  %667 = load %union.rec*, %union.rec** %osucc1781, align 8
  %os11782 = bitcast %union.rec* %667 to %struct.word_type*
  %olist1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11782, i32 0, i32 0
  %arrayidx1784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1783, i32 0, i64 1
  %opred1785 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1784, i32 0, i32 0
  %668 = load %union.rec*, %union.rec** %opred1785, align 8
  store %union.rec* %668, %union.rec** %index, align 8
  br label %for.cond.1786

for.cond.1786:                                    ; preds = %for.inc.1795, %while.body.1777
  %669 = load %union.rec*, %union.rec** %index, align 8
  %os11787 = bitcast %union.rec* %669 to %struct.word_type*
  %ou11788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11787, i32 0, i32 1
  %os111789 = bitcast %union.FIRST_UNION* %ou11788 to %struct.anon*
  %otype1790 = getelementptr inbounds %struct.anon, %struct.anon* %os111789, i32 0, i32 0
  %670 = load i8, i8* %otype1790, align 1
  %conv1791 = zext i8 %670 to i32
  %cmp1792 = icmp eq i32 %conv1791, 0
  br i1 %cmp1792, label %for.body.1794, label %for.end.1800

for.body.1794:                                    ; preds = %for.cond.1786
  br label %for.inc.1795

for.inc.1795:                                     ; preds = %for.body.1794
  %671 = load %union.rec*, %union.rec** %index, align 8
  %os11796 = bitcast %union.rec* %671 to %struct.word_type*
  %olist1797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11796, i32 0, i32 0
  %arrayidx1798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1797, i32 0, i64 1
  %opred1799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1798, i32 0, i32 0
  %672 = load %union.rec*, %union.rec** %opred1799, align 8
  store %union.rec* %672, %union.rec** %index, align 8
  br label %for.cond.1786

for.end.1800:                                     ; preds = %for.cond.1786
  %673 = load %union.rec*, %union.rec** %index, align 8
  %os11801 = bitcast %union.rec* %673 to %struct.word_type*
  %ou11802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11801, i32 0, i32 1
  %os111803 = bitcast %union.FIRST_UNION* %ou11802 to %struct.anon*
  %otype1804 = getelementptr inbounds %struct.anon, %struct.anon* %os111803, i32 0, i32 0
  %674 = load i8, i8* %otype1804, align 1
  %conv1805 = zext i8 %674 to i32
  %cmp1806 = icmp sge i32 %conv1805, 119
  br i1 %cmp1806, label %land.lhs.true.1808, label %if.then.1816

land.lhs.true.1808:                               ; preds = %for.end.1800
  %675 = load %union.rec*, %union.rec** %index, align 8
  %os11809 = bitcast %union.rec* %675 to %struct.word_type*
  %ou11810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11809, i32 0, i32 1
  %os111811 = bitcast %union.FIRST_UNION* %ou11810 to %struct.anon*
  %otype1812 = getelementptr inbounds %struct.anon, %struct.anon* %os111811, i32 0, i32 0
  %676 = load i8, i8* %otype1812, align 1
  %conv1813 = zext i8 %676 to i32
  %cmp1814 = icmp sle i32 %conv1813, 138
  br i1 %cmp1814, label %if.end.1818, label %if.then.1816

if.then.1816:                                     ; preds = %land.lhs.true.1808, %for.end.1800
  %677 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1817 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %677, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.1818

if.end.1818:                                      ; preds = %if.then.1816, %land.lhs.true.1808
  %678 = load %union.rec*, %union.rec** %index, align 8
  %call1819 = call %union.rec* @FindTarget(%union.rec* %678)
  store %union.rec* %call1819, %union.rec** %z, align 8
  %679 = load %union.rec*, %union.rec** %z, align 8
  %cmp1820 = icmp ne %union.rec* %679, null
  br i1 %cmp1820, label %if.then.1822, label %if.else.1922

if.then.1822:                                     ; preds = %if.end.1818
  %680 = load %union.rec*, %union.rec** %z, align 8
  %call1823 = call %union.rec* @WhichComponent(%union.rec* %680)
  store %union.rec* %call1823, %union.rec** %z, align 8
  %681 = load %union.rec*, %union.rec** %z, align 8
  %cmp1824 = icmp ne %union.rec* %681, null
  br i1 %cmp1824, label %land.lhs.true.1826, label %if.else.1916

land.lhs.true.1826:                               ; preds = %if.then.1822
  %682 = load %union.rec*, %union.rec** %z, align 8
  %683 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp1827 = icmp ne %union.rec* %682, %683
  br i1 %cmp1827, label %if.then.1829, label %if.else.1916

if.then.1829:                                     ; preds = %land.lhs.true.1826
  %684 = load %union.rec*, %union.rec** %link, align 8
  %os11830 = bitcast %union.rec* %684 to %struct.word_type*
  %olist1831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11830, i32 0, i32 0
  %arrayidx1832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1831, i32 0, i64 0
  %osucc1833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1832, i32 0, i32 1
  %685 = load %union.rec*, %union.rec** %osucc1833, align 8
  store %union.rec* %685, %union.rec** @xx_link, align 8
  %686 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %686, %union.rec** @zz_hold, align 8
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11834 = bitcast %union.rec* %687 to %struct.word_type*
  %olist1835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11834, i32 0, i32 0
  %arrayidx1836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1835, i32 0, i64 0
  %osucc1837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1836, i32 0, i32 1
  %688 = load %union.rec*, %union.rec** %osucc1837, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1838 = icmp eq %union.rec* %688, %689
  br i1 %cmp1838, label %cond.true.1840, label %cond.false.1841

cond.true.1840:                                   ; preds = %if.then.1829
  br label %cond.end.1870

cond.false.1841:                                  ; preds = %if.then.1829
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11842 = bitcast %union.rec* %690 to %struct.word_type*
  %olist1843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11842, i32 0, i32 0
  %arrayidx1844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1843, i32 0, i64 0
  %osucc1845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1844, i32 0, i32 1
  %691 = load %union.rec*, %union.rec** %osucc1845, align 8
  store %union.rec* %691, %union.rec** @zz_res, align 8
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11846 = bitcast %union.rec* %692 to %struct.word_type*
  %olist1847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11846, i32 0, i32 0
  %arrayidx1848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1847, i32 0, i64 0
  %opred1849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1848, i32 0, i32 0
  %693 = load %union.rec*, %union.rec** %opred1849, align 8
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11850 = bitcast %union.rec* %694 to %struct.word_type*
  %olist1851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11850, i32 0, i32 0
  %arrayidx1852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1851, i32 0, i64 0
  %opred1853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1852, i32 0, i32 0
  store %union.rec* %693, %union.rec** %opred1853, align 8
  %695 = load %union.rec*, %union.rec** @zz_res, align 8
  %696 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11854 = bitcast %union.rec* %696 to %struct.word_type*
  %olist1855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11854, i32 0, i32 0
  %arrayidx1856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1855, i32 0, i64 0
  %opred1857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1856, i32 0, i32 0
  %697 = load %union.rec*, %union.rec** %opred1857, align 8
  %os11858 = bitcast %union.rec* %697 to %struct.word_type*
  %olist1859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11858, i32 0, i32 0
  %arrayidx1860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1859, i32 0, i64 0
  %osucc1861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1860, i32 0, i32 1
  store %union.rec* %695, %union.rec** %osucc1861, align 8
  %698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11862 = bitcast %union.rec* %699 to %struct.word_type*
  %olist1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11862, i32 0, i32 0
  %arrayidx1864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1863, i32 0, i64 0
  %osucc1865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1864, i32 0, i32 1
  store %union.rec* %698, %union.rec** %osucc1865, align 8
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11866 = bitcast %union.rec* %700 to %struct.word_type*
  %olist1867 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11866, i32 0, i32 0
  %arrayidx1868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1867, i32 0, i64 0
  %opred1869 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1868, i32 0, i32 0
  store %union.rec* %698, %union.rec** %opred1869, align 8
  %701 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1870

cond.end.1870:                                    ; preds = %cond.false.1841, %cond.true.1840
  %cond1871 = phi %union.rec* [ null, %cond.true.1840 ], [ %701, %cond.false.1841 ]
  %702 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %702, %union.rec** @zz_res, align 8
  %703 = load %union.rec*, %union.rec** %z, align 8
  %os11872 = bitcast %union.rec* %703 to %struct.word_type*
  %olist1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11872, i32 0, i32 0
  %arrayidx1874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1873, i32 0, i64 1
  %osucc1875 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1874, i32 0, i32 1
  %704 = load %union.rec*, %union.rec** %osucc1875, align 8
  store %union.rec* %704, %union.rec** @zz_hold, align 8
  %705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1876 = icmp eq %union.rec* %705, null
  br i1 %cmp1876, label %cond.true.1878, label %cond.false.1879

cond.true.1878:                                   ; preds = %cond.end.1870
  %706 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1914

cond.false.1879:                                  ; preds = %cond.end.1870
  %707 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1880 = icmp eq %union.rec* %707, null
  br i1 %cmp1880, label %cond.true.1882, label %cond.false.1883

cond.true.1882:                                   ; preds = %cond.false.1879
  %708 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1912

cond.false.1883:                                  ; preds = %cond.false.1879
  %709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11884 = bitcast %union.rec* %709 to %struct.word_type*
  %olist1885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11884, i32 0, i32 0
  %arrayidx1886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1885, i32 0, i64 0
  %opred1887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1886, i32 0, i32 0
  %710 = load %union.rec*, %union.rec** %opred1887, align 8
  store %union.rec* %710, %union.rec** @zz_tmp, align 8
  %711 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11888 = bitcast %union.rec* %711 to %struct.word_type*
  %olist1889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11888, i32 0, i32 0
  %arrayidx1890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1889, i32 0, i64 0
  %opred1891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1890, i32 0, i32 0
  %712 = load %union.rec*, %union.rec** %opred1891, align 8
  %713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11892 = bitcast %union.rec* %713 to %struct.word_type*
  %olist1893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11892, i32 0, i32 0
  %arrayidx1894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1893, i32 0, i64 0
  %opred1895 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1894, i32 0, i32 0
  store %union.rec* %712, %union.rec** %opred1895, align 8
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %715 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11896 = bitcast %union.rec* %715 to %struct.word_type*
  %olist1897 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11896, i32 0, i32 0
  %arrayidx1898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1897, i32 0, i64 0
  %opred1899 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1898, i32 0, i32 0
  %716 = load %union.rec*, %union.rec** %opred1899, align 8
  %os11900 = bitcast %union.rec* %716 to %struct.word_type*
  %olist1901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11900, i32 0, i32 0
  %arrayidx1902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1901, i32 0, i64 0
  %osucc1903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1902, i32 0, i32 1
  store %union.rec* %714, %union.rec** %osucc1903, align 8
  %717 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %718 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11904 = bitcast %union.rec* %718 to %struct.word_type*
  %olist1905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11904, i32 0, i32 0
  %arrayidx1906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1905, i32 0, i64 0
  %opred1907 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1906, i32 0, i32 0
  store %union.rec* %717, %union.rec** %opred1907, align 8
  %719 = load %union.rec*, %union.rec** @zz_res, align 8
  %720 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11908 = bitcast %union.rec* %720 to %struct.word_type*
  %olist1909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11908, i32 0, i32 0
  %arrayidx1910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1909, i32 0, i64 0
  %osucc1911 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1910, i32 0, i32 1
  store %union.rec* %719, %union.rec** %osucc1911, align 8
  br label %cond.end.1912

cond.end.1912:                                    ; preds = %cond.false.1883, %cond.true.1882
  %cond1913 = phi %union.rec* [ %708, %cond.true.1882 ], [ %719, %cond.false.1883 ]
  br label %cond.end.1914

cond.end.1914:                                    ; preds = %cond.end.1912, %cond.true.1878
  %cond1915 = phi %union.rec* [ %706, %cond.true.1878 ], [ %cond1913, %cond.end.1912 ]
  br label %if.end.1921

if.else.1916:                                     ; preds = %land.lhs.true.1826, %if.then.1822
  %721 = load %union.rec*, %union.rec** %link, align 8
  %os11917 = bitcast %union.rec* %721 to %struct.word_type*
  %olist1918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11917, i32 0, i32 0
  %arrayidx1919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1918, i32 0, i64 0
  %osucc1920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1919, i32 0, i32 1
  %722 = load %union.rec*, %union.rec** %osucc1920, align 8
  store %union.rec* %722, %union.rec** %link, align 8
  br label %if.end.1921

if.end.1921:                                      ; preds = %if.else.1916, %cond.end.1914
  br label %if.end.1927

if.else.1922:                                     ; preds = %if.end.1818
  %723 = load %union.rec*, %union.rec** %link, align 8
  %os11923 = bitcast %union.rec* %723 to %struct.word_type*
  %olist1924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11923, i32 0, i32 0
  %arrayidx1925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1924, i32 0, i64 0
  %osucc1926 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1925, i32 0, i32 1
  %724 = load %union.rec*, %union.rec** %osucc1926, align 8
  store %union.rec* %724, %union.rec** %link, align 8
  br label %if.end.1927

if.end.1927:                                      ; preds = %if.else.1922, %if.end.1921
  br label %while.cond.1766

while.end.1928:                                   ; preds = %while.cond.1766
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.1928, %if.then.1498, %if.then.1446, %if.then.1396, %if.then.623, %if.then.202, %if.then.190, %if.then.168, %if.then.141, %if.then.133, %if.then.78, %if.then.29
  %725 = load i32, i32* %retval
  ret i32 %725
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i32 @SplitIsDefinite(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @EncloseInHcat(%union.rec* %nxt, %union.rec* %y, %union.rec* %replace) #0 {
entry:
  %nxt.addr = alloca %union.rec*, align 8
  %y.addr = alloca %union.rec*, align 8
  %replace.addr = alloca %union.rec*, align 8
  %new_y = alloca %union.rec*, align 8
  %new_row_thread = alloca %union.rec*, align 8
  %s1 = alloca %union.rec*, align 8
  %new_s1 = alloca %union.rec*, align 8
  %s2 = alloca %union.rec*, align 8
  %new_s2 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %sh = alloca %union.rec*, align 8
  %new_sh = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %nxt, %union.rec** %nxt.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store %union.rec* %replace, %union.rec** %replace.addr, align 8
  %0 = load %union.rec*, %union.rec** %nxt.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %2 = load %union.rec*, %union.rec** %nxt.addr, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 18), align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp2 = icmp uge i64 %conv1, 265
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %5)
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %7 = load %union.rec*, %union.rec** %arrayidx6, align 8
  %cmp7 = icmp eq %union.rec* %7, null
  br i1 %cmp7, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %8 = load i32, i32* @zz_size, align 4
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call10 = call %union.rec* @GetMemory(i32 %8, %struct.FILE_POS* %9)
  store %union.rec* %call10, %union.rec** @zz_hold, align 8
  br label %if.end.19

if.else.11:                                       ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom12
  %11 = load %union.rec*, %union.rec** %arrayidx13, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %12 to %struct.word_type*
  %olist15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist15, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  %14 = load i32, i32* @zz_size, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom17
  store %union.rec* %13, %union.rec** %arrayidx18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.11, %if.then.9
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.4
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os121 = bitcast %union.rec* %15 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 18, i8* %otype, align 1
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %17 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %16, %union.rec** %osucc25, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %18 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %16, %union.rec** %opred29, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %19 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 0
  %osucc33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 1
  store %union.rec* %16, %union.rec** %osucc33, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os134 = bitcast %union.rec* %20 to %struct.word_type*
  %olist35 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist35, i32 0, i64 0
  %opred37 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx36, i32 0, i32 0
  store %union.rec* %16, %union.rec** %opred37, align 8
  store %union.rec* %16, %union.rec** %new_y, align 8
  %21 = load %union.rec*, %union.rec** %new_y, align 8
  %os138 = bitcast %union.rec* %21 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %oadjust_cat = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %oadjust_cat, align 2
  %bf.clear = and i16 %bf.load, -2049
  store i16 %bf.clear, i16* %oadjust_cat, align 2
  %22 = load %union.rec*, %union.rec** %nxt.addr, align 8
  %os139 = bitcast %union.rec* %22 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 1
  %osucc42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %osucc42, align 8
  store %union.rec* %23, %union.rec** @xx_link, align 8
  %24 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os143 = bitcast %union.rec* %25 to %struct.word_type*
  %olist44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist44, i32 0, i64 1
  %osucc46 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc46, align 8
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp47 = icmp eq %union.rec* %26, %27
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os149 = bitcast %union.rec* %28 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %osucc52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %osucc52, align 8
  store %union.rec* %29, %union.rec** @zz_res, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os153 = bitcast %union.rec* %30 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 1
  %opred56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred56, align 8
  %32 = load %union.rec*, %union.rec** @zz_res, align 8
  %os157 = bitcast %union.rec* %32 to %struct.word_type*
  %olist58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist58, i32 0, i64 1
  %opred60 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx59, i32 0, i32 0
  store %union.rec* %31, %union.rec** %opred60, align 8
  %33 = load %union.rec*, %union.rec** @zz_res, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os161 = bitcast %union.rec* %34 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 1
  %opred64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred64, align 8
  %os165 = bitcast %union.rec* %35 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  store %union.rec* %33, %union.rec** %osucc68, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os169 = bitcast %union.rec* %37 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 1
  %osucc72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 1
  store %union.rec* %36, %union.rec** %osucc72, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os173 = bitcast %union.rec* %38 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 1
  %opred76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 0
  store %union.rec* %36, %union.rec** %opred76, align 8
  %39 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %39, %cond.false ]
  %40 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %40, %union.rec** @zz_res, align 8
  %41 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %41, %union.rec** @zz_hold, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp77 = icmp eq %union.rec* %42, null
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.end
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.115

cond.false.80:                                    ; preds = %cond.end
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp81 = icmp eq %union.rec* %44, null
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.false.80
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.113

cond.false.84:                                    ; preds = %cond.false.80
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %46 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %opred88, align 8
  store %union.rec* %47, %union.rec** @zz_tmp, align 8
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  %os189 = bitcast %union.rec* %48 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 1
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred92, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os193 = bitcast %union.rec* %50 to %struct.word_type*
  %olist94 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist94, i32 0, i64 1
  %opred96 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx95, i32 0, i32 0
  store %union.rec* %49, %union.rec** %opred96, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  %os197 = bitcast %union.rec* %52 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 1
  %opred100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %opred100, align 8
  %os1101 = bitcast %union.rec* %53 to %struct.word_type*
  %olist102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist102, i32 0, i64 1
  %osucc104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx103, i32 0, i32 1
  store %union.rec* %51, %union.rec** %osucc104, align 8
  %54 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1105 = bitcast %union.rec* %55 to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 1
  %opred108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 0
  store %union.rec* %54, %union.rec** %opred108, align 8
  %56 = load %union.rec*, %union.rec** @zz_res, align 8
  %57 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1109 = bitcast %union.rec* %57 to %struct.word_type*
  %olist110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist110, i32 0, i64 1
  %osucc112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx111, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc112, align 8
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.84, %cond.true.83
  %cond114 = phi %union.rec* [ %45, %cond.true.83 ], [ %56, %cond.false.84 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.79
  %cond116 = phi %union.rec* [ %43, %cond.true.79 ], [ %cond114, %cond.end.113 ]
  %58 = load %union.rec*, %union.rec** %nxt.addr, align 8
  %os1117 = bitcast %union.rec* %58 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 1
  %osucc120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %osucc120, align 8
  %60 = load %union.rec*, %union.rec** %nxt.addr, align 8
  %cmp121 = icmp eq %union.rec* %59, %60
  br i1 %cmp121, label %if.end.125, label %if.then.123

if.then.123:                                      ; preds = %cond.end.115
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call124 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %cond.end.115
  %62 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1126 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1127 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %63 = load i16, i16* %ofile_num, align 2
  %64 = load %union.rec*, %union.rec** %new_y, align 8
  %os1128 = bitcast %union.rec* %64 to %struct.word_type*
  %ou1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 1
  %ofpos130 = bitcast %union.FIRST_UNION* %ou1129 to %struct.FILE_POS*
  %ofile_num131 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos130, i32 0, i32 2
  store i16 %63, i16* %ofile_num131, align 2
  %65 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1132 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 1
  %ofpos134 = bitcast %union.FIRST_UNION* %ou1133 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos134, i32 0, i32 3
  %bf.load135 = load i32, i32* %oline_num, align 4
  %bf.clear136 = and i32 %bf.load135, 1048575
  %66 = load %union.rec*, %union.rec** %new_y, align 8
  %os1137 = bitcast %union.rec* %66 to %struct.word_type*
  %ou1138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 1
  %ofpos139 = bitcast %union.FIRST_UNION* %ou1138 to %struct.FILE_POS*
  %oline_num140 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos139, i32 0, i32 3
  %bf.load141 = load i32, i32* %oline_num140, align 4
  %bf.value = and i32 %bf.clear136, 1048575
  %bf.clear142 = and i32 %bf.load141, -1048576
  %bf.set = or i32 %bf.clear142, %bf.value
  store i32 %bf.set, i32* %oline_num140, align 4
  %67 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1143 = bitcast %union.rec* %67 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %ofpos145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos145, i32 0, i32 3
  %bf.load146 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load146, 20
  %68 = load %union.rec*, %union.rec** %new_y, align 8
  %os1147 = bitcast %union.rec* %68 to %struct.word_type*
  %ou1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 1
  %ofpos149 = bitcast %union.FIRST_UNION* %ou1148 to %struct.FILE_POS*
  %ocol_num150 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos149, i32 0, i32 3
  %bf.load151 = load i32, i32* %ocol_num150, align 4
  %bf.value152 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value152, 20
  %bf.clear153 = and i32 %bf.load151, 1048575
  %bf.set154 = or i32 %bf.clear153, %bf.shl
  store i32 %bf.set154, i32* %ocol_num150, align 4
  %69 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1155 = bitcast %union.rec* %69 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %70 = load i32, i32* %arrayidx156, align 4
  %71 = load %union.rec*, %union.rec** %new_y, align 8
  %os1157 = bitcast %union.rec* %71 to %struct.word_type*
  %ou3158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 3
  %os31159 = bitcast %union.THIRD_UNION* %ou3158 to %struct.anon.6*
  %oback160 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x i32], [2 x i32]* %oback160, i32 0, i64 0
  store i32 %70, i32* %arrayidx161, align 4
  %72 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1162 = bitcast %union.rec* %72 to %struct.word_type*
  %ou3163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 3
  %os31164 = bitcast %union.THIRD_UNION* %ou3163 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31164, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %73 = load i32, i32* %arrayidx165, align 4
  %74 = load %union.rec*, %union.rec** %new_y, align 8
  %os1166 = bitcast %union.rec* %74 to %struct.word_type*
  %ou3167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 3
  %os31168 = bitcast %union.THIRD_UNION* %ou3167 to %struct.anon.6*
  %ofwd169 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31168, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd169, i32 0, i64 0
  store i32 %73, i32* %arrayidx170, align 4
  %75 = load %union.rec*, %union.rec** %nxt.addr, align 8
  %os1171 = bitcast %union.rec* %75 to %struct.word_type*
  %ou3172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 3
  %os31173 = bitcast %union.THIRD_UNION* %ou3172 to %struct.anon.6*
  %oback174 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x i32], [2 x i32]* %oback174, i32 0, i64 1
  %76 = load i32, i32* %arrayidx175, align 4
  %77 = load %union.rec*, %union.rec** %new_y, align 8
  %os1176 = bitcast %union.rec* %77 to %struct.word_type*
  %ou3177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 3
  %os31178 = bitcast %union.THIRD_UNION* %ou3177 to %struct.anon.6*
  %oback179 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x i32], [2 x i32]* %oback179, i32 0, i64 1
  store i32 %76, i32* %arrayidx180, align 4
  %78 = load %union.rec*, %union.rec** %nxt.addr, align 8
  %os1181 = bitcast %union.rec* %78 to %struct.word_type*
  %ou3182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 3
  %os31183 = bitcast %union.THIRD_UNION* %ou3182 to %struct.anon.6*
  %ofwd184 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31183, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd184, i32 0, i64 1
  %79 = load i32, i32* %arrayidx185, align 4
  %80 = load %union.rec*, %union.rec** %new_y, align 8
  %os1186 = bitcast %union.rec* %80 to %struct.word_type*
  %ou3187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 3
  %os31188 = bitcast %union.THIRD_UNION* %ou3187 to %struct.anon.6*
  %ofwd189 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31188, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd189, i32 0, i64 1
  store i32 %79, i32* %arrayidx190, align 4
  %81 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 15), align 1
  %conv191 = zext i8 %81 to i32
  store i32 %conv191, i32* @zz_size, align 4
  %conv192 = sext i32 %conv191 to i64
  %cmp193 = icmp uge i64 %conv192, 265
  br i1 %cmp193, label %if.then.195, label %if.else.197

if.then.195:                                      ; preds = %if.end.125
  %82 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call196 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %82)
  br label %if.end.214

if.else.197:                                      ; preds = %if.end.125
  %83 = load i32, i32* @zz_size, align 4
  %idxprom198 = sext i32 %83 to i64
  %arrayidx199 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom198
  %84 = load %union.rec*, %union.rec** %arrayidx199, align 8
  %cmp200 = icmp eq %union.rec* %84, null
  br i1 %cmp200, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %if.else.197
  %85 = load i32, i32* @zz_size, align 4
  %86 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call203 = call %union.rec* @GetMemory(i32 %85, %struct.FILE_POS* %86)
  store %union.rec* %call203, %union.rec** @zz_hold, align 8
  br label %if.end.213

if.else.204:                                      ; preds = %if.else.197
  %87 = load i32, i32* @zz_size, align 4
  %idxprom205 = sext i32 %87 to i64
  %arrayidx206 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom205
  %88 = load %union.rec*, %union.rec** %arrayidx206, align 8
  store %union.rec* %88, %union.rec** @zz_hold, align 8
  store %union.rec* %88, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1207 = bitcast %union.rec* %89 to %struct.word_type*
  %olist208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist208, i32 0, i64 0
  %opred210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx209, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %opred210, align 8
  %91 = load i32, i32* @zz_size, align 4
  %idxprom211 = sext i32 %91 to i64
  %arrayidx212 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom211
  store %union.rec* %90, %union.rec** %arrayidx212, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.else.204, %if.then.202
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.195
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1215 = bitcast %union.rec* %92 to %struct.word_type*
  %ou1216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 1
  %os11217 = bitcast %union.FIRST_UNION* %ou1216 to %struct.anon*
  %otype218 = getelementptr inbounds %struct.anon, %struct.anon* %os11217, i32 0, i32 0
  store i8 15, i8* %otype218, align 1
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1219 = bitcast %union.rec* %94 to %struct.word_type*
  %olist220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1219, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist220, i32 0, i64 1
  %osucc222 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx221, i32 0, i32 1
  store %union.rec* %93, %union.rec** %osucc222, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1223 = bitcast %union.rec* %95 to %struct.word_type*
  %olist224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist224, i32 0, i64 1
  %opred226 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx225, i32 0, i32 0
  store %union.rec* %93, %union.rec** %opred226, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1227 = bitcast %union.rec* %96 to %struct.word_type*
  %olist228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1227, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist228, i32 0, i64 0
  %osucc230 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx229, i32 0, i32 1
  store %union.rec* %93, %union.rec** %osucc230, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1231 = bitcast %union.rec* %97 to %struct.word_type*
  %olist232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1231, i32 0, i32 0
  %arrayidx233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist232, i32 0, i64 0
  %opred234 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx233, i32 0, i32 0
  store %union.rec* %93, %union.rec** %opred234, align 8
  store %union.rec* %93, %union.rec** %new_row_thread, align 8
  %98 = load %union.rec*, %union.rec** %new_y, align 8
  %os1235 = bitcast %union.rec* %98 to %struct.word_type*
  %ou3236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1235, i32 0, i32 3
  %os31237 = bitcast %union.THIRD_UNION* %ou3236 to %struct.anon.6*
  %oback238 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31237, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [2 x i32], [2 x i32]* %oback238, i32 0, i64 1
  %99 = load i32, i32* %arrayidx239, align 4
  %100 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %os1240 = bitcast %union.rec* %100 to %struct.word_type*
  %ou3241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 3
  %os31242 = bitcast %union.THIRD_UNION* %ou3241 to %struct.anon.6*
  %oback243 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x i32], [2 x i32]* %oback243, i32 0, i64 1
  store i32 %99, i32* %arrayidx244, align 4
  %101 = load %union.rec*, %union.rec** %new_y, align 8
  %os1245 = bitcast %union.rec* %101 to %struct.word_type*
  %ou3246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 3
  %os31247 = bitcast %union.THIRD_UNION* %ou3246 to %struct.anon.6*
  %ofwd248 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31247, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd248, i32 0, i64 1
  %102 = load i32, i32* %arrayidx249, align 4
  %103 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %os1250 = bitcast %union.rec* %103 to %struct.word_type*
  %ou3251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 3
  %os31252 = bitcast %union.THIRD_UNION* %ou3251 to %struct.anon.6*
  %ofwd253 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31252, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd253, i32 0, i64 1
  store i32 %102, i32* %arrayidx254, align 4
  %104 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %os1255 = bitcast %union.rec* %104 to %struct.word_type*
  %ou2256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1255, i32 0, i32 2
  %os23257 = bitcast %union.SECOND_UNION* %ou2256 to %struct.anon.2*
  %ocross_type = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23257, i32 0, i32 1
  store i8 1, i8* %ocross_type, align 1
  %105 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1258 = bitcast %union.rec* %105 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 0
  %osucc261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 1
  %106 = load %union.rec*, %union.rec** %osucc261, align 8
  store %union.rec* %106, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1934, %if.end.214
  %107 = load %union.rec*, %union.rec** %link, align 8
  %108 = load %union.rec*, %union.rec** %y.addr, align 8
  %cmp262 = icmp ne %union.rec* %107, %108
  br i1 %cmp262, label %for.body, label %for.end.1939

for.body:                                         ; preds = %for.cond
  %109 = load %union.rec*, %union.rec** %link, align 8
  %os1264 = bitcast %union.rec* %109 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 1
  %opred267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %opred267, align 8
  store %union.rec* %110, %union.rec** %s1, align 8
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc, %for.body
  %111 = load %union.rec*, %union.rec** %s1, align 8
  %os1269 = bitcast %union.rec* %111 to %struct.word_type*
  %ou1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 1
  %os11271 = bitcast %union.FIRST_UNION* %ou1270 to %struct.anon*
  %otype272 = getelementptr inbounds %struct.anon, %struct.anon* %os11271, i32 0, i32 0
  %112 = load i8, i8* %otype272, align 1
  %conv273 = zext i8 %112 to i32
  %cmp274 = icmp eq i32 %conv273, 0
  br i1 %cmp274, label %for.body.276, label %for.end

for.body.276:                                     ; preds = %for.cond.268
  br label %for.inc

for.inc:                                          ; preds = %for.body.276
  %113 = load %union.rec*, %union.rec** %s1, align 8
  %os1277 = bitcast %union.rec* %113 to %struct.word_type*
  %olist278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist278, i32 0, i64 1
  %opred280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx279, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred280, align 8
  store %union.rec* %114, %union.rec** %s1, align 8
  br label %for.cond.268

for.end:                                          ; preds = %for.cond.268
  %115 = load %union.rec*, %union.rec** %s1, align 8
  %os1281 = bitcast %union.rec* %115 to %struct.word_type*
  %ou1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 1
  %os11283 = bitcast %union.FIRST_UNION* %ou1282 to %struct.anon*
  %otype284 = getelementptr inbounds %struct.anon, %struct.anon* %os11283, i32 0, i32 0
  %116 = load i8, i8* %otype284, align 1
  %conv285 = zext i8 %116 to i32
  %cmp286 = icmp eq i32 %conv285, 1
  br i1 %cmp286, label %if.then.288, label %if.end.577

if.then.288:                                      ; preds = %for.end
  %117 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv289 = zext i8 %117 to i32
  store i32 %conv289, i32* @zz_size, align 4
  %conv290 = sext i32 %conv289 to i64
  %cmp291 = icmp uge i64 %conv290, 265
  br i1 %cmp291, label %if.then.293, label %if.else.295

if.then.293:                                      ; preds = %if.then.288
  %118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call294 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %118)
  br label %if.end.312

if.else.295:                                      ; preds = %if.then.288
  %119 = load i32, i32* @zz_size, align 4
  %idxprom296 = sext i32 %119 to i64
  %arrayidx297 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom296
  %120 = load %union.rec*, %union.rec** %arrayidx297, align 8
  %cmp298 = icmp eq %union.rec* %120, null
  br i1 %cmp298, label %if.then.300, label %if.else.302

if.then.300:                                      ; preds = %if.else.295
  %121 = load i32, i32* @zz_size, align 4
  %122 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call301 = call %union.rec* @GetMemory(i32 %121, %struct.FILE_POS* %122)
  store %union.rec* %call301, %union.rec** @zz_hold, align 8
  br label %if.end.311

if.else.302:                                      ; preds = %if.else.295
  %123 = load i32, i32* @zz_size, align 4
  %idxprom303 = sext i32 %123 to i64
  %arrayidx304 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom303
  %124 = load %union.rec*, %union.rec** %arrayidx304, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1305 = bitcast %union.rec* %125 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 0
  %opred308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %opred308, align 8
  %127 = load i32, i32* @zz_size, align 4
  %idxprom309 = sext i32 %127 to i64
  %arrayidx310 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom309
  store %union.rec* %126, %union.rec** %arrayidx310, align 8
  br label %if.end.311

if.end.311:                                       ; preds = %if.else.302, %if.then.300
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.then.293
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1313 = bitcast %union.rec* %128 to %struct.word_type*
  %ou1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 1
  %os11315 = bitcast %union.FIRST_UNION* %ou1314 to %struct.anon*
  %otype316 = getelementptr inbounds %struct.anon, %struct.anon* %os11315, i32 0, i32 0
  store i8 1, i8* %otype316, align 1
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1317 = bitcast %union.rec* %130 to %struct.word_type*
  %olist318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist318, i32 0, i64 1
  %osucc320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx319, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc320, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1321 = bitcast %union.rec* %131 to %struct.word_type*
  %olist322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist322, i32 0, i64 1
  %opred324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx323, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred324, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1325 = bitcast %union.rec* %132 to %struct.word_type*
  %olist326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1325, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist326, i32 0, i64 0
  %osucc328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx327, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc328, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1329 = bitcast %union.rec* %133 to %struct.word_type*
  %olist330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1329, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist330, i32 0, i64 0
  %opred332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx331, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred332, align 8
  store %union.rec* %129, %union.rec** %new_s1, align 8
  %134 = load %union.rec*, %union.rec** %s1, align 8
  %os1333 = bitcast %union.rec* %134 to %struct.word_type*
  %ou1334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1333, i32 0, i32 1
  %ofpos335 = bitcast %union.FIRST_UNION* %ou1334 to %struct.FILE_POS*
  %ofile_num336 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos335, i32 0, i32 2
  %135 = load i16, i16* %ofile_num336, align 2
  %136 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1337 = bitcast %union.rec* %136 to %struct.word_type*
  %ou1338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1337, i32 0, i32 1
  %ofpos339 = bitcast %union.FIRST_UNION* %ou1338 to %struct.FILE_POS*
  %ofile_num340 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos339, i32 0, i32 2
  store i16 %135, i16* %ofile_num340, align 2
  %137 = load %union.rec*, %union.rec** %s1, align 8
  %os1341 = bitcast %union.rec* %137 to %struct.word_type*
  %ou1342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1341, i32 0, i32 1
  %ofpos343 = bitcast %union.FIRST_UNION* %ou1342 to %struct.FILE_POS*
  %oline_num344 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos343, i32 0, i32 3
  %bf.load345 = load i32, i32* %oline_num344, align 4
  %bf.clear346 = and i32 %bf.load345, 1048575
  %138 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1347 = bitcast %union.rec* %138 to %struct.word_type*
  %ou1348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1347, i32 0, i32 1
  %ofpos349 = bitcast %union.FIRST_UNION* %ou1348 to %struct.FILE_POS*
  %oline_num350 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos349, i32 0, i32 3
  %bf.load351 = load i32, i32* %oline_num350, align 4
  %bf.value352 = and i32 %bf.clear346, 1048575
  %bf.clear353 = and i32 %bf.load351, -1048576
  %bf.set354 = or i32 %bf.clear353, %bf.value352
  store i32 %bf.set354, i32* %oline_num350, align 4
  %139 = load %union.rec*, %union.rec** %s1, align 8
  %os1355 = bitcast %union.rec* %139 to %struct.word_type*
  %ou1356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1355, i32 0, i32 1
  %ofpos357 = bitcast %union.FIRST_UNION* %ou1356 to %struct.FILE_POS*
  %ocol_num358 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos357, i32 0, i32 3
  %bf.load359 = load i32, i32* %ocol_num358, align 4
  %bf.lshr360 = lshr i32 %bf.load359, 20
  %140 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1361 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 1
  %ofpos363 = bitcast %union.FIRST_UNION* %ou1362 to %struct.FILE_POS*
  %ocol_num364 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos363, i32 0, i32 3
  %bf.load365 = load i32, i32* %ocol_num364, align 4
  %bf.value366 = and i32 %bf.lshr360, 4095
  %bf.shl367 = shl i32 %bf.value366, 20
  %bf.clear368 = and i32 %bf.load365, 1048575
  %bf.set369 = or i32 %bf.clear368, %bf.shl367
  store i32 %bf.set369, i32* %ocol_num364, align 4
  %141 = load %union.rec*, %union.rec** %s1, align 8
  %os5 = bitcast %union.rec* %141 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %142 = bitcast %struct.GAP* %ogap to i16*
  %bf.load370 = load i16, i16* %142, align 4
  %bf.lshr371 = lshr i16 %bf.load370, 7
  %bf.clear372 = and i16 %bf.lshr371, 1
  %bf.cast = zext i16 %bf.clear372 to i32
  %143 = load %union.rec*, %union.rec** %new_s1, align 8
  %os5373 = bitcast %union.rec* %143 to %struct.gapobj_type*
  %ogap374 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5373, i32 0, i32 3
  %144 = bitcast %struct.GAP* %ogap374 to i16*
  %145 = trunc i32 %bf.cast to i16
  %bf.load375 = load i16, i16* %144, align 4
  %bf.value376 = and i16 %145, 1
  %bf.shl377 = shl i16 %bf.value376, 7
  %bf.clear378 = and i16 %bf.load375, -129
  %bf.set379 = or i16 %bf.clear378, %bf.shl377
  store i16 %bf.set379, i16* %144, align 4
  %bf.result.cast = zext i16 %bf.value376 to i32
  %146 = load %union.rec*, %union.rec** %s1, align 8
  %os5380 = bitcast %union.rec* %146 to %struct.gapobj_type*
  %ogap381 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5380, i32 0, i32 3
  %147 = bitcast %struct.GAP* %ogap381 to i16*
  %bf.load382 = load i16, i16* %147, align 4
  %bf.lshr383 = lshr i16 %bf.load382, 8
  %bf.clear384 = and i16 %bf.lshr383, 1
  %bf.cast385 = zext i16 %bf.clear384 to i32
  %148 = load %union.rec*, %union.rec** %new_s1, align 8
  %os5386 = bitcast %union.rec* %148 to %struct.gapobj_type*
  %ogap387 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5386, i32 0, i32 3
  %149 = bitcast %struct.GAP* %ogap387 to i16*
  %150 = trunc i32 %bf.cast385 to i16
  %bf.load388 = load i16, i16* %149, align 4
  %bf.value389 = and i16 %150, 1
  %bf.shl390 = shl i16 %bf.value389, 8
  %bf.clear391 = and i16 %bf.load388, -257
  %bf.set392 = or i16 %bf.clear391, %bf.shl390
  store i16 %bf.set392, i16* %149, align 4
  %bf.result.cast393 = zext i16 %bf.value389 to i32
  %151 = load %union.rec*, %union.rec** %s1, align 8
  %os5394 = bitcast %union.rec* %151 to %struct.gapobj_type*
  %ogap395 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5394, i32 0, i32 3
  %152 = bitcast %struct.GAP* %ogap395 to i16*
  %bf.load396 = load i16, i16* %152, align 4
  %bf.lshr397 = lshr i16 %bf.load396, 9
  %bf.clear398 = and i16 %bf.lshr397, 1
  %bf.cast399 = zext i16 %bf.clear398 to i32
  %153 = load %union.rec*, %union.rec** %new_s1, align 8
  %os5400 = bitcast %union.rec* %153 to %struct.gapobj_type*
  %ogap401 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5400, i32 0, i32 3
  %154 = bitcast %struct.GAP* %ogap401 to i16*
  %155 = trunc i32 %bf.cast399 to i16
  %bf.load402 = load i16, i16* %154, align 4
  %bf.value403 = and i16 %155, 1
  %bf.shl404 = shl i16 %bf.value403, 9
  %bf.clear405 = and i16 %bf.load402, -513
  %bf.set406 = or i16 %bf.clear405, %bf.shl404
  store i16 %bf.set406, i16* %154, align 4
  %bf.result.cast407 = zext i16 %bf.value403 to i32
  %156 = load %union.rec*, %union.rec** %s1, align 8
  %os5408 = bitcast %union.rec* %156 to %struct.gapobj_type*
  %ogap409 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5408, i32 0, i32 3
  %157 = bitcast %struct.GAP* %ogap409 to i16*
  %bf.load410 = load i16, i16* %157, align 4
  %bf.lshr411 = lshr i16 %bf.load410, 10
  %bf.clear412 = and i16 %bf.lshr411, 7
  %bf.cast413 = zext i16 %bf.clear412 to i32
  %158 = load %union.rec*, %union.rec** %new_s1, align 8
  %os5414 = bitcast %union.rec* %158 to %struct.gapobj_type*
  %ogap415 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5414, i32 0, i32 3
  %159 = bitcast %struct.GAP* %ogap415 to i16*
  %160 = trunc i32 %bf.cast413 to i16
  %bf.load416 = load i16, i16* %159, align 4
  %bf.value417 = and i16 %160, 7
  %bf.shl418 = shl i16 %bf.value417, 10
  %bf.clear419 = and i16 %bf.load416, -7169
  %bf.set420 = or i16 %bf.clear419, %bf.shl418
  store i16 %bf.set420, i16* %159, align 4
  %bf.result.cast421 = zext i16 %bf.value417 to i32
  %161 = load %union.rec*, %union.rec** %s1, align 8
  %os5422 = bitcast %union.rec* %161 to %struct.gapobj_type*
  %ogap423 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5422, i32 0, i32 3
  %162 = bitcast %struct.GAP* %ogap423 to i16*
  %bf.load424 = load i16, i16* %162, align 4
  %bf.lshr425 = lshr i16 %bf.load424, 13
  %bf.cast426 = zext i16 %bf.lshr425 to i32
  %163 = load %union.rec*, %union.rec** %new_s1, align 8
  %os5427 = bitcast %union.rec* %163 to %struct.gapobj_type*
  %ogap428 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5427, i32 0, i32 3
  %164 = bitcast %struct.GAP* %ogap428 to i16*
  %165 = trunc i32 %bf.cast426 to i16
  %bf.load429 = load i16, i16* %164, align 4
  %bf.value430 = and i16 %165, 7
  %bf.shl431 = shl i16 %bf.value430, 13
  %bf.clear432 = and i16 %bf.load429, 8191
  %bf.set433 = or i16 %bf.clear432, %bf.shl431
  store i16 %bf.set433, i16* %164, align 4
  %bf.result.cast434 = zext i16 %bf.value430 to i32
  %166 = load %union.rec*, %union.rec** %s1, align 8
  %os5435 = bitcast %union.rec* %166 to %struct.gapobj_type*
  %ogap436 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5435, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap436, i32 0, i32 1
  %167 = load i16, i16* %owidth, align 2
  %168 = load %union.rec*, %union.rec** %new_s1, align 8
  %os5437 = bitcast %union.rec* %168 to %struct.gapobj_type*
  %ogap438 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5437, i32 0, i32 3
  %owidth439 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap438, i32 0, i32 1
  store i16 %167, i16* %owidth439, align 2
  %169 = load %union.rec*, %union.rec** %s1, align 8
  %os1440 = bitcast %union.rec* %169 to %struct.word_type*
  %ou2441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2441 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 1
  %170 = load i8, i8* %ohspace, align 1
  %171 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1442 = bitcast %union.rec* %171 to %struct.word_type*
  %ou2443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1442, i32 0, i32 2
  %os21444 = bitcast %union.SECOND_UNION* %ou2443 to %struct.anon.0*
  %ohspace445 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21444, i32 0, i32 1
  store i8 %170, i8* %ohspace445, align 1
  %172 = load %union.rec*, %union.rec** %s1, align 8
  %os1446 = bitcast %union.rec* %172 to %struct.word_type*
  %ou2447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1446, i32 0, i32 2
  %os21448 = bitcast %union.SECOND_UNION* %ou2447 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21448, i32 0, i32 2
  %173 = load i8, i8* %ovspace, align 1
  %174 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1449 = bitcast %union.rec* %174 to %struct.word_type*
  %ou2450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 2
  %os21451 = bitcast %union.SECOND_UNION* %ou2450 to %struct.anon.0*
  %ovspace452 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21451, i32 0, i32 2
  store i8 %173, i8* %ovspace452, align 1
  %175 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv453 = zext i8 %175 to i32
  store i32 %conv453, i32* @zz_size, align 4
  %conv454 = sext i32 %conv453 to i64
  %cmp455 = icmp uge i64 %conv454, 265
  br i1 %cmp455, label %if.then.457, label %if.else.459

if.then.457:                                      ; preds = %if.end.312
  %176 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call458 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %176)
  br label %if.end.476

if.else.459:                                      ; preds = %if.end.312
  %177 = load i32, i32* @zz_size, align 4
  %idxprom460 = sext i32 %177 to i64
  %arrayidx461 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom460
  %178 = load %union.rec*, %union.rec** %arrayidx461, align 8
  %cmp462 = icmp eq %union.rec* %178, null
  br i1 %cmp462, label %if.then.464, label %if.else.466

if.then.464:                                      ; preds = %if.else.459
  %179 = load i32, i32* @zz_size, align 4
  %180 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call465 = call %union.rec* @GetMemory(i32 %179, %struct.FILE_POS* %180)
  store %union.rec* %call465, %union.rec** @zz_hold, align 8
  br label %if.end.475

if.else.466:                                      ; preds = %if.else.459
  %181 = load i32, i32* @zz_size, align 4
  %idxprom467 = sext i32 %181 to i64
  %arrayidx468 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom467
  %182 = load %union.rec*, %union.rec** %arrayidx468, align 8
  store %union.rec* %182, %union.rec** @zz_hold, align 8
  store %union.rec* %182, %union.rec** @zz_hold, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1469 = bitcast %union.rec* %183 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 0
  %opred472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %opred472, align 8
  %185 = load i32, i32* @zz_size, align 4
  %idxprom473 = sext i32 %185 to i64
  %arrayidx474 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom473
  store %union.rec* %184, %union.rec** %arrayidx474, align 8
  br label %if.end.475

if.end.475:                                       ; preds = %if.else.466, %if.then.464
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475, %if.then.457
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1477 = bitcast %union.rec* %186 to %struct.word_type*
  %ou1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 1
  %os11479 = bitcast %union.FIRST_UNION* %ou1478 to %struct.anon*
  %otype480 = getelementptr inbounds %struct.anon, %struct.anon* %os11479, i32 0, i32 0
  store i8 0, i8* %otype480, align 1
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1481 = bitcast %union.rec* %188 to %struct.word_type*
  %olist482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1481, i32 0, i32 0
  %arrayidx483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist482, i32 0, i64 1
  %osucc484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx483, i32 0, i32 1
  store %union.rec* %187, %union.rec** %osucc484, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1485 = bitcast %union.rec* %189 to %struct.word_type*
  %olist486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1485, i32 0, i32 0
  %arrayidx487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist486, i32 0, i64 1
  %opred488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx487, i32 0, i32 0
  store %union.rec* %187, %union.rec** %opred488, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1489 = bitcast %union.rec* %190 to %struct.word_type*
  %olist490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1489, i32 0, i32 0
  %arrayidx491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist490, i32 0, i64 0
  %osucc492 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx491, i32 0, i32 1
  store %union.rec* %187, %union.rec** %osucc492, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1493 = bitcast %union.rec* %191 to %struct.word_type*
  %olist494 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1493, i32 0, i32 0
  %arrayidx495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist494, i32 0, i64 0
  %opred496 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx495, i32 0, i32 0
  store %union.rec* %187, %union.rec** %opred496, align 8
  store %union.rec* %187, %union.rec** @xx_link, align 8
  %192 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %192, %union.rec** @zz_res, align 8
  %193 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %193, %union.rec** @zz_hold, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp497 = icmp eq %union.rec* %194, null
  br i1 %cmp497, label %cond.true.499, label %cond.false.500

cond.true.499:                                    ; preds = %if.end.476
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.535

cond.false.500:                                   ; preds = %if.end.476
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp501 = icmp eq %union.rec* %196, null
  br i1 %cmp501, label %cond.true.503, label %cond.false.504

cond.true.503:                                    ; preds = %cond.false.500
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.533

cond.false.504:                                   ; preds = %cond.false.500
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1505 = bitcast %union.rec* %198 to %struct.word_type*
  %olist506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist506, i32 0, i64 0
  %opred508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx507, i32 0, i32 0
  %199 = load %union.rec*, %union.rec** %opred508, align 8
  store %union.rec* %199, %union.rec** @zz_tmp, align 8
  %200 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1509 = bitcast %union.rec* %200 to %struct.word_type*
  %olist510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 0
  %arrayidx511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist510, i32 0, i64 0
  %opred512 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx511, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %opred512, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1513 = bitcast %union.rec* %202 to %struct.word_type*
  %olist514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist514, i32 0, i64 0
  %opred516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx515, i32 0, i32 0
  store %union.rec* %201, %union.rec** %opred516, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1517 = bitcast %union.rec* %204 to %struct.word_type*
  %olist518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist518, i32 0, i64 0
  %opred520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx519, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred520, align 8
  %os1521 = bitcast %union.rec* %205 to %struct.word_type*
  %olist522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1521, i32 0, i32 0
  %arrayidx523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist522, i32 0, i64 0
  %osucc524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx523, i32 0, i32 1
  store %union.rec* %203, %union.rec** %osucc524, align 8
  %206 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %207 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1525 = bitcast %union.rec* %207 to %struct.word_type*
  %olist526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist526, i32 0, i64 0
  %opred528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx527, i32 0, i32 0
  store %union.rec* %206, %union.rec** %opred528, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %209 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1529 = bitcast %union.rec* %209 to %struct.word_type*
  %olist530 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1529, i32 0, i32 0
  %arrayidx531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist530, i32 0, i64 0
  %osucc532 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx531, i32 0, i32 1
  store %union.rec* %208, %union.rec** %osucc532, align 8
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.false.504, %cond.true.503
  %cond534 = phi %union.rec* [ %197, %cond.true.503 ], [ %208, %cond.false.504 ]
  br label %cond.end.535

cond.end.535:                                     ; preds = %cond.end.533, %cond.true.499
  %cond536 = phi %union.rec* [ %195, %cond.true.499 ], [ %cond534, %cond.end.533 ]
  %210 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %210, %union.rec** @zz_res, align 8
  %211 = load %union.rec*, %union.rec** %new_s1, align 8
  store %union.rec* %211, %union.rec** @zz_hold, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp537 = icmp eq %union.rec* %212, null
  br i1 %cmp537, label %cond.true.539, label %cond.false.540

cond.true.539:                                    ; preds = %cond.end.535
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.575

cond.false.540:                                   ; preds = %cond.end.535
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp541 = icmp eq %union.rec* %214, null
  br i1 %cmp541, label %cond.true.543, label %cond.false.544

cond.true.543:                                    ; preds = %cond.false.540
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.573

cond.false.544:                                   ; preds = %cond.false.540
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1545 = bitcast %union.rec* %216 to %struct.word_type*
  %olist546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1545, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist546, i32 0, i64 1
  %opred548 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx547, i32 0, i32 0
  %217 = load %union.rec*, %union.rec** %opred548, align 8
  store %union.rec* %217, %union.rec** @zz_tmp, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1549 = bitcast %union.rec* %218 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 1
  %opred552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %opred552, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1553 = bitcast %union.rec* %220 to %struct.word_type*
  %olist554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1553, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist554, i32 0, i64 1
  %opred556 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx555, i32 0, i32 0
  store %union.rec* %219, %union.rec** %opred556, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1557 = bitcast %union.rec* %222 to %struct.word_type*
  %olist558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 0
  %arrayidx559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist558, i32 0, i64 1
  %opred560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx559, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred560, align 8
  %os1561 = bitcast %union.rec* %223 to %struct.word_type*
  %olist562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1561, i32 0, i32 0
  %arrayidx563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist562, i32 0, i64 1
  %osucc564 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx563, i32 0, i32 1
  store %union.rec* %221, %union.rec** %osucc564, align 8
  %224 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1565 = bitcast %union.rec* %225 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 1
  %opred568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 0
  store %union.rec* %224, %union.rec** %opred568, align 8
  %226 = load %union.rec*, %union.rec** @zz_res, align 8
  %227 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1569 = bitcast %union.rec* %227 to %struct.word_type*
  %olist570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist570, i32 0, i64 1
  %osucc572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx571, i32 0, i32 1
  store %union.rec* %226, %union.rec** %osucc572, align 8
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.false.544, %cond.true.543
  %cond574 = phi %union.rec* [ %215, %cond.true.543 ], [ %226, %cond.false.544 ]
  br label %cond.end.575

cond.end.575:                                     ; preds = %cond.end.573, %cond.true.539
  %cond576 = phi %union.rec* [ %213, %cond.true.539 ], [ %cond574, %cond.end.573 ]
  br label %for.inc.1934

if.end.577:                                       ; preds = %for.end
  %228 = load %union.rec*, %union.rec** %s1, align 8
  %os1578 = bitcast %union.rec* %228 to %struct.word_type*
  %ou1579 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1578, i32 0, i32 1
  %os11580 = bitcast %union.FIRST_UNION* %ou1579 to %struct.anon*
  %otype581 = getelementptr inbounds %struct.anon, %struct.anon* %os11580, i32 0, i32 0
  %229 = load i8, i8* %otype581, align 1
  %conv582 = zext i8 %229 to i32
  %cmp583 = icmp eq i32 %conv582, 26
  br i1 %cmp583, label %if.then.592, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.577
  %230 = load %union.rec*, %union.rec** %s1, align 8
  %os1585 = bitcast %union.rec* %230 to %struct.word_type*
  %ou1586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 1
  %os11587 = bitcast %union.FIRST_UNION* %ou1586 to %struct.anon*
  %otype588 = getelementptr inbounds %struct.anon, %struct.anon* %os11587, i32 0, i32 0
  %231 = load i8, i8* %otype588, align 1
  %conv589 = zext i8 %231 to i32
  %cmp590 = icmp eq i32 %conv589, 24
  br i1 %cmp590, label %if.then.592, label %if.else.616

if.then.592:                                      ; preds = %lor.lhs.false, %if.end.577
  %232 = load %union.rec*, %union.rec** %s1, align 8
  %os1593 = bitcast %union.rec* %232 to %struct.word_type*
  %olist594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1593, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist594, i32 0, i64 0
  %osucc596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx595, i32 0, i32 1
  %233 = load %union.rec*, %union.rec** %osucc596, align 8
  %os1597 = bitcast %union.rec* %233 to %struct.word_type*
  %olist598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1597, i32 0, i32 0
  %arrayidx599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist598, i32 0, i64 1
  %opred600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx599, i32 0, i32 0
  %234 = load %union.rec*, %union.rec** %opred600, align 8
  store %union.rec* %234, %union.rec** %s2, align 8
  br label %for.cond.601

for.cond.601:                                     ; preds = %for.inc.610, %if.then.592
  %235 = load %union.rec*, %union.rec** %s2, align 8
  %os1602 = bitcast %union.rec* %235 to %struct.word_type*
  %ou1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1602, i32 0, i32 1
  %os11604 = bitcast %union.FIRST_UNION* %ou1603 to %struct.anon*
  %otype605 = getelementptr inbounds %struct.anon, %struct.anon* %os11604, i32 0, i32 0
  %236 = load i8, i8* %otype605, align 1
  %conv606 = zext i8 %236 to i32
  %cmp607 = icmp eq i32 %conv606, 0
  br i1 %cmp607, label %for.body.609, label %for.end.615

for.body.609:                                     ; preds = %for.cond.601
  br label %for.inc.610

for.inc.610:                                      ; preds = %for.body.609
  %237 = load %union.rec*, %union.rec** %s2, align 8
  %os1611 = bitcast %union.rec* %237 to %struct.word_type*
  %olist612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 0
  %arrayidx613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist612, i32 0, i64 1
  %opred614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx613, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %opred614, align 8
  store %union.rec* %238, %union.rec** %s2, align 8
  br label %for.cond.601

for.end.615:                                      ; preds = %for.cond.601
  br label %if.end.617

if.else.616:                                      ; preds = %lor.lhs.false
  %239 = load %union.rec*, %union.rec** %s1, align 8
  store %union.rec* %239, %union.rec** %s2, align 8
  br label %if.end.617

if.end.617:                                       ; preds = %if.else.616, %for.end.615
  %240 = load %union.rec*, %union.rec** %s2, align 8
  %os1618 = bitcast %union.rec* %240 to %struct.word_type*
  %ou1619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1618, i32 0, i32 1
  %os11620 = bitcast %union.FIRST_UNION* %ou1619 to %struct.anon*
  %otype621 = getelementptr inbounds %struct.anon, %struct.anon* %os11620, i32 0, i32 0
  %241 = load i8, i8* %otype621, align 1
  %conv622 = zext i8 %241 to i32
  %cmp623 = icmp eq i32 %conv622, 9
  br i1 %cmp623, label %if.end.627, label %if.then.625

if.then.625:                                      ; preds = %if.end.617
  %242 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call626 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.625, %if.end.617
  %243 = load %union.rec*, %union.rec** %s2, align 8
  %os1628 = bitcast %union.rec* %243 to %struct.word_type*
  %olist629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1628, i32 0, i32 0
  %arrayidx630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist629, i32 0, i64 0
  %osucc631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx630, i32 0, i32 1
  %244 = load %union.rec*, %union.rec** %osucc631, align 8
  %os1632 = bitcast %union.rec* %244 to %struct.word_type*
  %olist633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1632, i32 0, i32 0
  %arrayidx634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist633, i32 0, i64 1
  %opred635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx634, i32 0, i32 0
  %245 = load %union.rec*, %union.rec** %opred635, align 8
  store %union.rec* %245, %union.rec** %sh, align 8
  br label %for.cond.636

for.cond.636:                                     ; preds = %for.inc.645, %if.end.627
  %246 = load %union.rec*, %union.rec** %sh, align 8
  %os1637 = bitcast %union.rec* %246 to %struct.word_type*
  %ou1638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1637, i32 0, i32 1
  %os11639 = bitcast %union.FIRST_UNION* %ou1638 to %struct.anon*
  %otype640 = getelementptr inbounds %struct.anon, %struct.anon* %os11639, i32 0, i32 0
  %247 = load i8, i8* %otype640, align 1
  %conv641 = zext i8 %247 to i32
  %cmp642 = icmp eq i32 %conv641, 0
  br i1 %cmp642, label %for.body.644, label %for.end.650

for.body.644:                                     ; preds = %for.cond.636
  br label %for.inc.645

for.inc.645:                                      ; preds = %for.body.644
  %248 = load %union.rec*, %union.rec** %sh, align 8
  %os1646 = bitcast %union.rec* %248 to %struct.word_type*
  %olist647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1646, i32 0, i32 0
  %arrayidx648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist647, i32 0, i64 1
  %opred649 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx648, i32 0, i32 0
  %249 = load %union.rec*, %union.rec** %opred649, align 8
  store %union.rec* %249, %union.rec** %sh, align 8
  br label %for.cond.636

for.end.650:                                      ; preds = %for.cond.636
  %250 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 9), align 1
  %conv651 = zext i8 %250 to i32
  store i32 %conv651, i32* @zz_size, align 4
  %conv652 = sext i32 %conv651 to i64
  %cmp653 = icmp uge i64 %conv652, 265
  br i1 %cmp653, label %if.then.655, label %if.else.657

if.then.655:                                      ; preds = %for.end.650
  %251 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call656 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %251)
  br label %if.end.674

if.else.657:                                      ; preds = %for.end.650
  %252 = load i32, i32* @zz_size, align 4
  %idxprom658 = sext i32 %252 to i64
  %arrayidx659 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom658
  %253 = load %union.rec*, %union.rec** %arrayidx659, align 8
  %cmp660 = icmp eq %union.rec* %253, null
  br i1 %cmp660, label %if.then.662, label %if.else.664

if.then.662:                                      ; preds = %if.else.657
  %254 = load i32, i32* @zz_size, align 4
  %255 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call663 = call %union.rec* @GetMemory(i32 %254, %struct.FILE_POS* %255)
  store %union.rec* %call663, %union.rec** @zz_hold, align 8
  br label %if.end.673

if.else.664:                                      ; preds = %if.else.657
  %256 = load i32, i32* @zz_size, align 4
  %idxprom665 = sext i32 %256 to i64
  %arrayidx666 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom665
  %257 = load %union.rec*, %union.rec** %arrayidx666, align 8
  store %union.rec* %257, %union.rec** @zz_hold, align 8
  store %union.rec* %257, %union.rec** @zz_hold, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1667 = bitcast %union.rec* %258 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 0
  %opred670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 0
  %259 = load %union.rec*, %union.rec** %opred670, align 8
  %260 = load i32, i32* @zz_size, align 4
  %idxprom671 = sext i32 %260 to i64
  %arrayidx672 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom671
  store %union.rec* %259, %union.rec** %arrayidx672, align 8
  br label %if.end.673

if.end.673:                                       ; preds = %if.else.664, %if.then.662
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %if.then.655
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1675 = bitcast %union.rec* %261 to %struct.word_type*
  %ou1676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1675, i32 0, i32 1
  %os11677 = bitcast %union.FIRST_UNION* %ou1676 to %struct.anon*
  %otype678 = getelementptr inbounds %struct.anon, %struct.anon* %os11677, i32 0, i32 0
  store i8 9, i8* %otype678, align 1
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1679 = bitcast %union.rec* %263 to %struct.word_type*
  %olist680 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1679, i32 0, i32 0
  %arrayidx681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist680, i32 0, i64 1
  %osucc682 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx681, i32 0, i32 1
  store %union.rec* %262, %union.rec** %osucc682, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1683 = bitcast %union.rec* %264 to %struct.word_type*
  %olist684 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1683, i32 0, i32 0
  %arrayidx685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist684, i32 0, i64 1
  %opred686 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx685, i32 0, i32 0
  store %union.rec* %262, %union.rec** %opred686, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1687 = bitcast %union.rec* %265 to %struct.word_type*
  %olist688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1687, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist688, i32 0, i64 0
  %osucc690 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx689, i32 0, i32 1
  store %union.rec* %262, %union.rec** %osucc690, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1691 = bitcast %union.rec* %266 to %struct.word_type*
  %olist692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1691, i32 0, i32 0
  %arrayidx693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist692, i32 0, i64 0
  %opred694 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx693, i32 0, i32 0
  store %union.rec* %262, %union.rec** %opred694, align 8
  store %union.rec* %262, %union.rec** %new_s2, align 8
  %267 = load %union.rec*, %union.rec** %s2, align 8
  %os1695 = bitcast %union.rec* %267 to %struct.word_type*
  %ou1696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1695, i32 0, i32 1
  %ofpos697 = bitcast %union.FIRST_UNION* %ou1696 to %struct.FILE_POS*
  %ofile_num698 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos697, i32 0, i32 2
  %268 = load i16, i16* %ofile_num698, align 2
  %269 = load %union.rec*, %union.rec** %new_s2, align 8
  %os1699 = bitcast %union.rec* %269 to %struct.word_type*
  %ou1700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 1
  %ofpos701 = bitcast %union.FIRST_UNION* %ou1700 to %struct.FILE_POS*
  %ofile_num702 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos701, i32 0, i32 2
  store i16 %268, i16* %ofile_num702, align 2
  %270 = load %union.rec*, %union.rec** %s2, align 8
  %os1703 = bitcast %union.rec* %270 to %struct.word_type*
  %ou1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1703, i32 0, i32 1
  %ofpos705 = bitcast %union.FIRST_UNION* %ou1704 to %struct.FILE_POS*
  %oline_num706 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos705, i32 0, i32 3
  %bf.load707 = load i32, i32* %oline_num706, align 4
  %bf.clear708 = and i32 %bf.load707, 1048575
  %271 = load %union.rec*, %union.rec** %new_s2, align 8
  %os1709 = bitcast %union.rec* %271 to %struct.word_type*
  %ou1710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 1
  %ofpos711 = bitcast %union.FIRST_UNION* %ou1710 to %struct.FILE_POS*
  %oline_num712 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos711, i32 0, i32 3
  %bf.load713 = load i32, i32* %oline_num712, align 4
  %bf.value714 = and i32 %bf.clear708, 1048575
  %bf.clear715 = and i32 %bf.load713, -1048576
  %bf.set716 = or i32 %bf.clear715, %bf.value714
  store i32 %bf.set716, i32* %oline_num712, align 4
  %272 = load %union.rec*, %union.rec** %s2, align 8
  %os1717 = bitcast %union.rec* %272 to %struct.word_type*
  %ou1718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 1
  %ofpos719 = bitcast %union.FIRST_UNION* %ou1718 to %struct.FILE_POS*
  %ocol_num720 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos719, i32 0, i32 3
  %bf.load721 = load i32, i32* %ocol_num720, align 4
  %bf.lshr722 = lshr i32 %bf.load721, 20
  %273 = load %union.rec*, %union.rec** %new_s2, align 8
  %os1723 = bitcast %union.rec* %273 to %struct.word_type*
  %ou1724 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1723, i32 0, i32 1
  %ofpos725 = bitcast %union.FIRST_UNION* %ou1724 to %struct.FILE_POS*
  %ocol_num726 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos725, i32 0, i32 3
  %bf.load727 = load i32, i32* %ocol_num726, align 4
  %bf.value728 = and i32 %bf.lshr722, 4095
  %bf.shl729 = shl i32 %bf.value728, 20
  %bf.clear730 = and i32 %bf.load727, 1048575
  %bf.set731 = or i32 %bf.clear730, %bf.shl729
  store i32 %bf.set731, i32* %ocol_num726, align 4
  %274 = load %union.rec*, %union.rec** %s2, align 8
  %275 = load %union.rec*, %union.rec** %s1, align 8
  %cmp732 = icmp ne %union.rec* %274, %275
  br i1 %cmp732, label %if.then.734, label %if.else.1077

if.then.734:                                      ; preds = %if.end.674
  %276 = load %union.rec*, %union.rec** %s1, align 8
  %os1735 = bitcast %union.rec* %276 to %struct.word_type*
  %ou1736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1735, i32 0, i32 1
  %os11737 = bitcast %union.FIRST_UNION* %ou1736 to %struct.anon*
  %otype738 = getelementptr inbounds %struct.anon, %struct.anon* %os11737, i32 0, i32 0
  %277 = load i8, i8* %otype738, align 1
  %idxprom739 = zext i8 %277 to i64
  %arrayidx740 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom739
  %278 = load i8, i8* %arrayidx740, align 1
  %conv741 = zext i8 %278 to i32
  store i32 %conv741, i32* @zz_size, align 4
  %conv742 = sext i32 %conv741 to i64
  %cmp743 = icmp uge i64 %conv742, 265
  br i1 %cmp743, label %if.then.745, label %if.else.747

if.then.745:                                      ; preds = %if.then.734
  %279 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call746 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %279)
  br label %if.end.764

if.else.747:                                      ; preds = %if.then.734
  %280 = load i32, i32* @zz_size, align 4
  %idxprom748 = sext i32 %280 to i64
  %arrayidx749 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom748
  %281 = load %union.rec*, %union.rec** %arrayidx749, align 8
  %cmp750 = icmp eq %union.rec* %281, null
  br i1 %cmp750, label %if.then.752, label %if.else.754

if.then.752:                                      ; preds = %if.else.747
  %282 = load i32, i32* @zz_size, align 4
  %283 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call753 = call %union.rec* @GetMemory(i32 %282, %struct.FILE_POS* %283)
  store %union.rec* %call753, %union.rec** @zz_hold, align 8
  br label %if.end.763

if.else.754:                                      ; preds = %if.else.747
  %284 = load i32, i32* @zz_size, align 4
  %idxprom755 = sext i32 %284 to i64
  %arrayidx756 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom755
  %285 = load %union.rec*, %union.rec** %arrayidx756, align 8
  store %union.rec* %285, %union.rec** @zz_hold, align 8
  store %union.rec* %285, %union.rec** @zz_hold, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1757 = bitcast %union.rec* %286 to %struct.word_type*
  %olist758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist758, i32 0, i64 0
  %opred760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx759, i32 0, i32 0
  %287 = load %union.rec*, %union.rec** %opred760, align 8
  %288 = load i32, i32* @zz_size, align 4
  %idxprom761 = sext i32 %288 to i64
  %arrayidx762 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom761
  store %union.rec* %287, %union.rec** %arrayidx762, align 8
  br label %if.end.763

if.end.763:                                       ; preds = %if.else.754, %if.then.752
  br label %if.end.764

if.end.764:                                       ; preds = %if.end.763, %if.then.745
  %289 = load %union.rec*, %union.rec** %s1, align 8
  %os1765 = bitcast %union.rec* %289 to %struct.word_type*
  %ou1766 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1765, i32 0, i32 1
  %os11767 = bitcast %union.FIRST_UNION* %ou1766 to %struct.anon*
  %otype768 = getelementptr inbounds %struct.anon, %struct.anon* %os11767, i32 0, i32 0
  %290 = load i8, i8* %otype768, align 1
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1769 = bitcast %union.rec* %291 to %struct.word_type*
  %ou1770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1769, i32 0, i32 1
  %os11771 = bitcast %union.FIRST_UNION* %ou1770 to %struct.anon*
  %otype772 = getelementptr inbounds %struct.anon, %struct.anon* %os11771, i32 0, i32 0
  store i8 %290, i8* %otype772, align 1
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1773 = bitcast %union.rec* %293 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 1
  %osucc776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc776, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1777 = bitcast %union.rec* %294 to %struct.word_type*
  %olist778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist778, i32 0, i64 1
  %opred780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx779, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred780, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1781 = bitcast %union.rec* %295 to %struct.word_type*
  %olist782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1781, i32 0, i32 0
  %arrayidx783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist782, i32 0, i64 0
  %osucc784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx783, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc784, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1785 = bitcast %union.rec* %296 to %struct.word_type*
  %olist786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1785, i32 0, i32 0
  %arrayidx787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist786, i32 0, i64 0
  %opred788 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx787, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred788, align 8
  store %union.rec* %292, %union.rec** %new_s1, align 8
  %297 = load %union.rec*, %union.rec** %s1, align 8
  %os1789 = bitcast %union.rec* %297 to %struct.word_type*
  %ou3790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 3
  %os31791 = bitcast %union.THIRD_UNION* %ou3790 to %struct.anon.6*
  %oback792 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31791, i32 0, i32 0
  %arrayidx793 = getelementptr inbounds [2 x i32], [2 x i32]* %oback792, i32 0, i64 0
  %298 = load i32, i32* %arrayidx793, align 4
  %299 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1794 = bitcast %union.rec* %299 to %struct.word_type*
  %ou3795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1794, i32 0, i32 3
  %os31796 = bitcast %union.THIRD_UNION* %ou3795 to %struct.anon.6*
  %oback797 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31796, i32 0, i32 0
  %arrayidx798 = getelementptr inbounds [2 x i32], [2 x i32]* %oback797, i32 0, i64 0
  store i32 %298, i32* %arrayidx798, align 4
  %300 = load %union.rec*, %union.rec** %s1, align 8
  %os1799 = bitcast %union.rec* %300 to %struct.word_type*
  %ou3800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1799, i32 0, i32 3
  %os31801 = bitcast %union.THIRD_UNION* %ou3800 to %struct.anon.6*
  %ofwd802 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31801, i32 0, i32 1
  %arrayidx803 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd802, i32 0, i64 0
  %301 = load i32, i32* %arrayidx803, align 4
  %302 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1804 = bitcast %union.rec* %302 to %struct.word_type*
  %ou3805 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1804, i32 0, i32 3
  %os31806 = bitcast %union.THIRD_UNION* %ou3805 to %struct.anon.6*
  %ofwd807 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31806, i32 0, i32 1
  %arrayidx808 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd807, i32 0, i64 0
  store i32 %301, i32* %arrayidx808, align 4
  %303 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %os1809 = bitcast %union.rec* %303 to %struct.word_type*
  %ou3810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1809, i32 0, i32 3
  %os31811 = bitcast %union.THIRD_UNION* %ou3810 to %struct.anon.6*
  %oback812 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31811, i32 0, i32 0
  %arrayidx813 = getelementptr inbounds [2 x i32], [2 x i32]* %oback812, i32 0, i64 0
  %304 = load i32, i32* %arrayidx813, align 4
  %305 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1814 = bitcast %union.rec* %305 to %struct.word_type*
  %ou3815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1814, i32 0, i32 3
  %os31816 = bitcast %union.THIRD_UNION* %ou3815 to %struct.anon.6*
  %oback817 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31816, i32 0, i32 0
  %arrayidx818 = getelementptr inbounds [2 x i32], [2 x i32]* %oback817, i32 0, i64 1
  store i32 %304, i32* %arrayidx818, align 4
  %306 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %os1819 = bitcast %union.rec* %306 to %struct.word_type*
  %ou3820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1819, i32 0, i32 3
  %os31821 = bitcast %union.THIRD_UNION* %ou3820 to %struct.anon.6*
  %ofwd822 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31821, i32 0, i32 1
  %arrayidx823 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd822, i32 0, i64 0
  %307 = load i32, i32* %arrayidx823, align 4
  %308 = load %union.rec*, %union.rec** %new_s1, align 8
  %os1824 = bitcast %union.rec* %308 to %struct.word_type*
  %ou3825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1824, i32 0, i32 3
  %os31826 = bitcast %union.THIRD_UNION* %ou3825 to %struct.anon.6*
  %ofwd827 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31826, i32 0, i32 1
  %arrayidx828 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd827, i32 0, i64 1
  store i32 %307, i32* %arrayidx828, align 4
  %309 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv829 = zext i8 %309 to i32
  store i32 %conv829, i32* @zz_size, align 4
  %conv830 = sext i32 %conv829 to i64
  %cmp831 = icmp uge i64 %conv830, 265
  br i1 %cmp831, label %if.then.833, label %if.else.835

if.then.833:                                      ; preds = %if.end.764
  %310 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call834 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %310)
  br label %if.end.852

if.else.835:                                      ; preds = %if.end.764
  %311 = load i32, i32* @zz_size, align 4
  %idxprom836 = sext i32 %311 to i64
  %arrayidx837 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom836
  %312 = load %union.rec*, %union.rec** %arrayidx837, align 8
  %cmp838 = icmp eq %union.rec* %312, null
  br i1 %cmp838, label %if.then.840, label %if.else.842

if.then.840:                                      ; preds = %if.else.835
  %313 = load i32, i32* @zz_size, align 4
  %314 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call841 = call %union.rec* @GetMemory(i32 %313, %struct.FILE_POS* %314)
  store %union.rec* %call841, %union.rec** @zz_hold, align 8
  br label %if.end.851

if.else.842:                                      ; preds = %if.else.835
  %315 = load i32, i32* @zz_size, align 4
  %idxprom843 = sext i32 %315 to i64
  %arrayidx844 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom843
  %316 = load %union.rec*, %union.rec** %arrayidx844, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1845 = bitcast %union.rec* %317 to %struct.word_type*
  %olist846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1845, i32 0, i32 0
  %arrayidx847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist846, i32 0, i64 0
  %opred848 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx847, i32 0, i32 0
  %318 = load %union.rec*, %union.rec** %opred848, align 8
  %319 = load i32, i32* @zz_size, align 4
  %idxprom849 = sext i32 %319 to i64
  %arrayidx850 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom849
  store %union.rec* %318, %union.rec** %arrayidx850, align 8
  br label %if.end.851

if.end.851:                                       ; preds = %if.else.842, %if.then.840
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %if.then.833
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1853 = bitcast %union.rec* %320 to %struct.word_type*
  %ou1854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1853, i32 0, i32 1
  %os11855 = bitcast %union.FIRST_UNION* %ou1854 to %struct.anon*
  %otype856 = getelementptr inbounds %struct.anon, %struct.anon* %os11855, i32 0, i32 0
  store i8 0, i8* %otype856, align 1
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1857 = bitcast %union.rec* %322 to %struct.word_type*
  %olist858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1857, i32 0, i32 0
  %arrayidx859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist858, i32 0, i64 1
  %osucc860 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx859, i32 0, i32 1
  store %union.rec* %321, %union.rec** %osucc860, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1861 = bitcast %union.rec* %323 to %struct.word_type*
  %olist862 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1861, i32 0, i32 0
  %arrayidx863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist862, i32 0, i64 1
  %opred864 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx863, i32 0, i32 0
  store %union.rec* %321, %union.rec** %opred864, align 8
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1865 = bitcast %union.rec* %324 to %struct.word_type*
  %olist866 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1865, i32 0, i32 0
  %arrayidx867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist866, i32 0, i64 0
  %osucc868 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx867, i32 0, i32 1
  store %union.rec* %321, %union.rec** %osucc868, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1869 = bitcast %union.rec* %325 to %struct.word_type*
  %olist870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1869, i32 0, i32 0
  %arrayidx871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist870, i32 0, i64 0
  %opred872 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx871, i32 0, i32 0
  store %union.rec* %321, %union.rec** %opred872, align 8
  store %union.rec* %321, %union.rec** @xx_link, align 8
  %326 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %326, %union.rec** @zz_res, align 8
  %327 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %327, %union.rec** @zz_hold, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp873 = icmp eq %union.rec* %328, null
  br i1 %cmp873, label %cond.true.875, label %cond.false.876

cond.true.875:                                    ; preds = %if.end.852
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.911

cond.false.876:                                   ; preds = %if.end.852
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp877 = icmp eq %union.rec* %330, null
  br i1 %cmp877, label %cond.true.879, label %cond.false.880

cond.true.879:                                    ; preds = %cond.false.876
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.909

cond.false.880:                                   ; preds = %cond.false.876
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1881 = bitcast %union.rec* %332 to %struct.word_type*
  %olist882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1881, i32 0, i32 0
  %arrayidx883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist882, i32 0, i64 0
  %opred884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx883, i32 0, i32 0
  %333 = load %union.rec*, %union.rec** %opred884, align 8
  store %union.rec* %333, %union.rec** @zz_tmp, align 8
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1885 = bitcast %union.rec* %334 to %struct.word_type*
  %olist886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1885, i32 0, i32 0
  %arrayidx887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist886, i32 0, i64 0
  %opred888 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx887, i32 0, i32 0
  %335 = load %union.rec*, %union.rec** %opred888, align 8
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1889 = bitcast %union.rec* %336 to %struct.word_type*
  %olist890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1889, i32 0, i32 0
  %arrayidx891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist890, i32 0, i64 0
  %opred892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx891, i32 0, i32 0
  store %union.rec* %335, %union.rec** %opred892, align 8
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %338 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1893 = bitcast %union.rec* %338 to %struct.word_type*
  %olist894 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1893, i32 0, i32 0
  %arrayidx895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist894, i32 0, i64 0
  %opred896 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx895, i32 0, i32 0
  %339 = load %union.rec*, %union.rec** %opred896, align 8
  %os1897 = bitcast %union.rec* %339 to %struct.word_type*
  %olist898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1897, i32 0, i32 0
  %arrayidx899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist898, i32 0, i64 0
  %osucc900 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx899, i32 0, i32 1
  store %union.rec* %337, %union.rec** %osucc900, align 8
  %340 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %341 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1901 = bitcast %union.rec* %341 to %struct.word_type*
  %olist902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1901, i32 0, i32 0
  %arrayidx903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist902, i32 0, i64 0
  %opred904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx903, i32 0, i32 0
  store %union.rec* %340, %union.rec** %opred904, align 8
  %342 = load %union.rec*, %union.rec** @zz_res, align 8
  %343 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1905 = bitcast %union.rec* %343 to %struct.word_type*
  %olist906 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1905, i32 0, i32 0
  %arrayidx907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist906, i32 0, i64 0
  %osucc908 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx907, i32 0, i32 1
  store %union.rec* %342, %union.rec** %osucc908, align 8
  br label %cond.end.909

cond.end.909:                                     ; preds = %cond.false.880, %cond.true.879
  %cond910 = phi %union.rec* [ %331, %cond.true.879 ], [ %342, %cond.false.880 ]
  br label %cond.end.911

cond.end.911:                                     ; preds = %cond.end.909, %cond.true.875
  %cond912 = phi %union.rec* [ %329, %cond.true.875 ], [ %cond910, %cond.end.909 ]
  %344 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %344, %union.rec** @zz_res, align 8
  %345 = load %union.rec*, %union.rec** %new_s1, align 8
  store %union.rec* %345, %union.rec** @zz_hold, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp913 = icmp eq %union.rec* %346, null
  br i1 %cmp913, label %cond.true.915, label %cond.false.916

cond.true.915:                                    ; preds = %cond.end.911
  %347 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.951

cond.false.916:                                   ; preds = %cond.end.911
  %348 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp917 = icmp eq %union.rec* %348, null
  br i1 %cmp917, label %cond.true.919, label %cond.false.920

cond.true.919:                                    ; preds = %cond.false.916
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.949

cond.false.920:                                   ; preds = %cond.false.916
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1921 = bitcast %union.rec* %350 to %struct.word_type*
  %olist922 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1921, i32 0, i32 0
  %arrayidx923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist922, i32 0, i64 1
  %opred924 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx923, i32 0, i32 0
  %351 = load %union.rec*, %union.rec** %opred924, align 8
  store %union.rec* %351, %union.rec** @zz_tmp, align 8
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1925 = bitcast %union.rec* %352 to %struct.word_type*
  %olist926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1925, i32 0, i32 0
  %arrayidx927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist926, i32 0, i64 1
  %opred928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx927, i32 0, i32 0
  %353 = load %union.rec*, %union.rec** %opred928, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1929 = bitcast %union.rec* %354 to %struct.word_type*
  %olist930 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1929, i32 0, i32 0
  %arrayidx931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist930, i32 0, i64 1
  %opred932 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx931, i32 0, i32 0
  store %union.rec* %353, %union.rec** %opred932, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1933 = bitcast %union.rec* %356 to %struct.word_type*
  %olist934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1933, i32 0, i32 0
  %arrayidx935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist934, i32 0, i64 1
  %opred936 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx935, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %opred936, align 8
  %os1937 = bitcast %union.rec* %357 to %struct.word_type*
  %olist938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1937, i32 0, i32 0
  %arrayidx939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist938, i32 0, i64 1
  %osucc940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx939, i32 0, i32 1
  store %union.rec* %355, %union.rec** %osucc940, align 8
  %358 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %359 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1941 = bitcast %union.rec* %359 to %struct.word_type*
  %olist942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1941, i32 0, i32 0
  %arrayidx943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist942, i32 0, i64 1
  %opred944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx943, i32 0, i32 0
  store %union.rec* %358, %union.rec** %opred944, align 8
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %361 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1945 = bitcast %union.rec* %361 to %struct.word_type*
  %olist946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1945, i32 0, i32 0
  %arrayidx947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist946, i32 0, i64 1
  %osucc948 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx947, i32 0, i32 1
  store %union.rec* %360, %union.rec** %osucc948, align 8
  br label %cond.end.949

cond.end.949:                                     ; preds = %cond.false.920, %cond.true.919
  %cond950 = phi %union.rec* [ %349, %cond.true.919 ], [ %360, %cond.false.920 ]
  br label %cond.end.951

cond.end.951:                                     ; preds = %cond.end.949, %cond.true.915
  %cond952 = phi %union.rec* [ %347, %cond.true.915 ], [ %cond950, %cond.end.949 ]
  %362 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv953 = zext i8 %362 to i32
  store i32 %conv953, i32* @zz_size, align 4
  %conv954 = sext i32 %conv953 to i64
  %cmp955 = icmp uge i64 %conv954, 265
  br i1 %cmp955, label %if.then.957, label %if.else.959

if.then.957:                                      ; preds = %cond.end.951
  %363 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call958 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %363)
  br label %if.end.976

if.else.959:                                      ; preds = %cond.end.951
  %364 = load i32, i32* @zz_size, align 4
  %idxprom960 = sext i32 %364 to i64
  %arrayidx961 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom960
  %365 = load %union.rec*, %union.rec** %arrayidx961, align 8
  %cmp962 = icmp eq %union.rec* %365, null
  br i1 %cmp962, label %if.then.964, label %if.else.966

if.then.964:                                      ; preds = %if.else.959
  %366 = load i32, i32* @zz_size, align 4
  %367 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call965 = call %union.rec* @GetMemory(i32 %366, %struct.FILE_POS* %367)
  store %union.rec* %call965, %union.rec** @zz_hold, align 8
  br label %if.end.975

if.else.966:                                      ; preds = %if.else.959
  %368 = load i32, i32* @zz_size, align 4
  %idxprom967 = sext i32 %368 to i64
  %arrayidx968 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom967
  %369 = load %union.rec*, %union.rec** %arrayidx968, align 8
  store %union.rec* %369, %union.rec** @zz_hold, align 8
  store %union.rec* %369, %union.rec** @zz_hold, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1969 = bitcast %union.rec* %370 to %struct.word_type*
  %olist970 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1969, i32 0, i32 0
  %arrayidx971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist970, i32 0, i64 0
  %opred972 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx971, i32 0, i32 0
  %371 = load %union.rec*, %union.rec** %opred972, align 8
  %372 = load i32, i32* @zz_size, align 4
  %idxprom973 = sext i32 %372 to i64
  %arrayidx974 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom973
  store %union.rec* %371, %union.rec** %arrayidx974, align 8
  br label %if.end.975

if.end.975:                                       ; preds = %if.else.966, %if.then.964
  br label %if.end.976

if.end.976:                                       ; preds = %if.end.975, %if.then.957
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1977 = bitcast %union.rec* %373 to %struct.word_type*
  %ou1978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1977, i32 0, i32 1
  %os11979 = bitcast %union.FIRST_UNION* %ou1978 to %struct.anon*
  %otype980 = getelementptr inbounds %struct.anon, %struct.anon* %os11979, i32 0, i32 0
  store i8 0, i8* %otype980, align 1
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1981 = bitcast %union.rec* %375 to %struct.word_type*
  %olist982 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1981, i32 0, i32 0
  %arrayidx983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist982, i32 0, i64 1
  %osucc984 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx983, i32 0, i32 1
  store %union.rec* %374, %union.rec** %osucc984, align 8
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1985 = bitcast %union.rec* %376 to %struct.word_type*
  %olist986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1985, i32 0, i32 0
  %arrayidx987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist986, i32 0, i64 1
  %opred988 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx987, i32 0, i32 0
  store %union.rec* %374, %union.rec** %opred988, align 8
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1989 = bitcast %union.rec* %377 to %struct.word_type*
  %olist990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1989, i32 0, i32 0
  %arrayidx991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist990, i32 0, i64 0
  %osucc992 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx991, i32 0, i32 1
  store %union.rec* %374, %union.rec** %osucc992, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1993 = bitcast %union.rec* %378 to %struct.word_type*
  %olist994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1993, i32 0, i32 0
  %arrayidx995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist994, i32 0, i64 0
  %opred996 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx995, i32 0, i32 0
  store %union.rec* %374, %union.rec** %opred996, align 8
  store %union.rec* %374, %union.rec** @xx_link, align 8
  %379 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %379, %union.rec** @zz_res, align 8
  %380 = load %union.rec*, %union.rec** %new_s1, align 8
  store %union.rec* %380, %union.rec** @zz_hold, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp997 = icmp eq %union.rec* %381, null
  br i1 %cmp997, label %cond.true.999, label %cond.false.1000

cond.true.999:                                    ; preds = %if.end.976
  %382 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1035

cond.false.1000:                                  ; preds = %if.end.976
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1001 = icmp eq %union.rec* %383, null
  br i1 %cmp1001, label %cond.true.1003, label %cond.false.1004

cond.true.1003:                                   ; preds = %cond.false.1000
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1033

cond.false.1004:                                  ; preds = %cond.false.1000
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11005 = bitcast %union.rec* %385 to %struct.word_type*
  %olist1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11005, i32 0, i32 0
  %arrayidx1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1006, i32 0, i64 0
  %opred1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1007, i32 0, i32 0
  %386 = load %union.rec*, %union.rec** %opred1008, align 8
  store %union.rec* %386, %union.rec** @zz_tmp, align 8
  %387 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11009 = bitcast %union.rec* %387 to %struct.word_type*
  %olist1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11009, i32 0, i32 0
  %arrayidx1011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1010, i32 0, i64 0
  %opred1012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1011, i32 0, i32 0
  %388 = load %union.rec*, %union.rec** %opred1012, align 8
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11013 = bitcast %union.rec* %389 to %struct.word_type*
  %olist1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11013, i32 0, i32 0
  %arrayidx1015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1014, i32 0, i64 0
  %opred1016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1015, i32 0, i32 0
  store %union.rec* %388, %union.rec** %opred1016, align 8
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %391 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11017 = bitcast %union.rec* %391 to %struct.word_type*
  %olist1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11017, i32 0, i32 0
  %arrayidx1019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1018, i32 0, i64 0
  %opred1020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1019, i32 0, i32 0
  %392 = load %union.rec*, %union.rec** %opred1020, align 8
  %os11021 = bitcast %union.rec* %392 to %struct.word_type*
  %olist1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 0
  %arrayidx1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1022, i32 0, i64 0
  %osucc1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1023, i32 0, i32 1
  store %union.rec* %390, %union.rec** %osucc1024, align 8
  %393 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %394 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11025 = bitcast %union.rec* %394 to %struct.word_type*
  %olist1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11025, i32 0, i32 0
  %arrayidx1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1026, i32 0, i64 0
  %opred1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1027, i32 0, i32 0
  store %union.rec* %393, %union.rec** %opred1028, align 8
  %395 = load %union.rec*, %union.rec** @zz_res, align 8
  %396 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11029 = bitcast %union.rec* %396 to %struct.word_type*
  %olist1030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 0
  %arrayidx1031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1030, i32 0, i64 0
  %osucc1032 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1031, i32 0, i32 1
  store %union.rec* %395, %union.rec** %osucc1032, align 8
  br label %cond.end.1033

cond.end.1033:                                    ; preds = %cond.false.1004, %cond.true.1003
  %cond1034 = phi %union.rec* [ %384, %cond.true.1003 ], [ %395, %cond.false.1004 ]
  br label %cond.end.1035

cond.end.1035:                                    ; preds = %cond.end.1033, %cond.true.999
  %cond1036 = phi %union.rec* [ %382, %cond.true.999 ], [ %cond1034, %cond.end.1033 ]
  %397 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %397, %union.rec** @zz_res, align 8
  %398 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %398, %union.rec** @zz_hold, align 8
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1037 = icmp eq %union.rec* %399, null
  br i1 %cmp1037, label %cond.true.1039, label %cond.false.1040

cond.true.1039:                                   ; preds = %cond.end.1035
  %400 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1075

cond.false.1040:                                  ; preds = %cond.end.1035
  %401 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1041 = icmp eq %union.rec* %401, null
  br i1 %cmp1041, label %cond.true.1043, label %cond.false.1044

cond.true.1043:                                   ; preds = %cond.false.1040
  %402 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1073

cond.false.1044:                                  ; preds = %cond.false.1040
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11045 = bitcast %union.rec* %403 to %struct.word_type*
  %olist1046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11045, i32 0, i32 0
  %arrayidx1047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1046, i32 0, i64 1
  %opred1048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1047, i32 0, i32 0
  %404 = load %union.rec*, %union.rec** %opred1048, align 8
  store %union.rec* %404, %union.rec** @zz_tmp, align 8
  %405 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11049 = bitcast %union.rec* %405 to %struct.word_type*
  %olist1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11049, i32 0, i32 0
  %arrayidx1051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1050, i32 0, i64 1
  %opred1052 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1051, i32 0, i32 0
  %406 = load %union.rec*, %union.rec** %opred1052, align 8
  %407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11053 = bitcast %union.rec* %407 to %struct.word_type*
  %olist1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11053, i32 0, i32 0
  %arrayidx1055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1054, i32 0, i64 1
  %opred1056 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1055, i32 0, i32 0
  store %union.rec* %406, %union.rec** %opred1056, align 8
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %409 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11057 = bitcast %union.rec* %409 to %struct.word_type*
  %olist1058 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11057, i32 0, i32 0
  %arrayidx1059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1058, i32 0, i64 1
  %opred1060 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1059, i32 0, i32 0
  %410 = load %union.rec*, %union.rec** %opred1060, align 8
  %os11061 = bitcast %union.rec* %410 to %struct.word_type*
  %olist1062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11061, i32 0, i32 0
  %arrayidx1063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1062, i32 0, i64 1
  %osucc1064 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1063, i32 0, i32 1
  store %union.rec* %408, %union.rec** %osucc1064, align 8
  %411 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %412 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11065 = bitcast %union.rec* %412 to %struct.word_type*
  %olist1066 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11065, i32 0, i32 0
  %arrayidx1067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1066, i32 0, i64 1
  %opred1068 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1067, i32 0, i32 0
  store %union.rec* %411, %union.rec** %opred1068, align 8
  %413 = load %union.rec*, %union.rec** @zz_res, align 8
  %414 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11069 = bitcast %union.rec* %414 to %struct.word_type*
  %olist1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11069, i32 0, i32 0
  %arrayidx1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1070, i32 0, i64 1
  %osucc1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1071, i32 0, i32 1
  store %union.rec* %413, %union.rec** %osucc1072, align 8
  br label %cond.end.1073

cond.end.1073:                                    ; preds = %cond.false.1044, %cond.true.1043
  %cond1074 = phi %union.rec* [ %402, %cond.true.1043 ], [ %413, %cond.false.1044 ]
  br label %cond.end.1075

cond.end.1075:                                    ; preds = %cond.end.1073, %cond.true.1039
  %cond1076 = phi %union.rec* [ %400, %cond.true.1039 ], [ %cond1074, %cond.end.1073 ]
  br label %if.end.1202

if.else.1077:                                     ; preds = %if.end.674
  %415 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1078 = zext i8 %415 to i32
  store i32 %conv1078, i32* @zz_size, align 4
  %conv1079 = sext i32 %conv1078 to i64
  %cmp1080 = icmp uge i64 %conv1079, 265
  br i1 %cmp1080, label %if.then.1082, label %if.else.1084

if.then.1082:                                     ; preds = %if.else.1077
  %416 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1083 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %416)
  br label %if.end.1101

if.else.1084:                                     ; preds = %if.else.1077
  %417 = load i32, i32* @zz_size, align 4
  %idxprom1085 = sext i32 %417 to i64
  %arrayidx1086 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1085
  %418 = load %union.rec*, %union.rec** %arrayidx1086, align 8
  %cmp1087 = icmp eq %union.rec* %418, null
  br i1 %cmp1087, label %if.then.1089, label %if.else.1091

if.then.1089:                                     ; preds = %if.else.1084
  %419 = load i32, i32* @zz_size, align 4
  %420 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1090 = call %union.rec* @GetMemory(i32 %419, %struct.FILE_POS* %420)
  store %union.rec* %call1090, %union.rec** @zz_hold, align 8
  br label %if.end.1100

if.else.1091:                                     ; preds = %if.else.1084
  %421 = load i32, i32* @zz_size, align 4
  %idxprom1092 = sext i32 %421 to i64
  %arrayidx1093 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1092
  %422 = load %union.rec*, %union.rec** %arrayidx1093, align 8
  store %union.rec* %422, %union.rec** @zz_hold, align 8
  store %union.rec* %422, %union.rec** @zz_hold, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11094 = bitcast %union.rec* %423 to %struct.word_type*
  %olist1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11094, i32 0, i32 0
  %arrayidx1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1095, i32 0, i64 0
  %opred1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1096, i32 0, i32 0
  %424 = load %union.rec*, %union.rec** %opred1097, align 8
  %425 = load i32, i32* @zz_size, align 4
  %idxprom1098 = sext i32 %425 to i64
  %arrayidx1099 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1098
  store %union.rec* %424, %union.rec** %arrayidx1099, align 8
  br label %if.end.1100

if.end.1100:                                      ; preds = %if.else.1091, %if.then.1089
  br label %if.end.1101

if.end.1101:                                      ; preds = %if.end.1100, %if.then.1082
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11102 = bitcast %union.rec* %426 to %struct.word_type*
  %ou11103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11102, i32 0, i32 1
  %os111104 = bitcast %union.FIRST_UNION* %ou11103 to %struct.anon*
  %otype1105 = getelementptr inbounds %struct.anon, %struct.anon* %os111104, i32 0, i32 0
  store i8 0, i8* %otype1105, align 1
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11106 = bitcast %union.rec* %428 to %struct.word_type*
  %olist1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11106, i32 0, i32 0
  %arrayidx1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1107, i32 0, i64 1
  %osucc1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1108, i32 0, i32 1
  store %union.rec* %427, %union.rec** %osucc1109, align 8
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11110 = bitcast %union.rec* %429 to %struct.word_type*
  %olist1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11110, i32 0, i32 0
  %arrayidx1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1111, i32 0, i64 1
  %opred1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1112, i32 0, i32 0
  store %union.rec* %427, %union.rec** %opred1113, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11114 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11114, i32 0, i32 0
  %arrayidx1116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1115, i32 0, i64 0
  %osucc1117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1116, i32 0, i32 1
  store %union.rec* %427, %union.rec** %osucc1117, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11118 = bitcast %union.rec* %431 to %struct.word_type*
  %olist1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11118, i32 0, i32 0
  %arrayidx1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1119, i32 0, i64 0
  %opred1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1120, i32 0, i32 0
  store %union.rec* %427, %union.rec** %opred1121, align 8
  store %union.rec* %427, %union.rec** @xx_link, align 8
  %432 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %432, %union.rec** @zz_res, align 8
  %433 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %433, %union.rec** @zz_hold, align 8
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1122 = icmp eq %union.rec* %434, null
  br i1 %cmp1122, label %cond.true.1124, label %cond.false.1125

cond.true.1124:                                   ; preds = %if.end.1101
  %435 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1160

cond.false.1125:                                  ; preds = %if.end.1101
  %436 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1126 = icmp eq %union.rec* %436, null
  br i1 %cmp1126, label %cond.true.1128, label %cond.false.1129

cond.true.1128:                                   ; preds = %cond.false.1125
  %437 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1158

cond.false.1129:                                  ; preds = %cond.false.1125
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11130 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11130, i32 0, i32 0
  %arrayidx1132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1131, i32 0, i64 0
  %opred1133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1132, i32 0, i32 0
  %439 = load %union.rec*, %union.rec** %opred1133, align 8
  store %union.rec* %439, %union.rec** @zz_tmp, align 8
  %440 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11134 = bitcast %union.rec* %440 to %struct.word_type*
  %olist1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11134, i32 0, i32 0
  %arrayidx1136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1135, i32 0, i64 0
  %opred1137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1136, i32 0, i32 0
  %441 = load %union.rec*, %union.rec** %opred1137, align 8
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11138 = bitcast %union.rec* %442 to %struct.word_type*
  %olist1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11138, i32 0, i32 0
  %arrayidx1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1139, i32 0, i64 0
  %opred1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1140, i32 0, i32 0
  store %union.rec* %441, %union.rec** %opred1141, align 8
  %443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %444 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11142 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11142, i32 0, i32 0
  %arrayidx1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1143, i32 0, i64 0
  %opred1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1144, i32 0, i32 0
  %445 = load %union.rec*, %union.rec** %opred1145, align 8
  %os11146 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11146, i32 0, i32 0
  %arrayidx1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1147, i32 0, i64 0
  %osucc1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1148, i32 0, i32 1
  store %union.rec* %443, %union.rec** %osucc1149, align 8
  %446 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %447 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11150 = bitcast %union.rec* %447 to %struct.word_type*
  %olist1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11150, i32 0, i32 0
  %arrayidx1152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1151, i32 0, i64 0
  %opred1153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1152, i32 0, i32 0
  store %union.rec* %446, %union.rec** %opred1153, align 8
  %448 = load %union.rec*, %union.rec** @zz_res, align 8
  %449 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11154 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11154, i32 0, i32 0
  %arrayidx1156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1155, i32 0, i64 0
  %osucc1157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1156, i32 0, i32 1
  store %union.rec* %448, %union.rec** %osucc1157, align 8
  br label %cond.end.1158

cond.end.1158:                                    ; preds = %cond.false.1129, %cond.true.1128
  %cond1159 = phi %union.rec* [ %437, %cond.true.1128 ], [ %448, %cond.false.1129 ]
  br label %cond.end.1160

cond.end.1160:                                    ; preds = %cond.end.1158, %cond.true.1124
  %cond1161 = phi %union.rec* [ %435, %cond.true.1124 ], [ %cond1159, %cond.end.1158 ]
  %450 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %450, %union.rec** @zz_res, align 8
  %451 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %451, %union.rec** @zz_hold, align 8
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1162 = icmp eq %union.rec* %452, null
  br i1 %cmp1162, label %cond.true.1164, label %cond.false.1165

cond.true.1164:                                   ; preds = %cond.end.1160
  %453 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1200

cond.false.1165:                                  ; preds = %cond.end.1160
  %454 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1166 = icmp eq %union.rec* %454, null
  br i1 %cmp1166, label %cond.true.1168, label %cond.false.1169

cond.true.1168:                                   ; preds = %cond.false.1165
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1198

cond.false.1169:                                  ; preds = %cond.false.1165
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11170 = bitcast %union.rec* %456 to %struct.word_type*
  %olist1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11170, i32 0, i32 0
  %arrayidx1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1171, i32 0, i64 1
  %opred1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1172, i32 0, i32 0
  %457 = load %union.rec*, %union.rec** %opred1173, align 8
  store %union.rec* %457, %union.rec** @zz_tmp, align 8
  %458 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11174 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11174, i32 0, i32 0
  %arrayidx1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1175, i32 0, i64 1
  %opred1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1176, i32 0, i32 0
  %459 = load %union.rec*, %union.rec** %opred1177, align 8
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11178 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11178, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1179, i32 0, i64 1
  %opred1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1180, i32 0, i32 0
  store %union.rec* %459, %union.rec** %opred1181, align 8
  %461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %462 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11182 = bitcast %union.rec* %462 to %struct.word_type*
  %olist1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11182, i32 0, i32 0
  %arrayidx1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1183, i32 0, i64 1
  %opred1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1184, i32 0, i32 0
  %463 = load %union.rec*, %union.rec** %opred1185, align 8
  %os11186 = bitcast %union.rec* %463 to %struct.word_type*
  %olist1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11186, i32 0, i32 0
  %arrayidx1188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1187, i32 0, i64 1
  %osucc1189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1188, i32 0, i32 1
  store %union.rec* %461, %union.rec** %osucc1189, align 8
  %464 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %465 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11190 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11190, i32 0, i32 0
  %arrayidx1192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1191, i32 0, i64 1
  %opred1193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1192, i32 0, i32 0
  store %union.rec* %464, %union.rec** %opred1193, align 8
  %466 = load %union.rec*, %union.rec** @zz_res, align 8
  %467 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11194 = bitcast %union.rec* %467 to %struct.word_type*
  %olist1195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11194, i32 0, i32 0
  %arrayidx1196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1195, i32 0, i64 1
  %osucc1197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1196, i32 0, i32 1
  store %union.rec* %466, %union.rec** %osucc1197, align 8
  br label %cond.end.1198

cond.end.1198:                                    ; preds = %cond.false.1169, %cond.true.1168
  %cond1199 = phi %union.rec* [ %455, %cond.true.1168 ], [ %466, %cond.false.1169 ]
  br label %cond.end.1200

cond.end.1200:                                    ; preds = %cond.end.1198, %cond.true.1164
  %cond1201 = phi %union.rec* [ %453, %cond.true.1164 ], [ %cond1199, %cond.end.1198 ]
  br label %if.end.1202

if.end.1202:                                      ; preds = %cond.end.1200, %cond.end.1075
  %468 = load %union.rec*, %union.rec** %sh, align 8
  %469 = load %union.rec*, %union.rec** %replace.addr, align 8
  %cmp1203 = icmp eq %union.rec* %468, %469
  br i1 %cmp1203, label %if.then.1205, label %if.else.1226

if.then.1205:                                     ; preds = %if.end.1202
  %470 = load %union.rec*, %union.rec** %nxt.addr, align 8
  store %union.rec* %470, %union.rec** %new_sh, align 8
  %471 = load %union.rec*, %union.rec** %s2, align 8
  %os11206 = bitcast %union.rec* %471 to %struct.word_type*
  %ou31207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11206, i32 0, i32 3
  %os311208 = bitcast %union.THIRD_UNION* %ou31207 to %struct.anon.6*
  %oback1209 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311208, i32 0, i32 0
  %arrayidx1210 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1209, i32 0, i64 0
  %472 = load i32, i32* %arrayidx1210, align 4
  %473 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11211 = bitcast %union.rec* %473 to %struct.word_type*
  %ou31212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11211, i32 0, i32 3
  %os311213 = bitcast %union.THIRD_UNION* %ou31212 to %struct.anon.6*
  %oback1214 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311213, i32 0, i32 0
  %arrayidx1215 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1214, i32 0, i64 0
  store i32 %472, i32* %arrayidx1215, align 4
  %474 = load %union.rec*, %union.rec** %s2, align 8
  %os11216 = bitcast %union.rec* %474 to %struct.word_type*
  %ou31217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11216, i32 0, i32 3
  %os311218 = bitcast %union.THIRD_UNION* %ou31217 to %struct.anon.6*
  %ofwd1219 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311218, i32 0, i32 1
  %arrayidx1220 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1219, i32 0, i64 0
  %475 = load i32, i32* %arrayidx1220, align 4
  %476 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11221 = bitcast %union.rec* %476 to %struct.word_type*
  %ou31222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11221, i32 0, i32 3
  %os311223 = bitcast %union.THIRD_UNION* %ou31222 to %struct.anon.6*
  %ofwd1224 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311223, i32 0, i32 1
  %arrayidx1225 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1224, i32 0, i64 0
  store i32 %475, i32* %arrayidx1225, align 4
  br label %if.end.1518

if.else.1226:                                     ; preds = %if.end.1202
  %477 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %conv1227 = zext i8 %477 to i32
  store i32 %conv1227, i32* @zz_size, align 4
  %conv1228 = sext i32 %conv1227 to i64
  %cmp1229 = icmp uge i64 %conv1228, 265
  br i1 %cmp1229, label %if.then.1231, label %if.else.1233

if.then.1231:                                     ; preds = %if.else.1226
  %478 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1232 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %478)
  br label %if.end.1250

if.else.1233:                                     ; preds = %if.else.1226
  %479 = load i32, i32* @zz_size, align 4
  %idxprom1234 = sext i32 %479 to i64
  %arrayidx1235 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1234
  %480 = load %union.rec*, %union.rec** %arrayidx1235, align 8
  %cmp1236 = icmp eq %union.rec* %480, null
  br i1 %cmp1236, label %if.then.1238, label %if.else.1240

if.then.1238:                                     ; preds = %if.else.1233
  %481 = load i32, i32* @zz_size, align 4
  %482 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1239 = call %union.rec* @GetMemory(i32 %481, %struct.FILE_POS* %482)
  store %union.rec* %call1239, %union.rec** @zz_hold, align 8
  br label %if.end.1249

if.else.1240:                                     ; preds = %if.else.1233
  %483 = load i32, i32* @zz_size, align 4
  %idxprom1241 = sext i32 %483 to i64
  %arrayidx1242 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1241
  %484 = load %union.rec*, %union.rec** %arrayidx1242, align 8
  store %union.rec* %484, %union.rec** @zz_hold, align 8
  store %union.rec* %484, %union.rec** @zz_hold, align 8
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11243 = bitcast %union.rec* %485 to %struct.word_type*
  %olist1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11243, i32 0, i32 0
  %arrayidx1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1244, i32 0, i64 0
  %opred1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1245, i32 0, i32 0
  %486 = load %union.rec*, %union.rec** %opred1246, align 8
  %487 = load i32, i32* @zz_size, align 4
  %idxprom1247 = sext i32 %487 to i64
  %arrayidx1248 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1247
  store %union.rec* %486, %union.rec** %arrayidx1248, align 8
  br label %if.end.1249

if.end.1249:                                      ; preds = %if.else.1240, %if.then.1238
  br label %if.end.1250

if.end.1250:                                      ; preds = %if.end.1249, %if.then.1231
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11251 = bitcast %union.rec* %488 to %struct.word_type*
  %ou11252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11251, i32 0, i32 1
  %os111253 = bitcast %union.FIRST_UNION* %ou11252 to %struct.anon*
  %otype1254 = getelementptr inbounds %struct.anon, %struct.anon* %os111253, i32 0, i32 0
  store i8 26, i8* %otype1254, align 1
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11255 = bitcast %union.rec* %490 to %struct.word_type*
  %olist1256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11255, i32 0, i32 0
  %arrayidx1257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1256, i32 0, i64 1
  %osucc1258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1257, i32 0, i32 1
  store %union.rec* %489, %union.rec** %osucc1258, align 8
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11259 = bitcast %union.rec* %491 to %struct.word_type*
  %olist1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11259, i32 0, i32 0
  %arrayidx1261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1260, i32 0, i64 1
  %opred1262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1261, i32 0, i32 0
  store %union.rec* %489, %union.rec** %opred1262, align 8
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11263 = bitcast %union.rec* %492 to %struct.word_type*
  %olist1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11263, i32 0, i32 0
  %arrayidx1265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1264, i32 0, i64 0
  %osucc1266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1265, i32 0, i32 1
  store %union.rec* %489, %union.rec** %osucc1266, align 8
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11267 = bitcast %union.rec* %493 to %struct.word_type*
  %olist1268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11267, i32 0, i32 0
  %arrayidx1269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1268, i32 0, i64 0
  %opred1270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1269, i32 0, i32 0
  store %union.rec* %489, %union.rec** %opred1270, align 8
  store %union.rec* %489, %union.rec** %new_sh, align 8
  %494 = load %union.rec*, %union.rec** %sh, align 8
  %os11272 = bitcast %union.rec* %494 to %struct.word_type*
  %ou11273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11272, i32 0, i32 1
  %ofpos1274 = bitcast %union.FIRST_UNION* %ou11273 to %struct.FILE_POS*
  %ofile_num1275 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1274, i32 0, i32 2
  %495 = load i16, i16* %ofile_num1275, align 2
  %496 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11276 = bitcast %union.rec* %496 to %struct.word_type*
  %ou11277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11276, i32 0, i32 1
  %ofpos1278 = bitcast %union.FIRST_UNION* %ou11277 to %struct.FILE_POS*
  %ofile_num1279 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1278, i32 0, i32 2
  store i16 %495, i16* %ofile_num1279, align 2
  %497 = load %union.rec*, %union.rec** %sh, align 8
  %os11280 = bitcast %union.rec* %497 to %struct.word_type*
  %ou11281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11280, i32 0, i32 1
  %ofpos1282 = bitcast %union.FIRST_UNION* %ou11281 to %struct.FILE_POS*
  %oline_num1283 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1282, i32 0, i32 3
  %bf.load1284 = load i32, i32* %oline_num1283, align 4
  %bf.clear1285 = and i32 %bf.load1284, 1048575
  %498 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11286 = bitcast %union.rec* %498 to %struct.word_type*
  %ou11287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11286, i32 0, i32 1
  %ofpos1288 = bitcast %union.FIRST_UNION* %ou11287 to %struct.FILE_POS*
  %oline_num1289 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1288, i32 0, i32 3
  %bf.load1290 = load i32, i32* %oline_num1289, align 4
  %bf.value1291 = and i32 %bf.clear1285, 1048575
  %bf.clear1292 = and i32 %bf.load1290, -1048576
  %bf.set1293 = or i32 %bf.clear1292, %bf.value1291
  store i32 %bf.set1293, i32* %oline_num1289, align 4
  %499 = load %union.rec*, %union.rec** %sh, align 8
  %os11294 = bitcast %union.rec* %499 to %struct.word_type*
  %ou11295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11294, i32 0, i32 1
  %ofpos1296 = bitcast %union.FIRST_UNION* %ou11295 to %struct.FILE_POS*
  %ocol_num1297 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1296, i32 0, i32 3
  %bf.load1298 = load i32, i32* %ocol_num1297, align 4
  %bf.lshr1299 = lshr i32 %bf.load1298, 20
  %500 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11300 = bitcast %union.rec* %500 to %struct.word_type*
  %ou11301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11300, i32 0, i32 1
  %ofpos1302 = bitcast %union.FIRST_UNION* %ou11301 to %struct.FILE_POS*
  %ocol_num1303 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1302, i32 0, i32 3
  %bf.load1304 = load i32, i32* %ocol_num1303, align 4
  %bf.value1305 = and i32 %bf.lshr1299, 4095
  %bf.shl1306 = shl i32 %bf.value1305, 20
  %bf.clear1307 = and i32 %bf.load1304, 1048575
  %bf.set1308 = or i32 %bf.clear1307, %bf.shl1306
  store i32 %bf.set1308, i32* %ocol_num1303, align 4
  %501 = load %union.rec*, %union.rec** %sh, align 8
  %os11309 = bitcast %union.rec* %501 to %struct.word_type*
  %ou31310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11309, i32 0, i32 3
  %os311311 = bitcast %union.THIRD_UNION* %ou31310 to %struct.anon.6*
  %oback1312 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311311, i32 0, i32 0
  %arrayidx1313 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1312, i32 0, i64 0
  %502 = load i32, i32* %arrayidx1313, align 4
  %503 = load %union.rec*, %union.rec** %new_sh, align 8
  %os2 = bitcast %union.rec* %503 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  store i32 %502, i32* %obc, align 4
  %504 = load %union.rec*, %union.rec** %sh, align 8
  %os11314 = bitcast %union.rec* %504 to %struct.word_type*
  %ou31315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11314, i32 0, i32 3
  %os311316 = bitcast %union.THIRD_UNION* %ou31315 to %struct.anon.6*
  %oback1317 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311316, i32 0, i32 0
  %arrayidx1318 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1317, i32 0, i64 0
  %505 = load i32, i32* %arrayidx1318, align 4
  %506 = load %union.rec*, %union.rec** %sh, align 8
  %os11319 = bitcast %union.rec* %506 to %struct.word_type*
  %ou31320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11319, i32 0, i32 3
  %os311321 = bitcast %union.THIRD_UNION* %ou31320 to %struct.anon.6*
  %ofwd1322 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311321, i32 0, i32 1
  %arrayidx1323 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1322, i32 0, i64 0
  %507 = load i32, i32* %arrayidx1323, align 4
  %add = add nsw i32 %505, %507
  %508 = load %union.rec*, %union.rec** %new_sh, align 8
  %os21324 = bitcast %union.rec* %508 to %struct.closure_type*
  %ou41325 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21324, i32 0, i32 4
  %oconstraint1326 = bitcast %union.FOURTH_UNION* %ou41325 to %struct.CONSTRAINT*
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1326, i32 0, i32 1
  store i32 %add, i32* %obfc, align 4
  %509 = load %union.rec*, %union.rec** %sh, align 8
  %os11327 = bitcast %union.rec* %509 to %struct.word_type*
  %ou31328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11327, i32 0, i32 3
  %os311329 = bitcast %union.THIRD_UNION* %ou31328 to %struct.anon.6*
  %ofwd1330 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311329, i32 0, i32 1
  %arrayidx1331 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1330, i32 0, i64 0
  %510 = load i32, i32* %arrayidx1331, align 4
  %511 = load %union.rec*, %union.rec** %new_sh, align 8
  %os21332 = bitcast %union.rec* %511 to %struct.closure_type*
  %ou41333 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21332, i32 0, i32 4
  %oconstraint1334 = bitcast %union.FOURTH_UNION* %ou41333 to %struct.CONSTRAINT*
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1334, i32 0, i32 2
  store i32 %510, i32* %ofc, align 4
  %512 = load %union.rec*, %union.rec** %sh, align 8
  %os11335 = bitcast %union.rec* %512 to %struct.word_type*
  %ou31336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11335, i32 0, i32 3
  %os311337 = bitcast %union.THIRD_UNION* %ou31336 to %struct.anon.6*
  %oback1338 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311337, i32 0, i32 0
  %arrayidx1339 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1338, i32 0, i64 0
  %513 = load i32, i32* %arrayidx1339, align 4
  %514 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11340 = bitcast %union.rec* %514 to %struct.word_type*
  %ou31341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11340, i32 0, i32 3
  %os311342 = bitcast %union.THIRD_UNION* %ou31341 to %struct.anon.6*
  %oback1343 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311342, i32 0, i32 0
  %arrayidx1344 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1343, i32 0, i64 0
  store i32 %513, i32* %arrayidx1344, align 4
  %515 = load %union.rec*, %union.rec** %sh, align 8
  %os11345 = bitcast %union.rec* %515 to %struct.word_type*
  %ou31346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11345, i32 0, i32 3
  %os311347 = bitcast %union.THIRD_UNION* %ou31346 to %struct.anon.6*
  %ofwd1348 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311347, i32 0, i32 1
  %arrayidx1349 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1348, i32 0, i64 0
  %516 = load i32, i32* %arrayidx1349, align 4
  %517 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11350 = bitcast %union.rec* %517 to %struct.word_type*
  %ou31351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11350, i32 0, i32 3
  %os311352 = bitcast %union.THIRD_UNION* %ou31351 to %struct.anon.6*
  %ofwd1353 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311352, i32 0, i32 1
  %arrayidx1354 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1353, i32 0, i64 0
  store i32 %516, i32* %arrayidx1354, align 4
  %518 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11355 = bitcast %union.rec* %518 to %struct.word_type*
  %ou31356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11355, i32 0, i32 3
  %os311357 = bitcast %union.THIRD_UNION* %ou31356 to %struct.anon.6*
  %ofwd1358 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311357, i32 0, i32 1
  %arrayidx1359 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1358, i32 0, i64 1
  store i32 0, i32* %arrayidx1359, align 4
  %519 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11360 = bitcast %union.rec* %519 to %struct.word_type*
  %ou31361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11360, i32 0, i32 3
  %os311362 = bitcast %union.THIRD_UNION* %ou31361 to %struct.anon.6*
  %oback1363 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311362, i32 0, i32 0
  %arrayidx1364 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1363, i32 0, i64 1
  store i32 0, i32* %arrayidx1364, align 4
  %520 = load %union.rec*, %union.rec** %sh, align 8
  %os11365 = bitcast %union.rec* %520 to %struct.word_type*
  %ou11366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11365, i32 0, i32 1
  %ofpos1367 = bitcast %union.FIRST_UNION* %ou11366 to %struct.FILE_POS*
  %call1368 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %struct.FILE_POS* %ofpos1367)
  store %union.rec* %call1368, %union.rec** %tmp, align 8
  %521 = load %union.rec*, %union.rec** %tmp, align 8
  %os11369 = bitcast %union.rec* %521 to %struct.word_type*
  %ou31370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11369, i32 0, i32 3
  %os311371 = bitcast %union.THIRD_UNION* %ou31370 to %struct.anon.6*
  %ofwd1372 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311371, i32 0, i32 1
  %arrayidx1373 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1372, i32 0, i64 0
  store i32 0, i32* %arrayidx1373, align 4
  %522 = load %union.rec*, %union.rec** %tmp, align 8
  %os11374 = bitcast %union.rec* %522 to %struct.word_type*
  %ou31375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11374, i32 0, i32 3
  %os311376 = bitcast %union.THIRD_UNION* %ou31375 to %struct.anon.6*
  %oback1377 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311376, i32 0, i32 0
  %arrayidx1378 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1377, i32 0, i64 0
  store i32 0, i32* %arrayidx1378, align 4
  %523 = load %union.rec*, %union.rec** %tmp, align 8
  %os11379 = bitcast %union.rec* %523 to %struct.word_type*
  %ou31380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11379, i32 0, i32 3
  %os311381 = bitcast %union.THIRD_UNION* %ou31380 to %struct.anon.6*
  %ofwd1382 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311381, i32 0, i32 1
  %arrayidx1383 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1382, i32 0, i64 1
  store i32 0, i32* %arrayidx1383, align 4
  %524 = load %union.rec*, %union.rec** %tmp, align 8
  %os11384 = bitcast %union.rec* %524 to %struct.word_type*
  %ou31385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11384, i32 0, i32 3
  %os311386 = bitcast %union.THIRD_UNION* %ou31385 to %struct.anon.6*
  %oback1387 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311386, i32 0, i32 0
  %arrayidx1388 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1387, i32 0, i64 1
  store i32 0, i32* %arrayidx1388, align 4
  %525 = load %union.rec*, %union.rec** %tmp, align 8
  %os11389 = bitcast %union.rec* %525 to %struct.word_type*
  %ou21390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11389, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou21390 to %struct.anon.1*
  %526 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load1391 = load i32, i32* %526, align 4
  %bf.clear1392 = and i32 %bf.load1391, -1610612737
  %bf.set1393 = or i32 %bf.clear1392, 536870912
  store i32 %bf.set1393, i32* %526, align 4
  %527 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1394 = zext i8 %527 to i32
  store i32 %conv1394, i32* @zz_size, align 4
  %conv1395 = sext i32 %conv1394 to i64
  %cmp1396 = icmp uge i64 %conv1395, 265
  br i1 %cmp1396, label %if.then.1398, label %if.else.1400

if.then.1398:                                     ; preds = %if.end.1250
  %528 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1399 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %528)
  br label %if.end.1417

if.else.1400:                                     ; preds = %if.end.1250
  %529 = load i32, i32* @zz_size, align 4
  %idxprom1401 = sext i32 %529 to i64
  %arrayidx1402 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1401
  %530 = load %union.rec*, %union.rec** %arrayidx1402, align 8
  %cmp1403 = icmp eq %union.rec* %530, null
  br i1 %cmp1403, label %if.then.1405, label %if.else.1407

if.then.1405:                                     ; preds = %if.else.1400
  %531 = load i32, i32* @zz_size, align 4
  %532 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1406 = call %union.rec* @GetMemory(i32 %531, %struct.FILE_POS* %532)
  store %union.rec* %call1406, %union.rec** @zz_hold, align 8
  br label %if.end.1416

if.else.1407:                                     ; preds = %if.else.1400
  %533 = load i32, i32* @zz_size, align 4
  %idxprom1408 = sext i32 %533 to i64
  %arrayidx1409 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1408
  %534 = load %union.rec*, %union.rec** %arrayidx1409, align 8
  store %union.rec* %534, %union.rec** @zz_hold, align 8
  store %union.rec* %534, %union.rec** @zz_hold, align 8
  %535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11410 = bitcast %union.rec* %535 to %struct.word_type*
  %olist1411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11410, i32 0, i32 0
  %arrayidx1412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1411, i32 0, i64 0
  %opred1413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1412, i32 0, i32 0
  %536 = load %union.rec*, %union.rec** %opred1413, align 8
  %537 = load i32, i32* @zz_size, align 4
  %idxprom1414 = sext i32 %537 to i64
  %arrayidx1415 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1414
  store %union.rec* %536, %union.rec** %arrayidx1415, align 8
  br label %if.end.1416

if.end.1416:                                      ; preds = %if.else.1407, %if.then.1405
  br label %if.end.1417

if.end.1417:                                      ; preds = %if.end.1416, %if.then.1398
  %538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11418 = bitcast %union.rec* %538 to %struct.word_type*
  %ou11419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11418, i32 0, i32 1
  %os111420 = bitcast %union.FIRST_UNION* %ou11419 to %struct.anon*
  %otype1421 = getelementptr inbounds %struct.anon, %struct.anon* %os111420, i32 0, i32 0
  store i8 0, i8* %otype1421, align 1
  %539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11422 = bitcast %union.rec* %540 to %struct.word_type*
  %olist1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11422, i32 0, i32 0
  %arrayidx1424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1423, i32 0, i64 1
  %osucc1425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1424, i32 0, i32 1
  store %union.rec* %539, %union.rec** %osucc1425, align 8
  %541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11426 = bitcast %union.rec* %541 to %struct.word_type*
  %olist1427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11426, i32 0, i32 0
  %arrayidx1428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1427, i32 0, i64 1
  %opred1429 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1428, i32 0, i32 0
  store %union.rec* %539, %union.rec** %opred1429, align 8
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11430 = bitcast %union.rec* %542 to %struct.word_type*
  %olist1431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11430, i32 0, i32 0
  %arrayidx1432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1431, i32 0, i64 0
  %osucc1433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1432, i32 0, i32 1
  store %union.rec* %539, %union.rec** %osucc1433, align 8
  %543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11434 = bitcast %union.rec* %543 to %struct.word_type*
  %olist1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11434, i32 0, i32 0
  %arrayidx1436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1435, i32 0, i64 0
  %opred1437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1436, i32 0, i32 0
  store %union.rec* %539, %union.rec** %opred1437, align 8
  store %union.rec* %539, %union.rec** @xx_link, align 8
  %544 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %544, %union.rec** @zz_res, align 8
  %545 = load %union.rec*, %union.rec** %new_sh, align 8
  store %union.rec* %545, %union.rec** @zz_hold, align 8
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1438 = icmp eq %union.rec* %546, null
  br i1 %cmp1438, label %cond.true.1440, label %cond.false.1441

cond.true.1440:                                   ; preds = %if.end.1417
  %547 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1476

cond.false.1441:                                  ; preds = %if.end.1417
  %548 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1442 = icmp eq %union.rec* %548, null
  br i1 %cmp1442, label %cond.true.1444, label %cond.false.1445

cond.true.1444:                                   ; preds = %cond.false.1441
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1474

cond.false.1445:                                  ; preds = %cond.false.1441
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11446 = bitcast %union.rec* %550 to %struct.word_type*
  %olist1447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11446, i32 0, i32 0
  %arrayidx1448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1447, i32 0, i64 0
  %opred1449 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1448, i32 0, i32 0
  %551 = load %union.rec*, %union.rec** %opred1449, align 8
  store %union.rec* %551, %union.rec** @zz_tmp, align 8
  %552 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11450 = bitcast %union.rec* %552 to %struct.word_type*
  %olist1451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11450, i32 0, i32 0
  %arrayidx1452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1451, i32 0, i64 0
  %opred1453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1452, i32 0, i32 0
  %553 = load %union.rec*, %union.rec** %opred1453, align 8
  %554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11454 = bitcast %union.rec* %554 to %struct.word_type*
  %olist1455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11454, i32 0, i32 0
  %arrayidx1456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1455, i32 0, i64 0
  %opred1457 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1456, i32 0, i32 0
  store %union.rec* %553, %union.rec** %opred1457, align 8
  %555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %556 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11458 = bitcast %union.rec* %556 to %struct.word_type*
  %olist1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11458, i32 0, i32 0
  %arrayidx1460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1459, i32 0, i64 0
  %opred1461 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1460, i32 0, i32 0
  %557 = load %union.rec*, %union.rec** %opred1461, align 8
  %os11462 = bitcast %union.rec* %557 to %struct.word_type*
  %olist1463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11462, i32 0, i32 0
  %arrayidx1464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1463, i32 0, i64 0
  %osucc1465 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1464, i32 0, i32 1
  store %union.rec* %555, %union.rec** %osucc1465, align 8
  %558 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %559 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11466 = bitcast %union.rec* %559 to %struct.word_type*
  %olist1467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11466, i32 0, i32 0
  %arrayidx1468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1467, i32 0, i64 0
  %opred1469 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1468, i32 0, i32 0
  store %union.rec* %558, %union.rec** %opred1469, align 8
  %560 = load %union.rec*, %union.rec** @zz_res, align 8
  %561 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11470 = bitcast %union.rec* %561 to %struct.word_type*
  %olist1471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11470, i32 0, i32 0
  %arrayidx1472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1471, i32 0, i64 0
  %osucc1473 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1472, i32 0, i32 1
  store %union.rec* %560, %union.rec** %osucc1473, align 8
  br label %cond.end.1474

cond.end.1474:                                    ; preds = %cond.false.1445, %cond.true.1444
  %cond1475 = phi %union.rec* [ %549, %cond.true.1444 ], [ %560, %cond.false.1445 ]
  br label %cond.end.1476

cond.end.1476:                                    ; preds = %cond.end.1474, %cond.true.1440
  %cond1477 = phi %union.rec* [ %547, %cond.true.1440 ], [ %cond1475, %cond.end.1474 ]
  %562 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %562, %union.rec** @zz_res, align 8
  %563 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %563, %union.rec** @zz_hold, align 8
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1478 = icmp eq %union.rec* %564, null
  br i1 %cmp1478, label %cond.true.1480, label %cond.false.1481

cond.true.1480:                                   ; preds = %cond.end.1476
  %565 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1516

cond.false.1481:                                  ; preds = %cond.end.1476
  %566 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1482 = icmp eq %union.rec* %566, null
  br i1 %cmp1482, label %cond.true.1484, label %cond.false.1485

cond.true.1484:                                   ; preds = %cond.false.1481
  %567 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1514

cond.false.1485:                                  ; preds = %cond.false.1481
  %568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11486 = bitcast %union.rec* %568 to %struct.word_type*
  %olist1487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11486, i32 0, i32 0
  %arrayidx1488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1487, i32 0, i64 1
  %opred1489 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1488, i32 0, i32 0
  %569 = load %union.rec*, %union.rec** %opred1489, align 8
  store %union.rec* %569, %union.rec** @zz_tmp, align 8
  %570 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11490 = bitcast %union.rec* %570 to %struct.word_type*
  %olist1491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11490, i32 0, i32 0
  %arrayidx1492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1491, i32 0, i64 1
  %opred1493 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1492, i32 0, i32 0
  %571 = load %union.rec*, %union.rec** %opred1493, align 8
  %572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11494 = bitcast %union.rec* %572 to %struct.word_type*
  %olist1495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11494, i32 0, i32 0
  %arrayidx1496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1495, i32 0, i64 1
  %opred1497 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1496, i32 0, i32 0
  store %union.rec* %571, %union.rec** %opred1497, align 8
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %574 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11498 = bitcast %union.rec* %574 to %struct.word_type*
  %olist1499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11498, i32 0, i32 0
  %arrayidx1500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1499, i32 0, i64 1
  %opred1501 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1500, i32 0, i32 0
  %575 = load %union.rec*, %union.rec** %opred1501, align 8
  %os11502 = bitcast %union.rec* %575 to %struct.word_type*
  %olist1503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11502, i32 0, i32 0
  %arrayidx1504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1503, i32 0, i64 1
  %osucc1505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1504, i32 0, i32 1
  store %union.rec* %573, %union.rec** %osucc1505, align 8
  %576 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %577 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11506 = bitcast %union.rec* %577 to %struct.word_type*
  %olist1507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11506, i32 0, i32 0
  %arrayidx1508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1507, i32 0, i64 1
  %opred1509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1508, i32 0, i32 0
  store %union.rec* %576, %union.rec** %opred1509, align 8
  %578 = load %union.rec*, %union.rec** @zz_res, align 8
  %579 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11510 = bitcast %union.rec* %579 to %struct.word_type*
  %olist1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11510, i32 0, i32 0
  %arrayidx1512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1511, i32 0, i64 1
  %osucc1513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1512, i32 0, i32 1
  store %union.rec* %578, %union.rec** %osucc1513, align 8
  br label %cond.end.1514

cond.end.1514:                                    ; preds = %cond.false.1485, %cond.true.1484
  %cond1515 = phi %union.rec* [ %567, %cond.true.1484 ], [ %578, %cond.false.1485 ]
  br label %cond.end.1516

cond.end.1516:                                    ; preds = %cond.end.1514, %cond.true.1480
  %cond1517 = phi %union.rec* [ %565, %cond.true.1480 ], [ %cond1515, %cond.end.1514 ]
  br label %if.end.1518

if.end.1518:                                      ; preds = %cond.end.1516, %if.then.1205
  %580 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1519 = zext i8 %580 to i32
  store i32 %conv1519, i32* @zz_size, align 4
  %conv1520 = sext i32 %conv1519 to i64
  %cmp1521 = icmp uge i64 %conv1520, 265
  br i1 %cmp1521, label %if.then.1523, label %if.else.1525

if.then.1523:                                     ; preds = %if.end.1518
  %581 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1524 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %581)
  br label %if.end.1542

if.else.1525:                                     ; preds = %if.end.1518
  %582 = load i32, i32* @zz_size, align 4
  %idxprom1526 = sext i32 %582 to i64
  %arrayidx1527 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1526
  %583 = load %union.rec*, %union.rec** %arrayidx1527, align 8
  %cmp1528 = icmp eq %union.rec* %583, null
  br i1 %cmp1528, label %if.then.1530, label %if.else.1532

if.then.1530:                                     ; preds = %if.else.1525
  %584 = load i32, i32* @zz_size, align 4
  %585 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1531 = call %union.rec* @GetMemory(i32 %584, %struct.FILE_POS* %585)
  store %union.rec* %call1531, %union.rec** @zz_hold, align 8
  br label %if.end.1541

if.else.1532:                                     ; preds = %if.else.1525
  %586 = load i32, i32* @zz_size, align 4
  %idxprom1533 = sext i32 %586 to i64
  %arrayidx1534 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1533
  %587 = load %union.rec*, %union.rec** %arrayidx1534, align 8
  store %union.rec* %587, %union.rec** @zz_hold, align 8
  store %union.rec* %587, %union.rec** @zz_hold, align 8
  %588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11535 = bitcast %union.rec* %588 to %struct.word_type*
  %olist1536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11535, i32 0, i32 0
  %arrayidx1537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1536, i32 0, i64 0
  %opred1538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1537, i32 0, i32 0
  %589 = load %union.rec*, %union.rec** %opred1538, align 8
  %590 = load i32, i32* @zz_size, align 4
  %idxprom1539 = sext i32 %590 to i64
  %arrayidx1540 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1539
  store %union.rec* %589, %union.rec** %arrayidx1540, align 8
  br label %if.end.1541

if.end.1541:                                      ; preds = %if.else.1532, %if.then.1530
  br label %if.end.1542

if.end.1542:                                      ; preds = %if.end.1541, %if.then.1523
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11543 = bitcast %union.rec* %591 to %struct.word_type*
  %ou11544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11543, i32 0, i32 1
  %os111545 = bitcast %union.FIRST_UNION* %ou11544 to %struct.anon*
  %otype1546 = getelementptr inbounds %struct.anon, %struct.anon* %os111545, i32 0, i32 0
  store i8 0, i8* %otype1546, align 1
  %592 = load %union.rec*, %union.rec** @zz_hold, align 8
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11547 = bitcast %union.rec* %593 to %struct.word_type*
  %olist1548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11547, i32 0, i32 0
  %arrayidx1549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1548, i32 0, i64 1
  %osucc1550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1549, i32 0, i32 1
  store %union.rec* %592, %union.rec** %osucc1550, align 8
  %594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11551 = bitcast %union.rec* %594 to %struct.word_type*
  %olist1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11551, i32 0, i32 0
  %arrayidx1553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1552, i32 0, i64 1
  %opred1554 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1553, i32 0, i32 0
  store %union.rec* %592, %union.rec** %opred1554, align 8
  %595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11555 = bitcast %union.rec* %595 to %struct.word_type*
  %olist1556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11555, i32 0, i32 0
  %arrayidx1557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1556, i32 0, i64 0
  %osucc1558 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1557, i32 0, i32 1
  store %union.rec* %592, %union.rec** %osucc1558, align 8
  %596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11559 = bitcast %union.rec* %596 to %struct.word_type*
  %olist1560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11559, i32 0, i32 0
  %arrayidx1561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1560, i32 0, i64 0
  %opred1562 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1561, i32 0, i32 0
  store %union.rec* %592, %union.rec** %opred1562, align 8
  store %union.rec* %592, %union.rec** @xx_link, align 8
  %597 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %597, %union.rec** @zz_res, align 8
  %598 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %598, %union.rec** @zz_hold, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1563 = icmp eq %union.rec* %599, null
  br i1 %cmp1563, label %cond.true.1565, label %cond.false.1566

cond.true.1565:                                   ; preds = %if.end.1542
  %600 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1602

cond.false.1566:                                  ; preds = %if.end.1542
  %601 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1567 = icmp eq %union.rec* %601, null
  br i1 %cmp1567, label %cond.true.1569, label %cond.false.1570

cond.true.1569:                                   ; preds = %cond.false.1566
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1600

cond.false.1570:                                  ; preds = %cond.false.1566
  %603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11571 = bitcast %union.rec* %603 to %struct.word_type*
  %olist1572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11571, i32 0, i32 0
  %arrayidx1573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1572, i32 0, i64 0
  %opred1574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1573, i32 0, i32 0
  %604 = load %union.rec*, %union.rec** %opred1574, align 8
  store %union.rec* %604, %union.rec** @zz_tmp, align 8
  %605 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11575 = bitcast %union.rec* %605 to %struct.word_type*
  %olist1576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11575, i32 0, i32 0
  %arrayidx1577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1576, i32 0, i64 0
  %opred1578 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1577, i32 0, i32 0
  %606 = load %union.rec*, %union.rec** %opred1578, align 8
  %607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11579 = bitcast %union.rec* %607 to %struct.word_type*
  %olist1580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11579, i32 0, i32 0
  %arrayidx1581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1580, i32 0, i64 0
  %opred1582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1581, i32 0, i32 0
  store %union.rec* %606, %union.rec** %opred1582, align 8
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %609 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11583 = bitcast %union.rec* %609 to %struct.word_type*
  %olist1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11583, i32 0, i32 0
  %arrayidx1585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1584, i32 0, i64 0
  %opred1586 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1585, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %opred1586, align 8
  %os11588 = bitcast %union.rec* %610 to %struct.word_type*
  %olist1589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11588, i32 0, i32 0
  %arrayidx1590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1589, i32 0, i64 0
  %osucc1591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1590, i32 0, i32 1
  store %union.rec* %608, %union.rec** %osucc1591, align 8
  %611 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %612 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11592 = bitcast %union.rec* %612 to %struct.word_type*
  %olist1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11592, i32 0, i32 0
  %arrayidx1594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1593, i32 0, i64 0
  %opred1595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1594, i32 0, i32 0
  store %union.rec* %611, %union.rec** %opred1595, align 8
  %613 = load %union.rec*, %union.rec** @zz_res, align 8
  %614 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11596 = bitcast %union.rec* %614 to %struct.word_type*
  %olist1597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11596, i32 0, i32 0
  %arrayidx1598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1597, i32 0, i64 0
  %osucc1599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1598, i32 0, i32 1
  store %union.rec* %613, %union.rec** %osucc1599, align 8
  br label %cond.end.1600

cond.end.1600:                                    ; preds = %cond.false.1570, %cond.true.1569
  %cond1601 = phi %union.rec* [ %602, %cond.true.1569 ], [ %613, %cond.false.1570 ]
  br label %cond.end.1602

cond.end.1602:                                    ; preds = %cond.end.1600, %cond.true.1565
  %cond1603 = phi %union.rec* [ %600, %cond.true.1565 ], [ %cond1601, %cond.end.1600 ]
  %615 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %615, %union.rec** @zz_res, align 8
  %616 = load %union.rec*, %union.rec** %new_sh, align 8
  store %union.rec* %616, %union.rec** @zz_hold, align 8
  %617 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1604 = icmp eq %union.rec* %617, null
  br i1 %cmp1604, label %cond.true.1606, label %cond.false.1607

cond.true.1606:                                   ; preds = %cond.end.1602
  %618 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1643

cond.false.1607:                                  ; preds = %cond.end.1602
  %619 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1608 = icmp eq %union.rec* %619, null
  br i1 %cmp1608, label %cond.true.1610, label %cond.false.1611

cond.true.1610:                                   ; preds = %cond.false.1607
  %620 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1641

cond.false.1611:                                  ; preds = %cond.false.1607
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11612 = bitcast %union.rec* %621 to %struct.word_type*
  %olist1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11612, i32 0, i32 0
  %arrayidx1614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1613, i32 0, i64 1
  %opred1615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1614, i32 0, i32 0
  %622 = load %union.rec*, %union.rec** %opred1615, align 8
  store %union.rec* %622, %union.rec** @zz_tmp, align 8
  %623 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11616 = bitcast %union.rec* %623 to %struct.word_type*
  %olist1617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11616, i32 0, i32 0
  %arrayidx1618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1617, i32 0, i64 1
  %opred1619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1618, i32 0, i32 0
  %624 = load %union.rec*, %union.rec** %opred1619, align 8
  %625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11621 = bitcast %union.rec* %625 to %struct.word_type*
  %olist1622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11621, i32 0, i32 0
  %arrayidx1623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1622, i32 0, i64 1
  %opred1624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1623, i32 0, i32 0
  store %union.rec* %624, %union.rec** %opred1624, align 8
  %626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %627 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11625 = bitcast %union.rec* %627 to %struct.word_type*
  %olist1626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11625, i32 0, i32 0
  %arrayidx1627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1626, i32 0, i64 1
  %opred1628 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1627, i32 0, i32 0
  %628 = load %union.rec*, %union.rec** %opred1628, align 8
  %os11629 = bitcast %union.rec* %628 to %struct.word_type*
  %olist1630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11629, i32 0, i32 0
  %arrayidx1631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1630, i32 0, i64 1
  %osucc1632 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1631, i32 0, i32 1
  store %union.rec* %626, %union.rec** %osucc1632, align 8
  %629 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %630 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11633 = bitcast %union.rec* %630 to %struct.word_type*
  %olist1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11633, i32 0, i32 0
  %arrayidx1635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1634, i32 0, i64 1
  %opred1636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1635, i32 0, i32 0
  store %union.rec* %629, %union.rec** %opred1636, align 8
  %631 = load %union.rec*, %union.rec** @zz_res, align 8
  %632 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11637 = bitcast %union.rec* %632 to %struct.word_type*
  %olist1638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11637, i32 0, i32 0
  %arrayidx1639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1638, i32 0, i64 1
  %osucc1640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1639, i32 0, i32 1
  store %union.rec* %631, %union.rec** %osucc1640, align 8
  br label %cond.end.1641

cond.end.1641:                                    ; preds = %cond.false.1611, %cond.true.1610
  %cond1642 = phi %union.rec* [ %620, %cond.true.1610 ], [ %631, %cond.false.1611 ]
  br label %cond.end.1643

cond.end.1643:                                    ; preds = %cond.end.1641, %cond.true.1606
  %cond1644 = phi %union.rec* [ %618, %cond.true.1606 ], [ %cond1642, %cond.end.1641 ]
  %633 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11645 = bitcast %union.rec* %633 to %struct.word_type*
  %ou31646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11645, i32 0, i32 3
  %os311647 = bitcast %union.THIRD_UNION* %ou31646 to %struct.anon.6*
  %oback1648 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311647, i32 0, i32 0
  %arrayidx1649 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1648, i32 0, i64 0
  %634 = load i32, i32* %arrayidx1649, align 4
  %635 = load %union.rec*, %union.rec** %new_s2, align 8
  %os11650 = bitcast %union.rec* %635 to %struct.word_type*
  %ou31651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11650, i32 0, i32 3
  %os311652 = bitcast %union.THIRD_UNION* %ou31651 to %struct.anon.6*
  %oback1653 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311652, i32 0, i32 0
  %arrayidx1654 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1653, i32 0, i64 0
  store i32 %634, i32* %arrayidx1654, align 4
  %636 = load %union.rec*, %union.rec** %new_sh, align 8
  %os11655 = bitcast %union.rec* %636 to %struct.word_type*
  %ou31656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11655, i32 0, i32 3
  %os311657 = bitcast %union.THIRD_UNION* %ou31656 to %struct.anon.6*
  %ofwd1658 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311657, i32 0, i32 1
  %arrayidx1659 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1658, i32 0, i64 0
  %637 = load i32, i32* %arrayidx1659, align 4
  %638 = load %union.rec*, %union.rec** %new_s2, align 8
  %os11660 = bitcast %union.rec* %638 to %struct.word_type*
  %ou31661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11660, i32 0, i32 3
  %os311662 = bitcast %union.THIRD_UNION* %ou31661 to %struct.anon.6*
  %ofwd1663 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311662, i32 0, i32 1
  %arrayidx1664 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1663, i32 0, i64 0
  store i32 %637, i32* %arrayidx1664, align 4
  %639 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1665 = zext i8 %639 to i32
  store i32 %conv1665, i32* @zz_size, align 4
  %conv1666 = sext i32 %conv1665 to i64
  %cmp1667 = icmp uge i64 %conv1666, 265
  br i1 %cmp1667, label %if.then.1669, label %if.else.1671

if.then.1669:                                     ; preds = %cond.end.1643
  %640 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1670 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %640)
  br label %if.end.1688

if.else.1671:                                     ; preds = %cond.end.1643
  %641 = load i32, i32* @zz_size, align 4
  %idxprom1672 = sext i32 %641 to i64
  %arrayidx1673 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1672
  %642 = load %union.rec*, %union.rec** %arrayidx1673, align 8
  %cmp1674 = icmp eq %union.rec* %642, null
  br i1 %cmp1674, label %if.then.1676, label %if.else.1678

if.then.1676:                                     ; preds = %if.else.1671
  %643 = load i32, i32* @zz_size, align 4
  %644 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1677 = call %union.rec* @GetMemory(i32 %643, %struct.FILE_POS* %644)
  store %union.rec* %call1677, %union.rec** @zz_hold, align 8
  br label %if.end.1687

if.else.1678:                                     ; preds = %if.else.1671
  %645 = load i32, i32* @zz_size, align 4
  %idxprom1679 = sext i32 %645 to i64
  %arrayidx1680 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1679
  %646 = load %union.rec*, %union.rec** %arrayidx1680, align 8
  store %union.rec* %646, %union.rec** @zz_hold, align 8
  store %union.rec* %646, %union.rec** @zz_hold, align 8
  %647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11681 = bitcast %union.rec* %647 to %struct.word_type*
  %olist1682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11681, i32 0, i32 0
  %arrayidx1683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1682, i32 0, i64 0
  %opred1684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1683, i32 0, i32 0
  %648 = load %union.rec*, %union.rec** %opred1684, align 8
  %649 = load i32, i32* @zz_size, align 4
  %idxprom1685 = sext i32 %649 to i64
  %arrayidx1686 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1685
  store %union.rec* %648, %union.rec** %arrayidx1686, align 8
  br label %if.end.1687

if.end.1687:                                      ; preds = %if.else.1678, %if.then.1676
  br label %if.end.1688

if.end.1688:                                      ; preds = %if.end.1687, %if.then.1669
  %650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11689 = bitcast %union.rec* %650 to %struct.word_type*
  %ou11690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11689, i32 0, i32 1
  %os111691 = bitcast %union.FIRST_UNION* %ou11690 to %struct.anon*
  %otype1692 = getelementptr inbounds %struct.anon, %struct.anon* %os111691, i32 0, i32 0
  store i8 0, i8* %otype1692, align 1
  %651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11693 = bitcast %union.rec* %652 to %struct.word_type*
  %olist1694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11693, i32 0, i32 0
  %arrayidx1695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1694, i32 0, i64 1
  %osucc1696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1695, i32 0, i32 1
  store %union.rec* %651, %union.rec** %osucc1696, align 8
  %653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11697 = bitcast %union.rec* %653 to %struct.word_type*
  %olist1698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11697, i32 0, i32 0
  %arrayidx1699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1698, i32 0, i64 1
  %opred1700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1699, i32 0, i32 0
  store %union.rec* %651, %union.rec** %opred1700, align 8
  %654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11701 = bitcast %union.rec* %654 to %struct.word_type*
  %olist1702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11701, i32 0, i32 0
  %arrayidx1703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1702, i32 0, i64 0
  %osucc1704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1703, i32 0, i32 1
  store %union.rec* %651, %union.rec** %osucc1704, align 8
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11705 = bitcast %union.rec* %655 to %struct.word_type*
  %olist1706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11705, i32 0, i32 0
  %arrayidx1707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1706, i32 0, i64 0
  %opred1708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1707, i32 0, i32 0
  store %union.rec* %651, %union.rec** %opred1708, align 8
  store %union.rec* %651, %union.rec** @xx_link, align 8
  %656 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %656, %union.rec** @zz_res, align 8
  %657 = load %union.rec*, %union.rec** %new_s2, align 8
  store %union.rec* %657, %union.rec** @zz_hold, align 8
  %658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1709 = icmp eq %union.rec* %658, null
  br i1 %cmp1709, label %cond.true.1711, label %cond.false.1712

cond.true.1711:                                   ; preds = %if.end.1688
  %659 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1748

cond.false.1712:                                  ; preds = %if.end.1688
  %660 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1713 = icmp eq %union.rec* %660, null
  br i1 %cmp1713, label %cond.true.1715, label %cond.false.1716

cond.true.1715:                                   ; preds = %cond.false.1712
  %661 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1746

cond.false.1716:                                  ; preds = %cond.false.1712
  %662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11717 = bitcast %union.rec* %662 to %struct.word_type*
  %olist1718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11717, i32 0, i32 0
  %arrayidx1719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1718, i32 0, i64 0
  %opred1720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1719, i32 0, i32 0
  %663 = load %union.rec*, %union.rec** %opred1720, align 8
  store %union.rec* %663, %union.rec** @zz_tmp, align 8
  %664 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11721 = bitcast %union.rec* %664 to %struct.word_type*
  %olist1722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11721, i32 0, i32 0
  %arrayidx1723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1722, i32 0, i64 0
  %opred1724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1723, i32 0, i32 0
  %665 = load %union.rec*, %union.rec** %opred1724, align 8
  %666 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11725 = bitcast %union.rec* %666 to %struct.word_type*
  %olist1726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11725, i32 0, i32 0
  %arrayidx1727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1726, i32 0, i64 0
  %opred1728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1727, i32 0, i32 0
  store %union.rec* %665, %union.rec** %opred1728, align 8
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %668 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11729 = bitcast %union.rec* %668 to %struct.word_type*
  %olist1730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11729, i32 0, i32 0
  %arrayidx1731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1730, i32 0, i64 0
  %opred1732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1731, i32 0, i32 0
  %669 = load %union.rec*, %union.rec** %opred1732, align 8
  %os11733 = bitcast %union.rec* %669 to %struct.word_type*
  %olist1734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11733, i32 0, i32 0
  %arrayidx1735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1734, i32 0, i64 0
  %osucc1736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1735, i32 0, i32 1
  store %union.rec* %667, %union.rec** %osucc1736, align 8
  %670 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %671 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11738 = bitcast %union.rec* %671 to %struct.word_type*
  %olist1739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11738, i32 0, i32 0
  %arrayidx1740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1739, i32 0, i64 0
  %opred1741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1740, i32 0, i32 0
  store %union.rec* %670, %union.rec** %opred1741, align 8
  %672 = load %union.rec*, %union.rec** @zz_res, align 8
  %673 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11742 = bitcast %union.rec* %673 to %struct.word_type*
  %olist1743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11742, i32 0, i32 0
  %arrayidx1744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1743, i32 0, i64 0
  %osucc1745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1744, i32 0, i32 1
  store %union.rec* %672, %union.rec** %osucc1745, align 8
  br label %cond.end.1746

cond.end.1746:                                    ; preds = %cond.false.1716, %cond.true.1715
  %cond1747 = phi %union.rec* [ %661, %cond.true.1715 ], [ %672, %cond.false.1716 ]
  br label %cond.end.1748

cond.end.1748:                                    ; preds = %cond.end.1746, %cond.true.1711
  %cond1749 = phi %union.rec* [ %659, %cond.true.1711 ], [ %cond1747, %cond.end.1746 ]
  %674 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %674, %union.rec** @zz_res, align 8
  %675 = load %union.rec*, %union.rec** %new_row_thread, align 8
  store %union.rec* %675, %union.rec** @zz_hold, align 8
  %676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1750 = icmp eq %union.rec* %676, null
  br i1 %cmp1750, label %cond.true.1752, label %cond.false.1753

cond.true.1752:                                   ; preds = %cond.end.1748
  %677 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1788

cond.false.1753:                                  ; preds = %cond.end.1748
  %678 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1754 = icmp eq %union.rec* %678, null
  br i1 %cmp1754, label %cond.true.1756, label %cond.false.1757

cond.true.1756:                                   ; preds = %cond.false.1753
  %679 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1786

cond.false.1757:                                  ; preds = %cond.false.1753
  %680 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11758 = bitcast %union.rec* %680 to %struct.word_type*
  %olist1759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11758, i32 0, i32 0
  %arrayidx1760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1759, i32 0, i64 1
  %opred1761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1760, i32 0, i32 0
  %681 = load %union.rec*, %union.rec** %opred1761, align 8
  store %union.rec* %681, %union.rec** @zz_tmp, align 8
  %682 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11762 = bitcast %union.rec* %682 to %struct.word_type*
  %olist1763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11762, i32 0, i32 0
  %arrayidx1764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1763, i32 0, i64 1
  %opred1765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1764, i32 0, i32 0
  %683 = load %union.rec*, %union.rec** %opred1765, align 8
  %684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11766 = bitcast %union.rec* %684 to %struct.word_type*
  %olist1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11766, i32 0, i32 0
  %arrayidx1768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1767, i32 0, i64 1
  %opred1769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1768, i32 0, i32 0
  store %union.rec* %683, %union.rec** %opred1769, align 8
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %686 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11770 = bitcast %union.rec* %686 to %struct.word_type*
  %olist1771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11770, i32 0, i32 0
  %arrayidx1772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1771, i32 0, i64 1
  %opred1773 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1772, i32 0, i32 0
  %687 = load %union.rec*, %union.rec** %opred1773, align 8
  %os11774 = bitcast %union.rec* %687 to %struct.word_type*
  %olist1775 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11774, i32 0, i32 0
  %arrayidx1776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1775, i32 0, i64 1
  %osucc1777 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1776, i32 0, i32 1
  store %union.rec* %685, %union.rec** %osucc1777, align 8
  %688 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %689 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11778 = bitcast %union.rec* %689 to %struct.word_type*
  %olist1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11778, i32 0, i32 0
  %arrayidx1780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1779, i32 0, i64 1
  %opred1781 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1780, i32 0, i32 0
  store %union.rec* %688, %union.rec** %opred1781, align 8
  %690 = load %union.rec*, %union.rec** @zz_res, align 8
  %691 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11782 = bitcast %union.rec* %691 to %struct.word_type*
  %olist1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11782, i32 0, i32 0
  %arrayidx1784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1783, i32 0, i64 1
  %osucc1785 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1784, i32 0, i32 1
  store %union.rec* %690, %union.rec** %osucc1785, align 8
  br label %cond.end.1786

cond.end.1786:                                    ; preds = %cond.false.1757, %cond.true.1756
  %cond1787 = phi %union.rec* [ %679, %cond.true.1756 ], [ %690, %cond.false.1757 ]
  br label %cond.end.1788

cond.end.1788:                                    ; preds = %cond.end.1786, %cond.true.1752
  %cond1789 = phi %union.rec* [ %677, %cond.true.1752 ], [ %cond1787, %cond.end.1786 ]
  %692 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %os11790 = bitcast %union.rec* %692 to %struct.word_type*
  %ou31791 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11790, i32 0, i32 3
  %os311792 = bitcast %union.THIRD_UNION* %ou31791 to %struct.anon.6*
  %oback1793 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311792, i32 0, i32 0
  %arrayidx1794 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1793, i32 0, i64 1
  %693 = load i32, i32* %arrayidx1794, align 4
  %694 = load %union.rec*, %union.rec** %new_s2, align 8
  %os11795 = bitcast %union.rec* %694 to %struct.word_type*
  %ou31796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11795, i32 0, i32 3
  %os311797 = bitcast %union.THIRD_UNION* %ou31796 to %struct.anon.6*
  %oback1798 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311797, i32 0, i32 0
  %arrayidx1799 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1798, i32 0, i64 1
  store i32 %693, i32* %arrayidx1799, align 4
  %695 = load %union.rec*, %union.rec** %new_row_thread, align 8
  %os11800 = bitcast %union.rec* %695 to %struct.word_type*
  %ou31801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11800, i32 0, i32 3
  %os311802 = bitcast %union.THIRD_UNION* %ou31801 to %struct.anon.6*
  %ofwd1803 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311802, i32 0, i32 1
  %arrayidx1804 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1803, i32 0, i64 1
  %696 = load i32, i32* %arrayidx1804, align 4
  %697 = load %union.rec*, %union.rec** %new_s2, align 8
  %os11805 = bitcast %union.rec* %697 to %struct.word_type*
  %ou31806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11805, i32 0, i32 3
  %os311807 = bitcast %union.THIRD_UNION* %ou31806 to %struct.anon.6*
  %ofwd1808 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311807, i32 0, i32 1
  %arrayidx1809 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1808, i32 0, i64 1
  store i32 %696, i32* %arrayidx1809, align 4
  %698 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1810 = zext i8 %698 to i32
  store i32 %conv1810, i32* @zz_size, align 4
  %conv1811 = sext i32 %conv1810 to i64
  %cmp1812 = icmp uge i64 %conv1811, 265
  br i1 %cmp1812, label %if.then.1814, label %if.else.1816

if.then.1814:                                     ; preds = %cond.end.1788
  %699 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1815 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %699)
  br label %if.end.1833

if.else.1816:                                     ; preds = %cond.end.1788
  %700 = load i32, i32* @zz_size, align 4
  %idxprom1817 = sext i32 %700 to i64
  %arrayidx1818 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1817
  %701 = load %union.rec*, %union.rec** %arrayidx1818, align 8
  %cmp1819 = icmp eq %union.rec* %701, null
  br i1 %cmp1819, label %if.then.1821, label %if.else.1823

if.then.1821:                                     ; preds = %if.else.1816
  %702 = load i32, i32* @zz_size, align 4
  %703 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1822 = call %union.rec* @GetMemory(i32 %702, %struct.FILE_POS* %703)
  store %union.rec* %call1822, %union.rec** @zz_hold, align 8
  br label %if.end.1832

if.else.1823:                                     ; preds = %if.else.1816
  %704 = load i32, i32* @zz_size, align 4
  %idxprom1824 = sext i32 %704 to i64
  %arrayidx1825 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1824
  %705 = load %union.rec*, %union.rec** %arrayidx1825, align 8
  store %union.rec* %705, %union.rec** @zz_hold, align 8
  store %union.rec* %705, %union.rec** @zz_hold, align 8
  %706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11826 = bitcast %union.rec* %706 to %struct.word_type*
  %olist1827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11826, i32 0, i32 0
  %arrayidx1828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1827, i32 0, i64 0
  %opred1829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1828, i32 0, i32 0
  %707 = load %union.rec*, %union.rec** %opred1829, align 8
  %708 = load i32, i32* @zz_size, align 4
  %idxprom1830 = sext i32 %708 to i64
  %arrayidx1831 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1830
  store %union.rec* %707, %union.rec** %arrayidx1831, align 8
  br label %if.end.1832

if.end.1832:                                      ; preds = %if.else.1823, %if.then.1821
  br label %if.end.1833

if.end.1833:                                      ; preds = %if.end.1832, %if.then.1814
  %709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11834 = bitcast %union.rec* %709 to %struct.word_type*
  %ou11835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11834, i32 0, i32 1
  %os111836 = bitcast %union.FIRST_UNION* %ou11835 to %struct.anon*
  %otype1837 = getelementptr inbounds %struct.anon, %struct.anon* %os111836, i32 0, i32 0
  store i8 0, i8* %otype1837, align 1
  %710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %711 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11838 = bitcast %union.rec* %711 to %struct.word_type*
  %olist1839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11838, i32 0, i32 0
  %arrayidx1840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1839, i32 0, i64 1
  %osucc1841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1840, i32 0, i32 1
  store %union.rec* %710, %union.rec** %osucc1841, align 8
  %712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11842 = bitcast %union.rec* %712 to %struct.word_type*
  %olist1843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11842, i32 0, i32 0
  %arrayidx1844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1843, i32 0, i64 1
  %opred1845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1844, i32 0, i32 0
  store %union.rec* %710, %union.rec** %opred1845, align 8
  %713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11846 = bitcast %union.rec* %713 to %struct.word_type*
  %olist1847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11846, i32 0, i32 0
  %arrayidx1848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1847, i32 0, i64 0
  %osucc1849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1848, i32 0, i32 1
  store %union.rec* %710, %union.rec** %osucc1849, align 8
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11850 = bitcast %union.rec* %714 to %struct.word_type*
  %olist1851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11850, i32 0, i32 0
  %arrayidx1852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1851, i32 0, i64 0
  %opred1853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1852, i32 0, i32 0
  store %union.rec* %710, %union.rec** %opred1853, align 8
  store %union.rec* %710, %union.rec** @xx_link, align 8
  %715 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %715, %union.rec** @zz_res, align 8
  %716 = load %union.rec*, %union.rec** %new_row_thread, align 8
  store %union.rec* %716, %union.rec** @zz_hold, align 8
  %717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1854 = icmp eq %union.rec* %717, null
  br i1 %cmp1854, label %cond.true.1856, label %cond.false.1857

cond.true.1856:                                   ; preds = %if.end.1833
  %718 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1892

cond.false.1857:                                  ; preds = %if.end.1833
  %719 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1858 = icmp eq %union.rec* %719, null
  br i1 %cmp1858, label %cond.true.1860, label %cond.false.1861

cond.true.1860:                                   ; preds = %cond.false.1857
  %720 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1890

cond.false.1861:                                  ; preds = %cond.false.1857
  %721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11862 = bitcast %union.rec* %721 to %struct.word_type*
  %olist1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11862, i32 0, i32 0
  %arrayidx1864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1863, i32 0, i64 0
  %opred1865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1864, i32 0, i32 0
  %722 = load %union.rec*, %union.rec** %opred1865, align 8
  store %union.rec* %722, %union.rec** @zz_tmp, align 8
  %723 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11866 = bitcast %union.rec* %723 to %struct.word_type*
  %olist1867 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11866, i32 0, i32 0
  %arrayidx1868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1867, i32 0, i64 0
  %opred1869 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1868, i32 0, i32 0
  %724 = load %union.rec*, %union.rec** %opred1869, align 8
  %725 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11870 = bitcast %union.rec* %725 to %struct.word_type*
  %olist1871 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11870, i32 0, i32 0
  %arrayidx1872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1871, i32 0, i64 0
  %opred1873 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1872, i32 0, i32 0
  store %union.rec* %724, %union.rec** %opred1873, align 8
  %726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %727 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11874 = bitcast %union.rec* %727 to %struct.word_type*
  %olist1875 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11874, i32 0, i32 0
  %arrayidx1876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1875, i32 0, i64 0
  %opred1877 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1876, i32 0, i32 0
  %728 = load %union.rec*, %union.rec** %opred1877, align 8
  %os11878 = bitcast %union.rec* %728 to %struct.word_type*
  %olist1879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11878, i32 0, i32 0
  %arrayidx1880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1879, i32 0, i64 0
  %osucc1881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1880, i32 0, i32 1
  store %union.rec* %726, %union.rec** %osucc1881, align 8
  %729 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %730 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11882 = bitcast %union.rec* %730 to %struct.word_type*
  %olist1883 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11882, i32 0, i32 0
  %arrayidx1884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1883, i32 0, i64 0
  %opred1885 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1884, i32 0, i32 0
  store %union.rec* %729, %union.rec** %opred1885, align 8
  %731 = load %union.rec*, %union.rec** @zz_res, align 8
  %732 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11886 = bitcast %union.rec* %732 to %struct.word_type*
  %olist1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11886, i32 0, i32 0
  %arrayidx1888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1887, i32 0, i64 0
  %osucc1889 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1888, i32 0, i32 1
  store %union.rec* %731, %union.rec** %osucc1889, align 8
  br label %cond.end.1890

cond.end.1890:                                    ; preds = %cond.false.1861, %cond.true.1860
  %cond1891 = phi %union.rec* [ %720, %cond.true.1860 ], [ %731, %cond.false.1861 ]
  br label %cond.end.1892

cond.end.1892:                                    ; preds = %cond.end.1890, %cond.true.1856
  %cond1893 = phi %union.rec* [ %718, %cond.true.1856 ], [ %cond1891, %cond.end.1890 ]
  %733 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %733, %union.rec** @zz_res, align 8
  %734 = load %union.rec*, %union.rec** %new_sh, align 8
  store %union.rec* %734, %union.rec** @zz_hold, align 8
  %735 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1894 = icmp eq %union.rec* %735, null
  br i1 %cmp1894, label %cond.true.1896, label %cond.false.1897

cond.true.1896:                                   ; preds = %cond.end.1892
  %736 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1932

cond.false.1897:                                  ; preds = %cond.end.1892
  %737 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1898 = icmp eq %union.rec* %737, null
  br i1 %cmp1898, label %cond.true.1900, label %cond.false.1901

cond.true.1900:                                   ; preds = %cond.false.1897
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1930

cond.false.1901:                                  ; preds = %cond.false.1897
  %739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11902 = bitcast %union.rec* %739 to %struct.word_type*
  %olist1903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11902, i32 0, i32 0
  %arrayidx1904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1903, i32 0, i64 1
  %opred1905 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1904, i32 0, i32 0
  %740 = load %union.rec*, %union.rec** %opred1905, align 8
  store %union.rec* %740, %union.rec** @zz_tmp, align 8
  %741 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11906 = bitcast %union.rec* %741 to %struct.word_type*
  %olist1907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11906, i32 0, i32 0
  %arrayidx1908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1907, i32 0, i64 1
  %opred1909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1908, i32 0, i32 0
  %742 = load %union.rec*, %union.rec** %opred1909, align 8
  %743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11910 = bitcast %union.rec* %743 to %struct.word_type*
  %olist1911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11910, i32 0, i32 0
  %arrayidx1912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1911, i32 0, i64 1
  %opred1913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1912, i32 0, i32 0
  store %union.rec* %742, %union.rec** %opred1913, align 8
  %744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %745 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11914 = bitcast %union.rec* %745 to %struct.word_type*
  %olist1915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11914, i32 0, i32 0
  %arrayidx1916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1915, i32 0, i64 1
  %opred1917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1916, i32 0, i32 0
  %746 = load %union.rec*, %union.rec** %opred1917, align 8
  %os11918 = bitcast %union.rec* %746 to %struct.word_type*
  %olist1919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11918, i32 0, i32 0
  %arrayidx1920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1919, i32 0, i64 1
  %osucc1921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1920, i32 0, i32 1
  store %union.rec* %744, %union.rec** %osucc1921, align 8
  %747 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %748 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11922 = bitcast %union.rec* %748 to %struct.word_type*
  %olist1923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11922, i32 0, i32 0
  %arrayidx1924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1923, i32 0, i64 1
  %opred1925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1924, i32 0, i32 0
  store %union.rec* %747, %union.rec** %opred1925, align 8
  %749 = load %union.rec*, %union.rec** @zz_res, align 8
  %750 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11926 = bitcast %union.rec* %750 to %struct.word_type*
  %olist1927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11926, i32 0, i32 0
  %arrayidx1928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1927, i32 0, i64 1
  %osucc1929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1928, i32 0, i32 1
  store %union.rec* %749, %union.rec** %osucc1929, align 8
  br label %cond.end.1930

cond.end.1930:                                    ; preds = %cond.false.1901, %cond.true.1900
  %cond1931 = phi %union.rec* [ %738, %cond.true.1900 ], [ %749, %cond.false.1901 ]
  br label %cond.end.1932

cond.end.1932:                                    ; preds = %cond.end.1930, %cond.true.1896
  %cond1933 = phi %union.rec* [ %736, %cond.true.1896 ], [ %cond1931, %cond.end.1930 ]
  br label %for.inc.1934

for.inc.1934:                                     ; preds = %cond.end.1932, %cond.end.575
  %751 = load %union.rec*, %union.rec** %link, align 8
  %os11935 = bitcast %union.rec* %751 to %struct.word_type*
  %olist1936 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11935, i32 0, i32 0
  %arrayidx1937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1936, i32 0, i64 0
  %osucc1938 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1937, i32 0, i32 1
  %752 = load %union.rec*, %union.rec** %osucc1938, align 8
  store %union.rec* %752, %union.rec** %link, align 8
  br label %for.cond

for.end.1939:                                     ; preds = %for.cond
  %753 = load %union.rec*, %union.rec** %new_y, align 8
  ret %union.rec* %753
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @FindTarget(%union.rec* %index) #0 {
entry:
  %index.addr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %index, %union.rec** %index.addr, align 8
  %0 = load %union.rec*, %union.rec** %index.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 119, label %sw.bb
    i32 120, label %sw.bb.1
    i32 133, label %sw.bb.1
    i32 129, label %sw.bb.1
    i32 130, label %sw.bb.1
    i32 121, label %sw.bb.2
    i32 122, label %sw.bb.2
    i32 123, label %sw.bb.2
    i32 136, label %sw.bb.2
    i32 137, label %sw.bb.2
    i32 138, label %sw.bb.2
    i32 124, label %sw.bb.4
    i32 125, label %sw.bb.4
    i32 131, label %sw.bb.4
    i32 134, label %sw.bb.4
    i32 127, label %sw.bb.4
    i32 128, label %sw.bb.4
    i32 135, label %sw.bb.4
    i32 132, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store %union.rec* null, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry
  %2 = load %union.rec*, %union.rec** %index.addr, align 8
  %os2 = bitcast %union.rec* %2 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 6
  %opinpoint = bitcast %union.anon.12* %oux to %union.rec**
  %3 = load %union.rec*, %union.rec** %opinpoint, align 8
  store %union.rec* %3, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %4 = load %union.rec*, %union.rec** %index.addr, align 8
  %os23 = bitcast %union.rec* %4 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %oactual, align 8
  store %union.rec* %5, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store %union.rec* null, %union.rec** %res, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store %union.rec* null, %union.rec** %res, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = load %union.rec*, %union.rec** %index.addr, align 8
  %os16 = bitcast %union.rec* %7 to %struct.word_type*
  %ou17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %os118 = bitcast %union.FIRST_UNION* %ou17 to %struct.anon*
  %otype9 = getelementptr inbounds %struct.anon, %struct.anon* %os118, i32 0, i32 0
  %8 = load i8, i8* %otype9, align 1
  %conv10 = zext i8 %8 to i32
  %call = call i8* @Image(i32 %conv10)
  %call11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* %call)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %9
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @WhichComponent(%union.rec* %target) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %target.addr = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  store %union.rec* %target, %union.rec** %target.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.rec*, %union.rec** %target.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %2 = load %union.rec*, %union.rec** %target.addr, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %union.rec*, %union.rec** %target.addr, align 8
  %os11 = bitcast %union.rec* %3 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %osucc4 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc4, align 8
  %os15 = bitcast %union.rec* %4 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %prnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load %union.rec*, %union.rec** %prnt, align 8
  %os18 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 1
  %os119 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os119, i32 0, i32 0
  %7 = load i8, i8* %otype, align 1
  %conv = zext i8 %7 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %union.rec*, %union.rec** %prnt, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 0
  %opred15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred15, align 8
  store %union.rec* %9, %union.rec** %prnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %union.rec*, %union.rec** %prnt, align 8
  %os116 = bitcast %union.rec* %10 to %struct.word_type*
  %ou117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os1118 = bitcast %union.FIRST_UNION* %ou117 to %struct.anon*
  %otype19 = getelementptr inbounds %struct.anon, %struct.anon* %os1118, i32 0, i32 0
  %11 = load i8, i8* %otype19, align 1
  %conv20 = zext i8 %11 to i32
  %cmp21 = icmp eq i32 %conv20, 8
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load %union.rec*, %union.rec** %target.addr, align 8
  store %union.rec* %12, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %13 = load %union.rec*, %union.rec** %prnt, align 8
  store %union.rec* %13, %union.rec** %target.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %union.rec* null, %union.rec** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %14
}

; Function Attrs: nounwind uwtable
define %union.rec* @ConvertGalleyList(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %junk1 = alloca %union.rec*, align 8
  %junk2 = alloca %union.rec*, align 8
  %obj = alloca %union.rec*, align 8
  %n = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %os11 = bitcast %union.rec* %1 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %2, %union.rec** %res, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %union.rec*, %union.rec** %res, align 8
  %os14 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os115, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %union.rec*, %union.rec** %res, align 8
  %os17 = bitcast %union.rec* %5 to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 1
  %opred10 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %opred10, align 8
  store %union.rec* %6, %union.rec** %res, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %union.rec*, %union.rec** %res, align 8
  %os111 = bitcast %union.rec* %7 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 0
  %osucc14 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %osucc14, align 8
  %os116 = bitcast %union.rec* %8 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os121 = bitcast %union.rec* %10 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %11 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %11 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.20
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.28
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os130 = bitcast %union.rec* %12 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred33, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os135 = bitcast %union.rec* %14 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 0
  %osucc38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %osucc38, align 8
  store %union.rec* %15, %union.rec** @xx_link, align 8
  %16 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %16, %union.rec** @zz_hold, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os139 = bitcast %union.rec* %17 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 1
  %osucc42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc42, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp43 = icmp eq %union.rec* %18, %19
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.34
  br label %cond.end

cond.false:                                       ; preds = %for.end.34
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os145 = bitcast %union.rec* %20 to %struct.word_type*
  %olist46 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist46, i32 0, i64 1
  %osucc48 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx47, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc48, align 8
  store %union.rec* %21, %union.rec** @zz_res, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os149 = bitcast %union.rec* %22 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %opred52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred52, align 8
  %24 = load %union.rec*, %union.rec** @zz_res, align 8
  %os153 = bitcast %union.rec* %24 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 1
  %opred56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 0
  store %union.rec* %23, %union.rec** %opred56, align 8
  %25 = load %union.rec*, %union.rec** @zz_res, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os157 = bitcast %union.rec* %26 to %struct.word_type*
  %olist58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist58, i32 0, i64 1
  %opred60 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx59, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred60, align 8
  %os161 = bitcast %union.rec* %27 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 1
  %osucc64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 1
  store %union.rec* %25, %union.rec** %osucc64, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os165 = bitcast %union.rec* %29 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  store %union.rec* %28, %union.rec** %osucc68, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os169 = bitcast %union.rec* %30 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 1
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  store %union.rec* %28, %union.rec** %opred72, align 8
  %31 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %31, %cond.false ]
  %32 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %32, %union.rec** @zz_res, align 8
  %33 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp73 = icmp eq %union.rec* %34, null
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.111

cond.false.76:                                    ; preds = %cond.end
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp77 = icmp eq %union.rec* %36, null
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.76
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.109

cond.false.80:                                    ; preds = %cond.false.76
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os181 = bitcast %union.rec* %38 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 1
  %opred84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred84, align 8
  store %union.rec* %39, %union.rec** @zz_tmp, align 8
  %40 = load %union.rec*, %union.rec** @zz_res, align 8
  %os185 = bitcast %union.rec* %40 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %opred88, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os189 = bitcast %union.rec* %42 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 1
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  store %union.rec* %41, %union.rec** %opred92, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  %os193 = bitcast %union.rec* %44 to %struct.word_type*
  %olist94 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist94, i32 0, i64 1
  %opred96 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx95, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %opred96, align 8
  %os197 = bitcast %union.rec* %45 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 1
  %osucc100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 1
  store %union.rec* %43, %union.rec** %osucc100, align 8
  %46 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1101 = bitcast %union.rec* %47 to %struct.word_type*
  %olist102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist102, i32 0, i64 1
  %opred104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx103, i32 0, i32 0
  store %union.rec* %46, %union.rec** %opred104, align 8
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  %49 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1105 = bitcast %union.rec* %49 to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 1
  %osucc108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 1
  store %union.rec* %48, %union.rec** %osucc108, align 8
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.80, %cond.true.79
  %cond110 = phi %union.rec* [ %37, %cond.true.79 ], [ %48, %cond.false.80 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.75
  %cond112 = phi %union.rec* [ %35, %cond.true.75 ], [ %cond110, %cond.end.109 ]
  %50 = load %union.rec*, %union.rec** %res, align 8
  %os1113 = bitcast %union.rec* %50 to %struct.word_type*
  %olist114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist114, i32 0, i64 0
  %osucc116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx115, i32 0, i32 1
  %51 = load %union.rec*, %union.rec** %osucc116, align 8
  store %union.rec* %51, %union.rec** @xx_link, align 8
  %52 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %52, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1117 = bitcast %union.rec* %53 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 1
  %osucc120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 1
  %54 = load %union.rec*, %union.rec** %osucc120, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp121 = icmp eq %union.rec* %54, %55
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %cond.end.111
  br label %cond.end.153

cond.false.124:                                   ; preds = %cond.end.111
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1125 = bitcast %union.rec* %56 to %struct.word_type*
  %olist126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist126, i32 0, i64 1
  %osucc128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx127, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %osucc128, align 8
  store %union.rec* %57, %union.rec** @zz_res, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1129 = bitcast %union.rec* %58 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 1
  %opred132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %opred132, align 8
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1133 = bitcast %union.rec* %60 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 1
  %opred136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 0
  store %union.rec* %59, %union.rec** %opred136, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1137 = bitcast %union.rec* %62 to %struct.word_type*
  %olist138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist138, i32 0, i64 1
  %opred140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx139, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred140, align 8
  %os1141 = bitcast %union.rec* %63 to %struct.word_type*
  %olist142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist142, i32 0, i64 1
  %osucc144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx143, i32 0, i32 1
  store %union.rec* %61, %union.rec** %osucc144, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1145 = bitcast %union.rec* %65 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 1
  %osucc148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc148, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1149 = bitcast %union.rec* %66 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 1
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred152, align 8
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.124, %cond.true.123
  %cond154 = phi %union.rec* [ null, %cond.true.123 ], [ %67, %cond.false.124 ]
  %68 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %68, %union.rec** @zz_hold, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1155 = bitcast %union.rec* %69 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 0
  %osucc158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 1
  %70 = load %union.rec*, %union.rec** %osucc158, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp159 = icmp eq %union.rec* %70, %71
  br i1 %cmp159, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %cond.end.153
  br label %cond.end.191

cond.false.162:                                   ; preds = %cond.end.153
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1163 = bitcast %union.rec* %72 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 0
  %osucc166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 1
  %73 = load %union.rec*, %union.rec** %osucc166, align 8
  store %union.rec* %73, %union.rec** @zz_res, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %74 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 0
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %opred170, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1171 = bitcast %union.rec* %76 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %opred174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 0
  store %union.rec* %75, %union.rec** %opred174, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %78 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 0
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  %79 = load %union.rec*, %union.rec** %opred178, align 8
  %os1179 = bitcast %union.rec* %79 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 0
  %osucc182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 1
  store %union.rec* %77, %union.rec** %osucc182, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1183 = bitcast %union.rec* %81 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 0
  %osucc186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 1
  store %union.rec* %80, %union.rec** %osucc186, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1187 = bitcast %union.rec* %82 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 0
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  store %union.rec* %80, %union.rec** %opred190, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.162, %cond.true.161
  %cond192 = phi %union.rec* [ null, %cond.true.161 ], [ %83, %cond.false.162 ]
  %84 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %84, %union.rec** @zz_hold, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %85, %union.rec** @zz_hold, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 1
  %os11195 = bitcast %union.FIRST_UNION* %ou1194 to %struct.anon*
  %otype196 = getelementptr inbounds %struct.anon, %struct.anon* %os11195, i32 0, i32 0
  %87 = load i8, i8* %otype196, align 1
  %conv197 = zext i8 %87 to i32
  %cmp198 = icmp eq i32 %conv197, 11
  br i1 %cmp198, label %cond.true.207, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.191
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1200 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 1
  %os11202 = bitcast %union.FIRST_UNION* %ou1201 to %struct.anon*
  %otype203 = getelementptr inbounds %struct.anon, %struct.anon* %os11202, i32 0, i32 0
  %89 = load i8, i8* %otype203, align 1
  %conv204 = zext i8 %89 to i32
  %cmp205 = icmp eq i32 %conv204, 12
  br i1 %cmp205, label %cond.true.207, label %cond.false.212

cond.true.207:                                    ; preds = %lor.lhs.false, %cond.end.191
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1208 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 1
  %os11210 = bitcast %union.FIRST_UNION* %ou1209 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11210, i32 0, i32 1
  %91 = load i8, i8* %orec_size, align 1
  %conv211 = zext i8 %91 to i32
  br label %cond.end.219

cond.false.212:                                   ; preds = %lor.lhs.false
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1213 = bitcast %union.rec* %92 to %struct.word_type*
  %ou1214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 1
  %os11215 = bitcast %union.FIRST_UNION* %ou1214 to %struct.anon*
  %otype216 = getelementptr inbounds %struct.anon, %struct.anon* %os11215, i32 0, i32 0
  %93 = load i8, i8* %otype216, align 1
  %idxprom = zext i8 %93 to i64
  %arrayidx217 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %94 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %94 to i32
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.212, %cond.true.207
  %cond220 = phi i32 [ %conv211, %cond.true.207 ], [ %conv218, %cond.false.212 ]
  store i32 %cond220, i32* @zz_size, align 4
  %95 = load i32, i32* @zz_size, align 4
  %idxprom221 = sext i32 %95 to i64
  %arrayidx222 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom221
  %96 = load %union.rec*, %union.rec** %arrayidx222, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1223 = bitcast %union.rec* %97 to %struct.word_type*
  %olist224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist224, i32 0, i64 0
  %opred226 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx225, i32 0, i32 0
  store %union.rec* %96, %union.rec** %opred226, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = load i32, i32* @zz_size, align 4
  %idxprom227 = sext i32 %99 to i64
  %arrayidx228 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom227
  store %union.rec* %98, %union.rec** %arrayidx228, align 8
  %100 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1229 = bitcast %union.rec* %100 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 1
  %osucc232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 1
  %101 = load %union.rec*, %union.rec** %osucc232, align 8
  store %union.rec* %101, %union.rec** @xx_link, align 8
  %102 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %102, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1233 = bitcast %union.rec* %103 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 1
  %osucc236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 1
  %104 = load %union.rec*, %union.rec** %osucc236, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp237 = icmp eq %union.rec* %104, %105
  br i1 %cmp237, label %cond.true.239, label %cond.false.240

cond.true.239:                                    ; preds = %cond.end.219
  br label %cond.end.269

cond.false.240:                                   ; preds = %cond.end.219
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1241 = bitcast %union.rec* %106 to %struct.word_type*
  %olist242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1241, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist242, i32 0, i64 1
  %osucc244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx243, i32 0, i32 1
  %107 = load %union.rec*, %union.rec** %osucc244, align 8
  store %union.rec* %107, %union.rec** @zz_res, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1245 = bitcast %union.rec* %108 to %struct.word_type*
  %olist246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist246, i32 0, i64 1
  %opred248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx247, i32 0, i32 0
  %109 = load %union.rec*, %union.rec** %opred248, align 8
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1249 = bitcast %union.rec* %110 to %struct.word_type*
  %olist250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist250, i32 0, i64 1
  %opred252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx251, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred252, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1253 = bitcast %union.rec* %112 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 1
  %opred256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred256, align 8
  %os1257 = bitcast %union.rec* %113 to %struct.word_type*
  %olist258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist258, i32 0, i64 1
  %osucc260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx259, i32 0, i32 1
  store %union.rec* %111, %union.rec** %osucc260, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1261 = bitcast %union.rec* %115 to %struct.word_type*
  %olist262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist262, i32 0, i64 1
  %osucc264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx263, i32 0, i32 1
  store %union.rec* %114, %union.rec** %osucc264, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1265 = bitcast %union.rec* %116 to %struct.word_type*
  %olist266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1265, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist266, i32 0, i64 1
  %opred268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx267, i32 0, i32 0
  store %union.rec* %114, %union.rec** %opred268, align 8
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.240, %cond.true.239
  %cond270 = phi %union.rec* [ null, %cond.true.239 ], [ %117, %cond.false.240 ]
  %118 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %118, %union.rec** @zz_res, align 8
  %119 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %119, %union.rec** @zz_hold, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp271 = icmp eq %union.rec* %120, null
  br i1 %cmp271, label %cond.true.273, label %cond.false.274

cond.true.273:                                    ; preds = %cond.end.269
  %121 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.309

cond.false.274:                                   ; preds = %cond.end.269
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp275 = icmp eq %union.rec* %122, null
  br i1 %cmp275, label %cond.true.277, label %cond.false.278

cond.true.277:                                    ; preds = %cond.false.274
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.307

cond.false.278:                                   ; preds = %cond.false.274
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1279 = bitcast %union.rec* %124 to %struct.word_type*
  %olist280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1279, i32 0, i32 0
  %arrayidx281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist280, i32 0, i64 1
  %opred282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx281, i32 0, i32 0
  %125 = load %union.rec*, %union.rec** %opred282, align 8
  store %union.rec* %125, %union.rec** @zz_tmp, align 8
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1283 = bitcast %union.rec* %126 to %struct.word_type*
  %olist284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist284, i32 0, i64 1
  %opred286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx285, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %opred286, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1287 = bitcast %union.rec* %128 to %struct.word_type*
  %olist288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 0
  %arrayidx289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist288, i32 0, i64 1
  %opred290 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx289, i32 0, i32 0
  store %union.rec* %127, %union.rec** %opred290, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1291 = bitcast %union.rec* %130 to %struct.word_type*
  %olist292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1291, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist292, i32 0, i64 1
  %opred294 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx293, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %opred294, align 8
  %os1295 = bitcast %union.rec* %131 to %struct.word_type*
  %olist296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1295, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist296, i32 0, i64 1
  %osucc298 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx297, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc298, align 8
  %132 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %133 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1299 = bitcast %union.rec* %133 to %struct.word_type*
  %olist300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1299, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist300, i32 0, i64 1
  %opred302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx301, i32 0, i32 0
  store %union.rec* %132, %union.rec** %opred302, align 8
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %135 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1303 = bitcast %union.rec* %135 to %struct.word_type*
  %olist304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist304, i32 0, i64 1
  %osucc306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx305, i32 0, i32 1
  store %union.rec* %134, %union.rec** %osucc306, align 8
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.278, %cond.true.277
  %cond308 = phi %union.rec* [ %123, %cond.true.277 ], [ %134, %cond.false.278 ]
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.end.307, %cond.true.273
  %cond310 = phi %union.rec* [ %121, %cond.true.273 ], [ %cond308, %cond.end.307 ]
  %136 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1311 = bitcast %union.rec* %136 to %struct.word_type*
  %olist312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1311, i32 0, i32 0
  %arrayidx313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist312, i32 0, i64 0
  %osucc314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx313, i32 0, i32 1
  %137 = load %union.rec*, %union.rec** %osucc314, align 8
  store %union.rec* %137, %union.rec** %link, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.319, %cond.end.309
  %138 = load %union.rec*, %union.rec** %link, align 8
  %139 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp316 = icmp ne %union.rec* %138, %139
  br i1 %cmp316, label %for.body.318, label %for.end.324

for.body.318:                                     ; preds = %for.cond.315
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.body.318
  %140 = load %union.rec*, %union.rec** %link, align 8
  %os1320 = bitcast %union.rec* %140 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 0
  %osucc323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 1
  %141 = load %union.rec*, %union.rec** %osucc323, align 8
  store %union.rec* %141, %union.rec** %link, align 8
  %142 = load i32, i32* %n, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.315

for.end.324:                                      ; preds = %for.cond.315
  %143 = load i32, i32* %n, align 4
  %144 = load %union.rec*, %union.rec** %x.addr, align 8
  %call = call %union.rec* @BuildMergeTree(i32 %143, %union.rec* %144, %union.rec** %junk1, %union.rec** %junk2)
  store %union.rec* %call, %union.rec** %y, align 8
  %145 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1325 = bitcast %union.rec* %145 to %struct.word_type*
  %olist326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1325, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist326, i32 0, i64 0
  %osucc328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx327, i32 0, i32 1
  %146 = load %union.rec*, %union.rec** %osucc328, align 8
  %147 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp329 = icmp eq %union.rec* %146, %147
  br i1 %cmp329, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.end.324
  %148 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1331 = bitcast %union.rec* %148 to %struct.word_type*
  %olist332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1331, i32 0, i32 0
  %arrayidx333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist332, i32 0, i64 1
  %osucc334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx333, i32 0, i32 1
  %149 = load %union.rec*, %union.rec** %osucc334, align 8
  %150 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp335 = icmp eq %union.rec* %149, %150
  br i1 %cmp335, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.end.324
  %151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call337 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %152 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %152, %union.rec** @zz_hold, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1338 = bitcast %union.rec* %154 to %struct.word_type*
  %ou1339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1338, i32 0, i32 1
  %os11340 = bitcast %union.FIRST_UNION* %ou1339 to %struct.anon*
  %otype341 = getelementptr inbounds %struct.anon, %struct.anon* %os11340, i32 0, i32 0
  %155 = load i8, i8* %otype341, align 1
  %conv342 = zext i8 %155 to i32
  %cmp343 = icmp eq i32 %conv342, 11
  br i1 %cmp343, label %cond.true.353, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %if.end
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1346 = bitcast %union.rec* %156 to %struct.word_type*
  %ou1347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1346, i32 0, i32 1
  %os11348 = bitcast %union.FIRST_UNION* %ou1347 to %struct.anon*
  %otype349 = getelementptr inbounds %struct.anon, %struct.anon* %os11348, i32 0, i32 0
  %157 = load i8, i8* %otype349, align 1
  %conv350 = zext i8 %157 to i32
  %cmp351 = icmp eq i32 %conv350, 12
  br i1 %cmp351, label %cond.true.353, label %cond.false.359

cond.true.353:                                    ; preds = %lor.lhs.false.345, %if.end
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1354 = bitcast %union.rec* %158 to %struct.word_type*
  %ou1355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1354, i32 0, i32 1
  %os11356 = bitcast %union.FIRST_UNION* %ou1355 to %struct.anon*
  %orec_size357 = getelementptr inbounds %struct.anon, %struct.anon* %os11356, i32 0, i32 1
  %159 = load i8, i8* %orec_size357, align 1
  %conv358 = zext i8 %159 to i32
  br label %cond.end.367

cond.false.359:                                   ; preds = %lor.lhs.false.345
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1360 = bitcast %union.rec* %160 to %struct.word_type*
  %ou1361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1360, i32 0, i32 1
  %os11362 = bitcast %union.FIRST_UNION* %ou1361 to %struct.anon*
  %otype363 = getelementptr inbounds %struct.anon, %struct.anon* %os11362, i32 0, i32 0
  %161 = load i8, i8* %otype363, align 1
  %idxprom364 = zext i8 %161 to i64
  %arrayidx365 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom364
  %162 = load i8, i8* %arrayidx365, align 1
  %conv366 = zext i8 %162 to i32
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.359, %cond.true.353
  %cond368 = phi i32 [ %conv358, %cond.true.353 ], [ %conv366, %cond.false.359 ]
  store i32 %cond368, i32* @zz_size, align 4
  %163 = load i32, i32* @zz_size, align 4
  %idxprom369 = sext i32 %163 to i64
  %arrayidx370 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom369
  %164 = load %union.rec*, %union.rec** %arrayidx370, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1371 = bitcast %union.rec* %165 to %struct.word_type*
  %olist372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1371, i32 0, i32 0
  %arrayidx373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist372, i32 0, i64 0
  %opred374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx373, i32 0, i32 0
  store %union.rec* %164, %union.rec** %opred374, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %167 = load i32, i32* @zz_size, align 4
  %idxprom375 = sext i32 %167 to i64
  %arrayidx376 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom375
  store %union.rec* %166, %union.rec** %arrayidx376, align 8
  %168 = load %union.rec*, %union.rec** %y, align 8
  %os1377 = bitcast %union.rec* %168 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 0
  %osucc380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 1
  %169 = load %union.rec*, %union.rec** %osucc380, align 8
  %os1381 = bitcast %union.rec* %169 to %struct.word_type*
  %olist382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist382, i32 0, i64 1
  %opred384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx383, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %opred384, align 8
  store %union.rec* %170, %union.rec** %obj, align 8
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.394, %cond.end.367
  %171 = load %union.rec*, %union.rec** %obj, align 8
  %os1386 = bitcast %union.rec* %171 to %struct.word_type*
  %ou1387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 1
  %os11388 = bitcast %union.FIRST_UNION* %ou1387 to %struct.anon*
  %otype389 = getelementptr inbounds %struct.anon, %struct.anon* %os11388, i32 0, i32 0
  %172 = load i8, i8* %otype389, align 1
  %conv390 = zext i8 %172 to i32
  %cmp391 = icmp eq i32 %conv390, 0
  br i1 %cmp391, label %for.body.393, label %for.end.399

for.body.393:                                     ; preds = %for.cond.385
  br label %for.inc.394

for.inc.394:                                      ; preds = %for.body.393
  %173 = load %union.rec*, %union.rec** %obj, align 8
  %os1395 = bitcast %union.rec* %173 to %struct.word_type*
  %olist396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1395, i32 0, i32 0
  %arrayidx397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist396, i32 0, i64 1
  %opred398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx397, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %opred398, align 8
  store %union.rec* %174, %union.rec** %obj, align 8
  br label %for.cond.385

for.end.399:                                      ; preds = %for.cond.385
  %175 = load %union.rec*, %union.rec** %y, align 8
  %os1400 = bitcast %union.rec* %175 to %struct.word_type*
  %olist401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist401, i32 0, i64 0
  %osucc403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx402, i32 0, i32 1
  %176 = load %union.rec*, %union.rec** %osucc403, align 8
  store %union.rec* %176, %union.rec** @xx_link, align 8
  %177 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %177, %union.rec** @zz_hold, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1404 = bitcast %union.rec* %178 to %struct.word_type*
  %olist405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1404, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist405, i32 0, i64 0
  %osucc407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx406, i32 0, i32 1
  %179 = load %union.rec*, %union.rec** %osucc407, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp408 = icmp eq %union.rec* %179, %180
  br i1 %cmp408, label %cond.true.410, label %cond.false.411

cond.true.410:                                    ; preds = %for.end.399
  br label %cond.end.440

cond.false.411:                                   ; preds = %for.end.399
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1412 = bitcast %union.rec* %181 to %struct.word_type*
  %olist413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1412, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist413, i32 0, i64 0
  %osucc415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx414, i32 0, i32 1
  %182 = load %union.rec*, %union.rec** %osucc415, align 8
  store %union.rec* %182, %union.rec** @zz_res, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1416 = bitcast %union.rec* %183 to %struct.word_type*
  %olist417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist417, i32 0, i64 0
  %opred419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx418, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %opred419, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1420 = bitcast %union.rec* %185 to %struct.word_type*
  %olist421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1420, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist421, i32 0, i64 0
  %opred423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx422, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred423, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1424 = bitcast %union.rec* %187 to %struct.word_type*
  %olist425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist425, i32 0, i64 0
  %opred427 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx426, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %opred427, align 8
  %os1428 = bitcast %union.rec* %188 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 0
  %osucc431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 1
  store %union.rec* %186, %union.rec** %osucc431, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1432 = bitcast %union.rec* %190 to %struct.word_type*
  %olist433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist433, i32 0, i64 0
  %osucc435 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx434, i32 0, i32 1
  store %union.rec* %189, %union.rec** %osucc435, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1436 = bitcast %union.rec* %191 to %struct.word_type*
  %olist437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1436, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist437, i32 0, i64 0
  %opred439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx438, i32 0, i32 0
  store %union.rec* %189, %union.rec** %opred439, align 8
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.411, %cond.true.410
  %cond441 = phi %union.rec* [ null, %cond.true.410 ], [ %192, %cond.false.411 ]
  %193 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %193, %union.rec** @zz_res, align 8
  %194 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %194, %union.rec** @zz_hold, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp442 = icmp eq %union.rec* %195, null
  br i1 %cmp442, label %cond.true.444, label %cond.false.445

cond.true.444:                                    ; preds = %cond.end.440
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.480

cond.false.445:                                   ; preds = %cond.end.440
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp446 = icmp eq %union.rec* %197, null
  br i1 %cmp446, label %cond.true.448, label %cond.false.449

cond.true.448:                                    ; preds = %cond.false.445
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.478

cond.false.449:                                   ; preds = %cond.false.445
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1450 = bitcast %union.rec* %199 to %struct.word_type*
  %olist451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1450, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist451, i32 0, i64 0
  %opred453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx452, i32 0, i32 0
  %200 = load %union.rec*, %union.rec** %opred453, align 8
  store %union.rec* %200, %union.rec** @zz_tmp, align 8
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1454 = bitcast %union.rec* %201 to %struct.word_type*
  %olist455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1454, i32 0, i32 0
  %arrayidx456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist455, i32 0, i64 0
  %opred457 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx456, i32 0, i32 0
  %202 = load %union.rec*, %union.rec** %opred457, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1458 = bitcast %union.rec* %203 to %struct.word_type*
  %olist459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1458, i32 0, i32 0
  %arrayidx460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist459, i32 0, i64 0
  %opred461 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx460, i32 0, i32 0
  store %union.rec* %202, %union.rec** %opred461, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %205 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1462 = bitcast %union.rec* %205 to %struct.word_type*
  %olist463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1462, i32 0, i32 0
  %arrayidx464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist463, i32 0, i64 0
  %opred465 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx464, i32 0, i32 0
  %206 = load %union.rec*, %union.rec** %opred465, align 8
  %os1466 = bitcast %union.rec* %206 to %struct.word_type*
  %olist467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1466, i32 0, i32 0
  %arrayidx468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist467, i32 0, i64 0
  %osucc469 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx468, i32 0, i32 1
  store %union.rec* %204, %union.rec** %osucc469, align 8
  %207 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1470 = bitcast %union.rec* %208 to %struct.word_type*
  %olist471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1470, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist471, i32 0, i64 0
  %opred473 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx472, i32 0, i32 0
  store %union.rec* %207, %union.rec** %opred473, align 8
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %210 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1474 = bitcast %union.rec* %210 to %struct.word_type*
  %olist475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1474, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist475, i32 0, i64 0
  %osucc477 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx476, i32 0, i32 1
  store %union.rec* %209, %union.rec** %osucc477, align 8
  br label %cond.end.478

cond.end.478:                                     ; preds = %cond.false.449, %cond.true.448
  %cond479 = phi %union.rec* [ %198, %cond.true.448 ], [ %209, %cond.false.449 ]
  br label %cond.end.480

cond.end.480:                                     ; preds = %cond.end.478, %cond.true.444
  %cond481 = phi %union.rec* [ %196, %cond.true.444 ], [ %cond479, %cond.end.478 ]
  %211 = load %union.rec*, %union.rec** %y, align 8
  %os1482 = bitcast %union.rec* %211 to %struct.word_type*
  %olist483 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1482, i32 0, i32 0
  %arrayidx484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist483, i32 0, i64 0
  %opred485 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx484, i32 0, i32 0
  %212 = load %union.rec*, %union.rec** %opred485, align 8
  store %union.rec* %212, %union.rec** @xx_link, align 8
  %213 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %213, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1486 = bitcast %union.rec* %214 to %struct.word_type*
  %olist487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1486, i32 0, i32 0
  %arrayidx488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist487, i32 0, i64 0
  %osucc489 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx488, i32 0, i32 1
  %215 = load %union.rec*, %union.rec** %osucc489, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp490 = icmp eq %union.rec* %215, %216
  br i1 %cmp490, label %cond.true.492, label %cond.false.493

cond.true.492:                                    ; preds = %cond.end.480
  br label %cond.end.522

cond.false.493:                                   ; preds = %cond.end.480
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1494 = bitcast %union.rec* %217 to %struct.word_type*
  %olist495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1494, i32 0, i32 0
  %arrayidx496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist495, i32 0, i64 0
  %osucc497 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx496, i32 0, i32 1
  %218 = load %union.rec*, %union.rec** %osucc497, align 8
  store %union.rec* %218, %union.rec** @zz_res, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1498 = bitcast %union.rec* %219 to %struct.word_type*
  %olist499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1498, i32 0, i32 0
  %arrayidx500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist499, i32 0, i64 0
  %opred501 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx500, i32 0, i32 0
  %220 = load %union.rec*, %union.rec** %opred501, align 8
  %221 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1502 = bitcast %union.rec* %221 to %struct.word_type*
  %olist503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1502, i32 0, i32 0
  %arrayidx504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist503, i32 0, i64 0
  %opred505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx504, i32 0, i32 0
  store %union.rec* %220, %union.rec** %opred505, align 8
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1506 = bitcast %union.rec* %223 to %struct.word_type*
  %olist507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1506, i32 0, i32 0
  %arrayidx508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist507, i32 0, i64 0
  %opred509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx508, i32 0, i32 0
  %224 = load %union.rec*, %union.rec** %opred509, align 8
  %os1510 = bitcast %union.rec* %224 to %struct.word_type*
  %olist511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1510, i32 0, i32 0
  %arrayidx512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist511, i32 0, i64 0
  %osucc513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx512, i32 0, i32 1
  store %union.rec* %222, %union.rec** %osucc513, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1514 = bitcast %union.rec* %226 to %struct.word_type*
  %olist515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1514, i32 0, i32 0
  %arrayidx516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist515, i32 0, i64 0
  %osucc517 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx516, i32 0, i32 1
  store %union.rec* %225, %union.rec** %osucc517, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1518 = bitcast %union.rec* %227 to %struct.word_type*
  %olist519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1518, i32 0, i32 0
  %arrayidx520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist519, i32 0, i64 0
  %opred521 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx520, i32 0, i32 0
  store %union.rec* %225, %union.rec** %opred521, align 8
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.522

cond.end.522:                                     ; preds = %cond.false.493, %cond.true.492
  %cond523 = phi %union.rec* [ null, %cond.true.492 ], [ %228, %cond.false.493 ]
  %229 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %229, %union.rec** @zz_res, align 8
  %230 = load %union.rec*, %union.rec** %obj, align 8
  store %union.rec* %230, %union.rec** @zz_hold, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp524 = icmp eq %union.rec* %231, null
  br i1 %cmp524, label %cond.true.526, label %cond.false.527

cond.true.526:                                    ; preds = %cond.end.522
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.562

cond.false.527:                                   ; preds = %cond.end.522
  %233 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp528 = icmp eq %union.rec* %233, null
  br i1 %cmp528, label %cond.true.530, label %cond.false.531

cond.true.530:                                    ; preds = %cond.false.527
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.560

cond.false.531:                                   ; preds = %cond.false.527
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1532 = bitcast %union.rec* %235 to %struct.word_type*
  %olist533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1532, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist533, i32 0, i64 0
  %opred535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx534, i32 0, i32 0
  %236 = load %union.rec*, %union.rec** %opred535, align 8
  store %union.rec* %236, %union.rec** @zz_tmp, align 8
  %237 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1536 = bitcast %union.rec* %237 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 0
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %opred539, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %239 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 0
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  store %union.rec* %238, %union.rec** %opred543, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %241 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1544 = bitcast %union.rec* %241 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 0
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %opred547, align 8
  %os1548 = bitcast %union.rec* %242 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 0
  %osucc551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 1
  store %union.rec* %240, %union.rec** %osucc551, align 8
  %243 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %244 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1552 = bitcast %union.rec* %244 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 0
  %opred555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 0
  store %union.rec* %243, %union.rec** %opred555, align 8
  %245 = load %union.rec*, %union.rec** @zz_res, align 8
  %246 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1556 = bitcast %union.rec* %246 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 0
  %osucc559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 1
  store %union.rec* %245, %union.rec** %osucc559, align 8
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.531, %cond.true.530
  %cond561 = phi %union.rec* [ %234, %cond.true.530 ], [ %245, %cond.false.531 ]
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.end.560, %cond.true.526
  %cond563 = phi %union.rec* [ %232, %cond.true.526 ], [ %cond561, %cond.end.560 ]
  %247 = load %union.rec*, %union.rec** %y, align 8
  %os1564 = bitcast %union.rec* %247 to %struct.word_type*
  %olist565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1564, i32 0, i32 0
  %arrayidx566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist565, i32 0, i64 0
  %osucc567 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx566, i32 0, i32 1
  %248 = load %union.rec*, %union.rec** %osucc567, align 8
  %249 = load %union.rec*, %union.rec** %y, align 8
  %cmp568 = icmp eq %union.rec* %248, %249
  br i1 %cmp568, label %land.lhs.true.570, label %if.then.577

land.lhs.true.570:                                ; preds = %cond.end.562
  %250 = load %union.rec*, %union.rec** %y, align 8
  %os1571 = bitcast %union.rec* %250 to %struct.word_type*
  %olist572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 0
  %arrayidx573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist572, i32 0, i64 1
  %osucc574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx573, i32 0, i32 1
  %251 = load %union.rec*, %union.rec** %osucc574, align 8
  %252 = load %union.rec*, %union.rec** %y, align 8
  %cmp575 = icmp eq %union.rec* %251, %252
  br i1 %cmp575, label %if.end.579, label %if.then.577

if.then.577:                                      ; preds = %land.lhs.true.570, %cond.end.562
  %253 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call578 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %253, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.577, %land.lhs.true.570
  %254 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %254, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %255, %union.rec** @zz_hold, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1580 = bitcast %union.rec* %256 to %struct.word_type*
  %ou1581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1580, i32 0, i32 1
  %os11582 = bitcast %union.FIRST_UNION* %ou1581 to %struct.anon*
  %otype583 = getelementptr inbounds %struct.anon, %struct.anon* %os11582, i32 0, i32 0
  %257 = load i8, i8* %otype583, align 1
  %conv584 = zext i8 %257 to i32
  %cmp585 = icmp eq i32 %conv584, 11
  br i1 %cmp585, label %cond.true.595, label %lor.lhs.false.587

lor.lhs.false.587:                                ; preds = %if.end.579
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1588 = bitcast %union.rec* %258 to %struct.word_type*
  %ou1589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1588, i32 0, i32 1
  %os11590 = bitcast %union.FIRST_UNION* %ou1589 to %struct.anon*
  %otype591 = getelementptr inbounds %struct.anon, %struct.anon* %os11590, i32 0, i32 0
  %259 = load i8, i8* %otype591, align 1
  %conv592 = zext i8 %259 to i32
  %cmp593 = icmp eq i32 %conv592, 12
  br i1 %cmp593, label %cond.true.595, label %cond.false.601

cond.true.595:                                    ; preds = %lor.lhs.false.587, %if.end.579
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1596 = bitcast %union.rec* %260 to %struct.word_type*
  %ou1597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 1
  %os11598 = bitcast %union.FIRST_UNION* %ou1597 to %struct.anon*
  %orec_size599 = getelementptr inbounds %struct.anon, %struct.anon* %os11598, i32 0, i32 1
  %261 = load i8, i8* %orec_size599, align 1
  %conv600 = zext i8 %261 to i32
  br label %cond.end.609

cond.false.601:                                   ; preds = %lor.lhs.false.587
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1602 = bitcast %union.rec* %262 to %struct.word_type*
  %ou1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1602, i32 0, i32 1
  %os11604 = bitcast %union.FIRST_UNION* %ou1603 to %struct.anon*
  %otype605 = getelementptr inbounds %struct.anon, %struct.anon* %os11604, i32 0, i32 0
  %263 = load i8, i8* %otype605, align 1
  %idxprom606 = zext i8 %263 to i64
  %arrayidx607 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom606
  %264 = load i8, i8* %arrayidx607, align 1
  %conv608 = zext i8 %264 to i32
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.false.601, %cond.true.595
  %cond610 = phi i32 [ %conv600, %cond.true.595 ], [ %conv608, %cond.false.601 ]
  store i32 %cond610, i32* @zz_size, align 4
  %265 = load i32, i32* @zz_size, align 4
  %idxprom611 = sext i32 %265 to i64
  %arrayidx612 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom611
  %266 = load %union.rec*, %union.rec** %arrayidx612, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1613 = bitcast %union.rec* %267 to %struct.word_type*
  %olist614 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1613, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist614, i32 0, i64 0
  %opred616 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx615, i32 0, i32 0
  store %union.rec* %266, %union.rec** %opred616, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = load i32, i32* @zz_size, align 4
  %idxprom617 = sext i32 %269 to i64
  %arrayidx618 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom617
  store %union.rec* %268, %union.rec** %arrayidx618, align 8
  %270 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %270
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @BuildMergeTree(i32 %n, %union.rec* %x, %union.rec** %lenv, %union.rec** %lact) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca %union.rec*, align 8
  %lenv.addr = alloca %union.rec**, align 8
  %lact.addr = alloca %union.rec**, align 8
  %res = alloca %union.rec*, align 8
  %merge = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %l = alloca %union.rec*, align 8
  %r = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %act = alloca %union.rec*, align 8
  %left_par = alloca %union.rec*, align 8
  %right_par = alloca %union.rec*, align 8
  store i32 %n, i32* %n.addr, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec** %lenv, %union.rec*** %lenv.addr, align 8
  store %union.rec** %lact, %union.rec*** %lact.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else.142

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 81), align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp2 = icmp uge i64 %conv1, 265
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %3 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %4 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp5 = icmp eq %union.rec* %4, null
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %5 = load i32, i32* @zz_size, align 4
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call8 = call %union.rec* @GetMemory(i32 %5, %struct.FILE_POS* %6)
  store %union.rec* %call8, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %7 = load i32, i32* @zz_size, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom10
  %8 = load %union.rec*, %union.rec** %arrayidx11, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  %11 = load i32, i32* @zz_size, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom13
  store %union.rec* %10, %union.rec** %arrayidx14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.4
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os116 = bitcast %union.rec* %12 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 81, i8* %otype, align 1
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os117 = bitcast %union.rec* %14 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %15 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 1
  %opred23 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred23, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os124 = bitcast %union.rec* %16 to %struct.word_type*
  %olist25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist25, i32 0, i64 0
  %osucc27 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx26, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc27, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os128 = bitcast %union.rec* %17 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 0
  %opred31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred31, align 8
  store %union.rec* %13, %union.rec** %res, align 8
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os132 = bitcast %union.rec* %18 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 0
  %osucc35 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %osucc35, align 8
  %os136 = bitcast %union.rec* %19 to %struct.word_type*
  %olist37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist37, i32 0, i64 1
  %opred39 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx38, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %opred39, align 8
  store %union.rec* %20, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os140 = bitcast %union.rec* %21 to %struct.word_type*
  %ou141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 1
  %os1142 = bitcast %union.FIRST_UNION* %ou141 to %struct.anon*
  %otype43 = getelementptr inbounds %struct.anon, %struct.anon* %os1142, i32 0, i32 0
  %22 = load i8, i8* %otype43, align 1
  %conv44 = zext i8 %22 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os147 = bitcast %union.rec* %23 to %struct.word_type*
  %olist48 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist48, i32 0, i64 1
  %opred50 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx49, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred50, align 8
  store %union.rec* %24, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os151 = bitcast %union.rec* %25 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 0
  %osucc54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc54, align 8
  store %union.rec* %26, %union.rec** @xx_link, align 8
  %27 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %27, %union.rec** @zz_hold, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os155 = bitcast %union.rec* %28 to %struct.word_type*
  %olist56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist56, i32 0, i64 0
  %osucc58 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %osucc58, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp59 = icmp eq %union.rec* %29, %30
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os161 = bitcast %union.rec* %31 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 0
  %osucc64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %osucc64, align 8
  store %union.rec* %32, %union.rec** @zz_res, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os165 = bitcast %union.rec* %33 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 0
  %opred68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred68, align 8
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  %os169 = bitcast %union.rec* %35 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 0
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  store %union.rec* %34, %union.rec** %opred72, align 8
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os173 = bitcast %union.rec* %37 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 0
  %opred76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 0
  %38 = load %union.rec*, %union.rec** %opred76, align 8
  %os177 = bitcast %union.rec* %38 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 0
  %osucc80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 1
  store %union.rec* %36, %union.rec** %osucc80, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os181 = bitcast %union.rec* %40 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 0
  %osucc84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc84, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %41 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 0
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred88, align 8
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %42, %cond.false ]
  %43 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %43, %union.rec** @zz_res, align 8
  %44 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %44, %union.rec** @zz_hold, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp89 = icmp eq %union.rec* %45, null
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %cond.end
  %46 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.127

cond.false.92:                                    ; preds = %cond.end
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp93 = icmp eq %union.rec* %47, null
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.false.92
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.125

cond.false.96:                                    ; preds = %cond.false.92
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os197 = bitcast %union.rec* %49 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %opred100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %opred100, align 8
  store %union.rec* %50, %union.rec** @zz_tmp, align 8
  %51 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1101 = bitcast %union.rec* %51 to %struct.word_type*
  %olist102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist102, i32 0, i64 0
  %opred104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx103, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred104, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1105 = bitcast %union.rec* %53 to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 0
  %opred108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred108, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1109 = bitcast %union.rec* %55 to %struct.word_type*
  %olist110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist110, i32 0, i64 0
  %opred112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx111, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %opred112, align 8
  %os1113 = bitcast %union.rec* %56 to %struct.word_type*
  %olist114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist114, i32 0, i64 0
  %osucc116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx115, i32 0, i32 1
  store %union.rec* %54, %union.rec** %osucc116, align 8
  %57 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %58 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1117 = bitcast %union.rec* %58 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 0
  %opred120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 0
  store %union.rec* %57, %union.rec** %opred120, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %60 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1121 = bitcast %union.rec* %60 to %struct.word_type*
  %olist122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist122, i32 0, i64 0
  %osucc124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx123, i32 0, i32 1
  store %union.rec* %59, %union.rec** %osucc124, align 8
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.96, %cond.true.95
  %cond126 = phi %union.rec* [ %48, %cond.true.95 ], [ %59, %cond.false.96 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.91
  %cond128 = phi %union.rec* [ %46, %cond.true.91 ], [ %cond126, %cond.end.125 ]
  %61 = load %union.rec*, %union.rec** %y, align 8
  %os1129 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 1
  %os11131 = bitcast %union.FIRST_UNION* %ou1130 to %struct.anon*
  %otype132 = getelementptr inbounds %struct.anon, %struct.anon* %os11131, i32 0, i32 0
  %62 = load i8, i8* %otype132, align 1
  %conv133 = zext i8 %62 to i32
  %cmp134 = icmp eq i32 %conv133, 2
  br i1 %cmp134, label %land.lhs.true, label %if.then.136

land.lhs.true:                                    ; preds = %cond.end.127
  %63 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %63 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %64 = load %union.rec*, %union.rec** %oactual, align 8
  %os6 = bitcast %union.rec* %64 to %struct.symbol_type*
  %ohas_merge = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 16
  %bf.load = load i8, i8* %ohas_merge, align 2
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.138, label %if.then.136

if.then.136:                                      ; preds = %land.lhs.true, %cond.end.127
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call137 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %land.lhs.true
  %66 = load %union.rec*, %union.rec** %y, align 8
  %os2139 = bitcast %union.rec* %66 to %struct.closure_type*
  %oactual140 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2139, i32 0, i32 5
  %67 = load %union.rec*, %union.rec** %oactual140, align 8
  %68 = load %union.rec**, %union.rec*** %lact.addr, align 8
  store %union.rec* %67, %union.rec** %68, align 8
  %69 = load %union.rec*, %union.rec** %y, align 8
  %call141 = call %union.rec* @DetachEnv(%union.rec* %69)
  %70 = load %union.rec**, %union.rec*** %lenv.addr, align 8
  store %union.rec* %call141, %union.rec** %70, align 8
  %71 = load %union.rec**, %union.rec*** %lenv.addr, align 8
  %72 = load %union.rec*, %union.rec** %71, align 8
  %73 = load %union.rec*, %union.rec** %res, align 8
  call void @AttachEnv(%union.rec* %72, %union.rec* %73)
  br label %if.end.1120

if.else.142:                                      ; preds = %entry
  %74 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %74, 2
  %75 = load %union.rec*, %union.rec** %x.addr, align 8
  %76 = load %union.rec**, %union.rec*** %lenv.addr, align 8
  %77 = load %union.rec**, %union.rec*** %lact.addr, align 8
  %call143 = call %union.rec* @BuildMergeTree(i32 %div, %union.rec* %75, %union.rec** %76, %union.rec** %77)
  store %union.rec* %call143, %union.rec** %l, align 8
  %78 = load i32, i32* %n.addr, align 4
  %79 = load i32, i32* %n.addr, align 4
  %div144 = sdiv i32 %79, 2
  %sub = sub nsw i32 %78, %div144
  %80 = load %union.rec*, %union.rec** %x.addr, align 8
  %call145 = call %union.rec* @BuildMergeTree(i32 %sub, %union.rec* %80, %union.rec** %env, %union.rec** %act)
  store %union.rec* %call145, %union.rec** %r, align 8
  %81 = load %union.rec*, %union.rec** %act, align 8
  %os1146 = bitcast %union.rec* %81 to %struct.word_type*
  %olist147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist147, i32 0, i64 0
  %osucc149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx148, i32 0, i32 1
  %82 = load %union.rec*, %union.rec** %osucc149, align 8
  store %union.rec* %82, %union.rec** %link, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.181, %if.else.142
  %83 = load %union.rec*, %union.rec** %link, align 8
  %84 = load %union.rec*, %union.rec** %act, align 8
  %cmp151 = icmp ne %union.rec* %83, %84
  br i1 %cmp151, label %for.body.153, label %for.end.186

for.body.153:                                     ; preds = %for.cond.150
  %85 = load %union.rec*, %union.rec** %link, align 8
  %os1154 = bitcast %union.rec* %85 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 1
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred157, align 8
  store %union.rec* %86, %union.rec** %y, align 8
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.167, %for.body.153
  %87 = load %union.rec*, %union.rec** %y, align 8
  %os1159 = bitcast %union.rec* %87 to %struct.word_type*
  %ou1160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 1
  %os11161 = bitcast %union.FIRST_UNION* %ou1160 to %struct.anon*
  %otype162 = getelementptr inbounds %struct.anon, %struct.anon* %os11161, i32 0, i32 0
  %88 = load i8, i8* %otype162, align 1
  %conv163 = zext i8 %88 to i32
  %cmp164 = icmp eq i32 %conv163, 0
  br i1 %cmp164, label %for.body.166, label %for.end.172

for.body.166:                                     ; preds = %for.cond.158
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.166
  %89 = load %union.rec*, %union.rec** %y, align 8
  %os1168 = bitcast %union.rec* %89 to %struct.word_type*
  %olist169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist169, i32 0, i64 1
  %opred171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx170, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %opred171, align 8
  store %union.rec* %90, %union.rec** %y, align 8
  br label %for.cond.158

for.end.172:                                      ; preds = %for.cond.158
  %91 = load %union.rec*, %union.rec** %y, align 8
  %os6173 = bitcast %union.rec* %91 to %struct.symbol_type*
  %ois_merge = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6173, i32 0, i32 16
  %bf.load174 = load i8, i8* %ois_merge, align 2
  %bf.lshr175 = lshr i8 %bf.load174, 2
  %bf.clear176 = and i8 %bf.lshr175, 1
  %bf.cast177 = zext i8 %bf.clear176 to i32
  %tobool178 = icmp ne i32 %bf.cast177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %for.end.172
  br label %for.end.186

if.end.180:                                       ; preds = %for.end.172
  br label %for.inc.181

for.inc.181:                                      ; preds = %if.end.180
  %92 = load %union.rec*, %union.rec** %link, align 8
  %os1182 = bitcast %union.rec* %92 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 0
  %osucc185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 1
  %93 = load %union.rec*, %union.rec** %osucc185, align 8
  store %union.rec* %93, %union.rec** %link, align 8
  br label %for.cond.150

for.end.186:                                      ; preds = %if.then.179, %for.cond.150
  %94 = load %union.rec*, %union.rec** %y, align 8
  %95 = load %union.rec*, %union.rec** %act, align 8
  %cmp187 = icmp ne %union.rec* %94, %95
  br i1 %cmp187, label %if.end.191, label %if.then.189

if.then.189:                                      ; preds = %for.end.186
  %96 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call190 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %for.end.186
  %97 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv192 = zext i8 %97 to i32
  store i32 %conv192, i32* @zz_size, align 4
  %conv193 = sext i32 %conv192 to i64
  %cmp194 = icmp uge i64 %conv193, 265
  br i1 %cmp194, label %if.then.196, label %if.else.198

if.then.196:                                      ; preds = %if.end.191
  %98 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call197 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %98)
  br label %if.end.215

if.else.198:                                      ; preds = %if.end.191
  %99 = load i32, i32* @zz_size, align 4
  %idxprom199 = sext i32 %99 to i64
  %arrayidx200 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom199
  %100 = load %union.rec*, %union.rec** %arrayidx200, align 8
  %cmp201 = icmp eq %union.rec* %100, null
  br i1 %cmp201, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %if.else.198
  %101 = load i32, i32* @zz_size, align 4
  %102 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call204 = call %union.rec* @GetMemory(i32 %101, %struct.FILE_POS* %102)
  store %union.rec* %call204, %union.rec** @zz_hold, align 8
  br label %if.end.214

if.else.205:                                      ; preds = %if.else.198
  %103 = load i32, i32* @zz_size, align 4
  %idxprom206 = sext i32 %103 to i64
  %arrayidx207 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom206
  %104 = load %union.rec*, %union.rec** %arrayidx207, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1208 = bitcast %union.rec* %105 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 0
  %opred211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %opred211, align 8
  %107 = load i32, i32* @zz_size, align 4
  %idxprom212 = sext i32 %107 to i64
  %arrayidx213 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom212
  store %union.rec* %106, %union.rec** %arrayidx213, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.205, %if.then.203
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.196
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1216 = bitcast %union.rec* %108 to %struct.word_type*
  %ou1217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 1
  %os11218 = bitcast %union.FIRST_UNION* %ou1217 to %struct.anon*
  %otype219 = getelementptr inbounds %struct.anon, %struct.anon* %os11218, i32 0, i32 0
  store i8 2, i8* %otype219, align 1
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1220 = bitcast %union.rec* %110 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 1
  %osucc223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc223, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1224 = bitcast %union.rec* %111 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 1
  %opred227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred227, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %112 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 0
  %osucc231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc231, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1232 = bitcast %union.rec* %113 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 0
  %opred235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred235, align 8
  store %union.rec* %109, %union.rec** %merge, align 8
  %114 = load %union.rec*, %union.rec** %y, align 8
  %115 = load %union.rec*, %union.rec** %merge, align 8
  %os2236 = bitcast %union.rec* %115 to %struct.closure_type*
  %oactual237 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2236, i32 0, i32 5
  store %union.rec* %114, %union.rec** %oactual237, align 8
  %116 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv238 = zext i8 %116 to i32
  store i32 %conv238, i32* @zz_size, align 4
  %conv239 = sext i32 %conv238 to i64
  %cmp240 = icmp uge i64 %conv239, 265
  br i1 %cmp240, label %if.then.242, label %if.else.244

if.then.242:                                      ; preds = %if.end.215
  %117 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call243 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %117)
  br label %if.end.261

if.else.244:                                      ; preds = %if.end.215
  %118 = load i32, i32* @zz_size, align 4
  %idxprom245 = sext i32 %118 to i64
  %arrayidx246 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom245
  %119 = load %union.rec*, %union.rec** %arrayidx246, align 8
  %cmp247 = icmp eq %union.rec* %119, null
  br i1 %cmp247, label %if.then.249, label %if.else.251

if.then.249:                                      ; preds = %if.else.244
  %120 = load i32, i32* @zz_size, align 4
  %121 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call250 = call %union.rec* @GetMemory(i32 %120, %struct.FILE_POS* %121)
  store %union.rec* %call250, %union.rec** @zz_hold, align 8
  br label %if.end.260

if.else.251:                                      ; preds = %if.else.244
  %122 = load i32, i32* @zz_size, align 4
  %idxprom252 = sext i32 %122 to i64
  %arrayidx253 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom252
  %123 = load %union.rec*, %union.rec** %arrayidx253, align 8
  store %union.rec* %123, %union.rec** @zz_hold, align 8
  store %union.rec* %123, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1254 = bitcast %union.rec* %124 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 0
  %opred257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 0
  %125 = load %union.rec*, %union.rec** %opred257, align 8
  %126 = load i32, i32* @zz_size, align 4
  %idxprom258 = sext i32 %126 to i64
  %arrayidx259 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom258
  store %union.rec* %125, %union.rec** %arrayidx259, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.251, %if.then.249
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.242
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1262 = bitcast %union.rec* %127 to %struct.word_type*
  %ou1263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 1
  %os11264 = bitcast %union.FIRST_UNION* %ou1263 to %struct.anon*
  %otype265 = getelementptr inbounds %struct.anon, %struct.anon* %os11264, i32 0, i32 0
  store i8 10, i8* %otype265, align 1
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1266 = bitcast %union.rec* %129 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 1
  %osucc269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 1
  store %union.rec* %128, %union.rec** %osucc269, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1270 = bitcast %union.rec* %130 to %struct.word_type*
  %olist271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist271, i32 0, i64 1
  %opred273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx272, i32 0, i32 0
  store %union.rec* %128, %union.rec** %opred273, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1274 = bitcast %union.rec* %131 to %struct.word_type*
  %olist275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist275, i32 0, i64 0
  %osucc277 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx276, i32 0, i32 1
  store %union.rec* %128, %union.rec** %osucc277, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1278 = bitcast %union.rec* %132 to %struct.word_type*
  %olist279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist279, i32 0, i64 0
  %opred281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx280, i32 0, i32 0
  store %union.rec* %128, %union.rec** %opred281, align 8
  store %union.rec* %128, %union.rec** %left_par, align 8
  %133 = load %union.rec*, %union.rec** %y, align 8
  %call282 = call %union.rec* @ChildSym(%union.rec* %133, i32 144)
  %134 = load %union.rec*, %union.rec** %left_par, align 8
  %os2283 = bitcast %union.rec* %134 to %struct.closure_type*
  %oactual284 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2283, i32 0, i32 5
  store %union.rec* %call282, %union.rec** %oactual284, align 8
  %135 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv285 = zext i8 %135 to i32
  store i32 %conv285, i32* @zz_size, align 4
  %conv286 = sext i32 %conv285 to i64
  %cmp287 = icmp uge i64 %conv286, 265
  br i1 %cmp287, label %if.then.289, label %if.else.291

if.then.289:                                      ; preds = %if.end.261
  %136 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call290 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %136)
  br label %if.end.308

if.else.291:                                      ; preds = %if.end.261
  %137 = load i32, i32* @zz_size, align 4
  %idxprom292 = sext i32 %137 to i64
  %arrayidx293 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom292
  %138 = load %union.rec*, %union.rec** %arrayidx293, align 8
  %cmp294 = icmp eq %union.rec* %138, null
  br i1 %cmp294, label %if.then.296, label %if.else.298

if.then.296:                                      ; preds = %if.else.291
  %139 = load i32, i32* @zz_size, align 4
  %140 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call297 = call %union.rec* @GetMemory(i32 %139, %struct.FILE_POS* %140)
  store %union.rec* %call297, %union.rec** @zz_hold, align 8
  br label %if.end.307

if.else.298:                                      ; preds = %if.else.291
  %141 = load i32, i32* @zz_size, align 4
  %idxprom299 = sext i32 %141 to i64
  %arrayidx300 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom299
  %142 = load %union.rec*, %union.rec** %arrayidx300, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1301 = bitcast %union.rec* %143 to %struct.word_type*
  %olist302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1301, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist302, i32 0, i64 0
  %opred304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx303, i32 0, i32 0
  %144 = load %union.rec*, %union.rec** %opred304, align 8
  %145 = load i32, i32* @zz_size, align 4
  %idxprom305 = sext i32 %145 to i64
  %arrayidx306 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom305
  store %union.rec* %144, %union.rec** %arrayidx306, align 8
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.298, %if.then.296
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.then.289
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1309 = bitcast %union.rec* %146 to %struct.word_type*
  %ou1310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 1
  %os11311 = bitcast %union.FIRST_UNION* %ou1310 to %struct.anon*
  %otype312 = getelementptr inbounds %struct.anon, %struct.anon* %os11311, i32 0, i32 0
  store i8 0, i8* %otype312, align 1
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1313 = bitcast %union.rec* %148 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 1
  %osucc316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 1
  store %union.rec* %147, %union.rec** %osucc316, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1317 = bitcast %union.rec* %149 to %struct.word_type*
  %olist318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist318, i32 0, i64 1
  %opred320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx319, i32 0, i32 0
  store %union.rec* %147, %union.rec** %opred320, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1321 = bitcast %union.rec* %150 to %struct.word_type*
  %olist322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist322, i32 0, i64 0
  %osucc324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx323, i32 0, i32 1
  store %union.rec* %147, %union.rec** %osucc324, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1325 = bitcast %union.rec* %151 to %struct.word_type*
  %olist326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1325, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist326, i32 0, i64 0
  %opred328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx327, i32 0, i32 0
  store %union.rec* %147, %union.rec** %opred328, align 8
  store %union.rec* %147, %union.rec** @xx_link, align 8
  %152 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %152, %union.rec** @zz_res, align 8
  %153 = load %union.rec*, %union.rec** %merge, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp329 = icmp eq %union.rec* %154, null
  br i1 %cmp329, label %cond.true.331, label %cond.false.332

cond.true.331:                                    ; preds = %if.end.308
  %155 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.367

cond.false.332:                                   ; preds = %if.end.308
  %156 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp333 = icmp eq %union.rec* %156, null
  br i1 %cmp333, label %cond.true.335, label %cond.false.336

cond.true.335:                                    ; preds = %cond.false.332
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.365

cond.false.336:                                   ; preds = %cond.false.332
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1337 = bitcast %union.rec* %158 to %struct.word_type*
  %olist338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1337, i32 0, i32 0
  %arrayidx339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist338, i32 0, i64 0
  %opred340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx339, i32 0, i32 0
  %159 = load %union.rec*, %union.rec** %opred340, align 8
  store %union.rec* %159, %union.rec** @zz_tmp, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1341 = bitcast %union.rec* %160 to %struct.word_type*
  %olist342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1341, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist342, i32 0, i64 0
  %opred344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx343, i32 0, i32 0
  %161 = load %union.rec*, %union.rec** %opred344, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1345 = bitcast %union.rec* %162 to %struct.word_type*
  %olist346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist346, i32 0, i64 0
  %opred348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx347, i32 0, i32 0
  store %union.rec* %161, %union.rec** %opred348, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1349 = bitcast %union.rec* %164 to %struct.word_type*
  %olist350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1349, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist350, i32 0, i64 0
  %opred352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx351, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %opred352, align 8
  %os1353 = bitcast %union.rec* %165 to %struct.word_type*
  %olist354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1353, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist354, i32 0, i64 0
  %osucc356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx355, i32 0, i32 1
  store %union.rec* %163, %union.rec** %osucc356, align 8
  %166 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1357 = bitcast %union.rec* %167 to %struct.word_type*
  %olist358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist358, i32 0, i64 0
  %opred360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx359, i32 0, i32 0
  store %union.rec* %166, %union.rec** %opred360, align 8
  %168 = load %union.rec*, %union.rec** @zz_res, align 8
  %169 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1361 = bitcast %union.rec* %169 to %struct.word_type*
  %olist362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist362, i32 0, i64 0
  %osucc364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx363, i32 0, i32 1
  store %union.rec* %168, %union.rec** %osucc364, align 8
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.336, %cond.true.335
  %cond366 = phi %union.rec* [ %157, %cond.true.335 ], [ %168, %cond.false.336 ]
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.end.365, %cond.true.331
  %cond368 = phi %union.rec* [ %155, %cond.true.331 ], [ %cond366, %cond.end.365 ]
  %170 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %170, %union.rec** @zz_res, align 8
  %171 = load %union.rec*, %union.rec** %left_par, align 8
  store %union.rec* %171, %union.rec** @zz_hold, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp369 = icmp eq %union.rec* %172, null
  br i1 %cmp369, label %cond.true.371, label %cond.false.372

cond.true.371:                                    ; preds = %cond.end.367
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.407

cond.false.372:                                   ; preds = %cond.end.367
  %174 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp373 = icmp eq %union.rec* %174, null
  br i1 %cmp373, label %cond.true.375, label %cond.false.376

cond.true.375:                                    ; preds = %cond.false.372
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.405

cond.false.376:                                   ; preds = %cond.false.372
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1377 = bitcast %union.rec* %176 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 1
  %opred380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %opred380, align 8
  store %union.rec* %177, %union.rec** @zz_tmp, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1381 = bitcast %union.rec* %178 to %struct.word_type*
  %olist382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist382, i32 0, i64 1
  %opred384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx383, i32 0, i32 0
  %179 = load %union.rec*, %union.rec** %opred384, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1385 = bitcast %union.rec* %180 to %struct.word_type*
  %olist386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1385, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist386, i32 0, i64 1
  %opred388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx387, i32 0, i32 0
  store %union.rec* %179, %union.rec** %opred388, align 8
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1389 = bitcast %union.rec* %182 to %struct.word_type*
  %olist390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist390, i32 0, i64 1
  %opred392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx391, i32 0, i32 0
  %183 = load %union.rec*, %union.rec** %opred392, align 8
  %os1393 = bitcast %union.rec* %183 to %struct.word_type*
  %olist394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1393, i32 0, i32 0
  %arrayidx395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist394, i32 0, i64 1
  %osucc396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx395, i32 0, i32 1
  store %union.rec* %181, %union.rec** %osucc396, align 8
  %184 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1397 = bitcast %union.rec* %185 to %struct.word_type*
  %olist398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 0
  %arrayidx399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist398, i32 0, i64 1
  %opred400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx399, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred400, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %187 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1401 = bitcast %union.rec* %187 to %struct.word_type*
  %olist402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1401, i32 0, i32 0
  %arrayidx403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist402, i32 0, i64 1
  %osucc404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx403, i32 0, i32 1
  store %union.rec* %186, %union.rec** %osucc404, align 8
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.false.376, %cond.true.375
  %cond406 = phi %union.rec* [ %175, %cond.true.375 ], [ %186, %cond.false.376 ]
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.end.405, %cond.true.371
  %cond408 = phi %union.rec* [ %173, %cond.true.371 ], [ %cond406, %cond.end.405 ]
  %188 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv409 = zext i8 %188 to i32
  store i32 %conv409, i32* @zz_size, align 4
  %conv410 = sext i32 %conv409 to i64
  %cmp411 = icmp uge i64 %conv410, 265
  br i1 %cmp411, label %if.then.413, label %if.else.415

if.then.413:                                      ; preds = %cond.end.407
  %189 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call414 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %189)
  br label %if.end.432

if.else.415:                                      ; preds = %cond.end.407
  %190 = load i32, i32* @zz_size, align 4
  %idxprom416 = sext i32 %190 to i64
  %arrayidx417 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom416
  %191 = load %union.rec*, %union.rec** %arrayidx417, align 8
  %cmp418 = icmp eq %union.rec* %191, null
  br i1 %cmp418, label %if.then.420, label %if.else.422

if.then.420:                                      ; preds = %if.else.415
  %192 = load i32, i32* @zz_size, align 4
  %193 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call421 = call %union.rec* @GetMemory(i32 %192, %struct.FILE_POS* %193)
  store %union.rec* %call421, %union.rec** @zz_hold, align 8
  br label %if.end.431

if.else.422:                                      ; preds = %if.else.415
  %194 = load i32, i32* @zz_size, align 4
  %idxprom423 = sext i32 %194 to i64
  %arrayidx424 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom423
  %195 = load %union.rec*, %union.rec** %arrayidx424, align 8
  store %union.rec* %195, %union.rec** @zz_hold, align 8
  store %union.rec* %195, %union.rec** @zz_hold, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1425 = bitcast %union.rec* %196 to %struct.word_type*
  %olist426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1425, i32 0, i32 0
  %arrayidx427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist426, i32 0, i64 0
  %opred428 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx427, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %opred428, align 8
  %198 = load i32, i32* @zz_size, align 4
  %idxprom429 = sext i32 %198 to i64
  %arrayidx430 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom429
  store %union.rec* %197, %union.rec** %arrayidx430, align 8
  br label %if.end.431

if.end.431:                                       ; preds = %if.else.422, %if.then.420
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.then.413
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1433 = bitcast %union.rec* %199 to %struct.word_type*
  %ou1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1433, i32 0, i32 1
  %os11435 = bitcast %union.FIRST_UNION* %ou1434 to %struct.anon*
  %otype436 = getelementptr inbounds %struct.anon, %struct.anon* %os11435, i32 0, i32 0
  store i8 0, i8* %otype436, align 1
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1437 = bitcast %union.rec* %201 to %struct.word_type*
  %olist438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1437, i32 0, i32 0
  %arrayidx439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist438, i32 0, i64 1
  %osucc440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx439, i32 0, i32 1
  store %union.rec* %200, %union.rec** %osucc440, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1441 = bitcast %union.rec* %202 to %struct.word_type*
  %olist442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1441, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist442, i32 0, i64 1
  %opred444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx443, i32 0, i32 0
  store %union.rec* %200, %union.rec** %opred444, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1445 = bitcast %union.rec* %203 to %struct.word_type*
  %olist446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1445, i32 0, i32 0
  %arrayidx447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist446, i32 0, i64 0
  %osucc448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx447, i32 0, i32 1
  store %union.rec* %200, %union.rec** %osucc448, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1449 = bitcast %union.rec* %204 to %struct.word_type*
  %olist450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist450, i32 0, i64 0
  %opred452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx451, i32 0, i32 0
  store %union.rec* %200, %union.rec** %opred452, align 8
  store %union.rec* %200, %union.rec** @xx_link, align 8
  %205 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %205, %union.rec** @zz_res, align 8
  %206 = load %union.rec*, %union.rec** %left_par, align 8
  store %union.rec* %206, %union.rec** @zz_hold, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp453 = icmp eq %union.rec* %207, null
  br i1 %cmp453, label %cond.true.455, label %cond.false.456

cond.true.455:                                    ; preds = %if.end.432
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.491

cond.false.456:                                   ; preds = %if.end.432
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp457 = icmp eq %union.rec* %209, null
  br i1 %cmp457, label %cond.true.459, label %cond.false.460

cond.true.459:                                    ; preds = %cond.false.456
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.489

cond.false.460:                                   ; preds = %cond.false.456
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1461 = bitcast %union.rec* %211 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 0
  %opred464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 0
  %212 = load %union.rec*, %union.rec** %opred464, align 8
  store %union.rec* %212, %union.rec** @zz_tmp, align 8
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1465 = bitcast %union.rec* %213 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 0
  %opred468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %opred468, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1469 = bitcast %union.rec* %215 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 0
  %opred472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 0
  store %union.rec* %214, %union.rec** %opred472, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %217 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1473 = bitcast %union.rec* %217 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 0
  %opred476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 0
  %218 = load %union.rec*, %union.rec** %opred476, align 8
  %os1477 = bitcast %union.rec* %218 to %struct.word_type*
  %olist478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 0
  %arrayidx479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist478, i32 0, i64 0
  %osucc480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx479, i32 0, i32 1
  store %union.rec* %216, %union.rec** %osucc480, align 8
  %219 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1481 = bitcast %union.rec* %220 to %struct.word_type*
  %olist482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1481, i32 0, i32 0
  %arrayidx483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist482, i32 0, i64 0
  %opred484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx483, i32 0, i32 0
  store %union.rec* %219, %union.rec** %opred484, align 8
  %221 = load %union.rec*, %union.rec** @zz_res, align 8
  %222 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1485 = bitcast %union.rec* %222 to %struct.word_type*
  %olist486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1485, i32 0, i32 0
  %arrayidx487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist486, i32 0, i64 0
  %osucc488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx487, i32 0, i32 1
  store %union.rec* %221, %union.rec** %osucc488, align 8
  br label %cond.end.489

cond.end.489:                                     ; preds = %cond.false.460, %cond.true.459
  %cond490 = phi %union.rec* [ %210, %cond.true.459 ], [ %221, %cond.false.460 ]
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.end.489, %cond.true.455
  %cond492 = phi %union.rec* [ %208, %cond.true.455 ], [ %cond490, %cond.end.489 ]
  %223 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %223, %union.rec** @zz_res, align 8
  %224 = load %union.rec*, %union.rec** %l, align 8
  store %union.rec* %224, %union.rec** @zz_hold, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp493 = icmp eq %union.rec* %225, null
  br i1 %cmp493, label %cond.true.495, label %cond.false.496

cond.true.495:                                    ; preds = %cond.end.491
  %226 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.531

cond.false.496:                                   ; preds = %cond.end.491
  %227 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp497 = icmp eq %union.rec* %227, null
  br i1 %cmp497, label %cond.true.499, label %cond.false.500

cond.true.499:                                    ; preds = %cond.false.496
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.529

cond.false.500:                                   ; preds = %cond.false.496
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1501 = bitcast %union.rec* %229 to %struct.word_type*
  %olist502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1501, i32 0, i32 0
  %arrayidx503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist502, i32 0, i64 1
  %opred504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx503, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %opred504, align 8
  store %union.rec* %230, %union.rec** @zz_tmp, align 8
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1505 = bitcast %union.rec* %231 to %struct.word_type*
  %olist506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist506, i32 0, i64 1
  %opred508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx507, i32 0, i32 0
  %232 = load %union.rec*, %union.rec** %opred508, align 8
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1509 = bitcast %union.rec* %233 to %struct.word_type*
  %olist510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 0
  %arrayidx511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist510, i32 0, i64 1
  %opred512 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx511, i32 0, i32 0
  store %union.rec* %232, %union.rec** %opred512, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %235 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1513 = bitcast %union.rec* %235 to %struct.word_type*
  %olist514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist514, i32 0, i64 1
  %opred516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx515, i32 0, i32 0
  %236 = load %union.rec*, %union.rec** %opred516, align 8
  %os1517 = bitcast %union.rec* %236 to %struct.word_type*
  %olist518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist518, i32 0, i64 1
  %osucc520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx519, i32 0, i32 1
  store %union.rec* %234, %union.rec** %osucc520, align 8
  %237 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %238 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1521 = bitcast %union.rec* %238 to %struct.word_type*
  %olist522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1521, i32 0, i32 0
  %arrayidx523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist522, i32 0, i64 1
  %opred524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx523, i32 0, i32 0
  store %union.rec* %237, %union.rec** %opred524, align 8
  %239 = load %union.rec*, %union.rec** @zz_res, align 8
  %240 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1525 = bitcast %union.rec* %240 to %struct.word_type*
  %olist526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist526, i32 0, i64 1
  %osucc528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx527, i32 0, i32 1
  store %union.rec* %239, %union.rec** %osucc528, align 8
  br label %cond.end.529

cond.end.529:                                     ; preds = %cond.false.500, %cond.true.499
  %cond530 = phi %union.rec* [ %228, %cond.true.499 ], [ %239, %cond.false.500 ]
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.end.529, %cond.true.495
  %cond532 = phi %union.rec* [ %226, %cond.true.495 ], [ %cond530, %cond.end.529 ]
  %241 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv533 = zext i8 %241 to i32
  store i32 %conv533, i32* @zz_size, align 4
  %conv534 = sext i32 %conv533 to i64
  %cmp535 = icmp uge i64 %conv534, 265
  br i1 %cmp535, label %if.then.537, label %if.else.539

if.then.537:                                      ; preds = %cond.end.531
  %242 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call538 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %242)
  br label %if.end.556

if.else.539:                                      ; preds = %cond.end.531
  %243 = load i32, i32* @zz_size, align 4
  %idxprom540 = sext i32 %243 to i64
  %arrayidx541 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom540
  %244 = load %union.rec*, %union.rec** %arrayidx541, align 8
  %cmp542 = icmp eq %union.rec* %244, null
  br i1 %cmp542, label %if.then.544, label %if.else.546

if.then.544:                                      ; preds = %if.else.539
  %245 = load i32, i32* @zz_size, align 4
  %246 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call545 = call %union.rec* @GetMemory(i32 %245, %struct.FILE_POS* %246)
  store %union.rec* %call545, %union.rec** @zz_hold, align 8
  br label %if.end.555

if.else.546:                                      ; preds = %if.else.539
  %247 = load i32, i32* @zz_size, align 4
  %idxprom547 = sext i32 %247 to i64
  %arrayidx548 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom547
  %248 = load %union.rec*, %union.rec** %arrayidx548, align 8
  store %union.rec* %248, %union.rec** @zz_hold, align 8
  store %union.rec* %248, %union.rec** @zz_hold, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1549 = bitcast %union.rec* %249 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 0
  %opred552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 0
  %250 = load %union.rec*, %union.rec** %opred552, align 8
  %251 = load i32, i32* @zz_size, align 4
  %idxprom553 = sext i32 %251 to i64
  %arrayidx554 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom553
  store %union.rec* %250, %union.rec** %arrayidx554, align 8
  br label %if.end.555

if.end.555:                                       ; preds = %if.else.546, %if.then.544
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.555, %if.then.537
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1557 = bitcast %union.rec* %252 to %struct.word_type*
  %ou1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 1
  %os11559 = bitcast %union.FIRST_UNION* %ou1558 to %struct.anon*
  %otype560 = getelementptr inbounds %struct.anon, %struct.anon* %os11559, i32 0, i32 0
  store i8 10, i8* %otype560, align 1
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1561 = bitcast %union.rec* %254 to %struct.word_type*
  %olist562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1561, i32 0, i32 0
  %arrayidx563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist562, i32 0, i64 1
  %osucc564 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx563, i32 0, i32 1
  store %union.rec* %253, %union.rec** %osucc564, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %255 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 1
  %opred568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred568, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1569 = bitcast %union.rec* %256 to %struct.word_type*
  %olist570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist570, i32 0, i64 0
  %osucc572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx571, i32 0, i32 1
  store %union.rec* %253, %union.rec** %osucc572, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1573 = bitcast %union.rec* %257 to %struct.word_type*
  %olist574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist574, i32 0, i64 0
  %opred576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx575, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred576, align 8
  store %union.rec* %253, %union.rec** %right_par, align 8
  %258 = load %union.rec*, %union.rec** %y, align 8
  %call577 = call %union.rec* @ChildSym(%union.rec* %258, i32 146)
  %259 = load %union.rec*, %union.rec** %right_par, align 8
  %os2578 = bitcast %union.rec* %259 to %struct.closure_type*
  %oactual579 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2578, i32 0, i32 5
  store %union.rec* %call577, %union.rec** %oactual579, align 8
  %260 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv580 = zext i8 %260 to i32
  store i32 %conv580, i32* @zz_size, align 4
  %conv581 = sext i32 %conv580 to i64
  %cmp582 = icmp uge i64 %conv581, 265
  br i1 %cmp582, label %if.then.584, label %if.else.586

if.then.584:                                      ; preds = %if.end.556
  %261 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call585 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %261)
  br label %if.end.603

if.else.586:                                      ; preds = %if.end.556
  %262 = load i32, i32* @zz_size, align 4
  %idxprom587 = sext i32 %262 to i64
  %arrayidx588 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom587
  %263 = load %union.rec*, %union.rec** %arrayidx588, align 8
  %cmp589 = icmp eq %union.rec* %263, null
  br i1 %cmp589, label %if.then.591, label %if.else.593

if.then.591:                                      ; preds = %if.else.586
  %264 = load i32, i32* @zz_size, align 4
  %265 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call592 = call %union.rec* @GetMemory(i32 %264, %struct.FILE_POS* %265)
  store %union.rec* %call592, %union.rec** @zz_hold, align 8
  br label %if.end.602

if.else.593:                                      ; preds = %if.else.586
  %266 = load i32, i32* @zz_size, align 4
  %idxprom594 = sext i32 %266 to i64
  %arrayidx595 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom594
  %267 = load %union.rec*, %union.rec** %arrayidx595, align 8
  store %union.rec* %267, %union.rec** @zz_hold, align 8
  store %union.rec* %267, %union.rec** @zz_hold, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1596 = bitcast %union.rec* %268 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 0
  %opred599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %opred599, align 8
  %270 = load i32, i32* @zz_size, align 4
  %idxprom600 = sext i32 %270 to i64
  %arrayidx601 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom600
  store %union.rec* %269, %union.rec** %arrayidx601, align 8
  br label %if.end.602

if.end.602:                                       ; preds = %if.else.593, %if.then.591
  br label %if.end.603

if.end.603:                                       ; preds = %if.end.602, %if.then.584
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1604 = bitcast %union.rec* %271 to %struct.word_type*
  %ou1605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1604, i32 0, i32 1
  %os11606 = bitcast %union.FIRST_UNION* %ou1605 to %struct.anon*
  %otype607 = getelementptr inbounds %struct.anon, %struct.anon* %os11606, i32 0, i32 0
  store i8 0, i8* %otype607, align 1
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1608 = bitcast %union.rec* %273 to %struct.word_type*
  %olist609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1608, i32 0, i32 0
  %arrayidx610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist609, i32 0, i64 1
  %osucc611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx610, i32 0, i32 1
  store %union.rec* %272, %union.rec** %osucc611, align 8
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1612 = bitcast %union.rec* %274 to %struct.word_type*
  %olist613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1612, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist613, i32 0, i64 1
  %opred615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx614, i32 0, i32 0
  store %union.rec* %272, %union.rec** %opred615, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1616 = bitcast %union.rec* %275 to %struct.word_type*
  %olist617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1616, i32 0, i32 0
  %arrayidx618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist617, i32 0, i64 0
  %osucc619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx618, i32 0, i32 1
  store %union.rec* %272, %union.rec** %osucc619, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1620 = bitcast %union.rec* %276 to %struct.word_type*
  %olist621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1620, i32 0, i32 0
  %arrayidx622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist621, i32 0, i64 0
  %opred623 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx622, i32 0, i32 0
  store %union.rec* %272, %union.rec** %opred623, align 8
  store %union.rec* %272, %union.rec** @xx_link, align 8
  %277 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %277, %union.rec** @zz_res, align 8
  %278 = load %union.rec*, %union.rec** %merge, align 8
  store %union.rec* %278, %union.rec** @zz_hold, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp624 = icmp eq %union.rec* %279, null
  br i1 %cmp624, label %cond.true.626, label %cond.false.627

cond.true.626:                                    ; preds = %if.end.603
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.662

cond.false.627:                                   ; preds = %if.end.603
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp628 = icmp eq %union.rec* %281, null
  br i1 %cmp628, label %cond.true.630, label %cond.false.631

cond.true.630:                                    ; preds = %cond.false.627
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.660

cond.false.631:                                   ; preds = %cond.false.627
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1632 = bitcast %union.rec* %283 to %struct.word_type*
  %olist633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1632, i32 0, i32 0
  %arrayidx634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist633, i32 0, i64 0
  %opred635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx634, i32 0, i32 0
  %284 = load %union.rec*, %union.rec** %opred635, align 8
  store %union.rec* %284, %union.rec** @zz_tmp, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1636 = bitcast %union.rec* %285 to %struct.word_type*
  %olist637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1636, i32 0, i32 0
  %arrayidx638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist637, i32 0, i64 0
  %opred639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx638, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %opred639, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1640 = bitcast %union.rec* %287 to %struct.word_type*
  %olist641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1640, i32 0, i32 0
  %arrayidx642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist641, i32 0, i64 0
  %opred643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx642, i32 0, i32 0
  store %union.rec* %286, %union.rec** %opred643, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1644 = bitcast %union.rec* %289 to %struct.word_type*
  %olist645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1644, i32 0, i32 0
  %arrayidx646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist645, i32 0, i64 0
  %opred647 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx646, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %opred647, align 8
  %os1648 = bitcast %union.rec* %290 to %struct.word_type*
  %olist649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1648, i32 0, i32 0
  %arrayidx650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist649, i32 0, i64 0
  %osucc651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx650, i32 0, i32 1
  store %union.rec* %288, %union.rec** %osucc651, align 8
  %291 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1652 = bitcast %union.rec* %292 to %struct.word_type*
  %olist653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1652, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist653, i32 0, i64 0
  %opred655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx654, i32 0, i32 0
  store %union.rec* %291, %union.rec** %opred655, align 8
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %294 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1656 = bitcast %union.rec* %294 to %struct.word_type*
  %olist657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1656, i32 0, i32 0
  %arrayidx658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist657, i32 0, i64 0
  %osucc659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx658, i32 0, i32 1
  store %union.rec* %293, %union.rec** %osucc659, align 8
  br label %cond.end.660

cond.end.660:                                     ; preds = %cond.false.631, %cond.true.630
  %cond661 = phi %union.rec* [ %282, %cond.true.630 ], [ %293, %cond.false.631 ]
  br label %cond.end.662

cond.end.662:                                     ; preds = %cond.end.660, %cond.true.626
  %cond663 = phi %union.rec* [ %280, %cond.true.626 ], [ %cond661, %cond.end.660 ]
  %295 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %295, %union.rec** @zz_res, align 8
  %296 = load %union.rec*, %union.rec** %right_par, align 8
  store %union.rec* %296, %union.rec** @zz_hold, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp664 = icmp eq %union.rec* %297, null
  br i1 %cmp664, label %cond.true.666, label %cond.false.667

cond.true.666:                                    ; preds = %cond.end.662
  %298 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.702

cond.false.667:                                   ; preds = %cond.end.662
  %299 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp668 = icmp eq %union.rec* %299, null
  br i1 %cmp668, label %cond.true.670, label %cond.false.671

cond.true.670:                                    ; preds = %cond.false.667
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.700

cond.false.671:                                   ; preds = %cond.false.667
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1672 = bitcast %union.rec* %301 to %struct.word_type*
  %olist673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1672, i32 0, i32 0
  %arrayidx674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist673, i32 0, i64 1
  %opred675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx674, i32 0, i32 0
  %302 = load %union.rec*, %union.rec** %opred675, align 8
  store %union.rec* %302, %union.rec** @zz_tmp, align 8
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1676 = bitcast %union.rec* %303 to %struct.word_type*
  %olist677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1676, i32 0, i32 0
  %arrayidx678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist677, i32 0, i64 1
  %opred679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx678, i32 0, i32 0
  %304 = load %union.rec*, %union.rec** %opred679, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1680 = bitcast %union.rec* %305 to %struct.word_type*
  %olist681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist681, i32 0, i64 1
  %opred683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx682, i32 0, i32 0
  store %union.rec* %304, %union.rec** %opred683, align 8
  %306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1684 = bitcast %union.rec* %307 to %struct.word_type*
  %olist685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1684, i32 0, i32 0
  %arrayidx686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist685, i32 0, i64 1
  %opred687 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx686, i32 0, i32 0
  %308 = load %union.rec*, %union.rec** %opred687, align 8
  %os1688 = bitcast %union.rec* %308 to %struct.word_type*
  %olist689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1688, i32 0, i32 0
  %arrayidx690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist689, i32 0, i64 1
  %osucc691 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx690, i32 0, i32 1
  store %union.rec* %306, %union.rec** %osucc691, align 8
  %309 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1692 = bitcast %union.rec* %310 to %struct.word_type*
  %olist693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1692, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist693, i32 0, i64 1
  %opred695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx694, i32 0, i32 0
  store %union.rec* %309, %union.rec** %opred695, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %312 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1696 = bitcast %union.rec* %312 to %struct.word_type*
  %olist697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1696, i32 0, i32 0
  %arrayidx698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist697, i32 0, i64 1
  %osucc699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx698, i32 0, i32 1
  store %union.rec* %311, %union.rec** %osucc699, align 8
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.false.671, %cond.true.670
  %cond701 = phi %union.rec* [ %300, %cond.true.670 ], [ %311, %cond.false.671 ]
  br label %cond.end.702

cond.end.702:                                     ; preds = %cond.end.700, %cond.true.666
  %cond703 = phi %union.rec* [ %298, %cond.true.666 ], [ %cond701, %cond.end.700 ]
  %313 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv704 = zext i8 %313 to i32
  store i32 %conv704, i32* @zz_size, align 4
  %conv705 = sext i32 %conv704 to i64
  %cmp706 = icmp uge i64 %conv705, 265
  br i1 %cmp706, label %if.then.708, label %if.else.710

if.then.708:                                      ; preds = %cond.end.702
  %314 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call709 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %314)
  br label %if.end.727

if.else.710:                                      ; preds = %cond.end.702
  %315 = load i32, i32* @zz_size, align 4
  %idxprom711 = sext i32 %315 to i64
  %arrayidx712 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom711
  %316 = load %union.rec*, %union.rec** %arrayidx712, align 8
  %cmp713 = icmp eq %union.rec* %316, null
  br i1 %cmp713, label %if.then.715, label %if.else.717

if.then.715:                                      ; preds = %if.else.710
  %317 = load i32, i32* @zz_size, align 4
  %318 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call716 = call %union.rec* @GetMemory(i32 %317, %struct.FILE_POS* %318)
  store %union.rec* %call716, %union.rec** @zz_hold, align 8
  br label %if.end.726

if.else.717:                                      ; preds = %if.else.710
  %319 = load i32, i32* @zz_size, align 4
  %idxprom718 = sext i32 %319 to i64
  %arrayidx719 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom718
  %320 = load %union.rec*, %union.rec** %arrayidx719, align 8
  store %union.rec* %320, %union.rec** @zz_hold, align 8
  store %union.rec* %320, %union.rec** @zz_hold, align 8
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1720 = bitcast %union.rec* %321 to %struct.word_type*
  %olist721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1720, i32 0, i32 0
  %arrayidx722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist721, i32 0, i64 0
  %opred723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx722, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %opred723, align 8
  %323 = load i32, i32* @zz_size, align 4
  %idxprom724 = sext i32 %323 to i64
  %arrayidx725 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom724
  store %union.rec* %322, %union.rec** %arrayidx725, align 8
  br label %if.end.726

if.end.726:                                       ; preds = %if.else.717, %if.then.715
  br label %if.end.727

if.end.727:                                       ; preds = %if.end.726, %if.then.708
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1728 = bitcast %union.rec* %324 to %struct.word_type*
  %ou1729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1728, i32 0, i32 1
  %os11730 = bitcast %union.FIRST_UNION* %ou1729 to %struct.anon*
  %otype731 = getelementptr inbounds %struct.anon, %struct.anon* %os11730, i32 0, i32 0
  store i8 0, i8* %otype731, align 1
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1732 = bitcast %union.rec* %326 to %struct.word_type*
  %olist733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1732, i32 0, i32 0
  %arrayidx734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist733, i32 0, i64 1
  %osucc735 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx734, i32 0, i32 1
  store %union.rec* %325, %union.rec** %osucc735, align 8
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1736 = bitcast %union.rec* %327 to %struct.word_type*
  %olist737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1736, i32 0, i32 0
  %arrayidx738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist737, i32 0, i64 1
  %opred739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx738, i32 0, i32 0
  store %union.rec* %325, %union.rec** %opred739, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1740 = bitcast %union.rec* %328 to %struct.word_type*
  %olist741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1740, i32 0, i32 0
  %arrayidx742 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist741, i32 0, i64 0
  %osucc743 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx742, i32 0, i32 1
  store %union.rec* %325, %union.rec** %osucc743, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1744 = bitcast %union.rec* %329 to %struct.word_type*
  %olist745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1744, i32 0, i32 0
  %arrayidx746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist745, i32 0, i64 0
  %opred747 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx746, i32 0, i32 0
  store %union.rec* %325, %union.rec** %opred747, align 8
  store %union.rec* %325, %union.rec** @xx_link, align 8
  %330 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %330, %union.rec** @zz_res, align 8
  %331 = load %union.rec*, %union.rec** %right_par, align 8
  store %union.rec* %331, %union.rec** @zz_hold, align 8
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp748 = icmp eq %union.rec* %332, null
  br i1 %cmp748, label %cond.true.750, label %cond.false.751

cond.true.750:                                    ; preds = %if.end.727
  %333 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.786

cond.false.751:                                   ; preds = %if.end.727
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp752 = icmp eq %union.rec* %334, null
  br i1 %cmp752, label %cond.true.754, label %cond.false.755

cond.true.754:                                    ; preds = %cond.false.751
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.784

cond.false.755:                                   ; preds = %cond.false.751
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1756 = bitcast %union.rec* %336 to %struct.word_type*
  %olist757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1756, i32 0, i32 0
  %arrayidx758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist757, i32 0, i64 0
  %opred759 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx758, i32 0, i32 0
  %337 = load %union.rec*, %union.rec** %opred759, align 8
  store %union.rec* %337, %union.rec** @zz_tmp, align 8
  %338 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1760 = bitcast %union.rec* %338 to %struct.word_type*
  %olist761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1760, i32 0, i32 0
  %arrayidx762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist761, i32 0, i64 0
  %opred763 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx762, i32 0, i32 0
  %339 = load %union.rec*, %union.rec** %opred763, align 8
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1764 = bitcast %union.rec* %340 to %struct.word_type*
  %olist765 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1764, i32 0, i32 0
  %arrayidx766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist765, i32 0, i64 0
  %opred767 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx766, i32 0, i32 0
  store %union.rec* %339, %union.rec** %opred767, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %342 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1768 = bitcast %union.rec* %342 to %struct.word_type*
  %olist769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1768, i32 0, i32 0
  %arrayidx770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist769, i32 0, i64 0
  %opred771 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx770, i32 0, i32 0
  %343 = load %union.rec*, %union.rec** %opred771, align 8
  %os1772 = bitcast %union.rec* %343 to %struct.word_type*
  %olist773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1772, i32 0, i32 0
  %arrayidx774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist773, i32 0, i64 0
  %osucc775 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx774, i32 0, i32 1
  store %union.rec* %341, %union.rec** %osucc775, align 8
  %344 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %345 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1776 = bitcast %union.rec* %345 to %struct.word_type*
  %olist777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1776, i32 0, i32 0
  %arrayidx778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist777, i32 0, i64 0
  %opred779 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx778, i32 0, i32 0
  store %union.rec* %344, %union.rec** %opred779, align 8
  %346 = load %union.rec*, %union.rec** @zz_res, align 8
  %347 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1780 = bitcast %union.rec* %347 to %struct.word_type*
  %olist781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1780, i32 0, i32 0
  %arrayidx782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist781, i32 0, i64 0
  %osucc783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx782, i32 0, i32 1
  store %union.rec* %346, %union.rec** %osucc783, align 8
  br label %cond.end.784

cond.end.784:                                     ; preds = %cond.false.755, %cond.true.754
  %cond785 = phi %union.rec* [ %335, %cond.true.754 ], [ %346, %cond.false.755 ]
  br label %cond.end.786

cond.end.786:                                     ; preds = %cond.end.784, %cond.true.750
  %cond787 = phi %union.rec* [ %333, %cond.true.750 ], [ %cond785, %cond.end.784 ]
  %348 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %348, %union.rec** @zz_res, align 8
  %349 = load %union.rec*, %union.rec** %r, align 8
  store %union.rec* %349, %union.rec** @zz_hold, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp788 = icmp eq %union.rec* %350, null
  br i1 %cmp788, label %cond.true.790, label %cond.false.791

cond.true.790:                                    ; preds = %cond.end.786
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.826

cond.false.791:                                   ; preds = %cond.end.786
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp792 = icmp eq %union.rec* %352, null
  br i1 %cmp792, label %cond.true.794, label %cond.false.795

cond.true.794:                                    ; preds = %cond.false.791
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.824

cond.false.795:                                   ; preds = %cond.false.791
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1796 = bitcast %union.rec* %354 to %struct.word_type*
  %olist797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1796, i32 0, i32 0
  %arrayidx798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist797, i32 0, i64 1
  %opred799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx798, i32 0, i32 0
  %355 = load %union.rec*, %union.rec** %opred799, align 8
  store %union.rec* %355, %union.rec** @zz_tmp, align 8
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1800 = bitcast %union.rec* %356 to %struct.word_type*
  %olist801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1800, i32 0, i32 0
  %arrayidx802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist801, i32 0, i64 1
  %opred803 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx802, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %opred803, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1804 = bitcast %union.rec* %358 to %struct.word_type*
  %olist805 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1804, i32 0, i32 0
  %arrayidx806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist805, i32 0, i64 1
  %opred807 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx806, i32 0, i32 0
  store %union.rec* %357, %union.rec** %opred807, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1808 = bitcast %union.rec* %360 to %struct.word_type*
  %olist809 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1808, i32 0, i32 0
  %arrayidx810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist809, i32 0, i64 1
  %opred811 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx810, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %opred811, align 8
  %os1812 = bitcast %union.rec* %361 to %struct.word_type*
  %olist813 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1812, i32 0, i32 0
  %arrayidx814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist813, i32 0, i64 1
  %osucc815 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx814, i32 0, i32 1
  store %union.rec* %359, %union.rec** %osucc815, align 8
  %362 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1816 = bitcast %union.rec* %363 to %struct.word_type*
  %olist817 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1816, i32 0, i32 0
  %arrayidx818 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist817, i32 0, i64 1
  %opred819 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx818, i32 0, i32 0
  store %union.rec* %362, %union.rec** %opred819, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %365 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1820 = bitcast %union.rec* %365 to %struct.word_type*
  %olist821 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1820, i32 0, i32 0
  %arrayidx822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist821, i32 0, i64 1
  %osucc823 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx822, i32 0, i32 1
  store %union.rec* %364, %union.rec** %osucc823, align 8
  br label %cond.end.824

cond.end.824:                                     ; preds = %cond.false.795, %cond.true.794
  %cond825 = phi %union.rec* [ %353, %cond.true.794 ], [ %364, %cond.false.795 ]
  br label %cond.end.826

cond.end.826:                                     ; preds = %cond.end.824, %cond.true.790
  %cond827 = phi %union.rec* [ %351, %cond.true.790 ], [ %cond825, %cond.end.824 ]
  %366 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 81), align 1
  %conv828 = zext i8 %366 to i32
  store i32 %conv828, i32* @zz_size, align 4
  %conv829 = sext i32 %conv828 to i64
  %cmp830 = icmp uge i64 %conv829, 265
  br i1 %cmp830, label %if.then.832, label %if.else.834

if.then.832:                                      ; preds = %cond.end.826
  %367 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call833 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %367)
  br label %if.end.851

if.else.834:                                      ; preds = %cond.end.826
  %368 = load i32, i32* @zz_size, align 4
  %idxprom835 = sext i32 %368 to i64
  %arrayidx836 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom835
  %369 = load %union.rec*, %union.rec** %arrayidx836, align 8
  %cmp837 = icmp eq %union.rec* %369, null
  br i1 %cmp837, label %if.then.839, label %if.else.841

if.then.839:                                      ; preds = %if.else.834
  %370 = load i32, i32* @zz_size, align 4
  %371 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call840 = call %union.rec* @GetMemory(i32 %370, %struct.FILE_POS* %371)
  store %union.rec* %call840, %union.rec** @zz_hold, align 8
  br label %if.end.850

if.else.841:                                      ; preds = %if.else.834
  %372 = load i32, i32* @zz_size, align 4
  %idxprom842 = sext i32 %372 to i64
  %arrayidx843 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom842
  %373 = load %union.rec*, %union.rec** %arrayidx843, align 8
  store %union.rec* %373, %union.rec** @zz_hold, align 8
  store %union.rec* %373, %union.rec** @zz_hold, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1844 = bitcast %union.rec* %374 to %struct.word_type*
  %olist845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1844, i32 0, i32 0
  %arrayidx846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist845, i32 0, i64 0
  %opred847 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx846, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred847, align 8
  %376 = load i32, i32* @zz_size, align 4
  %idxprom848 = sext i32 %376 to i64
  %arrayidx849 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom848
  store %union.rec* %375, %union.rec** %arrayidx849, align 8
  br label %if.end.850

if.end.850:                                       ; preds = %if.else.841, %if.then.839
  br label %if.end.851

if.end.851:                                       ; preds = %if.end.850, %if.then.832
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1852 = bitcast %union.rec* %377 to %struct.word_type*
  %ou1853 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1852, i32 0, i32 1
  %os11854 = bitcast %union.FIRST_UNION* %ou1853 to %struct.anon*
  %otype855 = getelementptr inbounds %struct.anon, %struct.anon* %os11854, i32 0, i32 0
  store i8 81, i8* %otype855, align 1
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1856 = bitcast %union.rec* %379 to %struct.word_type*
  %olist857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1856, i32 0, i32 0
  %arrayidx858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist857, i32 0, i64 1
  %osucc859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx858, i32 0, i32 1
  store %union.rec* %378, %union.rec** %osucc859, align 8
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1860 = bitcast %union.rec* %380 to %struct.word_type*
  %olist861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1860, i32 0, i32 0
  %arrayidx862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist861, i32 0, i64 1
  %opred863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx862, i32 0, i32 0
  store %union.rec* %378, %union.rec** %opred863, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1864 = bitcast %union.rec* %381 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 0
  %osucc867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 1
  store %union.rec* %378, %union.rec** %osucc867, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1868 = bitcast %union.rec* %382 to %struct.word_type*
  %olist869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1868, i32 0, i32 0
  %arrayidx870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist869, i32 0, i64 0
  %opred871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx870, i32 0, i32 0
  store %union.rec* %378, %union.rec** %opred871, align 8
  store %union.rec* %378, %union.rec** %res, align 8
  %383 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv872 = zext i8 %383 to i32
  store i32 %conv872, i32* @zz_size, align 4
  %conv873 = sext i32 %conv872 to i64
  %cmp874 = icmp uge i64 %conv873, 265
  br i1 %cmp874, label %if.then.876, label %if.else.878

if.then.876:                                      ; preds = %if.end.851
  %384 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call877 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %384)
  br label %if.end.895

if.else.878:                                      ; preds = %if.end.851
  %385 = load i32, i32* @zz_size, align 4
  %idxprom879 = sext i32 %385 to i64
  %arrayidx880 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom879
  %386 = load %union.rec*, %union.rec** %arrayidx880, align 8
  %cmp881 = icmp eq %union.rec* %386, null
  br i1 %cmp881, label %if.then.883, label %if.else.885

if.then.883:                                      ; preds = %if.else.878
  %387 = load i32, i32* @zz_size, align 4
  %388 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call884 = call %union.rec* @GetMemory(i32 %387, %struct.FILE_POS* %388)
  store %union.rec* %call884, %union.rec** @zz_hold, align 8
  br label %if.end.894

if.else.885:                                      ; preds = %if.else.878
  %389 = load i32, i32* @zz_size, align 4
  %idxprom886 = sext i32 %389 to i64
  %arrayidx887 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom886
  %390 = load %union.rec*, %union.rec** %arrayidx887, align 8
  store %union.rec* %390, %union.rec** @zz_hold, align 8
  store %union.rec* %390, %union.rec** @zz_hold, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1888 = bitcast %union.rec* %391 to %struct.word_type*
  %olist889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1888, i32 0, i32 0
  %arrayidx890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist889, i32 0, i64 0
  %opred891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx890, i32 0, i32 0
  %392 = load %union.rec*, %union.rec** %opred891, align 8
  %393 = load i32, i32* @zz_size, align 4
  %idxprom892 = sext i32 %393 to i64
  %arrayidx893 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom892
  store %union.rec* %392, %union.rec** %arrayidx893, align 8
  br label %if.end.894

if.end.894:                                       ; preds = %if.else.885, %if.then.883
  br label %if.end.895

if.end.895:                                       ; preds = %if.end.894, %if.then.876
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1896 = bitcast %union.rec* %394 to %struct.word_type*
  %ou1897 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1896, i32 0, i32 1
  %os11898 = bitcast %union.FIRST_UNION* %ou1897 to %struct.anon*
  %otype899 = getelementptr inbounds %struct.anon, %struct.anon* %os11898, i32 0, i32 0
  store i8 0, i8* %otype899, align 1
  %395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1900 = bitcast %union.rec* %396 to %struct.word_type*
  %olist901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1900, i32 0, i32 0
  %arrayidx902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist901, i32 0, i64 1
  %osucc903 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx902, i32 0, i32 1
  store %union.rec* %395, %union.rec** %osucc903, align 8
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1904 = bitcast %union.rec* %397 to %struct.word_type*
  %olist905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1904, i32 0, i32 0
  %arrayidx906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist905, i32 0, i64 1
  %opred907 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx906, i32 0, i32 0
  store %union.rec* %395, %union.rec** %opred907, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1908 = bitcast %union.rec* %398 to %struct.word_type*
  %olist909 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1908, i32 0, i32 0
  %arrayidx910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist909, i32 0, i64 0
  %osucc911 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx910, i32 0, i32 1
  store %union.rec* %395, %union.rec** %osucc911, align 8
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1912 = bitcast %union.rec* %399 to %struct.word_type*
  %olist913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1912, i32 0, i32 0
  %arrayidx914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist913, i32 0, i64 0
  %opred915 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx914, i32 0, i32 0
  store %union.rec* %395, %union.rec** %opred915, align 8
  store %union.rec* %395, %union.rec** @xx_link, align 8
  %400 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %400, %union.rec** @zz_res, align 8
  %401 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %401, %union.rec** @zz_hold, align 8
  %402 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp916 = icmp eq %union.rec* %402, null
  br i1 %cmp916, label %cond.true.918, label %cond.false.919

cond.true.918:                                    ; preds = %if.end.895
  %403 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.954

cond.false.919:                                   ; preds = %if.end.895
  %404 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp920 = icmp eq %union.rec* %404, null
  br i1 %cmp920, label %cond.true.922, label %cond.false.923

cond.true.922:                                    ; preds = %cond.false.919
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.952

cond.false.923:                                   ; preds = %cond.false.919
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1924 = bitcast %union.rec* %406 to %struct.word_type*
  %olist925 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1924, i32 0, i32 0
  %arrayidx926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist925, i32 0, i64 0
  %opred927 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx926, i32 0, i32 0
  %407 = load %union.rec*, %union.rec** %opred927, align 8
  store %union.rec* %407, %union.rec** @zz_tmp, align 8
  %408 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1928 = bitcast %union.rec* %408 to %struct.word_type*
  %olist929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1928, i32 0, i32 0
  %arrayidx930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist929, i32 0, i64 0
  %opred931 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx930, i32 0, i32 0
  %409 = load %union.rec*, %union.rec** %opred931, align 8
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1932 = bitcast %union.rec* %410 to %struct.word_type*
  %olist933 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1932, i32 0, i32 0
  %arrayidx934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist933, i32 0, i64 0
  %opred935 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx934, i32 0, i32 0
  store %union.rec* %409, %union.rec** %opred935, align 8
  %411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %412 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1936 = bitcast %union.rec* %412 to %struct.word_type*
  %olist937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1936, i32 0, i32 0
  %arrayidx938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist937, i32 0, i64 0
  %opred939 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx938, i32 0, i32 0
  %413 = load %union.rec*, %union.rec** %opred939, align 8
  %os1940 = bitcast %union.rec* %413 to %struct.word_type*
  %olist941 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1940, i32 0, i32 0
  %arrayidx942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist941, i32 0, i64 0
  %osucc943 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx942, i32 0, i32 1
  store %union.rec* %411, %union.rec** %osucc943, align 8
  %414 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %415 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1944 = bitcast %union.rec* %415 to %struct.word_type*
  %olist945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1944, i32 0, i32 0
  %arrayidx946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist945, i32 0, i64 0
  %opred947 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx946, i32 0, i32 0
  store %union.rec* %414, %union.rec** %opred947, align 8
  %416 = load %union.rec*, %union.rec** @zz_res, align 8
  %417 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1948 = bitcast %union.rec* %417 to %struct.word_type*
  %olist949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1948, i32 0, i32 0
  %arrayidx950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist949, i32 0, i64 0
  %osucc951 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx950, i32 0, i32 1
  store %union.rec* %416, %union.rec** %osucc951, align 8
  br label %cond.end.952

cond.end.952:                                     ; preds = %cond.false.923, %cond.true.922
  %cond953 = phi %union.rec* [ %405, %cond.true.922 ], [ %416, %cond.false.923 ]
  br label %cond.end.954

cond.end.954:                                     ; preds = %cond.end.952, %cond.true.918
  %cond955 = phi %union.rec* [ %403, %cond.true.918 ], [ %cond953, %cond.end.952 ]
  %418 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %418, %union.rec** @zz_res, align 8
  %419 = load %union.rec*, %union.rec** %merge, align 8
  store %union.rec* %419, %union.rec** @zz_hold, align 8
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp956 = icmp eq %union.rec* %420, null
  br i1 %cmp956, label %cond.true.958, label %cond.false.959

cond.true.958:                                    ; preds = %cond.end.954
  %421 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.994

cond.false.959:                                   ; preds = %cond.end.954
  %422 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp960 = icmp eq %union.rec* %422, null
  br i1 %cmp960, label %cond.true.962, label %cond.false.963

cond.true.962:                                    ; preds = %cond.false.959
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.992

cond.false.963:                                   ; preds = %cond.false.959
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1964 = bitcast %union.rec* %424 to %struct.word_type*
  %olist965 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1964, i32 0, i32 0
  %arrayidx966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist965, i32 0, i64 1
  %opred967 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx966, i32 0, i32 0
  %425 = load %union.rec*, %union.rec** %opred967, align 8
  store %union.rec* %425, %union.rec** @zz_tmp, align 8
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1968 = bitcast %union.rec* %426 to %struct.word_type*
  %olist969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1968, i32 0, i32 0
  %arrayidx970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist969, i32 0, i64 1
  %opred971 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx970, i32 0, i32 0
  %427 = load %union.rec*, %union.rec** %opred971, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1972 = bitcast %union.rec* %428 to %struct.word_type*
  %olist973 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1972, i32 0, i32 0
  %arrayidx974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist973, i32 0, i64 1
  %opred975 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx974, i32 0, i32 0
  store %union.rec* %427, %union.rec** %opred975, align 8
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %430 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1976 = bitcast %union.rec* %430 to %struct.word_type*
  %olist977 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1976, i32 0, i32 0
  %arrayidx978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist977, i32 0, i64 1
  %opred979 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx978, i32 0, i32 0
  %431 = load %union.rec*, %union.rec** %opred979, align 8
  %os1980 = bitcast %union.rec* %431 to %struct.word_type*
  %olist981 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1980, i32 0, i32 0
  %arrayidx982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist981, i32 0, i64 1
  %osucc983 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx982, i32 0, i32 1
  store %union.rec* %429, %union.rec** %osucc983, align 8
  %432 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %433 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1984 = bitcast %union.rec* %433 to %struct.word_type*
  %olist985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1984, i32 0, i32 0
  %arrayidx986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist985, i32 0, i64 1
  %opred987 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx986, i32 0, i32 0
  store %union.rec* %432, %union.rec** %opred987, align 8
  %434 = load %union.rec*, %union.rec** @zz_res, align 8
  %435 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1988 = bitcast %union.rec* %435 to %struct.word_type*
  %olist989 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1988, i32 0, i32 0
  %arrayidx990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist989, i32 0, i64 1
  %osucc991 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx990, i32 0, i32 1
  store %union.rec* %434, %union.rec** %osucc991, align 8
  br label %cond.end.992

cond.end.992:                                     ; preds = %cond.false.963, %cond.true.962
  %cond993 = phi %union.rec* [ %423, %cond.true.962 ], [ %434, %cond.false.963 ]
  br label %cond.end.994

cond.end.994:                                     ; preds = %cond.end.992, %cond.true.958
  %cond995 = phi %union.rec* [ %421, %cond.true.958 ], [ %cond993, %cond.end.992 ]
  %436 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv996 = zext i8 %436 to i32
  store i32 %conv996, i32* @zz_size, align 4
  %conv997 = sext i32 %conv996 to i64
  %cmp998 = icmp uge i64 %conv997, 265
  br i1 %cmp998, label %if.then.1000, label %if.else.1002

if.then.1000:                                     ; preds = %cond.end.994
  %437 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1001 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %437)
  br label %if.end.1019

if.else.1002:                                     ; preds = %cond.end.994
  %438 = load i32, i32* @zz_size, align 4
  %idxprom1003 = sext i32 %438 to i64
  %arrayidx1004 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1003
  %439 = load %union.rec*, %union.rec** %arrayidx1004, align 8
  %cmp1005 = icmp eq %union.rec* %439, null
  br i1 %cmp1005, label %if.then.1007, label %if.else.1009

if.then.1007:                                     ; preds = %if.else.1002
  %440 = load i32, i32* @zz_size, align 4
  %441 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1008 = call %union.rec* @GetMemory(i32 %440, %struct.FILE_POS* %441)
  store %union.rec* %call1008, %union.rec** @zz_hold, align 8
  br label %if.end.1018

if.else.1009:                                     ; preds = %if.else.1002
  %442 = load i32, i32* @zz_size, align 4
  %idxprom1010 = sext i32 %442 to i64
  %arrayidx1011 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1010
  %443 = load %union.rec*, %union.rec** %arrayidx1011, align 8
  store %union.rec* %443, %union.rec** @zz_hold, align 8
  store %union.rec* %443, %union.rec** @zz_hold, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11012 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1013 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11012, i32 0, i32 0
  %arrayidx1014 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1013, i32 0, i64 0
  %opred1015 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1014, i32 0, i32 0
  %445 = load %union.rec*, %union.rec** %opred1015, align 8
  %446 = load i32, i32* @zz_size, align 4
  %idxprom1016 = sext i32 %446 to i64
  %arrayidx1017 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1016
  store %union.rec* %445, %union.rec** %arrayidx1017, align 8
  br label %if.end.1018

if.end.1018:                                      ; preds = %if.else.1009, %if.then.1007
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.end.1018, %if.then.1000
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11020 = bitcast %union.rec* %447 to %struct.word_type*
  %ou11021 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11020, i32 0, i32 1
  %os111022 = bitcast %union.FIRST_UNION* %ou11021 to %struct.anon*
  %otype1023 = getelementptr inbounds %struct.anon, %struct.anon* %os111022, i32 0, i32 0
  store i8 0, i8* %otype1023, align 1
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11024 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11024, i32 0, i32 0
  %arrayidx1026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1025, i32 0, i64 1
  %osucc1027 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1026, i32 0, i32 1
  store %union.rec* %448, %union.rec** %osucc1027, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11028 = bitcast %union.rec* %450 to %struct.word_type*
  %olist1029 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11028, i32 0, i32 0
  %arrayidx1030 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1029, i32 0, i64 1
  %opred1031 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1030, i32 0, i32 0
  store %union.rec* %448, %union.rec** %opred1031, align 8
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11032 = bitcast %union.rec* %451 to %struct.word_type*
  %olist1033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11032, i32 0, i32 0
  %arrayidx1034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1033, i32 0, i64 0
  %osucc1035 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1034, i32 0, i32 1
  store %union.rec* %448, %union.rec** %osucc1035, align 8
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11036 = bitcast %union.rec* %452 to %struct.word_type*
  %olist1037 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11036, i32 0, i32 0
  %arrayidx1038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1037, i32 0, i64 0
  %opred1039 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1038, i32 0, i32 0
  store %union.rec* %448, %union.rec** %opred1039, align 8
  store %union.rec* %448, %union.rec** @xx_link, align 8
  %453 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %453, %union.rec** @zz_res, align 8
  %454 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %454, %union.rec** @zz_hold, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1040 = icmp eq %union.rec* %455, null
  br i1 %cmp1040, label %cond.true.1042, label %cond.false.1043

cond.true.1042:                                   ; preds = %if.end.1019
  %456 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1078

cond.false.1043:                                  ; preds = %if.end.1019
  %457 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1044 = icmp eq %union.rec* %457, null
  br i1 %cmp1044, label %cond.true.1046, label %cond.false.1047

cond.true.1046:                                   ; preds = %cond.false.1043
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1076

cond.false.1047:                                  ; preds = %cond.false.1043
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11048 = bitcast %union.rec* %459 to %struct.word_type*
  %olist1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11048, i32 0, i32 0
  %arrayidx1050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1049, i32 0, i64 0
  %opred1051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1050, i32 0, i32 0
  %460 = load %union.rec*, %union.rec** %opred1051, align 8
  store %union.rec* %460, %union.rec** @zz_tmp, align 8
  %461 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11052 = bitcast %union.rec* %461 to %struct.word_type*
  %olist1053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11052, i32 0, i32 0
  %arrayidx1054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1053, i32 0, i64 0
  %opred1055 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1054, i32 0, i32 0
  %462 = load %union.rec*, %union.rec** %opred1055, align 8
  %463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11056 = bitcast %union.rec* %463 to %struct.word_type*
  %olist1057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11056, i32 0, i32 0
  %arrayidx1058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1057, i32 0, i64 0
  %opred1059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1058, i32 0, i32 0
  store %union.rec* %462, %union.rec** %opred1059, align 8
  %464 = load %union.rec*, %union.rec** @zz_hold, align 8
  %465 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11060 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11060, i32 0, i32 0
  %arrayidx1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1061, i32 0, i64 0
  %opred1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1062, i32 0, i32 0
  %466 = load %union.rec*, %union.rec** %opred1063, align 8
  %os11064 = bitcast %union.rec* %466 to %struct.word_type*
  %olist1065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11064, i32 0, i32 0
  %arrayidx1066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1065, i32 0, i64 0
  %osucc1067 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1066, i32 0, i32 1
  store %union.rec* %464, %union.rec** %osucc1067, align 8
  %467 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %468 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11068 = bitcast %union.rec* %468 to %struct.word_type*
  %olist1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11068, i32 0, i32 0
  %arrayidx1070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1069, i32 0, i64 0
  %opred1071 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1070, i32 0, i32 0
  store %union.rec* %467, %union.rec** %opred1071, align 8
  %469 = load %union.rec*, %union.rec** @zz_res, align 8
  %470 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11072 = bitcast %union.rec* %470 to %struct.word_type*
  %olist1073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11072, i32 0, i32 0
  %arrayidx1074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1073, i32 0, i64 0
  %osucc1075 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1074, i32 0, i32 1
  store %union.rec* %469, %union.rec** %osucc1075, align 8
  br label %cond.end.1076

cond.end.1076:                                    ; preds = %cond.false.1047, %cond.true.1046
  %cond1077 = phi %union.rec* [ %458, %cond.true.1046 ], [ %469, %cond.false.1047 ]
  br label %cond.end.1078

cond.end.1078:                                    ; preds = %cond.end.1076, %cond.true.1042
  %cond1079 = phi %union.rec* [ %456, %cond.true.1042 ], [ %cond1077, %cond.end.1076 ]
  %471 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %471, %union.rec** @zz_res, align 8
  %472 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %472, %union.rec** @zz_hold, align 8
  %473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1080 = icmp eq %union.rec* %473, null
  br i1 %cmp1080, label %cond.true.1082, label %cond.false.1083

cond.true.1082:                                   ; preds = %cond.end.1078
  %474 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1118

cond.false.1083:                                  ; preds = %cond.end.1078
  %475 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1084 = icmp eq %union.rec* %475, null
  br i1 %cmp1084, label %cond.true.1086, label %cond.false.1087

cond.true.1086:                                   ; preds = %cond.false.1083
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1116

cond.false.1087:                                  ; preds = %cond.false.1083
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11088 = bitcast %union.rec* %477 to %struct.word_type*
  %olist1089 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11088, i32 0, i32 0
  %arrayidx1090 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1089, i32 0, i64 1
  %opred1091 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1090, i32 0, i32 0
  %478 = load %union.rec*, %union.rec** %opred1091, align 8
  store %union.rec* %478, %union.rec** @zz_tmp, align 8
  %479 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11092 = bitcast %union.rec* %479 to %struct.word_type*
  %olist1093 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11092, i32 0, i32 0
  %arrayidx1094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1093, i32 0, i64 1
  %opred1095 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1094, i32 0, i32 0
  %480 = load %union.rec*, %union.rec** %opred1095, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11096 = bitcast %union.rec* %481 to %struct.word_type*
  %olist1097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11096, i32 0, i32 0
  %arrayidx1098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1097, i32 0, i64 1
  %opred1099 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1098, i32 0, i32 0
  store %union.rec* %480, %union.rec** %opred1099, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %483 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11100 = bitcast %union.rec* %483 to %struct.word_type*
  %olist1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11100, i32 0, i32 0
  %arrayidx1102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1101, i32 0, i64 1
  %opred1103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1102, i32 0, i32 0
  %484 = load %union.rec*, %union.rec** %opred1103, align 8
  %os11104 = bitcast %union.rec* %484 to %struct.word_type*
  %olist1105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11104, i32 0, i32 0
  %arrayidx1106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1105, i32 0, i64 1
  %osucc1107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1106, i32 0, i32 1
  store %union.rec* %482, %union.rec** %osucc1107, align 8
  %485 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %486 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11108 = bitcast %union.rec* %486 to %struct.word_type*
  %olist1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 0
  %arrayidx1110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1109, i32 0, i64 1
  %opred1111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1110, i32 0, i32 0
  store %union.rec* %485, %union.rec** %opred1111, align 8
  %487 = load %union.rec*, %union.rec** @zz_res, align 8
  %488 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11112 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11112, i32 0, i32 0
  %arrayidx1114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1113, i32 0, i64 1
  %osucc1115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1114, i32 0, i32 1
  store %union.rec* %487, %union.rec** %osucc1115, align 8
  br label %cond.end.1116

cond.end.1116:                                    ; preds = %cond.false.1087, %cond.true.1086
  %cond1117 = phi %union.rec* [ %476, %cond.true.1086 ], [ %487, %cond.false.1087 ]
  br label %cond.end.1118

cond.end.1118:                                    ; preds = %cond.end.1116, %cond.true.1082
  %cond1119 = phi %union.rec* [ %474, %cond.true.1082 ], [ %cond1117, %cond.end.1116 ]
  br label %if.end.1120

if.end.1120:                                      ; preds = %cond.end.1118, %if.end.138
  %489 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %489
}

; Function Attrs: nounwind uwtable
define %union.rec* @BuildEnclose(%union.rec* %hd) #0 {
entry:
  %hd.addr = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %parsym = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %val = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  %0 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2 = bitcast %union.rec* %0 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %1 = load %union.rec*, %union.rec** %oactual, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %2, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %3 = load %union.rec*, %union.rec** %link, align 8
  %4 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os21 = bitcast %union.rec* %4 to %struct.closure_type*
  %oactual2 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %oactual2, align 8
  %cmp = icmp ne %union.rec* %3, %5
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %6 = load %union.rec*, %union.rec** %link, align 8
  %os13 = bitcast %union.rec* %6 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %7, %union.rec** %sym, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load %union.rec*, %union.rec** %sym, align 8
  %os17 = bitcast %union.rec* %8 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %9 = load i8, i8* %otype, align 1
  %conv = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %10 = load %union.rec*, %union.rec** %sym, align 8
  %os111 = bitcast %union.rec* %10 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 1
  %opred14 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred14, align 8
  store %union.rec* %11, %union.rec** %sym, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %12 = load %union.rec*, %union.rec** %sym, align 8
  %os6 = bitcast %union.rec* %12 to %struct.symbol_type*
  %ois_enclose = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 16
  %bf.load = load i8, i8* %ois_enclose, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.end.20

if.end:                                           ; preds = %for.end
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %13 = load %union.rec*, %union.rec** %link, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 0
  %osucc19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 1
  %14 = load %union.rec*, %union.rec** %osucc19, align 8
  store %union.rec* %14, %union.rec** %link, align 8
  br label %for.cond

for.end.20:                                       ; preds = %if.then, %for.cond
  %15 = load %union.rec*, %union.rec** %link, align 8
  %16 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os221 = bitcast %union.rec* %16 to %struct.closure_type*
  %oactual22 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os221, i32 0, i32 5
  %17 = load %union.rec*, %union.rec** %oactual22, align 8
  %cmp23 = icmp ne %union.rec* %15, %17
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.end.20
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.end.20
  store %union.rec* null, %union.rec** %parsym, align 8
  %19 = load %union.rec*, %union.rec** %sym, align 8
  %os127 = bitcast %union.rec* %19 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 0
  %osucc30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %osucc30, align 8
  store %union.rec* %20, %union.rec** %link, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.75, %if.end.26
  %21 = load %union.rec*, %union.rec** %link, align 8
  %22 = load %union.rec*, %union.rec** %sym, align 8
  %cmp32 = icmp ne %union.rec* %21, %22
  br i1 %cmp32, label %for.body.34, label %for.end.80

for.body.34:                                      ; preds = %for.cond.31
  %23 = load %union.rec*, %union.rec** %link, align 8
  %os135 = bitcast %union.rec* %23 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred38, align 8
  store %union.rec* %24, %union.rec** %y, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.48, %for.body.34
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os140 = bitcast %union.rec* %25 to %struct.word_type*
  %ou141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 1
  %os1142 = bitcast %union.FIRST_UNION* %ou141 to %struct.anon*
  %otype43 = getelementptr inbounds %struct.anon, %struct.anon* %os1142, i32 0, i32 0
  %26 = load i8, i8* %otype43, align 1
  %conv44 = zext i8 %26 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.39
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.47
  %27 = load %union.rec*, %union.rec** %y, align 8
  %os149 = bitcast %union.rec* %27 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %opred52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred52, align 8
  store %union.rec* %28, %union.rec** %y, align 8
  br label %for.cond.39

for.end.53:                                       ; preds = %for.cond.39
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os154 = bitcast %union.rec* %29 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %os1156 = bitcast %union.FIRST_UNION* %ou155 to %struct.anon*
  %otype57 = getelementptr inbounds %struct.anon, %struct.anon* %os1156, i32 0, i32 0
  %30 = load i8, i8* %otype57, align 1
  %conv58 = zext i8 %30 to i32
  switch i32 %conv58, label %sw.default [
    i32 144, label %sw.bb
    i32 145, label %sw.bb
    i32 146, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %for.end.53, %for.end.53
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os159 = bitcast %union.rec* %31 to %struct.word_type*
  %ou160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou160 to %struct.FILE_POS*
  %call61 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 44, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.bb.62:                                         ; preds = %for.end.53
  %32 = load %union.rec*, %union.rec** %sym, align 8
  %os163 = bitcast %union.rec* %32 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ohas_body = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %33 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load64 = load i24, i24* %33, align 1
  %bf.lshr65 = lshr i24 %bf.load64, 8
  %bf.clear66 = and i24 %bf.lshr65, 1
  %bf.cast67 = zext i24 %bf.clear66 to i32
  %tobool68 = icmp ne i32 %bf.cast67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %sw.bb.62
  %34 = load %union.rec*, %union.rec** %y, align 8
  %os170 = bitcast %union.rec* %34 to %struct.word_type*
  %ou171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 1
  %ofpos72 = bitcast %union.FIRST_UNION* %ou171 to %struct.FILE_POS*
  %call73 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 44, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %sw.bb.62
  %35 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %35, %union.rec** %parsym, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.53
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.74, %sw.bb
  br label %for.inc.75

for.inc.75:                                       ; preds = %sw.epilog
  %36 = load %union.rec*, %union.rec** %link, align 8
  %os176 = bitcast %union.rec* %36 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %osucc79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc79, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %for.cond.31

for.end.80:                                       ; preds = %for.cond.31
  %38 = load %union.rec*, %union.rec** %parsym, align 8
  %cmp81 = icmp eq %union.rec* %38, null
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %for.end.80
  %39 = load %union.rec*, %union.rec** %sym, align 8
  %os184 = bitcast %union.rec* %39 to %struct.word_type*
  %ou185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 1
  %ofpos86 = bitcast %union.FIRST_UNION* %ou185 to %struct.FILE_POS*
  %call87 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 44, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %for.end.80
  %40 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv89 = zext i8 %40 to i32
  store i32 %conv89, i32* @zz_size, align 4
  %conv90 = sext i32 %conv89 to i64
  %cmp91 = icmp uge i64 %conv90, 265
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.end.88
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call94 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %41)
  br label %if.end.110

if.else:                                          ; preds = %if.end.88
  %42 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx95 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %43 = load %union.rec*, %union.rec** %arrayidx95, align 8
  %cmp96 = icmp eq %union.rec* %43, null
  br i1 %cmp96, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %if.else
  %44 = load i32, i32* @zz_size, align 4
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call99 = call %union.rec* @GetMemory(i32 %44, %struct.FILE_POS* %45)
  store %union.rec* %call99, %union.rec** @zz_hold, align 8
  br label %if.end.109

if.else.100:                                      ; preds = %if.else
  %46 = load i32, i32* @zz_size, align 4
  %idxprom101 = sext i32 %46 to i64
  %arrayidx102 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom101
  %47 = load %union.rec*, %union.rec** %arrayidx102, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %48 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 0
  %opred106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred106, align 8
  %50 = load i32, i32* @zz_size, align 4
  %idxprom107 = sext i32 %50 to i64
  %arrayidx108 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom107
  store %union.rec* %49, %union.rec** %arrayidx108, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.100, %if.then.98
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.93
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %51 to %struct.word_type*
  %ou1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 1
  %os11113 = bitcast %union.FIRST_UNION* %ou1112 to %struct.anon*
  %otype114 = getelementptr inbounds %struct.anon, %struct.anon* %os11113, i32 0, i32 0
  store i8 2, i8* %otype114, align 1
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1115 = bitcast %union.rec* %53 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 1
  %osucc118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc118, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1119 = bitcast %union.rec* %54 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 1
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred122, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1123 = bitcast %union.rec* %55 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 0
  %osucc126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc126, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1127 = bitcast %union.rec* %56 to %struct.word_type*
  %olist128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist128, i32 0, i64 0
  %opred130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx129, i32 0, i32 0
  store %union.rec* %52, %union.rec** %opred130, align 8
  store %union.rec* %52, %union.rec** %x, align 8
  %57 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1131 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 1
  %ofpos133 = bitcast %union.FIRST_UNION* %ou1132 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos133, i32 0, i32 2
  %58 = load i16, i16* %ofile_num, align 2
  %59 = load %union.rec*, %union.rec** %x, align 8
  %os1134 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 1
  %ofpos136 = bitcast %union.FIRST_UNION* %ou1135 to %struct.FILE_POS*
  %ofile_num137 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos136, i32 0, i32 2
  store i16 %58, i16* %ofile_num137, align 2
  %60 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1138 = bitcast %union.rec* %60 to %struct.word_type*
  %ou1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 1
  %ofpos140 = bitcast %union.FIRST_UNION* %ou1139 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos140, i32 0, i32 3
  %bf.load141 = load i32, i32* %oline_num, align 4
  %bf.clear142 = and i32 %bf.load141, 1048575
  %61 = load %union.rec*, %union.rec** %x, align 8
  %os1143 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %ofpos145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.FILE_POS*
  %oline_num146 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos145, i32 0, i32 3
  %bf.load147 = load i32, i32* %oline_num146, align 4
  %bf.value = and i32 %bf.clear142, 1048575
  %bf.clear148 = and i32 %bf.load147, -1048576
  %bf.set = or i32 %bf.clear148, %bf.value
  store i32 %bf.set, i32* %oline_num146, align 4
  %62 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1149 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 1
  %ofpos151 = bitcast %union.FIRST_UNION* %ou1150 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos151, i32 0, i32 3
  %bf.load152 = load i32, i32* %ocol_num, align 4
  %bf.lshr153 = lshr i32 %bf.load152, 20
  %63 = load %union.rec*, %union.rec** %x, align 8
  %os1154 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 1
  %ofpos156 = bitcast %union.FIRST_UNION* %ou1155 to %struct.FILE_POS*
  %ocol_num157 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos156, i32 0, i32 3
  %bf.load158 = load i32, i32* %ocol_num157, align 4
  %bf.value159 = and i32 %bf.lshr153, 4095
  %bf.shl = shl i32 %bf.value159, 20
  %bf.clear160 = and i32 %bf.load158, 1048575
  %bf.set161 = or i32 %bf.clear160, %bf.shl
  store i32 %bf.set161, i32* %ocol_num157, align 4
  %64 = load %union.rec*, %union.rec** %sym, align 8
  %65 = load %union.rec*, %union.rec** %x, align 8
  %os2162 = bitcast %union.rec* %65 to %struct.closure_type*
  %oactual163 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2162, i32 0, i32 5
  store %union.rec* %64, %union.rec** %oactual163, align 8
  %66 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv164 = zext i8 %66 to i32
  store i32 %conv164, i32* @zz_size, align 4
  %conv165 = sext i32 %conv164 to i64
  %cmp166 = icmp uge i64 %conv165, 265
  br i1 %cmp166, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.end.110
  %67 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call169 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %67)
  br label %if.end.187

if.else.170:                                      ; preds = %if.end.110
  %68 = load i32, i32* @zz_size, align 4
  %idxprom171 = sext i32 %68 to i64
  %arrayidx172 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom171
  %69 = load %union.rec*, %union.rec** %arrayidx172, align 8
  %cmp173 = icmp eq %union.rec* %69, null
  br i1 %cmp173, label %if.then.175, label %if.else.177

if.then.175:                                      ; preds = %if.else.170
  %70 = load i32, i32* @zz_size, align 4
  %71 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call176 = call %union.rec* @GetMemory(i32 %70, %struct.FILE_POS* %71)
  store %union.rec* %call176, %union.rec** @zz_hold, align 8
  br label %if.end.186

if.else.177:                                      ; preds = %if.else.170
  %72 = load i32, i32* @zz_size, align 4
  %idxprom178 = sext i32 %72 to i64
  %arrayidx179 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom178
  %73 = load %union.rec*, %union.rec** %arrayidx179, align 8
  store %union.rec* %73, %union.rec** @zz_hold, align 8
  store %union.rec* %73, %union.rec** @zz_hold, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1180 = bitcast %union.rec* %74 to %struct.word_type*
  %olist181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist181, i32 0, i64 0
  %opred183 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx182, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %opred183, align 8
  %76 = load i32, i32* @zz_size, align 4
  %idxprom184 = sext i32 %76 to i64
  %arrayidx185 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom184
  store %union.rec* %75, %union.rec** %arrayidx185, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.177, %if.then.175
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.168
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 1
  %os11190 = bitcast %union.FIRST_UNION* %ou1189 to %struct.anon*
  %otype191 = getelementptr inbounds %struct.anon, %struct.anon* %os11190, i32 0, i32 0
  store i8 10, i8* %otype191, align 1
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1192 = bitcast %union.rec* %79 to %struct.word_type*
  %olist193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist193, i32 0, i64 1
  %osucc195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx194, i32 0, i32 1
  store %union.rec* %78, %union.rec** %osucc195, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1196 = bitcast %union.rec* %80 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 1
  %opred199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred199, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1200 = bitcast %union.rec* %81 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 0
  %osucc203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 1
  store %union.rec* %78, %union.rec** %osucc203, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1204 = bitcast %union.rec* %82 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 0
  %opred207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred207, align 8
  store %union.rec* %78, %union.rec** %par, align 8
  %83 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1208 = bitcast %union.rec* %83 to %struct.word_type*
  %ou1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 1
  %ofpos210 = bitcast %union.FIRST_UNION* %ou1209 to %struct.FILE_POS*
  %ofile_num211 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos210, i32 0, i32 2
  %84 = load i16, i16* %ofile_num211, align 2
  %85 = load %union.rec*, %union.rec** %par, align 8
  %os1212 = bitcast %union.rec* %85 to %struct.word_type*
  %ou1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 1
  %ofpos214 = bitcast %union.FIRST_UNION* %ou1213 to %struct.FILE_POS*
  %ofile_num215 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos214, i32 0, i32 2
  store i16 %84, i16* %ofile_num215, align 2
  %86 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1216 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 1
  %ofpos218 = bitcast %union.FIRST_UNION* %ou1217 to %struct.FILE_POS*
  %oline_num219 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos218, i32 0, i32 3
  %bf.load220 = load i32, i32* %oline_num219, align 4
  %bf.clear221 = and i32 %bf.load220, 1048575
  %87 = load %union.rec*, %union.rec** %par, align 8
  %os1222 = bitcast %union.rec* %87 to %struct.word_type*
  %ou1223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 1
  %ofpos224 = bitcast %union.FIRST_UNION* %ou1223 to %struct.FILE_POS*
  %oline_num225 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos224, i32 0, i32 3
  %bf.load226 = load i32, i32* %oline_num225, align 4
  %bf.value227 = and i32 %bf.clear221, 1048575
  %bf.clear228 = and i32 %bf.load226, -1048576
  %bf.set229 = or i32 %bf.clear228, %bf.value227
  store i32 %bf.set229, i32* %oline_num225, align 4
  %88 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1230 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 1
  %ofpos232 = bitcast %union.FIRST_UNION* %ou1231 to %struct.FILE_POS*
  %ocol_num233 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos232, i32 0, i32 3
  %bf.load234 = load i32, i32* %ocol_num233, align 4
  %bf.lshr235 = lshr i32 %bf.load234, 20
  %89 = load %union.rec*, %union.rec** %par, align 8
  %os1236 = bitcast %union.rec* %89 to %struct.word_type*
  %ou1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 1
  %ofpos238 = bitcast %union.FIRST_UNION* %ou1237 to %struct.FILE_POS*
  %ocol_num239 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos238, i32 0, i32 3
  %bf.load240 = load i32, i32* %ocol_num239, align 4
  %bf.value241 = and i32 %bf.lshr235, 4095
  %bf.shl242 = shl i32 %bf.value241, 20
  %bf.clear243 = and i32 %bf.load240, 1048575
  %bf.set244 = or i32 %bf.clear243, %bf.shl242
  store i32 %bf.set244, i32* %ocol_num239, align 4
  %90 = load %union.rec*, %union.rec** %parsym, align 8
  %91 = load %union.rec*, %union.rec** %par, align 8
  %os2245 = bitcast %union.rec* %91 to %struct.closure_type*
  %oactual246 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2245, i32 0, i32 5
  store %union.rec* %90, %union.rec** %oactual246, align 8
  %92 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv247 = zext i8 %92 to i32
  store i32 %conv247, i32* @zz_size, align 4
  %conv248 = sext i32 %conv247 to i64
  %cmp249 = icmp uge i64 %conv248, 265
  br i1 %cmp249, label %if.then.251, label %if.else.253

if.then.251:                                      ; preds = %if.end.187
  %93 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call252 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %93)
  br label %if.end.270

if.else.253:                                      ; preds = %if.end.187
  %94 = load i32, i32* @zz_size, align 4
  %idxprom254 = sext i32 %94 to i64
  %arrayidx255 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom254
  %95 = load %union.rec*, %union.rec** %arrayidx255, align 8
  %cmp256 = icmp eq %union.rec* %95, null
  br i1 %cmp256, label %if.then.258, label %if.else.260

if.then.258:                                      ; preds = %if.else.253
  %96 = load i32, i32* @zz_size, align 4
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call259 = call %union.rec* @GetMemory(i32 %96, %struct.FILE_POS* %97)
  store %union.rec* %call259, %union.rec** @zz_hold, align 8
  br label %if.end.269

if.else.260:                                      ; preds = %if.else.253
  %98 = load i32, i32* @zz_size, align 4
  %idxprom261 = sext i32 %98 to i64
  %arrayidx262 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom261
  %99 = load %union.rec*, %union.rec** %arrayidx262, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1263 = bitcast %union.rec* %100 to %struct.word_type*
  %olist264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1263, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist264, i32 0, i64 0
  %opred266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx265, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %opred266, align 8
  %102 = load i32, i32* @zz_size, align 4
  %idxprom267 = sext i32 %102 to i64
  %arrayidx268 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom267
  store %union.rec* %101, %union.rec** %arrayidx268, align 8
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.260, %if.then.258
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.then.251
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1271 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 1
  %os11273 = bitcast %union.FIRST_UNION* %ou1272 to %struct.anon*
  %otype274 = getelementptr inbounds %struct.anon, %struct.anon* %os11273, i32 0, i32 0
  store i8 0, i8* %otype274, align 1
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1275 = bitcast %union.rec* %105 to %struct.word_type*
  %olist276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist276, i32 0, i64 1
  %osucc278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx277, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc278, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1279 = bitcast %union.rec* %106 to %struct.word_type*
  %olist280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1279, i32 0, i32 0
  %arrayidx281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist280, i32 0, i64 1
  %opred282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx281, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred282, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1283 = bitcast %union.rec* %107 to %struct.word_type*
  %olist284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist284, i32 0, i64 0
  %osucc286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx285, i32 0, i32 1
  store %union.rec* %104, %union.rec** %osucc286, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1287 = bitcast %union.rec* %108 to %struct.word_type*
  %olist288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 0
  %arrayidx289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist288, i32 0, i64 0
  %opred290 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx289, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred290, align 8
  store %union.rec* %104, %union.rec** @xx_link, align 8
  %109 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %109, %union.rec** @zz_res, align 8
  %110 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %110, %union.rec** @zz_hold, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp291 = icmp eq %union.rec* %111, null
  br i1 %cmp291, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.270
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.325

cond.false:                                       ; preds = %if.end.270
  %113 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp293 = icmp eq %union.rec* %113, null
  br i1 %cmp293, label %cond.true.295, label %cond.false.296

cond.true.295:                                    ; preds = %cond.false
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.296:                                   ; preds = %cond.false
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1297 = bitcast %union.rec* %115 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 0
  %opred300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %opred300, align 8
  store %union.rec* %116, %union.rec** @zz_tmp, align 8
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1301 = bitcast %union.rec* %117 to %struct.word_type*
  %olist302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1301, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist302, i32 0, i64 0
  %opred304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx303, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %opred304, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1305 = bitcast %union.rec* %119 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 0
  %opred308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 0
  store %union.rec* %118, %union.rec** %opred308, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %121 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1309 = bitcast %union.rec* %121 to %struct.word_type*
  %olist310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist310, i32 0, i64 0
  %opred312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx311, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %opred312, align 8
  %os1313 = bitcast %union.rec* %122 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 0
  %osucc316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 1
  store %union.rec* %120, %union.rec** %osucc316, align 8
  %123 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1317 = bitcast %union.rec* %124 to %struct.word_type*
  %olist318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist318, i32 0, i64 0
  %opred320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx319, i32 0, i32 0
  store %union.rec* %123, %union.rec** %opred320, align 8
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  %126 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1321 = bitcast %union.rec* %126 to %struct.word_type*
  %olist322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist322, i32 0, i64 0
  %osucc324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx323, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc324, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.296, %cond.true.295
  %cond = phi %union.rec* [ %114, %cond.true.295 ], [ %125, %cond.false.296 ]
  br label %cond.end.325

cond.end.325:                                     ; preds = %cond.end, %cond.true
  %cond326 = phi %union.rec* [ %112, %cond.true ], [ %cond, %cond.end ]
  %127 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %127, %union.rec** @zz_res, align 8
  %128 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %128, %union.rec** @zz_hold, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp327 = icmp eq %union.rec* %129, null
  br i1 %cmp327, label %cond.true.329, label %cond.false.330

cond.true.329:                                    ; preds = %cond.end.325
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.365

cond.false.330:                                   ; preds = %cond.end.325
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp331 = icmp eq %union.rec* %131, null
  br i1 %cmp331, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %cond.false.330
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.363

cond.false.334:                                   ; preds = %cond.false.330
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1335 = bitcast %union.rec* %133 to %struct.word_type*
  %olist336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist336, i32 0, i64 1
  %opred338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx337, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %opred338, align 8
  store %union.rec* %134, %union.rec** @zz_tmp, align 8
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1339 = bitcast %union.rec* %135 to %struct.word_type*
  %olist340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1339, i32 0, i32 0
  %arrayidx341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist340, i32 0, i64 1
  %opred342 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx341, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %opred342, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1343 = bitcast %union.rec* %137 to %struct.word_type*
  %olist344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist344, i32 0, i64 1
  %opred346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx345, i32 0, i32 0
  store %union.rec* %136, %union.rec** %opred346, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1347 = bitcast %union.rec* %139 to %struct.word_type*
  %olist348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1347, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist348, i32 0, i64 1
  %opred350 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx349, i32 0, i32 0
  %140 = load %union.rec*, %union.rec** %opred350, align 8
  %os1351 = bitcast %union.rec* %140 to %struct.word_type*
  %olist352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1351, i32 0, i32 0
  %arrayidx353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist352, i32 0, i64 1
  %osucc354 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx353, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc354, align 8
  %141 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %142 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1355 = bitcast %union.rec* %142 to %struct.word_type*
  %olist356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1355, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist356, i32 0, i64 1
  %opred358 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx357, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred358, align 8
  %143 = load %union.rec*, %union.rec** @zz_res, align 8
  %144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1359 = bitcast %union.rec* %144 to %struct.word_type*
  %olist360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1359, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist360, i32 0, i64 1
  %osucc362 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx361, i32 0, i32 1
  store %union.rec* %143, %union.rec** %osucc362, align 8
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.false.334, %cond.true.333
  %cond364 = phi %union.rec* [ %132, %cond.true.333 ], [ %143, %cond.false.334 ]
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.end.363, %cond.true.329
  %cond366 = phi %union.rec* [ %130, %cond.true.329 ], [ %cond364, %cond.end.363 ]
  %145 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1367 = bitcast %union.rec* %145 to %struct.word_type*
  %ou1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1367, i32 0, i32 1
  %ofpos369 = bitcast %union.FIRST_UNION* %ou1368 to %struct.FILE_POS*
  %call370 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), %struct.FILE_POS* %ofpos369)
  store %union.rec* %call370, %union.rec** %val, align 8
  %146 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv371 = zext i8 %146 to i32
  store i32 %conv371, i32* @zz_size, align 4
  %conv372 = sext i32 %conv371 to i64
  %cmp373 = icmp uge i64 %conv372, 265
  br i1 %cmp373, label %if.then.375, label %if.else.377

if.then.375:                                      ; preds = %cond.end.365
  %147 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call376 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %147)
  br label %if.end.394

if.else.377:                                      ; preds = %cond.end.365
  %148 = load i32, i32* @zz_size, align 4
  %idxprom378 = sext i32 %148 to i64
  %arrayidx379 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom378
  %149 = load %union.rec*, %union.rec** %arrayidx379, align 8
  %cmp380 = icmp eq %union.rec* %149, null
  br i1 %cmp380, label %if.then.382, label %if.else.384

if.then.382:                                      ; preds = %if.else.377
  %150 = load i32, i32* @zz_size, align 4
  %151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call383 = call %union.rec* @GetMemory(i32 %150, %struct.FILE_POS* %151)
  store %union.rec* %call383, %union.rec** @zz_hold, align 8
  br label %if.end.393

if.else.384:                                      ; preds = %if.else.377
  %152 = load i32, i32* @zz_size, align 4
  %idxprom385 = sext i32 %152 to i64
  %arrayidx386 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom385
  %153 = load %union.rec*, %union.rec** %arrayidx386, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  store %union.rec* %153, %union.rec** @zz_hold, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1387 = bitcast %union.rec* %154 to %struct.word_type*
  %olist388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1387, i32 0, i32 0
  %arrayidx389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist388, i32 0, i64 0
  %opred390 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx389, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %opred390, align 8
  %156 = load i32, i32* @zz_size, align 4
  %idxprom391 = sext i32 %156 to i64
  %arrayidx392 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom391
  store %union.rec* %155, %union.rec** %arrayidx392, align 8
  br label %if.end.393

if.end.393:                                       ; preds = %if.else.384, %if.then.382
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %if.then.375
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1395 = bitcast %union.rec* %157 to %struct.word_type*
  %ou1396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1395, i32 0, i32 1
  %os11397 = bitcast %union.FIRST_UNION* %ou1396 to %struct.anon*
  %otype398 = getelementptr inbounds %struct.anon, %struct.anon* %os11397, i32 0, i32 0
  store i8 0, i8* %otype398, align 1
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1399 = bitcast %union.rec* %159 to %struct.word_type*
  %olist400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 0
  %arrayidx401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist400, i32 0, i64 1
  %osucc402 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx401, i32 0, i32 1
  store %union.rec* %158, %union.rec** %osucc402, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1403 = bitcast %union.rec* %160 to %struct.word_type*
  %olist404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1403, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist404, i32 0, i64 1
  %opred406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx405, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred406, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1407 = bitcast %union.rec* %161 to %struct.word_type*
  %olist408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist408, i32 0, i64 0
  %osucc410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx409, i32 0, i32 1
  store %union.rec* %158, %union.rec** %osucc410, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1411 = bitcast %union.rec* %162 to %struct.word_type*
  %olist412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1411, i32 0, i32 0
  %arrayidx413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist412, i32 0, i64 0
  %opred414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx413, i32 0, i32 0
  store %union.rec* %158, %union.rec** %opred414, align 8
  store %union.rec* %158, %union.rec** @xx_link, align 8
  %163 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %163, %union.rec** @zz_res, align 8
  %164 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %164, %union.rec** @zz_hold, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp415 = icmp eq %union.rec* %165, null
  br i1 %cmp415, label %cond.true.417, label %cond.false.418

cond.true.417:                                    ; preds = %if.end.394
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.453

cond.false.418:                                   ; preds = %if.end.394
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp419 = icmp eq %union.rec* %167, null
  br i1 %cmp419, label %cond.true.421, label %cond.false.422

cond.true.421:                                    ; preds = %cond.false.418
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.451

cond.false.422:                                   ; preds = %cond.false.418
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1423 = bitcast %union.rec* %169 to %struct.word_type*
  %olist424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist424, i32 0, i64 0
  %opred426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx425, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %opred426, align 8
  store %union.rec* %170, %union.rec** @zz_tmp, align 8
  %171 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1427 = bitcast %union.rec* %171 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 0
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  %172 = load %union.rec*, %union.rec** %opred430, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1431 = bitcast %union.rec* %173 to %struct.word_type*
  %olist432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist432, i32 0, i64 0
  %opred434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx433, i32 0, i32 0
  store %union.rec* %172, %union.rec** %opred434, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1435 = bitcast %union.rec* %175 to %struct.word_type*
  %olist436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1435, i32 0, i32 0
  %arrayidx437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist436, i32 0, i64 0
  %opred438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx437, i32 0, i32 0
  %176 = load %union.rec*, %union.rec** %opred438, align 8
  %os1439 = bitcast %union.rec* %176 to %struct.word_type*
  %olist440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist440, i32 0, i64 0
  %osucc442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx441, i32 0, i32 1
  store %union.rec* %174, %union.rec** %osucc442, align 8
  %177 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1443 = bitcast %union.rec* %178 to %struct.word_type*
  %olist444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1443, i32 0, i32 0
  %arrayidx445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist444, i32 0, i64 0
  %opred446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx445, i32 0, i32 0
  store %union.rec* %177, %union.rec** %opred446, align 8
  %179 = load %union.rec*, %union.rec** @zz_res, align 8
  %180 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1447 = bitcast %union.rec* %180 to %struct.word_type*
  %olist448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1447, i32 0, i32 0
  %arrayidx449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist448, i32 0, i64 0
  %osucc450 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx449, i32 0, i32 1
  store %union.rec* %179, %union.rec** %osucc450, align 8
  br label %cond.end.451

cond.end.451:                                     ; preds = %cond.false.422, %cond.true.421
  %cond452 = phi %union.rec* [ %168, %cond.true.421 ], [ %179, %cond.false.422 ]
  br label %cond.end.453

cond.end.453:                                     ; preds = %cond.end.451, %cond.true.417
  %cond454 = phi %union.rec* [ %166, %cond.true.417 ], [ %cond452, %cond.end.451 ]
  %181 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %181, %union.rec** @zz_res, align 8
  %182 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %182, %union.rec** @zz_hold, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp455 = icmp eq %union.rec* %183, null
  br i1 %cmp455, label %cond.true.457, label %cond.false.458

cond.true.457:                                    ; preds = %cond.end.453
  %184 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.493

cond.false.458:                                   ; preds = %cond.end.453
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp459 = icmp eq %union.rec* %185, null
  br i1 %cmp459, label %cond.true.461, label %cond.false.462

cond.true.461:                                    ; preds = %cond.false.458
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.491

cond.false.462:                                   ; preds = %cond.false.458
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1463 = bitcast %union.rec* %187 to %struct.word_type*
  %olist464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1463, i32 0, i32 0
  %arrayidx465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist464, i32 0, i64 1
  %opred466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx465, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %opred466, align 8
  store %union.rec* %188, %union.rec** @zz_tmp, align 8
  %189 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1467 = bitcast %union.rec* %189 to %struct.word_type*
  %olist468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist468, i32 0, i64 1
  %opred470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx469, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %opred470, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1471 = bitcast %union.rec* %191 to %struct.word_type*
  %olist472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist472, i32 0, i64 1
  %opred474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx473, i32 0, i32 0
  store %union.rec* %190, %union.rec** %opred474, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1475 = bitcast %union.rec* %193 to %struct.word_type*
  %olist476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1475, i32 0, i32 0
  %arrayidx477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist476, i32 0, i64 1
  %opred478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx477, i32 0, i32 0
  %194 = load %union.rec*, %union.rec** %opred478, align 8
  %os1479 = bitcast %union.rec* %194 to %struct.word_type*
  %olist480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 0
  %arrayidx481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist480, i32 0, i64 1
  %osucc482 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx481, i32 0, i32 1
  store %union.rec* %192, %union.rec** %osucc482, align 8
  %195 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1483 = bitcast %union.rec* %196 to %struct.word_type*
  %olist484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1483, i32 0, i32 0
  %arrayidx485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist484, i32 0, i64 1
  %opred486 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx485, i32 0, i32 0
  store %union.rec* %195, %union.rec** %opred486, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1487 = bitcast %union.rec* %198 to %struct.word_type*
  %olist488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist488, i32 0, i64 1
  %osucc490 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx489, i32 0, i32 1
  store %union.rec* %197, %union.rec** %osucc490, align 8
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.462, %cond.true.461
  %cond492 = phi %union.rec* [ %186, %cond.true.461 ], [ %197, %cond.false.462 ]
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.end.491, %cond.true.457
  %cond494 = phi %union.rec* [ %184, %cond.true.457 ], [ %cond492, %cond.end.491 ]
  %199 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1495 = bitcast %union.rec* %199 to %struct.word_type*
  %olist496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist496, i32 0, i64 0
  %osucc498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx497, i32 0, i32 1
  %200 = load %union.rec*, %union.rec** %osucc498, align 8
  %os1499 = bitcast %union.rec* %200 to %struct.word_type*
  %olist500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1499, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist500, i32 0, i64 1
  %opred502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx501, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %opred502, align 8
  store %union.rec* %201, %union.rec** %y, align 8
  br label %for.cond.503

for.cond.503:                                     ; preds = %for.inc.512, %cond.end.493
  %202 = load %union.rec*, %union.rec** %y, align 8
  %os1504 = bitcast %union.rec* %202 to %struct.word_type*
  %ou1505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 1
  %os11506 = bitcast %union.FIRST_UNION* %ou1505 to %struct.anon*
  %otype507 = getelementptr inbounds %struct.anon, %struct.anon* %os11506, i32 0, i32 0
  %203 = load i8, i8* %otype507, align 1
  %conv508 = zext i8 %203 to i32
  %cmp509 = icmp eq i32 %conv508, 0
  br i1 %cmp509, label %for.body.511, label %for.end.517

for.body.511:                                     ; preds = %for.cond.503
  br label %for.inc.512

for.inc.512:                                      ; preds = %for.body.511
  %204 = load %union.rec*, %union.rec** %y, align 8
  %os1513 = bitcast %union.rec* %204 to %struct.word_type*
  %olist514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist514, i32 0, i64 1
  %opred516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx515, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred516, align 8
  store %union.rec* %205, %union.rec** %y, align 8
  br label %for.cond.503

for.end.517:                                      ; preds = %for.cond.503
  %206 = load %union.rec*, %union.rec** %y, align 8
  %os1518 = bitcast %union.rec* %206 to %struct.word_type*
  %ou1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1518, i32 0, i32 1
  %os11520 = bitcast %union.FIRST_UNION* %ou1519 to %struct.anon*
  %otype521 = getelementptr inbounds %struct.anon, %struct.anon* %os11520, i32 0, i32 0
  %207 = load i8, i8* %otype521, align 1
  %conv522 = zext i8 %207 to i32
  %cmp523 = icmp eq i32 %conv522, 2
  br i1 %cmp523, label %if.end.527, label %if.then.525

if.then.525:                                      ; preds = %for.end.517
  %208 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call526 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.525, %for.end.517
  %209 = load %union.rec*, %union.rec** %y, align 8
  %210 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1528 = bitcast %union.rec* %210 to %struct.word_type*
  %ou1529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1528, i32 0, i32 1
  %ofpos530 = bitcast %union.FIRST_UNION* %ou1529 to %struct.FILE_POS*
  %call531 = call %union.rec* @CopyObject(%union.rec* %209, %struct.FILE_POS* %ofpos530)
  store %union.rec* %call531, %union.rec** %y, align 8
  %211 = load %union.rec*, %union.rec** %y, align 8
  %call532 = call %union.rec* @SetEnv(%union.rec* %211, %union.rec* null)
  store %union.rec* %call532, %union.rec** %env, align 8
  %212 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 81), align 1
  %conv533 = zext i8 %212 to i32
  store i32 %conv533, i32* @zz_size, align 4
  %conv534 = sext i32 %conv533 to i64
  %cmp535 = icmp uge i64 %conv534, 265
  br i1 %cmp535, label %if.then.537, label %if.else.539

if.then.537:                                      ; preds = %if.end.527
  %213 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call538 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %213)
  br label %if.end.556

if.else.539:                                      ; preds = %if.end.527
  %214 = load i32, i32* @zz_size, align 4
  %idxprom540 = sext i32 %214 to i64
  %arrayidx541 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom540
  %215 = load %union.rec*, %union.rec** %arrayidx541, align 8
  %cmp542 = icmp eq %union.rec* %215, null
  br i1 %cmp542, label %if.then.544, label %if.else.546

if.then.544:                                      ; preds = %if.else.539
  %216 = load i32, i32* @zz_size, align 4
  %217 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call545 = call %union.rec* @GetMemory(i32 %216, %struct.FILE_POS* %217)
  store %union.rec* %call545, %union.rec** @zz_hold, align 8
  br label %if.end.555

if.else.546:                                      ; preds = %if.else.539
  %218 = load i32, i32* @zz_size, align 4
  %idxprom547 = sext i32 %218 to i64
  %arrayidx548 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom547
  %219 = load %union.rec*, %union.rec** %arrayidx548, align 8
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1549 = bitcast %union.rec* %220 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 0
  %opred552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 0
  %221 = load %union.rec*, %union.rec** %opred552, align 8
  %222 = load i32, i32* @zz_size, align 4
  %idxprom553 = sext i32 %222 to i64
  %arrayidx554 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom553
  store %union.rec* %221, %union.rec** %arrayidx554, align 8
  br label %if.end.555

if.end.555:                                       ; preds = %if.else.546, %if.then.544
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.555, %if.then.537
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1557 = bitcast %union.rec* %223 to %struct.word_type*
  %ou1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 1
  %os11559 = bitcast %union.FIRST_UNION* %ou1558 to %struct.anon*
  %otype560 = getelementptr inbounds %struct.anon, %struct.anon* %os11559, i32 0, i32 0
  store i8 81, i8* %otype560, align 1
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1561 = bitcast %union.rec* %225 to %struct.word_type*
  %olist562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1561, i32 0, i32 0
  %arrayidx563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist562, i32 0, i64 1
  %osucc564 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx563, i32 0, i32 1
  store %union.rec* %224, %union.rec** %osucc564, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %226 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 1
  %opred568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 0
  store %union.rec* %224, %union.rec** %opred568, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1569 = bitcast %union.rec* %227 to %struct.word_type*
  %olist570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist570, i32 0, i64 0
  %osucc572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx571, i32 0, i32 1
  store %union.rec* %224, %union.rec** %osucc572, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1573 = bitcast %union.rec* %228 to %struct.word_type*
  %olist574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist574, i32 0, i64 0
  %opred576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx575, i32 0, i32 0
  store %union.rec* %224, %union.rec** %opred576, align 8
  store %union.rec* %224, %union.rec** %res, align 8
  %229 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv577 = zext i8 %229 to i32
  store i32 %conv577, i32* @zz_size, align 4
  %conv578 = sext i32 %conv577 to i64
  %cmp579 = icmp uge i64 %conv578, 265
  br i1 %cmp579, label %if.then.581, label %if.else.583

if.then.581:                                      ; preds = %if.end.556
  %230 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call582 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %230)
  br label %if.end.600

if.else.583:                                      ; preds = %if.end.556
  %231 = load i32, i32* @zz_size, align 4
  %idxprom584 = sext i32 %231 to i64
  %arrayidx585 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom584
  %232 = load %union.rec*, %union.rec** %arrayidx585, align 8
  %cmp586 = icmp eq %union.rec* %232, null
  br i1 %cmp586, label %if.then.588, label %if.else.590

if.then.588:                                      ; preds = %if.else.583
  %233 = load i32, i32* @zz_size, align 4
  %234 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call589 = call %union.rec* @GetMemory(i32 %233, %struct.FILE_POS* %234)
  store %union.rec* %call589, %union.rec** @zz_hold, align 8
  br label %if.end.599

if.else.590:                                      ; preds = %if.else.583
  %235 = load i32, i32* @zz_size, align 4
  %idxprom591 = sext i32 %235 to i64
  %arrayidx592 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom591
  %236 = load %union.rec*, %union.rec** %arrayidx592, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1593 = bitcast %union.rec* %237 to %struct.word_type*
  %olist594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1593, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist594, i32 0, i64 0
  %opred596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx595, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %opred596, align 8
  %239 = load i32, i32* @zz_size, align 4
  %idxprom597 = sext i32 %239 to i64
  %arrayidx598 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom597
  store %union.rec* %238, %union.rec** %arrayidx598, align 8
  br label %if.end.599

if.end.599:                                       ; preds = %if.else.590, %if.then.588
  br label %if.end.600

if.end.600:                                       ; preds = %if.end.599, %if.then.581
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1601 = bitcast %union.rec* %240 to %struct.word_type*
  %ou1602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1601, i32 0, i32 1
  %os11603 = bitcast %union.FIRST_UNION* %ou1602 to %struct.anon*
  %otype604 = getelementptr inbounds %struct.anon, %struct.anon* %os11603, i32 0, i32 0
  store i8 0, i8* %otype604, align 1
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1605 = bitcast %union.rec* %242 to %struct.word_type*
  %olist606 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1605, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist606, i32 0, i64 1
  %osucc608 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx607, i32 0, i32 1
  store %union.rec* %241, %union.rec** %osucc608, align 8
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1609 = bitcast %union.rec* %243 to %struct.word_type*
  %olist610 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1609, i32 0, i32 0
  %arrayidx611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist610, i32 0, i64 1
  %opred612 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx611, i32 0, i32 0
  store %union.rec* %241, %union.rec** %opred612, align 8
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1613 = bitcast %union.rec* %244 to %struct.word_type*
  %olist614 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1613, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist614, i32 0, i64 0
  %osucc616 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx615, i32 0, i32 1
  store %union.rec* %241, %union.rec** %osucc616, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1617 = bitcast %union.rec* %245 to %struct.word_type*
  %olist618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1617, i32 0, i32 0
  %arrayidx619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist618, i32 0, i64 0
  %opred620 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx619, i32 0, i32 0
  store %union.rec* %241, %union.rec** %opred620, align 8
  store %union.rec* %241, %union.rec** @xx_link, align 8
  %246 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %246, %union.rec** @zz_res, align 8
  %247 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %247, %union.rec** @zz_hold, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp621 = icmp eq %union.rec* %248, null
  br i1 %cmp621, label %cond.true.623, label %cond.false.624

cond.true.623:                                    ; preds = %if.end.600
  %249 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.659

cond.false.624:                                   ; preds = %if.end.600
  %250 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp625 = icmp eq %union.rec* %250, null
  br i1 %cmp625, label %cond.true.627, label %cond.false.628

cond.true.627:                                    ; preds = %cond.false.624
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.657

cond.false.628:                                   ; preds = %cond.false.624
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1629 = bitcast %union.rec* %252 to %struct.word_type*
  %olist630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 0
  %arrayidx631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist630, i32 0, i64 0
  %opred632 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx631, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %opred632, align 8
  store %union.rec* %253, %union.rec** @zz_tmp, align 8
  %254 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1633 = bitcast %union.rec* %254 to %struct.word_type*
  %olist634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1633, i32 0, i32 0
  %arrayidx635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist634, i32 0, i64 0
  %opred636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx635, i32 0, i32 0
  %255 = load %union.rec*, %union.rec** %opred636, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1637 = bitcast %union.rec* %256 to %struct.word_type*
  %olist638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1637, i32 0, i32 0
  %arrayidx639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist638, i32 0, i64 0
  %opred640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx639, i32 0, i32 0
  store %union.rec* %255, %union.rec** %opred640, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1641 = bitcast %union.rec* %258 to %struct.word_type*
  %olist642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 0
  %arrayidx643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist642, i32 0, i64 0
  %opred644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx643, i32 0, i32 0
  %259 = load %union.rec*, %union.rec** %opred644, align 8
  %os1645 = bitcast %union.rec* %259 to %struct.word_type*
  %olist646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1645, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist646, i32 0, i64 0
  %osucc648 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx647, i32 0, i32 1
  store %union.rec* %257, %union.rec** %osucc648, align 8
  %260 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1649 = bitcast %union.rec* %261 to %struct.word_type*
  %olist650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1649, i32 0, i32 0
  %arrayidx651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist650, i32 0, i64 0
  %opred652 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx651, i32 0, i32 0
  store %union.rec* %260, %union.rec** %opred652, align 8
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1653 = bitcast %union.rec* %263 to %struct.word_type*
  %olist654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1653, i32 0, i32 0
  %arrayidx655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist654, i32 0, i64 0
  %osucc656 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx655, i32 0, i32 1
  store %union.rec* %262, %union.rec** %osucc656, align 8
  br label %cond.end.657

cond.end.657:                                     ; preds = %cond.false.628, %cond.true.627
  %cond658 = phi %union.rec* [ %251, %cond.true.627 ], [ %262, %cond.false.628 ]
  br label %cond.end.659

cond.end.659:                                     ; preds = %cond.end.657, %cond.true.623
  %cond660 = phi %union.rec* [ %249, %cond.true.623 ], [ %cond658, %cond.end.657 ]
  %264 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %264, %union.rec** @zz_res, align 8
  %265 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %265, %union.rec** @zz_hold, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp661 = icmp eq %union.rec* %266, null
  br i1 %cmp661, label %cond.true.663, label %cond.false.664

cond.true.663:                                    ; preds = %cond.end.659
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.699

cond.false.664:                                   ; preds = %cond.end.659
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp665 = icmp eq %union.rec* %268, null
  br i1 %cmp665, label %cond.true.667, label %cond.false.668

cond.true.667:                                    ; preds = %cond.false.664
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.697

cond.false.668:                                   ; preds = %cond.false.664
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1669 = bitcast %union.rec* %270 to %struct.word_type*
  %olist670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 0
  %arrayidx671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist670, i32 0, i64 1
  %opred672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx671, i32 0, i32 0
  %271 = load %union.rec*, %union.rec** %opred672, align 8
  store %union.rec* %271, %union.rec** @zz_tmp, align 8
  %272 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1673 = bitcast %union.rec* %272 to %struct.word_type*
  %olist674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist674, i32 0, i64 1
  %opred676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx675, i32 0, i32 0
  %273 = load %union.rec*, %union.rec** %opred676, align 8
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1677 = bitcast %union.rec* %274 to %struct.word_type*
  %olist678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist678, i32 0, i64 1
  %opred680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx679, i32 0, i32 0
  store %union.rec* %273, %union.rec** %opred680, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1681 = bitcast %union.rec* %276 to %struct.word_type*
  %olist682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1681, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist682, i32 0, i64 1
  %opred684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx683, i32 0, i32 0
  %277 = load %union.rec*, %union.rec** %opred684, align 8
  %os1685 = bitcast %union.rec* %277 to %struct.word_type*
  %olist686 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1685, i32 0, i32 0
  %arrayidx687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist686, i32 0, i64 1
  %osucc688 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx687, i32 0, i32 1
  store %union.rec* %275, %union.rec** %osucc688, align 8
  %278 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %279 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1689 = bitcast %union.rec* %279 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 1
  %opred692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 0
  store %union.rec* %278, %union.rec** %opred692, align 8
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  %281 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1693 = bitcast %union.rec* %281 to %struct.word_type*
  %olist694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1693, i32 0, i32 0
  %arrayidx695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist694, i32 0, i64 1
  %osucc696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx695, i32 0, i32 1
  store %union.rec* %280, %union.rec** %osucc696, align 8
  br label %cond.end.697

cond.end.697:                                     ; preds = %cond.false.668, %cond.true.667
  %cond698 = phi %union.rec* [ %269, %cond.true.667 ], [ %280, %cond.false.668 ]
  br label %cond.end.699

cond.end.699:                                     ; preds = %cond.end.697, %cond.true.663
  %cond700 = phi %union.rec* [ %267, %cond.true.663 ], [ %cond698, %cond.end.697 ]
  %282 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv701 = zext i8 %282 to i32
  store i32 %conv701, i32* @zz_size, align 4
  %conv702 = sext i32 %conv701 to i64
  %cmp703 = icmp uge i64 %conv702, 265
  br i1 %cmp703, label %if.then.705, label %if.else.707

if.then.705:                                      ; preds = %cond.end.699
  %283 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call706 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %283)
  br label %if.end.724

if.else.707:                                      ; preds = %cond.end.699
  %284 = load i32, i32* @zz_size, align 4
  %idxprom708 = sext i32 %284 to i64
  %arrayidx709 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom708
  %285 = load %union.rec*, %union.rec** %arrayidx709, align 8
  %cmp710 = icmp eq %union.rec* %285, null
  br i1 %cmp710, label %if.then.712, label %if.else.714

if.then.712:                                      ; preds = %if.else.707
  %286 = load i32, i32* @zz_size, align 4
  %287 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call713 = call %union.rec* @GetMemory(i32 %286, %struct.FILE_POS* %287)
  store %union.rec* %call713, %union.rec** @zz_hold, align 8
  br label %if.end.723

if.else.714:                                      ; preds = %if.else.707
  %288 = load i32, i32* @zz_size, align 4
  %idxprom715 = sext i32 %288 to i64
  %arrayidx716 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom715
  %289 = load %union.rec*, %union.rec** %arrayidx716, align 8
  store %union.rec* %289, %union.rec** @zz_hold, align 8
  store %union.rec* %289, %union.rec** @zz_hold, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1717 = bitcast %union.rec* %290 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 0
  %opred720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 0
  %291 = load %union.rec*, %union.rec** %opred720, align 8
  %292 = load i32, i32* @zz_size, align 4
  %idxprom721 = sext i32 %292 to i64
  %arrayidx722 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom721
  store %union.rec* %291, %union.rec** %arrayidx722, align 8
  br label %if.end.723

if.end.723:                                       ; preds = %if.else.714, %if.then.712
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.723, %if.then.705
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1725 = bitcast %union.rec* %293 to %struct.word_type*
  %ou1726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1725, i32 0, i32 1
  %os11727 = bitcast %union.FIRST_UNION* %ou1726 to %struct.anon*
  %otype728 = getelementptr inbounds %struct.anon, %struct.anon* %os11727, i32 0, i32 0
  store i8 0, i8* %otype728, align 1
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1729 = bitcast %union.rec* %295 to %struct.word_type*
  %olist730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1729, i32 0, i32 0
  %arrayidx731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist730, i32 0, i64 1
  %osucc732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx731, i32 0, i32 1
  store %union.rec* %294, %union.rec** %osucc732, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1733 = bitcast %union.rec* %296 to %struct.word_type*
  %olist734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 0
  %arrayidx735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist734, i32 0, i64 1
  %opred736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx735, i32 0, i32 0
  store %union.rec* %294, %union.rec** %opred736, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1737 = bitcast %union.rec* %297 to %struct.word_type*
  %olist738 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1737, i32 0, i32 0
  %arrayidx739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist738, i32 0, i64 0
  %osucc740 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx739, i32 0, i32 1
  store %union.rec* %294, %union.rec** %osucc740, align 8
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1741 = bitcast %union.rec* %298 to %struct.word_type*
  %olist742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1741, i32 0, i32 0
  %arrayidx743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist742, i32 0, i64 0
  %opred744 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx743, i32 0, i32 0
  store %union.rec* %294, %union.rec** %opred744, align 8
  store %union.rec* %294, %union.rec** @xx_link, align 8
  %299 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %299, %union.rec** @zz_res, align 8
  %300 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %300, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp745 = icmp eq %union.rec* %301, null
  br i1 %cmp745, label %cond.true.747, label %cond.false.748

cond.true.747:                                    ; preds = %if.end.724
  %302 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.783

cond.false.748:                                   ; preds = %if.end.724
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp749 = icmp eq %union.rec* %303, null
  br i1 %cmp749, label %cond.true.751, label %cond.false.752

cond.true.751:                                    ; preds = %cond.false.748
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.781

cond.false.752:                                   ; preds = %cond.false.748
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1753 = bitcast %union.rec* %305 to %struct.word_type*
  %olist754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist754, i32 0, i64 0
  %opred756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %opred756, align 8
  store %union.rec* %306, %union.rec** @zz_tmp, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1757 = bitcast %union.rec* %307 to %struct.word_type*
  %olist758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist758, i32 0, i64 0
  %opred760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx759, i32 0, i32 0
  %308 = load %union.rec*, %union.rec** %opred760, align 8
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1761 = bitcast %union.rec* %309 to %struct.word_type*
  %olist762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 0
  %arrayidx763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist762, i32 0, i64 0
  %opred764 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx763, i32 0, i32 0
  store %union.rec* %308, %union.rec** %opred764, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1765 = bitcast %union.rec* %311 to %struct.word_type*
  %olist766 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1765, i32 0, i32 0
  %arrayidx767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist766, i32 0, i64 0
  %opred768 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx767, i32 0, i32 0
  %312 = load %union.rec*, %union.rec** %opred768, align 8
  %os1769 = bitcast %union.rec* %312 to %struct.word_type*
  %olist770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1769, i32 0, i32 0
  %arrayidx771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist770, i32 0, i64 0
  %osucc772 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx771, i32 0, i32 1
  store %union.rec* %310, %union.rec** %osucc772, align 8
  %313 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1773 = bitcast %union.rec* %314 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 0
  %opred776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 0
  store %union.rec* %313, %union.rec** %opred776, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  %316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1777 = bitcast %union.rec* %316 to %struct.word_type*
  %olist778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist778, i32 0, i64 0
  %osucc780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx779, i32 0, i32 1
  store %union.rec* %315, %union.rec** %osucc780, align 8
  br label %cond.end.781

cond.end.781:                                     ; preds = %cond.false.752, %cond.true.751
  %cond782 = phi %union.rec* [ %304, %cond.true.751 ], [ %315, %cond.false.752 ]
  br label %cond.end.783

cond.end.783:                                     ; preds = %cond.end.781, %cond.true.747
  %cond784 = phi %union.rec* [ %302, %cond.true.747 ], [ %cond782, %cond.end.781 ]
  %317 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %317, %union.rec** @zz_res, align 8
  %318 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %318, %union.rec** @zz_hold, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp785 = icmp eq %union.rec* %319, null
  br i1 %cmp785, label %cond.true.787, label %cond.false.788

cond.true.787:                                    ; preds = %cond.end.783
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.823

cond.false.788:                                   ; preds = %cond.end.783
  %321 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp789 = icmp eq %union.rec* %321, null
  br i1 %cmp789, label %cond.true.791, label %cond.false.792

cond.true.791:                                    ; preds = %cond.false.788
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.821

cond.false.792:                                   ; preds = %cond.false.788
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1793 = bitcast %union.rec* %323 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 1
  %opred796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 0
  %324 = load %union.rec*, %union.rec** %opred796, align 8
  store %union.rec* %324, %union.rec** @zz_tmp, align 8
  %325 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1797 = bitcast %union.rec* %325 to %struct.word_type*
  %olist798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1797, i32 0, i32 0
  %arrayidx799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist798, i32 0, i64 1
  %opred800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx799, i32 0, i32 0
  %326 = load %union.rec*, %union.rec** %opred800, align 8
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1801 = bitcast %union.rec* %327 to %struct.word_type*
  %olist802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1801, i32 0, i32 0
  %arrayidx803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist802, i32 0, i64 1
  %opred804 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx803, i32 0, i32 0
  store %union.rec* %326, %union.rec** %opred804, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1805 = bitcast %union.rec* %329 to %struct.word_type*
  %olist806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1805, i32 0, i32 0
  %arrayidx807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist806, i32 0, i64 1
  %opred808 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx807, i32 0, i32 0
  %330 = load %union.rec*, %union.rec** %opred808, align 8
  %os1809 = bitcast %union.rec* %330 to %struct.word_type*
  %olist810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1809, i32 0, i32 0
  %arrayidx811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist810, i32 0, i64 1
  %osucc812 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx811, i32 0, i32 1
  store %union.rec* %328, %union.rec** %osucc812, align 8
  %331 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %332 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1813 = bitcast %union.rec* %332 to %struct.word_type*
  %olist814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1813, i32 0, i32 0
  %arrayidx815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist814, i32 0, i64 1
  %opred816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx815, i32 0, i32 0
  store %union.rec* %331, %union.rec** %opred816, align 8
  %333 = load %union.rec*, %union.rec** @zz_res, align 8
  %334 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1817 = bitcast %union.rec* %334 to %struct.word_type*
  %olist818 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1817, i32 0, i32 0
  %arrayidx819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist818, i32 0, i64 1
  %osucc820 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx819, i32 0, i32 1
  store %union.rec* %333, %union.rec** %osucc820, align 8
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.false.792, %cond.true.791
  %cond822 = phi %union.rec* [ %322, %cond.true.791 ], [ %333, %cond.false.792 ]
  br label %cond.end.823

cond.end.823:                                     ; preds = %cond.end.821, %cond.true.787
  %cond824 = phi %union.rec* [ %320, %cond.true.787 ], [ %cond822, %cond.end.821 ]
  %335 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %335
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @SetEnv(%union.rec*, %union.rec*) #1

declare i8* @Image(i32) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

declare void @AttachEnv(%union.rec*, %union.rec*) #1

declare %union.rec* @ChildSym(%union.rec*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
