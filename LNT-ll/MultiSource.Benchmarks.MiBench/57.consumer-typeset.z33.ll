; ModuleID = './MultiSource.Benchmarks.MiBench/57.consumer-typeset.z33.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.anon.14 = type { i32, i32, [1 x %union.rec*] }
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
%struct.anon.3 = type { i16, i8, i8 }
%struct.cr_type = type { [2 x %struct.LIST], i8, i8, i16, %union.rec*, i32, i32, i32, i32, %union.rec*, %union.rec*, i16 }
%struct.link_type = type { [2 x %struct.LIST], i8, i8, i8 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DbCreate: !is_word(type(x))\00", align 1
@DbInsert.extra_seq = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DbInsert: db!\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"DbInsert: null tag!\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"DbInsert: null seq!\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"DbInsert: insert into reading database\00", align 1
@DbCheckTableInit = internal global i32 0, align 4
@DbCheckTable = internal global %struct.anon.14* null, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"cross reference %s&&%s used previously, at%s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cross reference %s&&%s used previously\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"database file name %s%s is too long\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".lix\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"cannot write to database file %s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"SymToNum: yy!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"%s%d&%s\09%s\09%s\09%ld\09%d\09%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"DbConvert: reading database\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c".li\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"00 %s %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"database index file\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"DbConvert: y!\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%s %d %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"00target\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"00symbol\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@xx_hold = external global %union.rec*, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.29 = private unnamed_addr constant [33 x i8] c"syntax error in database file %s\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"DbLoad: create && symbs == nilobj!\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"%s found in database but not declared in %s line\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"database symbol %s has no tag\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"database symbol tag is not a simple word\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"database symbol tag is an empty word\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"DbLoad: FileName(dfnum) (1)!\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"%s or end of file expected here\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"DbLoad: FileName(dfnum) (2)!\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"cannot open database file %s\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"DbLoad: FileName(index_fnum)!\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"DbLoad: type(symbs)!\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"00target \00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"00target %d\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"00symbol %d\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"DbLoad: type(y) != CLOSURE!\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"undefined symbol in database file %s (line %d)\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"%s%d&%s\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"%*[^\09]\09%[^\09]\09%*[^\09]\09%ld\09%d\09%[^\0A]\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"DbRetrieveNext: not reading\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"%d&%[^\09]\09%[^\09]\09%*[^\09]\09%ld\09%d\09%[^\0A]\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"NumToSym: no sym\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"NumToSym: y!\00", align 1
@OldCrossDb = common global %union.rec* null, align 8
@NewCrossDb = common global %union.rec* null, align 8
@.str.55 = private unnamed_addr constant [42 x i8] c"run out of memory enlarging dbcheck table\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"Dbcheck: entry inserted twice\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"dtab_rehash: ACAT!\00", align 1
@UseCollate = external global i32, align 4
@.str.58 = private unnamed_addr constant [6 x i8] c"%[^\09]\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"SearchFile: l > mid!\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"SearchFile: mid >= mid_end!\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"SearchFile: mid_end > r!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @DbCreate(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %db = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %0, %union.rec** %db, align 8
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %4 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %4 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %6 = load %union.rec*, %union.rec** %db, align 8
  %os19 = bitcast %union.rec* %6 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 2
  %os24 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.3*
  %oreading = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24, i32 0, i32 1
  store i8 0, i8* %oreading, align 1
  %7 = load %union.rec*, %union.rec** %db, align 8
  %os110 = bitcast %union.rec* %7 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 3
  %odb_filep = bitcast %union.THIRD_UNION* %ou3 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %odb_filep, align 8
  %8 = load %union.rec*, %union.rec** %db, align 8
  ret %union.rec* %8
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @DbInsert(%union.rec* %db, i32 %gall, %union.rec* %sym, i8* %tag, %struct.FILE_POS* %tagfpos, i8* %seq, i16 zeroext %dfnum, i64 %dfpos, i32 %dlnum, i32 %check) #0 {
entry:
  %db.addr = alloca %union.rec*, align 8
  %gall.addr = alloca i32, align 4
  %sym.addr = alloca %union.rec*, align 8
  %tag.addr = alloca i8*, align 8
  %tagfpos.addr = alloca %struct.FILE_POS*, align 8
  %seq.addr = alloca i8*, align 8
  %dfnum.addr = alloca i16, align 2
  %dfpos.addr = alloca i64, align 8
  %dlnum.addr = alloca i32, align 4
  %check.addr = alloca i32, align 4
  %symnum = alloca i32, align 4
  %chk = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %yy = alloca %union.rec*, align 8
  %count = alloca i32, align 4
  store %union.rec* %db, %union.rec** %db.addr, align 8
  store i32 %gall, i32* %gall.addr, align 4
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store %struct.FILE_POS* %tagfpos, %struct.FILE_POS** %tagfpos.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i16 %dfnum, i16* %dfnum.addr, align 2
  store i64 %dfpos, i64* %dfpos.addr, align 8
  store i32 %dlnum, i32* %dlnum.addr, align 4
  store i32 %check, i32* %check.addr, align 4
  %0 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %db.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load i8*, i8** %tag.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %8 = load i8*, i8** %seq.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.14
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.14
  %11 = load %union.rec*, %union.rec** %db.addr, align 8
  %os122 = bitcast %union.rec* %11 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 2
  %os24 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.3*
  %oreading = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24, i32 0, i32 1
  %12 = load i8, i8* %oreading, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call24 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %14 = load i32, i32* %check.addr, align 4
  %tobool26 = icmp ne i32 %14, 0
  br i1 %tobool26, label %if.then.27, label %if.end.55

if.then.27:                                       ; preds = %if.end.25
  %15 = load i32, i32* @DbCheckTableInit, align 4
  %tobool28 = icmp ne i32 %15, 0
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.then.27
  %call30 = call %struct.anon.14* @dtab_new(i32 107)
  store %struct.anon.14* %call30, %struct.anon.14** @DbCheckTable, align 8
  store i32 1, i32* @DbCheckTableInit, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.27
  %16 = load %union.rec*, %union.rec** %sym.addr, align 8
  %17 = load i8*, i8** %tag.addr, align 8
  %18 = load %struct.anon.14*, %struct.anon.14** @DbCheckTable, align 8
  %call32 = call %union.rec* @dtab_retrieve(%union.rec* %16, i8* %17, %struct.anon.14* %18)
  store %union.rec* %call32, %union.rec** %chk, align 8
  %19 = load %union.rec*, %union.rec** %chk, align 8
  %cmp33 = icmp eq %union.rec* %19, null
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.31
  %20 = load i8*, i8** %tag.addr, align 8
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** %tagfpos.addr, align 8
  %call36 = call %union.rec* @MakeWord(i32 11, i8* %20, %struct.FILE_POS* %21)
  store %union.rec* %call36, %union.rec** %chk, align 8
  %22 = load %union.rec*, %union.rec** %sym.addr, align 8
  %23 = load %union.rec*, %union.rec** %chk, align 8
  %os137 = bitcast %union.rec* %23 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 3
  %ofilter_actual = bitcast %union.THIRD_UNION* %ou3 to %union.rec**
  store %union.rec* %22, %union.rec** %ofilter_actual, align 8
  %24 = load %union.rec*, %union.rec** %chk, align 8
  call void @dtab_insert(%union.rec* %24, %struct.anon.14** @DbCheckTable)
  br label %if.end.54

if.else:                                          ; preds = %if.end.31
  %25 = load %union.rec*, %union.rec** %chk, align 8
  %os138 = bitcast %union.rec* %25 to %struct.word_type*
  %ou139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou139 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  %26 = load i16, i16* %ofile_num, align 2
  %conv40 = zext i16 %26 to i32
  %cmp41 = icmp sgt i32 %conv40, 0
  br i1 %cmp41, label %if.then.43, label %if.else.50

if.then.43:                                       ; preds = %if.else
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** %tagfpos.addr, align 8
  %28 = load %union.rec*, %union.rec** %sym.addr, align 8
  %call44 = call i8* @SymName(%union.rec* %28)
  %29 = load i8*, i8** %tag.addr, align 8
  %30 = load %union.rec*, %union.rec** %chk, align 8
  %os145 = bitcast %union.rec* %30 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos47 = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %call48 = call i8* @EchoFilePos(%struct.FILE_POS* %ofpos47)
  %call49 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i32 2, %struct.FILE_POS* %27, i8* %call44, i8* %29, i8* %call48)
  br label %if.end.53

if.else.50:                                       ; preds = %if.else
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** %tagfpos.addr, align 8
  %32 = load %union.rec*, %union.rec** %sym.addr, align 8
  %call51 = call i8* @SymName(%union.rec* %32)
  %33 = load i8*, i8** %tag.addr, align 8
  %call52 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct.FILE_POS* %31, i8* %call51, i8* %33)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.43
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.35
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.25
  %34 = load %union.rec*, %union.rec** %db.addr, align 8
  %os156 = bitcast %union.rec* %34 to %struct.word_type*
  %ou357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 3
  %odb_filep = bitcast %union.THIRD_UNION* %ou357 to %struct._IO_FILE**
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep, align 8
  %cmp58 = icmp eq %struct._IO_FILE* %35, null
  br i1 %cmp58, label %if.then.60, label %if.end.95

if.then.60:                                       ; preds = %if.end.55
  %36 = load %union.rec*, %union.rec** %db.addr, align 8
  %os161 = bitcast %union.rec* %36 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call62 = call i64 @strlen(i8* %arraydecay) #4
  %add = add i64 %call62, 4
  %cmp63 = icmp uge i64 %add, 512
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.then.60
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %38 = load %union.rec*, %union.rec** %db.addr, align 8
  %os166 = bitcast %union.rec* %38 to %struct.word_type*
  %ostring67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 4
  %arraydecay68 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring67, i32 0, i32 0
  %call69 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %37, i8* %arraydecay68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.then.60
  %arraydecay71 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %db.addr, align 8
  %os172 = bitcast %union.rec* %39 to %struct.word_type*
  %ostring73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 4
  %arraydecay74 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring73, i32 0, i32 0
  %call75 = call i8* @strcpy(i8* %arraydecay71, i8* %arraydecay74) #5
  %arraydecay76 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call77 = call i8* @strcat(i8* %arraydecay76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #5
  %arraydecay78 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call79 = call %struct._IO_FILE* @fopen(i8* %arraydecay78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %40 = load %union.rec*, %union.rec** %db.addr, align 8
  %os180 = bitcast %union.rec* %40 to %struct.word_type*
  %ou381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 3
  %odb_filep82 = bitcast %union.THIRD_UNION* %ou381 to %struct._IO_FILE**
  store %struct._IO_FILE* %call79, %struct._IO_FILE** %odb_filep82, align 8
  %41 = load %union.rec*, %union.rec** %db.addr, align 8
  %os183 = bitcast %union.rec* %41 to %struct.word_type*
  %ou384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 3
  %odb_filep85 = bitcast %union.THIRD_UNION* %ou384 to %struct._IO_FILE**
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep85, align 8
  %cmp86 = icmp eq %struct._IO_FILE* %42, null
  br i1 %cmp86, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %if.end.70
  %43 = load %union.rec*, %union.rec** %db.addr, align 8
  %os189 = bitcast %union.rec* %43 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %ofpos91 = bitcast %union.FIRST_UNION* %ou190 to %struct.FILE_POS*
  %arraydecay92 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call93 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos91, i8* %arraydecay92)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %if.end.70
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.55
  %44 = load i16, i16* %dfnum.addr, align 2
  %conv96 = zext i16 %44 to i32
  %cmp97 = icmp ne i32 %conv96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.107

if.then.99:                                       ; preds = %if.end.95
  %arraydecay100 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %45 = load i16, i16* %dfnum.addr, align 2
  %call101 = call i8* @FileName(i16 zeroext %45)
  %call102 = call i8* @strcpy(i8* %arraydecay100, i8* %call101) #5
  %arraydecay103 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call104 = call i64 @strlen(i8* %arraydecay103) #4
  %sub = sub i64 %call104, 3
  %arrayidx105 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %sub
  %call106 = call i8* @strcpy(i8* %arrayidx105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %if.end.110

if.else.107:                                      ; preds = %if.end.95
  %arraydecay108 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call109 = call i8* @strcpy(i8* %arraydecay108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.99
  store i32 0, i32* %count, align 4
  %46 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1111 = bitcast %union.rec* %46 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 1
  %47 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %47, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.170, %if.end.110
  %48 = load %union.rec*, %union.rec** %link, align 8
  %49 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp113 = icmp ne %union.rec* %48, %49
  br i1 %cmp113, label %for.body, label %for.end.175

for.body:                                         ; preds = %for.cond
  %50 = load %union.rec*, %union.rec** %link, align 8
  %os1115 = bitcast %union.rec* %50 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %51, %union.rec** %yy, align 8
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc, %for.body
  %52 = load %union.rec*, %union.rec** %yy, align 8
  %os1119 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 1
  %os11121 = bitcast %union.FIRST_UNION* %ou1120 to %struct.anon*
  %otype122 = getelementptr inbounds %struct.anon, %struct.anon* %os11121, i32 0, i32 0
  %53 = load i8, i8* %otype122, align 1
  %conv123 = zext i8 %53 to i32
  %cmp124 = icmp eq i32 %conv123, 0
  br i1 %cmp124, label %for.body.126, label %for.end

for.body.126:                                     ; preds = %for.cond.118
  br label %for.inc

for.inc:                                          ; preds = %for.body.126
  %54 = load %union.rec*, %union.rec** %yy, align 8
  %os1127 = bitcast %union.rec* %54 to %struct.word_type*
  %olist128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist128, i32 0, i64 1
  %opred130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx129, i32 0, i32 0
  %55 = load %union.rec*, %union.rec** %opred130, align 8
  store %union.rec* %55, %union.rec** %yy, align 8
  br label %for.cond.118

for.end:                                          ; preds = %for.cond.118
  %56 = load %union.rec*, %union.rec** %yy, align 8
  %os1131 = bitcast %union.rec* %56 to %struct.word_type*
  %ou1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 1
  %os11133 = bitcast %union.FIRST_UNION* %ou1132 to %struct.anon*
  %otype134 = getelementptr inbounds %struct.anon, %struct.anon* %os11133, i32 0, i32 0
  %57 = load i8, i8* %otype134, align 1
  %conv135 = zext i8 %57 to i32
  %cmp136 = icmp eq i32 %conv135, 140
  br i1 %cmp136, label %if.end.148, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %for.end
  %58 = load %union.rec*, %union.rec** %yy, align 8
  %os1139 = bitcast %union.rec* %58 to %struct.word_type*
  %ou1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 1
  %os11141 = bitcast %union.FIRST_UNION* %ou1140 to %struct.anon*
  %otype142 = getelementptr inbounds %struct.anon, %struct.anon* %os11141, i32 0, i32 0
  %59 = load i8, i8* %otype142, align 1
  %conv143 = zext i8 %59 to i32
  %cmp144 = icmp eq i32 %conv143, 17
  br i1 %cmp144, label %if.end.148, label %if.then.146

if.then.146:                                      ; preds = %lor.lhs.false.138
  %60 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call147 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %lor.lhs.false.138, %for.end
  %61 = load %union.rec*, %union.rec** %yy, align 8
  %os1149 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 1
  %os11151 = bitcast %union.FIRST_UNION* %ou1150 to %struct.anon*
  %otype152 = getelementptr inbounds %struct.anon, %struct.anon* %os11151, i32 0, i32 0
  %62 = load i8, i8* %otype152, align 1
  %conv153 = zext i8 %62 to i32
  %cmp154 = icmp ne i32 %conv153, 140
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.148
  br label %for.inc.170

if.end.157:                                       ; preds = %if.end.148
  %63 = load %union.rec*, %union.rec** %yy, align 8
  %os7 = bitcast %union.rec* %63 to %struct.cr_type*
  %osymb = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 9
  %64 = load %union.rec*, %union.rec** %osymb, align 8
  %65 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp158 = icmp eq %union.rec* %64, %65
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.end.157
  br label %for.end.175

if.end.161:                                       ; preds = %if.end.157
  %66 = load %union.rec*, %union.rec** %link, align 8
  %os4 = bitcast %union.rec* %66 to %struct.link_type*
  %onumber = getelementptr inbounds %struct.link_type, %struct.link_type* %os4, i32 0, i32 2
  %67 = load i8, i8* %onumber, align 1
  %conv162 = zext i8 %67 to i32
  %68 = load i32, i32* %count, align 4
  %cmp163 = icmp sgt i32 %conv162, %68
  br i1 %cmp163, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %if.end.161
  %69 = load %union.rec*, %union.rec** %link, align 8
  %os4166 = bitcast %union.rec* %69 to %struct.link_type*
  %onumber167 = getelementptr inbounds %struct.link_type, %struct.link_type* %os4166, i32 0, i32 2
  %70 = load i8, i8* %onumber167, align 1
  %conv168 = zext i8 %70 to i32
  store i32 %conv168, i32* %count, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.165, %if.end.161
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.169, %if.then.156
  %71 = load %union.rec*, %union.rec** %link, align 8
  %os1171 = bitcast %union.rec* %71 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %osucc174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %osucc174, align 8
  store %union.rec* %72, %union.rec** %link, align 8
  br label %for.cond

for.end.175:                                      ; preds = %if.then.160, %for.cond
  %73 = load %union.rec*, %union.rec** %link, align 8
  %74 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp176 = icmp eq %union.rec* %73, %74
  br i1 %cmp176, label %if.then.178, label %if.end.313

if.then.178:                                      ; preds = %for.end.175
  %75 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %75 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %76 = load %union.rec*, %union.rec** %ocross_sym, align 8
  %cmp179 = icmp eq %union.rec* %76, null
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.then.178
  %77 = load %union.rec*, %union.rec** %sym.addr, align 8
  call void @CrossInit(%union.rec* %77)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.then.178
  %78 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv183 = zext i8 %78 to i32
  store i32 %conv183, i32* @zz_size, align 4
  %conv184 = sext i32 %conv183 to i64
  %cmp185 = icmp uge i64 %conv184, 265
  br i1 %cmp185, label %if.then.187, label %if.else.189

if.then.187:                                      ; preds = %if.end.182
  %79 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call188 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %79)
  br label %if.end.205

if.else.189:                                      ; preds = %if.end.182
  %80 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %80 to i64
  %arrayidx190 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %81 = load %union.rec*, %union.rec** %arrayidx190, align 8
  %cmp191 = icmp eq %union.rec* %81, null
  br i1 %cmp191, label %if.then.193, label %if.else.195

if.then.193:                                      ; preds = %if.else.189
  %82 = load i32, i32* @zz_size, align 4
  %83 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call194 = call %union.rec* @GetMemory(i32 %82, %struct.FILE_POS* %83)
  store %union.rec* %call194, %union.rec** @zz_hold, align 8
  br label %if.end.204

if.else.195:                                      ; preds = %if.else.189
  %84 = load i32, i32* @zz_size, align 4
  %idxprom196 = sext i32 %84 to i64
  %arrayidx197 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom196
  %85 = load %union.rec*, %union.rec** %arrayidx197, align 8
  store %union.rec* %85, %union.rec** @zz_hold, align 8
  store %union.rec* %85, %union.rec** @zz_hold, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1198 = bitcast %union.rec* %86 to %struct.word_type*
  %olist199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist199, i32 0, i64 0
  %opred201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx200, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred201, align 8
  %88 = load i32, i32* @zz_size, align 4
  %idxprom202 = sext i32 %88 to i64
  %arrayidx203 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom202
  store %union.rec* %87, %union.rec** %arrayidx203, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.195, %if.then.193
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.187
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1206 = bitcast %union.rec* %89 to %struct.word_type*
  %ou1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 1
  %os11208 = bitcast %union.FIRST_UNION* %ou1207 to %struct.anon*
  %otype209 = getelementptr inbounds %struct.anon, %struct.anon* %os11208, i32 0, i32 0
  store i8 0, i8* %otype209, align 1
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1210 = bitcast %union.rec* %91 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 1
  %osucc213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 1
  store %union.rec* %90, %union.rec** %osucc213, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1214 = bitcast %union.rec* %92 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 1
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred217, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1218 = bitcast %union.rec* %93 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 0
  %osucc221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 1
  store %union.rec* %90, %union.rec** %osucc221, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1222 = bitcast %union.rec* %94 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 0
  %opred225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred225, align 8
  store %union.rec* %90, %union.rec** @xx_link, align 8
  %95 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %95, %union.rec** @zz_res, align 8
  %96 = load %union.rec*, %union.rec** %db.addr, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp226 = icmp eq %union.rec* %97, null
  br i1 %cmp226, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.205
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.260

cond.false:                                       ; preds = %if.end.205
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp228 = icmp eq %union.rec* %99, null
  br i1 %cmp228, label %cond.true.230, label %cond.false.231

cond.true.230:                                    ; preds = %cond.false
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.231:                                   ; preds = %cond.false
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1232 = bitcast %union.rec* %101 to %struct.word_type*
  %olist233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 0
  %arrayidx234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist233, i32 0, i64 0
  %opred235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx234, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred235, align 8
  store %union.rec* %102, %union.rec** @zz_tmp, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1236 = bitcast %union.rec* %103 to %struct.word_type*
  %olist237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist237, i32 0, i64 0
  %opred239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx238, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %opred239, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1240 = bitcast %union.rec* %105 to %struct.word_type*
  %olist241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist241, i32 0, i64 0
  %opred243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx242, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred243, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1244 = bitcast %union.rec* %107 to %struct.word_type*
  %olist245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist245, i32 0, i64 0
  %opred247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx246, i32 0, i32 0
  %108 = load %union.rec*, %union.rec** %opred247, align 8
  %os1248 = bitcast %union.rec* %108 to %struct.word_type*
  %olist249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist249, i32 0, i64 0
  %osucc251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx250, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc251, align 8
  %109 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1252 = bitcast %union.rec* %110 to %struct.word_type*
  %olist253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist253, i32 0, i64 0
  %opred255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx254, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred255, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1256 = bitcast %union.rec* %112 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 0
  %osucc259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 1
  store %union.rec* %111, %union.rec** %osucc259, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.231, %cond.true.230
  %cond = phi %union.rec* [ %100, %cond.true.230 ], [ %111, %cond.false.231 ]
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.end, %cond.true
  %cond261 = phi %union.rec* [ %98, %cond.true ], [ %cond, %cond.end ]
  %113 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %113, %union.rec** @zz_res, align 8
  %114 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6262 = bitcast %union.rec* %114 to %struct.symbol_type*
  %ocross_sym263 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6262, i32 0, i32 8
  %115 = load %union.rec*, %union.rec** %ocross_sym263, align 8
  store %union.rec* %115, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp264 = icmp eq %union.rec* %116, null
  br i1 %cmp264, label %cond.true.266, label %cond.false.267

cond.true.266:                                    ; preds = %cond.end.260
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.302

cond.false.267:                                   ; preds = %cond.end.260
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp268 = icmp eq %union.rec* %118, null
  br i1 %cmp268, label %cond.true.270, label %cond.false.271

cond.true.270:                                    ; preds = %cond.false.267
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.300

cond.false.271:                                   ; preds = %cond.false.267
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1272 = bitcast %union.rec* %120 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 1
  %opred275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred275, align 8
  store %union.rec* %121, %union.rec** @zz_tmp, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1276 = bitcast %union.rec* %122 to %struct.word_type*
  %olist277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist277, i32 0, i64 1
  %opred279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx278, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred279, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1280 = bitcast %union.rec* %124 to %struct.word_type*
  %olist281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist281, i32 0, i64 1
  %opred283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx282, i32 0, i32 0
  store %union.rec* %123, %union.rec** %opred283, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1284 = bitcast %union.rec* %126 to %struct.word_type*
  %olist285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist285, i32 0, i64 1
  %opred287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx286, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %opred287, align 8
  %os1288 = bitcast %union.rec* %127 to %struct.word_type*
  %olist289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist289, i32 0, i64 1
  %osucc291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx290, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc291, align 8
  %128 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %129 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1292 = bitcast %union.rec* %129 to %struct.word_type*
  %olist293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist293, i32 0, i64 1
  %opred295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx294, i32 0, i32 0
  store %union.rec* %128, %union.rec** %opred295, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1296 = bitcast %union.rec* %131 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 1
  %osucc299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 1
  store %union.rec* %130, %union.rec** %osucc299, align 8
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.false.271, %cond.true.270
  %cond301 = phi %union.rec* [ %119, %cond.true.270 ], [ %130, %cond.false.271 ]
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.end.300, %cond.true.266
  %cond303 = phi %union.rec* [ %117, %cond.true.266 ], [ %cond301, %cond.end.300 ]
  %132 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1304 = bitcast %union.rec* %132 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 0
  %opred307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %opred307, align 8
  store %union.rec* %133, %union.rec** %link, align 8
  %134 = load i32, i32* %count, align 4
  %add308 = add nsw i32 %134, 1
  %conv309 = trunc i32 %add308 to i8
  %135 = load %union.rec*, %union.rec** %link, align 8
  %os4310 = bitcast %union.rec* %135 to %struct.link_type*
  %onumber311 = getelementptr inbounds %struct.link_type, %struct.link_type* %os4310, i32 0, i32 2
  store i8 %conv309, i8* %onumber311, align 1
  %136 = load %union.rec*, %union.rec** %link, align 8
  %os4312 = bitcast %union.rec* %136 to %struct.link_type*
  %odb_targ = getelementptr inbounds %struct.link_type, %struct.link_type* %os4312, i32 0, i32 3
  store i8 0, i8* %odb_targ, align 1
  br label %if.end.313

if.end.313:                                       ; preds = %cond.end.302, %for.end.175
  %137 = load %union.rec*, %union.rec** %link, align 8
  %os4314 = bitcast %union.rec* %137 to %struct.link_type*
  %onumber315 = getelementptr inbounds %struct.link_type, %struct.link_type* %os4314, i32 0, i32 2
  %138 = load i8, i8* %onumber315, align 1
  %conv316 = zext i8 %138 to i32
  store i32 %conv316, i32* %symnum, align 4
  %139 = load i32, i32* %gall.addr, align 4
  %tobool317 = icmp ne i32 %139, 0
  br i1 %tobool317, label %if.then.318, label %if.end.329

if.then.318:                                      ; preds = %if.end.313
  %140 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os1319 = bitcast %union.rec* %140 to %struct.word_type*
  %ou2320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1319, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2320 to %struct.anon.5*
  %ouses_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %141 = bitcast [3 x i8]* %ouses_extern_target to i24*
  %bf.load = load i24, i24* %141, align 1
  %bf.clear = and i24 %bf.load, -2049
  %bf.set = or i24 %bf.clear, 2048
  store i24 %bf.set, i24* %141, align 1
  %142 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os1321 = bitcast %union.rec* %142 to %struct.word_type*
  %ou2322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 2
  %os26323 = bitcast %union.SECOND_UNION* %ou2322 to %struct.anon.5*
  %ois_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26323, i32 0, i32 1
  %143 = bitcast [3 x i8]* %ois_extern_target to i24*
  %bf.load324 = load i24, i24* %143, align 1
  %bf.clear325 = and i24 %bf.load324, -4097
  %bf.set326 = or i24 %bf.clear325, 4096
  store i24 %bf.set326, i24* %143, align 1
  %144 = load %union.rec*, %union.rec** %link, align 8
  %os4327 = bitcast %union.rec* %144 to %struct.link_type*
  %odb_targ328 = getelementptr inbounds %struct.link_type, %struct.link_type* %os4327, i32 0, i32 3
  store i8 1, i8* %odb_targ328, align 1
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.318, %if.end.313
  %145 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1330 = bitcast %union.rec* %145 to %struct.word_type*
  %ou3331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1330, i32 0, i32 3
  %odb_filep332 = bitcast %union.THIRD_UNION* %ou3331 to %struct._IO_FILE**
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep332, align 8
  %147 = load i32, i32* %gall.addr, align 4
  %tobool333 = icmp ne i32 %147, 0
  %cond334 = select i1 %tobool333, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)
  %148 = load i32, i32* %symnum, align 4
  %149 = load i8*, i8** %tag.addr, align 8
  %150 = load i8*, i8** %seq.addr, align 8
  %151 = load i32, i32* @DbInsert.extra_seq, align 4
  %inc = add nsw i32 %151, 1
  store i32 %inc, i32* @DbInsert.extra_seq, align 4
  %call335 = call i8* @StringFiveInt(i32 %inc)
  %152 = load i64, i64* %dfpos.addr, align 8
  %153 = load i32, i32* %dlnum.addr, align 4
  %arraydecay336 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %cond334, i32 %148, i8* %149, i8* %150, i8* %call335, i64 %152, i32 %153, i8* %arraydecay336)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @dtab_new(i32 %newsize) #0 {
