; ModuleID = './MultiSource.Benchmarks.MiBench/46.consumer-typeset.z38.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.4 = type { i16, i16 }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.0 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@maptop = internal global i32 1, align 4
@MapTable = common global [20 x %struct.mapvec*] zeroinitializer, align 16
@zz_hold = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@notdef_word = internal global %union.rec* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"too many character mappings\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"run out of memory when loading character mapping\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot open character mapping file %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d %o %s\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"character code(s) missing in mapping file (line %d)\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"decimal and octal codes disagree in mapping file (line %d)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-none-\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"code %d too small (min is 1) in mapping file (line %d)\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"code %d out of order in mapping file (line %d)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"code %d repeated in mapping file (line %d)\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"code %d too large (max is %d) in mapping file (line %d)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%d %o %s%n\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s %[^;];%n\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"unknown mapping name %s in mapping file %s (line %d)\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"unknown character %s in mapping file %s (line %d)\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"MapEncodingName: m out of range!\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"MapEnsurePrinted: not seen_recoded!\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"%%%%+ encoding %s\0A\00", align 1
@MapSmallCaps.font_change_word = internal global %union.rec* null, align 8
@.str.27 = private unnamed_addr constant [32 x i8] c"MapSmallCaps: !is_word(type(x))\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"MapSmallCaps: mapping out of range!\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"0.7f\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define i32 @MapLoad(%union.rec* %file_name, i32 %recoded) #0 {
entry:
  %retval = alloca i32, align 4
  %file_name.addr = alloca %union.rec*, align 8
  %recoded.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %map = alloca %struct.mapvec*, align 8
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %curr_line_num = alloca i32, align 4
  %line_pos = alloca i32, align 4
  %prev_code = alloca i32, align 4
  %dc = alloca i32, align 4
  %oc = alloca i32, align 4
  %count = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %cn = alloca [512 x i8], align 16
  %ch = alloca i8, align 1
  %mapname = alloca [512 x i8], align 16
  %mapval = alloca [512 x i8], align 16
  store %union.rec* %file_name, %union.rec** %file_name.addr, align 8
  store i32 %recoded, i32* %recoded.addr, align 4
  %0 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %res, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %res, align 4
  %2 = load i32, i32* @maptop, align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %res, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %4 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  %file_name2 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %4, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %file_name2, align 8
  %os13 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring4, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os16 = bitcast %union.rec* %6 to %struct.word_type*
  %ostring7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring7, i32 0, i32 0
  %call9 = call i32 @strcmp(i8* %arraydecay5, i8* %arraydecay8) #4
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.45

if.then.11:                                       ; preds = %for.body
  %7 = load %union.rec*, %union.rec** %file_name.addr, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os112 = bitcast %union.rec* %9 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %10 = load i8, i8* %otype, align 1
  %conv = zext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv, 11
  br i1 %cmp13, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.11
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %11 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon*
  %otype18 = getelementptr inbounds %struct.anon, %struct.anon* %os1117, i32 0, i32 0
  %12 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %12 to i32
  %cmp20 = icmp eq i32 %conv19, 12
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then.11
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %13 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os1124, i32 0, i32 1
  %14 = load i8, i8* %orec_size, align 1
  %conv25 = zext i8 %14 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %15 to %struct.word_type*
  %ou127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 1
  %os1128 = bitcast %union.FIRST_UNION* %ou127 to %struct.anon*
  %otype29 = getelementptr inbounds %struct.anon, %struct.anon* %os1128, i32 0, i32 0
  %16 = load i8, i8* %otype29, align 1
  %idxprom30 = zext i8 %16 to i64
  %arrayidx31 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom30
  %17 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv25, %cond.true ], [ %conv32, %cond.false ]
  store i32 %cond, i32* @zz_size, align 4
  %18 = load i32, i32* @zz_size, align 4
  %idxprom33 = sext i32 %18 to i64
  %arrayidx34 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom33
  %19 = load %union.rec*, %union.rec** %arrayidx34, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %20 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx36, i32 0, i32 0
  store %union.rec* %19, %union.rec** %opred, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %22 = load i32, i32* @zz_size, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom37
  store %union.rec* %21, %union.rec** %arrayidx38, align 8
  %23 = load i32, i32* %res, align 4
  %idxprom39 = zext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom39
  %24 = load %struct.mapvec*, %struct.mapvec** %arrayidx40, align 8
  %seen_recoded = getelementptr inbounds %struct.mapvec, %struct.mapvec* %24, i32 0, i32 2
  %25 = load i32, i32* %seen_recoded, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end
  %26 = load i32, i32* %recoded.addr, align 4
  %tobool41 = icmp ne i32 %26, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %27 = phi i1 [ true, %cond.end ], [ %tobool41, %lor.rhs ]
  %lor.ext = zext i1 %27 to i32
  %28 = load i32, i32* %res, align 4
  %idxprom42 = zext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom42
  %29 = load %struct.mapvec*, %struct.mapvec** %arrayidx43, align 8
  %seen_recoded44 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %29, i32 0, i32 2
  store i32 %lor.ext, i32* %seen_recoded44, align 4
  %30 = load i32, i32* %res, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.45:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %31 = load i32, i32* %res, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %res, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %union.rec*, %union.rec** @notdef_word, align 8
  %cmp46 = icmp eq %union.rec* %32, null
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %for.end
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call49 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %33)
  store %union.rec* %call49, %union.rec** @notdef_word, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %for.end
  %34 = load i32, i32* @maptop, align 4
  %cmp51 = icmp eq i32 %34, 20
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.50
  %35 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os154 = bitcast %union.rec* %35 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou155 to %struct.FILE_POS*
  %call56 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.end.50
  %call58 = call noalias i8* @malloc(i64 3464) #5
  %36 = bitcast i8* %call58 to %struct.mapvec*
  store %struct.mapvec* %36, %struct.mapvec** %map, align 8
  %37 = load i32, i32* @maptop, align 4
  %inc59 = add nsw i32 %37, 1
  store i32 %inc59, i32* @maptop, align 4
  store i32 %37, i32* %res, align 4
  %idxprom60 = zext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom60
  store %struct.mapvec* %36, %struct.mapvec** %arrayidx61, align 8
  %38 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %cmp62 = icmp eq %struct.mapvec* %38, null
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.end.57
  %39 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os165 = bitcast %union.rec* %39 to %struct.word_type*
  %ou166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 1
  %ofpos67 = bitcast %union.FIRST_UNION* %ou166 to %struct.FILE_POS*
  %call68 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos67)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %if.end.57
  %40 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %41 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %file_name70 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %41, i32 0, i32 0
  store %union.rec* %40, %union.rec** %file_name70, align 8
  %42 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os171 = bitcast %union.rec* %42 to %struct.word_type*
  %ostring72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 4
  %arraydecay73 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring72, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os174 = bitcast %union.rec* %43 to %struct.word_type*
  %ou175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 1
  %ofpos76 = bitcast %union.FIRST_UNION* %ou175 to %struct.FILE_POS*
  %call77 = call zeroext i16 @DefineFile(i8* %arraydecay73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %ofpos76, i32 9, i32 7)
  %44 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %fnum = getelementptr inbounds %struct.mapvec, %struct.mapvec* %44, i32 0, i32 1
  store i16 %call77, i16* %fnum, align 2
  %45 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %fnum78 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %45, i32 0, i32 1
  %46 = load i16, i16* %fnum78, align 2
  %call79 = call %struct._IO_FILE* @OpenFile(i16 zeroext %46, i32 0, i32 0)
  store %struct._IO_FILE* %call79, %struct._IO_FILE** %fp, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp80 = icmp eq %struct._IO_FILE* %47, null
  br i1 %cmp80, label %if.then.82, label %if.end.88

if.then.82:                                       ; preds = %if.end.69
  %48 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %fnum83 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %48, i32 0, i32 1
  %49 = load i16, i16* %fnum83, align 2
  %call84 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %49)
  %50 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %fnum85 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %50, i32 0, i32 1
  %51 = load i16, i16* %fnum85, align 2
  %call86 = call i8* @FileName(i16 zeroext %51)
  %call87 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %call84, i8* %call86)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.82, %if.end.69
  %52 = load i32, i32* %recoded.addr, align 4
  %53 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %seen_recoded89 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %53, i32 0, i32 2
  store i32 %52, i32* %seen_recoded89, align 4
  %54 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %last_page_printed = getelementptr inbounds %struct.mapvec, %struct.mapvec* %54, i32 0, i32 3
  store i32 0, i32* %last_page_printed, align 4
  %arraydecay90 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call91 = call i8* @strcpy(i8* %arraydecay90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #5
  %arraydecay92 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %55 = load i32, i32* @maptop, align 4
  %call93 = call i8* @StringInt(i32 %55)
  %call94 = call i8* @strcat(i8* %arraydecay92, i8* %call93) #5
  %arraydecay95 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call96 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay95, %struct.FILE_POS* %56)
  %57 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %name = getelementptr inbounds %struct.mapvec, %struct.mapvec* %57, i32 0, i32 4
  store %union.rec* %call96, %union.rec** %name, align 8
  store i32 0, i32* %m, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.113, %if.end.88
  %58 = load i32, i32* %m, align 4
  %cmp98 = icmp slt i32 %58, 4
  br i1 %cmp98, label %for.body.100, label %for.end.115

for.body.100:                                     ; preds = %for.cond.97
  store i32 0, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.110, %for.body.100
  %59 = load i32, i32* %i, align 4
  %cmp102 = icmp slt i32 %59, 256
  br i1 %cmp102, label %for.body.104, label %for.end.112

for.body.104:                                     ; preds = %for.cond.101
  %60 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %60 to i64
  %61 = load i32, i32* %m, align 4
  %idxprom106 = sext i32 %61 to i64
  %62 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %map107 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %62, i32 0, i32 7
  %arrayidx108 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map107, i32 0, i64 %idxprom106
  %arrayidx109 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx108, i32 0, i64 %idxprom105
  store i8 0, i8* %arrayidx109, align 1
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.104
  %63 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %63, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.101

for.end.112:                                      ; preds = %for.cond.101
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %64 = load i32, i32* %m, align 4
  %inc114 = add nsw i32 %64, 1
  store i32 %inc114, i32* %m, align 4
  br label %for.cond.97

for.end.115:                                      ; preds = %for.cond.97
  store i32 0, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.125, %for.end.115
  %65 = load i32, i32* %i, align 4
  %cmp117 = icmp slt i32 %65, 256
  br i1 %cmp117, label %for.body.119, label %for.end.127

for.body.119:                                     ; preds = %for.cond.116
  %66 = load i32, i32* %i, align 4
  %conv120 = trunc i32 %66 to i8
  %67 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %67 to i64
  %68 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %map122 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %68, i32 0, i32 7
  %arrayidx123 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map122, i32 0, i64 2
  %arrayidx124 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx123, i32 0, i64 %idxprom121
  store i8 %conv120, i8* %arrayidx124, align 1
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.119
  %69 = load i32, i32* %i, align 4
  %inc126 = add nsw i32 %69, 1
  store i32 %inc126, i32* %i, align 4
  br label %for.cond.116

for.end.127:                                      ; preds = %for.cond.116
  store i32 0, i32* %i, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.134, %for.end.127
  %70 = load i32, i32* %i, align 4
  %cmp129 = icmp slt i32 %70, 256
  br i1 %cmp129, label %for.body.131, label %for.end.136

for.body.131:                                     ; preds = %for.cond.128
  %71 = load %union.rec*, %union.rec** @notdef_word, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %72 to i64
  %73 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %vector = getelementptr inbounds %struct.mapvec, %struct.mapvec* %73, i32 0, i32 5
  %arrayidx133 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %vector, i32 0, i64 %idxprom132
  store %union.rec* %71, %union.rec** %arrayidx133, align 8
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.131
  %74 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %74, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.128

for.end.136:                                      ; preds = %for.cond.128
  store i32 0, i32* %i, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.143, %for.end.136
  %75 = load i32, i32* %i, align 4
  %cmp138 = icmp slt i32 %75, 353
  br i1 %cmp138, label %for.body.140, label %for.end.145

for.body.140:                                     ; preds = %for.cond.137
  %76 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %76 to i64
  %77 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %hash_table = getelementptr inbounds %struct.mapvec, %struct.mapvec* %77, i32 0, i32 6
  %arrayidx142 = getelementptr inbounds [353 x i8], [353 x i8]* %hash_table, i32 0, i64 %idxprom141
  store i8 0, i8* %arrayidx142, align 1
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.140
  %78 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %78, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.137

for.end.145:                                      ; preds = %for.cond.137
  store i32 -1, i32* %prev_code, align 4
  store i32 0, i32* %curr_line_num, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.266, %if.then.187, %for.end.145
  %arraydecay146 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call147 = call i8* @fgets(i8* %arraydecay146, i32 512, %struct._IO_FILE* %79)
  %arraydecay148 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %cmp149 = icmp eq i8* %call147, %arraydecay148
  br i1 %cmp149, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %80 = load i32, i32* %curr_line_num, align 4
  %inc151 = add nsw i32 %80, 1
  store i32 %inc151, i32* %curr_line_num, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.167, %while.body
  %81 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %81 to i64
  %arrayidx154 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom153
  %82 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %82 to i32
  %cmp156 = icmp eq i32 %conv155, 32
  br i1 %cmp156, label %lor.end.164, label %lor.rhs.158

lor.rhs.158:                                      ; preds = %for.cond.152
  %83 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %83 to i64
  %arrayidx160 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom159
  %84 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %84 to i32
  %cmp162 = icmp eq i32 %conv161, 9
  br label %lor.end.164

lor.end.164:                                      ; preds = %lor.rhs.158, %for.cond.152
  %85 = phi i1 [ true, %for.cond.152 ], [ %cmp162, %lor.rhs.158 ]
  br i1 %85, label %for.body.166, label %for.end.169

for.body.166:                                     ; preds = %lor.end.164
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.166
  %86 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %86, 1
  store i32 %inc168, i32* %i, align 4
  br label %for.cond.152

for.end.169:                                      ; preds = %lor.end.164
  %87 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %87 to i64
  %arrayidx171 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom170
  %88 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %88 to i32
  %cmp173 = icmp eq i32 %conv172, 35
  br i1 %cmp173, label %if.then.187, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %for.end.169
  %89 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %89 to i64
  %arrayidx177 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom176
  %90 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %90 to i32
  %cmp179 = icmp eq i32 %conv178, 10
  br i1 %cmp179, label %if.then.187, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %lor.lhs.false.175
  %91 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %91 to i64
  %arrayidx183 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom182
  %92 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %92 to i32
  %cmp185 = icmp eq i32 %conv184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %lor.lhs.false.181, %lor.lhs.false.175, %for.end.169
  br label %while.cond

if.end.188:                                       ; preds = %lor.lhs.false.181
  %arraydecay189 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay190 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %call191 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32* %dc, i32* %oc, i8* %arraydecay190) #5
  store i32 %call191, i32* %count, align 4
  %93 = load i32, i32* %count, align 4
  %cmp192 = icmp slt i32 %93, 2
  br i1 %cmp192, label %if.then.194, label %if.end.199

if.then.194:                                      ; preds = %if.end.188
  %94 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1195 = bitcast %union.rec* %94 to %struct.word_type*
  %ou1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 1
  %ofpos197 = bitcast %union.FIRST_UNION* %ou1196 to %struct.FILE_POS*
  %call198 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos197)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.194, %if.end.188
  %95 = load i32, i32* %dc, align 4
  %96 = load i32, i32* %oc, align 4
  %cmp200 = icmp ne i32 %95, %96
  br i1 %cmp200, label %if.then.202, label %if.end.207

if.then.202:                                      ; preds = %if.end.199
  %97 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1203 = bitcast %union.rec* %97 to %struct.word_type*
  %ou1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 1
  %ofpos205 = bitcast %union.FIRST_UNION* %ou1204 to %struct.FILE_POS*
  %call206 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 5, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos205)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.202, %if.end.199
  %98 = load i32, i32* %dc, align 4
  %cmp208 = icmp slt i32 %98, 1
  br i1 %cmp208, label %land.lhs.true, label %if.end.219

land.lhs.true:                                    ; preds = %if.end.207
  %arraydecay210 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %call211 = call i32 @strcmp(i8* %arraydecay210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp212 = icmp eq i32 %call211, 0
  br i1 %cmp212, label %if.end.219, label %if.then.214

if.then.214:                                      ; preds = %land.lhs.true
  %99 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1215 = bitcast %union.rec* %99 to %struct.word_type*
  %ou1216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 1
  %ofpos217 = bitcast %union.FIRST_UNION* %ou1216 to %struct.FILE_POS*
  %100 = load i32, i32* %dc, align 4
  %101 = load i32, i32* %curr_line_num, align 4
  %call218 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos217, i32 %100, i32 %101)
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.214, %land.lhs.true, %if.end.207
  %102 = load i32, i32* %dc, align 4
  %103 = load i32, i32* %prev_code, align 4
  %cmp220 = icmp slt i32 %102, %103
  br i1 %cmp220, label %if.then.222, label %if.end.227

if.then.222:                                      ; preds = %if.end.219
  %104 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1223 = bitcast %union.rec* %104 to %struct.word_type*
  %ou1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 1
  %ofpos225 = bitcast %union.FIRST_UNION* %ou1224 to %struct.FILE_POS*
  %105 = load i32, i32* %dc, align 4
  %106 = load i32, i32* %curr_line_num, align 4
  %call226 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos225, i32 %105, i32 %106)
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.222, %if.end.219
  %107 = load i32, i32* %dc, align 4
  %108 = load i32, i32* %prev_code, align 4
  %cmp228 = icmp eq i32 %107, %108
  br i1 %cmp228, label %if.then.230, label %if.end.235

if.then.230:                                      ; preds = %if.end.227
  %109 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1231 = bitcast %union.rec* %109 to %struct.word_type*
  %ou1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1231, i32 0, i32 1
  %ofpos233 = bitcast %union.FIRST_UNION* %ou1232 to %struct.FILE_POS*
  %110 = load i32, i32* %dc, align 4
  %111 = load i32, i32* %curr_line_num, align 4
  %call234 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos233, i32 %110, i32 %111)
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.230, %if.end.227
  %112 = load i32, i32* %dc, align 4
  %cmp236 = icmp sgt i32 %112, 256
  br i1 %cmp236, label %if.then.238, label %if.end.243

if.then.238:                                      ; preds = %if.end.235
  %113 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1239 = bitcast %union.rec* %113 to %struct.word_type*
  %ou1240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1239, i32 0, i32 1
  %ofpos241 = bitcast %union.FIRST_UNION* %ou1240 to %struct.FILE_POS*
  %114 = load i32, i32* %dc, align 4
  %115 = load i32, i32* %curr_line_num, align 4
  %call242 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 9, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos241, i32 %114, i32 256, i32 %115)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.238, %if.end.235
  %116 = load i32, i32* %dc, align 4
  store i32 %116, i32* %prev_code, align 4
  %117 = load i32, i32* %count, align 4
  %cmp244 = icmp sge i32 %117, 3
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.266

land.lhs.true.246:                                ; preds = %if.end.243
  %arraydecay247 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %call248 = call i32 @strcmp(i8* %arraydecay247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp249 = icmp eq i32 %call248, 0
  br i1 %cmp249, label %if.end.266, label %if.then.251

if.then.251:                                      ; preds = %land.lhs.true.246
  %arraydecay252 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %118 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %call253 = call zeroext i8 @NameRetrieve(i8* %arraydecay252, %struct.mapvec* %118)
  store i8 %call253, i8* %ch, align 1
  %conv254 = zext i8 %call253 to i32
  %cmp255 = icmp ne i32 %conv254, 0
  br i1 %cmp255, label %if.then.257, label %if.else

if.then.257:                                      ; preds = %if.then.251
  %119 = load i8, i8* %ch, align 1
  %idxprom258 = zext i8 %119 to i64
  %120 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %vector259 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %120, i32 0, i32 5
  %arrayidx260 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %vector259, i32 0, i64 %idxprom258
  %121 = load %union.rec*, %union.rec** %arrayidx260, align 8
  %122 = load i32, i32* %dc, align 4
  %idxprom261 = sext i32 %122 to i64
  %123 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %vector262 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %123, i32 0, i32 5
  %arrayidx263 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %vector262, i32 0, i64 %idxprom261
  store %union.rec* %121, %union.rec** %arrayidx263, align 8
  br label %if.end.265

if.else:                                          ; preds = %if.then.251
  %arraydecay264 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %124 = load i32, i32* %dc, align 4
  %125 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  call void @NameInsert(i8* %arraydecay264, i32 %124, %struct.mapvec* %125)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else, %if.then.257
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %land.lhs.true.246, %if.end.243
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %126)
  store i32 0, i32* %curr_line_num, align 4
  br label %while.cond.267

while.cond.267:                                   ; preds = %while.end.378, %if.then.310, %while.end
  %arraydecay268 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call269 = call i8* @fgets(i8* %arraydecay268, i32 512, %struct._IO_FILE* %127)
  %arraydecay270 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %cmp271 = icmp eq i8* %call269, %arraydecay270
  br i1 %cmp271, label %while.body.273, label %while.end.379

while.body.273:                                   ; preds = %while.cond.267
  %128 = load i32, i32* %curr_line_num, align 4
  %inc274 = add nsw i32 %128, 1
  store i32 %inc274, i32* %curr_line_num, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.290, %while.body.273
  %129 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %129 to i64
  %arrayidx277 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom276
  %130 = load i8, i8* %arrayidx277, align 1
  %conv278 = zext i8 %130 to i32
  %cmp279 = icmp eq i32 %conv278, 32
  br i1 %cmp279, label %lor.end.287, label %lor.rhs.281

lor.rhs.281:                                      ; preds = %for.cond.275
  %131 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %131 to i64
  %arrayidx283 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom282
  %132 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %132 to i32
  %cmp285 = icmp eq i32 %conv284, 9
  br label %lor.end.287

lor.end.287:                                      ; preds = %lor.rhs.281, %for.cond.275
  %133 = phi i1 [ true, %for.cond.275 ], [ %cmp285, %lor.rhs.281 ]
  br i1 %133, label %for.body.289, label %for.end.292

for.body.289:                                     ; preds = %lor.end.287
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.body.289
  %134 = load i32, i32* %i, align 4
  %inc291 = add nsw i32 %134, 1
  store i32 %inc291, i32* %i, align 4
  br label %for.cond.275

for.end.292:                                      ; preds = %lor.end.287
  %135 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %135 to i64
  %arrayidx294 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom293
  %136 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %136 to i32
  %cmp296 = icmp eq i32 %conv295, 35
  br i1 %cmp296, label %if.then.310, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %for.end.292
  %137 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %137 to i64
  %arrayidx300 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom299
  %138 = load i8, i8* %arrayidx300, align 1
  %conv301 = zext i8 %138 to i32
  %cmp302 = icmp eq i32 %conv301, 10
  br i1 %cmp302, label %if.then.310, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %lor.lhs.false.298
  %139 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %139 to i64
  %arrayidx306 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom305
  %140 = load i8, i8* %arrayidx306, align 1
  %conv307 = zext i8 %140 to i32
  %cmp308 = icmp eq i32 %conv307, 0
  br i1 %cmp308, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %lor.lhs.false.304, %lor.lhs.false.298, %for.end.292
  br label %while.cond.267

if.end.311:                                       ; preds = %lor.lhs.false.304
  %arraydecay312 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay313 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %call314 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32* %dc, i32* %oc, i8* %arraydecay313, i32* %line_pos) #5
  store i32 %call314, i32* %count, align 4
  br label %while.cond.315

while.cond.315:                                   ; preds = %if.end.372, %if.end.311
  %141 = load i32, i32* %line_pos, align 4
  %idxprom316 = sext i32 %141 to i64
  %arrayidx317 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom316
  %arraydecay318 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %arraydecay319 = getelementptr inbounds [512 x i8], [512 x i8]* %mapval, i32 0, i32 0
  %call320 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx317, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay318, i8* %arraydecay319, i32* %i) #5
  %cmp321 = icmp eq i32 %call320, 2
  br i1 %cmp321, label %while.body.323, label %while.end.378

while.body.323:                                   ; preds = %while.cond.315
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %line_pos, align 4
  %add = add nsw i32 %143, %142
  store i32 %add, i32* %line_pos, align 4
  %arraydecay324 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %call325 = call i32 @strcmp(i8* %arraydecay324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #4
  %cmp326 = icmp eq i32 %call325, 0
  br i1 %cmp326, label %if.then.328, label %if.else.329

if.then.328:                                      ; preds = %while.body.323
  store i32 0, i32* %m, align 4
  br label %if.end.358

if.else.329:                                      ; preds = %while.body.323
  %arraydecay330 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %call331 = call i32 @strcmp(i8* %arraydecay330, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)) #4
  %cmp332 = icmp eq i32 %call331, 0
  br i1 %cmp332, label %if.then.334, label %if.else.335

if.then.334:                                      ; preds = %if.else.329
  store i32 1, i32* %m, align 4
  br label %if.end.357

if.else.335:                                      ; preds = %if.else.329
  %arraydecay336 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %call337 = call i32 @strcmp(i8* %arraydecay336, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #4
  %cmp338 = icmp eq i32 %call337, 0
  br i1 %cmp338, label %if.then.340, label %if.else.341

if.then.340:                                      ; preds = %if.else.335
  store i32 2, i32* %m, align 4
  br label %if.end.356

if.else.341:                                      ; preds = %if.else.335
  %arraydecay342 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %call343 = call i32 @strcmp(i8* %arraydecay342, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #4
  %cmp344 = icmp eq i32 %call343, 0
  br i1 %cmp344, label %if.then.346, label %if.else.347

if.then.346:                                      ; preds = %if.else.341
  store i32 3, i32* %m, align 4
  br label %if.end.355

if.else.347:                                      ; preds = %if.else.341
  %144 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1348 = bitcast %union.rec* %144 to %struct.word_type*
  %ou1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 1
  %ofpos350 = bitcast %union.FIRST_UNION* %ou1349 to %struct.FILE_POS*
  %arraydecay351 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %145 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %fnum352 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %145, i32 0, i32 1
  %146 = load i16, i16* %fnum352, align 2
  %call353 = call i8* @FileName(i16 zeroext %146)
  %147 = load i32, i32* %curr_line_num, align 4
  %call354 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos350, i8* %arraydecay351, i8* %call353, i32 %147)
  br label %if.end.355

if.end.355:                                       ; preds = %if.else.347, %if.then.346
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.340
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.then.334
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.then.328
  %arraydecay359 = getelementptr inbounds [512 x i8], [512 x i8]* %mapval, i32 0, i32 0
  %148 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %call360 = call zeroext i8 @NameRetrieve(i8* %arraydecay359, %struct.mapvec* %148)
  store i8 %call360, i8* %ch, align 1
  %149 = load i8, i8* %ch, align 1
  %conv361 = zext i8 %149 to i32
  %cmp362 = icmp eq i32 %conv361, 0
  br i1 %cmp362, label %if.then.364, label %if.end.372

if.then.364:                                      ; preds = %if.end.358
  %150 = load %union.rec*, %union.rec** %file_name.addr, align 8
  %os1365 = bitcast %union.rec* %150 to %struct.word_type*
  %ou1366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1365, i32 0, i32 1
  %ofpos367 = bitcast %union.FIRST_UNION* %ou1366 to %struct.FILE_POS*
  %arraydecay368 = getelementptr inbounds [512 x i8], [512 x i8]* %mapval, i32 0, i32 0
  %151 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %fnum369 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %151, i32 0, i32 1
  %152 = load i16, i16* %fnum369, align 2
  %call370 = call i8* @FileName(i16 zeroext %152)
  %153 = load i32, i32* %curr_line_num, align 4
  %call371 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos367, i8* %arraydecay368, i8* %call370, i32 %153)
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.364, %if.end.358
  %154 = load i8, i8* %ch, align 1
  %155 = load i32, i32* %dc, align 4
  %idxprom373 = sext i32 %155 to i64
  %156 = load i32, i32* %m, align 4
  %idxprom374 = sext i32 %156 to i64
  %157 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %map375 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %157, i32 0, i32 7
  %arrayidx376 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map375, i32 0, i64 %idxprom374
  %arrayidx377 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx376, i32 0, i64 %idxprom373
  store i8 %154, i8* %arrayidx377, align 1
  br label %while.cond.315

while.end.378:                                    ; preds = %while.cond.315
  br label %while.cond.267

while.end.379:                                    ; preds = %while.cond.267
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call380 = call i32 @fclose(%struct._IO_FILE* %158)
  %159 = load i32, i32* %res, align 4
  store i32 %159, i32* %retval
  br label %return

return:                                           ; preds = %while.end.379, %lor.end, %if.then
  %160 = load i32, i32* %retval
  ret i32 %160
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #2

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #2

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #2

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #2

declare i8* @FileName(i16 zeroext) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @StringInt(i32) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @NameRetrieve(i8* %cname, %struct.mapvec* %map) #0 {
entry:
  %retval = alloca i8, align 1
  %cname.addr = alloca i8*, align 8
  %map.addr = alloca %struct.mapvec*, align 8
  %pos = alloca i32, align 4
  %ch = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %cname, i8** %cname.addr, align 8
  store %struct.mapvec* %map, %struct.mapvec** %map.addr, align 8
  %0 = load i8*, i8** %cname.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 2, %conv
  store i32 %mul, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = zext i8 %6 to i32
  %7 = load i32, i32* %pos, align 4
  %add = add nsw i32 %7, %conv2
  store i32 %add, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %rem = srem i32 %8, 353
  store i32 %rem, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %9 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.mapvec*, %struct.mapvec** %map.addr, align 8
  %hash_table = getelementptr inbounds %struct.mapvec, %struct.mapvec* %10, i32 0, i32 6
  %arrayidx = getelementptr inbounds [353 x i8], [353 x i8]* %hash_table, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  store i8 %11, i8* %ch, align 1
  %conv3 = zext i8 %11 to i32
  %cmp = icmp ne i32 %conv3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8, i8* %ch, align 1
  %idxprom5 = zext i8 %12 to i64
  %13 = load %struct.mapvec*, %struct.mapvec** %map.addr, align 8
  %vector = getelementptr inbounds %struct.mapvec, %struct.mapvec* %13, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %vector, i32 0, i64 %idxprom5
  %14 = load %union.rec*, %union.rec** %arrayidx6, align 8
  %os1 = bitcast %union.rec* %14 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %15 = load i8*, i8** %cname.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay, i8* %15) #4
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %16 = load i8, i8* %ch, align 1
  store i8 %16, i8* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %17 = load i32, i32* %pos, align 4
  %add9 = add nsw i32 %17, 1
  %rem10 = srem i32 %add9, 353
  store i32 %rem10, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i8, i8* %ch, align 1
  store i8 %18, i8* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %19 = load i8, i8* %retval
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define internal void @NameInsert(i8* %cname, i32 %ccode, %struct.mapvec* %map) #0 {
entry:
  %cname.addr = alloca i8*, align 8
  %ccode.addr = alloca i32, align 4
  %map.addr = alloca %struct.mapvec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %cname, i8** %cname.addr, align 8
  store i32 %ccode, i32* %ccode.addr, align 4
  store %struct.mapvec* %map, %struct.mapvec** %map.addr, align 8
  %0 = load i8*, i8** %cname.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 2, %conv
  store i32 %mul, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = zext i8 %6 to i32
  %7 = load i32, i32* %pos, align 4
  %add = add nsw i32 %7, %conv2
  store i32 %add, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %rem = srem i32 %8, 353
  store i32 %rem, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.mapvec*, %struct.mapvec** %map.addr, align 8
  %hash_table = getelementptr inbounds %struct.mapvec, %struct.mapvec* %10, i32 0, i32 6
  %arrayidx = getelementptr inbounds [353 x i8], [353 x i8]* %hash_table, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %11 to i32
  %cmp = icmp ne i32 %conv3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %pos, align 4
  %add5 = add nsw i32 %12, 1
  %rem6 = srem i32 %add5, 353
  store i32 %rem6, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i8*, i8** %cname.addr, align 8
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call %union.rec* @MakeWord(i32 11, i8* %13, %struct.FILE_POS* %14)
  %15 = load i32, i32* %ccode.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.mapvec*, %struct.mapvec** %map.addr, align 8
  %vector = getelementptr inbounds %struct.mapvec, %struct.mapvec* %16, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %vector, i32 0, i64 %idxprom7
  store %union.rec* %call, %union.rec** %arrayidx8, align 8
  %17 = load i32, i32* %ccode.addr, align 4
  %conv9 = trunc i32 %17 to i8
  %18 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.mapvec*, %struct.mapvec** %map.addr, align 8
  %hash_table11 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %19, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [353 x i8], [353 x i8]* %hash_table11, i32 0, i64 %idxprom10
  store i8 %conv9, i8* %arrayidx12, align 1
  ret void
}

