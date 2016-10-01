; ModuleID = './MultiSource.Benchmarks.MiBench/70.consumer-typeset.z41.bc'
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
%struct.anon.0 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [44 x i8] c"database index file seems to be out of date\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"syntax error in database file\00", align 1
@last_write_fnum = internal global i16 0, align 2
@last_write_fp = internal global %struct._IO_FILE* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"file name %s%s is too long\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"cannot append to database file %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"rename(%s, %s) failed\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"WriteObject: Down(y) == y!\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"WriteObject: next_gap!\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"@@C\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"@@D\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" \22%d %d\22\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"WriteObject: ENV/CLOSURE!\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"@@A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"WriteObject: ENV/ENV!\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"@@B\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"WriteObject: ENV/ENV+CLOSURE!\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"@@E\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"WriteObject/CROSS: type(y) != CLOSURE!\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"@@V\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"&&&\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"@Null\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"@PageLabel\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"@BeginHeaderComponent\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"@EndHeaderComponent\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"@SetHeaderComponent\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"@ClearHeaderComponent\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"@OneCol\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"@OneRow\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"@Wide\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"@High\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"@HShift\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"@VShift\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"@HScale\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"@VScale\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"@HCover\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"@VCover\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"@KernShrink\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"@HContract\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"@VContract\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"@HLimited\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"@VLimited\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"@HExpand\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"@VExpand\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"@StartHVSpan\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"@StartHSpan\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"@StartVSpan\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"@HSpan\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"@VSpan\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"@PAdjust\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"@HAdjust\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"@VAdjust\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"@Background\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"@Case\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"@Yield\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"@BackEnd\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"@Char\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"@Underline\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"@Outline\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"@CurrLang\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"@CurrFamily\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"@CurrFace\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"@CurrYUnit\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"@CurrZUnit\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"@Common\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"@Rump\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"@Insert\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"@OneOf\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"@Next\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"@Plus\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"@Minus\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"@Tagged\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"@LinkSource\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"@LinkDest\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"WriteObject/VERBATIM!\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"WriteObject/VERBATIM/WORD!\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"WriteObject:\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"@LUse\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: LPAR!\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: NPAR!\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: RPAR!\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"WriteClosure:  filter!\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"WriteClosure:\00", align 1
@.str.114 = private unnamed_addr constant [43 x i8] c"OptimizeParameterList: type(x) != CLOSURE!\00", align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define %union.rec* @ReadFromFile(i16 zeroext %fnum, i64 %pos, i32 %lnum) #0 {
entry:
  %fnum.addr = alloca i16, align 2
  %pos.addr = alloca i64, align 8
  %lnum.addr = alloca i32, align 4
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store i64 %pos, i64* %pos.addr, align 8
  store i32 %lnum, i32* %lnum.addr, align 4
  %0 = load i16, i16* %fnum.addr, align 2
  %1 = load i64, i64* %pos.addr, align 8
  %conv = trunc i64 %1 to i32
  %2 = load i32, i32* %lnum.addr, align 4
  call void @LexPush(i16 zeroext %0, i32 %conv, i32 3, i32 %2, i32 0)
  %call = call %union.rec* @LexGetToken()
  store %union.rec* %call, %union.rec** %t, align 8
  %3 = load %union.rec*, %union.rec** %t, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv1 = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv1, 102
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %union.rec*, %union.rec** %t, align 8
  %os13 = bitcast %union.rec* %5 to %struct.word_type*
  %ou14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou14 to %struct.FILE_POS*
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %union.rec*, %union.rec** @StartSym, align 8
  %call6 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %6, i32 0, i32 0)
  store %union.rec* %call6, %union.rec** %res, align 8
  %7 = load %union.rec*, %union.rec** %t, align 8
  %cmp7 = icmp ne %union.rec* %7, null
  br i1 %cmp7, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %union.rec*, %union.rec** %res, align 8
  %os19 = bitcast %union.rec* %8 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %os1111 = bitcast %union.FIRST_UNION* %ou110 to %struct.anon*
  %otype12 = getelementptr inbounds %struct.anon, %struct.anon* %os1111, i32 0, i32 0
  %9 = load i8, i8* %otype12, align 1
  %conv13 = zext i8 %9 to i32
  %cmp14 = icmp ne i32 %conv13, 2
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  %10 = load %union.rec*, %union.rec** %res, align 8
  %os117 = bitcast %union.rec* %10 to %struct.word_type*
  %ou118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 1
  %ofpos19 = bitcast %union.FIRST_UNION* %ou118 to %struct.FILE_POS*
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %lor.lhs.false
  call void @LexPop()
  %11 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %11
}

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #1

declare %union.rec* @LexGetToken() #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare void @LexPop() #1

; Function Attrs: nounwind uwtable
define void @AppendToFile(%union.rec* %x, i16 zeroext %fnum, i32* %pos, i32* %lnum) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %fnum.addr = alloca i16, align 2
  %pos.addr = alloca i32*, align 8
  %lnum.addr = alloca i32*, align 8
  %buff = alloca [512 x i8], align 16
  %str = alloca i8*, align 8
  %linecount = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store i32* %pos, i32** %pos.addr, align 8
  store i32* %lnum, i32** %lnum.addr, align 8
  %0 = load i16, i16* @last_write_fnum, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %fnum.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %2 = load i16, i16* @last_write_fnum, align 2
  %conv3 = zext i16 %2 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %4 = load i16, i16* %fnum.addr, align 2
  %call7 = call i8* @FileName(i16 zeroext %4)
  store i8* %call7, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %call8 = call i64 @strlen(i8* %5) #4
  %add = add i64 %call8, 1
  %cmp9 = icmp uge i64 %add, 512
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %6 = load i16, i16* %fnum.addr, align 2
  %call12 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %6)
  %7 = load i8*, i8** %str, align 8
  %call13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %call12, i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %call15 = call i8* @strcpy(i8* %arraydecay, i8* %8) #5
  %arraydecay16 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call17 = call i8* @strcat(i8* %arraydecay16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %9 = load i16, i16* %fnum.addr, align 2
  %call19 = call i32 @FileTestUpdated(i16 zeroext %9)
  %tobool = icmp ne i32 %call19, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)
  %call20 = call %struct._IO_FILE* @fopen(i8* %arraydecay18, i8* %cond)
  store %struct._IO_FILE* %call20, %struct._IO_FILE** @last_write_fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %cmp21 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.14
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %11, i8* %arraydecay24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.14
  %12 = load i16, i16* %fnum.addr, align 2
  store i16 %12, i16* @last_write_fnum, align 2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call27 = call i32 @fseek(%struct._IO_FILE* %13, i64 0, i32 2)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.26, %entry
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call29 = call i64 @ftell(%struct._IO_FILE* %14)
  %conv30 = trunc i64 %call29 to i32
  %15 = load i32*, i32** %pos.addr, align 8
  store i32 %conv30, i32* %15, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %16)
  %17 = load i16, i16* %fnum.addr, align 2
  %call32 = call i32 @FileGetLineCount(i16 zeroext %17)
  store i32 %call32, i32* %linecount, align 4
  %18 = load i32, i32* %linecount, align 4
  %add33 = add nsw i32 %18, 1
  %19 = load i32*, i32** %lnum.addr, align 8
  store i32 %add33, i32* %19, align 4
  %20 = load %union.rec*, %union.rec** %x.addr, align 8
  %21 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %20, i32 0, i32* %linecount, i16 zeroext %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %24)
  %25 = load i16, i16* %fnum.addr, align 2
  %26 = load i32, i32* %linecount, align 4
  %add37 = add nsw i32 %26, 2
  call void @FileSetUpdated(i16 zeroext %25, i32 %add37)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare i8* @FileName(i16 zeroext) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @FileTestUpdated(i16 zeroext) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @FileGetLineCount(i16 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @WriteObject(%union.rec* %x, i32 %outer_prec, i32* %linecount, i16 zeroext %fnum) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %outer_prec.addr = alloca i32, align 4
  %linecount.addr = alloca i32*, align 8
  %fnum.addr = alloca i16, align 2
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %gap_obj = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %name = alloca i8*, align 8
  %offset = alloca i32, align 4
  %lnum = alloca i32, align 4
  %prec = alloca i32, align 4
  %i = alloca i32, align 4
  %last_prec = alloca i32, align 4
  %braces_needed = alloca i32, align 4
  %next_gap = alloca %union.rec*, align 8
  %next_prec = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %outer_prec, i32* %outer_prec.addr, align 4
  store i32* %linecount, i32** %linecount.addr, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb.12
    i32 19, label %sw.bb.15
    i32 18, label %sw.bb.16
    i32 17, label %sw.bb.17
    i32 82, label %sw.bb.263
    i32 2, label %sw.bb.426
    i32 6, label %sw.bb.515
    i32 7, label %sw.bb.515
    i32 5, label %sw.bb.603
    i32 4, label %sw.bb.604
    i32 20, label %sw.bb.605
    i32 21, label %sw.bb.606
    i32 22, label %sw.bb.607
    i32 23, label %sw.bb.608
    i32 24, label %sw.bb.609
    i32 25, label %sw.bb.610
    i32 26, label %sw.bb.611
    i32 27, label %sw.bb.612
    i32 28, label %sw.bb.613
    i32 29, label %sw.bb.614
    i32 30, label %sw.bb.615
    i32 31, label %sw.bb.616
    i32 32, label %sw.bb.617
    i32 33, label %sw.bb.618
    i32 34, label %sw.bb.619
    i32 35, label %sw.bb.620
    i32 36, label %sw.bb.621
    i32 37, label %sw.bb.622
    i32 38, label %sw.bb.623
    i32 39, label %sw.bb.624
    i32 40, label %sw.bb.625
    i32 41, label %sw.bb.626
    i32 44, label %sw.bb.627
    i32 42, label %sw.bb.628
    i32 43, label %sw.bb.629
    i32 45, label %sw.bb.630
    i32 46, label %sw.bb.631
    i32 47, label %sw.bb.632
    i32 48, label %sw.bb.633
    i32 49, label %sw.bb.634
    i32 50, label %sw.bb.635
    i32 51, label %sw.bb.636
    i32 52, label %sw.bb.637
    i32 55, label %sw.bb.638
    i32 56, label %sw.bb.639
    i32 58, label %sw.bb.640
    i32 59, label %sw.bb.641
    i32 60, label %sw.bb.642
    i32 61, label %sw.bb.643
    i32 62, label %sw.bb.644
    i32 63, label %sw.bb.645
    i32 64, label %sw.bb.646
    i32 65, label %sw.bb.647
    i32 66, label %sw.bb.648
    i32 67, label %sw.bb.649
    i32 68, label %sw.bb.650
    i32 69, label %sw.bb.651
    i32 70, label %sw.bb.652
    i32 71, label %sw.bb.653
    i32 72, label %sw.bb.654
    i32 73, label %sw.bb.655
    i32 74, label %sw.bb.656
    i32 75, label %sw.bb.657
    i32 76, label %sw.bb.658
    i32 77, label %sw.bb.659
    i32 78, label %sw.bb.660
    i32 79, label %sw.bb.661
    i32 80, label %sw.bb.662
    i32 92, label %sw.bb.663
    i32 93, label %sw.bb.664
    i32 94, label %sw.bb.665
    i32 95, label %sw.bb.666
    i32 96, label %sw.bb.667
    i32 97, label %sw.bb.668
    i32 98, label %sw.bb.669
    i32 99, label %sw.bb.670
    i32 54, label %sw.bb.762
    i32 53, label %sw.bb.762
    i32 57, label %sw.bb.892
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #4
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %3 = load i32, i32* %outer_prec.addr, align 4
  %cmp4 = icmp sgt i32 %3, 7
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  %os18 = bitcast %union.rec* %6 to %struct.word_type*
  %ostring9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 4
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring9, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call11 = call i32 @fputs(i8* %arraydecay10, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %call13 = call i8* @StringQuotedWord(%union.rec* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call14 = call i32 @fputs(i8* %call13, %struct._IO_FILE* %9)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  store i32 5, i32* %prec, align 4
  br label %ETC

sw.bb.16:                                         ; preds = %entry
  store i32 6, i32* %prec, align 4
  br label %ETC

sw.bb.17:                                         ; preds = %entry
  store i32 7, i32* %prec, align 4
  br label %ETC

ETC:                                              ; preds = %sw.bb.17, %sw.bb.16, %sw.bb.15
  %10 = load i32, i32* %prec, align 4
  %11 = load i32, i32* %outer_prec.addr, align 4
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %ETC
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %12)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %ETC
  %13 = load i32, i32* %prec, align 4
  store i32 %13, i32* %last_prec, align 4
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os123 = bitcast %union.rec* %14 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %15, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.252, %if.end.22
  %16 = load %union.rec*, %union.rec** %link, align 8
  %17 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp24 = icmp ne %union.rec* %16, %17
  br i1 %cmp24, label %for.body, label %for.end.257

for.body:                                         ; preds = %for.cond
  %18 = load %union.rec*, %union.rec** %link, align 8
  %os126 = bitcast %union.rec* %18 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %19, %union.rec** %y, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %for.body
  %20 = load %union.rec*, %union.rec** %y, align 8
  %os130 = bitcast %union.rec* %20 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %os1132 = bitcast %union.FIRST_UNION* %ou131 to %struct.anon*
  %otype33 = getelementptr inbounds %struct.anon, %struct.anon* %os1132, i32 0, i32 0
  %21 = load i8, i8* %otype33, align 1
  %conv34 = zext i8 %21 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.29
  br label %for.inc

for.inc:                                          ; preds = %for.body.37
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os138 = bitcast %union.rec* %22 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 1
  %opred41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred41, align 8
  store %union.rec* %23, %union.rec** %y, align 8
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os142 = bitcast %union.rec* %24 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %os1144 = bitcast %union.FIRST_UNION* %ou143 to %struct.anon*
  %otype45 = getelementptr inbounds %struct.anon, %struct.anon* %os1144, i32 0, i32 0
  %25 = load i8, i8* %otype45, align 1
  %conv46 = zext i8 %25 to i32
  %cmp47 = icmp eq i32 %conv46, 1
  br i1 %cmp47, label %if.then.49, label %if.else.181

if.then.49:                                       ; preds = %for.end
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os150 = bitcast %union.rec* %26 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  %27 = load %union.rec*, %union.rec** %osucc53, align 8
  %28 = load %union.rec*, %union.rec** %y, align 8
  %cmp54 = icmp eq %union.rec* %27, %28
  br i1 %cmp54, label %if.then.56, label %if.else.106

if.then.56:                                       ; preds = %if.then.49
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os157 = bitcast %union.rec* %29 to %struct.word_type*
  %ou158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 1
  %os1159 = bitcast %union.FIRST_UNION* %ou158 to %struct.anon*
  %otype60 = getelementptr inbounds %struct.anon, %struct.anon* %os1159, i32 0, i32 0
  %30 = load i8, i8* %otype60, align 1
  %conv61 = zext i8 %30 to i32
  %cmp62 = icmp eq i32 %conv61, 17
  br i1 %cmp62, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %if.then.56
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.then.56
  store i32 1, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.74, %if.end.66
  %32 = load i32, i32* %i, align 4
  %33 = load %union.rec*, %union.rec** %y, align 8
  %os168 = bitcast %union.rec* %33 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 2
  %34 = load i8, i8* %ovspace, align 1
  %conv69 = zext i8 %34 to i32
  %cmp70 = icmp sle i32 %32, %conv69
  br i1 %cmp70, label %for.body.72, label %for.end.75

for.body.72:                                      ; preds = %for.cond.67
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call73 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %35)
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.72
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.67

for.end.75:                                       ; preds = %for.cond.67
  %37 = load %union.rec*, %union.rec** %y, align 8
  %os176 = bitcast %union.rec* %37 to %struct.word_type*
  %ou277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 2
  %os2178 = bitcast %union.SECOND_UNION* %ou277 to %struct.anon.0*
  %ovspace79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2178, i32 0, i32 2
  %38 = load i8, i8* %ovspace79, align 1
  %conv80 = zext i8 %38 to i32
  %39 = load i32*, i32** %linecount.addr, align 8
  %40 = load i32, i32* %39, align 4
  %add = add nsw i32 %40, %conv80
  store i32 %add, i32* %39, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.90, %for.end.75
  %41 = load i32, i32* %i, align 4
  %42 = load %union.rec*, %union.rec** %y, align 8
  %os182 = bitcast %union.rec* %42 to %struct.word_type*
  %ou283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 2
  %os2184 = bitcast %union.SECOND_UNION* %ou283 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2184, i32 0, i32 1
  %43 = load i8, i8* %ohspace, align 1
  %conv85 = zext i8 %43 to i32
  %cmp86 = icmp sle i32 %41, %conv85
  br i1 %cmp86, label %for.body.88, label %for.end.92

for.body.88:                                      ; preds = %for.cond.81
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call89 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %44)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.88
  %45 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %45, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.81

