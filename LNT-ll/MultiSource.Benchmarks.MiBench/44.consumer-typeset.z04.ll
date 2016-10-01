; ModuleID = './MultiSource.Benchmarks.MiBench/44.consumer-typeset.z04.bc'
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
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"^/\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"^//\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"^|\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"^||\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"^&\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"EchoCatOp\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %union.rec* @NewToken(i8 zeroext %xtype, %struct.FILE_POS* %xfpos, i8 zeroext %xvspace, i8 zeroext %xhspace, i8 zeroext %xprec, %union.rec* %xactual) #0 {
entry:
  %xtype.addr = alloca i8, align 1
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %xvspace.addr = alloca i8, align 1
  %xhspace.addr = alloca i8, align 1
  %xprec.addr = alloca i8, align 1
  %xactual.addr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store i8 %xtype, i8* %xtype.addr, align 1
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  store i8 %xvspace, i8* %xvspace.addr, align 1
  store i8 %xhspace, i8* %xhspace.addr, align 1
  store i8 %xprec, i8* %xprec.addr, align 1
  store %union.rec* %xactual, %union.rec** %xactual.addr, align 8
  %0 = load i8, i8* %xtype.addr, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end.15

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @zz_size, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3
  %4 = load %union.rec*, %union.rec** %arrayidx4, align 8
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