entry:
  %newsize.addr = alloca i32, align 4
  %S = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %add = add i64 8, %mul
  %call = call noalias i8* @malloc(i64 %add) #5
  %1 = bitcast i8* %call to %struct.anon.14*
  store %struct.anon.14* %1, %struct.anon.14** %S, align 8
  %2 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %cmp = icmp eq %struct.anon.14* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %newsize.addr, align 4
  %5 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %dbchecktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 0
  store i32 %4, i32* %dbchecktab_size, align 4
  %6 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %dbchecktab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 1
  store i32 0, i32* %dbchecktab_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %newsize.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %dbchecktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item, i32 0, i64 %idxprom
  store %union.rec* null, %union.rec** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  ret %struct.anon.14* %12
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @dtab_retrieve(%union.rec* %sym, i8* %tag, %struct.anon.14* %S) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %sym.addr = alloca %union.rec*, align 8
  %tag.addr = alloca i8*, align 8
  %S.addr = alloca %struct.anon.14*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i64, align 8
  %p = alloca i8*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store %struct.anon.14* %S, %struct.anon.14** %S.addr, align 8
  %0 = load i8*, i8** %tag.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load %union.rec*, %union.rec** %sym.addr, align 8
  %2 = ptrtoint %union.rec* %1 to i64
  store i64 %2, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i64
  %7 = load i64, i64* %pos, align 8
  %add = add i64 %7, %conv
  store i64 %add, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %pos, align 8
  %9 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %dbchecktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %9, i32 0, i32 0
  %10 = load i32, i32* %dbchecktab_size, align 4
  %conv1 = sext i32 %10 to i64
  %rem = urem i64 %8, %conv1
  store i64 %rem, i64* %pos, align 8
  %11 = load i64, i64* %pos, align 8
  %12 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %dbchecktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item, i32 0, i64 %11
  %13 = load %union.rec*, %union.rec** %arrayidx, align 8
  store %union.rec* %13, %union.rec** %x, align 8
  %14 = load %union.rec*, %union.rec** %x, align 8
  %cmp = icmp eq %union.rec* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %15 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %15 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %16, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.end
  %17 = load %union.rec*, %union.rec** %link, align 8
  %18 = load %union.rec*, %union.rec** %x, align 8
  %cmp4 = icmp ne %union.rec* %17, %18
  br i1 %cmp4, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %19 = load %union.rec*, %union.rec** %link, align 8
  %os16 = bitcast %union.rec* %19 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %20, %union.rec** %y, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os110 = bitcast %union.rec* %21 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %22 = load i8, i8* %otype, align 1
  %conv11 = zext i8 %22 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.9
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os115 = bitcast %union.rec* %23 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %opred18 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred18, align 8
  store %union.rec* %24, %union.rec** %y, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %25 = load %union.rec*, %union.rec** %sym.addr, align 8
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os119 = bitcast %union.rec* %26 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 3
  %ofilter_actual = bitcast %union.THIRD_UNION* %ou3 to %union.rec**
  %27 = load %union.rec*, %union.rec** %ofilter_actual, align 8
  %cmp20 = icmp eq %union.rec* %25, %27
  br i1 %cmp20, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %for.end
  %28 = load i8*, i8** %tag.addr, align 8
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %29 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %28, i8* %arraydecay) #4
  %cmp23 = icmp eq i32 %call, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  %30 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %30, %union.rec** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true, %for.end
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %31 = load %union.rec*, %union.rec** %link, align 8
  %os128 = bitcast %union.rec* %31 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 0
  %osucc31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %osucc31, align 8
  store %union.rec* %32, %union.rec** %link, align 8
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  store %union.rec* null, %union.rec** %retval
  br label %return

return:                                           ; preds = %for.end.32, %if.then.25, %if.then
  %33 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %33
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal void @dtab_insert(%union.rec* %x, %struct.anon.14** %S) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %S.addr = alloca %struct.anon.14**, align 8
  %pos = alloca i64, align 8
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.anon.14** %S, %struct.anon.14*** %S.addr, align 8
  %0 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %1 = load %struct.anon.14*, %struct.anon.14** %0, align 8
  %dbchecktab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 1
  %2 = load i32, i32* %dbchecktab_count, align 4
  %3 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %4 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %dbchecktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 0
  %5 = load i32, i32* %dbchecktab_size, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp eq i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %7 = load %struct.anon.14*, %struct.anon.14** %6, align 8
  %8 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %9 = load %struct.anon.14*, %struct.anon.14** %8, align 8
  %dbchecktab_size1 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %9, i32 0, i32 0
  %10 = load i32, i32* %dbchecktab_size1, align 4
  %mul = mul nsw i32 2, %10
  %call = call %struct.anon.14* @dtab_rehash(%struct.anon.14* %7, i32 %mul)
  %11 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  store %struct.anon.14* %call, %struct.anon.14** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %13 = load %struct.anon.14*, %struct.anon.14** %12, align 8
  %dbchecktab_count2 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %13, i32 0, i32 1
  %14 = load i32, i32* %dbchecktab_count2, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %dbchecktab_count2, align 4
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13 = bitcast %union.rec* %16 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 3
  %ofilter_actual = bitcast %union.THIRD_UNION* %ou3 to %union.rec**
  %17 = load %union.rec*, %union.rec** %ofilter_actual, align 8
  %18 = ptrtoint %union.rec* %17 to i64
  store i64 %18, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %tobool = icmp ne i8 %20, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv = zext i8 %22 to i64
  %23 = load i64, i64* %pos, align 8
  %add = add i64 %23, %conv
  store i64 %add, i64* %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i64, i64* %pos, align 8
  %25 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %26 = load %struct.anon.14*, %struct.anon.14** %25, align 8
  %dbchecktab_size4 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %26, i32 0, i32 0
  %27 = load i32, i32* %dbchecktab_size4, align 4
  %conv5 = sext i32 %27 to i64
  %rem = urem i64 %24, %conv5
  store i64 %rem, i64* %pos, align 8
  %28 = load i64, i64* %pos, align 8
  %29 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %30 = load %struct.anon.14*, %struct.anon.14** %29, align 8
  %dbchecktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %30, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item, i32 0, i64 %28
  %31 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp6 = icmp eq %union.rec* %31, null
  br i1 %cmp6, label %if.then.8, label %if.end.47

if.then.8:                                        ; preds = %while.end
  %32 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv9 = zext i8 %32 to i32
  store i32 %conv9, i32* @zz_size, align 4
  %conv10 = sext i32 %conv9 to i64
  %cmp11 = icmp uge i64 %conv10, 265
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.8
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %33)
  br label %if.end.28

if.else:                                          ; preds = %if.then.8
  %34 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx15 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %35 = load %union.rec*, %union.rec** %arrayidx15, align 8
  %cmp16 = icmp eq %union.rec* %35, null
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %36 = load i32, i32* @zz_size, align 4
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call19 = call %union.rec* @GetMemory(i32 %36, %struct.FILE_POS* %37)
  store %union.rec* %call19, %union.rec** @zz_hold, align 8
  br label %if.end.27

if.else.20:                                       ; preds = %if.else
  %38 = load i32, i32* @zz_size, align 4
  %idxprom21 = sext i32 %38 to i64
  %arrayidx22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom21
  %39 = load %union.rec*, %union.rec** %arrayidx22, align 8
  store %union.rec* %39, %union.rec** @zz_hold, align 8
  store %union.rec* %39, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %40 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %opred, align 8
  %42 = load i32, i32* @zz_size, align 4
  %idxprom25 = sext i32 %42 to i64
  %arrayidx26 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom25
  store %union.rec* %41, %union.rec** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.13
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %43 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %45 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 1
  store %union.rec* %44, %union.rec** %osucc, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %46 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %44, %union.rec** %opred36, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %47 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %44, %union.rec** %osucc40, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %48 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  store %union.rec* %44, %union.rec** %opred44, align 8
  %49 = load i64, i64* %pos, align 8
  %50 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %51 = load %struct.anon.14*, %struct.anon.14** %50, align 8
  %dbchecktab_item45 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %51, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item45, i32 0, i64 %49
  store %union.rec* %44, %union.rec** %arrayidx46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.28, %while.end
  %52 = load i64, i64* %pos, align 8
  %53 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %54 = load %struct.anon.14*, %struct.anon.14** %53, align 8
  %dbchecktab_item48 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %54, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item48, i32 0, i64 %52
  %55 = load %union.rec*, %union.rec** %arrayidx49, align 8
  store %union.rec* %55, %union.rec** %z, align 8
  %56 = load %union.rec*, %union.rec** %z, align 8
  %os150 = bitcast %union.rec* %56 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %osucc53, align 8
  store %union.rec* %57, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %if.end.47
  %58 = load %union.rec*, %union.rec** %link, align 8
  %59 = load %union.rec*, %union.rec** %z, align 8
  %cmp54 = icmp ne %union.rec* %58, %59
  br i1 %cmp54, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  %60 = load %union.rec*, %union.rec** %link, align 8
  %os156 = bitcast %union.rec* %60 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 1
  %opred59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred59, align 8
  store %union.rec* %61, %union.rec** %y, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %for.body
  %62 = load %union.rec*, %union.rec** %y, align 8
  %os161 = bitcast %union.rec* %62 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %os1163 = bitcast %union.FIRST_UNION* %ou162 to %struct.anon*
  %otype64 = getelementptr inbounds %struct.anon, %struct.anon* %os1163, i32 0, i32 0
  %63 = load i8, i8* %otype64, align 1
  %conv65 = zext i8 %63 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %for.body.68, label %for.end

for.body.68:                                      ; preds = %for.cond.60
  br label %for.inc

for.inc:                                          ; preds = %for.body.68
  %64 = load %union.rec*, %union.rec** %y, align 8
  %os169 = bitcast %union.rec* %64 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 1
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred72, align 8
  store %union.rec* %65, %union.rec** %y, align 8
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  %66 = load %union.rec*, %union.rec** %x.addr, align 8
  %os173 = bitcast %union.rec* %66 to %struct.word_type*
  %ou374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 3
  %ofilter_actual75 = bitcast %union.THIRD_UNION* %ou374 to %union.rec**
  %67 = load %union.rec*, %union.rec** %ofilter_actual75, align 8
  %68 = load %union.rec*, %union.rec** %y, align 8
  %os176 = bitcast %union.rec* %68 to %struct.word_type*
  %ou377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 3
  %ofilter_actual78 = bitcast %union.THIRD_UNION* %ou377 to %union.rec**
  %69 = load %union.rec*, %union.rec** %ofilter_actual78, align 8
  %cmp79 = icmp eq %union.rec* %67, %69
  br i1 %cmp79, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %for.end
  %70 = load %union.rec*, %union.rec** %x.addr, align 8
  %os181 = bitcast %union.rec* %70 to %struct.word_type*
  %ostring82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 4
  %arraydecay83 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring82, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %y, align 8
  %os184 = bitcast %union.rec* %71 to %struct.word_type*
  %ostring85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 4
  %arraydecay86 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring85, i32 0, i32 0
  %call87 = call i32 @strcmp(i8* %arraydecay83, i8* %arraydecay86) #4
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %land.lhs.true
  %72 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call91 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %land.lhs.true, %for.end
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %73 = load %union.rec*, %union.rec** %link, align 8
  %os194 = bitcast %union.rec* %73 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 0
  %osucc97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 1
  %74 = load %union.rec*, %union.rec** %osucc97, align 8
  store %union.rec* %74, %union.rec** %link, align 8
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  %75 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv99 = zext i8 %75 to i32
  store i32 %conv99, i32* @zz_size, align 4
  %conv100 = sext i32 %conv99 to i64
  %cmp101 = icmp uge i64 %conv100, 265
  br i1 %cmp101, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %for.end.98
  %76 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call104 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %76)
  br label %if.end.122

if.else.105:                                      ; preds = %for.end.98
  %77 = load i32, i32* @zz_size, align 4
  %idxprom106 = sext i32 %77 to i64
  %arrayidx107 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom106
  %78 = load %union.rec*, %union.rec** %arrayidx107, align 8
  %cmp108 = icmp eq %union.rec* %78, null
  br i1 %cmp108, label %if.then.110, label %if.else.112

if.then.110:                                      ; preds = %if.else.105
  %79 = load i32, i32* @zz_size, align 4
  %80 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call111 = call %union.rec* @GetMemory(i32 %79, %struct.FILE_POS* %80)
  store %union.rec* %call111, %union.rec** @zz_hold, align 8
  br label %if.end.121

if.else.112:                                      ; preds = %if.else.105
  %81 = load i32, i32* @zz_size, align 4
  %idxprom113 = sext i32 %81 to i64
  %arrayidx114 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom113
  %82 = load %union.rec*, %union.rec** %arrayidx114, align 8
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1115 = bitcast %union.rec* %83 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 0
  %opred118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  %84 = load %union.rec*, %union.rec** %opred118, align 8
  %85 = load i32, i32* @zz_size, align 4
  %idxprom119 = sext i32 %85 to i64
  %arrayidx120 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom119
  store %union.rec* %84, %union.rec** %arrayidx120, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.112, %if.then.110
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.103
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1123 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 1
  %os11125 = bitcast %union.FIRST_UNION* %ou1124 to %struct.anon*
  %otype126 = getelementptr inbounds %struct.anon, %struct.anon* %os11125, i32 0, i32 0
  store i8 0, i8* %otype126, align 1
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1127 = bitcast %union.rec* %88 to %struct.word_type*
  %olist128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist128, i32 0, i64 1
  %osucc130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx129, i32 0, i32 1
  store %union.rec* %87, %union.rec** %osucc130, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1131 = bitcast %union.rec* %89 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 1
  %opred134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 0
  store %union.rec* %87, %union.rec** %opred134, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1135 = bitcast %union.rec* %90 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 0
  %osucc138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 1
  store %union.rec* %87, %union.rec** %osucc138, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1139 = bitcast %union.rec* %91 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 0
  %opred142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 0
  store %union.rec* %87, %union.rec** %opred142, align 8
  store %union.rec* %87, %union.rec** @xx_link, align 8
  %92 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %92, %union.rec** @zz_res, align 8
  %93 = load i64, i64* %pos, align 8
  %94 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %95 = load %struct.anon.14*, %struct.anon.14** %94, align 8
  %dbchecktab_item143 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %95, i32 0, i32 2
  %arrayidx144 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item143, i32 0, i64 %93
  %96 = load %union.rec*, %union.rec** %arrayidx144, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp145 = icmp eq %union.rec* %97, null
  br i1 %cmp145, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.122
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.180

cond.false:                                       ; preds = %if.end.122
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp147 = icmp eq %union.rec* %99, null
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %cond.false
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.150:                                   ; preds = %cond.false
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1151 = bitcast %union.rec* %101 to %struct.word_type*
  %olist152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist152, i32 0, i64 0
  %opred154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx153, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred154, align 8
  store %union.rec* %102, %union.rec** @zz_tmp, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1155 = bitcast %union.rec* %103 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 0
  %opred158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %opred158, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1159 = bitcast %union.rec* %105 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 0
  %opred162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred162, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1164 = bitcast %union.rec* %107 to %struct.word_type*
  %olist165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist165, i32 0, i64 0
  %opred167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx166, i32 0, i32 0
  %108 = load %union.rec*, %union.rec** %opred167, align 8
  %os1168 = bitcast %union.rec* %108 to %struct.word_type*
  %olist169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist169, i32 0, i64 0
  %osucc171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx170, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc171, align 8
  %109 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1172 = bitcast %union.rec* %110 to %struct.word_type*
  %olist173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist173, i32 0, i64 0
  %opred175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx174, i32 0, i32 0
  store %union.rec* %109, %union.rec** %opred175, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1176 = bitcast %union.rec* %112 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 0
  %osucc179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 1
  store %union.rec* %111, %union.rec** %osucc179, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.150, %cond.true.149
  %cond = phi %union.rec* [ %100, %cond.true.149 ], [ %111, %cond.false.150 ]
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.end, %cond.true
  %cond181 = phi %union.rec* [ %98, %cond.true ], [ %cond, %cond.end ]
  %113 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %113, %union.rec** @zz_res, align 8
  %114 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %114, %union.rec** @zz_hold, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp182 = icmp eq %union.rec* %115, null
  br i1 %cmp182, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %cond.end.180
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.220

cond.false.185:                                   ; preds = %cond.end.180
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp186 = icmp eq %union.rec* %117, null
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %cond.false.185
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.218

cond.false.189:                                   ; preds = %cond.false.185
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1190 = bitcast %union.rec* %119 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 1
  %opred193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred193, align 8
  store %union.rec* %120, %union.rec** @zz_tmp, align 8
  %121 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1194 = bitcast %union.rec* %121 to %struct.word_type*
  %olist195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist195, i32 0, i64 1
  %opred197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx196, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %opred197, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1198 = bitcast %union.rec* %123 to %struct.word_type*
  %olist199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist199, i32 0, i64 1
  %opred201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx200, i32 0, i32 0
  store %union.rec* %122, %union.rec** %opred201, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1202 = bitcast %union.rec* %125 to %struct.word_type*
  %olist203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist203, i32 0, i64 1
  %opred205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx204, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %opred205, align 8
  %os1206 = bitcast %union.rec* %126 to %struct.word_type*
  %olist207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist207, i32 0, i64 1
  %osucc209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx208, i32 0, i32 1
  store %union.rec* %124, %union.rec** %osucc209, align 8
  %127 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1210 = bitcast %union.rec* %128 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 1
  %opred213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 0
  store %union.rec* %127, %union.rec** %opred213, align 8
  %129 = load %union.rec*, %union.rec** @zz_res, align 8
  %130 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1214 = bitcast %union.rec* %130 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 1
  %osucc217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 1
  store %union.rec* %129, %union.rec** %osucc217, align 8
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.189, %cond.true.188
  %cond219 = phi %union.rec* [ %118, %cond.true.188 ], [ %129, %cond.false.189 ]
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.end.218, %cond.true.184
  %cond221 = phi %union.rec* [ %116, %cond.true.184 ], [ %cond219, %cond.end.218 ]
  ret void
}