declare void @rewind(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define zeroext i8 @MapCharEncoding(i8* %str, i32 %m) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %1 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  store %struct.mapvec* %1, %struct.mapvec** %map, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %call = call zeroext i8 @NameRetrieve(i8* %2, %struct.mapvec* %3)
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define i8* @MapEncodingName(i32 %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* @maptop, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %m.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %4 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  %name = getelementptr inbounds %struct.mapvec, %struct.mapvec* %4, i32 0, i32 4
  %5 = load %union.rec*, %union.rec** %name, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: nounwind uwtable
define void @MapEnsurePrinted(i32 %m, i32 %curr_page) #0 {
entry:
  %m.addr = alloca i32, align 4
  %curr_page.addr = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %curr_page, i32* %curr_page.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %1 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  store %struct.mapvec* %1, %struct.mapvec** %map, align 8
  %2 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %seen_recoded = getelementptr inbounds %struct.mapvec, %struct.mapvec* %2, i32 0, i32 2
  %3 = load i32, i32* %seen_recoded, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %last_page_printed = getelementptr inbounds %struct.mapvec, %struct.mapvec* %5, i32 0, i32 3
  %6 = load i32, i32* %last_page_printed, align 4
  %7 = load i32, i32* %curr_page.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %last_page_printed1 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %8, i32 0, i32 3
  %9 = load i32, i32* %last_page_printed1, align 4
  %cmp2 = icmp ne i32 %9, 1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %curr_page.addr, align 4
  %11 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %last_page_printed4 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %11, i32 0, i32 3
  store i32 %10, i32* %last_page_printed4, align 4
  %12 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintMapping = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %12, i32 0, i32 14
  %13 = load void (i32)*, void (i32)** %PrintMapping, align 8
  %14 = load i32, i32* %m.addr, align 4
  call void %13(i32 %14)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @MapPrintEncodings() #0 {
entry:
  %m = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store i32 1, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* @maptop, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %m, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %3 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  %seen_recoded = getelementptr inbounds %struct.mapvec, %struct.mapvec* %3, i32 0, i32 2
  %4 = load i32, i32* %seen_recoded, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintMapping = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %5, i32 0, i32 14
  %6 = load void (i32)*, void (i32)** %PrintMapping, align 8
  %7 = load i32, i32* %m, align 4
  call void %6(i32 %7)
  %8 = load i32, i32* %m, align 4
  %idxprom1 = zext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom1
  %9 = load %struct.mapvec*, %struct.mapvec** %arrayidx2, align 8
  store %struct.mapvec* %9, %struct.mapvec** %map, align 8
  %10 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %last_page_printed = getelementptr inbounds %struct.mapvec, %struct.mapvec* %10, i32 0, i32 3
  store i32 1, i32* %last_page_printed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %m, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MapPrintPSResources(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %m = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 1, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* @maptop, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %m, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %3 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  %seen_recoded = getelementptr inbounds %struct.mapvec, %struct.mapvec* %3, i32 0, i32 2
  %4 = load i32, i32* %seen_recoded, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %m, align 4
  %idxprom1 = zext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom1
  %6 = load %struct.mapvec*, %struct.mapvec** %arrayidx2, align 8
  store %struct.mapvec* %6, %struct.mapvec** %map, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %name = getelementptr inbounds %struct.mapvec, %struct.mapvec* %8, i32 0, i32 4
  %9 = load %union.rec*, %union.rec** %name, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %m, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define %union.rec* @MapSmallCaps(%union.rec* %x, %struct.STYLE* %style) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %x.addr = alloca %union.rec*, align 8
  %style.addr = alloca %struct.STYLE*, align 8
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %new_y = alloca %union.rec*, align 8
  %new_x = alloca %union.rec*, align 8
  %new_acat = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %uc = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %small_font = alloca i32, align 4
  %vshift = alloca i32, align 4
  %state = alloca i32, align 4
  %new_style = alloca %struct.STYLE, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os110 = bitcast %union.rec* %2 to %struct.word_type*
  %ou111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %os1112 = bitcast %union.FIRST_UNION* %ou111 to %struct.anon*
  %otype13 = getelementptr inbounds %struct.anon, %struct.anon* %os1112, i32 0, i32 0
  %3 = load i8, i8* %otype13, align 1
  %conv14 = zext i8 %3 to i32
  %cmp15 = icmp eq i32 %conv14, 12
  br i1 %cmp15, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %5 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 2
  %os25 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.4*
  %6 = bitcast %struct.anon.4* %os25 to i16*
  %bf.load = load i16, i16* %6, align 4
  %bf.clear = and i16 %bf.load, 4095
  %bf.cast = zext i16 %bf.clear to i32
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os118 = bitcast %union.rec* %7 to %struct.word_type*
  %ou119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou119 to %struct.FILE_POS*
  %call20 = call i32 @FontMapping(i32 %bf.cast, %struct.FILE_POS* %ofpos)
  store i32 %call20, i32* %m, align 4
  %8 = load i32, i32* %m, align 4
  %cmp21 = icmp eq i32 %8, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %9, %union.rec** %retval
  br label %return

if.end.24:                                        ; preds = %if.end
  %10 = load i32, i32* %m, align 4
  %cmp25 = icmp ule i32 1, %10
  br i1 %cmp25, label %land.lhs.true, label %if.then.29

land.lhs.true:                                    ; preds = %if.end.24
  %11 = load i32, i32* %m, align 4
  %12 = load i32, i32* @maptop, align 4
  %cmp27 = icmp ult i32 %11, %12
  br i1 %cmp27, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true, %if.end.24
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true
  %14 = load i32, i32* %m, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %15 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  %map = getelementptr inbounds %struct.mapvec, %struct.mapvec* %15, i32 0, i32 7
  %arrayidx32 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map, i32 0, i64 0
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx32, i32 0, i32 0
  store i8* %arraydecay, i8** %uc, align 8
  %16 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %16, i32 0, i32 2
  %17 = load i32, i32* %scale_avail, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.61, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %18 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %18 to i64
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os135 = bitcast %union.rec* %19 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 %idxprom34
  %20 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %20 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %21 to i64
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os141 = bitcast %union.rec* %22 to %struct.word_type*
  %ostring42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring42, i32 0, i64 %idxprom40
  %23 = load i8, i8* %arrayidx43, align 1
  %idxprom44 = zext i8 %23 to i64
  %24 = load i8*, i8** %uc, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %24, i64 %idxprom44
  %25 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %25 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.60

if.then.49:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %26 to i64
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %os151 = bitcast %union.rec* %27 to %struct.word_type*
  %ostring52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 4
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring52, i32 0, i64 %idxprom50
  %28 = load i8, i8* %arrayidx53, align 1
  %idxprom54 = zext i8 %28 to i64
  %29 = load i8*, i8** %uc, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %29, i64 %idxprom54
  %30 = load i8, i8* %arrayidx55, align 1
  %31 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %31 to i64
  %32 = load %union.rec*, %union.rec** %x.addr, align 8
  %os157 = bitcast %union.rec* %32 to %struct.word_type*
  %ostring58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 4
  %arrayidx59 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring58, i32 0, i64 %idxprom56
  store i8 %30, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %34, %union.rec** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.31
  %35 = load %union.rec*, %union.rec** @MapSmallCaps.font_change_word, align 8
  %cmp62 = icmp eq %union.rec* %35, null
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.61
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call65 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct.FILE_POS* %36)
  store %union.rec* %call65, %union.rec** @MapSmallCaps.font_change_word, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.61
  store i32 0, i32* %state, align 4
  %arraydecay67 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay67, i8** %q, align 8
  %37 = load %union.rec*, %union.rec** %x.addr, align 8
  %os168 = bitcast %union.rec* %37 to %struct.word_type*
  %ostring69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 4
  %arraydecay70 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring69, i32 0, i32 0
  store i8* %arraydecay70, i8** %p, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.1859, %if.end.66
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv72 = zext i8 %39 to i32
  %cmp73 = icmp ne i32 %conv72, 0
  br i1 %cmp73, label %for.body.75, label %for.end.1861

for.body.75:                                      ; preds = %for.cond.71
  %40 = load i32, i32* %state, align 4
  switch i32 %40, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.394
    i32 2, label %sw.bb.1145
    i32 3, label %sw.bb.1572
    i32 4, label %sw.bb.1717
  ]

sw.bb:                                            ; preds = %for.body.75
  %41 = load i8*, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  %idxprom76 = zext i8 %42 to i64
  %43 = load i8*, i8** %uc, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %43, i64 %idxprom76
  %44 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %44 to i32
  %cmp79 = icmp ne i32 %conv78, 0
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %sw.bb
  %45 = load i8*, i8** %p, align 8
  %46 = load i8, i8* %45, align 1
  %idxprom82 = zext i8 %46 to i64
  %47 = load i8*, i8** %uc, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %47, i64 %idxprom82
  %48 = load i8, i8* %arrayidx83, align 1
  %49 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 %48, i8* %49, align 1
  %50 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %50, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %51 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load84 = load i16, i16* %51, align 4
  %bf.lshr = lshr i16 %bf.load84, 7
  %bf.clear85 = and i16 %bf.lshr, 1
  %bf.cast86 = zext i16 %bf.clear85 to i32
  %osu187 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap88 = bitcast %union.anon* %osu187 to %struct.GAP*
  %52 = bitcast %struct.GAP* %oline_gap88 to i16*
  %53 = trunc i32 %bf.cast86 to i16
  %bf.load89 = load i16, i16* %52, align 4
  %bf.value = and i16 %53, 1
  %bf.shl = shl i16 %bf.value, 7
  %bf.clear90 = and i16 %bf.load89, -129
  %bf.set = or i16 %bf.clear90, %bf.shl
  store i16 %bf.set, i16* %52, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %54 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu191 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %54, i32 0, i32 0
  %oline_gap92 = bitcast %union.anon* %osu191 to %struct.GAP*
  %55 = bitcast %struct.GAP* %oline_gap92 to i16*
  %bf.load93 = load i16, i16* %55, align 4
  %bf.lshr94 = lshr i16 %bf.load93, 8
  %bf.clear95 = and i16 %bf.lshr94, 1
  %bf.cast96 = zext i16 %bf.clear95 to i32
  %osu197 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap98 = bitcast %union.anon* %osu197 to %struct.GAP*
  %56 = bitcast %struct.GAP* %oline_gap98 to i16*
  %57 = trunc i32 %bf.cast96 to i16
  %bf.load99 = load i16, i16* %56, align 4
  %bf.value100 = and i16 %57, 1
  %bf.shl101 = shl i16 %bf.value100, 8
  %bf.clear102 = and i16 %bf.load99, -257
  %bf.set103 = or i16 %bf.clear102, %bf.shl101
  store i16 %bf.set103, i16* %56, align 4
  %bf.result.cast104 = zext i16 %bf.value100 to i32
  %58 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1105 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %58, i32 0, i32 0
  %oline_gap106 = bitcast %union.anon* %osu1105 to %struct.GAP*
  %59 = bitcast %struct.GAP* %oline_gap106 to i16*
  %bf.load107 = load i16, i16* %59, align 4
  %bf.lshr108 = lshr i16 %bf.load107, 9
  %bf.clear109 = and i16 %bf.lshr108, 1
  %bf.cast110 = zext i16 %bf.clear109 to i32
  %osu1111 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap112 = bitcast %union.anon* %osu1111 to %struct.GAP*
  %60 = bitcast %struct.GAP* %oline_gap112 to i16*
  %61 = trunc i32 %bf.cast110 to i16
  %bf.load113 = load i16, i16* %60, align 4
  %bf.value114 = and i16 %61, 1
  %bf.shl115 = shl i16 %bf.value114, 9
  %bf.clear116 = and i16 %bf.load113, -513
  %bf.set117 = or i16 %bf.clear116, %bf.shl115
  store i16 %bf.set117, i16* %60, align 4
  %bf.result.cast118 = zext i16 %bf.value114 to i32
  %62 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1119 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %62, i32 0, i32 0
  %oline_gap120 = bitcast %union.anon* %osu1119 to %struct.GAP*
  %63 = bitcast %struct.GAP* %oline_gap120 to i16*
  %bf.load121 = load i16, i16* %63, align 4
  %bf.lshr122 = lshr i16 %bf.load121, 10
  %bf.clear123 = and i16 %bf.lshr122, 7
  %bf.cast124 = zext i16 %bf.clear123 to i32
  %osu1125 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap126 = bitcast %union.anon* %osu1125 to %struct.GAP*
  %64 = bitcast %struct.GAP* %oline_gap126 to i16*
  %65 = trunc i32 %bf.cast124 to i16
  %bf.load127 = load i16, i16* %64, align 4
  %bf.value128 = and i16 %65, 7
  %bf.shl129 = shl i16 %bf.value128, 10
  %bf.clear130 = and i16 %bf.load127, -7169
  %bf.set131 = or i16 %bf.clear130, %bf.shl129
  store i16 %bf.set131, i16* %64, align 4
  %bf.result.cast132 = zext i16 %bf.value128 to i32
  %66 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1133 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %66, i32 0, i32 0
  %oline_gap134 = bitcast %union.anon* %osu1133 to %struct.GAP*
  %67 = bitcast %struct.GAP* %oline_gap134 to i16*
  %bf.load135 = load i16, i16* %67, align 4
  %bf.lshr136 = lshr i16 %bf.load135, 13
  %bf.cast137 = zext i16 %bf.lshr136 to i32
  %osu1138 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap139 = bitcast %union.anon* %osu1138 to %struct.GAP*
  %68 = bitcast %struct.GAP* %oline_gap139 to i16*
  %69 = trunc i32 %bf.cast137 to i16
  %bf.load140 = load i16, i16* %68, align 4
  %bf.value141 = and i16 %69, 7
  %bf.shl142 = shl i16 %bf.value141, 13
  %bf.clear143 = and i16 %bf.load140, 8191
  %bf.set144 = or i16 %bf.clear143, %bf.shl142
  store i16 %bf.set144, i16* %68, align 4
  %bf.result.cast145 = zext i16 %bf.value141 to i32
  %70 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1146 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %70, i32 0, i32 0
  %oline_gap147 = bitcast %union.anon* %osu1146 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap147, i32 0, i32 1
  %71 = load i16, i16* %owidth, align 2
  %osu1148 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap149 = bitcast %union.anon* %osu1148 to %struct.GAP*
  %owidth150 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap149, i32 0, i32 1
  store i16 %71, i16* %owidth150, align 2
  %72 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %72, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %73 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load151 = load i8, i8* %73, align 4
  %bf.clear152 = and i8 %bf.load151, 3
  %bf.cast153 = zext i8 %bf.clear152 to i32
  %osu2154 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %oss2155 = bitcast %union.anon.10* %osu2154 to %struct.anon.11*
  %74 = bitcast %struct.anon.11* %oss2155 to i8*
  %75 = trunc i32 %bf.cast153 to i8
  %bf.load156 = load i8, i8* %74, align 4
  %bf.value157 = and i8 %75, 3
  %bf.clear158 = and i8 %bf.load156, -4
  %bf.set159 = or i8 %bf.clear158, %bf.value157
  store i8 %bf.set159, i8* %74, align 4
  %bf.result.cast160 = zext i8 %bf.value157 to i32
  %76 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2161 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %76, i32 0, i32 1
  %oss2162 = bitcast %union.anon.10* %osu2161 to %struct.anon.11*
  %77 = bitcast %struct.anon.11* %oss2162 to i8*
  %bf.load163 = load i8, i8* %77, align 4
  %bf.lshr164 = lshr i8 %bf.load163, 2
  %bf.clear165 = and i8 %bf.lshr164, 3
  %bf.cast166 = zext i8 %bf.clear165 to i32
  %osu2167 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %oss2168 = bitcast %union.anon.10* %osu2167 to %struct.anon.11*
  %78 = bitcast %struct.anon.11* %oss2168 to i8*
  %79 = trunc i32 %bf.cast166 to i8
  %bf.load169 = load i8, i8* %78, align 4
  %bf.value170 = and i8 %79, 3
  %bf.shl171 = shl i8 %bf.value170, 2
  %bf.clear172 = and i8 %bf.load169, -13
  %bf.set173 = or i8 %bf.clear172, %bf.shl171
  store i8 %bf.set173, i8* %78, align 4
  %bf.result.cast174 = zext i8 %bf.value170 to i32
  %80 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2175 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %80, i32 0, i32 1
  %oss2176 = bitcast %union.anon.10* %osu2175 to %struct.anon.11*
  %81 = bitcast %struct.anon.11* %oss2176 to i8*
  %bf.load177 = load i8, i8* %81, align 4
  %bf.lshr178 = lshr i8 %bf.load177, 4
  %bf.clear179 = and i8 %bf.lshr178, 7
  %bf.cast180 = zext i8 %bf.clear179 to i32
  %osu2181 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %oss2182 = bitcast %union.anon.10* %osu2181 to %struct.anon.11*
  %82 = bitcast %struct.anon.11* %oss2182 to i8*
  %83 = trunc i32 %bf.cast180 to i8
  %bf.load183 = load i8, i8* %82, align 4
  %bf.value184 = and i8 %83, 7
  %bf.shl185 = shl i8 %bf.value184, 4
  %bf.clear186 = and i8 %bf.load183, -113
  %bf.set187 = or i8 %bf.clear186, %bf.shl185
  store i8 %bf.set187, i8* %82, align 4
  %bf.result.cast188 = zext i8 %bf.value184 to i32
  %84 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1189 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %84, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu1189 to %struct.anon.9*
  %85 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load190 = load i8, i8* %85, align 4
  %bf.lshr191 = lshr i8 %bf.load190, 3
  %bf.clear192 = and i8 %bf.lshr191, 1
  %bf.cast193 = zext i8 %bf.clear192 to i32
  %osu1194 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1195 = bitcast %union.anon* %osu1194 to %struct.anon.9*
  %86 = bitcast %struct.anon.9* %oss1195 to i8*
  %87 = trunc i32 %bf.cast193 to i8
  %bf.load196 = load i8, i8* %86, align 4
  %bf.value197 = and i8 %87, 1
  %bf.shl198 = shl i8 %bf.value197, 3
  %bf.clear199 = and i8 %bf.load196, -9
  %bf.set200 = or i8 %bf.clear199, %bf.shl198
  store i8 %bf.set200, i8* %86, align 4
  %bf.result.cast201 = zext i8 %bf.value197 to i32
  %88 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2202 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %88, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2202 to %struct.GAP*
  %89 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load203 = load i16, i16* %89, align 4
  %bf.lshr204 = lshr i16 %bf.load203, 7
  %bf.clear205 = and i16 %bf.lshr204, 1
  %bf.cast206 = zext i16 %bf.clear205 to i32
  %osu2207 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap208 = bitcast %union.anon.10* %osu2207 to %struct.GAP*
  %90 = bitcast %struct.GAP* %ospace_gap208 to i16*
  %91 = trunc i32 %bf.cast206 to i16
  %bf.load209 = load i16, i16* %90, align 4
  %bf.value210 = and i16 %91, 1
  %bf.shl211 = shl i16 %bf.value210, 7
  %bf.clear212 = and i16 %bf.load209, -129
  %bf.set213 = or i16 %bf.clear212, %bf.shl211
  store i16 %bf.set213, i16* %90, align 4
  %bf.result.cast214 = zext i16 %bf.value210 to i32
  %92 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2215 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %92, i32 0, i32 1
  %ospace_gap216 = bitcast %union.anon.10* %osu2215 to %struct.GAP*
  %93 = bitcast %struct.GAP* %ospace_gap216 to i16*
  %bf.load217 = load i16, i16* %93, align 4
  %bf.lshr218 = lshr i16 %bf.load217, 8
  %bf.clear219 = and i16 %bf.lshr218, 1
  %bf.cast220 = zext i16 %bf.clear219 to i32
  %osu2221 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap222 = bitcast %union.anon.10* %osu2221 to %struct.GAP*
  %94 = bitcast %struct.GAP* %ospace_gap222 to i16*
  %95 = trunc i32 %bf.cast220 to i16
  %bf.load223 = load i16, i16* %94, align 4
  %bf.value224 = and i16 %95, 1
  %bf.shl225 = shl i16 %bf.value224, 8
  %bf.clear226 = and i16 %bf.load223, -257
  %bf.set227 = or i16 %bf.clear226, %bf.shl225
  store i16 %bf.set227, i16* %94, align 4
  %bf.result.cast228 = zext i16 %bf.value224 to i32
  %96 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2229 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %96, i32 0, i32 1
  %ospace_gap230 = bitcast %union.anon.10* %osu2229 to %struct.GAP*
  %97 = bitcast %struct.GAP* %ospace_gap230 to i16*
  %bf.load231 = load i16, i16* %97, align 4
  %bf.lshr232 = lshr i16 %bf.load231, 9
  %bf.clear233 = and i16 %bf.lshr232, 1
  %bf.cast234 = zext i16 %bf.clear233 to i32
  %osu2235 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap236 = bitcast %union.anon.10* %osu2235 to %struct.GAP*
  %98 = bitcast %struct.GAP* %ospace_gap236 to i16*
  %99 = trunc i32 %bf.cast234 to i16
  %bf.load237 = load i16, i16* %98, align 4
  %bf.value238 = and i16 %99, 1
  %bf.shl239 = shl i16 %bf.value238, 9
  %bf.clear240 = and i16 %bf.load237, -513
  %bf.set241 = or i16 %bf.clear240, %bf.shl239
  store i16 %bf.set241, i16* %98, align 4
  %bf.result.cast242 = zext i16 %bf.value238 to i32
  %100 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2243 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %100, i32 0, i32 1
  %ospace_gap244 = bitcast %union.anon.10* %osu2243 to %struct.GAP*
  %101 = bitcast %struct.GAP* %ospace_gap244 to i16*
  %bf.load245 = load i16, i16* %101, align 4
  %bf.lshr246 = lshr i16 %bf.load245, 10
  %bf.clear247 = and i16 %bf.lshr246, 7
  %bf.cast248 = zext i16 %bf.clear247 to i32
  %osu2249 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap250 = bitcast %union.anon.10* %osu2249 to %struct.GAP*
  %102 = bitcast %struct.GAP* %ospace_gap250 to i16*
  %103 = trunc i32 %bf.cast248 to i16
  %bf.load251 = load i16, i16* %102, align 4
  %bf.value252 = and i16 %103, 7
  %bf.shl253 = shl i16 %bf.value252, 10
  %bf.clear254 = and i16 %bf.load251, -7169
  %bf.set255 = or i16 %bf.clear254, %bf.shl253
  store i16 %bf.set255, i16* %102, align 4
  %bf.result.cast256 = zext i16 %bf.value252 to i32
  %104 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2257 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %104, i32 0, i32 1
  %ospace_gap258 = bitcast %union.anon.10* %osu2257 to %struct.GAP*
  %105 = bitcast %struct.GAP* %ospace_gap258 to i16*
  %bf.load259 = load i16, i16* %105, align 4
  %bf.lshr260 = lshr i16 %bf.load259, 13
  %bf.cast261 = zext i16 %bf.lshr260 to i32
  %osu2262 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap263 = bitcast %union.anon.10* %osu2262 to %struct.GAP*
  %106 = bitcast %struct.GAP* %ospace_gap263 to i16*
  %107 = trunc i32 %bf.cast261 to i16
  %bf.load264 = load i16, i16* %106, align 4
  %bf.value265 = and i16 %107, 7
  %bf.shl266 = shl i16 %bf.value265, 13
  %bf.clear267 = and i16 %bf.load264, 8191
  %bf.set268 = or i16 %bf.clear267, %bf.shl266
  store i16 %bf.set268, i16* %106, align 4
  %bf.result.cast269 = zext i16 %bf.value265 to i32
  %108 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2270 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %108, i32 0, i32 1
  %ospace_gap271 = bitcast %union.anon.10* %osu2270 to %struct.GAP*
  %owidth272 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap271, i32 0, i32 1
  %109 = load i16, i16* %owidth272, align 2
  %osu2273 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap274 = bitcast %union.anon.10* %osu2273 to %struct.GAP*
  %owidth275 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap274, i32 0, i32 1
  store i16 %109, i16* %owidth275, align 2
  %110 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %110, i32 0, i32 4
  %bf.load276 = load i32, i32* %ofont, align 4
  %bf.clear277 = and i32 %bf.load276, 4095
  %ofont278 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load279 = load i32, i32* %ofont278, align 4
  %bf.value280 = and i32 %bf.clear277, 4095
  %bf.clear281 = and i32 %bf.load279, -4096
  %bf.set282 = or i32 %bf.clear281, %bf.value280
  store i32 %bf.set282, i32* %ofont278, align 4
  %111 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %111, i32 0, i32 4
  %bf.load283 = load i32, i32* %ocolour, align 4
  %bf.lshr284 = lshr i32 %bf.load283, 12
  %bf.clear285 = and i32 %bf.lshr284, 1023
  %ocolour286 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load287 = load i32, i32* %ocolour286, align 4
  %bf.value288 = and i32 %bf.clear285, 1023
  %bf.shl289 = shl i32 %bf.value288, 12
  %bf.clear290 = and i32 %bf.load287, -4190209
  %bf.set291 = or i32 %bf.clear290, %bf.shl289
  store i32 %bf.set291, i32* %ocolour286, align 4
  %112 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ooutline = getelementptr inbounds %struct.STYLE, %struct.STYLE* %112, i32 0, i32 4
  %bf.load292 = load i32, i32* %ooutline, align 4
  %bf.lshr293 = lshr i32 %bf.load292, 22
  %bf.clear294 = and i32 %bf.lshr293, 3
  %ooutline295 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load296 = load i32, i32* %ooutline295, align 4
  %bf.value297 = and i32 %bf.clear294, 3
  %bf.shl298 = shl i32 %bf.value297, 22
  %bf.clear299 = and i32 %bf.load296, -12582913
  %bf.set300 = or i32 %bf.clear299, %bf.shl298
  store i32 %bf.set300, i32* %ooutline295, align 4
  %113 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %olanguage = getelementptr inbounds %struct.STYLE, %struct.STYLE* %113, i32 0, i32 4
  %bf.load301 = load i32, i32* %olanguage, align 4
  %bf.lshr302 = lshr i32 %bf.load301, 24
  %bf.clear303 = and i32 %bf.lshr302, 63
  %olanguage304 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load305 = load i32, i32* %olanguage304, align 4
  %bf.value306 = and i32 %bf.clear303, 63
  %bf.shl307 = shl i32 %bf.value306, 24
  %bf.clear308 = and i32 %bf.load305, -1056964609
  %bf.set309 = or i32 %bf.clear308, %bf.shl307
  store i32 %bf.set309, i32* %olanguage304, align 4
  %114 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreaklast = getelementptr inbounds %struct.STYLE, %struct.STYLE* %114, i32 0, i32 4
  %bf.load310 = load i32, i32* %onobreaklast, align 4
  %bf.lshr311 = lshr i32 %bf.load310, 31
  %onobreaklast312 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load313 = load i32, i32* %onobreaklast312, align 4
  %bf.value314 = and i32 %bf.lshr311, 1
  %bf.shl315 = shl i32 %bf.value314, 31
  %bf.clear316 = and i32 %bf.load313, 2147483647
  %bf.set317 = or i32 %bf.clear316, %bf.shl315
  store i32 %bf.set317, i32* %onobreaklast312, align 4
  %115 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreakfirst = getelementptr inbounds %struct.STYLE, %struct.STYLE* %115, i32 0, i32 4
  %bf.load318 = load i32, i32* %onobreakfirst, align 4
  %bf.lshr319 = lshr i32 %bf.load318, 30
  %bf.clear320 = and i32 %bf.lshr319, 1
  %onobreakfirst321 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load322 = load i32, i32* %onobreakfirst321, align 4
  %bf.value323 = and i32 %bf.clear320, 1
  %bf.shl324 = shl i32 %bf.value323, 30
  %bf.clear325 = and i32 %bf.load322, -1073741825
  %bf.set326 = or i32 %bf.clear325, %bf.shl324
  store i32 %bf.set326, i32* %onobreakfirst321, align 4
  %116 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1327 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %116, i32 0, i32 0
  %oss1328 = bitcast %union.anon* %osu1327 to %struct.anon.9*
  %117 = bitcast %struct.anon.9* %oss1328 to i8*
  %bf.load329 = load i8, i8* %117, align 4
  %bf.clear330 = and i8 %bf.load329, 1
  %bf.cast331 = zext i8 %bf.clear330 to i32
  %osu1332 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1333 = bitcast %union.anon* %osu1332 to %struct.anon.9*
  %118 = bitcast %struct.anon.9* %oss1333 to i8*
  %119 = trunc i32 %bf.cast331 to i8
  %bf.load334 = load i8, i8* %118, align 4
  %bf.value335 = and i8 %119, 1
  %bf.clear336 = and i8 %bf.load334, -2
  %bf.set337 = or i8 %bf.clear336, %bf.value335
  store i8 %bf.set337, i8* %118, align 4
  %bf.result.cast338 = zext i8 %bf.value335 to i32
  %120 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1339 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %120, i32 0, i32 0
  %oss1340 = bitcast %union.anon* %osu1339 to %struct.anon.9*
  %121 = bitcast %struct.anon.9* %oss1340 to i8*
  %bf.load341 = load i8, i8* %121, align 4
  %bf.lshr342 = lshr i8 %bf.load341, 1
  %bf.clear343 = and i8 %bf.lshr342, 1
  %bf.cast344 = zext i8 %bf.clear343 to i32
  %osu1345 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1346 = bitcast %union.anon* %osu1345 to %struct.anon.9*
  %122 = bitcast %struct.anon.9* %oss1346 to i8*
  %123 = trunc i32 %bf.cast344 to i8
  %bf.load347 = load i8, i8* %122, align 4
  %bf.value348 = and i8 %123, 1
  %bf.shl349 = shl i8 %bf.value348, 1
  %bf.clear350 = and i8 %bf.load347, -3
  %bf.set351 = or i8 %bf.clear350, %bf.shl349
  store i8 %bf.set351, i8* %122, align 4
  %bf.result.cast352 = zext i8 %bf.value348 to i32
  %124 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1353 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %124, i32 0, i32 0
  %oss1354 = bitcast %union.anon* %osu1353 to %struct.anon.9*
  %125 = bitcast %struct.anon.9* %oss1354 to i8*
  %bf.load355 = load i8, i8* %125, align 4
  %bf.lshr356 = lshr i8 %bf.load355, 2
  %bf.clear357 = and i8 %bf.lshr356, 1
  %bf.cast358 = zext i8 %bf.clear357 to i32
  %osu1359 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1360 = bitcast %union.anon* %osu1359 to %struct.anon.9*
  %126 = bitcast %struct.anon.9* %oss1360 to i8*
  %127 = trunc i32 %bf.cast358 to i8
  %bf.load361 = load i8, i8* %126, align 4
  %bf.value362 = and i8 %127, 1
  %bf.shl363 = shl i8 %bf.value362, 2
  %bf.clear364 = and i8 %bf.load361, -5
  %bf.set365 = or i8 %bf.clear364, %bf.shl363
  store i8 %bf.set365, i8* %126, align 4
  %bf.result.cast366 = zext i8 %bf.value362 to i32
  %128 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1367 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %128, i32 0, i32 0
  %oss1368 = bitcast %union.anon* %osu1367 to %struct.anon.9*
  %129 = bitcast %struct.anon.9* %oss1368 to i8*
  %bf.load369 = load i8, i8* %129, align 4
  %bf.lshr370 = lshr i8 %bf.load369, 4
  %bf.clear371 = and i8 %bf.lshr370, 7
  %bf.cast372 = zext i8 %bf.clear371 to i32
  %osu1373 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1374 = bitcast %union.anon* %osu1373 to %struct.anon.9*
  %130 = bitcast %struct.anon.9* %oss1374 to i8*
  %131 = trunc i32 %bf.cast372 to i8
  %bf.load375 = load i8, i8* %130, align 4
  %bf.value376 = and i8 %131, 7
  %bf.shl377 = shl i8 %bf.value376, 4
  %bf.clear378 = and i8 %bf.load375, -113
  %bf.set379 = or i8 %bf.clear378, %bf.shl377
  store i8 %bf.set379, i8* %130, align 4
  %bf.result.cast380 = zext i8 %bf.value376 to i32
  %132 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %132, i32 0, i32 2
  %133 = load i16, i16* %oyunit, align 2
  %oyunit381 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 2
  store i16 %133, i16* %oyunit381, align 2
  %134 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %134, i32 0, i32 3
  %135 = load i16, i16* %ozunit, align 2
  %ozunit382 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 3
  store i16 %135, i16* %ozunit382, align 2
  %136 = load %union.rec*, %union.rec** @MapSmallCaps.font_change_word, align 8
  call void @FontChange(%struct.STYLE* %new_style, %union.rec* %136)
  %ofont383 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load384 = load i32, i32* %ofont383, align 4
  %bf.clear385 = and i32 %bf.load384, 4095
  store i32 %bf.clear385, i32* %small_font, align 4
  %137 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1386 = bitcast %union.rec* %137 to %struct.word_type*
  %ou2387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1386, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2387 to %struct.anon.1*
  %138 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load388 = load i32, i32* %138, align 4
  %bf.clear389 = and i32 %bf.load388, 4095
  %call390 = call i32 @FontHalfXHeight(i32 %bf.clear389)
  %139 = load i32, i32* %small_font, align 4
  %call391 = call i32 @FontHalfXHeight(i32 %139)
  %sub = sub nsw i32 %call390, %call391
  store i32 %sub, i32* %vshift, align 4
  store i32 2, i32* %state, align 4
  br label %if.end.393

if.else:                                          ; preds = %sw.bb
  %140 = load i8*, i8** %p, align 8
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %q, align 8
  %incdec.ptr392 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr392, i8** %q, align 8
  store i8 %141, i8* %142, align 1
  store i32 1, i32* %state, align 4
  br label %if.end.393

if.end.393:                                       ; preds = %if.else, %if.then.81
  br label %sw.epilog

sw.bb.394:                                        ; preds = %for.body.75
  %143 = load i8*, i8** %p, align 8
  %144 = load i8, i8* %143, align 1
  %idxprom395 = zext i8 %144 to i64
  %145 = load i8*, i8** %uc, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %145, i64 %idxprom395
  %146 = load i8, i8* %arrayidx396, align 1
  %conv397 = zext i8 %146 to i32
  %cmp398 = icmp ne i32 %conv397, 0
  br i1 %cmp398, label %if.then.400, label %if.else.1142

if.then.400:                                      ; preds = %sw.bb.394
  %147 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1401 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %147, i32 0, i32 0
  %oline_gap402 = bitcast %union.anon* %osu1401 to %struct.GAP*
  %148 = bitcast %struct.GAP* %oline_gap402 to i16*
  %bf.load403 = load i16, i16* %148, align 4
  %bf.lshr404 = lshr i16 %bf.load403, 7
  %bf.clear405 = and i16 %bf.lshr404, 1
  %bf.cast406 = zext i16 %bf.clear405 to i32
  %osu1407 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap408 = bitcast %union.anon* %osu1407 to %struct.GAP*
  %149 = bitcast %struct.GAP* %oline_gap408 to i16*
  %150 = trunc i32 %bf.cast406 to i16
  %bf.load409 = load i16, i16* %149, align 4
  %bf.value410 = and i16 %150, 1
  %bf.shl411 = shl i16 %bf.value410, 7
  %bf.clear412 = and i16 %bf.load409, -129
  %bf.set413 = or i16 %bf.clear412, %bf.shl411
  store i16 %bf.set413, i16* %149, align 4
  %bf.result.cast414 = zext i16 %bf.value410 to i32
  %151 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1415 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %151, i32 0, i32 0
  %oline_gap416 = bitcast %union.anon* %osu1415 to %struct.GAP*
  %152 = bitcast %struct.GAP* %oline_gap416 to i16*
  %bf.load417 = load i16, i16* %152, align 4
  %bf.lshr418 = lshr i16 %bf.load417, 8
  %bf.clear419 = and i16 %bf.lshr418, 1
  %bf.cast420 = zext i16 %bf.clear419 to i32
  %osu1421 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap422 = bitcast %union.anon* %osu1421 to %struct.GAP*
  %153 = bitcast %struct.GAP* %oline_gap422 to i16*
  %154 = trunc i32 %bf.cast420 to i16
  %bf.load423 = load i16, i16* %153, align 4
  %bf.value424 = and i16 %154, 1
  %bf.shl425 = shl i16 %bf.value424, 8
  %bf.clear426 = and i16 %bf.load423, -257
  %bf.set427 = or i16 %bf.clear426, %bf.shl425
  store i16 %bf.set427, i16* %153, align 4
  %bf.result.cast428 = zext i16 %bf.value424 to i32
  %155 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1429 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %155, i32 0, i32 0
  %oline_gap430 = bitcast %union.anon* %osu1429 to %struct.GAP*
  %156 = bitcast %struct.GAP* %oline_gap430 to i16*
  %bf.load431 = load i16, i16* %156, align 4
  %bf.lshr432 = lshr i16 %bf.load431, 9
  %bf.clear433 = and i16 %bf.lshr432, 1
  %bf.cast434 = zext i16 %bf.clear433 to i32
  %osu1435 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap436 = bitcast %union.anon* %osu1435 to %struct.GAP*
  %157 = bitcast %struct.GAP* %oline_gap436 to i16*
  %158 = trunc i32 %bf.cast434 to i16
  %bf.load437 = load i16, i16* %157, align 4
  %bf.value438 = and i16 %158, 1
  %bf.shl439 = shl i16 %bf.value438, 9
  %bf.clear440 = and i16 %bf.load437, -513
  %bf.set441 = or i16 %bf.clear440, %bf.shl439
  store i16 %bf.set441, i16* %157, align 4
  %bf.result.cast442 = zext i16 %bf.value438 to i32
  %159 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1443 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %159, i32 0, i32 0
  %oline_gap444 = bitcast %union.anon* %osu1443 to %struct.GAP*
  %160 = bitcast %struct.GAP* %oline_gap444 to i16*
  %bf.load445 = load i16, i16* %160, align 4
  %bf.lshr446 = lshr i16 %bf.load445, 10
  %bf.clear447 = and i16 %bf.lshr446, 7
  %bf.cast448 = zext i16 %bf.clear447 to i32
  %osu1449 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap450 = bitcast %union.anon* %osu1449 to %struct.GAP*
  %161 = bitcast %struct.GAP* %oline_gap450 to i16*
  %162 = trunc i32 %bf.cast448 to i16
  %bf.load451 = load i16, i16* %161, align 4
  %bf.value452 = and i16 %162, 7
  %bf.shl453 = shl i16 %bf.value452, 10
  %bf.clear454 = and i16 %bf.load451, -7169
  %bf.set455 = or i16 %bf.clear454, %bf.shl453
  store i16 %bf.set455, i16* %161, align 4
  %bf.result.cast456 = zext i16 %bf.value452 to i32
  %163 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1457 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %163, i32 0, i32 0
  %oline_gap458 = bitcast %union.anon* %osu1457 to %struct.GAP*
  %164 = bitcast %struct.GAP* %oline_gap458 to i16*
  %bf.load459 = load i16, i16* %164, align 4
  %bf.lshr460 = lshr i16 %bf.load459, 13
  %bf.cast461 = zext i16 %bf.lshr460 to i32
  %osu1462 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap463 = bitcast %union.anon* %osu1462 to %struct.GAP*
  %165 = bitcast %struct.GAP* %oline_gap463 to i16*
  %166 = trunc i32 %bf.cast461 to i16
  %bf.load464 = load i16, i16* %165, align 4
  %bf.value465 = and i16 %166, 7
  %bf.shl466 = shl i16 %bf.value465, 13
  %bf.clear467 = and i16 %bf.load464, 8191
  %bf.set468 = or i16 %bf.clear467, %bf.shl466
  store i16 %bf.set468, i16* %165, align 4
  %bf.result.cast469 = zext i16 %bf.value465 to i32
  %167 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1470 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %167, i32 0, i32 0
  %oline_gap471 = bitcast %union.anon* %osu1470 to %struct.GAP*
  %owidth472 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap471, i32 0, i32 1
  %168 = load i16, i16* %owidth472, align 2
  %osu1473 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oline_gap474 = bitcast %union.anon* %osu1473 to %struct.GAP*
  %owidth475 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap474, i32 0, i32 1
  store i16 %168, i16* %owidth475, align 2
  %169 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2476 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %169, i32 0, i32 1
  %oss2477 = bitcast %union.anon.10* %osu2476 to %struct.anon.11*
  %170 = bitcast %struct.anon.11* %oss2477 to i8*
  %bf.load478 = load i8, i8* %170, align 4
  %bf.clear479 = and i8 %bf.load478, 3
  %bf.cast480 = zext i8 %bf.clear479 to i32
  %osu2481 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %oss2482 = bitcast %union.anon.10* %osu2481 to %struct.anon.11*
  %171 = bitcast %struct.anon.11* %oss2482 to i8*
  %172 = trunc i32 %bf.cast480 to i8
  %bf.load483 = load i8, i8* %171, align 4
  %bf.value484 = and i8 %172, 3
  %bf.clear485 = and i8 %bf.load483, -4
  %bf.set486 = or i8 %bf.clear485, %bf.value484
  store i8 %bf.set486, i8* %171, align 4
  %bf.result.cast487 = zext i8 %bf.value484 to i32
  %173 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2488 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %173, i32 0, i32 1
  %oss2489 = bitcast %union.anon.10* %osu2488 to %struct.anon.11*
  %174 = bitcast %struct.anon.11* %oss2489 to i8*
  %bf.load490 = load i8, i8* %174, align 4
  %bf.lshr491 = lshr i8 %bf.load490, 2
  %bf.clear492 = and i8 %bf.lshr491, 3
  %bf.cast493 = zext i8 %bf.clear492 to i32
  %osu2494 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %oss2495 = bitcast %union.anon.10* %osu2494 to %struct.anon.11*
  %175 = bitcast %struct.anon.11* %oss2495 to i8*
  %176 = trunc i32 %bf.cast493 to i8
  %bf.load496 = load i8, i8* %175, align 4
  %bf.value497 = and i8 %176, 3
  %bf.shl498 = shl i8 %bf.value497, 2
  %bf.clear499 = and i8 %bf.load496, -13
  %bf.set500 = or i8 %bf.clear499, %bf.shl498
  store i8 %bf.set500, i8* %175, align 4
  %bf.result.cast501 = zext i8 %bf.value497 to i32
  %177 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2502 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %177, i32 0, i32 1
  %oss2503 = bitcast %union.anon.10* %osu2502 to %struct.anon.11*
  %178 = bitcast %struct.anon.11* %oss2503 to i8*
  %bf.load504 = load i8, i8* %178, align 4
  %bf.lshr505 = lshr i8 %bf.load504, 4
  %bf.clear506 = and i8 %bf.lshr505, 7
  %bf.cast507 = zext i8 %bf.clear506 to i32
  %osu2508 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %oss2509 = bitcast %union.anon.10* %osu2508 to %struct.anon.11*
  %179 = bitcast %struct.anon.11* %oss2509 to i8*
  %180 = trunc i32 %bf.cast507 to i8
  %bf.load510 = load i8, i8* %179, align 4
  %bf.value511 = and i8 %180, 7
  %bf.shl512 = shl i8 %bf.value511, 4
  %bf.clear513 = and i8 %bf.load510, -113
  %bf.set514 = or i8 %bf.clear513, %bf.shl512
  store i8 %bf.set514, i8* %179, align 4
  %bf.result.cast515 = zext i8 %bf.value511 to i32
  %181 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1516 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %181, i32 0, i32 0
  %oss1517 = bitcast %union.anon* %osu1516 to %struct.anon.9*
  %182 = bitcast %struct.anon.9* %oss1517 to i8*
  %bf.load518 = load i8, i8* %182, align 4
  %bf.lshr519 = lshr i8 %bf.load518, 3
  %bf.clear520 = and i8 %bf.lshr519, 1
  %bf.cast521 = zext i8 %bf.clear520 to i32
  %osu1522 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1523 = bitcast %union.anon* %osu1522 to %struct.anon.9*
  %183 = bitcast %struct.anon.9* %oss1523 to i8*
  %184 = trunc i32 %bf.cast521 to i8
  %bf.load524 = load i8, i8* %183, align 4
  %bf.value525 = and i8 %184, 1
  %bf.shl526 = shl i8 %bf.value525, 3
  %bf.clear527 = and i8 %bf.load524, -9
  %bf.set528 = or i8 %bf.clear527, %bf.shl526
  store i8 %bf.set528, i8* %183, align 4
  %bf.result.cast529 = zext i8 %bf.value525 to i32
  %185 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2530 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %185, i32 0, i32 1
  %ospace_gap531 = bitcast %union.anon.10* %osu2530 to %struct.GAP*
  %186 = bitcast %struct.GAP* %ospace_gap531 to i16*
  %bf.load532 = load i16, i16* %186, align 4
  %bf.lshr533 = lshr i16 %bf.load532, 7
  %bf.clear534 = and i16 %bf.lshr533, 1
  %bf.cast535 = zext i16 %bf.clear534 to i32
  %osu2536 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap537 = bitcast %union.anon.10* %osu2536 to %struct.GAP*
  %187 = bitcast %struct.GAP* %ospace_gap537 to i16*
  %188 = trunc i32 %bf.cast535 to i16
  %bf.load538 = load i16, i16* %187, align 4
  %bf.value539 = and i16 %188, 1
  %bf.shl540 = shl i16 %bf.value539, 7
  %bf.clear541 = and i16 %bf.load538, -129
  %bf.set542 = or i16 %bf.clear541, %bf.shl540
  store i16 %bf.set542, i16* %187, align 4
  %bf.result.cast543 = zext i16 %bf.value539 to i32
  %189 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2544 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %189, i32 0, i32 1
  %ospace_gap545 = bitcast %union.anon.10* %osu2544 to %struct.GAP*
  %190 = bitcast %struct.GAP* %ospace_gap545 to i16*
  %bf.load546 = load i16, i16* %190, align 4
  %bf.lshr547 = lshr i16 %bf.load546, 8
  %bf.clear548 = and i16 %bf.lshr547, 1
  %bf.cast549 = zext i16 %bf.clear548 to i32
  %osu2550 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap551 = bitcast %union.anon.10* %osu2550 to %struct.GAP*
  %191 = bitcast %struct.GAP* %ospace_gap551 to i16*
  %192 = trunc i32 %bf.cast549 to i16
  %bf.load552 = load i16, i16* %191, align 4
  %bf.value553 = and i16 %192, 1
  %bf.shl554 = shl i16 %bf.value553, 8
  %bf.clear555 = and i16 %bf.load552, -257
  %bf.set556 = or i16 %bf.clear555, %bf.shl554
  store i16 %bf.set556, i16* %191, align 4
  %bf.result.cast557 = zext i16 %bf.value553 to i32
  %193 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2558 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %193, i32 0, i32 1
  %ospace_gap559 = bitcast %union.anon.10* %osu2558 to %struct.GAP*
  %194 = bitcast %struct.GAP* %ospace_gap559 to i16*
  %bf.load560 = load i16, i16* %194, align 4
  %bf.lshr561 = lshr i16 %bf.load560, 9
  %bf.clear562 = and i16 %bf.lshr561, 1
  %bf.cast563 = zext i16 %bf.clear562 to i32
  %osu2564 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap565 = bitcast %union.anon.10* %osu2564 to %struct.GAP*
  %195 = bitcast %struct.GAP* %ospace_gap565 to i16*
  %196 = trunc i32 %bf.cast563 to i16
  %bf.load566 = load i16, i16* %195, align 4
  %bf.value567 = and i16 %196, 1
  %bf.shl568 = shl i16 %bf.value567, 9
  %bf.clear569 = and i16 %bf.load566, -513
  %bf.set570 = or i16 %bf.clear569, %bf.shl568
  store i16 %bf.set570, i16* %195, align 4
  %bf.result.cast571 = zext i16 %bf.value567 to i32
  %197 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2572 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %197, i32 0, i32 1
  %ospace_gap573 = bitcast %union.anon.10* %osu2572 to %struct.GAP*
  %198 = bitcast %struct.GAP* %ospace_gap573 to i16*
  %bf.load574 = load i16, i16* %198, align 4
  %bf.lshr575 = lshr i16 %bf.load574, 10
  %bf.clear576 = and i16 %bf.lshr575, 7
  %bf.cast577 = zext i16 %bf.clear576 to i32
  %osu2578 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap579 = bitcast %union.anon.10* %osu2578 to %struct.GAP*
  %199 = bitcast %struct.GAP* %ospace_gap579 to i16*
  %200 = trunc i32 %bf.cast577 to i16
  %bf.load580 = load i16, i16* %199, align 4
  %bf.value581 = and i16 %200, 7
  %bf.shl582 = shl i16 %bf.value581, 10
  %bf.clear583 = and i16 %bf.load580, -7169
  %bf.set584 = or i16 %bf.clear583, %bf.shl582
  store i16 %bf.set584, i16* %199, align 4
  %bf.result.cast585 = zext i16 %bf.value581 to i32
  %201 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2586 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %201, i32 0, i32 1
  %ospace_gap587 = bitcast %union.anon.10* %osu2586 to %struct.GAP*
  %202 = bitcast %struct.GAP* %ospace_gap587 to i16*
  %bf.load588 = load i16, i16* %202, align 4
  %bf.lshr589 = lshr i16 %bf.load588, 13
  %bf.cast590 = zext i16 %bf.lshr589 to i32
  %osu2591 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap592 = bitcast %union.anon.10* %osu2591 to %struct.GAP*
  %203 = bitcast %struct.GAP* %ospace_gap592 to i16*
  %204 = trunc i32 %bf.cast590 to i16
  %bf.load593 = load i16, i16* %203, align 4
  %bf.value594 = and i16 %204, 7
  %bf.shl595 = shl i16 %bf.value594, 13
  %bf.clear596 = and i16 %bf.load593, 8191
  %bf.set597 = or i16 %bf.clear596, %bf.shl595
  store i16 %bf.set597, i16* %203, align 4
  %bf.result.cast598 = zext i16 %bf.value594 to i32
  %205 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2599 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %205, i32 0, i32 1
  %ospace_gap600 = bitcast %union.anon.10* %osu2599 to %struct.GAP*
  %owidth601 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap600, i32 0, i32 1
  %206 = load i16, i16* %owidth601, align 2
  %osu2602 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %ospace_gap603 = bitcast %union.anon.10* %osu2602 to %struct.GAP*
  %owidth604 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap603, i32 0, i32 1
  store i16 %206, i16* %owidth604, align 2
  %207 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont605 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %207, i32 0, i32 4
  %bf.load606 = load i32, i32* %ofont605, align 4
  %bf.clear607 = and i32 %bf.load606, 4095
  %ofont608 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load609 = load i32, i32* %ofont608, align 4
  %bf.value610 = and i32 %bf.clear607, 4095
  %bf.clear611 = and i32 %bf.load609, -4096
  %bf.set612 = or i32 %bf.clear611, %bf.value610
  store i32 %bf.set612, i32* %ofont608, align 4
  %208 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ocolour613 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %208, i32 0, i32 4
  %bf.load614 = load i32, i32* %ocolour613, align 4
  %bf.lshr615 = lshr i32 %bf.load614, 12
  %bf.clear616 = and i32 %bf.lshr615, 1023
  %ocolour617 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load618 = load i32, i32* %ocolour617, align 4
  %bf.value619 = and i32 %bf.clear616, 1023
  %bf.shl620 = shl i32 %bf.value619, 12
  %bf.clear621 = and i32 %bf.load618, -4190209
  %bf.set622 = or i32 %bf.clear621, %bf.shl620
  store i32 %bf.set622, i32* %ocolour617, align 4
  %209 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ooutline623 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %209, i32 0, i32 4
  %bf.load624 = load i32, i32* %ooutline623, align 4
  %bf.lshr625 = lshr i32 %bf.load624, 22
  %bf.clear626 = and i32 %bf.lshr625, 3
  %ooutline627 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load628 = load i32, i32* %ooutline627, align 4
  %bf.value629 = and i32 %bf.clear626, 3
  %bf.shl630 = shl i32 %bf.value629, 22
  %bf.clear631 = and i32 %bf.load628, -12582913
  %bf.set632 = or i32 %bf.clear631, %bf.shl630
  store i32 %bf.set632, i32* %ooutline627, align 4
  %210 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %olanguage633 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %210, i32 0, i32 4
  %bf.load634 = load i32, i32* %olanguage633, align 4
  %bf.lshr635 = lshr i32 %bf.load634, 24
  %bf.clear636 = and i32 %bf.lshr635, 63
  %olanguage637 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load638 = load i32, i32* %olanguage637, align 4
  %bf.value639 = and i32 %bf.clear636, 63
  %bf.shl640 = shl i32 %bf.value639, 24
  %bf.clear641 = and i32 %bf.load638, -1056964609
  %bf.set642 = or i32 %bf.clear641, %bf.shl640
  store i32 %bf.set642, i32* %olanguage637, align 4
  %211 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreaklast643 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %211, i32 0, i32 4
  %bf.load644 = load i32, i32* %onobreaklast643, align 4
  %bf.lshr645 = lshr i32 %bf.load644, 31
  %onobreaklast646 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load647 = load i32, i32* %onobreaklast646, align 4
  %bf.value648 = and i32 %bf.lshr645, 1
  %bf.shl649 = shl i32 %bf.value648, 31
  %bf.clear650 = and i32 %bf.load647, 2147483647
  %bf.set651 = or i32 %bf.clear650, %bf.shl649
  store i32 %bf.set651, i32* %onobreaklast646, align 4
  %212 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %onobreakfirst652 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %212, i32 0, i32 4
  %bf.load653 = load i32, i32* %onobreakfirst652, align 4
  %bf.lshr654 = lshr i32 %bf.load653, 30
  %bf.clear655 = and i32 %bf.lshr654, 1
  %onobreakfirst656 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load657 = load i32, i32* %onobreakfirst656, align 4
  %bf.value658 = and i32 %bf.clear655, 1
  %bf.shl659 = shl i32 %bf.value658, 30
  %bf.clear660 = and i32 %bf.load657, -1073741825
  %bf.set661 = or i32 %bf.clear660, %bf.shl659
  store i32 %bf.set661, i32* %onobreakfirst656, align 4
  %213 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1662 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %213, i32 0, i32 0
  %oss1663 = bitcast %union.anon* %osu1662 to %struct.anon.9*
  %214 = bitcast %struct.anon.9* %oss1663 to i8*
  %bf.load664 = load i8, i8* %214, align 4
  %bf.clear665 = and i8 %bf.load664, 1
  %bf.cast666 = zext i8 %bf.clear665 to i32
  %osu1667 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1668 = bitcast %union.anon* %osu1667 to %struct.anon.9*
  %215 = bitcast %struct.anon.9* %oss1668 to i8*
  %216 = trunc i32 %bf.cast666 to i8
  %bf.load669 = load i8, i8* %215, align 4
  %bf.value670 = and i8 %216, 1
  %bf.clear671 = and i8 %bf.load669, -2
  %bf.set672 = or i8 %bf.clear671, %bf.value670
  store i8 %bf.set672, i8* %215, align 4
  %bf.result.cast673 = zext i8 %bf.value670 to i32
  %217 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1674 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %217, i32 0, i32 0
  %oss1675 = bitcast %union.anon* %osu1674 to %struct.anon.9*
  %218 = bitcast %struct.anon.9* %oss1675 to i8*
  %bf.load676 = load i8, i8* %218, align 4
  %bf.lshr677 = lshr i8 %bf.load676, 1
  %bf.clear678 = and i8 %bf.lshr677, 1
  %bf.cast679 = zext i8 %bf.clear678 to i32
  %osu1680 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1681 = bitcast %union.anon* %osu1680 to %struct.anon.9*
  %219 = bitcast %struct.anon.9* %oss1681 to i8*
  %220 = trunc i32 %bf.cast679 to i8
  %bf.load682 = load i8, i8* %219, align 4
  %bf.value683 = and i8 %220, 1
  %bf.shl684 = shl i8 %bf.value683, 1
  %bf.clear685 = and i8 %bf.load682, -3
  %bf.set686 = or i8 %bf.clear685, %bf.shl684
  store i8 %bf.set686, i8* %219, align 4
  %bf.result.cast687 = zext i8 %bf.value683 to i32
  %221 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1688 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %221, i32 0, i32 0
  %oss1689 = bitcast %union.anon* %osu1688 to %struct.anon.9*
  %222 = bitcast %struct.anon.9* %oss1689 to i8*
  %bf.load690 = load i8, i8* %222, align 4
  %bf.lshr691 = lshr i8 %bf.load690, 2
  %bf.clear692 = and i8 %bf.lshr691, 1
  %bf.cast693 = zext i8 %bf.clear692 to i32
  %osu1694 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1695 = bitcast %union.anon* %osu1694 to %struct.anon.9*
  %223 = bitcast %struct.anon.9* %oss1695 to i8*
  %224 = trunc i32 %bf.cast693 to i8
  %bf.load696 = load i8, i8* %223, align 4
  %bf.value697 = and i8 %224, 1
  %bf.shl698 = shl i8 %bf.value697, 2
  %bf.clear699 = and i8 %bf.load696, -5
  %bf.set700 = or i8 %bf.clear699, %bf.shl698
  store i8 %bf.set700, i8* %223, align 4
  %bf.result.cast701 = zext i8 %bf.value697 to i32
  %225 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1702 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %225, i32 0, i32 0
  %oss1703 = bitcast %union.anon* %osu1702 to %struct.anon.9*
  %226 = bitcast %struct.anon.9* %oss1703 to i8*
  %bf.load704 = load i8, i8* %226, align 4
  %bf.lshr705 = lshr i8 %bf.load704, 4
  %bf.clear706 = and i8 %bf.lshr705, 7
  %bf.cast707 = zext i8 %bf.clear706 to i32
  %osu1708 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %oss1709 = bitcast %union.anon* %osu1708 to %struct.anon.9*
  %227 = bitcast %struct.anon.9* %oss1709 to i8*
  %228 = trunc i32 %bf.cast707 to i8
  %bf.load710 = load i8, i8* %227, align 4
  %bf.value711 = and i8 %228, 7
  %bf.shl712 = shl i8 %bf.value711, 4
  %bf.clear713 = and i8 %bf.load710, -113
  %bf.set714 = or i8 %bf.clear713, %bf.shl712
  store i8 %bf.set714, i8* %227, align 4
  %bf.result.cast715 = zext i8 %bf.value711 to i32
  %229 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit716 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %229, i32 0, i32 2
  %230 = load i16, i16* %oyunit716, align 2
  %oyunit717 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 2
  store i16 %230, i16* %oyunit717, align 2
  %231 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit718 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %231, i32 0, i32 3
  %232 = load i16, i16* %ozunit718, align 2
  %ozunit719 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 3
  store i16 %232, i16* %ozunit719, align 2
  %233 = load %union.rec*, %union.rec** @MapSmallCaps.font_change_word, align 8
  call void @FontChange(%struct.STYLE* %new_style, %union.rec* %233)
  %ofont720 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %bf.load721 = load i32, i32* %ofont720, align 4
  %bf.clear722 = and i32 %bf.load721, 4095
  store i32 %bf.clear722, i32* %small_font, align 4
  %234 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1723 = bitcast %union.rec* %234 to %struct.word_type*
  %ou2724 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1723, i32 0, i32 2
  %os22725 = bitcast %union.SECOND_UNION* %ou2724 to %struct.anon.1*
  %235 = bitcast %struct.anon.1* %os22725 to i32*
  %bf.load726 = load i32, i32* %235, align 4
  %bf.clear727 = and i32 %bf.load726, 4095
  %call728 = call i32 @FontHalfXHeight(i32 %bf.clear727)
  %236 = load i32, i32* %small_font, align 4
  %call729 = call i32 @FontHalfXHeight(i32 %236)
  %sub730 = sub nsw i32 %call728, %call729
  store i32 %sub730, i32* %vshift, align 4
  %arraydecay731 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %237 = load i8*, i8** %q, align 8
  %238 = load %union.rec*, %union.rec** %x.addr, align 8
  %239 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1732 = bitcast %union.rec* %239 to %struct.word_type*
  %ou2733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1732, i32 0, i32 2
  %os22734 = bitcast %union.SECOND_UNION* %ou2733 to %struct.anon.1*
  %240 = bitcast %struct.anon.1* %os22734 to i32*
  %bf.load735 = load i32, i32* %240, align 4
  %bf.clear736 = and i32 %bf.load735, 4095
  %call737 = call %union.rec* @DoWord(i8* %arraydecay731, i8* %237, %union.rec* %238, i32 %bf.clear736)
  store %union.rec* %call737, %union.rec** %new_y, align 8
  %241 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 24), align 1
  %conv738 = zext i8 %241 to i32
  store i32 %conv738, i32* @zz_size, align 4
  %conv739 = sext i32 %conv738 to i64
  %cmp740 = icmp uge i64 %conv739, 265
  br i1 %cmp740, label %if.then.742, label %if.else.744