for.end.92:                                       ; preds = %for.cond.81
  %46 = load %union.rec*, %union.rec** %y, align 8
  %os193 = bitcast %union.rec* %46 to %struct.word_type*
  %ou294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 2
  %os2195 = bitcast %union.SECOND_UNION* %ou294 to %struct.anon.0*
  %ovspace96 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2195, i32 0, i32 2
  %47 = load i8, i8* %ovspace96, align 1
  %conv97 = zext i8 %47 to i32
  %48 = load %union.rec*, %union.rec** %y, align 8
  %os198 = bitcast %union.rec* %48 to %struct.word_type*
  %ou299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 2
  %os21100 = bitcast %union.SECOND_UNION* %ou299 to %struct.anon.0*
  %ohspace101 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21100, i32 0, i32 1
  %49 = load i8, i8* %ohspace101, align 1
  %conv102 = zext i8 %49 to i32
  %add103 = add nsw i32 %conv97, %conv102
  %cmp104 = icmp eq i32 %add103, 0
  %cond = select i1 %cmp104, i32 103, i32 7
  store i32 %cond, i32* %last_prec, align 4
  br label %if.end.180

if.else.106:                                      ; preds = %if.then.49
  %50 = load %union.rec*, %union.rec** %y, align 8
  %os1107 = bitcast %union.rec* %50 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 0
  %osucc110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 1
  %51 = load %union.rec*, %union.rec** %osucc110, align 8
  %os1111 = bitcast %union.rec* %51 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 1
  %opred114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred114, align 8
  store %union.rec* %52, %union.rec** %gap_obj, align 8
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.124, %if.else.106
  %53 = load %union.rec*, %union.rec** %gap_obj, align 8
  %os1116 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 1
  %os11118 = bitcast %union.FIRST_UNION* %ou1117 to %struct.anon*
  %otype119 = getelementptr inbounds %struct.anon, %struct.anon* %os11118, i32 0, i32 0
  %54 = load i8, i8* %otype119, align 1
  %conv120 = zext i8 %54 to i32
  %cmp121 = icmp eq i32 %conv120, 0
  br i1 %cmp121, label %for.body.123, label %for.end.129

for.body.123:                                     ; preds = %for.cond.115
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.123
  %55 = load %union.rec*, %union.rec** %gap_obj, align 8
  %os1125 = bitcast %union.rec* %55 to %struct.word_type*
  %olist126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist126, i32 0, i64 1
  %opred128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx127, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %opred128, align 8
  store %union.rec* %56, %union.rec** %gap_obj, align 8
  br label %for.cond.115

for.end.129:                                      ; preds = %for.cond.115
  %57 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1130 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 1
  %os11132 = bitcast %union.FIRST_UNION* %ou1131 to %struct.anon*
  %otype133 = getelementptr inbounds %struct.anon, %struct.anon* %os11132, i32 0, i32 0
  %58 = load i8, i8* %otype133, align 1
  %conv134 = zext i8 %58 to i32
  %cmp135 = icmp eq i32 %conv134, 17
  br i1 %cmp135, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %for.end.129
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call138 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %59)
  br label %if.end.142

if.else.139:                                      ; preds = %for.end.129
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call140 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %60)
  %61 = load i32*, i32** %linecount.addr, align 8
  %62 = load i32, i32* %61, align 4
  %add141 = add nsw i32 %62, 1
  store i32 %add141, i32* %61, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.137
  %63 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1143 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 1
  %os11145 = bitcast %union.FIRST_UNION* %ou1144 to %struct.anon*
  %otype146 = getelementptr inbounds %struct.anon, %struct.anon* %os11145, i32 0, i32 0
  %64 = load i8, i8* %otype146, align 1
  %conv147 = zext i8 %64 to i32
  %65 = load %union.rec*, %union.rec** %y, align 8
  %os5 = bitcast %union.rec* %65 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %66 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %66, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %67 = load %union.rec*, %union.rec** %y, align 8
  %os5148 = bitcast %union.rec* %67 to %struct.gapobj_type*
  %ogap149 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5148, i32 0, i32 3
  %68 = bitcast %struct.GAP* %ogap149 to i16*
  %bf.load150 = load i16, i16* %68, align 4
  %bf.lshr151 = lshr i16 %bf.load150, 9
  %bf.clear152 = and i16 %bf.lshr151, 1
  %bf.cast153 = zext i16 %bf.clear152 to i32
  %call154 = call i8* @EchoCatOp(i32 %conv147, i32 %bf.cast, i32 %bf.cast153)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call155 = call i32 @fputs(i8* %call154, %struct._IO_FILE* %69)
  %70 = load %union.rec*, %union.rec** %gap_obj, align 8
  %os1156 = bitcast %union.rec* %70 to %struct.word_type*
  %ou1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 1
  %os11158 = bitcast %union.FIRST_UNION* %ou1157 to %struct.anon*
  %otype159 = getelementptr inbounds %struct.anon, %struct.anon* %os11158, i32 0, i32 0
  %71 = load i8, i8* %otype159, align 1
  %conv160 = zext i8 %71 to i32
  %cmp161 = icmp eq i32 %conv160, 11
  br i1 %cmp161, label %lor.lhs.false.170, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.142
  %72 = load %union.rec*, %union.rec** %gap_obj, align 8
  %os1163 = bitcast %union.rec* %72 to %struct.word_type*
  %ou1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 1
  %os11165 = bitcast %union.FIRST_UNION* %ou1164 to %struct.anon*
  %otype166 = getelementptr inbounds %struct.anon, %struct.anon* %os11165, i32 0, i32 0
  %73 = load i8, i8* %otype166, align 1
  %conv167 = zext i8 %73 to i32
  %cmp168 = icmp eq i32 %conv167, 12
  br i1 %cmp168, label %lor.lhs.false.170, label %if.then.177

lor.lhs.false.170:                                ; preds = %lor.lhs.false, %if.end.142
  %74 = load %union.rec*, %union.rec** %gap_obj, align 8
  %os1171 = bitcast %union.rec* %74 to %struct.word_type*
  %ostring172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 4
  %arraydecay173 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring172, i32 0, i32 0
  %call174 = call i64 @strlen(i8* %arraydecay173) #4
  %cmp175 = icmp ne i64 %call174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %lor.lhs.false.170, %lor.lhs.false
  %75 = load %union.rec*, %union.rec** %gap_obj, align 8
  %76 = load i32*, i32** %linecount.addr, align 8
  %77 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %75, i32 105, i32* %76, i16 zeroext %77)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %lor.lhs.false.170
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call179 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %78)
  %79 = load i32, i32* %prec, align 4
  store i32 %79, i32* %last_prec, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.178, %for.end.92
  br label %if.end.251

if.else.181:                                      ; preds = %for.end
  %80 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1182 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 1
  %os11184 = bitcast %union.FIRST_UNION* %ou1183 to %struct.anon*
  %otype185 = getelementptr inbounds %struct.anon, %struct.anon* %os11184, i32 0, i32 0
  %81 = load i8, i8* %otype185, align 1
  %conv186 = zext i8 %81 to i32
  %cmp187 = icmp eq i32 %conv186, 17
  br i1 %cmp187, label %if.then.189, label %if.else.249

if.then.189:                                      ; preds = %if.else.181
  %82 = load %union.rec*, %union.rec** %link, align 8
  %os1190 = bitcast %union.rec* %82 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 0
  %osucc193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 1
  %83 = load %union.rec*, %union.rec** %osucc193, align 8
  %84 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp194 = icmp ne %union.rec* %83, %84
  br i1 %cmp194, label %if.then.196, label %if.else.244

if.then.196:                                      ; preds = %if.then.189
  %85 = load %union.rec*, %union.rec** %link, align 8
  %os1197 = bitcast %union.rec* %85 to %struct.word_type*
  %olist198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist198, i32 0, i64 0
  %osucc200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx199, i32 0, i32 1
  %86 = load %union.rec*, %union.rec** %osucc200, align 8
  %os1201 = bitcast %union.rec* %86 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 1
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred204, align 8
  store %union.rec* %87, %union.rec** %next_gap, align 8
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.214, %if.then.196
  %88 = load %union.rec*, %union.rec** %next_gap, align 8
  %os1206 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 1
  %os11208 = bitcast %union.FIRST_UNION* %ou1207 to %struct.anon*
  %otype209 = getelementptr inbounds %struct.anon, %struct.anon* %os11208, i32 0, i32 0
  %89 = load i8, i8* %otype209, align 1
  %conv210 = zext i8 %89 to i32
  %cmp211 = icmp eq i32 %conv210, 0
  br i1 %cmp211, label %for.body.213, label %for.end.219

for.body.213:                                     ; preds = %for.cond.205
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.213
  %90 = load %union.rec*, %union.rec** %next_gap, align 8
  %os1215 = bitcast %union.rec* %90 to %struct.word_type*
  %olist216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist216, i32 0, i64 1
  %opred218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx217, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %opred218, align 8
  store %union.rec* %91, %union.rec** %next_gap, align 8
  br label %for.cond.205

for.end.219:                                      ; preds = %for.cond.205
  %92 = load %union.rec*, %union.rec** %next_gap, align 8
  %os1220 = bitcast %union.rec* %92 to %struct.word_type*
  %ou1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 1
  %os11222 = bitcast %union.FIRST_UNION* %ou1221 to %struct.anon*
  %otype223 = getelementptr inbounds %struct.anon, %struct.anon* %os11222, i32 0, i32 0
  %93 = load i8, i8* %otype223, align 1
  %conv224 = zext i8 %93 to i32
  %cmp225 = icmp eq i32 %conv224, 1
  br i1 %cmp225, label %if.end.229, label %if.then.227

if.then.227:                                      ; preds = %for.end.219
  %94 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call228 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.227, %for.end.219
  %95 = load %union.rec*, %union.rec** %next_gap, align 8
  %os1230 = bitcast %union.rec* %95 to %struct.word_type*
  %ou2231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 2
  %os21232 = bitcast %union.SECOND_UNION* %ou2231 to %struct.anon.0*
  %ovspace233 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21232, i32 0, i32 2
  %96 = load i8, i8* %ovspace233, align 1
  %conv234 = zext i8 %96 to i32
  %97 = load %union.rec*, %union.rec** %next_gap, align 8
  %os1235 = bitcast %union.rec* %97 to %struct.word_type*
  %ou2236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1235, i32 0, i32 2
  %os21237 = bitcast %union.SECOND_UNION* %ou2236 to %struct.anon.0*
  %ohspace238 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21237, i32 0, i32 1
  %98 = load i8, i8* %ohspace238, align 1
  %conv239 = zext i8 %98 to i32
  %add240 = add nsw i32 %conv234, %conv239
  %cmp241 = icmp eq i32 %add240, 0
  %cond243 = select i1 %cmp241, i32 103, i32 7
  store i32 %cond243, i32* %next_prec, align 4
  br label %if.end.245

