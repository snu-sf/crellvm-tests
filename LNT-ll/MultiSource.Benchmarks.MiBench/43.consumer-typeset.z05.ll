; ModuleID = './MultiSource.Benchmarks.MiBench/43.consumer-typeset.z05.bc'
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.anon.0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [43 x i8] c"left brace expected here in %s declaration\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@zz_hold = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"name of %s file expected here\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"unknown or misspelt symbol %s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"symbol name or %s expected here (%s declaration)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"symbol names missing in %s declaration\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s suffix should be omitted in %s clause\00", align 1
@InMemoryDbIndexes = external global i32, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"langdef\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"import name expected here\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"import %s not in scope\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"%s has %s clause, so cannot be extended\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"%s symbol name expected here\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"extend symbol %s not in scope\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"keyword %s or %s expected here\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"keyword %s expected here\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"ignoring export list of macro\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"compulsory\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"symbol name expected here\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"horizontally\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"precedence\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"associativity\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"%s expected here\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"precedence is too low (%d substituted)\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"precedence is too high (%d substituted)\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"associativity altered to %s\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"cannot find %s parameter name\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"@Target\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.44 = private unnamed_addr constant [44 x i8] c"opening left brace or @Begin of %s expected\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"exported symbol %s is not defined in %s\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"body parameter %s may not be exported\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"symbol %s exported twice\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"expected opening %s of langdef here\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"%s ignored (name is missing)\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"%s ignored (opening %s is missing)\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"symbol %s unknown or misspelt\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"symbol %s not allowed in macro\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"unexpected end of input\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"%s not expected here\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"unmatched %s in macro\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"symbol name expected after %s\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s %s does not match %s %s\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"%s must follow named parameter %s\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"right parameter of %s must begin with %s\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ReadTokenList: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @ReadPrependDef(i32 %typ, %union.rec* %encl) #0 {
entry:
  %typ.addr = alloca i32, align 4
  %encl.addr = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %fname = alloca %union.rec*, align 8
  store i32 %typ, i32* %typ.addr, align 4
  store %union.rec* %encl, %union.rec** %encl.addr, align 8
  %call = call %union.rec* @LexGetToken()
  store %union.rec* %call, %union.rec** %t, align 8
  %0 = load %union.rec*, %union.rec** %t, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 102
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.rec*, %union.rec** %t, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou13 to %struct.FILE_POS*
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  %3 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3, %union.rec** @zz_hold, align 8
  %4 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %4, %union.rec** @zz_hold, align 8
  %5 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15 = bitcast %union.rec* %5 to %struct.word_type*
  %ou16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os117 = bitcast %union.FIRST_UNION* %ou16 to %struct.anon*
  %otype8 = getelementptr inbounds %struct.anon, %struct.anon* %os117, i32 0, i32 0
  %6 = load i8, i8* %otype8, align 1
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 11
  br i1 %cmp10, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os112 = bitcast %union.rec* %7 to %struct.word_type*
  %ou113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %os1114 = bitcast %union.FIRST_UNION* %ou113 to %struct.anon*
  %otype15 = getelementptr inbounds %struct.anon, %struct.anon* %os1114, i32 0, i32 0
  %8 = load i8, i8* %otype15, align 1
  %conv16 = zext i8 %8 to i32
  %cmp17 = icmp eq i32 %conv16, 12
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os119 = bitcast %union.rec* %9 to %struct.word_type*
  %ou120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 1
  %os1121 = bitcast %union.FIRST_UNION* %ou120 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os1121, i32 0, i32 1
  %10 = load i8, i8* %orec_size, align 1
  %conv22 = zext i8 %10 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %11 to %struct.word_type*
  %ou124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 1
  %os1125 = bitcast %union.FIRST_UNION* %ou124 to %struct.anon*
  %otype26 = getelementptr inbounds %struct.anon, %struct.anon* %os1125, i32 0, i32 0
  %12 = load i8, i8* %otype26, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv27 = zext i8 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv22, %cond.true ], [ %conv27, %cond.false ]
  store i32 %cond, i32* @zz_size, align 4
  %14 = load i32, i32* @zz_size, align 4
  %idxprom28 = sext i32 %14 to i64
  %arrayidx29 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom28
  %15 = load %union.rec*, %union.rec** %arrayidx29, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %16 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 0
  store %union.rec* %15, %union.rec** %opred, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %18 = load i32, i32* @zz_size, align 4
  %idxprom32 = sext i32 %18 to i64
  %arrayidx33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom32
  store %union.rec* %17, %union.rec** %arrayidx33, align 8
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %union.rec*, %union.rec** %encl.addr, align 8
  %call34 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %19, i32 0, i32 0)
  store %union.rec* %call34, %union.rec** %fname, align 8
  %20 = load %union.rec*, %union.rec** %fname, align 8
  %call35 = call %union.rec* @ReplaceWithTidy(%union.rec* %20, i32 0)
  store %union.rec* %call35, %union.rec** %fname, align 8
  %21 = load %union.rec*, %union.rec** %fname, align 8
  %os136 = bitcast %union.rec* %21 to %struct.word_type*
  %ou137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 1
  %os1138 = bitcast %union.FIRST_UNION* %ou137 to %struct.anon*
  %otype39 = getelementptr inbounds %struct.anon, %struct.anon* %os1138, i32 0, i32 0
  %22 = load i8, i8* %otype39, align 1
  %conv40 = zext i8 %22 to i32
  %cmp41 = icmp eq i32 %conv40, 11
  br i1 %cmp41, label %if.end.57, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end
  %23 = load %union.rec*, %union.rec** %fname, align 8
  %os144 = bitcast %union.rec* %23 to %struct.word_type*
  %ou145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 1
  %os1146 = bitcast %union.FIRST_UNION* %ou145 to %struct.anon*
  %otype47 = getelementptr inbounds %struct.anon, %struct.anon* %os1146, i32 0, i32 0
  %24 = load i8, i8* %otype47, align 1
  %conv48 = zext i8 %24 to i32
  %cmp49 = icmp eq i32 %conv48, 12
  br i1 %cmp49, label %if.end.57, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.43
  %25 = load %union.rec*, %union.rec** %fname, align 8
  %os152 = bitcast %union.rec* %25 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %ofpos54 = bitcast %union.FIRST_UNION* %ou153 to %struct.FILE_POS*
  %call55 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  %26 = load %union.rec*, %union.rec** %fname, align 8
  %call56 = call i32 @DisposeObject(%union.rec* %26)
  br label %return

if.end.57:                                        ; preds = %lor.lhs.false.43, %if.end
  %27 = load %union.rec*, %union.rec** %fname, align 8
  %os158 = bitcast %union.rec* %27 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %fname, align 8
  %os159 = bitcast %union.rec* %28 to %struct.word_type*
  %ou160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 1
  %ofpos61 = bitcast %union.FIRST_UNION* %ou160 to %struct.FILE_POS*
  %29 = load i32, i32* %typ.addr, align 4
  %cmp62 = icmp eq i32 %29, 114
  %cond64 = select i1 %cmp62, i32 1, i32 2
  %call65 = call zeroext i16 @DefineFile(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %struct.FILE_POS* %ofpos61, i32 6, i32 %cond64)
  br label %return

return:                                           ; preds = %if.end.57, %if.then.51, %cond.end
  ret void
}

declare %union.rec* @LexGetToken() #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare i32 @DisposeObject(%union.rec*) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @ReadDatabaseDef(i32 %typ, %union.rec* %encl) #0 {
entry:
  %typ.addr = alloca i32, align 4
  %encl.addr = alloca %union.rec*, align 8
  %symbs = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %fname = alloca %union.rec*, align 8
  store i32 %typ, i32* %typ.addr, align 4
  store %union.rec* %encl, %union.rec** %encl.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
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
  store i8 17, i8* %otype, align 1
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
  store %union.rec* %12, %union.rec** %symbs, align 8
  %call30 = call %union.rec* @LexGetToken()
  store %union.rec* %call30, %union.rec** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.222, %if.end.13
  %17 = load %union.rec*, %union.rec** %t, align 8
  %os131 = bitcast %union.rec* %17 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %18 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %18 to i32
  %cmp36 = icmp eq i32 %conv35, 2
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %19 = load %union.rec*, %union.rec** %t, align 8
  %os138 = bitcast %union.rec* %19 to %struct.word_type*
  %ou139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 1
  %os1140 = bitcast %union.FIRST_UNION* %ou139 to %struct.anon*
  %otype41 = getelementptr inbounds %struct.anon, %struct.anon* %os1140, i32 0, i32 0
  %20 = load i8, i8* %otype41, align 1
  %conv42 = zext i8 %20 to i32
  %cmp43 = icmp eq i32 %conv42, 11
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %21 = load %union.rec*, %union.rec** %t, align 8
  %os145 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 0
  %22 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %22 to i32
  %cmp48 = icmp eq i32 %conv47, 64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %23 = phi i1 [ false, %lor.rhs ], [ %cmp48, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %24 = phi i1 [ true, %while.cond ], [ %23, %land.end ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %25 = load %union.rec*, %union.rec** %t, align 8
  %os150 = bitcast %union.rec* %25 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %os1152 = bitcast %union.FIRST_UNION* %ou151 to %struct.anon*
  %otype53 = getelementptr inbounds %struct.anon, %struct.anon* %os1152, i32 0, i32 0
  %26 = load i8, i8* %otype53, align 1
  %conv54 = zext i8 %26 to i32
  %cmp55 = icmp eq i32 %conv54, 2
  br i1 %cmp55, label %if.then.57, label %if.else.178

if.then.57:                                       ; preds = %while.body
  %27 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv58 = zext i8 %27 to i32
  store i32 %conv58, i32* @zz_size, align 4
  %conv59 = sext i32 %conv58 to i64
  %cmp60 = icmp uge i64 %conv59, 265
  br i1 %cmp60, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %if.then.57
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call63 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %28)
  br label %if.end.81

if.else.64:                                       ; preds = %if.then.57
  %29 = load i32, i32* @zz_size, align 4
  %idxprom65 = sext i32 %29 to i64
  %arrayidx66 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom65
  %30 = load %union.rec*, %union.rec** %arrayidx66, align 8
  %cmp67 = icmp eq %union.rec* %30, null
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.else.64
  %31 = load i32, i32* @zz_size, align 4
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call70 = call %union.rec* @GetMemory(i32 %31, %struct.FILE_POS* %32)
  store %union.rec* %call70, %union.rec** @zz_hold, align 8
  br label %if.end.80

if.else.71:                                       ; preds = %if.else.64
  %33 = load i32, i32* @zz_size, align 4
  %idxprom72 = sext i32 %33 to i64
  %arrayidx73 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom72
  %34 = load %union.rec*, %union.rec** %arrayidx73, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %35 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred77, align 8
  %37 = load i32, i32* @zz_size, align 4
  %idxprom78 = sext i32 %37 to i64
  %arrayidx79 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom78
  store %union.rec* %36, %union.rec** %arrayidx79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.71, %if.then.69
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.62
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %38 to %struct.word_type*
  %ou183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 1
  %os1184 = bitcast %union.FIRST_UNION* %ou183 to %struct.anon*
  %otype85 = getelementptr inbounds %struct.anon, %struct.anon* %os1184, i32 0, i32 0
  store i8 0, i8* %otype85, align 1
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os186 = bitcast %union.rec* %40 to %struct.word_type*
  %olist87 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist87, i32 0, i64 1
  %osucc89 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx88, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc89, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os190 = bitcast %union.rec* %41 to %struct.word_type*
  %olist91 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist91, i32 0, i64 1
  %opred93 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx92, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred93, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os194 = bitcast %union.rec* %42 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 0
  %osucc97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc97, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %43 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 0
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  store %union.rec* %39, %union.rec** %opred101, align 8
  store %union.rec* %39, %union.rec** @xx_link, align 8
  %44 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %44, %union.rec** @zz_res, align 8
  %45 = load %union.rec*, %union.rec** %symbs, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp102 = icmp eq %union.rec* %46, null
  br i1 %cmp102, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.81
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.136

cond.false:                                       ; preds = %if.end.81
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp104 = icmp eq %union.rec* %48, null
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.false
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.107:                                   ; preds = %cond.false
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1108 = bitcast %union.rec* %50 to %struct.word_type*
  %olist109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist109, i32 0, i64 0
  %opred111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx110, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred111, align 8
  store %union.rec* %51, %union.rec** @zz_tmp, align 8
  %52 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1112 = bitcast %union.rec* %52 to %struct.word_type*
  %olist113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist113, i32 0, i64 0
  %opred115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx114, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %opred115, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1116 = bitcast %union.rec* %54 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 0
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  store %union.rec* %53, %union.rec** %opred119, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1120 = bitcast %union.rec* %56 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 0
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %opred123, align 8
  %os1124 = bitcast %union.rec* %57 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %osucc127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  store %union.rec* %55, %union.rec** %osucc127, align 8
  %58 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1128 = bitcast %union.rec* %59 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  store %union.rec* %58, %union.rec** %opred131, align 8
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  %61 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1132 = bitcast %union.rec* %61 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %osucc135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 1
  store %union.rec* %60, %union.rec** %osucc135, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.107, %cond.true.106
  %cond = phi %union.rec* [ %49, %cond.true.106 ], [ %60, %cond.false.107 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end, %cond.true
  %cond137 = phi %union.rec* [ %47, %cond.true ], [ %cond, %cond.end ]
  %62 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %62, %union.rec** @zz_res, align 8
  %63 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %63, %union.rec** @zz_hold, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp138 = icmp eq %union.rec* %64, null
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %cond.end.136
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.176

cond.false.141:                                   ; preds = %cond.end.136
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp142 = icmp eq %union.rec* %66, null
  br i1 %cmp142, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %cond.false.141
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.174

cond.false.145:                                   ; preds = %cond.false.141
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1146 = bitcast %union.rec* %68 to %struct.word_type*
  %olist147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist147, i32 0, i64 1
  %opred149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx148, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred149, align 8
  store %union.rec* %69, %union.rec** @zz_tmp, align 8
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1150 = bitcast %union.rec* %70 to %struct.word_type*
  %olist151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist151, i32 0, i64 1
  %opred153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx152, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %opred153, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1154 = bitcast %union.rec* %72 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 1
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  store %union.rec* %71, %union.rec** %opred157, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1158 = bitcast %union.rec* %74 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 1
  %opred161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %opred161, align 8
  %os1162 = bitcast %union.rec* %75 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 1
  %osucc165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 1
  store %union.rec* %73, %union.rec** %osucc165, align 8
  %76 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1166 = bitcast %union.rec* %77 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 1
  %opred169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 0
  store %union.rec* %76, %union.rec** %opred169, align 8
  %78 = load %union.rec*, %union.rec** @zz_res, align 8
  %79 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1170 = bitcast %union.rec* %79 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 1
  %osucc173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 1
  store %union.rec* %78, %union.rec** %osucc173, align 8
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.145, %cond.true.144
  %cond175 = phi %union.rec* [ %67, %cond.true.144 ], [ %78, %cond.false.145 ]
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.end.174, %cond.true.140
  %cond177 = phi %union.rec* [ %65, %cond.true.140 ], [ %cond175, %cond.end.174 ]
  br label %if.end.222

if.else.178:                                      ; preds = %while.body
  %80 = load %union.rec*, %union.rec** %t, align 8
  %os1179 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1180 to %struct.FILE_POS*
  %81 = load %union.rec*, %union.rec** %t, align 8
  %os1181 = bitcast %union.rec* %81 to %struct.word_type*
  %ostring182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring182, i32 0, i32 0
  %call183 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay)
  %82 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %83, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1185 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 1
  %os11187 = bitcast %union.FIRST_UNION* %ou1186 to %struct.anon*
  %otype188 = getelementptr inbounds %struct.anon, %struct.anon* %os11187, i32 0, i32 0
  %85 = load i8, i8* %otype188, align 1
  %conv189 = zext i8 %85 to i32
  %cmp190 = icmp eq i32 %conv189, 11
  br i1 %cmp190, label %cond.true.199, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.178
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1192 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 1
  %os11194 = bitcast %union.FIRST_UNION* %ou1193 to %struct.anon*
  %otype195 = getelementptr inbounds %struct.anon, %struct.anon* %os11194, i32 0, i32 0
  %87 = load i8, i8* %otype195, align 1
  %conv196 = zext i8 %87 to i32
  %cmp197 = icmp eq i32 %conv196, 12
  br i1 %cmp197, label %cond.true.199, label %cond.false.204

cond.true.199:                                    ; preds = %lor.lhs.false, %if.else.178
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1200 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 1
  %os11202 = bitcast %union.FIRST_UNION* %ou1201 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11202, i32 0, i32 1
  %89 = load i8, i8* %orec_size, align 1
  %conv203 = zext i8 %89 to i32
  br label %cond.end.212

cond.false.204:                                   ; preds = %lor.lhs.false
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1205 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 1
  %os11207 = bitcast %union.FIRST_UNION* %ou1206 to %struct.anon*
  %otype208 = getelementptr inbounds %struct.anon, %struct.anon* %os11207, i32 0, i32 0
  %91 = load i8, i8* %otype208, align 1
  %idxprom209 = zext i8 %91 to i64
  %arrayidx210 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom209
  %92 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %92 to i32
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.204, %cond.true.199
  %cond213 = phi i32 [ %conv203, %cond.true.199 ], [ %conv211, %cond.false.204 ]
  store i32 %cond213, i32* @zz_size, align 4
  %93 = load i32, i32* @zz_size, align 4
  %idxprom214 = sext i32 %93 to i64
  %arrayidx215 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom214
  %94 = load %union.rec*, %union.rec** %arrayidx215, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1216 = bitcast %union.rec* %95 to %struct.word_type*
  %olist217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist217, i32 0, i64 0
  %opred219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx218, i32 0, i32 0
  store %union.rec* %94, %union.rec** %opred219, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = load i32, i32* @zz_size, align 4
  %idxprom220 = sext i32 %97 to i64
  %arrayidx221 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom220
  store %union.rec* %96, %union.rec** %arrayidx221, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %cond.end.212, %cond.end.176
  %call223 = call %union.rec* @LexGetToken()
  store %union.rec* %call223, %union.rec** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %98 = load %union.rec*, %union.rec** %t, align 8
  %os1224 = bitcast %union.rec* %98 to %struct.word_type*
  %ou1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 1
  %os11226 = bitcast %union.FIRST_UNION* %ou1225 to %struct.anon*
  %otype227 = getelementptr inbounds %struct.anon, %struct.anon* %os11226, i32 0, i32 0
  %99 = load i8, i8* %otype227, align 1
  %conv228 = zext i8 %99 to i32
  %cmp229 = icmp ne i32 %conv228, 102
  br i1 %cmp229, label %if.then.231, label %if.end.275

if.then.231:                                      ; preds = %while.end
  %100 = load %union.rec*, %union.rec** %t, align 8
  %os1232 = bitcast %union.rec* %100 to %struct.word_type*
  %ou1233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 1
  %ofpos234 = bitcast %union.FIRST_UNION* %ou1233 to %struct.FILE_POS*
  %call235 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %101 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %101, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %102, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 1
  %os11238 = bitcast %union.FIRST_UNION* %ou1237 to %struct.anon*
  %otype239 = getelementptr inbounds %struct.anon, %struct.anon* %os11238, i32 0, i32 0
  %104 = load i8, i8* %otype239, align 1
  %conv240 = zext i8 %104 to i32
  %cmp241 = icmp eq i32 %conv240, 11
  br i1 %cmp241, label %cond.true.251, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.then.231
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1244 = bitcast %union.rec* %105 to %struct.word_type*
  %ou1245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 1
  %os11246 = bitcast %union.FIRST_UNION* %ou1245 to %struct.anon*
  %otype247 = getelementptr inbounds %struct.anon, %struct.anon* %os11246, i32 0, i32 0
  %106 = load i8, i8* %otype247, align 1
  %conv248 = zext i8 %106 to i32
  %cmp249 = icmp eq i32 %conv248, 12
  br i1 %cmp249, label %cond.true.251, label %cond.false.257

cond.true.251:                                    ; preds = %lor.lhs.false.243, %if.then.231
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1252 = bitcast %union.rec* %107 to %struct.word_type*
  %ou1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 1
  %os11254 = bitcast %union.FIRST_UNION* %ou1253 to %struct.anon*
  %orec_size255 = getelementptr inbounds %struct.anon, %struct.anon* %os11254, i32 0, i32 1
  %108 = load i8, i8* %orec_size255, align 1
  %conv256 = zext i8 %108 to i32
  br label %cond.end.265

cond.false.257:                                   ; preds = %lor.lhs.false.243
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1258 = bitcast %union.rec* %109 to %struct.word_type*
  %ou1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 1
  %os11260 = bitcast %union.FIRST_UNION* %ou1259 to %struct.anon*
  %otype261 = getelementptr inbounds %struct.anon, %struct.anon* %os11260, i32 0, i32 0
  %110 = load i8, i8* %otype261, align 1
  %idxprom262 = zext i8 %110 to i64
  %arrayidx263 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom262
  %111 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %111 to i32
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.257, %cond.true.251
  %cond266 = phi i32 [ %conv256, %cond.true.251 ], [ %conv264, %cond.false.257 ]
  store i32 %cond266, i32* @zz_size, align 4
  %112 = load i32, i32* @zz_size, align 4
  %idxprom267 = sext i32 %112 to i64
  %arrayidx268 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom267
  %113 = load %union.rec*, %union.rec** %arrayidx268, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1269 = bitcast %union.rec* %114 to %struct.word_type*
  %olist270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1269, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist270, i32 0, i64 0
  %opred272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx271, i32 0, i32 0
  store %union.rec* %113, %union.rec** %opred272, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = load i32, i32* @zz_size, align 4
  %idxprom273 = sext i32 %116 to i64
  %arrayidx274 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom273
  store %union.rec* %115, %union.rec** %arrayidx274, align 8
  br label %if.end.334

if.end.275:                                       ; preds = %while.end
  %117 = load %union.rec*, %union.rec** %symbs, align 8
  %os1276 = bitcast %union.rec* %117 to %struct.word_type*
  %olist277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist277, i32 0, i64 0
  %osucc279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx278, i32 0, i32 1
  %118 = load %union.rec*, %union.rec** %osucc279, align 8
  %119 = load %union.rec*, %union.rec** %symbs, align 8
  %cmp280 = icmp eq %union.rec* %118, %119
  br i1 %cmp280, label %if.then.282, label %if.end.287

if.then.282:                                      ; preds = %if.end.275
  %120 = load %union.rec*, %union.rec** %t, align 8
  %os1283 = bitcast %union.rec* %120 to %struct.word_type*
  %ou1284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 1
  %ofpos285 = bitcast %union.FIRST_UNION* %ou1284 to %struct.FILE_POS*
  %call286 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos285, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.282, %if.end.275
  %121 = load %union.rec*, %union.rec** %encl.addr, align 8
  %call288 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %121, i32 0, i32 0)
  store %union.rec* %call288, %union.rec** %fname, align 8
  %122 = load %union.rec*, %union.rec** %fname, align 8
  %call289 = call %union.rec* @ReplaceWithTidy(%union.rec* %122, i32 0)
  store %union.rec* %call289, %union.rec** %fname, align 8
  %123 = load %union.rec*, %union.rec** %fname, align 8
  %os1290 = bitcast %union.rec* %123 to %struct.word_type*
  %ou1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1290, i32 0, i32 1
  %os11292 = bitcast %union.FIRST_UNION* %ou1291 to %struct.anon*
  %otype293 = getelementptr inbounds %struct.anon, %struct.anon* %os11292, i32 0, i32 0
  %124 = load i8, i8* %otype293, align 1
  %conv294 = zext i8 %124 to i32
  %cmp295 = icmp eq i32 %conv294, 11
  br i1 %cmp295, label %if.end.311, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %if.end.287
  %125 = load %union.rec*, %union.rec** %fname, align 8
  %os1298 = bitcast %union.rec* %125 to %struct.word_type*
  %ou1299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1298, i32 0, i32 1
  %os11300 = bitcast %union.FIRST_UNION* %ou1299 to %struct.anon*
  %otype301 = getelementptr inbounds %struct.anon, %struct.anon* %os11300, i32 0, i32 0
  %126 = load i8, i8* %otype301, align 1
  %conv302 = zext i8 %126 to i32
  %cmp303 = icmp eq i32 %conv302, 12
  br i1 %cmp303, label %if.end.311, label %if.then.305

if.then.305:                                      ; preds = %lor.lhs.false.297
  %127 = load %union.rec*, %union.rec** %fname, align 8
  %os1306 = bitcast %union.rec* %127 to %struct.word_type*
  %ou1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1306, i32 0, i32 1
  %ofpos308 = bitcast %union.FIRST_UNION* %ou1307 to %struct.FILE_POS*
  %call309 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos308, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %128 = load %union.rec*, %union.rec** %fname, align 8
  %call310 = call i32 @DisposeObject(%union.rec* %128)
  br label %if.end.334

if.end.311:                                       ; preds = %lor.lhs.false.297, %if.end.287
  %129 = load %union.rec*, %union.rec** %fname, align 8
  %os1312 = bitcast %union.rec* %129 to %struct.word_type*
  %ostring313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 4
  %arraydecay314 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring313, i32 0, i32 0
  %call315 = call i32 @StringEndsWith(i8* %arraydecay314, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %tobool = icmp ne i32 %call315, 0
  br i1 %tobool, label %if.then.316, label %if.end.322

if.then.316:                                      ; preds = %if.end.311
  %130 = load %union.rec*, %union.rec** %fname, align 8
  %os1317 = bitcast %union.rec* %130 to %struct.word_type*
  %ou1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 1
  %ofpos319 = bitcast %union.FIRST_UNION* %ou1318 to %struct.FILE_POS*
  %call320 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %131 = load %union.rec*, %union.rec** %fname, align 8
  %call321 = call i32 @DisposeObject(%union.rec* %131)
  br label %if.end.334

if.end.322:                                       ; preds = %if.end.311
  %132 = load %union.rec*, %union.rec** %symbs, align 8
  %os1323 = bitcast %union.rec* %132 to %struct.word_type*
  %olist324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 0
  %arrayidx325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist324, i32 0, i64 0
  %osucc326 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx325, i32 0, i32 1
  %133 = load %union.rec*, %union.rec** %osucc326, align 8
  %134 = load %union.rec*, %union.rec** %symbs, align 8
  %cmp327 = icmp ne %union.rec* %133, %134
  br i1 %cmp327, label %if.then.329, label %if.end.334

if.then.329:                                      ; preds = %if.end.322
  %135 = load %union.rec*, %union.rec** %fname, align 8
  %136 = load i32, i32* %typ.addr, align 4
  %cmp330 = icmp eq i32 %136, 116
  %cond332 = select i1 %cmp330, i32 3, i32 4
  %137 = load %union.rec*, %union.rec** %symbs, align 8
  %138 = load i32, i32* @InMemoryDbIndexes, align 4
  %call333 = call %union.rec* @DbLoad(%union.rec* %135, i32 %cond332, i32 1, %union.rec* %137, i32 %138)
  br label %if.end.334

if.end.334:                                       ; preds = %cond.end.265, %if.then.305, %if.then.316, %if.then.329, %if.end.322
  ret void
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @StringEndsWith(i8*, i8*) #1

declare %union.rec* @DbLoad(%union.rec*, i32, i32, %union.rec*, i32) #1

; Function Attrs: nounwind uwtable
define void @ReadDefinitions(%union.rec** %token, %union.rec* %encl, i8 zeroext %res_type) #0 {
entry:
  %token.addr = alloca %union.rec**, align 8
  %encl.addr = alloca %union.rec*, align 8
  %res_type.addr = alloca i8, align 1
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %res_target = alloca %union.rec*, align 8
  %export_list = alloca %union.rec*, align 8
  %import_list = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %curr_encl = alloca %union.rec*, align 8
  %compulsory_par = alloca i32, align 4
  %has_import_encl = alloca i32, align 4
  %prec = alloca i32, align 4
  store %union.rec** %token, %union.rec*** %token.addr, align 8
  store %union.rec* %encl, %union.rec** %encl.addr, align 8
  store i8 %res_type, i8* %res_type.addr, align 1
  %0 = load %union.rec**, %union.rec*** %token.addr, align 8
  %1 = load %union.rec*, %union.rec** %0, align 8
  store %union.rec* %1, %union.rec** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.2972, %cond.end.140, %cond.end, %if.then, %entry
  %2 = load i8, i8* %res_type.addr, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 143
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %3 = load %union.rec*, %union.rec** %t, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 11
  br i1 %cmp3, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %union.rec*, %union.rec** %t, align 8
  %os15 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load %union.rec*, %union.rec** %t, align 8
  %os18 = bitcast %union.rec* %6 to %struct.word_type*
  %ou19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 1
  %os1110 = bitcast %union.FIRST_UNION* %ou19 to %struct.anon*
  %otype11 = getelementptr inbounds %struct.anon, %struct.anon* %os1110, i32 0, i32 0
  %7 = load i8, i8* %otype11, align 1
  %conv12 = zext i8 %7 to i32
  %cmp13 = icmp eq i32 %conv12, 11
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %8 = load %union.rec*, %union.rec** %t, align 8
  %os115 = bitcast %union.rec* %8 to %struct.word_type*
  %ostring16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 4
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring16, i32 0, i32 0
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %cmp19 = icmp eq i32 %call18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %9 = phi i1 [ false, %lor.rhs ], [ %cmp19, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true, %while.cond
  %10 = phi i1 [ true, %land.lhs.true ], [ true, %while.cond ], [ %9, %land.end ]
  br i1 %10, label %while.body, label %while.end.2973

while.body:                                       ; preds = %lor.end
  %11 = load %union.rec*, %union.rec** %encl.addr, align 8
  store %union.rec* %11, %union.rec** %curr_encl, align 8
  %12 = load %union.rec*, %union.rec** %t, align 8
  %os121 = bitcast %union.rec* %12 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %13 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %13 to i32
  %cmp26 = icmp eq i32 %conv25, 11
  br i1 %cmp26, label %land.lhs.true.28, label %if.else

land.lhs.true.28:                                 ; preds = %while.body
  %14 = load %union.rec*, %union.rec** %t, align 8
  %os129 = bitcast %union.rec* %14 to %struct.word_type*
  %ostring30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 4
  %arraydecay31 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring30, i32 0, i32 0
  %call32 = call i32 @strcmp(i8* %arraydecay31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #3
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.28
  %15 = load %union.rec*, %union.rec** %encl.addr, align 8
  call void @ReadLangDef(%union.rec* %15)
  %call35 = call %union.rec* @LexGetToken()
  store %union.rec* %call35, %union.rec** %t, align 8
  br label %while.cond

if.else:                                          ; preds = %land.lhs.true.28, %while.body
  %16 = load %union.rec*, %union.rec** %t, align 8
  %os136 = bitcast %union.rec* %16 to %struct.word_type*
  %ou137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 1
  %os1138 = bitcast %union.FIRST_UNION* %ou137 to %struct.anon*
  %otype39 = getelementptr inbounds %struct.anon, %struct.anon* %os1138, i32 0, i32 0
  %17 = load i8, i8* %otype39, align 1
  %conv40 = zext i8 %17 to i32
  %cmp41 = icmp eq i32 %conv40, 114
  br i1 %cmp41, label %if.then.51, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.else
  %18 = load %union.rec*, %union.rec** %t, align 8
  %os144 = bitcast %union.rec* %18 to %struct.word_type*
  %ou145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 1
  %os1146 = bitcast %union.FIRST_UNION* %ou145 to %struct.anon*
  %otype47 = getelementptr inbounds %struct.anon, %struct.anon* %os1146, i32 0, i32 0
  %19 = load i8, i8* %otype47, align 1
  %conv48 = zext i8 %19 to i32
  %cmp49 = icmp eq i32 %conv48, 115
  br i1 %cmp49, label %if.then.51, label %if.else.88

if.then.51:                                       ; preds = %lor.lhs.false.43, %if.else
  %20 = load %union.rec*, %union.rec** %t, align 8
  %os152 = bitcast %union.rec* %20 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %os1154 = bitcast %union.FIRST_UNION* %ou153 to %struct.anon*
  %otype55 = getelementptr inbounds %struct.anon, %struct.anon* %os1154, i32 0, i32 0
  %21 = load i8, i8* %otype55, align 1
  %conv56 = zext i8 %21 to i32
  %22 = load %union.rec*, %union.rec** %encl.addr, align 8
  call void @ReadPrependDef(i32 %conv56, %union.rec* %22)
  %23 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %23, %union.rec** @zz_hold, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os157 = bitcast %union.rec* %25 to %struct.word_type*
  %ou158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 1
  %os1159 = bitcast %union.FIRST_UNION* %ou158 to %struct.anon*
  %otype60 = getelementptr inbounds %struct.anon, %struct.anon* %os1159, i32 0, i32 0
  %26 = load i8, i8* %otype60, align 1
  %conv61 = zext i8 %26 to i32
  %cmp62 = icmp eq i32 %conv61, 11
  br i1 %cmp62, label %cond.true, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.then.51
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os165 = bitcast %union.rec* %27 to %struct.word_type*
  %ou166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 1
  %os1167 = bitcast %union.FIRST_UNION* %ou166 to %struct.anon*
  %otype68 = getelementptr inbounds %struct.anon, %struct.anon* %os1167, i32 0, i32 0
  %28 = load i8, i8* %otype68, align 1
  %conv69 = zext i8 %28 to i32
  %cmp70 = icmp eq i32 %conv69, 12
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.64, %if.then.51
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os172 = bitcast %union.rec* %29 to %struct.word_type*
  %ou173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 1
  %os1174 = bitcast %union.FIRST_UNION* %ou173 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os1174, i32 0, i32 1
  %30 = load i8, i8* %orec_size, align 1
  %conv75 = zext i8 %30 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.64
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os176 = bitcast %union.rec* %31 to %struct.word_type*
  %ou177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 1
  %os1178 = bitcast %union.FIRST_UNION* %ou177 to %struct.anon*
  %otype79 = getelementptr inbounds %struct.anon, %struct.anon* %os1178, i32 0, i32 0
  %32 = load i8, i8* %otype79, align 1
  %idxprom = zext i8 %32 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %33 = load i8, i8* %arrayidx, align 1
  %conv80 = zext i8 %33 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv75, %cond.true ], [ %conv80, %cond.false ]
  store i32 %cond, i32* @zz_size, align 4
  %34 = load i32, i32* @zz_size, align 4
  %idxprom81 = sext i32 %34 to i64
  %arrayidx82 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom81
  %35 = load %union.rec*, %union.rec** %arrayidx82, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os183 = bitcast %union.rec* %36 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  store %union.rec* %35, %union.rec** %opred, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %38 = load i32, i32* @zz_size, align 4
  %idxprom85 = sext i32 %38 to i64
  %arrayidx86 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom85
  store %union.rec* %37, %union.rec** %arrayidx86, align 8
  %call87 = call %union.rec* @LexGetToken()
  store %union.rec* %call87, %union.rec** %t, align 8
  br label %while.cond

if.else.88:                                       ; preds = %lor.lhs.false.43
  %39 = load %union.rec*, %union.rec** %t, align 8
  %os189 = bitcast %union.rec* %39 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %os1191 = bitcast %union.FIRST_UNION* %ou190 to %struct.anon*
  %otype92 = getelementptr inbounds %struct.anon, %struct.anon* %os1191, i32 0, i32 0
  %40 = load i8, i8* %otype92, align 1
  %conv93 = zext i8 %40 to i32
  %cmp94 = icmp eq i32 %conv93, 116
  br i1 %cmp94, label %if.then.104, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %if.else.88
  %41 = load %union.rec*, %union.rec** %t, align 8
  %os197 = bitcast %union.rec* %41 to %struct.word_type*
  %ou198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 1
  %os1199 = bitcast %union.FIRST_UNION* %ou198 to %struct.anon*
  %otype100 = getelementptr inbounds %struct.anon, %struct.anon* %os1199, i32 0, i32 0
  %42 = load i8, i8* %otype100, align 1
  %conv101 = zext i8 %42 to i32
  %cmp102 = icmp eq i32 %conv101, 117
  br i1 %cmp102, label %if.then.104, label %if.end

if.then.104:                                      ; preds = %lor.lhs.false.96, %if.else.88
  %43 = load %union.rec*, %union.rec** %t, align 8
  %os1105 = bitcast %union.rec* %43 to %struct.word_type*
  %ou1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 1
  %os11107 = bitcast %union.FIRST_UNION* %ou1106 to %struct.anon*
  %otype108 = getelementptr inbounds %struct.anon, %struct.anon* %os11107, i32 0, i32 0
  %44 = load i8, i8* %otype108, align 1
  %conv109 = zext i8 %44 to i32
  %45 = load %union.rec*, %union.rec** %encl.addr, align 8
  call void @ReadDatabaseDef(i32 %conv109, %union.rec* %45)
  %46 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %46, %union.rec** @zz_hold, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %48 to %struct.word_type*
  %ou1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 1
  %os11113 = bitcast %union.FIRST_UNION* %ou1112 to %struct.anon*
  %otype114 = getelementptr inbounds %struct.anon, %struct.anon* %os11113, i32 0, i32 0
  %49 = load i8, i8* %otype114, align 1
  %conv115 = zext i8 %49 to i32
  %cmp116 = icmp eq i32 %conv115, 11
  br i1 %cmp116, label %cond.true.126, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.then.104
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1119 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 1
  %os11121 = bitcast %union.FIRST_UNION* %ou1120 to %struct.anon*
  %otype122 = getelementptr inbounds %struct.anon, %struct.anon* %os11121, i32 0, i32 0
  %51 = load i8, i8* %otype122, align 1
  %conv123 = zext i8 %51 to i32
  %cmp124 = icmp eq i32 %conv123, 12
  br i1 %cmp124, label %cond.true.126, label %cond.false.132

cond.true.126:                                    ; preds = %lor.lhs.false.118, %if.then.104
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1127 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 1
  %os11129 = bitcast %union.FIRST_UNION* %ou1128 to %struct.anon*
  %orec_size130 = getelementptr inbounds %struct.anon, %struct.anon* %os11129, i32 0, i32 1
  %53 = load i8, i8* %orec_size130, align 1
  %conv131 = zext i8 %53 to i32
  br label %cond.end.140

cond.false.132:                                   ; preds = %lor.lhs.false.118
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1133 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 1
  %os11135 = bitcast %union.FIRST_UNION* %ou1134 to %struct.anon*
  %otype136 = getelementptr inbounds %struct.anon, %struct.anon* %os11135, i32 0, i32 0
  %55 = load i8, i8* %otype136, align 1
  %idxprom137 = zext i8 %55 to i64
  %arrayidx138 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom137
  %56 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %56 to i32
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.132, %cond.true.126
  %cond141 = phi i32 [ %conv131, %cond.true.126 ], [ %conv139, %cond.false.132 ]
  store i32 %cond141, i32* @zz_size, align 4
  %57 = load i32, i32* @zz_size, align 4
  %idxprom142 = sext i32 %57 to i64
  %arrayidx143 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom142
  %58 = load %union.rec*, %union.rec** %arrayidx143, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1144 = bitcast %union.rec* %59 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %opred147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 0
  store %union.rec* %58, %union.rec** %opred147, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = load i32, i32* @zz_size, align 4
  %idxprom148 = sext i32 %61 to i64
  %arrayidx149 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom148
  store %union.rec* %60, %union.rec** %arrayidx149, align 8
  %call150 = call %union.rec* @LexGetToken()
  store %union.rec* %call150, %union.rec** %t, align 8
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false.96
  br label %if.end.151

if.end.151:                                       ; preds = %if.end
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151
  %62 = load %union.rec*, %union.rec** %t, align 8
  %os1153 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 1
  %os11155 = bitcast %union.FIRST_UNION* %ou1154 to %struct.anon*
  %otype156 = getelementptr inbounds %struct.anon, %struct.anon* %os11155, i32 0, i32 0
  %63 = load i8, i8* %otype156, align 1
  %conv157 = zext i8 %63 to i32
  %cmp158 = icmp eq i32 %conv157, 11
  br i1 %cmp158, label %land.lhs.true.160, label %land.lhs.true.167

land.lhs.true.160:                                ; preds = %if.end.152
  %64 = load %union.rec*, %union.rec** %t, align 8
  %os1161 = bitcast %union.rec* %64 to %struct.word_type*
  %ostring162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 4
  %arraydecay163 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring162, i32 0, i32 0
  %call164 = call i32 @strcmp(i8* %arraydecay163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.end.245, label %land.lhs.true.167

land.lhs.true.167:                                ; preds = %land.lhs.true.160, %if.end.152
  %65 = load %union.rec*, %union.rec** %t, align 8
  %os1168 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 1
  %os11170 = bitcast %union.FIRST_UNION* %ou1169 to %struct.anon*
  %otype171 = getelementptr inbounds %struct.anon, %struct.anon* %os11170, i32 0, i32 0
  %66 = load i8, i8* %otype171, align 1
  %conv172 = zext i8 %66 to i32
  %cmp173 = icmp eq i32 %conv172, 11
  br i1 %cmp173, label %land.lhs.true.175, label %land.lhs.true.182

land.lhs.true.175:                                ; preds = %land.lhs.true.167
  %67 = load %union.rec*, %union.rec** %t, align 8
  %os1176 = bitcast %union.rec* %67 to %struct.word_type*
  %ostring177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 4
  %arraydecay178 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring177, i32 0, i32 0
  %call179 = call i32 @strcmp(i8* %arraydecay178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.end.245, label %land.lhs.true.182

land.lhs.true.182:                                ; preds = %land.lhs.true.175, %land.lhs.true.167
  %68 = load %union.rec*, %union.rec** %t, align 8
  %os1183 = bitcast %union.rec* %68 to %struct.word_type*
  %ou1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 1
  %os11185 = bitcast %union.FIRST_UNION* %ou1184 to %struct.anon*
  %otype186 = getelementptr inbounds %struct.anon, %struct.anon* %os11185, i32 0, i32 0
  %69 = load i8, i8* %otype186, align 1
  %conv187 = zext i8 %69 to i32
  %cmp188 = icmp eq i32 %conv187, 11
  br i1 %cmp188, label %land.lhs.true.190, label %land.lhs.true.198

land.lhs.true.190:                                ; preds = %land.lhs.true.182
  %70 = load %union.rec*, %union.rec** %t, align 8
  %os1192 = bitcast %union.rec* %70 to %struct.word_type*
  %ostring193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 4
  %arraydecay194 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring193, i32 0, i32 0
  %call195 = call i32 @strcmp(i8* %arraydecay194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %cmp196 = icmp eq i32 %call195, 0
  br i1 %cmp196, label %if.end.245, label %land.lhs.true.198

land.lhs.true.198:                                ; preds = %land.lhs.true.190, %land.lhs.true.182
  %71 = load %union.rec*, %union.rec** %t, align 8
  %os1200 = bitcast %union.rec* %71 to %struct.word_type*
  %ou1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 1
  %os11202 = bitcast %union.FIRST_UNION* %ou1201 to %struct.anon*
  %otype203 = getelementptr inbounds %struct.anon, %struct.anon* %os11202, i32 0, i32 0
  %72 = load i8, i8* %otype203, align 1
  %conv204 = zext i8 %72 to i32
  %cmp205 = icmp eq i32 %conv204, 11
  br i1 %cmp205, label %land.lhs.true.207, label %land.lhs.true.214

land.lhs.true.207:                                ; preds = %land.lhs.true.198
  %73 = load %union.rec*, %union.rec** %t, align 8
  %os1208 = bitcast %union.rec* %73 to %struct.word_type*
  %ostring209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 4
  %arraydecay210 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring209, i32 0, i32 0
  %call211 = call i32 @strcmp(i8* %arraydecay210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %cmp212 = icmp eq i32 %call211, 0
  br i1 %cmp212, label %if.end.245, label %land.lhs.true.214

land.lhs.true.214:                                ; preds = %land.lhs.true.207, %land.lhs.true.198
  %74 = load %union.rec*, %union.rec** %t, align 8
  %os1215 = bitcast %union.rec* %74 to %struct.word_type*
  %ou1216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 1
  %os11217 = bitcast %union.FIRST_UNION* %ou1216 to %struct.anon*
  %otype218 = getelementptr inbounds %struct.anon, %struct.anon* %os11217, i32 0, i32 0
  %75 = load i8, i8* %otype218, align 1
  %conv219 = zext i8 %75 to i32
  %cmp220 = icmp eq i32 %conv219, 11
  br i1 %cmp220, label %land.lhs.true.222, label %land.lhs.true.229

land.lhs.true.222:                                ; preds = %land.lhs.true.214
  %76 = load %union.rec*, %union.rec** %t, align 8
  %os1223 = bitcast %union.rec* %76 to %struct.word_type*
  %ostring224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 4
  %arraydecay225 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring224, i32 0, i32 0
  %call226 = call i32 @strcmp(i8* %arraydecay225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  %cmp227 = icmp eq i32 %call226, 0
  br i1 %cmp227, label %if.end.245, label %land.lhs.true.229

land.lhs.true.229:                                ; preds = %land.lhs.true.222, %land.lhs.true.214
  %77 = load %union.rec*, %union.rec** %t, align 8
  %os1230 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 1
  %os11232 = bitcast %union.FIRST_UNION* %ou1231 to %struct.anon*
  %otype233 = getelementptr inbounds %struct.anon, %struct.anon* %os11232, i32 0, i32 0
  %78 = load i8, i8* %otype233, align 1
  %conv234 = zext i8 %78 to i32
  %cmp235 = icmp eq i32 %conv234, 11
  br i1 %cmp235, label %land.lhs.true.237, label %if.then.244

land.lhs.true.237:                                ; preds = %land.lhs.true.229
  %79 = load %union.rec*, %union.rec** %t, align 8
  %os1238 = bitcast %union.rec* %79 to %struct.word_type*
  %ostring239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 4
  %arraydecay240 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring239, i32 0, i32 0
  %call241 = call i32 @strcmp(i8* %arraydecay240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.end.245, label %if.then.244

if.then.244:                                      ; preds = %land.lhs.true.237, %land.lhs.true.229
  br label %while.end.2973

if.end.245:                                       ; preds = %land.lhs.true.237, %land.lhs.true.222, %land.lhs.true.207, %land.lhs.true.190, %land.lhs.true.175, %land.lhs.true.160
  call void @BodyParNotAllowed()
  %80 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv246 = zext i8 %80 to i32
  store i32 %conv246, i32* @zz_size, align 4
  %conv247 = sext i32 %conv246 to i64
  %cmp248 = icmp uge i64 %conv247, 265
  br i1 %cmp248, label %if.then.250, label %if.else.252

if.then.250:                                      ; preds = %if.end.245
  %81 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call251 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %81)
  br label %if.end.269

if.else.252:                                      ; preds = %if.end.245
  %82 = load i32, i32* @zz_size, align 4
  %idxprom253 = sext i32 %82 to i64
  %arrayidx254 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom253
  %83 = load %union.rec*, %union.rec** %arrayidx254, align 8
  %cmp255 = icmp eq %union.rec* %83, null
  br i1 %cmp255, label %if.then.257, label %if.else.259

if.then.257:                                      ; preds = %if.else.252
  %84 = load i32, i32* @zz_size, align 4
  %85 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call258 = call %union.rec* @GetMemory(i32 %84, %struct.FILE_POS* %85)
  store %union.rec* %call258, %union.rec** @zz_hold, align 8
  br label %if.end.268

if.else.259:                                      ; preds = %if.else.252
  %86 = load i32, i32* @zz_size, align 4
  %idxprom260 = sext i32 %86 to i64
  %arrayidx261 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom260
  %87 = load %union.rec*, %union.rec** %arrayidx261, align 8
  store %union.rec* %87, %union.rec** @zz_hold, align 8
  store %union.rec* %87, %union.rec** @zz_hold, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1262 = bitcast %union.rec* %88 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 0
  %opred265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 0
  %89 = load %union.rec*, %union.rec** %opred265, align 8
  %90 = load i32, i32* @zz_size, align 4
  %idxprom266 = sext i32 %90 to i64
  %arrayidx267 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom266
  store %union.rec* %89, %union.rec** %arrayidx267, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.259, %if.then.257
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.then.250
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1270 = bitcast %union.rec* %91 to %struct.word_type*
  %ou1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 1
  %os11272 = bitcast %union.FIRST_UNION* %ou1271 to %struct.anon*
  %otype273 = getelementptr inbounds %struct.anon, %struct.anon* %os11272, i32 0, i32 0
  store i8 17, i8* %otype273, align 1
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1274 = bitcast %union.rec* %93 to %struct.word_type*
  %olist275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist275, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx276, i32 0, i32 1
  store %union.rec* %92, %union.rec** %osucc, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1277 = bitcast %union.rec* %94 to %struct.word_type*
  %olist278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist278, i32 0, i64 1
  %opred280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx279, i32 0, i32 0
  store %union.rec* %92, %union.rec** %opred280, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1281 = bitcast %union.rec* %95 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 0
  %osucc284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 1
  store %union.rec* %92, %union.rec** %osucc284, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1285 = bitcast %union.rec* %96 to %struct.word_type*
  %olist286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1285, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist286, i32 0, i64 0
  %opred288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx287, i32 0, i32 0
  store %union.rec* %92, %union.rec** %opred288, align 8
  store %union.rec* %92, %union.rec** %import_list, align 8
  store i32 0, i32* %has_import_encl, align 4
  %97 = load %union.rec*, %union.rec** %t, align 8
  %os1289 = bitcast %union.rec* %97 to %struct.word_type*
  %ou1290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 1
  %os11291 = bitcast %union.FIRST_UNION* %ou1290 to %struct.anon*
  %otype292 = getelementptr inbounds %struct.anon, %struct.anon* %os11291, i32 0, i32 0
  %98 = load i8, i8* %otype292, align 1
  %conv293 = zext i8 %98 to i32
  %cmp294 = icmp eq i32 %conv293, 11
  br i1 %cmp294, label %land.lhs.true.296, label %if.else.665

land.lhs.true.296:                                ; preds = %if.end.269
  %99 = load %union.rec*, %union.rec** %t, align 8
  %os1297 = bitcast %union.rec* %99 to %struct.word_type*
  %ostring298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 4
  %arraydecay299 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring298, i32 0, i32 0
  %call300 = call i32 @strcmp(i8* %arraydecay299, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %cmp301 = icmp eq i32 %call300, 0
  br i1 %cmp301, label %if.then.303, label %if.else.665

if.then.303:                                      ; preds = %land.lhs.true.296
  %100 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %100, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %101, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1304 = bitcast %union.rec* %102 to %struct.word_type*
  %ou1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 1
  %os11306 = bitcast %union.FIRST_UNION* %ou1305 to %struct.anon*
  %otype307 = getelementptr inbounds %struct.anon, %struct.anon* %os11306, i32 0, i32 0
  %103 = load i8, i8* %otype307, align 1
  %conv308 = zext i8 %103 to i32
  %cmp309 = icmp eq i32 %conv308, 11
  br i1 %cmp309, label %cond.true.319, label %lor.lhs.false.311

lor.lhs.false.311:                                ; preds = %if.then.303
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1312 = bitcast %union.rec* %104 to %struct.word_type*
  %ou1313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 1
  %os11314 = bitcast %union.FIRST_UNION* %ou1313 to %struct.anon*
  %otype315 = getelementptr inbounds %struct.anon, %struct.anon* %os11314, i32 0, i32 0
  %105 = load i8, i8* %otype315, align 1
  %conv316 = zext i8 %105 to i32
  %cmp317 = icmp eq i32 %conv316, 12
  br i1 %cmp317, label %cond.true.319, label %cond.false.325

cond.true.319:                                    ; preds = %lor.lhs.false.311, %if.then.303
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 1
  %os11322 = bitcast %union.FIRST_UNION* %ou1321 to %struct.anon*
  %orec_size323 = getelementptr inbounds %struct.anon, %struct.anon* %os11322, i32 0, i32 1
  %107 = load i8, i8* %orec_size323, align 1
  %conv324 = zext i8 %107 to i32
  br label %cond.end.333

cond.false.325:                                   ; preds = %lor.lhs.false.311
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1326 = bitcast %union.rec* %108 to %struct.word_type*
  %ou1327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1326, i32 0, i32 1
  %os11328 = bitcast %union.FIRST_UNION* %ou1327 to %struct.anon*
  %otype329 = getelementptr inbounds %struct.anon, %struct.anon* %os11328, i32 0, i32 0
  %109 = load i8, i8* %otype329, align 1
  %idxprom330 = zext i8 %109 to i64
  %arrayidx331 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom330
  %110 = load i8, i8* %arrayidx331, align 1
  %conv332 = zext i8 %110 to i32
  br label %cond.end.333

cond.end.333:                                     ; preds = %cond.false.325, %cond.true.319
  %cond334 = phi i32 [ %conv324, %cond.true.319 ], [ %conv332, %cond.false.325 ]
  store i32 %cond334, i32* @zz_size, align 4
  %111 = load i32, i32* @zz_size, align 4
  %idxprom335 = sext i32 %111 to i64
  %arrayidx336 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom335
  %112 = load %union.rec*, %union.rec** %arrayidx336, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1337 = bitcast %union.rec* %113 to %struct.word_type*
  %olist338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1337, i32 0, i32 0
  %arrayidx339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist338, i32 0, i64 0
  %opred340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx339, i32 0, i32 0
  store %union.rec* %112, %union.rec** %opred340, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %115 = load i32, i32* @zz_size, align 4
  %idxprom341 = sext i32 %115 to i64
  %arrayidx342 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom341
  store %union.rec* %114, %union.rec** %arrayidx342, align 8
  %call343 = call %union.rec* @LexGetToken()
  store %union.rec* %call343, %union.rec** %t, align 8
  br label %while.cond.344

while.cond.344:                                   ; preds = %if.end.663, %cond.end.333
  %116 = load %union.rec*, %union.rec** %t, align 8
  %os1345 = bitcast %union.rec* %116 to %struct.word_type*
  %ou1346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 1
  %os11347 = bitcast %union.FIRST_UNION* %ou1346 to %struct.anon*
  %otype348 = getelementptr inbounds %struct.anon, %struct.anon* %os11347, i32 0, i32 0
  %117 = load i8, i8* %otype348, align 1
  %conv349 = zext i8 %117 to i32
  %cmp350 = icmp eq i32 %conv349, 2
  br i1 %cmp350, label %lor.end.422, label %lor.rhs.352

lor.rhs.352:                                      ; preds = %while.cond.344
  %118 = load %union.rec*, %union.rec** %t, align 8
  %os1353 = bitcast %union.rec* %118 to %struct.word_type*
  %ou1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1353, i32 0, i32 1
  %os11355 = bitcast %union.FIRST_UNION* %ou1354 to %struct.anon*
  %otype356 = getelementptr inbounds %struct.anon, %struct.anon* %os11355, i32 0, i32 0
  %119 = load i8, i8* %otype356, align 1
  %conv357 = zext i8 %119 to i32
  %cmp358 = icmp eq i32 %conv357, 11
  br i1 %cmp358, label %land.lhs.true.360, label %land.end.421

land.lhs.true.360:                                ; preds = %lor.rhs.352
  %120 = load %union.rec*, %union.rec** %t, align 8
  %os1361 = bitcast %union.rec* %120 to %struct.word_type*
  %ou1362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 1
  %os11363 = bitcast %union.FIRST_UNION* %ou1362 to %struct.anon*
  %otype364 = getelementptr inbounds %struct.anon, %struct.anon* %os11363, i32 0, i32 0
  %121 = load i8, i8* %otype364, align 1
  %conv365 = zext i8 %121 to i32
  %cmp366 = icmp eq i32 %conv365, 11
  br i1 %cmp366, label %land.lhs.true.368, label %land.lhs.true.375

land.lhs.true.368:                                ; preds = %land.lhs.true.360
  %122 = load %union.rec*, %union.rec** %t, align 8
  %os1369 = bitcast %union.rec* %122 to %struct.word_type*
  %ostring370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 4
  %arraydecay371 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring370, i32 0, i32 0
  %call372 = call i32 @strcmp(i8* %arraydecay371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %cmp373 = icmp eq i32 %call372, 0
  br i1 %cmp373, label %land.end.421, label %land.lhs.true.375

land.lhs.true.375:                                ; preds = %land.lhs.true.368, %land.lhs.true.360
  %123 = load %union.rec*, %union.rec** %t, align 8
  %os1376 = bitcast %union.rec* %123 to %struct.word_type*
  %ou1377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 1
  %os11378 = bitcast %union.FIRST_UNION* %ou1377 to %struct.anon*
  %otype379 = getelementptr inbounds %struct.anon, %struct.anon* %os11378, i32 0, i32 0
  %124 = load i8, i8* %otype379, align 1
  %conv380 = zext i8 %124 to i32
  %cmp381 = icmp eq i32 %conv380, 11
  br i1 %cmp381, label %land.lhs.true.383, label %land.lhs.true.390

land.lhs.true.383:                                ; preds = %land.lhs.true.375
  %125 = load %union.rec*, %union.rec** %t, align 8
  %os1384 = bitcast %union.rec* %125 to %struct.word_type*
  %ostring385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 4
  %arraydecay386 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring385, i32 0, i32 0
  %call387 = call i32 @strcmp(i8* %arraydecay386, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %cmp388 = icmp eq i32 %call387, 0
  br i1 %cmp388, label %land.end.421, label %land.lhs.true.390

land.lhs.true.390:                                ; preds = %land.lhs.true.383, %land.lhs.true.375
  %126 = load %union.rec*, %union.rec** %t, align 8
  %os1391 = bitcast %union.rec* %126 to %struct.word_type*
  %ou1392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 1
  %os11393 = bitcast %union.FIRST_UNION* %ou1392 to %struct.anon*
  %otype394 = getelementptr inbounds %struct.anon, %struct.anon* %os11393, i32 0, i32 0
  %127 = load i8, i8* %otype394, align 1
  %conv395 = zext i8 %127 to i32
  %cmp396 = icmp eq i32 %conv395, 11
  br i1 %cmp396, label %land.lhs.true.398, label %land.rhs.405

land.lhs.true.398:                                ; preds = %land.lhs.true.390
  %128 = load %union.rec*, %union.rec** %t, align 8
  %os1399 = bitcast %union.rec* %128 to %struct.word_type*
  %ostring400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 4
  %arraydecay401 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring400, i32 0, i32 0
  %call402 = call i32 @strcmp(i8* %arraydecay401, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %cmp403 = icmp eq i32 %call402, 0
  br i1 %cmp403, label %land.end.421, label %land.rhs.405

land.rhs.405:                                     ; preds = %land.lhs.true.398, %land.lhs.true.390
  %129 = load %union.rec*, %union.rec** %t, align 8
  %os1406 = bitcast %union.rec* %129 to %struct.word_type*
  %ou1407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1406, i32 0, i32 1
  %os11408 = bitcast %union.FIRST_UNION* %ou1407 to %struct.anon*
  %otype409 = getelementptr inbounds %struct.anon, %struct.anon* %os11408, i32 0, i32 0
  %130 = load i8, i8* %otype409, align 1
  %conv410 = zext i8 %130 to i32
  %cmp411 = icmp eq i32 %conv410, 11
  br i1 %cmp411, label %land.rhs.413, label %land.end.420

land.rhs.413:                                     ; preds = %land.rhs.405
  %131 = load %union.rec*, %union.rec** %t, align 8
  %os1414 = bitcast %union.rec* %131 to %struct.word_type*
  %ostring415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1414, i32 0, i32 4
  %arraydecay416 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring415, i32 0, i32 0
  %call417 = call i32 @strcmp(i8* %arraydecay416, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %cmp418 = icmp eq i32 %call417, 0
  br label %land.end.420

land.end.420:                                     ; preds = %land.rhs.413, %land.rhs.405
  %132 = phi i1 [ false, %land.rhs.405 ], [ %cmp418, %land.rhs.413 ]
  %lnot = xor i1 %132, true
  br label %land.end.421

land.end.421:                                     ; preds = %land.end.420, %land.lhs.true.398, %land.lhs.true.383, %land.lhs.true.368, %lor.rhs.352
  %133 = phi i1 [ false, %land.lhs.true.398 ], [ false, %land.lhs.true.383 ], [ false, %land.lhs.true.368 ], [ false, %lor.rhs.352 ], [ %lnot, %land.end.420 ]
  br label %lor.end.422

lor.end.422:                                      ; preds = %land.end.421, %while.cond.344
  %134 = phi i1 [ true, %while.cond.344 ], [ %133, %land.end.421 ]
  br i1 %134, label %while.body.423, label %while.end

while.body.423:                                   ; preds = %lor.end.422
  %135 = load %union.rec*, %union.rec** %t, align 8
  %os1424 = bitcast %union.rec* %135 to %struct.word_type*
  %ou1425 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1424, i32 0, i32 1
  %os11426 = bitcast %union.FIRST_UNION* %ou1425 to %struct.anon*
  %otype427 = getelementptr inbounds %struct.anon, %struct.anon* %os11426, i32 0, i32 0
  %136 = load i8, i8* %otype427, align 1
  %conv428 = zext i8 %136 to i32
  %cmp429 = icmp eq i32 %conv428, 2
  br i1 %cmp429, label %if.then.431, label %if.else.616

if.then.431:                                      ; preds = %while.body.423
  %137 = load %union.rec*, %union.rec** %t, align 8
  %os2 = bitcast %union.rec* %137 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %138 = load %union.rec*, %union.rec** %oactual, align 8
  %os1432 = bitcast %union.rec* %138 to %struct.word_type*
  %ou1433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 1
  %os11434 = bitcast %union.FIRST_UNION* %ou1433 to %struct.anon*
  %otype435 = getelementptr inbounds %struct.anon, %struct.anon* %os11434, i32 0, i32 0
  %139 = load i8, i8* %otype435, align 1
  %conv436 = zext i8 %139 to i32
  %cmp437 = icmp eq i32 %conv436, 143
  br i1 %cmp437, label %if.then.439, label %if.else.572

if.then.439:                                      ; preds = %if.then.431
  %140 = load %union.rec*, %union.rec** %t, align 8
  %os2440 = bitcast %union.rec* %140 to %struct.closure_type*
  %oactual441 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2440, i32 0, i32 5
  %141 = load %union.rec*, %union.rec** %oactual441, align 8
  call void @PushScope(%union.rec* %141, i32 0, i32 1)
  %142 = load %union.rec*, %union.rec** %t, align 8
  %os2442 = bitcast %union.rec* %142 to %struct.closure_type*
  %oactual443 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2442, i32 0, i32 5
  %143 = load %union.rec*, %union.rec** %oactual443, align 8
  %144 = load %union.rec*, %union.rec** %encl.addr, align 8
  %cmp444 = icmp eq %union.rec* %143, %144
  br i1 %cmp444, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %if.then.439
  store i32 1, i32* %has_import_encl, align 4
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.446, %if.then.439
  %145 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv448 = zext i8 %145 to i32
  store i32 %conv448, i32* @zz_size, align 4
  %conv449 = sext i32 %conv448 to i64
  %cmp450 = icmp uge i64 %conv449, 265
  br i1 %cmp450, label %if.then.452, label %if.else.454

if.then.452:                                      ; preds = %if.end.447
  %146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call453 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %146)
  br label %if.end.471

if.else.454:                                      ; preds = %if.end.447
  %147 = load i32, i32* @zz_size, align 4
  %idxprom455 = sext i32 %147 to i64
  %arrayidx456 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom455
  %148 = load %union.rec*, %union.rec** %arrayidx456, align 8
  %cmp457 = icmp eq %union.rec* %148, null
  br i1 %cmp457, label %if.then.459, label %if.else.461

if.then.459:                                      ; preds = %if.else.454
  %149 = load i32, i32* @zz_size, align 4
  %150 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call460 = call %union.rec* @GetMemory(i32 %149, %struct.FILE_POS* %150)
  store %union.rec* %call460, %union.rec** @zz_hold, align 8
  br label %if.end.470

if.else.461:                                      ; preds = %if.else.454
  %151 = load i32, i32* @zz_size, align 4
  %idxprom462 = sext i32 %151 to i64
  %arrayidx463 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom462
  %152 = load %union.rec*, %union.rec** %arrayidx463, align 8
  store %union.rec* %152, %union.rec** @zz_hold, align 8
  store %union.rec* %152, %union.rec** @zz_hold, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1464 = bitcast %union.rec* %153 to %struct.word_type*
  %olist465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1464, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist465, i32 0, i64 0
  %opred467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx466, i32 0, i32 0
  %154 = load %union.rec*, %union.rec** %opred467, align 8
  %155 = load i32, i32* @zz_size, align 4
  %idxprom468 = sext i32 %155 to i64
  %arrayidx469 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom468
  store %union.rec* %154, %union.rec** %arrayidx469, align 8
  br label %if.end.470

if.end.470:                                       ; preds = %if.else.461, %if.then.459
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.then.452
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1472 = bitcast %union.rec* %156 to %struct.word_type*
  %ou1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1472, i32 0, i32 1
  %os11474 = bitcast %union.FIRST_UNION* %ou1473 to %struct.anon*
  %otype475 = getelementptr inbounds %struct.anon, %struct.anon* %os11474, i32 0, i32 0
  store i8 0, i8* %otype475, align 1
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1476 = bitcast %union.rec* %158 to %struct.word_type*
  %olist477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist477, i32 0, i64 1
  %osucc479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx478, i32 0, i32 1
  store %union.rec* %157, %union.rec** %osucc479, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1480 = bitcast %union.rec* %159 to %struct.word_type*
  %olist481 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1480, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist481, i32 0, i64 1
  %opred483 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx482, i32 0, i32 0
  store %union.rec* %157, %union.rec** %opred483, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1484 = bitcast %union.rec* %160 to %struct.word_type*
  %olist485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1484, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist485, i32 0, i64 0
  %osucc487 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx486, i32 0, i32 1
  store %union.rec* %157, %union.rec** %osucc487, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1488 = bitcast %union.rec* %161 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 0
  %opred491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 0
  store %union.rec* %157, %union.rec** %opred491, align 8
  store %union.rec* %157, %union.rec** @xx_link, align 8
  %162 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %162, %union.rec** @zz_res, align 8
  %163 = load %union.rec*, %union.rec** %import_list, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp492 = icmp eq %union.rec* %164, null
  br i1 %cmp492, label %cond.true.494, label %cond.false.495

cond.true.494:                                    ; preds = %if.end.471
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.530

cond.false.495:                                   ; preds = %if.end.471
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp496 = icmp eq %union.rec* %166, null
  br i1 %cmp496, label %cond.true.498, label %cond.false.499

cond.true.498:                                    ; preds = %cond.false.495
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.528

cond.false.499:                                   ; preds = %cond.false.495
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1500 = bitcast %union.rec* %168 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 0
  %opred503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred503, align 8
  store %union.rec* %169, %union.rec** @zz_tmp, align 8
  %170 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1504 = bitcast %union.rec* %170 to %struct.word_type*
  %olist505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1504, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist505, i32 0, i64 0
  %opred507 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx506, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %opred507, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1508 = bitcast %union.rec* %172 to %struct.word_type*
  %olist509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1508, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist509, i32 0, i64 0
  %opred511 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx510, i32 0, i32 0
  store %union.rec* %171, %union.rec** %opred511, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1512 = bitcast %union.rec* %174 to %struct.word_type*
  %olist513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1512, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist513, i32 0, i64 0
  %opred515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx514, i32 0, i32 0
  %175 = load %union.rec*, %union.rec** %opred515, align 8
  %os1516 = bitcast %union.rec* %175 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 0
  %osucc519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 1
  store %union.rec* %173, %union.rec** %osucc519, align 8
  %176 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1520 = bitcast %union.rec* %177 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 0
  %opred523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 0
  store %union.rec* %176, %union.rec** %opred523, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %179 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1524 = bitcast %union.rec* %179 to %struct.word_type*
  %olist525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1524, i32 0, i32 0
  %arrayidx526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist525, i32 0, i64 0
  %osucc527 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx526, i32 0, i32 1
  store %union.rec* %178, %union.rec** %osucc527, align 8
  br label %cond.end.528

cond.end.528:                                     ; preds = %cond.false.499, %cond.true.498
  %cond529 = phi %union.rec* [ %167, %cond.true.498 ], [ %178, %cond.false.499 ]
  br label %cond.end.530

cond.end.530:                                     ; preds = %cond.end.528, %cond.true.494
  %cond531 = phi %union.rec* [ %165, %cond.true.494 ], [ %cond529, %cond.end.528 ]
  %180 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %180, %union.rec** @zz_res, align 8
  %181 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %181, %union.rec** @zz_hold, align 8
  %182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp532 = icmp eq %union.rec* %182, null
  br i1 %cmp532, label %cond.true.534, label %cond.false.535

cond.true.534:                                    ; preds = %cond.end.530
  %183 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.570

cond.false.535:                                   ; preds = %cond.end.530
  %184 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp536 = icmp eq %union.rec* %184, null
  br i1 %cmp536, label %cond.true.538, label %cond.false.539

cond.true.538:                                    ; preds = %cond.false.535
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.568

cond.false.539:                                   ; preds = %cond.false.535
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1540 = bitcast %union.rec* %186 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 1
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %opred543, align 8
  store %union.rec* %187, %union.rec** @zz_tmp, align 8
  %188 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1544 = bitcast %union.rec* %188 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 1
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  %189 = load %union.rec*, %union.rec** %opred547, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1548 = bitcast %union.rec* %190 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 1
  %opred551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 0
  store %union.rec* %189, %union.rec** %opred551, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1552 = bitcast %union.rec* %192 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 1
  %opred555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 0
  %193 = load %union.rec*, %union.rec** %opred555, align 8
  %os1556 = bitcast %union.rec* %193 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 1
  %osucc559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 1
  store %union.rec* %191, %union.rec** %osucc559, align 8
  %194 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1560 = bitcast %union.rec* %195 to %struct.word_type*
  %olist561 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1560, i32 0, i32 0
  %arrayidx562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist561, i32 0, i64 1
  %opred563 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx562, i32 0, i32 0
  store %union.rec* %194, %union.rec** %opred563, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %197 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1564 = bitcast %union.rec* %197 to %struct.word_type*
  %olist565 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1564, i32 0, i32 0
  %arrayidx566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist565, i32 0, i64 1
  %osucc567 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx566, i32 0, i32 1
  store %union.rec* %196, %union.rec** %osucc567, align 8
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.539, %cond.true.538
  %cond569 = phi %union.rec* [ %185, %cond.true.538 ], [ %196, %cond.false.539 ]
  br label %cond.end.570

cond.end.570:                                     ; preds = %cond.end.568, %cond.true.534
  %cond571 = phi %union.rec* [ %183, %cond.true.534 ], [ %cond569, %cond.end.568 ]
  br label %if.end.615

if.else.572:                                      ; preds = %if.then.431
  %198 = load %union.rec*, %union.rec** %t, align 8
  %os1573 = bitcast %union.rec* %198 to %struct.word_type*
  %ou1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1574 to %struct.FILE_POS*
  %call575 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos)
  %199 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %199, %union.rec** @zz_hold, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %200, %union.rec** @zz_hold, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1576 = bitcast %union.rec* %201 to %struct.word_type*
  %ou1577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1576, i32 0, i32 1
  %os11578 = bitcast %union.FIRST_UNION* %ou1577 to %struct.anon*
  %otype579 = getelementptr inbounds %struct.anon, %struct.anon* %os11578, i32 0, i32 0
  %202 = load i8, i8* %otype579, align 1
  %conv580 = zext i8 %202 to i32
  %cmp581 = icmp eq i32 %conv580, 11
  br i1 %cmp581, label %cond.true.591, label %lor.lhs.false.583

lor.lhs.false.583:                                ; preds = %if.else.572
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1584 = bitcast %union.rec* %203 to %struct.word_type*
  %ou1585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1584, i32 0, i32 1
  %os11586 = bitcast %union.FIRST_UNION* %ou1585 to %struct.anon*
  %otype587 = getelementptr inbounds %struct.anon, %struct.anon* %os11586, i32 0, i32 0
  %204 = load i8, i8* %otype587, align 1
  %conv588 = zext i8 %204 to i32
  %cmp589 = icmp eq i32 %conv588, 12
  br i1 %cmp589, label %cond.true.591, label %cond.false.597

cond.true.591:                                    ; preds = %lor.lhs.false.583, %if.else.572
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1592 = bitcast %union.rec* %205 to %struct.word_type*
  %ou1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 1
  %os11594 = bitcast %union.FIRST_UNION* %ou1593 to %struct.anon*
  %orec_size595 = getelementptr inbounds %struct.anon, %struct.anon* %os11594, i32 0, i32 1
  %206 = load i8, i8* %orec_size595, align 1
  %conv596 = zext i8 %206 to i32
  br label %cond.end.605

cond.false.597:                                   ; preds = %lor.lhs.false.583
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1598 = bitcast %union.rec* %207 to %struct.word_type*
  %ou1599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1598, i32 0, i32 1
  %os11600 = bitcast %union.FIRST_UNION* %ou1599 to %struct.anon*
  %otype601 = getelementptr inbounds %struct.anon, %struct.anon* %os11600, i32 0, i32 0
  %208 = load i8, i8* %otype601, align 1
  %idxprom602 = zext i8 %208 to i64
  %arrayidx603 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom602
  %209 = load i8, i8* %arrayidx603, align 1
  %conv604 = zext i8 %209 to i32
  br label %cond.end.605

cond.end.605:                                     ; preds = %cond.false.597, %cond.true.591
  %cond606 = phi i32 [ %conv596, %cond.true.591 ], [ %conv604, %cond.false.597 ]
  store i32 %cond606, i32* @zz_size, align 4
  %210 = load i32, i32* @zz_size, align 4
  %idxprom607 = sext i32 %210 to i64
  %arrayidx608 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom607
  %211 = load %union.rec*, %union.rec** %arrayidx608, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1609 = bitcast %union.rec* %212 to %struct.word_type*
  %olist610 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1609, i32 0, i32 0
  %arrayidx611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist610, i32 0, i64 0
  %opred612 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx611, i32 0, i32 0
  store %union.rec* %211, %union.rec** %opred612, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %214 = load i32, i32* @zz_size, align 4
  %idxprom613 = sext i32 %214 to i64
  %arrayidx614 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom613
  store %union.rec* %213, %union.rec** %arrayidx614, align 8
  br label %if.end.615

if.end.615:                                       ; preds = %cond.end.605, %cond.end.570
  br label %if.end.663

if.else.616:                                      ; preds = %while.body.423
  %215 = load %union.rec*, %union.rec** %t, align 8
  %os1617 = bitcast %union.rec* %215 to %struct.word_type*
  %ou1618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1617, i32 0, i32 1
  %ofpos619 = bitcast %union.FIRST_UNION* %ou1618 to %struct.FILE_POS*
  %216 = load %union.rec*, %union.rec** %t, align 8
  %os1620 = bitcast %union.rec* %216 to %struct.word_type*
  %ostring621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1620, i32 0, i32 4
  %arraydecay622 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring621, i32 0, i32 0
  %call623 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos619, i8* %arraydecay622)
  %217 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %217, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %218, %union.rec** @zz_hold, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1624 = bitcast %union.rec* %219 to %struct.word_type*
  %ou1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 1
  %os11626 = bitcast %union.FIRST_UNION* %ou1625 to %struct.anon*
  %otype627 = getelementptr inbounds %struct.anon, %struct.anon* %os11626, i32 0, i32 0
  %220 = load i8, i8* %otype627, align 1
  %conv628 = zext i8 %220 to i32
  %cmp629 = icmp eq i32 %conv628, 11
  br i1 %cmp629, label %cond.true.639, label %lor.lhs.false.631

lor.lhs.false.631:                                ; preds = %if.else.616
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1632 = bitcast %union.rec* %221 to %struct.word_type*
  %ou1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1632, i32 0, i32 1
  %os11634 = bitcast %union.FIRST_UNION* %ou1633 to %struct.anon*
  %otype635 = getelementptr inbounds %struct.anon, %struct.anon* %os11634, i32 0, i32 0
  %222 = load i8, i8* %otype635, align 1
  %conv636 = zext i8 %222 to i32
  %cmp637 = icmp eq i32 %conv636, 12
  br i1 %cmp637, label %cond.true.639, label %cond.false.645

cond.true.639:                                    ; preds = %lor.lhs.false.631, %if.else.616
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1640 = bitcast %union.rec* %223 to %struct.word_type*
  %ou1641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1640, i32 0, i32 1
  %os11642 = bitcast %union.FIRST_UNION* %ou1641 to %struct.anon*
  %orec_size643 = getelementptr inbounds %struct.anon, %struct.anon* %os11642, i32 0, i32 1
  %224 = load i8, i8* %orec_size643, align 1
  %conv644 = zext i8 %224 to i32
  br label %cond.end.653

cond.false.645:                                   ; preds = %lor.lhs.false.631
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1646 = bitcast %union.rec* %225 to %struct.word_type*
  %ou1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1646, i32 0, i32 1
  %os11648 = bitcast %union.FIRST_UNION* %ou1647 to %struct.anon*
  %otype649 = getelementptr inbounds %struct.anon, %struct.anon* %os11648, i32 0, i32 0
  %226 = load i8, i8* %otype649, align 1
  %idxprom650 = zext i8 %226 to i64
  %arrayidx651 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom650
  %227 = load i8, i8* %arrayidx651, align 1
  %conv652 = zext i8 %227 to i32
  br label %cond.end.653

cond.end.653:                                     ; preds = %cond.false.645, %cond.true.639
  %cond654 = phi i32 [ %conv644, %cond.true.639 ], [ %conv652, %cond.false.645 ]
  store i32 %cond654, i32* @zz_size, align 4
  %228 = load i32, i32* @zz_size, align 4
  %idxprom655 = sext i32 %228 to i64
  %arrayidx656 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom655
  %229 = load %union.rec*, %union.rec** %arrayidx656, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1657 = bitcast %union.rec* %230 to %struct.word_type*
  %olist658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1657, i32 0, i32 0
  %arrayidx659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist658, i32 0, i64 0
  %opred660 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx659, i32 0, i32 0
  store %union.rec* %229, %union.rec** %opred660, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %232 = load i32, i32* @zz_size, align 4
  %idxprom661 = sext i32 %232 to i64
  %arrayidx662 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom661
  store %union.rec* %231, %union.rec** %arrayidx662, align 8
  br label %if.end.663

if.end.663:                                       ; preds = %cond.end.653, %if.end.615
  %call664 = call %union.rec* @LexGetToken()
  store %union.rec* %call664, %union.rec** %t, align 8
  br label %while.cond.344

while.end:                                        ; preds = %lor.end.422
  br label %if.end.1043

if.else.665:                                      ; preds = %land.lhs.true.296, %if.end.269
  %233 = load %union.rec*, %union.rec** %t, align 8
  %os1666 = bitcast %union.rec* %233 to %struct.word_type*
  %ou1667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1666, i32 0, i32 1
  %os11668 = bitcast %union.FIRST_UNION* %ou1667 to %struct.anon*
  %otype669 = getelementptr inbounds %struct.anon, %struct.anon* %os11668, i32 0, i32 0
  %234 = load i8, i8* %otype669, align 1
  %conv670 = zext i8 %234 to i32
  %cmp671 = icmp eq i32 %conv670, 11
  br i1 %cmp671, label %land.lhs.true.673, label %if.end.1042

land.lhs.true.673:                                ; preds = %if.else.665
  %235 = load %union.rec*, %union.rec** %t, align 8
  %os1674 = bitcast %union.rec* %235 to %struct.word_type*
  %ostring675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1674, i32 0, i32 4
  %arraydecay676 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring675, i32 0, i32 0
  %call677 = call i32 @strcmp(i8* %arraydecay676, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  %cmp678 = icmp eq i32 %call677, 0
  br i1 %cmp678, label %if.then.680, label %if.end.1042

if.then.680:                                      ; preds = %land.lhs.true.673
  %236 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %236, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %237, %union.rec** @zz_hold, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1681 = bitcast %union.rec* %238 to %struct.word_type*
  %ou1682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1681, i32 0, i32 1
  %os11683 = bitcast %union.FIRST_UNION* %ou1682 to %struct.anon*
  %otype684 = getelementptr inbounds %struct.anon, %struct.anon* %os11683, i32 0, i32 0
  %239 = load i8, i8* %otype684, align 1
  %conv685 = zext i8 %239 to i32
  %cmp686 = icmp eq i32 %conv685, 11
  br i1 %cmp686, label %cond.true.696, label %lor.lhs.false.688

lor.lhs.false.688:                                ; preds = %if.then.680
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1689 = bitcast %union.rec* %240 to %struct.word_type*
  %ou1690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 1
  %os11691 = bitcast %union.FIRST_UNION* %ou1690 to %struct.anon*
  %otype692 = getelementptr inbounds %struct.anon, %struct.anon* %os11691, i32 0, i32 0
  %241 = load i8, i8* %otype692, align 1
  %conv693 = zext i8 %241 to i32
  %cmp694 = icmp eq i32 %conv693, 12
  br i1 %cmp694, label %cond.true.696, label %cond.false.702

cond.true.696:                                    ; preds = %lor.lhs.false.688, %if.then.680
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1697 = bitcast %union.rec* %242 to %struct.word_type*
  %ou1698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 1
  %os11699 = bitcast %union.FIRST_UNION* %ou1698 to %struct.anon*
  %orec_size700 = getelementptr inbounds %struct.anon, %struct.anon* %os11699, i32 0, i32 1
  %243 = load i8, i8* %orec_size700, align 1
  %conv701 = zext i8 %243 to i32
  br label %cond.end.710

cond.false.702:                                   ; preds = %lor.lhs.false.688
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1703 = bitcast %union.rec* %244 to %struct.word_type*
  %ou1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1703, i32 0, i32 1
  %os11705 = bitcast %union.FIRST_UNION* %ou1704 to %struct.anon*
  %otype706 = getelementptr inbounds %struct.anon, %struct.anon* %os11705, i32 0, i32 0
  %245 = load i8, i8* %otype706, align 1
  %idxprom707 = zext i8 %245 to i64
  %arrayidx708 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom707
  %246 = load i8, i8* %arrayidx708, align 1
  %conv709 = zext i8 %246 to i32
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.false.702, %cond.true.696
  %cond711 = phi i32 [ %conv701, %cond.true.696 ], [ %conv709, %cond.false.702 ]
  store i32 %cond711, i32* @zz_size, align 4
  %247 = load i32, i32* @zz_size, align 4
  %idxprom712 = sext i32 %247 to i64
  %arrayidx713 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom712
  %248 = load %union.rec*, %union.rec** %arrayidx713, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1714 = bitcast %union.rec* %249 to %struct.word_type*
  %olist715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1714, i32 0, i32 0
  %arrayidx716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist715, i32 0, i64 0
  %opred717 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx716, i32 0, i32 0
  store %union.rec* %248, %union.rec** %opred717, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = load i32, i32* @zz_size, align 4
  %idxprom718 = sext i32 %251 to i64
  %arrayidx719 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom718
  store %union.rec* %250, %union.rec** %arrayidx719, align 8
  %call720 = call %union.rec* @LexGetToken()
  store %union.rec* %call720, %union.rec** %t, align 8
  br label %while.cond.721

while.cond.721:                                   ; preds = %if.end.1039, %cond.end.710
  %252 = load %union.rec*, %union.rec** %t, align 8
  %os1722 = bitcast %union.rec* %252 to %struct.word_type*
  %ou1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1722, i32 0, i32 1
  %os11724 = bitcast %union.FIRST_UNION* %ou1723 to %struct.anon*
  %otype725 = getelementptr inbounds %struct.anon, %struct.anon* %os11724, i32 0, i32 0
  %253 = load i8, i8* %otype725, align 1
  %conv726 = zext i8 %253 to i32
  %cmp727 = icmp eq i32 %conv726, 2
  br i1 %cmp727, label %lor.end.785, label %lor.rhs.729

lor.rhs.729:                                      ; preds = %while.cond.721
  %254 = load %union.rec*, %union.rec** %t, align 8
  %os1730 = bitcast %union.rec* %254 to %struct.word_type*
  %ou1731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1730, i32 0, i32 1
  %os11732 = bitcast %union.FIRST_UNION* %ou1731 to %struct.anon*
  %otype733 = getelementptr inbounds %struct.anon, %struct.anon* %os11732, i32 0, i32 0
  %255 = load i8, i8* %otype733, align 1
  %conv734 = zext i8 %255 to i32
  %cmp735 = icmp eq i32 %conv734, 11
  br i1 %cmp735, label %land.lhs.true.737, label %land.end.784

land.lhs.true.737:                                ; preds = %lor.rhs.729
  %256 = load %union.rec*, %union.rec** %t, align 8
  %os1738 = bitcast %union.rec* %256 to %struct.word_type*
  %ou1739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 1
  %os11740 = bitcast %union.FIRST_UNION* %ou1739 to %struct.anon*
  %otype741 = getelementptr inbounds %struct.anon, %struct.anon* %os11740, i32 0, i32 0
  %257 = load i8, i8* %otype741, align 1
  %conv742 = zext i8 %257 to i32
  %cmp743 = icmp eq i32 %conv742, 11
  br i1 %cmp743, label %land.lhs.true.745, label %land.lhs.true.752

land.lhs.true.745:                                ; preds = %land.lhs.true.737
  %258 = load %union.rec*, %union.rec** %t, align 8
  %os1746 = bitcast %union.rec* %258 to %struct.word_type*
  %ostring747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1746, i32 0, i32 4
  %arraydecay748 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring747, i32 0, i32 0
  %call749 = call i32 @strcmp(i8* %arraydecay748, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %cmp750 = icmp eq i32 %call749, 0
  br i1 %cmp750, label %land.end.784, label %land.lhs.true.752

land.lhs.true.752:                                ; preds = %land.lhs.true.745, %land.lhs.true.737
  %259 = load %union.rec*, %union.rec** %t, align 8
  %os1753 = bitcast %union.rec* %259 to %struct.word_type*
  %ou1754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1753, i32 0, i32 1
  %os11755 = bitcast %union.FIRST_UNION* %ou1754 to %struct.anon*
  %otype756 = getelementptr inbounds %struct.anon, %struct.anon* %os11755, i32 0, i32 0
  %260 = load i8, i8* %otype756, align 1
  %conv757 = zext i8 %260 to i32
  %cmp758 = icmp eq i32 %conv757, 11
  br i1 %cmp758, label %land.lhs.true.760, label %land.rhs.767

land.lhs.true.760:                                ; preds = %land.lhs.true.752
  %261 = load %union.rec*, %union.rec** %t, align 8
  %os1761 = bitcast %union.rec* %261 to %struct.word_type*
  %ostring762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 4
  %arraydecay763 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring762, i32 0, i32 0
  %call764 = call i32 @strcmp(i8* %arraydecay763, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %cmp765 = icmp eq i32 %call764, 0
  br i1 %cmp765, label %land.end.784, label %land.rhs.767

land.rhs.767:                                     ; preds = %land.lhs.true.760, %land.lhs.true.752
  %262 = load %union.rec*, %union.rec** %t, align 8
  %os1768 = bitcast %union.rec* %262 to %struct.word_type*
  %ou1769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1768, i32 0, i32 1
  %os11770 = bitcast %union.FIRST_UNION* %ou1769 to %struct.anon*
  %otype771 = getelementptr inbounds %struct.anon, %struct.anon* %os11770, i32 0, i32 0
  %263 = load i8, i8* %otype771, align 1
  %conv772 = zext i8 %263 to i32
  %cmp773 = icmp eq i32 %conv772, 11
  br i1 %cmp773, label %land.rhs.775, label %land.end.782

land.rhs.775:                                     ; preds = %land.rhs.767
  %264 = load %union.rec*, %union.rec** %t, align 8
  %os1776 = bitcast %union.rec* %264 to %struct.word_type*
  %ostring777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1776, i32 0, i32 4
  %arraydecay778 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring777, i32 0, i32 0
  %call779 = call i32 @strcmp(i8* %arraydecay778, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %cmp780 = icmp eq i32 %call779, 0
  br label %land.end.782

land.end.782:                                     ; preds = %land.rhs.775, %land.rhs.767
  %265 = phi i1 [ false, %land.rhs.767 ], [ %cmp780, %land.rhs.775 ]
  %lnot783 = xor i1 %265, true
  br label %land.end.784

land.end.784:                                     ; preds = %land.end.782, %land.lhs.true.760, %land.lhs.true.745, %lor.rhs.729
  %266 = phi i1 [ false, %land.lhs.true.760 ], [ false, %land.lhs.true.745 ], [ false, %lor.rhs.729 ], [ %lnot783, %land.end.782 ]
  br label %lor.end.785

lor.end.785:                                      ; preds = %land.end.784, %while.cond.721
  %267 = phi i1 [ true, %while.cond.721 ], [ %266, %land.end.784 ]
  br i1 %267, label %while.body.786, label %while.end.1041

while.body.786:                                   ; preds = %lor.end.785
  %268 = load %union.rec*, %union.rec** %t, align 8
  %os1787 = bitcast %union.rec* %268 to %struct.word_type*
  %ou1788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1787, i32 0, i32 1
  %os11789 = bitcast %union.FIRST_UNION* %ou1788 to %struct.anon*
  %otype790 = getelementptr inbounds %struct.anon, %struct.anon* %os11789, i32 0, i32 0
  %269 = load i8, i8* %otype790, align 1
  %conv791 = zext i8 %269 to i32
  %cmp792 = icmp eq i32 %conv791, 2
  br i1 %cmp792, label %if.then.794, label %if.else.992

if.then.794:                                      ; preds = %while.body.786
  %270 = load %union.rec*, %union.rec** %t, align 8
  %os2795 = bitcast %union.rec* %270 to %struct.closure_type*
  %oactual796 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2795, i32 0, i32 5
  %271 = load %union.rec*, %union.rec** %oactual796, align 8
  %os6 = bitcast %union.rec* %271 to %struct.symbol_type*
  %oimports = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 9
  %272 = load %union.rec*, %union.rec** %oimports, align 8
  %cmp797 = icmp ne %union.rec* %272, null
  br i1 %cmp797, label %if.then.799, label %if.else.807

if.then.799:                                      ; preds = %if.then.794
  %273 = load %union.rec*, %union.rec** %t, align 8
  %os1800 = bitcast %union.rec* %273 to %struct.word_type*
  %ou1801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1800, i32 0, i32 1
  %ofpos802 = bitcast %union.FIRST_UNION* %ou1801 to %struct.FILE_POS*
  %274 = load %union.rec*, %union.rec** %t, align 8
  %os2803 = bitcast %union.rec* %274 to %struct.closure_type*
  %oactual804 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2803, i32 0, i32 5
  %275 = load %union.rec*, %union.rec** %oactual804, align 8
  %call805 = call i8* @SymName(%union.rec* %275)
  %call806 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos802, i8* %call805, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.991

if.else.807:                                      ; preds = %if.then.794
  %276 = load %union.rec*, %union.rec** %t, align 8
  %os2808 = bitcast %union.rec* %276 to %struct.closure_type*
  %oactual809 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2808, i32 0, i32 5
  %277 = load %union.rec*, %union.rec** %oactual809, align 8
  %os1810 = bitcast %union.rec* %277 to %struct.word_type*
  %ou1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 1
  %os11812 = bitcast %union.FIRST_UNION* %ou1811 to %struct.anon*
  %otype813 = getelementptr inbounds %struct.anon, %struct.anon* %os11812, i32 0, i32 0
  %278 = load i8, i8* %otype813, align 1
  %conv814 = zext i8 %278 to i32
  %cmp815 = icmp eq i32 %conv814, 143
  br i1 %cmp815, label %if.then.817, label %if.else.946

if.then.817:                                      ; preds = %if.else.807
  %279 = load %union.rec*, %union.rec** %t, align 8
  %os2818 = bitcast %union.rec* %279 to %struct.closure_type*
  %oactual819 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2818, i32 0, i32 5
  %280 = load %union.rec*, %union.rec** %oactual819, align 8
  call void @PushScope(%union.rec* %280, i32 0, i32 0)
  %281 = load %union.rec*, %union.rec** %t, align 8
  %os2820 = bitcast %union.rec* %281 to %struct.closure_type*
  %oactual821 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2820, i32 0, i32 5
  %282 = load %union.rec*, %union.rec** %oactual821, align 8
  store %union.rec* %282, %union.rec** %curr_encl, align 8
  %283 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv822 = zext i8 %283 to i32
  store i32 %conv822, i32* @zz_size, align 4
  %conv823 = sext i32 %conv822 to i64
  %cmp824 = icmp uge i64 %conv823, 265
  br i1 %cmp824, label %if.then.826, label %if.else.828

if.then.826:                                      ; preds = %if.then.817
  %284 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call827 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %284)
  br label %if.end.845

if.else.828:                                      ; preds = %if.then.817
  %285 = load i32, i32* @zz_size, align 4
  %idxprom829 = sext i32 %285 to i64
  %arrayidx830 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom829
  %286 = load %union.rec*, %union.rec** %arrayidx830, align 8
  %cmp831 = icmp eq %union.rec* %286, null
  br i1 %cmp831, label %if.then.833, label %if.else.835

if.then.833:                                      ; preds = %if.else.828
  %287 = load i32, i32* @zz_size, align 4
  %288 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call834 = call %union.rec* @GetMemory(i32 %287, %struct.FILE_POS* %288)
  store %union.rec* %call834, %union.rec** @zz_hold, align 8
  br label %if.end.844

if.else.835:                                      ; preds = %if.else.828
  %289 = load i32, i32* @zz_size, align 4
  %idxprom836 = sext i32 %289 to i64
  %arrayidx837 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom836
  %290 = load %union.rec*, %union.rec** %arrayidx837, align 8
  store %union.rec* %290, %union.rec** @zz_hold, align 8
  store %union.rec* %290, %union.rec** @zz_hold, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1838 = bitcast %union.rec* %291 to %struct.word_type*
  %olist839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1838, i32 0, i32 0
  %arrayidx840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist839, i32 0, i64 0
  %opred841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx840, i32 0, i32 0
  %292 = load %union.rec*, %union.rec** %opred841, align 8
  %293 = load i32, i32* @zz_size, align 4
  %idxprom842 = sext i32 %293 to i64
  %arrayidx843 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom842
  store %union.rec* %292, %union.rec** %arrayidx843, align 8
  br label %if.end.844

if.end.844:                                       ; preds = %if.else.835, %if.then.833
  br label %if.end.845

if.end.845:                                       ; preds = %if.end.844, %if.then.826
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1846 = bitcast %union.rec* %294 to %struct.word_type*
  %ou1847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1846, i32 0, i32 1
  %os11848 = bitcast %union.FIRST_UNION* %ou1847 to %struct.anon*
  %otype849 = getelementptr inbounds %struct.anon, %struct.anon* %os11848, i32 0, i32 0
  store i8 0, i8* %otype849, align 1
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1850 = bitcast %union.rec* %296 to %struct.word_type*
  %olist851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1850, i32 0, i32 0
  %arrayidx852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist851, i32 0, i64 1
  %osucc853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx852, i32 0, i32 1
  store %union.rec* %295, %union.rec** %osucc853, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1854 = bitcast %union.rec* %297 to %struct.word_type*
  %olist855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1854, i32 0, i32 0
  %arrayidx856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist855, i32 0, i64 1
  %opred857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx856, i32 0, i32 0
  store %union.rec* %295, %union.rec** %opred857, align 8
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1858 = bitcast %union.rec* %298 to %struct.word_type*
  %olist859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1858, i32 0, i32 0
  %arrayidx860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist859, i32 0, i64 0
  %osucc861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx860, i32 0, i32 1
  store %union.rec* %295, %union.rec** %osucc861, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1862 = bitcast %union.rec* %299 to %struct.word_type*
  %olist863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1862, i32 0, i32 0
  %arrayidx864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist863, i32 0, i64 0
  %opred865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx864, i32 0, i32 0
  store %union.rec* %295, %union.rec** %opred865, align 8
  store %union.rec* %295, %union.rec** @xx_link, align 8
  %300 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %300, %union.rec** @zz_res, align 8
  %301 = load %union.rec*, %union.rec** %import_list, align 8
  store %union.rec* %301, %union.rec** @zz_hold, align 8
  %302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp866 = icmp eq %union.rec* %302, null
  br i1 %cmp866, label %cond.true.868, label %cond.false.869

cond.true.868:                                    ; preds = %if.end.845
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.904

cond.false.869:                                   ; preds = %if.end.845
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp870 = icmp eq %union.rec* %304, null
  br i1 %cmp870, label %cond.true.872, label %cond.false.873

cond.true.872:                                    ; preds = %cond.false.869
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.902

cond.false.873:                                   ; preds = %cond.false.869
  %306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1874 = bitcast %union.rec* %306 to %struct.word_type*
  %olist875 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1874, i32 0, i32 0
  %arrayidx876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist875, i32 0, i64 0
  %opred877 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx876, i32 0, i32 0
  %307 = load %union.rec*, %union.rec** %opred877, align 8
  store %union.rec* %307, %union.rec** @zz_tmp, align 8
  %308 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1878 = bitcast %union.rec* %308 to %struct.word_type*
  %olist879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1878, i32 0, i32 0
  %arrayidx880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist879, i32 0, i64 0
  %opred881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx880, i32 0, i32 0
  %309 = load %union.rec*, %union.rec** %opred881, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1882 = bitcast %union.rec* %310 to %struct.word_type*
  %olist883 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1882, i32 0, i32 0
  %arrayidx884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist883, i32 0, i64 0
  %opred885 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx884, i32 0, i32 0
  store %union.rec* %309, %union.rec** %opred885, align 8
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1886 = bitcast %union.rec* %312 to %struct.word_type*
  %olist887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1886, i32 0, i32 0
  %arrayidx888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist887, i32 0, i64 0
  %opred889 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx888, i32 0, i32 0
  %313 = load %union.rec*, %union.rec** %opred889, align 8
  %os1890 = bitcast %union.rec* %313 to %struct.word_type*
  %olist891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1890, i32 0, i32 0
  %arrayidx892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist891, i32 0, i64 0
  %osucc893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx892, i32 0, i32 1
  store %union.rec* %311, %union.rec** %osucc893, align 8
  %314 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %315 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1894 = bitcast %union.rec* %315 to %struct.word_type*
  %olist895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1894, i32 0, i32 0
  %arrayidx896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist895, i32 0, i64 0
  %opred897 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx896, i32 0, i32 0
  store %union.rec* %314, %union.rec** %opred897, align 8
  %316 = load %union.rec*, %union.rec** @zz_res, align 8
  %317 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1898 = bitcast %union.rec* %317 to %struct.word_type*
  %olist899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1898, i32 0, i32 0
  %arrayidx900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist899, i32 0, i64 0
  %osucc901 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx900, i32 0, i32 1
  store %union.rec* %316, %union.rec** %osucc901, align 8
  br label %cond.end.902

cond.end.902:                                     ; preds = %cond.false.873, %cond.true.872
  %cond903 = phi %union.rec* [ %305, %cond.true.872 ], [ %316, %cond.false.873 ]
  br label %cond.end.904

cond.end.904:                                     ; preds = %cond.end.902, %cond.true.868
  %cond905 = phi %union.rec* [ %303, %cond.true.868 ], [ %cond903, %cond.end.902 ]
  %318 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %318, %union.rec** @zz_res, align 8
  %319 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp906 = icmp eq %union.rec* %320, null
  br i1 %cmp906, label %cond.true.908, label %cond.false.909

cond.true.908:                                    ; preds = %cond.end.904
  %321 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.944

cond.false.909:                                   ; preds = %cond.end.904
  %322 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp910 = icmp eq %union.rec* %322, null
  br i1 %cmp910, label %cond.true.912, label %cond.false.913

cond.true.912:                                    ; preds = %cond.false.909
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.942

cond.false.913:                                   ; preds = %cond.false.909
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1914 = bitcast %union.rec* %324 to %struct.word_type*
  %olist915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1914, i32 0, i32 0
  %arrayidx916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist915, i32 0, i64 1
  %opred917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx916, i32 0, i32 0
  %325 = load %union.rec*, %union.rec** %opred917, align 8
  store %union.rec* %325, %union.rec** @zz_tmp, align 8
  %326 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1918 = bitcast %union.rec* %326 to %struct.word_type*
  %olist919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist919, i32 0, i64 1
  %opred921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx920, i32 0, i32 0
  %327 = load %union.rec*, %union.rec** %opred921, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1922 = bitcast %union.rec* %328 to %struct.word_type*
  %olist923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1922, i32 0, i32 0
  %arrayidx924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist923, i32 0, i64 1
  %opred925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx924, i32 0, i32 0
  store %union.rec* %327, %union.rec** %opred925, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1926 = bitcast %union.rec* %330 to %struct.word_type*
  %olist927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1926, i32 0, i32 0
  %arrayidx928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist927, i32 0, i64 1
  %opred929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx928, i32 0, i32 0
  %331 = load %union.rec*, %union.rec** %opred929, align 8
  %os1930 = bitcast %union.rec* %331 to %struct.word_type*
  %olist931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1930, i32 0, i32 0
  %arrayidx932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist931, i32 0, i64 1
  %osucc933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx932, i32 0, i32 1
  store %union.rec* %329, %union.rec** %osucc933, align 8
  %332 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %333 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1934 = bitcast %union.rec* %333 to %struct.word_type*
  %olist935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1934, i32 0, i32 0
  %arrayidx936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist935, i32 0, i64 1
  %opred937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx936, i32 0, i32 0
  store %union.rec* %332, %union.rec** %opred937, align 8
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  %335 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1938 = bitcast %union.rec* %335 to %struct.word_type*
  %olist939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1938, i32 0, i32 0
  %arrayidx940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist939, i32 0, i64 1
  %osucc941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx940, i32 0, i32 1
  store %union.rec* %334, %union.rec** %osucc941, align 8
  br label %cond.end.942

cond.end.942:                                     ; preds = %cond.false.913, %cond.true.912
  %cond943 = phi %union.rec* [ %323, %cond.true.912 ], [ %334, %cond.false.913 ]
  br label %cond.end.944

cond.end.944:                                     ; preds = %cond.end.942, %cond.true.908
  %cond945 = phi %union.rec* [ %321, %cond.true.908 ], [ %cond943, %cond.end.942 ]
  br label %if.end.990

if.else.946:                                      ; preds = %if.else.807
  %336 = load %union.rec*, %union.rec** %t, align 8
  %os1947 = bitcast %union.rec* %336 to %struct.word_type*
  %ou1948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1947, i32 0, i32 1
  %ofpos949 = bitcast %union.FIRST_UNION* %ou1948 to %struct.FILE_POS*
  %call950 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos949, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  %337 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1951 = bitcast %union.rec* %339 to %struct.word_type*
  %ou1952 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1951, i32 0, i32 1
  %os11953 = bitcast %union.FIRST_UNION* %ou1952 to %struct.anon*
  %otype954 = getelementptr inbounds %struct.anon, %struct.anon* %os11953, i32 0, i32 0
  %340 = load i8, i8* %otype954, align 1
  %conv955 = zext i8 %340 to i32
  %cmp956 = icmp eq i32 %conv955, 11
  br i1 %cmp956, label %cond.true.966, label %lor.lhs.false.958

lor.lhs.false.958:                                ; preds = %if.else.946
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1959 = bitcast %union.rec* %341 to %struct.word_type*
  %ou1960 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1959, i32 0, i32 1
  %os11961 = bitcast %union.FIRST_UNION* %ou1960 to %struct.anon*
  %otype962 = getelementptr inbounds %struct.anon, %struct.anon* %os11961, i32 0, i32 0
  %342 = load i8, i8* %otype962, align 1
  %conv963 = zext i8 %342 to i32
  %cmp964 = icmp eq i32 %conv963, 12
  br i1 %cmp964, label %cond.true.966, label %cond.false.972

cond.true.966:                                    ; preds = %lor.lhs.false.958, %if.else.946
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1967 = bitcast %union.rec* %343 to %struct.word_type*
  %ou1968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1967, i32 0, i32 1
  %os11969 = bitcast %union.FIRST_UNION* %ou1968 to %struct.anon*
  %orec_size970 = getelementptr inbounds %struct.anon, %struct.anon* %os11969, i32 0, i32 1
  %344 = load i8, i8* %orec_size970, align 1
  %conv971 = zext i8 %344 to i32
  br label %cond.end.980

cond.false.972:                                   ; preds = %lor.lhs.false.958
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1973 = bitcast %union.rec* %345 to %struct.word_type*
  %ou1974 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1973, i32 0, i32 1
  %os11975 = bitcast %union.FIRST_UNION* %ou1974 to %struct.anon*
  %otype976 = getelementptr inbounds %struct.anon, %struct.anon* %os11975, i32 0, i32 0
  %346 = load i8, i8* %otype976, align 1
  %idxprom977 = zext i8 %346 to i64
  %arrayidx978 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom977
  %347 = load i8, i8* %arrayidx978, align 1
  %conv979 = zext i8 %347 to i32
  br label %cond.end.980

cond.end.980:                                     ; preds = %cond.false.972, %cond.true.966
  %cond981 = phi i32 [ %conv971, %cond.true.966 ], [ %conv979, %cond.false.972 ]
  store i32 %cond981, i32* @zz_size, align 4
  %348 = load i32, i32* @zz_size, align 4
  %idxprom982 = sext i32 %348 to i64
  %arrayidx983 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom982
  %349 = load %union.rec*, %union.rec** %arrayidx983, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1984 = bitcast %union.rec* %350 to %struct.word_type*
  %olist985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1984, i32 0, i32 0
  %arrayidx986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist985, i32 0, i64 0
  %opred987 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx986, i32 0, i32 0
  store %union.rec* %349, %union.rec** %opred987, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = load i32, i32* @zz_size, align 4
  %idxprom988 = sext i32 %352 to i64
  %arrayidx989 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom988
  store %union.rec* %351, %union.rec** %arrayidx989, align 8
  br label %if.end.990

if.end.990:                                       ; preds = %cond.end.980, %cond.end.944
  br label %if.end.991

if.end.991:                                       ; preds = %if.end.990, %if.then.799
  br label %if.end.1039

if.else.992:                                      ; preds = %while.body.786
  %353 = load %union.rec*, %union.rec** %t, align 8
  %os1993 = bitcast %union.rec* %353 to %struct.word_type*
  %ou1994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1993, i32 0, i32 1
  %ofpos995 = bitcast %union.FIRST_UNION* %ou1994 to %struct.FILE_POS*
  %354 = load %union.rec*, %union.rec** %t, align 8
  %os1996 = bitcast %union.rec* %354 to %struct.word_type*
  %ostring997 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1996, i32 0, i32 4
  %arraydecay998 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring997, i32 0, i32 0
  %call999 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos995, i8* %arraydecay998)
  %355 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %355, %union.rec** @zz_hold, align 8
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %356, %union.rec** @zz_hold, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11000 = bitcast %union.rec* %357 to %struct.word_type*
  %ou11001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11000, i32 0, i32 1
  %os111002 = bitcast %union.FIRST_UNION* %ou11001 to %struct.anon*
  %otype1003 = getelementptr inbounds %struct.anon, %struct.anon* %os111002, i32 0, i32 0
  %358 = load i8, i8* %otype1003, align 1
  %conv1004 = zext i8 %358 to i32
  %cmp1005 = icmp eq i32 %conv1004, 11
  br i1 %cmp1005, label %cond.true.1015, label %lor.lhs.false.1007

lor.lhs.false.1007:                               ; preds = %if.else.992
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11008 = bitcast %union.rec* %359 to %struct.word_type*
  %ou11009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11008, i32 0, i32 1
  %os111010 = bitcast %union.FIRST_UNION* %ou11009 to %struct.anon*
  %otype1011 = getelementptr inbounds %struct.anon, %struct.anon* %os111010, i32 0, i32 0
  %360 = load i8, i8* %otype1011, align 1
  %conv1012 = zext i8 %360 to i32
  %cmp1013 = icmp eq i32 %conv1012, 12
  br i1 %cmp1013, label %cond.true.1015, label %cond.false.1021

cond.true.1015:                                   ; preds = %lor.lhs.false.1007, %if.else.992
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11016 = bitcast %union.rec* %361 to %struct.word_type*
  %ou11017 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11016, i32 0, i32 1
  %os111018 = bitcast %union.FIRST_UNION* %ou11017 to %struct.anon*
  %orec_size1019 = getelementptr inbounds %struct.anon, %struct.anon* %os111018, i32 0, i32 1
  %362 = load i8, i8* %orec_size1019, align 1
  %conv1020 = zext i8 %362 to i32
  br label %cond.end.1029

cond.false.1021:                                  ; preds = %lor.lhs.false.1007
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11022 = bitcast %union.rec* %363 to %struct.word_type*
  %ou11023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11022, i32 0, i32 1
  %os111024 = bitcast %union.FIRST_UNION* %ou11023 to %struct.anon*
  %otype1025 = getelementptr inbounds %struct.anon, %struct.anon* %os111024, i32 0, i32 0
  %364 = load i8, i8* %otype1025, align 1
  %idxprom1026 = zext i8 %364 to i64
  %arrayidx1027 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1026
  %365 = load i8, i8* %arrayidx1027, align 1
  %conv1028 = zext i8 %365 to i32
  br label %cond.end.1029

cond.end.1029:                                    ; preds = %cond.false.1021, %cond.true.1015
  %cond1030 = phi i32 [ %conv1020, %cond.true.1015 ], [ %conv1028, %cond.false.1021 ]
  store i32 %cond1030, i32* @zz_size, align 4
  %366 = load i32, i32* @zz_size, align 4
  %idxprom1031 = sext i32 %366 to i64
  %arrayidx1032 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1031
  %367 = load %union.rec*, %union.rec** %arrayidx1032, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11033 = bitcast %union.rec* %368 to %struct.word_type*
  %olist1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11033, i32 0, i32 0
  %arrayidx1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1034, i32 0, i64 0
  %opred1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1035, i32 0, i32 0
  store %union.rec* %367, %union.rec** %opred1036, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = load i32, i32* @zz_size, align 4
  %idxprom1037 = sext i32 %370 to i64
  %arrayidx1038 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1037
  store %union.rec* %369, %union.rec** %arrayidx1038, align 8
  br label %if.end.1039

if.end.1039:                                      ; preds = %cond.end.1029, %if.end.991
  %call1040 = call %union.rec* @LexGetToken()
  store %union.rec* %call1040, %union.rec** %t, align 8
  br label %while.cond.721

while.end.1041:                                   ; preds = %lor.end.785
  br label %if.end.1042

if.end.1042:                                      ; preds = %while.end.1041, %land.lhs.true.673, %if.else.665
  br label %if.end.1043

if.end.1043:                                      ; preds = %if.end.1042, %while.end
  %371 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv1044 = zext i8 %371 to i32
  store i32 %conv1044, i32* @zz_size, align 4
  %conv1045 = sext i32 %conv1044 to i64
  %cmp1046 = icmp uge i64 %conv1045, 265
  br i1 %cmp1046, label %if.then.1048, label %if.else.1050

if.then.1048:                                     ; preds = %if.end.1043
  %372 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1049 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %372)
  br label %if.end.1067

if.else.1050:                                     ; preds = %if.end.1043
  %373 = load i32, i32* @zz_size, align 4
  %idxprom1051 = sext i32 %373 to i64
  %arrayidx1052 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1051
  %374 = load %union.rec*, %union.rec** %arrayidx1052, align 8
  %cmp1053 = icmp eq %union.rec* %374, null
  br i1 %cmp1053, label %if.then.1055, label %if.else.1057

if.then.1055:                                     ; preds = %if.else.1050
  %375 = load i32, i32* @zz_size, align 4
  %376 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1056 = call %union.rec* @GetMemory(i32 %375, %struct.FILE_POS* %376)
  store %union.rec* %call1056, %union.rec** @zz_hold, align 8
  br label %if.end.1066

if.else.1057:                                     ; preds = %if.else.1050
  %377 = load i32, i32* @zz_size, align 4
  %idxprom1058 = sext i32 %377 to i64
  %arrayidx1059 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1058
  %378 = load %union.rec*, %union.rec** %arrayidx1059, align 8
  store %union.rec* %378, %union.rec** @zz_hold, align 8
  store %union.rec* %378, %union.rec** @zz_hold, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11060 = bitcast %union.rec* %379 to %struct.word_type*
  %olist1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11060, i32 0, i32 0
  %arrayidx1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1061, i32 0, i64 0
  %opred1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1062, i32 0, i32 0
  %380 = load %union.rec*, %union.rec** %opred1063, align 8
  %381 = load i32, i32* @zz_size, align 4
  %idxprom1064 = sext i32 %381 to i64
  %arrayidx1065 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1064
  store %union.rec* %380, %union.rec** %arrayidx1065, align 8
  br label %if.end.1066

if.end.1066:                                      ; preds = %if.else.1057, %if.then.1055
  br label %if.end.1067

if.end.1067:                                      ; preds = %if.end.1066, %if.then.1048
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11068 = bitcast %union.rec* %382 to %struct.word_type*
  %ou11069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11068, i32 0, i32 1
  %os111070 = bitcast %union.FIRST_UNION* %ou11069 to %struct.anon*
  %otype1071 = getelementptr inbounds %struct.anon, %struct.anon* %os111070, i32 0, i32 0
  store i8 17, i8* %otype1071, align 1
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11072 = bitcast %union.rec* %384 to %struct.word_type*
  %olist1073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11072, i32 0, i32 0
  %arrayidx1074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1073, i32 0, i64 1
  %osucc1075 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1074, i32 0, i32 1
  store %union.rec* %383, %union.rec** %osucc1075, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11076 = bitcast %union.rec* %385 to %struct.word_type*
  %olist1077 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11076, i32 0, i32 0
  %arrayidx1078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1077, i32 0, i64 1
  %opred1079 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1078, i32 0, i32 0
  store %union.rec* %383, %union.rec** %opred1079, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11080 = bitcast %union.rec* %386 to %struct.word_type*
  %olist1081 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11080, i32 0, i32 0
  %arrayidx1082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1081, i32 0, i64 0
  %osucc1083 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1082, i32 0, i32 1
  store %union.rec* %383, %union.rec** %osucc1083, align 8
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11084 = bitcast %union.rec* %387 to %struct.word_type*
  %olist1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11084, i32 0, i32 0
  %arrayidx1086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1085, i32 0, i64 0
  %opred1087 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1086, i32 0, i32 0
  store %union.rec* %383, %union.rec** %opred1087, align 8
  store %union.rec* %383, %union.rec** %export_list, align 8
  %388 = load %union.rec*, %union.rec** %t, align 8
  %os11088 = bitcast %union.rec* %388 to %struct.word_type*
  %ou11089 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11088, i32 0, i32 1
  %os111090 = bitcast %union.FIRST_UNION* %ou11089 to %struct.anon*
  %otype1091 = getelementptr inbounds %struct.anon, %struct.anon* %os111090, i32 0, i32 0
  %389 = load i8, i8* %otype1091, align 1
  %conv1092 = zext i8 %389 to i32
  %cmp1093 = icmp eq i32 %conv1092, 11
  br i1 %cmp1093, label %land.lhs.true.1095, label %if.end.1351

land.lhs.true.1095:                               ; preds = %if.end.1067
  %390 = load %union.rec*, %union.rec** %t, align 8
  %os11096 = bitcast %union.rec* %390 to %struct.word_type*
  %ostring1097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11096, i32 0, i32 4
  %arraydecay1098 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1097, i32 0, i32 0
  %call1099 = call i32 @strcmp(i8* %arraydecay1098, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %cmp1100 = icmp eq i32 %call1099, 0
  br i1 %cmp1100, label %if.then.1102, label %if.end.1351

if.then.1102:                                     ; preds = %land.lhs.true.1095
  %391 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %391, %union.rec** @zz_hold, align 8
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %392, %union.rec** @zz_hold, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11103 = bitcast %union.rec* %393 to %struct.word_type*
  %ou11104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11103, i32 0, i32 1
  %os111105 = bitcast %union.FIRST_UNION* %ou11104 to %struct.anon*
  %otype1106 = getelementptr inbounds %struct.anon, %struct.anon* %os111105, i32 0, i32 0
  %394 = load i8, i8* %otype1106, align 1
  %conv1107 = zext i8 %394 to i32
  %cmp1108 = icmp eq i32 %conv1107, 11
  br i1 %cmp1108, label %cond.true.1118, label %lor.lhs.false.1110

lor.lhs.false.1110:                               ; preds = %if.then.1102
  %395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11111 = bitcast %union.rec* %395 to %struct.word_type*
  %ou11112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11111, i32 0, i32 1
  %os111113 = bitcast %union.FIRST_UNION* %ou11112 to %struct.anon*
  %otype1114 = getelementptr inbounds %struct.anon, %struct.anon* %os111113, i32 0, i32 0
  %396 = load i8, i8* %otype1114, align 1
  %conv1115 = zext i8 %396 to i32
  %cmp1116 = icmp eq i32 %conv1115, 12
  br i1 %cmp1116, label %cond.true.1118, label %cond.false.1124

cond.true.1118:                                   ; preds = %lor.lhs.false.1110, %if.then.1102
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11119 = bitcast %union.rec* %397 to %struct.word_type*
  %ou11120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11119, i32 0, i32 1
  %os111121 = bitcast %union.FIRST_UNION* %ou11120 to %struct.anon*
  %orec_size1122 = getelementptr inbounds %struct.anon, %struct.anon* %os111121, i32 0, i32 1
  %398 = load i8, i8* %orec_size1122, align 1
  %conv1123 = zext i8 %398 to i32
  br label %cond.end.1132

cond.false.1124:                                  ; preds = %lor.lhs.false.1110
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11125 = bitcast %union.rec* %399 to %struct.word_type*
  %ou11126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11125, i32 0, i32 1
  %os111127 = bitcast %union.FIRST_UNION* %ou11126 to %struct.anon*
  %otype1128 = getelementptr inbounds %struct.anon, %struct.anon* %os111127, i32 0, i32 0
  %400 = load i8, i8* %otype1128, align 1
  %idxprom1129 = zext i8 %400 to i64
  %arrayidx1130 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1129
  %401 = load i8, i8* %arrayidx1130, align 1
  %conv1131 = zext i8 %401 to i32
  br label %cond.end.1132

cond.end.1132:                                    ; preds = %cond.false.1124, %cond.true.1118
  %cond1133 = phi i32 [ %conv1123, %cond.true.1118 ], [ %conv1131, %cond.false.1124 ]
  store i32 %cond1133, i32* @zz_size, align 4
  %402 = load i32, i32* @zz_size, align 4
  %idxprom1134 = sext i32 %402 to i64
  %arrayidx1135 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1134
  %403 = load %union.rec*, %union.rec** %arrayidx1135, align 8
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11136 = bitcast %union.rec* %404 to %struct.word_type*
  %olist1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11136, i32 0, i32 0
  %arrayidx1138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1137, i32 0, i64 0
  %opred1139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1138, i32 0, i32 0
  store %union.rec* %403, %union.rec** %opred1139, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %406 = load i32, i32* @zz_size, align 4
  %idxprom1140 = sext i32 %406 to i64
  %arrayidx1141 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1140
  store %union.rec* %405, %union.rec** %arrayidx1141, align 8
  call void @SuppressScope()
  %call1142 = call %union.rec* @LexGetToken()
  store %union.rec* %call1142, %union.rec** %t, align 8
  br label %while.cond.1143

while.cond.1143:                                  ; preds = %cond.end.1347, %cond.end.1132
  %407 = load %union.rec*, %union.rec** %t, align 8
  %os11144 = bitcast %union.rec* %407 to %struct.word_type*
  %ou11145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11144, i32 0, i32 1
  %os111146 = bitcast %union.FIRST_UNION* %ou11145 to %struct.anon*
  %otype1147 = getelementptr inbounds %struct.anon, %struct.anon* %os111146, i32 0, i32 0
  %408 = load i8, i8* %otype1147, align 1
  %conv1148 = zext i8 %408 to i32
  %cmp1149 = icmp eq i32 %conv1148, 11
  br i1 %cmp1149, label %land.lhs.true.1159, label %lor.lhs.false.1151

lor.lhs.false.1151:                               ; preds = %while.cond.1143
  %409 = load %union.rec*, %union.rec** %t, align 8
  %os11152 = bitcast %union.rec* %409 to %struct.word_type*
  %ou11153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11152, i32 0, i32 1
  %os111154 = bitcast %union.FIRST_UNION* %ou11153 to %struct.anon*
  %otype1155 = getelementptr inbounds %struct.anon, %struct.anon* %os111154, i32 0, i32 0
  %410 = load i8, i8* %otype1155, align 1
  %conv1156 = zext i8 %410 to i32
  %cmp1157 = icmp eq i32 %conv1156, 12
  br i1 %cmp1157, label %land.lhs.true.1159, label %land.end.1221

land.lhs.true.1159:                               ; preds = %lor.lhs.false.1151, %while.cond.1143
  %411 = load %union.rec*, %union.rec** %t, align 8
  %os11160 = bitcast %union.rec* %411 to %struct.word_type*
  %ou11161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11160, i32 0, i32 1
  %os111162 = bitcast %union.FIRST_UNION* %ou11161 to %struct.anon*
  %otype1163 = getelementptr inbounds %struct.anon, %struct.anon* %os111162, i32 0, i32 0
  %412 = load i8, i8* %otype1163, align 1
  %conv1164 = zext i8 %412 to i32
  %cmp1165 = icmp eq i32 %conv1164, 11
  br i1 %cmp1165, label %land.lhs.true.1167, label %land.lhs.true.1174

land.lhs.true.1167:                               ; preds = %land.lhs.true.1159
  %413 = load %union.rec*, %union.rec** %t, align 8
  %os11168 = bitcast %union.rec* %413 to %struct.word_type*
  %ostring1169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11168, i32 0, i32 4
  %arraydecay1170 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1169, i32 0, i32 0
  %call1171 = call i32 @strcmp(i8* %arraydecay1170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %cmp1172 = icmp eq i32 %call1171, 0
  br i1 %cmp1172, label %land.end.1221, label %land.lhs.true.1174

land.lhs.true.1174:                               ; preds = %land.lhs.true.1167, %land.lhs.true.1159
  %414 = load %union.rec*, %union.rec** %t, align 8
  %os11175 = bitcast %union.rec* %414 to %struct.word_type*
  %ou11176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11175, i32 0, i32 1
  %os111177 = bitcast %union.FIRST_UNION* %ou11176 to %struct.anon*
  %otype1178 = getelementptr inbounds %struct.anon, %struct.anon* %os111177, i32 0, i32 0
  %415 = load i8, i8* %otype1178, align 1
  %conv1179 = zext i8 %415 to i32
  %cmp1180 = icmp eq i32 %conv1179, 11
  br i1 %cmp1180, label %land.lhs.true.1182, label %land.lhs.true.1189

land.lhs.true.1182:                               ; preds = %land.lhs.true.1174
  %416 = load %union.rec*, %union.rec** %t, align 8
  %os11183 = bitcast %union.rec* %416 to %struct.word_type*
  %ostring1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 4
  %arraydecay1185 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1184, i32 0, i32 0
  %call1186 = call i32 @strcmp(i8* %arraydecay1185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %cmp1187 = icmp eq i32 %call1186, 0
  br i1 %cmp1187, label %land.end.1221, label %land.lhs.true.1189

land.lhs.true.1189:                               ; preds = %land.lhs.true.1182, %land.lhs.true.1174
  %417 = load %union.rec*, %union.rec** %t, align 8
  %os11190 = bitcast %union.rec* %417 to %struct.word_type*
  %ou11191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11190, i32 0, i32 1
  %os111192 = bitcast %union.FIRST_UNION* %ou11191 to %struct.anon*
  %otype1193 = getelementptr inbounds %struct.anon, %struct.anon* %os111192, i32 0, i32 0
  %418 = load i8, i8* %otype1193, align 1
  %conv1194 = zext i8 %418 to i32
  %cmp1195 = icmp eq i32 %conv1194, 11
  br i1 %cmp1195, label %land.lhs.true.1197, label %land.rhs.1204

land.lhs.true.1197:                               ; preds = %land.lhs.true.1189
  %419 = load %union.rec*, %union.rec** %t, align 8
  %os11198 = bitcast %union.rec* %419 to %struct.word_type*
  %ostring1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11198, i32 0, i32 4
  %arraydecay1200 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1199, i32 0, i32 0
  %call1201 = call i32 @strcmp(i8* %arraydecay1200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %cmp1202 = icmp eq i32 %call1201, 0
  br i1 %cmp1202, label %land.end.1221, label %land.rhs.1204

land.rhs.1204:                                    ; preds = %land.lhs.true.1197, %land.lhs.true.1189
  %420 = load %union.rec*, %union.rec** %t, align 8
  %os11205 = bitcast %union.rec* %420 to %struct.word_type*
  %ou11206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11205, i32 0, i32 1
  %os111207 = bitcast %union.FIRST_UNION* %ou11206 to %struct.anon*
  %otype1208 = getelementptr inbounds %struct.anon, %struct.anon* %os111207, i32 0, i32 0
  %421 = load i8, i8* %otype1208, align 1
  %conv1209 = zext i8 %421 to i32
  %cmp1210 = icmp eq i32 %conv1209, 11
  br i1 %cmp1210, label %land.rhs.1212, label %land.end.1219

land.rhs.1212:                                    ; preds = %land.rhs.1204
  %422 = load %union.rec*, %union.rec** %t, align 8
  %os11213 = bitcast %union.rec* %422 to %struct.word_type*
  %ostring1214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11213, i32 0, i32 4
  %arraydecay1215 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1214, i32 0, i32 0
  %call1216 = call i32 @strcmp(i8* %arraydecay1215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  %cmp1217 = icmp eq i32 %call1216, 0
  br label %land.end.1219

land.end.1219:                                    ; preds = %land.rhs.1212, %land.rhs.1204
  %423 = phi i1 [ false, %land.rhs.1204 ], [ %cmp1217, %land.rhs.1212 ]
  %lnot1220 = xor i1 %423, true
  br label %land.end.1221

land.end.1221:                                    ; preds = %land.end.1219, %land.lhs.true.1197, %land.lhs.true.1182, %land.lhs.true.1167, %lor.lhs.false.1151
  %424 = phi i1 [ false, %land.lhs.true.1197 ], [ false, %land.lhs.true.1182 ], [ false, %land.lhs.true.1167 ], [ false, %lor.lhs.false.1151 ], [ %lnot1220, %land.end.1219 ]
  br i1 %424, label %while.body.1222, label %while.end.1350

while.body.1222:                                  ; preds = %land.end.1221
  %425 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1223 = zext i8 %425 to i32
  store i32 %conv1223, i32* @zz_size, align 4
  %conv1224 = sext i32 %conv1223 to i64
  %cmp1225 = icmp uge i64 %conv1224, 265
  br i1 %cmp1225, label %if.then.1227, label %if.else.1229

if.then.1227:                                     ; preds = %while.body.1222
  %426 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1228 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %426)
  br label %if.end.1246

if.else.1229:                                     ; preds = %while.body.1222
  %427 = load i32, i32* @zz_size, align 4
  %idxprom1230 = sext i32 %427 to i64
  %arrayidx1231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1230
  %428 = load %union.rec*, %union.rec** %arrayidx1231, align 8
  %cmp1232 = icmp eq %union.rec* %428, null
  br i1 %cmp1232, label %if.then.1234, label %if.else.1236

if.then.1234:                                     ; preds = %if.else.1229
  %429 = load i32, i32* @zz_size, align 4
  %430 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1235 = call %union.rec* @GetMemory(i32 %429, %struct.FILE_POS* %430)
  store %union.rec* %call1235, %union.rec** @zz_hold, align 8
  br label %if.end.1245

if.else.1236:                                     ; preds = %if.else.1229
  %431 = load i32, i32* @zz_size, align 4
  %idxprom1237 = sext i32 %431 to i64
  %arrayidx1238 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1237
  %432 = load %union.rec*, %union.rec** %arrayidx1238, align 8
  store %union.rec* %432, %union.rec** @zz_hold, align 8
  store %union.rec* %432, %union.rec** @zz_hold, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11239 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11239, i32 0, i32 0
  %arrayidx1241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1240, i32 0, i64 0
  %opred1242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1241, i32 0, i32 0
  %434 = load %union.rec*, %union.rec** %opred1242, align 8
  %435 = load i32, i32* @zz_size, align 4
  %idxprom1243 = sext i32 %435 to i64
  %arrayidx1244 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1243
  store %union.rec* %434, %union.rec** %arrayidx1244, align 8
  br label %if.end.1245

if.end.1245:                                      ; preds = %if.else.1236, %if.then.1234
  br label %if.end.1246

if.end.1246:                                      ; preds = %if.end.1245, %if.then.1227
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11247 = bitcast %union.rec* %436 to %struct.word_type*
  %ou11248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11247, i32 0, i32 1
  %os111249 = bitcast %union.FIRST_UNION* %ou11248 to %struct.anon*
  %otype1250 = getelementptr inbounds %struct.anon, %struct.anon* %os111249, i32 0, i32 0
  store i8 0, i8* %otype1250, align 1
  %437 = load %union.rec*, %union.rec** @zz_hold, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11251 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11251, i32 0, i32 0
  %arrayidx1253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1252, i32 0, i64 1
  %osucc1254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1253, i32 0, i32 1
  store %union.rec* %437, %union.rec** %osucc1254, align 8
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11255 = bitcast %union.rec* %439 to %struct.word_type*
  %olist1256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11255, i32 0, i32 0
  %arrayidx1257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1256, i32 0, i64 1
  %opred1258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1257, i32 0, i32 0
  store %union.rec* %437, %union.rec** %opred1258, align 8
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11259 = bitcast %union.rec* %440 to %struct.word_type*
  %olist1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11259, i32 0, i32 0
  %arrayidx1261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1260, i32 0, i64 0
  %osucc1262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1261, i32 0, i32 1
  store %union.rec* %437, %union.rec** %osucc1262, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11263 = bitcast %union.rec* %441 to %struct.word_type*
  %olist1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11263, i32 0, i32 0
  %arrayidx1265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1264, i32 0, i64 0
  %opred1266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1265, i32 0, i32 0
  store %union.rec* %437, %union.rec** %opred1266, align 8
  store %union.rec* %437, %union.rec** @xx_link, align 8
  %442 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %442, %union.rec** @zz_res, align 8
  %443 = load %union.rec*, %union.rec** %export_list, align 8
  store %union.rec* %443, %union.rec** @zz_hold, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1267 = icmp eq %union.rec* %444, null
  br i1 %cmp1267, label %cond.true.1269, label %cond.false.1270

cond.true.1269:                                   ; preds = %if.end.1246
  %445 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1306

cond.false.1270:                                  ; preds = %if.end.1246
  %446 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1271 = icmp eq %union.rec* %446, null
  br i1 %cmp1271, label %cond.true.1273, label %cond.false.1274

cond.true.1273:                                   ; preds = %cond.false.1270
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1304

cond.false.1274:                                  ; preds = %cond.false.1270
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11275 = bitcast %union.rec* %448 to %struct.word_type*
  %olist1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11275, i32 0, i32 0
  %arrayidx1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1276, i32 0, i64 0
  %opred1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1277, i32 0, i32 0
  %449 = load %union.rec*, %union.rec** %opred1278, align 8
  store %union.rec* %449, %union.rec** @zz_tmp, align 8
  %450 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11279 = bitcast %union.rec* %450 to %struct.word_type*
  %olist1280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11279, i32 0, i32 0
  %arrayidx1281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1280, i32 0, i64 0
  %opred1282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1281, i32 0, i32 0
  %451 = load %union.rec*, %union.rec** %opred1282, align 8
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11283 = bitcast %union.rec* %452 to %struct.word_type*
  %olist1284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11283, i32 0, i32 0
  %arrayidx1285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1284, i32 0, i64 0
  %opred1286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1285, i32 0, i32 0
  store %union.rec* %451, %union.rec** %opred1286, align 8
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %454 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11287 = bitcast %union.rec* %454 to %struct.word_type*
  %olist1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11287, i32 0, i32 0
  %arrayidx1289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1288, i32 0, i64 0
  %opred1290 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1289, i32 0, i32 0
  %455 = load %union.rec*, %union.rec** %opred1290, align 8
  %os11292 = bitcast %union.rec* %455 to %struct.word_type*
  %olist1293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11292, i32 0, i32 0
  %arrayidx1294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1293, i32 0, i64 0
  %osucc1295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1294, i32 0, i32 1
  store %union.rec* %453, %union.rec** %osucc1295, align 8
  %456 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %457 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11296 = bitcast %union.rec* %457 to %struct.word_type*
  %olist1297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11296, i32 0, i32 0
  %arrayidx1298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1297, i32 0, i64 0
  %opred1299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1298, i32 0, i32 0
  store %union.rec* %456, %union.rec** %opred1299, align 8
  %458 = load %union.rec*, %union.rec** @zz_res, align 8
  %459 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11300 = bitcast %union.rec* %459 to %struct.word_type*
  %olist1301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11300, i32 0, i32 0
  %arrayidx1302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1301, i32 0, i64 0
  %osucc1303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1302, i32 0, i32 1
  store %union.rec* %458, %union.rec** %osucc1303, align 8
  br label %cond.end.1304

cond.end.1304:                                    ; preds = %cond.false.1274, %cond.true.1273
  %cond1305 = phi %union.rec* [ %447, %cond.true.1273 ], [ %458, %cond.false.1274 ]
  br label %cond.end.1306

cond.end.1306:                                    ; preds = %cond.end.1304, %cond.true.1269
  %cond1307 = phi %union.rec* [ %445, %cond.true.1269 ], [ %cond1305, %cond.end.1304 ]
  %460 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %460, %union.rec** @zz_res, align 8
  %461 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %461, %union.rec** @zz_hold, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1308 = icmp eq %union.rec* %462, null
  br i1 %cmp1308, label %cond.true.1310, label %cond.false.1311

cond.true.1310:                                   ; preds = %cond.end.1306
  %463 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1347

cond.false.1311:                                  ; preds = %cond.end.1306
  %464 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1312 = icmp eq %union.rec* %464, null
  br i1 %cmp1312, label %cond.true.1314, label %cond.false.1315

cond.true.1314:                                   ; preds = %cond.false.1311
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1345

cond.false.1315:                                  ; preds = %cond.false.1311
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11316 = bitcast %union.rec* %466 to %struct.word_type*
  %olist1317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11316, i32 0, i32 0
  %arrayidx1318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1317, i32 0, i64 1
  %opred1319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1318, i32 0, i32 0
  %467 = load %union.rec*, %union.rec** %opred1319, align 8
  store %union.rec* %467, %union.rec** @zz_tmp, align 8
  %468 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11320 = bitcast %union.rec* %468 to %struct.word_type*
  %olist1321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11320, i32 0, i32 0
  %arrayidx1322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1321, i32 0, i64 1
  %opred1323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1322, i32 0, i32 0
  %469 = load %union.rec*, %union.rec** %opred1323, align 8
  %470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11324 = bitcast %union.rec* %470 to %struct.word_type*
  %olist1325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11324, i32 0, i32 0
  %arrayidx1326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1325, i32 0, i64 1
  %opred1327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1326, i32 0, i32 0
  store %union.rec* %469, %union.rec** %opred1327, align 8
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %472 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11329 = bitcast %union.rec* %472 to %struct.word_type*
  %olist1330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11329, i32 0, i32 0
  %arrayidx1331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1330, i32 0, i64 1
  %opred1332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1331, i32 0, i32 0
  %473 = load %union.rec*, %union.rec** %opred1332, align 8
  %os11333 = bitcast %union.rec* %473 to %struct.word_type*
  %olist1334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11333, i32 0, i32 0
  %arrayidx1335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1334, i32 0, i64 1
  %osucc1336 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1335, i32 0, i32 1
  store %union.rec* %471, %union.rec** %osucc1336, align 8
  %474 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %475 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11337 = bitcast %union.rec* %475 to %struct.word_type*
  %olist1338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11337, i32 0, i32 0
  %arrayidx1339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1338, i32 0, i64 1
  %opred1340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1339, i32 0, i32 0
  store %union.rec* %474, %union.rec** %opred1340, align 8
  %476 = load %union.rec*, %union.rec** @zz_res, align 8
  %477 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11341 = bitcast %union.rec* %477 to %struct.word_type*
  %olist1342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11341, i32 0, i32 0
  %arrayidx1343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1342, i32 0, i64 1
  %osucc1344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1343, i32 0, i32 1
  store %union.rec* %476, %union.rec** %osucc1344, align 8
  br label %cond.end.1345

cond.end.1345:                                    ; preds = %cond.false.1315, %cond.true.1314
  %cond1346 = phi %union.rec* [ %465, %cond.true.1314 ], [ %476, %cond.false.1315 ]
  br label %cond.end.1347

cond.end.1347:                                    ; preds = %cond.end.1345, %cond.true.1310
  %cond1348 = phi %union.rec* [ %463, %cond.true.1310 ], [ %cond1346, %cond.end.1345 ]
  %call1349 = call %union.rec* @LexGetToken()
  store %union.rec* %call1349, %union.rec** %t, align 8
  br label %while.cond.1143

while.end.1350:                                   ; preds = %land.end.1221
  call void @UnSuppressScope()
  br label %if.end.1351

if.end.1351:                                      ; preds = %while.end.1350, %land.lhs.true.1095, %if.end.1067
  %478 = load i8, i8* %res_type.addr, align 1
  %conv1352 = zext i8 %478 to i32
  %cmp1353 = icmp eq i32 %conv1352, 143
  br i1 %cmp1353, label %land.lhs.true.1355, label %if.end.1390

land.lhs.true.1355:                               ; preds = %if.end.1351
  %479 = load %union.rec*, %union.rec** %t, align 8
  %os11356 = bitcast %union.rec* %479 to %struct.word_type*
  %ou11357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11356, i32 0, i32 1
  %os111358 = bitcast %union.FIRST_UNION* %ou11357 to %struct.anon*
  %otype1359 = getelementptr inbounds %struct.anon, %struct.anon* %os111358, i32 0, i32 0
  %480 = load i8, i8* %otype1359, align 1
  %conv1360 = zext i8 %480 to i32
  %cmp1361 = icmp eq i32 %conv1360, 11
  br i1 %cmp1361, label %land.lhs.true.1363, label %land.lhs.true.1370

land.lhs.true.1363:                               ; preds = %land.lhs.true.1355
  %481 = load %union.rec*, %union.rec** %t, align 8
  %os11364 = bitcast %union.rec* %481 to %struct.word_type*
  %ostring1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11364, i32 0, i32 4
  %arraydecay1366 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1365, i32 0, i32 0
  %call1367 = call i32 @strcmp(i8* %arraydecay1366, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %cmp1368 = icmp eq i32 %call1367, 0
  br i1 %cmp1368, label %if.end.1390, label %land.lhs.true.1370

land.lhs.true.1370:                               ; preds = %land.lhs.true.1363, %land.lhs.true.1355
  %482 = load %union.rec*, %union.rec** %t, align 8
  %os11371 = bitcast %union.rec* %482 to %struct.word_type*
  %ou11372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11371, i32 0, i32 1
  %os111373 = bitcast %union.FIRST_UNION* %ou11372 to %struct.anon*
  %otype1374 = getelementptr inbounds %struct.anon, %struct.anon* %os111373, i32 0, i32 0
  %483 = load i8, i8* %otype1374, align 1
  %conv1375 = zext i8 %483 to i32
  %cmp1376 = icmp eq i32 %conv1375, 11
  br i1 %cmp1376, label %land.lhs.true.1378, label %if.then.1385

land.lhs.true.1378:                               ; preds = %land.lhs.true.1370
  %484 = load %union.rec*, %union.rec** %t, align 8
  %os11379 = bitcast %union.rec* %484 to %struct.word_type*
  %ostring1380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11379, i32 0, i32 4
  %arraydecay1381 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1380, i32 0, i32 0
  %call1382 = call i32 @strcmp(i8* %arraydecay1381, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %cmp1383 = icmp eq i32 %call1382, 0
  br i1 %cmp1383, label %if.end.1390, label %if.then.1385

if.then.1385:                                     ; preds = %land.lhs.true.1378, %land.lhs.true.1370
  %485 = load %union.rec*, %union.rec** %t, align 8
  %os11386 = bitcast %union.rec* %485 to %struct.word_type*
  %ou11387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11386, i32 0, i32 1
  %ofpos1388 = bitcast %union.FIRST_UNION* %ou11387 to %struct.FILE_POS*
  %call1389 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1388, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %while.end.2973

if.end.1390:                                      ; preds = %land.lhs.true.1378, %land.lhs.true.1363, %if.end.1351
  %486 = load i8, i8* %res_type.addr, align 1
  %conv1391 = zext i8 %486 to i32
  %cmp1392 = icmp eq i32 %conv1391, 145
  br i1 %cmp1392, label %land.lhs.true.1394, label %if.end.1414

land.lhs.true.1394:                               ; preds = %if.end.1390
  %487 = load %union.rec*, %union.rec** %t, align 8
  %os11395 = bitcast %union.rec* %487 to %struct.word_type*
  %ou11396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11395, i32 0, i32 1
  %os111397 = bitcast %union.FIRST_UNION* %ou11396 to %struct.anon*
  %otype1398 = getelementptr inbounds %struct.anon, %struct.anon* %os111397, i32 0, i32 0
  %488 = load i8, i8* %otype1398, align 1
  %conv1399 = zext i8 %488 to i32
  %cmp1400 = icmp eq i32 %conv1399, 11
  br i1 %cmp1400, label %land.lhs.true.1402, label %if.then.1409

land.lhs.true.1402:                               ; preds = %land.lhs.true.1394
  %489 = load %union.rec*, %union.rec** %t, align 8
  %os11403 = bitcast %union.rec* %489 to %struct.word_type*
  %ostring1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11403, i32 0, i32 4
  %arraydecay1405 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1404, i32 0, i32 0
  %call1406 = call i32 @strcmp(i8* %arraydecay1405, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %cmp1407 = icmp eq i32 %call1406, 0
  br i1 %cmp1407, label %if.end.1414, label %if.then.1409

if.then.1409:                                     ; preds = %land.lhs.true.1402, %land.lhs.true.1394
  %490 = load %union.rec*, %union.rec** %t, align 8
  %os11410 = bitcast %union.rec* %490 to %struct.word_type*
  %ou11411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11410, i32 0, i32 1
  %ofpos1412 = bitcast %union.FIRST_UNION* %ou11411 to %struct.FILE_POS*
  %call1413 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1412, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  br label %while.end.2973

if.end.1414:                                      ; preds = %land.lhs.true.1402, %if.end.1390
  %491 = load %union.rec*, %union.rec** %t, align 8
  %os11415 = bitcast %union.rec* %491 to %struct.word_type*
  %ou11416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11415, i32 0, i32 1
  %os111417 = bitcast %union.FIRST_UNION* %ou11416 to %struct.anon*
  %otype1418 = getelementptr inbounds %struct.anon, %struct.anon* %os111417, i32 0, i32 0
  %492 = load i8, i8* %otype1418, align 1
  %conv1419 = zext i8 %492 to i32
  %cmp1420 = icmp eq i32 %conv1419, 11
  br i1 %cmp1420, label %land.lhs.true.1422, label %if.else.1443

land.lhs.true.1422:                               ; preds = %if.end.1414
  %493 = load %union.rec*, %union.rec** %t, align 8
  %os11423 = bitcast %union.rec* %493 to %struct.word_type*
  %ostring1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11423, i32 0, i32 4
  %arraydecay1425 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1424, i32 0, i32 0
  %call1426 = call i32 @strcmp(i8* %arraydecay1425, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %cmp1427 = icmp eq i32 %call1426, 0
  br i1 %cmp1427, label %if.then.1429, label %if.else.1443

if.then.1429:                                     ; preds = %land.lhs.true.1422
  %494 = load %union.rec*, %union.rec** %export_list, align 8
  %os11430 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11430, i32 0, i32 0
  %arrayidx1432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1431, i32 0, i64 0
  %osucc1433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1432, i32 0, i32 1
  %495 = load %union.rec*, %union.rec** %osucc1433, align 8
  %496 = load %union.rec*, %union.rec** %export_list, align 8
  %cmp1434 = icmp ne %union.rec* %495, %496
  br i1 %cmp1434, label %if.then.1436, label %if.end.1441

if.then.1436:                                     ; preds = %if.then.1429
  %497 = load %union.rec*, %union.rec** %t, align 8
  %os11437 = bitcast %union.rec* %497 to %struct.word_type*
  %ou11438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11437, i32 0, i32 1
  %ofpos1439 = bitcast %union.FIRST_UNION* %ou11438 to %struct.FILE_POS*
  %call1440 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1439)
  br label %if.end.1441

if.end.1441:                                      ; preds = %if.then.1436, %if.then.1429
  %498 = load %union.rec*, %union.rec** %curr_encl, align 8
  %499 = load %union.rec*, %union.rec** %encl.addr, align 8
  %call1442 = call %union.rec* @ReadMacro(%union.rec** %t, %union.rec* %498, %union.rec* %499)
  store %union.rec* %call1442, %union.rec** %res, align 8
  br label %if.end.2938

if.else.1443:                                     ; preds = %land.lhs.true.1422, %if.end.1414
  call void @SuppressScope()
  %500 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %500, %union.rec** @zz_hold, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %501, %union.rec** @zz_hold, align 8
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11444 = bitcast %union.rec* %502 to %struct.word_type*
  %ou11445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11444, i32 0, i32 1
  %os111446 = bitcast %union.FIRST_UNION* %ou11445 to %struct.anon*
  %otype1447 = getelementptr inbounds %struct.anon, %struct.anon* %os111446, i32 0, i32 0
  %503 = load i8, i8* %otype1447, align 1
  %conv1448 = zext i8 %503 to i32
  %cmp1449 = icmp eq i32 %conv1448, 11
  br i1 %cmp1449, label %cond.true.1459, label %lor.lhs.false.1451

lor.lhs.false.1451:                               ; preds = %if.else.1443
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11452 = bitcast %union.rec* %504 to %struct.word_type*
  %ou11453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11452, i32 0, i32 1
  %os111454 = bitcast %union.FIRST_UNION* %ou11453 to %struct.anon*
  %otype1455 = getelementptr inbounds %struct.anon, %struct.anon* %os111454, i32 0, i32 0
  %505 = load i8, i8* %otype1455, align 1
  %conv1456 = zext i8 %505 to i32
  %cmp1457 = icmp eq i32 %conv1456, 12
  br i1 %cmp1457, label %cond.true.1459, label %cond.false.1465

cond.true.1459:                                   ; preds = %lor.lhs.false.1451, %if.else.1443
  %506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11460 = bitcast %union.rec* %506 to %struct.word_type*
  %ou11461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11460, i32 0, i32 1
  %os111462 = bitcast %union.FIRST_UNION* %ou11461 to %struct.anon*
  %orec_size1463 = getelementptr inbounds %struct.anon, %struct.anon* %os111462, i32 0, i32 1
  %507 = load i8, i8* %orec_size1463, align 1
  %conv1464 = zext i8 %507 to i32
  br label %cond.end.1473

cond.false.1465:                                  ; preds = %lor.lhs.false.1451
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11466 = bitcast %union.rec* %508 to %struct.word_type*
  %ou11467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11466, i32 0, i32 1
  %os111468 = bitcast %union.FIRST_UNION* %ou11467 to %struct.anon*
  %otype1469 = getelementptr inbounds %struct.anon, %struct.anon* %os111468, i32 0, i32 0
  %509 = load i8, i8* %otype1469, align 1
  %idxprom1470 = zext i8 %509 to i64
  %arrayidx1471 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1470
  %510 = load i8, i8* %arrayidx1471, align 1
  %conv1472 = zext i8 %510 to i32
  br label %cond.end.1473

cond.end.1473:                                    ; preds = %cond.false.1465, %cond.true.1459
  %cond1474 = phi i32 [ %conv1464, %cond.true.1459 ], [ %conv1472, %cond.false.1465 ]
  store i32 %cond1474, i32* @zz_size, align 4
  %511 = load i32, i32* @zz_size, align 4
  %idxprom1475 = sext i32 %511 to i64
  %arrayidx1476 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1475
  %512 = load %union.rec*, %union.rec** %arrayidx1476, align 8
  %513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11477 = bitcast %union.rec* %513 to %struct.word_type*
  %olist1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11477, i32 0, i32 0
  %arrayidx1479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1478, i32 0, i64 0
  %opred1480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1479, i32 0, i32 0
  store %union.rec* %512, %union.rec** %opred1480, align 8
  %514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %515 = load i32, i32* @zz_size, align 4
  %idxprom1481 = sext i32 %515 to i64
  %arrayidx1482 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1481
  store %union.rec* %514, %union.rec** %arrayidx1482, align 8
  %call1483 = call %union.rec* @LexGetToken()
  store %union.rec* %call1483, %union.rec** %t, align 8
  %516 = load i8, i8* %res_type.addr, align 1
  %conv1484 = zext i8 %516 to i32
  %cmp1485 = icmp eq i32 %conv1484, 145
  br i1 %cmp1485, label %land.lhs.true.1487, label %if.else.1543

land.lhs.true.1487:                               ; preds = %cond.end.1473
  %517 = load %union.rec*, %union.rec** %t, align 8
  %os11488 = bitcast %union.rec* %517 to %struct.word_type*
  %ou11489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11488, i32 0, i32 1
  %os111490 = bitcast %union.FIRST_UNION* %ou11489 to %struct.anon*
  %otype1491 = getelementptr inbounds %struct.anon, %struct.anon* %os111490, i32 0, i32 0
  %518 = load i8, i8* %otype1491, align 1
  %conv1492 = zext i8 %518 to i32
  %cmp1493 = icmp eq i32 %conv1492, 11
  br i1 %cmp1493, label %land.lhs.true.1495, label %if.else.1543

land.lhs.true.1495:                               ; preds = %land.lhs.true.1487
  %519 = load %union.rec*, %union.rec** %t, align 8
  %os11496 = bitcast %union.rec* %519 to %struct.word_type*
  %ostring1497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11496, i32 0, i32 4
  %arraydecay1498 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1497, i32 0, i32 0
  %call1499 = call i32 @strcmp(i8* %arraydecay1498, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #3
  %cmp1500 = icmp eq i32 %call1499, 0
  br i1 %cmp1500, label %if.then.1502, label %if.else.1543

if.then.1502:                                     ; preds = %land.lhs.true.1495
  store i32 1, i32* %compulsory_par, align 4
  %520 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %520, %union.rec** @zz_hold, align 8
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %521, %union.rec** @zz_hold, align 8
  %522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11503 = bitcast %union.rec* %522 to %struct.word_type*
  %ou11504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11503, i32 0, i32 1
  %os111505 = bitcast %union.FIRST_UNION* %ou11504 to %struct.anon*
  %otype1506 = getelementptr inbounds %struct.anon, %struct.anon* %os111505, i32 0, i32 0
  %523 = load i8, i8* %otype1506, align 1
  %conv1507 = zext i8 %523 to i32
  %cmp1508 = icmp eq i32 %conv1507, 11
  br i1 %cmp1508, label %cond.true.1518, label %lor.lhs.false.1510

lor.lhs.false.1510:                               ; preds = %if.then.1502
  %524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11511 = bitcast %union.rec* %524 to %struct.word_type*
  %ou11512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11511, i32 0, i32 1
  %os111513 = bitcast %union.FIRST_UNION* %ou11512 to %struct.anon*
  %otype1514 = getelementptr inbounds %struct.anon, %struct.anon* %os111513, i32 0, i32 0
  %525 = load i8, i8* %otype1514, align 1
  %conv1515 = zext i8 %525 to i32
  %cmp1516 = icmp eq i32 %conv1515, 12
  br i1 %cmp1516, label %cond.true.1518, label %cond.false.1524

cond.true.1518:                                   ; preds = %lor.lhs.false.1510, %if.then.1502
  %526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11519 = bitcast %union.rec* %526 to %struct.word_type*
  %ou11520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11519, i32 0, i32 1
  %os111521 = bitcast %union.FIRST_UNION* %ou11520 to %struct.anon*
  %orec_size1522 = getelementptr inbounds %struct.anon, %struct.anon* %os111521, i32 0, i32 1
  %527 = load i8, i8* %orec_size1522, align 1
  %conv1523 = zext i8 %527 to i32
  br label %cond.end.1532

cond.false.1524:                                  ; preds = %lor.lhs.false.1510
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11525 = bitcast %union.rec* %528 to %struct.word_type*
  %ou11526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11525, i32 0, i32 1
  %os111527 = bitcast %union.FIRST_UNION* %ou11526 to %struct.anon*
  %otype1528 = getelementptr inbounds %struct.anon, %struct.anon* %os111527, i32 0, i32 0
  %529 = load i8, i8* %otype1528, align 1
  %idxprom1529 = zext i8 %529 to i64
  %arrayidx1530 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1529
  %530 = load i8, i8* %arrayidx1530, align 1
  %conv1531 = zext i8 %530 to i32
  br label %cond.end.1532

cond.end.1532:                                    ; preds = %cond.false.1524, %cond.true.1518
  %cond1533 = phi i32 [ %conv1523, %cond.true.1518 ], [ %conv1531, %cond.false.1524 ]
  store i32 %cond1533, i32* @zz_size, align 4
  %531 = load i32, i32* @zz_size, align 4
  %idxprom1534 = sext i32 %531 to i64
  %arrayidx1535 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1534
  %532 = load %union.rec*, %union.rec** %arrayidx1535, align 8
  %533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11536 = bitcast %union.rec* %533 to %struct.word_type*
  %olist1537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11536, i32 0, i32 0
  %arrayidx1538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1537, i32 0, i64 0
  %opred1539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1538, i32 0, i32 0
  store %union.rec* %532, %union.rec** %opred1539, align 8
  %534 = load %union.rec*, %union.rec** @zz_hold, align 8
  %535 = load i32, i32* @zz_size, align 4
  %idxprom1540 = sext i32 %535 to i64
  %arrayidx1541 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1540
  store %union.rec* %534, %union.rec** %arrayidx1541, align 8
  %call1542 = call %union.rec* @LexGetToken()
  store %union.rec* %call1542, %union.rec** %t, align 8
  br label %if.end.1544

if.else.1543:                                     ; preds = %land.lhs.true.1495, %land.lhs.true.1487, %cond.end.1473
  store i32 0, i32* %compulsory_par, align 4
  br label %if.end.1544

if.end.1544:                                      ; preds = %if.else.1543, %cond.end.1532
  %536 = load %union.rec*, %union.rec** %t, align 8
  %os11545 = bitcast %union.rec* %536 to %struct.word_type*
  %ou11546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11545, i32 0, i32 1
  %os111547 = bitcast %union.FIRST_UNION* %ou11546 to %struct.anon*
  %otype1548 = getelementptr inbounds %struct.anon, %struct.anon* %os111547, i32 0, i32 0
  %537 = load i8, i8* %otype1548, align 1
  %conv1549 = zext i8 %537 to i32
  %cmp1550 = icmp eq i32 %conv1549, 11
  br i1 %cmp1550, label %if.end.1565, label %lor.lhs.false.1552

lor.lhs.false.1552:                               ; preds = %if.end.1544
  %538 = load %union.rec*, %union.rec** %t, align 8
  %os11553 = bitcast %union.rec* %538 to %struct.word_type*
  %ou11554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11553, i32 0, i32 1
  %os111555 = bitcast %union.FIRST_UNION* %ou11554 to %struct.anon*
  %otype1556 = getelementptr inbounds %struct.anon, %struct.anon* %os111555, i32 0, i32 0
  %539 = load i8, i8* %otype1556, align 1
  %conv1557 = zext i8 %539 to i32
  %cmp1558 = icmp eq i32 %conv1557, 12
  br i1 %cmp1558, label %if.end.1565, label %if.then.1560

if.then.1560:                                     ; preds = %lor.lhs.false.1552
  %540 = load %union.rec*, %union.rec** %t, align 8
  %os11561 = bitcast %union.rec* %540 to %struct.word_type*
  %ou11562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11561, i32 0, i32 1
  %ofpos1563 = bitcast %union.FIRST_UNION* %ou11562 to %struct.FILE_POS*
  %call1564 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1563)
  call void @UnSuppressScope()
  %541 = load %union.rec*, %union.rec** %t, align 8
  %542 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* %541, %union.rec** %542, align 8
  br label %return

if.end.1565:                                      ; preds = %lor.lhs.false.1552, %if.end.1544
  %543 = load %union.rec*, %union.rec** %t, align 8
  %os11566 = bitcast %union.rec* %543 to %struct.word_type*
  %ostring1567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11566, i32 0, i32 4
  %arraydecay1568 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1567, i32 0, i32 0
  %544 = load i8, i8* %res_type.addr, align 1
  %545 = load %union.rec*, %union.rec** %t, align 8
  %os11569 = bitcast %union.rec* %545 to %struct.word_type*
  %ou11570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11569, i32 0, i32 1
  %ofpos1571 = bitcast %union.FIRST_UNION* %ou11570 to %struct.FILE_POS*
  %546 = load %union.rec*, %union.rec** %curr_encl, align 8
  %call1572 = call %union.rec* @InsertSym(i8* %arraydecay1568, i8 zeroext %544, %struct.FILE_POS* %ofpos1571, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %546, %union.rec* null)
  store %union.rec* %call1572, %union.rec** %res, align 8
  %547 = load %union.rec*, %union.rec** %curr_encl, align 8
  %548 = load %union.rec*, %union.rec** %encl.addr, align 8
  %cmp1573 = icmp ne %union.rec* %547, %548
  br i1 %cmp1573, label %if.then.1575, label %if.end.1577

if.then.1575:                                     ; preds = %if.end.1565
  %549 = load %union.rec*, %union.rec** %res, align 8
  %os11576 = bitcast %union.rec* %549 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11576, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ovisible = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %550 = bitcast [3 x i8]* %ovisible to i24*
  %bf.load = load i24, i24* %550, align 1
  %bf.clear = and i24 %bf.load, -65537
  %bf.set = or i24 %bf.clear, 65536
  store i24 %bf.set, i24* %550, align 1
  br label %if.end.1577

if.end.1577:                                      ; preds = %if.then.1575, %if.end.1565
  %551 = load i32, i32* %has_import_encl, align 4
  %tobool = icmp ne i32 %551, 0
  br i1 %tobool, label %if.then.1578, label %if.end.1585

if.then.1578:                                     ; preds = %if.end.1577
  %552 = load %union.rec*, %union.rec** %res, align 8
  %os11579 = bitcast %union.rec* %552 to %struct.word_type*
  %ou21580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11579, i32 0, i32 2
  %os261581 = bitcast %union.SECOND_UNION* %ou21580 to %struct.anon.5*
  %oimports_encl = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261581, i32 0, i32 1
  %553 = bitcast [3 x i8]* %oimports_encl to i24*
  %bf.load1582 = load i24, i24* %553, align 1
  %bf.clear1583 = and i24 %bf.load1582, -4194305
  %bf.set1584 = or i24 %bf.clear1583, 4194304
  store i24 %bf.set1584, i24* %553, align 1
  br label %if.end.1585

if.end.1585:                                      ; preds = %if.then.1578, %if.end.1577
  %554 = load i32, i32* %compulsory_par, align 4
  %tobool1586 = icmp ne i32 %554, 0
  br i1 %tobool1586, label %if.then.1587, label %if.end.1593

if.then.1587:                                     ; preds = %if.end.1585
  %555 = load %union.rec*, %union.rec** %encl.addr, align 8
  %os61588 = bitcast %union.rec* %555 to %struct.symbol_type*
  %ohas_compulsory = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os61588, i32 0, i32 13
  %556 = load i16, i16* %ohas_compulsory, align 2
  %inc = add i16 %556, 1
  store i16 %inc, i16* %ohas_compulsory, align 2
  %557 = load %union.rec*, %union.rec** %res, align 8
  %os61589 = bitcast %union.rec* %557 to %struct.symbol_type*
  %ois_compulsory = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os61589, i32 0, i32 16
  %bf.load1590 = load i8, i8* %ois_compulsory, align 2
  %bf.clear1591 = and i8 %bf.load1590, -65
  %bf.set1592 = or i8 %bf.clear1591, 64
  store i8 %bf.set1592, i8* %ois_compulsory, align 2
  br label %if.end.1593

if.end.1593:                                      ; preds = %if.then.1587, %if.end.1585
  %558 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %558, %union.rec** @zz_hold, align 8
  %559 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %559, %union.rec** @zz_hold, align 8
  %560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11595 = bitcast %union.rec* %560 to %struct.word_type*
  %ou11596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11595, i32 0, i32 1
  %os111597 = bitcast %union.FIRST_UNION* %ou11596 to %struct.anon*
  %otype1598 = getelementptr inbounds %struct.anon, %struct.anon* %os111597, i32 0, i32 0
  %561 = load i8, i8* %otype1598, align 1
  %conv1599 = zext i8 %561 to i32
  %cmp1600 = icmp eq i32 %conv1599, 11
  br i1 %cmp1600, label %cond.true.1610, label %lor.lhs.false.1602

lor.lhs.false.1602:                               ; preds = %if.end.1593
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11603 = bitcast %union.rec* %562 to %struct.word_type*
  %ou11604 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11603, i32 0, i32 1
  %os111605 = bitcast %union.FIRST_UNION* %ou11604 to %struct.anon*
  %otype1606 = getelementptr inbounds %struct.anon, %struct.anon* %os111605, i32 0, i32 0
  %563 = load i8, i8* %otype1606, align 1
  %conv1607 = zext i8 %563 to i32
  %cmp1608 = icmp eq i32 %conv1607, 12
  br i1 %cmp1608, label %cond.true.1610, label %cond.false.1616

cond.true.1610:                                   ; preds = %lor.lhs.false.1602, %if.end.1593
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11611 = bitcast %union.rec* %564 to %struct.word_type*
  %ou11612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11611, i32 0, i32 1
  %os111613 = bitcast %union.FIRST_UNION* %ou11612 to %struct.anon*
  %orec_size1614 = getelementptr inbounds %struct.anon, %struct.anon* %os111613, i32 0, i32 1
  %565 = load i8, i8* %orec_size1614, align 1
  %conv1615 = zext i8 %565 to i32
  br label %cond.end.1624

cond.false.1616:                                  ; preds = %lor.lhs.false.1602
  %566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11617 = bitcast %union.rec* %566 to %struct.word_type*
  %ou11618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11617, i32 0, i32 1
  %os111619 = bitcast %union.FIRST_UNION* %ou11618 to %struct.anon*
  %otype1620 = getelementptr inbounds %struct.anon, %struct.anon* %os111619, i32 0, i32 0
  %567 = load i8, i8* %otype1620, align 1
  %idxprom1621 = zext i8 %567 to i64
  %arrayidx1622 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1621
  %568 = load i8, i8* %arrayidx1622, align 1
  %conv1623 = zext i8 %568 to i32
  br label %cond.end.1624

cond.end.1624:                                    ; preds = %cond.false.1616, %cond.true.1610
  %cond1625 = phi i32 [ %conv1615, %cond.true.1610 ], [ %conv1623, %cond.false.1616 ]
  store i32 %cond1625, i32* @zz_size, align 4
  %569 = load i32, i32* @zz_size, align 4
  %idxprom1626 = sext i32 %569 to i64
  %arrayidx1627 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1626
  %570 = load %union.rec*, %union.rec** %arrayidx1627, align 8
  %571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11628 = bitcast %union.rec* %571 to %struct.word_type*
  %olist1629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11628, i32 0, i32 0
  %arrayidx1630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1629, i32 0, i64 0
  %opred1631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1630, i32 0, i32 0
  store %union.rec* %570, %union.rec** %opred1631, align 8
  %572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %573 = load i32, i32* @zz_size, align 4
  %idxprom1632 = sext i32 %573 to i64
  %arrayidx1633 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1632
  store %union.rec* %572, %union.rec** %arrayidx1633, align 8
  %call1634 = call %union.rec* @LexGetToken()
  store %union.rec* %call1634, %union.rec** %t, align 8
  br label %while.cond.1635

while.cond.1635:                                  ; preds = %cond.end.1871, %cond.end.1624
  %574 = load %union.rec*, %union.rec** %t, align 8
  %os11636 = bitcast %union.rec* %574 to %struct.word_type*
  %ou11637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11636, i32 0, i32 1
  %os111638 = bitcast %union.FIRST_UNION* %ou11637 to %struct.anon*
  %otype1639 = getelementptr inbounds %struct.anon, %struct.anon* %os111638, i32 0, i32 0
  %575 = load i8, i8* %otype1639, align 1
  %conv1640 = zext i8 %575 to i32
  %cmp1641 = icmp eq i32 %conv1640, 11
  br i1 %cmp1641, label %land.lhs.true.1651, label %lor.lhs.false.1643

lor.lhs.false.1643:                               ; preds = %while.cond.1635
  %576 = load %union.rec*, %union.rec** %t, align 8
  %os11644 = bitcast %union.rec* %576 to %struct.word_type*
  %ou11645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11644, i32 0, i32 1
  %os111646 = bitcast %union.FIRST_UNION* %ou11645 to %struct.anon*
  %otype1647 = getelementptr inbounds %struct.anon, %struct.anon* %os111646, i32 0, i32 0
  %577 = load i8, i8* %otype1647, align 1
  %conv1648 = zext i8 %577 to i32
  %cmp1649 = icmp eq i32 %conv1648, 12
  br i1 %cmp1649, label %land.lhs.true.1651, label %land.end.1834

land.lhs.true.1651:                               ; preds = %lor.lhs.false.1643, %while.cond.1635
  %578 = load %union.rec*, %union.rec** %t, align 8
  %os11652 = bitcast %union.rec* %578 to %struct.word_type*
  %ou11653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11652, i32 0, i32 1
  %os111654 = bitcast %union.FIRST_UNION* %ou11653 to %struct.anon*
  %otype1655 = getelementptr inbounds %struct.anon, %struct.anon* %os111654, i32 0, i32 0
  %579 = load i8, i8* %otype1655, align 1
  %conv1656 = zext i8 %579 to i32
  %cmp1657 = icmp eq i32 %conv1656, 11
  br i1 %cmp1657, label %land.lhs.true.1659, label %land.lhs.true.1666

land.lhs.true.1659:                               ; preds = %land.lhs.true.1651
  %580 = load %union.rec*, %union.rec** %t, align 8
  %os11660 = bitcast %union.rec* %580 to %struct.word_type*
  %ostring1661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11660, i32 0, i32 4
  %arraydecay1662 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1661, i32 0, i32 0
  %call1663 = call i32 @strcmp(i8* %arraydecay1662, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %cmp1664 = icmp eq i32 %call1663, 0
  br i1 %cmp1664, label %land.end.1834, label %land.lhs.true.1666

land.lhs.true.1666:                               ; preds = %land.lhs.true.1659, %land.lhs.true.1651
  %581 = load %union.rec*, %union.rec** %t, align 8
  %os11667 = bitcast %union.rec* %581 to %struct.word_type*
  %ou11668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11667, i32 0, i32 1
  %os111669 = bitcast %union.FIRST_UNION* %ou11668 to %struct.anon*
  %otype1670 = getelementptr inbounds %struct.anon, %struct.anon* %os111669, i32 0, i32 0
  %582 = load i8, i8* %otype1670, align 1
  %conv1671 = zext i8 %582 to i32
  %cmp1672 = icmp eq i32 %conv1671, 11
  br i1 %cmp1672, label %land.lhs.true.1674, label %land.lhs.true.1681

land.lhs.true.1674:                               ; preds = %land.lhs.true.1666
  %583 = load %union.rec*, %union.rec** %t, align 8
  %os11675 = bitcast %union.rec* %583 to %struct.word_type*
  %ostring1676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11675, i32 0, i32 4
  %arraydecay1677 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1676, i32 0, i32 0
  %call1678 = call i32 @strcmp(i8* %arraydecay1677, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %cmp1679 = icmp eq i32 %call1678, 0
  br i1 %cmp1679, label %land.end.1834, label %land.lhs.true.1681

land.lhs.true.1681:                               ; preds = %land.lhs.true.1674, %land.lhs.true.1666
  %584 = load %union.rec*, %union.rec** %t, align 8
  %os11682 = bitcast %union.rec* %584 to %struct.word_type*
  %ou11683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11682, i32 0, i32 1
  %os111684 = bitcast %union.FIRST_UNION* %ou11683 to %struct.anon*
  %otype1685 = getelementptr inbounds %struct.anon, %struct.anon* %os111684, i32 0, i32 0
  %585 = load i8, i8* %otype1685, align 1
  %conv1686 = zext i8 %585 to i32
  %cmp1687 = icmp eq i32 %conv1686, 11
  br i1 %cmp1687, label %land.lhs.true.1689, label %land.lhs.true.1696

land.lhs.true.1689:                               ; preds = %land.lhs.true.1681
  %586 = load %union.rec*, %union.rec** %t, align 8
  %os11690 = bitcast %union.rec* %586 to %struct.word_type*
  %ostring1691 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11690, i32 0, i32 4
  %arraydecay1692 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1691, i32 0, i32 0
  %call1693 = call i32 @strcmp(i8* %arraydecay1692, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #3
  %cmp1694 = icmp eq i32 %call1693, 0
  br i1 %cmp1694, label %land.end.1834, label %land.lhs.true.1696

land.lhs.true.1696:                               ; preds = %land.lhs.true.1689, %land.lhs.true.1681
  %587 = load %union.rec*, %union.rec** %t, align 8
  %os11697 = bitcast %union.rec* %587 to %struct.word_type*
  %ou11698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11697, i32 0, i32 1
  %os111699 = bitcast %union.FIRST_UNION* %ou11698 to %struct.anon*
  %otype1700 = getelementptr inbounds %struct.anon, %struct.anon* %os111699, i32 0, i32 0
  %588 = load i8, i8* %otype1700, align 1
  %conv1701 = zext i8 %588 to i32
  %cmp1702 = icmp eq i32 %conv1701, 11
  br i1 %cmp1702, label %land.lhs.true.1704, label %land.lhs.true.1712

land.lhs.true.1704:                               ; preds = %land.lhs.true.1696
  %589 = load %union.rec*, %union.rec** %t, align 8
  %os11706 = bitcast %union.rec* %589 to %struct.word_type*
  %ostring1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11706, i32 0, i32 4
  %arraydecay1708 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1707, i32 0, i32 0
  %call1709 = call i32 @strcmp(i8* %arraydecay1708, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #3
  %cmp1710 = icmp eq i32 %call1709, 0
  br i1 %cmp1710, label %land.end.1834, label %land.lhs.true.1712

land.lhs.true.1712:                               ; preds = %land.lhs.true.1704, %land.lhs.true.1696
  %590 = load %union.rec*, %union.rec** %t, align 8
  %os11713 = bitcast %union.rec* %590 to %struct.word_type*
  %ou11714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11713, i32 0, i32 1
  %os111715 = bitcast %union.FIRST_UNION* %ou11714 to %struct.anon*
  %otype1716 = getelementptr inbounds %struct.anon, %struct.anon* %os111715, i32 0, i32 0
  %591 = load i8, i8* %otype1716, align 1
  %conv1717 = zext i8 %591 to i32
  %cmp1718 = icmp eq i32 %conv1717, 11
  br i1 %cmp1718, label %land.lhs.true.1720, label %land.lhs.true.1727

land.lhs.true.1720:                               ; preds = %land.lhs.true.1712
  %592 = load %union.rec*, %union.rec** %t, align 8
  %os11721 = bitcast %union.rec* %592 to %struct.word_type*
  %ostring1722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11721, i32 0, i32 4
  %arraydecay1723 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1722, i32 0, i32 0
  %call1724 = call i32 @strcmp(i8* %arraydecay1723, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #3
  %cmp1725 = icmp eq i32 %call1724, 0
  br i1 %cmp1725, label %land.end.1834, label %land.lhs.true.1727

land.lhs.true.1727:                               ; preds = %land.lhs.true.1720, %land.lhs.true.1712
  %593 = load %union.rec*, %union.rec** %t, align 8
  %os11728 = bitcast %union.rec* %593 to %struct.word_type*
  %ou11729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11728, i32 0, i32 1
  %os111730 = bitcast %union.FIRST_UNION* %ou11729 to %struct.anon*
  %otype1731 = getelementptr inbounds %struct.anon, %struct.anon* %os111730, i32 0, i32 0
  %594 = load i8, i8* %otype1731, align 1
  %conv1732 = zext i8 %594 to i32
  %cmp1733 = icmp eq i32 %conv1732, 11
  br i1 %cmp1733, label %land.lhs.true.1735, label %land.lhs.true.1742

land.lhs.true.1735:                               ; preds = %land.lhs.true.1727
  %595 = load %union.rec*, %union.rec** %t, align 8
  %os11736 = bitcast %union.rec* %595 to %struct.word_type*
  %ostring1737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11736, i32 0, i32 4
  %arraydecay1738 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1737, i32 0, i32 0
  %call1739 = call i32 @strcmp(i8* %arraydecay1738, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #3
  %cmp1740 = icmp eq i32 %call1739, 0
  br i1 %cmp1740, label %land.end.1834, label %land.lhs.true.1742

land.lhs.true.1742:                               ; preds = %land.lhs.true.1735, %land.lhs.true.1727
  %596 = load %union.rec*, %union.rec** %t, align 8
  %os11743 = bitcast %union.rec* %596 to %struct.word_type*
  %ou11744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11743, i32 0, i32 1
  %os111745 = bitcast %union.FIRST_UNION* %ou11744 to %struct.anon*
  %otype1746 = getelementptr inbounds %struct.anon, %struct.anon* %os111745, i32 0, i32 0
  %597 = load i8, i8* %otype1746, align 1
  %conv1747 = zext i8 %597 to i32
  %cmp1748 = icmp eq i32 %conv1747, 11
  br i1 %cmp1748, label %land.lhs.true.1750, label %land.lhs.true.1757

land.lhs.true.1750:                               ; preds = %land.lhs.true.1742
  %598 = load %union.rec*, %union.rec** %t, align 8
  %os11751 = bitcast %union.rec* %598 to %struct.word_type*
  %ostring1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11751, i32 0, i32 4
  %arraydecay1753 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1752, i32 0, i32 0
  %call1754 = call i32 @strcmp(i8* %arraydecay1753, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0)) #3
  %cmp1755 = icmp eq i32 %call1754, 0
  br i1 %cmp1755, label %land.end.1834, label %land.lhs.true.1757

land.lhs.true.1757:                               ; preds = %land.lhs.true.1750, %land.lhs.true.1742
  %599 = load %union.rec*, %union.rec** %t, align 8
  %os11758 = bitcast %union.rec* %599 to %struct.word_type*
  %ou11759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11758, i32 0, i32 1
  %os111760 = bitcast %union.FIRST_UNION* %ou11759 to %struct.anon*
  %otype1761 = getelementptr inbounds %struct.anon, %struct.anon* %os111760, i32 0, i32 0
  %600 = load i8, i8* %otype1761, align 1
  %conv1762 = zext i8 %600 to i32
  %cmp1763 = icmp eq i32 %conv1762, 11
  br i1 %cmp1763, label %land.lhs.true.1765, label %land.lhs.true.1772

land.lhs.true.1765:                               ; preds = %land.lhs.true.1757
  %601 = load %union.rec*, %union.rec** %t, align 8
  %os11766 = bitcast %union.rec* %601 to %struct.word_type*
  %ostring1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11766, i32 0, i32 4
  %arraydecay1768 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1767, i32 0, i32 0
  %call1769 = call i32 @strcmp(i8* %arraydecay1768, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #3
  %cmp1770 = icmp eq i32 %call1769, 0
  br i1 %cmp1770, label %land.end.1834, label %land.lhs.true.1772

land.lhs.true.1772:                               ; preds = %land.lhs.true.1765, %land.lhs.true.1757
  %602 = load %union.rec*, %union.rec** %t, align 8
  %os11773 = bitcast %union.rec* %602 to %struct.word_type*
  %ou11774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11773, i32 0, i32 1
  %os111775 = bitcast %union.FIRST_UNION* %ou11774 to %struct.anon*
  %otype1776 = getelementptr inbounds %struct.anon, %struct.anon* %os111775, i32 0, i32 0
  %603 = load i8, i8* %otype1776, align 1
  %conv1777 = zext i8 %603 to i32
  %cmp1778 = icmp eq i32 %conv1777, 11
  br i1 %cmp1778, label %land.lhs.true.1780, label %land.lhs.true.1787

land.lhs.true.1780:                               ; preds = %land.lhs.true.1772
  %604 = load %union.rec*, %union.rec** %t, align 8
  %os11781 = bitcast %union.rec* %604 to %struct.word_type*
  %ostring1782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11781, i32 0, i32 4
  %arraydecay1783 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1782, i32 0, i32 0
  %call1784 = call i32 @strcmp(i8* %arraydecay1783, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #3
  %cmp1785 = icmp eq i32 %call1784, 0
  br i1 %cmp1785, label %land.end.1834, label %land.lhs.true.1787

land.lhs.true.1787:                               ; preds = %land.lhs.true.1780, %land.lhs.true.1772
  %605 = load %union.rec*, %union.rec** %t, align 8
  %os11788 = bitcast %union.rec* %605 to %struct.word_type*
  %ou11789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11788, i32 0, i32 1
  %os111790 = bitcast %union.FIRST_UNION* %ou11789 to %struct.anon*
  %otype1791 = getelementptr inbounds %struct.anon, %struct.anon* %os111790, i32 0, i32 0
  %606 = load i8, i8* %otype1791, align 1
  %conv1792 = zext i8 %606 to i32
  %cmp1793 = icmp eq i32 %conv1792, 11
  br i1 %cmp1793, label %land.lhs.true.1795, label %land.lhs.true.1802

land.lhs.true.1795:                               ; preds = %land.lhs.true.1787
  %607 = load %union.rec*, %union.rec** %t, align 8
  %os11796 = bitcast %union.rec* %607 to %struct.word_type*
  %ostring1797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11796, i32 0, i32 4
  %arraydecay1798 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1797, i32 0, i32 0
  %call1799 = call i32 @strcmp(i8* %arraydecay1798, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #3
  %cmp1800 = icmp eq i32 %call1799, 0
  br i1 %cmp1800, label %land.end.1834, label %land.lhs.true.1802

land.lhs.true.1802:                               ; preds = %land.lhs.true.1795, %land.lhs.true.1787
  %608 = load %union.rec*, %union.rec** %t, align 8
  %os11803 = bitcast %union.rec* %608 to %struct.word_type*
  %ou11804 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11803, i32 0, i32 1
  %os111805 = bitcast %union.FIRST_UNION* %ou11804 to %struct.anon*
  %otype1806 = getelementptr inbounds %struct.anon, %struct.anon* %os111805, i32 0, i32 0
  %609 = load i8, i8* %otype1806, align 1
  %conv1807 = zext i8 %609 to i32
  %cmp1808 = icmp eq i32 %conv1807, 11
  br i1 %cmp1808, label %land.lhs.true.1810, label %land.rhs.1817

land.lhs.true.1810:                               ; preds = %land.lhs.true.1802
  %610 = load %union.rec*, %union.rec** %t, align 8
  %os11811 = bitcast %union.rec* %610 to %struct.word_type*
  %ostring1812 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11811, i32 0, i32 4
  %arraydecay1813 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1812, i32 0, i32 0
  %call1814 = call i32 @strcmp(i8* %arraydecay1813, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #3
  %cmp1815 = icmp eq i32 %call1814, 0
  br i1 %cmp1815, label %land.end.1834, label %land.rhs.1817

land.rhs.1817:                                    ; preds = %land.lhs.true.1810, %land.lhs.true.1802
  %611 = load %union.rec*, %union.rec** %t, align 8
  %os11818 = bitcast %union.rec* %611 to %struct.word_type*
  %ou11819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11818, i32 0, i32 1
  %os111820 = bitcast %union.FIRST_UNION* %ou11819 to %struct.anon*
  %otype1821 = getelementptr inbounds %struct.anon, %struct.anon* %os111820, i32 0, i32 0
  %612 = load i8, i8* %otype1821, align 1
  %conv1822 = zext i8 %612 to i32
  %cmp1823 = icmp eq i32 %conv1822, 11
  br i1 %cmp1823, label %land.rhs.1825, label %land.end.1832

land.rhs.1825:                                    ; preds = %land.rhs.1817
  %613 = load %union.rec*, %union.rec** %t, align 8
  %os11826 = bitcast %union.rec* %613 to %struct.word_type*
  %ostring1827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11826, i32 0, i32 4
  %arraydecay1828 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1827, i32 0, i32 0
  %call1829 = call i32 @strcmp(i8* %arraydecay1828, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #3
  %cmp1830 = icmp eq i32 %call1829, 0
  br label %land.end.1832

land.end.1832:                                    ; preds = %land.rhs.1825, %land.rhs.1817
  %614 = phi i1 [ false, %land.rhs.1817 ], [ %cmp1830, %land.rhs.1825 ]
  %lnot1833 = xor i1 %614, true
  br label %land.end.1834

land.end.1834:                                    ; preds = %land.end.1832, %land.lhs.true.1810, %land.lhs.true.1795, %land.lhs.true.1780, %land.lhs.true.1765, %land.lhs.true.1750, %land.lhs.true.1735, %land.lhs.true.1720, %land.lhs.true.1704, %land.lhs.true.1689, %land.lhs.true.1674, %land.lhs.true.1659, %lor.lhs.false.1643
  %615 = phi i1 [ false, %land.lhs.true.1810 ], [ false, %land.lhs.true.1795 ], [ false, %land.lhs.true.1780 ], [ false, %land.lhs.true.1765 ], [ false, %land.lhs.true.1750 ], [ false, %land.lhs.true.1735 ], [ false, %land.lhs.true.1720 ], [ false, %land.lhs.true.1704 ], [ false, %land.lhs.true.1689 ], [ false, %land.lhs.true.1674 ], [ false, %land.lhs.true.1659 ], [ false, %lor.lhs.false.1643 ], [ %lnot1833, %land.end.1832 ]
  br i1 %615, label %while.body.1835, label %while.end.1882

while.body.1835:                                  ; preds = %land.end.1834
  %616 = load %union.rec*, %union.rec** %t, align 8
  %os11836 = bitcast %union.rec* %616 to %struct.word_type*
  %ostring1837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11836, i32 0, i32 4
  %arraydecay1838 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1837, i32 0, i32 0
  %617 = load %union.rec*, %union.rec** %res, align 8
  %618 = load %union.rec*, %union.rec** %t, align 8
  %os11839 = bitcast %union.rec* %618 to %struct.word_type*
  %ou11840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11839, i32 0, i32 1
  %ofpos1841 = bitcast %union.FIRST_UNION* %ou11840 to %struct.FILE_POS*
  call void @InsertAlternativeName(i8* %arraydecay1838, %union.rec* %617, %struct.FILE_POS* %ofpos1841)
  %619 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %619, %union.rec** @zz_hold, align 8
  %620 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %620, %union.rec** @zz_hold, align 8
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11842 = bitcast %union.rec* %621 to %struct.word_type*
  %ou11843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11842, i32 0, i32 1
  %os111844 = bitcast %union.FIRST_UNION* %ou11843 to %struct.anon*
  %otype1845 = getelementptr inbounds %struct.anon, %struct.anon* %os111844, i32 0, i32 0
  %622 = load i8, i8* %otype1845, align 1
  %conv1846 = zext i8 %622 to i32
  %cmp1847 = icmp eq i32 %conv1846, 11
  br i1 %cmp1847, label %cond.true.1857, label %lor.lhs.false.1849

lor.lhs.false.1849:                               ; preds = %while.body.1835
  %623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11850 = bitcast %union.rec* %623 to %struct.word_type*
  %ou11851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11850, i32 0, i32 1
  %os111852 = bitcast %union.FIRST_UNION* %ou11851 to %struct.anon*
  %otype1853 = getelementptr inbounds %struct.anon, %struct.anon* %os111852, i32 0, i32 0
  %624 = load i8, i8* %otype1853, align 1
  %conv1854 = zext i8 %624 to i32
  %cmp1855 = icmp eq i32 %conv1854, 12
  br i1 %cmp1855, label %cond.true.1857, label %cond.false.1863

cond.true.1857:                                   ; preds = %lor.lhs.false.1849, %while.body.1835
  %625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11858 = bitcast %union.rec* %625 to %struct.word_type*
  %ou11859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11858, i32 0, i32 1
  %os111860 = bitcast %union.FIRST_UNION* %ou11859 to %struct.anon*
  %orec_size1861 = getelementptr inbounds %struct.anon, %struct.anon* %os111860, i32 0, i32 1
  %626 = load i8, i8* %orec_size1861, align 1
  %conv1862 = zext i8 %626 to i32
  br label %cond.end.1871

cond.false.1863:                                  ; preds = %lor.lhs.false.1849
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11864 = bitcast %union.rec* %627 to %struct.word_type*
  %ou11865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11864, i32 0, i32 1
  %os111866 = bitcast %union.FIRST_UNION* %ou11865 to %struct.anon*
  %otype1867 = getelementptr inbounds %struct.anon, %struct.anon* %os111866, i32 0, i32 0
  %628 = load i8, i8* %otype1867, align 1
  %idxprom1868 = zext i8 %628 to i64
  %arrayidx1869 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1868
  %629 = load i8, i8* %arrayidx1869, align 1
  %conv1870 = zext i8 %629 to i32
  br label %cond.end.1871

cond.end.1871:                                    ; preds = %cond.false.1863, %cond.true.1857
  %cond1872 = phi i32 [ %conv1862, %cond.true.1857 ], [ %conv1870, %cond.false.1863 ]
  store i32 %cond1872, i32* @zz_size, align 4
  %630 = load i32, i32* @zz_size, align 4
  %idxprom1873 = sext i32 %630 to i64
  %arrayidx1874 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1873
  %631 = load %union.rec*, %union.rec** %arrayidx1874, align 8
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11875 = bitcast %union.rec* %632 to %struct.word_type*
  %olist1876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11875, i32 0, i32 0
  %arrayidx1877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1876, i32 0, i64 0
  %opred1878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1877, i32 0, i32 0
  store %union.rec* %631, %union.rec** %opred1878, align 8
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %634 = load i32, i32* @zz_size, align 4
  %idxprom1879 = sext i32 %634 to i64
  %arrayidx1880 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1879
  store %union.rec* %633, %union.rec** %arrayidx1880, align 8
  %call1881 = call %union.rec* @LexGetToken()
  store %union.rec* %call1881, %union.rec** %t, align 8
  br label %while.cond.1635

while.end.1882:                                   ; preds = %land.end.1834
  %635 = load %union.rec*, %union.rec** %t, align 8
  %os11883 = bitcast %union.rec* %635 to %struct.word_type*
  %ou11884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11883, i32 0, i32 1
  %os111885 = bitcast %union.FIRST_UNION* %ou11884 to %struct.anon*
  %otype1886 = getelementptr inbounds %struct.anon, %struct.anon* %os111885, i32 0, i32 0
  %636 = load i8, i8* %otype1886, align 1
  %conv1887 = zext i8 %636 to i32
  %cmp1888 = icmp eq i32 %conv1887, 11
  br i1 %cmp1888, label %land.lhs.true.1890, label %if.end.1979

land.lhs.true.1890:                               ; preds = %while.end.1882
  %637 = load %union.rec*, %union.rec** %t, align 8
  %os11891 = bitcast %union.rec* %637 to %struct.word_type*
  %ostring1892 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11891, i32 0, i32 4
  %arraydecay1893 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1892, i32 0, i32 0
  %call1894 = call i32 @strcmp(i8* %arraydecay1893, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #3
  %cmp1895 = icmp eq i32 %call1894, 0
  br i1 %cmp1895, label %if.then.1897, label %if.end.1979

if.then.1897:                                     ; preds = %land.lhs.true.1890
  %638 = load %union.rec*, %union.rec** %res, align 8
  %os11898 = bitcast %union.rec* %638 to %struct.word_type*
  %ou21899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11898, i32 0, i32 2
  %os261900 = bitcast %union.SECOND_UNION* %ou21899 to %struct.anon.5*
  %oforce_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261900, i32 0, i32 1
  %639 = bitcast [3 x i8]* %oforce_target to i24*
  %bf.load1901 = load i24, i24* %639, align 1
  %bf.clear1902 = and i24 %bf.load1901, -129
  %bf.set1903 = or i24 %bf.clear1902, 128
  store i24 %bf.set1903, i24* %639, align 1
  %640 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %640, %union.rec** @zz_hold, align 8
  %641 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %641, %union.rec** @zz_hold, align 8
  %642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11904 = bitcast %union.rec* %642 to %struct.word_type*
  %ou11905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11904, i32 0, i32 1
  %os111906 = bitcast %union.FIRST_UNION* %ou11905 to %struct.anon*
  %otype1907 = getelementptr inbounds %struct.anon, %struct.anon* %os111906, i32 0, i32 0
  %643 = load i8, i8* %otype1907, align 1
  %conv1908 = zext i8 %643 to i32
  %cmp1909 = icmp eq i32 %conv1908, 11
  br i1 %cmp1909, label %cond.true.1919, label %lor.lhs.false.1911

lor.lhs.false.1911:                               ; preds = %if.then.1897
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11912 = bitcast %union.rec* %644 to %struct.word_type*
  %ou11913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11912, i32 0, i32 1
  %os111914 = bitcast %union.FIRST_UNION* %ou11913 to %struct.anon*
  %otype1915 = getelementptr inbounds %struct.anon, %struct.anon* %os111914, i32 0, i32 0
  %645 = load i8, i8* %otype1915, align 1
  %conv1916 = zext i8 %645 to i32
  %cmp1917 = icmp eq i32 %conv1916, 12
  br i1 %cmp1917, label %cond.true.1919, label %cond.false.1925

cond.true.1919:                                   ; preds = %lor.lhs.false.1911, %if.then.1897
  %646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11920 = bitcast %union.rec* %646 to %struct.word_type*
  %ou11921 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11920, i32 0, i32 1
  %os111922 = bitcast %union.FIRST_UNION* %ou11921 to %struct.anon*
  %orec_size1923 = getelementptr inbounds %struct.anon, %struct.anon* %os111922, i32 0, i32 1
  %647 = load i8, i8* %orec_size1923, align 1
  %conv1924 = zext i8 %647 to i32
  br label %cond.end.1933

cond.false.1925:                                  ; preds = %lor.lhs.false.1911
  %648 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11926 = bitcast %union.rec* %648 to %struct.word_type*
  %ou11927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11926, i32 0, i32 1
  %os111928 = bitcast %union.FIRST_UNION* %ou11927 to %struct.anon*
  %otype1929 = getelementptr inbounds %struct.anon, %struct.anon* %os111928, i32 0, i32 0
  %649 = load i8, i8* %otype1929, align 1
  %idxprom1930 = zext i8 %649 to i64
  %arrayidx1931 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1930
  %650 = load i8, i8* %arrayidx1931, align 1
  %conv1932 = zext i8 %650 to i32
  br label %cond.end.1933

cond.end.1933:                                    ; preds = %cond.false.1925, %cond.true.1919
  %cond1934 = phi i32 [ %conv1924, %cond.true.1919 ], [ %conv1932, %cond.false.1925 ]
  store i32 %cond1934, i32* @zz_size, align 4
  %651 = load i32, i32* @zz_size, align 4
  %idxprom1935 = sext i32 %651 to i64
  %arrayidx1936 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1935
  %652 = load %union.rec*, %union.rec** %arrayidx1936, align 8
  %653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11937 = bitcast %union.rec* %653 to %struct.word_type*
  %olist1938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11937, i32 0, i32 0
  %arrayidx1939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1938, i32 0, i64 0
  %opred1940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1939, i32 0, i32 0
  store %union.rec* %652, %union.rec** %opred1940, align 8
  %654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %655 = load i32, i32* @zz_size, align 4
  %idxprom1941 = sext i32 %655 to i64
  %arrayidx1942 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1941
  store %union.rec* %654, %union.rec** %arrayidx1942, align 8
  %call1943 = call %union.rec* @LexGetToken()
  store %union.rec* %call1943, %union.rec** %t, align 8
  %656 = load %union.rec*, %union.rec** %t, align 8
  %os11944 = bitcast %union.rec* %656 to %struct.word_type*
  %ou11945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11944, i32 0, i32 1
  %os111946 = bitcast %union.FIRST_UNION* %ou11945 to %struct.anon*
  %otype1947 = getelementptr inbounds %struct.anon, %struct.anon* %os111946, i32 0, i32 0
  %657 = load i8, i8* %otype1947, align 1
  %conv1948 = zext i8 %657 to i32
  %cmp1949 = icmp eq i32 %conv1948, 11
  br i1 %cmp1949, label %land.lhs.true.1951, label %land.lhs.true.1958

land.lhs.true.1951:                               ; preds = %cond.end.1933
  %658 = load %union.rec*, %union.rec** %t, align 8
  %os11952 = bitcast %union.rec* %658 to %struct.word_type*
  %ostring1953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11952, i32 0, i32 4
  %arraydecay1954 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1953, i32 0, i32 0
  %call1955 = call i32 @strcmp(i8* %arraydecay1954, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #3
  %cmp1956 = icmp eq i32 %call1955, 0
  br i1 %cmp1956, label %if.end.1978, label %land.lhs.true.1958

land.lhs.true.1958:                               ; preds = %land.lhs.true.1951, %cond.end.1933
  %659 = load %union.rec*, %union.rec** %t, align 8
  %os11959 = bitcast %union.rec* %659 to %struct.word_type*
  %ou11960 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11959, i32 0, i32 1
  %os111961 = bitcast %union.FIRST_UNION* %ou11960 to %struct.anon*
  %otype1962 = getelementptr inbounds %struct.anon, %struct.anon* %os111961, i32 0, i32 0
  %660 = load i8, i8* %otype1962, align 1
  %conv1963 = zext i8 %660 to i32
  %cmp1964 = icmp eq i32 %conv1963, 11
  br i1 %cmp1964, label %land.lhs.true.1966, label %if.then.1973

land.lhs.true.1966:                               ; preds = %land.lhs.true.1958
  %661 = load %union.rec*, %union.rec** %t, align 8
  %os11967 = bitcast %union.rec* %661 to %struct.word_type*
  %ostring1968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11967, i32 0, i32 4
  %arraydecay1969 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1968, i32 0, i32 0
  %call1970 = call i32 @strcmp(i8* %arraydecay1969, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #3
  %cmp1971 = icmp eq i32 %call1970, 0
  br i1 %cmp1971, label %if.end.1978, label %if.then.1973

if.then.1973:                                     ; preds = %land.lhs.true.1966, %land.lhs.true.1958
  %662 = load %union.rec*, %union.rec** %t, align 8
  %os11974 = bitcast %union.rec* %662 to %struct.word_type*
  %ou11975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11974, i32 0, i32 1
  %ofpos1976 = bitcast %union.FIRST_UNION* %ou11975 to %struct.FILE_POS*
  %call1977 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1976, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.1978

if.end.1978:                                      ; preds = %if.then.1973, %land.lhs.true.1966, %land.lhs.true.1951
  br label %if.end.1979

if.end.1979:                                      ; preds = %if.end.1978, %land.lhs.true.1890, %while.end.1882
  %663 = load %union.rec*, %union.rec** %t, align 8
  %os11980 = bitcast %union.rec* %663 to %struct.word_type*
  %ou11981 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11980, i32 0, i32 1
  %os111982 = bitcast %union.FIRST_UNION* %ou11981 to %struct.anon*
  %otype1983 = getelementptr inbounds %struct.anon, %struct.anon* %os111982, i32 0, i32 0
  %664 = load i8, i8* %otype1983, align 1
  %conv1984 = zext i8 %664 to i32
  %cmp1985 = icmp eq i32 %conv1984, 11
  br i1 %cmp1985, label %land.lhs.true.1987, label %if.end.2040

land.lhs.true.1987:                               ; preds = %if.end.1979
  %665 = load %union.rec*, %union.rec** %t, align 8
  %os11988 = bitcast %union.rec* %665 to %struct.word_type*
  %ostring1989 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11988, i32 0, i32 4
  %arraydecay1990 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1989, i32 0, i32 0
  %call1991 = call i32 @strcmp(i8* %arraydecay1990, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #3
  %cmp1992 = icmp eq i32 %call1991, 0
  br i1 %cmp1992, label %if.then.1994, label %if.end.2040

if.then.1994:                                     ; preds = %land.lhs.true.1987
  %666 = load %union.rec*, %union.rec** %res, align 8
  %os11995 = bitcast %union.rec* %666 to %struct.word_type*
  %ou21996 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11995, i32 0, i32 2
  %os261997 = bitcast %union.SECOND_UNION* %ou21996 to %struct.anon.5*
  %ohoriz_galley = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os261997, i32 0, i32 1
  %667 = bitcast [3 x i8]* %ohoriz_galley to i24*
  %bf.load1998 = load i24, i24* %667, align 1
  %bf.clear1999 = and i24 %bf.load1998, -2097153
  store i24 %bf.clear1999, i24* %667, align 1
  %668 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %668, %union.rec** @zz_hold, align 8
  %669 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %669, %union.rec** @zz_hold, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12000 = bitcast %union.rec* %670 to %struct.word_type*
  %ou12001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12000, i32 0, i32 1
  %os112002 = bitcast %union.FIRST_UNION* %ou12001 to %struct.anon*
  %otype2003 = getelementptr inbounds %struct.anon, %struct.anon* %os112002, i32 0, i32 0
  %671 = load i8, i8* %otype2003, align 1
  %conv2004 = zext i8 %671 to i32
  %cmp2005 = icmp eq i32 %conv2004, 11
  br i1 %cmp2005, label %cond.true.2015, label %lor.lhs.false.2007

lor.lhs.false.2007:                               ; preds = %if.then.1994
  %672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12008 = bitcast %union.rec* %672 to %struct.word_type*
  %ou12009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12008, i32 0, i32 1
  %os112010 = bitcast %union.FIRST_UNION* %ou12009 to %struct.anon*
  %otype2011 = getelementptr inbounds %struct.anon, %struct.anon* %os112010, i32 0, i32 0
  %673 = load i8, i8* %otype2011, align 1
  %conv2012 = zext i8 %673 to i32
  %cmp2013 = icmp eq i32 %conv2012, 12
  br i1 %cmp2013, label %cond.true.2015, label %cond.false.2021

cond.true.2015:                                   ; preds = %lor.lhs.false.2007, %if.then.1994
  %674 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12016 = bitcast %union.rec* %674 to %struct.word_type*
  %ou12017 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12016, i32 0, i32 1
  %os112018 = bitcast %union.FIRST_UNION* %ou12017 to %struct.anon*
  %orec_size2019 = getelementptr inbounds %struct.anon, %struct.anon* %os112018, i32 0, i32 1
  %675 = load i8, i8* %orec_size2019, align 1
  %conv2020 = zext i8 %675 to i32
  br label %cond.end.2029

cond.false.2021:                                  ; preds = %lor.lhs.false.2007
  %676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12022 = bitcast %union.rec* %676 to %struct.word_type*
  %ou12023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12022, i32 0, i32 1
  %os112024 = bitcast %union.FIRST_UNION* %ou12023 to %struct.anon*
  %otype2025 = getelementptr inbounds %struct.anon, %struct.anon* %os112024, i32 0, i32 0
  %677 = load i8, i8* %otype2025, align 1
  %idxprom2026 = zext i8 %677 to i64
  %arrayidx2027 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2026
  %678 = load i8, i8* %arrayidx2027, align 1
  %conv2028 = zext i8 %678 to i32
  br label %cond.end.2029

cond.end.2029:                                    ; preds = %cond.false.2021, %cond.true.2015
  %cond2030 = phi i32 [ %conv2020, %cond.true.2015 ], [ %conv2028, %cond.false.2021 ]
  store i32 %cond2030, i32* @zz_size, align 4
  %679 = load i32, i32* @zz_size, align 4
  %idxprom2031 = sext i32 %679 to i64
  %arrayidx2032 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2031
  %680 = load %union.rec*, %union.rec** %arrayidx2032, align 8
  %681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12033 = bitcast %union.rec* %681 to %struct.word_type*
  %olist2034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12033, i32 0, i32 0
  %arrayidx2035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2034, i32 0, i64 0
  %opred2036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2035, i32 0, i32 0
  store %union.rec* %680, %union.rec** %opred2036, align 8
  %682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %683 = load i32, i32* @zz_size, align 4
  %idxprom2037 = sext i32 %683 to i64
  %arrayidx2038 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2037
  store %union.rec* %682, %union.rec** %arrayidx2038, align 8
  %call2039 = call %union.rec* @LexGetToken()
  store %union.rec* %call2039, %union.rec** %t, align 8
  br label %if.end.2040

if.end.2040:                                      ; preds = %cond.end.2029, %land.lhs.true.1987, %if.end.1979
  store %union.rec* null, %union.rec** %res_target, align 8
  %684 = load %union.rec*, %union.rec** %t, align 8
  %os12041 = bitcast %union.rec* %684 to %struct.word_type*
  %ou12042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12041, i32 0, i32 1
  %os112043 = bitcast %union.FIRST_UNION* %ou12042 to %struct.anon*
  %otype2044 = getelementptr inbounds %struct.anon, %struct.anon* %os112043, i32 0, i32 0
  %685 = load i8, i8* %otype2044, align 1
  %conv2045 = zext i8 %685 to i32
  %cmp2046 = icmp eq i32 %conv2045, 11
  br i1 %cmp2046, label %land.lhs.true.2048, label %if.end.2115

land.lhs.true.2048:                               ; preds = %if.end.2040
  %686 = load %union.rec*, %union.rec** %t, align 8
  %os12049 = bitcast %union.rec* %686 to %struct.word_type*
  %ostring2050 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12049, i32 0, i32 4
  %arraydecay2051 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2050, i32 0, i32 0
  %call2052 = call i32 @strcmp(i8* %arraydecay2051, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #3
  %cmp2053 = icmp eq i32 %call2052, 0
  br i1 %cmp2053, label %if.then.2055, label %if.end.2115

if.then.2055:                                     ; preds = %land.lhs.true.2048
  call void @UnSuppressScope()
  %687 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %687, %union.rec** @zz_hold, align 8
  %688 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %688, %union.rec** @zz_hold, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12056 = bitcast %union.rec* %689 to %struct.word_type*
  %ou12057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12056, i32 0, i32 1
  %os112058 = bitcast %union.FIRST_UNION* %ou12057 to %struct.anon*
  %otype2059 = getelementptr inbounds %struct.anon, %struct.anon* %os112058, i32 0, i32 0
  %690 = load i8, i8* %otype2059, align 1
  %conv2060 = zext i8 %690 to i32
  %cmp2061 = icmp eq i32 %conv2060, 11
  br i1 %cmp2061, label %cond.true.2071, label %lor.lhs.false.2063

lor.lhs.false.2063:                               ; preds = %if.then.2055
  %691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12064 = bitcast %union.rec* %691 to %struct.word_type*
  %ou12065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12064, i32 0, i32 1
  %os112066 = bitcast %union.FIRST_UNION* %ou12065 to %struct.anon*
  %otype2067 = getelementptr inbounds %struct.anon, %struct.anon* %os112066, i32 0, i32 0
  %692 = load i8, i8* %otype2067, align 1
  %conv2068 = zext i8 %692 to i32
  %cmp2069 = icmp eq i32 %conv2068, 12
  br i1 %cmp2069, label %cond.true.2071, label %cond.false.2077

cond.true.2071:                                   ; preds = %lor.lhs.false.2063, %if.then.2055
  %693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12072 = bitcast %union.rec* %693 to %struct.word_type*
  %ou12073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12072, i32 0, i32 1
  %os112074 = bitcast %union.FIRST_UNION* %ou12073 to %struct.anon*
  %orec_size2075 = getelementptr inbounds %struct.anon, %struct.anon* %os112074, i32 0, i32 1
  %694 = load i8, i8* %orec_size2075, align 1
  %conv2076 = zext i8 %694 to i32
  br label %cond.end.2085

cond.false.2077:                                  ; preds = %lor.lhs.false.2063
  %695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12078 = bitcast %union.rec* %695 to %struct.word_type*
  %ou12079 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12078, i32 0, i32 1
  %os112080 = bitcast %union.FIRST_UNION* %ou12079 to %struct.anon*
  %otype2081 = getelementptr inbounds %struct.anon, %struct.anon* %os112080, i32 0, i32 0
  %696 = load i8, i8* %otype2081, align 1
  %idxprom2082 = zext i8 %696 to i64
  %arrayidx2083 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2082
  %697 = load i8, i8* %arrayidx2083, align 1
  %conv2084 = zext i8 %697 to i32
  br label %cond.end.2085

cond.end.2085:                                    ; preds = %cond.false.2077, %cond.true.2071
  %cond2086 = phi i32 [ %conv2076, %cond.true.2071 ], [ %conv2084, %cond.false.2077 ]
  store i32 %cond2086, i32* @zz_size, align 4
  %698 = load i32, i32* @zz_size, align 4
  %idxprom2087 = sext i32 %698 to i64
  %arrayidx2088 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2087
  %699 = load %union.rec*, %union.rec** %arrayidx2088, align 8
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12089 = bitcast %union.rec* %700 to %struct.word_type*
  %olist2090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12089, i32 0, i32 0
  %arrayidx2091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2090, i32 0, i64 0
  %opred2092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2091, i32 0, i32 0
  store %union.rec* %699, %union.rec** %opred2092, align 8
  %701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %702 = load i32, i32* @zz_size, align 4
  %idxprom2093 = sext i32 %702 to i64
  %arrayidx2094 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2093
  store %union.rec* %701, %union.rec** %arrayidx2094, align 8
  %call2095 = call %union.rec* @LexGetToken()
  store %union.rec* %call2095, %union.rec** %t, align 8
  %703 = load %union.rec*, %union.rec** %t, align 8
  %os12096 = bitcast %union.rec* %703 to %struct.word_type*
  %ou12097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12096, i32 0, i32 1
  %os112098 = bitcast %union.FIRST_UNION* %ou12097 to %struct.anon*
  %otype2099 = getelementptr inbounds %struct.anon, %struct.anon* %os112098, i32 0, i32 0
  %704 = load i8, i8* %otype2099, align 1
  %conv2100 = zext i8 %704 to i32
  %cmp2101 = icmp ne i32 %conv2100, 102
  br i1 %cmp2101, label %if.then.2103, label %if.end.2108

if.then.2103:                                     ; preds = %cond.end.2085
  %705 = load %union.rec*, %union.rec** %t, align 8
  %os12104 = bitcast %union.rec* %705 to %struct.word_type*
  %ou12105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12104, i32 0, i32 1
  %ofpos2106 = bitcast %union.FIRST_UNION* %ou12105 to %struct.FILE_POS*
  %call2107 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  call void @UnSuppressScope()
  %706 = load %union.rec*, %union.rec** %t, align 8
  %707 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* %706, %union.rec** %707, align 8
  br label %return

if.end.2108:                                      ; preds = %cond.end.2085
  %708 = load %union.rec*, %union.rec** %curr_encl, align 8
  %call2109 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %708, i32 0, i32 0)
  store %union.rec* %call2109, %union.rec** %res_target, align 8
  call void @SuppressScope()
  %709 = load %union.rec*, %union.rec** %t, align 8
  %cmp2110 = icmp eq %union.rec* %709, null
  br i1 %cmp2110, label %if.then.2112, label %if.end.2114

if.then.2112:                                     ; preds = %if.end.2108
  %call2113 = call %union.rec* @LexGetToken()
  store %union.rec* %call2113, %union.rec** %t, align 8
  br label %if.end.2114

if.end.2114:                                      ; preds = %if.then.2112, %if.end.2108
  br label %if.end.2115

if.end.2115:                                      ; preds = %if.end.2114, %land.lhs.true.2048, %if.end.2040
  %710 = load %union.rec*, %union.rec** %t, align 8
  %os12116 = bitcast %union.rec* %710 to %struct.word_type*
  %ou12117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12116, i32 0, i32 1
  %os112118 = bitcast %union.FIRST_UNION* %ou12117 to %struct.anon*
  %otype2119 = getelementptr inbounds %struct.anon, %struct.anon* %os112118, i32 0, i32 0
  %711 = load i8, i8* %otype2119, align 1
  %conv2120 = zext i8 %711 to i32
  %cmp2121 = icmp eq i32 %conv2120, 11
  br i1 %cmp2121, label %land.lhs.true.2123, label %if.end.2261

land.lhs.true.2123:                               ; preds = %if.end.2115
  %712 = load %union.rec*, %union.rec** %t, align 8
  %os12124 = bitcast %union.rec* %712 to %struct.word_type*
  %ostring2125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12124, i32 0, i32 4
  %arraydecay2126 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2125, i32 0, i32 0
  %call2127 = call i32 @strcmp(i8* %arraydecay2126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #3
  %cmp2128 = icmp eq i32 %call2127, 0
  br i1 %cmp2128, label %if.then.2130, label %if.end.2261

if.then.2130:                                     ; preds = %land.lhs.true.2123
  store i32 0, i32* %prec, align 4
  %713 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %713, %union.rec** @zz_hold, align 8
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %714, %union.rec** @zz_hold, align 8
  %715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12131 = bitcast %union.rec* %715 to %struct.word_type*
  %ou12132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12131, i32 0, i32 1
  %os112133 = bitcast %union.FIRST_UNION* %ou12132 to %struct.anon*
  %otype2134 = getelementptr inbounds %struct.anon, %struct.anon* %os112133, i32 0, i32 0
  %716 = load i8, i8* %otype2134, align 1
  %conv2135 = zext i8 %716 to i32
  %cmp2136 = icmp eq i32 %conv2135, 11
  br i1 %cmp2136, label %cond.true.2146, label %lor.lhs.false.2138

lor.lhs.false.2138:                               ; preds = %if.then.2130
  %717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12139 = bitcast %union.rec* %717 to %struct.word_type*
  %ou12140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12139, i32 0, i32 1
  %os112141 = bitcast %union.FIRST_UNION* %ou12140 to %struct.anon*
  %otype2142 = getelementptr inbounds %struct.anon, %struct.anon* %os112141, i32 0, i32 0
  %718 = load i8, i8* %otype2142, align 1
  %conv2143 = zext i8 %718 to i32
  %cmp2144 = icmp eq i32 %conv2143, 12
  br i1 %cmp2144, label %cond.true.2146, label %cond.false.2152

cond.true.2146:                                   ; preds = %lor.lhs.false.2138, %if.then.2130
  %719 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12147 = bitcast %union.rec* %719 to %struct.word_type*
  %ou12148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12147, i32 0, i32 1
  %os112149 = bitcast %union.FIRST_UNION* %ou12148 to %struct.anon*
  %orec_size2150 = getelementptr inbounds %struct.anon, %struct.anon* %os112149, i32 0, i32 1
  %720 = load i8, i8* %orec_size2150, align 1
  %conv2151 = zext i8 %720 to i32
  br label %cond.end.2160

cond.false.2152:                                  ; preds = %lor.lhs.false.2138
  %721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12153 = bitcast %union.rec* %721 to %struct.word_type*
  %ou12154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12153, i32 0, i32 1
  %os112155 = bitcast %union.FIRST_UNION* %ou12154 to %struct.anon*
  %otype2156 = getelementptr inbounds %struct.anon, %struct.anon* %os112155, i32 0, i32 0
  %722 = load i8, i8* %otype2156, align 1
  %idxprom2157 = zext i8 %722 to i64
  %arrayidx2158 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2157
  %723 = load i8, i8* %arrayidx2158, align 1
  %conv2159 = zext i8 %723 to i32
  br label %cond.end.2160

cond.end.2160:                                    ; preds = %cond.false.2152, %cond.true.2146
  %cond2161 = phi i32 [ %conv2151, %cond.true.2146 ], [ %conv2159, %cond.false.2152 ]
  store i32 %cond2161, i32* @zz_size, align 4
  %724 = load i32, i32* @zz_size, align 4
  %idxprom2162 = sext i32 %724 to i64
  %arrayidx2163 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2162
  %725 = load %union.rec*, %union.rec** %arrayidx2163, align 8
  %726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12164 = bitcast %union.rec* %726 to %struct.word_type*
  %olist2165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12164, i32 0, i32 0
  %arrayidx2166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2165, i32 0, i64 0
  %opred2167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2166, i32 0, i32 0
  store %union.rec* %725, %union.rec** %opred2167, align 8
  %727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %728 = load i32, i32* @zz_size, align 4
  %idxprom2168 = sext i32 %728 to i64
  %arrayidx2169 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2168
  store %union.rec* %727, %union.rec** %arrayidx2169, align 8
  %call2170 = call %union.rec* @LexGetToken()
  store %union.rec* %call2170, %union.rec** %t, align 8
  br label %while.cond.2171

while.cond.2171:                                  ; preds = %cond.end.2229, %cond.end.2160
  %729 = load %union.rec*, %union.rec** %t, align 8
  %os12172 = bitcast %union.rec* %729 to %struct.word_type*
  %ou12173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12172, i32 0, i32 1
  %os112174 = bitcast %union.FIRST_UNION* %ou12173 to %struct.anon*
  %otype2175 = getelementptr inbounds %struct.anon, %struct.anon* %os112174, i32 0, i32 0
  %730 = load i8, i8* %otype2175, align 1
  %conv2176 = zext i8 %730 to i32
  %cmp2177 = icmp eq i32 %conv2176, 11
  br i1 %cmp2177, label %land.rhs.2179, label %land.end.2194

land.rhs.2179:                                    ; preds = %while.cond.2171
  %731 = load %union.rec*, %union.rec** %t, align 8
  %os12180 = bitcast %union.rec* %731 to %struct.word_type*
  %ostring2181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12180, i32 0, i32 4
  %arrayidx2182 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2181, i32 0, i64 0
  %732 = load i8, i8* %arrayidx2182, align 1
  %conv2183 = zext i8 %732 to i32
  %cmp2184 = icmp sge i32 %conv2183, 48
  br i1 %cmp2184, label %land.rhs.2186, label %land.end.2193

land.rhs.2186:                                    ; preds = %land.rhs.2179
  %733 = load %union.rec*, %union.rec** %t, align 8
  %os12187 = bitcast %union.rec* %733 to %struct.word_type*
  %ostring2188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12187, i32 0, i32 4
  %arrayidx2189 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2188, i32 0, i64 0
  %734 = load i8, i8* %arrayidx2189, align 1
  %conv2190 = zext i8 %734 to i32
  %cmp2191 = icmp sle i32 %conv2190, 57
  br label %land.end.2193

land.end.2193:                                    ; preds = %land.rhs.2186, %land.rhs.2179
  %735 = phi i1 [ false, %land.rhs.2179 ], [ %cmp2191, %land.rhs.2186 ]
  br label %land.end.2194

land.end.2194:                                    ; preds = %land.end.2193, %while.cond.2171
  %736 = phi i1 [ false, %while.cond.2171 ], [ %735, %land.end.2193 ]
  br i1 %736, label %while.body.2195, label %while.end.2240

while.body.2195:                                  ; preds = %land.end.2194
  %737 = load i32, i32* %prec, align 4
  %mul = mul nsw i32 %737, 10
  %738 = load %union.rec*, %union.rec** %t, align 8
  %os12196 = bitcast %union.rec* %738 to %struct.word_type*
  %ostring2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12196, i32 0, i32 4
  %arrayidx2198 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2197, i32 0, i64 0
  %739 = load i8, i8* %arrayidx2198, align 1
  %conv2199 = zext i8 %739 to i32
  %sub = sub nsw i32 %conv2199, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %prec, align 4
  %740 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %740, %union.rec** @zz_hold, align 8
  %741 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %741, %union.rec** @zz_hold, align 8
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12200 = bitcast %union.rec* %742 to %struct.word_type*
  %ou12201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12200, i32 0, i32 1
  %os112202 = bitcast %union.FIRST_UNION* %ou12201 to %struct.anon*
  %otype2203 = getelementptr inbounds %struct.anon, %struct.anon* %os112202, i32 0, i32 0
  %743 = load i8, i8* %otype2203, align 1
  %conv2204 = zext i8 %743 to i32
  %cmp2205 = icmp eq i32 %conv2204, 11
  br i1 %cmp2205, label %cond.true.2215, label %lor.lhs.false.2207

lor.lhs.false.2207:                               ; preds = %while.body.2195
  %744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12208 = bitcast %union.rec* %744 to %struct.word_type*
  %ou12209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12208, i32 0, i32 1
  %os112210 = bitcast %union.FIRST_UNION* %ou12209 to %struct.anon*
  %otype2211 = getelementptr inbounds %struct.anon, %struct.anon* %os112210, i32 0, i32 0
  %745 = load i8, i8* %otype2211, align 1
  %conv2212 = zext i8 %745 to i32
  %cmp2213 = icmp eq i32 %conv2212, 12
  br i1 %cmp2213, label %cond.true.2215, label %cond.false.2221

cond.true.2215:                                   ; preds = %lor.lhs.false.2207, %while.body.2195
  %746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12216 = bitcast %union.rec* %746 to %struct.word_type*
  %ou12217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12216, i32 0, i32 1
  %os112218 = bitcast %union.FIRST_UNION* %ou12217 to %struct.anon*
  %orec_size2219 = getelementptr inbounds %struct.anon, %struct.anon* %os112218, i32 0, i32 1
  %747 = load i8, i8* %orec_size2219, align 1
  %conv2220 = zext i8 %747 to i32
  br label %cond.end.2229

cond.false.2221:                                  ; preds = %lor.lhs.false.2207
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12222 = bitcast %union.rec* %748 to %struct.word_type*
  %ou12223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12222, i32 0, i32 1
  %os112224 = bitcast %union.FIRST_UNION* %ou12223 to %struct.anon*
  %otype2225 = getelementptr inbounds %struct.anon, %struct.anon* %os112224, i32 0, i32 0
  %749 = load i8, i8* %otype2225, align 1
  %idxprom2226 = zext i8 %749 to i64
  %arrayidx2227 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2226
  %750 = load i8, i8* %arrayidx2227, align 1
  %conv2228 = zext i8 %750 to i32
  br label %cond.end.2229

cond.end.2229:                                    ; preds = %cond.false.2221, %cond.true.2215
  %cond2230 = phi i32 [ %conv2220, %cond.true.2215 ], [ %conv2228, %cond.false.2221 ]
  store i32 %cond2230, i32* @zz_size, align 4
  %751 = load i32, i32* @zz_size, align 4
  %idxprom2231 = sext i32 %751 to i64
  %arrayidx2232 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2231
  %752 = load %union.rec*, %union.rec** %arrayidx2232, align 8
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12233 = bitcast %union.rec* %753 to %struct.word_type*
  %olist2234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12233, i32 0, i32 0
  %arrayidx2235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2234, i32 0, i64 0
  %opred2236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2235, i32 0, i32 0
  store %union.rec* %752, %union.rec** %opred2236, align 8
  %754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %755 = load i32, i32* @zz_size, align 4
  %idxprom2237 = sext i32 %755 to i64
  %arrayidx2238 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2237
  store %union.rec* %754, %union.rec** %arrayidx2238, align 8
  %call2239 = call %union.rec* @LexGetToken()
  store %union.rec* %call2239, %union.rec** %t, align 8
  br label %while.cond.2171

while.end.2240:                                   ; preds = %land.end.2194
  %756 = load i32, i32* %prec, align 4
  %cmp2241 = icmp slt i32 %756, 10
  br i1 %cmp2241, label %if.then.2243, label %if.else.2248

if.then.2243:                                     ; preds = %while.end.2240
  %757 = load %union.rec*, %union.rec** %t, align 8
  %os12244 = bitcast %union.rec* %757 to %struct.word_type*
  %ou12245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12244, i32 0, i32 1
  %ofpos2246 = bitcast %union.FIRST_UNION* %ou12245 to %struct.FILE_POS*
  %call2247 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2246, i32 10)
  store i32 10, i32* %prec, align 4
  br label %if.end.2257

if.else.2248:                                     ; preds = %while.end.2240
  %758 = load i32, i32* %prec, align 4
  %cmp2249 = icmp sgt i32 %758, 100
  br i1 %cmp2249, label %if.then.2251, label %if.end.2256

if.then.2251:                                     ; preds = %if.else.2248
  %759 = load %union.rec*, %union.rec** %t, align 8
  %os12252 = bitcast %union.rec* %759 to %struct.word_type*
  %ou12253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12252, i32 0, i32 1
  %ofpos2254 = bitcast %union.FIRST_UNION* %ou12253 to %struct.FILE_POS*
  %call2255 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2254, i32 100)
  store i32 100, i32* %prec, align 4
  br label %if.end.2256

if.end.2256:                                      ; preds = %if.then.2251, %if.else.2248
  br label %if.end.2257

if.end.2257:                                      ; preds = %if.end.2256, %if.then.2243
  %760 = load i32, i32* %prec, align 4
  %conv2258 = trunc i32 %760 to i8
  %761 = load %union.rec*, %union.rec** %res, align 8
  %os12259 = bitcast %union.rec* %761 to %struct.word_type*
  %ou22260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12259, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou22260 to %struct.anon.0*
  %oprecedence = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 0
  store i8 %conv2258, i8* %oprecedence, align 1
  br label %if.end.2261

if.end.2261:                                      ; preds = %if.end.2257, %land.lhs.true.2123, %if.end.2115
  %762 = load %union.rec*, %union.rec** %t, align 8
  %os12262 = bitcast %union.rec* %762 to %struct.word_type*
  %ou12263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12262, i32 0, i32 1
  %os112264 = bitcast %union.FIRST_UNION* %ou12263 to %struct.anon*
  %otype2265 = getelementptr inbounds %struct.anon, %struct.anon* %os112264, i32 0, i32 0
  %763 = load i8, i8* %otype2265, align 1
  %conv2266 = zext i8 %763 to i32
  %cmp2267 = icmp eq i32 %conv2266, 11
  br i1 %cmp2267, label %land.lhs.true.2269, label %if.end.2399

land.lhs.true.2269:                               ; preds = %if.end.2261
  %764 = load %union.rec*, %union.rec** %t, align 8
  %os12270 = bitcast %union.rec* %764 to %struct.word_type*
  %ostring2271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12270, i32 0, i32 4
  %arraydecay2272 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2271, i32 0, i32 0
  %call2273 = call i32 @strcmp(i8* %arraydecay2272, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0)) #3
  %cmp2274 = icmp eq i32 %call2273, 0
  br i1 %cmp2274, label %if.then.2276, label %if.end.2399

if.then.2276:                                     ; preds = %land.lhs.true.2269
  %765 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %765, %union.rec** @zz_hold, align 8
  %766 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %766, %union.rec** @zz_hold, align 8
  %767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12277 = bitcast %union.rec* %767 to %struct.word_type*
  %ou12278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12277, i32 0, i32 1
  %os112279 = bitcast %union.FIRST_UNION* %ou12278 to %struct.anon*
  %otype2280 = getelementptr inbounds %struct.anon, %struct.anon* %os112279, i32 0, i32 0
  %768 = load i8, i8* %otype2280, align 1
  %conv2281 = zext i8 %768 to i32
  %cmp2282 = icmp eq i32 %conv2281, 11
  br i1 %cmp2282, label %cond.true.2292, label %lor.lhs.false.2284

lor.lhs.false.2284:                               ; preds = %if.then.2276
  %769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12285 = bitcast %union.rec* %769 to %struct.word_type*
  %ou12286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12285, i32 0, i32 1
  %os112287 = bitcast %union.FIRST_UNION* %ou12286 to %struct.anon*
  %otype2288 = getelementptr inbounds %struct.anon, %struct.anon* %os112287, i32 0, i32 0
  %770 = load i8, i8* %otype2288, align 1
  %conv2289 = zext i8 %770 to i32
  %cmp2290 = icmp eq i32 %conv2289, 12
  br i1 %cmp2290, label %cond.true.2292, label %cond.false.2298

cond.true.2292:                                   ; preds = %lor.lhs.false.2284, %if.then.2276
  %771 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12293 = bitcast %union.rec* %771 to %struct.word_type*
  %ou12294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12293, i32 0, i32 1
  %os112295 = bitcast %union.FIRST_UNION* %ou12294 to %struct.anon*
  %orec_size2296 = getelementptr inbounds %struct.anon, %struct.anon* %os112295, i32 0, i32 1
  %772 = load i8, i8* %orec_size2296, align 1
  %conv2297 = zext i8 %772 to i32
  br label %cond.end.2306

cond.false.2298:                                  ; preds = %lor.lhs.false.2284
  %773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12299 = bitcast %union.rec* %773 to %struct.word_type*
  %ou12300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12299, i32 0, i32 1
  %os112301 = bitcast %union.FIRST_UNION* %ou12300 to %struct.anon*
  %otype2302 = getelementptr inbounds %struct.anon, %struct.anon* %os112301, i32 0, i32 0
  %774 = load i8, i8* %otype2302, align 1
  %idxprom2303 = zext i8 %774 to i64
  %arrayidx2304 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2303
  %775 = load i8, i8* %arrayidx2304, align 1
  %conv2305 = zext i8 %775 to i32
  br label %cond.end.2306

cond.end.2306:                                    ; preds = %cond.false.2298, %cond.true.2292
  %cond2307 = phi i32 [ %conv2297, %cond.true.2292 ], [ %conv2305, %cond.false.2298 ]
  store i32 %cond2307, i32* @zz_size, align 4
  %776 = load i32, i32* @zz_size, align 4
  %idxprom2308 = sext i32 %776 to i64
  %arrayidx2309 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2308
  %777 = load %union.rec*, %union.rec** %arrayidx2309, align 8
  %778 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12310 = bitcast %union.rec* %778 to %struct.word_type*
  %olist2311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12310, i32 0, i32 0
  %arrayidx2312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2311, i32 0, i64 0
  %opred2313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2312, i32 0, i32 0
  store %union.rec* %777, %union.rec** %opred2313, align 8
  %779 = load %union.rec*, %union.rec** @zz_hold, align 8
  %780 = load i32, i32* @zz_size, align 4
  %idxprom2314 = sext i32 %780 to i64
  %arrayidx2315 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2314
  store %union.rec* %779, %union.rec** %arrayidx2315, align 8
  %call2316 = call %union.rec* @LexGetToken()
  store %union.rec* %call2316, %union.rec** %t, align 8
  %781 = load %union.rec*, %union.rec** %t, align 8
  %os12317 = bitcast %union.rec* %781 to %struct.word_type*
  %ou12318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12317, i32 0, i32 1
  %os112319 = bitcast %union.FIRST_UNION* %ou12318 to %struct.anon*
  %otype2320 = getelementptr inbounds %struct.anon, %struct.anon* %os112319, i32 0, i32 0
  %782 = load i8, i8* %otype2320, align 1
  %conv2321 = zext i8 %782 to i32
  %cmp2322 = icmp eq i32 %conv2321, 11
  br i1 %cmp2322, label %land.lhs.true.2324, label %if.else.2337

land.lhs.true.2324:                               ; preds = %cond.end.2306
  %783 = load %union.rec*, %union.rec** %t, align 8
  %os12325 = bitcast %union.rec* %783 to %struct.word_type*
  %ostring2326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12325, i32 0, i32 4
  %arraydecay2327 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2326, i32 0, i32 0
  %call2328 = call i32 @strcmp(i8* %arraydecay2327, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #3
  %cmp2329 = icmp eq i32 %call2328, 0
  br i1 %cmp2329, label %if.then.2331, label %if.else.2337

if.then.2331:                                     ; preds = %land.lhs.true.2324
  %784 = load %union.rec*, %union.rec** %res, align 8
  %os12332 = bitcast %union.rec* %784 to %struct.word_type*
  %ou22333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12332, i32 0, i32 2
  %os262334 = bitcast %union.SECOND_UNION* %ou22333 to %struct.anon.5*
  %oright_assoc = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os262334, i32 0, i32 1
  %785 = bitcast [3 x i8]* %oright_assoc to i24*
  %bf.load2335 = load i24, i24* %785, align 1
  %bf.clear2336 = and i24 %bf.load2335, -17
  store i24 %bf.clear2336, i24* %785, align 1
  br label %if.end.2358

if.else.2337:                                     ; preds = %land.lhs.true.2324, %cond.end.2306
  %786 = load %union.rec*, %union.rec** %t, align 8
  %os12338 = bitcast %union.rec* %786 to %struct.word_type*
  %ou12339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12338, i32 0, i32 1
  %os112340 = bitcast %union.FIRST_UNION* %ou12339 to %struct.anon*
  %otype2341 = getelementptr inbounds %struct.anon, %struct.anon* %os112340, i32 0, i32 0
  %787 = load i8, i8* %otype2341, align 1
  %conv2342 = zext i8 %787 to i32
  %cmp2343 = icmp eq i32 %conv2342, 11
  br i1 %cmp2343, label %land.lhs.true.2345, label %if.then.2352

land.lhs.true.2345:                               ; preds = %if.else.2337
  %788 = load %union.rec*, %union.rec** %t, align 8
  %os12346 = bitcast %union.rec* %788 to %struct.word_type*
  %ostring2347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12346, i32 0, i32 4
  %arraydecay2348 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2347, i32 0, i32 0
  %call2349 = call i32 @strcmp(i8* %arraydecay2348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #3
  %cmp2350 = icmp eq i32 %call2349, 0
  br i1 %cmp2350, label %if.end.2357, label %if.then.2352

if.then.2352:                                     ; preds = %land.lhs.true.2345, %if.else.2337
  %789 = load %union.rec*, %union.rec** %t, align 8
  %os12353 = bitcast %union.rec* %789 to %struct.word_type*
  %ou12354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12353, i32 0, i32 1
  %ofpos2355 = bitcast %union.FIRST_UNION* %ou12354 to %struct.FILE_POS*
  %call2356 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.2357

if.end.2357:                                      ; preds = %if.then.2352, %land.lhs.true.2345
  br label %if.end.2358

if.end.2358:                                      ; preds = %if.end.2357, %if.then.2331
  %790 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %790, %union.rec** @zz_hold, align 8
  %791 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %791, %union.rec** @zz_hold, align 8
  %792 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12359 = bitcast %union.rec* %792 to %struct.word_type*
  %ou12360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12359, i32 0, i32 1
  %os112361 = bitcast %union.FIRST_UNION* %ou12360 to %struct.anon*
  %otype2362 = getelementptr inbounds %struct.anon, %struct.anon* %os112361, i32 0, i32 0
  %793 = load i8, i8* %otype2362, align 1
  %conv2363 = zext i8 %793 to i32
  %cmp2364 = icmp eq i32 %conv2363, 11
  br i1 %cmp2364, label %cond.true.2374, label %lor.lhs.false.2366

lor.lhs.false.2366:                               ; preds = %if.end.2358
  %794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12367 = bitcast %union.rec* %794 to %struct.word_type*
  %ou12368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12367, i32 0, i32 1
  %os112369 = bitcast %union.FIRST_UNION* %ou12368 to %struct.anon*
  %otype2370 = getelementptr inbounds %struct.anon, %struct.anon* %os112369, i32 0, i32 0
  %795 = load i8, i8* %otype2370, align 1
  %conv2371 = zext i8 %795 to i32
  %cmp2372 = icmp eq i32 %conv2371, 12
  br i1 %cmp2372, label %cond.true.2374, label %cond.false.2380

cond.true.2374:                                   ; preds = %lor.lhs.false.2366, %if.end.2358
  %796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12375 = bitcast %union.rec* %796 to %struct.word_type*
  %ou12376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12375, i32 0, i32 1
  %os112377 = bitcast %union.FIRST_UNION* %ou12376 to %struct.anon*
  %orec_size2378 = getelementptr inbounds %struct.anon, %struct.anon* %os112377, i32 0, i32 1
  %797 = load i8, i8* %orec_size2378, align 1
  %conv2379 = zext i8 %797 to i32
  br label %cond.end.2388

cond.false.2380:                                  ; preds = %lor.lhs.false.2366
  %798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12381 = bitcast %union.rec* %798 to %struct.word_type*
  %ou12382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12381, i32 0, i32 1
  %os112383 = bitcast %union.FIRST_UNION* %ou12382 to %struct.anon*
  %otype2384 = getelementptr inbounds %struct.anon, %struct.anon* %os112383, i32 0, i32 0
  %799 = load i8, i8* %otype2384, align 1
  %idxprom2385 = zext i8 %799 to i64
  %arrayidx2386 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2385
  %800 = load i8, i8* %arrayidx2386, align 1
  %conv2387 = zext i8 %800 to i32
  br label %cond.end.2388

cond.end.2388:                                    ; preds = %cond.false.2380, %cond.true.2374
  %cond2389 = phi i32 [ %conv2379, %cond.true.2374 ], [ %conv2387, %cond.false.2380 ]
  store i32 %cond2389, i32* @zz_size, align 4
  %801 = load i32, i32* @zz_size, align 4
  %idxprom2390 = sext i32 %801 to i64
  %arrayidx2391 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2390
  %802 = load %union.rec*, %union.rec** %arrayidx2391, align 8
  %803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12392 = bitcast %union.rec* %803 to %struct.word_type*
  %olist2393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12392, i32 0, i32 0
  %arrayidx2394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2393, i32 0, i64 0
  %opred2395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2394, i32 0, i32 0
  store %union.rec* %802, %union.rec** %opred2395, align 8
  %804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %805 = load i32, i32* @zz_size, align 4
  %idxprom2396 = sext i32 %805 to i64
  %arrayidx2397 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2396
  store %union.rec* %804, %union.rec** %arrayidx2397, align 8
  %call2398 = call %union.rec* @LexGetToken()
  store %union.rec* %call2398, %union.rec** %t, align 8
  br label %if.end.2399

if.end.2399:                                      ; preds = %cond.end.2388, %land.lhs.true.2269, %if.end.2261
  %806 = load %union.rec*, %union.rec** %t, align 8
  %os12400 = bitcast %union.rec* %806 to %struct.word_type*
  %ou12401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12400, i32 0, i32 1
  %os112402 = bitcast %union.FIRST_UNION* %ou12401 to %struct.anon*
  %otype2403 = getelementptr inbounds %struct.anon, %struct.anon* %os112402, i32 0, i32 0
  %807 = load i8, i8* %otype2403, align 1
  %conv2404 = zext i8 %807 to i32
  %cmp2405 = icmp eq i32 %conv2404, 11
  br i1 %cmp2405, label %land.lhs.true.2407, label %if.end.2515

land.lhs.true.2407:                               ; preds = %if.end.2399
  %808 = load %union.rec*, %union.rec** %t, align 8
  %os12408 = bitcast %union.rec* %808 to %struct.word_type*
  %ostring2409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12408, i32 0, i32 4
  %arraydecay2410 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2409, i32 0, i32 0
  %call2411 = call i32 @strcmp(i8* %arraydecay2410, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #3
  %cmp2412 = icmp eq i32 %call2411, 0
  br i1 %cmp2412, label %if.then.2414, label %if.end.2515

if.then.2414:                                     ; preds = %land.lhs.true.2407
  %809 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %809, %union.rec** @zz_hold, align 8
  %810 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %810, %union.rec** @zz_hold, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12415 = bitcast %union.rec* %811 to %struct.word_type*
  %ou12416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12415, i32 0, i32 1
  %os112417 = bitcast %union.FIRST_UNION* %ou12416 to %struct.anon*
  %otype2418 = getelementptr inbounds %struct.anon, %struct.anon* %os112417, i32 0, i32 0
  %812 = load i8, i8* %otype2418, align 1
  %conv2419 = zext i8 %812 to i32
  %cmp2420 = icmp eq i32 %conv2419, 11
  br i1 %cmp2420, label %cond.true.2430, label %lor.lhs.false.2422

lor.lhs.false.2422:                               ; preds = %if.then.2414
  %813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12423 = bitcast %union.rec* %813 to %struct.word_type*
  %ou12424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12423, i32 0, i32 1
  %os112425 = bitcast %union.FIRST_UNION* %ou12424 to %struct.anon*
  %otype2426 = getelementptr inbounds %struct.anon, %struct.anon* %os112425, i32 0, i32 0
  %814 = load i8, i8* %otype2426, align 1
  %conv2427 = zext i8 %814 to i32
  %cmp2428 = icmp eq i32 %conv2427, 12
  br i1 %cmp2428, label %cond.true.2430, label %cond.false.2436

cond.true.2430:                                   ; preds = %lor.lhs.false.2422, %if.then.2414
  %815 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12431 = bitcast %union.rec* %815 to %struct.word_type*
  %ou12432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12431, i32 0, i32 1
  %os112433 = bitcast %union.FIRST_UNION* %ou12432 to %struct.anon*
  %orec_size2434 = getelementptr inbounds %struct.anon, %struct.anon* %os112433, i32 0, i32 1
  %816 = load i8, i8* %orec_size2434, align 1
  %conv2435 = zext i8 %816 to i32
  br label %cond.end.2444

cond.false.2436:                                  ; preds = %lor.lhs.false.2422
  %817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12437 = bitcast %union.rec* %817 to %struct.word_type*
  %ou12438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12437, i32 0, i32 1
  %os112439 = bitcast %union.FIRST_UNION* %ou12438 to %struct.anon*
  %otype2440 = getelementptr inbounds %struct.anon, %struct.anon* %os112439, i32 0, i32 0
  %818 = load i8, i8* %otype2440, align 1
  %idxprom2441 = zext i8 %818 to i64
  %arrayidx2442 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2441
  %819 = load i8, i8* %arrayidx2442, align 1
  %conv2443 = zext i8 %819 to i32
  br label %cond.end.2444

cond.end.2444:                                    ; preds = %cond.false.2436, %cond.true.2430
  %cond2445 = phi i32 [ %conv2435, %cond.true.2430 ], [ %conv2443, %cond.false.2436 ]
  store i32 %cond2445, i32* @zz_size, align 4
  %820 = load i32, i32* @zz_size, align 4
  %idxprom2446 = sext i32 %820 to i64
  %arrayidx2447 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2446
  %821 = load %union.rec*, %union.rec** %arrayidx2447, align 8
  %822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12448 = bitcast %union.rec* %822 to %struct.word_type*
  %olist2449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12448, i32 0, i32 0
  %arrayidx2450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2449, i32 0, i64 0
  %opred2451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2450, i32 0, i32 0
  store %union.rec* %821, %union.rec** %opred2451, align 8
  %823 = load %union.rec*, %union.rec** @zz_hold, align 8
  %824 = load i32, i32* @zz_size, align 4
  %idxprom2452 = sext i32 %824 to i64
  %arrayidx2453 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2452
  store %union.rec* %823, %union.rec** %arrayidx2453, align 8
  %call2454 = call %union.rec* @LexGetToken()
  store %union.rec* %call2454, %union.rec** %t, align 8
  %825 = load %union.rec*, %union.rec** %t, align 8
  %os12455 = bitcast %union.rec* %825 to %struct.word_type*
  %ou12456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12455, i32 0, i32 1
  %os112457 = bitcast %union.FIRST_UNION* %ou12456 to %struct.anon*
  %otype2458 = getelementptr inbounds %struct.anon, %struct.anon* %os112457, i32 0, i32 0
  %826 = load i8, i8* %otype2458, align 1
  %conv2459 = zext i8 %826 to i32
  %cmp2460 = icmp ne i32 %conv2459, 11
  br i1 %cmp2460, label %if.then.2462, label %if.end.2467

if.then.2462:                                     ; preds = %cond.end.2444
  %827 = load %union.rec*, %union.rec** %t, align 8
  %os12463 = bitcast %union.rec* %827 to %struct.word_type*
  %ou12464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12463, i32 0, i32 1
  %ofpos2465 = bitcast %union.FIRST_UNION* %ou12464 to %struct.FILE_POS*
  %call2466 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2465, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  call void @UnSuppressScope()
  %828 = load %union.rec*, %union.rec** %t, align 8
  %829 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* %828, %union.rec** %829, align 8
  br label %return

if.end.2467:                                      ; preds = %cond.end.2444
  %830 = load %union.rec*, %union.rec** %t, align 8
  %os12468 = bitcast %union.rec* %830 to %struct.word_type*
  %ostring2469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12468, i32 0, i32 4
  %arraydecay2470 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2469, i32 0, i32 0
  %831 = load %union.rec*, %union.rec** %t, align 8
  %os12471 = bitcast %union.rec* %831 to %struct.word_type*
  %ou12472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12471, i32 0, i32 1
  %ofpos2473 = bitcast %union.FIRST_UNION* %ou12472 to %struct.FILE_POS*
  %832 = load %union.rec*, %union.rec** %res, align 8
  %call2474 = call %union.rec* @InsertSym(i8* %arraydecay2470, i8 zeroext -112, %struct.FILE_POS* %ofpos2473, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %832, %union.rec* null)
  %833 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %833, %union.rec** @zz_hold, align 8
  %834 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %834, %union.rec** @zz_hold, align 8
  %835 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12475 = bitcast %union.rec* %835 to %struct.word_type*
  %ou12476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12475, i32 0, i32 1
  %os112477 = bitcast %union.FIRST_UNION* %ou12476 to %struct.anon*
  %otype2478 = getelementptr inbounds %struct.anon, %struct.anon* %os112477, i32 0, i32 0
  %836 = load i8, i8* %otype2478, align 1
  %conv2479 = zext i8 %836 to i32
  %cmp2480 = icmp eq i32 %conv2479, 11
  br i1 %cmp2480, label %cond.true.2490, label %lor.lhs.false.2482

lor.lhs.false.2482:                               ; preds = %if.end.2467
  %837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12483 = bitcast %union.rec* %837 to %struct.word_type*
  %ou12484 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12483, i32 0, i32 1
  %os112485 = bitcast %union.FIRST_UNION* %ou12484 to %struct.anon*
  %otype2486 = getelementptr inbounds %struct.anon, %struct.anon* %os112485, i32 0, i32 0
  %838 = load i8, i8* %otype2486, align 1
  %conv2487 = zext i8 %838 to i32
  %cmp2488 = icmp eq i32 %conv2487, 12
  br i1 %cmp2488, label %cond.true.2490, label %cond.false.2496

cond.true.2490:                                   ; preds = %lor.lhs.false.2482, %if.end.2467
  %839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12491 = bitcast %union.rec* %839 to %struct.word_type*
  %ou12492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12491, i32 0, i32 1
  %os112493 = bitcast %union.FIRST_UNION* %ou12492 to %struct.anon*
  %orec_size2494 = getelementptr inbounds %struct.anon, %struct.anon* %os112493, i32 0, i32 1
  %840 = load i8, i8* %orec_size2494, align 1
  %conv2495 = zext i8 %840 to i32
  br label %cond.end.2504

cond.false.2496:                                  ; preds = %lor.lhs.false.2482
  %841 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12497 = bitcast %union.rec* %841 to %struct.word_type*
  %ou12498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12497, i32 0, i32 1
  %os112499 = bitcast %union.FIRST_UNION* %ou12498 to %struct.anon*
  %otype2500 = getelementptr inbounds %struct.anon, %struct.anon* %os112499, i32 0, i32 0
  %842 = load i8, i8* %otype2500, align 1
  %idxprom2501 = zext i8 %842 to i64
  %arrayidx2502 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2501
  %843 = load i8, i8* %arrayidx2502, align 1
  %conv2503 = zext i8 %843 to i32
  br label %cond.end.2504

cond.end.2504:                                    ; preds = %cond.false.2496, %cond.true.2490
  %cond2505 = phi i32 [ %conv2495, %cond.true.2490 ], [ %conv2503, %cond.false.2496 ]
  store i32 %cond2505, i32* @zz_size, align 4
  %844 = load i32, i32* @zz_size, align 4
  %idxprom2506 = sext i32 %844 to i64
  %arrayidx2507 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2506
  %845 = load %union.rec*, %union.rec** %arrayidx2507, align 8
  %846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12508 = bitcast %union.rec* %846 to %struct.word_type*
  %olist2509 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12508, i32 0, i32 0
  %arrayidx2510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2509, i32 0, i64 0
  %opred2511 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2510, i32 0, i32 0
  store %union.rec* %845, %union.rec** %opred2511, align 8
  %847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %848 = load i32, i32* @zz_size, align 4
  %idxprom2512 = sext i32 %848 to i64
  %arrayidx2513 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2512
  store %union.rec* %847, %union.rec** %arrayidx2513, align 8
  %call2514 = call %union.rec* @LexGetToken()
  store %union.rec* %call2514, %union.rec** %t, align 8
  br label %if.end.2515

if.end.2515:                                      ; preds = %cond.end.2504, %land.lhs.true.2407, %if.end.2399
  call void @UnSuppressScope()
  %849 = load %union.rec*, %union.rec** %res, align 8
  call void @ReadDefinitions(%union.rec** %t, %union.rec* %849, i8 zeroext -111)
  %850 = load %union.rec*, %union.rec** %t, align 8
  %os12516 = bitcast %union.rec* %850 to %struct.word_type*
  %ou12517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12516, i32 0, i32 1
  %os112518 = bitcast %union.FIRST_UNION* %ou12517 to %struct.anon*
  %otype2519 = getelementptr inbounds %struct.anon, %struct.anon* %os112518, i32 0, i32 0
  %851 = load i8, i8* %otype2519, align 1
  %conv2520 = zext i8 %851 to i32
  %cmp2521 = icmp eq i32 %conv2520, 11
  br i1 %cmp2521, label %land.lhs.true.2523, label %lor.lhs.false.2530

land.lhs.true.2523:                               ; preds = %if.end.2515
  %852 = load %union.rec*, %union.rec** %t, align 8
  %os12524 = bitcast %union.rec* %852 to %struct.word_type*
  %ostring2525 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12524, i32 0, i32 4
  %arraydecay2526 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2525, i32 0, i32 0
  %call2527 = call i32 @strcmp(i8* %arraydecay2526, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #3
  %cmp2528 = icmp eq i32 %call2527, 0
  br i1 %cmp2528, label %if.then.2545, label %lor.lhs.false.2530

lor.lhs.false.2530:                               ; preds = %land.lhs.true.2523, %if.end.2515
  %853 = load %union.rec*, %union.rec** %t, align 8
  %os12531 = bitcast %union.rec* %853 to %struct.word_type*
  %ou12532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12531, i32 0, i32 1
  %os112533 = bitcast %union.FIRST_UNION* %ou12532 to %struct.anon*
  %otype2534 = getelementptr inbounds %struct.anon, %struct.anon* %os112533, i32 0, i32 0
  %854 = load i8, i8* %otype2534, align 1
  %conv2535 = zext i8 %854 to i32
  %cmp2536 = icmp eq i32 %conv2535, 11
  br i1 %cmp2536, label %land.lhs.true.2538, label %if.end.2667

land.lhs.true.2538:                               ; preds = %lor.lhs.false.2530
  %855 = load %union.rec*, %union.rec** %t, align 8
  %os12539 = bitcast %union.rec* %855 to %struct.word_type*
  %ostring2540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12539, i32 0, i32 4
  %arraydecay2541 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2540, i32 0, i32 0
  %call2542 = call i32 @strcmp(i8* %arraydecay2541, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #3
  %cmp2543 = icmp eq i32 %call2542, 0
  br i1 %cmp2543, label %if.then.2545, label %if.end.2667

if.then.2545:                                     ; preds = %land.lhs.true.2538, %land.lhs.true.2523
  %856 = load %union.rec*, %union.rec** %t, align 8
  %os12546 = bitcast %union.rec* %856 to %struct.word_type*
  %ou12547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12546, i32 0, i32 1
  %os112548 = bitcast %union.FIRST_UNION* %ou12547 to %struct.anon*
  %otype2549 = getelementptr inbounds %struct.anon, %struct.anon* %os112548, i32 0, i32 0
  %857 = load i8, i8* %otype2549, align 1
  %conv2550 = zext i8 %857 to i32
  %cmp2551 = icmp eq i32 %conv2550, 11
  br i1 %cmp2551, label %land.rhs.2553, label %land.end.2560

land.rhs.2553:                                    ; preds = %if.then.2545
  %858 = load %union.rec*, %union.rec** %t, align 8
  %os12554 = bitcast %union.rec* %858 to %struct.word_type*
  %ostring2555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12554, i32 0, i32 4
  %arraydecay2556 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2555, i32 0, i32 0
  %call2557 = call i32 @strcmp(i8* %arraydecay2556, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #3
  %cmp2558 = icmp eq i32 %call2557, 0
  br label %land.end.2560

land.end.2560:                                    ; preds = %land.rhs.2553, %if.then.2545
  %859 = phi i1 [ false, %if.then.2545 ], [ %cmp2558, %land.rhs.2553 ]
  %land.ext = zext i1 %859 to i32
  %860 = load %union.rec*, %union.rec** %res, align 8
  %os12561 = bitcast %union.rec* %860 to %struct.word_type*
  %ou22562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12561, i32 0, i32 2
  %os262563 = bitcast %union.SECOND_UNION* %ou22562 to %struct.anon.5*
  %ohas_body = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os262563, i32 0, i32 1
  %861 = bitcast [3 x i8]* %ohas_body to i24*
  %862 = trunc i32 %land.ext to i24
  %bf.load2564 = load i24, i24* %861, align 1
  %bf.value = and i24 %862, 1
  %bf.shl = shl i24 %bf.value, 8
  %bf.clear2565 = and i24 %bf.load2564, -257
  %bf.set2566 = or i24 %bf.clear2565, %bf.shl
  store i24 %bf.set2566, i24* %861, align 1
  %bf.result.cast = zext i24 %bf.value to i32
  call void @SuppressScope()
  %863 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %863, %union.rec** @zz_hold, align 8
  %864 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %864, %union.rec** @zz_hold, align 8
  %865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12567 = bitcast %union.rec* %865 to %struct.word_type*
  %ou12568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12567, i32 0, i32 1
  %os112569 = bitcast %union.FIRST_UNION* %ou12568 to %struct.anon*
  %otype2570 = getelementptr inbounds %struct.anon, %struct.anon* %os112569, i32 0, i32 0
  %866 = load i8, i8* %otype2570, align 1
  %conv2571 = zext i8 %866 to i32
  %cmp2572 = icmp eq i32 %conv2571, 11
  br i1 %cmp2572, label %cond.true.2582, label %lor.lhs.false.2574

lor.lhs.false.2574:                               ; preds = %land.end.2560
  %867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12575 = bitcast %union.rec* %867 to %struct.word_type*
  %ou12576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12575, i32 0, i32 1
  %os112577 = bitcast %union.FIRST_UNION* %ou12576 to %struct.anon*
  %otype2578 = getelementptr inbounds %struct.anon, %struct.anon* %os112577, i32 0, i32 0
  %868 = load i8, i8* %otype2578, align 1
  %conv2579 = zext i8 %868 to i32
  %cmp2580 = icmp eq i32 %conv2579, 12
  br i1 %cmp2580, label %cond.true.2582, label %cond.false.2588

cond.true.2582:                                   ; preds = %lor.lhs.false.2574, %land.end.2560
  %869 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12583 = bitcast %union.rec* %869 to %struct.word_type*
  %ou12584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12583, i32 0, i32 1
  %os112585 = bitcast %union.FIRST_UNION* %ou12584 to %struct.anon*
  %orec_size2586 = getelementptr inbounds %struct.anon, %struct.anon* %os112585, i32 0, i32 1
  %870 = load i8, i8* %orec_size2586, align 1
  %conv2587 = zext i8 %870 to i32
  br label %cond.end.2596

cond.false.2588:                                  ; preds = %lor.lhs.false.2574
  %871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12589 = bitcast %union.rec* %871 to %struct.word_type*
  %ou12590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12589, i32 0, i32 1
  %os112591 = bitcast %union.FIRST_UNION* %ou12590 to %struct.anon*
  %otype2592 = getelementptr inbounds %struct.anon, %struct.anon* %os112591, i32 0, i32 0
  %872 = load i8, i8* %otype2592, align 1
  %idxprom2593 = zext i8 %872 to i64
  %arrayidx2594 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2593
  %873 = load i8, i8* %arrayidx2594, align 1
  %conv2595 = zext i8 %873 to i32
  br label %cond.end.2596

cond.end.2596:                                    ; preds = %cond.false.2588, %cond.true.2582
  %cond2597 = phi i32 [ %conv2587, %cond.true.2582 ], [ %conv2595, %cond.false.2588 ]
  store i32 %cond2597, i32* @zz_size, align 4
  %874 = load i32, i32* @zz_size, align 4
  %idxprom2598 = sext i32 %874 to i64
  %arrayidx2599 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2598
  %875 = load %union.rec*, %union.rec** %arrayidx2599, align 8
  %876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12600 = bitcast %union.rec* %876 to %struct.word_type*
  %olist2601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12600, i32 0, i32 0
  %arrayidx2602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2601, i32 0, i64 0
  %opred2603 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2602, i32 0, i32 0
  store %union.rec* %875, %union.rec** %opred2603, align 8
  %877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %878 = load i32, i32* @zz_size, align 4
  %idxprom2604 = sext i32 %878 to i64
  %arrayidx2605 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2604
  store %union.rec* %877, %union.rec** %arrayidx2605, align 8
  %call2606 = call %union.rec* @LexGetToken()
  store %union.rec* %call2606, %union.rec** %t, align 8
  %879 = load %union.rec*, %union.rec** %t, align 8
  %os12607 = bitcast %union.rec* %879 to %struct.word_type*
  %ou12608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12607, i32 0, i32 1
  %os112609 = bitcast %union.FIRST_UNION* %ou12608 to %struct.anon*
  %otype2610 = getelementptr inbounds %struct.anon, %struct.anon* %os112609, i32 0, i32 0
  %880 = load i8, i8* %otype2610, align 1
  %conv2611 = zext i8 %880 to i32
  %cmp2612 = icmp ne i32 %conv2611, 11
  br i1 %cmp2612, label %if.then.2614, label %if.end.2619

if.then.2614:                                     ; preds = %cond.end.2596
  %881 = load %union.rec*, %union.rec** %t, align 8
  %os12615 = bitcast %union.rec* %881 to %struct.word_type*
  %ou12616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12615, i32 0, i32 1
  %ofpos2617 = bitcast %union.FIRST_UNION* %ou12616 to %struct.FILE_POS*
  %call2618 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2617, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  call void @UnSuppressScope()
  %882 = load %union.rec*, %union.rec** %t, align 8
  %883 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* %882, %union.rec** %883, align 8
  br label %return

if.end.2619:                                      ; preds = %cond.end.2596
  %884 = load %union.rec*, %union.rec** %t, align 8
  %os12620 = bitcast %union.rec* %884 to %struct.word_type*
  %ostring2621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12620, i32 0, i32 4
  %arraydecay2622 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2621, i32 0, i32 0
  %885 = load %union.rec*, %union.rec** %t, align 8
  %os12623 = bitcast %union.rec* %885 to %struct.word_type*
  %ou12624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12623, i32 0, i32 1
  %ofpos2625 = bitcast %union.FIRST_UNION* %ou12624 to %struct.FILE_POS*
  %886 = load %union.rec*, %union.rec** %res, align 8
  %call2626 = call %union.rec* @InsertSym(i8* %arraydecay2622, i8 zeroext -110, %struct.FILE_POS* %ofpos2625, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %886, %union.rec* null)
  call void @UnSuppressScope()
  %887 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %887, %union.rec** @zz_hold, align 8
  %888 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %888, %union.rec** @zz_hold, align 8
  %889 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12627 = bitcast %union.rec* %889 to %struct.word_type*
  %ou12628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12627, i32 0, i32 1
  %os112629 = bitcast %union.FIRST_UNION* %ou12628 to %struct.anon*
  %otype2630 = getelementptr inbounds %struct.anon, %struct.anon* %os112629, i32 0, i32 0
  %890 = load i8, i8* %otype2630, align 1
  %conv2631 = zext i8 %890 to i32
  %cmp2632 = icmp eq i32 %conv2631, 11
  br i1 %cmp2632, label %cond.true.2642, label %lor.lhs.false.2634

lor.lhs.false.2634:                               ; preds = %if.end.2619
  %891 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12635 = bitcast %union.rec* %891 to %struct.word_type*
  %ou12636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12635, i32 0, i32 1
  %os112637 = bitcast %union.FIRST_UNION* %ou12636 to %struct.anon*
  %otype2638 = getelementptr inbounds %struct.anon, %struct.anon* %os112637, i32 0, i32 0
  %892 = load i8, i8* %otype2638, align 1
  %conv2639 = zext i8 %892 to i32
  %cmp2640 = icmp eq i32 %conv2639, 12
  br i1 %cmp2640, label %cond.true.2642, label %cond.false.2648

cond.true.2642:                                   ; preds = %lor.lhs.false.2634, %if.end.2619
  %893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12643 = bitcast %union.rec* %893 to %struct.word_type*
  %ou12644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12643, i32 0, i32 1
  %os112645 = bitcast %union.FIRST_UNION* %ou12644 to %struct.anon*
  %orec_size2646 = getelementptr inbounds %struct.anon, %struct.anon* %os112645, i32 0, i32 1
  %894 = load i8, i8* %orec_size2646, align 1
  %conv2647 = zext i8 %894 to i32
  br label %cond.end.2656

cond.false.2648:                                  ; preds = %lor.lhs.false.2634
  %895 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12649 = bitcast %union.rec* %895 to %struct.word_type*
  %ou12650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12649, i32 0, i32 1
  %os112651 = bitcast %union.FIRST_UNION* %ou12650 to %struct.anon*
  %otype2652 = getelementptr inbounds %struct.anon, %struct.anon* %os112651, i32 0, i32 0
  %896 = load i8, i8* %otype2652, align 1
  %idxprom2653 = zext i8 %896 to i64
  %arrayidx2654 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2653
  %897 = load i8, i8* %arrayidx2654, align 1
  %conv2655 = zext i8 %897 to i32
  br label %cond.end.2656

cond.end.2656:                                    ; preds = %cond.false.2648, %cond.true.2642
  %cond2657 = phi i32 [ %conv2647, %cond.true.2642 ], [ %conv2655, %cond.false.2648 ]
  store i32 %cond2657, i32* @zz_size, align 4
  %898 = load i32, i32* @zz_size, align 4
  %idxprom2658 = sext i32 %898 to i64
  %arrayidx2659 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2658
  %899 = load %union.rec*, %union.rec** %arrayidx2659, align 8
  %900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12660 = bitcast %union.rec* %900 to %struct.word_type*
  %olist2661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12660, i32 0, i32 0
  %arrayidx2662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2661, i32 0, i64 0
  %opred2663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2662, i32 0, i32 0
  store %union.rec* %899, %union.rec** %opred2663, align 8
  %901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %902 = load i32, i32* @zz_size, align 4
  %idxprom2664 = sext i32 %902 to i64
  %arrayidx2665 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2664
  store %union.rec* %901, %union.rec** %arrayidx2665, align 8
  %call2666 = call %union.rec* @LexGetToken()
  store %union.rec* %call2666, %union.rec** %t, align 8
  br label %if.end.2667

if.end.2667:                                      ; preds = %cond.end.2656, %land.lhs.true.2538, %lor.lhs.false.2530
  %903 = load %union.rec*, %union.rec** %res_target, align 8
  %cmp2668 = icmp ne %union.rec* %903, null
  br i1 %cmp2668, label %if.then.2670, label %if.end.2675

if.then.2670:                                     ; preds = %if.end.2667
  %904 = load %union.rec*, %union.rec** %res_target, align 8
  %os12671 = bitcast %union.rec* %904 to %struct.word_type*
  %ou12672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12671, i32 0, i32 1
  %ofpos2673 = bitcast %union.FIRST_UNION* %ou12672 to %struct.FILE_POS*
  %905 = load %union.rec*, %union.rec** %res, align 8
  %906 = load %union.rec*, %union.rec** %res_target, align 8
  %call2674 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8 zeroext -113, %struct.FILE_POS* %ofpos2673, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %905, %union.rec* %906)
  br label %if.end.2675

if.end.2675:                                      ; preds = %if.then.2670, %if.end.2667
  %907 = load %union.rec*, %union.rec** %t, align 8
  %os12676 = bitcast %union.rec* %907 to %struct.word_type*
  %ou12677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12676, i32 0, i32 1
  %os112678 = bitcast %union.FIRST_UNION* %ou12677 to %struct.anon*
  %otype2679 = getelementptr inbounds %struct.anon, %struct.anon* %os112678, i32 0, i32 0
  %908 = load i8, i8* %otype2679, align 1
  %conv2680 = zext i8 %908 to i32
  %cmp2681 = icmp eq i32 %conv2680, 11
  br i1 %cmp2681, label %land.lhs.true.2683, label %if.else.2734

land.lhs.true.2683:                               ; preds = %if.end.2675
  %909 = load %union.rec*, %union.rec** %t, align 8
  %os12684 = bitcast %union.rec* %909 to %struct.word_type*
  %ostring2685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12684, i32 0, i32 4
  %arraydecay2686 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2685, i32 0, i32 0
  %call2687 = call i32 @strcmp(i8* %arraydecay2686, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #3
  %cmp2688 = icmp eq i32 %call2687, 0
  br i1 %cmp2688, label %if.then.2690, label %if.else.2734

if.then.2690:                                     ; preds = %land.lhs.true.2683
  %910 = load %union.rec*, %union.rec** %t, align 8
  %os12691 = bitcast %union.rec* %910 to %struct.word_type*
  %ou12692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12691, i32 0, i32 1
  %ofpos2693 = bitcast %union.FIRST_UNION* %ou12692 to %struct.FILE_POS*
  %911 = load %union.rec*, %union.rec** @StartSym, align 8
  %call2694 = call %union.rec* @NewToken(i8 zeroext 102, %struct.FILE_POS* %ofpos2693, i8 zeroext 0, i8 zeroext 0, i8 zeroext 3, %union.rec* %911)
  store %union.rec* %call2694, %union.rec** %z, align 8
  %912 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %912, %union.rec** @zz_hold, align 8
  %913 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %913, %union.rec** @zz_hold, align 8
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12695 = bitcast %union.rec* %914 to %struct.word_type*
  %ou12696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12695, i32 0, i32 1
  %os112697 = bitcast %union.FIRST_UNION* %ou12696 to %struct.anon*
  %otype2698 = getelementptr inbounds %struct.anon, %struct.anon* %os112697, i32 0, i32 0
  %915 = load i8, i8* %otype2698, align 1
  %conv2699 = zext i8 %915 to i32
  %cmp2700 = icmp eq i32 %conv2699, 11
  br i1 %cmp2700, label %cond.true.2710, label %lor.lhs.false.2702

lor.lhs.false.2702:                               ; preds = %if.then.2690
  %916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12703 = bitcast %union.rec* %916 to %struct.word_type*
  %ou12704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12703, i32 0, i32 1
  %os112705 = bitcast %union.FIRST_UNION* %ou12704 to %struct.anon*
  %otype2706 = getelementptr inbounds %struct.anon, %struct.anon* %os112705, i32 0, i32 0
  %917 = load i8, i8* %otype2706, align 1
  %conv2707 = zext i8 %917 to i32
  %cmp2708 = icmp eq i32 %conv2707, 12
  br i1 %cmp2708, label %cond.true.2710, label %cond.false.2716

cond.true.2710:                                   ; preds = %lor.lhs.false.2702, %if.then.2690
  %918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12711 = bitcast %union.rec* %918 to %struct.word_type*
  %ou12712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12711, i32 0, i32 1
  %os112713 = bitcast %union.FIRST_UNION* %ou12712 to %struct.anon*
  %orec_size2714 = getelementptr inbounds %struct.anon, %struct.anon* %os112713, i32 0, i32 1
  %919 = load i8, i8* %orec_size2714, align 1
  %conv2715 = zext i8 %919 to i32
  br label %cond.end.2724

cond.false.2716:                                  ; preds = %lor.lhs.false.2702
  %920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12717 = bitcast %union.rec* %920 to %struct.word_type*
  %ou12718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12717, i32 0, i32 1
  %os112719 = bitcast %union.FIRST_UNION* %ou12718 to %struct.anon*
  %otype2720 = getelementptr inbounds %struct.anon, %struct.anon* %os112719, i32 0, i32 0
  %921 = load i8, i8* %otype2720, align 1
  %idxprom2721 = zext i8 %921 to i64
  %arrayidx2722 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2721
  %922 = load i8, i8* %arrayidx2722, align 1
  %conv2723 = zext i8 %922 to i32
  br label %cond.end.2724

cond.end.2724:                                    ; preds = %cond.false.2716, %cond.true.2710
  %cond2725 = phi i32 [ %conv2715, %cond.true.2710 ], [ %conv2723, %cond.false.2716 ]
  store i32 %cond2725, i32* @zz_size, align 4
  %923 = load i32, i32* @zz_size, align 4
  %idxprom2726 = sext i32 %923 to i64
  %arrayidx2727 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2726
  %924 = load %union.rec*, %union.rec** %arrayidx2727, align 8
  %925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12728 = bitcast %union.rec* %925 to %struct.word_type*
  %olist2729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12728, i32 0, i32 0
  %arrayidx2730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2729, i32 0, i64 0
  %opred2731 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2730, i32 0, i32 0
  store %union.rec* %924, %union.rec** %opred2731, align 8
  %926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %927 = load i32, i32* @zz_size, align 4
  %idxprom2732 = sext i32 %927 to i64
  %arrayidx2733 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2732
  store %union.rec* %926, %union.rec** %arrayidx2733, align 8
  %928 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %928, %union.rec** %t, align 8
  br label %if.end.2817

if.else.2734:                                     ; preds = %land.lhs.true.2683, %if.end.2675
  %929 = load %union.rec*, %union.rec** %t, align 8
  %os12735 = bitcast %union.rec* %929 to %struct.word_type*
  %ou12736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12735, i32 0, i32 1
  %os112737 = bitcast %union.FIRST_UNION* %ou12736 to %struct.anon*
  %otype2738 = getelementptr inbounds %struct.anon, %struct.anon* %os112737, i32 0, i32 0
  %930 = load i8, i8* %otype2738, align 1
  %conv2739 = zext i8 %930 to i32
  %cmp2740 = icmp eq i32 %conv2739, 11
  br i1 %cmp2740, label %land.lhs.true.2742, label %if.else.2793

land.lhs.true.2742:                               ; preds = %if.else.2734
  %931 = load %union.rec*, %union.rec** %t, align 8
  %os12743 = bitcast %union.rec* %931 to %struct.word_type*
  %ostring2744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12743, i32 0, i32 4
  %arraydecay2745 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2744, i32 0, i32 0
  %call2746 = call i32 @strcmp(i8* %arraydecay2745, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #3
  %cmp2747 = icmp eq i32 %call2746, 0
  br i1 %cmp2747, label %if.then.2749, label %if.else.2793

if.then.2749:                                     ; preds = %land.lhs.true.2742
  %932 = load %union.rec*, %union.rec** %t, align 8
  %os12750 = bitcast %union.rec* %932 to %struct.word_type*
  %ou12751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12750, i32 0, i32 1
  %ofpos2752 = bitcast %union.FIRST_UNION* %ou12751 to %struct.FILE_POS*
  %933 = load %union.rec*, %union.rec** @StartSym, align 8
  %call2753 = call %union.rec* @NewToken(i8 zeroext 104, %struct.FILE_POS* %ofpos2752, i8 zeroext 0, i8 zeroext 0, i8 zeroext 1, %union.rec* %933)
  store %union.rec* %call2753, %union.rec** %z, align 8
  %934 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %934, %union.rec** @zz_hold, align 8
  %935 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %935, %union.rec** @zz_hold, align 8
  %936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12754 = bitcast %union.rec* %936 to %struct.word_type*
  %ou12755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12754, i32 0, i32 1
  %os112756 = bitcast %union.FIRST_UNION* %ou12755 to %struct.anon*
  %otype2757 = getelementptr inbounds %struct.anon, %struct.anon* %os112756, i32 0, i32 0
  %937 = load i8, i8* %otype2757, align 1
  %conv2758 = zext i8 %937 to i32
  %cmp2759 = icmp eq i32 %conv2758, 11
  br i1 %cmp2759, label %cond.true.2769, label %lor.lhs.false.2761

lor.lhs.false.2761:                               ; preds = %if.then.2749
  %938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12762 = bitcast %union.rec* %938 to %struct.word_type*
  %ou12763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12762, i32 0, i32 1
  %os112764 = bitcast %union.FIRST_UNION* %ou12763 to %struct.anon*
  %otype2765 = getelementptr inbounds %struct.anon, %struct.anon* %os112764, i32 0, i32 0
  %939 = load i8, i8* %otype2765, align 1
  %conv2766 = zext i8 %939 to i32
  %cmp2767 = icmp eq i32 %conv2766, 12
  br i1 %cmp2767, label %cond.true.2769, label %cond.false.2775

cond.true.2769:                                   ; preds = %lor.lhs.false.2761, %if.then.2749
  %940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12770 = bitcast %union.rec* %940 to %struct.word_type*
  %ou12771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12770, i32 0, i32 1
  %os112772 = bitcast %union.FIRST_UNION* %ou12771 to %struct.anon*
  %orec_size2773 = getelementptr inbounds %struct.anon, %struct.anon* %os112772, i32 0, i32 1
  %941 = load i8, i8* %orec_size2773, align 1
  %conv2774 = zext i8 %941 to i32
  br label %cond.end.2783

cond.false.2775:                                  ; preds = %lor.lhs.false.2761
  %942 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12776 = bitcast %union.rec* %942 to %struct.word_type*
  %ou12777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12776, i32 0, i32 1
  %os112778 = bitcast %union.FIRST_UNION* %ou12777 to %struct.anon*
  %otype2779 = getelementptr inbounds %struct.anon, %struct.anon* %os112778, i32 0, i32 0
  %943 = load i8, i8* %otype2779, align 1
  %idxprom2780 = zext i8 %943 to i64
  %arrayidx2781 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2780
  %944 = load i8, i8* %arrayidx2781, align 1
  %conv2782 = zext i8 %944 to i32
  br label %cond.end.2783

cond.end.2783:                                    ; preds = %cond.false.2775, %cond.true.2769
  %cond2784 = phi i32 [ %conv2774, %cond.true.2769 ], [ %conv2782, %cond.false.2775 ]
  store i32 %cond2784, i32* @zz_size, align 4
  %945 = load i32, i32* @zz_size, align 4
  %idxprom2785 = sext i32 %945 to i64
  %arrayidx2786 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2785
  %946 = load %union.rec*, %union.rec** %arrayidx2786, align 8
  %947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12787 = bitcast %union.rec* %947 to %struct.word_type*
  %olist2788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12787, i32 0, i32 0
  %arrayidx2789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2788, i32 0, i64 0
  %opred2790 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2789, i32 0, i32 0
  store %union.rec* %946, %union.rec** %opred2790, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %949 = load i32, i32* @zz_size, align 4
  %idxprom2791 = sext i32 %949 to i64
  %arrayidx2792 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2791
  store %union.rec* %948, %union.rec** %arrayidx2792, align 8
  %950 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %950, %union.rec** %t, align 8
  br label %if.end.2816

if.else.2793:                                     ; preds = %land.lhs.true.2742, %if.else.2734
  %951 = load %union.rec*, %union.rec** %t, align 8
  %os12794 = bitcast %union.rec* %951 to %struct.word_type*
  %ou12795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12794, i32 0, i32 1
  %os112796 = bitcast %union.FIRST_UNION* %ou12795 to %struct.anon*
  %otype2797 = getelementptr inbounds %struct.anon, %struct.anon* %os112796, i32 0, i32 0
  %952 = load i8, i8* %otype2797, align 1
  %conv2798 = zext i8 %952 to i32
  %cmp2799 = icmp ne i32 %conv2798, 102
  br i1 %cmp2799, label %land.lhs.true.2801, label %if.end.2815

land.lhs.true.2801:                               ; preds = %if.else.2793
  %953 = load %union.rec*, %union.rec** %t, align 8
  %os12802 = bitcast %union.rec* %953 to %struct.word_type*
  %ou12803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12802, i32 0, i32 1
  %os112804 = bitcast %union.FIRST_UNION* %ou12803 to %struct.anon*
  %otype2805 = getelementptr inbounds %struct.anon, %struct.anon* %os112804, i32 0, i32 0
  %954 = load i8, i8* %otype2805, align 1
  %conv2806 = zext i8 %954 to i32
  %cmp2807 = icmp ne i32 %conv2806, 104
  br i1 %cmp2807, label %if.then.2809, label %if.end.2815

if.then.2809:                                     ; preds = %land.lhs.true.2801
  %955 = load %union.rec*, %union.rec** %t, align 8
  %os12810 = bitcast %union.rec* %955 to %struct.word_type*
  %ou12811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12810, i32 0, i32 1
  %ofpos2812 = bitcast %union.FIRST_UNION* %ou12811 to %struct.FILE_POS*
  %956 = load %union.rec*, %union.rec** %res, align 8
  %call2813 = call i8* @SymName(%union.rec* %956)
  %call2814 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos2812, i8* %call2813)
  br label %if.end.2815

if.end.2815:                                      ; preds = %if.then.2809, %land.lhs.true.2801, %if.else.2793
  br label %if.end.2816

if.end.2816:                                      ; preds = %if.end.2815, %cond.end.2783
  br label %if.end.2817

if.end.2817:                                      ; preds = %if.end.2816, %cond.end.2724
  %957 = load %union.rec*, %union.rec** %t, align 8
  %os12818 = bitcast %union.rec* %957 to %struct.word_type*
  %ou12819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12818, i32 0, i32 1
  %os112820 = bitcast %union.FIRST_UNION* %ou12819 to %struct.anon*
  %otype2821 = getelementptr inbounds %struct.anon, %struct.anon* %os112820, i32 0, i32 0
  %958 = load i8, i8* %otype2821, align 1
  %conv2822 = zext i8 %958 to i32
  %cmp2823 = icmp eq i32 %conv2822, 104
  br i1 %cmp2823, label %if.then.2825, label %if.end.2828

if.then.2825:                                     ; preds = %if.end.2817
  %959 = load %union.rec*, %union.rec** %res, align 8
  %960 = load %union.rec*, %union.rec** %t, align 8
  %os22826 = bitcast %union.rec* %960 to %struct.closure_type*
  %oactual2827 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22826, i32 0, i32 5
  store %union.rec* %959, %union.rec** %oactual2827, align 8
  br label %if.end.2828

if.end.2828:                                      ; preds = %if.then.2825, %if.end.2817
  %961 = load %union.rec*, %union.rec** %res, align 8
  call void @PushScope(%union.rec* %961, i32 0, i32 0)
  call void @BodyParAllowed()
  %962 = load %union.rec*, %union.rec** %res, align 8
  %call2829 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %962, i32 1, i32 0)
  %963 = load %union.rec*, %union.rec** %res, align 8
  %os62830 = bitcast %union.rec* %963 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os62830, i32 0, i32 4
  store %union.rec* %call2829, %union.rec** %osym_body, align 8
  %964 = load %union.rec*, %union.rec** %export_list, align 8
  %os12831 = bitcast %union.rec* %964 to %struct.word_type*
  %olist2832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12831, i32 0, i32 0
  %arrayidx2833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2832, i32 0, i64 0
  %osucc2834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2833, i32 0, i32 1
  %965 = load %union.rec*, %union.rec** %osucc2834, align 8
  store %union.rec* %965, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.2931, %if.end.2828
  %966 = load %union.rec*, %union.rec** %link, align 8
  %967 = load %union.rec*, %union.rec** %export_list, align 8
  %cmp2835 = icmp ne %union.rec* %966, %967
  br i1 %cmp2835, label %for.body, label %for.end.2936

for.body:                                         ; preds = %for.cond
  %968 = load %union.rec*, %union.rec** %link, align 8
  %os12837 = bitcast %union.rec* %968 to %struct.word_type*
  %olist2838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12837, i32 0, i32 0
  %arrayidx2839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2838, i32 0, i64 1
  %opred2840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2839, i32 0, i32 0
  %969 = load %union.rec*, %union.rec** %opred2840, align 8
  store %union.rec* %969, %union.rec** %y, align 8
  br label %for.cond.2841

for.cond.2841:                                    ; preds = %for.inc, %for.body
  %970 = load %union.rec*, %union.rec** %y, align 8
  %os12842 = bitcast %union.rec* %970 to %struct.word_type*
  %ou12843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12842, i32 0, i32 1
  %os112844 = bitcast %union.FIRST_UNION* %ou12843 to %struct.anon*
  %otype2845 = getelementptr inbounds %struct.anon, %struct.anon* %os112844, i32 0, i32 0
  %971 = load i8, i8* %otype2845, align 1
  %conv2846 = zext i8 %971 to i32
  %cmp2847 = icmp eq i32 %conv2846, 0
  br i1 %cmp2847, label %for.body.2849, label %for.end

for.body.2849:                                    ; preds = %for.cond.2841
  br label %for.inc

for.inc:                                          ; preds = %for.body.2849
  %972 = load %union.rec*, %union.rec** %y, align 8
  %os12850 = bitcast %union.rec* %972 to %struct.word_type*
  %olist2851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12850, i32 0, i32 0
  %arrayidx2852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2851, i32 0, i64 1
  %opred2853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2852, i32 0, i32 0
  %973 = load %union.rec*, %union.rec** %opred2853, align 8
  store %union.rec* %973, %union.rec** %y, align 8
  br label %for.cond.2841

for.end:                                          ; preds = %for.cond.2841
  %974 = load %union.rec*, %union.rec** %y, align 8
  %os12854 = bitcast %union.rec* %974 to %struct.word_type*
  %ostring2855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12854, i32 0, i32 4
  %arraydecay2856 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2855, i32 0, i32 0
  %975 = load %union.rec*, %union.rec** %y, align 8
  %os12857 = bitcast %union.rec* %975 to %struct.word_type*
  %ostring2858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12857, i32 0, i32 4
  %arraydecay2859 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2858, i32 0, i32 0
  %call2860 = call i64 @strlen(i8* %arraydecay2859) #3
  %conv2861 = trunc i64 %call2860 to i32
  %call2862 = call %union.rec* @SearchSym(i8* %arraydecay2856, i32 %conv2861)
  store %union.rec* %call2862, %union.rec** %z, align 8
  %976 = load %union.rec*, %union.rec** %z, align 8
  %cmp2863 = icmp eq %union.rec* %976, null
  br i1 %cmp2863, label %if.then.2869, label %lor.lhs.false.2865

lor.lhs.false.2865:                               ; preds = %for.end
  %977 = load %union.rec*, %union.rec** %z, align 8
  %os62866 = bitcast %union.rec* %977 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os62866, i32 0, i32 3
  %978 = load %union.rec*, %union.rec** %oenclosing, align 8
  %979 = load %union.rec*, %union.rec** %res, align 8
  %cmp2867 = icmp ne %union.rec* %978, %979
  br i1 %cmp2867, label %if.then.2869, label %if.else.2878

if.then.2869:                                     ; preds = %lor.lhs.false.2865, %for.end
  %980 = load %union.rec*, %union.rec** %y, align 8
  %os12870 = bitcast %union.rec* %980 to %struct.word_type*
  %ou12871 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12870, i32 0, i32 1
  %ofpos2872 = bitcast %union.FIRST_UNION* %ou12871 to %struct.FILE_POS*
  %981 = load %union.rec*, %union.rec** %y, align 8
  %os12873 = bitcast %union.rec* %981 to %struct.word_type*
  %ostring2874 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12873, i32 0, i32 4
  %arraydecay2875 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2874, i32 0, i32 0
  %982 = load %union.rec*, %union.rec** %res, align 8
  %call2876 = call i8* @SymName(%union.rec* %982)
  %call2877 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2872, i8* %arraydecay2875, i8* %call2876)
  br label %if.end.2930

if.else.2878:                                     ; preds = %lor.lhs.false.2865
  %983 = load %union.rec*, %union.rec** %res, align 8
  %os12879 = bitcast %union.rec* %983 to %struct.word_type*
  %ou22880 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12879, i32 0, i32 2
  %os262881 = bitcast %union.SECOND_UNION* %ou22880 to %struct.anon.5*
  %ohas_body2882 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os262881, i32 0, i32 1
  %984 = bitcast [3 x i8]* %ohas_body2882 to i24*
  %bf.load2883 = load i24, i24* %984, align 1
  %bf.lshr = lshr i24 %bf.load2883, 8
  %bf.clear2884 = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear2884 to i32
  %tobool2885 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2885, label %land.lhs.true.2886, label %if.else.2902

land.lhs.true.2886:                               ; preds = %if.else.2878
  %985 = load %union.rec*, %union.rec** %z, align 8
  %os12887 = bitcast %union.rec* %985 to %struct.word_type*
  %ou12888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12887, i32 0, i32 1
  %os112889 = bitcast %union.FIRST_UNION* %ou12888 to %struct.anon*
  %otype2890 = getelementptr inbounds %struct.anon, %struct.anon* %os112889, i32 0, i32 0
  %986 = load i8, i8* %otype2890, align 1
  %conv2891 = zext i8 %986 to i32
  %cmp2892 = icmp eq i32 %conv2891, 146
  br i1 %cmp2892, label %if.then.2894, label %if.else.2902

if.then.2894:                                     ; preds = %land.lhs.true.2886
  %987 = load %union.rec*, %union.rec** %y, align 8
  %os12895 = bitcast %union.rec* %987 to %struct.word_type*
  %ou12896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12895, i32 0, i32 1
  %ofpos2897 = bitcast %union.FIRST_UNION* %ou12896 to %struct.FILE_POS*
  %988 = load %union.rec*, %union.rec** %y, align 8
  %os12898 = bitcast %union.rec* %988 to %struct.word_type*
  %ostring2899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12898, i32 0, i32 4
  %arraydecay2900 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2899, i32 0, i32 0
  %call2901 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2897, i8* %arraydecay2900)
  br label %if.end.2929

if.else.2902:                                     ; preds = %land.lhs.true.2886, %if.else.2878
  %989 = load %union.rec*, %union.rec** %z, align 8
  %os12903 = bitcast %union.rec* %989 to %struct.word_type*
  %ou22904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12903, i32 0, i32 2
  %os262905 = bitcast %union.SECOND_UNION* %ou22904 to %struct.anon.5*
  %ovisible2906 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os262905, i32 0, i32 1
  %990 = bitcast [3 x i8]* %ovisible2906 to i24*
  %bf.load2907 = load i24, i24* %990, align 1
  %bf.lshr2908 = lshr i24 %bf.load2907, 16
  %bf.clear2909 = and i24 %bf.lshr2908, 1
  %bf.cast2910 = zext i24 %bf.clear2909 to i32
  %tobool2911 = icmp ne i32 %bf.cast2910, 0
  br i1 %tobool2911, label %if.then.2912, label %if.else.2920

if.then.2912:                                     ; preds = %if.else.2902
  %991 = load %union.rec*, %union.rec** %y, align 8
  %os12913 = bitcast %union.rec* %991 to %struct.word_type*
  %ou12914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12913, i32 0, i32 1
  %ofpos2915 = bitcast %union.FIRST_UNION* %ou12914 to %struct.FILE_POS*
  %992 = load %union.rec*, %union.rec** %y, align 8
  %os12916 = bitcast %union.rec* %992 to %struct.word_type*
  %ostring2917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12916, i32 0, i32 4
  %arraydecay2918 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring2917, i32 0, i32 0
  %call2919 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos2915, i8* %arraydecay2918)
  br label %if.end.2928

if.else.2920:                                     ; preds = %if.else.2902
  %993 = load %union.rec*, %union.rec** %z, align 8
  %os12921 = bitcast %union.rec* %993 to %struct.word_type*
  %ou22922 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12921, i32 0, i32 2
  %os262923 = bitcast %union.SECOND_UNION* %ou22922 to %struct.anon.5*
  %ovisible2924 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os262923, i32 0, i32 1
  %994 = bitcast [3 x i8]* %ovisible2924 to i24*
  %bf.load2925 = load i24, i24* %994, align 1
  %bf.clear2926 = and i24 %bf.load2925, -65537
  %bf.set2927 = or i24 %bf.clear2926, 65536
  store i24 %bf.set2927, i24* %994, align 1
  br label %if.end.2928

if.end.2928:                                      ; preds = %if.else.2920, %if.then.2912
  br label %if.end.2929

if.end.2929:                                      ; preds = %if.end.2928, %if.then.2894
  br label %if.end.2930

if.end.2930:                                      ; preds = %if.end.2929, %if.then.2869
  br label %for.inc.2931

for.inc.2931:                                     ; preds = %if.end.2930
  %995 = load %union.rec*, %union.rec** %link, align 8
  %os12932 = bitcast %union.rec* %995 to %struct.word_type*
  %olist2933 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12932, i32 0, i32 0
  %arrayidx2934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2933, i32 0, i64 0
  %osucc2935 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2934, i32 0, i32 1
  %996 = load %union.rec*, %union.rec** %osucc2935, align 8
  store %union.rec* %996, %union.rec** %link, align 8
  br label %for.cond

for.end.2936:                                     ; preds = %for.cond
  %997 = load %union.rec*, %union.rec** %export_list, align 8
  %call2937 = call i32 @DisposeObject(%union.rec* %997)
  call void @PopScope()
  br label %if.end.2938

if.end.2938:                                      ; preds = %for.end.2936, %if.end.1441
  %998 = load %union.rec*, %union.rec** %import_list, align 8
  %os12939 = bitcast %union.rec* %998 to %struct.word_type*
  %olist2940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12939, i32 0, i32 0
  %arrayidx2941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2940, i32 0, i64 0
  %osucc2942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2941, i32 0, i32 1
  %999 = load %union.rec*, %union.rec** %osucc2942, align 8
  store %union.rec* %999, %union.rec** %link, align 8
  br label %for.cond.2943

for.cond.2943:                                    ; preds = %for.inc.2947, %if.end.2938
  %1000 = load %union.rec*, %union.rec** %link, align 8
  %1001 = load %union.rec*, %union.rec** %import_list, align 8
  %cmp2944 = icmp ne %union.rec* %1000, %1001
  br i1 %cmp2944, label %for.body.2946, label %for.end.2952

for.body.2946:                                    ; preds = %for.cond.2943
  call void @PopScope()
  br label %for.inc.2947

for.inc.2947:                                     ; preds = %for.body.2946
  %1002 = load %union.rec*, %union.rec** %link, align 8
  %os12948 = bitcast %union.rec* %1002 to %struct.word_type*
  %olist2949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12948, i32 0, i32 0
  %arrayidx2950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2949, i32 0, i64 0
  %osucc2951 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2950, i32 0, i32 1
  %1003 = load %union.rec*, %union.rec** %osucc2951, align 8
  store %union.rec* %1003, %union.rec** %link, align 8
  br label %for.cond.2943

for.end.2952:                                     ; preds = %for.cond.2943
  %1004 = load %union.rec*, %union.rec** %import_list, align 8
  %os12953 = bitcast %union.rec* %1004 to %struct.word_type*
  %olist2954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12953, i32 0, i32 0
  %arrayidx2955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2954, i32 0, i64 0
  %osucc2956 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2955, i32 0, i32 1
  %1005 = load %union.rec*, %union.rec** %osucc2956, align 8
  %1006 = load %union.rec*, %union.rec** %import_list, align 8
  %cmp2957 = icmp eq %union.rec* %1005, %1006
  br i1 %cmp2957, label %if.then.2962, label %lor.lhs.false.2959

lor.lhs.false.2959:                               ; preds = %for.end.2952
  %1007 = load %union.rec*, %union.rec** %curr_encl, align 8
  %1008 = load %union.rec*, %union.rec** %encl.addr, align 8
  %cmp2960 = icmp ne %union.rec* %1007, %1008
  br i1 %cmp2960, label %if.then.2962, label %if.else.2964

if.then.2962:                                     ; preds = %lor.lhs.false.2959, %for.end.2952
  %1009 = load %union.rec*, %union.rec** %import_list, align 8
  %call2963 = call i32 @DisposeObject(%union.rec* %1009)
  store %union.rec* null, %union.rec** %import_list, align 8
  br label %if.end.2967

if.else.2964:                                     ; preds = %lor.lhs.false.2959
  %1010 = load %union.rec*, %union.rec** %import_list, align 8
  %1011 = load %union.rec*, %union.rec** %res, align 8
  %os62965 = bitcast %union.rec* %1011 to %struct.symbol_type*
  %oimports2966 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os62965, i32 0, i32 9
  store %union.rec* %1010, %union.rec** %oimports2966, align 8
  br label %if.end.2967

if.end.2967:                                      ; preds = %if.else.2964, %if.then.2962
  call void @BodyParAllowed()
  %1012 = load %union.rec*, %union.rec** %t, align 8
  %cmp2968 = icmp eq %union.rec* %1012, null
  br i1 %cmp2968, label %if.then.2970, label %if.end.2972

if.then.2970:                                     ; preds = %if.end.2967
  %call2971 = call %union.rec* @LexGetToken()
  store %union.rec* %call2971, %union.rec** %t, align 8
  br label %if.end.2972

if.end.2972:                                      ; preds = %if.then.2970, %if.end.2967
  br label %while.cond

while.end.2973:                                   ; preds = %if.then.1409, %if.then.1385, %if.then.244, %lor.end
  %1013 = load %union.rec*, %union.rec** %t, align 8
  %1014 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* %1013, %union.rec** %1014, align 8
  br label %return

return:                                           ; preds = %while.end.2973, %if.then.2614, %if.then.2462, %if.then.2103, %if.then.1560
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ReadLangDef(%union.rec* %encl) #0 {
entry:
  %encl.addr = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %names = alloca %union.rec*, align 8
  %inside = alloca %union.rec*, align 8
  store %union.rec* %encl, %union.rec** %encl.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
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
  store i8 17, i8* %otype, align 1
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
  store %union.rec* %12, %union.rec** %names, align 8
  %call30 = call %union.rec* @LexGetToken()
  store %union.rec* %call30, %union.rec** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.164, %if.end.13
  %17 = load %union.rec*, %union.rec** %t, align 8
  %os131 = bitcast %union.rec* %17 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os1133 = bitcast %union.FIRST_UNION* %ou132 to %struct.anon*
  %otype34 = getelementptr inbounds %struct.anon, %struct.anon* %os1133, i32 0, i32 0
  %18 = load i8, i8* %otype34, align 1
  %conv35 = zext i8 %18 to i32
  %cmp36 = icmp eq i32 %conv35, 11
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %19 = load %union.rec*, %union.rec** %t, align 8
  %os138 = bitcast %union.rec* %19 to %struct.word_type*
  %ou139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 1
  %os1140 = bitcast %union.FIRST_UNION* %ou139 to %struct.anon*
  %otype41 = getelementptr inbounds %struct.anon, %struct.anon* %os1140, i32 0, i32 0
  %20 = load i8, i8* %otype41, align 1
  %conv42 = zext i8 %20 to i32
  %cmp43 = icmp eq i32 %conv42, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %21 = phi i1 [ true, %while.cond ], [ %cmp43, %lor.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %22 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv45 = zext i8 %22 to i32
  store i32 %conv45, i32* @zz_size, align 4
  %conv46 = sext i32 %conv45 to i64
  %cmp47 = icmp uge i64 %conv46, 265
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %while.body
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call50 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %23)
  br label %if.end.68

if.else.51:                                       ; preds = %while.body
  %24 = load i32, i32* @zz_size, align 4
  %idxprom52 = sext i32 %24 to i64
  %arrayidx53 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom52
  %25 = load %union.rec*, %union.rec** %arrayidx53, align 8
  %cmp54 = icmp eq %union.rec* %25, null
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.else.51
  %26 = load i32, i32* @zz_size, align 4
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call57 = call %union.rec* @GetMemory(i32 %26, %struct.FILE_POS* %27)
  store %union.rec* %call57, %union.rec** @zz_hold, align 8
  br label %if.end.67

if.else.58:                                       ; preds = %if.else.51
  %28 = load i32, i32* @zz_size, align 4
  %idxprom59 = sext i32 %28 to i64
  %arrayidx60 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom59
  %29 = load %union.rec*, %union.rec** %arrayidx60, align 8
  store %union.rec* %29, %union.rec** @zz_hold, align 8
  store %union.rec* %29, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os161 = bitcast %union.rec* %30 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 0
  %opred64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred64, align 8
  %32 = load i32, i32* @zz_size, align 4
  %idxprom65 = sext i32 %32 to i64
  %arrayidx66 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom65
  store %union.rec* %31, %union.rec** %arrayidx66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.49
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os169 = bitcast %union.rec* %33 to %struct.word_type*
  %ou170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 1
  %os1171 = bitcast %union.FIRST_UNION* %ou170 to %struct.anon*
  %otype72 = getelementptr inbounds %struct.anon, %struct.anon* %os1171, i32 0, i32 0
  store i8 0, i8* %otype72, align 1
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os173 = bitcast %union.rec* %35 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 1
  %osucc76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 1
  store %union.rec* %34, %union.rec** %osucc76, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os177 = bitcast %union.rec* %36 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 1
  %opred80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 0
  store %union.rec* %34, %union.rec** %opred80, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os181 = bitcast %union.rec* %37 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 0
  %osucc84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 1
  store %union.rec* %34, %union.rec** %osucc84, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %38 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 0
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  store %union.rec* %34, %union.rec** %opred88, align 8
  store %union.rec* %34, %union.rec** @xx_link, align 8
  %39 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %39, %union.rec** @zz_res, align 8
  %40 = load %union.rec*, %union.rec** %names, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp89 = icmp eq %union.rec* %41, null
  br i1 %cmp89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.68
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.123

cond.false:                                       ; preds = %if.end.68
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp91 = icmp eq %union.rec* %43, null
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.false
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.94:                                    ; preds = %cond.false
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %45 to %struct.word_type*
  %olist96 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist96, i32 0, i64 0
  %opred98 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx97, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %opred98, align 8
  store %union.rec* %46, %union.rec** @zz_tmp, align 8
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  %os199 = bitcast %union.rec* %47 to %struct.word_type*
  %olist100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist100, i32 0, i64 0
  %opred102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx101, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred102, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %49 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 0
  %opred106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 0
  store %union.rec* %48, %union.rec** %opred106, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1107 = bitcast %union.rec* %51 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 0
  %opred110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred110, align 8
  %os1111 = bitcast %union.rec* %52 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 0
  %osucc114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 1
  store %union.rec* %50, %union.rec** %osucc114, align 8
  %53 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1115 = bitcast %union.rec* %54 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 0
  %opred118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  store %union.rec* %53, %union.rec** %opred118, align 8
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %56 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1119 = bitcast %union.rec* %56 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %osucc122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 1
  store %union.rec* %55, %union.rec** %osucc122, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.94, %cond.true.93
  %cond = phi %union.rec* [ %44, %cond.true.93 ], [ %55, %cond.false.94 ]
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.end, %cond.true
  %cond124 = phi %union.rec* [ %42, %cond.true ], [ %cond, %cond.end ]
  %57 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %57, %union.rec** @zz_res, align 8
  %58 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %58, %union.rec** @zz_hold, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp125 = icmp eq %union.rec* %59, null
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.end.123
  %60 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.164

cond.false.128:                                   ; preds = %cond.end.123
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp129 = icmp eq %union.rec* %61, null
  br i1 %cmp129, label %cond.true.131, label %cond.false.132

cond.true.131:                                    ; preds = %cond.false.128
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.162

cond.false.132:                                   ; preds = %cond.false.128
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1134 = bitcast %union.rec* %63 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 1
  %opred137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred137, align 8
  store %union.rec* %64, %union.rec** @zz_tmp, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1138 = bitcast %union.rec* %65 to %struct.word_type*
  %olist139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist139, i32 0, i64 1
  %opred141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx140, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %opred141, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1142 = bitcast %union.rec* %67 to %struct.word_type*
  %olist143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist143, i32 0, i64 1
  %opred145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx144, i32 0, i32 0
  store %union.rec* %66, %union.rec** %opred145, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1146 = bitcast %union.rec* %69 to %struct.word_type*
  %olist147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist147, i32 0, i64 1
  %opred149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx148, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %opred149, align 8
  %os1150 = bitcast %union.rec* %70 to %struct.word_type*
  %olist151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist151, i32 0, i64 1
  %osucc153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx152, i32 0, i32 1
  store %union.rec* %68, %union.rec** %osucc153, align 8
  %71 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1154 = bitcast %union.rec* %72 to %struct.word_type*
  %olist155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist155, i32 0, i64 1
  %opred157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx156, i32 0, i32 0
  store %union.rec* %71, %union.rec** %opred157, align 8
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %74 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1158 = bitcast %union.rec* %74 to %struct.word_type*
  %olist159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist159, i32 0, i64 1
  %osucc161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx160, i32 0, i32 1
  store %union.rec* %73, %union.rec** %osucc161, align 8
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.132, %cond.true.131
  %cond163 = phi %union.rec* [ %62, %cond.true.131 ], [ %73, %cond.false.132 ]
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.end.162, %cond.true.127
  %cond165 = phi %union.rec* [ %60, %cond.true.127 ], [ %cond163, %cond.end.162 ]
  %call166 = call %union.rec* @LexGetToken()
  store %union.rec* %call166, %union.rec** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %75 = load %union.rec*, %union.rec** %t, align 8
  %os1167 = bitcast %union.rec* %75 to %struct.word_type*
  %ou1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 1
  %os11169 = bitcast %union.FIRST_UNION* %ou1168 to %struct.anon*
  %otype170 = getelementptr inbounds %struct.anon, %struct.anon* %os11169, i32 0, i32 0
  %76 = load i8, i8* %otype170, align 1
  %conv171 = zext i8 %76 to i32
  %cmp172 = icmp ne i32 %conv171, 102
  br i1 %cmp172, label %if.then.174, label %if.end.215

if.then.174:                                      ; preds = %while.end
  %77 = load %union.rec*, %union.rec** %t, align 8
  %os1175 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1176 to %struct.FILE_POS*
  %call177 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %78 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %79, %union.rec** @zz_hold, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1178 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 1
  %os11180 = bitcast %union.FIRST_UNION* %ou1179 to %struct.anon*
  %otype181 = getelementptr inbounds %struct.anon, %struct.anon* %os11180, i32 0, i32 0
  %81 = load i8, i8* %otype181, align 1
  %conv182 = zext i8 %81 to i32
  %cmp183 = icmp eq i32 %conv182, 11
  br i1 %cmp183, label %cond.true.192, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.174
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1185 = bitcast %union.rec* %82 to %struct.word_type*
  %ou1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 1
  %os11187 = bitcast %union.FIRST_UNION* %ou1186 to %struct.anon*
  %otype188 = getelementptr inbounds %struct.anon, %struct.anon* %os11187, i32 0, i32 0
  %83 = load i8, i8* %otype188, align 1
  %conv189 = zext i8 %83 to i32
  %cmp190 = icmp eq i32 %conv189, 12
  br i1 %cmp190, label %cond.true.192, label %cond.false.197

cond.true.192:                                    ; preds = %lor.lhs.false, %if.then.174
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 1
  %os11195 = bitcast %union.FIRST_UNION* %ou1194 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11195, i32 0, i32 1
  %85 = load i8, i8* %orec_size, align 1
  %conv196 = zext i8 %85 to i32
  br label %cond.end.205

cond.false.197:                                   ; preds = %lor.lhs.false
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1198 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 1
  %os11200 = bitcast %union.FIRST_UNION* %ou1199 to %struct.anon*
  %otype201 = getelementptr inbounds %struct.anon, %struct.anon* %os11200, i32 0, i32 0
  %87 = load i8, i8* %otype201, align 1
  %idxprom202 = zext i8 %87 to i64
  %arrayidx203 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom202
  %88 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %88 to i32
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.197, %cond.true.192
  %cond206 = phi i32 [ %conv196, %cond.true.192 ], [ %conv204, %cond.false.197 ]
  store i32 %cond206, i32* @zz_size, align 4
  %89 = load i32, i32* @zz_size, align 4
  %idxprom207 = sext i32 %89 to i64
  %arrayidx208 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom207
  %90 = load %union.rec*, %union.rec** %arrayidx208, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1209 = bitcast %union.rec* %91 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 0
  %opred212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred212, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = load i32, i32* @zz_size, align 4
  %idxprom213 = sext i32 %93 to i64
  %arrayidx214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom213
  store %union.rec* %92, %union.rec** %arrayidx214, align 8
  br label %return

if.end.215:                                       ; preds = %while.end
  %94 = load %union.rec*, %union.rec** %encl.addr, align 8
  %call216 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %94, i32 0, i32 0)
  store %union.rec* %call216, %union.rec** %inside, align 8
  %95 = load %union.rec*, %union.rec** %inside, align 8
  %call217 = call %union.rec* @ReplaceWithTidy(%union.rec* %95, i32 0)
  store %union.rec* %call217, %union.rec** %inside, align 8
  %96 = load %union.rec*, %union.rec** %names, align 8
  %97 = load %union.rec*, %union.rec** %inside, align 8
  call void @LanguageDefine(%union.rec* %96, %union.rec* %97)
  br label %return

return:                                           ; preds = %if.end.215, %cond.end.205
  ret void
}

declare void @BodyParNotAllowed() #1

declare void @PushScope(%union.rec*, i32, i32) #1

declare i8* @SymName(%union.rec*) #1

declare void @SuppressScope() #1

declare void @UnSuppressScope() #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @ReadMacro(%union.rec** %token, %union.rec* %curr_encl, %union.rec* %encl) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %token.addr = alloca %union.rec**, align 8
  %curr_encl.addr = alloca %union.rec*, align 8
  %encl.addr = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec** %token, %union.rec*** %token.addr, align 8
  store %union.rec* %curr_encl, %union.rec** %curr_encl.addr, align 8
  store %union.rec* %encl, %union.rec** %encl.addr, align 8
  call void @SuppressScope()
  %0 = load %union.rec**, %union.rec*** %token.addr, align 8
  %1 = load %union.rec*, %union.rec** %0, align 8
  store %union.rec* %1, %union.rec** @zz_hold, align 8
  %2 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2, %union.rec** @zz_hold, align 8
  %3 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12 = bitcast %union.rec* %5 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %6 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %7 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os19 = bitcast %union.rec* %7 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %os1111 = bitcast %union.FIRST_UNION* %ou110 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os1111, i32 0, i32 1
  %8 = load i8, i8* %orec_size, align 1
  %conv12 = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os113 = bitcast %union.rec* %9 to %struct.word_type*
  %ou114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os1115 = bitcast %union.FIRST_UNION* %ou114 to %struct.anon*
  %otype16 = getelementptr inbounds %struct.anon, %struct.anon* %os1115, i32 0, i32 0
  %10 = load i8, i8* %otype16, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv17 = zext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ %conv17, %cond.false ]
  store i32 %cond, i32* @zz_size, align 4
  %12 = load i32, i32* @zz_size, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom18
  %13 = load %union.rec*, %union.rec** %arrayidx19, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %14 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %16 = load i32, i32* @zz_size, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom22
  store %union.rec* %15, %union.rec** %arrayidx23, align 8
  %call = call %union.rec* @LexGetToken()
  store %union.rec* %call, %union.rec** %t, align 8
  %17 = load %union.rec*, %union.rec** %t, align 8
  %os124 = bitcast %union.rec* %17 to %struct.word_type*
  %ou125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou125 to %struct.anon*
  %otype27 = getelementptr inbounds %struct.anon, %struct.anon* %os1126, i32 0, i32 0
  %18 = load i8, i8* %otype27, align 1
  %conv28 = zext i8 %18 to i32
  %cmp29 = icmp eq i32 %conv28, 11
  br i1 %cmp29, label %if.end, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %cond.end
  %19 = load %union.rec*, %union.rec** %t, align 8
  %os132 = bitcast %union.rec* %19 to %struct.word_type*
  %ou133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 1
  %os1134 = bitcast %union.FIRST_UNION* %ou133 to %struct.anon*
  %otype35 = getelementptr inbounds %struct.anon, %struct.anon* %os1134, i32 0, i32 0
  %20 = load i8, i8* %otype35, align 1
  %conv36 = zext i8 %20 to i32
  %cmp37 = icmp eq i32 %conv36, 12
  br i1 %cmp37, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.31
  %21 = load %union.rec*, %union.rec** %t, align 8
  %os139 = bitcast %union.rec* %21 to %struct.word_type*
  %ou140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou140 to %struct.FILE_POS*
  %call41 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  call void @UnSuppressScope()
  %22 = load %union.rec*, %union.rec** %t, align 8
  %23 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* %22, %union.rec** %23, align 8
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.31, %cond.end
  %24 = load %union.rec*, %union.rec** %t, align 8
  %os142 = bitcast %union.rec* %24 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %t, align 8
  %os143 = bitcast %union.rec* %25 to %struct.word_type*
  %ou144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 1
  %ofpos45 = bitcast %union.FIRST_UNION* %ou144 to %struct.FILE_POS*
  %26 = load %union.rec*, %union.rec** %curr_encl.addr, align 8
  %call46 = call %union.rec* @InsertSym(i8* %arraydecay, i8 zeroext -114, %struct.FILE_POS* %ofpos45, i8 zeroext 0, i32 0, i32 1, i32 0, %union.rec* %26, %union.rec* null)
  store %union.rec* %call46, %union.rec** %res, align 8
  %27 = load %union.rec*, %union.rec** %curr_encl.addr, align 8
  %28 = load %union.rec*, %union.rec** %encl.addr, align 8
  %cmp47 = icmp ne %union.rec* %27, %28
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end
  %29 = load %union.rec*, %union.rec** %res, align 8
  %os150 = bitcast %union.rec* %29 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ovisible = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %30 = bitcast [3 x i8]* %ovisible to i24*
  %bf.load = load i24, i24* %30, align 1
  %bf.clear = and i24 %bf.load, -65537
  %bf.set = or i24 %bf.clear, 65536
  store i24 %bf.set, i24* %30, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end
  call void @UnSuppressScope()
  %31 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %31, %union.rec** @zz_hold, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %32, %union.rec** @zz_hold, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os152 = bitcast %union.rec* %33 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %os1154 = bitcast %union.FIRST_UNION* %ou153 to %struct.anon*
  %otype55 = getelementptr inbounds %struct.anon, %struct.anon* %os1154, i32 0, i32 0
  %34 = load i8, i8* %otype55, align 1
  %conv56 = zext i8 %34 to i32
  %cmp57 = icmp eq i32 %conv56, 11
  br i1 %cmp57, label %cond.true.67, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.end.51
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os160 = bitcast %union.rec* %35 to %struct.word_type*
  %ou161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 1
  %os1162 = bitcast %union.FIRST_UNION* %ou161 to %struct.anon*
  %otype63 = getelementptr inbounds %struct.anon, %struct.anon* %os1162, i32 0, i32 0
  %36 = load i8, i8* %otype63, align 1
  %conv64 = zext i8 %36 to i32
  %cmp65 = icmp eq i32 %conv64, 12
  br i1 %cmp65, label %cond.true.67, label %cond.false.73

cond.true.67:                                     ; preds = %lor.lhs.false.59, %if.end.51
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os168 = bitcast %union.rec* %37 to %struct.word_type*
  %ou169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 1
  %os1170 = bitcast %union.FIRST_UNION* %ou169 to %struct.anon*
  %orec_size71 = getelementptr inbounds %struct.anon, %struct.anon* %os1170, i32 0, i32 1
  %38 = load i8, i8* %orec_size71, align 1
  %conv72 = zext i8 %38 to i32
  br label %cond.end.81

cond.false.73:                                    ; preds = %lor.lhs.false.59
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %39 to %struct.word_type*
  %ou175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 1
  %os1176 = bitcast %union.FIRST_UNION* %ou175 to %struct.anon*
  %otype77 = getelementptr inbounds %struct.anon, %struct.anon* %os1176, i32 0, i32 0
  %40 = load i8, i8* %otype77, align 1
  %idxprom78 = zext i8 %40 to i64
  %arrayidx79 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom78
  %41 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %41 to i32
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.73, %cond.true.67
  %cond82 = phi i32 [ %conv72, %cond.true.67 ], [ %conv80, %cond.false.73 ]
  store i32 %cond82, i32* @zz_size, align 4
  %42 = load i32, i32* @zz_size, align 4
  %idxprom83 = sext i32 %42 to i64
  %arrayidx84 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom83
  %43 = load %union.rec*, %union.rec** %arrayidx84, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %44 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 0
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  store %union.rec* %43, %union.rec** %opred88, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = load i32, i32* @zz_size, align 4
  %idxprom89 = sext i32 %46 to i64
  %arrayidx90 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom89
  store %union.rec* %45, %union.rec** %arrayidx90, align 8
  %call91 = call %union.rec* @LexGetToken()
  store %union.rec* %call91, %union.rec** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.142, %cond.end.81
  %47 = load %union.rec*, %union.rec** %t, align 8
  %os192 = bitcast %union.rec* %47 to %struct.word_type*
  %ou193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 1
  %os1194 = bitcast %union.FIRST_UNION* %ou193 to %struct.anon*
  %otype95 = getelementptr inbounds %struct.anon, %struct.anon* %os1194, i32 0, i32 0
  %48 = load i8, i8* %otype95, align 1
  %conv96 = zext i8 %48 to i32
  %cmp97 = icmp eq i32 %conv96, 11
  br i1 %cmp97, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %49 = load %union.rec*, %union.rec** %t, align 8
  %os199 = bitcast %union.rec* %49 to %struct.word_type*
  %ou1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 1
  %os11101 = bitcast %union.FIRST_UNION* %ou1100 to %struct.anon*
  %otype102 = getelementptr inbounds %struct.anon, %struct.anon* %os11101, i32 0, i32 0
  %50 = load i8, i8* %otype102, align 1
  %conv103 = zext i8 %50 to i32
  %cmp104 = icmp eq i32 %conv103, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %51 = phi i1 [ true, %while.cond ], [ %cmp104, %lor.rhs ]
  br i1 %51, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %52 = load %union.rec*, %union.rec** %t, align 8
  %os1106 = bitcast %union.rec* %52 to %struct.word_type*
  %ostring107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 4
  %arraydecay108 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring107, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %res, align 8
  %54 = load %union.rec*, %union.rec** %t, align 8
  %os1109 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 1
  %ofpos111 = bitcast %union.FIRST_UNION* %ou1110 to %struct.FILE_POS*
  call void @InsertAlternativeName(i8* %arraydecay108, %union.rec* %53, %struct.FILE_POS* %ofpos111)
  %55 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %55, %union.rec** @zz_hold, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %56, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1112 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 1
  %os11114 = bitcast %union.FIRST_UNION* %ou1113 to %struct.anon*
  %otype115 = getelementptr inbounds %struct.anon, %struct.anon* %os11114, i32 0, i32 0
  %58 = load i8, i8* %otype115, align 1
  %conv116 = zext i8 %58 to i32
  %cmp117 = icmp eq i32 %conv116, 11
  br i1 %cmp117, label %cond.true.127, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %while.body
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1120 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 1
  %os11122 = bitcast %union.FIRST_UNION* %ou1121 to %struct.anon*
  %otype123 = getelementptr inbounds %struct.anon, %struct.anon* %os11122, i32 0, i32 0
  %60 = load i8, i8* %otype123, align 1
  %conv124 = zext i8 %60 to i32
  %cmp125 = icmp eq i32 %conv124, 12
  br i1 %cmp125, label %cond.true.127, label %cond.false.133

cond.true.127:                                    ; preds = %lor.lhs.false.119, %while.body
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 1
  %os11130 = bitcast %union.FIRST_UNION* %ou1129 to %struct.anon*
  %orec_size131 = getelementptr inbounds %struct.anon, %struct.anon* %os11130, i32 0, i32 1
  %62 = load i8, i8* %orec_size131, align 1
  %conv132 = zext i8 %62 to i32
  br label %cond.end.142

cond.false.133:                                   ; preds = %lor.lhs.false.119
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1135 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 1
  %os11137 = bitcast %union.FIRST_UNION* %ou1136 to %struct.anon*
  %otype138 = getelementptr inbounds %struct.anon, %struct.anon* %os11137, i32 0, i32 0
  %64 = load i8, i8* %otype138, align 1
  %idxprom139 = zext i8 %64 to i64
  %arrayidx140 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom139
  %65 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %65 to i32
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.133, %cond.true.127
  %cond143 = phi i32 [ %conv132, %cond.true.127 ], [ %conv141, %cond.false.133 ]
  store i32 %cond143, i32* @zz_size, align 4
  %66 = load i32, i32* @zz_size, align 4
  %idxprom144 = sext i32 %66 to i64
  %arrayidx145 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom144
  %67 = load %union.rec*, %union.rec** %arrayidx145, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1146 = bitcast %union.rec* %68 to %struct.word_type*
  %olist147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist147, i32 0, i64 0
  %opred149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx148, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred149, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %70 = load i32, i32* @zz_size, align 4
  %idxprom150 = sext i32 %70 to i64
  %arrayidx151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom150
  store %union.rec* %69, %union.rec** %arrayidx151, align 8
  %call152 = call %union.rec* @LexGetToken()
  store %union.rec* %call152, %union.rec** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %71 = load %union.rec*, %union.rec** %t, align 8
  %os1153 = bitcast %union.rec* %71 to %struct.word_type*
  %ou1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 1
  %os11155 = bitcast %union.FIRST_UNION* %ou1154 to %struct.anon*
  %otype156 = getelementptr inbounds %struct.anon, %struct.anon* %os11155, i32 0, i32 0
  %72 = load i8, i8* %otype156, align 1
  %conv157 = zext i8 %72 to i32
  %cmp158 = icmp ne i32 %conv157, 102
  br i1 %cmp158, label %if.then.160, label %if.end.165

if.then.160:                                      ; preds = %while.end
  %73 = load %union.rec*, %union.rec** %t, align 8
  %os1161 = bitcast %union.rec* %73 to %struct.word_type*
  %ou1162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 1
  %ofpos163 = bitcast %union.FIRST_UNION* %ou1162 to %struct.FILE_POS*
  %call164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %74 = load %union.rec*, %union.rec** %t, align 8
  %75 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* %74, %union.rec** %75, align 8
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end.165:                                       ; preds = %while.end
  %76 = load %union.rec*, %union.rec** %t, align 8
  %77 = load %union.rec*, %union.rec** %res, align 8
  call void @ReadTokenList(%union.rec* %76, %union.rec* %77)
  %78 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %78, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %79, %union.rec** @zz_hold, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 1
  %os11168 = bitcast %union.FIRST_UNION* %ou1167 to %struct.anon*
  %otype169 = getelementptr inbounds %struct.anon, %struct.anon* %os11168, i32 0, i32 0
  %81 = load i8, i8* %otype169, align 1
  %conv170 = zext i8 %81 to i32
  %cmp171 = icmp eq i32 %conv170, 11
  br i1 %cmp171, label %cond.true.181, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %if.end.165
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %82 to %struct.word_type*
  %ou1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 1
  %os11176 = bitcast %union.FIRST_UNION* %ou1175 to %struct.anon*
  %otype177 = getelementptr inbounds %struct.anon, %struct.anon* %os11176, i32 0, i32 0
  %83 = load i8, i8* %otype177, align 1
  %conv178 = zext i8 %83 to i32
  %cmp179 = icmp eq i32 %conv178, 12
  br i1 %cmp179, label %cond.true.181, label %cond.false.187

cond.true.181:                                    ; preds = %lor.lhs.false.173, %if.end.165
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1182 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 1
  %os11184 = bitcast %union.FIRST_UNION* %ou1183 to %struct.anon*
  %orec_size185 = getelementptr inbounds %struct.anon, %struct.anon* %os11184, i32 0, i32 1
  %85 = load i8, i8* %orec_size185, align 1
  %conv186 = zext i8 %85 to i32
  br label %cond.end.195

cond.false.187:                                   ; preds = %lor.lhs.false.173
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1188 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 1
  %os11190 = bitcast %union.FIRST_UNION* %ou1189 to %struct.anon*
  %otype191 = getelementptr inbounds %struct.anon, %struct.anon* %os11190, i32 0, i32 0
  %87 = load i8, i8* %otype191, align 1
  %idxprom192 = zext i8 %87 to i64
  %arrayidx193 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom192
  %88 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %88 to i32
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.187, %cond.true.181
  %cond196 = phi i32 [ %conv186, %cond.true.181 ], [ %conv194, %cond.false.187 ]
  store i32 %cond196, i32* @zz_size, align 4
  %89 = load i32, i32* @zz_size, align 4
  %idxprom197 = sext i32 %89 to i64
  %arrayidx198 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom197
  %90 = load %union.rec*, %union.rec** %arrayidx198, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1199 = bitcast %union.rec* %91 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 0
  %opred202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred202, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = load i32, i32* @zz_size, align 4
  %idxprom203 = sext i32 %93 to i64
  %arrayidx204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom203
  store %union.rec* %92, %union.rec** %arrayidx204, align 8
  %94 = load %union.rec*, %union.rec** %res, align 8
  %os6 = bitcast %union.rec* %94 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 4
  %95 = load %union.rec*, %union.rec** %osym_body, align 8
  %os1205 = bitcast %union.rec* %95 to %struct.word_type*
  %olist206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist206, i32 0, i64 1
  %opred208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx207, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred208, align 8
  store %union.rec* %96, %union.rec** %t, align 8
  %97 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %97, %union.rec** @zz_hold, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1209 = bitcast %union.rec* %98 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 1
  %99 = load %union.rec*, %union.rec** %osucc, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp212 = icmp eq %union.rec* %99, %100
  br i1 %cmp212, label %cond.true.214, label %cond.false.215

cond.true.214:                                    ; preds = %cond.end.195
  br label %cond.end.244

cond.false.215:                                   ; preds = %cond.end.195
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1216 = bitcast %union.rec* %101 to %struct.word_type*
  %olist217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist217, i32 0, i64 1
  %osucc219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx218, i32 0, i32 1
  %102 = load %union.rec*, %union.rec** %osucc219, align 8
  store %union.rec* %102, %union.rec** @zz_res, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1220 = bitcast %union.rec* %103 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 1
  %opred223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %opred223, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1224 = bitcast %union.rec* %105 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 1
  %opred227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred227, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %107 to %struct.word_type*
  %olist229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist229, i32 0, i64 1
  %opred231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx230, i32 0, i32 0
  %108 = load %union.rec*, %union.rec** %opred231, align 8
  %os1232 = bitcast %union.rec* %108 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 1
  %osucc235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc235, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %110 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 1
  %osucc239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc239, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1240 = bitcast %union.rec* %111 to %struct.word_type*
  %olist241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist241, i32 0, i64 1
  %opred243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx242, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred243, align 8
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.215, %cond.true.214
  %cond245 = phi %union.rec* [ null, %cond.true.214 ], [ %112, %cond.false.215 ]
  %113 = load %union.rec*, %union.rec** %res, align 8
  %os6246 = bitcast %union.rec* %113 to %struct.symbol_type*
  %osym_body247 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6246, i32 0, i32 4
  store %union.rec* %cond245, %union.rec** %osym_body247, align 8
  %114 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %114, %union.rec** @zz_hold, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %115, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1248 = bitcast %union.rec* %116 to %struct.word_type*
  %ou1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 1
  %os11250 = bitcast %union.FIRST_UNION* %ou1249 to %struct.anon*
  %otype251 = getelementptr inbounds %struct.anon, %struct.anon* %os11250, i32 0, i32 0
  %117 = load i8, i8* %otype251, align 1
  %conv252 = zext i8 %117 to i32
  %cmp253 = icmp eq i32 %conv252, 11
  br i1 %cmp253, label %cond.true.263, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %cond.end.244
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1256 = bitcast %union.rec* %118 to %struct.word_type*
  %ou1257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 1
  %os11258 = bitcast %union.FIRST_UNION* %ou1257 to %struct.anon*
  %otype259 = getelementptr inbounds %struct.anon, %struct.anon* %os11258, i32 0, i32 0
  %119 = load i8, i8* %otype259, align 1
  %conv260 = zext i8 %119 to i32
  %cmp261 = icmp eq i32 %conv260, 12
  br i1 %cmp261, label %cond.true.263, label %cond.false.269

cond.true.263:                                    ; preds = %lor.lhs.false.255, %cond.end.244
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1264 = bitcast %union.rec* %120 to %struct.word_type*
  %ou1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 1
  %os11266 = bitcast %union.FIRST_UNION* %ou1265 to %struct.anon*
  %orec_size267 = getelementptr inbounds %struct.anon, %struct.anon* %os11266, i32 0, i32 1
  %121 = load i8, i8* %orec_size267, align 1
  %conv268 = zext i8 %121 to i32
  br label %cond.end.277

cond.false.269:                                   ; preds = %lor.lhs.false.255
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1270 = bitcast %union.rec* %122 to %struct.word_type*
  %ou1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 1
  %os11272 = bitcast %union.FIRST_UNION* %ou1271 to %struct.anon*
  %otype273 = getelementptr inbounds %struct.anon, %struct.anon* %os11272, i32 0, i32 0
  %123 = load i8, i8* %otype273, align 1
  %idxprom274 = zext i8 %123 to i64
  %arrayidx275 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom274
  %124 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %124 to i32
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.269, %cond.true.263
  %cond278 = phi i32 [ %conv268, %cond.true.263 ], [ %conv276, %cond.false.269 ]
  store i32 %cond278, i32* @zz_size, align 4
  %125 = load i32, i32* @zz_size, align 4
  %idxprom279 = sext i32 %125 to i64
  %arrayidx280 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom279
  %126 = load %union.rec*, %union.rec** %arrayidx280, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1281 = bitcast %union.rec* %127 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 0
  %opred284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred284, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = load i32, i32* @zz_size, align 4
  %idxprom285 = sext i32 %129 to i64
  %arrayidx286 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom285
  store %union.rec* %128, %union.rec** %arrayidx286, align 8
  %130 = load %union.rec*, %union.rec** %res, align 8
  %os1287 = bitcast %union.rec* %130 to %struct.word_type*
  %ou2288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 2
  %os26289 = bitcast %union.SECOND_UNION* %ou2288 to %struct.anon.5*
  %orecursive = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26289, i32 0, i32 1
  %131 = bitcast [3 x i8]* %orecursive to i24*
  %bf.load290 = load i24, i24* %131, align 1
  %bf.clear291 = and i24 %bf.load290, -1025
  store i24 %bf.clear291, i24* %131, align 1
  %132 = load %union.rec**, %union.rec*** %token.addr, align 8
  store %union.rec* null, %union.rec** %132, align 8
  %133 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %133, %union.rec** %retval
  br label %return

return:                                           ; preds = %cond.end.277, %if.then.160, %if.then
  %134 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %134
}

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #1

declare void @InsertAlternativeName(i8*, %union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

declare void @BodyParAllowed() #1

declare %union.rec* @SearchSym(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @PopScope() #1

declare void @LanguageDefine(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define internal void @ReadTokenList(%union.rec* %token, %union.rec* %res) #0 {
entry:
  %token.addr = alloca %union.rec*, align 8
  %res.addr = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %xsym = alloca %union.rec*, align 8
  %new_par = alloca %union.rec*, align 8
  %imps = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %scope_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.rec* %token, %union.rec** %token.addr, align 8
  store %union.rec* %res, %union.rec** %res.addr, align 8
  %call = call %union.rec* @LexGetToken()
  store %union.rec* %call, %union.rec** %t, align 8
  %0 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6 = bitcast %union.rec* %0 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 4
  %1 = load %union.rec*, %union.rec** %osym_body, align 8
  store %union.rec* %1, %union.rec** @zz_res, align 8
  %2 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2, %union.rec** @zz_hold, align 8
  %3 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp = icmp eq %union.rec* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.27

cond.false:                                       ; preds = %entry
  %5 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1 = icmp eq %union.rec* %5, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  %6 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %7 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %7 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %8, %union.rec** @zz_tmp, align 8
  %9 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14 = bitcast %union.rec* %9 to %struct.word_type*
  %olist5 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5, i32 0, i64 1
  %opred7 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred7, align 8
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18 = bitcast %union.rec* %11 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  store %union.rec* %10, %union.rec** %opred11, align 8
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_res, align 8
  %os112 = bitcast %union.rec* %13 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %opred15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred15, align 8
  %os116 = bitcast %union.rec* %14 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc, align 8
  %15 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %16 = load %union.rec*, %union.rec** @zz_res, align 8
  %os119 = bitcast %union.rec* %16 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %opred22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  store %union.rec* %15, %union.rec** %opred22, align 8
  %17 = load %union.rec*, %union.rec** @zz_res, align 8
  %18 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os123 = bitcast %union.rec* %18 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %osucc26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 1
  store %union.rec* %17, %union.rec** %osucc26, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi %union.rec* [ %6, %cond.true.2 ], [ %17, %cond.false.3 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi %union.rec* [ %4, %cond.true ], [ %cond, %cond.end ]
  %19 = load %union.rec*, %union.rec** %res.addr, align 8
  %os629 = bitcast %union.rec* %19 to %struct.symbol_type*
  %osym_body30 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os629, i32 0, i32 4
  store %union.rec* %cond28, %union.rec** %osym_body30, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %cond.end.27
  %20 = load %union.rec*, %union.rec** %t, align 8
  %os131 = bitcast %union.rec* %20 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %21 = load i8, i8* %otype, align 1
  %conv = zext i8 %21 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb.87
    i32 19, label %sw.bb.133
    i32 18, label %sw.bb.133
    i32 17, label %sw.bb.133
    i32 6, label %sw.bb.133
    i32 7, label %sw.bb.133
    i32 5, label %sw.bb.133
    i32 4, label %sw.bb.133
    i32 20, label %sw.bb.133
    i32 21, label %sw.bb.133
    i32 22, label %sw.bb.133
    i32 23, label %sw.bb.133
    i32 24, label %sw.bb.133
    i32 25, label %sw.bb.133
    i32 26, label %sw.bb.133
    i32 27, label %sw.bb.133
    i32 28, label %sw.bb.133
    i32 29, label %sw.bb.133
    i32 30, label %sw.bb.133
    i32 31, label %sw.bb.133
    i32 32, label %sw.bb.133
    i32 33, label %sw.bb.133
    i32 34, label %sw.bb.133
    i32 35, label %sw.bb.133
    i32 36, label %sw.bb.133
    i32 37, label %sw.bb.133
    i32 38, label %sw.bb.133
    i32 39, label %sw.bb.133
    i32 40, label %sw.bb.133
    i32 41, label %sw.bb.133
    i32 44, label %sw.bb.133
    i32 42, label %sw.bb.133
    i32 43, label %sw.bb.133
    i32 45, label %sw.bb.133
    i32 46, label %sw.bb.133
    i32 47, label %sw.bb.133
    i32 48, label %sw.bb.133
    i32 49, label %sw.bb.133
    i32 50, label %sw.bb.133
    i32 51, label %sw.bb.133
    i32 54, label %sw.bb.133
    i32 53, label %sw.bb.133
    i32 52, label %sw.bb.133
    i32 55, label %sw.bb.133
    i32 56, label %sw.bb.133
    i32 58, label %sw.bb.133
    i32 59, label %sw.bb.133
    i32 60, label %sw.bb.133
    i32 61, label %sw.bb.133
    i32 62, label %sw.bb.133
    i32 63, label %sw.bb.133
    i32 64, label %sw.bb.133
    i32 65, label %sw.bb.133
    i32 66, label %sw.bb.133
    i32 67, label %sw.bb.133
    i32 68, label %sw.bb.133
    i32 69, label %sw.bb.133
    i32 70, label %sw.bb.133
    i32 71, label %sw.bb.133
    i32 72, label %sw.bb.133
    i32 73, label %sw.bb.133
    i32 74, label %sw.bb.133
    i32 75, label %sw.bb.133
    i32 76, label %sw.bb.133
    i32 77, label %sw.bb.133
    i32 78, label %sw.bb.133
    i32 79, label %sw.bb.133
    i32 80, label %sw.bb.133
    i32 93, label %sw.bb.133
    i32 94, label %sw.bb.133
    i32 95, label %sw.bb.133
    i32 96, label %sw.bb.133
    i32 97, label %sw.bb.133
    i32 98, label %sw.bb.133
    i32 99, label %sw.bb.133
    i32 107, label %sw.bb.133
    i32 90, label %sw.bb.179
    i32 89, label %sw.bb.179
    i32 82, label %sw.bb.179
    i32 106, label %sw.bb.179
    i32 116, label %sw.bb.179
    i32 117, label %sw.bb.179
    i32 114, label %sw.bb.179
    i32 115, label %sw.bb.179
    i32 92, label %sw.bb.179
    i32 102, label %sw.bb.230
    i32 111, label %sw.bb.276
    i32 104, label %sw.bb.281
    i32 103, label %sw.bb.334
    i32 105, label %sw.bb.348
    i32 2, label %sw.bb.462
  ]

sw.bb:                                            ; preds = %for.cond
  %22 = load %union.rec*, %union.rec** %t, align 8
  %os132 = bitcast %union.rec* %22 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 4
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 0
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %cmp35 = icmp eq i32 %conv34, 64
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %24 = load %union.rec*, %union.rec** %t, align 8
  %os137 = bitcast %union.rec* %24 to %struct.word_type*
  %ou138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou138 to %struct.FILE_POS*
  %25 = load %union.rec*, %union.rec** %t, align 8
  %os139 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring40, i32 0, i32 0
  %call41 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %call42 = call %union.rec* @LexGetToken()
  store %union.rec* %call42, %union.rec** %t, align 8
  %26 = load %union.rec*, %union.rec** %res.addr, align 8
  %os643 = bitcast %union.rec* %26 to %struct.symbol_type*
  %osym_body44 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os643, i32 0, i32 4
  %27 = load %union.rec*, %union.rec** %osym_body44, align 8
  store %union.rec* %27, %union.rec** @zz_res, align 8
  %28 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp45 = icmp eq %union.rec* %29, null
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %if.end
  %30 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.83

cond.false.48:                                    ; preds = %if.end
  %31 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp49 = icmp eq %union.rec* %31, null
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.false.48
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.81

cond.false.52:                                    ; preds = %cond.false.48
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os153 = bitcast %union.rec* %33 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 1
  %opred56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred56, align 8
  store %union.rec* %34, %union.rec** @zz_tmp, align 8
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  %os157 = bitcast %union.rec* %35 to %struct.word_type*
  %olist58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist58, i32 0, i64 1
  %opred60 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx59, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred60, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os161 = bitcast %union.rec* %37 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 1
  %opred64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 0
  store %union.rec* %36, %union.rec** %opred64, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = load %union.rec*, %union.rec** @zz_res, align 8
  %os165 = bitcast %union.rec* %39 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %opred68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %opred68, align 8
  %os169 = bitcast %union.rec* %40 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 1
  %osucc72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 1
  store %union.rec* %38, %union.rec** %osucc72, align 8
  %41 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  %os173 = bitcast %union.rec* %42 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 1
  %opred76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 0
  store %union.rec* %41, %union.rec** %opred76, align 8
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  %44 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os177 = bitcast %union.rec* %44 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 1
  %osucc80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 1
  store %union.rec* %43, %union.rec** %osucc80, align 8
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.52, %cond.true.51
  %cond82 = phi %union.rec* [ %32, %cond.true.51 ], [ %43, %cond.false.52 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.47
  %cond84 = phi %union.rec* [ %30, %cond.true.47 ], [ %cond82, %cond.end.81 ]
  %45 = load %union.rec*, %union.rec** %res.addr, align 8
  %os685 = bitcast %union.rec* %45 to %struct.symbol_type*
  %osym_body86 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os685, i32 0, i32 4
  store %union.rec* %cond84, %union.rec** %osym_body86, align 8
  br label %sw.epilog

sw.bb.87:                                         ; preds = %for.cond
  %call88 = call %union.rec* @LexGetToken()
  store %union.rec* %call88, %union.rec** %t, align 8
  %46 = load %union.rec*, %union.rec** %res.addr, align 8
  %os689 = bitcast %union.rec* %46 to %struct.symbol_type*
  %osym_body90 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os689, i32 0, i32 4
  %47 = load %union.rec*, %union.rec** %osym_body90, align 8
  store %union.rec* %47, %union.rec** @zz_res, align 8
  %48 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp91 = icmp eq %union.rec* %49, null
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %sw.bb.87
  %50 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.129

cond.false.94:                                    ; preds = %sw.bb.87
  %51 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp95 = icmp eq %union.rec* %51, null
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.false.94
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.127

cond.false.98:                                    ; preds = %cond.false.94
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os199 = bitcast %union.rec* %53 to %struct.word_type*
  %olist100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist100, i32 0, i64 1
  %opred102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx101, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %opred102, align 8
  store %union.rec* %54, %union.rec** @zz_tmp, align 8
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1103 = bitcast %union.rec* %55 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 1
  %opred106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %opred106, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1107 = bitcast %union.rec* %57 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 1
  %opred110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 0
  store %union.rec* %56, %union.rec** %opred110, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1111 = bitcast %union.rec* %59 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 1
  %opred114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %opred114, align 8
  %os1115 = bitcast %union.rec* %60 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 1
  %osucc118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 1
  store %union.rec* %58, %union.rec** %osucc118, align 8
  %61 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %62 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1119 = bitcast %union.rec* %62 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 1
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  store %union.rec* %61, %union.rec** %opred122, align 8
  %63 = load %union.rec*, %union.rec** @zz_res, align 8
  %64 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1123 = bitcast %union.rec* %64 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 1
  %osucc126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 1
  store %union.rec* %63, %union.rec** %osucc126, align 8
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.98, %cond.true.97
  %cond128 = phi %union.rec* [ %52, %cond.true.97 ], [ %63, %cond.false.98 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.93
  %cond130 = phi %union.rec* [ %50, %cond.true.93 ], [ %cond128, %cond.end.127 ]
  %65 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6131 = bitcast %union.rec* %65 to %struct.symbol_type*
  %osym_body132 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6131, i32 0, i32 4
  store %union.rec* %cond130, %union.rec** %osym_body132, align 8
  br label %sw.epilog

sw.bb.133:                                        ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %call134 = call %union.rec* @LexGetToken()
  store %union.rec* %call134, %union.rec** %t, align 8
  %66 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6135 = bitcast %union.rec* %66 to %struct.symbol_type*
  %osym_body136 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6135, i32 0, i32 4
  %67 = load %union.rec*, %union.rec** %osym_body136, align 8
  store %union.rec* %67, %union.rec** @zz_res, align 8
  %68 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %68, %union.rec** @zz_hold, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp137 = icmp eq %union.rec* %69, null
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %sw.bb.133
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.175

cond.false.140:                                   ; preds = %sw.bb.133
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp141 = icmp eq %union.rec* %71, null
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.false.140
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.173

cond.false.144:                                   ; preds = %cond.false.140
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1145 = bitcast %union.rec* %73 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 1
  %opred148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 0
  %74 = load %union.rec*, %union.rec** %opred148, align 8
  store %union.rec* %74, %union.rec** @zz_tmp, align 8
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1149 = bitcast %union.rec* %75 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 1
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred152, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1153 = bitcast %union.rec* %77 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 1
  %opred156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 0
  store %union.rec* %76, %union.rec** %opred156, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1157 = bitcast %union.rec* %79 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 1
  %opred160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred160, align 8
  %os1161 = bitcast %union.rec* %80 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 1
  %osucc164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 1
  store %union.rec* %78, %union.rec** %osucc164, align 8
  %81 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %82 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1165 = bitcast %union.rec* %82 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 1
  %opred168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred168, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %84 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1169 = bitcast %union.rec* %84 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 1
  %osucc172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 1
  store %union.rec* %83, %union.rec** %osucc172, align 8
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.144, %cond.true.143
  %cond174 = phi %union.rec* [ %72, %cond.true.143 ], [ %83, %cond.false.144 ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true.139
  %cond176 = phi %union.rec* [ %70, %cond.true.139 ], [ %cond174, %cond.end.173 ]
  %85 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6177 = bitcast %union.rec* %85 to %struct.symbol_type*
  %osym_body178 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6177, i32 0, i32 4
  store %union.rec* %cond176, %union.rec** %osym_body178, align 8
  br label %sw.epilog

sw.bb.179:                                        ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %86 = load %union.rec*, %union.rec** %t, align 8
  %os1180 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 1
  %ofpos182 = bitcast %union.FIRST_UNION* %ou1181 to %struct.FILE_POS*
  %87 = load %union.rec*, %union.rec** %t, align 8
  %os2 = bitcast %union.rec* %87 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %88 = load %union.rec*, %union.rec** %oactual, align 8
  %call183 = call i8* @SymName(%union.rec* %88)
  %call184 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos182, i8* %call183)
  %call185 = call %union.rec* @LexGetToken()
  store %union.rec* %call185, %union.rec** %t, align 8
  %89 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6186 = bitcast %union.rec* %89 to %struct.symbol_type*
  %osym_body187 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6186, i32 0, i32 4
  %90 = load %union.rec*, %union.rec** %osym_body187, align 8
  store %union.rec* %90, %union.rec** @zz_res, align 8
  %91 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %91, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp188 = icmp eq %union.rec* %92, null
  br i1 %cmp188, label %cond.true.190, label %cond.false.191

cond.true.190:                                    ; preds = %sw.bb.179
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.226

cond.false.191:                                   ; preds = %sw.bb.179
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp192 = icmp eq %union.rec* %94, null
  br i1 %cmp192, label %cond.true.194, label %cond.false.195

cond.true.194:                                    ; preds = %cond.false.191
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.224

cond.false.195:                                   ; preds = %cond.false.191
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1196 = bitcast %union.rec* %96 to %struct.word_type*
  %olist197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist197, i32 0, i64 1
  %opred199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx198, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %opred199, align 8
  store %union.rec* %97, %union.rec** @zz_tmp, align 8
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1200 = bitcast %union.rec* %98 to %struct.word_type*
  %olist201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist201, i32 0, i64 1
  %opred203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx202, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %opred203, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1204 = bitcast %union.rec* %100 to %struct.word_type*
  %olist205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist205, i32 0, i64 1
  %opred207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx206, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred207, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1208 = bitcast %union.rec* %102 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 1
  %opred211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %opred211, align 8
  %os1212 = bitcast %union.rec* %103 to %struct.word_type*
  %olist213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist213, i32 0, i64 1
  %osucc215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx214, i32 0, i32 1
  store %union.rec* %101, %union.rec** %osucc215, align 8
  %104 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1216 = bitcast %union.rec* %105 to %struct.word_type*
  %olist217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist217, i32 0, i64 1
  %opred219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx218, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred219, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1220 = bitcast %union.rec* %107 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 1
  %osucc223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc223, align 8
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.195, %cond.true.194
  %cond225 = phi %union.rec* [ %95, %cond.true.194 ], [ %106, %cond.false.195 ]
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.end.224, %cond.true.190
  %cond227 = phi %union.rec* [ %93, %cond.true.190 ], [ %cond225, %cond.end.224 ]
  %108 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6228 = bitcast %union.rec* %108 to %struct.symbol_type*
  %osym_body229 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6228, i32 0, i32 4
  store %union.rec* %cond227, %union.rec** %osym_body229, align 8
  br label %sw.epilog

sw.bb.230:                                        ; preds = %for.cond
  %109 = load %union.rec*, %union.rec** %t, align 8
  %110 = load %union.rec*, %union.rec** %res.addr, align 8
  call void @ReadTokenList(%union.rec* %109, %union.rec* %110)
  %call231 = call %union.rec* @LexGetToken()
  store %union.rec* %call231, %union.rec** %t, align 8
  %111 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6232 = bitcast %union.rec* %111 to %struct.symbol_type*
  %osym_body233 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6232, i32 0, i32 4
  %112 = load %union.rec*, %union.rec** %osym_body233, align 8
  store %union.rec* %112, %union.rec** @zz_res, align 8
  %113 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %113, %union.rec** @zz_hold, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp234 = icmp eq %union.rec* %114, null
  br i1 %cmp234, label %cond.true.236, label %cond.false.237

cond.true.236:                                    ; preds = %sw.bb.230
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.272

cond.false.237:                                   ; preds = %sw.bb.230
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp238 = icmp eq %union.rec* %116, null
  br i1 %cmp238, label %cond.true.240, label %cond.false.241

cond.true.240:                                    ; preds = %cond.false.237
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.270

cond.false.241:                                   ; preds = %cond.false.237
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1242 = bitcast %union.rec* %118 to %struct.word_type*
  %olist243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist243, i32 0, i64 1
  %opred245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx244, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %opred245, align 8
  store %union.rec* %119, %union.rec** @zz_tmp, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1246 = bitcast %union.rec* %120 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 1
  %opred249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred249, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1250 = bitcast %union.rec* %122 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 1
  %opred253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 0
  store %union.rec* %121, %union.rec** %opred253, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1254 = bitcast %union.rec* %124 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 1
  %opred257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 0
  %125 = load %union.rec*, %union.rec** %opred257, align 8
  %os1258 = bitcast %union.rec* %125 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 1
  %osucc261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 1
  store %union.rec* %123, %union.rec** %osucc261, align 8
  %126 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1262 = bitcast %union.rec* %127 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 1
  %opred265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred265, align 8
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  %129 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1266 = bitcast %union.rec* %129 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 1
  %osucc269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 1
  store %union.rec* %128, %union.rec** %osucc269, align 8
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.241, %cond.true.240
  %cond271 = phi %union.rec* [ %117, %cond.true.240 ], [ %128, %cond.false.241 ]
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.end.270, %cond.true.236
  %cond273 = phi %union.rec* [ %115, %cond.true.236 ], [ %cond271, %cond.end.270 ]
  %130 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6274 = bitcast %union.rec* %130 to %struct.symbol_type*
  %osym_body275 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6274, i32 0, i32 4
  store %union.rec* %cond273, %union.rec** %osym_body275, align 8
  br label %sw.epilog

sw.bb.276:                                        ; preds = %for.cond
  %131 = load %union.rec*, %union.rec** %t, align 8
  %os1277 = bitcast %union.rec* %131 to %struct.word_type*
  %ou1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 1
  %ofpos279 = bitcast %union.FIRST_UNION* %ou1278 to %struct.FILE_POS*
  %call280 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos279)
  br label %sw.epilog

sw.bb.281:                                        ; preds = %for.cond
  %132 = load %union.rec*, %union.rec** %t, align 8
  %os1282 = bitcast %union.rec* %132 to %struct.word_type*
  %ou1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1282, i32 0, i32 1
  %ofpos284 = bitcast %union.FIRST_UNION* %ou1283 to %struct.FILE_POS*
  %133 = load %union.rec*, %union.rec** %t, align 8
  %os2285 = bitcast %union.rec* %133 to %struct.closure_type*
  %oactual286 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2285, i32 0, i32 5
  %134 = load %union.rec*, %union.rec** %oactual286, align 8
  %call287 = call i8* @SymName(%union.rec* %134)
  %call288 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos284, i8* %call287)
  %call289 = call %union.rec* @LexGetToken()
  store %union.rec* %call289, %union.rec** %t, align 8
  %135 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6290 = bitcast %union.rec* %135 to %struct.symbol_type*
  %osym_body291 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6290, i32 0, i32 4
  %136 = load %union.rec*, %union.rec** %osym_body291, align 8
  store %union.rec* %136, %union.rec** @zz_res, align 8
  %137 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %137, %union.rec** @zz_hold, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp292 = icmp eq %union.rec* %138, null
  br i1 %cmp292, label %cond.true.294, label %cond.false.295

cond.true.294:                                    ; preds = %sw.bb.281
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.330

cond.false.295:                                   ; preds = %sw.bb.281
  %140 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp296 = icmp eq %union.rec* %140, null
  br i1 %cmp296, label %cond.true.298, label %cond.false.299

cond.true.298:                                    ; preds = %cond.false.295
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.328

cond.false.299:                                   ; preds = %cond.false.295
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1300 = bitcast %union.rec* %142 to %struct.word_type*
  %olist301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist301, i32 0, i64 1
  %opred303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx302, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %opred303, align 8
  store %union.rec* %143, %union.rec** @zz_tmp, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1304 = bitcast %union.rec* %144 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 1
  %opred307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 0
  %145 = load %union.rec*, %union.rec** %opred307, align 8
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1308 = bitcast %union.rec* %146 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 1
  %opred311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 0
  store %union.rec* %145, %union.rec** %opred311, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1312 = bitcast %union.rec* %148 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 1
  %opred315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 0
  %149 = load %union.rec*, %union.rec** %opred315, align 8
  %os1316 = bitcast %union.rec* %149 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 1
  %osucc319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 1
  store %union.rec* %147, %union.rec** %osucc319, align 8
  %150 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %151 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1320 = bitcast %union.rec* %151 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 1
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  store %union.rec* %150, %union.rec** %opred323, align 8
  %152 = load %union.rec*, %union.rec** @zz_res, align 8
  %153 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1324 = bitcast %union.rec* %153 to %struct.word_type*
  %olist325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1324, i32 0, i32 0
  %arrayidx326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist325, i32 0, i64 1
  %osucc327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx326, i32 0, i32 1
  store %union.rec* %152, %union.rec** %osucc327, align 8
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.299, %cond.true.298
  %cond329 = phi %union.rec* [ %141, %cond.true.298 ], [ %152, %cond.false.299 ]
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.end.328, %cond.true.294
  %cond331 = phi %union.rec* [ %139, %cond.true.294 ], [ %cond329, %cond.end.328 ]
  %154 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6332 = bitcast %union.rec* %154 to %struct.symbol_type*
  %osym_body333 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6332, i32 0, i32 4
  store %union.rec* %cond331, %union.rec** %osym_body333, align 8
  br label %sw.epilog

sw.bb.334:                                        ; preds = %for.cond
  %155 = load %union.rec*, %union.rec** %token.addr, align 8
  %os1335 = bitcast %union.rec* %155 to %struct.word_type*
  %ou1336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1335, i32 0, i32 1
  %os11337 = bitcast %union.FIRST_UNION* %ou1336 to %struct.anon*
  %otype338 = getelementptr inbounds %struct.anon, %struct.anon* %os11337, i32 0, i32 0
  %156 = load i8, i8* %otype338, align 1
  %conv339 = zext i8 %156 to i32
  %cmp340 = icmp ne i32 %conv339, 102
  br i1 %cmp340, label %if.then.342, label %if.end.347

if.then.342:                                      ; preds = %sw.bb.334
  %157 = load %union.rec*, %union.rec** %t, align 8
  %os1343 = bitcast %union.rec* %157 to %struct.word_type*
  %ou1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 1
  %ofpos345 = bitcast %union.FIRST_UNION* %ou1344 to %struct.FILE_POS*
  %call346 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos345, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.342, %sw.bb.334
  br label %return

sw.bb.348:                                        ; preds = %for.cond
  %158 = load %union.rec*, %union.rec** %token.addr, align 8
  %os1349 = bitcast %union.rec* %158 to %struct.word_type*
  %ou1350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1349, i32 0, i32 1
  %os11351 = bitcast %union.FIRST_UNION* %ou1350 to %struct.anon*
  %otype352 = getelementptr inbounds %struct.anon, %struct.anon* %os11351, i32 0, i32 0
  %159 = load i8, i8* %otype352, align 1
  %conv353 = zext i8 %159 to i32
  %cmp354 = icmp ne i32 %conv353, 104
  br i1 %cmp354, label %if.then.356, label %if.else

if.then.356:                                      ; preds = %sw.bb.348
  %160 = load %union.rec*, %union.rec** %t, align 8
  %os1357 = bitcast %union.rec* %160 to %struct.word_type*
  %ou1358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 1
  %ofpos359 = bitcast %union.FIRST_UNION* %ou1358 to %struct.FILE_POS*
  %call360 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.461

if.else:                                          ; preds = %sw.bb.348
  %call361 = call %union.rec* @LexGetToken()
  store %union.rec* %call361, %union.rec** %t, align 8
  %161 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6362 = bitcast %union.rec* %161 to %struct.symbol_type*
  %osym_body363 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6362, i32 0, i32 4
  %162 = load %union.rec*, %union.rec** %osym_body363, align 8
  store %union.rec* %162, %union.rec** @zz_res, align 8
  %163 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp364 = icmp eq %union.rec* %164, null
  br i1 %cmp364, label %cond.true.366, label %cond.false.367

cond.true.366:                                    ; preds = %if.else
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.402

cond.false.367:                                   ; preds = %if.else
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp368 = icmp eq %union.rec* %166, null
  br i1 %cmp368, label %cond.true.370, label %cond.false.371

cond.true.370:                                    ; preds = %cond.false.367
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.400

cond.false.371:                                   ; preds = %cond.false.367
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1372 = bitcast %union.rec* %168 to %struct.word_type*
  %olist373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist373, i32 0, i64 1
  %opred375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx374, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred375, align 8
  store %union.rec* %169, %union.rec** @zz_tmp, align 8
  %170 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1376 = bitcast %union.rec* %170 to %struct.word_type*
  %olist377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 0
  %arrayidx378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist377, i32 0, i64 1
  %opred379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx378, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %opred379, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1380 = bitcast %union.rec* %172 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 1
  %opred383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 0
  store %union.rec* %171, %union.rec** %opred383, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1384 = bitcast %union.rec* %174 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 1
  %opred387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 0
  %175 = load %union.rec*, %union.rec** %opred387, align 8
  %os1388 = bitcast %union.rec* %175 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 1
  %osucc391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 1
  store %union.rec* %173, %union.rec** %osucc391, align 8
  %176 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1392 = bitcast %union.rec* %177 to %struct.word_type*
  %olist393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist393, i32 0, i64 1
  %opred395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx394, i32 0, i32 0
  store %union.rec* %176, %union.rec** %opred395, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %179 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1396 = bitcast %union.rec* %179 to %struct.word_type*
  %olist397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist397, i32 0, i64 1
  %osucc399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx398, i32 0, i32 1
  store %union.rec* %178, %union.rec** %osucc399, align 8
  br label %cond.end.400

cond.end.400:                                     ; preds = %cond.false.371, %cond.true.370
  %cond401 = phi %union.rec* [ %167, %cond.true.370 ], [ %178, %cond.false.371 ]
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.end.400, %cond.true.366
  %cond403 = phi %union.rec* [ %165, %cond.true.366 ], [ %cond401, %cond.end.400 ]
  %180 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6404 = bitcast %union.rec* %180 to %struct.symbol_type*
  %osym_body405 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6404, i32 0, i32 4
  store %union.rec* %cond403, %union.rec** %osym_body405, align 8
  %181 = load %union.rec*, %union.rec** %t, align 8
  %os1406 = bitcast %union.rec* %181 to %struct.word_type*
  %ou1407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1406, i32 0, i32 1
  %os11408 = bitcast %union.FIRST_UNION* %ou1407 to %struct.anon*
  %otype409 = getelementptr inbounds %struct.anon, %struct.anon* %os11408, i32 0, i32 0
  %182 = load i8, i8* %otype409, align 1
  %conv410 = zext i8 %182 to i32
  %cmp411 = icmp ne i32 %conv410, 2
  br i1 %cmp411, label %if.then.413, label %if.else.441

if.then.413:                                      ; preds = %cond.end.402
  %183 = load %union.rec*, %union.rec** %t, align 8
  %os1414 = bitcast %union.rec* %183 to %struct.word_type*
  %ou1415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1414, i32 0, i32 1
  %os11416 = bitcast %union.FIRST_UNION* %ou1415 to %struct.anon*
  %otype417 = getelementptr inbounds %struct.anon, %struct.anon* %os11416, i32 0, i32 0
  %184 = load i8, i8* %otype417, align 1
  %conv418 = zext i8 %184 to i32
  %cmp419 = icmp eq i32 %conv418, 11
  br i1 %cmp419, label %land.lhs.true, label %if.else.435

land.lhs.true:                                    ; preds = %if.then.413
  %185 = load %union.rec*, %union.rec** %t, align 8
  %os1421 = bitcast %union.rec* %185 to %struct.word_type*
  %ostring422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1421, i32 0, i32 4
  %arrayidx423 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring422, i32 0, i64 0
  %186 = load i8, i8* %arrayidx423, align 1
  %conv424 = zext i8 %186 to i32
  %cmp425 = icmp eq i32 %conv424, 64
  br i1 %cmp425, label %if.then.427, label %if.else.435

if.then.427:                                      ; preds = %land.lhs.true
  %187 = load %union.rec*, %union.rec** %t, align 8
  %os1428 = bitcast %union.rec* %187 to %struct.word_type*
  %ou1429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 1
  %ofpos430 = bitcast %union.FIRST_UNION* %ou1429 to %struct.FILE_POS*
  %188 = load %union.rec*, %union.rec** %t, align 8
  %os1431 = bitcast %union.rec* %188 to %struct.word_type*
  %ostring432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 4
  %arraydecay433 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring432, i32 0, i32 0
  %call434 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos430, i8* %arraydecay433)
  br label %if.end.440

if.else.435:                                      ; preds = %land.lhs.true, %if.then.413
  %189 = load %union.rec*, %union.rec** %t, align 8
  %os1436 = bitcast %union.rec* %189 to %struct.word_type*
  %ou1437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1436, i32 0, i32 1
  %ofpos438 = bitcast %union.FIRST_UNION* %ou1437 to %struct.FILE_POS*
  %call439 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos438, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.435, %if.then.427
  br label %if.end.460

if.else.441:                                      ; preds = %cond.end.402
  %190 = load %union.rec*, %union.rec** %token.addr, align 8
  %os2442 = bitcast %union.rec* %190 to %struct.closure_type*
  %oactual443 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2442, i32 0, i32 5
  %191 = load %union.rec*, %union.rec** %oactual443, align 8
  %192 = load %union.rec*, %union.rec** %t, align 8
  %os2444 = bitcast %union.rec* %192 to %struct.closure_type*
  %oactual445 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2444, i32 0, i32 5
  %193 = load %union.rec*, %union.rec** %oactual445, align 8
  %cmp446 = icmp ne %union.rec* %191, %193
  br i1 %cmp446, label %if.then.448, label %if.end.459

if.then.448:                                      ; preds = %if.else.441
  %194 = load %union.rec*, %union.rec** %t, align 8
  %os1449 = bitcast %union.rec* %194 to %struct.word_type*
  %ou1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 1
  %ofpos451 = bitcast %union.FIRST_UNION* %ou1450 to %struct.FILE_POS*
  %195 = load %union.rec*, %union.rec** %token.addr, align 8
  %os2452 = bitcast %union.rec* %195 to %struct.closure_type*
  %oactual453 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2452, i32 0, i32 5
  %196 = load %union.rec*, %union.rec** %oactual453, align 8
  %call454 = call i8* @SymName(%union.rec* %196)
  %197 = load %union.rec*, %union.rec** %t, align 8
  %os2455 = bitcast %union.rec* %197 to %struct.closure_type*
  %oactual456 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2455, i32 0, i32 5
  %198 = load %union.rec*, %union.rec** %oactual456, align 8
  %call457 = call i8* @SymName(%union.rec* %198)
  %call458 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos451, i8* %call454, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* %call457, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.448, %if.else.441
  br label %if.end.460

if.end.460:                                       ; preds = %if.end.459, %if.end.440
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.then.356
  br label %return

sw.bb.462:                                        ; preds = %for.cond
  %199 = load %union.rec*, %union.rec** %t, align 8
  %os2463 = bitcast %union.rec* %199 to %struct.closure_type*
  %oactual464 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2463, i32 0, i32 5
  %200 = load %union.rec*, %union.rec** %oactual464, align 8
  store %union.rec* %200, %union.rec** %xsym, align 8
  %201 = load %union.rec*, %union.rec** %xsym, align 8
  call void @PushScope(%union.rec* %201, i32 1, i32 0)
  %call465 = call %union.rec* @LexGetToken()
  store %union.rec* %call465, %union.rec** %t, align 8
  %202 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6466 = bitcast %union.rec* %202 to %struct.symbol_type*
  %osym_body467 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6466, i32 0, i32 4
  %203 = load %union.rec*, %union.rec** %osym_body467, align 8
  store %union.rec* %203, %union.rec** @zz_res, align 8
  %204 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %204, %union.rec** @zz_hold, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp468 = icmp eq %union.rec* %205, null
  br i1 %cmp468, label %cond.true.470, label %cond.false.471

cond.true.470:                                    ; preds = %sw.bb.462
  %206 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.506

cond.false.471:                                   ; preds = %sw.bb.462
  %207 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp472 = icmp eq %union.rec* %207, null
  br i1 %cmp472, label %cond.true.474, label %cond.false.475

cond.true.474:                                    ; preds = %cond.false.471
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.504

cond.false.475:                                   ; preds = %cond.false.471
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1476 = bitcast %union.rec* %209 to %struct.word_type*
  %olist477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist477, i32 0, i64 1
  %opred479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx478, i32 0, i32 0
  %210 = load %union.rec*, %union.rec** %opred479, align 8
  store %union.rec* %210, %union.rec** @zz_tmp, align 8
  %211 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1480 = bitcast %union.rec* %211 to %struct.word_type*
  %olist481 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1480, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist481, i32 0, i64 1
  %opred483 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx482, i32 0, i32 0
  %212 = load %union.rec*, %union.rec** %opred483, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1484 = bitcast %union.rec* %213 to %struct.word_type*
  %olist485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1484, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist485, i32 0, i64 1
  %opred487 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx486, i32 0, i32 0
  store %union.rec* %212, %union.rec** %opred487, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1488 = bitcast %union.rec* %215 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 1
  %opred491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 0
  %216 = load %union.rec*, %union.rec** %opred491, align 8
  %os1492 = bitcast %union.rec* %216 to %struct.word_type*
  %olist493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1492, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist493, i32 0, i64 1
  %osucc495 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx494, i32 0, i32 1
  store %union.rec* %214, %union.rec** %osucc495, align 8
  %217 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1496 = bitcast %union.rec* %218 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 1
  %opred499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 0
  store %union.rec* %217, %union.rec** %opred499, align 8
  %219 = load %union.rec*, %union.rec** @zz_res, align 8
  %220 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1500 = bitcast %union.rec* %220 to %struct.word_type*
  %olist501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist501, i32 0, i64 1
  %osucc503 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx502, i32 0, i32 1
  store %union.rec* %219, %union.rec** %osucc503, align 8
  br label %cond.end.504

cond.end.504:                                     ; preds = %cond.false.475, %cond.true.474
  %cond505 = phi %union.rec* [ %208, %cond.true.474 ], [ %219, %cond.false.475 ]
  br label %cond.end.506

cond.end.506:                                     ; preds = %cond.end.504, %cond.true.470
  %cond507 = phi %union.rec* [ %206, %cond.true.470 ], [ %cond505, %cond.end.504 ]
  %221 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6508 = bitcast %union.rec* %221 to %struct.symbol_type*
  %osym_body509 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6508, i32 0, i32 4
  store %union.rec* %cond507, %union.rec** %osym_body509, align 8
  call void @PopScope()
  %222 = load %union.rec*, %union.rec** %t, align 8
  %os1510 = bitcast %union.rec* %222 to %struct.word_type*
  %ou1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1510, i32 0, i32 1
  %os11512 = bitcast %union.FIRST_UNION* %ou1511 to %struct.anon*
  %otype513 = getelementptr inbounds %struct.anon, %struct.anon* %os11512, i32 0, i32 0
  %223 = load i8, i8* %otype513, align 1
  %conv514 = zext i8 %223 to i32
  %cmp515 = icmp eq i32 %conv514, 6
  br i1 %cmp515, label %if.then.524, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.506
  %224 = load %union.rec*, %union.rec** %t, align 8
  %os1517 = bitcast %union.rec* %224 to %struct.word_type*
  %ou1518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 1
  %os11519 = bitcast %union.FIRST_UNION* %ou1518 to %struct.anon*
  %otype520 = getelementptr inbounds %struct.anon, %struct.anon* %os11519, i32 0, i32 0
  %225 = load i8, i8* %otype520, align 1
  %conv521 = zext i8 %225 to i32
  %cmp522 = icmp eq i32 %conv521, 7
  br i1 %cmp522, label %if.then.524, label %if.end.570

if.then.524:                                      ; preds = %lor.lhs.false, %cond.end.506
  %call525 = call %union.rec* @LexGetToken()
  store %union.rec* %call525, %union.rec** %t, align 8
  %226 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6526 = bitcast %union.rec* %226 to %struct.symbol_type*
  %osym_body527 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6526, i32 0, i32 4
  %227 = load %union.rec*, %union.rec** %osym_body527, align 8
  store %union.rec* %227, %union.rec** @zz_res, align 8
  %228 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %228, %union.rec** @zz_hold, align 8
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp528 = icmp eq %union.rec* %229, null
  br i1 %cmp528, label %cond.true.530, label %cond.false.531

cond.true.530:                                    ; preds = %if.then.524
  %230 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.566

cond.false.531:                                   ; preds = %if.then.524
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp532 = icmp eq %union.rec* %231, null
  br i1 %cmp532, label %cond.true.534, label %cond.false.535

cond.true.534:                                    ; preds = %cond.false.531
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.564

cond.false.535:                                   ; preds = %cond.false.531
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1536 = bitcast %union.rec* %233 to %struct.word_type*
  %olist537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist537, i32 0, i64 1
  %opred539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx538, i32 0, i32 0
  %234 = load %union.rec*, %union.rec** %opred539, align 8
  store %union.rec* %234, %union.rec** @zz_tmp, align 8
  %235 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1540 = bitcast %union.rec* %235 to %struct.word_type*
  %olist541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1540, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist541, i32 0, i64 1
  %opred543 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx542, i32 0, i32 0
  %236 = load %union.rec*, %union.rec** %opred543, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1544 = bitcast %union.rec* %237 to %struct.word_type*
  %olist545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1544, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist545, i32 0, i64 1
  %opred547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx546, i32 0, i32 0
  store %union.rec* %236, %union.rec** %opred547, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %239 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1548 = bitcast %union.rec* %239 to %struct.word_type*
  %olist549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1548, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist549, i32 0, i64 1
  %opred551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx550, i32 0, i32 0
  %240 = load %union.rec*, %union.rec** %opred551, align 8
  %os1552 = bitcast %union.rec* %240 to %struct.word_type*
  %olist553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist553, i32 0, i64 1
  %osucc555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx554, i32 0, i32 1
  store %union.rec* %238, %union.rec** %osucc555, align 8
  %241 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %242 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1556 = bitcast %union.rec* %242 to %struct.word_type*
  %olist557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist557, i32 0, i64 1
  %opred559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx558, i32 0, i32 0
  store %union.rec* %241, %union.rec** %opred559, align 8
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %244 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1560 = bitcast %union.rec* %244 to %struct.word_type*
  %olist561 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1560, i32 0, i32 0
  %arrayidx562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist561, i32 0, i64 1
  %osucc563 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx562, i32 0, i32 1
  store %union.rec* %243, %union.rec** %osucc563, align 8
  br label %cond.end.564

cond.end.564:                                     ; preds = %cond.false.535, %cond.true.534
  %cond565 = phi %union.rec* [ %232, %cond.true.534 ], [ %243, %cond.false.535 ]
  br label %cond.end.566

cond.end.566:                                     ; preds = %cond.end.564, %cond.true.530
  %cond567 = phi %union.rec* [ %230, %cond.true.530 ], [ %cond565, %cond.end.564 ]
  %245 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6568 = bitcast %union.rec* %245 to %struct.symbol_type*
  %osym_body569 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6568, i32 0, i32 4
  store %union.rec* %cond567, %union.rec** %osym_body569, align 8
  br label %sw.epilog

if.end.570:                                       ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %cond.end.765, %if.end.570
  %246 = load %union.rec*, %union.rec** %t, align 8
  %os1571 = bitcast %union.rec* %246 to %struct.word_type*
  %ou1572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1571, i32 0, i32 1
  %os11573 = bitcast %union.FIRST_UNION* %ou1572 to %struct.anon*
  %otype574 = getelementptr inbounds %struct.anon, %struct.anon* %os11573, i32 0, i32 0
  %247 = load i8, i8* %otype574, align 1
  %conv575 = zext i8 %247 to i32
  %cmp576 = icmp eq i32 %conv575, 2
  br i1 %cmp576, label %land.lhs.true.578, label %land.end

land.lhs.true.578:                                ; preds = %while.cond
  %248 = load %union.rec*, %union.rec** %t, align 8
  %os2579 = bitcast %union.rec* %248 to %struct.closure_type*
  %oactual580 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2579, i32 0, i32 5
  %249 = load %union.rec*, %union.rec** %oactual580, align 8
  %os6581 = bitcast %union.rec* %249 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6581, i32 0, i32 3
  %250 = load %union.rec*, %union.rec** %oenclosing, align 8
  %251 = load %union.rec*, %union.rec** %xsym, align 8
  %cmp582 = icmp eq %union.rec* %250, %251
  br i1 %cmp582, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.578
  %252 = load %union.rec*, %union.rec** %t, align 8
  %os2584 = bitcast %union.rec* %252 to %struct.closure_type*
  %oactual585 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2584, i32 0, i32 5
  %253 = load %union.rec*, %union.rec** %oactual585, align 8
  %os1586 = bitcast %union.rec* %253 to %struct.word_type*
  %ou1587 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1586, i32 0, i32 1
  %os11588 = bitcast %union.FIRST_UNION* %ou1587 to %struct.anon*
  %otype589 = getelementptr inbounds %struct.anon, %struct.anon* %os11588, i32 0, i32 0
  %254 = load i8, i8* %otype589, align 1
  %conv590 = zext i8 %254 to i32
  %cmp591 = icmp eq i32 %conv590, 145
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.578, %while.cond
  %255 = phi i1 [ false, %land.lhs.true.578 ], [ false, %while.cond ], [ %cmp591, %land.rhs ]
  br i1 %255, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %256 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %256, %union.rec** %new_par, align 8
  %call593 = call %union.rec* @LexGetToken()
  store %union.rec* %call593, %union.rec** %t, align 8
  %257 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6594 = bitcast %union.rec* %257 to %struct.symbol_type*
  %osym_body595 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6594, i32 0, i32 4
  %258 = load %union.rec*, %union.rec** %osym_body595, align 8
  store %union.rec* %258, %union.rec** @zz_res, align 8
  %259 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %259, %union.rec** @zz_hold, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp596 = icmp eq %union.rec* %260, null
  br i1 %cmp596, label %cond.true.598, label %cond.false.599

cond.true.598:                                    ; preds = %while.body
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.634

cond.false.599:                                   ; preds = %while.body
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp600 = icmp eq %union.rec* %262, null
  br i1 %cmp600, label %cond.true.602, label %cond.false.603

cond.true.602:                                    ; preds = %cond.false.599
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.632

cond.false.603:                                   ; preds = %cond.false.599
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1604 = bitcast %union.rec* %264 to %struct.word_type*
  %olist605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1604, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist605, i32 0, i64 1
  %opred607 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx606, i32 0, i32 0
  %265 = load %union.rec*, %union.rec** %opred607, align 8
  store %union.rec* %265, %union.rec** @zz_tmp, align 8
  %266 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1608 = bitcast %union.rec* %266 to %struct.word_type*
  %olist609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1608, i32 0, i32 0
  %arrayidx610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist609, i32 0, i64 1
  %opred611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx610, i32 0, i32 0
  %267 = load %union.rec*, %union.rec** %opred611, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1612 = bitcast %union.rec* %268 to %struct.word_type*
  %olist613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1612, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist613, i32 0, i64 1
  %opred615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx614, i32 0, i32 0
  store %union.rec* %267, %union.rec** %opred615, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1616 = bitcast %union.rec* %270 to %struct.word_type*
  %olist617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1616, i32 0, i32 0
  %arrayidx618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist617, i32 0, i64 1
  %opred619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx618, i32 0, i32 0
  %271 = load %union.rec*, %union.rec** %opred619, align 8
  %os1620 = bitcast %union.rec* %271 to %struct.word_type*
  %olist621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1620, i32 0, i32 0
  %arrayidx622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist621, i32 0, i64 1
  %osucc623 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx622, i32 0, i32 1
  store %union.rec* %269, %union.rec** %osucc623, align 8
  %272 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1624 = bitcast %union.rec* %273 to %struct.word_type*
  %olist625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 0
  %arrayidx626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist625, i32 0, i64 1
  %opred627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx626, i32 0, i32 0
  store %union.rec* %272, %union.rec** %opred627, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %275 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1628 = bitcast %union.rec* %275 to %struct.word_type*
  %olist629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1628, i32 0, i32 0
  %arrayidx630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist629, i32 0, i64 1
  %osucc631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx630, i32 0, i32 1
  store %union.rec* %274, %union.rec** %osucc631, align 8
  br label %cond.end.632

cond.end.632:                                     ; preds = %cond.false.603, %cond.true.602
  %cond633 = phi %union.rec* [ %263, %cond.true.602 ], [ %274, %cond.false.603 ]
  br label %cond.end.634

cond.end.634:                                     ; preds = %cond.end.632, %cond.true.598
  %cond635 = phi %union.rec* [ %261, %cond.true.598 ], [ %cond633, %cond.end.632 ]
  %276 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6636 = bitcast %union.rec* %276 to %struct.symbol_type*
  %osym_body637 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6636, i32 0, i32 4
  store %union.rec* %cond635, %union.rec** %osym_body637, align 8
  %277 = load %union.rec*, %union.rec** %t, align 8
  %os1638 = bitcast %union.rec* %277 to %struct.word_type*
  %ou1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1638, i32 0, i32 1
  %os11640 = bitcast %union.FIRST_UNION* %ou1639 to %struct.anon*
  %otype641 = getelementptr inbounds %struct.anon, %struct.anon* %os11640, i32 0, i32 0
  %278 = load i8, i8* %otype641, align 1
  %conv642 = zext i8 %278 to i32
  %cmp643 = icmp ne i32 %conv642, 102
  br i1 %cmp643, label %if.then.645, label %if.end.675

if.then.645:                                      ; preds = %cond.end.634
  %279 = load %union.rec*, %union.rec** %t, align 8
  %os1646 = bitcast %union.rec* %279 to %struct.word_type*
  %ou1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1646, i32 0, i32 1
  %os11648 = bitcast %union.FIRST_UNION* %ou1647 to %struct.anon*
  %otype649 = getelementptr inbounds %struct.anon, %struct.anon* %os11648, i32 0, i32 0
  %280 = load i8, i8* %otype649, align 1
  %conv650 = zext i8 %280 to i32
  %cmp651 = icmp eq i32 %conv650, 103
  br i1 %cmp651, label %if.then.653, label %if.end.667

if.then.653:                                      ; preds = %if.then.645
  %281 = load %union.rec*, %union.rec** %token.addr, align 8
  %os1654 = bitcast %union.rec* %281 to %struct.word_type*
  %ou1655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1654, i32 0, i32 1
  %os11656 = bitcast %union.FIRST_UNION* %ou1655 to %struct.anon*
  %otype657 = getelementptr inbounds %struct.anon, %struct.anon* %os11656, i32 0, i32 0
  %282 = load i8, i8* %otype657, align 1
  %conv658 = zext i8 %282 to i32
  %cmp659 = icmp ne i32 %conv658, 102
  br i1 %cmp659, label %if.then.661, label %if.end.666

if.then.661:                                      ; preds = %if.then.653
  %283 = load %union.rec*, %union.rec** %t, align 8
  %os1662 = bitcast %union.rec* %283 to %struct.word_type*
  %ou1663 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1662, i32 0, i32 1
  %ofpos664 = bitcast %union.FIRST_UNION* %ou1663 to %struct.FILE_POS*
  %call665 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos664, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.661, %if.then.653
  br label %return

if.end.667:                                       ; preds = %if.then.645
  %284 = load %union.rec*, %union.rec** %new_par, align 8
  %os1668 = bitcast %union.rec* %284 to %struct.word_type*
  %ou1669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 1
  %ofpos670 = bitcast %union.FIRST_UNION* %ou1669 to %struct.FILE_POS*
  %285 = load %union.rec*, %union.rec** %new_par, align 8
  %os2671 = bitcast %union.rec* %285 to %struct.closure_type*
  %oactual672 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2671, i32 0, i32 5
  %286 = load %union.rec*, %union.rec** %oactual672, align 8
  %call673 = call i8* @SymName(%union.rec* %286)
  %call674 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos670, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %call673)
  br label %while.end

if.end.675:                                       ; preds = %cond.end.634
  store i32 0, i32* %scope_count, align 4
  %287 = load %union.rec*, %union.rec** %new_par, align 8
  %os2676 = bitcast %union.rec* %287 to %struct.closure_type*
  %oactual677 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2676, i32 0, i32 5
  %288 = load %union.rec*, %union.rec** %oactual677, align 8
  %os6678 = bitcast %union.rec* %288 to %struct.symbol_type*
  %oimports = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6678, i32 0, i32 9
  %289 = load %union.rec*, %union.rec** %oimports, align 8
  store %union.rec* %289, %union.rec** %imps, align 8
  %290 = load %union.rec*, %union.rec** %imps, align 8
  %cmp679 = icmp ne %union.rec* %290, null
  br i1 %cmp679, label %if.then.681, label %if.end.714

if.then.681:                                      ; preds = %if.end.675
  %291 = load %union.rec*, %union.rec** %imps, align 8
  %os1682 = bitcast %union.rec* %291 to %struct.word_type*
  %olist683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1682, i32 0, i32 0
  %arrayidx684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist683, i32 0, i64 0
  %osucc685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx684, i32 0, i32 1
  %292 = load %union.rec*, %union.rec** %osucc685, align 8
  store %union.rec* %292, %union.rec** %link, align 8
  br label %for.cond.686

for.cond.686:                                     ; preds = %for.inc.708, %if.then.681
  %293 = load %union.rec*, %union.rec** %link, align 8
  %294 = load %union.rec*, %union.rec** %imps, align 8
  %cmp687 = icmp ne %union.rec* %293, %294
  br i1 %cmp687, label %for.body, label %for.end.713

for.body:                                         ; preds = %for.cond.686
  %295 = load %union.rec*, %union.rec** %link, align 8
  %os1689 = bitcast %union.rec* %295 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 1
  %opred692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 0
  %296 = load %union.rec*, %union.rec** %opred692, align 8
  store %union.rec* %296, %union.rec** %y, align 8
  br label %for.cond.693

for.cond.693:                                     ; preds = %for.inc, %for.body
  %297 = load %union.rec*, %union.rec** %y, align 8
  %os1694 = bitcast %union.rec* %297 to %struct.word_type*
  %ou1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1694, i32 0, i32 1
  %os11696 = bitcast %union.FIRST_UNION* %ou1695 to %struct.anon*
  %otype697 = getelementptr inbounds %struct.anon, %struct.anon* %os11696, i32 0, i32 0
  %298 = load i8, i8* %otype697, align 1
  %conv698 = zext i8 %298 to i32
  %cmp699 = icmp eq i32 %conv698, 0
  br i1 %cmp699, label %for.body.701, label %for.end

for.body.701:                                     ; preds = %for.cond.693
  br label %for.inc

for.inc:                                          ; preds = %for.body.701
  %299 = load %union.rec*, %union.rec** %y, align 8
  %os1702 = bitcast %union.rec* %299 to %struct.word_type*
  %olist703 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1702, i32 0, i32 0
  %arrayidx704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist703, i32 0, i64 1
  %opred705 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx704, i32 0, i32 0
  %300 = load %union.rec*, %union.rec** %opred705, align 8
  store %union.rec* %300, %union.rec** %y, align 8
  br label %for.cond.693

for.end:                                          ; preds = %for.cond.693
  %301 = load %union.rec*, %union.rec** %y, align 8
  %os2706 = bitcast %union.rec* %301 to %struct.closure_type*
  %oactual707 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2706, i32 0, i32 5
  %302 = load %union.rec*, %union.rec** %oactual707, align 8
  call void @PushScope(%union.rec* %302, i32 0, i32 1)
  %303 = load i32, i32* %scope_count, align 4
  %inc = add nsw i32 %303, 1
  store i32 %inc, i32* %scope_count, align 4
  br label %for.inc.708

for.inc.708:                                      ; preds = %for.end
  %304 = load %union.rec*, %union.rec** %link, align 8
  %os1709 = bitcast %union.rec* %304 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 0
  %osucc712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 1
  %305 = load %union.rec*, %union.rec** %osucc712, align 8
  store %union.rec* %305, %union.rec** %link, align 8
  br label %for.cond.686

for.end.713:                                      ; preds = %for.cond.686
  br label %if.end.714

if.end.714:                                       ; preds = %for.end.713, %if.end.675
  %306 = load %union.rec*, %union.rec** %new_par, align 8
  %os2715 = bitcast %union.rec* %306 to %struct.closure_type*
  %oactual716 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2715, i32 0, i32 5
  %307 = load %union.rec*, %union.rec** %oactual716, align 8
  call void @PushScope(%union.rec* %307, i32 0, i32 0)
  %308 = load %union.rec*, %union.rec** %t, align 8
  %309 = load %union.rec*, %union.rec** %res.addr, align 8
  call void @ReadTokenList(%union.rec* %308, %union.rec* %309)
  call void @PopScope()
  store i32 0, i32* %i, align 4
  br label %for.cond.717

for.cond.717:                                     ; preds = %for.inc.721, %if.end.714
  %310 = load i32, i32* %i, align 4
  %311 = load i32, i32* %scope_count, align 4
  %cmp718 = icmp slt i32 %310, %311
  br i1 %cmp718, label %for.body.720, label %for.end.723

for.body.720:                                     ; preds = %for.cond.717
  call void @PopScope()
  br label %for.inc.721

for.inc.721:                                      ; preds = %for.body.720
  %312 = load i32, i32* %i, align 4
  %inc722 = add nsw i32 %312, 1
  store i32 %inc722, i32* %i, align 4
  br label %for.cond.717

for.end.723:                                      ; preds = %for.cond.717
  %313 = load %union.rec*, %union.rec** %xsym, align 8
  call void @PushScope(%union.rec* %313, i32 1, i32 0)
  %call724 = call %union.rec* @LexGetToken()
  store %union.rec* %call724, %union.rec** %t, align 8
  %314 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6725 = bitcast %union.rec* %314 to %struct.symbol_type*
  %osym_body726 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6725, i32 0, i32 4
  %315 = load %union.rec*, %union.rec** %osym_body726, align 8
  store %union.rec* %315, %union.rec** @zz_res, align 8
  %316 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp727 = icmp eq %union.rec* %317, null
  br i1 %cmp727, label %cond.true.729, label %cond.false.730

cond.true.729:                                    ; preds = %for.end.723
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.765

cond.false.730:                                   ; preds = %for.end.723
  %319 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp731 = icmp eq %union.rec* %319, null
  br i1 %cmp731, label %cond.true.733, label %cond.false.734

cond.true.733:                                    ; preds = %cond.false.730
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.763

cond.false.734:                                   ; preds = %cond.false.730
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1735 = bitcast %union.rec* %321 to %struct.word_type*
  %olist736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1735, i32 0, i32 0
  %arrayidx737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist736, i32 0, i64 1
  %opred738 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx737, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %opred738, align 8
  store %union.rec* %322, %union.rec** @zz_tmp, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1739 = bitcast %union.rec* %323 to %struct.word_type*
  %olist740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1739, i32 0, i32 0
  %arrayidx741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist740, i32 0, i64 1
  %opred742 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx741, i32 0, i32 0
  %324 = load %union.rec*, %union.rec** %opred742, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1743 = bitcast %union.rec* %325 to %struct.word_type*
  %olist744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1743, i32 0, i32 0
  %arrayidx745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist744, i32 0, i64 1
  %opred746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx745, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred746, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1747 = bitcast %union.rec* %327 to %struct.word_type*
  %olist748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1747, i32 0, i32 0
  %arrayidx749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist748, i32 0, i64 1
  %opred750 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx749, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %opred750, align 8
  %os1751 = bitcast %union.rec* %328 to %struct.word_type*
  %olist752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1751, i32 0, i32 0
  %arrayidx753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist752, i32 0, i64 1
  %osucc754 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx753, i32 0, i32 1
  store %union.rec* %326, %union.rec** %osucc754, align 8
  %329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1755 = bitcast %union.rec* %330 to %struct.word_type*
  %olist756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1755, i32 0, i32 0
  %arrayidx757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist756, i32 0, i64 1
  %opred758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx757, i32 0, i32 0
  store %union.rec* %329, %union.rec** %opred758, align 8
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  %332 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1759 = bitcast %union.rec* %332 to %struct.word_type*
  %olist760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1759, i32 0, i32 0
  %arrayidx761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist760, i32 0, i64 1
  %osucc762 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx761, i32 0, i32 1
  store %union.rec* %331, %union.rec** %osucc762, align 8
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.false.734, %cond.true.733
  %cond764 = phi %union.rec* [ %320, %cond.true.733 ], [ %331, %cond.false.734 ]
  br label %cond.end.765

cond.end.765:                                     ; preds = %cond.end.763, %cond.true.729
  %cond766 = phi %union.rec* [ %318, %cond.true.729 ], [ %cond764, %cond.end.763 ]
  %333 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6767 = bitcast %union.rec* %333 to %struct.symbol_type*
  %osym_body768 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6767, i32 0, i32 4
  store %union.rec* %cond766, %union.rec** %osym_body768, align 8
  call void @PopScope()
  br label %while.cond

while.end:                                        ; preds = %if.end.667, %land.end
  %334 = load %union.rec*, %union.rec** %xsym, align 8
  %os1769 = bitcast %union.rec* %334 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1769, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ohas_body = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %335 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load = load i24, i24* %335, align 1
  %bf.lshr = lshr i24 %bf.load, 8
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.770, label %if.end.868

if.then.770:                                      ; preds = %while.end
  %336 = load %union.rec*, %union.rec** %t, align 8
  %os1771 = bitcast %union.rec* %336 to %struct.word_type*
  %ou1772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1771, i32 0, i32 1
  %os11773 = bitcast %union.FIRST_UNION* %ou1772 to %struct.anon*
  %otype774 = getelementptr inbounds %struct.anon, %struct.anon* %os11773, i32 0, i32 0
  %337 = load i8, i8* %otype774, align 1
  %conv775 = zext i8 %337 to i32
  %cmp776 = icmp eq i32 %conv775, 102
  br i1 %cmp776, label %if.then.786, label %lor.lhs.false.778

lor.lhs.false.778:                                ; preds = %if.then.770
  %338 = load %union.rec*, %union.rec** %t, align 8
  %os1779 = bitcast %union.rec* %338 to %struct.word_type*
  %ou1780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1779, i32 0, i32 1
  %os11781 = bitcast %union.FIRST_UNION* %ou1780 to %struct.anon*
  %otype782 = getelementptr inbounds %struct.anon, %struct.anon* %os11781, i32 0, i32 0
  %339 = load i8, i8* %otype782, align 1
  %conv783 = zext i8 %339 to i32
  %cmp784 = icmp eq i32 %conv783, 104
  br i1 %cmp784, label %if.then.786, label %if.else.844

if.then.786:                                      ; preds = %lor.lhs.false.778, %if.then.770
  %340 = load %union.rec*, %union.rec** %xsym, align 8
  call void @PushScope(%union.rec* %340, i32 0, i32 1)
  %341 = load %union.rec*, %union.rec** %xsym, align 8
  %call787 = call %union.rec* @ChildSym(%union.rec* %341, i32 146)
  call void @PushScope(%union.rec* %call787, i32 0, i32 0)
  %342 = load %union.rec*, %union.rec** %t, align 8
  %os1788 = bitcast %union.rec* %342 to %struct.word_type*
  %ou1789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1788, i32 0, i32 1
  %os11790 = bitcast %union.FIRST_UNION* %ou1789 to %struct.anon*
  %otype791 = getelementptr inbounds %struct.anon, %struct.anon* %os11790, i32 0, i32 0
  %343 = load i8, i8* %otype791, align 1
  %conv792 = zext i8 %343 to i32
  %cmp793 = icmp eq i32 %conv792, 104
  br i1 %cmp793, label %if.then.795, label %if.end.798

if.then.795:                                      ; preds = %if.then.786
  %344 = load %union.rec*, %union.rec** %xsym, align 8
  %345 = load %union.rec*, %union.rec** %t, align 8
  %os2796 = bitcast %union.rec* %345 to %struct.closure_type*
  %oactual797 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2796, i32 0, i32 5
  store %union.rec* %344, %union.rec** %oactual797, align 8
  br label %if.end.798

if.end.798:                                       ; preds = %if.then.795, %if.then.786
  %346 = load %union.rec*, %union.rec** %t, align 8
  %347 = load %union.rec*, %union.rec** %res.addr, align 8
  call void @ReadTokenList(%union.rec* %346, %union.rec* %347)
  call void @PopScope()
  call void @PopScope()
  %call799 = call %union.rec* @LexGetToken()
  store %union.rec* %call799, %union.rec** %t, align 8
  %348 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6800 = bitcast %union.rec* %348 to %struct.symbol_type*
  %osym_body801 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6800, i32 0, i32 4
  %349 = load %union.rec*, %union.rec** %osym_body801, align 8
  store %union.rec* %349, %union.rec** @zz_res, align 8
  %350 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %350, %union.rec** @zz_hold, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp802 = icmp eq %union.rec* %351, null
  br i1 %cmp802, label %cond.true.804, label %cond.false.805

cond.true.804:                                    ; preds = %if.end.798
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.840

cond.false.805:                                   ; preds = %if.end.798
  %353 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp806 = icmp eq %union.rec* %353, null
  br i1 %cmp806, label %cond.true.808, label %cond.false.809

cond.true.808:                                    ; preds = %cond.false.805
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.838

cond.false.809:                                   ; preds = %cond.false.805
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1810 = bitcast %union.rec* %355 to %struct.word_type*
  %olist811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 0
  %arrayidx812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist811, i32 0, i64 1
  %opred813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx812, i32 0, i32 0
  %356 = load %union.rec*, %union.rec** %opred813, align 8
  store %union.rec* %356, %union.rec** @zz_tmp, align 8
  %357 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1814 = bitcast %union.rec* %357 to %struct.word_type*
  %olist815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1814, i32 0, i32 0
  %arrayidx816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist815, i32 0, i64 1
  %opred817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx816, i32 0, i32 0
  %358 = load %union.rec*, %union.rec** %opred817, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1818 = bitcast %union.rec* %359 to %struct.word_type*
  %olist819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist819, i32 0, i64 1
  %opred821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx820, i32 0, i32 0
  store %union.rec* %358, %union.rec** %opred821, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %361 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1822 = bitcast %union.rec* %361 to %struct.word_type*
  %olist823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1822, i32 0, i32 0
  %arrayidx824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist823, i32 0, i64 1
  %opred825 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx824, i32 0, i32 0
  %362 = load %union.rec*, %union.rec** %opred825, align 8
  %os1826 = bitcast %union.rec* %362 to %struct.word_type*
  %olist827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1826, i32 0, i32 0
  %arrayidx828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist827, i32 0, i64 1
  %osucc829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx828, i32 0, i32 1
  store %union.rec* %360, %union.rec** %osucc829, align 8
  %363 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1830 = bitcast %union.rec* %364 to %struct.word_type*
  %olist831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1830, i32 0, i32 0
  %arrayidx832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist831, i32 0, i64 1
  %opred833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx832, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred833, align 8
  %365 = load %union.rec*, %union.rec** @zz_res, align 8
  %366 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1834 = bitcast %union.rec* %366 to %struct.word_type*
  %olist835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1834, i32 0, i32 0
  %arrayidx836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist835, i32 0, i64 1
  %osucc837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx836, i32 0, i32 1
  store %union.rec* %365, %union.rec** %osucc837, align 8
  br label %cond.end.838

cond.end.838:                                     ; preds = %cond.false.809, %cond.true.808
  %cond839 = phi %union.rec* [ %354, %cond.true.808 ], [ %365, %cond.false.809 ]
  br label %cond.end.840

cond.end.840:                                     ; preds = %cond.end.838, %cond.true.804
  %cond841 = phi %union.rec* [ %352, %cond.true.804 ], [ %cond839, %cond.end.838 ]
  %367 = load %union.rec*, %union.rec** %res.addr, align 8
  %os6842 = bitcast %union.rec* %367 to %struct.symbol_type*
  %osym_body843 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6842, i32 0, i32 4
  store %union.rec* %cond841, %union.rec** %osym_body843, align 8
  br label %if.end.867

if.else.844:                                      ; preds = %lor.lhs.false.778
  %368 = load %union.rec*, %union.rec** %t, align 8
  %os1845 = bitcast %union.rec* %368 to %struct.word_type*
  %ou1846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1845, i32 0, i32 1
  %os11847 = bitcast %union.FIRST_UNION* %ou1846 to %struct.anon*
  %otype848 = getelementptr inbounds %struct.anon, %struct.anon* %os11847, i32 0, i32 0
  %369 = load i8, i8* %otype848, align 1
  %conv849 = zext i8 %369 to i32
  %cmp850 = icmp ne i32 %conv849, 103
  br i1 %cmp850, label %land.lhs.true.852, label %if.end.866

land.lhs.true.852:                                ; preds = %if.else.844
  %370 = load %union.rec*, %union.rec** %t, align 8
  %os1853 = bitcast %union.rec* %370 to %struct.word_type*
  %ou1854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1853, i32 0, i32 1
  %os11855 = bitcast %union.FIRST_UNION* %ou1854 to %struct.anon*
  %otype856 = getelementptr inbounds %struct.anon, %struct.anon* %os11855, i32 0, i32 0
  %371 = load i8, i8* %otype856, align 1
  %conv857 = zext i8 %371 to i32
  %cmp858 = icmp ne i32 %conv857, 105
  br i1 %cmp858, label %if.then.860, label %if.end.866

if.then.860:                                      ; preds = %land.lhs.true.852
  %372 = load %union.rec*, %union.rec** %t, align 8
  %os1861 = bitcast %union.rec* %372 to %struct.word_type*
  %ou1862 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1861, i32 0, i32 1
  %ofpos863 = bitcast %union.FIRST_UNION* %ou1862 to %struct.FILE_POS*
  %373 = load %union.rec*, %union.rec** %xsym, align 8
  %call864 = call i8* @SymName(%union.rec* %373)
  %call865 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos863, i8* %call864, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.866

if.end.866:                                       ; preds = %if.then.860, %land.lhs.true.852, %if.else.844
  br label %if.end.867

if.end.867:                                       ; preds = %if.end.866, %cond.end.840
  br label %if.end.868

if.end.868:                                       ; preds = %if.end.867, %while.end
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %374 = load %union.rec*, %union.rec** %t, align 8
  %os1869 = bitcast %union.rec* %374 to %struct.word_type*
  %ou1870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1869, i32 0, i32 1
  %ofpos871 = bitcast %union.FIRST_UNION* %ou1870 to %struct.FILE_POS*
  %375 = load %union.rec*, %union.rec** %t, align 8
  %os1872 = bitcast %union.rec* %375 to %struct.word_type*
  %ou1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 1
  %os11874 = bitcast %union.FIRST_UNION* %ou1873 to %struct.anon*
  %otype875 = getelementptr inbounds %struct.anon, %struct.anon* %os11874, i32 0, i32 0
  %376 = load i8, i8* %otype875, align 1
  %conv876 = zext i8 %376 to i32
  %call877 = call i8* @Image(i32 %conv876)
  %call878 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i32 0, %struct.FILE_POS* %ofpos871, i8* %call877)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.868, %cond.end.566, %cond.end.330, %sw.bb.276, %cond.end.272, %cond.end.226, %cond.end.175, %cond.end.129, %cond.end.83
  br label %for.cond

return:                                           ; preds = %if.end.666, %if.end.461, %if.end.347
  ret void
}

declare %union.rec* @ChildSym(%union.rec*, i32) #1

declare i8* @Image(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