if.then.742:                                      ; preds = %if.then.400
  %242 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call743 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %242)
  br label %if.end.759

if.else.744:                                      ; preds = %if.then.400
  %243 = load i32, i32* @zz_size, align 4
  %idxprom745 = sext i32 %243 to i64
  %arrayidx746 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom745
  %244 = load %union.rec*, %union.rec** %arrayidx746, align 8
  %cmp747 = icmp eq %union.rec* %244, null
  br i1 %cmp747, label %if.then.749, label %if.else.751

if.then.749:                                      ; preds = %if.else.744
  %245 = load i32, i32* @zz_size, align 4
  %246 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call750 = call %union.rec* @GetMemory(i32 %245, %struct.FILE_POS* %246)
  store %union.rec* %call750, %union.rec** @zz_hold, align 8
  br label %if.end.758

if.else.751:                                      ; preds = %if.else.744
  %247 = load i32, i32* @zz_size, align 4
  %idxprom752 = sext i32 %247 to i64
  %arrayidx753 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom752
  %248 = load %union.rec*, %union.rec** %arrayidx753, align 8
  store %union.rec* %248, %union.rec** @zz_hold, align 8
  store %union.rec* %248, %union.rec** @zz_hold, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1754 = bitcast %union.rec* %249 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1754, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx755, i32 0, i32 0
  %250 = load %union.rec*, %union.rec** %opred, align 8
  %251 = load i32, i32* @zz_size, align 4
  %idxprom756 = sext i32 %251 to i64
  %arrayidx757 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom756
  store %union.rec* %250, %union.rec** %arrayidx757, align 8
  br label %if.end.758

if.end.758:                                       ; preds = %if.else.751, %if.then.749
  br label %if.end.759

if.end.759:                                       ; preds = %if.end.758, %if.then.742
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1760 = bitcast %union.rec* %252 to %struct.word_type*
  %ou1761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1760, i32 0, i32 1
  %os11762 = bitcast %union.FIRST_UNION* %ou1761 to %struct.anon*
  %otype763 = getelementptr inbounds %struct.anon, %struct.anon* %os11762, i32 0, i32 0
  store i8 24, i8* %otype763, align 1
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1764 = bitcast %union.rec* %254 to %struct.word_type*
  %olist765 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1764, i32 0, i32 0
  %arrayidx766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist765, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx766, i32 0, i32 1
  store %union.rec* %253, %union.rec** %osucc, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1767 = bitcast %union.rec* %255 to %struct.word_type*
  %olist768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1767, i32 0, i32 0
  %arrayidx769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist768, i32 0, i64 1
  %opred770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx769, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred770, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1771 = bitcast %union.rec* %256 to %struct.word_type*
  %olist772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1771, i32 0, i32 0
  %arrayidx773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist772, i32 0, i64 0
  %osucc774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx773, i32 0, i32 1
  store %union.rec* %253, %union.rec** %osucc774, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1775 = bitcast %union.rec* %257 to %struct.word_type*
  %olist776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1775, i32 0, i32 0
  %arrayidx777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist776, i32 0, i64 0
  %opred778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx777, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred778, align 8
  store %union.rec* %253, %union.rec** %new_x, align 8
  %258 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1779 = bitcast %union.rec* %258 to %struct.word_type*
  %ou1780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1779, i32 0, i32 1
  %ofpos781 = bitcast %union.FIRST_UNION* %ou1780 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos781, i32 0, i32 2
  %259 = load i16, i16* %ofile_num, align 2
  %260 = load %union.rec*, %union.rec** %new_x, align 8
  %os1782 = bitcast %union.rec* %260 to %struct.word_type*
  %ou1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1782, i32 0, i32 1
  %ofpos784 = bitcast %union.FIRST_UNION* %ou1783 to %struct.FILE_POS*
  %ofile_num785 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos784, i32 0, i32 2
  store i16 %259, i16* %ofile_num785, align 2
  %261 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1786 = bitcast %union.rec* %261 to %struct.word_type*
  %ou1787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1786, i32 0, i32 1
  %ofpos788 = bitcast %union.FIRST_UNION* %ou1787 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos788, i32 0, i32 3
  %bf.load789 = load i32, i32* %oline_num, align 4
  %bf.clear790 = and i32 %bf.load789, 1048575
  %262 = load %union.rec*, %union.rec** %new_x, align 8
  %os1791 = bitcast %union.rec* %262 to %struct.word_type*
  %ou1792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1791, i32 0, i32 1
  %ofpos793 = bitcast %union.FIRST_UNION* %ou1792 to %struct.FILE_POS*
  %oline_num794 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos793, i32 0, i32 3
  %bf.load795 = load i32, i32* %oline_num794, align 4
  %bf.value796 = and i32 %bf.clear790, 1048575
  %bf.clear797 = and i32 %bf.load795, -1048576
  %bf.set798 = or i32 %bf.clear797, %bf.value796
  store i32 %bf.set798, i32* %oline_num794, align 4
  %263 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1799 = bitcast %union.rec* %263 to %struct.word_type*
  %ou1800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1799, i32 0, i32 1
  %ofpos801 = bitcast %union.FIRST_UNION* %ou1800 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos801, i32 0, i32 3
  %bf.load802 = load i32, i32* %ocol_num, align 4
  %bf.lshr803 = lshr i32 %bf.load802, 20
  %264 = load %union.rec*, %union.rec** %new_x, align 8
  %os1804 = bitcast %union.rec* %264 to %struct.word_type*
  %ou1805 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1804, i32 0, i32 1
  %ofpos806 = bitcast %union.FIRST_UNION* %ou1805 to %struct.FILE_POS*
  %ocol_num807 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos806, i32 0, i32 3
  %bf.load808 = load i32, i32* %ocol_num807, align 4
  %bf.value809 = and i32 %bf.lshr803, 4095
  %bf.shl810 = shl i32 %bf.value809, 20
  %bf.clear811 = and i32 %bf.load808, 1048575
  %bf.set812 = or i32 %bf.clear811, %bf.shl810
  store i32 %bf.set812, i32* %ocol_num807, align 4
  %265 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv813 = zext i8 %265 to i32
  store i32 %conv813, i32* @zz_size, align 4
  %conv814 = sext i32 %conv813 to i64
  %cmp815 = icmp uge i64 %conv814, 265
  br i1 %cmp815, label %if.then.817, label %if.else.819

if.then.817:                                      ; preds = %if.end.759
  %266 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call818 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %266)
  br label %if.end.836

if.else.819:                                      ; preds = %if.end.759
  %267 = load i32, i32* @zz_size, align 4
  %idxprom820 = sext i32 %267 to i64
  %arrayidx821 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom820
  %268 = load %union.rec*, %union.rec** %arrayidx821, align 8
  %cmp822 = icmp eq %union.rec* %268, null
  br i1 %cmp822, label %if.then.824, label %if.else.826

if.then.824:                                      ; preds = %if.else.819
  %269 = load i32, i32* @zz_size, align 4
  %270 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call825 = call %union.rec* @GetMemory(i32 %269, %struct.FILE_POS* %270)
  store %union.rec* %call825, %union.rec** @zz_hold, align 8
  br label %if.end.835

if.else.826:                                      ; preds = %if.else.819
  %271 = load i32, i32* @zz_size, align 4
  %idxprom827 = sext i32 %271 to i64
  %arrayidx828 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom827
  %272 = load %union.rec*, %union.rec** %arrayidx828, align 8
  store %union.rec* %272, %union.rec** @zz_hold, align 8
  store %union.rec* %272, %union.rec** @zz_hold, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1829 = bitcast %union.rec* %273 to %struct.word_type*
  %olist830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1829, i32 0, i32 0
  %arrayidx831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist830, i32 0, i64 0
  %opred832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx831, i32 0, i32 0
  %274 = load %union.rec*, %union.rec** %opred832, align 8
  %275 = load i32, i32* @zz_size, align 4
  %idxprom833 = sext i32 %275 to i64
  %arrayidx834 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom833
  store %union.rec* %274, %union.rec** %arrayidx834, align 8
  br label %if.end.835

if.end.835:                                       ; preds = %if.else.826, %if.then.824
  br label %if.end.836