if.else.244:                                      ; preds = %if.then.189
  %99 = load i32, i32* %prec, align 4
  store i32 %99, i32* %next_prec, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.244, %if.end.229
  %100 = load %union.rec*, %union.rec** %y, align 8
  %101 = load i32, i32* %last_prec, align 4
  %102 = load i32, i32* %next_prec, align 4
  %cmp246 = icmp slt i32 %101, %102
  br i1 %cmp246, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.245
  %103 = load i32, i32* %next_prec, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.245
  %104 = load i32, i32* %last_prec, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond248 = phi i32 [ %103, %cond.true ], [ %104, %cond.false ]
  %105 = load i32*, i32** %linecount.addr, align 8
  %106 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %100, i32 %cond248, i32* %105, i16 zeroext %106)
  br label %if.end.250

if.else.249:                                      ; preds = %if.else.181
  %107 = load %union.rec*, %union.rec** %y, align 8
  %108 = load i32, i32* %prec, align 4
  %109 = load i32*, i32** %linecount.addr, align 8
  %110 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %107, i32 %108, i32* %109, i16 zeroext %110)
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.249, %cond.end
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.180
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251
  %111 = load %union.rec*, %union.rec** %link, align 8
  %os1253 = bitcast %union.rec* %111 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 0
  %osucc256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 1
  %112 = load %union.rec*, %union.rec** %osucc256, align 8
  store %union.rec* %112, %union.rec** %link, align 8
  br label %for.cond

for.end.257:                                      ; preds = %for.cond
  %113 = load i32, i32* %prec, align 4
  %114 = load i32, i32* %outer_prec.addr, align 4
  %cmp258 = icmp slt i32 %113, %114
  br i1 %cmp258, label %if.then.260, label %if.end.262

if.then.260:                                      ; preds = %for.end.257
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call261 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %115)
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.260, %for.end.257
  br label %sw.epilog

sw.bb.263:                                        ; preds = %entry
  %116 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1264 = bitcast %union.rec* %116 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 0
  %osucc267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 1
  %117 = load %union.rec*, %union.rec** %osucc267, align 8
  %118 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp268 = icmp eq %union.rec* %117, %118
  br i1 %cmp268, label %if.then.270, label %if.else.274

if.then.270:                                      ; preds = %sw.bb.263
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call271 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %119)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call272 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %120)
  %121 = load i32*, i32** %linecount.addr, align 8
  %122 = load i32, i32* %121, align 4
  %add273 = add nsw i32 %122, 1
  store i32 %add273, i32* %121, align 4
  br label %if.end.425

if.else.274:                                      ; preds = %sw.bb.263
  %123 = load %union.rec*, %union.rec** %x.addr, align 8
  %124 = load i16, i16* %fnum.addr, align 2
  %call275 = call i32 @EnvWriteRetrieve(%union.rec* %123, i16 zeroext %124, i32* %offset, i32* %lnum)
  %tobool = icmp ne i32 %call275, 0
  br i1 %tobool, label %if.then.276, label %if.else.281

if.then.276:                                      ; preds = %if.else.274
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call277 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %125)
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %127 = load i32, i32* %offset, align 4
  %128 = load i32, i32* %lnum, align 4
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %127, i32 %128)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call279 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %129)
  %130 = load i32*, i32** %linecount.addr, align 8
  %131 = load i32, i32* %130, align 4
  %add280 = add nsw i32 %131, 1
  store i32 %add280, i32* %130, align 4
  br label %if.end.424

if.else.281:                                      ; preds = %if.else.274
  %132 = load %union.rec*, %union.rec** %x.addr, align 8
  %133 = load i16, i16* %fnum.addr, align 2
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call282 = call i64 @ftell(%struct._IO_FILE* %134)
  %conv283 = trunc i64 %call282 to i32
  %135 = load i32*, i32** %linecount.addr, align 8
  %136 = load i32, i32* %135, align 4
  call void @EnvWriteInsert(%union.rec* %132, i16 zeroext %133, i32 %conv283, i32 %136)
  %137 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1284 = bitcast %union.rec* %137 to %struct.word_type*
  %olist285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist285, i32 0, i64 0
  %osucc287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx286, i32 0, i32 1
  %138 = load %union.rec*, %union.rec** %osucc287, align 8
  %139 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1288 = bitcast %union.rec* %139 to %struct.word_type*
  %olist289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist289, i32 0, i64 0
  %opred291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx290, i32 0, i32 0
  %140 = load %union.rec*, %union.rec** %opred291, align 8
  %cmp292 = icmp eq %union.rec* %138, %140
  br i1 %cmp292, label %if.then.294, label %if.else.340

if.then.294:                                      ; preds = %if.else.281
  %141 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1295 = bitcast %union.rec* %141 to %struct.word_type*
  %olist296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1295, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist296, i32 0, i64 0
  %osucc298 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx297, i32 0, i32 1
  %142 = load %union.rec*, %union.rec** %osucc298, align 8
  %os1299 = bitcast %union.rec* %142 to %struct.word_type*
  %olist300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1299, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist300, i32 0, i64 1
  %opred302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx301, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %opred302, align 8
  store %union.rec* %143, %union.rec** %y, align 8
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.312, %if.then.294
  %144 = load %union.rec*, %union.rec** %y, align 8
  %os1304 = bitcast %union.rec* %144 to %struct.word_type*
  %ou1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 1
  %os11306 = bitcast %union.FIRST_UNION* %ou1305 to %struct.anon*
  %otype307 = getelementptr inbounds %struct.anon, %struct.anon* %os11306, i32 0, i32 0
  %145 = load i8, i8* %otype307, align 1
  %conv308 = zext i8 %145 to i32
  %cmp309 = icmp eq i32 %conv308, 0
  br i1 %cmp309, label %for.body.311, label %for.end.317

for.body.311:                                     ; preds = %for.cond.303
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.body.311
  %146 = load %union.rec*, %union.rec** %y, align 8
  %os1313 = bitcast %union.rec* %146 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 1
  %opred316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 0
  %147 = load %union.rec*, %union.rec** %opred316, align 8
  store %union.rec* %147, %union.rec** %y, align 8
  br label %for.cond.303

for.end.317:                                      ; preds = %for.cond.303
  %148 = load %union.rec*, %union.rec** %y, align 8
  %os1318 = bitcast %union.rec* %148 to %struct.word_type*
  %ou1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1318, i32 0, i32 1
  %os11320 = bitcast %union.FIRST_UNION* %ou1319 to %struct.anon*
  %otype321 = getelementptr inbounds %struct.anon, %struct.anon* %os11320, i32 0, i32 0
  %149 = load i8, i8* %otype321, align 1
  %conv322 = zext i8 %149 to i32
  %cmp323 = icmp eq i32 %conv322, 2
  br i1 %cmp323, label %if.end.327, label %if.then.325

if.then.325:                                      ; preds = %for.end.317
  %150 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call326 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.325, %for.end.317
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call328 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %151)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call329 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %152)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call330 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %153)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call331 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %154)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call332 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %155)
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call333 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %156)
  %157 = load %union.rec*, %union.rec** %y, align 8
  %158 = load i32*, i32** %linecount.addr, align 8
  %159 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %157, i32 0, i32* %158, i16 zeroext %159)
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call334 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %160)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call335 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %161)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call336 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %162)
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call337 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %163)
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call338 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %164)
  %165 = load i32*, i32** %linecount.addr, align 8
  %166 = load i32, i32* %165, align 4
  %add339 = add nsw i32 %166, 1
  store i32 %add339, i32* %165, align 4
  br label %if.end.423

if.else.340:                                      ; preds = %if.else.281
  %167 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1341 = bitcast %union.rec* %167 to %struct.word_type*
  %olist342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1341, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist342, i32 0, i64 0
  %opred344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx343, i32 0, i32 0
  %168 = load %union.rec*, %union.rec** %opred344, align 8
  %os1345 = bitcast %union.rec* %168 to %struct.word_type*
  %olist346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist346, i32 0, i64 1
  %opred348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx347, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred348, align 8
  store %union.rec* %169, %union.rec** %env, align 8
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.358, %if.else.340
  %170 = load %union.rec*, %union.rec** %env, align 8
  %os1350 = bitcast %union.rec* %170 to %struct.word_type*
  %ou1351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 1
  %os11352 = bitcast %union.FIRST_UNION* %ou1351 to %struct.anon*
  %otype353 = getelementptr inbounds %struct.anon, %struct.anon* %os11352, i32 0, i32 0
  %171 = load i8, i8* %otype353, align 1
  %conv354 = zext i8 %171 to i32
  %cmp355 = icmp eq i32 %conv354, 0
  br i1 %cmp355, label %for.body.357, label %for.end.363

for.body.357:                                     ; preds = %for.cond.349
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.body.357
  %172 = load %union.rec*, %union.rec** %env, align 8
  %os1359 = bitcast %union.rec* %172 to %struct.word_type*
  %olist360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1359, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist360, i32 0, i64 1
  %opred362 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx361, i32 0, i32 0
  %173 = load %union.rec*, %union.rec** %opred362, align 8
  store %union.rec* %173, %union.rec** %env, align 8
  br label %for.cond.349

for.end.363:                                      ; preds = %for.cond.349
  %174 = load %union.rec*, %union.rec** %env, align 8
  %os1364 = bitcast %union.rec* %174 to %struct.word_type*
  %ou1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 1
  %os11366 = bitcast %union.FIRST_UNION* %ou1365 to %struct.anon*
  %otype367 = getelementptr inbounds %struct.anon, %struct.anon* %os11366, i32 0, i32 0
  %175 = load i8, i8* %otype367, align 1
  %conv368 = zext i8 %175 to i32
  %cmp369 = icmp eq i32 %conv368, 82
  br i1 %cmp369, label %if.end.373, label %if.then.371

if.then.371:                                      ; preds = %for.end.363
  %176 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call372 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.371, %for.end.363
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call374 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %177)
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call375 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %178)
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call376 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %179)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call377 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %180)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call378 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %181)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call379 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %182)
  %183 = load %union.rec*, %union.rec** %env, align 8
  %184 = load i32*, i32** %linecount.addr, align 8
  %185 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %183, i32 0, i32* %184, i16 zeroext %185)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call380 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %186)
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call381 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %187)
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call382 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %188)
  %189 = load i32*, i32** %linecount.addr, align 8
  %190 = load i32, i32* %189, align 4
  %add383 = add nsw i32 %190, 1
  store i32 %add383, i32* %189, align 4
  %191 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1384 = bitcast %union.rec* %191 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 0
  %osucc387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 1
  %192 = load %union.rec*, %union.rec** %osucc387, align 8
  %os1388 = bitcast %union.rec* %192 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 1
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  %193 = load %union.rec*, %union.rec** %opred391, align 8
  store %union.rec* %193, %union.rec** %y, align 8
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.401, %if.end.373
  %194 = load %union.rec*, %union.rec** %y, align 8
  %os1393 = bitcast %union.rec* %194 to %struct.word_type*
  %ou1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1393, i32 0, i32 1
  %os11395 = bitcast %union.FIRST_UNION* %ou1394 to %struct.anon*
  %otype396 = getelementptr inbounds %struct.anon, %struct.anon* %os11395, i32 0, i32 0
  %195 = load i8, i8* %otype396, align 1
  %conv397 = zext i8 %195 to i32
  %cmp398 = icmp eq i32 %conv397, 0
  br i1 %cmp398, label %for.body.400, label %for.end.406

for.body.400:                                     ; preds = %for.cond.392
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.400
  %196 = load %union.rec*, %union.rec** %y, align 8
  %os1402 = bitcast %union.rec* %196 to %struct.word_type*
  %olist403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1402, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist403, i32 0, i64 1
  %opred405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx404, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %opred405, align 8
  store %union.rec* %197, %union.rec** %y, align 8
  br label %for.cond.392

for.end.406:                                      ; preds = %for.cond.392
  %198 = load %union.rec*, %union.rec** %y, align 8
  %os1407 = bitcast %union.rec* %198 to %struct.word_type*
  %ou1408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 1
  %os11409 = bitcast %union.FIRST_UNION* %ou1408 to %struct.anon*
  %otype410 = getelementptr inbounds %struct.anon, %struct.anon* %os11409, i32 0, i32 0
  %199 = load i8, i8* %otype410, align 1
  %conv411 = zext i8 %199 to i32
  %cmp412 = icmp eq i32 %conv411, 2
  br i1 %cmp412, label %if.end.416, label %if.then.414

if.then.414:                                      ; preds = %for.end.406
  %200 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call415 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %200, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.414, %for.end.406
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call417 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %201)
  %202 = load %union.rec*, %union.rec** %y, align 8
  %203 = load i32*, i32** %linecount.addr, align 8
  %204 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %202, i32 0, i32* %203, i16 zeroext %204)
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call418 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %205)
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call419 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %206)
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call420 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %207)
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call421 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %208)
  %209 = load i32*, i32** %linecount.addr, align 8
  %210 = load i32, i32* %209, align 4
  %add422 = add nsw i32 %210, 1
  store i32 %add422, i32* %209, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.416, %if.end.327
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.then.276
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.then.270
  br label %sw.epilog

sw.bb.426:                                        ; preds = %entry
  %211 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %211 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %212 = load %union.rec*, %union.rec** %oactual, align 8
  store %union.rec* %212, %union.rec** %sym, align 8
  store %union.rec* null, %union.rec** %env, align 8
  %213 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1427 = bitcast %union.rec* %213 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 0
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %opred430, align 8
  %215 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp431 = icmp ne %union.rec* %214, %215
  br i1 %cmp431, label %if.then.433, label %if.end.466

if.then.433:                                      ; preds = %sw.bb.426
  %216 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1434 = bitcast %union.rec* %216 to %struct.word_type*
  %olist435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1434, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist435, i32 0, i64 0
  %opred437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx436, i32 0, i32 0
  %217 = load %union.rec*, %union.rec** %opred437, align 8
  %os1438 = bitcast %union.rec* %217 to %struct.word_type*
  %olist439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1438, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist439, i32 0, i64 1
  %opred441 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx440, i32 0, i32 0
  %218 = load %union.rec*, %union.rec** %opred441, align 8
  store %union.rec* %218, %union.rec** %y, align 8
  br label %for.cond.442