declare i8* @SymName(%union.rec*) #1

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @FileName(i16 zeroext) #1

declare void @CrossInit(%union.rec*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @StringFiveInt(i32) #1

; Function Attrs: nounwind uwtable
define void @DbConvert(%union.rec* %db, i32 %full_name) #0 {
entry:
  %db.addr = alloca %union.rec*, align 8
  %full_name.addr = alloca i32, align 4
  %oldname = alloca [522 x i8], align 16
  %newname = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %db, %union.rec** %db.addr, align 8
  store i32 %full_name, i32* %full_name.addr, align 4
  %0 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os24 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.3*
  %oreading = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24, i32 0, i32 1
  %1 = load i8, i8* %oreading, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %db.addr, align 8
  %os11 = bitcast %union.rec* %3 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call3 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay2) #5
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %call5 = call i8* @strcat(i8* %arraydecay4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #5
  %arraydecay6 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %4 = load %union.rec*, %union.rec** %db.addr, align 8
  %os17 = bitcast %union.rec* %4 to %struct.word_type*
  %ostring8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 4
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring8, i32 0, i32 0
  %call10 = call i8* @strcpy(i8* %arraydecay6, i8* %arraydecay9) #5
  %arraydecay11 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %call12 = call i8* @strcat(i8* %arraydecay11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #5
  %5 = load %union.rec*, %union.rec** %db.addr, align 8
  %os113 = bitcast %union.rec* %5 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 3
  %odb_filep = bitcast %union.THIRD_UNION* %ou3 to %struct._IO_FILE**
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep, align 8
  %cmp = icmp ne %struct._IO_FILE* %6, null
  br i1 %cmp, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  %7 = load %union.rec*, %union.rec** %db.addr, align 8
  %os115 = bitcast %union.rec* %7 to %struct.word_type*
  %ou316 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 3
  %odb_filep17 = bitcast %union.THIRD_UNION* %ou316 to %struct._IO_FILE**
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep17, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  %9 = load %union.rec*, %union.rec** %db.addr, align 8
  %os119 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %10, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.then.14
  %11 = load %union.rec*, %union.rec** %link, align 8
  %12 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp20 = icmp ne %union.rec* %11, %12
  br i1 %cmp20, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %13 = load %union.rec*, %union.rec** %link, align 8
  %os121 = bitcast %union.rec* %13 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %14, %union.rec** %y, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %for.body
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os125 = bitcast %union.rec* %15 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os1126 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1126, i32 0, i32 0
  %16 = load i8, i8* %otype, align 1
  %conv = zext i8 %16 to i32
  %cmp27 = icmp eq i32 %conv, 0
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.24
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred33, align 8
  store %union.rec* %18, %union.rec** %y, align 8
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os134 = bitcast %union.rec* %19 to %struct.word_type*
  %ou135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 1
  %os1136 = bitcast %union.FIRST_UNION* %ou135 to %struct.anon*
  %otype37 = getelementptr inbounds %struct.anon, %struct.anon* %os1136, i32 0, i32 0
  %20 = load i8, i8* %otype37, align 1
  %conv38 = zext i8 %20 to i32
  %cmp39 = icmp eq i32 %conv38, 140
  br i1 %cmp39, label %if.end.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os141 = bitcast %union.rec* %21 to %struct.word_type*
  %ou142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 1
  %os1143 = bitcast %union.FIRST_UNION* %ou142 to %struct.anon*
  %otype44 = getelementptr inbounds %struct.anon, %struct.anon* %os1143, i32 0, i32 0
  %22 = load i8, i8* %otype44, align 1
  %conv45 = zext i8 %22 to i32
  %cmp46 = icmp eq i32 %conv45, 17
  br i1 %cmp46, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call49 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %lor.lhs.false, %for.end
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os151 = bitcast %union.rec* %24 to %struct.word_type*
  %ou152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 1
  %os1153 = bitcast %union.FIRST_UNION* %ou152 to %struct.anon*
  %otype54 = getelementptr inbounds %struct.anon, %struct.anon* %os1153, i32 0, i32 0
  %25 = load i8, i8* %otype54, align 1
  %conv55 = zext i8 %25 to i32
  %cmp56 = icmp ne i32 %conv55, 140
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.50
  br label %for.inc.74

if.end.59:                                        ; preds = %if.end.50
  %26 = load %union.rec*, %union.rec** %db.addr, align 8
  %os160 = bitcast %union.rec* %26 to %struct.word_type*
  %ou361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 3
  %odb_filep62 = bitcast %union.THIRD_UNION* %ou361 to %struct._IO_FILE**
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep62, align 8
  %28 = load %union.rec*, %union.rec** %link, align 8
  %os4 = bitcast %union.rec* %28 to %struct.link_type*
  %odb_targ = getelementptr inbounds %struct.link_type, %struct.link_type* %os4, i32 0, i32 3
  %29 = load i8, i8* %odb_targ, align 1
  %conv63 = zext i8 %29 to i32
  %tobool64 = icmp ne i32 %conv63, 0
  %cond = select i1 %tobool64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)
  %30 = load %union.rec*, %union.rec** %link, align 8
  %os465 = bitcast %union.rec* %30 to %struct.link_type*
  %onumber = getelementptr inbounds %struct.link_type, %struct.link_type* %os465, i32 0, i32 2
  %31 = load i8, i8* %onumber, align 1
  %conv66 = zext i8 %31 to i32
  %32 = load i32, i32* %full_name.addr, align 4
  %tobool67 = icmp ne i32 %32, 0
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.59
  %33 = load %union.rec*, %union.rec** %y, align 8
  %os7 = bitcast %union.rec* %33 to %struct.cr_type*
  %osymb = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 9
  %34 = load %union.rec*, %union.rec** %osymb, align 8
  %call68 = call i8* @FullSymName(%union.rec* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.end.59
  %35 = load %union.rec*, %union.rec** %y, align 8
  %os769 = bitcast %union.rec* %35 to %struct.cr_type*
  %osymb70 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os769, i32 0, i32 9
  %36 = load %union.rec*, %union.rec** %osymb70, align 8
  %call71 = call i8* @SymName(%union.rec* %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond72 = phi i8* [ %call68, %cond.true ], [ %call71, %cond.false ]
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* %cond, i32 %conv66, i8* %cond72)
  br label %for.inc.74

for.inc.74:                                       ; preds = %cond.end, %if.then.58
  %37 = load %union.rec*, %union.rec** %link, align 8
  %os175 = bitcast %union.rec* %37 to %struct.word_type*
  %olist76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist76, i32 0, i64 0
  %osucc78 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx77, i32 0, i32 1
  %38 = load %union.rec*, %union.rec** %osucc78, align 8
  store %union.rec* %38, %union.rec** %link, align 8
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %39 = load %union.rec*, %union.rec** %db.addr, align 8
  %os180 = bitcast %union.rec* %39 to %struct.word_type*
  %ou381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 3
  %odb_filep82 = bitcast %union.THIRD_UNION* %ou381 to %struct._IO_FILE**
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep82, align 8
  %call83 = call i32 @fclose(%struct._IO_FILE* %40)
  %arraydecay84 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  call void @SortFile(i8* %arraydecay84, i8* %arraydecay85)
  br label %if.end.88

if.else:                                          ; preds = %if.end
  %arraydecay86 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %call87 = call i32 @remove(i8* %arraydecay86) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %for.end.79
  %arraydecay89 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %call90 = call i32 @remove(i8* %arraydecay89) #5
  %41 = load %union.rec*, %union.rec** %db.addr, align 8
  store %union.rec* %41, %union.rec** @xx_hold, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.204, %if.end.88
  %42 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os191 = bitcast %union.rec* %42 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 1
  %osucc94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 1
  %43 = load %union.rec*, %union.rec** %osucc94, align 8
  %44 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp95 = icmp ne %union.rec* %43, %44
  br i1 %cmp95, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os197 = bitcast %union.rec* %45 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 1
  %osucc100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 1
  %46 = load %union.rec*, %union.rec** %osucc100, align 8
  store %union.rec* %46, %union.rec** @xx_link, align 8
  %47 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1101 = bitcast %union.rec* %48 to %struct.word_type*
  %olist102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist102, i32 0, i64 1
  %osucc104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx103, i32 0, i32 1
  %49 = load %union.rec*, %union.rec** %osucc104, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp105 = icmp eq %union.rec* %49, %50
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %while.body
  br label %cond.end.137

cond.false.108:                                   ; preds = %while.body
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1109 = bitcast %union.rec* %51 to %struct.word_type*
  %olist110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist110, i32 0, i64 1
  %osucc112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx111, i32 0, i32 1
  %52 = load %union.rec*, %union.rec** %osucc112, align 8
  store %union.rec* %52, %union.rec** @zz_res, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1113 = bitcast %union.rec* %53 to %struct.word_type*
  %olist114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist114, i32 0, i64 1
  %opred116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx115, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %opred116, align 8
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1117 = bitcast %union.rec* %55 to %struct.word_type*
  %olist118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist118, i32 0, i64 1
  %opred120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx119, i32 0, i32 0
  store %union.rec* %54, %union.rec** %opred120, align 8
  %56 = load %union.rec*, %union.rec** @zz_res, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1121 = bitcast %union.rec* %57 to %struct.word_type*
  %olist122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist122, i32 0, i64 1
  %opred124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx123, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred124, align 8
  %os1125 = bitcast %union.rec* %58 to %struct.word_type*
  %olist126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist126, i32 0, i64 1
  %osucc128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx127, i32 0, i32 1
  store %union.rec* %56, %union.rec** %osucc128, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1129 = bitcast %union.rec* %60 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 1
  %osucc132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 1
  store %union.rec* %59, %union.rec** %osucc132, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1133 = bitcast %union.rec* %61 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 1
  %opred136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 0
  store %union.rec* %59, %union.rec** %opred136, align 8
  %62 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.108, %cond.true.107
  %cond138 = phi %union.rec* [ null, %cond.true.107 ], [ %62, %cond.false.108 ]
  %63 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %63, %union.rec** @zz_hold, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1139 = bitcast %union.rec* %64 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 0
  %osucc142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 1
  %65 = load %union.rec*, %union.rec** %osucc142, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp143 = icmp eq %union.rec* %65, %66
  br i1 %cmp143, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %cond.end.137
  br label %cond.end.175

cond.false.146:                                   ; preds = %cond.end.137
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1147 = bitcast %union.rec* %67 to %struct.word_type*
  %olist148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist148, i32 0, i64 0
  %osucc150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx149, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc150, align 8
  store %union.rec* %68, %union.rec** @zz_res, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1151 = bitcast %union.rec* %69 to %struct.word_type*
  %olist152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist152, i32 0, i64 0
  %opred154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx153, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %opred154, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1155 = bitcast %union.rec* %71 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 0
  %opred158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 0
  store %union.rec* %70, %union.rec** %opred158, align 8
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1159 = bitcast %union.rec* %73 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 0
  %opred162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 0
  %74 = load %union.rec*, %union.rec** %opred162, align 8
  %os1163 = bitcast %union.rec* %74 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 0
  %osucc166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc166, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %76 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 0
  %osucc170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 1
  store %union.rec* %75, %union.rec** %osucc170, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1171 = bitcast %union.rec* %77 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %opred174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 0
  store %union.rec* %75, %union.rec** %opred174, align 8
  %78 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.146, %cond.true.145
  %cond176 = phi %union.rec* [ null, %cond.true.145 ], [ %78, %cond.false.146 ]
  %79 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %79, %union.rec** @zz_hold, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1177 = bitcast %union.rec* %81 to %struct.word_type*
  %ou1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 1
  %os11179 = bitcast %union.FIRST_UNION* %ou1178 to %struct.anon*
  %otype180 = getelementptr inbounds %struct.anon, %struct.anon* %os11179, i32 0, i32 0
  %82 = load i8, i8* %otype180, align 1
  %conv181 = zext i8 %82 to i32
  %cmp182 = icmp eq i32 %conv181, 11
  br i1 %cmp182, label %cond.true.192, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %cond.end.175
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1185 = bitcast %union.rec* %83 to %struct.word_type*
  %ou1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 1
  %os11187 = bitcast %union.FIRST_UNION* %ou1186 to %struct.anon*
  %otype188 = getelementptr inbounds %struct.anon, %struct.anon* %os11187, i32 0, i32 0
  %84 = load i8, i8* %otype188, align 1
  %conv189 = zext i8 %84 to i32
  %cmp190 = icmp eq i32 %conv189, 12
  br i1 %cmp190, label %cond.true.192, label %cond.false.197

cond.true.192:                                    ; preds = %lor.lhs.false.184, %cond.end.175
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %85 to %struct.word_type*
  %ou1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 1
  %os11195 = bitcast %union.FIRST_UNION* %ou1194 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11195, i32 0, i32 1
  %86 = load i8, i8* %orec_size, align 1
  %conv196 = zext i8 %86 to i32
  br label %cond.end.204

cond.false.197:                                   ; preds = %lor.lhs.false.184
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1198 = bitcast %union.rec* %87 to %struct.word_type*
  %ou1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 1
  %os11200 = bitcast %union.FIRST_UNION* %ou1199 to %struct.anon*
  %otype201 = getelementptr inbounds %struct.anon, %struct.anon* %os11200, i32 0, i32 0
  %88 = load i8, i8* %otype201, align 1
  %idxprom = zext i8 %88 to i64
  %arrayidx202 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %89 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %89 to i32
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.197, %cond.true.192
  %cond205 = phi i32 [ %conv196, %cond.true.192 ], [ %conv203, %cond.false.197 ]
  store i32 %cond205, i32* @zz_size, align 4
  %90 = load i32, i32* @zz_size, align 4
  %idxprom206 = sext i32 %90 to i64
  %arrayidx207 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom206
  %91 = load %union.rec*, %union.rec** %arrayidx207, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1208 = bitcast %union.rec* %92 to %struct.word_type*
  %olist209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist209, i32 0, i64 0
  %opred211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx210, i32 0, i32 0
  store %union.rec* %91, %union.rec** %opred211, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %94 = load i32, i32* @zz_size, align 4
  %idxprom212 = sext i32 %94 to i64
  %arrayidx213 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom212
  store %union.rec* %93, %union.rec** %arrayidx213, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.214

while.cond.214:                                   ; preds = %cond.end.331, %while.end
  %95 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1215 = bitcast %union.rec* %95 to %struct.word_type*
  %olist216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist216, i32 0, i64 0
  %osucc218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx217, i32 0, i32 1
  %96 = load %union.rec*, %union.rec** %osucc218, align 8
  %97 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp219 = icmp ne %union.rec* %96, %97
  br i1 %cmp219, label %while.body.221, label %while.end.341

while.body.221:                                   ; preds = %while.cond.214
  %98 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1222 = bitcast %union.rec* %98 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 0
  %osucc225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 1
  %99 = load %union.rec*, %union.rec** %osucc225, align 8
  store %union.rec* %99, %union.rec** @xx_link, align 8
  %100 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %100, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1226 = bitcast %union.rec* %101 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %osucc229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 1
  %102 = load %union.rec*, %union.rec** %osucc229, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp230 = icmp eq %union.rec* %102, %103
  br i1 %cmp230, label %cond.true.232, label %cond.false.233

cond.true.232:                                    ; preds = %while.body.221
  br label %cond.end.262

cond.false.233:                                   ; preds = %while.body.221
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1234 = bitcast %union.rec* %104 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 1
  %osucc237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 1
  %105 = load %union.rec*, %union.rec** %osucc237, align 8
  store %union.rec* %105, %union.rec** @zz_res, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1238 = bitcast %union.rec* %106 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 1
  %opred241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 0
  %107 = load %union.rec*, %union.rec** %opred241, align 8
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1242 = bitcast %union.rec* %108 to %struct.word_type*
  %olist243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist243, i32 0, i64 1
  %opred245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx244, i32 0, i32 0
  store %union.rec* %107, %union.rec** %opred245, align 8
  %109 = load %union.rec*, %union.rec** @zz_res, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1246 = bitcast %union.rec* %110 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 1
  %opred249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %opred249, align 8
  %os1250 = bitcast %union.rec* %111 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 1
  %osucc253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 1
  store %union.rec* %109, %union.rec** %osucc253, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1254 = bitcast %union.rec* %113 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 1
  %osucc257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 1
  store %union.rec* %112, %union.rec** %osucc257, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1258 = bitcast %union.rec* %114 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 1
  %opred261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 0
  store %union.rec* %112, %union.rec** %opred261, align 8
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.false.233, %cond.true.232
  %cond263 = phi %union.rec* [ null, %cond.true.232 ], [ %115, %cond.false.233 ]
  %116 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %116, %union.rec** @zz_hold, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1264 = bitcast %union.rec* %117 to %struct.word_type*
  %olist265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist265, i32 0, i64 0
  %osucc267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx266, i32 0, i32 1
  %118 = load %union.rec*, %union.rec** %osucc267, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp268 = icmp eq %union.rec* %118, %119
  br i1 %cmp268, label %cond.true.270, label %cond.false.271

cond.true.270:                                    ; preds = %cond.end.262
  br label %cond.end.300

cond.false.271:                                   ; preds = %cond.end.262
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1272 = bitcast %union.rec* %120 to %struct.word_type*
  %olist273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist273, i32 0, i64 0
  %osucc275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx274, i32 0, i32 1
  %121 = load %union.rec*, %union.rec** %osucc275, align 8
  store %union.rec* %121, %union.rec** @zz_res, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1276 = bitcast %union.rec* %122 to %struct.word_type*
  %olist277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist277, i32 0, i64 0
  %opred279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx278, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred279, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1280 = bitcast %union.rec* %124 to %struct.word_type*
  %olist281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist281, i32 0, i64 0
  %opred283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx282, i32 0, i32 0
  store %union.rec* %123, %union.rec** %opred283, align 8
  %125 = load %union.rec*, %union.rec** @zz_res, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1284 = bitcast %union.rec* %126 to %struct.word_type*
  %olist285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist285, i32 0, i64 0
  %opred287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx286, i32 0, i32 0
  %127 = load %union.rec*, %union.rec** %opred287, align 8
  %os1288 = bitcast %union.rec* %127 to %struct.word_type*
  %olist289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist289, i32 0, i64 0
  %osucc291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx290, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc291, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1292 = bitcast %union.rec* %129 to %struct.word_type*
  %olist293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist293, i32 0, i64 0
  %osucc295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx294, i32 0, i32 1
  store %union.rec* %128, %union.rec** %osucc295, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1296 = bitcast %union.rec* %130 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 0
  %opred299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 0
  store %union.rec* %128, %union.rec** %opred299, align 8
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.false.271, %cond.true.270
  %cond301 = phi %union.rec* [ null, %cond.true.270 ], [ %131, %cond.false.271 ]
  %132 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %132, %union.rec** @zz_hold, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1302 = bitcast %union.rec* %134 to %struct.word_type*
  %ou1303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1302, i32 0, i32 1
  %os11304 = bitcast %union.FIRST_UNION* %ou1303 to %struct.anon*
  %otype305 = getelementptr inbounds %struct.anon, %struct.anon* %os11304, i32 0, i32 0
  %135 = load i8, i8* %otype305, align 1
  %conv306 = zext i8 %135 to i32
  %cmp307 = icmp eq i32 %conv306, 11
  br i1 %cmp307, label %cond.true.317, label %lor.lhs.false.309

lor.lhs.false.309:                                ; preds = %cond.end.300
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1310 = bitcast %union.rec* %136 to %struct.word_type*
  %ou1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1310, i32 0, i32 1
  %os11312 = bitcast %union.FIRST_UNION* %ou1311 to %struct.anon*
  %otype313 = getelementptr inbounds %struct.anon, %struct.anon* %os11312, i32 0, i32 0
  %137 = load i8, i8* %otype313, align 1
  %conv314 = zext i8 %137 to i32
  %cmp315 = icmp eq i32 %conv314, 12
  br i1 %cmp315, label %cond.true.317, label %cond.false.323

cond.true.317:                                    ; preds = %lor.lhs.false.309, %cond.end.300
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1318 = bitcast %union.rec* %138 to %struct.word_type*
  %ou1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1318, i32 0, i32 1
  %os11320 = bitcast %union.FIRST_UNION* %ou1319 to %struct.anon*
  %orec_size321 = getelementptr inbounds %struct.anon, %struct.anon* %os11320, i32 0, i32 1
  %139 = load i8, i8* %orec_size321, align 1
  %conv322 = zext i8 %139 to i32
  br label %cond.end.331

cond.false.323:                                   ; preds = %lor.lhs.false.309
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1324 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1324, i32 0, i32 1
  %os11326 = bitcast %union.FIRST_UNION* %ou1325 to %struct.anon*
  %otype327 = getelementptr inbounds %struct.anon, %struct.anon* %os11326, i32 0, i32 0
  %141 = load i8, i8* %otype327, align 1
  %idxprom328 = zext i8 %141 to i64
  %arrayidx329 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom328
  %142 = load i8, i8* %arrayidx329, align 1
  %conv330 = zext i8 %142 to i32
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.323, %cond.true.317
  %cond332 = phi i32 [ %conv322, %cond.true.317 ], [ %conv330, %cond.false.323 ]
  store i32 %cond332, i32* @zz_size, align 4
  %143 = load i32, i32* @zz_size, align 4
  %idxprom333 = sext i32 %143 to i64
  %arrayidx334 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom333
  %144 = load %union.rec*, %union.rec** %arrayidx334, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1335 = bitcast %union.rec* %145 to %struct.word_type*
  %olist336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist336, i32 0, i64 0
  %opred338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx337, i32 0, i32 0
  store %union.rec* %144, %union.rec** %opred338, align 8
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %147 = load i32, i32* @zz_size, align 4
  %idxprom339 = sext i32 %147 to i64
  %arrayidx340 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom339
  store %union.rec* %146, %union.rec** %arrayidx340, align 8
  br label %while.cond.214

while.end.341:                                    ; preds = %while.cond.214
  %148 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %148, %union.rec** @zz_hold, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %149, %union.rec** @zz_hold, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1342 = bitcast %union.rec* %150 to %struct.word_type*
  %ou1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1342, i32 0, i32 1
  %os11344 = bitcast %union.FIRST_UNION* %ou1343 to %struct.anon*
  %otype345 = getelementptr inbounds %struct.anon, %struct.anon* %os11344, i32 0, i32 0
  %151 = load i8, i8* %otype345, align 1
  %conv346 = zext i8 %151 to i32
  %cmp347 = icmp eq i32 %conv346, 11
  br i1 %cmp347, label %cond.true.357, label %lor.lhs.false.349

lor.lhs.false.349:                                ; preds = %while.end.341
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1350 = bitcast %union.rec* %152 to %struct.word_type*
  %ou1351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 1
  %os11352 = bitcast %union.FIRST_UNION* %ou1351 to %struct.anon*
  %otype353 = getelementptr inbounds %struct.anon, %struct.anon* %os11352, i32 0, i32 0
  %153 = load i8, i8* %otype353, align 1
  %conv354 = zext i8 %153 to i32
  %cmp355 = icmp eq i32 %conv354, 12
  br i1 %cmp355, label %cond.true.357, label %cond.false.363

cond.true.357:                                    ; preds = %lor.lhs.false.349, %while.end.341
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1358 = bitcast %union.rec* %154 to %struct.word_type*
  %ou1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1358, i32 0, i32 1
  %os11360 = bitcast %union.FIRST_UNION* %ou1359 to %struct.anon*
  %orec_size361 = getelementptr inbounds %struct.anon, %struct.anon* %os11360, i32 0, i32 1
  %155 = load i8, i8* %orec_size361, align 1
  %conv362 = zext i8 %155 to i32
  br label %cond.end.371

cond.false.363:                                   ; preds = %lor.lhs.false.349
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1364 = bitcast %union.rec* %156 to %struct.word_type*
  %ou1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 1
  %os11366 = bitcast %union.FIRST_UNION* %ou1365 to %struct.anon*
  %otype367 = getelementptr inbounds %struct.anon, %struct.anon* %os11366, i32 0, i32 0
  %157 = load i8, i8* %otype367, align 1
  %idxprom368 = zext i8 %157 to i64
  %arrayidx369 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom368
  %158 = load i8, i8* %arrayidx369, align 1
  %conv370 = zext i8 %158 to i32
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.363, %cond.true.357
  %cond372 = phi i32 [ %conv362, %cond.true.357 ], [ %conv370, %cond.false.363 ]
  store i32 %cond372, i32* @zz_size, align 4
  %159 = load i32, i32* @zz_size, align 4
  %idxprom373 = sext i32 %159 to i64
  %arrayidx374 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom373
  %160 = load %union.rec*, %union.rec** %arrayidx374, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1375 = bitcast %union.rec* %161 to %struct.word_type*
  %olist376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1375, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist376, i32 0, i64 0
  %opred378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx377, i32 0, i32 0
  store %union.rec* %160, %union.rec** %opred378, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %163 = load i32, i32* @zz_size, align 4
  %idxprom379 = sext i32 %163 to i64
  %arrayidx380 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom379
  store %union.rec* %162, %union.rec** %arrayidx380, align 8
  ret void
}

declare i8* @FullSymName(%union.rec*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @SortFile(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #3

; Function Attrs: nounwind uwtable
define void @DbClose(%union.rec* %db) #0 {
entry:
  %db.addr = alloca %union.rec*, align 8
  store %union.rec* %db, %union.rec** %db.addr, align 8
  %0 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os24 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.3*
  %oin_memory = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24, i32 0, i32 2
  %2 = load i8, i8* %oin_memory, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %3 = load %union.rec*, %union.rec** %db.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 3
  %odb_filep = bitcast %union.THIRD_UNION* %ou3 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep, align 8
  %cmp3 = icmp ne %struct._IO_FILE* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  %5 = load %union.rec*, %union.rec** %db.addr, align 8
  %os14 = bitcast %union.rec* %5 to %struct.word_type*
  %ou35 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 3
  %odb_filep6 = bitcast %union.THIRD_UNION* %ou35 to %struct._IO_FILE**
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep6, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %6)
  %7 = load %union.rec*, %union.rec** %db.addr, align 8
  %os17 = bitcast %union.rec* %7 to %struct.word_type*
  %ou38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 3
  %odb_filep9 = bitcast %union.THIRD_UNION* %ou38 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %odb_filep9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.1, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @DbLoad(%union.rec* %stem, i32 %fpath, i32 %create, %union.rec* %symbs, i32 %in_mem) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %stem.addr = alloca %union.rec*, align 8
  %fpath.addr = alloca i32, align 4
  %create.addr = alloca i32, align 4
  %symbs.addr = alloca %union.rec*, align 8
  %in_mem.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %db = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %lnum = alloca i32, align 4
  %dlnum = alloca i32, align 4
  %num = alloca i32, align 4
  %count = alloca i32, align 4
  %leftp = alloca i32, align 4
  %index_fnum = alloca i16, align 2
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %gall = alloca i32, align 4
  %line = alloca [512 x i8], align 16
  %sym_name = alloca [512 x i8], align 16
  %gotline = alloca i8*, align 8
  %len = alloca i32, align 4
  store %union.rec* %stem, %union.rec** %stem.addr, align 8
  store i32 %fpath, i32* %fpath.addr, align 4
  store i32 %create, i32* %create.addr, align 4
  store %union.rec* %symbs, %union.rec** %symbs.addr, align 8
  store i32 %in_mem, i32* %in_mem.addr, align 4
  %0 = load %union.rec*, %union.rec** %stem.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %1 = load %union.rec*, %union.rec** %stem.addr, align 8
  %os11 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %2 = load i32, i32* %fpath.addr, align 4
  %call = call zeroext i16 @DefineFile(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), %struct.FILE_POS* %ofpos, i32 4, i32 %2)
  store i16 %call, i16* %index_fnum, align 2
  %3 = load i16, i16* %index_fnum, align 2
  %4 = load i32, i32* %create.addr, align 4
  %call2 = call %struct._IO_FILE* @OpenFile(i16 zeroext %3, i32 %4, i32 0)
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i8* @fgets(i8* %arraydecay3, i32 512, %struct._IO_FILE* %6)
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 3
  %call6 = call i32 @StringBeginsWith(i8* %arrayidx, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load i16, i16* %index_fnum, align 2
  %call8 = call i8* @FileName(i16 zeroext %7)
  %call9 = call i32 @remove(i8* %call8) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %lor.lhs.false
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.330

land.lhs.true:                                    ; preds = %if.end.10
  %9 = load i32, i32* %create.addr, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %if.then.13, label %if.end.330

if.then.13:                                       ; preds = %land.lhs.true
  store %union.rec* null, %union.rec** %db, align 8
  %10 = load %union.rec*, %union.rec** %stem.addr, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %ostring15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 4
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring15, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %stem.addr, align 8
  %os117 = bitcast %union.rec* %11 to %struct.word_type*
  %ou118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 1
  %ofpos19 = bitcast %union.FIRST_UNION* %ou118 to %struct.FILE_POS*
  %12 = load i32, i32* %fpath.addr, align 4
  %call20 = call zeroext i16 @DefineFile(i8* %arraydecay16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %ofpos19, i32 3, i32 %12)
  store i16 %call20, i16* %dfnum, align 2
  store i64 0, i64* %dfpos, align 8
  %13 = load i16, i16* %dfnum, align 2
  call void @LexPush(i16 zeroext %13, i32 0, i32 3, i32 1, i32 0)
  %call21 = call %union.rec* @LexGetToken()
  store %union.rec* %call21, %union.rec** %t, align 8
  %14 = load %union.rec*, %union.rec** %t, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %ofpos24 = bitcast %union.FIRST_UNION* %ou123 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos24, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  store i32 %bf.clear, i32* %dlnum, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.255, %if.then.13
  %15 = load %union.rec*, %union.rec** %t, align 8
  %os125 = bitcast %union.rec* %15 to %struct.word_type*
  %ou126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os1127 = bitcast %union.FIRST_UNION* %ou126 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1127, i32 0, i32 0
  %16 = load i8, i8* %otype, align 1
  %conv = zext i8 %16 to i32
  %cmp28 = icmp eq i32 %conv, 102
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %union.rec*, %union.rec** @StartSym, align 8
  %call30 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %17, i32 0, i32 0)
  store %union.rec* %call30, %union.rec** %res, align 8
  %18 = load %union.rec*, %union.rec** %t, align 8
  %cmp31 = icmp ne %union.rec* %18, null
  br i1 %cmp31, label %if.then.41, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %while.body
  %19 = load %union.rec*, %union.rec** %res, align 8
  %os134 = bitcast %union.rec* %19 to %struct.word_type*
  %ou135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 1
  %os1136 = bitcast %union.FIRST_UNION* %ou135 to %struct.anon*
  %otype37 = getelementptr inbounds %struct.anon, %struct.anon* %os1136, i32 0, i32 0
  %20 = load i8, i8* %otype37, align 1
  %conv38 = zext i8 %20 to i32
  %cmp39 = icmp ne i32 %conv38, 2
  br i1 %cmp39, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %lor.lhs.false.33, %while.body
  %21 = load %union.rec*, %union.rec** %res, align 8
  %os142 = bitcast %union.rec* %21 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %ofpos44 = bitcast %union.FIRST_UNION* %ou143 to %struct.FILE_POS*
  %22 = load i16, i16* %dfnum, align 2
  %call45 = call i8* @FileName(i16 zeroext %22)
  %call46 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos44, i8* %call45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.41, %lor.lhs.false.33
  %23 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %cmp48 = icmp ne %union.rec* %23, null
  br i1 %cmp48, label %if.end.52, label %if.then.50

if.then.50:                                       ; preds = %if.end.47
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call51 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %25 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %cmp53 = icmp ne %union.rec* %25, null
  br i1 %cmp53, label %if.then.55, label %if.end.107

if.then.55:                                       ; preds = %if.end.52
  %26 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %os156 = bitcast %union.rec* %26 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 1
  %27 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %27, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.then.55
  %28 = load %union.rec*, %union.rec** %link, align 8
  %29 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %cmp58 = icmp ne %union.rec* %28, %29
  br i1 %cmp58, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %30 = load %union.rec*, %union.rec** %link, align 8
  %os160 = bitcast %union.rec* %30 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %31, %union.rec** %y, align 8
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc, %for.body
  %32 = load %union.rec*, %union.rec** %y, align 8
  %os164 = bitcast %union.rec* %32 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %os1166 = bitcast %union.FIRST_UNION* %ou165 to %struct.anon*
  %otype67 = getelementptr inbounds %struct.anon, %struct.anon* %os1166, i32 0, i32 0
  %33 = load i8, i8* %otype67, align 1
  %conv68 = zext i8 %33 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.63
  br label %for.inc

for.inc:                                          ; preds = %for.body.71
  %34 = load %union.rec*, %union.rec** %y, align 8
  %os172 = bitcast %union.rec* %34 to %struct.word_type*
  %olist73 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist73, i32 0, i64 1
  %opred75 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx74, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred75, align 8
  store %union.rec* %35, %union.rec** %y, align 8
  br label %for.cond.63

for.end:                                          ; preds = %for.cond.63
  %36 = load %union.rec*, %union.rec** %y, align 8
  %os176 = bitcast %union.rec* %36 to %struct.word_type*
  %ou177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 1
  %os1178 = bitcast %union.FIRST_UNION* %ou177 to %struct.anon*
  %otype79 = getelementptr inbounds %struct.anon, %struct.anon* %os1178, i32 0, i32 0
  %37 = load i8, i8* %otype79, align 1
  %conv80 = zext i8 %37 to i32
  %cmp81 = icmp eq i32 %conv80, 2
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.89

land.lhs.true.83:                                 ; preds = %for.end
  %38 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %38 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %39 = load %union.rec*, %union.rec** %oactual, align 8
  %40 = load %union.rec*, %union.rec** %res, align 8
  %os284 = bitcast %union.rec* %40 to %struct.closure_type*
  %oactual85 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os284, i32 0, i32 5
  %41 = load %union.rec*, %union.rec** %oactual85, align 8
  %cmp86 = icmp eq %union.rec* %39, %41
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true.83
  br label %for.end.95

if.end.89:                                        ; preds = %land.lhs.true.83, %for.end
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %42 = load %union.rec*, %union.rec** %link, align 8
  %os191 = bitcast %union.rec* %42 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 0
  %osucc94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 1
  %43 = load %union.rec*, %union.rec** %osucc94, align 8
  store %union.rec* %43, %union.rec** %link, align 8
  br label %for.cond

for.end.95:                                       ; preds = %if.then.88, %for.cond
  %44 = load %union.rec*, %union.rec** %link, align 8
  %45 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %cmp96 = icmp eq %union.rec* %44, %45
  br i1 %cmp96, label %if.then.98, label %if.end.106

if.then.98:                                       ; preds = %for.end.95
  %46 = load %union.rec*, %union.rec** %res, align 8
  %os199 = bitcast %union.rec* %46 to %struct.word_type*
  %ou1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 1
  %ofpos101 = bitcast %union.FIRST_UNION* %ou1100 to %struct.FILE_POS*
  %47 = load %union.rec*, %union.rec** %res, align 8
  %os2102 = bitcast %union.rec* %47 to %struct.closure_type*
  %oactual103 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2102, i32 0, i32 5
  %48 = load %union.rec*, %union.rec** %oactual103, align 8
  %call104 = call i8* @SymName(%union.rec* %48)
  %call105 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos101, i8* %call104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.98, %for.end.95
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.52
  store %union.rec* null, %union.rec** %tag, align 8
  %49 = load %union.rec*, %union.rec** %res, align 8
  %os1108 = bitcast %union.rec* %49 to %struct.word_type*
  %olist109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist109, i32 0, i64 0
  %osucc111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx110, i32 0, i32 1
  %50 = load %union.rec*, %union.rec** %osucc111, align 8
  store %union.rec* %50, %union.rec** %link, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.182, %if.end.107
  %51 = load %union.rec*, %union.rec** %link, align 8
  %52 = load %union.rec*, %union.rec** %res, align 8
  %cmp113 = icmp ne %union.rec* %51, %52
  br i1 %cmp113, label %for.body.115, label %for.end.187

for.body.115:                                     ; preds = %for.cond.112
  %53 = load %union.rec*, %union.rec** %link, align 8
  %os1116 = bitcast %union.rec* %53 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 1
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %opred119, align 8
  store %union.rec* %54, %union.rec** %par, align 8
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.129, %for.body.115
  %55 = load %union.rec*, %union.rec** %par, align 8
  %os1121 = bitcast %union.rec* %55 to %struct.word_type*
  %ou1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 1
  %os11123 = bitcast %union.FIRST_UNION* %ou1122 to %struct.anon*
  %otype124 = getelementptr inbounds %struct.anon, %struct.anon* %os11123, i32 0, i32 0
  %56 = load i8, i8* %otype124, align 1
  %conv125 = zext i8 %56 to i32
  %cmp126 = icmp eq i32 %conv125, 0
  br i1 %cmp126, label %for.body.128, label %for.end.134

for.body.128:                                     ; preds = %for.cond.120
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.128
  %57 = load %union.rec*, %union.rec** %par, align 8
  %os1130 = bitcast %union.rec* %57 to %struct.word_type*
  %olist131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist131, i32 0, i64 1
  %opred133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx132, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred133, align 8
  store %union.rec* %58, %union.rec** %par, align 8
  br label %for.cond.120

for.end.134:                                      ; preds = %for.cond.120
  %59 = load %union.rec*, %union.rec** %par, align 8
  %os1135 = bitcast %union.rec* %59 to %struct.word_type*
  %ou1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 1
  %os11137 = bitcast %union.FIRST_UNION* %ou1136 to %struct.anon*
  %otype138 = getelementptr inbounds %struct.anon, %struct.anon* %os11137, i32 0, i32 0
  %60 = load i8, i8* %otype138, align 1
  %conv139 = zext i8 %60 to i32
  %cmp140 = icmp eq i32 %conv139, 10
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.181

land.lhs.true.142:                                ; preds = %for.end.134
  %61 = load %union.rec*, %union.rec** %par, align 8
  %os2143 = bitcast %union.rec* %61 to %struct.closure_type*
  %oactual144 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2143, i32 0, i32 5
  %62 = load %union.rec*, %union.rec** %oactual144, align 8
  %os1145 = bitcast %union.rec* %62 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ois_tag = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %63 = bitcast [3 x i8]* %ois_tag to i24*
  %bf.load146 = load i24, i24* %63, align 1
  %bf.clear147 = and i24 %bf.load146, 1
  %bf.cast = zext i24 %bf.clear147 to i32
  %tobool148 = icmp ne i32 %bf.cast, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.181

land.lhs.true.149:                                ; preds = %land.lhs.true.142
  %64 = load %union.rec*, %union.rec** %par, align 8
  %os1150 = bitcast %union.rec* %64 to %struct.word_type*
  %olist151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist151, i32 0, i64 0
  %osucc153 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx152, i32 0, i32 1
  %65 = load %union.rec*, %union.rec** %osucc153, align 8
  %66 = load %union.rec*, %union.rec** %par, align 8
  %cmp154 = icmp ne %union.rec* %65, %66
  br i1 %cmp154, label %if.then.156, label %if.end.181

if.then.156:                                      ; preds = %land.lhs.true.149
  %67 = load %union.rec*, %union.rec** %par, align 8
  %os1157 = bitcast %union.rec* %67 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 0
  %osucc160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc160, align 8
  %os1161 = bitcast %union.rec* %68 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 1
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred164, align 8
  store %union.rec* %69, %union.rec** %tag, align 8
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.175, %if.then.156
  %70 = load %union.rec*, %union.rec** %tag, align 8
  %os1167 = bitcast %union.rec* %70 to %struct.word_type*
  %ou1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 1
  %os11169 = bitcast %union.FIRST_UNION* %ou1168 to %struct.anon*
  %otype170 = getelementptr inbounds %struct.anon, %struct.anon* %os11169, i32 0, i32 0
  %71 = load i8, i8* %otype170, align 1
  %conv171 = zext i8 %71 to i32
  %cmp172 = icmp eq i32 %conv171, 0
  br i1 %cmp172, label %for.body.174, label %for.end.180

for.body.174:                                     ; preds = %for.cond.165
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.174
  %72 = load %union.rec*, %union.rec** %tag, align 8
  %os1176 = bitcast %union.rec* %72 to %struct.word_type*
  %olist177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist177, i32 0, i64 1
  %opred179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx178, i32 0, i32 0
  %73 = load %union.rec*, %union.rec** %opred179, align 8
  store %union.rec* %73, %union.rec** %tag, align 8
  br label %for.cond.165

for.end.180:                                      ; preds = %for.cond.165
  br label %for.end.187

if.end.181:                                       ; preds = %land.lhs.true.149, %land.lhs.true.142, %for.end.134
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %74 = load %union.rec*, %union.rec** %link, align 8
  %os1183 = bitcast %union.rec* %74 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 0
  %osucc186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 1
  %75 = load %union.rec*, %union.rec** %osucc186, align 8
  store %union.rec* %75, %union.rec** %link, align 8
  br label %for.cond.112

for.end.187:                                      ; preds = %for.end.180, %for.cond.112
  %76 = load %union.rec*, %union.rec** %tag, align 8
  %cmp188 = icmp eq %union.rec* %76, null
  br i1 %cmp188, label %if.then.190, label %if.end.198

if.then.190:                                      ; preds = %for.end.187
  %77 = load %union.rec*, %union.rec** %res, align 8
  %os1191 = bitcast %union.rec* %77 to %struct.word_type*
  %ou1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 1
  %ofpos193 = bitcast %union.FIRST_UNION* %ou1192 to %struct.FILE_POS*
  %78 = load %union.rec*, %union.rec** %res, align 8
  %os2194 = bitcast %union.rec* %78 to %struct.closure_type*
  %oactual195 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2194, i32 0, i32 5
  %79 = load %union.rec*, %union.rec** %oactual195, align 8
  %call196 = call i8* @SymName(%union.rec* %79)
  %call197 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos193, i8* %call196)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.190, %for.end.187
  %80 = load %union.rec*, %union.rec** %tag, align 8
  %call199 = call %union.rec* @ReplaceWithTidy(%union.rec* %80, i32 1)
  store %union.rec* %call199, %union.rec** %tag, align 8
  %81 = load %union.rec*, %union.rec** %tag, align 8
  %os1200 = bitcast %union.rec* %81 to %struct.word_type*
  %ou1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 1
  %os11202 = bitcast %union.FIRST_UNION* %ou1201 to %struct.anon*
  %otype203 = getelementptr inbounds %struct.anon, %struct.anon* %os11202, i32 0, i32 0
  %82 = load i8, i8* %otype203, align 1
  %conv204 = zext i8 %82 to i32
  %cmp205 = icmp eq i32 %conv204, 11
  br i1 %cmp205, label %if.end.220, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %if.end.198
  %83 = load %union.rec*, %union.rec** %tag, align 8
  %os1208 = bitcast %union.rec* %83 to %struct.word_type*
  %ou1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 1
  %os11210 = bitcast %union.FIRST_UNION* %ou1209 to %struct.anon*
  %otype211 = getelementptr inbounds %struct.anon, %struct.anon* %os11210, i32 0, i32 0
  %84 = load i8, i8* %otype211, align 1
  %conv212 = zext i8 %84 to i32
  %cmp213 = icmp eq i32 %conv212, 12
  br i1 %cmp213, label %if.end.220, label %if.then.215