if.end.836:                                       ; preds = %if.end.835, %if.then.817
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1837 = bitcast %union.rec* %276 to %struct.word_type*
  %ou1838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1837, i32 0, i32 1
  %os11839 = bitcast %union.FIRST_UNION* %ou1838 to %struct.anon*
  %otype840 = getelementptr inbounds %struct.anon, %struct.anon* %os11839, i32 0, i32 0
  store i8 17, i8* %otype840, align 1
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1841 = bitcast %union.rec* %278 to %struct.word_type*
  %olist842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1841, i32 0, i32 0
  %arrayidx843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist842, i32 0, i64 1
  %osucc844 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx843, i32 0, i32 1
  store %union.rec* %277, %union.rec** %osucc844, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1845 = bitcast %union.rec* %279 to %struct.word_type*
  %olist846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1845, i32 0, i32 0
  %arrayidx847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist846, i32 0, i64 1
  %opred848 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx847, i32 0, i32 0
  store %union.rec* %277, %union.rec** %opred848, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1849 = bitcast %union.rec* %280 to %struct.word_type*
  %olist850 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1849, i32 0, i32 0
  %arrayidx851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist850, i32 0, i64 0
  %osucc852 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx851, i32 0, i32 1
  store %union.rec* %277, %union.rec** %osucc852, align 8
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1853 = bitcast %union.rec* %281 to %struct.word_type*
  %olist854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1853, i32 0, i32 0
  %arrayidx855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist854, i32 0, i64 0
  %opred856 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx855, i32 0, i32 0
  store %union.rec* %277, %union.rec** %opred856, align 8
  store %union.rec* %277, %union.rec** %new_acat, align 8
  %282 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1857 = bitcast %union.rec* %282 to %struct.word_type*
  %ou1858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1857, i32 0, i32 1
  %ofpos859 = bitcast %union.FIRST_UNION* %ou1858 to %struct.FILE_POS*
  %ofile_num860 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos859, i32 0, i32 2
  %283 = load i16, i16* %ofile_num860, align 2
  %284 = load %union.rec*, %union.rec** %new_acat, align 8
  %os1861 = bitcast %union.rec* %284 to %struct.word_type*
  %ou1862 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1861, i32 0, i32 1
  %ofpos863 = bitcast %union.FIRST_UNION* %ou1862 to %struct.FILE_POS*
  %ofile_num864 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos863, i32 0, i32 2
  store i16 %283, i16* %ofile_num864, align 2
  %285 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1865 = bitcast %union.rec* %285 to %struct.word_type*
  %ou1866 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1865, i32 0, i32 1
  %ofpos867 = bitcast %union.FIRST_UNION* %ou1866 to %struct.FILE_POS*
  %oline_num868 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos867, i32 0, i32 3
  %bf.load869 = load i32, i32* %oline_num868, align 4
  %bf.clear870 = and i32 %bf.load869, 1048575
  %286 = load %union.rec*, %union.rec** %new_acat, align 8
  %os1871 = bitcast %union.rec* %286 to %struct.word_type*
  %ou1872 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1871, i32 0, i32 1
  %ofpos873 = bitcast %union.FIRST_UNION* %ou1872 to %struct.FILE_POS*
  %oline_num874 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos873, i32 0, i32 3
  %bf.load875 = load i32, i32* %oline_num874, align 4
  %bf.value876 = and i32 %bf.clear870, 1048575
  %bf.clear877 = and i32 %bf.load875, -1048576
  %bf.set878 = or i32 %bf.clear877, %bf.value876
  store i32 %bf.set878, i32* %oline_num874, align 4
  %287 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1879 = bitcast %union.rec* %287 to %struct.word_type*
  %ou1880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1879, i32 0, i32 1
  %ofpos881 = bitcast %union.FIRST_UNION* %ou1880 to %struct.FILE_POS*
  %ocol_num882 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos881, i32 0, i32 3
  %bf.load883 = load i32, i32* %ocol_num882, align 4
  %bf.lshr884 = lshr i32 %bf.load883, 20
  %288 = load %union.rec*, %union.rec** %new_acat, align 8
  %os1885 = bitcast %union.rec* %288 to %struct.word_type*
  %ou1886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1885, i32 0, i32 1
  %ofpos887 = bitcast %union.FIRST_UNION* %ou1886 to %struct.FILE_POS*
  %ocol_num888 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos887, i32 0, i32 3
  %bf.load889 = load i32, i32* %ocol_num888, align 4
  %bf.value890 = and i32 %bf.lshr884, 4095
  %bf.shl891 = shl i32 %bf.value890, 20
  %bf.clear892 = and i32 %bf.load889, 1048575
  %bf.set893 = or i32 %bf.clear892, %bf.shl891
  store i32 %bf.set893, i32* %ocol_num888, align 4
  %289 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv894 = zext i8 %289 to i32
  store i32 %conv894, i32* @zz_size, align 4
  %conv895 = sext i32 %conv894 to i64
  %cmp896 = icmp uge i64 %conv895, 265
  br i1 %cmp896, label %if.then.898, label %if.else.900

if.then.898:                                      ; preds = %if.end.836
  %290 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call899 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %290)
  br label %if.end.917

if.else.900:                                      ; preds = %if.end.836
  %291 = load i32, i32* @zz_size, align 4
  %idxprom901 = sext i32 %291 to i64
  %arrayidx902 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom901
  %292 = load %union.rec*, %union.rec** %arrayidx902, align 8
  %cmp903 = icmp eq %union.rec* %292, null
  br i1 %cmp903, label %if.then.905, label %if.else.907

if.then.905:                                      ; preds = %if.else.900
  %293 = load i32, i32* @zz_size, align 4
  %294 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call906 = call %union.rec* @GetMemory(i32 %293, %struct.FILE_POS* %294)
  store %union.rec* %call906, %union.rec** @zz_hold, align 8
  br label %if.end.916

if.else.907:                                      ; preds = %if.else.900
  %295 = load i32, i32* @zz_size, align 4
  %idxprom908 = sext i32 %295 to i64
  %arrayidx909 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom908
  %296 = load %union.rec*, %union.rec** %arrayidx909, align 8
  store %union.rec* %296, %union.rec** @zz_hold, align 8
  store %union.rec* %296, %union.rec** @zz_hold, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1910 = bitcast %union.rec* %297 to %struct.word_type*
  %olist911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1910, i32 0, i32 0
  %arrayidx912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist911, i32 0, i64 0
  %opred913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx912, i32 0, i32 0
  %298 = load %union.rec*, %union.rec** %opred913, align 8
  %299 = load i32, i32* @zz_size, align 4
  %idxprom914 = sext i32 %299 to i64
  %arrayidx915 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom914
  store %union.rec* %298, %union.rec** %arrayidx915, align 8
  br label %if.end.916

if.end.916:                                       ; preds = %if.else.907, %if.then.905
  br label %if.end.917

if.end.917:                                       ; preds = %if.end.916, %if.then.898
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1918 = bitcast %union.rec* %300 to %struct.word_type*
  %ou1919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 1
  %os11920 = bitcast %union.FIRST_UNION* %ou1919 to %struct.anon*
  %otype921 = getelementptr inbounds %struct.anon, %struct.anon* %os11920, i32 0, i32 0
  store i8 0, i8* %otype921, align 1
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1922 = bitcast %union.rec* %302 to %struct.word_type*
  %olist923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1922, i32 0, i32 0
  %arrayidx924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist923, i32 0, i64 1
  %osucc925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx924, i32 0, i32 1
  store %union.rec* %301, %union.rec** %osucc925, align 8
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1926 = bitcast %union.rec* %303 to %struct.word_type*
  %olist927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1926, i32 0, i32 0
  %arrayidx928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist927, i32 0, i64 1
  %opred929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx928, i32 0, i32 0
  store %union.rec* %301, %union.rec** %opred929, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1930 = bitcast %union.rec* %304 to %struct.word_type*
  %olist931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1930, i32 0, i32 0
  %arrayidx932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist931, i32 0, i64 0
  %osucc933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx932, i32 0, i32 1
  store %union.rec* %301, %union.rec** %osucc933, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1934 = bitcast %union.rec* %305 to %struct.word_type*
  %olist935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1934, i32 0, i32 0
  %arrayidx936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist935, i32 0, i64 0
  %opred937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx936, i32 0, i32 0
  store %union.rec* %301, %union.rec** %opred937, align 8
  store %union.rec* %301, %union.rec** @xx_link, align 8
  %306 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %306, %union.rec** @zz_res, align 8
  %307 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %307, %union.rec** @zz_hold, align 8
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp938 = icmp eq %union.rec* %308, null
  br i1 %cmp938, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.917
  %309 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.972

cond.false:                                       ; preds = %if.end.917
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp940 = icmp eq %union.rec* %310, null
  br i1 %cmp940, label %cond.true.942, label %cond.false.943

cond.true.942:                                    ; preds = %cond.false
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.943:                                   ; preds = %cond.false
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1944 = bitcast %union.rec* %312 to %struct.word_type*
  %olist945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1944, i32 0, i32 0
  %arrayidx946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist945, i32 0, i64 0
  %opred947 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx946, i32 0, i32 0
  %313 = load %union.rec*, %union.rec** %opred947, align 8
  store %union.rec* %313, %union.rec** @zz_tmp, align 8
  %314 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1948 = bitcast %union.rec* %314 to %struct.word_type*
  %olist949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1948, i32 0, i32 0
  %arrayidx950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist949, i32 0, i64 0
  %opred951 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx950, i32 0, i32 0
  %315 = load %union.rec*, %union.rec** %opred951, align 8
  %316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1952 = bitcast %union.rec* %316 to %struct.word_type*
  %olist953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1952, i32 0, i32 0
  %arrayidx954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist953, i32 0, i64 0
  %opred955 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx954, i32 0, i32 0
  store %union.rec* %315, %union.rec** %opred955, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1956 = bitcast %union.rec* %318 to %struct.word_type*
  %olist957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1956, i32 0, i32 0
  %arrayidx958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist957, i32 0, i64 0
  %opred959 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx958, i32 0, i32 0
  %319 = load %union.rec*, %union.rec** %opred959, align 8
  %os1960 = bitcast %union.rec* %319 to %struct.word_type*
  %olist961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1960, i32 0, i32 0
  %arrayidx962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist961, i32 0, i64 0
  %osucc963 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx962, i32 0, i32 1
  store %union.rec* %317, %union.rec** %osucc963, align 8
  %320 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %321 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1964 = bitcast %union.rec* %321 to %struct.word_type*
  %olist965 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1964, i32 0, i32 0
  %arrayidx966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist965, i32 0, i64 0
  %opred967 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx966, i32 0, i32 0
  store %union.rec* %320, %union.rec** %opred967, align 8
  %322 = load %union.rec*, %union.rec** @zz_res, align 8
  %323 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1968 = bitcast %union.rec* %323 to %struct.word_type*
  %olist969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1968, i32 0, i32 0
  %arrayidx970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist969, i32 0, i64 0
  %osucc971 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx970, i32 0, i32 1
  store %union.rec* %322, %union.rec** %osucc971, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.943, %cond.true.942
  %cond = phi %union.rec* [ %311, %cond.true.942 ], [ %322, %cond.false.943 ]
  br label %cond.end.972

cond.end.972:                                     ; preds = %cond.end, %cond.true
  %cond973 = phi %union.rec* [ %309, %cond.true ], [ %cond, %cond.end ]
  %324 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %324, %union.rec** @zz_res, align 8
  %325 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %325, %union.rec** @zz_hold, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp974 = icmp eq %union.rec* %326, null
  br i1 %cmp974, label %cond.true.976, label %cond.false.977

cond.true.976:                                    ; preds = %cond.end.972
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1012

cond.false.977:                                   ; preds = %cond.end.972
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp978 = icmp eq %union.rec* %328, null
  br i1 %cmp978, label %cond.true.980, label %cond.false.981

cond.true.980:                                    ; preds = %cond.false.977
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1010

cond.false.981:                                   ; preds = %cond.false.977
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1982 = bitcast %union.rec* %330 to %struct.word_type*
  %olist983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1982, i32 0, i32 0
  %arrayidx984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist983, i32 0, i64 1
  %opred985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx984, i32 0, i32 0
  %331 = load %union.rec*, %union.rec** %opred985, align 8
  store %union.rec* %331, %union.rec** @zz_tmp, align 8
  %332 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1986 = bitcast %union.rec* %332 to %struct.word_type*
  %olist987 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1986, i32 0, i32 0
  %arrayidx988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist987, i32 0, i64 1
  %opred989 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx988, i32 0, i32 0
  %333 = load %union.rec*, %union.rec** %opred989, align 8
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1990 = bitcast %union.rec* %334 to %struct.word_type*
  %olist991 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1990, i32 0, i32 0
  %arrayidx992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist991, i32 0, i64 1
  %opred993 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx992, i32 0, i32 0
  store %union.rec* %333, %union.rec** %opred993, align 8
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %336 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1994 = bitcast %union.rec* %336 to %struct.word_type*
  %olist995 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1994, i32 0, i32 0
  %arrayidx996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist995, i32 0, i64 1
  %opred997 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx996, i32 0, i32 0
  %337 = load %union.rec*, %union.rec** %opred997, align 8
  %os1998 = bitcast %union.rec* %337 to %struct.word_type*
  %olist999 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1998, i32 0, i32 0
  %arrayidx1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist999, i32 0, i64 1
  %osucc1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1000, i32 0, i32 1
  store %union.rec* %335, %union.rec** %osucc1001, align 8
  %338 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %339 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11002 = bitcast %union.rec* %339 to %struct.word_type*
  %olist1003 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11002, i32 0, i32 0
  %arrayidx1004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1003, i32 0, i64 1
  %opred1005 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1004, i32 0, i32 0
  store %union.rec* %338, %union.rec** %opred1005, align 8
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %341 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11006 = bitcast %union.rec* %341 to %struct.word_type*
  %olist1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11006, i32 0, i32 0
  %arrayidx1008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1007, i32 0, i64 1
  %osucc1009 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1008, i32 0, i32 1
  store %union.rec* %340, %union.rec** %osucc1009, align 8
  br label %cond.end.1010

cond.end.1010:                                    ; preds = %cond.false.981, %cond.true.980
  %cond1011 = phi %union.rec* [ %329, %cond.true.980 ], [ %340, %cond.false.981 ]
  br label %cond.end.1012

cond.end.1012:                                    ; preds = %cond.end.1010, %cond.true.976
  %cond1013 = phi %union.rec* [ %327, %cond.true.976 ], [ %cond1011, %cond.end.1010 ]
  %342 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1014 = zext i8 %342 to i32
  store i32 %conv1014, i32* @zz_size, align 4
  %conv1015 = sext i32 %conv1014 to i64
  %cmp1016 = icmp uge i64 %conv1015, 265
  br i1 %cmp1016, label %if.then.1018, label %if.else.1020

if.then.1018:                                     ; preds = %cond.end.1012
  %343 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1019 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %343)
  br label %if.end.1037

if.else.1020:                                     ; preds = %cond.end.1012
  %344 = load i32, i32* @zz_size, align 4
  %idxprom1021 = sext i32 %344 to i64
  %arrayidx1022 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1021
  %345 = load %union.rec*, %union.rec** %arrayidx1022, align 8
  %cmp1023 = icmp eq %union.rec* %345, null
  br i1 %cmp1023, label %if.then.1025, label %if.else.1027

if.then.1025:                                     ; preds = %if.else.1020
  %346 = load i32, i32* @zz_size, align 4
  %347 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1026 = call %union.rec* @GetMemory(i32 %346, %struct.FILE_POS* %347)
  store %union.rec* %call1026, %union.rec** @zz_hold, align 8
  br label %if.end.1036

if.else.1027:                                     ; preds = %if.else.1020
  %348 = load i32, i32* @zz_size, align 4
  %idxprom1028 = sext i32 %348 to i64
  %arrayidx1029 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1028
  %349 = load %union.rec*, %union.rec** %arrayidx1029, align 8
  store %union.rec* %349, %union.rec** @zz_hold, align 8
  store %union.rec* %349, %union.rec** @zz_hold, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11030 = bitcast %union.rec* %350 to %struct.word_type*
  %olist1031 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11030, i32 0, i32 0
  %arrayidx1032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1031, i32 0, i64 0
  %opred1033 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1032, i32 0, i32 0
  %351 = load %union.rec*, %union.rec** %opred1033, align 8
  %352 = load i32, i32* @zz_size, align 4
  %idxprom1034 = sext i32 %352 to i64
  %arrayidx1035 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1034
  store %union.rec* %351, %union.rec** %arrayidx1035, align 8
  br label %if.end.1036

if.end.1036:                                      ; preds = %if.else.1027, %if.then.1025
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.end.1036, %if.then.1018
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11038 = bitcast %union.rec* %353 to %struct.word_type*
  %ou11039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11038, i32 0, i32 1
  %os111040 = bitcast %union.FIRST_UNION* %ou11039 to %struct.anon*
  %otype1041 = getelementptr inbounds %struct.anon, %struct.anon* %os111040, i32 0, i32 0
  store i8 0, i8* %otype1041, align 1
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11042 = bitcast %union.rec* %355 to %struct.word_type*
  %olist1043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11042, i32 0, i32 0
  %arrayidx1044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1043, i32 0, i64 1
  %osucc1045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1044, i32 0, i32 1
  store %union.rec* %354, %union.rec** %osucc1045, align 8
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11046 = bitcast %union.rec* %356 to %struct.word_type*
  %olist1047 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11046, i32 0, i32 0
  %arrayidx1048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1047, i32 0, i64 1
  %opred1049 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1048, i32 0, i32 0
  store %union.rec* %354, %union.rec** %opred1049, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11050 = bitcast %union.rec* %357 to %struct.word_type*
  %olist1051 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11050, i32 0, i32 0
  %arrayidx1052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1051, i32 0, i64 0
  %osucc1053 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1052, i32 0, i32 1
  store %union.rec* %354, %union.rec** %osucc1053, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11054 = bitcast %union.rec* %358 to %struct.word_type*
  %olist1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11054, i32 0, i32 0
  %arrayidx1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1055, i32 0, i64 0
  %opred1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1056, i32 0, i32 0
  store %union.rec* %354, %union.rec** %opred1057, align 8
  store %union.rec* %354, %union.rec** @xx_link, align 8
  %359 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %359, %union.rec** @zz_res, align 8
  %360 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %360, %union.rec** @zz_hold, align 8
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1058 = icmp eq %union.rec* %361, null
  br i1 %cmp1058, label %cond.true.1060, label %cond.false.1061

cond.true.1060:                                   ; preds = %if.end.1037
  %362 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1096

cond.false.1061:                                  ; preds = %if.end.1037
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1062 = icmp eq %union.rec* %363, null
  br i1 %cmp1062, label %cond.true.1064, label %cond.false.1065

cond.true.1064:                                   ; preds = %cond.false.1061
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1094

cond.false.1065:                                  ; preds = %cond.false.1061
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11066 = bitcast %union.rec* %365 to %struct.word_type*
  %olist1067 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11066, i32 0, i32 0
  %arrayidx1068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1067, i32 0, i64 0
  %opred1069 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1068, i32 0, i32 0
  %366 = load %union.rec*, %union.rec** %opred1069, align 8
  store %union.rec* %366, %union.rec** @zz_tmp, align 8
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11070 = bitcast %union.rec* %367 to %struct.word_type*
  %olist1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11070, i32 0, i32 0
  %arrayidx1072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1071, i32 0, i64 0
  %opred1073 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1072, i32 0, i32 0
  %368 = load %union.rec*, %union.rec** %opred1073, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11074 = bitcast %union.rec* %369 to %struct.word_type*
  %olist1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11074, i32 0, i32 0
  %arrayidx1076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1075, i32 0, i64 0
  %opred1077 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1076, i32 0, i32 0
  store %union.rec* %368, %union.rec** %opred1077, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11078 = bitcast %union.rec* %371 to %struct.word_type*
  %olist1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11078, i32 0, i32 0
  %arrayidx1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1079, i32 0, i64 0
  %opred1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1080, i32 0, i32 0
  %372 = load %union.rec*, %union.rec** %opred1081, align 8
  %os11082 = bitcast %union.rec* %372 to %struct.word_type*
  %olist1083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11082, i32 0, i32 0
  %arrayidx1084 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1083, i32 0, i64 0
  %osucc1085 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1084, i32 0, i32 1
  store %union.rec* %370, %union.rec** %osucc1085, align 8
  %373 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11086 = bitcast %union.rec* %374 to %struct.word_type*
  %olist1087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11086, i32 0, i32 0
  %arrayidx1088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1087, i32 0, i64 0
  %opred1089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1088, i32 0, i32 0
  store %union.rec* %373, %union.rec** %opred1089, align 8
  %375 = load %union.rec*, %union.rec** @zz_res, align 8
  %376 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11090 = bitcast %union.rec* %376 to %struct.word_type*
  %olist1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 0
  %arrayidx1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1091, i32 0, i64 0
  %osucc1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1092, i32 0, i32 1
  store %union.rec* %375, %union.rec** %osucc1093, align 8
  br label %cond.end.1094

cond.end.1094:                                    ; preds = %cond.false.1065, %cond.true.1064
  %cond1095 = phi %union.rec* [ %364, %cond.true.1064 ], [ %375, %cond.false.1065 ]
  br label %cond.end.1096

cond.end.1096:                                    ; preds = %cond.end.1094, %cond.true.1060
  %cond1097 = phi %union.rec* [ %362, %cond.true.1060 ], [ %cond1095, %cond.end.1094 ]
  %377 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %377, %union.rec** @zz_res, align 8
  %378 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %378, %union.rec** @zz_hold, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1098 = icmp eq %union.rec* %379, null
  br i1 %cmp1098, label %cond.true.1100, label %cond.false.1101

cond.true.1100:                                   ; preds = %cond.end.1096
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1136

cond.false.1101:                                  ; preds = %cond.end.1096
  %381 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1102 = icmp eq %union.rec* %381, null
  br i1 %cmp1102, label %cond.true.1104, label %cond.false.1105

cond.true.1104:                                   ; preds = %cond.false.1101
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1134

cond.false.1105:                                  ; preds = %cond.false.1101
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11106 = bitcast %union.rec* %383 to %struct.word_type*
  %olist1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11106, i32 0, i32 0
  %arrayidx1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1107, i32 0, i64 1
  %opred1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1108, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %opred1109, align 8
  store %union.rec* %384, %union.rec** @zz_tmp, align 8
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11110 = bitcast %union.rec* %385 to %struct.word_type*
  %olist1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11110, i32 0, i32 0
  %arrayidx1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1111, i32 0, i64 1
  %opred1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1112, i32 0, i32 0
  %386 = load %union.rec*, %union.rec** %opred1113, align 8
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11114 = bitcast %union.rec* %387 to %struct.word_type*
  %olist1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11114, i32 0, i32 0
  %arrayidx1116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1115, i32 0, i64 1
  %opred1117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1116, i32 0, i32 0
  store %union.rec* %386, %union.rec** %opred1117, align 8
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %389 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11118 = bitcast %union.rec* %389 to %struct.word_type*
  %olist1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11118, i32 0, i32 0
  %arrayidx1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1119, i32 0, i64 1
  %opred1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1120, i32 0, i32 0
  %390 = load %union.rec*, %union.rec** %opred1121, align 8
  %os11122 = bitcast %union.rec* %390 to %struct.word_type*
  %olist1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11122, i32 0, i32 0
  %arrayidx1124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1123, i32 0, i64 1
  %osucc1125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1124, i32 0, i32 1
  store %union.rec* %388, %union.rec** %osucc1125, align 8
  %391 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %392 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11126 = bitcast %union.rec* %392 to %struct.word_type*
  %olist1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11126, i32 0, i32 0
  %arrayidx1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1127, i32 0, i64 1
  %opred1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1128, i32 0, i32 0
  store %union.rec* %391, %union.rec** %opred1129, align 8
  %393 = load %union.rec*, %union.rec** @zz_res, align 8
  %394 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11130 = bitcast %union.rec* %394 to %struct.word_type*
  %olist1131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11130, i32 0, i32 0
  %arrayidx1132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1131, i32 0, i64 1
  %osucc1133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1132, i32 0, i32 1
  store %union.rec* %393, %union.rec** %osucc1133, align 8
  br label %cond.end.1134

cond.end.1134:                                    ; preds = %cond.false.1105, %cond.true.1104
  %cond1135 = phi %union.rec* [ %382, %cond.true.1104 ], [ %393, %cond.false.1105 ]
  br label %cond.end.1136

cond.end.1136:                                    ; preds = %cond.end.1134, %cond.true.1100
  %cond1137 = phi %union.rec* [ %380, %cond.true.1100 ], [ %cond1135, %cond.end.1134 ]
  %395 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %395)
  %arraydecay1138 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay1138, i8** %q, align 8
  %396 = load i8*, i8** %p, align 8
  %397 = load i8, i8* %396, align 1
  %idxprom1139 = zext i8 %397 to i64
  %398 = load i8*, i8** %uc, align 8
  %arrayidx1140 = getelementptr inbounds i8, i8* %398, i64 %idxprom1139
  %399 = load i8, i8* %arrayidx1140, align 1
  %400 = load i8*, i8** %q, align 8
  %incdec.ptr1141 = getelementptr inbounds i8, i8* %400, i32 1
  store i8* %incdec.ptr1141, i8** %q, align 8
  store i8 %399, i8* %400, align 1
  store i32 4, i32* %state, align 4
  br label %if.end.1144

if.else.1142:                                     ; preds = %sw.bb.394
  %401 = load i8*, i8** %p, align 8
  %402 = load i8, i8* %401, align 1
  %403 = load i8*, i8** %q, align 8
  %incdec.ptr1143 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %incdec.ptr1143, i8** %q, align 8
  store i8 %402, i8* %403, align 1
  br label %if.end.1144

if.end.1144:                                      ; preds = %if.else.1142, %cond.end.1136
  br label %sw.epilog

sw.bb.1145:                                       ; preds = %for.body.75
  %404 = load i8*, i8** %p, align 8
  %405 = load i8, i8* %404, align 1
  %idxprom1146 = zext i8 %405 to i64
  %406 = load i8*, i8** %uc, align 8
  %arrayidx1147 = getelementptr inbounds i8, i8* %406, i64 %idxprom1146
  %407 = load i8, i8* %arrayidx1147, align 1
  %conv1148 = zext i8 %407 to i32
  %cmp1149 = icmp ne i32 %conv1148, 0
  br i1 %cmp1149, label %if.then.1151, label %if.else.1155

if.then.1151:                                     ; preds = %sw.bb.1145
  %408 = load i8*, i8** %p, align 8
  %409 = load i8, i8* %408, align 1
  %idxprom1152 = zext i8 %409 to i64
  %410 = load i8*, i8** %uc, align 8
  %arrayidx1153 = getelementptr inbounds i8, i8* %410, i64 %idxprom1152
  %411 = load i8, i8* %arrayidx1153, align 1
  %412 = load i8*, i8** %q, align 8
  %incdec.ptr1154 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %incdec.ptr1154, i8** %q, align 8
  store i8 %411, i8* %412, align 1
  br label %if.end.1571

if.else.1155:                                     ; preds = %sw.bb.1145
  %arraydecay1156 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %413 = load i8*, i8** %q, align 8
  %414 = load %union.rec*, %union.rec** %x.addr, align 8
  %415 = load i32, i32* %small_font, align 4
  %call1157 = call %union.rec* @DoWord(i8* %arraydecay1156, i8* %413, %union.rec* %414, i32 %415)
  store %union.rec* %call1157, %union.rec** %tmp, align 8
  %416 = load %union.rec*, %union.rec** %x.addr, align 8
  %417 = load i32, i32* %vshift, align 4
  %418 = load %union.rec*, %union.rec** %tmp, align 8
  %call1158 = call %union.rec* @DoVShift(%union.rec* %416, i32 %417, %union.rec* %418)
  store %union.rec* %call1158, %union.rec** %new_y, align 8
  %419 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 24), align 1
  %conv1159 = zext i8 %419 to i32
  store i32 %conv1159, i32* @zz_size, align 4
  %conv1160 = sext i32 %conv1159 to i64
  %cmp1161 = icmp uge i64 %conv1160, 265
  br i1 %cmp1161, label %if.then.1163, label %if.else.1165

if.then.1163:                                     ; preds = %if.else.1155
  %420 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %420)
  br label %if.end.1182

if.else.1165:                                     ; preds = %if.else.1155
  %421 = load i32, i32* @zz_size, align 4
  %idxprom1166 = sext i32 %421 to i64
  %arrayidx1167 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1166
  %422 = load %union.rec*, %union.rec** %arrayidx1167, align 8
  %cmp1168 = icmp eq %union.rec* %422, null
  br i1 %cmp1168, label %if.then.1170, label %if.else.1172

if.then.1170:                                     ; preds = %if.else.1165
  %423 = load i32, i32* @zz_size, align 4
  %424 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1171 = call %union.rec* @GetMemory(i32 %423, %struct.FILE_POS* %424)
  store %union.rec* %call1171, %union.rec** @zz_hold, align 8
  br label %if.end.1181

if.else.1172:                                     ; preds = %if.else.1165
  %425 = load i32, i32* @zz_size, align 4
  %idxprom1173 = sext i32 %425 to i64
  %arrayidx1174 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1173
  %426 = load %union.rec*, %union.rec** %arrayidx1174, align 8
  store %union.rec* %426, %union.rec** @zz_hold, align 8
  store %union.rec* %426, %union.rec** @zz_hold, align 8
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11175 = bitcast %union.rec* %427 to %struct.word_type*
  %olist1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11175, i32 0, i32 0
  %arrayidx1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1176, i32 0, i64 0
  %opred1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1177, i32 0, i32 0
  %428 = load %union.rec*, %union.rec** %opred1178, align 8
  %429 = load i32, i32* @zz_size, align 4
  %idxprom1179 = sext i32 %429 to i64
  %arrayidx1180 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1179
  store %union.rec* %428, %union.rec** %arrayidx1180, align 8
  br label %if.end.1181

if.end.1181:                                      ; preds = %if.else.1172, %if.then.1170
  br label %if.end.1182

if.end.1182:                                      ; preds = %if.end.1181, %if.then.1163
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11183 = bitcast %union.rec* %430 to %struct.word_type*
  %ou11184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 1
  %os111185 = bitcast %union.FIRST_UNION* %ou11184 to %struct.anon*
  %otype1186 = getelementptr inbounds %struct.anon, %struct.anon* %os111185, i32 0, i32 0
  store i8 24, i8* %otype1186, align 1
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11187 = bitcast %union.rec* %432 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 1
  %osucc1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 1
  store %union.rec* %431, %union.rec** %osucc1190, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11191 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11191, i32 0, i32 0
  %arrayidx1193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1192, i32 0, i64 1
  %opred1194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1193, i32 0, i32 0
  store %union.rec* %431, %union.rec** %opred1194, align 8
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11195 = bitcast %union.rec* %434 to %struct.word_type*
  %olist1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11195, i32 0, i32 0
  %arrayidx1197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1196, i32 0, i64 0
  %osucc1198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1197, i32 0, i32 1
  store %union.rec* %431, %union.rec** %osucc1198, align 8
  %435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11199 = bitcast %union.rec* %435 to %struct.word_type*
  %olist1200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11199, i32 0, i32 0
  %arrayidx1201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1200, i32 0, i64 0
  %opred1202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1201, i32 0, i32 0
  store %union.rec* %431, %union.rec** %opred1202, align 8
  store %union.rec* %431, %union.rec** %new_x, align 8
  %436 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11203 = bitcast %union.rec* %436 to %struct.word_type*
  %ou11204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11203, i32 0, i32 1
  %ofpos1205 = bitcast %union.FIRST_UNION* %ou11204 to %struct.FILE_POS*
  %ofile_num1206 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1205, i32 0, i32 2
  %437 = load i16, i16* %ofile_num1206, align 2
  %438 = load %union.rec*, %union.rec** %new_x, align 8
  %os11207 = bitcast %union.rec* %438 to %struct.word_type*
  %ou11208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11207, i32 0, i32 1
  %ofpos1209 = bitcast %union.FIRST_UNION* %ou11208 to %struct.FILE_POS*
  %ofile_num1210 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1209, i32 0, i32 2
  store i16 %437, i16* %ofile_num1210, align 2
  %439 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11211 = bitcast %union.rec* %439 to %struct.word_type*
  %ou11212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11211, i32 0, i32 1
  %ofpos1213 = bitcast %union.FIRST_UNION* %ou11212 to %struct.FILE_POS*
  %oline_num1214 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1213, i32 0, i32 3
  %bf.load1215 = load i32, i32* %oline_num1214, align 4
  %bf.clear1216 = and i32 %bf.load1215, 1048575
  %440 = load %union.rec*, %union.rec** %new_x, align 8
  %os11217 = bitcast %union.rec* %440 to %struct.word_type*
  %ou11218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11217, i32 0, i32 1
  %ofpos1219 = bitcast %union.FIRST_UNION* %ou11218 to %struct.FILE_POS*
  %oline_num1220 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1219, i32 0, i32 3
  %bf.load1221 = load i32, i32* %oline_num1220, align 4
  %bf.value1222 = and i32 %bf.clear1216, 1048575
  %bf.clear1223 = and i32 %bf.load1221, -1048576
  %bf.set1224 = or i32 %bf.clear1223, %bf.value1222
  store i32 %bf.set1224, i32* %oline_num1220, align 4
  %441 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11225 = bitcast %union.rec* %441 to %struct.word_type*
  %ou11226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11225, i32 0, i32 1
  %ofpos1227 = bitcast %union.FIRST_UNION* %ou11226 to %struct.FILE_POS*
  %ocol_num1228 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1227, i32 0, i32 3
  %bf.load1229 = load i32, i32* %ocol_num1228, align 4
  %bf.lshr1230 = lshr i32 %bf.load1229, 20
  %442 = load %union.rec*, %union.rec** %new_x, align 8
  %os11231 = bitcast %union.rec* %442 to %struct.word_type*
  %ou11232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11231, i32 0, i32 1
  %ofpos1233 = bitcast %union.FIRST_UNION* %ou11232 to %struct.FILE_POS*
  %ocol_num1234 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1233, i32 0, i32 3
  %bf.load1235 = load i32, i32* %ocol_num1234, align 4
  %bf.value1236 = and i32 %bf.lshr1230, 4095
  %bf.shl1237 = shl i32 %bf.value1236, 20
  %bf.clear1238 = and i32 %bf.load1235, 1048575
  %bf.set1239 = or i32 %bf.clear1238, %bf.shl1237
  store i32 %bf.set1239, i32* %ocol_num1234, align 4
  %443 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv1240 = zext i8 %443 to i32
  store i32 %conv1240, i32* @zz_size, align 4
  %conv1241 = sext i32 %conv1240 to i64
  %cmp1242 = icmp uge i64 %conv1241, 265
  br i1 %cmp1242, label %if.then.1244, label %if.else.1246

if.then.1244:                                     ; preds = %if.end.1182
  %444 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1245 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %444)
  br label %if.end.1263

if.else.1246:                                     ; preds = %if.end.1182
  %445 = load i32, i32* @zz_size, align 4
  %idxprom1247 = sext i32 %445 to i64
  %arrayidx1248 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1247
  %446 = load %union.rec*, %union.rec** %arrayidx1248, align 8
  %cmp1249 = icmp eq %union.rec* %446, null
  br i1 %cmp1249, label %if.then.1251, label %if.else.1253

if.then.1251:                                     ; preds = %if.else.1246
  %447 = load i32, i32* @zz_size, align 4
  %448 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1252 = call %union.rec* @GetMemory(i32 %447, %struct.FILE_POS* %448)
  store %union.rec* %call1252, %union.rec** @zz_hold, align 8
  br label %if.end.1262

if.else.1253:                                     ; preds = %if.else.1246
  %449 = load i32, i32* @zz_size, align 4
  %idxprom1254 = sext i32 %449 to i64
  %arrayidx1255 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1254
  %450 = load %union.rec*, %union.rec** %arrayidx1255, align 8
  store %union.rec* %450, %union.rec** @zz_hold, align 8
  store %union.rec* %450, %union.rec** @zz_hold, align 8
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11256 = bitcast %union.rec* %451 to %struct.word_type*
  %olist1257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11256, i32 0, i32 0
  %arrayidx1258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1257, i32 0, i64 0
  %opred1259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1258, i32 0, i32 0
  %452 = load %union.rec*, %union.rec** %opred1259, align 8
  %453 = load i32, i32* @zz_size, align 4
  %idxprom1260 = sext i32 %453 to i64
  %arrayidx1261 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1260
  store %union.rec* %452, %union.rec** %arrayidx1261, align 8
  br label %if.end.1262