for.cond.442:                                     ; preds = %for.inc.451, %if.then.433
  %219 = load %union.rec*, %union.rec** %y, align 8
  %os1443 = bitcast %union.rec* %219 to %struct.word_type*
  %ou1444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1443, i32 0, i32 1
  %os11445 = bitcast %union.FIRST_UNION* %ou1444 to %struct.anon*
  %otype446 = getelementptr inbounds %struct.anon, %struct.anon* %os11445, i32 0, i32 0
  %220 = load i8, i8* %otype446, align 1
  %conv447 = zext i8 %220 to i32
  %cmp448 = icmp eq i32 %conv447, 0
  br i1 %cmp448, label %for.body.450, label %for.end.456

for.body.450:                                     ; preds = %for.cond.442
  br label %for.inc.451

for.inc.451:                                      ; preds = %for.body.450
  %221 = load %union.rec*, %union.rec** %y, align 8
  %os1452 = bitcast %union.rec* %221 to %struct.word_type*
  %olist453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist453, i32 0, i64 1
  %opred455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx454, i32 0, i32 0
  %222 = load %union.rec*, %union.rec** %opred455, align 8
  store %union.rec* %222, %union.rec** %y, align 8
  br label %for.cond.442

for.end.456:                                      ; preds = %for.cond.442
  %223 = load %union.rec*, %union.rec** %y, align 8
  %os1457 = bitcast %union.rec* %223 to %struct.word_type*
  %ou1458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 1
  %os11459 = bitcast %union.FIRST_UNION* %ou1458 to %struct.anon*
  %otype460 = getelementptr inbounds %struct.anon, %struct.anon* %os11459, i32 0, i32 0
  %224 = load i8, i8* %otype460, align 1
  %conv461 = zext i8 %224 to i32
  %cmp462 = icmp eq i32 %conv461, 82
  br i1 %cmp462, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %for.end.456
  %225 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %225, %union.rec** %env, align 8
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %for.end.456
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %sw.bb.426
  %226 = load %union.rec*, %union.rec** %env, align 8
  %cmp467 = icmp ne %union.rec* %226, null
  br i1 %cmp467, label %lor.end, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %if.end.466
  %227 = load %union.rec*, %union.rec** %sym, align 8
  %os1470 = bitcast %union.rec* %227 to %struct.word_type*
  %ou2471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1470, i32 0, i32 2
  %os21472 = bitcast %union.SECOND_UNION* %ou2471 to %struct.anon.0*
  %oprecedence = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21472, i32 0, i32 0
  %228 = load i8, i8* %oprecedence, align 1
  %conv473 = zext i8 %228 to i32
  %229 = load i32, i32* %outer_prec.addr, align 4
  %cmp474 = icmp sle i32 %conv473, %229
  br i1 %cmp474, label %land.lhs.true.476, label %lor.rhs

land.lhs.true.476:                                ; preds = %lor.lhs.false.469
  %230 = load %union.rec*, %union.rec** %sym, align 8
  %os1477 = bitcast %union.rec* %230 to %struct.word_type*
  %ou2478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2478 to %struct.anon.5*
  %ohas_lpar = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %231 = bitcast [3 x i8]* %ohas_lpar to i24*
  %bf.load479 = load i24, i24* %231, align 1
  %bf.lshr480 = lshr i24 %bf.load479, 2
  %bf.clear481 = and i24 %bf.lshr480, 1
  %bf.cast482 = zext i24 %bf.clear481 to i32
  %tobool483 = icmp ne i32 %bf.cast482, 0
  br i1 %tobool483, label %lor.end, label %lor.lhs.false.484

lor.lhs.false.484:                                ; preds = %land.lhs.true.476
  %232 = load %union.rec*, %union.rec** %sym, align 8
  %os1485 = bitcast %union.rec* %232 to %struct.word_type*
  %ou2486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1485, i32 0, i32 2
  %os26487 = bitcast %union.SECOND_UNION* %ou2486 to %struct.anon.5*
  %ohas_rpar = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26487, i32 0, i32 1
  %233 = bitcast [3 x i8]* %ohas_rpar to i24*
  %bf.load488 = load i24, i24* %233, align 1
  %bf.lshr489 = lshr i24 %bf.load488, 3
  %bf.clear490 = and i24 %bf.lshr489, 1
  %bf.cast491 = zext i24 %bf.clear490 to i32
  %tobool492 = icmp ne i32 %bf.cast491, 0
  br i1 %tobool492, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.484, %lor.lhs.false.469
  %234 = load i32, i32* %outer_prec.addr, align 4
  %cmp493 = icmp sge i32 %234, 103
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.484, %land.lhs.true.476, %if.end.466
  %235 = phi i1 [ true, %lor.lhs.false.484 ], [ true, %land.lhs.true.476 ], [ true, %if.end.466 ], [ %cmp493, %lor.rhs ]
  %lor.ext = zext i1 %235 to i32
  store i32 %lor.ext, i32* %braces_needed, align 4
  %236 = load %union.rec*, %union.rec** %env, align 8
  %cmp495 = icmp ne %union.rec* %236, null
  br i1 %cmp495, label %if.then.497, label %if.end.506

if.then.497:                                      ; preds = %lor.end
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call498 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %237)
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call499 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %238)
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call500 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %239)
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call501 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %240)
  %241 = load i32*, i32** %linecount.addr, align 8
  %242 = load i32, i32* %241, align 4
  %add502 = add nsw i32 %242, 1
  store i32 %add502, i32* %241, align 4
  %243 = load %union.rec*, %union.rec** %env, align 8
  %244 = load i32*, i32** %linecount.addr, align 8
  %245 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %243, i32 0, i32* %244, i16 zeroext %245)
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call503 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %246)
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call504 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %247)
  %248 = load i32*, i32** %linecount.addr, align 8
  %249 = load i32, i32* %248, align 4
  %add505 = add nsw i32 %249, 1
  store i32 %add505, i32* %248, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.then.497, %lor.end
  %250 = load i32, i32* %braces_needed, align 4
  %tobool507 = icmp ne i32 %250, 0
  br i1 %tobool507, label %if.then.508, label %if.end.510

if.then.508:                                      ; preds = %if.end.506
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call509 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %251)
  br label %if.end.510

if.end.510:                                       ; preds = %if.then.508, %if.end.506
  %252 = load %union.rec*, %union.rec** %x.addr, align 8
  %253 = load i32*, i32** %linecount.addr, align 8
  %254 = load i16, i16* %fnum.addr, align 2
  %255 = load %union.rec*, %union.rec** %env, align 8
  call void @WriteClosure(%union.rec* %252, i32* %253, i16 zeroext %254, %union.rec* %255)
  %256 = load i32, i32* %braces_needed, align 4
  %tobool511 = icmp ne i32 %256, 0
  br i1 %tobool511, label %if.then.512, label %if.end.514

if.then.512:                                      ; preds = %if.end.510
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call513 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %257)
  br label %if.end.514

if.end.514:                                       ; preds = %if.then.512, %if.end.510
  br label %sw.epilog

sw.bb.515:                                        ; preds = %entry, %entry
  %258 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1516 = bitcast %union.rec* %258 to %struct.word_type*
  %olist517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1516, i32 0, i32 0
  %arrayidx518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist517, i32 0, i64 0
  %osucc519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx518, i32 0, i32 1
  %259 = load %union.rec*, %union.rec** %osucc519, align 8
  %os1520 = bitcast %union.rec* %259 to %struct.word_type*
  %olist521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist521, i32 0, i64 1
  %opred523 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx522, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %opred523, align 8
  store %union.rec* %260, %union.rec** %y, align 8
  br label %for.cond.524

for.cond.524:                                     ; preds = %for.inc.533, %sw.bb.515
  %261 = load %union.rec*, %union.rec** %y, align 8
  %os1525 = bitcast %union.rec* %261 to %struct.word_type*
  %ou1526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 1
  %os11527 = bitcast %union.FIRST_UNION* %ou1526 to %struct.anon*
  %otype528 = getelementptr inbounds %struct.anon, %struct.anon* %os11527, i32 0, i32 0
  %262 = load i8, i8* %otype528, align 1
  %conv529 = zext i8 %262 to i32
  %cmp530 = icmp eq i32 %conv529, 0
  br i1 %cmp530, label %for.body.532, label %for.end.538

for.body.532:                                     ; preds = %for.cond.524
  br label %for.inc.533

for.inc.533:                                      ; preds = %for.body.532
  %263 = load %union.rec*, %union.rec** %y, align 8
  %os1534 = bitcast %union.rec* %263 to %struct.word_type*
  %olist535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1534, i32 0, i32 0
  %arrayidx536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist535, i32 0, i64 1
  %opred537 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx536, i32 0, i32 0
  %264 = load %union.rec*, %union.rec** %opred537, align 8
  store %union.rec* %264, %union.rec** %y, align 8
  br label %for.cond.524

for.end.538:                                      ; preds = %for.cond.524
  %265 = load %union.rec*, %union.rec** %y, align 8
  %os1539 = bitcast %union.rec* %265 to %struct.word_type*
  %ou1540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 1
  %os11541 = bitcast %union.FIRST_UNION* %ou1540 to %struct.anon*
  %otype542 = getelementptr inbounds %struct.anon, %struct.anon* %os11541, i32 0, i32 0
  %266 = load i8, i8* %otype542, align 1
  %conv543 = zext i8 %266 to i32
  %cmp544 = icmp eq i32 %conv543, 2
  br i1 %cmp544, label %if.end.548, label %if.then.546

if.then.546:                                      ; preds = %for.end.538
  %267 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call547 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %267, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.546, %for.end.538
  %268 = load i32, i32* %outer_prec.addr, align 4
  %cmp549 = icmp sle i32 100, %268
  br i1 %cmp549, label %if.then.551, label %if.end.553

if.then.551:                                      ; preds = %if.end.548
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call552 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %269)
  br label %if.end.553

if.end.553:                                       ; preds = %if.then.551, %if.end.548
  %270 = load %union.rec*, %union.rec** %y, align 8
  %os2554 = bitcast %union.rec* %270 to %struct.closure_type*
  %oactual555 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2554, i32 0, i32 5
  %271 = load %union.rec*, %union.rec** %oactual555, align 8
  %call556 = call i32 @need_lvis(%union.rec* %271)
  %tobool557 = icmp ne i32 %call556, 0
  br i1 %tobool557, label %if.then.558, label %if.end.561

if.then.558:                                      ; preds = %if.end.553
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call559 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %272)
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call560 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %273)
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.558, %if.end.553
  %274 = load %union.rec*, %union.rec** %y, align 8
  %os2562 = bitcast %union.rec* %274 to %struct.closure_type*
  %oactual563 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2562, i32 0, i32 5
  %275 = load %union.rec*, %union.rec** %oactual563, align 8
  %call564 = call i8* @SymName(%union.rec* %275)
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call565 = call i32 @fputs(i8* %call564, %struct._IO_FILE* %276)
  %277 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1566 = bitcast %union.rec* %277 to %struct.word_type*
  %ou1567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1566, i32 0, i32 1
  %os11568 = bitcast %union.FIRST_UNION* %ou1567 to %struct.anon*
  %otype569 = getelementptr inbounds %struct.anon, %struct.anon* %os11568, i32 0, i32 0
  %278 = load i8, i8* %otype569, align 1
  %conv570 = zext i8 %278 to i32
  %cmp571 = icmp eq i32 %conv570, 6
  %cond573 = select i1 %cmp571, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call574 = call i32 @fputs(i8* %cond573, %struct._IO_FILE* %279)
  %280 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1575 = bitcast %union.rec* %280 to %struct.word_type*
  %olist576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1575, i32 0, i32 0
  %arrayidx577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist576, i32 0, i64 0
  %opred578 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx577, i32 0, i32 0
  %281 = load %union.rec*, %union.rec** %opred578, align 8
  %os1579 = bitcast %union.rec* %281 to %struct.word_type*
  %olist580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1579, i32 0, i32 0
  %arrayidx581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist580, i32 0, i64 1
  %opred582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx581, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %opred582, align 8
  store %union.rec* %282, %union.rec** %y, align 8
  br label %for.cond.583

for.cond.583:                                     ; preds = %for.inc.592, %if.end.561
  %283 = load %union.rec*, %union.rec** %y, align 8
  %os1584 = bitcast %union.rec* %283 to %struct.word_type*
  %ou1585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1584, i32 0, i32 1
  %os11586 = bitcast %union.FIRST_UNION* %ou1585 to %struct.anon*
  %otype587 = getelementptr inbounds %struct.anon, %struct.anon* %os11586, i32 0, i32 0
  %284 = load i8, i8* %otype587, align 1
  %conv588 = zext i8 %284 to i32
  %cmp589 = icmp eq i32 %conv588, 0
  br i1 %cmp589, label %for.body.591, label %for.end.597

for.body.591:                                     ; preds = %for.cond.583
  br label %for.inc.592

for.inc.592:                                      ; preds = %for.body.591
  %285 = load %union.rec*, %union.rec** %y, align 8
  %os1593 = bitcast %union.rec* %285 to %struct.word_type*
  %olist594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1593, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist594, i32 0, i64 1
  %opred596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx595, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %opred596, align 8
  store %union.rec* %286, %union.rec** %y, align 8
  br label %for.cond.583

for.end.597:                                      ; preds = %for.cond.583
  %287 = load %union.rec*, %union.rec** %y, align 8
  %288 = load i32*, i32** %linecount.addr, align 8
  %289 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %287, i32 105, i32* %288, i16 zeroext %289)
  %290 = load i32, i32* %outer_prec.addr, align 4
  %cmp598 = icmp sle i32 100, %290
  br i1 %cmp598, label %if.then.600, label %if.end.602

if.then.600:                                      ; preds = %for.end.597
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call601 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %291)
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.600, %for.end.597
  br label %sw.epilog