if.then.215:                                      ; preds = %lor.lhs.false.207
  %85 = load %union.rec*, %union.rec** %res, align 8
  %os1216 = bitcast %union.rec* %85 to %struct.word_type*
  %ou1217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 1
  %ofpos218 = bitcast %union.FIRST_UNION* %ou1217 to %struct.FILE_POS*
  %call219 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos218)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.215, %lor.lhs.false.207, %if.end.198
  %86 = load %union.rec*, %union.rec** %tag, align 8
  %os1221 = bitcast %union.rec* %86 to %struct.word_type*
  %ostring222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 4
  %arraydecay223 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring222, i32 0, i32 0
  %call224 = call i32 @strcmp(i8* %arraydecay223, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #4
  %cmp225 = icmp eq i32 %call224, 0
  br i1 %cmp225, label %if.then.227, label %if.end.232

if.then.227:                                      ; preds = %if.end.220
  %87 = load %union.rec*, %union.rec** %res, align 8
  %os1228 = bitcast %union.rec* %87 to %struct.word_type*
  %ou1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 1
  %ofpos230 = bitcast %union.FIRST_UNION* %ou1229 to %struct.FILE_POS*
  %call231 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos230)
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.227, %if.end.220
  %88 = load %union.rec*, %union.rec** %db, align 8
  %cmp233 = icmp eq %union.rec* %88, null
  br i1 %cmp233, label %if.then.235, label %if.end.255

if.then.235:                                      ; preds = %if.end.232
  %arraydecay236 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %89 = load i16, i16* %dfnum, align 2
  %call237 = call i8* @FileName(i16 zeroext %89)
  %call238 = call i8* @strcpy(i8* %arraydecay236, i8* %call237) #5
  %arraydecay239 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %call240 = call i64 @strlen(i8* %arraydecay239) #4
  %sub = sub i64 %call240, 3
  %conv241 = trunc i64 %sub to i32
  store i32 %conv241, i32* %i, align 4
  %90 = load i32, i32* %i, align 4
  %cmp242 = icmp sgt i32 %90, 0
  br i1 %cmp242, label %if.end.246, label %if.then.244