if.end.1262:                                      ; preds = %if.else.1253, %if.then.1251
  br label %if.end.1263

if.end.1263:                                      ; preds = %if.end.1262, %if.then.1244
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11264 = bitcast %union.rec* %454 to %struct.word_type*
  %ou11265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11264, i32 0, i32 1
  %os111266 = bitcast %union.FIRST_UNION* %ou11265 to %struct.anon*
  %otype1267 = getelementptr inbounds %struct.anon, %struct.anon* %os111266, i32 0, i32 0
  store i8 17, i8* %otype1267, align 1
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11268 = bitcast %union.rec* %456 to %struct.word_type*
  %olist1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11268, i32 0, i32 0
  %arrayidx1270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1269, i32 0, i64 1
  %osucc1271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1270, i32 0, i32 1
  store %union.rec* %455, %union.rec** %osucc1271, align 8
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11272 = bitcast %union.rec* %457 to %struct.word_type*
  %olist1273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11272, i32 0, i32 0
  %arrayidx1274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1273, i32 0, i64 1
  %opred1275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1274, i32 0, i32 0
  store %union.rec* %455, %union.rec** %opred1275, align 8
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11276 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11276, i32 0, i32 0
  %arrayidx1278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1277, i32 0, i64 0
  %osucc1279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1278, i32 0, i32 1
  store %union.rec* %455, %union.rec** %osucc1279, align 8
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11280 = bitcast %union.rec* %459 to %struct.word_type*
  %olist1281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11280, i32 0, i32 0
  %arrayidx1282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1281, i32 0, i64 0
  %opred1283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1282, i32 0, i32 0
  store %union.rec* %455, %union.rec** %opred1283, align 8
  store %union.rec* %455, %union.rec** %new_acat, align 8
  %460 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11284 = bitcast %union.rec* %460 to %struct.word_type*
  %ou11285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11284, i32 0, i32 1
  %ofpos1286 = bitcast %union.FIRST_UNION* %ou11285 to %struct.FILE_POS*
  %ofile_num1287 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1286, i32 0, i32 2
  %461 = load i16, i16* %ofile_num1287, align 2
  %462 = load %union.rec*, %union.rec** %new_acat, align 8
  %os11288 = bitcast %union.rec* %462 to %struct.word_type*
  %ou11289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11288, i32 0, i32 1
  %ofpos1290 = bitcast %union.FIRST_UNION* %ou11289 to %struct.FILE_POS*
  %ofile_num1291 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1290, i32 0, i32 2
  store i16 %461, i16* %ofile_num1291, align 2
  %463 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11292 = bitcast %union.rec* %463 to %struct.word_type*
  %ou11293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11292, i32 0, i32 1
  %ofpos1294 = bitcast %union.FIRST_UNION* %ou11293 to %struct.FILE_POS*
  %oline_num1295 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1294, i32 0, i32 3
  %bf.load1296 = load i32, i32* %oline_num1295, align 4
  %bf.clear1297 = and i32 %bf.load1296, 1048575
  %464 = load %union.rec*, %union.rec** %new_acat, align 8
  %os11298 = bitcast %union.rec* %464 to %struct.word_type*
  %ou11299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11298, i32 0, i32 1
  %ofpos1300 = bitcast %union.FIRST_UNION* %ou11299 to %struct.FILE_POS*
  %oline_num1301 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1300, i32 0, i32 3
  %bf.load1302 = load i32, i32* %oline_num1301, align 4
  %bf.value1303 = and i32 %bf.clear1297, 1048575
  %bf.clear1304 = and i32 %bf.load1302, -1048576
  %bf.set1305 = or i32 %bf.clear1304, %bf.value1303
  store i32 %bf.set1305, i32* %oline_num1301, align 4
  %465 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11306 = bitcast %union.rec* %465 to %struct.word_type*
  %ou11307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 1
  %ofpos1308 = bitcast %union.FIRST_UNION* %ou11307 to %struct.FILE_POS*
  %ocol_num1309 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1308, i32 0, i32 3
  %bf.load1310 = load i32, i32* %ocol_num1309, align 4
  %bf.lshr1311 = lshr i32 %bf.load1310, 20
  %466 = load %union.rec*, %union.rec** %new_acat, align 8
  %os11312 = bitcast %union.rec* %466 to %struct.word_type*
  %ou11313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11312, i32 0, i32 1
  %ofpos1314 = bitcast %union.FIRST_UNION* %ou11313 to %struct.FILE_POS*
  %ocol_num1315 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos1314, i32 0, i32 3
  %bf.load1316 = load i32, i32* %ocol_num1315, align 4
  %bf.value1317 = and i32 %bf.lshr1311, 4095
  %bf.shl1318 = shl i32 %bf.value1317, 20
  %bf.clear1319 = and i32 %bf.load1316, 1048575
  %bf.set1320 = or i32 %bf.clear1319, %bf.shl1318
  store i32 %bf.set1320, i32* %ocol_num1315, align 4
  %467 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1321 = zext i8 %467 to i32
  store i32 %conv1321, i32* @zz_size, align 4
  %conv1322 = sext i32 %conv1321 to i64
  %cmp1323 = icmp uge i64 %conv1322, 265
  br i1 %cmp1323, label %if.then.1325, label %if.else.1327

if.then.1325:                                     ; preds = %if.end.1263
  %468 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1326 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %468)
  br label %if.end.1344

if.else.1327:                                     ; preds = %if.end.1263
  %469 = load i32, i32* @zz_size, align 4
  %idxprom1328 = sext i32 %469 to i64
  %arrayidx1329 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1328
  %470 = load %union.rec*, %union.rec** %arrayidx1329, align 8
  %cmp1330 = icmp eq %union.rec* %470, null
  br i1 %cmp1330, label %if.then.1332, label %if.else.1334

if.then.1332:                                     ; preds = %if.else.1327
  %471 = load i32, i32* @zz_size, align 4
  %472 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1333 = call %union.rec* @GetMemory(i32 %471, %struct.FILE_POS* %472)
  store %union.rec* %call1333, %union.rec** @zz_hold, align 8
  br label %if.end.1343

if.else.1334:                                     ; preds = %if.else.1327
  %473 = load i32, i32* @zz_size, align 4
  %idxprom1335 = sext i32 %473 to i64
  %arrayidx1336 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1335
  %474 = load %union.rec*, %union.rec** %arrayidx1336, align 8
  store %union.rec* %474, %union.rec** @zz_hold, align 8
  store %union.rec* %474, %union.rec** @zz_hold, align 8
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11337 = bitcast %union.rec* %475 to %struct.word_type*
  %olist1338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11337, i32 0, i32 0
  %arrayidx1339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1338, i32 0, i64 0
  %opred1340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1339, i32 0, i32 0
  %476 = load %union.rec*, %union.rec** %opred1340, align 8
  %477 = load i32, i32* @zz_size, align 4
  %idxprom1341 = sext i32 %477 to i64
  %arrayidx1342 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1341
  store %union.rec* %476, %union.rec** %arrayidx1342, align 8
  br label %if.end.1343

if.end.1343:                                      ; preds = %if.else.1334, %if.then.1332
  br label %if.end.1344

if.end.1344:                                      ; preds = %if.end.1343, %if.then.1325
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11345 = bitcast %union.rec* %478 to %struct.word_type*
  %ou11346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11345, i32 0, i32 1
  %os111347 = bitcast %union.FIRST_UNION* %ou11346 to %struct.anon*
  %otype1348 = getelementptr inbounds %struct.anon, %struct.anon* %os111347, i32 0, i32 0
  store i8 0, i8* %otype1348, align 1
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11349 = bitcast %union.rec* %480 to %struct.word_type*
  %olist1350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11349, i32 0, i32 0
  %arrayidx1351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1350, i32 0, i64 1
  %osucc1352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1351, i32 0, i32 1
  store %union.rec* %479, %union.rec** %osucc1352, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11353 = bitcast %union.rec* %481 to %struct.word_type*
  %olist1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11353, i32 0, i32 0
  %arrayidx1355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1354, i32 0, i64 1
  %opred1356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1355, i32 0, i32 0
  store %union.rec* %479, %union.rec** %opred1356, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11357 = bitcast %union.rec* %482 to %struct.word_type*
  %olist1358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11357, i32 0, i32 0
  %arrayidx1359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1358, i32 0, i64 0
  %osucc1360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1359, i32 0, i32 1
  store %union.rec* %479, %union.rec** %osucc1360, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11361 = bitcast %union.rec* %483 to %struct.word_type*
  %olist1362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11361, i32 0, i32 0
  %arrayidx1363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1362, i32 0, i64 0
  %opred1364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1363, i32 0, i32 0
  store %union.rec* %479, %union.rec** %opred1364, align 8
  store %union.rec* %479, %union.rec** @xx_link, align 8
  %484 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %484, %union.rec** @zz_res, align 8
  %485 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %485, %union.rec** @zz_hold, align 8
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1365 = icmp eq %union.rec* %486, null
  br i1 %cmp1365, label %cond.true.1367, label %cond.false.1368

cond.true.1367:                                   ; preds = %if.end.1344
  %487 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1403

cond.false.1368:                                  ; preds = %if.end.1344
  %488 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1369 = icmp eq %union.rec* %488, null
  br i1 %cmp1369, label %cond.true.1371, label %cond.false.1372

cond.true.1371:                                   ; preds = %cond.false.1368
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1401

cond.false.1372:                                  ; preds = %cond.false.1368
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11373 = bitcast %union.rec* %490 to %struct.word_type*
  %olist1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11373, i32 0, i32 0
  %arrayidx1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1374, i32 0, i64 0
  %opred1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1375, i32 0, i32 0
  %491 = load %union.rec*, %union.rec** %opred1376, align 8
  store %union.rec* %491, %union.rec** @zz_tmp, align 8
  %492 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11377 = bitcast %union.rec* %492 to %struct.word_type*
  %olist1378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11377, i32 0, i32 0
  %arrayidx1379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1378, i32 0, i64 0
  %opred1380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1379, i32 0, i32 0
  %493 = load %union.rec*, %union.rec** %opred1380, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11381 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11381, i32 0, i32 0
  %arrayidx1383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1382, i32 0, i64 0
  %opred1384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1383, i32 0, i32 0
  store %union.rec* %493, %union.rec** %opred1384, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %496 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11385 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11385, i32 0, i32 0
  %arrayidx1387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1386, i32 0, i64 0
  %opred1388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1387, i32 0, i32 0
  %497 = load %union.rec*, %union.rec** %opred1388, align 8
  %os11389 = bitcast %union.rec* %497 to %struct.word_type*
  %olist1390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11389, i32 0, i32 0
  %arrayidx1391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1390, i32 0, i64 0
  %osucc1392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1391, i32 0, i32 1
  store %union.rec* %495, %union.rec** %osucc1392, align 8
  %498 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %499 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11393 = bitcast %union.rec* %499 to %struct.word_type*
  %olist1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11393, i32 0, i32 0
  %arrayidx1395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1394, i32 0, i64 0
  %opred1396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1395, i32 0, i32 0
  store %union.rec* %498, %union.rec** %opred1396, align 8
  %500 = load %union.rec*, %union.rec** @zz_res, align 8
  %501 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11397 = bitcast %union.rec* %501 to %struct.word_type*
  %olist1398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11397, i32 0, i32 0
  %arrayidx1399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1398, i32 0, i64 0
  %osucc1400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1399, i32 0, i32 1
  store %union.rec* %500, %union.rec** %osucc1400, align 8
  br label %cond.end.1401

cond.end.1401:                                    ; preds = %cond.false.1372, %cond.true.1371
  %cond1402 = phi %union.rec* [ %489, %cond.true.1371 ], [ %500, %cond.false.1372 ]
  br label %cond.end.1403

cond.end.1403:                                    ; preds = %cond.end.1401, %cond.true.1367
  %cond1404 = phi %union.rec* [ %487, %cond.true.1367 ], [ %cond1402, %cond.end.1401 ]
  %502 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %502, %union.rec** @zz_res, align 8
  %503 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %503, %union.rec** @zz_hold, align 8
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1405 = icmp eq %union.rec* %504, null
  br i1 %cmp1405, label %cond.true.1407, label %cond.false.1408

cond.true.1407:                                   ; preds = %cond.end.1403
  %505 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1443

cond.false.1408:                                  ; preds = %cond.end.1403
  %506 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1409 = icmp eq %union.rec* %506, null
  br i1 %cmp1409, label %cond.true.1411, label %cond.false.1412

cond.true.1411:                                   ; preds = %cond.false.1408
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1441

cond.false.1412:                                  ; preds = %cond.false.1408
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11413 = bitcast %union.rec* %508 to %struct.word_type*
  %olist1414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11413, i32 0, i32 0
  %arrayidx1415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1414, i32 0, i64 1
  %opred1416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1415, i32 0, i32 0
  %509 = load %union.rec*, %union.rec** %opred1416, align 8
  store %union.rec* %509, %union.rec** @zz_tmp, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11417 = bitcast %union.rec* %510 to %struct.word_type*
  %olist1418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11417, i32 0, i32 0
  %arrayidx1419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1418, i32 0, i64 1
  %opred1420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1419, i32 0, i32 0
  %511 = load %union.rec*, %union.rec** %opred1420, align 8
  %512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11421 = bitcast %union.rec* %512 to %struct.word_type*
  %olist1422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11421, i32 0, i32 0
  %arrayidx1423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1422, i32 0, i64 1
  %opred1424 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1423, i32 0, i32 0
  store %union.rec* %511, %union.rec** %opred1424, align 8
  %513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %514 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11425 = bitcast %union.rec* %514 to %struct.word_type*
  %olist1426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11425, i32 0, i32 0
  %arrayidx1427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1426, i32 0, i64 1
  %opred1428 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1427, i32 0, i32 0
  %515 = load %union.rec*, %union.rec** %opred1428, align 8
  %os11429 = bitcast %union.rec* %515 to %struct.word_type*
  %olist1430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11429, i32 0, i32 0
  %arrayidx1431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1430, i32 0, i64 1
  %osucc1432 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1431, i32 0, i32 1
  store %union.rec* %513, %union.rec** %osucc1432, align 8
  %516 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %517 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11433 = bitcast %union.rec* %517 to %struct.word_type*
  %olist1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11433, i32 0, i32 0
  %arrayidx1435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1434, i32 0, i64 1
  %opred1436 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1435, i32 0, i32 0
  store %union.rec* %516, %union.rec** %opred1436, align 8
  %518 = load %union.rec*, %union.rec** @zz_res, align 8
  %519 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11437 = bitcast %union.rec* %519 to %struct.word_type*
  %olist1438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11437, i32 0, i32 0
  %arrayidx1439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1438, i32 0, i64 1
  %osucc1440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1439, i32 0, i32 1
  store %union.rec* %518, %union.rec** %osucc1440, align 8
  br label %cond.end.1441

cond.end.1441:                                    ; preds = %cond.false.1412, %cond.true.1411
  %cond1442 = phi %union.rec* [ %507, %cond.true.1411 ], [ %518, %cond.false.1412 ]
  br label %cond.end.1443

cond.end.1443:                                    ; preds = %cond.end.1441, %cond.true.1407
  %cond1444 = phi %union.rec* [ %505, %cond.true.1407 ], [ %cond1442, %cond.end.1441 ]
  %520 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1445 = zext i8 %520 to i32
  store i32 %conv1445, i32* @zz_size, align 4
  %conv1446 = sext i32 %conv1445 to i64
  %cmp1447 = icmp uge i64 %conv1446, 265
  br i1 %cmp1447, label %if.then.1449, label %if.else.1451

if.then.1449:                                     ; preds = %cond.end.1443
  %521 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1450 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %521)
  br label %if.end.1468

if.else.1451:                                     ; preds = %cond.end.1443
  %522 = load i32, i32* @zz_size, align 4
  %idxprom1452 = sext i32 %522 to i64
  %arrayidx1453 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1452
  %523 = load %union.rec*, %union.rec** %arrayidx1453, align 8
  %cmp1454 = icmp eq %union.rec* %523, null
  br i1 %cmp1454, label %if.then.1456, label %if.else.1458

if.then.1456:                                     ; preds = %if.else.1451
  %524 = load i32, i32* @zz_size, align 4
  %525 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1457 = call %union.rec* @GetMemory(i32 %524, %struct.FILE_POS* %525)
  store %union.rec* %call1457, %union.rec** @zz_hold, align 8
  br label %if.end.1467

if.else.1458:                                     ; preds = %if.else.1451
  %526 = load i32, i32* @zz_size, align 4
  %idxprom1459 = sext i32 %526 to i64
  %arrayidx1460 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1459
  %527 = load %union.rec*, %union.rec** %arrayidx1460, align 8
  store %union.rec* %527, %union.rec** @zz_hold, align 8
  store %union.rec* %527, %union.rec** @zz_hold, align 8
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11461 = bitcast %union.rec* %528 to %struct.word_type*
  %olist1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11461, i32 0, i32 0
  %arrayidx1463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1462, i32 0, i64 0
  %opred1464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1463, i32 0, i32 0
  %529 = load %union.rec*, %union.rec** %opred1464, align 8
  %530 = load i32, i32* @zz_size, align 4
  %idxprom1465 = sext i32 %530 to i64
  %arrayidx1466 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1465
  store %union.rec* %529, %union.rec** %arrayidx1466, align 8
  br label %if.end.1467

if.end.1467:                                      ; preds = %if.else.1458, %if.then.1456
  br label %if.end.1468

if.end.1468:                                      ; preds = %if.end.1467, %if.then.1449
  %531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11469 = bitcast %union.rec* %531 to %struct.word_type*
  %ou11470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11469, i32 0, i32 1
  %os111471 = bitcast %union.FIRST_UNION* %ou11470 to %struct.anon*
  %otype1472 = getelementptr inbounds %struct.anon, %struct.anon* %os111471, i32 0, i32 0
  store i8 0, i8* %otype1472, align 1
  %532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11473 = bitcast %union.rec* %533 to %struct.word_type*
  %olist1474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11473, i32 0, i32 0
  %arrayidx1475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1474, i32 0, i64 1
  %osucc1476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1475, i32 0, i32 1
  store %union.rec* %532, %union.rec** %osucc1476, align 8
  %534 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11477 = bitcast %union.rec* %534 to %struct.word_type*
  %olist1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11477, i32 0, i32 0
  %arrayidx1479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1478, i32 0, i64 1
  %opred1480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1479, i32 0, i32 0
  store %union.rec* %532, %union.rec** %opred1480, align 8
  %535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11481 = bitcast %union.rec* %535 to %struct.word_type*
  %olist1482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11481, i32 0, i32 0
  %arrayidx1483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1482, i32 0, i64 0
  %osucc1484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1483, i32 0, i32 1
  store %union.rec* %532, %union.rec** %osucc1484, align 8
  %536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11485 = bitcast %union.rec* %536 to %struct.word_type*
  %olist1486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11485, i32 0, i32 0
  %arrayidx1487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1486, i32 0, i64 0
  %opred1488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1487, i32 0, i32 0
  store %union.rec* %532, %union.rec** %opred1488, align 8
  store %union.rec* %532, %union.rec** @xx_link, align 8
  %537 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %537, %union.rec** @zz_res, align 8
  %538 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %538, %union.rec** @zz_hold, align 8
  %539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1489 = icmp eq %union.rec* %539, null
  br i1 %cmp1489, label %cond.true.1491, label %cond.false.1492

cond.true.1491:                                   ; preds = %if.end.1468
  %540 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1527

cond.false.1492:                                  ; preds = %if.end.1468
  %541 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1493 = icmp eq %union.rec* %541, null
  br i1 %cmp1493, label %cond.true.1495, label %cond.false.1496

cond.true.1495:                                   ; preds = %cond.false.1492
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1525

cond.false.1496:                                  ; preds = %cond.false.1492
  %543 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11497 = bitcast %union.rec* %543 to %struct.word_type*
  %olist1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11497, i32 0, i32 0
  %arrayidx1499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1498, i32 0, i64 0
  %opred1500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1499, i32 0, i32 0
  %544 = load %union.rec*, %union.rec** %opred1500, align 8
  store %union.rec* %544, %union.rec** @zz_tmp, align 8
  %545 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11501 = bitcast %union.rec* %545 to %struct.word_type*
  %olist1502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11501, i32 0, i32 0
  %arrayidx1503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1502, i32 0, i64 0
  %opred1504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1503, i32 0, i32 0
  %546 = load %union.rec*, %union.rec** %opred1504, align 8
  %547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11505 = bitcast %union.rec* %547 to %struct.word_type*
  %olist1506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11505, i32 0, i32 0
  %arrayidx1507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1506, i32 0, i64 0
  %opred1508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1507, i32 0, i32 0
  store %union.rec* %546, %union.rec** %opred1508, align 8
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %549 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11509 = bitcast %union.rec* %549 to %struct.word_type*
  %olist1510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11509, i32 0, i32 0
  %arrayidx1511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1510, i32 0, i64 0
  %opred1512 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1511, i32 0, i32 0
  %550 = load %union.rec*, %union.rec** %opred1512, align 8
  %os11513 = bitcast %union.rec* %550 to %struct.word_type*
  %olist1514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11513, i32 0, i32 0
  %arrayidx1515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1514, i32 0, i64 0
  %osucc1516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1515, i32 0, i32 1
  store %union.rec* %548, %union.rec** %osucc1516, align 8
  %551 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %552 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11517 = bitcast %union.rec* %552 to %struct.word_type*
  %olist1518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11517, i32 0, i32 0
  %arrayidx1519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1518, i32 0, i64 0
  %opred1520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1519, i32 0, i32 0
  store %union.rec* %551, %union.rec** %opred1520, align 8
  %553 = load %union.rec*, %union.rec** @zz_res, align 8
  %554 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11521 = bitcast %union.rec* %554 to %struct.word_type*
  %olist1522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11521, i32 0, i32 0
  %arrayidx1523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1522, i32 0, i64 0
  %osucc1524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1523, i32 0, i32 1
  store %union.rec* %553, %union.rec** %osucc1524, align 8
  br label %cond.end.1525

cond.end.1525:                                    ; preds = %cond.false.1496, %cond.true.1495
  %cond1526 = phi %union.rec* [ %542, %cond.true.1495 ], [ %553, %cond.false.1496 ]
  br label %cond.end.1527

cond.end.1527:                                    ; preds = %cond.end.1525, %cond.true.1491
  %cond1528 = phi %union.rec* [ %540, %cond.true.1491 ], [ %cond1526, %cond.end.1525 ]
  %555 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %555, %union.rec** @zz_res, align 8
  %556 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %556, %union.rec** @zz_hold, align 8
  %557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1529 = icmp eq %union.rec* %557, null
  br i1 %cmp1529, label %cond.true.1531, label %cond.false.1532

cond.true.1531:                                   ; preds = %cond.end.1527
  %558 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1567

cond.false.1532:                                  ; preds = %cond.end.1527
  %559 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1533 = icmp eq %union.rec* %559, null
  br i1 %cmp1533, label %cond.true.1535, label %cond.false.1536

cond.true.1535:                                   ; preds = %cond.false.1532
  %560 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1565

cond.false.1536:                                  ; preds = %cond.false.1532
  %561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11537 = bitcast %union.rec* %561 to %struct.word_type*
  %olist1538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11537, i32 0, i32 0
  %arrayidx1539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1538, i32 0, i64 1
  %opred1540 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1539, i32 0, i32 0
  %562 = load %union.rec*, %union.rec** %opred1540, align 8
  store %union.rec* %562, %union.rec** @zz_tmp, align 8
  %563 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11541 = bitcast %union.rec* %563 to %struct.word_type*
  %olist1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11541, i32 0, i32 0
  %arrayidx1543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1542, i32 0, i64 1
  %opred1544 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1543, i32 0, i32 0
  %564 = load %union.rec*, %union.rec** %opred1544, align 8
  %565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11545 = bitcast %union.rec* %565 to %struct.word_type*
  %olist1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11545, i32 0, i32 0
  %arrayidx1547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1546, i32 0, i64 1
  %opred1548 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1547, i32 0, i32 0
  store %union.rec* %564, %union.rec** %opred1548, align 8
  %566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %567 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11549 = bitcast %union.rec* %567 to %struct.word_type*
  %olist1550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11549, i32 0, i32 0
  %arrayidx1551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1550, i32 0, i64 1
  %opred1552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1551, i32 0, i32 0
  %568 = load %union.rec*, %union.rec** %opred1552, align 8
  %os11553 = bitcast %union.rec* %568 to %struct.word_type*
  %olist1554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11553, i32 0, i32 0
  %arrayidx1555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1554, i32 0, i64 1
  %osucc1556 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1555, i32 0, i32 1
  store %union.rec* %566, %union.rec** %osucc1556, align 8
  %569 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %570 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11557 = bitcast %union.rec* %570 to %struct.word_type*
  %olist1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11557, i32 0, i32 0
  %arrayidx1559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1558, i32 0, i64 1
  %opred1560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1559, i32 0, i32 0
  store %union.rec* %569, %union.rec** %opred1560, align 8
  %571 = load %union.rec*, %union.rec** @zz_res, align 8
  %572 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11561 = bitcast %union.rec* %572 to %struct.word_type*
  %olist1562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11561, i32 0, i32 0
  %arrayidx1563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1562, i32 0, i64 1
  %osucc1564 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1563, i32 0, i32 1
  store %union.rec* %571, %union.rec** %osucc1564, align 8
  br label %cond.end.1565

cond.end.1565:                                    ; preds = %cond.false.1536, %cond.true.1535
  %cond1566 = phi %union.rec* [ %560, %cond.true.1535 ], [ %571, %cond.false.1536 ]
  br label %cond.end.1567

cond.end.1567:                                    ; preds = %cond.end.1565, %cond.true.1531
  %cond1568 = phi %union.rec* [ %558, %cond.true.1531 ], [ %cond1566, %cond.end.1565 ]
  %573 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %573)
  %arraydecay1569 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay1569, i8** %q, align 8
  %574 = load i8*, i8** %p, align 8
  %575 = load i8, i8* %574, align 1
  %576 = load i8*, i8** %q, align 8
  %incdec.ptr1570 = getelementptr inbounds i8, i8* %576, i32 1
  store i8* %incdec.ptr1570, i8** %q, align 8
  store i8 %575, i8* %576, align 1
  store i32 3, i32* %state, align 4
  br label %if.end.1571

if.end.1571:                                      ; preds = %cond.end.1567, %if.then.1151
  br label %sw.epilog

sw.bb.1572:                                       ; preds = %for.body.75
  %577 = load i8*, i8** %p, align 8
  %578 = load i8, i8* %577, align 1
  %idxprom1573 = zext i8 %578 to i64
  %579 = load i8*, i8** %uc, align 8
  %arrayidx1574 = getelementptr inbounds i8, i8* %579, i64 %idxprom1573
  %580 = load i8, i8* %arrayidx1574, align 1
  %conv1575 = zext i8 %580 to i32
  %cmp1576 = icmp ne i32 %conv1575, 0
  br i1 %cmp1576, label %if.then.1578, label %if.else.1714

if.then.1578:                                     ; preds = %sw.bb.1572
  %arraydecay1579 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %581 = load i8*, i8** %q, align 8
  %582 = load %union.rec*, %union.rec** %x.addr, align 8
  %583 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11580 = bitcast %union.rec* %583 to %struct.word_type*
  %ou21581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11580, i32 0, i32 2
  %os221582 = bitcast %union.SECOND_UNION* %ou21581 to %struct.anon.1*
  %584 = bitcast %struct.anon.1* %os221582 to i32*
  %bf.load1583 = load i32, i32* %584, align 4
  %bf.clear1584 = and i32 %bf.load1583, 4095
  %call1585 = call %union.rec* @DoWord(i8* %arraydecay1579, i8* %581, %union.rec* %582, i32 %bf.clear1584)
  store %union.rec* %call1585, %union.rec** %new_y, align 8
  %585 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1586 = zext i8 %585 to i32
  store i32 %conv1586, i32* @zz_size, align 4
  %conv1587 = sext i32 %conv1586 to i64
  %cmp1588 = icmp uge i64 %conv1587, 265
  br i1 %cmp1588, label %if.then.1590, label %if.else.1592

if.then.1590:                                     ; preds = %if.then.1578
  %586 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1591 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %586)
  br label %if.end.1609

if.else.1592:                                     ; preds = %if.then.1578
  %587 = load i32, i32* @zz_size, align 4
  %idxprom1593 = sext i32 %587 to i64
  %arrayidx1594 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1593
  %588 = load %union.rec*, %union.rec** %arrayidx1594, align 8
  %cmp1595 = icmp eq %union.rec* %588, null
  br i1 %cmp1595, label %if.then.1597, label %if.else.1599

if.then.1597:                                     ; preds = %if.else.1592
  %589 = load i32, i32* @zz_size, align 4
  %590 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1598 = call %union.rec* @GetMemory(i32 %589, %struct.FILE_POS* %590)
  store %union.rec* %call1598, %union.rec** @zz_hold, align 8
  br label %if.end.1608

if.else.1599:                                     ; preds = %if.else.1592
  %591 = load i32, i32* @zz_size, align 4
  %idxprom1600 = sext i32 %591 to i64
  %arrayidx1601 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1600
  %592 = load %union.rec*, %union.rec** %arrayidx1601, align 8
  store %union.rec* %592, %union.rec** @zz_hold, align 8
  store %union.rec* %592, %union.rec** @zz_hold, align 8
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11602 = bitcast %union.rec* %593 to %struct.word_type*
  %olist1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11602, i32 0, i32 0
  %arrayidx1604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1603, i32 0, i64 0
  %opred1605 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1604, i32 0, i32 0
  %594 = load %union.rec*, %union.rec** %opred1605, align 8
  %595 = load i32, i32* @zz_size, align 4
  %idxprom1606 = sext i32 %595 to i64
  %arrayidx1607 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1606
  store %union.rec* %594, %union.rec** %arrayidx1607, align 8
  br label %if.end.1608

if.end.1608:                                      ; preds = %if.else.1599, %if.then.1597
  br label %if.end.1609

if.end.1609:                                      ; preds = %if.end.1608, %if.then.1590
  %596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11610 = bitcast %union.rec* %596 to %struct.word_type*
  %ou11611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11610, i32 0, i32 1
  %os111612 = bitcast %union.FIRST_UNION* %ou11611 to %struct.anon*
  %otype1613 = getelementptr inbounds %struct.anon, %struct.anon* %os111612, i32 0, i32 0
  store i8 0, i8* %otype1613, align 1
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11614 = bitcast %union.rec* %598 to %struct.word_type*
  %olist1615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11614, i32 0, i32 0
  %arrayidx1616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1615, i32 0, i64 1
  %osucc1617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1616, i32 0, i32 1
  store %union.rec* %597, %union.rec** %osucc1617, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11618 = bitcast %union.rec* %599 to %struct.word_type*
  %olist1619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11618, i32 0, i32 0
  %arrayidx1620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1619, i32 0, i64 1
  %opred1621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1620, i32 0, i32 0
  store %union.rec* %597, %union.rec** %opred1621, align 8
  %600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11622 = bitcast %union.rec* %600 to %struct.word_type*
  %olist1623 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11622, i32 0, i32 0
  %arrayidx1624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1623, i32 0, i64 0
  %osucc1625 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1624, i32 0, i32 1
  store %union.rec* %597, %union.rec** %osucc1625, align 8
  %601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11626 = bitcast %union.rec* %601 to %struct.word_type*
  %olist1627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11626, i32 0, i32 0
  %arrayidx1628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1627, i32 0, i64 0
  %opred1629 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1628, i32 0, i32 0
  store %union.rec* %597, %union.rec** %opred1629, align 8
  store %union.rec* %597, %union.rec** @xx_link, align 8
  %602 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %602, %union.rec** @zz_res, align 8
  %603 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %603, %union.rec** @zz_hold, align 8
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1630 = icmp eq %union.rec* %604, null
  br i1 %cmp1630, label %cond.true.1632, label %cond.false.1633

cond.true.1632:                                   ; preds = %if.end.1609
  %605 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1668

cond.false.1633:                                  ; preds = %if.end.1609
  %606 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1634 = icmp eq %union.rec* %606, null
  br i1 %cmp1634, label %cond.true.1636, label %cond.false.1637

cond.true.1636:                                   ; preds = %cond.false.1633
  %607 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1666

cond.false.1637:                                  ; preds = %cond.false.1633
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11638 = bitcast %union.rec* %608 to %struct.word_type*
  %olist1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11638, i32 0, i32 0
  %arrayidx1640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1639, i32 0, i64 0
  %opred1641 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1640, i32 0, i32 0
  %609 = load %union.rec*, %union.rec** %opred1641, align 8
  store %union.rec* %609, %union.rec** @zz_tmp, align 8
  %610 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11642 = bitcast %union.rec* %610 to %struct.word_type*
  %olist1643 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11642, i32 0, i32 0
  %arrayidx1644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1643, i32 0, i64 0
  %opred1645 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1644, i32 0, i32 0
  %611 = load %union.rec*, %union.rec** %opred1645, align 8
  %612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11646 = bitcast %union.rec* %612 to %struct.word_type*
  %olist1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11646, i32 0, i32 0
  %arrayidx1648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1647, i32 0, i64 0
  %opred1649 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1648, i32 0, i32 0
  store %union.rec* %611, %union.rec** %opred1649, align 8
  %613 = load %union.rec*, %union.rec** @zz_hold, align 8
  %614 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11650 = bitcast %union.rec* %614 to %struct.word_type*
  %olist1651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11650, i32 0, i32 0
  %arrayidx1652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1651, i32 0, i64 0
  %opred1653 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1652, i32 0, i32 0
  %615 = load %union.rec*, %union.rec** %opred1653, align 8
  %os11654 = bitcast %union.rec* %615 to %struct.word_type*
  %olist1655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11654, i32 0, i32 0
  %arrayidx1656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1655, i32 0, i64 0
  %osucc1657 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1656, i32 0, i32 1
  store %union.rec* %613, %union.rec** %osucc1657, align 8
  %616 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %617 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11658 = bitcast %union.rec* %617 to %struct.word_type*
  %olist1659 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11658, i32 0, i32 0
  %arrayidx1660 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1659, i32 0, i64 0
  %opred1661 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1660, i32 0, i32 0
  store %union.rec* %616, %union.rec** %opred1661, align 8
  %618 = load %union.rec*, %union.rec** @zz_res, align 8
  %619 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11662 = bitcast %union.rec* %619 to %struct.word_type*
  %olist1663 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11662, i32 0, i32 0
  %arrayidx1664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1663, i32 0, i64 0
  %osucc1665 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1664, i32 0, i32 1
  store %union.rec* %618, %union.rec** %osucc1665, align 8
  br label %cond.end.1666