sw.bb.603:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.604:                                        ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.605:                                        ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.606:                                        ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.607:                                        ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.608:                                        ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.609:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.610:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.611:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.612:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.613:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.614:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.615:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.616:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.617:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.618:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.619:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.620:                                        ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.621:                                        ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.622:                                        ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.623:                                        ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.624:                                        ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.625:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.626:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.627:                                        ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.628:                                        ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.629:                                        ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.630:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.631:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.632:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.633:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.634:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.635:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.636:                                        ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.637:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.638:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.639:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.640:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.641:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.642:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.643:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.644:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.645:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.646:                                        ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.647:                                        ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.648:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.649:                                        ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.650:                                        ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.651:                                        ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.652:                                        ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.653:                                        ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.654:                                        ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.655:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.656:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.657:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.658:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.659:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.660:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.661:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.662:                                        ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.663:                                        ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.664:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.665:                                        ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.666:                                        ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.667:                                        ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.668:                                        ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.669:                                        ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8** %name, align 8
  br label %SETC

sw.bb.670:                                        ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8** %name, align 8
  br label %SETC

SETC:                                             ; preds = %sw.bb.670, %sw.bb.669, %sw.bb.668, %sw.bb.667, %sw.bb.666, %sw.bb.665, %sw.bb.664, %sw.bb.663, %sw.bb.662, %sw.bb.661, %sw.bb.660, %sw.bb.659, %sw.bb.658, %sw.bb.657, %sw.bb.656, %sw.bb.655, %sw.bb.654, %sw.bb.653, %sw.bb.652, %sw.bb.651, %sw.bb.650, %sw.bb.649, %sw.bb.648, %sw.bb.647, %sw.bb.646, %sw.bb.645, %sw.bb.644, %sw.bb.643, %sw.bb.642, %sw.bb.641, %sw.bb.640, %sw.bb.639, %sw.bb.638, %sw.bb.637, %sw.bb.636, %sw.bb.635, %sw.bb.634, %sw.bb.633, %sw.bb.632, %sw.bb.631, %sw.bb.630, %sw.bb.629, %sw.bb.628, %sw.bb.627, %sw.bb.626, %sw.bb.625, %sw.bb.624, %sw.bb.623, %sw.bb.622, %sw.bb.621, %sw.bb.620, %sw.bb.619, %sw.bb.618, %sw.bb.617, %sw.bb.616, %sw.bb.615, %sw.bb.614, %sw.bb.613, %sw.bb.612, %sw.bb.611, %sw.bb.610, %sw.bb.609, %sw.bb.608, %sw.bb.607, %sw.bb.606, %sw.bb.605, %sw.bb.604, %sw.bb.603
  %292 = load i32, i32* %outer_prec.addr, align 4
  %cmp671 = icmp sle i32 100, %292
  br i1 %cmp671, label %if.then.673, label %if.end.675

if.then.673:                                      ; preds = %SETC
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call674 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %293)
  br label %if.end.675

if.end.675:                                       ; preds = %if.then.673, %SETC
  %294 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1676 = bitcast %union.rec* %294 to %struct.word_type*
  %olist677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1676, i32 0, i32 0
  %arrayidx678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist677, i32 0, i64 0
  %osucc679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx678, i32 0, i32 1
  %295 = load %union.rec*, %union.rec** %osucc679, align 8
  %296 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1680 = bitcast %union.rec* %296 to %struct.word_type*
  %olist681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1680, i32 0, i32 0
  %arrayidx682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist681, i32 0, i64 0
  %opred683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx682, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %opred683, align 8
  %cmp684 = icmp ne %union.rec* %295, %297
  br i1 %cmp684, label %if.then.686, label %if.end.711

if.then.686:                                      ; preds = %if.end.675
  %298 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1687 = bitcast %union.rec* %298 to %struct.word_type*
  %olist688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1687, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist688, i32 0, i64 0
  %osucc690 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx689, i32 0, i32 1
  %299 = load %union.rec*, %union.rec** %osucc690, align 8
  %os1691 = bitcast %union.rec* %299 to %struct.word_type*
  %olist692 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1691, i32 0, i32 0
  %arrayidx693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist692, i32 0, i64 1
  %opred694 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx693, i32 0, i32 0
  %300 = load %union.rec*, %union.rec** %opred694, align 8
  store %union.rec* %300, %union.rec** %y, align 8
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.704, %if.then.686
  %301 = load %union.rec*, %union.rec** %y, align 8
  %os1696 = bitcast %union.rec* %301 to %struct.word_type*
  %ou1697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1696, i32 0, i32 1
  %os11698 = bitcast %union.FIRST_UNION* %ou1697 to %struct.anon*
  %otype699 = getelementptr inbounds %struct.anon, %struct.anon* %os11698, i32 0, i32 0
  %302 = load i8, i8* %otype699, align 1
  %conv700 = zext i8 %302 to i32
  %cmp701 = icmp eq i32 %conv700, 0
  br i1 %cmp701, label %for.body.703, label %for.end.709

for.body.703:                                     ; preds = %for.cond.695
  br label %for.inc.704

for.inc.704:                                      ; preds = %for.body.703
  %303 = load %union.rec*, %union.rec** %y, align 8
  %os1705 = bitcast %union.rec* %303 to %struct.word_type*
  %olist706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 0
  %arrayidx707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist706, i32 0, i64 1
  %opred708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx707, i32 0, i32 0
  %304 = load %union.rec*, %union.rec** %opred708, align 8
  store %union.rec* %304, %union.rec** %y, align 8
  br label %for.cond.695

for.end.709:                                      ; preds = %for.cond.695
  %305 = load %union.rec*, %union.rec** %y, align 8
  %306 = load i32*, i32** %linecount.addr, align 8
  %307 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %305, i32 100, i32* %306, i16 zeroext %307)
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call710 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %308)
  br label %if.end.711

if.end.711:                                       ; preds = %for.end.709, %if.end.675
  %309 = load i8*, i8** %name, align 8
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call712 = call i32 @fputs(i8* %309, %struct._IO_FILE* %310)
  %311 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1713 = bitcast %union.rec* %311 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 0
  %opred716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 0
  %312 = load %union.rec*, %union.rec** %opred716, align 8
  %313 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp717 = icmp ne %union.rec* %312, %313
  br i1 %cmp717, label %if.then.719, label %if.end.756

if.then.719:                                      ; preds = %if.end.711
  %314 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1720 = bitcast %union.rec* %314 to %struct.word_type*
  %olist721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1720, i32 0, i32 0
  %arrayidx722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist721, i32 0, i64 0
  %opred723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx722, i32 0, i32 0
  %315 = load %union.rec*, %union.rec** %opred723, align 8
  %os1724 = bitcast %union.rec* %315 to %struct.word_type*
  %olist725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1724, i32 0, i32 0
  %arrayidx726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist725, i32 0, i64 1
  %opred727 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx726, i32 0, i32 0
  %316 = load %union.rec*, %union.rec** %opred727, align 8
  store %union.rec* %316, %union.rec** %y, align 8
  br label %for.cond.728

for.cond.728:                                     ; preds = %for.inc.737, %if.then.719
  %317 = load %union.rec*, %union.rec** %y, align 8
  %os1729 = bitcast %union.rec* %317 to %struct.word_type*
  %ou1730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1729, i32 0, i32 1
  %os11731 = bitcast %union.FIRST_UNION* %ou1730 to %struct.anon*
  %otype732 = getelementptr inbounds %struct.anon, %struct.anon* %os11731, i32 0, i32 0
  %318 = load i8, i8* %otype732, align 1
  %conv733 = zext i8 %318 to i32
  %cmp734 = icmp eq i32 %conv733, 0
  br i1 %cmp734, label %for.body.736, label %for.end.742

for.body.736:                                     ; preds = %for.cond.728
  br label %for.inc.737

for.inc.737:                                      ; preds = %for.body.736
  %319 = load %union.rec*, %union.rec** %y, align 8
  %os1738 = bitcast %union.rec* %319 to %struct.word_type*
  %olist739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1738, i32 0, i32 0
  %arrayidx740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist739, i32 0, i64 1
  %opred741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx740, i32 0, i32 0
  %320 = load %union.rec*, %union.rec** %opred741, align 8
  store %union.rec* %320, %union.rec** %y, align 8
  br label %for.cond.728

for.end.742:                                      ; preds = %for.cond.728
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call743 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %321)
  %322 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1744 = bitcast %union.rec* %322 to %struct.word_type*
  %ou1745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1744, i32 0, i32 1
  %os11746 = bitcast %union.FIRST_UNION* %ou1745 to %struct.anon*
  %otype747 = getelementptr inbounds %struct.anon, %struct.anon* %os11746, i32 0, i32 0
  %323 = load i8, i8* %otype747, align 1
  %conv748 = zext i8 %323 to i32
  %cmp749 = icmp eq i32 %conv748, 92
  br i1 %cmp749, label %if.then.751, label %if.else.754

if.then.751:                                      ; preds = %for.end.742
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call752 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %324)
  %325 = load %union.rec*, %union.rec** %y, align 8
  %326 = load i32*, i32** %linecount.addr, align 8
  %327 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %325, i32 0, i32* %326, i16 zeroext %327)
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call753 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %328)
  br label %if.end.755

if.else.754:                                      ; preds = %for.end.742
  %329 = load %union.rec*, %union.rec** %y, align 8
  %330 = load i32*, i32** %linecount.addr, align 8
  %331 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %329, i32 100, i32* %330, i16 zeroext %331)
  br label %if.end.755

if.end.755:                                       ; preds = %if.else.754, %if.then.751
  br label %if.end.756

if.end.756:                                       ; preds = %if.end.755, %if.end.711
  %332 = load i32, i32* %outer_prec.addr, align 4
  %cmp757 = icmp sle i32 100, %332
  br i1 %cmp757, label %if.then.759, label %if.end.761

if.then.759:                                      ; preds = %if.end.756
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call760 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %333)
  br label %if.end.761

if.end.761:                                       ; preds = %if.then.759, %if.end.756
  br label %sw.epilog

sw.bb.762:                                        ; preds = %entry, %entry
  %334 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1763 = bitcast %union.rec* %334 to %struct.word_type*
  %ou1764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1763, i32 0, i32 1
  %os11765 = bitcast %union.FIRST_UNION* %ou1764 to %struct.anon*
  %otype766 = getelementptr inbounds %struct.anon, %struct.anon* %os11765, i32 0, i32 0
  %335 = load i8, i8* %otype766, align 1
  %conv767 = zext i8 %335 to i32
  %cmp768 = icmp eq i32 %conv767, 53
  %cond770 = select i1 %cmp768, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0)
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call771 = call i32 @fputs(i8* %cond770, %struct._IO_FILE* %336)
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call772 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %337)
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call773 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), %struct._IO_FILE* %338)
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call774 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %339)
  %340 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1775 = bitcast %union.rec* %340 to %struct.word_type*
  %olist776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1775, i32 0, i32 0
  %arrayidx777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist776, i32 0, i64 0
  %osucc778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx777, i32 0, i32 1
  %341 = load %union.rec*, %union.rec** %osucc778, align 8
  %os1779 = bitcast %union.rec* %341 to %struct.word_type*
  %olist780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1779, i32 0, i32 0
  %arrayidx781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist780, i32 0, i64 1
  %opred782 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx781, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %opred782, align 8
  store %union.rec* %342, %union.rec** %y, align 8
  br label %for.cond.783

for.cond.783:                                     ; preds = %for.inc.792, %sw.bb.762
  %343 = load %union.rec*, %union.rec** %y, align 8
  %os1784 = bitcast %union.rec* %343 to %struct.word_type*
  %ou1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 1
  %os11786 = bitcast %union.FIRST_UNION* %ou1785 to %struct.anon*
  %otype787 = getelementptr inbounds %struct.anon, %struct.anon* %os11786, i32 0, i32 0
  %344 = load i8, i8* %otype787, align 1
  %conv788 = zext i8 %344 to i32
  %cmp789 = icmp eq i32 %conv788, 0
  br i1 %cmp789, label %for.body.791, label %for.end.797

for.body.791:                                     ; preds = %for.cond.783
  br label %for.inc.792

for.inc.792:                                      ; preds = %for.body.791
  %345 = load %union.rec*, %union.rec** %y, align 8
  %os1793 = bitcast %union.rec* %345 to %struct.word_type*
  %olist794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1793, i32 0, i32 0
  %arrayidx795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist794, i32 0, i64 1
  %opred796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx795, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %opred796, align 8
  store %union.rec* %346, %union.rec** %y, align 8
  br label %for.cond.783

for.end.797:                                      ; preds = %for.cond.783
  %347 = load %union.rec*, %union.rec** %y, align 8
  %os1798 = bitcast %union.rec* %347 to %struct.word_type*
  %ou1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1798, i32 0, i32 1
  %os11800 = bitcast %union.FIRST_UNION* %ou1799 to %struct.anon*
  %otype801 = getelementptr inbounds %struct.anon, %struct.anon* %os11800, i32 0, i32 0
  %348 = load i8, i8* %otype801, align 1
  %conv802 = zext i8 %348 to i32
  %cmp803 = icmp eq i32 %conv802, 11
  br i1 %cmp803, label %if.then.805, label %if.else.811

if.then.805:                                      ; preds = %for.end.797
  %349 = load %union.rec*, %union.rec** %y, align 8
  %os1806 = bitcast %union.rec* %349 to %struct.word_type*
  %ostring807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1806, i32 0, i32 4
  %arraydecay808 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring807, i32 0, i32 0
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call809 = call i32 @fputs(i8* %arraydecay808, %struct._IO_FILE* %350)
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call810 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %351)
  br label %if.end.880

if.else.811:                                      ; preds = %for.end.797
  %352 = load %union.rec*, %union.rec** %y, align 8
  %os1812 = bitcast %union.rec* %352 to %struct.word_type*
  %ou1813 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1812, i32 0, i32 1
  %os11814 = bitcast %union.FIRST_UNION* %ou1813 to %struct.anon*
  %otype815 = getelementptr inbounds %struct.anon, %struct.anon* %os11814, i32 0, i32 0
  %353 = load i8, i8* %otype815, align 1
  %conv816 = zext i8 %353 to i32
  %cmp817 = icmp eq i32 %conv816, 19
  br i1 %cmp817, label %if.end.821, label %if.then.819