if.then.244:                                      ; preds = %if.then.235
  %91 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call245 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.244, %if.then.235
  %92 = load i32, i32* %i, align 4
  %idxprom = sext i32 %92 to i64
  %arrayidx247 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom
  %call248 = call i8* @strcpy(i8* %arrayidx247, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  %arraydecay249 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %93 = load %union.rec*, %union.rec** %stem.addr, align 8
  %os1250 = bitcast %union.rec* %93 to %struct.word_type*
  %ou1251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 1
  %ofpos252 = bitcast %union.FIRST_UNION* %ou1251 to %struct.FILE_POS*
  %call253 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay249, %struct.FILE_POS* %ofpos252)
  %call254 = call %union.rec* @DbCreate(%union.rec* %call253)
  store %union.rec* %call254, %union.rec** %db, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.246, %if.end.232
  %94 = load %union.rec*, %union.rec** %db, align 8
  %95 = load %union.rec*, %union.rec** %res, align 8
  %os2256 = bitcast %union.rec* %95 to %struct.closure_type*
  %oactual257 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2256, i32 0, i32 5
  %96 = load %union.rec*, %union.rec** %oactual257, align 8
  %97 = load %union.rec*, %union.rec** %tag, align 8
  %os1258 = bitcast %union.rec* %97 to %struct.word_type*
  %ostring259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 4
  %arraydecay260 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring259, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %tag, align 8
  %os1261 = bitcast %union.rec* %98 to %struct.word_type*
  %ou1262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1261, i32 0, i32 1
  %ofpos263 = bitcast %union.FIRST_UNION* %ou1262 to %struct.FILE_POS*
  %99 = load i64, i64* %dfpos, align 8
  %100 = load i32, i32* %dlnum, align 4
  call void @DbInsert(%union.rec* %94, i32 0, %union.rec* %96, i8* %arraydecay260, %struct.FILE_POS* %ofpos263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i16 zeroext 0, i64 %99, i32 %100, i32 1)
  %101 = load %union.rec*, %union.rec** %res, align 8
  %call264 = call i32 @DisposeObject(%union.rec* %101)
  %call265 = call i64 @LexNextTokenPos()
  store i64 %call265, i64* %dfpos, align 8
  %call266 = call %union.rec* @LexGetToken()
  store %union.rec* %call266, %union.rec** %t, align 8
  %102 = load %union.rec*, %union.rec** %t, align 8
  %os1267 = bitcast %union.rec* %102 to %struct.word_type*
  %ou1268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 1
  %ofpos269 = bitcast %union.FIRST_UNION* %ou1268 to %struct.FILE_POS*
  %oline_num270 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos269, i32 0, i32 3
  %bf.load271 = load i32, i32* %oline_num270, align 4
  %bf.clear272 = and i32 %bf.load271, 1048575
  store i32 %bf.clear272, i32* %dlnum, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %103 = load %union.rec*, %union.rec** %t, align 8
  %os1273 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1273, i32 0, i32 1
  %os11275 = bitcast %union.FIRST_UNION* %ou1274 to %struct.anon*
  %otype276 = getelementptr inbounds %struct.anon, %struct.anon* %os11275, i32 0, i32 0
  %104 = load i8, i8* %otype276, align 1
  %conv277 = zext i8 %104 to i32
  %cmp278 = icmp ne i32 %conv277, 105
  br i1 %cmp278, label %if.then.280, label %if.end.285

if.then.280:                                      ; preds = %while.end
  %105 = load %union.rec*, %union.rec** %t, align 8
  %os1281 = bitcast %union.rec* %105 to %struct.word_type*
  %ou1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 1
  %ofpos283 = bitcast %union.FIRST_UNION* %ou1282 to %struct.FILE_POS*
  %call284 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.280, %while.end
  call void @LexPop()
  %106 = load %union.rec*, %union.rec** %db, align 8
  %cmp286 = icmp eq %union.rec* %106, null
  br i1 %cmp286, label %if.then.288, label %if.end.310

if.then.288:                                      ; preds = %if.end.285
  %arraydecay289 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %107 = load i16, i16* %dfnum, align 2
  %call290 = call i8* @FileName(i16 zeroext %107)
  %call291 = call i8* @strcpy(i8* %arraydecay289, i8* %call290) #5
  %arraydecay292 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %call293 = call i64 @strlen(i8* %arraydecay292) #4
  %sub294 = sub i64 %call293, 3
  %conv295 = trunc i64 %sub294 to i32
  store i32 %conv295, i32* %i, align 4
  %108 = load i32, i32* %i, align 4
  %cmp296 = icmp sgt i32 %108, 0
  br i1 %cmp296, label %if.end.300, label %if.then.298

if.then.298:                                      ; preds = %if.then.288
  %109 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call299 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.298, %if.then.288
  %110 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %110 to i64
  %arrayidx302 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom301
  %call303 = call i8* @strcpy(i8* %arrayidx302, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  %arraydecay304 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %stem.addr, align 8
  %os1305 = bitcast %union.rec* %111 to %struct.word_type*
  %ou1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 1
  %ofpos307 = bitcast %union.FIRST_UNION* %ou1306 to %struct.FILE_POS*
  %call308 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay304, %struct.FILE_POS* %ofpos307)
  %call309 = call %union.rec* @DbCreate(%union.rec* %call308)
  store %union.rec* %call309, %union.rec** %db, align 8
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.300, %if.end.285
  %112 = load %union.rec*, %union.rec** %db, align 8
  call void @DbConvert(%union.rec* %112, i32 0)
  %113 = load i16, i16* %index_fnum, align 2
  %call311 = call %struct._IO_FILE* @OpenFile(i16 zeroext %113, i32 0, i32 0)
  store %struct._IO_FILE* %call311, %struct._IO_FILE** %fp, align 8
  %cmp312 = icmp eq %struct._IO_FILE* %call311, null
  br i1 %cmp312, label %if.then.323, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %if.end.310
  %arraydecay315 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call316 = call i8* @fgets(i8* %arraydecay315, i32 512, %struct._IO_FILE* %114)
  %cmp317 = icmp eq i8* %call316, null
  br i1 %cmp317, label %if.then.323, label %lor.lhs.false.319

lor.lhs.false.319:                                ; preds = %lor.lhs.false.314
  %arrayidx320 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 3
  %call321 = call i32 @StringBeginsWith(i8* %arrayidx320, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.end.329, label %if.then.323

if.then.323:                                      ; preds = %lor.lhs.false.319, %lor.lhs.false.314, %if.end.310
  %115 = load %union.rec*, %union.rec** %db, align 8
  %os1324 = bitcast %union.rec* %115 to %struct.word_type*
  %ou1325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1324, i32 0, i32 1
  %ofpos326 = bitcast %union.FIRST_UNION* %ou1325 to %struct.FILE_POS*
  %116 = load i16, i16* %index_fnum, align 2
  %call327 = call i8* @FileName(i16 zeroext %116)
  %call328 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos326, i8* %call327)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.323, %lor.lhs.false.319
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %land.lhs.true, %if.end.10
  %arraydecay331 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %117 = load i16, i16* %index_fnum, align 2
  %call332 = call i8* @FileName(i16 zeroext %117)
  %call333 = call i8* @strcpy(i8* %arraydecay331, i8* %call332) #5
  %arraydecay334 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %call335 = call i64 @strlen(i8* %arraydecay334) #4
  %sub336 = sub i64 %call335, 3
  %conv337 = trunc i64 %sub336 to i32
  store i32 %conv337, i32* %i, align 4
  %118 = load i32, i32* %i, align 4
  %cmp338 = icmp sgt i32 %118, 0
  br i1 %cmp338, label %if.end.342, label %if.then.340

if.then.340:                                      ; preds = %if.end.330
  %119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call341 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.340, %if.end.330
  %120 = load i32, i32* %i, align 4
  %idxprom343 = sext i32 %120 to i64
  %arrayidx344 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom343
  %call345 = call i8* @strcpy(i8* %arrayidx344, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  %arraydecay346 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %stem.addr, align 8
  %os1347 = bitcast %union.rec* %121 to %struct.word_type*
  %ou1348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1347, i32 0, i32 1
  %ofpos349 = bitcast %union.FIRST_UNION* %ou1348 to %struct.FILE_POS*
  %call350 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay346, %struct.FILE_POS* %ofpos349)
  store %union.rec* %call350, %union.rec** %db, align 8
  %122 = load %union.rec*, %union.rec** %db, align 8
  %os1351 = bitcast %union.rec* %122 to %struct.word_type*
  %ou2352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1351, i32 0, i32 2
  %os24 = bitcast %union.SECOND_UNION* %ou2352 to %struct.anon.3*
  %oreading = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24, i32 0, i32 1
  store i8 1, i8* %oreading, align 1
  %123 = load i32, i32* %in_mem.addr, align 4
  %conv353 = trunc i32 %123 to i8
  %124 = load %union.rec*, %union.rec** %db, align 8
  %os1354 = bitcast %union.rec* %124 to %struct.word_type*
  %ou2355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1354, i32 0, i32 2
  %os24356 = bitcast %union.SECOND_UNION* %ou2355 to %struct.anon.3*
  %oin_memory = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24356, i32 0, i32 2
  store i8 %conv353, i8* %oin_memory, align 1
  %125 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %cmp357 = icmp ne %union.rec* %125, null
  br i1 %cmp357, label %if.then.359, label %if.end.489

if.then.359:                                      ; preds = %if.end.342
  %126 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %os1360 = bitcast %union.rec* %126 to %struct.word_type*
  %ou1361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1360, i32 0, i32 1
  %os11362 = bitcast %union.FIRST_UNION* %ou1361 to %struct.anon*
  %otype363 = getelementptr inbounds %struct.anon, %struct.anon* %os11362, i32 0, i32 0
  %127 = load i8, i8* %otype363, align 1
  %conv364 = zext i8 %127 to i32
  %cmp365 = icmp eq i32 %conv364, 17
  br i1 %cmp365, label %if.end.369, label %if.then.367

if.then.367:                                      ; preds = %if.then.359
  %128 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call368 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.367, %if.then.359
  %129 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv370 = zext i8 %129 to i32
  store i32 %conv370, i32* @zz_size, align 4
  %conv371 = sext i32 %conv370 to i64
  %cmp372 = icmp uge i64 %conv371, 265
  br i1 %cmp372, label %if.then.374, label %if.else

if.then.374:                                      ; preds = %if.end.369
  %130 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call375 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %130)
  br label %if.end.392

if.else:                                          ; preds = %if.end.369
  %131 = load i32, i32* @zz_size, align 4
  %idxprom376 = sext i32 %131 to i64
  %arrayidx377 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom376
  %132 = load %union.rec*, %union.rec** %arrayidx377, align 8
  %cmp378 = icmp eq %union.rec* %132, null
  br i1 %cmp378, label %if.then.380, label %if.else.382

if.then.380:                                      ; preds = %if.else
  %133 = load i32, i32* @zz_size, align 4
  %134 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call381 = call %union.rec* @GetMemory(i32 %133, %struct.FILE_POS* %134)
  store %union.rec* %call381, %union.rec** @zz_hold, align 8
  br label %if.end.391

if.else.382:                                      ; preds = %if.else
  %135 = load i32, i32* @zz_size, align 4
  %idxprom383 = sext i32 %135 to i64
  %arrayidx384 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom383
  %136 = load %union.rec*, %union.rec** %arrayidx384, align 8
  store %union.rec* %136, %union.rec** @zz_hold, align 8
  store %union.rec* %136, %union.rec** @zz_hold, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1385 = bitcast %union.rec* %137 to %struct.word_type*
  %olist386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1385, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist386, i32 0, i64 0
  %opred388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx387, i32 0, i32 0
  %138 = load %union.rec*, %union.rec** %opred388, align 8
  %139 = load i32, i32* @zz_size, align 4
  %idxprom389 = sext i32 %139 to i64
  %arrayidx390 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom389
  store %union.rec* %138, %union.rec** %arrayidx390, align 8
  br label %if.end.391

if.end.391:                                       ; preds = %if.else.382, %if.then.380
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391, %if.then.374
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1393 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1393, i32 0, i32 1
  %os11395 = bitcast %union.FIRST_UNION* %ou1394 to %struct.anon*
  %otype396 = getelementptr inbounds %struct.anon, %struct.anon* %os11395, i32 0, i32 0
  store i8 0, i8* %otype396, align 1
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1397 = bitcast %union.rec* %142 to %struct.word_type*
  %olist398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 0
  %arrayidx399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist398, i32 0, i64 1
  %osucc400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx399, i32 0, i32 1
  store %union.rec* %141, %union.rec** %osucc400, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1401 = bitcast %union.rec* %143 to %struct.word_type*
  %olist402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1401, i32 0, i32 0
  %arrayidx403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist402, i32 0, i64 1
  %opred404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx403, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred404, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1405 = bitcast %union.rec* %144 to %struct.word_type*
  %olist406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1405, i32 0, i32 0
  %arrayidx407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist406, i32 0, i64 0
  %osucc408 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx407, i32 0, i32 1
  store %union.rec* %141, %union.rec** %osucc408, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1409 = bitcast %union.rec* %145 to %struct.word_type*
  %olist410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1409, i32 0, i32 0
  %arrayidx411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist410, i32 0, i64 0
  %opred412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx411, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred412, align 8
  store %union.rec* %141, %union.rec** @xx_link, align 8
  %146 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %146, %union.rec** @zz_res, align 8
  %147 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %147, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp413 = icmp eq %union.rec* %148, null
  br i1 %cmp413, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.392
  %149 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.447

cond.false:                                       ; preds = %if.end.392
  %150 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp415 = icmp eq %union.rec* %150, null
  br i1 %cmp415, label %cond.true.417, label %cond.false.418

cond.true.417:                                    ; preds = %cond.false
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.418:                                   ; preds = %cond.false
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1419 = bitcast %union.rec* %152 to %struct.word_type*
  %olist420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist420, i32 0, i64 0
  %opred422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx421, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %opred422, align 8
  store %union.rec* %153, %union.rec** @zz_tmp, align 8
  %154 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1423 = bitcast %union.rec* %154 to %struct.word_type*
  %olist424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist424, i32 0, i64 0
  %opred426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx425, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %opred426, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1427 = bitcast %union.rec* %156 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 0
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  store %union.rec* %155, %union.rec** %opred430, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %158 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1431 = bitcast %union.rec* %158 to %struct.word_type*
  %olist432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist432, i32 0, i64 0
  %opred434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx433, i32 0, i32 0
  %159 = load %union.rec*, %union.rec** %opred434, align 8
  %os1435 = bitcast %union.rec* %159 to %struct.word_type*
  %olist436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1435, i32 0, i32 0
  %arrayidx437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist436, i32 0, i64 0
  %osucc438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx437, i32 0, i32 1
  store %union.rec* %157, %union.rec** %osucc438, align 8
  %160 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %161 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1439 = bitcast %union.rec* %161 to %struct.word_type*
  %olist440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 0
  %arrayidx441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist440, i32 0, i64 0
  %opred442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx441, i32 0, i32 0
  store %union.rec* %160, %union.rec** %opred442, align 8
  %162 = load %union.rec*, %union.rec** @zz_res, align 8
  %163 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1443 = bitcast %union.rec* %163 to %struct.word_type*
  %olist444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1443, i32 0, i32 0
  %arrayidx445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist444, i32 0, i64 0
  %osucc446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx445, i32 0, i32 1
  store %union.rec* %162, %union.rec** %osucc446, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.418, %cond.true.417
  %cond = phi %union.rec* [ %151, %cond.true.417 ], [ %162, %cond.false.418 ]
  br label %cond.end.447

cond.end.447:                                     ; preds = %cond.end, %cond.true
  %cond448 = phi %union.rec* [ %149, %cond.true ], [ %cond, %cond.end ]
  %164 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %164, %union.rec** @zz_res, align 8
  %165 = load %union.rec*, %union.rec** %symbs.addr, align 8
  store %union.rec* %165, %union.rec** @zz_hold, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp449 = icmp eq %union.rec* %166, null
  br i1 %cmp449, label %cond.true.451, label %cond.false.452

cond.true.451:                                    ; preds = %cond.end.447
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.487

cond.false.452:                                   ; preds = %cond.end.447
  %168 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp453 = icmp eq %union.rec* %168, null
  br i1 %cmp453, label %cond.true.455, label %cond.false.456

cond.true.455:                                    ; preds = %cond.false.452
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.485

cond.false.456:                                   ; preds = %cond.false.452
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1457 = bitcast %union.rec* %170 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 1
  %opred460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %opred460, align 8
  store %union.rec* %171, %union.rec** @zz_tmp, align 8
  %172 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1461 = bitcast %union.rec* %172 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 1
  %opred464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 0
  %173 = load %union.rec*, %union.rec** %opred464, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1465 = bitcast %union.rec* %174 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 1
  %opred468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 0
  store %union.rec* %173, %union.rec** %opred468, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %176 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1469 = bitcast %union.rec* %176 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 1
  %opred472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %opred472, align 8
  %os1473 = bitcast %union.rec* %177 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 1
  %osucc476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 1
  store %union.rec* %175, %union.rec** %osucc476, align 8
  %178 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %179 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1477 = bitcast %union.rec* %179 to %struct.word_type*
  %olist478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 0
  %arrayidx479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist478, i32 0, i64 1
  %opred480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx479, i32 0, i32 0
  store %union.rec* %178, %union.rec** %opred480, align 8
  %180 = load %union.rec*, %union.rec** @zz_res, align 8
  %181 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1481 = bitcast %union.rec* %181 to %struct.word_type*
  %olist482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1481, i32 0, i32 0
  %arrayidx483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist482, i32 0, i64 1
  %osucc484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx483, i32 0, i32 1
  store %union.rec* %180, %union.rec** %osucc484, align 8
  br label %cond.end.485

cond.end.485:                                     ; preds = %cond.false.456, %cond.true.455
  %cond486 = phi %union.rec* [ %169, %cond.true.455 ], [ %180, %cond.false.456 ]
  br label %cond.end.487

cond.end.487:                                     ; preds = %cond.end.485, %cond.true.451
  %cond488 = phi %union.rec* [ %167, %cond.true.451 ], [ %cond486, %cond.end.485 ]
  br label %if.end.489

if.end.489:                                       ; preds = %cond.end.487, %if.end.342
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp490 = icmp eq %struct._IO_FILE* %182, null
  br i1 %cmp490, label %if.then.492, label %if.end.496

if.then.492:                                      ; preds = %if.end.489
  %183 = load %union.rec*, %union.rec** %db, align 8
  %os1493 = bitcast %union.rec* %183 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1493, i32 0, i32 3
  %odb_filep = bitcast %union.THIRD_UNION* %ou3 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %odb_filep, align 8
  %184 = load %union.rec*, %union.rec** %db, align 8
  %os1494 = bitcast %union.rec* %184 to %struct.word_type*
  %ou3495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1494, i32 0, i32 3
  %odb_lines = bitcast %union.THIRD_UNION* %ou3495 to i8***
  store i8** null, i8*** %odb_lines, align 8
  %185 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %185, %union.rec** %retval
  br label %return

if.end.496:                                       ; preds = %if.end.489
  store i32 0, i32* %leftp, align 4
  store i32 1, i32* %lnum, align 4
  %arraydecay497 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call498 = call i8* @fgets(i8* %arraydecay497, i32 512, %struct._IO_FILE* %186)
  store i8* %call498, i8** %gotline, align 8
  br label %while.cond.499

while.cond.499:                                   ; preds = %if.end.810, %if.end.496
  %187 = load i8*, i8** %gotline, align 8
  %cmp500 = icmp ne i8* %187, null
  br i1 %cmp500, label %while.body.502, label %while.end.813

while.body.502:                                   ; preds = %while.cond.499
  %arrayidx503 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 0
  %188 = load i8, i8* %arrayidx503, align 1
  %conv504 = zext i8 %188 to i32
  %cmp505 = icmp ne i32 %conv504, 48
  br i1 %cmp505, label %if.then.512, label %lor.lhs.false.507

lor.lhs.false.507:                                ; preds = %while.body.502
  %arrayidx508 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 1
  %189 = load i8, i8* %arrayidx508, align 1
  %conv509 = zext i8 %189 to i32
  %cmp510 = icmp ne i32 %conv509, 48
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %lor.lhs.false.507, %while.body.502
  br label %while.end.813

if.end.513:                                       ; preds = %lor.lhs.false.507
  %190 = load i32, i32* %lnum, align 4
  %inc = add nsw i32 %190, 1
  store i32 %inc, i32* %lnum, align 4
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call514 = call i64 @ftell(%struct._IO_FILE* %191)
  %conv515 = trunc i64 %call514 to i32
  store i32 %conv515, i32* %leftp, align 4
  %arraydecay516 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %call517 = call i32 @StringBeginsWith(i8* %arraydecay516, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0))
  store i32 %call517, i32* %gall, align 4
  %arraydecay518 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %192 = load i32, i32* %gall, align 4
  %tobool519 = icmp ne i32 %192, 0
  %cond520 = select i1 %tobool519, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)
  %call521 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay518, i8* %cond520, i32* %num) #5
  store i32 9, i32* %i, align 4
  br label %for.cond.522

for.cond.522:                                     ; preds = %for.inc.534, %if.end.513
  %193 = load i32, i32* %i, align 4
  %idxprom523 = sext i32 %193 to i64
  %arrayidx524 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom523
  %194 = load i8, i8* %arrayidx524, align 1
  %conv525 = zext i8 %194 to i32
  %cmp526 = icmp ne i32 %conv525, 32
  br i1 %cmp526, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.522
  %195 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %195 to i64
  %arrayidx529 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom528
  %196 = load i8, i8* %arrayidx529, align 1
  %conv530 = zext i8 %196 to i32
  %cmp531 = icmp ne i32 %conv530, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.522
  %197 = phi i1 [ false, %for.cond.522 ], [ %cmp531, %land.rhs ]
  br i1 %197, label %for.body.533, label %for.end.536

for.body.533:                                     ; preds = %land.end
  br label %for.inc.534

for.inc.534:                                      ; preds = %for.body.533
  %198 = load i32, i32* %i, align 4
  %inc535 = add nsw i32 %198, 1
  store i32 %inc535, i32* %i, align 4
  br label %for.cond.522

for.end.536:                                      ; preds = %land.end
  %199 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %cmp537 = icmp eq %union.rec* %199, null
  br i1 %cmp537, label %if.then.539, label %if.else.578

if.then.539:                                      ; preds = %for.end.536
  store i32 0, i32* %count, align 4
  %200 = load %union.rec*, %union.rec** @StartSym, align 8
  store %union.rec* %200, %union.rec** %sym, align 8
  br label %while.cond.540

while.cond.540:                                   ; preds = %while.body.553, %if.then.539
  %201 = load i32, i32* %i, align 4
  %idxprom541 = sext i32 %201 to i64
  %arrayidx542 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom541
  %202 = load i8, i8* %arrayidx542, align 1
  %conv543 = zext i8 %202 to i32
  %cmp544 = icmp ne i32 %conv543, 10
  br i1 %cmp544, label %land.rhs.546, label %land.end.552

land.rhs.546:                                     ; preds = %while.cond.540
  %203 = load i32, i32* %i, align 4
  %idxprom547 = sext i32 %203 to i64
  %arrayidx548 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom547
  %204 = load i8, i8* %arrayidx548, align 1
  %conv549 = zext i8 %204 to i32
  %cmp550 = icmp ne i32 %conv549, 0
  br label %land.end.552