cond.end.1666:                                    ; preds = %cond.false.1637, %cond.true.1636
  %cond1667 = phi %union.rec* [ %607, %cond.true.1636 ], [ %618, %cond.false.1637 ]
  br label %cond.end.1668

cond.end.1668:                                    ; preds = %cond.end.1666, %cond.true.1632
  %cond1669 = phi %union.rec* [ %605, %cond.true.1632 ], [ %cond1667, %cond.end.1666 ]
  %620 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %620, %union.rec** @zz_res, align 8
  %621 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %621, %union.rec** @zz_hold, align 8
  %622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1670 = icmp eq %union.rec* %622, null
  br i1 %cmp1670, label %cond.true.1672, label %cond.false.1673

cond.true.1672:                                   ; preds = %cond.end.1668
  %623 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1708

cond.false.1673:                                  ; preds = %cond.end.1668
  %624 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1674 = icmp eq %union.rec* %624, null
  br i1 %cmp1674, label %cond.true.1676, label %cond.false.1677

cond.true.1676:                                   ; preds = %cond.false.1673
  %625 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1706

cond.false.1677:                                  ; preds = %cond.false.1673
  %626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11678 = bitcast %union.rec* %626 to %struct.word_type*
  %olist1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11678, i32 0, i32 0
  %arrayidx1680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1679, i32 0, i64 1
  %opred1681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1680, i32 0, i32 0
  %627 = load %union.rec*, %union.rec** %opred1681, align 8
  store %union.rec* %627, %union.rec** @zz_tmp, align 8
  %628 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11682 = bitcast %union.rec* %628 to %struct.word_type*
  %olist1683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11682, i32 0, i32 0
  %arrayidx1684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1683, i32 0, i64 1
  %opred1685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1684, i32 0, i32 0
  %629 = load %union.rec*, %union.rec** %opred1685, align 8
  %630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11686 = bitcast %union.rec* %630 to %struct.word_type*
  %olist1687 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11686, i32 0, i32 0
  %arrayidx1688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1687, i32 0, i64 1
  %opred1689 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1688, i32 0, i32 0
  store %union.rec* %629, %union.rec** %opred1689, align 8
  %631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %632 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11690 = bitcast %union.rec* %632 to %struct.word_type*
  %olist1691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11690, i32 0, i32 0
  %arrayidx1692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1691, i32 0, i64 1
  %opred1693 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1692, i32 0, i32 0
  %633 = load %union.rec*, %union.rec** %opred1693, align 8
  %os11694 = bitcast %union.rec* %633 to %struct.word_type*
  %olist1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11694, i32 0, i32 0
  %arrayidx1696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1695, i32 0, i64 1
  %osucc1697 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1696, i32 0, i32 1
  store %union.rec* %631, %union.rec** %osucc1697, align 8
  %634 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %635 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11698 = bitcast %union.rec* %635 to %struct.word_type*
  %olist1699 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11698, i32 0, i32 0
  %arrayidx1700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1699, i32 0, i64 1
  %opred1701 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1700, i32 0, i32 0
  store %union.rec* %634, %union.rec** %opred1701, align 8
  %636 = load %union.rec*, %union.rec** @zz_res, align 8
  %637 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11702 = bitcast %union.rec* %637 to %struct.word_type*
  %olist1703 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11702, i32 0, i32 0
  %arrayidx1704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1703, i32 0, i64 1
  %osucc1705 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1704, i32 0, i32 1
  store %union.rec* %636, %union.rec** %osucc1705, align 8
  br label %cond.end.1706

cond.end.1706:                                    ; preds = %cond.false.1677, %cond.true.1676
  %cond1707 = phi %union.rec* [ %625, %cond.true.1676 ], [ %636, %cond.false.1677 ]
  br label %cond.end.1708

cond.end.1708:                                    ; preds = %cond.end.1706, %cond.true.1672
  %cond1709 = phi %union.rec* [ %623, %cond.true.1672 ], [ %cond1707, %cond.end.1706 ]
  %638 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %638)
  %arraydecay1710 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay1710, i8** %q, align 8
  %639 = load i8*, i8** %p, align 8
  %640 = load i8, i8* %639, align 1
  %idxprom1711 = zext i8 %640 to i64
  %641 = load i8*, i8** %uc, align 8
  %arrayidx1712 = getelementptr inbounds i8, i8* %641, i64 %idxprom1711
  %642 = load i8, i8* %arrayidx1712, align 1
  %643 = load i8*, i8** %q, align 8
  %incdec.ptr1713 = getelementptr inbounds i8, i8* %643, i32 1
  store i8* %incdec.ptr1713, i8** %q, align 8
  store i8 %642, i8* %643, align 1
  store i32 4, i32* %state, align 4
  br label %if.end.1716

if.else.1714:                                     ; preds = %sw.bb.1572
  %644 = load i8*, i8** %p, align 8
  %645 = load i8, i8* %644, align 1
  %646 = load i8*, i8** %q, align 8
  %incdec.ptr1715 = getelementptr inbounds i8, i8* %646, i32 1
  store i8* %incdec.ptr1715, i8** %q, align 8
  store i8 %645, i8* %646, align 1
  br label %if.end.1716

if.end.1716:                                      ; preds = %if.else.1714, %cond.end.1708
  br label %sw.epilog

sw.bb.1717:                                       ; preds = %for.body.75
  %647 = load i8*, i8** %p, align 8
  %648 = load i8, i8* %647, align 1
  %idxprom1718 = zext i8 %648 to i64
  %649 = load i8*, i8** %uc, align 8
  %arrayidx1719 = getelementptr inbounds i8, i8* %649, i64 %idxprom1718
  %650 = load i8, i8* %arrayidx1719, align 1
  %conv1720 = zext i8 %650 to i32
  %cmp1721 = icmp ne i32 %conv1720, 0
  br i1 %cmp1721, label %if.then.1723, label %if.else.1727

if.then.1723:                                     ; preds = %sw.bb.1717
  %651 = load i8*, i8** %p, align 8
  %652 = load i8, i8* %651, align 1
  %idxprom1724 = zext i8 %652 to i64
  %653 = load i8*, i8** %uc, align 8
  %arrayidx1725 = getelementptr inbounds i8, i8* %653, i64 %idxprom1724
  %654 = load i8, i8* %arrayidx1725, align 1
  %655 = load i8*, i8** %q, align 8
  %incdec.ptr1726 = getelementptr inbounds i8, i8* %655, i32 1
  store i8* %incdec.ptr1726, i8** %q, align 8
  store i8 %654, i8* %655, align 1
  br label %if.end.1858

if.else.1727:                                     ; preds = %sw.bb.1717
  %arraydecay1728 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %656 = load i8*, i8** %q, align 8
  %657 = load %union.rec*, %union.rec** %x.addr, align 8
  %658 = load i32, i32* %small_font, align 4
  %call1729 = call %union.rec* @DoWord(i8* %arraydecay1728, i8* %656, %union.rec* %657, i32 %658)
  store %union.rec* %call1729, %union.rec** %tmp, align 8
  %659 = load %union.rec*, %union.rec** %x.addr, align 8
  %660 = load i32, i32* %vshift, align 4
  %661 = load %union.rec*, %union.rec** %tmp, align 8
  %call1730 = call %union.rec* @DoVShift(%union.rec* %659, i32 %660, %union.rec* %661)
  store %union.rec* %call1730, %union.rec** %new_y, align 8
  %662 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1731 = zext i8 %662 to i32
  store i32 %conv1731, i32* @zz_size, align 4
  %conv1732 = sext i32 %conv1731 to i64
  %cmp1733 = icmp uge i64 %conv1732, 265
  br i1 %cmp1733, label %if.then.1735, label %if.else.1737

if.then.1735:                                     ; preds = %if.else.1727
  %663 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1736 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %663)
  br label %if.end.1754

if.else.1737:                                     ; preds = %if.else.1727
  %664 = load i32, i32* @zz_size, align 4
  %idxprom1738 = sext i32 %664 to i64
  %arrayidx1739 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1738
  %665 = load %union.rec*, %union.rec** %arrayidx1739, align 8
  %cmp1740 = icmp eq %union.rec* %665, null
  br i1 %cmp1740, label %if.then.1742, label %if.else.1744

if.then.1742:                                     ; preds = %if.else.1737
  %666 = load i32, i32* @zz_size, align 4
  %667 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1743 = call %union.rec* @GetMemory(i32 %666, %struct.FILE_POS* %667)
  store %union.rec* %call1743, %union.rec** @zz_hold, align 8
  br label %if.end.1753

if.else.1744:                                     ; preds = %if.else.1737
  %668 = load i32, i32* @zz_size, align 4
  %idxprom1745 = sext i32 %668 to i64
  %arrayidx1746 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1745
  %669 = load %union.rec*, %union.rec** %arrayidx1746, align 8
  store %union.rec* %669, %union.rec** @zz_hold, align 8
  store %union.rec* %669, %union.rec** @zz_hold, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11747 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11747, i32 0, i32 0
  %arrayidx1749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1748, i32 0, i64 0
  %opred1750 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1749, i32 0, i32 0
  %671 = load %union.rec*, %union.rec** %opred1750, align 8
  %672 = load i32, i32* @zz_size, align 4
  %idxprom1751 = sext i32 %672 to i64
  %arrayidx1752 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1751
  store %union.rec* %671, %union.rec** %arrayidx1752, align 8
  br label %if.end.1753

if.end.1753:                                      ; preds = %if.else.1744, %if.then.1742
  br label %if.end.1754

if.end.1754:                                      ; preds = %if.end.1753, %if.then.1735
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11755 = bitcast %union.rec* %673 to %struct.word_type*
  %ou11756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11755, i32 0, i32 1
  %os111757 = bitcast %union.FIRST_UNION* %ou11756 to %struct.anon*
  %otype1758 = getelementptr inbounds %struct.anon, %struct.anon* %os111757, i32 0, i32 0
  store i8 0, i8* %otype1758, align 1
  %674 = load %union.rec*, %union.rec** @zz_hold, align 8
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11759 = bitcast %union.rec* %675 to %struct.word_type*
  %olist1760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11759, i32 0, i32 0
  %arrayidx1761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1760, i32 0, i64 1
  %osucc1762 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1761, i32 0, i32 1
  store %union.rec* %674, %union.rec** %osucc1762, align 8
  %676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11763 = bitcast %union.rec* %676 to %struct.word_type*
  %olist1764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11763, i32 0, i32 0
  %arrayidx1765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1764, i32 0, i64 1
  %opred1766 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1765, i32 0, i32 0
  store %union.rec* %674, %union.rec** %opred1766, align 8
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11767 = bitcast %union.rec* %677 to %struct.word_type*
  %olist1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11767, i32 0, i32 0
  %arrayidx1769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1768, i32 0, i64 0
  %osucc1770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1769, i32 0, i32 1
  store %union.rec* %674, %union.rec** %osucc1770, align 8
  %678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11771 = bitcast %union.rec* %678 to %struct.word_type*
  %olist1772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11771, i32 0, i32 0
  %arrayidx1773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1772, i32 0, i64 0
  %opred1774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1773, i32 0, i32 0
  store %union.rec* %674, %union.rec** %opred1774, align 8
  store %union.rec* %674, %union.rec** @xx_link, align 8
  %679 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %679, %union.rec** @zz_res, align 8
  %680 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %680, %union.rec** @zz_hold, align 8
  %681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1775 = icmp eq %union.rec* %681, null
  br i1 %cmp1775, label %cond.true.1777, label %cond.false.1778

cond.true.1777:                                   ; preds = %if.end.1754
  %682 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1813

cond.false.1778:                                  ; preds = %if.end.1754
  %683 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1779 = icmp eq %union.rec* %683, null
  br i1 %cmp1779, label %cond.true.1781, label %cond.false.1782

cond.true.1781:                                   ; preds = %cond.false.1778
  %684 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1811

cond.false.1782:                                  ; preds = %cond.false.1778
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11783 = bitcast %union.rec* %685 to %struct.word_type*
  %olist1784 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11783, i32 0, i32 0
  %arrayidx1785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1784, i32 0, i64 0
  %opred1786 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1785, i32 0, i32 0
  %686 = load %union.rec*, %union.rec** %opred1786, align 8
  store %union.rec* %686, %union.rec** @zz_tmp, align 8
  %687 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11787 = bitcast %union.rec* %687 to %struct.word_type*
  %olist1788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11787, i32 0, i32 0
  %arrayidx1789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1788, i32 0, i64 0
  %opred1790 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1789, i32 0, i32 0
  %688 = load %union.rec*, %union.rec** %opred1790, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11791 = bitcast %union.rec* %689 to %struct.word_type*
  %olist1792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11791, i32 0, i32 0
  %arrayidx1793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1792, i32 0, i64 0
  %opred1794 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1793, i32 0, i32 0
  store %union.rec* %688, %union.rec** %opred1794, align 8
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %691 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11795 = bitcast %union.rec* %691 to %struct.word_type*
  %olist1796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11795, i32 0, i32 0
  %arrayidx1797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1796, i32 0, i64 0
  %opred1798 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1797, i32 0, i32 0
  %692 = load %union.rec*, %union.rec** %opred1798, align 8
  %os11799 = bitcast %union.rec* %692 to %struct.word_type*
  %olist1800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11799, i32 0, i32 0
  %arrayidx1801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1800, i32 0, i64 0
  %osucc1802 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1801, i32 0, i32 1
  store %union.rec* %690, %union.rec** %osucc1802, align 8
  %693 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11803 = bitcast %union.rec* %694 to %struct.word_type*
  %olist1804 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11803, i32 0, i32 0
  %arrayidx1805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1804, i32 0, i64 0
  %opred1806 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1805, i32 0, i32 0
  store %union.rec* %693, %union.rec** %opred1806, align 8
  %695 = load %union.rec*, %union.rec** @zz_res, align 8
  %696 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11807 = bitcast %union.rec* %696 to %struct.word_type*
  %olist1808 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11807, i32 0, i32 0
  %arrayidx1809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1808, i32 0, i64 0
  %osucc1810 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1809, i32 0, i32 1
  store %union.rec* %695, %union.rec** %osucc1810, align 8
  br label %cond.end.1811

cond.end.1811:                                    ; preds = %cond.false.1782, %cond.true.1781
  %cond1812 = phi %union.rec* [ %684, %cond.true.1781 ], [ %695, %cond.false.1782 ]
  br label %cond.end.1813

cond.end.1813:                                    ; preds = %cond.end.1811, %cond.true.1777
  %cond1814 = phi %union.rec* [ %682, %cond.true.1777 ], [ %cond1812, %cond.end.1811 ]
  %697 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %697, %union.rec** @zz_res, align 8
  %698 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %698, %union.rec** @zz_hold, align 8
  %699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1815 = icmp eq %union.rec* %699, null
  br i1 %cmp1815, label %cond.true.1817, label %cond.false.1818

cond.true.1817:                                   ; preds = %cond.end.1813
  %700 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1854

cond.false.1818:                                  ; preds = %cond.end.1813
  %701 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1819 = icmp eq %union.rec* %701, null
  br i1 %cmp1819, label %cond.true.1821, label %cond.false.1822

cond.true.1821:                                   ; preds = %cond.false.1818
  %702 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1852

cond.false.1822:                                  ; preds = %cond.false.1818
  %703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11823 = bitcast %union.rec* %703 to %struct.word_type*
  %olist1824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11823, i32 0, i32 0
  %arrayidx1825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1824, i32 0, i64 1
  %opred1826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1825, i32 0, i32 0
  %704 = load %union.rec*, %union.rec** %opred1826, align 8
  store %union.rec* %704, %union.rec** @zz_tmp, align 8
  %705 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11827 = bitcast %union.rec* %705 to %struct.word_type*
  %olist1828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11827, i32 0, i32 0
  %arrayidx1829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1828, i32 0, i64 1
  %opred1830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1829, i32 0, i32 0
  %706 = load %union.rec*, %union.rec** %opred1830, align 8
  %707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11831 = bitcast %union.rec* %707 to %struct.word_type*
  %olist1832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11831, i32 0, i32 0
  %arrayidx1833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1832, i32 0, i64 1
  %opred1834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1833, i32 0, i32 0
  store %union.rec* %706, %union.rec** %opred1834, align 8
  %708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %709 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11835 = bitcast %union.rec* %709 to %struct.word_type*
  %olist1836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11835, i32 0, i32 0
  %arrayidx1837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1836, i32 0, i64 1
  %opred1838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1837, i32 0, i32 0
  %710 = load %union.rec*, %union.rec** %opred1838, align 8
  %os11840 = bitcast %union.rec* %710 to %struct.word_type*
  %olist1841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11840, i32 0, i32 0
  %arrayidx1842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1841, i32 0, i64 1
  %osucc1843 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1842, i32 0, i32 1
  store %union.rec* %708, %union.rec** %osucc1843, align 8
  %711 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %712 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11844 = bitcast %union.rec* %712 to %struct.word_type*
  %olist1845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11844, i32 0, i32 0
  %arrayidx1846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1845, i32 0, i64 1
  %opred1847 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1846, i32 0, i32 0
  store %union.rec* %711, %union.rec** %opred1847, align 8
  %713 = load %union.rec*, %union.rec** @zz_res, align 8
  %714 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11848 = bitcast %union.rec* %714 to %struct.word_type*
  %olist1849 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11848, i32 0, i32 0
  %arrayidx1850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1849, i32 0, i64 1
  %osucc1851 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1850, i32 0, i32 1
  store %union.rec* %713, %union.rec** %osucc1851, align 8
  br label %cond.end.1852

cond.end.1852:                                    ; preds = %cond.false.1822, %cond.true.1821
  %cond1853 = phi %union.rec* [ %702, %cond.true.1821 ], [ %713, %cond.false.1822 ]
  br label %cond.end.1854

cond.end.1854:                                    ; preds = %cond.end.1852, %cond.true.1817
  %cond1855 = phi %union.rec* [ %700, %cond.true.1817 ], [ %cond1853, %cond.end.1852 ]
  %715 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %715)
  %arraydecay1856 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay1856, i8** %q, align 8
  %716 = load i8*, i8** %p, align 8
  %717 = load i8, i8* %716, align 1
  %718 = load i8*, i8** %q, align 8
  %incdec.ptr1857 = getelementptr inbounds i8, i8* %718, i32 1
  store i8* %incdec.ptr1857, i8** %q, align 8
  store i8 %717, i8* %718, align 1
  store i32 3, i32* %state, align 4
  br label %if.end.1858

if.end.1858:                                      ; preds = %cond.end.1854, %if.then.1723
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.75, %if.end.1858, %if.end.1716, %if.end.1571, %if.end.1144, %if.end.393
  br label %for.inc.1859

for.inc.1859:                                     ; preds = %sw.epilog
  %719 = load i8*, i8** %p, align 8
  %incdec.ptr1860 = getelementptr inbounds i8, i8* %719, i32 1
  store i8* %incdec.ptr1860, i8** %p, align 8
  br label %for.cond.71

for.end.1861:                                     ; preds = %for.cond.71
  %720 = load i32, i32* %state, align 4
  switch i32 %720, label %sw.epilog.2477 [
    i32 0, label %sw.bb.1862
    i32 1, label %sw.bb.1862
    i32 2, label %sw.bb.1863
    i32 3, label %sw.bb.1983
    i32 4, label %sw.bb.2232
  ]

sw.bb.1862:                                       ; preds = %for.end.1861, %for.end.1861
  br label %sw.epilog.2477

sw.bb.1863:                                       ; preds = %for.end.1861
  %arraydecay1864 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %721 = load i8*, i8** %q, align 8
  %722 = load %union.rec*, %union.rec** %x.addr, align 8
  %723 = load i32, i32* %small_font, align 4
  %call1865 = call %union.rec* @DoWord(i8* %arraydecay1864, i8* %721, %union.rec* %722, i32 %723)
  store %union.rec* %call1865, %union.rec** %tmp, align 8
  %724 = load %union.rec*, %union.rec** %x.addr, align 8
  %725 = load i32, i32* %vshift, align 4
  %726 = load %union.rec*, %union.rec** %tmp, align 8
  %call1866 = call %union.rec* @DoVShift(%union.rec* %724, i32 %725, %union.rec* %726)
  store %union.rec* %call1866, %union.rec** %new_x, align 8
  %727 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %727, %union.rec** @zz_hold, align 8
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11867 = bitcast %union.rec* %728 to %struct.word_type*
  %olist1868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11867, i32 0, i32 0
  %arrayidx1869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1868, i32 0, i64 1
  %osucc1870 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1869, i32 0, i32 1
  %729 = load %union.rec*, %union.rec** %osucc1870, align 8
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1871 = icmp eq %union.rec* %729, %730
  br i1 %cmp1871, label %cond.true.1873, label %cond.false.1874

cond.true.1873:                                   ; preds = %sw.bb.1863
  br label %cond.end.1903

cond.false.1874:                                  ; preds = %sw.bb.1863
  %731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11875 = bitcast %union.rec* %731 to %struct.word_type*
  %olist1876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11875, i32 0, i32 0
  %arrayidx1877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1876, i32 0, i64 1
  %osucc1878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1877, i32 0, i32 1
  %732 = load %union.rec*, %union.rec** %osucc1878, align 8
  store %union.rec* %732, %union.rec** @zz_res, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11879 = bitcast %union.rec* %733 to %struct.word_type*
  %olist1880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11879, i32 0, i32 0
  %arrayidx1881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1880, i32 0, i64 1
  %opred1882 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1881, i32 0, i32 0
  %734 = load %union.rec*, %union.rec** %opred1882, align 8
  %735 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11883 = bitcast %union.rec* %735 to %struct.word_type*
  %olist1884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11883, i32 0, i32 0
  %arrayidx1885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1884, i32 0, i64 1
  %opred1886 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1885, i32 0, i32 0
  store %union.rec* %734, %union.rec** %opred1886, align 8
  %736 = load %union.rec*, %union.rec** @zz_res, align 8
  %737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11887 = bitcast %union.rec* %737 to %struct.word_type*
  %olist1888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11887, i32 0, i32 0
  %arrayidx1889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1888, i32 0, i64 1
  %opred1890 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1889, i32 0, i32 0
  %738 = load %union.rec*, %union.rec** %opred1890, align 8
  %os11891 = bitcast %union.rec* %738 to %struct.word_type*
  %olist1892 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11891, i32 0, i32 0
  %arrayidx1893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1892, i32 0, i64 1
  %osucc1894 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1893, i32 0, i32 1
  store %union.rec* %736, %union.rec** %osucc1894, align 8
  %739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11895 = bitcast %union.rec* %740 to %struct.word_type*
  %olist1896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11895, i32 0, i32 0
  %arrayidx1897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1896, i32 0, i64 1
  %osucc1898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1897, i32 0, i32 1
  store %union.rec* %739, %union.rec** %osucc1898, align 8
  %741 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11899 = bitcast %union.rec* %741 to %struct.word_type*
  %olist1900 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11899, i32 0, i32 0
  %arrayidx1901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1900, i32 0, i64 1
  %opred1902 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1901, i32 0, i32 0
  store %union.rec* %739, %union.rec** %opred1902, align 8
  %742 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1903

cond.end.1903:                                    ; preds = %cond.false.1874, %cond.true.1873
  %cond1904 = phi %union.rec* [ null, %cond.true.1873 ], [ %742, %cond.false.1874 ]
  store %union.rec* %cond1904, %union.rec** @xx_tmp, align 8
  %743 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %743, %union.rec** @zz_res, align 8
  %744 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %744, %union.rec** @zz_hold, align 8
  %745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1905 = icmp eq %union.rec* %745, null
  br i1 %cmp1905, label %cond.true.1907, label %cond.false.1908

cond.true.1907:                                   ; preds = %cond.end.1903
  %746 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1943

cond.false.1908:                                  ; preds = %cond.end.1903
  %747 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1909 = icmp eq %union.rec* %747, null
  br i1 %cmp1909, label %cond.true.1911, label %cond.false.1912

cond.true.1911:                                   ; preds = %cond.false.1908
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1941

cond.false.1912:                                  ; preds = %cond.false.1908
  %749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11913 = bitcast %union.rec* %749 to %struct.word_type*
  %olist1914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11913, i32 0, i32 0
  %arrayidx1915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1914, i32 0, i64 1
  %opred1916 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1915, i32 0, i32 0
  %750 = load %union.rec*, %union.rec** %opred1916, align 8
  store %union.rec* %750, %union.rec** @zz_tmp, align 8
  %751 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11917 = bitcast %union.rec* %751 to %struct.word_type*
  %olist1918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11917, i32 0, i32 0
  %arrayidx1919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1918, i32 0, i64 1
  %opred1920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1919, i32 0, i32 0
  %752 = load %union.rec*, %union.rec** %opred1920, align 8
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11921 = bitcast %union.rec* %753 to %struct.word_type*
  %olist1922 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11921, i32 0, i32 0
  %arrayidx1923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1922, i32 0, i64 1
  %opred1924 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1923, i32 0, i32 0
  store %union.rec* %752, %union.rec** %opred1924, align 8
  %754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %755 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11925 = bitcast %union.rec* %755 to %struct.word_type*
  %olist1926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11925, i32 0, i32 0
  %arrayidx1927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1926, i32 0, i64 1
  %opred1928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1927, i32 0, i32 0
  %756 = load %union.rec*, %union.rec** %opred1928, align 8
  %os11929 = bitcast %union.rec* %756 to %struct.word_type*
  %olist1930 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11929, i32 0, i32 0
  %arrayidx1931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1930, i32 0, i64 1
  %osucc1932 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1931, i32 0, i32 1
  store %union.rec* %754, %union.rec** %osucc1932, align 8
  %757 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %758 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11933 = bitcast %union.rec* %758 to %struct.word_type*
  %olist1934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11933, i32 0, i32 0
  %arrayidx1935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1934, i32 0, i64 1
  %opred1936 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1935, i32 0, i32 0
  store %union.rec* %757, %union.rec** %opred1936, align 8
  %759 = load %union.rec*, %union.rec** @zz_res, align 8
  %760 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11937 = bitcast %union.rec* %760 to %struct.word_type*
  %olist1938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11937, i32 0, i32 0
  %arrayidx1939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1938, i32 0, i64 1
  %osucc1940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1939, i32 0, i32 1
  store %union.rec* %759, %union.rec** %osucc1940, align 8
  br label %cond.end.1941

cond.end.1941:                                    ; preds = %cond.false.1912, %cond.true.1911
  %cond1942 = phi %union.rec* [ %748, %cond.true.1911 ], [ %759, %cond.false.1912 ]
  br label %cond.end.1943

cond.end.1943:                                    ; preds = %cond.end.1941, %cond.true.1907
  %cond1944 = phi %union.rec* [ %746, %cond.true.1907 ], [ %cond1942, %cond.end.1941 ]
  %761 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %761, %union.rec** @zz_hold, align 8
  %762 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %762, %union.rec** @zz_hold, align 8
  %763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11945 = bitcast %union.rec* %763 to %struct.word_type*
  %ou11946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11945, i32 0, i32 1
  %os111947 = bitcast %union.FIRST_UNION* %ou11946 to %struct.anon*
  %otype1948 = getelementptr inbounds %struct.anon, %struct.anon* %os111947, i32 0, i32 0
  %764 = load i8, i8* %otype1948, align 1
  %conv1949 = zext i8 %764 to i32
  %cmp1950 = icmp eq i32 %conv1949, 11
  br i1 %cmp1950, label %cond.true.1960, label %lor.lhs.false.1952

lor.lhs.false.1952:                               ; preds = %cond.end.1943
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11953 = bitcast %union.rec* %765 to %struct.word_type*
  %ou11954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11953, i32 0, i32 1
  %os111955 = bitcast %union.FIRST_UNION* %ou11954 to %struct.anon*
  %otype1956 = getelementptr inbounds %struct.anon, %struct.anon* %os111955, i32 0, i32 0
  %766 = load i8, i8* %otype1956, align 1
  %conv1957 = zext i8 %766 to i32
  %cmp1958 = icmp eq i32 %conv1957, 12
  br i1 %cmp1958, label %cond.true.1960, label %cond.false.1965

cond.true.1960:                                   ; preds = %lor.lhs.false.1952, %cond.end.1943
  %767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11961 = bitcast %union.rec* %767 to %struct.word_type*
  %ou11962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11961, i32 0, i32 1
  %os111963 = bitcast %union.FIRST_UNION* %ou11962 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os111963, i32 0, i32 1
  %768 = load i8, i8* %orec_size, align 1
  %conv1964 = zext i8 %768 to i32
  br label %cond.end.1973

cond.false.1965:                                  ; preds = %lor.lhs.false.1952
  %769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11966 = bitcast %union.rec* %769 to %struct.word_type*
  %ou11967 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11966, i32 0, i32 1
  %os111968 = bitcast %union.FIRST_UNION* %ou11967 to %struct.anon*
  %otype1969 = getelementptr inbounds %struct.anon, %struct.anon* %os111968, i32 0, i32 0
  %770 = load i8, i8* %otype1969, align 1
  %idxprom1970 = zext i8 %770 to i64
  %arrayidx1971 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1970
  %771 = load i8, i8* %arrayidx1971, align 1
  %conv1972 = zext i8 %771 to i32
  br label %cond.end.1973

cond.end.1973:                                    ; preds = %cond.false.1965, %cond.true.1960
  %cond1974 = phi i32 [ %conv1964, %cond.true.1960 ], [ %conv1972, %cond.false.1965 ]
  store i32 %cond1974, i32* @zz_size, align 4
  %772 = load i32, i32* @zz_size, align 4
  %idxprom1975 = sext i32 %772 to i64
  %arrayidx1976 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1975
  %773 = load %union.rec*, %union.rec** %arrayidx1976, align 8
  %774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11977 = bitcast %union.rec* %774 to %struct.word_type*
  %olist1978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11977, i32 0, i32 0
  %arrayidx1979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1978, i32 0, i64 0
  %opred1980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1979, i32 0, i32 0
  store %union.rec* %773, %union.rec** %opred1980, align 8
  %775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %776 = load i32, i32* @zz_size, align 4
  %idxprom1981 = sext i32 %776 to i64
  %arrayidx1982 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1981
  store %union.rec* %775, %union.rec** %arrayidx1982, align 8
  %777 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %777, %union.rec** %x.addr, align 8
  br label %sw.epilog.2477

sw.bb.1983:                                       ; preds = %for.end.1861
  %arraydecay1984 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %778 = load i8*, i8** %q, align 8
  %779 = load %union.rec*, %union.rec** %x.addr, align 8
  %780 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11985 = bitcast %union.rec* %780 to %struct.word_type*
  %ou21986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11985, i32 0, i32 2
  %os221987 = bitcast %union.SECOND_UNION* %ou21986 to %struct.anon.1*
  %781 = bitcast %struct.anon.1* %os221987 to i32*
  %bf.load1988 = load i32, i32* %781, align 4
  %bf.clear1989 = and i32 %bf.load1988, 4095
  %call1990 = call %union.rec* @DoWord(i8* %arraydecay1984, i8* %778, %union.rec* %779, i32 %bf.clear1989)
  store %union.rec* %call1990, %union.rec** %new_y, align 8
  %782 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1991 = zext i8 %782 to i32
  store i32 %conv1991, i32* @zz_size, align 4
  %conv1992 = sext i32 %conv1991 to i64
  %cmp1993 = icmp uge i64 %conv1992, 265
  br i1 %cmp1993, label %if.then.1995, label %if.else.1997

if.then.1995:                                     ; preds = %sw.bb.1983
  %783 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1996 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %783)
  br label %if.end.2014

if.else.1997:                                     ; preds = %sw.bb.1983
  %784 = load i32, i32* @zz_size, align 4
  %idxprom1998 = sext i32 %784 to i64
  %arrayidx1999 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1998
  %785 = load %union.rec*, %union.rec** %arrayidx1999, align 8
  %cmp2000 = icmp eq %union.rec* %785, null
  br i1 %cmp2000, label %if.then.2002, label %if.else.2004

if.then.2002:                                     ; preds = %if.else.1997
  %786 = load i32, i32* @zz_size, align 4
  %787 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2003 = call %union.rec* @GetMemory(i32 %786, %struct.FILE_POS* %787)
  store %union.rec* %call2003, %union.rec** @zz_hold, align 8
  br label %if.end.2013

if.else.2004:                                     ; preds = %if.else.1997
  %788 = load i32, i32* @zz_size, align 4
  %idxprom2005 = sext i32 %788 to i64
  %arrayidx2006 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2005
  %789 = load %union.rec*, %union.rec** %arrayidx2006, align 8
  store %union.rec* %789, %union.rec** @zz_hold, align 8
  store %union.rec* %789, %union.rec** @zz_hold, align 8
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12007 = bitcast %union.rec* %790 to %struct.word_type*
  %olist2008 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12007, i32 0, i32 0
  %arrayidx2009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2008, i32 0, i64 0
  %opred2010 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2009, i32 0, i32 0
  %791 = load %union.rec*, %union.rec** %opred2010, align 8
  %792 = load i32, i32* @zz_size, align 4
  %idxprom2011 = sext i32 %792 to i64
  %arrayidx2012 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2011
  store %union.rec* %791, %union.rec** %arrayidx2012, align 8
  br label %if.end.2013

if.end.2013:                                      ; preds = %if.else.2004, %if.then.2002
  br label %if.end.2014