if.then.819:                                      ; preds = %if.else.811
  %354 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call820 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %354, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.101, i32 0, i32 0))
  br label %if.end.821

if.end.821:                                       ; preds = %if.then.819, %if.else.811
  %355 = load %union.rec*, %union.rec** %y, align 8
  %os1822 = bitcast %union.rec* %355 to %struct.word_type*
  %olist823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1822, i32 0, i32 0
  %arrayidx824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist823, i32 0, i64 0
  %osucc825 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx824, i32 0, i32 1
  %356 = load %union.rec*, %union.rec** %osucc825, align 8
  store %union.rec* %356, %union.rec** %link, align 8
  br label %for.cond.826

for.cond.826:                                     ; preds = %for.inc.874, %if.end.821
  %357 = load %union.rec*, %union.rec** %link, align 8
  %358 = load %union.rec*, %union.rec** %y, align 8
  %cmp827 = icmp ne %union.rec* %357, %358
  br i1 %cmp827, label %for.body.829, label %for.end.879

for.body.829:                                     ; preds = %for.cond.826
  %359 = load %union.rec*, %union.rec** %link, align 8
  %os1830 = bitcast %union.rec* %359 to %struct.word_type*
  %olist831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1830, i32 0, i32 0
  %arrayidx832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist831, i32 0, i64 1
  %opred833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx832, i32 0, i32 0
  %360 = load %union.rec*, %union.rec** %opred833, align 8
  store %union.rec* %360, %union.rec** %z, align 8
  br label %for.cond.834

for.cond.834:                                     ; preds = %for.inc.843, %for.body.829
  %361 = load %union.rec*, %union.rec** %z, align 8
  %os1835 = bitcast %union.rec* %361 to %struct.word_type*
  %ou1836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1835, i32 0, i32 1
  %os11837 = bitcast %union.FIRST_UNION* %ou1836 to %struct.anon*
  %otype838 = getelementptr inbounds %struct.anon, %struct.anon* %os11837, i32 0, i32 0
  %362 = load i8, i8* %otype838, align 1
  %conv839 = zext i8 %362 to i32
  %cmp840 = icmp eq i32 %conv839, 0
  br i1 %cmp840, label %for.body.842, label %for.end.848

for.body.842:                                     ; preds = %for.cond.834
  br label %for.inc.843

for.inc.843:                                      ; preds = %for.body.842
  %363 = load %union.rec*, %union.rec** %z, align 8
  %os1844 = bitcast %union.rec* %363 to %struct.word_type*
  %olist845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1844, i32 0, i32 0
  %arrayidx846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist845, i32 0, i64 1
  %opred847 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx846, i32 0, i32 0
  %364 = load %union.rec*, %union.rec** %opred847, align 8
  store %union.rec* %364, %union.rec** %z, align 8
  br label %for.cond.834

for.end.848:                                      ; preds = %for.cond.834
  %365 = load %union.rec*, %union.rec** %z, align 8
  %os1849 = bitcast %union.rec* %365 to %struct.word_type*
  %ou1850 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1849, i32 0, i32 1
  %os11851 = bitcast %union.FIRST_UNION* %ou1850 to %struct.anon*
  %otype852 = getelementptr inbounds %struct.anon, %struct.anon* %os11851, i32 0, i32 0
  %366 = load i8, i8* %otype852, align 1
  %conv853 = zext i8 %366 to i32
  %cmp854 = icmp eq i32 %conv853, 1
  br i1 %cmp854, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %for.end.848
  br label %for.inc.874

if.end.857:                                       ; preds = %for.end.848
  %367 = load %union.rec*, %union.rec** %z, align 8
  %os1858 = bitcast %union.rec* %367 to %struct.word_type*
  %ou1859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1858, i32 0, i32 1
  %os11860 = bitcast %union.FIRST_UNION* %ou1859 to %struct.anon*
  %otype861 = getelementptr inbounds %struct.anon, %struct.anon* %os11860, i32 0, i32 0
  %368 = load i8, i8* %otype861, align 1
  %conv862 = zext i8 %368 to i32
  %cmp863 = icmp eq i32 %conv862, 11
  br i1 %cmp863, label %if.end.867, label %if.then.865

if.then.865:                                      ; preds = %if.end.857
  %369 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call866 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %369, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.102, i32 0, i32 0))
  br label %if.end.867

if.end.867:                                       ; preds = %if.then.865, %if.end.857
  %370 = load %union.rec*, %union.rec** %z, align 8
  %os1868 = bitcast %union.rec* %370 to %struct.word_type*
  %ostring869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1868, i32 0, i32 4
  %arraydecay870 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring869, i32 0, i32 0
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call871 = call i32 @fputs(i8* %arraydecay870, %struct._IO_FILE* %371)
  %372 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call872 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %372)
  %373 = load i32*, i32** %linecount.addr, align 8
  %374 = load i32, i32* %373, align 4
  %add873 = add nsw i32 %374, 1
  store i32 %add873, i32* %373, align 4
  br label %for.inc.874

for.inc.874:                                      ; preds = %if.end.867, %if.then.856
  %375 = load %union.rec*, %union.rec** %link, align 8
  %os1875 = bitcast %union.rec* %375 to %struct.word_type*
  %olist876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1875, i32 0, i32 0
  %arrayidx877 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist876, i32 0, i64 0
  %osucc878 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx877, i32 0, i32 1
  %376 = load %union.rec*, %union.rec** %osucc878, align 8
  store %union.rec* %376, %union.rec** %link, align 8
  br label %for.cond.826

for.end.879:                                      ; preds = %for.cond.826
  br label %if.end.880

if.end.880:                                       ; preds = %for.end.879, %if.then.805
  %377 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call881 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), %struct._IO_FILE* %377)
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call882 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %378)
  %379 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1883 = bitcast %union.rec* %379 to %struct.word_type*
  %ou1884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1883, i32 0, i32 1
  %os11885 = bitcast %union.FIRST_UNION* %ou1884 to %struct.anon*
  %otype886 = getelementptr inbounds %struct.anon, %struct.anon* %os11885, i32 0, i32 0
  %380 = load i8, i8* %otype886, align 1
  %conv887 = zext i8 %380 to i32
  %cmp888 = icmp eq i32 %conv887, 53
  %cond890 = select i1 %cmp888, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0)
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call891 = call i32 @fputs(i8* %cond890, %struct._IO_FILE* %381)
  br label %sw.epilog

sw.bb.892:                                        ; preds = %entry
  %382 = load %union.rec*, %union.rec** %x.addr, align 8
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %384 = load i32*, i32** %linecount.addr, align 8
  call void @FilterWrite(%union.rec* %382, %struct._IO_FILE* %383, i32* %384)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %385 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %386 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1893 = bitcast %union.rec* %386 to %struct.word_type*
  %ou1894 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1893, i32 0, i32 1
  %os11895 = bitcast %union.FIRST_UNION* %ou1894 to %struct.anon*
  %otype896 = getelementptr inbounds %struct.anon, %struct.anon* %os11895, i32 0, i32 0
  %387 = load i8, i8* %otype896, align 1
  %conv897 = zext i8 %387 to i32
  %call898 = call i8* @Image(i32 %conv897)
  %call899 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i32 0, %struct.FILE_POS* %385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i8* %call898)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.892, %if.end.880, %if.end.761, %if.end.602, %if.end.514, %if.end.425, %if.end.262, %sw.bb.12, %if.end
  ret void
}

declare void @FileSetUpdated(i16 zeroext, i32) #1

; Function Attrs: nounwind uwtable
define void @CloseFiles() #0 {
entry:
  %fnum = alloca i16, align 2
  %oldname = alloca [512 x i8], align 16
  %newname = alloca [512 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %0 = load i16, i16* @last_write_fnum, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call zeroext i16 @FirstFile(i32 0)
  store i16 %call2, i16* %fnum, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i16, i16* %fnum, align 2
  %conv3 = zext i16 %2 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %3 = load i16, i16* %fnum, align 2
  %call6 = call i8* @FileName(i16 zeroext %3)
  %call7 = call i8* @strcpy(i8* %arraydecay, i8* %call6) #5
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %call9 = call i8* @strcat(i8* %arraydecay8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #5
  %arraydecay10 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %call11 = call i32 @remove(i8* %arraydecay10) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i16, i16* %fnum, align 2
  %call12 = call zeroext i16 @NextFile(i16 zeroext %4)
  store i16 %call12, i16* %fnum, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call13 = call zeroext i16 @FirstFile(i32 3)
  store i16 %call13, i16* %fnum, align 2
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.49, %for.end
  %5 = load i16, i16* %fnum, align 2
  %conv15 = zext i16 %5 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %for.body.18, label %for.end.51

for.body.18:                                      ; preds = %for.cond.14
  %6 = load i16, i16* %fnum, align 2
  %call19 = call i32 @FileTestUpdated(i16 zeroext %6)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.end.48

if.then.20:                                       ; preds = %for.body.18
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %7 = load i16, i16* %fnum, align 2
  %call22 = call i8* @FileName(i16 zeroext %7)
  %call23 = call i8* @strcpy(i8* %arraydecay21, i8* %call22) #5
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %call26 = call i8* @strcpy(i8* %arraydecay24, i8* %arraydecay25) #5
  %arraydecay27 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %call28 = call i8* @strcat(i8* %arraydecay27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  %arraydecay29 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %call30 = call %struct._IO_FILE* @fopen(i8* %arraydecay29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call30, %struct._IO_FILE** %fp, align 8
  %cmp31 = icmp ne %struct._IO_FILE* %call30, null
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.then.20
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %8)
  %arraydecay35 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %call36 = call i32 @remove(i8* %arraydecay35) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.then.20
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %arraydecay39 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %call40 = call i32 @rename(i8* %arraydecay38, i8* %arraydecay39) #5
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.37
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %arraydecay44 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %arraydecay45 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %call46 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, i8* %arraydecay44, i8* %arraydecay45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body.18
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %10 = load i16, i16* %fnum, align 2
  %call50 = call zeroext i16 @NextFile(i16 zeroext %10)
  store i16 %call50, i16* %fnum, align 2
  br label %for.cond.14

for.end.51:                                       ; preds = %for.cond.14
  ret void
}

declare zeroext i16 @FirstFile(i32) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #3

declare zeroext i16 @NextFile(i16 zeroext) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

declare i8* @StringQuotedWord(%union.rec*) #1

declare i8* @EchoCatOp(i32, i32, i32) #1

declare i32 @EnvWriteRetrieve(%union.rec*, i16 zeroext, i32*, i32*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @EnvWriteInsert(%union.rec*, i16 zeroext, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @WriteClosure(%union.rec* %x, i32* %linecount, i16 zeroext %fnum, %union.rec* %env) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %linecount.addr = alloca i32*, align 8
  %fnum.addr = alloca i16, align 2
  %env.addr = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %npar_written = alloca i32, align 4
  %name_printed = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32* %linecount, i32** %linecount.addr, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store %union.rec* %env, %union.rec** %env.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %0 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %1 = load %union.rec*, %union.rec** %oactual, align 8
  store %union.rec* %1, %union.rec** %sym, align 8
  %2 = load %union.rec*, %union.rec** %sym, align 8
  %os6 = bitcast %union.rec* %2 to %struct.symbol_type*
  %ouse_invocation = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 11
  %3 = load %union.rec*, %union.rec** %ouse_invocation, align 8
  %cmp = icmp ne %union.rec* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %union.rec*, %union.rec** %sym, align 8
  %call2 = call i8* @SymName(%union.rec* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call3 = call i32 @fputs(i8* %call2, %struct._IO_FILE* %7)
  br label %if.end.250

if.else:                                          ; preds = %entry
  store i32 0, i32* %npar_written, align 4
  store i32 0, i32* %name_printed, align 4
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %9 = load %union.rec*, %union.rec** %env.addr, align 8
  call void @OptimizeParameterList(%union.rec* %8, %union.rec* %9)
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %10 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %11, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.233, %if.else
  %12 = load %union.rec*, %union.rec** %link, align 8
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp4 = icmp ne %union.rec* %12, %13
  br i1 %cmp4, label %for.body, label %for.end.238

for.body:                                         ; preds = %for.cond
  %14 = load %union.rec*, %union.rec** %link, align 8
  %os15 = bitcast %union.rec* %14 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %15, %union.rec** %y, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %16 = load %union.rec*, %union.rec** %y, align 8
  %os19 = bitcast %union.rec* %16 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %17 = load i8, i8* %otype, align 1
  %conv = zext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os113 = bitcast %union.rec* %18 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 1
  %opred16 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred16, align 8
  store %union.rec* %19, %union.rec** %y, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %20 = load %union.rec*, %union.rec** %y, align 8
  %os117 = bitcast %union.rec* %20 to %struct.word_type*
  %ou118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 1
  %os1119 = bitcast %union.FIRST_UNION* %ou118 to %struct.anon*
  %otype20 = getelementptr inbounds %struct.anon, %struct.anon* %os1119, i32 0, i32 0
  %21 = load i8, i8* %otype20, align 1
  %conv21 = zext i8 %21 to i32
  %cmp22 = icmp eq i32 %conv21, 10
  br i1 %cmp22, label %if.then.24, label %if.end.232

if.then.24:                                       ; preds = %for.end
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os225 = bitcast %union.rec* %22 to %struct.closure_type*
  %oactual26 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os225, i32 0, i32 5
  %23 = load %union.rec*, %union.rec** %oactual26, align 8
  %os127 = bitcast %union.rec* %23 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %os1129 = bitcast %union.FIRST_UNION* %ou128 to %struct.anon*
  %otype30 = getelementptr inbounds %struct.anon, %struct.anon* %os1129, i32 0, i32 0
  %24 = load i8, i8* %otype30, align 1
  %conv31 = zext i8 %24 to i32
  switch i32 %conv31, label %sw.default [
    i32 144, label %sw.bb
    i32 145, label %sw.bb.66
    i32 146, label %sw.bb.134
  ]

sw.bb:                                            ; preds = %if.then.24
  %25 = load %union.rec*, %union.rec** %y, align 8
  %os132 = bitcast %union.rec* %25 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 0
  %osucc35 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc35, align 8
  %27 = load %union.rec*, %union.rec** %y, align 8
  %cmp36 = icmp ne %union.rec* %26, %27
  br i1 %cmp36, label %if.end, label %if.then.38

if.then.38:                                       ; preds = %sw.bb
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call39 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.38, %sw.bb
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os140 = bitcast %union.rec* %29 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 0
  %osucc43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %osucc43, align 8
  %os144 = bitcast %union.rec* %30 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 1
  %opred47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred47, align 8
  store %union.rec* %31, %union.rec** %z, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %if.end
  %32 = load %union.rec*, %union.rec** %z, align 8
  %os149 = bitcast %union.rec* %32 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %os1151 = bitcast %union.FIRST_UNION* %ou150 to %struct.anon*
  %otype52 = getelementptr inbounds %struct.anon, %struct.anon* %os1151, i32 0, i32 0
  %33 = load i8, i8* %otype52, align 1
  %conv53 = zext i8 %33 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %for.body.56, label %for.end.62

for.body.56:                                      ; preds = %for.cond.48
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.56
  %34 = load %union.rec*, %union.rec** %z, align 8
  %os158 = bitcast %union.rec* %34 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %35, %union.rec** %z, align 8
  br label %for.cond.48

for.end.62:                                       ; preds = %for.cond.48
  %36 = load %union.rec*, %union.rec** %z, align 8
  %37 = load %union.rec*, %union.rec** %sym, align 8
  %os163 = bitcast %union.rec* %37 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %oprecedence = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 0
  %38 = load i8, i8* %oprecedence, align 1
  %conv64 = zext i8 %38 to i32
  %39 = load i32*, i32** %linecount.addr, align 8
  %40 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %36, i32 %conv64, i32* %39, i16 zeroext %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call65 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %41)
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.then.24
  %42 = load %union.rec*, %union.rec** %y, align 8
  %os167 = bitcast %union.rec* %42 to %struct.word_type*
  %olist68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist68, i32 0, i64 0
  %osucc70 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx69, i32 0, i32 1
  %43 = load %union.rec*, %union.rec** %osucc70, align 8
  %44 = load %union.rec*, %union.rec** %y, align 8
  %cmp71 = icmp ne %union.rec* %43, %44
  br i1 %cmp71, label %if.end.75, label %if.then.73

if.then.73:                                       ; preds = %sw.bb.66
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call74 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i32 0, i32 0))
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %sw.bb.66
  %46 = load %union.rec*, %union.rec** %y, align 8
  %os176 = bitcast %union.rec* %46 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 0
  %osucc79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 1
  %47 = load %union.rec*, %union.rec** %osucc79, align 8
  %os180 = bitcast %union.rec* %47 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 1
  %opred83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred83, align 8
  store %union.rec* %48, %union.rec** %z, align 8
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.93, %if.end.75
  %49 = load %union.rec*, %union.rec** %z, align 8
  %os185 = bitcast %union.rec* %49 to %struct.word_type*
  %ou186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 1
  %os1187 = bitcast %union.FIRST_UNION* %ou186 to %struct.anon*
  %otype88 = getelementptr inbounds %struct.anon, %struct.anon* %os1187, i32 0, i32 0
  %50 = load i8, i8* %otype88, align 1
  %conv89 = zext i8 %50 to i32
  %cmp90 = icmp eq i32 %conv89, 0
  br i1 %cmp90, label %for.body.92, label %for.end.98

for.body.92:                                      ; preds = %for.cond.84
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.92
  %51 = load %union.rec*, %union.rec** %z, align 8
  %os194 = bitcast %union.rec* %51 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 1
  %opred97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred97, align 8
  store %union.rec* %52, %union.rec** %z, align 8
  br label %for.cond.84

for.end.98:                                       ; preds = %for.cond.84
  %53 = load i32, i32* %name_printed, align 4
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %if.end.108, label %if.then.99

if.then.99:                                       ; preds = %for.end.98
  %54 = load %union.rec*, %union.rec** %sym, align 8
  %call100 = call i32 @need_lvis(%union.rec* %54)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.105

if.then.102:                                      ; preds = %if.then.99
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call103 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call104 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %56)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %if.then.99
  %57 = load %union.rec*, %union.rec** %sym, align 8
  %call106 = call i8* @SymName(%union.rec* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call107 = call i32 @fputs(i8* %call106, %struct._IO_FILE* %58)
  store i32 1, i32* %name_printed, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.105, %for.end.98
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call109 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %59)
  %60 = load i32*, i32** %linecount.addr, align 8
  %61 = load i32, i32* %60, align 4
  %add = add nsw i32 %61, 1
  store i32 %add, i32* %60, align 4
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call110 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call111 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %63)
  %64 = load %union.rec*, %union.rec** %y, align 8
  %os2112 = bitcast %union.rec* %64 to %struct.closure_type*
  %oactual113 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2112, i32 0, i32 5
  %65 = load %union.rec*, %union.rec** %oactual113, align 8
  %os6114 = bitcast %union.rec* %65 to %struct.symbol_type*
  %onpar_code = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6114, i32 0, i32 15
  %66 = load i8, i8* %onpar_code, align 1
  %conv115 = zext i8 %66 to i32
  %cmp116 = icmp ne i32 %conv115, 32
  br i1 %cmp116, label %if.then.118, label %if.else.126