land.end.552:                                     ; preds = %land.rhs.546, %while.cond.540
  %205 = phi i1 [ false, %while.cond.540 ], [ %cmp550, %land.rhs.546 ]
  br i1 %205, label %while.body.553, label %while.end.570

while.body.553:                                   ; preds = %land.end.552
  %206 = load %union.rec*, %union.rec** %sym, align 8
  call void @PushScope(%union.rec* %206, i32 0, i32 0)
  %207 = load i32, i32* %count, align 4
  %inc554 = add nsw i32 %207, 1
  store i32 %inc554, i32* %count, align 4
  %208 = load i32, i32* %i, align 4
  %add = add nsw i32 %208, 1
  %idxprom555 = sext i32 %add to i64
  %arrayidx556 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom555
  %arraydecay557 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %call558 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx556, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %arraydecay557) #5
  %arraydecay559 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %arraydecay560 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %call561 = call i64 @strlen(i8* %arraydecay560) #4
  %conv562 = trunc i64 %call561 to i32
  %call563 = call %union.rec* @SearchSym(i8* %arraydecay559, i32 %conv562)
  store %union.rec* %call563, %union.rec** %sym, align 8
  %arraydecay564 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %call565 = call i64 @strlen(i8* %arraydecay564) #4
  %add566 = add i64 %call565, 1
  %209 = load i32, i32* %i, align 4
  %conv567 = sext i32 %209 to i64
  %add568 = add i64 %conv567, %add566
  %conv569 = trunc i64 %add568 to i32
  store i32 %conv569, i32* %i, align 4
  br label %while.cond.540

while.end.570:                                    ; preds = %land.end.552
  store i32 1, i32* %i, align 4
  br label %for.cond.571

for.cond.571:                                     ; preds = %for.inc.575, %while.end.570
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %count, align 4
  %cmp572 = icmp sle i32 %210, %211
  br i1 %cmp572, label %for.body.574, label %for.end.577

for.body.574:                                     ; preds = %for.cond.571
  call void @PopScope()
  br label %for.inc.575

for.inc.575:                                      ; preds = %for.body.574
  %212 = load i32, i32* %i, align 4
  %inc576 = add nsw i32 %212, 1
  store i32 %inc576, i32* %i, align 4
  br label %for.cond.571

for.end.577:                                      ; preds = %for.cond.571
  br label %if.end.638

if.else.578:                                      ; preds = %for.end.536
  store %union.rec* null, %union.rec** %sym, align 8
  %213 = load i32, i32* %i, align 4
  %add579 = add nsw i32 %213, 1
  %idxprom580 = sext i32 %add579 to i64
  %arrayidx581 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom580
  %arraydecay582 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %call583 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx581, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %arraydecay582) #5
  %214 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %os1584 = bitcast %union.rec* %214 to %struct.word_type*
  %olist585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1584, i32 0, i32 0
  %arrayidx586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist585, i32 0, i64 0
  %osucc587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx586, i32 0, i32 1
  %215 = load %union.rec*, %union.rec** %osucc587, align 8
  store %union.rec* %215, %union.rec** %link, align 8
  br label %for.cond.588

for.cond.588:                                     ; preds = %for.inc.632, %if.else.578
  %216 = load %union.rec*, %union.rec** %link, align 8
  %217 = load %union.rec*, %union.rec** %symbs.addr, align 8
  %cmp589 = icmp ne %union.rec* %216, %217
  br i1 %cmp589, label %for.body.591, label %for.end.637

for.body.591:                                     ; preds = %for.cond.588
  %218 = load %union.rec*, %union.rec** %link, align 8
  %os1592 = bitcast %union.rec* %218 to %struct.word_type*
  %olist593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist593, i32 0, i64 1
  %opred595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx594, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %opred595, align 8
  store %union.rec* %219, %union.rec** %y, align 8
  br label %for.cond.596

for.cond.596:                                     ; preds = %for.inc.605, %for.body.591
  %220 = load %union.rec*, %union.rec** %y, align 8
  %os1597 = bitcast %union.rec* %220 to %struct.word_type*
  %ou1598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1597, i32 0, i32 1
  %os11599 = bitcast %union.FIRST_UNION* %ou1598 to %struct.anon*
  %otype600 = getelementptr inbounds %struct.anon, %struct.anon* %os11599, i32 0, i32 0
  %221 = load i8, i8* %otype600, align 1
  %conv601 = zext i8 %221 to i32
  %cmp602 = icmp eq i32 %conv601, 0
  br i1 %cmp602, label %for.body.604, label %for.end.610

for.body.604:                                     ; preds = %for.cond.596
  br label %for.inc.605

for.inc.605:                                      ; preds = %for.body.604
  %222 = load %union.rec*, %union.rec** %y, align 8
  %os1606 = bitcast %union.rec* %222 to %struct.word_type*
  %olist607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1606, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist607, i32 0, i64 1
  %opred609 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx608, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred609, align 8
  store %union.rec* %223, %union.rec** %y, align 8
  br label %for.cond.596

for.end.610:                                      ; preds = %for.cond.596
  %224 = load %union.rec*, %union.rec** %y, align 8
  %os1611 = bitcast %union.rec* %224 to %struct.word_type*
  %ou1612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 1
  %os11613 = bitcast %union.FIRST_UNION* %ou1612 to %struct.anon*
  %otype614 = getelementptr inbounds %struct.anon, %struct.anon* %os11613, i32 0, i32 0
  %225 = load i8, i8* %otype614, align 1
  %conv615 = zext i8 %225 to i32
  %cmp616 = icmp eq i32 %conv615, 2
  br i1 %cmp616, label %if.end.620, label %if.then.618

if.then.618:                                      ; preds = %for.end.610
  %226 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call619 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.620

if.end.620:                                       ; preds = %if.then.618, %for.end.610
  %arraydecay621 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %227 = load %union.rec*, %union.rec** %y, align 8
  %os2622 = bitcast %union.rec* %227 to %struct.closure_type*
  %oactual623 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2622, i32 0, i32 5
  %228 = load %union.rec*, %union.rec** %oactual623, align 8
  %call624 = call i8* @SymName(%union.rec* %228)
  %call625 = call i32 @strcmp(i8* %arraydecay621, i8* %call624) #4
  %cmp626 = icmp eq i32 %call625, 0
  br i1 %cmp626, label %if.then.628, label %if.end.631

if.then.628:                                      ; preds = %if.end.620
  %229 = load %union.rec*, %union.rec** %y, align 8
  %os2629 = bitcast %union.rec* %229 to %struct.closure_type*
  %oactual630 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2629, i32 0, i32 5
  %230 = load %union.rec*, %union.rec** %oactual630, align 8
  store %union.rec* %230, %union.rec** %sym, align 8
  br label %for.end.637

if.end.631:                                       ; preds = %if.end.620
  br label %for.inc.632

for.inc.632:                                      ; preds = %if.end.631
  %231 = load %union.rec*, %union.rec** %link, align 8
  %os1633 = bitcast %union.rec* %231 to %struct.word_type*
  %olist634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1633, i32 0, i32 0
  %arrayidx635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist634, i32 0, i64 0
  %osucc636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx635, i32 0, i32 1
  %232 = load %union.rec*, %union.rec** %osucc636, align 8
  store %union.rec* %232, %union.rec** %link, align 8
  br label %for.cond.588

for.end.637:                                      ; preds = %if.then.628, %for.cond.588
  br label %if.end.638

if.end.638:                                       ; preds = %for.end.637, %for.end.577
  %233 = load %union.rec*, %union.rec** %sym, align 8
  %cmp639 = icmp ne %union.rec* %233, null
  br i1 %cmp639, label %land.lhs.true.641, label %if.else.796

land.lhs.true.641:                                ; preds = %if.end.638
  %234 = load %union.rec*, %union.rec** %sym, align 8
  %235 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp642 = icmp ne %union.rec* %234, %235
  br i1 %cmp642, label %if.then.644, label %if.else.796

if.then.644:                                      ; preds = %land.lhs.true.641
  %236 = load %union.rec*, %union.rec** %sym, align 8
  %os6 = bitcast %union.rec* %236 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %237 = load %union.rec*, %union.rec** %ocross_sym, align 8
  %cmp645 = icmp eq %union.rec* %237, null
  br i1 %cmp645, label %if.then.647, label %if.end.648

if.then.647:                                      ; preds = %if.then.644
  %238 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %238)
  br label %if.end.648

if.end.648:                                       ; preds = %if.then.647, %if.then.644
  %239 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv649 = zext i8 %239 to i32
  store i32 %conv649, i32* @zz_size, align 4
  %conv650 = sext i32 %conv649 to i64
  %cmp651 = icmp uge i64 %conv650, 265
  br i1 %cmp651, label %if.then.653, label %if.else.655

if.then.653:                                      ; preds = %if.end.648
  %240 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call654 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %240)
  br label %if.end.672

if.else.655:                                      ; preds = %if.end.648
  %241 = load i32, i32* @zz_size, align 4
  %idxprom656 = sext i32 %241 to i64
  %arrayidx657 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom656
  %242 = load %union.rec*, %union.rec** %arrayidx657, align 8
  %cmp658 = icmp eq %union.rec* %242, null
  br i1 %cmp658, label %if.then.660, label %if.else.662

if.then.660:                                      ; preds = %if.else.655
  %243 = load i32, i32* @zz_size, align 4
  %244 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call661 = call %union.rec* @GetMemory(i32 %243, %struct.FILE_POS* %244)
  store %union.rec* %call661, %union.rec** @zz_hold, align 8
  br label %if.end.671

if.else.662:                                      ; preds = %if.else.655
  %245 = load i32, i32* @zz_size, align 4
  %idxprom663 = sext i32 %245 to i64
  %arrayidx664 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom663
  %246 = load %union.rec*, %union.rec** %arrayidx664, align 8
  store %union.rec* %246, %union.rec** @zz_hold, align 8
  store %union.rec* %246, %union.rec** @zz_hold, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1665 = bitcast %union.rec* %247 to %struct.word_type*
  %olist666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1665, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist666, i32 0, i64 0
  %opred668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx667, i32 0, i32 0
  %248 = load %union.rec*, %union.rec** %opred668, align 8
  %249 = load i32, i32* @zz_size, align 4
  %idxprom669 = sext i32 %249 to i64
  %arrayidx670 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom669
  store %union.rec* %248, %union.rec** %arrayidx670, align 8
  br label %if.end.671

if.end.671:                                       ; preds = %if.else.662, %if.then.660
  br label %if.end.672

if.end.672:                                       ; preds = %if.end.671, %if.then.653
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1673 = bitcast %union.rec* %250 to %struct.word_type*
  %ou1674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 1
  %os11675 = bitcast %union.FIRST_UNION* %ou1674 to %struct.anon*
  %otype676 = getelementptr inbounds %struct.anon, %struct.anon* %os11675, i32 0, i32 0
  store i8 0, i8* %otype676, align 1
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1677 = bitcast %union.rec* %252 to %struct.word_type*
  %olist678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist678, i32 0, i64 1
  %osucc680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx679, i32 0, i32 1
  store %union.rec* %251, %union.rec** %osucc680, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1681 = bitcast %union.rec* %253 to %struct.word_type*
  %olist682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1681, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist682, i32 0, i64 1
  %opred684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx683, i32 0, i32 0
  store %union.rec* %251, %union.rec** %opred684, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1685 = bitcast %union.rec* %254 to %struct.word_type*
  %olist686 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1685, i32 0, i32 0
  %arrayidx687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist686, i32 0, i64 0
  %osucc688 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx687, i32 0, i32 1
  store %union.rec* %251, %union.rec** %osucc688, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1689 = bitcast %union.rec* %255 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 0
  %opred692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 0
  store %union.rec* %251, %union.rec** %opred692, align 8
  store %union.rec* %251, %union.rec** @xx_link, align 8
  %256 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %256, %union.rec** @zz_res, align 8
  %257 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %257, %union.rec** @zz_hold, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp693 = icmp eq %union.rec* %258, null
  br i1 %cmp693, label %cond.true.695, label %cond.false.696

cond.true.695:                                    ; preds = %if.end.672
  %259 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.731

cond.false.696:                                   ; preds = %if.end.672
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp697 = icmp eq %union.rec* %260, null
  br i1 %cmp697, label %cond.true.699, label %cond.false.700

cond.true.699:                                    ; preds = %cond.false.696
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.729

cond.false.700:                                   ; preds = %cond.false.696
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1701 = bitcast %union.rec* %262 to %struct.word_type*
  %olist702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist702, i32 0, i64 0
  %opred704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx703, i32 0, i32 0
  %263 = load %union.rec*, %union.rec** %opred704, align 8
  store %union.rec* %263, %union.rec** @zz_tmp, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1705 = bitcast %union.rec* %264 to %struct.word_type*
  %olist706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 0
  %arrayidx707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist706, i32 0, i64 0
  %opred708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx707, i32 0, i32 0
  %265 = load %union.rec*, %union.rec** %opred708, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1709 = bitcast %union.rec* %266 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 0
  %opred712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 0
  store %union.rec* %265, %union.rec** %opred712, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1713 = bitcast %union.rec* %268 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 0
  %opred716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %opred716, align 8
  %os1717 = bitcast %union.rec* %269 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 0
  %osucc720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 1
  store %union.rec* %267, %union.rec** %osucc720, align 8
  %270 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1721 = bitcast %union.rec* %271 to %struct.word_type*
  %olist722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist722, i32 0, i64 0
  %opred724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx723, i32 0, i32 0
  store %union.rec* %270, %union.rec** %opred724, align 8
  %272 = load %union.rec*, %union.rec** @zz_res, align 8
  %273 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1725 = bitcast %union.rec* %273 to %struct.word_type*
  %olist726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1725, i32 0, i32 0
  %arrayidx727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist726, i32 0, i64 0
  %osucc728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx727, i32 0, i32 1
  store %union.rec* %272, %union.rec** %osucc728, align 8
  br label %cond.end.729

cond.end.729:                                     ; preds = %cond.false.700, %cond.true.699
  %cond730 = phi %union.rec* [ %261, %cond.true.699 ], [ %272, %cond.false.700 ]
  br label %cond.end.731

cond.end.731:                                     ; preds = %cond.end.729, %cond.true.695
  %cond732 = phi %union.rec* [ %259, %cond.true.695 ], [ %cond730, %cond.end.729 ]
  %274 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %274, %union.rec** @zz_res, align 8
  %275 = load %union.rec*, %union.rec** %sym, align 8
  %os6733 = bitcast %union.rec* %275 to %struct.symbol_type*
  %ocross_sym734 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6733, i32 0, i32 8
  %276 = load %union.rec*, %union.rec** %ocross_sym734, align 8
  store %union.rec* %276, %union.rec** @zz_hold, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp735 = icmp eq %union.rec* %277, null
  br i1 %cmp735, label %cond.true.737, label %cond.false.738

cond.true.737:                                    ; preds = %cond.end.731
  %278 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.773

cond.false.738:                                   ; preds = %cond.end.731
  %279 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp739 = icmp eq %union.rec* %279, null
  br i1 %cmp739, label %cond.true.741, label %cond.false.742

cond.true.741:                                    ; preds = %cond.false.738
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.771

cond.false.742:                                   ; preds = %cond.false.738
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1743 = bitcast %union.rec* %281 to %struct.word_type*
  %olist744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1743, i32 0, i32 0
  %arrayidx745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist744, i32 0, i64 1
  %opred746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx745, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %opred746, align 8
  store %union.rec* %282, %union.rec** @zz_tmp, align 8
  %283 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1747 = bitcast %union.rec* %283 to %struct.word_type*
  %olist748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1747, i32 0, i32 0
  %arrayidx749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist748, i32 0, i64 1
  %opred750 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx749, i32 0, i32 0
  %284 = load %union.rec*, %union.rec** %opred750, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1751 = bitcast %union.rec* %285 to %struct.word_type*
  %olist752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1751, i32 0, i32 0
  %arrayidx753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist752, i32 0, i64 1
  %opred754 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx753, i32 0, i32 0
  store %union.rec* %284, %union.rec** %opred754, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1755 = bitcast %union.rec* %287 to %struct.word_type*
  %olist756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1755, i32 0, i32 0
  %arrayidx757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist756, i32 0, i64 1
  %opred758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx757, i32 0, i32 0
  %288 = load %union.rec*, %union.rec** %opred758, align 8
  %os1759 = bitcast %union.rec* %288 to %struct.word_type*
  %olist760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1759, i32 0, i32 0
  %arrayidx761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist760, i32 0, i64 1
  %osucc762 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx761, i32 0, i32 1
  store %union.rec* %286, %union.rec** %osucc762, align 8
  %289 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %290 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1763 = bitcast %union.rec* %290 to %struct.word_type*
  %olist764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1763, i32 0, i32 0
  %arrayidx765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist764, i32 0, i64 1
  %opred766 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx765, i32 0, i32 0
  store %union.rec* %289, %union.rec** %opred766, align 8
  %291 = load %union.rec*, %union.rec** @zz_res, align 8
  %292 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1767 = bitcast %union.rec* %292 to %struct.word_type*
  %olist768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1767, i32 0, i32 0
  %arrayidx769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist768, i32 0, i64 1
  %osucc770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx769, i32 0, i32 1
  store %union.rec* %291, %union.rec** %osucc770, align 8
  br label %cond.end.771

cond.end.771:                                     ; preds = %cond.false.742, %cond.true.741
  %cond772 = phi %union.rec* [ %280, %cond.true.741 ], [ %291, %cond.false.742 ]
  br label %cond.end.773

cond.end.773:                                     ; preds = %cond.end.771, %cond.true.737
  %cond774 = phi %union.rec* [ %278, %cond.true.737 ], [ %cond772, %cond.end.771 ]
  %293 = load %union.rec*, %union.rec** %db, align 8
  %os1775 = bitcast %union.rec* %293 to %struct.word_type*
  %olist776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1775, i32 0, i32 0
  %arrayidx777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist776, i32 0, i64 0
  %opred778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx777, i32 0, i32 0
  %294 = load %union.rec*, %union.rec** %opred778, align 8
  store %union.rec* %294, %union.rec** %link, align 8
  %295 = load i32, i32* %num, align 4
  %conv779 = trunc i32 %295 to i8
  %296 = load %union.rec*, %union.rec** %link, align 8
  %os4 = bitcast %union.rec* %296 to %struct.link_type*
  %onumber = getelementptr inbounds %struct.link_type, %struct.link_type* %os4, i32 0, i32 2
  store i8 %conv779, i8* %onumber, align 1
  %297 = load i32, i32* %gall, align 4
  %conv780 = trunc i32 %297 to i8
  %298 = load %union.rec*, %union.rec** %link, align 8
  %os4781 = bitcast %union.rec* %298 to %struct.link_type*
  %odb_targ = getelementptr inbounds %struct.link_type, %struct.link_type* %os4781, i32 0, i32 3
  store i8 %conv780, i8* %odb_targ, align 1
  %299 = load i32, i32* %gall, align 4
  %tobool782 = icmp ne i32 %299, 0
  br i1 %tobool782, label %if.then.783, label %if.end.795

if.then.783:                                      ; preds = %cond.end.773
  %300 = load %union.rec*, %union.rec** %sym, align 8
  %os1784 = bitcast %union.rec* %300 to %struct.word_type*
  %ou2785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 2
  %os26786 = bitcast %union.SECOND_UNION* %ou2785 to %struct.anon.5*
  %ouses_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26786, i32 0, i32 1
  %301 = bitcast [3 x i8]* %ouses_extern_target to i24*
  %bf.load787 = load i24, i24* %301, align 1
  %bf.clear788 = and i24 %bf.load787, -2049
  %bf.set = or i24 %bf.clear788, 2048
  store i24 %bf.set, i24* %301, align 1
  %302 = load %union.rec*, %union.rec** %sym, align 8
  %os1789 = bitcast %union.rec* %302 to %struct.word_type*
  %ou2790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 2
  %os26791 = bitcast %union.SECOND_UNION* %ou2790 to %struct.anon.5*
  %ois_extern_target = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26791, i32 0, i32 1
  %303 = bitcast [3 x i8]* %ois_extern_target to i24*
  %bf.load792 = load i24, i24* %303, align 1
  %bf.clear793 = and i24 %bf.load792, -4097
  %bf.set794 = or i24 %bf.clear793, 4096
  store i24 %bf.set794, i24* %303, align 1
  br label %if.end.795

if.end.795:                                       ; preds = %if.then.783, %cond.end.773
  br label %if.end.810

if.else.796:                                      ; preds = %land.lhs.true.641, %if.end.638
  %304 = load %union.rec*, %union.rec** %db, align 8
  %os1797 = bitcast %union.rec* %304 to %struct.word_type*
  %ou1798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1797, i32 0, i32 1
  %ofpos799 = bitcast %union.FIRST_UNION* %ou1798 to %struct.FILE_POS*
  %305 = load i16, i16* %index_fnum, align 2
  %call800 = call i8* @FileName(i16 zeroext %305)
  %306 = load i32, i32* %lnum, align 4
  %call801 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos799, i8* %call800, i32 %306)
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call802 = call i32 @fclose(%struct._IO_FILE* %307)
  %308 = load %union.rec*, %union.rec** %db, align 8
  %os1803 = bitcast %union.rec* %308 to %struct.word_type*
  %ou2804 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1803, i32 0, i32 2
  %os24805 = bitcast %union.SECOND_UNION* %ou2804 to %struct.anon.3*
  %oin_memory806 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24805, i32 0, i32 2
  store i8 0, i8* %oin_memory806, align 1
  %309 = load %union.rec*, %union.rec** %db, align 8
  %os1807 = bitcast %union.rec* %309 to %struct.word_type*
  %ou3808 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1807, i32 0, i32 3
  %odb_filep809 = bitcast %union.THIRD_UNION* %ou3808 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %odb_filep809, align 8
  %310 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %310, %union.rec** %retval
  br label %return

if.end.810:                                       ; preds = %if.end.795
  %arraydecay811 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call812 = call i8* @fgets(i8* %arraydecay811, i32 512, %struct._IO_FILE* %311)
  store i8* %call812, i8** %gotline, align 8
  br label %while.cond.499

while.end.813:                                    ; preds = %if.then.512, %while.cond.499
  %312 = load %union.rec*, %union.rec** %db, align 8
  %os1814 = bitcast %union.rec* %312 to %struct.word_type*
  %ou2815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1814, i32 0, i32 2
  %os24816 = bitcast %union.SECOND_UNION* %ou2815 to %struct.anon.3*
  %oin_memory817 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24816, i32 0, i32 2
  %313 = load i8, i8* %oin_memory817, align 1
  %tobool818 = icmp ne i8 %313, 0
  br i1 %tobool818, label %if.then.819, label %if.else.846

if.then.819:                                      ; preds = %while.end.813
  %314 = load i8*, i8** %gotline, align 8
  %cmp820 = icmp eq i8* %314, null
  br i1 %cmp820, label %if.then.822, label %if.else.826