if.end.2014:                                      ; preds = %if.end.2013, %if.then.1995
  %793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12015 = bitcast %union.rec* %793 to %struct.word_type*
  %ou12016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12015, i32 0, i32 1
  %os112017 = bitcast %union.FIRST_UNION* %ou12016 to %struct.anon*
  %otype2018 = getelementptr inbounds %struct.anon, %struct.anon* %os112017, i32 0, i32 0
  store i8 0, i8* %otype2018, align 1
  %794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %795 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12019 = bitcast %union.rec* %795 to %struct.word_type*
  %olist2020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12019, i32 0, i32 0
  %arrayidx2021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2020, i32 0, i64 1
  %osucc2022 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2021, i32 0, i32 1
  store %union.rec* %794, %union.rec** %osucc2022, align 8
  %796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12023 = bitcast %union.rec* %796 to %struct.word_type*
  %olist2024 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12023, i32 0, i32 0
  %arrayidx2025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2024, i32 0, i64 1
  %opred2026 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2025, i32 0, i32 0
  store %union.rec* %794, %union.rec** %opred2026, align 8
  %797 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12027 = bitcast %union.rec* %797 to %struct.word_type*
  %olist2028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12027, i32 0, i32 0
  %arrayidx2029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2028, i32 0, i64 0
  %osucc2030 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2029, i32 0, i32 1
  store %union.rec* %794, %union.rec** %osucc2030, align 8
  %798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12031 = bitcast %union.rec* %798 to %struct.word_type*
  %olist2032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12031, i32 0, i32 0
  %arrayidx2033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2032, i32 0, i64 0
  %opred2034 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2033, i32 0, i32 0
  store %union.rec* %794, %union.rec** %opred2034, align 8
  store %union.rec* %794, %union.rec** @xx_link, align 8
  %799 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %799, %union.rec** @zz_res, align 8
  %800 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %800, %union.rec** @zz_hold, align 8
  %801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2035 = icmp eq %union.rec* %801, null
  br i1 %cmp2035, label %cond.true.2037, label %cond.false.2038

cond.true.2037:                                   ; preds = %if.end.2014
  %802 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2073

cond.false.2038:                                  ; preds = %if.end.2014
  %803 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2039 = icmp eq %union.rec* %803, null
  br i1 %cmp2039, label %cond.true.2041, label %cond.false.2042

cond.true.2041:                                   ; preds = %cond.false.2038
  %804 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2071

cond.false.2042:                                  ; preds = %cond.false.2038
  %805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12043 = bitcast %union.rec* %805 to %struct.word_type*
  %olist2044 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12043, i32 0, i32 0
  %arrayidx2045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2044, i32 0, i64 0
  %opred2046 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2045, i32 0, i32 0
  %806 = load %union.rec*, %union.rec** %opred2046, align 8
  store %union.rec* %806, %union.rec** @zz_tmp, align 8
  %807 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12047 = bitcast %union.rec* %807 to %struct.word_type*
  %olist2048 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12047, i32 0, i32 0
  %arrayidx2049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2048, i32 0, i64 0
  %opred2050 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2049, i32 0, i32 0
  %808 = load %union.rec*, %union.rec** %opred2050, align 8
  %809 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12051 = bitcast %union.rec* %809 to %struct.word_type*
  %olist2052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12051, i32 0, i32 0
  %arrayidx2053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2052, i32 0, i64 0
  %opred2054 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2053, i32 0, i32 0
  store %union.rec* %808, %union.rec** %opred2054, align 8
  %810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %811 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12055 = bitcast %union.rec* %811 to %struct.word_type*
  %olist2056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12055, i32 0, i32 0
  %arrayidx2057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2056, i32 0, i64 0
  %opred2058 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2057, i32 0, i32 0
  %812 = load %union.rec*, %union.rec** %opred2058, align 8
  %os12059 = bitcast %union.rec* %812 to %struct.word_type*
  %olist2060 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12059, i32 0, i32 0
  %arrayidx2061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2060, i32 0, i64 0
  %osucc2062 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2061, i32 0, i32 1
  store %union.rec* %810, %union.rec** %osucc2062, align 8
  %813 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %814 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12063 = bitcast %union.rec* %814 to %struct.word_type*
  %olist2064 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12063, i32 0, i32 0
  %arrayidx2065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2064, i32 0, i64 0
  %opred2066 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2065, i32 0, i32 0
  store %union.rec* %813, %union.rec** %opred2066, align 8
  %815 = load %union.rec*, %union.rec** @zz_res, align 8
  %816 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12067 = bitcast %union.rec* %816 to %struct.word_type*
  %olist2068 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12067, i32 0, i32 0
  %arrayidx2069 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2068, i32 0, i64 0
  %osucc2070 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2069, i32 0, i32 1
  store %union.rec* %815, %union.rec** %osucc2070, align 8
  br label %cond.end.2071

cond.end.2071:                                    ; preds = %cond.false.2042, %cond.true.2041
  %cond2072 = phi %union.rec* [ %804, %cond.true.2041 ], [ %815, %cond.false.2042 ]
  br label %cond.end.2073

cond.end.2073:                                    ; preds = %cond.end.2071, %cond.true.2037
  %cond2074 = phi %union.rec* [ %802, %cond.true.2037 ], [ %cond2072, %cond.end.2071 ]
  %817 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %817, %union.rec** @zz_res, align 8
  %818 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %818, %union.rec** @zz_hold, align 8
  %819 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2075 = icmp eq %union.rec* %819, null
  br i1 %cmp2075, label %cond.true.2077, label %cond.false.2078

cond.true.2077:                                   ; preds = %cond.end.2073
  %820 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2113

cond.false.2078:                                  ; preds = %cond.end.2073
  %821 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2079 = icmp eq %union.rec* %821, null
  br i1 %cmp2079, label %cond.true.2081, label %cond.false.2082

cond.true.2081:                                   ; preds = %cond.false.2078
  %822 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2111

cond.false.2082:                                  ; preds = %cond.false.2078
  %823 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12083 = bitcast %union.rec* %823 to %struct.word_type*
  %olist2084 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12083, i32 0, i32 0
  %arrayidx2085 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2084, i32 0, i64 1
  %opred2086 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2085, i32 0, i32 0
  %824 = load %union.rec*, %union.rec** %opred2086, align 8
  store %union.rec* %824, %union.rec** @zz_tmp, align 8
  %825 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12087 = bitcast %union.rec* %825 to %struct.word_type*
  %olist2088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12087, i32 0, i32 0
  %arrayidx2089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2088, i32 0, i64 1
  %opred2090 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2089, i32 0, i32 0
  %826 = load %union.rec*, %union.rec** %opred2090, align 8
  %827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12091 = bitcast %union.rec* %827 to %struct.word_type*
  %olist2092 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12091, i32 0, i32 0
  %arrayidx2093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2092, i32 0, i64 1
  %opred2094 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2093, i32 0, i32 0
  store %union.rec* %826, %union.rec** %opred2094, align 8
  %828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %829 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12095 = bitcast %union.rec* %829 to %struct.word_type*
  %olist2096 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12095, i32 0, i32 0
  %arrayidx2097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2096, i32 0, i64 1
  %opred2098 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2097, i32 0, i32 0
  %830 = load %union.rec*, %union.rec** %opred2098, align 8
  %os12099 = bitcast %union.rec* %830 to %struct.word_type*
  %olist2100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12099, i32 0, i32 0
  %arrayidx2101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2100, i32 0, i64 1
  %osucc2102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2101, i32 0, i32 1
  store %union.rec* %828, %union.rec** %osucc2102, align 8
  %831 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %832 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12103 = bitcast %union.rec* %832 to %struct.word_type*
  %olist2104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12103, i32 0, i32 0
  %arrayidx2105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2104, i32 0, i64 1
  %opred2106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2105, i32 0, i32 0
  store %union.rec* %831, %union.rec** %opred2106, align 8
  %833 = load %union.rec*, %union.rec** @zz_res, align 8
  %834 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12107 = bitcast %union.rec* %834 to %struct.word_type*
  %olist2108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12107, i32 0, i32 0
  %arrayidx2109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2108, i32 0, i64 1
  %osucc2110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2109, i32 0, i32 1
  store %union.rec* %833, %union.rec** %osucc2110, align 8
  br label %cond.end.2111

cond.end.2111:                                    ; preds = %cond.false.2082, %cond.true.2081
  %cond2112 = phi %union.rec* [ %822, %cond.true.2081 ], [ %833, %cond.false.2082 ]
  br label %cond.end.2113

cond.end.2113:                                    ; preds = %cond.end.2111, %cond.true.2077
  %cond2114 = phi %union.rec* [ %820, %cond.true.2077 ], [ %cond2112, %cond.end.2111 ]
  %835 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %835, %union.rec** @zz_hold, align 8
  %836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12115 = bitcast %union.rec* %836 to %struct.word_type*
  %olist2116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12115, i32 0, i32 0
  %arrayidx2117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2116, i32 0, i64 1
  %osucc2118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2117, i32 0, i32 1
  %837 = load %union.rec*, %union.rec** %osucc2118, align 8
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2119 = icmp eq %union.rec* %837, %838
  br i1 %cmp2119, label %cond.true.2121, label %cond.false.2122

cond.true.2121:                                   ; preds = %cond.end.2113
  br label %cond.end.2151

cond.false.2122:                                  ; preds = %cond.end.2113
  %839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12123 = bitcast %union.rec* %839 to %struct.word_type*
  %olist2124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12123, i32 0, i32 0
  %arrayidx2125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2124, i32 0, i64 1
  %osucc2126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2125, i32 0, i32 1
  %840 = load %union.rec*, %union.rec** %osucc2126, align 8
  store %union.rec* %840, %union.rec** @zz_res, align 8
  %841 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12127 = bitcast %union.rec* %841 to %struct.word_type*
  %olist2128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12127, i32 0, i32 0
  %arrayidx2129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2128, i32 0, i64 1
  %opred2130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2129, i32 0, i32 0
  %842 = load %union.rec*, %union.rec** %opred2130, align 8
  %843 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12131 = bitcast %union.rec* %843 to %struct.word_type*
  %olist2132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12131, i32 0, i32 0
  %arrayidx2133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2132, i32 0, i64 1
  %opred2134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2133, i32 0, i32 0
  store %union.rec* %842, %union.rec** %opred2134, align 8
  %844 = load %union.rec*, %union.rec** @zz_res, align 8
  %845 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12135 = bitcast %union.rec* %845 to %struct.word_type*
  %olist2136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12135, i32 0, i32 0
  %arrayidx2137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2136, i32 0, i64 1
  %opred2138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2137, i32 0, i32 0
  %846 = load %union.rec*, %union.rec** %opred2138, align 8
  %os12139 = bitcast %union.rec* %846 to %struct.word_type*
  %olist2140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12139, i32 0, i32 0
  %arrayidx2141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2140, i32 0, i64 1
  %osucc2142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2141, i32 0, i32 1
  store %union.rec* %844, %union.rec** %osucc2142, align 8
  %847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12143 = bitcast %union.rec* %848 to %struct.word_type*
  %olist2144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12143, i32 0, i32 0
  %arrayidx2145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2144, i32 0, i64 1
  %osucc2146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2145, i32 0, i32 1
  store %union.rec* %847, %union.rec** %osucc2146, align 8
  %849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12147 = bitcast %union.rec* %849 to %struct.word_type*
  %olist2148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12147, i32 0, i32 0
  %arrayidx2149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2148, i32 0, i64 1
  %opred2150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2149, i32 0, i32 0
  store %union.rec* %847, %union.rec** %opred2150, align 8
  %850 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2151

cond.end.2151:                                    ; preds = %cond.false.2122, %cond.true.2121
  %cond2152 = phi %union.rec* [ null, %cond.true.2121 ], [ %850, %cond.false.2122 ]
  store %union.rec* %cond2152, %union.rec** @xx_tmp, align 8
  %851 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %851, %union.rec** @zz_res, align 8
  %852 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %852, %union.rec** @zz_hold, align 8
  %853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2153 = icmp eq %union.rec* %853, null
  br i1 %cmp2153, label %cond.true.2155, label %cond.false.2156

cond.true.2155:                                   ; preds = %cond.end.2151
  %854 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2191

cond.false.2156:                                  ; preds = %cond.end.2151
  %855 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2157 = icmp eq %union.rec* %855, null
  br i1 %cmp2157, label %cond.true.2159, label %cond.false.2160

cond.true.2159:                                   ; preds = %cond.false.2156
  %856 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2189

cond.false.2160:                                  ; preds = %cond.false.2156
  %857 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12161 = bitcast %union.rec* %857 to %struct.word_type*
  %olist2162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12161, i32 0, i32 0
  %arrayidx2163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2162, i32 0, i64 1
  %opred2164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2163, i32 0, i32 0
  %858 = load %union.rec*, %union.rec** %opred2164, align 8
  store %union.rec* %858, %union.rec** @zz_tmp, align 8
  %859 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12165 = bitcast %union.rec* %859 to %struct.word_type*
  %olist2166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12165, i32 0, i32 0
  %arrayidx2167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2166, i32 0, i64 1
  %opred2168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2167, i32 0, i32 0
  %860 = load %union.rec*, %union.rec** %opred2168, align 8
  %861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12169 = bitcast %union.rec* %861 to %struct.word_type*
  %olist2170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12169, i32 0, i32 0
  %arrayidx2171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2170, i32 0, i64 1
  %opred2172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2171, i32 0, i32 0
  store %union.rec* %860, %union.rec** %opred2172, align 8
  %862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %863 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12173 = bitcast %union.rec* %863 to %struct.word_type*
  %olist2174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12173, i32 0, i32 0
  %arrayidx2175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2174, i32 0, i64 1
  %opred2176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2175, i32 0, i32 0
  %864 = load %union.rec*, %union.rec** %opred2176, align 8
  %os12177 = bitcast %union.rec* %864 to %struct.word_type*
  %olist2178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12177, i32 0, i32 0
  %arrayidx2179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2178, i32 0, i64 1
  %osucc2180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2179, i32 0, i32 1
  store %union.rec* %862, %union.rec** %osucc2180, align 8
  %865 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %866 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12181 = bitcast %union.rec* %866 to %struct.word_type*
  %olist2182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12181, i32 0, i32 0
  %arrayidx2183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2182, i32 0, i64 1
  %opred2184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2183, i32 0, i32 0
  store %union.rec* %865, %union.rec** %opred2184, align 8
  %867 = load %union.rec*, %union.rec** @zz_res, align 8
  %868 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12185 = bitcast %union.rec* %868 to %struct.word_type*
  %olist2186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12185, i32 0, i32 0
  %arrayidx2187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2186, i32 0, i64 1
  %osucc2188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2187, i32 0, i32 1
  store %union.rec* %867, %union.rec** %osucc2188, align 8
  br label %cond.end.2189

cond.end.2189:                                    ; preds = %cond.false.2160, %cond.true.2159
  %cond2190 = phi %union.rec* [ %856, %cond.true.2159 ], [ %867, %cond.false.2160 ]
  br label %cond.end.2191

cond.end.2191:                                    ; preds = %cond.end.2189, %cond.true.2155
  %cond2192 = phi %union.rec* [ %854, %cond.true.2155 ], [ %cond2190, %cond.end.2189 ]
  %869 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %869, %union.rec** @zz_hold, align 8
  %870 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %870, %union.rec** @zz_hold, align 8
  %871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12193 = bitcast %union.rec* %871 to %struct.word_type*
  %ou12194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12193, i32 0, i32 1
  %os112195 = bitcast %union.FIRST_UNION* %ou12194 to %struct.anon*
  %otype2196 = getelementptr inbounds %struct.anon, %struct.anon* %os112195, i32 0, i32 0
  %872 = load i8, i8* %otype2196, align 1
  %conv2197 = zext i8 %872 to i32
  %cmp2198 = icmp eq i32 %conv2197, 11
  br i1 %cmp2198, label %cond.true.2208, label %lor.lhs.false.2200

lor.lhs.false.2200:                               ; preds = %cond.end.2191
  %873 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12201 = bitcast %union.rec* %873 to %struct.word_type*
  %ou12202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12201, i32 0, i32 1
  %os112203 = bitcast %union.FIRST_UNION* %ou12202 to %struct.anon*
  %otype2204 = getelementptr inbounds %struct.anon, %struct.anon* %os112203, i32 0, i32 0
  %874 = load i8, i8* %otype2204, align 1
  %conv2205 = zext i8 %874 to i32
  %cmp2206 = icmp eq i32 %conv2205, 12
  br i1 %cmp2206, label %cond.true.2208, label %cond.false.2214

cond.true.2208:                                   ; preds = %lor.lhs.false.2200, %cond.end.2191
  %875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12209 = bitcast %union.rec* %875 to %struct.word_type*
  %ou12210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12209, i32 0, i32 1
  %os112211 = bitcast %union.FIRST_UNION* %ou12210 to %struct.anon*
  %orec_size2212 = getelementptr inbounds %struct.anon, %struct.anon* %os112211, i32 0, i32 1
  %876 = load i8, i8* %orec_size2212, align 1
  %conv2213 = zext i8 %876 to i32
  br label %cond.end.2222

cond.false.2214:                                  ; preds = %lor.lhs.false.2200
  %877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12215 = bitcast %union.rec* %877 to %struct.word_type*
  %ou12216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12215, i32 0, i32 1
  %os112217 = bitcast %union.FIRST_UNION* %ou12216 to %struct.anon*
  %otype2218 = getelementptr inbounds %struct.anon, %struct.anon* %os112217, i32 0, i32 0
  %878 = load i8, i8* %otype2218, align 1
  %idxprom2219 = zext i8 %878 to i64
  %arrayidx2220 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2219
  %879 = load i8, i8* %arrayidx2220, align 1
  %conv2221 = zext i8 %879 to i32
  br label %cond.end.2222

cond.end.2222:                                    ; preds = %cond.false.2214, %cond.true.2208
  %cond2223 = phi i32 [ %conv2213, %cond.true.2208 ], [ %conv2221, %cond.false.2214 ]
  store i32 %cond2223, i32* @zz_size, align 4
  %880 = load i32, i32* @zz_size, align 4
  %idxprom2224 = sext i32 %880 to i64
  %arrayidx2225 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2224
  %881 = load %union.rec*, %union.rec** %arrayidx2225, align 8
  %882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12226 = bitcast %union.rec* %882 to %struct.word_type*
  %olist2227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12226, i32 0, i32 0
  %arrayidx2228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2227, i32 0, i64 0
  %opred2229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2228, i32 0, i32 0
  store %union.rec* %881, %union.rec** %opred2229, align 8
  %883 = load %union.rec*, %union.rec** @zz_hold, align 8
  %884 = load i32, i32* @zz_size, align 4
  %idxprom2230 = sext i32 %884 to i64
  %arrayidx2231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2230
  store %union.rec* %883, %union.rec** %arrayidx2231, align 8
  %885 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %885, %union.rec** %x.addr, align 8
  br label %sw.epilog.2477

sw.bb.2232:                                       ; preds = %for.end.1861
  %arraydecay2233 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %886 = load i8*, i8** %q, align 8
  %887 = load %union.rec*, %union.rec** %x.addr, align 8
  %888 = load i32, i32* %small_font, align 4
  %call2234 = call %union.rec* @DoWord(i8* %arraydecay2233, i8* %886, %union.rec* %887, i32 %888)
  store %union.rec* %call2234, %union.rec** %tmp, align 8
  %889 = load %union.rec*, %union.rec** %x.addr, align 8
  %890 = load i32, i32* %vshift, align 4
  %891 = load %union.rec*, %union.rec** %tmp, align 8
  %call2235 = call %union.rec* @DoVShift(%union.rec* %889, i32 %890, %union.rec* %891)
  store %union.rec* %call2235, %union.rec** %new_y, align 8
  %892 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2236 = zext i8 %892 to i32
  store i32 %conv2236, i32* @zz_size, align 4
  %conv2237 = sext i32 %conv2236 to i64
  %cmp2238 = icmp uge i64 %conv2237, 265
  br i1 %cmp2238, label %if.then.2240, label %if.else.2242

if.then.2240:                                     ; preds = %sw.bb.2232
  %893 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2241 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %893)
  br label %if.end.2259

if.else.2242:                                     ; preds = %sw.bb.2232
  %894 = load i32, i32* @zz_size, align 4
  %idxprom2243 = sext i32 %894 to i64
  %arrayidx2244 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2243
  %895 = load %union.rec*, %union.rec** %arrayidx2244, align 8
  %cmp2245 = icmp eq %union.rec* %895, null
  br i1 %cmp2245, label %if.then.2247, label %if.else.2249

if.then.2247:                                     ; preds = %if.else.2242
  %896 = load i32, i32* @zz_size, align 4
  %897 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2248 = call %union.rec* @GetMemory(i32 %896, %struct.FILE_POS* %897)
  store %union.rec* %call2248, %union.rec** @zz_hold, align 8
  br label %if.end.2258

if.else.2249:                                     ; preds = %if.else.2242
  %898 = load i32, i32* @zz_size, align 4
  %idxprom2250 = sext i32 %898 to i64
  %arrayidx2251 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2250
  %899 = load %union.rec*, %union.rec** %arrayidx2251, align 8
  store %union.rec* %899, %union.rec** @zz_hold, align 8
  store %union.rec* %899, %union.rec** @zz_hold, align 8
  %900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12252 = bitcast %union.rec* %900 to %struct.word_type*
  %olist2253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12252, i32 0, i32 0
  %arrayidx2254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2253, i32 0, i64 0
  %opred2255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2254, i32 0, i32 0
  %901 = load %union.rec*, %union.rec** %opred2255, align 8
  %902 = load i32, i32* @zz_size, align 4
  %idxprom2256 = sext i32 %902 to i64
  %arrayidx2257 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2256
  store %union.rec* %901, %union.rec** %arrayidx2257, align 8
  br label %if.end.2258

if.end.2258:                                      ; preds = %if.else.2249, %if.then.2247
  br label %if.end.2259

if.end.2259:                                      ; preds = %if.end.2258, %if.then.2240
  %903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12260 = bitcast %union.rec* %903 to %struct.word_type*
  %ou12261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12260, i32 0, i32 1
  %os112262 = bitcast %union.FIRST_UNION* %ou12261 to %struct.anon*
  %otype2263 = getelementptr inbounds %struct.anon, %struct.anon* %os112262, i32 0, i32 0
  store i8 0, i8* %otype2263, align 1
  %904 = load %union.rec*, %union.rec** @zz_hold, align 8
  %905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12264 = bitcast %union.rec* %905 to %struct.word_type*
  %olist2265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12264, i32 0, i32 0
  %arrayidx2266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2265, i32 0, i64 1
  %osucc2267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2266, i32 0, i32 1
  store %union.rec* %904, %union.rec** %osucc2267, align 8
  %906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12268 = bitcast %union.rec* %906 to %struct.word_type*
  %olist2269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12268, i32 0, i32 0
  %arrayidx2270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2269, i32 0, i64 1
  %opred2271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2270, i32 0, i32 0
  store %union.rec* %904, %union.rec** %opred2271, align 8
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12272 = bitcast %union.rec* %907 to %struct.word_type*
  %olist2273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12272, i32 0, i32 0
  %arrayidx2274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2273, i32 0, i64 0
  %osucc2275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2274, i32 0, i32 1
  store %union.rec* %904, %union.rec** %osucc2275, align 8
  %908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12276 = bitcast %union.rec* %908 to %struct.word_type*
  %olist2277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12276, i32 0, i32 0
  %arrayidx2278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2277, i32 0, i64 0
  %opred2279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2278, i32 0, i32 0
  store %union.rec* %904, %union.rec** %opred2279, align 8
  store %union.rec* %904, %union.rec** @xx_link, align 8
  %909 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %909, %union.rec** @zz_res, align 8
  %910 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %910, %union.rec** @zz_hold, align 8
  %911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2280 = icmp eq %union.rec* %911, null
  br i1 %cmp2280, label %cond.true.2282, label %cond.false.2283

cond.true.2282:                                   ; preds = %if.end.2259
  %912 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2318

cond.false.2283:                                  ; preds = %if.end.2259
  %913 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2284 = icmp eq %union.rec* %913, null
  br i1 %cmp2284, label %cond.true.2286, label %cond.false.2287

cond.true.2286:                                   ; preds = %cond.false.2283
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2316

cond.false.2287:                                  ; preds = %cond.false.2283
  %915 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12288 = bitcast %union.rec* %915 to %struct.word_type*
  %olist2289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12288, i32 0, i32 0
  %arrayidx2290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2289, i32 0, i64 0
  %opred2291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2290, i32 0, i32 0
  %916 = load %union.rec*, %union.rec** %opred2291, align 8
  store %union.rec* %916, %union.rec** @zz_tmp, align 8
  %917 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12292 = bitcast %union.rec* %917 to %struct.word_type*
  %olist2293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12292, i32 0, i32 0
  %arrayidx2294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2293, i32 0, i64 0
  %opred2295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2294, i32 0, i32 0
  %918 = load %union.rec*, %union.rec** %opred2295, align 8
  %919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12296 = bitcast %union.rec* %919 to %struct.word_type*
  %olist2297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12296, i32 0, i32 0
  %arrayidx2298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2297, i32 0, i64 0
  %opred2299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2298, i32 0, i32 0
  store %union.rec* %918, %union.rec** %opred2299, align 8
  %920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %921 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12300 = bitcast %union.rec* %921 to %struct.word_type*
  %olist2301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12300, i32 0, i32 0
  %arrayidx2302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2301, i32 0, i64 0
  %opred2303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2302, i32 0, i32 0
  %922 = load %union.rec*, %union.rec** %opred2303, align 8
  %os12304 = bitcast %union.rec* %922 to %struct.word_type*
  %olist2305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12304, i32 0, i32 0
  %arrayidx2306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2305, i32 0, i64 0
  %osucc2307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2306, i32 0, i32 1
  store %union.rec* %920, %union.rec** %osucc2307, align 8
  %923 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %924 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12308 = bitcast %union.rec* %924 to %struct.word_type*
  %olist2309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12308, i32 0, i32 0
  %arrayidx2310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2309, i32 0, i64 0
  %opred2311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2310, i32 0, i32 0
  store %union.rec* %923, %union.rec** %opred2311, align 8
  %925 = load %union.rec*, %union.rec** @zz_res, align 8
  %926 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12312 = bitcast %union.rec* %926 to %struct.word_type*
  %olist2313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12312, i32 0, i32 0
  %arrayidx2314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2313, i32 0, i64 0
  %osucc2315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2314, i32 0, i32 1
  store %union.rec* %925, %union.rec** %osucc2315, align 8
  br label %cond.end.2316

cond.end.2316:                                    ; preds = %cond.false.2287, %cond.true.2286
  %cond2317 = phi %union.rec* [ %914, %cond.true.2286 ], [ %925, %cond.false.2287 ]
  br label %cond.end.2318

cond.end.2318:                                    ; preds = %cond.end.2316, %cond.true.2282
  %cond2319 = phi %union.rec* [ %912, %cond.true.2282 ], [ %cond2317, %cond.end.2316 ]
  %927 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %927, %union.rec** @zz_res, align 8
  %928 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %928, %union.rec** @zz_hold, align 8
  %929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2320 = icmp eq %union.rec* %929, null
  br i1 %cmp2320, label %cond.true.2322, label %cond.false.2323

cond.true.2322:                                   ; preds = %cond.end.2318
  %930 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2358

cond.false.2323:                                  ; preds = %cond.end.2318
  %931 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2324 = icmp eq %union.rec* %931, null
  br i1 %cmp2324, label %cond.true.2326, label %cond.false.2327

cond.true.2326:                                   ; preds = %cond.false.2323
  %932 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2356

cond.false.2327:                                  ; preds = %cond.false.2323
  %933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12328 = bitcast %union.rec* %933 to %struct.word_type*
  %olist2329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12328, i32 0, i32 0
  %arrayidx2330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2329, i32 0, i64 1
  %opred2331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2330, i32 0, i32 0
  %934 = load %union.rec*, %union.rec** %opred2331, align 8
  store %union.rec* %934, %union.rec** @zz_tmp, align 8
  %935 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12332 = bitcast %union.rec* %935 to %struct.word_type*
  %olist2333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12332, i32 0, i32 0
  %arrayidx2334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2333, i32 0, i64 1
  %opred2335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2334, i32 0, i32 0
  %936 = load %union.rec*, %union.rec** %opred2335, align 8
  %937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12336 = bitcast %union.rec* %937 to %struct.word_type*
  %olist2337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12336, i32 0, i32 0
  %arrayidx2338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2337, i32 0, i64 1
  %opred2339 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2338, i32 0, i32 0
  store %union.rec* %936, %union.rec** %opred2339, align 8
  %938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %939 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12340 = bitcast %union.rec* %939 to %struct.word_type*
  %olist2341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12340, i32 0, i32 0
  %arrayidx2342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2341, i32 0, i64 1
  %opred2343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2342, i32 0, i32 0
  %940 = load %union.rec*, %union.rec** %opred2343, align 8
  %os12344 = bitcast %union.rec* %940 to %struct.word_type*
  %olist2345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12344, i32 0, i32 0
  %arrayidx2346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2345, i32 0, i64 1
  %osucc2347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2346, i32 0, i32 1
  store %union.rec* %938, %union.rec** %osucc2347, align 8
  %941 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %942 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12348 = bitcast %union.rec* %942 to %struct.word_type*
  %olist2349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12348, i32 0, i32 0
  %arrayidx2350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2349, i32 0, i64 1
  %opred2351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2350, i32 0, i32 0
  store %union.rec* %941, %union.rec** %opred2351, align 8
  %943 = load %union.rec*, %union.rec** @zz_res, align 8
  %944 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12352 = bitcast %union.rec* %944 to %struct.word_type*
  %olist2353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12352, i32 0, i32 0
  %arrayidx2354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2353, i32 0, i64 1
  %osucc2355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2354, i32 0, i32 1
  store %union.rec* %943, %union.rec** %osucc2355, align 8
  br label %cond.end.2356

cond.end.2356:                                    ; preds = %cond.false.2327, %cond.true.2326
  %cond2357 = phi %union.rec* [ %932, %cond.true.2326 ], [ %943, %cond.false.2327 ]
  br label %cond.end.2358

cond.end.2358:                                    ; preds = %cond.end.2356, %cond.true.2322
  %cond2359 = phi %union.rec* [ %930, %cond.true.2322 ], [ %cond2357, %cond.end.2356 ]
  %945 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %945, %union.rec** @zz_hold, align 8
  %946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12360 = bitcast %union.rec* %946 to %struct.word_type*
  %olist2361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12360, i32 0, i32 0
  %arrayidx2362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2361, i32 0, i64 1
  %osucc2363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2362, i32 0, i32 1
  %947 = load %union.rec*, %union.rec** %osucc2363, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2364 = icmp eq %union.rec* %947, %948
  br i1 %cmp2364, label %cond.true.2366, label %cond.false.2367

cond.true.2366:                                   ; preds = %cond.end.2358
  br label %cond.end.2396

cond.false.2367:                                  ; preds = %cond.end.2358
  %949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12368 = bitcast %union.rec* %949 to %struct.word_type*
  %olist2369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12368, i32 0, i32 0
  %arrayidx2370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2369, i32 0, i64 1
  %osucc2371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2370, i32 0, i32 1
  %950 = load %union.rec*, %union.rec** %osucc2371, align 8
  store %union.rec* %950, %union.rec** @zz_res, align 8
  %951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12372 = bitcast %union.rec* %951 to %struct.word_type*
  %olist2373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12372, i32 0, i32 0
  %arrayidx2374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2373, i32 0, i64 1
  %opred2375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2374, i32 0, i32 0
  %952 = load %union.rec*, %union.rec** %opred2375, align 8
  %953 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12376 = bitcast %union.rec* %953 to %struct.word_type*
  %olist2377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12376, i32 0, i32 0
  %arrayidx2378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2377, i32 0, i64 1
  %opred2379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2378, i32 0, i32 0
  store %union.rec* %952, %union.rec** %opred2379, align 8
  %954 = load %union.rec*, %union.rec** @zz_res, align 8
  %955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12380 = bitcast %union.rec* %955 to %struct.word_type*
  %olist2381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12380, i32 0, i32 0
  %arrayidx2382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2381, i32 0, i64 1
  %opred2383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2382, i32 0, i32 0
  %956 = load %union.rec*, %union.rec** %opred2383, align 8
  %os12384 = bitcast %union.rec* %956 to %struct.word_type*
  %olist2385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12384, i32 0, i32 0
  %arrayidx2386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2385, i32 0, i64 1
  %osucc2387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2386, i32 0, i32 1
  store %union.rec* %954, %union.rec** %osucc2387, align 8
  %957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12388 = bitcast %union.rec* %958 to %struct.word_type*
  %olist2389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12388, i32 0, i32 0
  %arrayidx2390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2389, i32 0, i64 1
  %osucc2391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2390, i32 0, i32 1
  store %union.rec* %957, %union.rec** %osucc2391, align 8
  %959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12392 = bitcast %union.rec* %959 to %struct.word_type*
  %olist2393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12392, i32 0, i32 0
  %arrayidx2394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2393, i32 0, i64 1
  %opred2395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2394, i32 0, i32 0
  store %union.rec* %957, %union.rec** %opred2395, align 8
  %960 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2396

cond.end.2396:                                    ; preds = %cond.false.2367, %cond.true.2366
  %cond2397 = phi %union.rec* [ null, %cond.true.2366 ], [ %960, %cond.false.2367 ]
  store %union.rec* %cond2397, %union.rec** @xx_tmp, align 8
  %961 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %961, %union.rec** @zz_res, align 8
  %962 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %962, %union.rec** @zz_hold, align 8
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2398 = icmp eq %union.rec* %963, null
  br i1 %cmp2398, label %cond.true.2400, label %cond.false.2401

cond.true.2400:                                   ; preds = %cond.end.2396
  %964 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2436

cond.false.2401:                                  ; preds = %cond.end.2396
  %965 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2402 = icmp eq %union.rec* %965, null
  br i1 %cmp2402, label %cond.true.2404, label %cond.false.2405

cond.true.2404:                                   ; preds = %cond.false.2401
  %966 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2434

cond.false.2405:                                  ; preds = %cond.false.2401
  %967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12406 = bitcast %union.rec* %967 to %struct.word_type*
  %olist2407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12406, i32 0, i32 0
  %arrayidx2408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2407, i32 0, i64 1
  %opred2409 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2408, i32 0, i32 0
  %968 = load %union.rec*, %union.rec** %opred2409, align 8
  store %union.rec* %968, %union.rec** @zz_tmp, align 8
  %969 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12410 = bitcast %union.rec* %969 to %struct.word_type*
  %olist2411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12410, i32 0, i32 0
  %arrayidx2412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2411, i32 0, i64 1
  %opred2413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2412, i32 0, i32 0
  %970 = load %union.rec*, %union.rec** %opred2413, align 8
  %971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12414 = bitcast %union.rec* %971 to %struct.word_type*
  %olist2415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12414, i32 0, i32 0
  %arrayidx2416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2415, i32 0, i64 1
  %opred2417 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2416, i32 0, i32 0
  store %union.rec* %970, %union.rec** %opred2417, align 8
  %972 = load %union.rec*, %union.rec** @zz_hold, align 8
  %973 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12418 = bitcast %union.rec* %973 to %struct.word_type*
  %olist2419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12418, i32 0, i32 0
  %arrayidx2420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2419, i32 0, i64 1
  %opred2421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2420, i32 0, i32 0
  %974 = load %union.rec*, %union.rec** %opred2421, align 8
  %os12422 = bitcast %union.rec* %974 to %struct.word_type*
  %olist2423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12422, i32 0, i32 0
  %arrayidx2424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2423, i32 0, i64 1
  %osucc2425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2424, i32 0, i32 1
  store %union.rec* %972, %union.rec** %osucc2425, align 8
  %975 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %976 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12426 = bitcast %union.rec* %976 to %struct.word_type*
  %olist2427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12426, i32 0, i32 0
  %arrayidx2428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2427, i32 0, i64 1
  %opred2429 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2428, i32 0, i32 0
  store %union.rec* %975, %union.rec** %opred2429, align 8
  %977 = load %union.rec*, %union.rec** @zz_res, align 8
  %978 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12430 = bitcast %union.rec* %978 to %struct.word_type*
  %olist2431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12430, i32 0, i32 0
  %arrayidx2432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2431, i32 0, i64 1
  %osucc2433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2432, i32 0, i32 1
  store %union.rec* %977, %union.rec** %osucc2433, align 8
  br label %cond.end.2434