if.then.118:                                      ; preds = %if.end.108
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call119 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), %struct._IO_FILE* %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %69 = load %union.rec*, %union.rec** %y, align 8
  %os2120 = bitcast %union.rec* %69 to %struct.closure_type*
  %oactual121 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2120, i32 0, i32 5
  %70 = load %union.rec*, %union.rec** %oactual121, align 8
  %os6122 = bitcast %union.rec* %70 to %struct.symbol_type*
  %onpar_code123 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6122, i32 0, i32 15
  %71 = load i8, i8* %onpar_code123, align 1
  %conv124 = sext i8 %71 to i32
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %conv124)
  br label %if.end.131

if.else.126:                                      ; preds = %if.end.108
  %72 = load %union.rec*, %union.rec** %y, align 8
  %os2127 = bitcast %union.rec* %72 to %struct.closure_type*
  %oactual128 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2127, i32 0, i32 5
  %73 = load %union.rec*, %union.rec** %oactual128, align 8
  %call129 = call i8* @SymName(%union.rec* %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call130 = call i32 @fputs(i8* %call129, %struct._IO_FILE* %74)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.126, %if.then.118
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call132 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %75)
  %76 = load %union.rec*, %union.rec** %z, align 8
  %77 = load i32*, i32** %linecount.addr, align 8
  %78 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %76, i32 0, i32* %77, i16 zeroext %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call133 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %79)
  store i32 1, i32* %npar_written, align 4
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.then.24
  %80 = load %union.rec*, %union.rec** %y, align 8
  %os1135 = bitcast %union.rec* %80 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 0
  %osucc138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %osucc138, align 8
  %82 = load %union.rec*, %union.rec** %y, align 8
  %cmp139 = icmp ne %union.rec* %81, %82
  br i1 %cmp139, label %if.end.143, label %if.then.141

if.then.141:                                      ; preds = %sw.bb.134
  %83 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call142 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %sw.bb.134
  %84 = load %union.rec*, %union.rec** %y, align 8
  %os1144 = bitcast %union.rec* %84 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  %85 = load %union.rec*, %union.rec** %osucc147, align 8
  %os1148 = bitcast %union.rec* %85 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 1
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred151, align 8
  store %union.rec* %86, %union.rec** %z, align 8
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.161, %if.end.143
  %87 = load %union.rec*, %union.rec** %z, align 8
  %os1153 = bitcast %union.rec* %87 to %struct.word_type*
  %ou1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 1
  %os11155 = bitcast %union.FIRST_UNION* %ou1154 to %struct.anon*
  %otype156 = getelementptr inbounds %struct.anon, %struct.anon* %os11155, i32 0, i32 0
  %88 = load i8, i8* %otype156, align 1
  %conv157 = zext i8 %88 to i32
  %cmp158 = icmp eq i32 %conv157, 0
  br i1 %cmp158, label %for.body.160, label %for.end.166

for.body.160:                                     ; preds = %for.cond.152
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.160
  %89 = load %union.rec*, %union.rec** %z, align 8
  %os1162 = bitcast %union.rec* %89 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 1
  %opred165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %opred165, align 8
  store %union.rec* %90, %union.rec** %z, align 8
  br label %for.cond.152

for.end.166:                                      ; preds = %for.cond.152
  %91 = load i32, i32* %name_printed, align 4
  %tobool167 = icmp ne i32 %91, 0
  br i1 %tobool167, label %if.end.177, label %if.then.168

if.then.168:                                      ; preds = %for.end.166
  %92 = load %union.rec*, %union.rec** %sym, align 8
  %call169 = call i32 @need_lvis(%union.rec* %92)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %if.then.168
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call172 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %93)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call173 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %94)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.171, %if.then.168
  %95 = load %union.rec*, %union.rec** %sym, align 8
  %call175 = call i8* @SymName(%union.rec* %95)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call176 = call i32 @fputs(i8* %call175, %struct._IO_FILE* %96)
  store i32 1, i32* %name_printed, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.174, %for.end.166
  %97 = load i32, i32* %npar_written, align 4
  %tobool178 = icmp ne i32 %97, 0
  br i1 %tobool178, label %if.then.179, label %if.else.182

if.then.179:                                      ; preds = %if.end.177
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call180 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %98)
  %99 = load i32*, i32** %linecount.addr, align 8
  %100 = load i32, i32* %99, align 4
  %add181 = add nsw i32 %100, 1
  store i32 %add181, i32* %99, align 4
  br label %if.end.184

if.else.182:                                      ; preds = %if.end.177
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call183 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %101)
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.182, %if.then.179
  %102 = load %union.rec*, %union.rec** %sym, align 8
  %os6185 = bitcast %union.rec* %102 to %struct.symbol_type*
  %ofilter = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6185, i32 0, i32 10
  %103 = load %union.rec*, %union.rec** %ofilter, align 8
  %cmp186 = icmp ne %union.rec* %103, null
  br i1 %cmp186, label %land.lhs.true, label %if.else.206

land.lhs.true:                                    ; preds = %if.end.184
  %104 = load %union.rec*, %union.rec** %z, align 8
  %os1188 = bitcast %union.rec* %104 to %struct.word_type*
  %ou1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1188, i32 0, i32 1
  %os11190 = bitcast %union.FIRST_UNION* %ou1189 to %struct.anon*
  %otype191 = getelementptr inbounds %struct.anon, %struct.anon* %os11190, i32 0, i32 0
  %105 = load i8, i8* %otype191, align 1
  %conv192 = zext i8 %105 to i32
  %cmp193 = icmp eq i32 %conv192, 57
  br i1 %cmp193, label %if.then.195, label %if.else.206

if.then.195:                                      ; preds = %land.lhs.true
  %106 = load %union.rec*, %union.rec** %z, align 8
  %os1196 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 1
  %os11198 = bitcast %union.FIRST_UNION* %ou1197 to %struct.anon*
  %otype199 = getelementptr inbounds %struct.anon, %struct.anon* %os11198, i32 0, i32 0
  %107 = load i8, i8* %otype199, align 1
  %conv200 = zext i8 %107 to i32
  %cmp201 = icmp eq i32 %conv200, 57
  br i1 %cmp201, label %if.end.205, label %if.then.203

if.then.203:                                      ; preds = %if.then.195
  %108 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call204 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.then.195
  %109 = load %union.rec*, %union.rec** %z, align 8
  %110 = load i32*, i32** %linecount.addr, align 8
  %111 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %109, i32 0, i32* %110, i16 zeroext %111)
  br label %if.end.222

if.else.206:                                      ; preds = %land.lhs.true, %if.end.184
  %112 = load %union.rec*, %union.rec** %sym, align 8
  %os1207 = bitcast %union.rec* %112 to %struct.word_type*
  %ou2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2208 to %struct.anon.5*
  %ohas_body = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %113 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load = load i24, i24* %113, align 1
  %bf.lshr = lshr i24 %bf.load, 8
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool209 = icmp ne i32 %bf.cast, 0
  br i1 %tobool209, label %if.then.210, label %if.else.215

if.then.210:                                      ; preds = %if.else.206
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call211 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %114)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call212 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %115)
  %116 = load %union.rec*, %union.rec** %z, align 8
  %117 = load i32*, i32** %linecount.addr, align 8
  %118 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %116, i32 0, i32* %117, i16 zeroext %118)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call213 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %119)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call214 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %120)
  br label %if.end.221

if.else.215:                                      ; preds = %if.else.206
  %121 = load %union.rec*, %union.rec** %z, align 8
  %122 = load %union.rec*, %union.rec** %sym, align 8
  %os1216 = bitcast %union.rec* %122 to %struct.word_type*
  %ou2217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 2
  %os21218 = bitcast %union.SECOND_UNION* %ou2217 to %struct.anon.0*
  %oprecedence219 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21218, i32 0, i32 0
  %123 = load i8, i8* %oprecedence219, align 1
  %conv220 = zext i8 %123 to i32
  %124 = load i32*, i32** %linecount.addr, align 8
  %125 = load i16, i16* %fnum.addr, align 2
  call void @WriteObject(%union.rec* %121, i32 %conv220, i32* %124, i16 zeroext %125)
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.215, %if.then.210
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.205
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.24
  %126 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %127 = load %union.rec*, %union.rec** %y, align 8
  %os2223 = bitcast %union.rec* %127 to %struct.closure_type*
  %oactual224 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2223, i32 0, i32 5
  %128 = load %union.rec*, %union.rec** %oactual224, align 8
  %os1225 = bitcast %union.rec* %128 to %struct.word_type*
  %ou1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1225, i32 0, i32 1
  %os11227 = bitcast %union.FIRST_UNION* %ou1226 to %struct.anon*
  %otype228 = getelementptr inbounds %struct.anon, %struct.anon* %os11227, i32 0, i32 0
  %129 = load i8, i8* %otype228, align 1
  %conv229 = zext i8 %129 to i32
  %call230 = call i8* @Image(i32 %conv229)
  %call231 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i32 0, %struct.FILE_POS* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8* %call230)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.222, %if.end.131, %for.end.62
  br label %if.end.232