if.then.822:                                      ; preds = %if.then.819
  %315 = load %union.rec*, %union.rec** %db, align 8
  %os1823 = bitcast %union.rec* %315 to %struct.word_type*
  %ou3824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1823, i32 0, i32 3
  %odb_lines825 = bitcast %union.THIRD_UNION* %ou3824 to i8***
  store i8** null, i8*** %odb_lines825, align 8
  br label %if.end.845

if.else.826:                                      ; preds = %if.then.819
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %317 = load i16, i16* %index_fnum, align 2
  %call827 = call i8* @FileName(i16 zeroext %317)
  %arraydecay828 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %call829 = call i8** @ReadLines(%struct._IO_FILE* %316, i8* %call827, i8* %arraydecay828, i32* %len)
  %318 = load %union.rec*, %union.rec** %db, align 8
  %os1830 = bitcast %union.rec* %318 to %struct.word_type*
  %ou3831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1830, i32 0, i32 3
  %odb_lines832 = bitcast %union.THIRD_UNION* %ou3831 to i8***
  store i8** %call829, i8*** %odb_lines832, align 8
  %319 = load i32, i32* %len, align 4
  %conv833 = trunc i32 %319 to i16
  %320 = load %union.rec*, %union.rec** %db, align 8
  %os1834 = bitcast %union.rec* %320 to %struct.word_type*
  %ou2835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1834, i32 0, i32 2
  %os24836 = bitcast %union.SECOND_UNION* %ou2835 to %struct.anon.3*
  %oleft_pos = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24836, i32 0, i32 0
  store i16 %conv833, i16* %oleft_pos, align 2
  %321 = load %union.rec*, %union.rec** %db, align 8
  %os1837 = bitcast %union.rec* %321 to %struct.word_type*
  %ou3838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1837, i32 0, i32 3
  %odb_lines839 = bitcast %union.THIRD_UNION* %ou3838 to i8***
  %322 = load i8**, i8*** %odb_lines839, align 8
  %323 = load %union.rec*, %union.rec** %db, align 8
  %os1840 = bitcast %union.rec* %323 to %struct.word_type*
  %ou2841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1840, i32 0, i32 2
  %os24842 = bitcast %union.SECOND_UNION* %ou2841 to %struct.anon.3*
  %oleft_pos843 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24842, i32 0, i32 0
  %324 = load i16, i16* %oleft_pos843, align 2
  %conv844 = zext i16 %324 to i32
  call void @SortLines(i8** %322, i32 %conv844)
  br label %if.end.845

if.end.845:                                       ; preds = %if.else.826, %if.then.822
  br label %if.end.855

if.else.846:                                      ; preds = %while.end.813
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %326 = load %union.rec*, %union.rec** %db, align 8
  %os1847 = bitcast %union.rec* %326 to %struct.word_type*
  %ou3848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1847, i32 0, i32 3
  %odb_filep849 = bitcast %union.THIRD_UNION* %ou3848 to %struct._IO_FILE**
  store %struct._IO_FILE* %325, %struct._IO_FILE** %odb_filep849, align 8
  %327 = load i32, i32* %leftp, align 4
  %conv850 = trunc i32 %327 to i16
  %328 = load %union.rec*, %union.rec** %db, align 8
  %os1851 = bitcast %union.rec* %328 to %struct.word_type*
  %ou2852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1851, i32 0, i32 2
  %os24853 = bitcast %union.SECOND_UNION* %ou2852 to %struct.anon.3*
  %oleft_pos854 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24853, i32 0, i32 0
  store i16 %conv850, i16* %oleft_pos854, align 2
  br label %if.end.855

if.end.855:                                       ; preds = %if.else.846, %if.end.845
  %329 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %329, %union.rec** %retval
  br label %return

return:                                           ; preds = %if.end.855, %if.else.796, %if.then.492
  %330 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %330
}

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @StringBeginsWith(i8*, i8*) #1

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #1

declare %union.rec* @LexGetToken() #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @DisposeObject(%union.rec*) #1

declare i64 @LexNextTokenPos() #1

declare void @LexPop() #1

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare void @PushScope(%union.rec*, i32, i32) #1

declare %union.rec* @SearchSym(i8*, i32) #1

declare void @PopScope() #1

declare i8** @ReadLines(%struct._IO_FILE*, i8*, i8*, i32*) #1

declare void @SortLines(i8**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @DbRetrieve(%union.rec* %db, i32 %gall, %union.rec* %sym, i8* %tag, i8* %seq, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca %union.rec*, align 8
  %gall.addr = alloca i32, align 4
  %sym.addr = alloca %union.rec*, align 8
  %tag.addr = alloca i8*, align 8
  %seq.addr = alloca i8*, align 8
  %dfnum.addr = alloca i16*, align 8
  %dfpos.addr = alloca i64*, align 8
  %dlnum.addr = alloca i32*, align 8
  %cont.addr = alloca i64*, align 8
  %symnum = alloca i32, align 4
  %lnum = alloca i32, align 4
  %line = alloca [512 x i8], align 16
  %buff = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %yy = alloca %union.rec*, align 8
  %count = alloca i32, align 4
  store %union.rec* %db, %union.rec** %db.addr, align 8
  store i32 %gall, i32* %gall.addr, align 4
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i16* %dfnum, i16** %dfnum.addr, align 8
  store i64* %dfpos, i64** %dfpos.addr, align 8
  store i32* %dlnum, i32** %dlnum.addr, align 8
  store i64* %cont, i64** %cont.addr, align 8
  %0 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os24 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.3*
  %oreading = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24, i32 0, i32 1
  %1 = load i8, i8* %oreading, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %db.addr, align 8
  %os11 = bitcast %union.rec* %2 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 3
  %odb_filep = bitcast %union.THIRD_UNION* %ou3 to %struct._IO_FILE**
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep, align 8
  %cmp = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %count, align 4
  %4 = load %union.rec*, %union.rec** %db.addr, align 8
  %os12 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %5, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %if.end
  %6 = load %union.rec*, %union.rec** %link, align 8
  %7 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp3 = icmp ne %union.rec* %6, %7
  br i1 %cmp3, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %link, align 8
  %os14 = bitcast %union.rec* %8 to %struct.word_type*
  %olist5 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %9, %union.rec** %yy, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %10 = load %union.rec*, %union.rec** %yy, align 8
  %os18 = bitcast %union.rec* %10 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 1
  %os119 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os119, i32 0, i32 0
  %11 = load i8, i8* %otype, align 1
  %conv = zext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.7
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %12 = load %union.rec*, %union.rec** %yy, align 8
  %os113 = bitcast %union.rec* %12 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 1
  %opred16 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred16, align 8
  store %union.rec* %13, %union.rec** %yy, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %14 = load %union.rec*, %union.rec** %yy, align 8
  %os117 = bitcast %union.rec* %14 to %struct.word_type*
  %ou118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 1
  %os1119 = bitcast %union.FIRST_UNION* %ou118 to %struct.anon*
  %otype20 = getelementptr inbounds %struct.anon, %struct.anon* %os1119, i32 0, i32 0
  %15 = load i8, i8* %otype20, align 1
  %conv21 = zext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 140
  br i1 %cmp22, label %if.end.33, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %for.end
  %16 = load %union.rec*, %union.rec** %yy, align 8
  %os125 = bitcast %union.rec* %16 to %struct.word_type*
  %ou126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os1127 = bitcast %union.FIRST_UNION* %ou126 to %struct.anon*
  %otype28 = getelementptr inbounds %struct.anon, %struct.anon* %os1127, i32 0, i32 0
  %17 = load i8, i8* %otype28, align 1
  %conv29 = zext i8 %17 to i32
  %cmp30 = icmp eq i32 %conv29, 17
  br i1 %cmp30, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %lor.lhs.false.24
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false.24, %for.end
  %19 = load %union.rec*, %union.rec** %yy, align 8
  %os134 = bitcast %union.rec* %19 to %struct.word_type*
  %ou135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 1
  %os1136 = bitcast %union.FIRST_UNION* %ou135 to %struct.anon*
  %otype37 = getelementptr inbounds %struct.anon, %struct.anon* %os1136, i32 0, i32 0
  %20 = load i8, i8* %otype37, align 1
  %conv38 = zext i8 %20 to i32
  %cmp39 = icmp ne i32 %conv38, 140
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.33
  br label %for.inc.55

if.end.42:                                        ; preds = %if.end.33
  %21 = load %union.rec*, %union.rec** %yy, align 8
  %os7 = bitcast %union.rec* %21 to %struct.cr_type*
  %osymb = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 9
  %22 = load %union.rec*, %union.rec** %osymb, align 8
  %23 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp43 = icmp eq %union.rec* %22, %23
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  br label %for.end.60

if.end.46:                                        ; preds = %if.end.42
  %24 = load %union.rec*, %union.rec** %link, align 8
  %os4 = bitcast %union.rec* %24 to %struct.link_type*
  %onumber = getelementptr inbounds %struct.link_type, %struct.link_type* %os4, i32 0, i32 2
  %25 = load i8, i8* %onumber, align 1
  %conv47 = zext i8 %25 to i32
  %26 = load i32, i32* %count, align 4
  %cmp48 = icmp sgt i32 %conv47, %26
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.46
  %27 = load %union.rec*, %union.rec** %link, align 8
  %os451 = bitcast %union.rec* %27 to %struct.link_type*
  %onumber52 = getelementptr inbounds %struct.link_type, %struct.link_type* %os451, i32 0, i32 2
  %28 = load i8, i8* %onumber52, align 1
  %conv53 = zext i8 %28 to i32
  store i32 %conv53, i32* %count, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.46
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54, %if.then.41
  %29 = load %union.rec*, %union.rec** %link, align 8
  %os156 = bitcast %union.rec* %29 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 0
  %osucc59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %osucc59, align 8
  store %union.rec* %30, %union.rec** %link, align 8
  br label %for.cond

for.end.60:                                       ; preds = %if.then.45, %for.cond
  %31 = load %union.rec*, %union.rec** %link, align 8
  %32 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp61 = icmp eq %union.rec* %31, %32
  br i1 %cmp61, label %if.then.63, label %if.end.197

if.then.63:                                       ; preds = %for.end.60
  %33 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %33 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %34 = load %union.rec*, %union.rec** %ocross_sym, align 8
  %cmp64 = icmp eq %union.rec* %34, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.63
  %35 = load %union.rec*, %union.rec** %sym.addr, align 8
  call void @CrossInit(%union.rec* %35)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.then.63
  %36 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv68 = zext i8 %36 to i32
  store i32 %conv68, i32* @zz_size, align 4
  %conv69 = sext i32 %conv68 to i64
  %cmp70 = icmp uge i64 %conv69, 265
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.end.67
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call73 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %37)
  br label %if.end.89

if.else:                                          ; preds = %if.end.67
  %38 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx74 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %39 = load %union.rec*, %union.rec** %arrayidx74, align 8
  %cmp75 = icmp eq %union.rec* %39, null
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.else
  %40 = load i32, i32* @zz_size, align 4
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call78 = call %union.rec* @GetMemory(i32 %40, %struct.FILE_POS* %41)
  store %union.rec* %call78, %union.rec** @zz_hold, align 8
  br label %if.end.88

if.else.79:                                       ; preds = %if.else
  %42 = load i32, i32* @zz_size, align 4
  %idxprom80 = sext i32 %42 to i64
  %arrayidx81 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom80
  %43 = load %union.rec*, %union.rec** %arrayidx81, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os182 = bitcast %union.rec* %44 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 0
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %opred85, align 8
  %46 = load i32, i32* @zz_size, align 4
  %idxprom86 = sext i32 %46 to i64
  %arrayidx87 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom86
  store %union.rec* %45, %union.rec** %arrayidx87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.79, %if.then.77
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.72
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os190 = bitcast %union.rec* %47 to %struct.word_type*
  %ou191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 1
  %os1192 = bitcast %union.FIRST_UNION* %ou191 to %struct.anon*
  %otype93 = getelementptr inbounds %struct.anon, %struct.anon* %os1192, i32 0, i32 0
  store i8 0, i8* %otype93, align 1
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os194 = bitcast %union.rec* %49 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 1
  %osucc97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 1
  store %union.rec* %48, %union.rec** %osucc97, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os198 = bitcast %union.rec* %50 to %struct.word_type*
  %olist99 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist99, i32 0, i64 1
  %opred101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx100, i32 0, i32 0
  store %union.rec* %48, %union.rec** %opred101, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %51 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 0
  %osucc105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 1
  store %union.rec* %48, %union.rec** %osucc105, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1106 = bitcast %union.rec* %52 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %opred109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 0
  store %union.rec* %48, %union.rec** %opred109, align 8
  store %union.rec* %48, %union.rec** @xx_link, align 8
  %53 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %53, %union.rec** @zz_res, align 8
  %54 = load %union.rec*, %union.rec** %db.addr, align 8
  store %union.rec* %54, %union.rec** @zz_hold, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp110 = icmp eq %union.rec* %55, null
  br i1 %cmp110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.89
  %56 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.145

cond.false:                                       ; preds = %if.end.89
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp112 = icmp eq %union.rec* %57, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.false
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.115:                                   ; preds = %cond.false
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1116 = bitcast %union.rec* %59 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 0
  %opred119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %opred119, align 8
  store %union.rec* %60, %union.rec** @zz_tmp, align 8
  %61 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1120 = bitcast %union.rec* %61 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 0
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred123, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1124 = bitcast %union.rec* %63 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  store %union.rec* %62, %union.rec** %opred127, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1128 = bitcast %union.rec* %65 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %opred131, align 8
  %os1132 = bitcast %union.rec* %66 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %osucc135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc135, align 8
  %67 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %68 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1137 = bitcast %union.rec* %68 to %struct.word_type*
  %olist138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist138, i32 0, i64 0
  %opred140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx139, i32 0, i32 0
  store %union.rec* %67, %union.rec** %opred140, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1141 = bitcast %union.rec* %70 to %struct.word_type*
  %olist142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist142, i32 0, i64 0
  %osucc144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx143, i32 0, i32 1
  store %union.rec* %69, %union.rec** %osucc144, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.115, %cond.true.114
  %cond = phi %union.rec* [ %58, %cond.true.114 ], [ %69, %cond.false.115 ]
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.end, %cond.true
  %cond146 = phi %union.rec* [ %56, %cond.true ], [ %cond, %cond.end ]
  %71 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %71, %union.rec** @zz_res, align 8
  %72 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6147 = bitcast %union.rec* %72 to %struct.symbol_type*
  %ocross_sym148 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6147, i32 0, i32 8
  %73 = load %union.rec*, %union.rec** %ocross_sym148, align 8
  store %union.rec* %73, %union.rec** @zz_hold, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp149 = icmp eq %union.rec* %74, null
  br i1 %cmp149, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %cond.end.145
  %75 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.187

cond.false.152:                                   ; preds = %cond.end.145
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp153 = icmp eq %union.rec* %76, null
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %cond.false.152
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.185

cond.false.156:                                   ; preds = %cond.false.152
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %78 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 1
  %opred160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 0
  %79 = load %union.rec*, %union.rec** %opred160, align 8
  store %union.rec* %79, %union.rec** @zz_tmp, align 8
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1161 = bitcast %union.rec* %80 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 1
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %opred164, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1165 = bitcast %union.rec* %82 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 1
  %opred168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred168, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1169 = bitcast %union.rec* %84 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 1
  %opred172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %opred172, align 8
  %os1173 = bitcast %union.rec* %85 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %osucc176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 1
  store %union.rec* %83, %union.rec** %osucc176, align 8
  %86 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %87 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1177 = bitcast %union.rec* %87 to %struct.word_type*
  %olist178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist178, i32 0, i64 1
  %opred180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx179, i32 0, i32 0
  store %union.rec* %86, %union.rec** %opred180, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %89 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1181 = bitcast %union.rec* %89 to %struct.word_type*
  %olist182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist182, i32 0, i64 1
  %osucc184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx183, i32 0, i32 1
  store %union.rec* %88, %union.rec** %osucc184, align 8
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.156, %cond.true.155
  %cond186 = phi %union.rec* [ %77, %cond.true.155 ], [ %88, %cond.false.156 ]
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.end.185, %cond.true.151
  %cond188 = phi %union.rec* [ %75, %cond.true.151 ], [ %cond186, %cond.end.185 ]
  %90 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1189 = bitcast %union.rec* %90 to %struct.word_type*
  %olist190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist190, i32 0, i64 0
  %opred192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx191, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %opred192, align 8
  store %union.rec* %91, %union.rec** %link, align 8
  %92 = load i32, i32* %count, align 4
  %add = add nsw i32 %92, 1
  %conv193 = trunc i32 %add to i8
  %93 = load %union.rec*, %union.rec** %link, align 8
  %os4194 = bitcast %union.rec* %93 to %struct.link_type*
  %onumber195 = getelementptr inbounds %struct.link_type, %struct.link_type* %os4194, i32 0, i32 2
  store i8 %conv193, i8* %onumber195, align 1
  %94 = load %union.rec*, %union.rec** %link, align 8
  %os4196 = bitcast %union.rec* %94 to %struct.link_type*
  %odb_targ = getelementptr inbounds %struct.link_type, %struct.link_type* %os4196, i32 0, i32 3
  store i8 0, i8* %odb_targ, align 1
  br label %if.end.197

if.end.197:                                       ; preds = %cond.end.187, %for.end.60
  %95 = load %union.rec*, %union.rec** %link, align 8
  %os4198 = bitcast %union.rec* %95 to %struct.link_type*
  %onumber199 = getelementptr inbounds %struct.link_type, %struct.link_type* %os4198, i32 0, i32 2
  %96 = load i8, i8* %onumber199, align 1
  %conv200 = zext i8 %96 to i32
  store i32 %conv200, i32* %symnum, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %97 = load i32, i32* %gall.addr, align 4
  %tobool201 = icmp ne i32 %97, 0
  %cond202 = select i1 %tobool201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)
  %98 = load i32, i32* %symnum, align 4
  %99 = load i8*, i8** %tag.addr, align 8
  %call203 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* %cond202, i32 %98, i8* %99) #5
  %100 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1204 = bitcast %union.rec* %100 to %struct.word_type*
  %ou2205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 2
  %os24206 = bitcast %union.SECOND_UNION* %ou2205 to %struct.anon.3*
  %oin_memory = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24206, i32 0, i32 2
  %101 = load i8, i8* %oin_memory, align 1
  %tobool207 = icmp ne i8 %101, 0
  br i1 %tobool207, label %if.then.208, label %if.else.229

if.then.208:                                      ; preds = %if.end.197
  %102 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1209 = bitcast %union.rec* %102 to %struct.word_type*
  %ou3210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 3
  %odb_lines = bitcast %union.THIRD_UNION* %ou3210 to i8***
  %103 = load i8**, i8*** %odb_lines, align 8
  %104 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1211 = bitcast %union.rec* %104 to %struct.word_type*
  %ou2212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1211, i32 0, i32 2
  %os24213 = bitcast %union.SECOND_UNION* %ou2212 to %struct.anon.3*
  %oleft_pos = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24213, i32 0, i32 0
  %105 = load i16, i16* %oleft_pos, align 2
  %conv214 = zext i16 %105 to i32
  %sub = sub nsw i32 %conv214, 1
  %arraydecay215 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call216 = call i32 @SearchLines(i8** %103, i32 0, i32 %sub, i8* %arraydecay215, i32* %lnum)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %if.end.219, label %if.then.218

if.then.218:                                      ; preds = %if.then.208
  store i32 0, i32* %retval
  br label %return

if.end.219:                                       ; preds = %if.then.208
  %106 = load i32, i32* %lnum, align 4
  %idxprom220 = sext i32 %106 to i64
  %107 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1221 = bitcast %union.rec* %107 to %struct.word_type*
  %ou3222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 3
  %odb_lines223 = bitcast %union.THIRD_UNION* %ou3222 to i8***
  %108 = load i8**, i8*** %odb_lines223, align 8
  %arrayidx224 = getelementptr inbounds i8*, i8** %108, i64 %idxprom220
  %109 = load i8*, i8** %arrayidx224, align 8
  %110 = load i8*, i8** %seq.addr, align 8
  %111 = load i64*, i64** %dfpos.addr, align 8
  %112 = load i32*, i32** %dlnum.addr, align 8
  %arraydecay225 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call226 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0), i8* %110, i64* %111, i32* %112, i8* %arraydecay225) #5
  %113 = load i32, i32* %lnum, align 4
  %add227 = add nsw i32 %113, 1
  %conv228 = sext i32 %add227 to i64
  %114 = load i64*, i64** %cont.addr, align 8
  store i64 %conv228, i64* %114, align 8
  br label %if.end.261

if.else.229:                                      ; preds = %if.end.197
  %115 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1230 = bitcast %union.rec* %115 to %struct.word_type*
  %ou3231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 3
  %odb_filep232 = bitcast %union.THIRD_UNION* %ou3231 to %struct._IO_FILE**
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep232, align 8
  %call233 = call i32 @fseek(%struct._IO_FILE* %116, i64 0, i32 2)
  %117 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1234 = bitcast %union.rec* %117 to %struct.word_type*
  %ou3235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 3
  %odb_filep236 = bitcast %union.THIRD_UNION* %ou3235 to %struct._IO_FILE**
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep236, align 8
  %119 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1237 = bitcast %union.rec* %119 to %struct.word_type*
  %ou2238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1237, i32 0, i32 2
  %os24239 = bitcast %union.SECOND_UNION* %ou2238 to %struct.anon.3*
  %oleft_pos240 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24239, i32 0, i32 0
  %120 = load i16, i16* %oleft_pos240, align 2
  %conv241 = zext i16 %120 to i32
  %121 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1242 = bitcast %union.rec* %121 to %struct.word_type*
  %ou3243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 3
  %odb_filep244 = bitcast %union.THIRD_UNION* %ou3243 to %struct._IO_FILE**
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep244, align 8
  %call245 = call i64 @ftell(%struct._IO_FILE* %122)
  %conv246 = trunc i64 %call245 to i32
  %sub247 = sub nsw i32 %conv246, 1
  %arraydecay248 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay249 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %call250 = call i32 @SearchFile(%struct._IO_FILE* %118, i32 %conv241, i32 %sub247, i8* %arraydecay248, i8* %arraydecay249)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.end.253, label %if.then.252

if.then.252:                                      ; preds = %if.else.229
  store i32 0, i32* %retval
  br label %return