cond.end.2434:                                    ; preds = %cond.false.2405, %cond.true.2404
  %cond2435 = phi %union.rec* [ %966, %cond.true.2404 ], [ %977, %cond.false.2405 ]
  br label %cond.end.2436

cond.end.2436:                                    ; preds = %cond.end.2434, %cond.true.2400
  %cond2437 = phi %union.rec* [ %964, %cond.true.2400 ], [ %cond2435, %cond.end.2434 ]
  %979 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %979, %union.rec** @zz_hold, align 8
  %980 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %980, %union.rec** @zz_hold, align 8
  %981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12438 = bitcast %union.rec* %981 to %struct.word_type*
  %ou12439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12438, i32 0, i32 1
  %os112440 = bitcast %union.FIRST_UNION* %ou12439 to %struct.anon*
  %otype2441 = getelementptr inbounds %struct.anon, %struct.anon* %os112440, i32 0, i32 0
  %982 = load i8, i8* %otype2441, align 1
  %conv2442 = zext i8 %982 to i32
  %cmp2443 = icmp eq i32 %conv2442, 11
  br i1 %cmp2443, label %cond.true.2453, label %lor.lhs.false.2445

lor.lhs.false.2445:                               ; preds = %cond.end.2436
  %983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12446 = bitcast %union.rec* %983 to %struct.word_type*
  %ou12447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12446, i32 0, i32 1
  %os112448 = bitcast %union.FIRST_UNION* %ou12447 to %struct.anon*
  %otype2449 = getelementptr inbounds %struct.anon, %struct.anon* %os112448, i32 0, i32 0
  %984 = load i8, i8* %otype2449, align 1
  %conv2450 = zext i8 %984 to i32
  %cmp2451 = icmp eq i32 %conv2450, 12
  br i1 %cmp2451, label %cond.true.2453, label %cond.false.2459

cond.true.2453:                                   ; preds = %lor.lhs.false.2445, %cond.end.2436
  %985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12454 = bitcast %union.rec* %985 to %struct.word_type*
  %ou12455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12454, i32 0, i32 1
  %os112456 = bitcast %union.FIRST_UNION* %ou12455 to %struct.anon*
  %orec_size2457 = getelementptr inbounds %struct.anon, %struct.anon* %os112456, i32 0, i32 1
  %986 = load i8, i8* %orec_size2457, align 1
  %conv2458 = zext i8 %986 to i32
  br label %cond.end.2467

cond.false.2459:                                  ; preds = %lor.lhs.false.2445
  %987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12460 = bitcast %union.rec* %987 to %struct.word_type*
  %ou12461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12460, i32 0, i32 1
  %os112462 = bitcast %union.FIRST_UNION* %ou12461 to %struct.anon*
  %otype2463 = getelementptr inbounds %struct.anon, %struct.anon* %os112462, i32 0, i32 0
  %988 = load i8, i8* %otype2463, align 1
  %idxprom2464 = zext i8 %988 to i64
  %arrayidx2465 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2464
  %989 = load i8, i8* %arrayidx2465, align 1
  %conv2466 = zext i8 %989 to i32
  br label %cond.end.2467

cond.end.2467:                                    ; preds = %cond.false.2459, %cond.true.2453
  %cond2468 = phi i32 [ %conv2458, %cond.true.2453 ], [ %conv2466, %cond.false.2459 ]
  store i32 %cond2468, i32* @zz_size, align 4
  %990 = load i32, i32* @zz_size, align 4
  %idxprom2469 = sext i32 %990 to i64
  %arrayidx2470 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2469
  %991 = load %union.rec*, %union.rec** %arrayidx2470, align 8
  %992 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12471 = bitcast %union.rec* %992 to %struct.word_type*
  %olist2472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12471, i32 0, i32 0
  %arrayidx2473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2472, i32 0, i64 0
  %opred2474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2473, i32 0, i32 0
  store %union.rec* %991, %union.rec** %opred2474, align 8
  %993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %994 = load i32, i32* @zz_size, align 4
  %idxprom2475 = sext i32 %994 to i64
  %arrayidx2476 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2475
  store %union.rec* %993, %union.rec** %arrayidx2476, align 8
  %995 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %995, %union.rec** %x.addr, align 8
  br label %sw.epilog.2477

sw.epilog.2477:                                   ; preds = %for.end.1861, %cond.end.2467, %cond.end.2222, %cond.end.1973, %sw.bb.1862
  %996 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %996, %union.rec** %retval
  br label %return

return:                                           ; preds = %sw.epilog.2477, %for.end, %if.then.23
  %997 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %997
}

declare i32 @FontMapping(i32, %struct.FILE_POS*) #2

declare void @FontChange(%struct.STYLE*, %union.rec*) #2

declare i32 @FontHalfXHeight(i32) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @DoWord(i8* %buff, i8* %q, %union.rec* %x, i32 %fnum) #0 {
entry:
  %buff.addr = alloca i8*, align 8
  %q.addr = alloca i8*, align 8
  %x.addr = alloca %union.rec*, align 8
  %fnum.addr = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i8* %buff, i8** %buff.addr, align 8
  store i8* %q, i8** %q.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %fnum, i32* %fnum.addr, align 4
  %0 = load i8*, i8** %q.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %q.addr, align 8
  store i8 0, i8* %0, align 1
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %buff.addr, align 8
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %4 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou13 to %struct.FILE_POS*
  %call = call %union.rec* @MakeWord(i32 %conv, i8* %3, %struct.FILE_POS* %ofpos)
  store %union.rec* %call, %union.rec** %res, align 8
  %5 = load i32, i32* %fnum.addr, align 4
  %6 = load %union.rec*, %union.rec** %res, align 8
  %os14 = bitcast %union.rec* %6 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %7 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.value = and i32 %5, 4095
  %bf.clear = and i32 %bf.load, -4096
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %7, align 4
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15 = bitcast %union.rec* %8 to %struct.word_type*
  %ou26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 2
  %os227 = bitcast %union.SECOND_UNION* %ou26 to %struct.anon.1*
  %9 = bitcast %struct.anon.1* %os227 to i32*
  %bf.load8 = load i32, i32* %9, align 4
  %bf.lshr = lshr i32 %bf.load8, 12
  %bf.clear9 = and i32 %bf.lshr, 1023
  %10 = load %union.rec*, %union.rec** %res, align 8
  %os110 = bitcast %union.rec* %10 to %struct.word_type*
  %ou211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 2
  %os2212 = bitcast %union.SECOND_UNION* %ou211 to %struct.anon.1*
  %11 = bitcast %struct.anon.1* %os2212 to i32*
  %bf.load13 = load i32, i32* %11, align 4
  %bf.value14 = and i32 %bf.clear9, 1023
  %bf.shl = shl i32 %bf.value14, 12
  %bf.clear15 = and i32 %bf.load13, -4190209
  %bf.set16 = or i32 %bf.clear15, %bf.shl
  store i32 %bf.set16, i32* %11, align 4
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %12 to %struct.word_type*
  %ou218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 2
  %os2219 = bitcast %union.SECOND_UNION* %ou218 to %struct.anon.1*
  %13 = bitcast %struct.anon.1* %os2219 to i32*
  %bf.load20 = load i32, i32* %13, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 22
  %bf.clear22 = and i32 %bf.lshr21, 1
  %14 = load %union.rec*, %union.rec** %res, align 8
  %os123 = bitcast %union.rec* %14 to %struct.word_type*
  %ou224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 2
  %os2225 = bitcast %union.SECOND_UNION* %ou224 to %struct.anon.1*
  %15 = bitcast %struct.anon.1* %os2225 to i32*
  %bf.load26 = load i32, i32* %15, align 4
  %bf.value27 = and i32 %bf.clear22, 1
  %bf.shl28 = shl i32 %bf.value27, 22
  %bf.clear29 = and i32 %bf.load26, -4194305
  %bf.set30 = or i32 %bf.clear29, %bf.shl28
  store i32 %bf.set30, i32* %15, align 4
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os131 = bitcast %union.rec* %16 to %struct.word_type*
  %ou232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 2
  %os2233 = bitcast %union.SECOND_UNION* %ou232 to %struct.anon.1*
  %17 = bitcast %struct.anon.1* %os2233 to i32*
  %bf.load34 = load i32, i32* %17, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 23
  %bf.clear36 = and i32 %bf.lshr35, 63
  %18 = load %union.rec*, %union.rec** %res, align 8
  %os137 = bitcast %union.rec* %18 to %struct.word_type*
  %ou238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 2
  %os2239 = bitcast %union.SECOND_UNION* %ou238 to %struct.anon.1*
  %19 = bitcast %struct.anon.1* %os2239 to i32*
  %bf.load40 = load i32, i32* %19, align 4
  %bf.value41 = and i32 %bf.clear36, 63
  %bf.shl42 = shl i32 %bf.value41, 23
  %bf.clear43 = and i32 %bf.load40, -528482305
  %bf.set44 = or i32 %bf.clear43, %bf.shl42
  store i32 %bf.set44, i32* %19, align 4
  %20 = load %union.rec*, %union.rec** %x.addr, align 8
  %os145 = bitcast %union.rec* %20 to %struct.word_type*
  %ou246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 2
  %os2247 = bitcast %union.SECOND_UNION* %ou246 to %struct.anon.1*
  %21 = bitcast %struct.anon.1* %os2247 to i32*
  %bf.load48 = load i32, i32* %21, align 4
  %bf.lshr49 = lshr i32 %bf.load48, 31
  %22 = load %union.rec*, %union.rec** %res, align 8
  %os150 = bitcast %union.rec* %22 to %struct.word_type*
  %ou251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 2
  %os2252 = bitcast %union.SECOND_UNION* %ou251 to %struct.anon.1*
  %23 = bitcast %struct.anon.1* %os2252 to i32*
  %bf.load53 = load i32, i32* %23, align 4
  %bf.value54 = and i32 %bf.lshr49, 1
  %bf.shl55 = shl i32 %bf.value54, 31
  %bf.clear56 = and i32 %bf.load53, 2147483647
  %bf.set57 = or i32 %bf.clear56, %bf.shl55
  store i32 %bf.set57, i32* %23, align 4
  %24 = load %union.rec*, %union.rec** %res, align 8
  %os158 = bitcast %union.rec* %24 to %struct.word_type*
  %ou259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 2
  %os2260 = bitcast %union.SECOND_UNION* %ou259 to %struct.anon.1*
  %25 = bitcast %struct.anon.1* %os2260 to i32*
  %bf.load61 = load i32, i32* %25, align 4
  %bf.clear62 = and i32 %bf.load61, -1610612737
  %bf.set63 = or i32 %bf.clear62, 536870912
  store i32 %bf.set63, i32* %25, align 4
  %26 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %26
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind uwtable
define internal void @DoAddGap(%union.rec* %new_acat) #0 {
entry:
  %new_acat.addr = alloca %union.rec*, align 8
  %new_g = alloca %union.rec*, align 8
  store %union.rec* %new_acat, %union.rec** %new_acat.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %3 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp3 = icmp eq %union.rec* %3, null
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load i32, i32* @zz_size, align 4
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call %union.rec* @GetMemory(i32 %4, %struct.FILE_POS* %5)
  store %union.rec* %call6, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8
  %7 = load %union.rec*, %union.rec** %arrayidx9, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %10 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  store %union.rec* %9, %union.rec** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %11 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 1, i8* %otype, align 1
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %13 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %14 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred21, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc25, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred29, align 8
  store %union.rec* %12, %union.rec** %new_g, align 8
  %17 = load %union.rec*, %union.rec** %new_acat.addr, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou131 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %18 = load i16, i16* %ofile_num, align 2
  %19 = load %union.rec*, %union.rec** %new_g, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %ofpos34 = bitcast %union.FIRST_UNION* %ou133 to %struct.FILE_POS*
  %ofile_num35 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos34, i32 0, i32 2
  store i16 %18, i16* %ofile_num35, align 2
  %20 = load %union.rec*, %union.rec** %new_acat.addr, align 8
  %os136 = bitcast %union.rec* %20 to %struct.word_type*
  %ou137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 1
  %ofpos38 = bitcast %union.FIRST_UNION* %ou137 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos38, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %21 = load %union.rec*, %union.rec** %new_g, align 8
  %os139 = bitcast %union.rec* %21 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %ofpos41 = bitcast %union.FIRST_UNION* %ou140 to %struct.FILE_POS*
  %oline_num42 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos41, i32 0, i32 3
  %bf.load43 = load i32, i32* %oline_num42, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear44 = and i32 %bf.load43, -1048576
  %bf.set = or i32 %bf.clear44, %bf.value
  store i32 %bf.set, i32* %oline_num42, align 4
  %22 = load %union.rec*, %union.rec** %new_acat.addr, align 8
  %os145 = bitcast %union.rec* %22 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos47 = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos47, i32 0, i32 3
  %bf.load48 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load48, 20
  %23 = load %union.rec*, %union.rec** %new_g, align 8
  %os149 = bitcast %union.rec* %23 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %ofpos51 = bitcast %union.FIRST_UNION* %ou150 to %struct.FILE_POS*
  %ocol_num52 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos51, i32 0, i32 3
  %bf.load53 = load i32, i32* %ocol_num52, align 4
  %bf.value54 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value54, 20
  %bf.clear55 = and i32 %bf.load53, 1048575
  %bf.set56 = or i32 %bf.clear55, %bf.shl
  store i32 %bf.set56, i32* %ocol_num52, align 4
  %24 = load %union.rec*, %union.rec** %new_g, align 8
  %os157 = bitcast %union.rec* %24 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 2
  store i8 0, i8* %ovspace, align 1
  %25 = load %union.rec*, %union.rec** %new_g, align 8
  %os158 = bitcast %union.rec* %25 to %struct.word_type*
  %ou259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 2
  %os2160 = bitcast %union.SECOND_UNION* %ou259 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2160, i32 0, i32 1
  store i8 0, i8* %ohspace, align 1
  %26 = load %union.rec*, %union.rec** %new_g, align 8
  %os5 = bitcast %union.rec* %26 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %27 = bitcast %struct.GAP* %ogap to i16*
  %bf.load61 = load i16, i16* %27, align 4
  %bf.clear62 = and i16 %bf.load61, -129
  %bf.set63 = or i16 %bf.clear62, 128
  store i16 %bf.set63, i16* %27, align 4
  %28 = load %union.rec*, %union.rec** %new_g, align 8
  %os564 = bitcast %union.rec* %28 to %struct.gapobj_type*
  %ogap65 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os564, i32 0, i32 3
  %29 = bitcast %struct.GAP* %ogap65 to i16*
  %bf.load66 = load i16, i16* %29, align 4
  %bf.clear67 = and i16 %bf.load66, -257
  store i16 %bf.clear67, i16* %29, align 4
  %30 = load %union.rec*, %union.rec** %new_g, align 8
  %os568 = bitcast %union.rec* %30 to %struct.gapobj_type*
  %ogap69 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os568, i32 0, i32 3
  %31 = bitcast %struct.GAP* %ogap69 to i16*
  %bf.load70 = load i16, i16* %31, align 4
  %bf.clear71 = and i16 %bf.load70, -513
  %bf.set72 = or i16 %bf.clear71, 512
  store i16 %bf.set72, i16* %31, align 4
  %32 = load %union.rec*, %union.rec** %new_g, align 8
  %os573 = bitcast %union.rec* %32 to %struct.gapobj_type*
  %ogap74 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os573, i32 0, i32 3
  %33 = bitcast %struct.GAP* %ogap74 to i16*
  %bf.load75 = load i16, i16* %33, align 4
  %bf.clear76 = and i16 %bf.load75, -7169
  %bf.set77 = or i16 %bf.clear76, 1024
  store i16 %bf.set77, i16* %33, align 4
  %34 = load %union.rec*, %union.rec** %new_g, align 8
  %os578 = bitcast %union.rec* %34 to %struct.gapobj_type*
  %ogap79 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os578, i32 0, i32 3
  %35 = bitcast %struct.GAP* %ogap79 to i16*
  %bf.load80 = load i16, i16* %35, align 4
  %bf.clear81 = and i16 %bf.load80, 8191
  %bf.set82 = or i16 %bf.clear81, 8192
  store i16 %bf.set82, i16* %35, align 4
  %36 = load %union.rec*, %union.rec** %new_g, align 8
  %os583 = bitcast %union.rec* %36 to %struct.gapobj_type*
  %ogap84 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os583, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap84, i32 0, i32 1
  store i16 0, i16* %owidth, align 2
  %37 = load %union.rec*, %union.rec** %new_g, align 8
  %os185 = bitcast %union.rec* %37 to %struct.word_type*
  %ou286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou286 to %struct.anon.1*
  %38 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load87 = load i32, i32* %38, align 4
  %bf.clear88 = and i32 %bf.load87, -1610612737
  %bf.set89 = or i32 %bf.clear88, 536870912
  store i32 %bf.set89, i32* %38, align 4
  %39 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv90 = zext i8 %39 to i32
  store i32 %conv90, i32* @zz_size, align 4
  %conv91 = sext i32 %conv90 to i64
  %cmp92 = icmp uge i64 %conv91, 265
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.end.13
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call95 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %40)
  br label %if.end.113

if.else.96:                                       ; preds = %if.end.13
  %41 = load i32, i32* @zz_size, align 4
  %idxprom97 = sext i32 %41 to i64
  %arrayidx98 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom97
  %42 = load %union.rec*, %union.rec** %arrayidx98, align 8
  %cmp99 = icmp eq %union.rec* %42, null
  br i1 %cmp99, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %if.else.96
  %43 = load i32, i32* @zz_size, align 4
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call102 = call %union.rec* @GetMemory(i32 %43, %struct.FILE_POS* %44)
  store %union.rec* %call102, %union.rec** @zz_hold, align 8
  br label %if.end.112

if.else.103:                                      ; preds = %if.else.96
  %45 = load i32, i32* @zz_size, align 4
  %idxprom104 = sext i32 %45 to i64
  %arrayidx105 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom104
  %46 = load %union.rec*, %union.rec** %arrayidx105, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1106 = bitcast %union.rec* %47 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %opred109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred109, align 8
  %49 = load i32, i32* @zz_size, align 4
  %idxprom110 = sext i32 %49 to i64
  %arrayidx111 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom110
  store %union.rec* %48, %union.rec** %arrayidx111, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.103, %if.then.101
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.94
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1114 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 1
  %os11116 = bitcast %union.FIRST_UNION* %ou1115 to %struct.anon*
  %otype117 = getelementptr inbounds %struct.anon, %struct.anon* %os11116, i32 0, i32 0
  store i8 0, i8* %otype117, align 1
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %52 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 1
  %osucc121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 1
  store %union.rec* %51, %union.rec** %osucc121, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1122 = bitcast %union.rec* %53 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 1
  %opred125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred125, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1126 = bitcast %union.rec* %54 to %struct.word_type*
  %olist127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist127, i32 0, i64 0
  %osucc129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx128, i32 0, i32 1
  store %union.rec* %51, %union.rec** %osucc129, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1130 = bitcast %union.rec* %55 to %struct.word_type*
  %olist131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist131, i32 0, i64 0
  %opred133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx132, i32 0, i32 0
  store %union.rec* %51, %union.rec** %opred133, align 8
  store %union.rec* %51, %union.rec** @xx_link, align 8
  %56 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %56, %union.rec** @zz_res, align 8
  %57 = load %union.rec*, %union.rec** %new_acat.addr, align 8
  store %union.rec* %57, %union.rec** @zz_hold, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp134 = icmp eq %union.rec* %58, null
  br i1 %cmp134, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.113
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.168

cond.false:                                       ; preds = %if.end.113
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp136 = icmp eq %union.rec* %60, null
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.false
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.139:                                   ; preds = %cond.false
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1140 = bitcast %union.rec* %62 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred143, align 8
  store %union.rec* %63, %union.rec** @zz_tmp, align 8
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1144 = bitcast %union.rec* %64 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %opred147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred147, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1148 = bitcast %union.rec* %66 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 0
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred151, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1152 = bitcast %union.rec* %68 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 0
  %opred155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred155, align 8
  %os1156 = bitcast %union.rec* %69 to %struct.word_type*
  %olist157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist157, i32 0, i64 0
  %osucc159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx158, i32 0, i32 1
  store %union.rec* %67, %union.rec** %osucc159, align 8
  %70 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1160 = bitcast %union.rec* %71 to %struct.word_type*
  %olist161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1160, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist161, i32 0, i64 0
  %opred163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx162, i32 0, i32 0
  store %union.rec* %70, %union.rec** %opred163, align 8
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %73 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1164 = bitcast %union.rec* %73 to %struct.word_type*
  %olist165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist165, i32 0, i64 0
  %osucc167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx166, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc167, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.139, %cond.true.138
  %cond = phi %union.rec* [ %61, %cond.true.138 ], [ %72, %cond.false.139 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end, %cond.true
  %cond169 = phi %union.rec* [ %59, %cond.true ], [ %cond, %cond.end ]
  %74 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %74, %union.rec** @zz_res, align 8
  %75 = load %union.rec*, %union.rec** %new_g, align 8
  store %union.rec* %75, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp170 = icmp eq %union.rec* %76, null
  br i1 %cmp170, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %cond.end.168
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.208

cond.false.173:                                   ; preds = %cond.end.168
  %78 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp174 = icmp eq %union.rec* %78, null
  br i1 %cmp174, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %cond.false.173
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.206

cond.false.177:                                   ; preds = %cond.false.173
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %80 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 1
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %opred181, align 8
  store %union.rec* %81, %union.rec** @zz_tmp, align 8
  %82 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1182 = bitcast %union.rec* %82 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 1
  %opred185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %opred185, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1186 = bitcast %union.rec* %84 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 1
  %opred189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred189, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %86 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1190 = bitcast %union.rec* %86 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 1
  %opred193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred193, align 8
  %os1194 = bitcast %union.rec* %87 to %struct.word_type*
  %olist195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist195, i32 0, i64 1
  %osucc197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx196, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc197, align 8
  %88 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1198 = bitcast %union.rec* %89 to %struct.word_type*
  %olist199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist199, i32 0, i64 1
  %opred201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx200, i32 0, i32 0
  store %union.rec* %88, %union.rec** %opred201, align 8
  %90 = load %union.rec*, %union.rec** @zz_res, align 8
  %91 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1202 = bitcast %union.rec* %91 to %struct.word_type*
  %olist203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist203, i32 0, i64 1
  %osucc205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx204, i32 0, i32 1
  store %union.rec* %90, %union.rec** %osucc205, align 8
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.177, %cond.true.176
  %cond207 = phi %union.rec* [ %79, %cond.true.176 ], [ %90, %cond.false.177 ]
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.end.206, %cond.true.172
  %cond209 = phi %union.rec* [ %77, %cond.true.172 ], [ %cond207, %cond.end.206 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @DoVShift(%union.rec* %x, i32 %vshift, %union.rec* %chld) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %vshift.addr = alloca i32, align 4
  %chld.addr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %vshift, i32* %vshift.addr, align 4
  store %union.rec* %chld, %union.rec** %chld.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 29), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %3 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp3 = icmp eq %union.rec* %3, null
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load i32, i32* @zz_size, align 4
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call %union.rec* @GetMemory(i32 %4, %struct.FILE_POS* %5)
  store %union.rec* %call6, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8
  %7 = load %union.rec*, %union.rec** %arrayidx9, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %10 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  store %union.rec* %9, %union.rec** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %11 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 29, i8* %otype, align 1
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %13 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %14 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred21, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc25, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred29, align 8
  store %union.rec* %12, %union.rec** %res, align 8
  %17 = load %union.rec*, %union.rec** %x.addr, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou131 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %18 = load i16, i16* %ofile_num, align 2
  %19 = load %union.rec*, %union.rec** %res, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %ofpos34 = bitcast %union.FIRST_UNION* %ou133 to %struct.FILE_POS*
  %ofile_num35 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos34, i32 0, i32 2
  store i16 %18, i16* %ofile_num35, align 2
  %20 = load %union.rec*, %union.rec** %x.addr, align 8
  %os136 = bitcast %union.rec* %20 to %struct.word_type*
  %ou137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 1
  %ofpos38 = bitcast %union.FIRST_UNION* %ou137 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos38, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os139 = bitcast %union.rec* %21 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %ofpos41 = bitcast %union.FIRST_UNION* %ou140 to %struct.FILE_POS*
  %oline_num42 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos41, i32 0, i32 3
  %bf.load43 = load i32, i32* %oline_num42, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear44 = and i32 %bf.load43, -1048576
  %bf.set = or i32 %bf.clear44, %bf.value
  store i32 %bf.set, i32* %oline_num42, align 4
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os145 = bitcast %union.rec* %22 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos47 = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos47, i32 0, i32 3
  %bf.load48 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load48, 20
  %23 = load %union.rec*, %union.rec** %res, align 8
  %os149 = bitcast %union.rec* %23 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %ofpos51 = bitcast %union.FIRST_UNION* %ou150 to %struct.FILE_POS*
  %ocol_num52 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos51, i32 0, i32 3
  %bf.load53 = load i32, i32* %ocol_num52, align 4
  %bf.value54 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value54, 20
  %bf.clear55 = and i32 %bf.load53, 1048575
  %bf.set56 = or i32 %bf.clear55, %bf.shl
  store i32 %bf.set56, i32* %ocol_num52, align 4
  %24 = load %union.rec*, %union.rec** %res, align 8
  %os2 = bitcast %union.rec* %24 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap, i32 0, i32 1
  store i16 160, i16* %owidth, align 2
  %25 = load %union.rec*, %union.rec** %res, align 8
  %os257 = bitcast %union.rec* %25 to %struct.closure_type*
  %ou458 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os257, i32 0, i32 4
  %osave_style59 = bitcast %union.FOURTH_UNION* %ou458 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style59, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %26 = bitcast %struct.GAP* %oline_gap to i16*
  %bf.load60 = load i16, i16* %26, align 4
  %bf.clear61 = and i16 %bf.load60, -7169
  %bf.set62 = or i16 %bf.clear61, 1024
  store i16 %bf.set62, i16* %26, align 4
  %27 = load %union.rec*, %union.rec** %res, align 8
  %os263 = bitcast %union.rec* %27 to %struct.closure_type*
  %ou464 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os263, i32 0, i32 4
  %osave_style65 = bitcast %union.FOURTH_UNION* %ou464 to %struct.STYLE*
  %osu166 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style65, i32 0, i32 0
  %oline_gap67 = bitcast %union.anon* %osu166 to %struct.GAP*
  %28 = bitcast %struct.GAP* %oline_gap67 to i16*
  %bf.load68 = load i16, i16* %28, align 4
  %bf.clear69 = and i16 %bf.load68, 8191
  %bf.set70 = or i16 %bf.clear69, 8192
  store i16 %bf.set70, i16* %28, align 4
  %29 = load i32, i32* %vshift.addr, align 4
  %conv71 = trunc i32 %29 to i16
  %30 = load %union.rec*, %union.rec** %res, align 8
  %os272 = bitcast %union.rec* %30 to %struct.closure_type*
  %ou473 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os272, i32 0, i32 4
  %osave_style74 = bitcast %union.FOURTH_UNION* %ou473 to %struct.STYLE*
  %osu175 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style74, i32 0, i32 0
  %oline_gap76 = bitcast %union.anon* %osu175 to %struct.GAP*
  %owidth77 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap76, i32 0, i32 1
  store i16 %conv71, i16* %owidth77, align 2
  %31 = load %union.rec*, %union.rec** %res, align 8
  %os178 = bitcast %union.rec* %31 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %32 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load79 = load i32, i32* %32, align 4
  %bf.clear80 = and i32 %bf.load79, -1610612737
  %bf.set81 = or i32 %bf.clear80, 536870912
  store i32 %bf.set81, i32* %32, align 4
  %33 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv82 = zext i8 %33 to i32
  store i32 %conv82, i32* @zz_size, align 4
  %conv83 = sext i32 %conv82 to i64
  %cmp84 = icmp uge i64 %conv83, 265
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.end.13
  %34 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call87 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %34)
  br label %if.end.105

if.else.88:                                       ; preds = %if.end.13
  %35 = load i32, i32* @zz_size, align 4
  %idxprom89 = sext i32 %35 to i64
  %arrayidx90 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom89
  %36 = load %union.rec*, %union.rec** %arrayidx90, align 8
  %cmp91 = icmp eq %union.rec* %36, null
  br i1 %cmp91, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %if.else.88
  %37 = load i32, i32* @zz_size, align 4
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call94 = call %union.rec* @GetMemory(i32 %37, %struct.FILE_POS* %38)
  store %union.rec* %call94, %union.rec** @zz_hold, align 8
  br label %if.end.104

if.else.95:                                       ; preds = %if.else.88
  %39 = load i32, i32* @zz_size, align 4
  %idxprom96 = sext i32 %39 to i64
  %arrayidx97 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom96
  %40 = load %union.rec*, %union.rec** %arrayidx97, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %41 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 0
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %opred101, align 8
  %43 = load i32, i32* @zz_size, align 4
  %idxprom102 = sext i32 %43 to i64
  %arrayidx103 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom102
  store %union.rec* %42, %union.rec** %arrayidx103, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.95, %if.then.93
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.86
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1106 = bitcast %union.rec* %44 to %struct.word_type*
  %ou1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 1
  %os11108 = bitcast %union.FIRST_UNION* %ou1107 to %struct.anon*
  %otype109 = getelementptr inbounds %struct.anon, %struct.anon* %os11108, i32 0, i32 0
  store i8 0, i8* %otype109, align 1
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %46 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 1
  %osucc113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc113, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1114 = bitcast %union.rec* %47 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 1
  %opred117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred117, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %48 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %osucc121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc121, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1122 = bitcast %union.rec* %49 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 0
  %opred125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred125, align 8
  store %union.rec* %45, %union.rec** @xx_link, align 8
  %50 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %50, %union.rec** @zz_res, align 8
  %51 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %51, %union.rec** @zz_hold, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp126 = icmp eq %union.rec* %52, null
  br i1 %cmp126, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.105
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.160

cond.false:                                       ; preds = %if.end.105
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp128 = icmp eq %union.rec* %54, null
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.false
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.131:                                   ; preds = %cond.false
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1132 = bitcast %union.rec* %56 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %opred135, align 8
  store %union.rec* %57, %union.rec** @zz_tmp, align 8
  %58 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1136 = bitcast %union.rec* %58 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %opred139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %opred139, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1140 = bitcast %union.rec* %60 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  store %union.rec* %59, %union.rec** %opred143, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1144 = bitcast %union.rec* %62 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %opred147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred147, align 8
  %os1148 = bitcast %union.rec* %63 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 0
  %osucc151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 1
  store %union.rec* %61, %union.rec** %osucc151, align 8
  %64 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1152 = bitcast %union.rec* %65 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 0
  %opred155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred155, align 8
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  %67 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1156 = bitcast %union.rec* %67 to %struct.word_type*
  %olist157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist157, i32 0, i64 0
  %osucc159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx158, i32 0, i32 1
  store %union.rec* %66, %union.rec** %osucc159, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.131, %cond.true.130
  %cond = phi %union.rec* [ %55, %cond.true.130 ], [ %66, %cond.false.131 ]
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.end, %cond.true
  %cond161 = phi %union.rec* [ %53, %cond.true ], [ %cond, %cond.end ]
  %68 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %68, %union.rec** @zz_res, align 8
  %69 = load %union.rec*, %union.rec** %chld.addr, align 8
  store %union.rec* %69, %union.rec** @zz_hold, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp162 = icmp eq %union.rec* %70, null
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.end.160
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.200

cond.false.165:                                   ; preds = %cond.end.160
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp166 = icmp eq %union.rec* %72, null
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %cond.false.165
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.198

cond.false.169:                                   ; preds = %cond.false.165
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1170 = bitcast %union.rec* %74 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 1
  %opred173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %opred173, align 8
  store %union.rec* %75, %union.rec** @zz_tmp, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1174 = bitcast %union.rec* %76 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 1
  %opred177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %opred177, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %78 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 1
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  store %union.rec* %77, %union.rec** %opred181, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1182 = bitcast %union.rec* %80 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 1
  %opred185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %opred185, align 8
  %os1186 = bitcast %union.rec* %81 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 1
  %osucc189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 1
  store %union.rec* %79, %union.rec** %osucc189, align 8
  %82 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1190 = bitcast %union.rec* %83 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 1
  %opred193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 0
  store %union.rec* %82, %union.rec** %opred193, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %85 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1194 = bitcast %union.rec* %85 to %struct.word_type*
  %olist195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist195, i32 0, i64 1
  %osucc197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx196, i32 0, i32 1
  store %union.rec* %84, %union.rec** %osucc197, align 8
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.169, %cond.true.168
  %cond199 = phi %union.rec* [ %73, %cond.true.168 ], [ %84, %cond.false.169 ]
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.end.198, %cond.true.164
  %cond201 = phi %union.rec* [ %71, %cond.true.164 ], [ %cond199, %cond.end.198 ]
  %86 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %86
}

; Function Attrs: nounwind uwtable
define i32 @MapIsLowerCase(i8 zeroext %ch, i32 %m) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %m.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1
  store i32 %m, i32* %m.addr, align 4
  %0 = load i8, i8* %ch.addr, align 1
  %idxprom = zext i8 %0 to i64
  %1 = load i32, i32* %m.addr, align 4
  %idxprom1 = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom1
  %2 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  %map = getelementptr inbounds %struct.mapvec, %struct.mapvec* %2, i32 0, i32 7
  %arrayidx2 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx2, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv4 = zext i1 %cmp to i32
  store i32 %conv4, i32* %res, align 4
  %4 = load i32, i32* %res, align 4
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