if.end.232:                                       ; preds = %sw.epilog, %for.end
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %130 = load %union.rec*, %union.rec** %link, align 8
  %os1234 = bitcast %union.rec* %130 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 0
  %osucc237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 1
  %131 = load %union.rec*, %union.rec** %osucc237, align 8
  store %union.rec* %131, %union.rec** %link, align 8
  br label %for.cond

for.end.238:                                      ; preds = %for.cond
  %132 = load i32, i32* %name_printed, align 4
  %tobool239 = icmp ne i32 %132, 0
  br i1 %tobool239, label %if.end.249, label %if.then.240

if.then.240:                                      ; preds = %for.end.238
  %133 = load %union.rec*, %union.rec** %sym, align 8
  %call241 = call i32 @need_lvis(%union.rec* %133)
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %if.then.240
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call244 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %134)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call245 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %135)
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %if.then.240
  %136 = load %union.rec*, %union.rec** %sym, align 8
  %call247 = call i8* @SymName(%union.rec* %136)
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %call248 = call i32 @fputs(i8* %call247, %struct._IO_FILE* %137)
  store i32 1, i32* %name_printed, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.246, %for.end.238
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @need_lvis(%union.rec* %sym) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  %0 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ovisible = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %1 = bitcast [3 x i8]* %ovisible to i24*
  %bf.load = load i24, i24* %1, align 1
  %bf.lshr = lshr i24 %bf.load, 16
  %bf.clear = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %2 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %3 = load %union.rec*, %union.rec** %oenclosing, align 8
  %4 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp = icmp ne %union.rec* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os61 = bitcast %union.rec* %5 to %struct.symbol_type*
  %oenclosing2 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os61, i32 0, i32 3
  %6 = load %union.rec*, %union.rec** %oenclosing2, align 8
  %os13 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %7 = load i8, i8* %otype, align 1
  %conv = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 143
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

declare i8* @SymName(%union.rec*) #1

declare void @FilterWrite(%union.rec*, %struct._IO_FILE*, i32*) #1

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define internal void @OptimizeParameterList(%union.rec* %x, %union.rec* %env) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.114, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %env.addr, align 8
  %cmp2 = icmp eq %union.rec* %3, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %for.end.126

if.end.5:                                         ; preds = %if.end
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os16 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %5, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.121, %if.end.5
  %6 = load %union.rec*, %union.rec** %link, align 8
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp7 = icmp ne %union.rec* %6, %7
  br i1 %cmp7, label %for.body, label %for.end.126

for.body:                                         ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %link, align 8
  %os19 = bitcast %union.rec* %8 to %struct.word_type*
  %olist10 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist10, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx11, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os113 = bitcast %union.rec* %10 to %struct.word_type*
  %ou114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 1
  %os1115 = bitcast %union.FIRST_UNION* %ou114 to %struct.anon*
  %otype16 = getelementptr inbounds %struct.anon, %struct.anon* %os1115, i32 0, i32 0
  %11 = load i8, i8* %otype16, align 1
  %conv17 = zext i8 %11 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.12
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os121 = bitcast %union.rec* %12 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %opred24 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred24, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os125 = bitcast %union.rec* %14 to %struct.word_type*
  %ou126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os1127 = bitcast %union.FIRST_UNION* %ou126 to %struct.anon*
  %otype28 = getelementptr inbounds %struct.anon, %struct.anon* %os1127, i32 0, i32 0
  %15 = load i8, i8* %otype28, align 1
  %conv29 = zext i8 %15 to i32
  %cmp30 = icmp eq i32 %conv29, 10
  br i1 %cmp30, label %if.then.32, label %if.end.120

if.then.32:                                       ; preds = %for.end
  %16 = load %union.rec*, %union.rec** %y, align 8
  %os133 = bitcast %union.rec* %16 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 0
  %osucc36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 1
  %17 = load %union.rec*, %union.rec** %osucc36, align 8
  %os137 = bitcast %union.rec* %17 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 1
  %opred40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred40, align 8
  store %union.rec* %18, %union.rec** %z, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.50, %if.then.32
  %19 = load %union.rec*, %union.rec** %z, align 8
  %os142 = bitcast %union.rec* %19 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %os1144 = bitcast %union.FIRST_UNION* %ou143 to %struct.anon*
  %otype45 = getelementptr inbounds %struct.anon, %struct.anon* %os1144, i32 0, i32 0
  %20 = load i8, i8* %otype45, align 1
  %conv46 = zext i8 %20 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %for.body.49, label %for.end.55

for.body.49:                                      ; preds = %for.cond.41
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.49
  %21 = load %union.rec*, %union.rec** %z, align 8
  %os151 = bitcast %union.rec* %21 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 1
  %opred54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred54, align 8
  store %union.rec* %22, %union.rec** %z, align 8
  br label %for.cond.41

for.end.55:                                       ; preds = %for.cond.41
  %23 = load %union.rec*, %union.rec** %z, align 8
  %os156 = bitcast %union.rec* %23 to %struct.word_type*
  %ou157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 1
  %os1158 = bitcast %union.FIRST_UNION* %ou157 to %struct.anon*
  %otype59 = getelementptr inbounds %struct.anon, %struct.anon* %os1158, i32 0, i32 0
  %24 = load i8, i8* %otype59, align 1
  %conv60 = zext i8 %24 to i32
  %cmp61 = icmp eq i32 %conv60, 2
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.end.55
  %25 = load %union.rec*, %union.rec** %z, align 8
  %26 = load %union.rec*, %union.rec** %env.addr, align 8
  call void @Optimize(%union.rec* %25, %union.rec* %26)
  br label %if.end.119

if.else:                                          ; preds = %for.end.55
  %27 = load %union.rec*, %union.rec** %z, align 8
  %os164 = bitcast %union.rec* %27 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %os1166 = bitcast %union.FIRST_UNION* %ou165 to %struct.anon*
  %otype67 = getelementptr inbounds %struct.anon, %struct.anon* %os1166, i32 0, i32 0
  %28 = load i8, i8* %otype67, align 1
  %conv68 = zext i8 %28 to i32
  %cmp69 = icmp eq i32 %conv68, 17
  br i1 %cmp69, label %if.then.71, label %if.end.118

if.then.71:                                       ; preds = %if.else
  %29 = load %union.rec*, %union.rec** %z, align 8
  %os172 = bitcast %union.rec* %29 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 0
  %osucc75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %osucc75, align 8
  store %union.rec* %30, %union.rec** %tlink, align 8
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.112, %if.then.71
  %31 = load %union.rec*, %union.rec** %tlink, align 8
  %32 = load %union.rec*, %union.rec** %z, align 8
  %cmp77 = icmp ne %union.rec* %31, %32
  br i1 %cmp77, label %for.body.79, label %for.end.117

for.body.79:                                      ; preds = %for.cond.76
  %33 = load %union.rec*, %union.rec** %tlink, align 8
  %os180 = bitcast %union.rec* %33 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 0
  %osucc83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 1
  %34 = load %union.rec*, %union.rec** %osucc83, align 8
  %os184 = bitcast %union.rec* %34 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred87, align 8
  store %union.rec* %35, %union.rec** %t, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.97, %for.body.79
  %36 = load %union.rec*, %union.rec** %t, align 8
  %os189 = bitcast %union.rec* %36 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %os1191 = bitcast %union.FIRST_UNION* %ou190 to %struct.anon*
  %otype92 = getelementptr inbounds %struct.anon, %struct.anon* %os1191, i32 0, i32 0
  %37 = load i8, i8* %otype92, align 1
  %conv93 = zext i8 %37 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %for.body.96, label %for.end.102

for.body.96:                                      ; preds = %for.cond.88
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.96
  %38 = load %union.rec*, %union.rec** %t, align 8
  %os198 = bitcast %union.rec* %38 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 1
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred101, align 8
  store %union.rec* %39, %union.rec** %t, align 8
  br label %for.cond.88

for.end.102:                                      ; preds = %for.cond.88
  %40 = load %union.rec*, %union.rec** %t, align 8
  %os1103 = bitcast %union.rec* %40 to %struct.word_type*
  %ou1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 1
  %os11105 = bitcast %union.FIRST_UNION* %ou1104 to %struct.anon*
  %otype106 = getelementptr inbounds %struct.anon, %struct.anon* %os11105, i32 0, i32 0
  %41 = load i8, i8* %otype106, align 1
  %conv107 = zext i8 %41 to i32
  %cmp108 = icmp eq i32 %conv107, 2
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %for.end.102
  %42 = load %union.rec*, %union.rec** %t, align 8
  %43 = load %union.rec*, %union.rec** %env.addr, align 8
  call void @Optimize(%union.rec* %42, %union.rec* %43)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %for.end.102
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %44 = load %union.rec*, %union.rec** %tlink, align 8
  %os1113 = bitcast %union.rec* %44 to %struct.word_type*
  %olist114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist114, i32 0, i64 0
  %osucc116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx115, i32 0, i32 1
  %45 = load %union.rec*, %union.rec** %osucc116, align 8
  store %union.rec* %45, %union.rec** %tlink, align 8
  br label %for.cond.76

for.end.117:                                      ; preds = %for.cond.76
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %if.else
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.63
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %for.end
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %46 = load %union.rec*, %union.rec** %link, align 8
  %os1122 = bitcast %union.rec* %46 to %struct.word_type*
  %olist123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist123, i32 0, i64 0
  %osucc125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx124, i32 0, i32 1
  %47 = load %union.rec*, %union.rec** %osucc125, align 8
  store %union.rec* %47, %union.rec** %link, align 8
  br label %for.cond

for.end.126:                                      ; preds = %if.then.4, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Optimize(%union.rec* %x, %union.rec* %env) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %env.addr = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %union.rec* %env, %union.rec** %env.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %4 = load %union.rec*, %union.rec** %env.addr, align 8
  call void @OptimizeParameterList(%union.rec* %3, %union.rec* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %6 = load %union.rec*, %union.rec** %env.addr, align 8
  %call = call %union.rec* @ParameterCheck(%union.rec* %5, %union.rec* %6)
  store %union.rec* %call, %union.rec** %tmp, align 8
  %7 = load %union.rec*, %union.rec** %tmp, align 8
  %cmp1 = icmp ne %union.rec* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.74

if.then.2:                                        ; preds = %if.end
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13 = bitcast %union.rec* %9 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %osucc6 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %osucc6, align 8
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp7 = icmp eq %union.rec* %10, %11
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os18 = bitcast %union.rec* %12 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 1
  %osucc11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc11, align 8
  store %union.rec* %13, %union.rec** @zz_res, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os112 = bitcast %union.rec* %14 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred, align 8
  %16 = load %union.rec*, %union.rec** @zz_res, align 8
  %os115 = bitcast %union.rec* %16 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %opred18 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 0
  store %union.rec* %15, %union.rec** %opred18, align 8
  %17 = load %union.rec*, %union.rec** @zz_res, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os119 = bitcast %union.rec* %18 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %opred22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred22, align 8
  %os123 = bitcast %union.rec* %19 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %osucc26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 1
  store %union.rec* %17, %union.rec** %osucc26, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os127 = bitcast %union.rec* %21 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 1
  %osucc30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 1
  store %union.rec* %20, %union.rec** %osucc30, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os131 = bitcast %union.rec* %22 to %struct.word_type*
  %olist32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist32, i32 0, i64 1
  %opred34 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx33, i32 0, i32 0
  store %union.rec* %20, %union.rec** %opred34, align 8
  %23 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %23, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %24 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %24, %union.rec** @zz_res, align 8
  %25 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %25, %union.rec** @zz_hold, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp35 = icmp eq %union.rec* %26, null
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end
  %27 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.71

cond.false.37:                                    ; preds = %cond.end
  %28 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp38 = icmp eq %union.rec* %28, null
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.37
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.69

cond.false.40:                                    ; preds = %cond.false.37
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %30 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 1
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred44, align 8
  store %union.rec* %31, %union.rec** @zz_tmp, align 8
  %32 = load %union.rec*, %union.rec** @zz_res, align 8
  %os145 = bitcast %union.rec* %32 to %struct.word_type*
  %olist46 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist46, i32 0, i64 1
  %opred48 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx47, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred48, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os149 = bitcast %union.rec* %34 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %opred52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred52, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  %os153 = bitcast %union.rec* %36 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 1
  %opred56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred56, align 8
  %os157 = bitcast %union.rec* %37 to %struct.word_type*
  %olist58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist58, i32 0, i64 1
  %osucc60 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx59, i32 0, i32 1
  store %union.rec* %35, %union.rec** %osucc60, align 8
  %38 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %39 = load %union.rec*, %union.rec** @zz_res, align 8
  %os161 = bitcast %union.rec* %39 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 1
  %opred64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 0
  store %union.rec* %38, %union.rec** %opred64, align 8
  %40 = load %union.rec*, %union.rec** @zz_res, align 8
  %41 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os165 = bitcast %union.rec* %41 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc68, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.40, %cond.true.39
  %cond70 = phi %union.rec* [ %29, %cond.true.39 ], [ %40, %cond.false.40 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.36
  %cond72 = phi %union.rec* [ %27, %cond.true.36 ], [ %cond70, %cond.end.69 ]
  %42 = load %union.rec*, %union.rec** %x.addr, align 8
  %call73 = call i32 @DisposeObject(%union.rec* %42)
  br label %if.end.74

if.end.74:                                        ; preds = %cond.end.71, %if.end
  ret void
}

declare %union.rec* @ParameterCheck(%union.rec*, %union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