if.end.253:                                       ; preds = %if.else.229
  %arraydecay254 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %123 = load i8*, i8** %seq.addr, align 8
  %124 = load i64*, i64** %dfpos.addr, align 8
  %125 = load i32*, i32** %dlnum.addr, align 8
  %arraydecay255 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call256 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0), i8* %123, i64* %124, i32* %125, i8* %arraydecay255) #5
  %126 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1257 = bitcast %union.rec* %126 to %struct.word_type*
  %ou3258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 3
  %odb_filep259 = bitcast %union.THIRD_UNION* %ou3258 to %struct._IO_FILE**
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep259, align 8
  %call260 = call i64 @ftell(%struct._IO_FILE* %127)
  %128 = load i64*, i64** %cont.addr, align 8
  store i64 %call260, i64* %128, align 8
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.253, %if.end.219
  %arraydecay262 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call263 = call i32 @strcmp(i8* %arraydecay262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %cmp264 = icmp eq i32 %call263, 0
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.end.261
  %arraydecay267 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1268 = bitcast %union.rec* %129 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 4
  %arraydecay269 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call270 = call i8* @strcpy(i8* %arraydecay267, i8* %arraydecay269) #5
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.266, %if.end.261
  %arraydecay272 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call273 = call zeroext i16 @FileNum(i8* %arraydecay272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %130 = load i16*, i16** %dfnum.addr, align 8
  store i16 %call273, i16* %130, align 2
  %131 = load i16*, i16** %dfnum.addr, align 8
  %132 = load i16, i16* %131, align 2
  %conv274 = zext i16 %132 to i32
  %cmp275 = icmp eq i32 %conv274, 0
  br i1 %cmp275, label %if.then.277, label %if.end.282

if.then.277:                                      ; preds = %if.end.271
  %arraydecay278 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1279 = bitcast %union.rec* %133 to %struct.word_type*
  %ou1280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1279, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1280 to %struct.FILE_POS*
  %call281 = call zeroext i16 @DefineFile(i8* %arraydecay278, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %ofpos, i32 3, i32 0)
  %134 = load i16*, i16** %dfnum.addr, align 8
  store i16 %call281, i16* %134, align 2
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.277, %if.end.271
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.282, %if.then.252, %if.then.218, %if.then
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @SearchLines(i8** %lines, i32 %left, i32 %right, i8* %str, i32* %lnum) #0 {
entry:
  %retval = alloca i32, align 4
  %lines.addr = alloca i8**, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %lnum.addr = alloca i32*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %mid = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %res = alloca i32, align 4
  store i8** %lines, i8*** %lines.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32* %lnum, i32** %lnum.addr, align 8
  %0 = load i32, i32* %right.addr, align 4
  %1 = load i32, i32* %left.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %left.addr, align 4
  store i32 %2, i32* %l, align 4
  %3 = load i32, i32* %right.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %4 = load i32, i32* %l, align 4
  %5 = load i32, i32* %r, align 4
  %cmp1 = icmp sle i32 %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %l, align 4
  %7 = load i32, i32* %r, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %8 = load i32, i32* @UseCollate, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8**, i8*** %lines.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcollcmp(i8* %9, i8* %12)
  %cmp2 = icmp sle i32 %call, 0
  br i1 %cmp2, label %if.then.7, label %if.else

cond.false:                                       ; preds = %while.body
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i32, i32* %mid, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load i8**, i8*** %lines.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %15, i64 %idxprom3
  %16 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @strcmp(i8* %13, i8* %16) #4
  %cmp6 = icmp sle i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %cond.false, %cond.true
  %17 = load i32, i32* %mid, align 4
  %sub8 = sub nsw i32 %17, 1
  store i32 %sub8, i32* %r, align 4
  br label %if.end.10

if.else:                                          ; preds = %cond.false, %cond.true
  %18 = load i32, i32* %mid, align 4
  %add9 = add nsw i32 %18, 1
  store i32 %add9, i32* %l, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %l, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load i8**, i8*** %lines.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %20, i64 %idxprom11
  %21 = load i8*, i8** %arrayidx12, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* %arraydecay) #5
  %22 = load i8*, i8** %str.addr, align 8
  %arraydecay14 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %22, i8* %arraydecay14) #4
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %while.end
  store i32 1, i32* %res, align 4
  %23 = load i32, i32* %l, align 4
  %24 = load i32*, i32** %lnum.addr, align 8
  store i32 %23, i32* %24, align 4
  br label %if.end.19

if.else.18:                                       ; preds = %while.end
  store i32 0, i32* %res, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %25 = load i32, i32* %res, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @SearchFile(%struct._IO_FILE* %fp, i32 %left, i32 %right, i8* %str, i8* %line) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %mid = alloca i32, align 4
  %mid_end = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %res = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i32, i32* %left.addr, align 4
  store i32 %0, i32* %l, align 4
  %1 = load i32, i32* %right.addr, align 4
  store i32 %1, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %entry
  %2 = load i32, i32* %l, align 4
  %3 = load i32, i32* %r, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %l, align 4
  %5 = load i32, i32* %r, align 4
  %add = add nsw i32 %4, %5
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i32, i32* %mid, align 4
  %conv = sext i32 %7 to i64
  %call = call i32 @fseek(%struct._IO_FILE* %6, i64 %conv, i32 0)
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %8 = load i32, i32* %mid, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %mid, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  %cmp2 = icmp ne i32 %call1, 10
  br i1 %cmp2, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* %mid, align 4
  %11 = load i32, i32* %r, align 4
  %add4 = add nsw i32 %11, 1
  %cmp5 = icmp eq i32 %10, %add4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %12 = load i32, i32* %l, align 4
  store i32 %12, i32* %mid, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load i32, i32* %mid, align 4
  %conv7 = sext i32 %14 to i64
  %call8 = call i32 @fseek(%struct._IO_FILE* %13, i64 %conv7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %15 = load i8*, i8** %line.addr, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i8* @fgets(i8* %15, i32 512, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i64 @ftell(%struct._IO_FILE* %17)
  %conv11 = trunc i64 %call10 to i32
  %sub = sub nsw i32 %conv11, 1
  store i32 %sub, i32* %mid_end, align 4
  %18 = load i32, i32* %l, align 4
  %19 = load i32, i32* %mid, align 4
  %cmp12 = icmp sle i32 %18, %19
  br i1 %cmp12, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %21 = load i32, i32* %mid, align 4
  %22 = load i32, i32* %mid_end, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %24 = load i32, i32* %mid_end, align 4
  %25 = load i32, i32* %r, align 4
  %cmp22 = icmp sle i32 %24, %25
  br i1 %cmp22, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %27 = load i32, i32* @UseCollate, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %28 = load i8*, i8** %str.addr, align 8
  %29 = load i8*, i8** %line.addr, align 8
  %call27 = call i32 @strcollcmp(i8* %28, i8* %29)
  %cmp28 = icmp sle i32 %call27, 0
  br i1 %cmp28, label %if.then.33, label %if.else

cond.false:                                       ; preds = %if.end.26
  %30 = load i8*, i8** %str.addr, align 8
  %31 = load i8*, i8** %line.addr, align 8
  %call30 = call i32 @strcmp(i8* %30, i8* %31) #4
  %cmp31 = icmp sle i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %cond.false, %cond.true
  %32 = load i32, i32* %mid, align 4
  %sub34 = sub nsw i32 %32, 1
  store i32 %sub34, i32* %r, align 4
  br label %if.end.36

if.else:                                          ; preds = %cond.false, %cond.true
  %33 = load i32, i32* %mid_end, align 4
  %add35 = add nsw i32 %33, 1
  store i32 %add35, i32* %l, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.33
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i32, i32* %l, align 4
  %35 = load i32, i32* %right.addr, align 4
  %cmp37 = icmp slt i32 %34, %35
  br i1 %cmp37, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %while.end
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %37 = load i32, i32* %l, align 4
  %conv40 = sext i32 %37 to i64
  %call41 = call i32 @fseek(%struct._IO_FILE* %36, i64 %conv40, i32 0)
  %38 = load i8*, i8** %line.addr, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call42 = call i8* @fgets(i8* %38, i32 512, %struct._IO_FILE* %39)
  %40 = load i8*, i8** %line.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* %arraydecay) #5
  %41 = load i8*, i8** %str.addr, align 8
  %arraydecay44 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call45 = call i32 @strcmp(i8* %41, i8* %arraydecay44) #4
  %cmp46 = icmp eq i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  store i32 %conv47, i32* %res, align 4
  br label %if.end.49

if.else.48:                                       ; preds = %while.end
  store i32 0, i32* %res, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.then.39
  %42 = load i32, i32* %res, align 4
  ret i32 %42
}

declare zeroext i16 @FileNum(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @DbRetrieveNext(%union.rec* %db, i32* %gall, %union.rec** %sym, i8* %tag, i8* %seq, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca %union.rec*, align 8
  %gall.addr = alloca i32*, align 8
  %sym.addr = alloca %union.rec**, align 8
  %tag.addr = alloca i8*, align 8
  %seq.addr = alloca i8*, align 8
  %dfnum.addr = alloca i16*, align 8
  %dfpos.addr = alloca i64*, align 8
  %dlnum.addr = alloca i32*, align 8
  %cont.addr = alloca i64*, align 8
  %line = alloca [512 x i8], align 16
  %cline = alloca i8*, align 8
  %fname = alloca [512 x i8], align 16
  %symnum = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %db, %union.rec** %db.addr, align 8
  store i32* %gall, i32** %gall.addr, align 8
  store %union.rec** %sym, %union.rec*** %sym.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* %seq, i8** %seq.addr, align 8
  store i16* %dfnum, i16** %dfnum.addr, align 8
  store i64* %dfpos, i64** %dfpos.addr, align 8
  store i32* %dlnum, i32** %dlnum.addr, align 8
  store i64* %cont, i64** %cont.addr, align 8
  %0 = load %union.rec*, %union.rec** %db.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os24 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.3*
  %oreading = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os24, i32 0, i32 1
  %1 = load i8, i8* %oreading, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %db.addr, align 8
  %os11 = bitcast %union.rec* %3 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 3
  %odb_filep = bitcast %union.THIRD_UNION* %ou3 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep, align 8
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %union.rec*, %union.rec** %db.addr, align 8
  %os14 = bitcast %union.rec* %5 to %struct.word_type*
  %ou25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 2
  %os246 = bitcast %union.SECOND_UNION* %ou25 to %struct.anon.3*
  %oin_memory = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os246, i32 0, i32 2
  %6 = load i8, i8* %oin_memory, align 1
  %tobool7 = icmp ne i8 %6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.3
  %7 = load i64*, i64** %cont.addr, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %union.rec*, %union.rec** %db.addr, align 8
  %os19 = bitcast %union.rec* %9 to %struct.word_type*
  %ou210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 2
  %os2411 = bitcast %union.SECOND_UNION* %ou210 to %struct.anon.3*
  %oleft_pos = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os2411, i32 0, i32 0
  %10 = load i16, i16* %oleft_pos, align 2
  %conv = zext i16 %10 to i64
  %cmp12 = icmp sge i64 %8, %conv
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.8
  %11 = load i64*, i64** %cont.addr, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load %union.rec*, %union.rec** %db.addr, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %ou317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 3
  %odb_lines = bitcast %union.THIRD_UNION* %ou317 to i8***
  %14 = load i8**, i8*** %odb_lines, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %12
  %15 = load i8*, i8** %arrayidx, align 8
  store i8* %15, i8** %cline, align 8
  %16 = load i8*, i8** %cline, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 48
  %cond = select i1 %cmp20, i32 1, i32 0
  %18 = load i32*, i32** %gall.addr, align 8
  store i32 %cond, i32* %18, align 4
  %19 = load i32*, i32** %gall.addr, align 8
  %20 = load i32, i32* %19, align 4
  %idxprom = zext i32 %20 to i64
  %21 = load i8*, i8** %cline, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %22 = load i8*, i8** %tag.addr, align 8
  %23 = load i8*, i8** %seq.addr, align 8
  %24 = load i64*, i64** %dfpos.addr, align 8
  %25 = load i32*, i32** %dlnum.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0), i32* %symnum, i8* %22, i8* %23, i64* %24, i32* %25, i8* %arraydecay) #5
  %26 = load i64*, i64** %cont.addr, align 8
  %27 = load i64, i64* %26, align 8
  %add = add nsw i64 %27, 1
  %28 = load i64*, i64** %cont.addr, align 8
  store i64 %add, i64* %28, align 8
  br label %if.end.58

if.else:                                          ; preds = %if.end.3
  %29 = load %union.rec*, %union.rec** %db.addr, align 8
  %os124 = bitcast %union.rec* %29 to %struct.word_type*
  %ou325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 3
  %odb_filep26 = bitcast %union.THIRD_UNION* %ou325 to %struct._IO_FILE**
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep26, align 8
  %31 = load i64*, i64** %cont.addr, align 8
  %32 = load i64, i64* %31, align 8
  %cmp27 = icmp eq i64 %32, 0
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %33 = load %union.rec*, %union.rec** %db.addr, align 8
  %os129 = bitcast %union.rec* %33 to %struct.word_type*
  %ou230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 2
  %os2431 = bitcast %union.SECOND_UNION* %ou230 to %struct.anon.3*
  %oleft_pos32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %os2431, i32 0, i32 0
  %34 = load i16, i16* %oleft_pos32, align 2
  %conv33 = zext i16 %34 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %35 = load i64*, i64** %cont.addr, align 8
  %36 = load i64, i64* %35, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi i64 [ %conv33, %cond.true ], [ %36, %cond.false ]
  %call35 = call i32 @fseek(%struct._IO_FILE* %30, i64 %cond34, i32 0)
  %arraydecay36 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %db.addr, align 8
  %os137 = bitcast %union.rec* %37 to %struct.word_type*
  %ou338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 3
  %odb_filep39 = bitcast %union.THIRD_UNION* %ou338 to %struct._IO_FILE**
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep39, align 8
  %call40 = call i8* @fgets(i8* %arraydecay36, i32 512, %struct._IO_FILE* %38)
  %cmp41 = icmp eq i8* %call40, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %cond.end
  %arrayidx45 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 0
  %39 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %39 to i32
  %cmp47 = icmp eq i32 %conv46, 48
  %cond49 = select i1 %cmp47, i32 1, i32 0
  %40 = load i32*, i32** %gall.addr, align 8
  store i32 %cond49, i32* %40, align 4
  %41 = load i32*, i32** %gall.addr, align 8
  %42 = load i32, i32* %41, align 4
  %idxprom50 = zext i32 %42 to i64
  %arrayidx51 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %idxprom50
  %43 = load i8*, i8** %tag.addr, align 8
  %44 = load i8*, i8** %seq.addr, align 8
  %45 = load i64*, i64** %dfpos.addr, align 8
  %46 = load i32*, i32** %dlnum.addr, align 8
  %arraydecay52 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %call53 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0), i32* %symnum, i8* %43, i8* %44, i64* %45, i32* %46, i8* %arraydecay52) #5
  %47 = load %union.rec*, %union.rec** %db.addr, align 8
  %os154 = bitcast %union.rec* %47 to %struct.word_type*
  %ou355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 3
  %odb_filep56 = bitcast %union.THIRD_UNION* %ou355 to %struct._IO_FILE**
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %odb_filep56, align 8
  %call57 = call i64 @ftell(%struct._IO_FILE* %48)
  %49 = load i64*, i64** %cont.addr, align 8
  store i64 %call57, i64* %49, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.44, %if.end.15
  %arraydecay59 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %call60 = call i32 @strcmp(i8* %arraydecay59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %if.end.58
  %arraydecay64 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %db.addr, align 8
  %os165 = bitcast %union.rec* %50 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 4
  %arraydecay66 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call67 = call i8* @strcpy(i8* %arraydecay64, i8* %arraydecay66) #5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.63, %if.end.58
  %arraydecay69 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %call70 = call zeroext i16 @FileNum(i8* %arraydecay69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %51 = load i16*, i16** %dfnum.addr, align 8
  store i16 %call70, i16* %51, align 2
  %52 = load i16*, i16** %dfnum.addr, align 8
  %53 = load i16, i16* %52, align 2
  %conv71 = zext i16 %53 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.68
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %db.addr, align 8
  %os176 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call77 = call zeroext i16 @DefineFile(i8* %arraydecay75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %ofpos, i32 3, i32 0)
  %55 = load i16*, i16** %dfnum.addr, align 8
  store i16 %call77, i16* %55, align 2
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.68
  %56 = load %union.rec*, %union.rec** %db.addr, align 8
  %os179 = bitcast %union.rec* %56 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx80, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %57, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %if.end.78
  %58 = load %union.rec*, %union.rec** %link, align 8
  %59 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp81 = icmp ne %union.rec* %58, %59
  br i1 %cmp81, label %for.body, label %for.end.115

for.body:                                         ; preds = %for.cond
  %60 = load %union.rec*, %union.rec** %link, align 8
  %os183 = bitcast %union.rec* %60 to %struct.word_type*
  %olist84 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist84, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx85, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %61, %union.rec** %y, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc, %for.body
  %62 = load %union.rec*, %union.rec** %y, align 8
  %os187 = bitcast %union.rec* %62 to %struct.word_type*
  %ou188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 1
  %os1189 = bitcast %union.FIRST_UNION* %ou188 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1189, i32 0, i32 0
  %63 = load i8, i8* %otype, align 1
  %conv90 = zext i8 %63 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  br i1 %cmp91, label %for.body.93, label %for.end

for.body.93:                                      ; preds = %for.cond.86
  br label %for.inc

for.inc:                                          ; preds = %for.body.93
  %64 = load %union.rec*, %union.rec** %y, align 8
  %os194 = bitcast %union.rec* %64 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 1
  %opred97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %opred97, align 8
  store %union.rec* %65, %union.rec** %y, align 8
  br label %for.cond.86

for.end:                                          ; preds = %for.cond.86
  %66 = load %union.rec*, %union.rec** %y, align 8
  %os198 = bitcast %union.rec* %66 to %struct.word_type*
  %ou199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os198, i32 0, i32 1
  %os11100 = bitcast %union.FIRST_UNION* %ou199 to %struct.anon*
  %otype101 = getelementptr inbounds %struct.anon, %struct.anon* %os11100, i32 0, i32 0
  %67 = load i8, i8* %otype101, align 1
  %conv102 = zext i8 %67 to i32
  %cmp103 = icmp eq i32 %conv102, 140
  br i1 %cmp103, label %land.lhs.true, label %if.end.109

land.lhs.true:                                    ; preds = %for.end
  %68 = load %union.rec*, %union.rec** %link, align 8
  %os4 = bitcast %union.rec* %68 to %struct.link_type*
  %onumber = getelementptr inbounds %struct.link_type, %struct.link_type* %os4, i32 0, i32 2
  %69 = load i8, i8* %onumber, align 1
  %conv105 = zext i8 %69 to i32
  %70 = load i32, i32* %symnum, align 4
  %cmp106 = icmp eq i32 %conv105, %70
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %land.lhs.true
  br label %for.end.115

if.end.109:                                       ; preds = %land.lhs.true, %for.end
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %71 = load %union.rec*, %union.rec** %link, align 8
  %os1111 = bitcast %union.rec* %71 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 0
  %osucc114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %osucc114, align 8
  store %union.rec* %72, %union.rec** %link, align 8
  br label %for.cond

for.end.115:                                      ; preds = %if.then.108, %for.cond
  %73 = load %union.rec*, %union.rec** %link, align 8
  %74 = load %union.rec*, %union.rec** %db.addr, align 8
  %cmp116 = icmp ne %union.rec* %73, %74
  br i1 %cmp116, label %if.end.120, label %if.then.118

if.then.118:                                      ; preds = %for.end.115
  %75 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call119 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %for.end.115
  %76 = load %union.rec*, %union.rec** %y, align 8
  %os1121 = bitcast %union.rec* %76 to %struct.word_type*
  %ou1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1121, i32 0, i32 1
  %os11123 = bitcast %union.FIRST_UNION* %ou1122 to %struct.anon*
  %otype124 = getelementptr inbounds %struct.anon, %struct.anon* %os11123, i32 0, i32 0
  %77 = load i8, i8* %otype124, align 1
  %conv125 = zext i8 %77 to i32
  %cmp126 = icmp eq i32 %conv125, 140
  br i1 %cmp126, label %if.end.130, label %if.then.128

if.then.128:                                      ; preds = %if.end.120
  %78 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call129 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %if.end.120
  %79 = load %union.rec*, %union.rec** %y, align 8
  %os7 = bitcast %union.rec* %79 to %struct.cr_type*
  %osymb = getelementptr inbounds %struct.cr_type, %struct.cr_type* %os7, i32 0, i32 9
  %80 = load %union.rec*, %union.rec** %osymb, align 8
  %81 = load %union.rec**, %union.rec*** %sym.addr, align 8
  store %union.rec* %80, %union.rec** %81, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.130, %if.then.43, %if.then.14, %if.then.2
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @dtab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
entry:
  %S.addr = alloca %struct.anon.14*, align 8
  %newsize.addr = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %ent = alloca %union.rec*, align 8
  store %struct.anon.14* %S, %struct.anon.14** %S.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %call = call %struct.anon.14* @dtab_new(i32 %0)
  store %struct.anon.14* %call, %struct.anon.14** %NewS, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %dbchecktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %2, i32 0, i32 0
  %3 = load i32, i32* %dbchecktab_size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %dbchecktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item, i32 0, i64 %idxprom
  %6 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp1 = icmp ne %union.rec* %6, null
  br i1 %cmp1, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %dbchecktab_item3 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %dbchecktab_item3, i32 0, i64 %idxprom2
  %9 = load %union.rec*, %union.rec** %arrayidx4, align 8
  store %union.rec* %9, %union.rec** %ent, align 8
  %10 = load %union.rec*, %union.rec** %ent, align 8
  %os1 = bitcast %union.rec* %10 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %11 = load i8, i8* %otype, align 1
  %conv = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv, 17
  br i1 %cmp5, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %13 = load %union.rec*, %union.rec** %ent, align 8
  %os19 = bitcast %union.rec* %13 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 1
  %14 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %14, %union.rec** %link, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.31, %if.end
  %15 = load %union.rec*, %union.rec** %link, align 8
  %16 = load %union.rec*, %union.rec** %ent, align 8
  %cmp12 = icmp ne %union.rec* %15, %16
  br i1 %cmp12, label %for.body.14, label %for.end.36

for.body.14:                                      ; preds = %for.cond.11
  %17 = load %union.rec*, %union.rec** %link, align 8
  %os115 = bitcast %union.rec* %17 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %18, %union.rec** %z, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.14
  %19 = load %union.rec*, %union.rec** %z, align 8
  %os119 = bitcast %union.rec* %19 to %struct.word_type*
  %ou120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 1
  %os1121 = bitcast %union.FIRST_UNION* %ou120 to %struct.anon*
  %otype22 = getelementptr inbounds %struct.anon, %struct.anon* %os1121, i32 0, i32 0
  %20 = load i8, i8* %otype22, align 1
  %conv23 = zext i8 %20 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.18
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %21 = load %union.rec*, %union.rec** %z, align 8
  %os127 = bitcast %union.rec* %21 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 1
  %opred30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred30, align 8
  store %union.rec* %22, %union.rec** %z, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %23 = load %union.rec*, %union.rec** %z, align 8
  call void @dtab_insert(%union.rec* %23, %struct.anon.14** %NewS)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %24 = load %union.rec*, %union.rec** %link, align 8
  %os132 = bitcast %union.rec* %24 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 0
  %osucc35 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  %25 = load %union.rec*, %union.rec** %osucc35, align 8
  store %union.rec* %25, %union.rec** %link, align 8
  br label %for.cond.11

for.end.36:                                       ; preds = %for.cond.11
  %26 = load %union.rec*, %union.rec** %ent, align 8
  %call37 = call i32 @DisposeObject(%union.rec* %26)
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.36, %for.body
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %28 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %29 = bitcast %struct.anon.14* %28 to i8*
  call void @free(i8* %29) #5
  %30 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %30
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @strcollcmp(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