if.end.15:                                        ; preds = %if.end, %if.then
  %12 = load i8, i8* %xtype.addr, align 1
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 %12, i8* %otype, align 1
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os117 = bitcast %union.rec* %15 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %16 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 1
  %opred23 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred23, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os124 = bitcast %union.rec* %17 to %struct.word_type*
  %olist25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist25, i32 0, i64 0
  %osucc27 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx26, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc27, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os128 = bitcast %union.rec* %18 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 0
  %opred31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  store %union.rec* %14, %union.rec** %opred31, align 8
  store %union.rec* %14, %union.rec** %res, align 8
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %19, i32 0, i32 2
  %20 = load i16, i16* %ofile_num, align 2
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os132 = bitcast %union.rec* %21 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou133 to %struct.FILE_POS*
  %ofile_num34 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %20, i16* %ofile_num34, align 2
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %22, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %23 = load %union.rec*, %union.rec** %res, align 8
  %os135 = bitcast %union.rec* %23 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %ofpos37 = bitcast %union.FIRST_UNION* %ou136 to %struct.FILE_POS*
  %oline_num38 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos37, i32 0, i32 3
  %bf.load39 = load i32, i32* %oline_num38, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear40 = and i32 %bf.load39, -1048576
  %bf.set = or i32 %bf.clear40, %bf.value
  store i32 %bf.set, i32* %oline_num38, align 4
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %24, i32 0, i32 3
  %bf.load41 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load41, 20
  %25 = load %union.rec*, %union.rec** %res, align 8
  %os142 = bitcast %union.rec* %25 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %ofpos44 = bitcast %union.FIRST_UNION* %ou143 to %struct.FILE_POS*
  %ocol_num45 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos44, i32 0, i32 3
  %bf.load46 = load i32, i32* %ocol_num45, align 4
  %bf.value47 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value47, 20
  %bf.clear48 = and i32 %bf.load46, 1048575
  %bf.set49 = or i32 %bf.clear48, %bf.shl
  store i32 %bf.set49, i32* %ocol_num45, align 4
  %26 = load i8, i8* %xvspace.addr, align 1
  %27 = load %union.rec*, %union.rec** %res, align 8
  %os150 = bitcast %union.rec* %27 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 2
  store i8 %26, i8* %ovspace, align 1
  %28 = load i8, i8* %xhspace.addr, align 1
  %29 = load %union.rec*, %union.rec** %res, align 8
  %os151 = bitcast %union.rec* %29 to %struct.word_type*
  %ou252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 2
  %os2153 = bitcast %union.SECOND_UNION* %ou252 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2153, i32 0, i32 1
  store i8 %28, i8* %ohspace, align 1
  %30 = load i8, i8* %xprec.addr, align 1
  %31 = load %union.rec*, %union.rec** %res, align 8
  %os154 = bitcast %union.rec* %31 to %struct.word_type*
  %ou255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 2
  %os2156 = bitcast %union.SECOND_UNION* %ou255 to %struct.anon.0*
  %oprecedence = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2156, i32 0, i32 0
  store i8 %30, i8* %oprecedence, align 1
  %32 = load %union.rec*, %union.rec** %xactual.addr, align 8
  %33 = load %union.rec*, %union.rec** %res, align 8
  %os2 = bitcast %union.rec* %33 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  store %union.rec* %32, %union.rec** %oactual, align 8
  %34 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %34
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @CopyTokenList(%union.rec* %x, %struct.FILE_POS* %pos) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %pos.addr = alloca %struct.FILE_POS*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %0, %union.rec** %y, align 8
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %1, null
  br i1 %cmp, label %if.then, label %if.end.83

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load %union.rec*, %union.rec** %y, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %3 = load i8, i8* %otype, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 11
  br i1 %cmp1, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %4 = load %union.rec*, %union.rec** %y, align 8
  %os13 = bitcast %union.rec* %4 to %struct.word_type*
  %ou14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou14 to %struct.anon*
  %otype6 = getelementptr inbounds %struct.anon, %struct.anon* %os115, i32 0, i32 0
  %5 = load i8, i8* %otype6, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 12
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %lor.lhs.false, %do.body
  %6 = load %union.rec*, %union.rec** %y, align 8
  %os111 = bitcast %union.rec* %6 to %struct.word_type*
  %ou112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os1113 = bitcast %union.FIRST_UNION* %ou112 to %struct.anon*
  %otype14 = getelementptr inbounds %struct.anon, %struct.anon* %os1113, i32 0, i32 0
  %7 = load i8, i8* %otype14, align 1
  %conv15 = zext i8 %7 to i32
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os116 = bitcast %union.rec* %8 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call = call %union.rec* @MakeWord(i32 %conv15, i8* %arraydecay, %struct.FILE_POS* %9)
  store %union.rec* %call, %union.rec** %z, align 8
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os117 = bitcast %union.rec* %10 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 2
  %11 = load i8, i8* %ovspace, align 1
  %12 = load %union.rec*, %union.rec** %z, align 8
  %os118 = bitcast %union.rec* %12 to %struct.word_type*
  %ou219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 2
  %os2120 = bitcast %union.SECOND_UNION* %ou219 to %struct.anon.0*
  %ovspace21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2120, i32 0, i32 2
  store i8 %11, i8* %ovspace21, align 1
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %13 to %struct.word_type*
  %ou223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 2
  %os2124 = bitcast %union.SECOND_UNION* %ou223 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2124, i32 0, i32 1
  %14 = load i8, i8* %ohspace, align 1
  %15 = load %union.rec*, %union.rec** %z, align 8
  %os125 = bitcast %union.rec* %15 to %struct.word_type*
  %ou226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 2
  %os2127 = bitcast %union.SECOND_UNION* %ou226 to %struct.anon.0*
  %ohspace28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2127, i32 0, i32 1
  store i8 %14, i8* %ohspace28, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %union.rec*, %union.rec** %y, align 8
  %os129 = bitcast %union.rec* %16 to %struct.word_type*
  %ou130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os1131 = bitcast %union.FIRST_UNION* %ou130 to %struct.anon*
  %otype32 = getelementptr inbounds %struct.anon, %struct.anon* %os1131, i32 0, i32 0
  %17 = load i8, i8* %otype32, align 1
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os133 = bitcast %union.rec* %19 to %struct.word_type*
  %ou234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 2
  %os2135 = bitcast %union.SECOND_UNION* %ou234 to %struct.anon.0*
  %ovspace36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2135, i32 0, i32 2
  %20 = load i8, i8* %ovspace36, align 1
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os137 = bitcast %union.rec* %21 to %struct.word_type*
  %ou238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 2
  %os2139 = bitcast %union.SECOND_UNION* %ou238 to %struct.anon.0*
  %ohspace40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2139, i32 0, i32 1
  %22 = load i8, i8* %ohspace40, align 1
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os141 = bitcast %union.rec* %23 to %struct.word_type*
  %ou242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 2
  %os2143 = bitcast %union.SECOND_UNION* %ou242 to %struct.anon.0*
  %oprecedence = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2143, i32 0, i32 0
  %24 = load i8, i8* %oprecedence, align 1
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %25 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %26 = load %union.rec*, %union.rec** %oactual, align 8
  %call44 = call %union.rec* @NewToken(i8 zeroext %17, %struct.FILE_POS* %18, i8 zeroext %20, i8 zeroext %22, i8 zeroext %24, %union.rec* %26)
  store %union.rec* %call44, %union.rec** %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  %27 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %27, %union.rec** @zz_res, align 8
  %28 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp45 = icmp eq %union.rec* %29, null
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %30 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.75

cond.false:                                       ; preds = %if.end
  %31 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp47 = icmp eq %union.rec* %31, null
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.false
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.50:                                    ; preds = %cond.false
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os151 = bitcast %union.rec* %33 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %34, %union.rec** @zz_tmp, align 8
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  %os152 = bitcast %union.rec* %35 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 1
  %opred55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred55, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os156 = bitcast %union.rec* %37 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 1
  %opred59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 0
  store %union.rec* %36, %union.rec** %opred59, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = load %union.rec*, %union.rec** @zz_res, align 8
  %os160 = bitcast %union.rec* %39 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 1
  %opred63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %opred63, align 8
  %os164 = bitcast %union.rec* %40 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 1
  store %union.rec* %38, %union.rec** %osucc, align 8
  %41 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  %os167 = bitcast %union.rec* %42 to %struct.word_type*
  %olist68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist68, i32 0, i64 1
  %opred70 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx69, i32 0, i32 0
  store %union.rec* %41, %union.rec** %opred70, align 8
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  %44 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os171 = bitcast %union.rec* %44 to %struct.word_type*
  %olist72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist72, i32 0, i64 1
  %osucc74 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx73, i32 0, i32 1
  store %union.rec* %43, %union.rec** %osucc74, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.50, %cond.true.49
  %cond = phi %union.rec* [ %32, %cond.true.49 ], [ %43, %cond.false.50 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end, %cond.true
  %cond76 = phi %union.rec* [ %30, %cond.true ], [ %cond, %cond.end ]
  store %union.rec* %cond76, %union.rec** %res, align 8
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os177 = bitcast %union.rec* %45 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 1
  %osucc80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 1
  %46 = load %union.rec*, %union.rec** %osucc80, align 8
  store %union.rec* %46, %union.rec** %y, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end.75
  %47 = load %union.rec*, %union.rec** %y, align 8
  %48 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp81 = icmp ne %union.rec* %47, %48
  br i1 %cmp81, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.83

if.end.83:                                        ; preds = %do.end, %entry
  %49 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %49
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define i8* @EchoCatOp(i32 %xtype, i32 %xmark, i32 %xjoin) #0 {
entry:
  %retval = alloca i8*, align 8
  %xtype.addr = alloca i32, align 4
  %xmark.addr = alloca i32, align 4
  %xjoin.addr = alloca i32, align 4
  store i32 %xtype, i32* %xtype.addr, align 4
  store i32 %xmark, i32* %xmark.addr, align 4
  store i32 %xjoin, i32* %xjoin.addr, align 4
  %0 = load i32, i32* %xtype.addr, align 4
  switch i32 %0, label %sw.default [
    i32 19, label %sw.bb
    i32 18, label %sw.bb.5
    i32 17, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %xmark.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %2 = load i32, i32* %xjoin.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %3 = load i32, i32* %xjoin.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  %cond3 = select i1 %tobool2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i8* [ %cond, %cond.true ], [ %cond3, %cond.false ]
  store i8* %cond4, i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %4 = load i32, i32* %xmark.addr, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %sw.bb.5
  %5 = load i32, i32* %xjoin.addr, align 4
  %tobool8 = icmp ne i32 %5, 0
  %cond9 = select i1 %tobool8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)
  br label %cond.end.13

cond.false.10:                                    ; preds = %sw.bb.5
  %6 = load i32, i32* %xjoin.addr, align 4
  %tobool11 = icmp ne i32 %6, 0
  %cond12 = select i1 %tobool11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.7
  %cond14 = phi i8* [ %cond9, %cond.true.7 ], [ %cond12, %cond.false.10 ]
  store i8* %cond14, i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  %7 = load i32, i32* %xmark.addr, align 4
  %tobool16 = icmp ne i32 %7, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %sw.bb.15
  %8 = load i32, i32* %xjoin.addr, align 4
  %tobool18 = icmp ne i32 %8, 0
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)
  br label %cond.end.23

cond.false.20:                                    ; preds = %sw.bb.15
  %9 = load i32, i32* %xjoin.addr, align 4
  %tobool21 = icmp ne i32 %9, 0
  %cond22 = select i1 %tobool21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.17
  %cond24 = phi i8* [ %cond19, %cond.true.17 ], [ %cond22, %cond.false.20 ]
  store i8* %cond24, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %cond.end.23, %cond.end.13, %cond.end
  %11 = load i8*, i8** %retval
  ret i8* %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
