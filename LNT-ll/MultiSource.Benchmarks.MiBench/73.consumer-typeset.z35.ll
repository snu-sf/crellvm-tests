; ModuleID = './MultiSource.Benchmarks.MiBench/73.consumer-typeset.z35.bc'
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@MomentSym = global %union.rec* null, align 8
@time_string = internal global [30 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"@Moment\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@StartSym = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@Second\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"@Minute\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"@Hour\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"@Day\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"@Month\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"@Year\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"@Century\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"@WeekDay\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"@YearDay\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"@DaylightSaving\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"unable to obtain the current time\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@current_moment = internal global %union.rec* null, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"%.2d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"StartMoment: current_moment == nilobj!\00", align 1

; Function Attrs: nounwind uwtable
define i8* @TimeString() #0 {
entry:
  ret i8* getelementptr inbounds ([30 x i8], [30 x i8]* @time_string, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @InitTime() #0 {
entry:
  %raw_time = alloca i64, align 8
  %now = alloca %struct.tm*, align 8
  %buff = alloca [20 x i8], align 16
  %par = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %second = alloca %union.rec*, align 8
  %minute = alloca %union.rec*, align 8
  %hour = alloca %union.rec*, align 8
  %weekday = alloca %union.rec*, align 8
  %monthday = alloca %union.rec*, align 8
  %yearday = alloca %union.rec*, align 8
  %month = alloca %union.rec*, align 8
  %year = alloca %union.rec*, align 8
  %century = alloca %union.rec*, align 8
  %dst = alloca %union.rec*, align 8
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1 = load %union.rec*, %union.rec** @StartSym, align 8
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %2)
  %call14 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 zeroext -113, %struct.FILE_POS* %0, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %1, %union.rec* %call)
  store %union.rec* %call14, %union.rec** %sym, align 8
  store %union.rec* %call14, %union.rec** @MomentSym, align 8
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4 = load %union.rec*, %union.rec** @MomentSym, align 8
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call15 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %5)
  %call16 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %3, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %4, %union.rec* %call15)
  store %union.rec* %call16, %union.rec** %sym, align 8
  store %union.rec* %call16, %union.rec** %tag, align 8
  %6 = load %union.rec*, %union.rec** %sym, align 8
  %os1 = bitcast %union.rec* %6 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ovisible = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %7 = bitcast [3 x i8]* %ovisible to i24*
  %bf.load = load i24, i24* %7, align 1
  %bf.clear = and i24 %bf.load, -65537
  %bf.set = or i24 %bf.clear, 65536
  store i24 %bf.set, i24* %7, align 1
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = load %union.rec*, %union.rec** @MomentSym, align 8
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call17 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %10)
  %call18 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %8, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %9, %union.rec* %call17)
  store %union.rec* %call18, %union.rec** %sym, align 8
  store %union.rec* %call18, %union.rec** %second, align 8
  %11 = load %union.rec*, %union.rec** %sym, align 8
  %os119 = bitcast %union.rec* %11 to %struct.word_type*
  %ou220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 2
  %os2621 = bitcast %union.SECOND_UNION* %ou220 to %struct.anon.5*
  %ovisible22 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2621, i32 0, i32 1
  %12 = bitcast [3 x i8]* %ovisible22 to i24*
  %bf.load23 = load i24, i24* %12, align 1
  %bf.clear24 = and i24 %bf.load23, -65537
  %bf.set25 = or i24 %bf.clear24, 65536
  store i24 %bf.set25, i24* %12, align 1
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = load %union.rec*, %union.rec** @MomentSym, align 8
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call26 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %15)
  %call27 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %13, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %14, %union.rec* %call26)
  store %union.rec* %call27, %union.rec** %sym, align 8
  store %union.rec* %call27, %union.rec** %minute, align 8
  %16 = load %union.rec*, %union.rec** %sym, align 8
  %os128 = bitcast %union.rec* %16 to %struct.word_type*
  %ou229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 2
  %os2630 = bitcast %union.SECOND_UNION* %ou229 to %struct.anon.5*
  %ovisible31 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2630, i32 0, i32 1
  %17 = bitcast [3 x i8]* %ovisible31 to i24*
  %bf.load32 = load i24, i24* %17, align 1
  %bf.clear33 = and i24 %bf.load32, -65537
  %bf.set34 = or i24 %bf.clear33, 65536
  store i24 %bf.set34, i24* %17, align 1
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %19 = load %union.rec*, %union.rec** @MomentSym, align 8
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %20)
  %call36 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %18, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %19, %union.rec* %call35)
  store %union.rec* %call36, %union.rec** %sym, align 8
  store %union.rec* %call36, %union.rec** %hour, align 8
  %21 = load %union.rec*, %union.rec** %sym, align 8
  %os137 = bitcast %union.rec* %21 to %struct.word_type*
  %ou238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 2
  %os2639 = bitcast %union.SECOND_UNION* %ou238 to %struct.anon.5*
  %ovisible40 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2639, i32 0, i32 1
  %22 = bitcast [3 x i8]* %ovisible40 to i24*
  %bf.load41 = load i24, i24* %22, align 1
  %bf.clear42 = and i24 %bf.load41, -65537
  %bf.set43 = or i24 %bf.clear42, 65536
  store i24 %bf.set43, i24* %22, align 1
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %24 = load %union.rec*, %union.rec** @MomentSym, align 8
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call44 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %25)
  %call45 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %23, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %24, %union.rec* %call44)
  store %union.rec* %call45, %union.rec** %sym, align 8
  store %union.rec* %call45, %union.rec** %monthday, align 8
  %26 = load %union.rec*, %union.rec** %sym, align 8
  %os146 = bitcast %union.rec* %26 to %struct.word_type*
  %ou247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 2
  %os2648 = bitcast %union.SECOND_UNION* %ou247 to %struct.anon.5*
  %ovisible49 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2648, i32 0, i32 1
  %27 = bitcast [3 x i8]* %ovisible49 to i24*
  %bf.load50 = load i24, i24* %27, align 1
  %bf.clear51 = and i24 %bf.load50, -65537
  %bf.set52 = or i24 %bf.clear51, 65536
  store i24 %bf.set52, i24* %27, align 1
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %29 = load %union.rec*, %union.rec** @MomentSym, align 8
  %30 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call53 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %30)
  %call54 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %28, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %29, %union.rec* %call53)
  store %union.rec* %call54, %union.rec** %sym, align 8
  store %union.rec* %call54, %union.rec** %month, align 8
  %31 = load %union.rec*, %union.rec** %sym, align 8
  %os155 = bitcast %union.rec* %31 to %struct.word_type*
  %ou256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 2
  %os2657 = bitcast %union.SECOND_UNION* %ou256 to %struct.anon.5*
  %ovisible58 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2657, i32 0, i32 1
  %32 = bitcast [3 x i8]* %ovisible58 to i24*
  %bf.load59 = load i24, i24* %32, align 1
  %bf.clear60 = and i24 %bf.load59, -65537
  %bf.set61 = or i24 %bf.clear60, 65536
  store i24 %bf.set61, i24* %32, align 1
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %34 = load %union.rec*, %union.rec** @MomentSym, align 8
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call62 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %35)
  %call63 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %33, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %34, %union.rec* %call62)
  store %union.rec* %call63, %union.rec** %sym, align 8
  store %union.rec* %call63, %union.rec** %year, align 8
  %36 = load %union.rec*, %union.rec** %sym, align 8
  %os164 = bitcast %union.rec* %36 to %struct.word_type*
  %ou265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 2
  %os2666 = bitcast %union.SECOND_UNION* %ou265 to %struct.anon.5*
  %ovisible67 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2666, i32 0, i32 1
  %37 = bitcast [3 x i8]* %ovisible67 to i24*
  %bf.load68 = load i24, i24* %37, align 1
  %bf.clear69 = and i24 %bf.load68, -65537
  %bf.set70 = or i24 %bf.clear69, 65536
  store i24 %bf.set70, i24* %37, align 1
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %39 = load %union.rec*, %union.rec** @MomentSym, align 8
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call71 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %40)
  %call72 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %38, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %39, %union.rec* %call71)
  store %union.rec* %call72, %union.rec** %sym, align 8
  store %union.rec* %call72, %union.rec** %century, align 8
  %41 = load %union.rec*, %union.rec** %sym, align 8
  %os173 = bitcast %union.rec* %41 to %struct.word_type*
  %ou274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 2
  %os2675 = bitcast %union.SECOND_UNION* %ou274 to %struct.anon.5*
  %ovisible76 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2675, i32 0, i32 1
  %42 = bitcast [3 x i8]* %ovisible76 to i24*
  %bf.load77 = load i24, i24* %42, align 1
  %bf.clear78 = and i24 %bf.load77, -65537
  %bf.set79 = or i24 %bf.clear78, 65536
  store i24 %bf.set79, i24* %42, align 1
  %43 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %44 = load %union.rec*, %union.rec** @MomentSym, align 8
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call80 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %45)
  %call81 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %43, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %44, %union.rec* %call80)
  store %union.rec* %call81, %union.rec** %sym, align 8
  store %union.rec* %call81, %union.rec** %weekday, align 8
  %46 = load %union.rec*, %union.rec** %sym, align 8
  %os182 = bitcast %union.rec* %46 to %struct.word_type*
  %ou283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 2
  %os2684 = bitcast %union.SECOND_UNION* %ou283 to %struct.anon.5*
  %ovisible85 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2684, i32 0, i32 1
  %47 = bitcast [3 x i8]* %ovisible85 to i24*
  %bf.load86 = load i24, i24* %47, align 1
  %bf.clear87 = and i24 %bf.load86, -65537
  %bf.set88 = or i24 %bf.clear87, 65536
  store i24 %bf.set88, i24* %47, align 1
  %48 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %49 = load %union.rec*, %union.rec** @MomentSym, align 8
  %50 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call89 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %50)
  %call90 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %48, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %49, %union.rec* %call89)
  store %union.rec* %call90, %union.rec** %sym, align 8
  store %union.rec* %call90, %union.rec** %yearday, align 8
  %51 = load %union.rec*, %union.rec** %sym, align 8
  %os191 = bitcast %union.rec* %51 to %struct.word_type*
  %ou292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 2
  %os2693 = bitcast %union.SECOND_UNION* %ou292 to %struct.anon.5*
  %ovisible94 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os2693, i32 0, i32 1
  %52 = bitcast [3 x i8]* %ovisible94 to i24*
  %bf.load95 = load i24, i24* %52, align 1
  %bf.clear96 = and i24 %bf.load95, -65537
  %bf.set97 = or i24 %bf.clear96, 65536
  store i24 %bf.set97, i24* %52, align 1
  %53 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %54 = load %union.rec*, %union.rec** @MomentSym, align 8
  %55 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call98 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %55)
  %call99 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8 zeroext -111, %struct.FILE_POS* %53, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %54, %union.rec* %call98)
  store %union.rec* %call99, %union.rec** %sym, align 8
  store %union.rec* %call99, %union.rec** %dst, align 8
  %56 = load %union.rec*, %union.rec** %sym, align 8
  %os1100 = bitcast %union.rec* %56 to %struct.word_type*
  %ou2101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 2
  %os26102 = bitcast %union.SECOND_UNION* %ou2101 to %struct.anon.5*
  %ovisible103 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26102, i32 0, i32 1
  %57 = bitcast [3 x i8]* %ovisible103 to i24*
  %bf.load104 = load i24, i24* %57, align 1
  %bf.clear105 = and i24 %bf.load104, -65537
  %bf.set106 = or i24 %bf.clear105, 65536
  store i24 %bf.set106, i24* %57, align 1
  %call107 = call i64 @time(i64* %raw_time) #3
  %cmp = icmp eq i64 %call107, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call108 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 35, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %58)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call109 = call %struct.tm* @localtime(i64* %raw_time) #3
  store %struct.tm* %call109, %struct.tm** %now, align 8
  %59 = load %struct.tm*, %struct.tm** %now, align 8
  %call110 = call i8* @asctime(%struct.tm* %59) #3
  %call111 = call i8* @strcpy(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @time_string, i32 0, i32 0), i8* %call110) #3
  %60 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %conv = zext i8 %60 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv112 = sext i32 %conv to i64
  %cmp113 = icmp uge i64 %conv112, 265
  br i1 %cmp113, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %if.end
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call116 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %61)
  br label %if.end.129

if.else:                                          ; preds = %if.end
  %62 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %62 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %63 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp117 = icmp eq %union.rec* %63, null
  br i1 %cmp117, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %if.else
  %64 = load i32, i32* @zz_size, align 4
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call120 = call %union.rec* @GetMemory(i32 %64, %struct.FILE_POS* %65)
  store %union.rec* %call120, %union.rec** @zz_hold, align 8
  br label %if.end.128

if.else.121:                                      ; preds = %if.else
  %66 = load i32, i32* @zz_size, align 4
  %idxprom122 = sext i32 %66 to i64
  %arrayidx123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom122
  %67 = load %union.rec*, %union.rec** %arrayidx123, align 8
  store %union.rec* %67, %union.rec** @zz_hold, align 8
  store %union.rec* %67, %union.rec** @zz_hold, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1124 = bitcast %union.rec* %68 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred, align 8
  %70 = load i32, i32* @zz_size, align 4
  %idxprom126 = sext i32 %70 to i64
  %arrayidx127 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom126
  store %union.rec* %69, %union.rec** %arrayidx127, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.121, %if.then.119
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.115
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1130 = bitcast %union.rec* %71 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 2, i8* %otype, align 1
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1131 = bitcast %union.rec* %73 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1134 = bitcast %union.rec* %74 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 1
  %opred137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred137, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1138 = bitcast %union.rec* %75 to %struct.word_type*
  %olist139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist139, i32 0, i64 0
  %osucc141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx140, i32 0, i32 1
  store %union.rec* %72, %union.rec** %osucc141, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1142 = bitcast %union.rec* %76 to %struct.word_type*
  %olist143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist143, i32 0, i64 0
  %opred145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx144, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred145, align 8
  store %union.rec* %72, %union.rec** @current_moment, align 8
  %77 = load %union.rec*, %union.rec** @MomentSym, align 8
  %78 = load %union.rec*, %union.rec** @current_moment, align 8
  %os2 = bitcast %union.rec* %78 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  store %union.rec* %77, %union.rec** %oactual, align 8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %call146 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #3
  %79 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv147 = zext i8 %79 to i32
  store i32 %conv147, i32* @zz_size, align 4
  %conv148 = sext i32 %conv147 to i64
  %cmp149 = icmp uge i64 %conv148, 265
  br i1 %cmp149, label %if.then.151, label %if.else.153

if.then.151:                                      ; preds = %if.end.129
  %80 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call152 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %80)
  br label %if.end.170

if.else.153:                                      ; preds = %if.end.129
  %81 = load i32, i32* @zz_size, align 4
  %idxprom154 = sext i32 %81 to i64
  %arrayidx155 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom154
  %82 = load %union.rec*, %union.rec** %arrayidx155, align 8
  %cmp156 = icmp eq %union.rec* %82, null
  br i1 %cmp156, label %if.then.158, label %if.else.160

if.then.158:                                      ; preds = %if.else.153
  %83 = load i32, i32* @zz_size, align 4
  %84 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call159 = call %union.rec* @GetMemory(i32 %83, %struct.FILE_POS* %84)
  store %union.rec* %call159, %union.rec** @zz_hold, align 8
  br label %if.end.169

if.else.160:                                      ; preds = %if.else.153
  %85 = load i32, i32* @zz_size, align 4
  %idxprom161 = sext i32 %85 to i64
  %arrayidx162 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom161
  %86 = load %union.rec*, %union.rec** %arrayidx162, align 8
  store %union.rec* %86, %union.rec** @zz_hold, align 8
  store %union.rec* %86, %union.rec** @zz_hold, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1163 = bitcast %union.rec* %87 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 0
  %opred166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %opred166, align 8
  %89 = load i32, i32* @zz_size, align 4
  %idxprom167 = sext i32 %89 to i64
  %arrayidx168 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom167
  store %union.rec* %88, %union.rec** %arrayidx168, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.160, %if.then.158
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.151
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1171 = bitcast %union.rec* %90 to %struct.word_type*
  %ou1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 1
  %os11173 = bitcast %union.FIRST_UNION* %ou1172 to %struct.anon*
  %otype174 = getelementptr inbounds %struct.anon, %struct.anon* %os11173, i32 0, i32 0
  store i8 10, i8* %otype174, align 1
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %92 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 1
  %osucc178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 1
  store %union.rec* %91, %union.rec** %osucc178, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1179 = bitcast %union.rec* %93 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 1
  %opred182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 0
  store %union.rec* %91, %union.rec** %opred182, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1183 = bitcast %union.rec* %94 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 0
  %osucc186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 1
  store %union.rec* %91, %union.rec** %osucc186, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1187 = bitcast %union.rec* %95 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 0
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  store %union.rec* %91, %union.rec** %opred190, align 8
  store %union.rec* %91, %union.rec** %par, align 8
  %96 = load %union.rec*, %union.rec** %tag, align 8
  %97 = load %union.rec*, %union.rec** %par, align 8
  %os2191 = bitcast %union.rec* %97 to %struct.closure_type*
  %oactual192 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2191, i32 0, i32 5
  store %union.rec* %96, %union.rec** %oactual192, align 8
  %98 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv193 = zext i8 %98 to i32
  store i32 %conv193, i32* @zz_size, align 4
  %conv194 = sext i32 %conv193 to i64
  %cmp195 = icmp uge i64 %conv194, 265
  br i1 %cmp195, label %if.then.197, label %if.else.199

if.then.197:                                      ; preds = %if.end.170
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call198 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %99)
  br label %if.end.216

if.else.199:                                      ; preds = %if.end.170
  %100 = load i32, i32* @zz_size, align 4
  %idxprom200 = sext i32 %100 to i64
  %arrayidx201 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom200
  %101 = load %union.rec*, %union.rec** %arrayidx201, align 8
  %cmp202 = icmp eq %union.rec* %101, null
  br i1 %cmp202, label %if.then.204, label %if.else.206

if.then.204:                                      ; preds = %if.else.199
  %102 = load i32, i32* @zz_size, align 4
  %103 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call205 = call %union.rec* @GetMemory(i32 %102, %struct.FILE_POS* %103)
  store %union.rec* %call205, %union.rec** @zz_hold, align 8
  br label %if.end.215

if.else.206:                                      ; preds = %if.else.199
  %104 = load i32, i32* @zz_size, align 4
  %idxprom207 = sext i32 %104 to i64
  %arrayidx208 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom207
  %105 = load %union.rec*, %union.rec** %arrayidx208, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1209 = bitcast %union.rec* %106 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 0
  %opred212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 0
  %107 = load %union.rec*, %union.rec** %opred212, align 8
  %108 = load i32, i32* @zz_size, align 4
  %idxprom213 = sext i32 %108 to i64
  %arrayidx214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom213
  store %union.rec* %107, %union.rec** %arrayidx214, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.206, %if.then.204
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.197
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1217 = bitcast %union.rec* %109 to %struct.word_type*
  %ou1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 1
  %os11219 = bitcast %union.FIRST_UNION* %ou1218 to %struct.anon*
  %otype220 = getelementptr inbounds %struct.anon, %struct.anon* %os11219, i32 0, i32 0
  store i8 0, i8* %otype220, align 1
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1221 = bitcast %union.rec* %111 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 1
  %osucc224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 1
  store %union.rec* %110, %union.rec** %osucc224, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1225 = bitcast %union.rec* %112 to %struct.word_type*
  %olist226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist226, i32 0, i64 1
  %opred228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx227, i32 0, i32 0
  store %union.rec* %110, %union.rec** %opred228, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1229 = bitcast %union.rec* %113 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 0
  %osucc232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 1
  store %union.rec* %110, %union.rec** %osucc232, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1233 = bitcast %union.rec* %114 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 0
  %opred236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 0
  store %union.rec* %110, %union.rec** %opred236, align 8
  store %union.rec* %110, %union.rec** @xx_link, align 8
  %115 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %115, %union.rec** @zz_res, align 8
  %116 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %116, %union.rec** @zz_hold, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp237 = icmp eq %union.rec* %117, null
  br i1 %cmp237, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.216
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.271

cond.false:                                       ; preds = %if.end.216
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp239 = icmp eq %union.rec* %119, null
  br i1 %cmp239, label %cond.true.241, label %cond.false.242

cond.true.241:                                    ; preds = %cond.false
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.242:                                   ; preds = %cond.false
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1243 = bitcast %union.rec* %121 to %struct.word_type*
  %olist244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1243, i32 0, i32 0
  %arrayidx245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist244, i32 0, i64 0
  %opred246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx245, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %opred246, align 8
  store %union.rec* %122, %union.rec** @zz_tmp, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1247 = bitcast %union.rec* %123 to %struct.word_type*
  %olist248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1247, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist248, i32 0, i64 0
  %opred250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx249, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %opred250, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1251 = bitcast %union.rec* %125 to %struct.word_type*
  %olist252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist252, i32 0, i64 0
  %opred254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx253, i32 0, i32 0
  store %union.rec* %124, %union.rec** %opred254, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1255 = bitcast %union.rec* %127 to %struct.word_type*
  %olist256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist256, i32 0, i64 0
  %opred258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx257, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %opred258, align 8
  %os1259 = bitcast %union.rec* %128 to %struct.word_type*
  %olist260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist260, i32 0, i64 0
  %osucc262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx261, i32 0, i32 1
  store %union.rec* %126, %union.rec** %osucc262, align 8
  %129 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1263 = bitcast %union.rec* %130 to %struct.word_type*
  %olist264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1263, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist264, i32 0, i64 0
  %opred266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx265, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred266, align 8
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  %132 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1267 = bitcast %union.rec* %132 to %struct.word_type*
  %olist268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist268, i32 0, i64 0
  %osucc270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx269, i32 0, i32 1
  store %union.rec* %131, %union.rec** %osucc270, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.242, %cond.true.241
  %cond = phi %union.rec* [ %120, %cond.true.241 ], [ %131, %cond.false.242 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end, %cond.true
  %cond272 = phi %union.rec* [ %118, %cond.true ], [ %cond, %cond.end ]
  %133 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %133, %union.rec** @zz_res, align 8
  %134 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %134, %union.rec** @zz_hold, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp273 = icmp eq %union.rec* %135, null
  br i1 %cmp273, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %cond.end.271
  %136 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.311

cond.false.276:                                   ; preds = %cond.end.271
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp277 = icmp eq %union.rec* %137, null
  br i1 %cmp277, label %cond.true.279, label %cond.false.280

cond.true.279:                                    ; preds = %cond.false.276
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.309

cond.false.280:                                   ; preds = %cond.false.276
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1281 = bitcast %union.rec* %139 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 1
  %opred284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 0
  %140 = load %union.rec*, %union.rec** %opred284, align 8
  store %union.rec* %140, %union.rec** @zz_tmp, align 8
  %141 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1285 = bitcast %union.rec* %141 to %struct.word_type*
  %olist286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1285, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist286, i32 0, i64 1
  %opred288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx287, i32 0, i32 0
  %142 = load %union.rec*, %union.rec** %opred288, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1289 = bitcast %union.rec* %143 to %struct.word_type*
  %olist290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist290, i32 0, i64 1
  %opred292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx291, i32 0, i32 0
  store %union.rec* %142, %union.rec** %opred292, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %145 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1293 = bitcast %union.rec* %145 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 1
  %opred296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %opred296, align 8
  %os1297 = bitcast %union.rec* %146 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 1
  %osucc300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 1
  store %union.rec* %144, %union.rec** %osucc300, align 8
  %147 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1301 = bitcast %union.rec* %148 to %struct.word_type*
  %olist302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1301, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist302, i32 0, i64 1
  %opred304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx303, i32 0, i32 0
  store %union.rec* %147, %union.rec** %opred304, align 8
  %149 = load %union.rec*, %union.rec** @zz_res, align 8
  %150 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1305 = bitcast %union.rec* %150 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 1
  %osucc308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 1
  store %union.rec* %149, %union.rec** %osucc308, align 8
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.280, %cond.true.279
  %cond310 = phi %union.rec* [ %138, %cond.true.279 ], [ %149, %cond.false.280 ]
  br label %cond.end.311

cond.end.311:                                     ; preds = %cond.end.309, %cond.true.275
  %cond312 = phi %union.rec* [ %136, %cond.true.275 ], [ %cond310, %cond.end.309 ]
  %arraydecay313 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call314 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay313, %struct.FILE_POS* %151)
  store %union.rec* %call314, %union.rec** %tmp, align 8
  %152 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv315 = zext i8 %152 to i32
  store i32 %conv315, i32* @zz_size, align 4
  %conv316 = sext i32 %conv315 to i64
  %cmp317 = icmp uge i64 %conv316, 265
  br i1 %cmp317, label %if.then.319, label %if.else.321

if.then.319:                                      ; preds = %cond.end.311
  %153 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call320 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %153)
  br label %if.end.338

if.else.321:                                      ; preds = %cond.end.311
  %154 = load i32, i32* @zz_size, align 4
  %idxprom322 = sext i32 %154 to i64
  %arrayidx323 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom322
  %155 = load %union.rec*, %union.rec** %arrayidx323, align 8
  %cmp324 = icmp eq %union.rec* %155, null
  br i1 %cmp324, label %if.then.326, label %if.else.328

if.then.326:                                      ; preds = %if.else.321
  %156 = load i32, i32* @zz_size, align 4
  %157 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call327 = call %union.rec* @GetMemory(i32 %156, %struct.FILE_POS* %157)
  store %union.rec* %call327, %union.rec** @zz_hold, align 8
  br label %if.end.337

if.else.328:                                      ; preds = %if.else.321
  %158 = load i32, i32* @zz_size, align 4
  %idxprom329 = sext i32 %158 to i64
  %arrayidx330 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom329
  %159 = load %union.rec*, %union.rec** %arrayidx330, align 8
  store %union.rec* %159, %union.rec** @zz_hold, align 8
  store %union.rec* %159, %union.rec** @zz_hold, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1331 = bitcast %union.rec* %160 to %struct.word_type*
  %olist332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1331, i32 0, i32 0
  %arrayidx333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist332, i32 0, i64 0
  %opred334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx333, i32 0, i32 0
  %161 = load %union.rec*, %union.rec** %opred334, align 8
  %162 = load i32, i32* @zz_size, align 4
  %idxprom335 = sext i32 %162 to i64
  %arrayidx336 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom335
  store %union.rec* %161, %union.rec** %arrayidx336, align 8
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.328, %if.then.326
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.then.319
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1339 = bitcast %union.rec* %163 to %struct.word_type*
  %ou1340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1339, i32 0, i32 1
  %os11341 = bitcast %union.FIRST_UNION* %ou1340 to %struct.anon*
  %otype342 = getelementptr inbounds %struct.anon, %struct.anon* %os11341, i32 0, i32 0
  store i8 0, i8* %otype342, align 1
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1343 = bitcast %union.rec* %165 to %struct.word_type*
  %olist344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist344, i32 0, i64 1
  %osucc346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx345, i32 0, i32 1
  store %union.rec* %164, %union.rec** %osucc346, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1347 = bitcast %union.rec* %166 to %struct.word_type*
  %olist348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1347, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist348, i32 0, i64 1
  %opred350 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx349, i32 0, i32 0
  store %union.rec* %164, %union.rec** %opred350, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1351 = bitcast %union.rec* %167 to %struct.word_type*
  %olist352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1351, i32 0, i32 0
  %arrayidx353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist352, i32 0, i64 0
  %osucc354 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx353, i32 0, i32 1
  store %union.rec* %164, %union.rec** %osucc354, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1355 = bitcast %union.rec* %168 to %struct.word_type*
  %olist356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1355, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist356, i32 0, i64 0
  %opred358 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx357, i32 0, i32 0
  store %union.rec* %164, %union.rec** %opred358, align 8
  store %union.rec* %164, %union.rec** @xx_link, align 8
  %169 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %169, %union.rec** @zz_res, align 8
  %170 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %170, %union.rec** @zz_hold, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp359 = icmp eq %union.rec* %171, null
  br i1 %cmp359, label %cond.true.361, label %cond.false.362

cond.true.361:                                    ; preds = %if.end.338
  %172 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.397

cond.false.362:                                   ; preds = %if.end.338
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp363 = icmp eq %union.rec* %173, null
  br i1 %cmp363, label %cond.true.365, label %cond.false.366

cond.true.365:                                    ; preds = %cond.false.362
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.395

cond.false.366:                                   ; preds = %cond.false.362
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1367 = bitcast %union.rec* %175 to %struct.word_type*
  %olist368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1367, i32 0, i32 0
  %arrayidx369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist368, i32 0, i64 0
  %opred370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx369, i32 0, i32 0
  %176 = load %union.rec*, %union.rec** %opred370, align 8
  store %union.rec* %176, %union.rec** @zz_tmp, align 8
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1371 = bitcast %union.rec* %177 to %struct.word_type*
  %olist372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1371, i32 0, i32 0
  %arrayidx373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist372, i32 0, i64 0
  %opred374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx373, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %opred374, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1375 = bitcast %union.rec* %179 to %struct.word_type*
  %olist376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1375, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist376, i32 0, i64 0
  %opred378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx377, i32 0, i32 0
  store %union.rec* %178, %union.rec** %opred378, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1379 = bitcast %union.rec* %181 to %struct.word_type*
  %olist380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1379, i32 0, i32 0
  %arrayidx381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist380, i32 0, i64 0
  %opred382 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx381, i32 0, i32 0
  %182 = load %union.rec*, %union.rec** %opred382, align 8
  %os1383 = bitcast %union.rec* %182 to %struct.word_type*
  %olist384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1383, i32 0, i32 0
  %arrayidx385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist384, i32 0, i64 0
  %osucc386 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx385, i32 0, i32 1
  store %union.rec* %180, %union.rec** %osucc386, align 8
  %183 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %184 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1387 = bitcast %union.rec* %184 to %struct.word_type*
  %olist388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1387, i32 0, i32 0
  %arrayidx389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist388, i32 0, i64 0
  %opred390 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx389, i32 0, i32 0
  store %union.rec* %183, %union.rec** %opred390, align 8
  %185 = load %union.rec*, %union.rec** @zz_res, align 8
  %186 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1391 = bitcast %union.rec* %186 to %struct.word_type*
  %olist392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 0
  %arrayidx393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist392, i32 0, i64 0
  %osucc394 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx393, i32 0, i32 1
  store %union.rec* %185, %union.rec** %osucc394, align 8
  br label %cond.end.395

cond.end.395:                                     ; preds = %cond.false.366, %cond.true.365
  %cond396 = phi %union.rec* [ %174, %cond.true.365 ], [ %185, %cond.false.366 ]
  br label %cond.end.397

cond.end.397:                                     ; preds = %cond.end.395, %cond.true.361
  %cond398 = phi %union.rec* [ %172, %cond.true.361 ], [ %cond396, %cond.end.395 ]
  %187 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %187, %union.rec** @zz_res, align 8
  %188 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %188, %union.rec** @zz_hold, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp399 = icmp eq %union.rec* %189, null
  br i1 %cmp399, label %cond.true.401, label %cond.false.402

cond.true.401:                                    ; preds = %cond.end.397
  %190 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.437

cond.false.402:                                   ; preds = %cond.end.397
  %191 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp403 = icmp eq %union.rec* %191, null
  br i1 %cmp403, label %cond.true.405, label %cond.false.406

cond.true.405:                                    ; preds = %cond.false.402
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.435

cond.false.406:                                   ; preds = %cond.false.402
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1407 = bitcast %union.rec* %193 to %struct.word_type*
  %olist408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 0
  %arrayidx409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist408, i32 0, i64 1
  %opred410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx409, i32 0, i32 0
  %194 = load %union.rec*, %union.rec** %opred410, align 8
  store %union.rec* %194, %union.rec** @zz_tmp, align 8
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1411 = bitcast %union.rec* %195 to %struct.word_type*
  %olist412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1411, i32 0, i32 0
  %arrayidx413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist412, i32 0, i64 1
  %opred414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx413, i32 0, i32 0
  %196 = load %union.rec*, %union.rec** %opred414, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1415 = bitcast %union.rec* %197 to %struct.word_type*
  %olist416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist416, i32 0, i64 1
  %opred418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx417, i32 0, i32 0
  store %union.rec* %196, %union.rec** %opred418, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1419 = bitcast %union.rec* %199 to %struct.word_type*
  %olist420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 0
  %arrayidx421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist420, i32 0, i64 1
  %opred422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx421, i32 0, i32 0
  %200 = load %union.rec*, %union.rec** %opred422, align 8
  %os1423 = bitcast %union.rec* %200 to %struct.word_type*
  %olist424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist424, i32 0, i64 1
  %osucc426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx425, i32 0, i32 1
  store %union.rec* %198, %union.rec** %osucc426, align 8
  %201 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %202 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1427 = bitcast %union.rec* %202 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 1
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  store %union.rec* %201, %union.rec** %opred430, align 8
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  %204 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1431 = bitcast %union.rec* %204 to %struct.word_type*
  %olist432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 0
  %arrayidx433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist432, i32 0, i64 1
  %osucc434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx433, i32 0, i32 1
  store %union.rec* %203, %union.rec** %osucc434, align 8
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.406, %cond.true.405
  %cond436 = phi %union.rec* [ %192, %cond.true.405 ], [ %203, %cond.false.406 ]
  br label %cond.end.437

cond.end.437:                                     ; preds = %cond.end.435, %cond.true.401
  %cond438 = phi %union.rec* [ %190, %cond.true.401 ], [ %cond436, %cond.end.435 ]
  %arraydecay439 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %205 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %205, i32 0, i32 0
  %206 = load i32, i32* %tm_sec, align 4
  %call440 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay439, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %206) #3
  %207 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv441 = zext i8 %207 to i32
  store i32 %conv441, i32* @zz_size, align 4
  %conv442 = sext i32 %conv441 to i64
  %cmp443 = icmp uge i64 %conv442, 265
  br i1 %cmp443, label %if.then.445, label %if.else.447

if.then.445:                                      ; preds = %cond.end.437
  %208 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call446 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %208)
  br label %if.end.464

if.else.447:                                      ; preds = %cond.end.437
  %209 = load i32, i32* @zz_size, align 4
  %idxprom448 = sext i32 %209 to i64
  %arrayidx449 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom448
  %210 = load %union.rec*, %union.rec** %arrayidx449, align 8
  %cmp450 = icmp eq %union.rec* %210, null
  br i1 %cmp450, label %if.then.452, label %if.else.454

if.then.452:                                      ; preds = %if.else.447
  %211 = load i32, i32* @zz_size, align 4
  %212 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call453 = call %union.rec* @GetMemory(i32 %211, %struct.FILE_POS* %212)
  store %union.rec* %call453, %union.rec** @zz_hold, align 8
  br label %if.end.463

if.else.454:                                      ; preds = %if.else.447
  %213 = load i32, i32* @zz_size, align 4
  %idxprom455 = sext i32 %213 to i64
  %arrayidx456 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom455
  %214 = load %union.rec*, %union.rec** %arrayidx456, align 8
  store %union.rec* %214, %union.rec** @zz_hold, align 8
  store %union.rec* %214, %union.rec** @zz_hold, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1457 = bitcast %union.rec* %215 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 0
  %opred460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 0
  %216 = load %union.rec*, %union.rec** %opred460, align 8
  %217 = load i32, i32* @zz_size, align 4
  %idxprom461 = sext i32 %217 to i64
  %arrayidx462 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom461
  store %union.rec* %216, %union.rec** %arrayidx462, align 8
  br label %if.end.463

if.end.463:                                       ; preds = %if.else.454, %if.then.452
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.then.445
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1465 = bitcast %union.rec* %218 to %struct.word_type*
  %ou1466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 1
  %os11467 = bitcast %union.FIRST_UNION* %ou1466 to %struct.anon*
  %otype468 = getelementptr inbounds %struct.anon, %struct.anon* %os11467, i32 0, i32 0
  store i8 10, i8* %otype468, align 1
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1469 = bitcast %union.rec* %220 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 1
  %osucc472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 1
  store %union.rec* %219, %union.rec** %osucc472, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1473 = bitcast %union.rec* %221 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 1
  %opred476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 0
  store %union.rec* %219, %union.rec** %opred476, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1477 = bitcast %union.rec* %222 to %struct.word_type*
  %olist478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1477, i32 0, i32 0
  %arrayidx479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist478, i32 0, i64 0
  %osucc480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx479, i32 0, i32 1
  store %union.rec* %219, %union.rec** %osucc480, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1481 = bitcast %union.rec* %223 to %struct.word_type*
  %olist482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1481, i32 0, i32 0
  %arrayidx483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist482, i32 0, i64 0
  %opred484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx483, i32 0, i32 0
  store %union.rec* %219, %union.rec** %opred484, align 8
  store %union.rec* %219, %union.rec** %par, align 8
  %224 = load %union.rec*, %union.rec** %second, align 8
  %225 = load %union.rec*, %union.rec** %par, align 8
  %os2485 = bitcast %union.rec* %225 to %struct.closure_type*
  %oactual486 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2485, i32 0, i32 5
  store %union.rec* %224, %union.rec** %oactual486, align 8
  %226 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv487 = zext i8 %226 to i32
  store i32 %conv487, i32* @zz_size, align 4
  %conv488 = sext i32 %conv487 to i64
  %cmp489 = icmp uge i64 %conv488, 265
  br i1 %cmp489, label %if.then.491, label %if.else.493

if.then.491:                                      ; preds = %if.end.464
  %227 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call492 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %227)
  br label %if.end.510

if.else.493:                                      ; preds = %if.end.464
  %228 = load i32, i32* @zz_size, align 4
  %idxprom494 = sext i32 %228 to i64
  %arrayidx495 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom494
  %229 = load %union.rec*, %union.rec** %arrayidx495, align 8
  %cmp496 = icmp eq %union.rec* %229, null
  br i1 %cmp496, label %if.then.498, label %if.else.500

if.then.498:                                      ; preds = %if.else.493
  %230 = load i32, i32* @zz_size, align 4
  %231 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call499 = call %union.rec* @GetMemory(i32 %230, %struct.FILE_POS* %231)
  store %union.rec* %call499, %union.rec** @zz_hold, align 8
  br label %if.end.509

if.else.500:                                      ; preds = %if.else.493
  %232 = load i32, i32* @zz_size, align 4
  %idxprom501 = sext i32 %232 to i64
  %arrayidx502 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom501
  %233 = load %union.rec*, %union.rec** %arrayidx502, align 8
  store %union.rec* %233, %union.rec** @zz_hold, align 8
  store %union.rec* %233, %union.rec** @zz_hold, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1503 = bitcast %union.rec* %234 to %struct.word_type*
  %olist504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1503, i32 0, i32 0
  %arrayidx505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist504, i32 0, i64 0
  %opred506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx505, i32 0, i32 0
  %235 = load %union.rec*, %union.rec** %opred506, align 8
  %236 = load i32, i32* @zz_size, align 4
  %idxprom507 = sext i32 %236 to i64
  %arrayidx508 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom507
  store %union.rec* %235, %union.rec** %arrayidx508, align 8
  br label %if.end.509

if.end.509:                                       ; preds = %if.else.500, %if.then.498
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.then.491
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1511 = bitcast %union.rec* %237 to %struct.word_type*
  %ou1512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 1
  %os11513 = bitcast %union.FIRST_UNION* %ou1512 to %struct.anon*
  %otype514 = getelementptr inbounds %struct.anon, %struct.anon* %os11513, i32 0, i32 0
  store i8 0, i8* %otype514, align 1
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1515 = bitcast %union.rec* %239 to %struct.word_type*
  %olist516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 0
  %arrayidx517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist516, i32 0, i64 1
  %osucc518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx517, i32 0, i32 1
  store %union.rec* %238, %union.rec** %osucc518, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1519 = bitcast %union.rec* %240 to %struct.word_type*
  %olist520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1519, i32 0, i32 0
  %arrayidx521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist520, i32 0, i64 1
  %opred522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx521, i32 0, i32 0
  store %union.rec* %238, %union.rec** %opred522, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1523 = bitcast %union.rec* %241 to %struct.word_type*
  %olist524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1523, i32 0, i32 0
  %arrayidx525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist524, i32 0, i64 0
  %osucc526 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx525, i32 0, i32 1
  store %union.rec* %238, %union.rec** %osucc526, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1527 = bitcast %union.rec* %242 to %struct.word_type*
  %olist528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1527, i32 0, i32 0
  %arrayidx529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist528, i32 0, i64 0
  %opred530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx529, i32 0, i32 0
  store %union.rec* %238, %union.rec** %opred530, align 8
  store %union.rec* %238, %union.rec** @xx_link, align 8
  %243 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %243, %union.rec** @zz_res, align 8
  %244 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %244, %union.rec** @zz_hold, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp531 = icmp eq %union.rec* %245, null
  br i1 %cmp531, label %cond.true.533, label %cond.false.534

cond.true.533:                                    ; preds = %if.end.510
  %246 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.569

cond.false.534:                                   ; preds = %if.end.510
  %247 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp535 = icmp eq %union.rec* %247, null
  br i1 %cmp535, label %cond.true.537, label %cond.false.538

cond.true.537:                                    ; preds = %cond.false.534
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.567

cond.false.538:                                   ; preds = %cond.false.534
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1539 = bitcast %union.rec* %249 to %struct.word_type*
  %olist540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist540, i32 0, i64 0
  %opred542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx541, i32 0, i32 0
  %250 = load %union.rec*, %union.rec** %opred542, align 8
  store %union.rec* %250, %union.rec** @zz_tmp, align 8
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1543 = bitcast %union.rec* %251 to %struct.word_type*
  %olist544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1543, i32 0, i32 0
  %arrayidx545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist544, i32 0, i64 0
  %opred546 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx545, i32 0, i32 0
  %252 = load %union.rec*, %union.rec** %opred546, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1547 = bitcast %union.rec* %253 to %struct.word_type*
  %olist548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1547, i32 0, i32 0
  %arrayidx549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist548, i32 0, i64 0
  %opred550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx549, i32 0, i32 0
  store %union.rec* %252, %union.rec** %opred550, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1551 = bitcast %union.rec* %255 to %struct.word_type*
  %olist552 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1551, i32 0, i32 0
  %arrayidx553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist552, i32 0, i64 0
  %opred554 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx553, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %opred554, align 8
  %os1555 = bitcast %union.rec* %256 to %struct.word_type*
  %olist556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1555, i32 0, i32 0
  %arrayidx557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist556, i32 0, i64 0
  %osucc558 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx557, i32 0, i32 1
  store %union.rec* %254, %union.rec** %osucc558, align 8
  %257 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1559 = bitcast %union.rec* %258 to %struct.word_type*
  %olist560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1559, i32 0, i32 0
  %arrayidx561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist560, i32 0, i64 0
  %opred562 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx561, i32 0, i32 0
  store %union.rec* %257, %union.rec** %opred562, align 8
  %259 = load %union.rec*, %union.rec** @zz_res, align 8
  %260 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1563 = bitcast %union.rec* %260 to %struct.word_type*
  %olist564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1563, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist564, i32 0, i64 0
  %osucc566 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx565, i32 0, i32 1
  store %union.rec* %259, %union.rec** %osucc566, align 8
  br label %cond.end.567

cond.end.567:                                     ; preds = %cond.false.538, %cond.true.537
  %cond568 = phi %union.rec* [ %248, %cond.true.537 ], [ %259, %cond.false.538 ]
  br label %cond.end.569

cond.end.569:                                     ; preds = %cond.end.567, %cond.true.533
  %cond570 = phi %union.rec* [ %246, %cond.true.533 ], [ %cond568, %cond.end.567 ]
  %261 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %261, %union.rec** @zz_res, align 8
  %262 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %262, %union.rec** @zz_hold, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp571 = icmp eq %union.rec* %263, null
  br i1 %cmp571, label %cond.true.573, label %cond.false.574

cond.true.573:                                    ; preds = %cond.end.569
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.609

cond.false.574:                                   ; preds = %cond.end.569
  %265 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp575 = icmp eq %union.rec* %265, null
  br i1 %cmp575, label %cond.true.577, label %cond.false.578

cond.true.577:                                    ; preds = %cond.false.574
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.607

cond.false.578:                                   ; preds = %cond.false.574
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1579 = bitcast %union.rec* %267 to %struct.word_type*
  %olist580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1579, i32 0, i32 0
  %arrayidx581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist580, i32 0, i64 1
  %opred582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx581, i32 0, i32 0
  %268 = load %union.rec*, %union.rec** %opred582, align 8
  store %union.rec* %268, %union.rec** @zz_tmp, align 8
  %269 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1583 = bitcast %union.rec* %269 to %struct.word_type*
  %olist584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1583, i32 0, i32 0
  %arrayidx585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist584, i32 0, i64 1
  %opred586 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx585, i32 0, i32 0
  %270 = load %union.rec*, %union.rec** %opred586, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1587 = bitcast %union.rec* %271 to %struct.word_type*
  %olist588 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1587, i32 0, i32 0
  %arrayidx589 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist588, i32 0, i64 1
  %opred590 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx589, i32 0, i32 0
  store %union.rec* %270, %union.rec** %opred590, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1591 = bitcast %union.rec* %273 to %struct.word_type*
  %olist592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 0
  %arrayidx593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist592, i32 0, i64 1
  %opred594 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx593, i32 0, i32 0
  %274 = load %union.rec*, %union.rec** %opred594, align 8
  %os1595 = bitcast %union.rec* %274 to %struct.word_type*
  %olist596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1595, i32 0, i32 0
  %arrayidx597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist596, i32 0, i64 1
  %osucc598 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx597, i32 0, i32 1
  store %union.rec* %272, %union.rec** %osucc598, align 8
  %275 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %276 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1599 = bitcast %union.rec* %276 to %struct.word_type*
  %olist600 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1599, i32 0, i32 0
  %arrayidx601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist600, i32 0, i64 1
  %opred602 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx601, i32 0, i32 0
  store %union.rec* %275, %union.rec** %opred602, align 8
  %277 = load %union.rec*, %union.rec** @zz_res, align 8
  %278 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1603 = bitcast %union.rec* %278 to %struct.word_type*
  %olist604 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1603, i32 0, i32 0
  %arrayidx605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist604, i32 0, i64 1
  %osucc606 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx605, i32 0, i32 1
  store %union.rec* %277, %union.rec** %osucc606, align 8
  br label %cond.end.607

cond.end.607:                                     ; preds = %cond.false.578, %cond.true.577
  %cond608 = phi %union.rec* [ %266, %cond.true.577 ], [ %277, %cond.false.578 ]
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.end.607, %cond.true.573
  %cond610 = phi %union.rec* [ %264, %cond.true.573 ], [ %cond608, %cond.end.607 ]
  %arraydecay611 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %279 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call612 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay611, %struct.FILE_POS* %279)
  store %union.rec* %call612, %union.rec** %tmp, align 8
  %280 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv613 = zext i8 %280 to i32
  store i32 %conv613, i32* @zz_size, align 4
  %conv614 = sext i32 %conv613 to i64
  %cmp615 = icmp uge i64 %conv614, 265
  br i1 %cmp615, label %if.then.617, label %if.else.619

if.then.617:                                      ; preds = %cond.end.609
  %281 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call618 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %281)
  br label %if.end.636

if.else.619:                                      ; preds = %cond.end.609
  %282 = load i32, i32* @zz_size, align 4
  %idxprom620 = sext i32 %282 to i64
  %arrayidx621 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom620
  %283 = load %union.rec*, %union.rec** %arrayidx621, align 8
  %cmp622 = icmp eq %union.rec* %283, null
  br i1 %cmp622, label %if.then.624, label %if.else.626

if.then.624:                                      ; preds = %if.else.619
  %284 = load i32, i32* @zz_size, align 4
  %285 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call625 = call %union.rec* @GetMemory(i32 %284, %struct.FILE_POS* %285)
  store %union.rec* %call625, %union.rec** @zz_hold, align 8
  br label %if.end.635

if.else.626:                                      ; preds = %if.else.619
  %286 = load i32, i32* @zz_size, align 4
  %idxprom627 = sext i32 %286 to i64
  %arrayidx628 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom627
  %287 = load %union.rec*, %union.rec** %arrayidx628, align 8
  store %union.rec* %287, %union.rec** @zz_hold, align 8
  store %union.rec* %287, %union.rec** @zz_hold, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1629 = bitcast %union.rec* %288 to %struct.word_type*
  %olist630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 0
  %arrayidx631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist630, i32 0, i64 0
  %opred632 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx631, i32 0, i32 0
  %289 = load %union.rec*, %union.rec** %opred632, align 8
  %290 = load i32, i32* @zz_size, align 4
  %idxprom633 = sext i32 %290 to i64
  %arrayidx634 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom633
  store %union.rec* %289, %union.rec** %arrayidx634, align 8
  br label %if.end.635

if.end.635:                                       ; preds = %if.else.626, %if.then.624
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %if.then.617
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1637 = bitcast %union.rec* %291 to %struct.word_type*
  %ou1638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1637, i32 0, i32 1
  %os11639 = bitcast %union.FIRST_UNION* %ou1638 to %struct.anon*
  %otype640 = getelementptr inbounds %struct.anon, %struct.anon* %os11639, i32 0, i32 0
  store i8 0, i8* %otype640, align 1
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1641 = bitcast %union.rec* %293 to %struct.word_type*
  %olist642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 0
  %arrayidx643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist642, i32 0, i64 1
  %osucc644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx643, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc644, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1645 = bitcast %union.rec* %294 to %struct.word_type*
  %olist646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1645, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist646, i32 0, i64 1
  %opred648 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx647, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred648, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1649 = bitcast %union.rec* %295 to %struct.word_type*
  %olist650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1649, i32 0, i32 0
  %arrayidx651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist650, i32 0, i64 0
  %osucc652 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx651, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc652, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1653 = bitcast %union.rec* %296 to %struct.word_type*
  %olist654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1653, i32 0, i32 0
  %arrayidx655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist654, i32 0, i64 0
  %opred656 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx655, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred656, align 8
  store %union.rec* %292, %union.rec** @xx_link, align 8
  %297 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %297, %union.rec** @zz_res, align 8
  %298 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %298, %union.rec** @zz_hold, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp657 = icmp eq %union.rec* %299, null
  br i1 %cmp657, label %cond.true.659, label %cond.false.660

cond.true.659:                                    ; preds = %if.end.636
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.695

cond.false.660:                                   ; preds = %if.end.636
  %301 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp661 = icmp eq %union.rec* %301, null
  br i1 %cmp661, label %cond.true.663, label %cond.false.664

cond.true.663:                                    ; preds = %cond.false.660
  %302 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.693

cond.false.664:                                   ; preds = %cond.false.660
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1665 = bitcast %union.rec* %303 to %struct.word_type*
  %olist666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1665, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist666, i32 0, i64 0
  %opred668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx667, i32 0, i32 0
  %304 = load %union.rec*, %union.rec** %opred668, align 8
  store %union.rec* %304, %union.rec** @zz_tmp, align 8
  %305 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1669 = bitcast %union.rec* %305 to %struct.word_type*
  %olist670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 0
  %arrayidx671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist670, i32 0, i64 0
  %opred672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx671, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %opred672, align 8
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1673 = bitcast %union.rec* %307 to %struct.word_type*
  %olist674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist674, i32 0, i64 0
  %opred676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx675, i32 0, i32 0
  store %union.rec* %306, %union.rec** %opred676, align 8
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %309 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1677 = bitcast %union.rec* %309 to %struct.word_type*
  %olist678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist678, i32 0, i64 0
  %opred680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx679, i32 0, i32 0
  %310 = load %union.rec*, %union.rec** %opred680, align 8
  %os1681 = bitcast %union.rec* %310 to %struct.word_type*
  %olist682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1681, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist682, i32 0, i64 0
  %osucc684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx683, i32 0, i32 1
  store %union.rec* %308, %union.rec** %osucc684, align 8
  %311 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1685 = bitcast %union.rec* %312 to %struct.word_type*
  %olist686 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1685, i32 0, i32 0
  %arrayidx687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist686, i32 0, i64 0
  %opred688 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx687, i32 0, i32 0
  store %union.rec* %311, %union.rec** %opred688, align 8
  %313 = load %union.rec*, %union.rec** @zz_res, align 8
  %314 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1689 = bitcast %union.rec* %314 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 0
  %osucc692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 1
  store %union.rec* %313, %union.rec** %osucc692, align 8
  br label %cond.end.693

cond.end.693:                                     ; preds = %cond.false.664, %cond.true.663
  %cond694 = phi %union.rec* [ %302, %cond.true.663 ], [ %313, %cond.false.664 ]
  br label %cond.end.695

cond.end.695:                                     ; preds = %cond.end.693, %cond.true.659
  %cond696 = phi %union.rec* [ %300, %cond.true.659 ], [ %cond694, %cond.end.693 ]
  %315 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %315, %union.rec** @zz_res, align 8
  %316 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp697 = icmp eq %union.rec* %317, null
  br i1 %cmp697, label %cond.true.699, label %cond.false.700

cond.true.699:                                    ; preds = %cond.end.695
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.735

cond.false.700:                                   ; preds = %cond.end.695
  %319 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp701 = icmp eq %union.rec* %319, null
  br i1 %cmp701, label %cond.true.703, label %cond.false.704

cond.true.703:                                    ; preds = %cond.false.700
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.733

cond.false.704:                                   ; preds = %cond.false.700
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1705 = bitcast %union.rec* %321 to %struct.word_type*
  %olist706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 0
  %arrayidx707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist706, i32 0, i64 1
  %opred708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx707, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %opred708, align 8
  store %union.rec* %322, %union.rec** @zz_tmp, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1709 = bitcast %union.rec* %323 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 1
  %opred712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 0
  %324 = load %union.rec*, %union.rec** %opred712, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1713 = bitcast %union.rec* %325 to %struct.word_type*
  %olist714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1713, i32 0, i32 0
  %arrayidx715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist714, i32 0, i64 1
  %opred716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx715, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred716, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1717 = bitcast %union.rec* %327 to %struct.word_type*
  %olist718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist718, i32 0, i64 1
  %opred720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx719, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %opred720, align 8
  %os1721 = bitcast %union.rec* %328 to %struct.word_type*
  %olist722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1721, i32 0, i32 0
  %arrayidx723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist722, i32 0, i64 1
  %osucc724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx723, i32 0, i32 1
  store %union.rec* %326, %union.rec** %osucc724, align 8
  %329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1725 = bitcast %union.rec* %330 to %struct.word_type*
  %olist726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1725, i32 0, i32 0
  %arrayidx727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist726, i32 0, i64 1
  %opred728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx727, i32 0, i32 0
  store %union.rec* %329, %union.rec** %opred728, align 8
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  %332 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1729 = bitcast %union.rec* %332 to %struct.word_type*
  %olist730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1729, i32 0, i32 0
  %arrayidx731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist730, i32 0, i64 1
  %osucc732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx731, i32 0, i32 1
  store %union.rec* %331, %union.rec** %osucc732, align 8
  br label %cond.end.733

cond.end.733:                                     ; preds = %cond.false.704, %cond.true.703
  %cond734 = phi %union.rec* [ %320, %cond.true.703 ], [ %331, %cond.false.704 ]
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.end.733, %cond.true.699
  %cond736 = phi %union.rec* [ %318, %cond.true.699 ], [ %cond734, %cond.end.733 ]
  %arraydecay737 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %333 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %333, i32 0, i32 1
  %334 = load i32, i32* %tm_min, align 4
  %call738 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay737, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %334) #3
  %335 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv739 = zext i8 %335 to i32
  store i32 %conv739, i32* @zz_size, align 4
  %conv740 = sext i32 %conv739 to i64
  %cmp741 = icmp uge i64 %conv740, 265
  br i1 %cmp741, label %if.then.743, label %if.else.745

if.then.743:                                      ; preds = %cond.end.735
  %336 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call744 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %336)
  br label %if.end.762

if.else.745:                                      ; preds = %cond.end.735
  %337 = load i32, i32* @zz_size, align 4
  %idxprom746 = sext i32 %337 to i64
  %arrayidx747 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom746
  %338 = load %union.rec*, %union.rec** %arrayidx747, align 8
  %cmp748 = icmp eq %union.rec* %338, null
  br i1 %cmp748, label %if.then.750, label %if.else.752

if.then.750:                                      ; preds = %if.else.745
  %339 = load i32, i32* @zz_size, align 4
  %340 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call751 = call %union.rec* @GetMemory(i32 %339, %struct.FILE_POS* %340)
  store %union.rec* %call751, %union.rec** @zz_hold, align 8
  br label %if.end.761

if.else.752:                                      ; preds = %if.else.745
  %341 = load i32, i32* @zz_size, align 4
  %idxprom753 = sext i32 %341 to i64
  %arrayidx754 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom753
  %342 = load %union.rec*, %union.rec** %arrayidx754, align 8
  store %union.rec* %342, %union.rec** @zz_hold, align 8
  store %union.rec* %342, %union.rec** @zz_hold, align 8
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1755 = bitcast %union.rec* %343 to %struct.word_type*
  %olist756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1755, i32 0, i32 0
  %arrayidx757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist756, i32 0, i64 0
  %opred758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx757, i32 0, i32 0
  %344 = load %union.rec*, %union.rec** %opred758, align 8
  %345 = load i32, i32* @zz_size, align 4
  %idxprom759 = sext i32 %345 to i64
  %arrayidx760 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom759
  store %union.rec* %344, %union.rec** %arrayidx760, align 8
  br label %if.end.761

if.end.761:                                       ; preds = %if.else.752, %if.then.750
  br label %if.end.762

if.end.762:                                       ; preds = %if.end.761, %if.then.743
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1763 = bitcast %union.rec* %346 to %struct.word_type*
  %ou1764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1763, i32 0, i32 1
  %os11765 = bitcast %union.FIRST_UNION* %ou1764 to %struct.anon*
  %otype766 = getelementptr inbounds %struct.anon, %struct.anon* %os11765, i32 0, i32 0
  store i8 10, i8* %otype766, align 1
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1767 = bitcast %union.rec* %348 to %struct.word_type*
  %olist768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1767, i32 0, i32 0
  %arrayidx769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist768, i32 0, i64 1
  %osucc770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx769, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc770, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1771 = bitcast %union.rec* %349 to %struct.word_type*
  %olist772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1771, i32 0, i32 0
  %arrayidx773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist772, i32 0, i64 1
  %opred774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx773, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred774, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1775 = bitcast %union.rec* %350 to %struct.word_type*
  %olist776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1775, i32 0, i32 0
  %arrayidx777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist776, i32 0, i64 0
  %osucc778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx777, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc778, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1779 = bitcast %union.rec* %351 to %struct.word_type*
  %olist780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1779, i32 0, i32 0
  %arrayidx781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist780, i32 0, i64 0
  %opred782 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx781, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred782, align 8
  store %union.rec* %347, %union.rec** %par, align 8
  %352 = load %union.rec*, %union.rec** %minute, align 8
  %353 = load %union.rec*, %union.rec** %par, align 8
  %os2783 = bitcast %union.rec* %353 to %struct.closure_type*
  %oactual784 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2783, i32 0, i32 5
  store %union.rec* %352, %union.rec** %oactual784, align 8
  %354 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv785 = zext i8 %354 to i32
  store i32 %conv785, i32* @zz_size, align 4
  %conv786 = sext i32 %conv785 to i64
  %cmp787 = icmp uge i64 %conv786, 265
  br i1 %cmp787, label %if.then.789, label %if.else.791

if.then.789:                                      ; preds = %if.end.762
  %355 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call790 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %355)
  br label %if.end.808

if.else.791:                                      ; preds = %if.end.762
  %356 = load i32, i32* @zz_size, align 4
  %idxprom792 = sext i32 %356 to i64
  %arrayidx793 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom792
  %357 = load %union.rec*, %union.rec** %arrayidx793, align 8
  %cmp794 = icmp eq %union.rec* %357, null
  br i1 %cmp794, label %if.then.796, label %if.else.798

if.then.796:                                      ; preds = %if.else.791
  %358 = load i32, i32* @zz_size, align 4
  %359 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call797 = call %union.rec* @GetMemory(i32 %358, %struct.FILE_POS* %359)
  store %union.rec* %call797, %union.rec** @zz_hold, align 8
  br label %if.end.807

if.else.798:                                      ; preds = %if.else.791
  %360 = load i32, i32* @zz_size, align 4
  %idxprom799 = sext i32 %360 to i64
  %arrayidx800 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom799
  %361 = load %union.rec*, %union.rec** %arrayidx800, align 8
  store %union.rec* %361, %union.rec** @zz_hold, align 8
  store %union.rec* %361, %union.rec** @zz_hold, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1801 = bitcast %union.rec* %362 to %struct.word_type*
  %olist802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1801, i32 0, i32 0
  %arrayidx803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist802, i32 0, i64 0
  %opred804 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx803, i32 0, i32 0
  %363 = load %union.rec*, %union.rec** %opred804, align 8
  %364 = load i32, i32* @zz_size, align 4
  %idxprom805 = sext i32 %364 to i64
  %arrayidx806 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom805
  store %union.rec* %363, %union.rec** %arrayidx806, align 8
  br label %if.end.807

if.end.807:                                       ; preds = %if.else.798, %if.then.796
  br label %if.end.808

if.end.808:                                       ; preds = %if.end.807, %if.then.789
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1809 = bitcast %union.rec* %365 to %struct.word_type*
  %ou1810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1809, i32 0, i32 1
  %os11811 = bitcast %union.FIRST_UNION* %ou1810 to %struct.anon*
  %otype812 = getelementptr inbounds %struct.anon, %struct.anon* %os11811, i32 0, i32 0
  store i8 0, i8* %otype812, align 1
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1813 = bitcast %union.rec* %367 to %struct.word_type*
  %olist814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1813, i32 0, i32 0
  %arrayidx815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist814, i32 0, i64 1
  %osucc816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx815, i32 0, i32 1
  store %union.rec* %366, %union.rec** %osucc816, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1817 = bitcast %union.rec* %368 to %struct.word_type*
  %olist818 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1817, i32 0, i32 0
  %arrayidx819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist818, i32 0, i64 1
  %opred820 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx819, i32 0, i32 0
  store %union.rec* %366, %union.rec** %opred820, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1821 = bitcast %union.rec* %369 to %struct.word_type*
  %olist822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1821, i32 0, i32 0
  %arrayidx823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist822, i32 0, i64 0
  %osucc824 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx823, i32 0, i32 1
  store %union.rec* %366, %union.rec** %osucc824, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1825 = bitcast %union.rec* %370 to %struct.word_type*
  %olist826 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1825, i32 0, i32 0
  %arrayidx827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist826, i32 0, i64 0
  %opred828 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx827, i32 0, i32 0
  store %union.rec* %366, %union.rec** %opred828, align 8
  store %union.rec* %366, %union.rec** @xx_link, align 8
  %371 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %371, %union.rec** @zz_res, align 8
  %372 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %372, %union.rec** @zz_hold, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp829 = icmp eq %union.rec* %373, null
  br i1 %cmp829, label %cond.true.831, label %cond.false.832

cond.true.831:                                    ; preds = %if.end.808
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.867

cond.false.832:                                   ; preds = %if.end.808
  %375 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp833 = icmp eq %union.rec* %375, null
  br i1 %cmp833, label %cond.true.835, label %cond.false.836

cond.true.835:                                    ; preds = %cond.false.832
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.865

cond.false.836:                                   ; preds = %cond.false.832
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1837 = bitcast %union.rec* %377 to %struct.word_type*
  %olist838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1837, i32 0, i32 0
  %arrayidx839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist838, i32 0, i64 0
  %opred840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx839, i32 0, i32 0
  %378 = load %union.rec*, %union.rec** %opred840, align 8
  store %union.rec* %378, %union.rec** @zz_tmp, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1841 = bitcast %union.rec* %379 to %struct.word_type*
  %olist842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1841, i32 0, i32 0
  %arrayidx843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist842, i32 0, i64 0
  %opred844 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx843, i32 0, i32 0
  %380 = load %union.rec*, %union.rec** %opred844, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1845 = bitcast %union.rec* %381 to %struct.word_type*
  %olist846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1845, i32 0, i32 0
  %arrayidx847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist846, i32 0, i64 0
  %opred848 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx847, i32 0, i32 0
  store %union.rec* %380, %union.rec** %opred848, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1849 = bitcast %union.rec* %383 to %struct.word_type*
  %olist850 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1849, i32 0, i32 0
  %arrayidx851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist850, i32 0, i64 0
  %opred852 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx851, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %opred852, align 8
  %os1853 = bitcast %union.rec* %384 to %struct.word_type*
  %olist854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1853, i32 0, i32 0
  %arrayidx855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist854, i32 0, i64 0
  %osucc856 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx855, i32 0, i32 1
  store %union.rec* %382, %union.rec** %osucc856, align 8
  %385 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1857 = bitcast %union.rec* %386 to %struct.word_type*
  %olist858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1857, i32 0, i32 0
  %arrayidx859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist858, i32 0, i64 0
  %opred860 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx859, i32 0, i32 0
  store %union.rec* %385, %union.rec** %opred860, align 8
  %387 = load %union.rec*, %union.rec** @zz_res, align 8
  %388 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1861 = bitcast %union.rec* %388 to %struct.word_type*
  %olist862 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1861, i32 0, i32 0
  %arrayidx863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist862, i32 0, i64 0
  %osucc864 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx863, i32 0, i32 1
  store %union.rec* %387, %union.rec** %osucc864, align 8
  br label %cond.end.865

cond.end.865:                                     ; preds = %cond.false.836, %cond.true.835
  %cond866 = phi %union.rec* [ %376, %cond.true.835 ], [ %387, %cond.false.836 ]
  br label %cond.end.867

cond.end.867:                                     ; preds = %cond.end.865, %cond.true.831
  %cond868 = phi %union.rec* [ %374, %cond.true.831 ], [ %cond866, %cond.end.865 ]
  %389 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %389, %union.rec** @zz_res, align 8
  %390 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %390, %union.rec** @zz_hold, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp869 = icmp eq %union.rec* %391, null
  br i1 %cmp869, label %cond.true.871, label %cond.false.872

cond.true.871:                                    ; preds = %cond.end.867
  %392 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.907

cond.false.872:                                   ; preds = %cond.end.867
  %393 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp873 = icmp eq %union.rec* %393, null
  br i1 %cmp873, label %cond.true.875, label %cond.false.876

cond.true.875:                                    ; preds = %cond.false.872
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.905

cond.false.876:                                   ; preds = %cond.false.872
  %395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1877 = bitcast %union.rec* %395 to %struct.word_type*
  %olist878 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1877, i32 0, i32 0
  %arrayidx879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist878, i32 0, i64 1
  %opred880 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx879, i32 0, i32 0
  %396 = load %union.rec*, %union.rec** %opred880, align 8
  store %union.rec* %396, %union.rec** @zz_tmp, align 8
  %397 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1881 = bitcast %union.rec* %397 to %struct.word_type*
  %olist882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1881, i32 0, i32 0
  %arrayidx883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist882, i32 0, i64 1
  %opred884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx883, i32 0, i32 0
  %398 = load %union.rec*, %union.rec** %opred884, align 8
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1885 = bitcast %union.rec* %399 to %struct.word_type*
  %olist886 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1885, i32 0, i32 0
  %arrayidx887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist886, i32 0, i64 1
  %opred888 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx887, i32 0, i32 0
  store %union.rec* %398, %union.rec** %opred888, align 8
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %401 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1889 = bitcast %union.rec* %401 to %struct.word_type*
  %olist890 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1889, i32 0, i32 0
  %arrayidx891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist890, i32 0, i64 1
  %opred892 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx891, i32 0, i32 0
  %402 = load %union.rec*, %union.rec** %opred892, align 8
  %os1893 = bitcast %union.rec* %402 to %struct.word_type*
  %olist894 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1893, i32 0, i32 0
  %arrayidx895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist894, i32 0, i64 1
  %osucc896 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx895, i32 0, i32 1
  store %union.rec* %400, %union.rec** %osucc896, align 8
  %403 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %404 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1897 = bitcast %union.rec* %404 to %struct.word_type*
  %olist898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1897, i32 0, i32 0
  %arrayidx899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist898, i32 0, i64 1
  %opred900 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx899, i32 0, i32 0
  store %union.rec* %403, %union.rec** %opred900, align 8
  %405 = load %union.rec*, %union.rec** @zz_res, align 8
  %406 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1901 = bitcast %union.rec* %406 to %struct.word_type*
  %olist902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1901, i32 0, i32 0
  %arrayidx903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist902, i32 0, i64 1
  %osucc904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx903, i32 0, i32 1
  store %union.rec* %405, %union.rec** %osucc904, align 8
  br label %cond.end.905

cond.end.905:                                     ; preds = %cond.false.876, %cond.true.875
  %cond906 = phi %union.rec* [ %394, %cond.true.875 ], [ %405, %cond.false.876 ]
  br label %cond.end.907

cond.end.907:                                     ; preds = %cond.end.905, %cond.true.871
  %cond908 = phi %union.rec* [ %392, %cond.true.871 ], [ %cond906, %cond.end.905 ]
  %arraydecay909 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %407 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call910 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay909, %struct.FILE_POS* %407)
  store %union.rec* %call910, %union.rec** %tmp, align 8
  %408 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv911 = zext i8 %408 to i32
  store i32 %conv911, i32* @zz_size, align 4
  %conv912 = sext i32 %conv911 to i64
  %cmp913 = icmp uge i64 %conv912, 265
  br i1 %cmp913, label %if.then.915, label %if.else.917

if.then.915:                                      ; preds = %cond.end.907
  %409 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call916 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %409)
  br label %if.end.934

if.else.917:                                      ; preds = %cond.end.907
  %410 = load i32, i32* @zz_size, align 4
  %idxprom918 = sext i32 %410 to i64
  %arrayidx919 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom918
  %411 = load %union.rec*, %union.rec** %arrayidx919, align 8
  %cmp920 = icmp eq %union.rec* %411, null
  br i1 %cmp920, label %if.then.922, label %if.else.924

if.then.922:                                      ; preds = %if.else.917
  %412 = load i32, i32* @zz_size, align 4
  %413 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call923 = call %union.rec* @GetMemory(i32 %412, %struct.FILE_POS* %413)
  store %union.rec* %call923, %union.rec** @zz_hold, align 8
  br label %if.end.933

if.else.924:                                      ; preds = %if.else.917
  %414 = load i32, i32* @zz_size, align 4
  %idxprom925 = sext i32 %414 to i64
  %arrayidx926 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom925
  %415 = load %union.rec*, %union.rec** %arrayidx926, align 8
  store %union.rec* %415, %union.rec** @zz_hold, align 8
  store %union.rec* %415, %union.rec** @zz_hold, align 8
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1927 = bitcast %union.rec* %416 to %struct.word_type*
  %olist928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist928, i32 0, i64 0
  %opred930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx929, i32 0, i32 0
  %417 = load %union.rec*, %union.rec** %opred930, align 8
  %418 = load i32, i32* @zz_size, align 4
  %idxprom931 = sext i32 %418 to i64
  %arrayidx932 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom931
  store %union.rec* %417, %union.rec** %arrayidx932, align 8
  br label %if.end.933

if.end.933:                                       ; preds = %if.else.924, %if.then.922
  br label %if.end.934

if.end.934:                                       ; preds = %if.end.933, %if.then.915
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1935 = bitcast %union.rec* %419 to %struct.word_type*
  %ou1936 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1935, i32 0, i32 1
  %os11937 = bitcast %union.FIRST_UNION* %ou1936 to %struct.anon*
  %otype938 = getelementptr inbounds %struct.anon, %struct.anon* %os11937, i32 0, i32 0
  store i8 0, i8* %otype938, align 1
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1939 = bitcast %union.rec* %421 to %struct.word_type*
  %olist940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1939, i32 0, i32 0
  %arrayidx941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist940, i32 0, i64 1
  %osucc942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx941, i32 0, i32 1
  store %union.rec* %420, %union.rec** %osucc942, align 8
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1943 = bitcast %union.rec* %422 to %struct.word_type*
  %olist944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1943, i32 0, i32 0
  %arrayidx945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist944, i32 0, i64 1
  %opred946 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx945, i32 0, i32 0
  store %union.rec* %420, %union.rec** %opred946, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1947 = bitcast %union.rec* %423 to %struct.word_type*
  %olist948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1947, i32 0, i32 0
  %arrayidx949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist948, i32 0, i64 0
  %osucc950 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx949, i32 0, i32 1
  store %union.rec* %420, %union.rec** %osucc950, align 8
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1951 = bitcast %union.rec* %424 to %struct.word_type*
  %olist952 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1951, i32 0, i32 0
  %arrayidx953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist952, i32 0, i64 0
  %opred954 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx953, i32 0, i32 0
  store %union.rec* %420, %union.rec** %opred954, align 8
  store %union.rec* %420, %union.rec** @xx_link, align 8
  %425 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %425, %union.rec** @zz_res, align 8
  %426 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %426, %union.rec** @zz_hold, align 8
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp955 = icmp eq %union.rec* %427, null
  br i1 %cmp955, label %cond.true.957, label %cond.false.958

cond.true.957:                                    ; preds = %if.end.934
  %428 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.993

cond.false.958:                                   ; preds = %if.end.934
  %429 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp959 = icmp eq %union.rec* %429, null
  br i1 %cmp959, label %cond.true.961, label %cond.false.962

cond.true.961:                                    ; preds = %cond.false.958
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.991

cond.false.962:                                   ; preds = %cond.false.958
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1963 = bitcast %union.rec* %431 to %struct.word_type*
  %olist964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1963, i32 0, i32 0
  %arrayidx965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist964, i32 0, i64 0
  %opred966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx965, i32 0, i32 0
  %432 = load %union.rec*, %union.rec** %opred966, align 8
  store %union.rec* %432, %union.rec** @zz_tmp, align 8
  %433 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1967 = bitcast %union.rec* %433 to %struct.word_type*
  %olist968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1967, i32 0, i32 0
  %arrayidx969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist968, i32 0, i64 0
  %opred970 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx969, i32 0, i32 0
  %434 = load %union.rec*, %union.rec** %opred970, align 8
  %435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1971 = bitcast %union.rec* %435 to %struct.word_type*
  %olist972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1971, i32 0, i32 0
  %arrayidx973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist972, i32 0, i64 0
  %opred974 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx973, i32 0, i32 0
  store %union.rec* %434, %union.rec** %opred974, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %437 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1975 = bitcast %union.rec* %437 to %struct.word_type*
  %olist976 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1975, i32 0, i32 0
  %arrayidx977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist976, i32 0, i64 0
  %opred978 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx977, i32 0, i32 0
  %438 = load %union.rec*, %union.rec** %opred978, align 8
  %os1979 = bitcast %union.rec* %438 to %struct.word_type*
  %olist980 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1979, i32 0, i32 0
  %arrayidx981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist980, i32 0, i64 0
  %osucc982 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx981, i32 0, i32 1
  store %union.rec* %436, %union.rec** %osucc982, align 8
  %439 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %440 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1983 = bitcast %union.rec* %440 to %struct.word_type*
  %olist984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1983, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist984, i32 0, i64 0
  %opred986 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx985, i32 0, i32 0
  store %union.rec* %439, %union.rec** %opred986, align 8
  %441 = load %union.rec*, %union.rec** @zz_res, align 8
  %442 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1987 = bitcast %union.rec* %442 to %struct.word_type*
  %olist988 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1987, i32 0, i32 0
  %arrayidx989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist988, i32 0, i64 0
  %osucc990 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx989, i32 0, i32 1
  store %union.rec* %441, %union.rec** %osucc990, align 8
  br label %cond.end.991

cond.end.991:                                     ; preds = %cond.false.962, %cond.true.961
  %cond992 = phi %union.rec* [ %430, %cond.true.961 ], [ %441, %cond.false.962 ]
  br label %cond.end.993

cond.end.993:                                     ; preds = %cond.end.991, %cond.true.957
  %cond994 = phi %union.rec* [ %428, %cond.true.957 ], [ %cond992, %cond.end.991 ]
  %443 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %443, %union.rec** @zz_res, align 8
  %444 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %444, %union.rec** @zz_hold, align 8
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp995 = icmp eq %union.rec* %445, null
  br i1 %cmp995, label %cond.true.997, label %cond.false.998

cond.true.997:                                    ; preds = %cond.end.993
  %446 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1033

cond.false.998:                                   ; preds = %cond.end.993
  %447 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp999 = icmp eq %union.rec* %447, null
  br i1 %cmp999, label %cond.true.1001, label %cond.false.1002

cond.true.1001:                                   ; preds = %cond.false.998
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1031

cond.false.1002:                                  ; preds = %cond.false.998
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11003 = bitcast %union.rec* %449 to %struct.word_type*
  %olist1004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11003, i32 0, i32 0
  %arrayidx1005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1004, i32 0, i64 1
  %opred1006 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1005, i32 0, i32 0
  %450 = load %union.rec*, %union.rec** %opred1006, align 8
  store %union.rec* %450, %union.rec** @zz_tmp, align 8
  %451 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11007 = bitcast %union.rec* %451 to %struct.word_type*
  %olist1008 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11007, i32 0, i32 0
  %arrayidx1009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1008, i32 0, i64 1
  %opred1010 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1009, i32 0, i32 0
  %452 = load %union.rec*, %union.rec** %opred1010, align 8
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11011 = bitcast %union.rec* %453 to %struct.word_type*
  %olist1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11011, i32 0, i32 0
  %arrayidx1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1012, i32 0, i64 1
  %opred1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1013, i32 0, i32 0
  store %union.rec* %452, %union.rec** %opred1014, align 8
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %455 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11015 = bitcast %union.rec* %455 to %struct.word_type*
  %olist1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11015, i32 0, i32 0
  %arrayidx1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1016, i32 0, i64 1
  %opred1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1017, i32 0, i32 0
  %456 = load %union.rec*, %union.rec** %opred1018, align 8
  %os11019 = bitcast %union.rec* %456 to %struct.word_type*
  %olist1020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11019, i32 0, i32 0
  %arrayidx1021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1020, i32 0, i64 1
  %osucc1022 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1021, i32 0, i32 1
  store %union.rec* %454, %union.rec** %osucc1022, align 8
  %457 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %458 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11023 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1024 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11023, i32 0, i32 0
  %arrayidx1025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1024, i32 0, i64 1
  %opred1026 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1025, i32 0, i32 0
  store %union.rec* %457, %union.rec** %opred1026, align 8
  %459 = load %union.rec*, %union.rec** @zz_res, align 8
  %460 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11027 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11027, i32 0, i32 0
  %arrayidx1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1028, i32 0, i64 1
  %osucc1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1029, i32 0, i32 1
  store %union.rec* %459, %union.rec** %osucc1030, align 8
  br label %cond.end.1031

cond.end.1031:                                    ; preds = %cond.false.1002, %cond.true.1001
  %cond1032 = phi %union.rec* [ %448, %cond.true.1001 ], [ %459, %cond.false.1002 ]
  br label %cond.end.1033

cond.end.1033:                                    ; preds = %cond.end.1031, %cond.true.997
  %cond1034 = phi %union.rec* [ %446, %cond.true.997 ], [ %cond1032, %cond.end.1031 ]
  %arraydecay1035 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %461 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %461, i32 0, i32 2
  %462 = load i32, i32* %tm_hour, align 4
  %call1036 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1035, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %462) #3
  %463 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv1037 = zext i8 %463 to i32
  store i32 %conv1037, i32* @zz_size, align 4
  %conv1038 = sext i32 %conv1037 to i64
  %cmp1039 = icmp uge i64 %conv1038, 265
  br i1 %cmp1039, label %if.then.1041, label %if.else.1043

if.then.1041:                                     ; preds = %cond.end.1033
  %464 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1042 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %464)
  br label %if.end.1060

if.else.1043:                                     ; preds = %cond.end.1033
  %465 = load i32, i32* @zz_size, align 4
  %idxprom1044 = sext i32 %465 to i64
  %arrayidx1045 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1044
  %466 = load %union.rec*, %union.rec** %arrayidx1045, align 8
  %cmp1046 = icmp eq %union.rec* %466, null
  br i1 %cmp1046, label %if.then.1048, label %if.else.1050

if.then.1048:                                     ; preds = %if.else.1043
  %467 = load i32, i32* @zz_size, align 4
  %468 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1049 = call %union.rec* @GetMemory(i32 %467, %struct.FILE_POS* %468)
  store %union.rec* %call1049, %union.rec** @zz_hold, align 8
  br label %if.end.1059

if.else.1050:                                     ; preds = %if.else.1043
  %469 = load i32, i32* @zz_size, align 4
  %idxprom1051 = sext i32 %469 to i64
  %arrayidx1052 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1051
  %470 = load %union.rec*, %union.rec** %arrayidx1052, align 8
  store %union.rec* %470, %union.rec** @zz_hold, align 8
  store %union.rec* %470, %union.rec** @zz_hold, align 8
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11053 = bitcast %union.rec* %471 to %struct.word_type*
  %olist1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11053, i32 0, i32 0
  %arrayidx1055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1054, i32 0, i64 0
  %opred1056 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1055, i32 0, i32 0
  %472 = load %union.rec*, %union.rec** %opred1056, align 8
  %473 = load i32, i32* @zz_size, align 4
  %idxprom1057 = sext i32 %473 to i64
  %arrayidx1058 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1057
  store %union.rec* %472, %union.rec** %arrayidx1058, align 8
  br label %if.end.1059

if.end.1059:                                      ; preds = %if.else.1050, %if.then.1048
  br label %if.end.1060

if.end.1060:                                      ; preds = %if.end.1059, %if.then.1041
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11061 = bitcast %union.rec* %474 to %struct.word_type*
  %ou11062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11061, i32 0, i32 1
  %os111063 = bitcast %union.FIRST_UNION* %ou11062 to %struct.anon*
  %otype1064 = getelementptr inbounds %struct.anon, %struct.anon* %os111063, i32 0, i32 0
  store i8 10, i8* %otype1064, align 1
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11065 = bitcast %union.rec* %476 to %struct.word_type*
  %olist1066 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11065, i32 0, i32 0
  %arrayidx1067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1066, i32 0, i64 1
  %osucc1068 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1067, i32 0, i32 1
  store %union.rec* %475, %union.rec** %osucc1068, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11069 = bitcast %union.rec* %477 to %struct.word_type*
  %olist1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11069, i32 0, i32 0
  %arrayidx1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1070, i32 0, i64 1
  %opred1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1071, i32 0, i32 0
  store %union.rec* %475, %union.rec** %opred1072, align 8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11073 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1074 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11073, i32 0, i32 0
  %arrayidx1075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1074, i32 0, i64 0
  %osucc1076 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1075, i32 0, i32 1
  store %union.rec* %475, %union.rec** %osucc1076, align 8
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11077 = bitcast %union.rec* %479 to %struct.word_type*
  %olist1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11077, i32 0, i32 0
  %arrayidx1079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1078, i32 0, i64 0
  %opred1080 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1079, i32 0, i32 0
  store %union.rec* %475, %union.rec** %opred1080, align 8
  store %union.rec* %475, %union.rec** %par, align 8
  %480 = load %union.rec*, %union.rec** %hour, align 8
  %481 = load %union.rec*, %union.rec** %par, align 8
  %os21081 = bitcast %union.rec* %481 to %struct.closure_type*
  %oactual1082 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21081, i32 0, i32 5
  store %union.rec* %480, %union.rec** %oactual1082, align 8
  %482 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1083 = zext i8 %482 to i32
  store i32 %conv1083, i32* @zz_size, align 4
  %conv1084 = sext i32 %conv1083 to i64
  %cmp1085 = icmp uge i64 %conv1084, 265
  br i1 %cmp1085, label %if.then.1087, label %if.else.1089

if.then.1087:                                     ; preds = %if.end.1060
  %483 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1088 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %483)
  br label %if.end.1106

if.else.1089:                                     ; preds = %if.end.1060
  %484 = load i32, i32* @zz_size, align 4
  %idxprom1090 = sext i32 %484 to i64
  %arrayidx1091 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1090
  %485 = load %union.rec*, %union.rec** %arrayidx1091, align 8
  %cmp1092 = icmp eq %union.rec* %485, null
  br i1 %cmp1092, label %if.then.1094, label %if.else.1096

if.then.1094:                                     ; preds = %if.else.1089
  %486 = load i32, i32* @zz_size, align 4
  %487 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1095 = call %union.rec* @GetMemory(i32 %486, %struct.FILE_POS* %487)
  store %union.rec* %call1095, %union.rec** @zz_hold, align 8
  br label %if.end.1105

if.else.1096:                                     ; preds = %if.else.1089
  %488 = load i32, i32* @zz_size, align 4
  %idxprom1097 = sext i32 %488 to i64
  %arrayidx1098 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1097
  %489 = load %union.rec*, %union.rec** %arrayidx1098, align 8
  store %union.rec* %489, %union.rec** @zz_hold, align 8
  store %union.rec* %489, %union.rec** @zz_hold, align 8
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11099 = bitcast %union.rec* %490 to %struct.word_type*
  %olist1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11099, i32 0, i32 0
  %arrayidx1101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1100, i32 0, i64 0
  %opred1102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1101, i32 0, i32 0
  %491 = load %union.rec*, %union.rec** %opred1102, align 8
  %492 = load i32, i32* @zz_size, align 4
  %idxprom1103 = sext i32 %492 to i64
  %arrayidx1104 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1103
  store %union.rec* %491, %union.rec** %arrayidx1104, align 8
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.else.1096, %if.then.1094
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.end.1105, %if.then.1087
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11107 = bitcast %union.rec* %493 to %struct.word_type*
  %ou11108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11107, i32 0, i32 1
  %os111109 = bitcast %union.FIRST_UNION* %ou11108 to %struct.anon*
  %otype1110 = getelementptr inbounds %struct.anon, %struct.anon* %os111109, i32 0, i32 0
  store i8 0, i8* %otype1110, align 1
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11111 = bitcast %union.rec* %495 to %struct.word_type*
  %olist1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11111, i32 0, i32 0
  %arrayidx1113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1112, i32 0, i64 1
  %osucc1114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1113, i32 0, i32 1
  store %union.rec* %494, %union.rec** %osucc1114, align 8
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11115 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11115, i32 0, i32 0
  %arrayidx1117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1116, i32 0, i64 1
  %opred1118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1117, i32 0, i32 0
  store %union.rec* %494, %union.rec** %opred1118, align 8
  %497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11119 = bitcast %union.rec* %497 to %struct.word_type*
  %olist1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11119, i32 0, i32 0
  %arrayidx1121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1120, i32 0, i64 0
  %osucc1122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1121, i32 0, i32 1
  store %union.rec* %494, %union.rec** %osucc1122, align 8
  %498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11123 = bitcast %union.rec* %498 to %struct.word_type*
  %olist1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11123, i32 0, i32 0
  %arrayidx1125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1124, i32 0, i64 0
  %opred1126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1125, i32 0, i32 0
  store %union.rec* %494, %union.rec** %opred1126, align 8
  store %union.rec* %494, %union.rec** @xx_link, align 8
  %499 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %499, %union.rec** @zz_res, align 8
  %500 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %500, %union.rec** @zz_hold, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1127 = icmp eq %union.rec* %501, null
  br i1 %cmp1127, label %cond.true.1129, label %cond.false.1130

cond.true.1129:                                   ; preds = %if.end.1106
  %502 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1165

cond.false.1130:                                  ; preds = %if.end.1106
  %503 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1131 = icmp eq %union.rec* %503, null
  br i1 %cmp1131, label %cond.true.1133, label %cond.false.1134

cond.true.1133:                                   ; preds = %cond.false.1130
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1163

cond.false.1134:                                  ; preds = %cond.false.1130
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11135 = bitcast %union.rec* %505 to %struct.word_type*
  %olist1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11135, i32 0, i32 0
  %arrayidx1137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1136, i32 0, i64 0
  %opred1138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1137, i32 0, i32 0
  %506 = load %union.rec*, %union.rec** %opred1138, align 8
  store %union.rec* %506, %union.rec** @zz_tmp, align 8
  %507 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11139 = bitcast %union.rec* %507 to %struct.word_type*
  %olist1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11139, i32 0, i32 0
  %arrayidx1141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1140, i32 0, i64 0
  %opred1142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1141, i32 0, i32 0
  %508 = load %union.rec*, %union.rec** %opred1142, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11143 = bitcast %union.rec* %509 to %struct.word_type*
  %olist1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11143, i32 0, i32 0
  %arrayidx1145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1144, i32 0, i64 0
  %opred1146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1145, i32 0, i32 0
  store %union.rec* %508, %union.rec** %opred1146, align 8
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11147 = bitcast %union.rec* %511 to %struct.word_type*
  %olist1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11147, i32 0, i32 0
  %arrayidx1149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1148, i32 0, i64 0
  %opred1150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1149, i32 0, i32 0
  %512 = load %union.rec*, %union.rec** %opred1150, align 8
  %os11151 = bitcast %union.rec* %512 to %struct.word_type*
  %olist1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11151, i32 0, i32 0
  %arrayidx1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1152, i32 0, i64 0
  %osucc1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1153, i32 0, i32 1
  store %union.rec* %510, %union.rec** %osucc1154, align 8
  %513 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %514 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11155 = bitcast %union.rec* %514 to %struct.word_type*
  %olist1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11155, i32 0, i32 0
  %arrayidx1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1156, i32 0, i64 0
  %opred1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1157, i32 0, i32 0
  store %union.rec* %513, %union.rec** %opred1158, align 8
  %515 = load %union.rec*, %union.rec** @zz_res, align 8
  %516 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11159 = bitcast %union.rec* %516 to %struct.word_type*
  %olist1160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11159, i32 0, i32 0
  %arrayidx1161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1160, i32 0, i64 0
  %osucc1162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1161, i32 0, i32 1
  store %union.rec* %515, %union.rec** %osucc1162, align 8
  br label %cond.end.1163

cond.end.1163:                                    ; preds = %cond.false.1134, %cond.true.1133
  %cond1164 = phi %union.rec* [ %504, %cond.true.1133 ], [ %515, %cond.false.1134 ]
  br label %cond.end.1165

cond.end.1165:                                    ; preds = %cond.end.1163, %cond.true.1129
  %cond1166 = phi %union.rec* [ %502, %cond.true.1129 ], [ %cond1164, %cond.end.1163 ]
  %517 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %517, %union.rec** @zz_res, align 8
  %518 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %518, %union.rec** @zz_hold, align 8
  %519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1167 = icmp eq %union.rec* %519, null
  br i1 %cmp1167, label %cond.true.1169, label %cond.false.1170

cond.true.1169:                                   ; preds = %cond.end.1165
  %520 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1205

cond.false.1170:                                  ; preds = %cond.end.1165
  %521 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1171 = icmp eq %union.rec* %521, null
  br i1 %cmp1171, label %cond.true.1173, label %cond.false.1174

cond.true.1173:                                   ; preds = %cond.false.1170
  %522 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1203

cond.false.1174:                                  ; preds = %cond.false.1170
  %523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11175 = bitcast %union.rec* %523 to %struct.word_type*
  %olist1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11175, i32 0, i32 0
  %arrayidx1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1176, i32 0, i64 1
  %opred1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1177, i32 0, i32 0
  %524 = load %union.rec*, %union.rec** %opred1178, align 8
  store %union.rec* %524, %union.rec** @zz_tmp, align 8
  %525 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11179 = bitcast %union.rec* %525 to %struct.word_type*
  %olist1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11179, i32 0, i32 0
  %arrayidx1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1180, i32 0, i64 1
  %opred1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1181, i32 0, i32 0
  %526 = load %union.rec*, %union.rec** %opred1182, align 8
  %527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11183 = bitcast %union.rec* %527 to %struct.word_type*
  %olist1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 0
  %arrayidx1185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1184, i32 0, i64 1
  %opred1186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1185, i32 0, i32 0
  store %union.rec* %526, %union.rec** %opred1186, align 8
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %529 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11187 = bitcast %union.rec* %529 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 1
  %opred1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 0
  %530 = load %union.rec*, %union.rec** %opred1190, align 8
  %os11191 = bitcast %union.rec* %530 to %struct.word_type*
  %olist1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11191, i32 0, i32 0
  %arrayidx1193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1192, i32 0, i64 1
  %osucc1194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1193, i32 0, i32 1
  store %union.rec* %528, %union.rec** %osucc1194, align 8
  %531 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %532 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11195 = bitcast %union.rec* %532 to %struct.word_type*
  %olist1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11195, i32 0, i32 0
  %arrayidx1197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1196, i32 0, i64 1
  %opred1198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1197, i32 0, i32 0
  store %union.rec* %531, %union.rec** %opred1198, align 8
  %533 = load %union.rec*, %union.rec** @zz_res, align 8
  %534 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11199 = bitcast %union.rec* %534 to %struct.word_type*
  %olist1200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11199, i32 0, i32 0
  %arrayidx1201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1200, i32 0, i64 1
  %osucc1202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1201, i32 0, i32 1
  store %union.rec* %533, %union.rec** %osucc1202, align 8
  br label %cond.end.1203

cond.end.1203:                                    ; preds = %cond.false.1174, %cond.true.1173
  %cond1204 = phi %union.rec* [ %522, %cond.true.1173 ], [ %533, %cond.false.1174 ]
  br label %cond.end.1205

cond.end.1205:                                    ; preds = %cond.end.1203, %cond.true.1169
  %cond1206 = phi %union.rec* [ %520, %cond.true.1169 ], [ %cond1204, %cond.end.1203 ]
  %arraydecay1207 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %535 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1208 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay1207, %struct.FILE_POS* %535)
  store %union.rec* %call1208, %union.rec** %tmp, align 8
  %536 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1209 = zext i8 %536 to i32
  store i32 %conv1209, i32* @zz_size, align 4
  %conv1210 = sext i32 %conv1209 to i64
  %cmp1211 = icmp uge i64 %conv1210, 265
  br i1 %cmp1211, label %if.then.1213, label %if.else.1215

if.then.1213:                                     ; preds = %cond.end.1205
  %537 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1214 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %537)
  br label %if.end.1232

if.else.1215:                                     ; preds = %cond.end.1205
  %538 = load i32, i32* @zz_size, align 4
  %idxprom1216 = sext i32 %538 to i64
  %arrayidx1217 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1216
  %539 = load %union.rec*, %union.rec** %arrayidx1217, align 8
  %cmp1218 = icmp eq %union.rec* %539, null
  br i1 %cmp1218, label %if.then.1220, label %if.else.1222

if.then.1220:                                     ; preds = %if.else.1215
  %540 = load i32, i32* @zz_size, align 4
  %541 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1221 = call %union.rec* @GetMemory(i32 %540, %struct.FILE_POS* %541)
  store %union.rec* %call1221, %union.rec** @zz_hold, align 8
  br label %if.end.1231

if.else.1222:                                     ; preds = %if.else.1215
  %542 = load i32, i32* @zz_size, align 4
  %idxprom1223 = sext i32 %542 to i64
  %arrayidx1224 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1223
  %543 = load %union.rec*, %union.rec** %arrayidx1224, align 8
  store %union.rec* %543, %union.rec** @zz_hold, align 8
  store %union.rec* %543, %union.rec** @zz_hold, align 8
  %544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11225 = bitcast %union.rec* %544 to %struct.word_type*
  %olist1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11225, i32 0, i32 0
  %arrayidx1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1226, i32 0, i64 0
  %opred1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1227, i32 0, i32 0
  %545 = load %union.rec*, %union.rec** %opred1228, align 8
  %546 = load i32, i32* @zz_size, align 4
  %idxprom1229 = sext i32 %546 to i64
  %arrayidx1230 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1229
  store %union.rec* %545, %union.rec** %arrayidx1230, align 8
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.else.1222, %if.then.1220
  br label %if.end.1232

if.end.1232:                                      ; preds = %if.end.1231, %if.then.1213
  %547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11233 = bitcast %union.rec* %547 to %struct.word_type*
  %ou11234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11233, i32 0, i32 1
  %os111235 = bitcast %union.FIRST_UNION* %ou11234 to %struct.anon*
  %otype1236 = getelementptr inbounds %struct.anon, %struct.anon* %os111235, i32 0, i32 0
  store i8 0, i8* %otype1236, align 1
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11237 = bitcast %union.rec* %549 to %struct.word_type*
  %olist1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11237, i32 0, i32 0
  %arrayidx1239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1238, i32 0, i64 1
  %osucc1240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1239, i32 0, i32 1
  store %union.rec* %548, %union.rec** %osucc1240, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11241 = bitcast %union.rec* %550 to %struct.word_type*
  %olist1242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11241, i32 0, i32 0
  %arrayidx1243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1242, i32 0, i64 1
  %opred1244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1243, i32 0, i32 0
  store %union.rec* %548, %union.rec** %opred1244, align 8
  %551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11245 = bitcast %union.rec* %551 to %struct.word_type*
  %olist1246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11245, i32 0, i32 0
  %arrayidx1247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1246, i32 0, i64 0
  %osucc1248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1247, i32 0, i32 1
  store %union.rec* %548, %union.rec** %osucc1248, align 8
  %552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11249 = bitcast %union.rec* %552 to %struct.word_type*
  %olist1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11249, i32 0, i32 0
  %arrayidx1251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1250, i32 0, i64 0
  %opred1252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1251, i32 0, i32 0
  store %union.rec* %548, %union.rec** %opred1252, align 8
  store %union.rec* %548, %union.rec** @xx_link, align 8
  %553 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %553, %union.rec** @zz_res, align 8
  %554 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %554, %union.rec** @zz_hold, align 8
  %555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1253 = icmp eq %union.rec* %555, null
  br i1 %cmp1253, label %cond.true.1255, label %cond.false.1256

cond.true.1255:                                   ; preds = %if.end.1232
  %556 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1291

cond.false.1256:                                  ; preds = %if.end.1232
  %557 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1257 = icmp eq %union.rec* %557, null
  br i1 %cmp1257, label %cond.true.1259, label %cond.false.1260

cond.true.1259:                                   ; preds = %cond.false.1256
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1289

cond.false.1260:                                  ; preds = %cond.false.1256
  %559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11261 = bitcast %union.rec* %559 to %struct.word_type*
  %olist1262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11261, i32 0, i32 0
  %arrayidx1263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1262, i32 0, i64 0
  %opred1264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1263, i32 0, i32 0
  %560 = load %union.rec*, %union.rec** %opred1264, align 8
  store %union.rec* %560, %union.rec** @zz_tmp, align 8
  %561 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11265 = bitcast %union.rec* %561 to %struct.word_type*
  %olist1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11265, i32 0, i32 0
  %arrayidx1267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1266, i32 0, i64 0
  %opred1268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1267, i32 0, i32 0
  %562 = load %union.rec*, %union.rec** %opred1268, align 8
  %563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11269 = bitcast %union.rec* %563 to %struct.word_type*
  %olist1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11269, i32 0, i32 0
  %arrayidx1271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1270, i32 0, i64 0
  %opred1272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1271, i32 0, i32 0
  store %union.rec* %562, %union.rec** %opred1272, align 8
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %565 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11273 = bitcast %union.rec* %565 to %struct.word_type*
  %olist1274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11273, i32 0, i32 0
  %arrayidx1275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1274, i32 0, i64 0
  %opred1276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1275, i32 0, i32 0
  %566 = load %union.rec*, %union.rec** %opred1276, align 8
  %os11277 = bitcast %union.rec* %566 to %struct.word_type*
  %olist1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11277, i32 0, i32 0
  %arrayidx1279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1278, i32 0, i64 0
  %osucc1280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1279, i32 0, i32 1
  store %union.rec* %564, %union.rec** %osucc1280, align 8
  %567 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %568 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11281 = bitcast %union.rec* %568 to %struct.word_type*
  %olist1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11281, i32 0, i32 0
  %arrayidx1283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1282, i32 0, i64 0
  %opred1284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1283, i32 0, i32 0
  store %union.rec* %567, %union.rec** %opred1284, align 8
  %569 = load %union.rec*, %union.rec** @zz_res, align 8
  %570 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11285 = bitcast %union.rec* %570 to %struct.word_type*
  %olist1286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11285, i32 0, i32 0
  %arrayidx1287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1286, i32 0, i64 0
  %osucc1288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1287, i32 0, i32 1
  store %union.rec* %569, %union.rec** %osucc1288, align 8
  br label %cond.end.1289

cond.end.1289:                                    ; preds = %cond.false.1260, %cond.true.1259
  %cond1290 = phi %union.rec* [ %558, %cond.true.1259 ], [ %569, %cond.false.1260 ]
  br label %cond.end.1291

cond.end.1291:                                    ; preds = %cond.end.1289, %cond.true.1255
  %cond1292 = phi %union.rec* [ %556, %cond.true.1255 ], [ %cond1290, %cond.end.1289 ]
  %571 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %571, %union.rec** @zz_res, align 8
  %572 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %572, %union.rec** @zz_hold, align 8
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1293 = icmp eq %union.rec* %573, null
  br i1 %cmp1293, label %cond.true.1295, label %cond.false.1296

cond.true.1295:                                   ; preds = %cond.end.1291
  %574 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1331

cond.false.1296:                                  ; preds = %cond.end.1291
  %575 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1297 = icmp eq %union.rec* %575, null
  br i1 %cmp1297, label %cond.true.1299, label %cond.false.1300

cond.true.1299:                                   ; preds = %cond.false.1296
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1329

cond.false.1300:                                  ; preds = %cond.false.1296
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11301 = bitcast %union.rec* %577 to %struct.word_type*
  %olist1302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11301, i32 0, i32 0
  %arrayidx1303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1302, i32 0, i64 1
  %opred1304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1303, i32 0, i32 0
  %578 = load %union.rec*, %union.rec** %opred1304, align 8
  store %union.rec* %578, %union.rec** @zz_tmp, align 8
  %579 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11305 = bitcast %union.rec* %579 to %struct.word_type*
  %olist1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11305, i32 0, i32 0
  %arrayidx1307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1306, i32 0, i64 1
  %opred1308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1307, i32 0, i32 0
  %580 = load %union.rec*, %union.rec** %opred1308, align 8
  %581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11309 = bitcast %union.rec* %581 to %struct.word_type*
  %olist1310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11309, i32 0, i32 0
  %arrayidx1311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1310, i32 0, i64 1
  %opred1312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1311, i32 0, i32 0
  store %union.rec* %580, %union.rec** %opred1312, align 8
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %583 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11313 = bitcast %union.rec* %583 to %struct.word_type*
  %olist1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11313, i32 0, i32 0
  %arrayidx1315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1314, i32 0, i64 1
  %opred1316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1315, i32 0, i32 0
  %584 = load %union.rec*, %union.rec** %opred1316, align 8
  %os11317 = bitcast %union.rec* %584 to %struct.word_type*
  %olist1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11317, i32 0, i32 0
  %arrayidx1319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1318, i32 0, i64 1
  %osucc1320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1319, i32 0, i32 1
  store %union.rec* %582, %union.rec** %osucc1320, align 8
  %585 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %586 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11321 = bitcast %union.rec* %586 to %struct.word_type*
  %olist1322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11321, i32 0, i32 0
  %arrayidx1323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1322, i32 0, i64 1
  %opred1324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1323, i32 0, i32 0
  store %union.rec* %585, %union.rec** %opred1324, align 8
  %587 = load %union.rec*, %union.rec** @zz_res, align 8
  %588 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11325 = bitcast %union.rec* %588 to %struct.word_type*
  %olist1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11325, i32 0, i32 0
  %arrayidx1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1326, i32 0, i64 1
  %osucc1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1327, i32 0, i32 1
  store %union.rec* %587, %union.rec** %osucc1328, align 8
  br label %cond.end.1329

cond.end.1329:                                    ; preds = %cond.false.1300, %cond.true.1299
  %cond1330 = phi %union.rec* [ %576, %cond.true.1299 ], [ %587, %cond.false.1300 ]
  br label %cond.end.1331

cond.end.1331:                                    ; preds = %cond.end.1329, %cond.true.1295
  %cond1332 = phi %union.rec* [ %574, %cond.true.1295 ], [ %cond1330, %cond.end.1329 ]
  %arraydecay1333 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %589 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %589, i32 0, i32 3
  %590 = load i32, i32* %tm_mday, align 4
  %call1334 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1333, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %590) #3
  %591 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv1335 = zext i8 %591 to i32
  store i32 %conv1335, i32* @zz_size, align 4
  %conv1336 = sext i32 %conv1335 to i64
  %cmp1337 = icmp uge i64 %conv1336, 265
  br i1 %cmp1337, label %if.then.1339, label %if.else.1341

if.then.1339:                                     ; preds = %cond.end.1331
  %592 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1340 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %592)
  br label %if.end.1358

if.else.1341:                                     ; preds = %cond.end.1331
  %593 = load i32, i32* @zz_size, align 4
  %idxprom1342 = sext i32 %593 to i64
  %arrayidx1343 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1342
  %594 = load %union.rec*, %union.rec** %arrayidx1343, align 8
  %cmp1344 = icmp eq %union.rec* %594, null
  br i1 %cmp1344, label %if.then.1346, label %if.else.1348

if.then.1346:                                     ; preds = %if.else.1341
  %595 = load i32, i32* @zz_size, align 4
  %596 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1347 = call %union.rec* @GetMemory(i32 %595, %struct.FILE_POS* %596)
  store %union.rec* %call1347, %union.rec** @zz_hold, align 8
  br label %if.end.1357

if.else.1348:                                     ; preds = %if.else.1341
  %597 = load i32, i32* @zz_size, align 4
  %idxprom1349 = sext i32 %597 to i64
  %arrayidx1350 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1349
  %598 = load %union.rec*, %union.rec** %arrayidx1350, align 8
  store %union.rec* %598, %union.rec** @zz_hold, align 8
  store %union.rec* %598, %union.rec** @zz_hold, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11351 = bitcast %union.rec* %599 to %struct.word_type*
  %olist1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11351, i32 0, i32 0
  %arrayidx1353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1352, i32 0, i64 0
  %opred1354 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1353, i32 0, i32 0
  %600 = load %union.rec*, %union.rec** %opred1354, align 8
  %601 = load i32, i32* @zz_size, align 4
  %idxprom1355 = sext i32 %601 to i64
  %arrayidx1356 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1355
  store %union.rec* %600, %union.rec** %arrayidx1356, align 8
  br label %if.end.1357

if.end.1357:                                      ; preds = %if.else.1348, %if.then.1346
  br label %if.end.1358

if.end.1358:                                      ; preds = %if.end.1357, %if.then.1339
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11359 = bitcast %union.rec* %602 to %struct.word_type*
  %ou11360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11359, i32 0, i32 1
  %os111361 = bitcast %union.FIRST_UNION* %ou11360 to %struct.anon*
  %otype1362 = getelementptr inbounds %struct.anon, %struct.anon* %os111361, i32 0, i32 0
  store i8 10, i8* %otype1362, align 1
  %603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11363 = bitcast %union.rec* %604 to %struct.word_type*
  %olist1364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11363, i32 0, i32 0
  %arrayidx1365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1364, i32 0, i64 1
  %osucc1366 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1365, i32 0, i32 1
  store %union.rec* %603, %union.rec** %osucc1366, align 8
  %605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11367 = bitcast %union.rec* %605 to %struct.word_type*
  %olist1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11367, i32 0, i32 0
  %arrayidx1369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1368, i32 0, i64 1
  %opred1370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1369, i32 0, i32 0
  store %union.rec* %603, %union.rec** %opred1370, align 8
  %606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11371 = bitcast %union.rec* %606 to %struct.word_type*
  %olist1372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11371, i32 0, i32 0
  %arrayidx1373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1372, i32 0, i64 0
  %osucc1374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1373, i32 0, i32 1
  store %union.rec* %603, %union.rec** %osucc1374, align 8
  %607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11375 = bitcast %union.rec* %607 to %struct.word_type*
  %olist1376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11375, i32 0, i32 0
  %arrayidx1377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1376, i32 0, i64 0
  %opred1378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1377, i32 0, i32 0
  store %union.rec* %603, %union.rec** %opred1378, align 8
  store %union.rec* %603, %union.rec** %par, align 8
  %608 = load %union.rec*, %union.rec** %monthday, align 8
  %609 = load %union.rec*, %union.rec** %par, align 8
  %os21379 = bitcast %union.rec* %609 to %struct.closure_type*
  %oactual1380 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21379, i32 0, i32 5
  store %union.rec* %608, %union.rec** %oactual1380, align 8
  %610 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1381 = zext i8 %610 to i32
  store i32 %conv1381, i32* @zz_size, align 4
  %conv1382 = sext i32 %conv1381 to i64
  %cmp1383 = icmp uge i64 %conv1382, 265
  br i1 %cmp1383, label %if.then.1385, label %if.else.1387

if.then.1385:                                     ; preds = %if.end.1358
  %611 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1386 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %611)
  br label %if.end.1404

if.else.1387:                                     ; preds = %if.end.1358
  %612 = load i32, i32* @zz_size, align 4
  %idxprom1388 = sext i32 %612 to i64
  %arrayidx1389 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1388
  %613 = load %union.rec*, %union.rec** %arrayidx1389, align 8
  %cmp1390 = icmp eq %union.rec* %613, null
  br i1 %cmp1390, label %if.then.1392, label %if.else.1394

if.then.1392:                                     ; preds = %if.else.1387
  %614 = load i32, i32* @zz_size, align 4
  %615 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1393 = call %union.rec* @GetMemory(i32 %614, %struct.FILE_POS* %615)
  store %union.rec* %call1393, %union.rec** @zz_hold, align 8
  br label %if.end.1403

if.else.1394:                                     ; preds = %if.else.1387
  %616 = load i32, i32* @zz_size, align 4
  %idxprom1395 = sext i32 %616 to i64
  %arrayidx1396 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1395
  %617 = load %union.rec*, %union.rec** %arrayidx1396, align 8
  store %union.rec* %617, %union.rec** @zz_hold, align 8
  store %union.rec* %617, %union.rec** @zz_hold, align 8
  %618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11397 = bitcast %union.rec* %618 to %struct.word_type*
  %olist1398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11397, i32 0, i32 0
  %arrayidx1399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1398, i32 0, i64 0
  %opred1400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1399, i32 0, i32 0
  %619 = load %union.rec*, %union.rec** %opred1400, align 8
  %620 = load i32, i32* @zz_size, align 4
  %idxprom1401 = sext i32 %620 to i64
  %arrayidx1402 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1401
  store %union.rec* %619, %union.rec** %arrayidx1402, align 8
  br label %if.end.1403

if.end.1403:                                      ; preds = %if.else.1394, %if.then.1392
  br label %if.end.1404

if.end.1404:                                      ; preds = %if.end.1403, %if.then.1385
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11405 = bitcast %union.rec* %621 to %struct.word_type*
  %ou11406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11405, i32 0, i32 1
  %os111407 = bitcast %union.FIRST_UNION* %ou11406 to %struct.anon*
  %otype1408 = getelementptr inbounds %struct.anon, %struct.anon* %os111407, i32 0, i32 0
  store i8 0, i8* %otype1408, align 1
  %622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11409 = bitcast %union.rec* %623 to %struct.word_type*
  %olist1410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11409, i32 0, i32 0
  %arrayidx1411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1410, i32 0, i64 1
  %osucc1412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1411, i32 0, i32 1
  store %union.rec* %622, %union.rec** %osucc1412, align 8
  %624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11413 = bitcast %union.rec* %624 to %struct.word_type*
  %olist1414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11413, i32 0, i32 0
  %arrayidx1415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1414, i32 0, i64 1
  %opred1416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1415, i32 0, i32 0
  store %union.rec* %622, %union.rec** %opred1416, align 8
  %625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11417 = bitcast %union.rec* %625 to %struct.word_type*
  %olist1418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11417, i32 0, i32 0
  %arrayidx1419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1418, i32 0, i64 0
  %osucc1420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1419, i32 0, i32 1
  store %union.rec* %622, %union.rec** %osucc1420, align 8
  %626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11421 = bitcast %union.rec* %626 to %struct.word_type*
  %olist1422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11421, i32 0, i32 0
  %arrayidx1423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1422, i32 0, i64 0
  %opred1424 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1423, i32 0, i32 0
  store %union.rec* %622, %union.rec** %opred1424, align 8
  store %union.rec* %622, %union.rec** @xx_link, align 8
  %627 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %627, %union.rec** @zz_res, align 8
  %628 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %628, %union.rec** @zz_hold, align 8
  %629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1425 = icmp eq %union.rec* %629, null
  br i1 %cmp1425, label %cond.true.1427, label %cond.false.1428

cond.true.1427:                                   ; preds = %if.end.1404
  %630 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1463

cond.false.1428:                                  ; preds = %if.end.1404
  %631 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1429 = icmp eq %union.rec* %631, null
  br i1 %cmp1429, label %cond.true.1431, label %cond.false.1432

cond.true.1431:                                   ; preds = %cond.false.1428
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1461

cond.false.1432:                                  ; preds = %cond.false.1428
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11433 = bitcast %union.rec* %633 to %struct.word_type*
  %olist1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11433, i32 0, i32 0
  %arrayidx1435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1434, i32 0, i64 0
  %opred1436 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1435, i32 0, i32 0
  %634 = load %union.rec*, %union.rec** %opred1436, align 8
  store %union.rec* %634, %union.rec** @zz_tmp, align 8
  %635 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11437 = bitcast %union.rec* %635 to %struct.word_type*
  %olist1438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11437, i32 0, i32 0
  %arrayidx1439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1438, i32 0, i64 0
  %opred1440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1439, i32 0, i32 0
  %636 = load %union.rec*, %union.rec** %opred1440, align 8
  %637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11441 = bitcast %union.rec* %637 to %struct.word_type*
  %olist1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11441, i32 0, i32 0
  %arrayidx1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1442, i32 0, i64 0
  %opred1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1443, i32 0, i32 0
  store %union.rec* %636, %union.rec** %opred1444, align 8
  %638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %639 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11445 = bitcast %union.rec* %639 to %struct.word_type*
  %olist1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11445, i32 0, i32 0
  %arrayidx1447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1446, i32 0, i64 0
  %opred1448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1447, i32 0, i32 0
  %640 = load %union.rec*, %union.rec** %opred1448, align 8
  %os11449 = bitcast %union.rec* %640 to %struct.word_type*
  %olist1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11449, i32 0, i32 0
  %arrayidx1451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1450, i32 0, i64 0
  %osucc1452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1451, i32 0, i32 1
  store %union.rec* %638, %union.rec** %osucc1452, align 8
  %641 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %642 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11453 = bitcast %union.rec* %642 to %struct.word_type*
  %olist1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11453, i32 0, i32 0
  %arrayidx1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1454, i32 0, i64 0
  %opred1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1455, i32 0, i32 0
  store %union.rec* %641, %union.rec** %opred1456, align 8
  %643 = load %union.rec*, %union.rec** @zz_res, align 8
  %644 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11457 = bitcast %union.rec* %644 to %struct.word_type*
  %olist1458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11457, i32 0, i32 0
  %arrayidx1459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1458, i32 0, i64 0
  %osucc1460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1459, i32 0, i32 1
  store %union.rec* %643, %union.rec** %osucc1460, align 8
  br label %cond.end.1461

cond.end.1461:                                    ; preds = %cond.false.1432, %cond.true.1431
  %cond1462 = phi %union.rec* [ %632, %cond.true.1431 ], [ %643, %cond.false.1432 ]
  br label %cond.end.1463

cond.end.1463:                                    ; preds = %cond.end.1461, %cond.true.1427
  %cond1464 = phi %union.rec* [ %630, %cond.true.1427 ], [ %cond1462, %cond.end.1461 ]
  %645 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %645, %union.rec** @zz_res, align 8
  %646 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %646, %union.rec** @zz_hold, align 8
  %647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1465 = icmp eq %union.rec* %647, null
  br i1 %cmp1465, label %cond.true.1467, label %cond.false.1468

cond.true.1467:                                   ; preds = %cond.end.1463
  %648 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1503

cond.false.1468:                                  ; preds = %cond.end.1463
  %649 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1469 = icmp eq %union.rec* %649, null
  br i1 %cmp1469, label %cond.true.1471, label %cond.false.1472

cond.true.1471:                                   ; preds = %cond.false.1468
  %650 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1501

cond.false.1472:                                  ; preds = %cond.false.1468
  %651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11473 = bitcast %union.rec* %651 to %struct.word_type*
  %olist1474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11473, i32 0, i32 0
  %arrayidx1475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1474, i32 0, i64 1
  %opred1476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1475, i32 0, i32 0
  %652 = load %union.rec*, %union.rec** %opred1476, align 8
  store %union.rec* %652, %union.rec** @zz_tmp, align 8
  %653 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11477 = bitcast %union.rec* %653 to %struct.word_type*
  %olist1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11477, i32 0, i32 0
  %arrayidx1479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1478, i32 0, i64 1
  %opred1480 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1479, i32 0, i32 0
  %654 = load %union.rec*, %union.rec** %opred1480, align 8
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11481 = bitcast %union.rec* %655 to %struct.word_type*
  %olist1482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11481, i32 0, i32 0
  %arrayidx1483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1482, i32 0, i64 1
  %opred1484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1483, i32 0, i32 0
  store %union.rec* %654, %union.rec** %opred1484, align 8
  %656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %657 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11485 = bitcast %union.rec* %657 to %struct.word_type*
  %olist1486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11485, i32 0, i32 0
  %arrayidx1487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1486, i32 0, i64 1
  %opred1488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1487, i32 0, i32 0
  %658 = load %union.rec*, %union.rec** %opred1488, align 8
  %os11489 = bitcast %union.rec* %658 to %struct.word_type*
  %olist1490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11489, i32 0, i32 0
  %arrayidx1491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1490, i32 0, i64 1
  %osucc1492 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1491, i32 0, i32 1
  store %union.rec* %656, %union.rec** %osucc1492, align 8
  %659 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %660 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11493 = bitcast %union.rec* %660 to %struct.word_type*
  %olist1494 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11493, i32 0, i32 0
  %arrayidx1495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1494, i32 0, i64 1
  %opred1496 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1495, i32 0, i32 0
  store %union.rec* %659, %union.rec** %opred1496, align 8
  %661 = load %union.rec*, %union.rec** @zz_res, align 8
  %662 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11497 = bitcast %union.rec* %662 to %struct.word_type*
  %olist1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11497, i32 0, i32 0
  %arrayidx1499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1498, i32 0, i64 1
  %osucc1500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1499, i32 0, i32 1
  store %union.rec* %661, %union.rec** %osucc1500, align 8
  br label %cond.end.1501

cond.end.1501:                                    ; preds = %cond.false.1472, %cond.true.1471
  %cond1502 = phi %union.rec* [ %650, %cond.true.1471 ], [ %661, %cond.false.1472 ]
  br label %cond.end.1503

cond.end.1503:                                    ; preds = %cond.end.1501, %cond.true.1467
  %cond1504 = phi %union.rec* [ %648, %cond.true.1467 ], [ %cond1502, %cond.end.1501 ]
  %arraydecay1505 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %663 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1506 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay1505, %struct.FILE_POS* %663)
  store %union.rec* %call1506, %union.rec** %tmp, align 8
  %664 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1507 = zext i8 %664 to i32
  store i32 %conv1507, i32* @zz_size, align 4
  %conv1508 = sext i32 %conv1507 to i64
  %cmp1509 = icmp uge i64 %conv1508, 265
  br i1 %cmp1509, label %if.then.1511, label %if.else.1513

if.then.1511:                                     ; preds = %cond.end.1503
  %665 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1512 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %665)
  br label %if.end.1530

if.else.1513:                                     ; preds = %cond.end.1503
  %666 = load i32, i32* @zz_size, align 4
  %idxprom1514 = sext i32 %666 to i64
  %arrayidx1515 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1514
  %667 = load %union.rec*, %union.rec** %arrayidx1515, align 8
  %cmp1516 = icmp eq %union.rec* %667, null
  br i1 %cmp1516, label %if.then.1518, label %if.else.1520

if.then.1518:                                     ; preds = %if.else.1513
  %668 = load i32, i32* @zz_size, align 4
  %669 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1519 = call %union.rec* @GetMemory(i32 %668, %struct.FILE_POS* %669)
  store %union.rec* %call1519, %union.rec** @zz_hold, align 8
  br label %if.end.1529

if.else.1520:                                     ; preds = %if.else.1513
  %670 = load i32, i32* @zz_size, align 4
  %idxprom1521 = sext i32 %670 to i64
  %arrayidx1522 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1521
  %671 = load %union.rec*, %union.rec** %arrayidx1522, align 8
  store %union.rec* %671, %union.rec** @zz_hold, align 8
  store %union.rec* %671, %union.rec** @zz_hold, align 8
  %672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11523 = bitcast %union.rec* %672 to %struct.word_type*
  %olist1524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11523, i32 0, i32 0
  %arrayidx1525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1524, i32 0, i64 0
  %opred1526 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1525, i32 0, i32 0
  %673 = load %union.rec*, %union.rec** %opred1526, align 8
  %674 = load i32, i32* @zz_size, align 4
  %idxprom1527 = sext i32 %674 to i64
  %arrayidx1528 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1527
  store %union.rec* %673, %union.rec** %arrayidx1528, align 8
  br label %if.end.1529

if.end.1529:                                      ; preds = %if.else.1520, %if.then.1518
  br label %if.end.1530

if.end.1530:                                      ; preds = %if.end.1529, %if.then.1511
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11531 = bitcast %union.rec* %675 to %struct.word_type*
  %ou11532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11531, i32 0, i32 1
  %os111533 = bitcast %union.FIRST_UNION* %ou11532 to %struct.anon*
  %otype1534 = getelementptr inbounds %struct.anon, %struct.anon* %os111533, i32 0, i32 0
  store i8 0, i8* %otype1534, align 1
  %676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11535 = bitcast %union.rec* %677 to %struct.word_type*
  %olist1536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11535, i32 0, i32 0
  %arrayidx1537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1536, i32 0, i64 1
  %osucc1538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1537, i32 0, i32 1
  store %union.rec* %676, %union.rec** %osucc1538, align 8
  %678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11539 = bitcast %union.rec* %678 to %struct.word_type*
  %olist1540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11539, i32 0, i32 0
  %arrayidx1541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1540, i32 0, i64 1
  %opred1542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1541, i32 0, i32 0
  store %union.rec* %676, %union.rec** %opred1542, align 8
  %679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11543 = bitcast %union.rec* %679 to %struct.word_type*
  %olist1544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11543, i32 0, i32 0
  %arrayidx1545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1544, i32 0, i64 0
  %osucc1546 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1545, i32 0, i32 1
  store %union.rec* %676, %union.rec** %osucc1546, align 8
  %680 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11547 = bitcast %union.rec* %680 to %struct.word_type*
  %olist1548 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11547, i32 0, i32 0
  %arrayidx1549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1548, i32 0, i64 0
  %opred1550 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1549, i32 0, i32 0
  store %union.rec* %676, %union.rec** %opred1550, align 8
  store %union.rec* %676, %union.rec** @xx_link, align 8
  %681 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %681, %union.rec** @zz_res, align 8
  %682 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %682, %union.rec** @zz_hold, align 8
  %683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1551 = icmp eq %union.rec* %683, null
  br i1 %cmp1551, label %cond.true.1553, label %cond.false.1554

cond.true.1553:                                   ; preds = %if.end.1530
  %684 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1589

cond.false.1554:                                  ; preds = %if.end.1530
  %685 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1555 = icmp eq %union.rec* %685, null
  br i1 %cmp1555, label %cond.true.1557, label %cond.false.1558

cond.true.1557:                                   ; preds = %cond.false.1554
  %686 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1587

cond.false.1558:                                  ; preds = %cond.false.1554
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11559 = bitcast %union.rec* %687 to %struct.word_type*
  %olist1560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11559, i32 0, i32 0
  %arrayidx1561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1560, i32 0, i64 0
  %opred1562 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1561, i32 0, i32 0
  %688 = load %union.rec*, %union.rec** %opred1562, align 8
  store %union.rec* %688, %union.rec** @zz_tmp, align 8
  %689 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11563 = bitcast %union.rec* %689 to %struct.word_type*
  %olist1564 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11563, i32 0, i32 0
  %arrayidx1565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1564, i32 0, i64 0
  %opred1566 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1565, i32 0, i32 0
  %690 = load %union.rec*, %union.rec** %opred1566, align 8
  %691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11567 = bitcast %union.rec* %691 to %struct.word_type*
  %olist1568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11567, i32 0, i32 0
  %arrayidx1569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1568, i32 0, i64 0
  %opred1570 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1569, i32 0, i32 0
  store %union.rec* %690, %union.rec** %opred1570, align 8
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %693 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11571 = bitcast %union.rec* %693 to %struct.word_type*
  %olist1572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11571, i32 0, i32 0
  %arrayidx1573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1572, i32 0, i64 0
  %opred1574 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1573, i32 0, i32 0
  %694 = load %union.rec*, %union.rec** %opred1574, align 8
  %os11575 = bitcast %union.rec* %694 to %struct.word_type*
  %olist1576 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11575, i32 0, i32 0
  %arrayidx1577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1576, i32 0, i64 0
  %osucc1578 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1577, i32 0, i32 1
  store %union.rec* %692, %union.rec** %osucc1578, align 8
  %695 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %696 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11579 = bitcast %union.rec* %696 to %struct.word_type*
  %olist1580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11579, i32 0, i32 0
  %arrayidx1581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1580, i32 0, i64 0
  %opred1582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1581, i32 0, i32 0
  store %union.rec* %695, %union.rec** %opred1582, align 8
  %697 = load %union.rec*, %union.rec** @zz_res, align 8
  %698 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11583 = bitcast %union.rec* %698 to %struct.word_type*
  %olist1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11583, i32 0, i32 0
  %arrayidx1585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1584, i32 0, i64 0
  %osucc1586 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1585, i32 0, i32 1
  store %union.rec* %697, %union.rec** %osucc1586, align 8
  br label %cond.end.1587

cond.end.1587:                                    ; preds = %cond.false.1558, %cond.true.1557
  %cond1588 = phi %union.rec* [ %686, %cond.true.1557 ], [ %697, %cond.false.1558 ]
  br label %cond.end.1589

cond.end.1589:                                    ; preds = %cond.end.1587, %cond.true.1553
  %cond1590 = phi %union.rec* [ %684, %cond.true.1553 ], [ %cond1588, %cond.end.1587 ]
  %699 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %699, %union.rec** @zz_res, align 8
  %700 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %700, %union.rec** @zz_hold, align 8
  %701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1591 = icmp eq %union.rec* %701, null
  br i1 %cmp1591, label %cond.true.1593, label %cond.false.1594

cond.true.1593:                                   ; preds = %cond.end.1589
  %702 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1629

cond.false.1594:                                  ; preds = %cond.end.1589
  %703 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1595 = icmp eq %union.rec* %703, null
  br i1 %cmp1595, label %cond.true.1597, label %cond.false.1598

cond.true.1597:                                   ; preds = %cond.false.1594
  %704 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1627

cond.false.1598:                                  ; preds = %cond.false.1594
  %705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11599 = bitcast %union.rec* %705 to %struct.word_type*
  %olist1600 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11599, i32 0, i32 0
  %arrayidx1601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1600, i32 0, i64 1
  %opred1602 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1601, i32 0, i32 0
  %706 = load %union.rec*, %union.rec** %opred1602, align 8
  store %union.rec* %706, %union.rec** @zz_tmp, align 8
  %707 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11603 = bitcast %union.rec* %707 to %struct.word_type*
  %olist1604 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11603, i32 0, i32 0
  %arrayidx1605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1604, i32 0, i64 1
  %opred1606 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1605, i32 0, i32 0
  %708 = load %union.rec*, %union.rec** %opred1606, align 8
  %709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11607 = bitcast %union.rec* %709 to %struct.word_type*
  %olist1608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11607, i32 0, i32 0
  %arrayidx1609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1608, i32 0, i64 1
  %opred1610 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1609, i32 0, i32 0
  store %union.rec* %708, %union.rec** %opred1610, align 8
  %710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %711 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11611 = bitcast %union.rec* %711 to %struct.word_type*
  %olist1612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11611, i32 0, i32 0
  %arrayidx1613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1612, i32 0, i64 1
  %opred1614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1613, i32 0, i32 0
  %712 = load %union.rec*, %union.rec** %opred1614, align 8
  %os11615 = bitcast %union.rec* %712 to %struct.word_type*
  %olist1616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11615, i32 0, i32 0
  %arrayidx1617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1616, i32 0, i64 1
  %osucc1618 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1617, i32 0, i32 1
  store %union.rec* %710, %union.rec** %osucc1618, align 8
  %713 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %714 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11619 = bitcast %union.rec* %714 to %struct.word_type*
  %olist1620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11619, i32 0, i32 0
  %arrayidx1621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1620, i32 0, i64 1
  %opred1622 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1621, i32 0, i32 0
  store %union.rec* %713, %union.rec** %opred1622, align 8
  %715 = load %union.rec*, %union.rec** @zz_res, align 8
  %716 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11623 = bitcast %union.rec* %716 to %struct.word_type*
  %olist1624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11623, i32 0, i32 0
  %arrayidx1625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1624, i32 0, i64 1
  %osucc1626 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1625, i32 0, i32 1
  store %union.rec* %715, %union.rec** %osucc1626, align 8
  br label %cond.end.1627

cond.end.1627:                                    ; preds = %cond.false.1598, %cond.true.1597
  %cond1628 = phi %union.rec* [ %704, %cond.true.1597 ], [ %715, %cond.false.1598 ]
  br label %cond.end.1629

cond.end.1629:                                    ; preds = %cond.end.1627, %cond.true.1593
  %cond1630 = phi %union.rec* [ %702, %cond.true.1593 ], [ %cond1628, %cond.end.1627 ]
  %arraydecay1631 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %717 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %717, i32 0, i32 4
  %718 = load i32, i32* %tm_mon, align 4
  %add = add nsw i32 %718, 1
  %call1632 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1631, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %add) #3
  %719 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv1633 = zext i8 %719 to i32
  store i32 %conv1633, i32* @zz_size, align 4
  %conv1634 = sext i32 %conv1633 to i64
  %cmp1635 = icmp uge i64 %conv1634, 265
  br i1 %cmp1635, label %if.then.1637, label %if.else.1639

if.then.1637:                                     ; preds = %cond.end.1629
  %720 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1638 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %720)
  br label %if.end.1656

if.else.1639:                                     ; preds = %cond.end.1629
  %721 = load i32, i32* @zz_size, align 4
  %idxprom1640 = sext i32 %721 to i64
  %arrayidx1641 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1640
  %722 = load %union.rec*, %union.rec** %arrayidx1641, align 8
  %cmp1642 = icmp eq %union.rec* %722, null
  br i1 %cmp1642, label %if.then.1644, label %if.else.1646

if.then.1644:                                     ; preds = %if.else.1639
  %723 = load i32, i32* @zz_size, align 4
  %724 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1645 = call %union.rec* @GetMemory(i32 %723, %struct.FILE_POS* %724)
  store %union.rec* %call1645, %union.rec** @zz_hold, align 8
  br label %if.end.1655

if.else.1646:                                     ; preds = %if.else.1639
  %725 = load i32, i32* @zz_size, align 4
  %idxprom1647 = sext i32 %725 to i64
  %arrayidx1648 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1647
  %726 = load %union.rec*, %union.rec** %arrayidx1648, align 8
  store %union.rec* %726, %union.rec** @zz_hold, align 8
  store %union.rec* %726, %union.rec** @zz_hold, align 8
  %727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11649 = bitcast %union.rec* %727 to %struct.word_type*
  %olist1650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11649, i32 0, i32 0
  %arrayidx1651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1650, i32 0, i64 0
  %opred1652 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1651, i32 0, i32 0
  %728 = load %union.rec*, %union.rec** %opred1652, align 8
  %729 = load i32, i32* @zz_size, align 4
  %idxprom1653 = sext i32 %729 to i64
  %arrayidx1654 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1653
  store %union.rec* %728, %union.rec** %arrayidx1654, align 8
  br label %if.end.1655

if.end.1655:                                      ; preds = %if.else.1646, %if.then.1644
  br label %if.end.1656

if.end.1656:                                      ; preds = %if.end.1655, %if.then.1637
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11657 = bitcast %union.rec* %730 to %struct.word_type*
  %ou11658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11657, i32 0, i32 1
  %os111659 = bitcast %union.FIRST_UNION* %ou11658 to %struct.anon*
  %otype1660 = getelementptr inbounds %struct.anon, %struct.anon* %os111659, i32 0, i32 0
  store i8 10, i8* %otype1660, align 1
  %731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11661 = bitcast %union.rec* %732 to %struct.word_type*
  %olist1662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11661, i32 0, i32 0
  %arrayidx1663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1662, i32 0, i64 1
  %osucc1664 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1663, i32 0, i32 1
  store %union.rec* %731, %union.rec** %osucc1664, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11665 = bitcast %union.rec* %733 to %struct.word_type*
  %olist1666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11665, i32 0, i32 0
  %arrayidx1667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1666, i32 0, i64 1
  %opred1668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1667, i32 0, i32 0
  store %union.rec* %731, %union.rec** %opred1668, align 8
  %734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11669 = bitcast %union.rec* %734 to %struct.word_type*
  %olist1670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11669, i32 0, i32 0
  %arrayidx1671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1670, i32 0, i64 0
  %osucc1672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1671, i32 0, i32 1
  store %union.rec* %731, %union.rec** %osucc1672, align 8
  %735 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11673 = bitcast %union.rec* %735 to %struct.word_type*
  %olist1674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11673, i32 0, i32 0
  %arrayidx1675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1674, i32 0, i64 0
  %opred1676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1675, i32 0, i32 0
  store %union.rec* %731, %union.rec** %opred1676, align 8
  store %union.rec* %731, %union.rec** %par, align 8
  %736 = load %union.rec*, %union.rec** %month, align 8
  %737 = load %union.rec*, %union.rec** %par, align 8
  %os21677 = bitcast %union.rec* %737 to %struct.closure_type*
  %oactual1678 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21677, i32 0, i32 5
  store %union.rec* %736, %union.rec** %oactual1678, align 8
  %738 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1679 = zext i8 %738 to i32
  store i32 %conv1679, i32* @zz_size, align 4
  %conv1680 = sext i32 %conv1679 to i64
  %cmp1681 = icmp uge i64 %conv1680, 265
  br i1 %cmp1681, label %if.then.1683, label %if.else.1685

if.then.1683:                                     ; preds = %if.end.1656
  %739 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1684 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %739)
  br label %if.end.1702

if.else.1685:                                     ; preds = %if.end.1656
  %740 = load i32, i32* @zz_size, align 4
  %idxprom1686 = sext i32 %740 to i64
  %arrayidx1687 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1686
  %741 = load %union.rec*, %union.rec** %arrayidx1687, align 8
  %cmp1688 = icmp eq %union.rec* %741, null
  br i1 %cmp1688, label %if.then.1690, label %if.else.1692

if.then.1690:                                     ; preds = %if.else.1685
  %742 = load i32, i32* @zz_size, align 4
  %743 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1691 = call %union.rec* @GetMemory(i32 %742, %struct.FILE_POS* %743)
  store %union.rec* %call1691, %union.rec** @zz_hold, align 8
  br label %if.end.1701

if.else.1692:                                     ; preds = %if.else.1685
  %744 = load i32, i32* @zz_size, align 4
  %idxprom1693 = sext i32 %744 to i64
  %arrayidx1694 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1693
  %745 = load %union.rec*, %union.rec** %arrayidx1694, align 8
  store %union.rec* %745, %union.rec** @zz_hold, align 8
  store %union.rec* %745, %union.rec** @zz_hold, align 8
  %746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11695 = bitcast %union.rec* %746 to %struct.word_type*
  %olist1696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11695, i32 0, i32 0
  %arrayidx1697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1696, i32 0, i64 0
  %opred1698 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1697, i32 0, i32 0
  %747 = load %union.rec*, %union.rec** %opred1698, align 8
  %748 = load i32, i32* @zz_size, align 4
  %idxprom1699 = sext i32 %748 to i64
  %arrayidx1700 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1699
  store %union.rec* %747, %union.rec** %arrayidx1700, align 8
  br label %if.end.1701

if.end.1701:                                      ; preds = %if.else.1692, %if.then.1690
  br label %if.end.1702

if.end.1702:                                      ; preds = %if.end.1701, %if.then.1683
  %749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11703 = bitcast %union.rec* %749 to %struct.word_type*
  %ou11704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11703, i32 0, i32 1
  %os111705 = bitcast %union.FIRST_UNION* %ou11704 to %struct.anon*
  %otype1706 = getelementptr inbounds %struct.anon, %struct.anon* %os111705, i32 0, i32 0
  store i8 0, i8* %otype1706, align 1
  %750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11707 = bitcast %union.rec* %751 to %struct.word_type*
  %olist1708 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11707, i32 0, i32 0
  %arrayidx1709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1708, i32 0, i64 1
  %osucc1710 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1709, i32 0, i32 1
  store %union.rec* %750, %union.rec** %osucc1710, align 8
  %752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11711 = bitcast %union.rec* %752 to %struct.word_type*
  %olist1712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11711, i32 0, i32 0
  %arrayidx1713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1712, i32 0, i64 1
  %opred1714 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1713, i32 0, i32 0
  store %union.rec* %750, %union.rec** %opred1714, align 8
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11715 = bitcast %union.rec* %753 to %struct.word_type*
  %olist1716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11715, i32 0, i32 0
  %arrayidx1717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1716, i32 0, i64 0
  %osucc1718 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1717, i32 0, i32 1
  store %union.rec* %750, %union.rec** %osucc1718, align 8
  %754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11719 = bitcast %union.rec* %754 to %struct.word_type*
  %olist1720 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11719, i32 0, i32 0
  %arrayidx1721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1720, i32 0, i64 0
  %opred1722 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1721, i32 0, i32 0
  store %union.rec* %750, %union.rec** %opred1722, align 8
  store %union.rec* %750, %union.rec** @xx_link, align 8
  %755 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %755, %union.rec** @zz_res, align 8
  %756 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %756, %union.rec** @zz_hold, align 8
  %757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1723 = icmp eq %union.rec* %757, null
  br i1 %cmp1723, label %cond.true.1725, label %cond.false.1726

cond.true.1725:                                   ; preds = %if.end.1702
  %758 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1761

cond.false.1726:                                  ; preds = %if.end.1702
  %759 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1727 = icmp eq %union.rec* %759, null
  br i1 %cmp1727, label %cond.true.1729, label %cond.false.1730

cond.true.1729:                                   ; preds = %cond.false.1726
  %760 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1759

cond.false.1730:                                  ; preds = %cond.false.1726
  %761 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11731 = bitcast %union.rec* %761 to %struct.word_type*
  %olist1732 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11731, i32 0, i32 0
  %arrayidx1733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1732, i32 0, i64 0
  %opred1734 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1733, i32 0, i32 0
  %762 = load %union.rec*, %union.rec** %opred1734, align 8
  store %union.rec* %762, %union.rec** @zz_tmp, align 8
  %763 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11735 = bitcast %union.rec* %763 to %struct.word_type*
  %olist1736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11735, i32 0, i32 0
  %arrayidx1737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1736, i32 0, i64 0
  %opred1738 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1737, i32 0, i32 0
  %764 = load %union.rec*, %union.rec** %opred1738, align 8
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11739 = bitcast %union.rec* %765 to %struct.word_type*
  %olist1740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11739, i32 0, i32 0
  %arrayidx1741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1740, i32 0, i64 0
  %opred1742 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1741, i32 0, i32 0
  store %union.rec* %764, %union.rec** %opred1742, align 8
  %766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %767 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11743 = bitcast %union.rec* %767 to %struct.word_type*
  %olist1744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11743, i32 0, i32 0
  %arrayidx1745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1744, i32 0, i64 0
  %opred1746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1745, i32 0, i32 0
  %768 = load %union.rec*, %union.rec** %opred1746, align 8
  %os11747 = bitcast %union.rec* %768 to %struct.word_type*
  %olist1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11747, i32 0, i32 0
  %arrayidx1749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1748, i32 0, i64 0
  %osucc1750 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1749, i32 0, i32 1
  store %union.rec* %766, %union.rec** %osucc1750, align 8
  %769 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %770 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11751 = bitcast %union.rec* %770 to %struct.word_type*
  %olist1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11751, i32 0, i32 0
  %arrayidx1753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1752, i32 0, i64 0
  %opred1754 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1753, i32 0, i32 0
  store %union.rec* %769, %union.rec** %opred1754, align 8
  %771 = load %union.rec*, %union.rec** @zz_res, align 8
  %772 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11755 = bitcast %union.rec* %772 to %struct.word_type*
  %olist1756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11755, i32 0, i32 0
  %arrayidx1757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1756, i32 0, i64 0
  %osucc1758 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1757, i32 0, i32 1
  store %union.rec* %771, %union.rec** %osucc1758, align 8
  br label %cond.end.1759

cond.end.1759:                                    ; preds = %cond.false.1730, %cond.true.1729
  %cond1760 = phi %union.rec* [ %760, %cond.true.1729 ], [ %771, %cond.false.1730 ]
  br label %cond.end.1761

cond.end.1761:                                    ; preds = %cond.end.1759, %cond.true.1725
  %cond1762 = phi %union.rec* [ %758, %cond.true.1725 ], [ %cond1760, %cond.end.1759 ]
  %773 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %773, %union.rec** @zz_res, align 8
  %774 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %774, %union.rec** @zz_hold, align 8
  %775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1763 = icmp eq %union.rec* %775, null
  br i1 %cmp1763, label %cond.true.1765, label %cond.false.1766

cond.true.1765:                                   ; preds = %cond.end.1761
  %776 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1801

cond.false.1766:                                  ; preds = %cond.end.1761
  %777 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1767 = icmp eq %union.rec* %777, null
  br i1 %cmp1767, label %cond.true.1769, label %cond.false.1770

cond.true.1769:                                   ; preds = %cond.false.1766
  %778 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1799

cond.false.1770:                                  ; preds = %cond.false.1766
  %779 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11771 = bitcast %union.rec* %779 to %struct.word_type*
  %olist1772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11771, i32 0, i32 0
  %arrayidx1773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1772, i32 0, i64 1
  %opred1774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1773, i32 0, i32 0
  %780 = load %union.rec*, %union.rec** %opred1774, align 8
  store %union.rec* %780, %union.rec** @zz_tmp, align 8
  %781 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11775 = bitcast %union.rec* %781 to %struct.word_type*
  %olist1776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11775, i32 0, i32 0
  %arrayidx1777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1776, i32 0, i64 1
  %opred1778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1777, i32 0, i32 0
  %782 = load %union.rec*, %union.rec** %opred1778, align 8
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11779 = bitcast %union.rec* %783 to %struct.word_type*
  %olist1780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11779, i32 0, i32 0
  %arrayidx1781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1780, i32 0, i64 1
  %opred1782 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1781, i32 0, i32 0
  store %union.rec* %782, %union.rec** %opred1782, align 8
  %784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %785 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11783 = bitcast %union.rec* %785 to %struct.word_type*
  %olist1784 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11783, i32 0, i32 0
  %arrayidx1785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1784, i32 0, i64 1
  %opred1786 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1785, i32 0, i32 0
  %786 = load %union.rec*, %union.rec** %opred1786, align 8
  %os11787 = bitcast %union.rec* %786 to %struct.word_type*
  %olist1788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11787, i32 0, i32 0
  %arrayidx1789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1788, i32 0, i64 1
  %osucc1790 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1789, i32 0, i32 1
  store %union.rec* %784, %union.rec** %osucc1790, align 8
  %787 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %788 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11791 = bitcast %union.rec* %788 to %struct.word_type*
  %olist1792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11791, i32 0, i32 0
  %arrayidx1793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1792, i32 0, i64 1
  %opred1794 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1793, i32 0, i32 0
  store %union.rec* %787, %union.rec** %opred1794, align 8
  %789 = load %union.rec*, %union.rec** @zz_res, align 8
  %790 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11795 = bitcast %union.rec* %790 to %struct.word_type*
  %olist1796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11795, i32 0, i32 0
  %arrayidx1797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1796, i32 0, i64 1
  %osucc1798 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1797, i32 0, i32 1
  store %union.rec* %789, %union.rec** %osucc1798, align 8
  br label %cond.end.1799

cond.end.1799:                                    ; preds = %cond.false.1770, %cond.true.1769
  %cond1800 = phi %union.rec* [ %778, %cond.true.1769 ], [ %789, %cond.false.1770 ]
  br label %cond.end.1801

cond.end.1801:                                    ; preds = %cond.end.1799, %cond.true.1765
  %cond1802 = phi %union.rec* [ %776, %cond.true.1765 ], [ %cond1800, %cond.end.1799 ]
  %arraydecay1803 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %791 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1804 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay1803, %struct.FILE_POS* %791)
  store %union.rec* %call1804, %union.rec** %tmp, align 8
  %792 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1805 = zext i8 %792 to i32
  store i32 %conv1805, i32* @zz_size, align 4
  %conv1806 = sext i32 %conv1805 to i64
  %cmp1807 = icmp uge i64 %conv1806, 265
  br i1 %cmp1807, label %if.then.1809, label %if.else.1811

if.then.1809:                                     ; preds = %cond.end.1801
  %793 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1810 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %793)
  br label %if.end.1828

if.else.1811:                                     ; preds = %cond.end.1801
  %794 = load i32, i32* @zz_size, align 4
  %idxprom1812 = sext i32 %794 to i64
  %arrayidx1813 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1812
  %795 = load %union.rec*, %union.rec** %arrayidx1813, align 8
  %cmp1814 = icmp eq %union.rec* %795, null
  br i1 %cmp1814, label %if.then.1816, label %if.else.1818

if.then.1816:                                     ; preds = %if.else.1811
  %796 = load i32, i32* @zz_size, align 4
  %797 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1817 = call %union.rec* @GetMemory(i32 %796, %struct.FILE_POS* %797)
  store %union.rec* %call1817, %union.rec** @zz_hold, align 8
  br label %if.end.1827

if.else.1818:                                     ; preds = %if.else.1811
  %798 = load i32, i32* @zz_size, align 4
  %idxprom1819 = sext i32 %798 to i64
  %arrayidx1820 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1819
  %799 = load %union.rec*, %union.rec** %arrayidx1820, align 8
  store %union.rec* %799, %union.rec** @zz_hold, align 8
  store %union.rec* %799, %union.rec** @zz_hold, align 8
  %800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11821 = bitcast %union.rec* %800 to %struct.word_type*
  %olist1822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11821, i32 0, i32 0
  %arrayidx1823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1822, i32 0, i64 0
  %opred1824 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1823, i32 0, i32 0
  %801 = load %union.rec*, %union.rec** %opred1824, align 8
  %802 = load i32, i32* @zz_size, align 4
  %idxprom1825 = sext i32 %802 to i64
  %arrayidx1826 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1825
  store %union.rec* %801, %union.rec** %arrayidx1826, align 8
  br label %if.end.1827

if.end.1827:                                      ; preds = %if.else.1818, %if.then.1816
  br label %if.end.1828

if.end.1828:                                      ; preds = %if.end.1827, %if.then.1809
  %803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11829 = bitcast %union.rec* %803 to %struct.word_type*
  %ou11830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11829, i32 0, i32 1
  %os111831 = bitcast %union.FIRST_UNION* %ou11830 to %struct.anon*
  %otype1832 = getelementptr inbounds %struct.anon, %struct.anon* %os111831, i32 0, i32 0
  store i8 0, i8* %otype1832, align 1
  %804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11833 = bitcast %union.rec* %805 to %struct.word_type*
  %olist1834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11833, i32 0, i32 0
  %arrayidx1835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1834, i32 0, i64 1
  %osucc1836 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1835, i32 0, i32 1
  store %union.rec* %804, %union.rec** %osucc1836, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11837 = bitcast %union.rec* %806 to %struct.word_type*
  %olist1838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11837, i32 0, i32 0
  %arrayidx1839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1838, i32 0, i64 1
  %opred1840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1839, i32 0, i32 0
  store %union.rec* %804, %union.rec** %opred1840, align 8
  %807 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11841 = bitcast %union.rec* %807 to %struct.word_type*
  %olist1842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11841, i32 0, i32 0
  %arrayidx1843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1842, i32 0, i64 0
  %osucc1844 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1843, i32 0, i32 1
  store %union.rec* %804, %union.rec** %osucc1844, align 8
  %808 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11845 = bitcast %union.rec* %808 to %struct.word_type*
  %olist1846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11845, i32 0, i32 0
  %arrayidx1847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1846, i32 0, i64 0
  %opred1848 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1847, i32 0, i32 0
  store %union.rec* %804, %union.rec** %opred1848, align 8
  store %union.rec* %804, %union.rec** @xx_link, align 8
  %809 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %809, %union.rec** @zz_res, align 8
  %810 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %810, %union.rec** @zz_hold, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1849 = icmp eq %union.rec* %811, null
  br i1 %cmp1849, label %cond.true.1851, label %cond.false.1852

cond.true.1851:                                   ; preds = %if.end.1828
  %812 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1887

cond.false.1852:                                  ; preds = %if.end.1828
  %813 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1853 = icmp eq %union.rec* %813, null
  br i1 %cmp1853, label %cond.true.1855, label %cond.false.1856

cond.true.1855:                                   ; preds = %cond.false.1852
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1885

cond.false.1856:                                  ; preds = %cond.false.1852
  %815 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11857 = bitcast %union.rec* %815 to %struct.word_type*
  %olist1858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11857, i32 0, i32 0
  %arrayidx1859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1858, i32 0, i64 0
  %opred1860 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1859, i32 0, i32 0
  %816 = load %union.rec*, %union.rec** %opred1860, align 8
  store %union.rec* %816, %union.rec** @zz_tmp, align 8
  %817 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11861 = bitcast %union.rec* %817 to %struct.word_type*
  %olist1862 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11861, i32 0, i32 0
  %arrayidx1863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1862, i32 0, i64 0
  %opred1864 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1863, i32 0, i32 0
  %818 = load %union.rec*, %union.rec** %opred1864, align 8
  %819 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11865 = bitcast %union.rec* %819 to %struct.word_type*
  %olist1866 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11865, i32 0, i32 0
  %arrayidx1867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1866, i32 0, i64 0
  %opred1868 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1867, i32 0, i32 0
  store %union.rec* %818, %union.rec** %opred1868, align 8
  %820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %821 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11869 = bitcast %union.rec* %821 to %struct.word_type*
  %olist1870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11869, i32 0, i32 0
  %arrayidx1871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1870, i32 0, i64 0
  %opred1872 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1871, i32 0, i32 0
  %822 = load %union.rec*, %union.rec** %opred1872, align 8
  %os11873 = bitcast %union.rec* %822 to %struct.word_type*
  %olist1874 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11873, i32 0, i32 0
  %arrayidx1875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1874, i32 0, i64 0
  %osucc1876 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1875, i32 0, i32 1
  store %union.rec* %820, %union.rec** %osucc1876, align 8
  %823 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %824 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11877 = bitcast %union.rec* %824 to %struct.word_type*
  %olist1878 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11877, i32 0, i32 0
  %arrayidx1879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1878, i32 0, i64 0
  %opred1880 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1879, i32 0, i32 0
  store %union.rec* %823, %union.rec** %opred1880, align 8
  %825 = load %union.rec*, %union.rec** @zz_res, align 8
  %826 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11881 = bitcast %union.rec* %826 to %struct.word_type*
  %olist1882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11881, i32 0, i32 0
  %arrayidx1883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1882, i32 0, i64 0
  %osucc1884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1883, i32 0, i32 1
  store %union.rec* %825, %union.rec** %osucc1884, align 8
  br label %cond.end.1885

cond.end.1885:                                    ; preds = %cond.false.1856, %cond.true.1855
  %cond1886 = phi %union.rec* [ %814, %cond.true.1855 ], [ %825, %cond.false.1856 ]
  br label %cond.end.1887

cond.end.1887:                                    ; preds = %cond.end.1885, %cond.true.1851
  %cond1888 = phi %union.rec* [ %812, %cond.true.1851 ], [ %cond1886, %cond.end.1885 ]
  %827 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %827, %union.rec** @zz_res, align 8
  %828 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %828, %union.rec** @zz_hold, align 8
  %829 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1889 = icmp eq %union.rec* %829, null
  br i1 %cmp1889, label %cond.true.1891, label %cond.false.1892

cond.true.1891:                                   ; preds = %cond.end.1887
  %830 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1927

cond.false.1892:                                  ; preds = %cond.end.1887
  %831 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1893 = icmp eq %union.rec* %831, null
  br i1 %cmp1893, label %cond.true.1895, label %cond.false.1896

cond.true.1895:                                   ; preds = %cond.false.1892
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1925

cond.false.1896:                                  ; preds = %cond.false.1892
  %833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11897 = bitcast %union.rec* %833 to %struct.word_type*
  %olist1898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11897, i32 0, i32 0
  %arrayidx1899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1898, i32 0, i64 1
  %opred1900 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1899, i32 0, i32 0
  %834 = load %union.rec*, %union.rec** %opred1900, align 8
  store %union.rec* %834, %union.rec** @zz_tmp, align 8
  %835 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11901 = bitcast %union.rec* %835 to %struct.word_type*
  %olist1902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11901, i32 0, i32 0
  %arrayidx1903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1902, i32 0, i64 1
  %opred1904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1903, i32 0, i32 0
  %836 = load %union.rec*, %union.rec** %opred1904, align 8
  %837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11905 = bitcast %union.rec* %837 to %struct.word_type*
  %olist1906 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11905, i32 0, i32 0
  %arrayidx1907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1906, i32 0, i64 1
  %opred1908 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1907, i32 0, i32 0
  store %union.rec* %836, %union.rec** %opred1908, align 8
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %839 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11909 = bitcast %union.rec* %839 to %struct.word_type*
  %olist1910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11909, i32 0, i32 0
  %arrayidx1911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1910, i32 0, i64 1
  %opred1912 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1911, i32 0, i32 0
  %840 = load %union.rec*, %union.rec** %opred1912, align 8
  %os11913 = bitcast %union.rec* %840 to %struct.word_type*
  %olist1914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11913, i32 0, i32 0
  %arrayidx1915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1914, i32 0, i64 1
  %osucc1916 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1915, i32 0, i32 1
  store %union.rec* %838, %union.rec** %osucc1916, align 8
  %841 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %842 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11917 = bitcast %union.rec* %842 to %struct.word_type*
  %olist1918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11917, i32 0, i32 0
  %arrayidx1919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1918, i32 0, i64 1
  %opred1920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1919, i32 0, i32 0
  store %union.rec* %841, %union.rec** %opred1920, align 8
  %843 = load %union.rec*, %union.rec** @zz_res, align 8
  %844 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11921 = bitcast %union.rec* %844 to %struct.word_type*
  %olist1922 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11921, i32 0, i32 0
  %arrayidx1923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1922, i32 0, i64 1
  %osucc1924 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1923, i32 0, i32 1
  store %union.rec* %843, %union.rec** %osucc1924, align 8
  br label %cond.end.1925

cond.end.1925:                                    ; preds = %cond.false.1896, %cond.true.1895
  %cond1926 = phi %union.rec* [ %832, %cond.true.1895 ], [ %843, %cond.false.1896 ]
  br label %cond.end.1927

cond.end.1927:                                    ; preds = %cond.end.1925, %cond.true.1891
  %cond1928 = phi %union.rec* [ %830, %cond.true.1891 ], [ %cond1926, %cond.end.1925 ]
  %arraydecay1929 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %845 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %845, i32 0, i32 5
  %846 = load i32, i32* %tm_year, align 4
  %rem = srem i32 %846, 100
  %call1930 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1929, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %rem) #3
  %847 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv1931 = zext i8 %847 to i32
  store i32 %conv1931, i32* @zz_size, align 4
  %conv1932 = sext i32 %conv1931 to i64
  %cmp1933 = icmp uge i64 %conv1932, 265
  br i1 %cmp1933, label %if.then.1935, label %if.else.1937

if.then.1935:                                     ; preds = %cond.end.1927
  %848 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1936 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %848)
  br label %if.end.1954

if.else.1937:                                     ; preds = %cond.end.1927
  %849 = load i32, i32* @zz_size, align 4
  %idxprom1938 = sext i32 %849 to i64
  %arrayidx1939 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1938
  %850 = load %union.rec*, %union.rec** %arrayidx1939, align 8
  %cmp1940 = icmp eq %union.rec* %850, null
  br i1 %cmp1940, label %if.then.1942, label %if.else.1944

if.then.1942:                                     ; preds = %if.else.1937
  %851 = load i32, i32* @zz_size, align 4
  %852 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1943 = call %union.rec* @GetMemory(i32 %851, %struct.FILE_POS* %852)
  store %union.rec* %call1943, %union.rec** @zz_hold, align 8
  br label %if.end.1953

if.else.1944:                                     ; preds = %if.else.1937
  %853 = load i32, i32* @zz_size, align 4
  %idxprom1945 = sext i32 %853 to i64
  %arrayidx1946 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1945
  %854 = load %union.rec*, %union.rec** %arrayidx1946, align 8
  store %union.rec* %854, %union.rec** @zz_hold, align 8
  store %union.rec* %854, %union.rec** @zz_hold, align 8
  %855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11947 = bitcast %union.rec* %855 to %struct.word_type*
  %olist1948 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11947, i32 0, i32 0
  %arrayidx1949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1948, i32 0, i64 0
  %opred1950 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1949, i32 0, i32 0
  %856 = load %union.rec*, %union.rec** %opred1950, align 8
  %857 = load i32, i32* @zz_size, align 4
  %idxprom1951 = sext i32 %857 to i64
  %arrayidx1952 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1951
  store %union.rec* %856, %union.rec** %arrayidx1952, align 8
  br label %if.end.1953

if.end.1953:                                      ; preds = %if.else.1944, %if.then.1942
  br label %if.end.1954

if.end.1954:                                      ; preds = %if.end.1953, %if.then.1935
  %858 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11955 = bitcast %union.rec* %858 to %struct.word_type*
  %ou11956 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11955, i32 0, i32 1
  %os111957 = bitcast %union.FIRST_UNION* %ou11956 to %struct.anon*
  %otype1958 = getelementptr inbounds %struct.anon, %struct.anon* %os111957, i32 0, i32 0
  store i8 10, i8* %otype1958, align 1
  %859 = load %union.rec*, %union.rec** @zz_hold, align 8
  %860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11959 = bitcast %union.rec* %860 to %struct.word_type*
  %olist1960 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11959, i32 0, i32 0
  %arrayidx1961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1960, i32 0, i64 1
  %osucc1962 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1961, i32 0, i32 1
  store %union.rec* %859, %union.rec** %osucc1962, align 8
  %861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11963 = bitcast %union.rec* %861 to %struct.word_type*
  %olist1964 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11963, i32 0, i32 0
  %arrayidx1965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1964, i32 0, i64 1
  %opred1966 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1965, i32 0, i32 0
  store %union.rec* %859, %union.rec** %opred1966, align 8
  %862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11967 = bitcast %union.rec* %862 to %struct.word_type*
  %olist1968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11967, i32 0, i32 0
  %arrayidx1969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1968, i32 0, i64 0
  %osucc1970 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1969, i32 0, i32 1
  store %union.rec* %859, %union.rec** %osucc1970, align 8
  %863 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11971 = bitcast %union.rec* %863 to %struct.word_type*
  %olist1972 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11971, i32 0, i32 0
  %arrayidx1973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1972, i32 0, i64 0
  %opred1974 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1973, i32 0, i32 0
  store %union.rec* %859, %union.rec** %opred1974, align 8
  store %union.rec* %859, %union.rec** %par, align 8
  %864 = load %union.rec*, %union.rec** %year, align 8
  %865 = load %union.rec*, %union.rec** %par, align 8
  %os21975 = bitcast %union.rec* %865 to %struct.closure_type*
  %oactual1976 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21975, i32 0, i32 5
  store %union.rec* %864, %union.rec** %oactual1976, align 8
  %866 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1977 = zext i8 %866 to i32
  store i32 %conv1977, i32* @zz_size, align 4
  %conv1978 = sext i32 %conv1977 to i64
  %cmp1979 = icmp uge i64 %conv1978, 265
  br i1 %cmp1979, label %if.then.1981, label %if.else.1983

if.then.1981:                                     ; preds = %if.end.1954
  %867 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1982 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %867)
  br label %if.end.2000

if.else.1983:                                     ; preds = %if.end.1954
  %868 = load i32, i32* @zz_size, align 4
  %idxprom1984 = sext i32 %868 to i64
  %arrayidx1985 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1984
  %869 = load %union.rec*, %union.rec** %arrayidx1985, align 8
  %cmp1986 = icmp eq %union.rec* %869, null
  br i1 %cmp1986, label %if.then.1988, label %if.else.1990

if.then.1988:                                     ; preds = %if.else.1983
  %870 = load i32, i32* @zz_size, align 4
  %871 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1989 = call %union.rec* @GetMemory(i32 %870, %struct.FILE_POS* %871)
  store %union.rec* %call1989, %union.rec** @zz_hold, align 8
  br label %if.end.1999

if.else.1990:                                     ; preds = %if.else.1983
  %872 = load i32, i32* @zz_size, align 4
  %idxprom1991 = sext i32 %872 to i64
  %arrayidx1992 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1991
  %873 = load %union.rec*, %union.rec** %arrayidx1992, align 8
  store %union.rec* %873, %union.rec** @zz_hold, align 8
  store %union.rec* %873, %union.rec** @zz_hold, align 8
  %874 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11993 = bitcast %union.rec* %874 to %struct.word_type*
  %olist1994 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11993, i32 0, i32 0
  %arrayidx1995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1994, i32 0, i64 0
  %opred1996 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1995, i32 0, i32 0
  %875 = load %union.rec*, %union.rec** %opred1996, align 8
  %876 = load i32, i32* @zz_size, align 4
  %idxprom1997 = sext i32 %876 to i64
  %arrayidx1998 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1997
  store %union.rec* %875, %union.rec** %arrayidx1998, align 8
  br label %if.end.1999

if.end.1999:                                      ; preds = %if.else.1990, %if.then.1988
  br label %if.end.2000

if.end.2000:                                      ; preds = %if.end.1999, %if.then.1981
  %877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12001 = bitcast %union.rec* %877 to %struct.word_type*
  %ou12002 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12001, i32 0, i32 1
  %os112003 = bitcast %union.FIRST_UNION* %ou12002 to %struct.anon*
  %otype2004 = getelementptr inbounds %struct.anon, %struct.anon* %os112003, i32 0, i32 0
  store i8 0, i8* %otype2004, align 1
  %878 = load %union.rec*, %union.rec** @zz_hold, align 8
  %879 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12005 = bitcast %union.rec* %879 to %struct.word_type*
  %olist2006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12005, i32 0, i32 0
  %arrayidx2007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2006, i32 0, i64 1
  %osucc2008 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2007, i32 0, i32 1
  store %union.rec* %878, %union.rec** %osucc2008, align 8
  %880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12009 = bitcast %union.rec* %880 to %struct.word_type*
  %olist2010 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12009, i32 0, i32 0
  %arrayidx2011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2010, i32 0, i64 1
  %opred2012 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2011, i32 0, i32 0
  store %union.rec* %878, %union.rec** %opred2012, align 8
  %881 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12013 = bitcast %union.rec* %881 to %struct.word_type*
  %olist2014 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12013, i32 0, i32 0
  %arrayidx2015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2014, i32 0, i64 0
  %osucc2016 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2015, i32 0, i32 1
  store %union.rec* %878, %union.rec** %osucc2016, align 8
  %882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12017 = bitcast %union.rec* %882 to %struct.word_type*
  %olist2018 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12017, i32 0, i32 0
  %arrayidx2019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2018, i32 0, i64 0
  %opred2020 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2019, i32 0, i32 0
  store %union.rec* %878, %union.rec** %opred2020, align 8
  store %union.rec* %878, %union.rec** @xx_link, align 8
  %883 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %883, %union.rec** @zz_res, align 8
  %884 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %884, %union.rec** @zz_hold, align 8
  %885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2021 = icmp eq %union.rec* %885, null
  br i1 %cmp2021, label %cond.true.2023, label %cond.false.2024

cond.true.2023:                                   ; preds = %if.end.2000
  %886 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2059

cond.false.2024:                                  ; preds = %if.end.2000
  %887 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2025 = icmp eq %union.rec* %887, null
  br i1 %cmp2025, label %cond.true.2027, label %cond.false.2028

cond.true.2027:                                   ; preds = %cond.false.2024
  %888 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2057

cond.false.2028:                                  ; preds = %cond.false.2024
  %889 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12029 = bitcast %union.rec* %889 to %struct.word_type*
  %olist2030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12029, i32 0, i32 0
  %arrayidx2031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2030, i32 0, i64 0
  %opred2032 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2031, i32 0, i32 0
  %890 = load %union.rec*, %union.rec** %opred2032, align 8
  store %union.rec* %890, %union.rec** @zz_tmp, align 8
  %891 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12033 = bitcast %union.rec* %891 to %struct.word_type*
  %olist2034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12033, i32 0, i32 0
  %arrayidx2035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2034, i32 0, i64 0
  %opred2036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2035, i32 0, i32 0
  %892 = load %union.rec*, %union.rec** %opred2036, align 8
  %893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12037 = bitcast %union.rec* %893 to %struct.word_type*
  %olist2038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12037, i32 0, i32 0
  %arrayidx2039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2038, i32 0, i64 0
  %opred2040 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2039, i32 0, i32 0
  store %union.rec* %892, %union.rec** %opred2040, align 8
  %894 = load %union.rec*, %union.rec** @zz_hold, align 8
  %895 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12041 = bitcast %union.rec* %895 to %struct.word_type*
  %olist2042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12041, i32 0, i32 0
  %arrayidx2043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2042, i32 0, i64 0
  %opred2044 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2043, i32 0, i32 0
  %896 = load %union.rec*, %union.rec** %opred2044, align 8
  %os12045 = bitcast %union.rec* %896 to %struct.word_type*
  %olist2046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12045, i32 0, i32 0
  %arrayidx2047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2046, i32 0, i64 0
  %osucc2048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2047, i32 0, i32 1
  store %union.rec* %894, %union.rec** %osucc2048, align 8
  %897 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %898 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12049 = bitcast %union.rec* %898 to %struct.word_type*
  %olist2050 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12049, i32 0, i32 0
  %arrayidx2051 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2050, i32 0, i64 0
  %opred2052 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2051, i32 0, i32 0
  store %union.rec* %897, %union.rec** %opred2052, align 8
  %899 = load %union.rec*, %union.rec** @zz_res, align 8
  %900 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12053 = bitcast %union.rec* %900 to %struct.word_type*
  %olist2054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12053, i32 0, i32 0
  %arrayidx2055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2054, i32 0, i64 0
  %osucc2056 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2055, i32 0, i32 1
  store %union.rec* %899, %union.rec** %osucc2056, align 8
  br label %cond.end.2057

cond.end.2057:                                    ; preds = %cond.false.2028, %cond.true.2027
  %cond2058 = phi %union.rec* [ %888, %cond.true.2027 ], [ %899, %cond.false.2028 ]
  br label %cond.end.2059

cond.end.2059:                                    ; preds = %cond.end.2057, %cond.true.2023
  %cond2060 = phi %union.rec* [ %886, %cond.true.2023 ], [ %cond2058, %cond.end.2057 ]
  %901 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %901, %union.rec** @zz_res, align 8
  %902 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %902, %union.rec** @zz_hold, align 8
  %903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2061 = icmp eq %union.rec* %903, null
  br i1 %cmp2061, label %cond.true.2063, label %cond.false.2064

cond.true.2063:                                   ; preds = %cond.end.2059
  %904 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2099

cond.false.2064:                                  ; preds = %cond.end.2059
  %905 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2065 = icmp eq %union.rec* %905, null
  br i1 %cmp2065, label %cond.true.2067, label %cond.false.2068

cond.true.2067:                                   ; preds = %cond.false.2064
  %906 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2097

cond.false.2068:                                  ; preds = %cond.false.2064
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12069 = bitcast %union.rec* %907 to %struct.word_type*
  %olist2070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12069, i32 0, i32 0
  %arrayidx2071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2070, i32 0, i64 1
  %opred2072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2071, i32 0, i32 0
  %908 = load %union.rec*, %union.rec** %opred2072, align 8
  store %union.rec* %908, %union.rec** @zz_tmp, align 8
  %909 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12073 = bitcast %union.rec* %909 to %struct.word_type*
  %olist2074 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12073, i32 0, i32 0
  %arrayidx2075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2074, i32 0, i64 1
  %opred2076 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2075, i32 0, i32 0
  %910 = load %union.rec*, %union.rec** %opred2076, align 8
  %911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12077 = bitcast %union.rec* %911 to %struct.word_type*
  %olist2078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12077, i32 0, i32 0
  %arrayidx2079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2078, i32 0, i64 1
  %opred2080 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2079, i32 0, i32 0
  store %union.rec* %910, %union.rec** %opred2080, align 8
  %912 = load %union.rec*, %union.rec** @zz_hold, align 8
  %913 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12081 = bitcast %union.rec* %913 to %struct.word_type*
  %olist2082 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12081, i32 0, i32 0
  %arrayidx2083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2082, i32 0, i64 1
  %opred2084 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2083, i32 0, i32 0
  %914 = load %union.rec*, %union.rec** %opred2084, align 8
  %os12085 = bitcast %union.rec* %914 to %struct.word_type*
  %olist2086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12085, i32 0, i32 0
  %arrayidx2087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2086, i32 0, i64 1
  %osucc2088 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2087, i32 0, i32 1
  store %union.rec* %912, %union.rec** %osucc2088, align 8
  %915 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %916 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12089 = bitcast %union.rec* %916 to %struct.word_type*
  %olist2090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12089, i32 0, i32 0
  %arrayidx2091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2090, i32 0, i64 1
  %opred2092 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2091, i32 0, i32 0
  store %union.rec* %915, %union.rec** %opred2092, align 8
  %917 = load %union.rec*, %union.rec** @zz_res, align 8
  %918 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12093 = bitcast %union.rec* %918 to %struct.word_type*
  %olist2094 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12093, i32 0, i32 0
  %arrayidx2095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2094, i32 0, i64 1
  %osucc2096 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2095, i32 0, i32 1
  store %union.rec* %917, %union.rec** %osucc2096, align 8
  br label %cond.end.2097

cond.end.2097:                                    ; preds = %cond.false.2068, %cond.true.2067
  %cond2098 = phi %union.rec* [ %906, %cond.true.2067 ], [ %917, %cond.false.2068 ]
  br label %cond.end.2099

cond.end.2099:                                    ; preds = %cond.end.2097, %cond.true.2063
  %cond2100 = phi %union.rec* [ %904, %cond.true.2063 ], [ %cond2098, %cond.end.2097 ]
  %arraydecay2101 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %919 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2102 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay2101, %struct.FILE_POS* %919)
  store %union.rec* %call2102, %union.rec** %tmp, align 8
  %920 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2103 = zext i8 %920 to i32
  store i32 %conv2103, i32* @zz_size, align 4
  %conv2104 = sext i32 %conv2103 to i64
  %cmp2105 = icmp uge i64 %conv2104, 265
  br i1 %cmp2105, label %if.then.2107, label %if.else.2109

if.then.2107:                                     ; preds = %cond.end.2099
  %921 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2108 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %921)
  br label %if.end.2126

if.else.2109:                                     ; preds = %cond.end.2099
  %922 = load i32, i32* @zz_size, align 4
  %idxprom2110 = sext i32 %922 to i64
  %arrayidx2111 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2110
  %923 = load %union.rec*, %union.rec** %arrayidx2111, align 8
  %cmp2112 = icmp eq %union.rec* %923, null
  br i1 %cmp2112, label %if.then.2114, label %if.else.2116

if.then.2114:                                     ; preds = %if.else.2109
  %924 = load i32, i32* @zz_size, align 4
  %925 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2115 = call %union.rec* @GetMemory(i32 %924, %struct.FILE_POS* %925)
  store %union.rec* %call2115, %union.rec** @zz_hold, align 8
  br label %if.end.2125

if.else.2116:                                     ; preds = %if.else.2109
  %926 = load i32, i32* @zz_size, align 4
  %idxprom2117 = sext i32 %926 to i64
  %arrayidx2118 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2117
  %927 = load %union.rec*, %union.rec** %arrayidx2118, align 8
  store %union.rec* %927, %union.rec** @zz_hold, align 8
  store %union.rec* %927, %union.rec** @zz_hold, align 8
  %928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12119 = bitcast %union.rec* %928 to %struct.word_type*
  %olist2120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12119, i32 0, i32 0
  %arrayidx2121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2120, i32 0, i64 0
  %opred2122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2121, i32 0, i32 0
  %929 = load %union.rec*, %union.rec** %opred2122, align 8
  %930 = load i32, i32* @zz_size, align 4
  %idxprom2123 = sext i32 %930 to i64
  %arrayidx2124 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2123
  store %union.rec* %929, %union.rec** %arrayidx2124, align 8
  br label %if.end.2125

if.end.2125:                                      ; preds = %if.else.2116, %if.then.2114
  br label %if.end.2126

if.end.2126:                                      ; preds = %if.end.2125, %if.then.2107
  %931 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12127 = bitcast %union.rec* %931 to %struct.word_type*
  %ou12128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12127, i32 0, i32 1
  %os112129 = bitcast %union.FIRST_UNION* %ou12128 to %struct.anon*
  %otype2130 = getelementptr inbounds %struct.anon, %struct.anon* %os112129, i32 0, i32 0
  store i8 0, i8* %otype2130, align 1
  %932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12131 = bitcast %union.rec* %933 to %struct.word_type*
  %olist2132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12131, i32 0, i32 0
  %arrayidx2133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2132, i32 0, i64 1
  %osucc2134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2133, i32 0, i32 1
  store %union.rec* %932, %union.rec** %osucc2134, align 8
  %934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12135 = bitcast %union.rec* %934 to %struct.word_type*
  %olist2136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12135, i32 0, i32 0
  %arrayidx2137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2136, i32 0, i64 1
  %opred2138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2137, i32 0, i32 0
  store %union.rec* %932, %union.rec** %opred2138, align 8
  %935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12139 = bitcast %union.rec* %935 to %struct.word_type*
  %olist2140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12139, i32 0, i32 0
  %arrayidx2141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2140, i32 0, i64 0
  %osucc2142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2141, i32 0, i32 1
  store %union.rec* %932, %union.rec** %osucc2142, align 8
  %936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12143 = bitcast %union.rec* %936 to %struct.word_type*
  %olist2144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12143, i32 0, i32 0
  %arrayidx2145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2144, i32 0, i64 0
  %opred2146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2145, i32 0, i32 0
  store %union.rec* %932, %union.rec** %opred2146, align 8
  store %union.rec* %932, %union.rec** @xx_link, align 8
  %937 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %937, %union.rec** @zz_res, align 8
  %938 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %938, %union.rec** @zz_hold, align 8
  %939 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2147 = icmp eq %union.rec* %939, null
  br i1 %cmp2147, label %cond.true.2149, label %cond.false.2150

cond.true.2149:                                   ; preds = %if.end.2126
  %940 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2185

cond.false.2150:                                  ; preds = %if.end.2126
  %941 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2151 = icmp eq %union.rec* %941, null
  br i1 %cmp2151, label %cond.true.2153, label %cond.false.2154

cond.true.2153:                                   ; preds = %cond.false.2150
  %942 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2183

cond.false.2154:                                  ; preds = %cond.false.2150
  %943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12155 = bitcast %union.rec* %943 to %struct.word_type*
  %olist2156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12155, i32 0, i32 0
  %arrayidx2157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2156, i32 0, i64 0
  %opred2158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2157, i32 0, i32 0
  %944 = load %union.rec*, %union.rec** %opred2158, align 8
  store %union.rec* %944, %union.rec** @zz_tmp, align 8
  %945 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12159 = bitcast %union.rec* %945 to %struct.word_type*
  %olist2160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12159, i32 0, i32 0
  %arrayidx2161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2160, i32 0, i64 0
  %opred2162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2161, i32 0, i32 0
  %946 = load %union.rec*, %union.rec** %opred2162, align 8
  %947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12163 = bitcast %union.rec* %947 to %struct.word_type*
  %olist2164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12163, i32 0, i32 0
  %arrayidx2165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2164, i32 0, i64 0
  %opred2166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2165, i32 0, i32 0
  store %union.rec* %946, %union.rec** %opred2166, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %949 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12167 = bitcast %union.rec* %949 to %struct.word_type*
  %olist2168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12167, i32 0, i32 0
  %arrayidx2169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2168, i32 0, i64 0
  %opred2170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2169, i32 0, i32 0
  %950 = load %union.rec*, %union.rec** %opred2170, align 8
  %os12171 = bitcast %union.rec* %950 to %struct.word_type*
  %olist2172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12171, i32 0, i32 0
  %arrayidx2173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2172, i32 0, i64 0
  %osucc2174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2173, i32 0, i32 1
  store %union.rec* %948, %union.rec** %osucc2174, align 8
  %951 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %952 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12175 = bitcast %union.rec* %952 to %struct.word_type*
  %olist2176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12175, i32 0, i32 0
  %arrayidx2177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2176, i32 0, i64 0
  %opred2178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2177, i32 0, i32 0
  store %union.rec* %951, %union.rec** %opred2178, align 8
  %953 = load %union.rec*, %union.rec** @zz_res, align 8
  %954 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12179 = bitcast %union.rec* %954 to %struct.word_type*
  %olist2180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12179, i32 0, i32 0
  %arrayidx2181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2180, i32 0, i64 0
  %osucc2182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2181, i32 0, i32 1
  store %union.rec* %953, %union.rec** %osucc2182, align 8
  br label %cond.end.2183

cond.end.2183:                                    ; preds = %cond.false.2154, %cond.true.2153
  %cond2184 = phi %union.rec* [ %942, %cond.true.2153 ], [ %953, %cond.false.2154 ]
  br label %cond.end.2185

cond.end.2185:                                    ; preds = %cond.end.2183, %cond.true.2149
  %cond2186 = phi %union.rec* [ %940, %cond.true.2149 ], [ %cond2184, %cond.end.2183 ]
  %955 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %955, %union.rec** @zz_res, align 8
  %956 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %956, %union.rec** @zz_hold, align 8
  %957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2187 = icmp eq %union.rec* %957, null
  br i1 %cmp2187, label %cond.true.2189, label %cond.false.2190

cond.true.2189:                                   ; preds = %cond.end.2185
  %958 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2225

cond.false.2190:                                  ; preds = %cond.end.2185
  %959 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2191 = icmp eq %union.rec* %959, null
  br i1 %cmp2191, label %cond.true.2193, label %cond.false.2194

cond.true.2193:                                   ; preds = %cond.false.2190
  %960 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2223

cond.false.2194:                                  ; preds = %cond.false.2190
  %961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12195 = bitcast %union.rec* %961 to %struct.word_type*
  %olist2196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12195, i32 0, i32 0
  %arrayidx2197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2196, i32 0, i64 1
  %opred2198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2197, i32 0, i32 0
  %962 = load %union.rec*, %union.rec** %opred2198, align 8
  store %union.rec* %962, %union.rec** @zz_tmp, align 8
  %963 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12199 = bitcast %union.rec* %963 to %struct.word_type*
  %olist2200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12199, i32 0, i32 0
  %arrayidx2201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2200, i32 0, i64 1
  %opred2202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2201, i32 0, i32 0
  %964 = load %union.rec*, %union.rec** %opred2202, align 8
  %965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12203 = bitcast %union.rec* %965 to %struct.word_type*
  %olist2204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12203, i32 0, i32 0
  %arrayidx2205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2204, i32 0, i64 1
  %opred2206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2205, i32 0, i32 0
  store %union.rec* %964, %union.rec** %opred2206, align 8
  %966 = load %union.rec*, %union.rec** @zz_hold, align 8
  %967 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12207 = bitcast %union.rec* %967 to %struct.word_type*
  %olist2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12207, i32 0, i32 0
  %arrayidx2209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2208, i32 0, i64 1
  %opred2210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2209, i32 0, i32 0
  %968 = load %union.rec*, %union.rec** %opred2210, align 8
  %os12211 = bitcast %union.rec* %968 to %struct.word_type*
  %olist2212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12211, i32 0, i32 0
  %arrayidx2213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2212, i32 0, i64 1
  %osucc2214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2213, i32 0, i32 1
  store %union.rec* %966, %union.rec** %osucc2214, align 8
  %969 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %970 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12215 = bitcast %union.rec* %970 to %struct.word_type*
  %olist2216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12215, i32 0, i32 0
  %arrayidx2217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2216, i32 0, i64 1
  %opred2218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2217, i32 0, i32 0
  store %union.rec* %969, %union.rec** %opred2218, align 8
  %971 = load %union.rec*, %union.rec** @zz_res, align 8
  %972 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12219 = bitcast %union.rec* %972 to %struct.word_type*
  %olist2220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12219, i32 0, i32 0
  %arrayidx2221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2220, i32 0, i64 1
  %osucc2222 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2221, i32 0, i32 1
  store %union.rec* %971, %union.rec** %osucc2222, align 8
  br label %cond.end.2223

cond.end.2223:                                    ; preds = %cond.false.2194, %cond.true.2193
  %cond2224 = phi %union.rec* [ %960, %cond.true.2193 ], [ %971, %cond.false.2194 ]
  br label %cond.end.2225

cond.end.2225:                                    ; preds = %cond.end.2223, %cond.true.2189
  %cond2226 = phi %union.rec* [ %958, %cond.true.2189 ], [ %cond2224, %cond.end.2223 ]
  %arraydecay2227 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %973 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_year2228 = getelementptr inbounds %struct.tm, %struct.tm* %973, i32 0, i32 5
  %974 = load i32, i32* %tm_year2228, align 4
  %add2229 = add nsw i32 %974, 1900
  %div = sdiv i32 %add2229, 100
  %call2230 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2227, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %div) #3
  %975 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv2231 = zext i8 %975 to i32
  store i32 %conv2231, i32* @zz_size, align 4
  %conv2232 = sext i32 %conv2231 to i64
  %cmp2233 = icmp uge i64 %conv2232, 265
  br i1 %cmp2233, label %if.then.2235, label %if.else.2237

if.then.2235:                                     ; preds = %cond.end.2225
  %976 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2236 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %976)
  br label %if.end.2254

if.else.2237:                                     ; preds = %cond.end.2225
  %977 = load i32, i32* @zz_size, align 4
  %idxprom2238 = sext i32 %977 to i64
  %arrayidx2239 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2238
  %978 = load %union.rec*, %union.rec** %arrayidx2239, align 8
  %cmp2240 = icmp eq %union.rec* %978, null
  br i1 %cmp2240, label %if.then.2242, label %if.else.2244

if.then.2242:                                     ; preds = %if.else.2237
  %979 = load i32, i32* @zz_size, align 4
  %980 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2243 = call %union.rec* @GetMemory(i32 %979, %struct.FILE_POS* %980)
  store %union.rec* %call2243, %union.rec** @zz_hold, align 8
  br label %if.end.2253

if.else.2244:                                     ; preds = %if.else.2237
  %981 = load i32, i32* @zz_size, align 4
  %idxprom2245 = sext i32 %981 to i64
  %arrayidx2246 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2245
  %982 = load %union.rec*, %union.rec** %arrayidx2246, align 8
  store %union.rec* %982, %union.rec** @zz_hold, align 8
  store %union.rec* %982, %union.rec** @zz_hold, align 8
  %983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12247 = bitcast %union.rec* %983 to %struct.word_type*
  %olist2248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12247, i32 0, i32 0
  %arrayidx2249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2248, i32 0, i64 0
  %opred2250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2249, i32 0, i32 0
  %984 = load %union.rec*, %union.rec** %opred2250, align 8
  %985 = load i32, i32* @zz_size, align 4
  %idxprom2251 = sext i32 %985 to i64
  %arrayidx2252 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2251
  store %union.rec* %984, %union.rec** %arrayidx2252, align 8
  br label %if.end.2253

if.end.2253:                                      ; preds = %if.else.2244, %if.then.2242
  br label %if.end.2254

if.end.2254:                                      ; preds = %if.end.2253, %if.then.2235
  %986 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12255 = bitcast %union.rec* %986 to %struct.word_type*
  %ou12256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12255, i32 0, i32 1
  %os112257 = bitcast %union.FIRST_UNION* %ou12256 to %struct.anon*
  %otype2258 = getelementptr inbounds %struct.anon, %struct.anon* %os112257, i32 0, i32 0
  store i8 10, i8* %otype2258, align 1
  %987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12259 = bitcast %union.rec* %988 to %struct.word_type*
  %olist2260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12259, i32 0, i32 0
  %arrayidx2261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2260, i32 0, i64 1
  %osucc2262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2261, i32 0, i32 1
  store %union.rec* %987, %union.rec** %osucc2262, align 8
  %989 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12263 = bitcast %union.rec* %989 to %struct.word_type*
  %olist2264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12263, i32 0, i32 0
  %arrayidx2265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2264, i32 0, i64 1
  %opred2266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2265, i32 0, i32 0
  store %union.rec* %987, %union.rec** %opred2266, align 8
  %990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12267 = bitcast %union.rec* %990 to %struct.word_type*
  %olist2268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12267, i32 0, i32 0
  %arrayidx2269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2268, i32 0, i64 0
  %osucc2270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2269, i32 0, i32 1
  store %union.rec* %987, %union.rec** %osucc2270, align 8
  %991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12271 = bitcast %union.rec* %991 to %struct.word_type*
  %olist2272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12271, i32 0, i32 0
  %arrayidx2273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2272, i32 0, i64 0
  %opred2274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2273, i32 0, i32 0
  store %union.rec* %987, %union.rec** %opred2274, align 8
  store %union.rec* %987, %union.rec** %par, align 8
  %992 = load %union.rec*, %union.rec** %century, align 8
  %993 = load %union.rec*, %union.rec** %par, align 8
  %os22275 = bitcast %union.rec* %993 to %struct.closure_type*
  %oactual2276 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22275, i32 0, i32 5
  store %union.rec* %992, %union.rec** %oactual2276, align 8
  %994 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2277 = zext i8 %994 to i32
  store i32 %conv2277, i32* @zz_size, align 4
  %conv2278 = sext i32 %conv2277 to i64
  %cmp2279 = icmp uge i64 %conv2278, 265
  br i1 %cmp2279, label %if.then.2281, label %if.else.2283

if.then.2281:                                     ; preds = %if.end.2254
  %995 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2282 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %995)
  br label %if.end.2300

if.else.2283:                                     ; preds = %if.end.2254
  %996 = load i32, i32* @zz_size, align 4
  %idxprom2284 = sext i32 %996 to i64
  %arrayidx2285 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2284
  %997 = load %union.rec*, %union.rec** %arrayidx2285, align 8
  %cmp2286 = icmp eq %union.rec* %997, null
  br i1 %cmp2286, label %if.then.2288, label %if.else.2290

if.then.2288:                                     ; preds = %if.else.2283
  %998 = load i32, i32* @zz_size, align 4
  %999 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2289 = call %union.rec* @GetMemory(i32 %998, %struct.FILE_POS* %999)
  store %union.rec* %call2289, %union.rec** @zz_hold, align 8
  br label %if.end.2299

if.else.2290:                                     ; preds = %if.else.2283
  %1000 = load i32, i32* @zz_size, align 4
  %idxprom2291 = sext i32 %1000 to i64
  %arrayidx2292 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2291
  %1001 = load %union.rec*, %union.rec** %arrayidx2292, align 8
  store %union.rec* %1001, %union.rec** @zz_hold, align 8
  store %union.rec* %1001, %union.rec** @zz_hold, align 8
  %1002 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12293 = bitcast %union.rec* %1002 to %struct.word_type*
  %olist2294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12293, i32 0, i32 0
  %arrayidx2295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2294, i32 0, i64 0
  %opred2296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2295, i32 0, i32 0
  %1003 = load %union.rec*, %union.rec** %opred2296, align 8
  %1004 = load i32, i32* @zz_size, align 4
  %idxprom2297 = sext i32 %1004 to i64
  %arrayidx2298 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2297
  store %union.rec* %1003, %union.rec** %arrayidx2298, align 8
  br label %if.end.2299

if.end.2299:                                      ; preds = %if.else.2290, %if.then.2288
  br label %if.end.2300

if.end.2300:                                      ; preds = %if.end.2299, %if.then.2281
  %1005 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12301 = bitcast %union.rec* %1005 to %struct.word_type*
  %ou12302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12301, i32 0, i32 1
  %os112303 = bitcast %union.FIRST_UNION* %ou12302 to %struct.anon*
  %otype2304 = getelementptr inbounds %struct.anon, %struct.anon* %os112303, i32 0, i32 0
  store i8 0, i8* %otype2304, align 1
  %1006 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1007 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12305 = bitcast %union.rec* %1007 to %struct.word_type*
  %olist2306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12305, i32 0, i32 0
  %arrayidx2307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2306, i32 0, i64 1
  %osucc2308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2307, i32 0, i32 1
  store %union.rec* %1006, %union.rec** %osucc2308, align 8
  %1008 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12309 = bitcast %union.rec* %1008 to %struct.word_type*
  %olist2310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12309, i32 0, i32 0
  %arrayidx2311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2310, i32 0, i64 1
  %opred2312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2311, i32 0, i32 0
  store %union.rec* %1006, %union.rec** %opred2312, align 8
  %1009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12313 = bitcast %union.rec* %1009 to %struct.word_type*
  %olist2314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12313, i32 0, i32 0
  %arrayidx2315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2314, i32 0, i64 0
  %osucc2316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2315, i32 0, i32 1
  store %union.rec* %1006, %union.rec** %osucc2316, align 8
  %1010 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12317 = bitcast %union.rec* %1010 to %struct.word_type*
  %olist2318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12317, i32 0, i32 0
  %arrayidx2319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2318, i32 0, i64 0
  %opred2320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2319, i32 0, i32 0
  store %union.rec* %1006, %union.rec** %opred2320, align 8
  store %union.rec* %1006, %union.rec** @xx_link, align 8
  %1011 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1011, %union.rec** @zz_res, align 8
  %1012 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %1012, %union.rec** @zz_hold, align 8
  %1013 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2321 = icmp eq %union.rec* %1013, null
  br i1 %cmp2321, label %cond.true.2323, label %cond.false.2324

cond.true.2323:                                   ; preds = %if.end.2300
  %1014 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2359

cond.false.2324:                                  ; preds = %if.end.2300
  %1015 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2325 = icmp eq %union.rec* %1015, null
  br i1 %cmp2325, label %cond.true.2327, label %cond.false.2328

cond.true.2327:                                   ; preds = %cond.false.2324
  %1016 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2357

cond.false.2328:                                  ; preds = %cond.false.2324
  %1017 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12329 = bitcast %union.rec* %1017 to %struct.word_type*
  %olist2330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12329, i32 0, i32 0
  %arrayidx2331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2330, i32 0, i64 0
  %opred2332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2331, i32 0, i32 0
  %1018 = load %union.rec*, %union.rec** %opred2332, align 8
  store %union.rec* %1018, %union.rec** @zz_tmp, align 8
  %1019 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12333 = bitcast %union.rec* %1019 to %struct.word_type*
  %olist2334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12333, i32 0, i32 0
  %arrayidx2335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2334, i32 0, i64 0
  %opred2336 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2335, i32 0, i32 0
  %1020 = load %union.rec*, %union.rec** %opred2336, align 8
  %1021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12337 = bitcast %union.rec* %1021 to %struct.word_type*
  %olist2338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12337, i32 0, i32 0
  %arrayidx2339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2338, i32 0, i64 0
  %opred2340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2339, i32 0, i32 0
  store %union.rec* %1020, %union.rec** %opred2340, align 8
  %1022 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1023 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12341 = bitcast %union.rec* %1023 to %struct.word_type*
  %olist2342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12341, i32 0, i32 0
  %arrayidx2343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2342, i32 0, i64 0
  %opred2344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2343, i32 0, i32 0
  %1024 = load %union.rec*, %union.rec** %opred2344, align 8
  %os12345 = bitcast %union.rec* %1024 to %struct.word_type*
  %olist2346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12345, i32 0, i32 0
  %arrayidx2347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2346, i32 0, i64 0
  %osucc2348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2347, i32 0, i32 1
  store %union.rec* %1022, %union.rec** %osucc2348, align 8
  %1025 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1026 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12349 = bitcast %union.rec* %1026 to %struct.word_type*
  %olist2350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12349, i32 0, i32 0
  %arrayidx2351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2350, i32 0, i64 0
  %opred2352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2351, i32 0, i32 0
  store %union.rec* %1025, %union.rec** %opred2352, align 8
  %1027 = load %union.rec*, %union.rec** @zz_res, align 8
  %1028 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12353 = bitcast %union.rec* %1028 to %struct.word_type*
  %olist2354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12353, i32 0, i32 0
  %arrayidx2355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2354, i32 0, i64 0
  %osucc2356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2355, i32 0, i32 1
  store %union.rec* %1027, %union.rec** %osucc2356, align 8
  br label %cond.end.2357

cond.end.2357:                                    ; preds = %cond.false.2328, %cond.true.2327
  %cond2358 = phi %union.rec* [ %1016, %cond.true.2327 ], [ %1027, %cond.false.2328 ]
  br label %cond.end.2359

cond.end.2359:                                    ; preds = %cond.end.2357, %cond.true.2323
  %cond2360 = phi %union.rec* [ %1014, %cond.true.2323 ], [ %cond2358, %cond.end.2357 ]
  %1029 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1029, %union.rec** @zz_res, align 8
  %1030 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1030, %union.rec** @zz_hold, align 8
  %1031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2361 = icmp eq %union.rec* %1031, null
  br i1 %cmp2361, label %cond.true.2363, label %cond.false.2364

cond.true.2363:                                   ; preds = %cond.end.2359
  %1032 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2399

cond.false.2364:                                  ; preds = %cond.end.2359
  %1033 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2365 = icmp eq %union.rec* %1033, null
  br i1 %cmp2365, label %cond.true.2367, label %cond.false.2368

cond.true.2367:                                   ; preds = %cond.false.2364
  %1034 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2397

cond.false.2368:                                  ; preds = %cond.false.2364
  %1035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12369 = bitcast %union.rec* %1035 to %struct.word_type*
  %olist2370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12369, i32 0, i32 0
  %arrayidx2371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2370, i32 0, i64 1
  %opred2372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2371, i32 0, i32 0
  %1036 = load %union.rec*, %union.rec** %opred2372, align 8
  store %union.rec* %1036, %union.rec** @zz_tmp, align 8
  %1037 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12373 = bitcast %union.rec* %1037 to %struct.word_type*
  %olist2374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12373, i32 0, i32 0
  %arrayidx2375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2374, i32 0, i64 1
  %opred2376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2375, i32 0, i32 0
  %1038 = load %union.rec*, %union.rec** %opred2376, align 8
  %1039 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12377 = bitcast %union.rec* %1039 to %struct.word_type*
  %olist2378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12377, i32 0, i32 0
  %arrayidx2379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2378, i32 0, i64 1
  %opred2380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2379, i32 0, i32 0
  store %union.rec* %1038, %union.rec** %opred2380, align 8
  %1040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1041 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12381 = bitcast %union.rec* %1041 to %struct.word_type*
  %olist2382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12381, i32 0, i32 0
  %arrayidx2383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2382, i32 0, i64 1
  %opred2384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2383, i32 0, i32 0
  %1042 = load %union.rec*, %union.rec** %opred2384, align 8
  %os12385 = bitcast %union.rec* %1042 to %struct.word_type*
  %olist2386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12385, i32 0, i32 0
  %arrayidx2387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2386, i32 0, i64 1
  %osucc2388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2387, i32 0, i32 1
  store %union.rec* %1040, %union.rec** %osucc2388, align 8
  %1043 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1044 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12389 = bitcast %union.rec* %1044 to %struct.word_type*
  %olist2390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12389, i32 0, i32 0
  %arrayidx2391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2390, i32 0, i64 1
  %opred2392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2391, i32 0, i32 0
  store %union.rec* %1043, %union.rec** %opred2392, align 8
  %1045 = load %union.rec*, %union.rec** @zz_res, align 8
  %1046 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12393 = bitcast %union.rec* %1046 to %struct.word_type*
  %olist2394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12393, i32 0, i32 0
  %arrayidx2395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2394, i32 0, i64 1
  %osucc2396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2395, i32 0, i32 1
  store %union.rec* %1045, %union.rec** %osucc2396, align 8
  br label %cond.end.2397

cond.end.2397:                                    ; preds = %cond.false.2368, %cond.true.2367
  %cond2398 = phi %union.rec* [ %1034, %cond.true.2367 ], [ %1045, %cond.false.2368 ]
  br label %cond.end.2399

cond.end.2399:                                    ; preds = %cond.end.2397, %cond.true.2363
  %cond2400 = phi %union.rec* [ %1032, %cond.true.2363 ], [ %cond2398, %cond.end.2397 ]
  %arraydecay2401 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1047 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2402 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay2401, %struct.FILE_POS* %1047)
  store %union.rec* %call2402, %union.rec** %tmp, align 8
  %1048 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2403 = zext i8 %1048 to i32
  store i32 %conv2403, i32* @zz_size, align 4
  %conv2404 = sext i32 %conv2403 to i64
  %cmp2405 = icmp uge i64 %conv2404, 265
  br i1 %cmp2405, label %if.then.2407, label %if.else.2409

if.then.2407:                                     ; preds = %cond.end.2399
  %1049 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2408 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1049)
  br label %if.end.2426

if.else.2409:                                     ; preds = %cond.end.2399
  %1050 = load i32, i32* @zz_size, align 4
  %idxprom2410 = sext i32 %1050 to i64
  %arrayidx2411 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2410
  %1051 = load %union.rec*, %union.rec** %arrayidx2411, align 8
  %cmp2412 = icmp eq %union.rec* %1051, null
  br i1 %cmp2412, label %if.then.2414, label %if.else.2416

if.then.2414:                                     ; preds = %if.else.2409
  %1052 = load i32, i32* @zz_size, align 4
  %1053 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2415 = call %union.rec* @GetMemory(i32 %1052, %struct.FILE_POS* %1053)
  store %union.rec* %call2415, %union.rec** @zz_hold, align 8
  br label %if.end.2425

if.else.2416:                                     ; preds = %if.else.2409
  %1054 = load i32, i32* @zz_size, align 4
  %idxprom2417 = sext i32 %1054 to i64
  %arrayidx2418 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2417
  %1055 = load %union.rec*, %union.rec** %arrayidx2418, align 8
  store %union.rec* %1055, %union.rec** @zz_hold, align 8
  store %union.rec* %1055, %union.rec** @zz_hold, align 8
  %1056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12419 = bitcast %union.rec* %1056 to %struct.word_type*
  %olist2420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12419, i32 0, i32 0
  %arrayidx2421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2420, i32 0, i64 0
  %opred2422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2421, i32 0, i32 0
  %1057 = load %union.rec*, %union.rec** %opred2422, align 8
  %1058 = load i32, i32* @zz_size, align 4
  %idxprom2423 = sext i32 %1058 to i64
  %arrayidx2424 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2423
  store %union.rec* %1057, %union.rec** %arrayidx2424, align 8
  br label %if.end.2425

if.end.2425:                                      ; preds = %if.else.2416, %if.then.2414
  br label %if.end.2426

if.end.2426:                                      ; preds = %if.end.2425, %if.then.2407
  %1059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12427 = bitcast %union.rec* %1059 to %struct.word_type*
  %ou12428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12427, i32 0, i32 1
  %os112429 = bitcast %union.FIRST_UNION* %ou12428 to %struct.anon*
  %otype2430 = getelementptr inbounds %struct.anon, %struct.anon* %os112429, i32 0, i32 0
  store i8 0, i8* %otype2430, align 1
  %1060 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12431 = bitcast %union.rec* %1061 to %struct.word_type*
  %olist2432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12431, i32 0, i32 0
  %arrayidx2433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2432, i32 0, i64 1
  %osucc2434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2433, i32 0, i32 1
  store %union.rec* %1060, %union.rec** %osucc2434, align 8
  %1062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12435 = bitcast %union.rec* %1062 to %struct.word_type*
  %olist2436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12435, i32 0, i32 0
  %arrayidx2437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2436, i32 0, i64 1
  %opred2438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2437, i32 0, i32 0
  store %union.rec* %1060, %union.rec** %opred2438, align 8
  %1063 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12439 = bitcast %union.rec* %1063 to %struct.word_type*
  %olist2440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12439, i32 0, i32 0
  %arrayidx2441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2440, i32 0, i64 0
  %osucc2442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2441, i32 0, i32 1
  store %union.rec* %1060, %union.rec** %osucc2442, align 8
  %1064 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12443 = bitcast %union.rec* %1064 to %struct.word_type*
  %olist2444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12443, i32 0, i32 0
  %arrayidx2445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2444, i32 0, i64 0
  %opred2446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2445, i32 0, i32 0
  store %union.rec* %1060, %union.rec** %opred2446, align 8
  store %union.rec* %1060, %union.rec** @xx_link, align 8
  %1065 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1065, %union.rec** @zz_res, align 8
  %1066 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1066, %union.rec** @zz_hold, align 8
  %1067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2447 = icmp eq %union.rec* %1067, null
  br i1 %cmp2447, label %cond.true.2449, label %cond.false.2450

cond.true.2449:                                   ; preds = %if.end.2426
  %1068 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2485

cond.false.2450:                                  ; preds = %if.end.2426
  %1069 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2451 = icmp eq %union.rec* %1069, null
  br i1 %cmp2451, label %cond.true.2453, label %cond.false.2454

cond.true.2453:                                   ; preds = %cond.false.2450
  %1070 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2483

cond.false.2454:                                  ; preds = %cond.false.2450
  %1071 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12455 = bitcast %union.rec* %1071 to %struct.word_type*
  %olist2456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12455, i32 0, i32 0
  %arrayidx2457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2456, i32 0, i64 0
  %opred2458 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2457, i32 0, i32 0
  %1072 = load %union.rec*, %union.rec** %opred2458, align 8
  store %union.rec* %1072, %union.rec** @zz_tmp, align 8
  %1073 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12459 = bitcast %union.rec* %1073 to %struct.word_type*
  %olist2460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12459, i32 0, i32 0
  %arrayidx2461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2460, i32 0, i64 0
  %opred2462 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2461, i32 0, i32 0
  %1074 = load %union.rec*, %union.rec** %opred2462, align 8
  %1075 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12463 = bitcast %union.rec* %1075 to %struct.word_type*
  %olist2464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12463, i32 0, i32 0
  %arrayidx2465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2464, i32 0, i64 0
  %opred2466 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2465, i32 0, i32 0
  store %union.rec* %1074, %union.rec** %opred2466, align 8
  %1076 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1077 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12467 = bitcast %union.rec* %1077 to %struct.word_type*
  %olist2468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12467, i32 0, i32 0
  %arrayidx2469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2468, i32 0, i64 0
  %opred2470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2469, i32 0, i32 0
  %1078 = load %union.rec*, %union.rec** %opred2470, align 8
  %os12471 = bitcast %union.rec* %1078 to %struct.word_type*
  %olist2472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12471, i32 0, i32 0
  %arrayidx2473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2472, i32 0, i64 0
  %osucc2474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2473, i32 0, i32 1
  store %union.rec* %1076, %union.rec** %osucc2474, align 8
  %1079 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1080 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12475 = bitcast %union.rec* %1080 to %struct.word_type*
  %olist2476 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12475, i32 0, i32 0
  %arrayidx2477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2476, i32 0, i64 0
  %opred2478 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2477, i32 0, i32 0
  store %union.rec* %1079, %union.rec** %opred2478, align 8
  %1081 = load %union.rec*, %union.rec** @zz_res, align 8
  %1082 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12479 = bitcast %union.rec* %1082 to %struct.word_type*
  %olist2480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12479, i32 0, i32 0
  %arrayidx2481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2480, i32 0, i64 0
  %osucc2482 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2481, i32 0, i32 1
  store %union.rec* %1081, %union.rec** %osucc2482, align 8
  br label %cond.end.2483

cond.end.2483:                                    ; preds = %cond.false.2454, %cond.true.2453
  %cond2484 = phi %union.rec* [ %1070, %cond.true.2453 ], [ %1081, %cond.false.2454 ]
  br label %cond.end.2485

cond.end.2485:                                    ; preds = %cond.end.2483, %cond.true.2449
  %cond2486 = phi %union.rec* [ %1068, %cond.true.2449 ], [ %cond2484, %cond.end.2483 ]
  %1083 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1083, %union.rec** @zz_res, align 8
  %1084 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1084, %union.rec** @zz_hold, align 8
  %1085 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2487 = icmp eq %union.rec* %1085, null
  br i1 %cmp2487, label %cond.true.2489, label %cond.false.2490

cond.true.2489:                                   ; preds = %cond.end.2485
  %1086 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2525

cond.false.2490:                                  ; preds = %cond.end.2485
  %1087 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2491 = icmp eq %union.rec* %1087, null
  br i1 %cmp2491, label %cond.true.2493, label %cond.false.2494

cond.true.2493:                                   ; preds = %cond.false.2490
  %1088 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2523

cond.false.2494:                                  ; preds = %cond.false.2490
  %1089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12495 = bitcast %union.rec* %1089 to %struct.word_type*
  %olist2496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12495, i32 0, i32 0
  %arrayidx2497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2496, i32 0, i64 1
  %opred2498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2497, i32 0, i32 0
  %1090 = load %union.rec*, %union.rec** %opred2498, align 8
  store %union.rec* %1090, %union.rec** @zz_tmp, align 8
  %1091 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12499 = bitcast %union.rec* %1091 to %struct.word_type*
  %olist2500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12499, i32 0, i32 0
  %arrayidx2501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2500, i32 0, i64 1
  %opred2502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2501, i32 0, i32 0
  %1092 = load %union.rec*, %union.rec** %opred2502, align 8
  %1093 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12503 = bitcast %union.rec* %1093 to %struct.word_type*
  %olist2504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12503, i32 0, i32 0
  %arrayidx2505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2504, i32 0, i64 1
  %opred2506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2505, i32 0, i32 0
  store %union.rec* %1092, %union.rec** %opred2506, align 8
  %1094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1095 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12507 = bitcast %union.rec* %1095 to %struct.word_type*
  %olist2508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12507, i32 0, i32 0
  %arrayidx2509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2508, i32 0, i64 1
  %opred2510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2509, i32 0, i32 0
  %1096 = load %union.rec*, %union.rec** %opred2510, align 8
  %os12511 = bitcast %union.rec* %1096 to %struct.word_type*
  %olist2512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12511, i32 0, i32 0
  %arrayidx2513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2512, i32 0, i64 1
  %osucc2514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2513, i32 0, i32 1
  store %union.rec* %1094, %union.rec** %osucc2514, align 8
  %1097 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1098 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12515 = bitcast %union.rec* %1098 to %struct.word_type*
  %olist2516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12515, i32 0, i32 0
  %arrayidx2517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2516, i32 0, i64 1
  %opred2518 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2517, i32 0, i32 0
  store %union.rec* %1097, %union.rec** %opred2518, align 8
  %1099 = load %union.rec*, %union.rec** @zz_res, align 8
  %1100 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12519 = bitcast %union.rec* %1100 to %struct.word_type*
  %olist2520 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12519, i32 0, i32 0
  %arrayidx2521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2520, i32 0, i64 1
  %osucc2522 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2521, i32 0, i32 1
  store %union.rec* %1099, %union.rec** %osucc2522, align 8
  br label %cond.end.2523

cond.end.2523:                                    ; preds = %cond.false.2494, %cond.true.2493
  %cond2524 = phi %union.rec* [ %1088, %cond.true.2493 ], [ %1099, %cond.false.2494 ]
  br label %cond.end.2525

cond.end.2525:                                    ; preds = %cond.end.2523, %cond.true.2489
  %cond2526 = phi %union.rec* [ %1086, %cond.true.2489 ], [ %cond2524, %cond.end.2523 ]
  %arraydecay2527 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1101 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %1101, i32 0, i32 6
  %1102 = load i32, i32* %tm_wday, align 4
  %add2528 = add nsw i32 %1102, 1
  %call2529 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2527, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %add2528) #3
  %1103 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv2530 = zext i8 %1103 to i32
  store i32 %conv2530, i32* @zz_size, align 4
  %conv2531 = sext i32 %conv2530 to i64
  %cmp2532 = icmp uge i64 %conv2531, 265
  br i1 %cmp2532, label %if.then.2534, label %if.else.2536

if.then.2534:                                     ; preds = %cond.end.2525
  %1104 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2535 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1104)
  br label %if.end.2553

if.else.2536:                                     ; preds = %cond.end.2525
  %1105 = load i32, i32* @zz_size, align 4
  %idxprom2537 = sext i32 %1105 to i64
  %arrayidx2538 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2537
  %1106 = load %union.rec*, %union.rec** %arrayidx2538, align 8
  %cmp2539 = icmp eq %union.rec* %1106, null
  br i1 %cmp2539, label %if.then.2541, label %if.else.2543

if.then.2541:                                     ; preds = %if.else.2536
  %1107 = load i32, i32* @zz_size, align 4
  %1108 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2542 = call %union.rec* @GetMemory(i32 %1107, %struct.FILE_POS* %1108)
  store %union.rec* %call2542, %union.rec** @zz_hold, align 8
  br label %if.end.2552

if.else.2543:                                     ; preds = %if.else.2536
  %1109 = load i32, i32* @zz_size, align 4
  %idxprom2544 = sext i32 %1109 to i64
  %arrayidx2545 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2544
  %1110 = load %union.rec*, %union.rec** %arrayidx2545, align 8
  store %union.rec* %1110, %union.rec** @zz_hold, align 8
  store %union.rec* %1110, %union.rec** @zz_hold, align 8
  %1111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12546 = bitcast %union.rec* %1111 to %struct.word_type*
  %olist2547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12546, i32 0, i32 0
  %arrayidx2548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2547, i32 0, i64 0
  %opred2549 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2548, i32 0, i32 0
  %1112 = load %union.rec*, %union.rec** %opred2549, align 8
  %1113 = load i32, i32* @zz_size, align 4
  %idxprom2550 = sext i32 %1113 to i64
  %arrayidx2551 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2550
  store %union.rec* %1112, %union.rec** %arrayidx2551, align 8
  br label %if.end.2552

if.end.2552:                                      ; preds = %if.else.2543, %if.then.2541
  br label %if.end.2553

if.end.2553:                                      ; preds = %if.end.2552, %if.then.2534
  %1114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12554 = bitcast %union.rec* %1114 to %struct.word_type*
  %ou12555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12554, i32 0, i32 1
  %os112556 = bitcast %union.FIRST_UNION* %ou12555 to %struct.anon*
  %otype2557 = getelementptr inbounds %struct.anon, %struct.anon* %os112556, i32 0, i32 0
  store i8 10, i8* %otype2557, align 1
  %1115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12558 = bitcast %union.rec* %1116 to %struct.word_type*
  %olist2559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12558, i32 0, i32 0
  %arrayidx2560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2559, i32 0, i64 1
  %osucc2561 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2560, i32 0, i32 1
  store %union.rec* %1115, %union.rec** %osucc2561, align 8
  %1117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12562 = bitcast %union.rec* %1117 to %struct.word_type*
  %olist2563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12562, i32 0, i32 0
  %arrayidx2564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2563, i32 0, i64 1
  %opred2565 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2564, i32 0, i32 0
  store %union.rec* %1115, %union.rec** %opred2565, align 8
  %1118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12566 = bitcast %union.rec* %1118 to %struct.word_type*
  %olist2567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12566, i32 0, i32 0
  %arrayidx2568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2567, i32 0, i64 0
  %osucc2569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2568, i32 0, i32 1
  store %union.rec* %1115, %union.rec** %osucc2569, align 8
  %1119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12570 = bitcast %union.rec* %1119 to %struct.word_type*
  %olist2571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12570, i32 0, i32 0
  %arrayidx2572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2571, i32 0, i64 0
  %opred2573 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2572, i32 0, i32 0
  store %union.rec* %1115, %union.rec** %opred2573, align 8
  store %union.rec* %1115, %union.rec** %par, align 8
  %1120 = load %union.rec*, %union.rec** %weekday, align 8
  %1121 = load %union.rec*, %union.rec** %par, align 8
  %os22574 = bitcast %union.rec* %1121 to %struct.closure_type*
  %oactual2575 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22574, i32 0, i32 5
  store %union.rec* %1120, %union.rec** %oactual2575, align 8
  %1122 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2576 = zext i8 %1122 to i32
  store i32 %conv2576, i32* @zz_size, align 4
  %conv2577 = sext i32 %conv2576 to i64
  %cmp2578 = icmp uge i64 %conv2577, 265
  br i1 %cmp2578, label %if.then.2580, label %if.else.2582

if.then.2580:                                     ; preds = %if.end.2553
  %1123 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2581 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1123)
  br label %if.end.2599

if.else.2582:                                     ; preds = %if.end.2553
  %1124 = load i32, i32* @zz_size, align 4
  %idxprom2583 = sext i32 %1124 to i64
  %arrayidx2584 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2583
  %1125 = load %union.rec*, %union.rec** %arrayidx2584, align 8
  %cmp2585 = icmp eq %union.rec* %1125, null
  br i1 %cmp2585, label %if.then.2587, label %if.else.2589

if.then.2587:                                     ; preds = %if.else.2582
  %1126 = load i32, i32* @zz_size, align 4
  %1127 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2588 = call %union.rec* @GetMemory(i32 %1126, %struct.FILE_POS* %1127)
  store %union.rec* %call2588, %union.rec** @zz_hold, align 8
  br label %if.end.2598

if.else.2589:                                     ; preds = %if.else.2582
  %1128 = load i32, i32* @zz_size, align 4
  %idxprom2590 = sext i32 %1128 to i64
  %arrayidx2591 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2590
  %1129 = load %union.rec*, %union.rec** %arrayidx2591, align 8
  store %union.rec* %1129, %union.rec** @zz_hold, align 8
  store %union.rec* %1129, %union.rec** @zz_hold, align 8
  %1130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12592 = bitcast %union.rec* %1130 to %struct.word_type*
  %olist2593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12592, i32 0, i32 0
  %arrayidx2594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2593, i32 0, i64 0
  %opred2595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2594, i32 0, i32 0
  %1131 = load %union.rec*, %union.rec** %opred2595, align 8
  %1132 = load i32, i32* @zz_size, align 4
  %idxprom2596 = sext i32 %1132 to i64
  %arrayidx2597 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2596
  store %union.rec* %1131, %union.rec** %arrayidx2597, align 8
  br label %if.end.2598

if.end.2598:                                      ; preds = %if.else.2589, %if.then.2587
  br label %if.end.2599

if.end.2599:                                      ; preds = %if.end.2598, %if.then.2580
  %1133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12600 = bitcast %union.rec* %1133 to %struct.word_type*
  %ou12601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12600, i32 0, i32 1
  %os112602 = bitcast %union.FIRST_UNION* %ou12601 to %struct.anon*
  %otype2603 = getelementptr inbounds %struct.anon, %struct.anon* %os112602, i32 0, i32 0
  store i8 0, i8* %otype2603, align 1
  %1134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12604 = bitcast %union.rec* %1135 to %struct.word_type*
  %olist2605 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12604, i32 0, i32 0
  %arrayidx2606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2605, i32 0, i64 1
  %osucc2607 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2606, i32 0, i32 1
  store %union.rec* %1134, %union.rec** %osucc2607, align 8
  %1136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12608 = bitcast %union.rec* %1136 to %struct.word_type*
  %olist2609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12608, i32 0, i32 0
  %arrayidx2610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2609, i32 0, i64 1
  %opred2611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2610, i32 0, i32 0
  store %union.rec* %1134, %union.rec** %opred2611, align 8
  %1137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12612 = bitcast %union.rec* %1137 to %struct.word_type*
  %olist2613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12612, i32 0, i32 0
  %arrayidx2614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2613, i32 0, i64 0
  %osucc2615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2614, i32 0, i32 1
  store %union.rec* %1134, %union.rec** %osucc2615, align 8
  %1138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12616 = bitcast %union.rec* %1138 to %struct.word_type*
  %olist2617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12616, i32 0, i32 0
  %arrayidx2618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2617, i32 0, i64 0
  %opred2619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2618, i32 0, i32 0
  store %union.rec* %1134, %union.rec** %opred2619, align 8
  store %union.rec* %1134, %union.rec** @xx_link, align 8
  %1139 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1139, %union.rec** @zz_res, align 8
  %1140 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %1140, %union.rec** @zz_hold, align 8
  %1141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2620 = icmp eq %union.rec* %1141, null
  br i1 %cmp2620, label %cond.true.2622, label %cond.false.2623

cond.true.2622:                                   ; preds = %if.end.2599
  %1142 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2658

cond.false.2623:                                  ; preds = %if.end.2599
  %1143 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2624 = icmp eq %union.rec* %1143, null
  br i1 %cmp2624, label %cond.true.2626, label %cond.false.2627

cond.true.2626:                                   ; preds = %cond.false.2623
  %1144 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2656

cond.false.2627:                                  ; preds = %cond.false.2623
  %1145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12628 = bitcast %union.rec* %1145 to %struct.word_type*
  %olist2629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12628, i32 0, i32 0
  %arrayidx2630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2629, i32 0, i64 0
  %opred2631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2630, i32 0, i32 0
  %1146 = load %union.rec*, %union.rec** %opred2631, align 8
  store %union.rec* %1146, %union.rec** @zz_tmp, align 8
  %1147 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12632 = bitcast %union.rec* %1147 to %struct.word_type*
  %olist2633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12632, i32 0, i32 0
  %arrayidx2634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2633, i32 0, i64 0
  %opred2635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2634, i32 0, i32 0
  %1148 = load %union.rec*, %union.rec** %opred2635, align 8
  %1149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12636 = bitcast %union.rec* %1149 to %struct.word_type*
  %olist2637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12636, i32 0, i32 0
  %arrayidx2638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2637, i32 0, i64 0
  %opred2639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2638, i32 0, i32 0
  store %union.rec* %1148, %union.rec** %opred2639, align 8
  %1150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1151 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12640 = bitcast %union.rec* %1151 to %struct.word_type*
  %olist2641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12640, i32 0, i32 0
  %arrayidx2642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2641, i32 0, i64 0
  %opred2643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2642, i32 0, i32 0
  %1152 = load %union.rec*, %union.rec** %opred2643, align 8
  %os12644 = bitcast %union.rec* %1152 to %struct.word_type*
  %olist2645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12644, i32 0, i32 0
  %arrayidx2646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2645, i32 0, i64 0
  %osucc2647 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2646, i32 0, i32 1
  store %union.rec* %1150, %union.rec** %osucc2647, align 8
  %1153 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1154 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12648 = bitcast %union.rec* %1154 to %struct.word_type*
  %olist2649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12648, i32 0, i32 0
  %arrayidx2650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2649, i32 0, i64 0
  %opred2651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2650, i32 0, i32 0
  store %union.rec* %1153, %union.rec** %opred2651, align 8
  %1155 = load %union.rec*, %union.rec** @zz_res, align 8
  %1156 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12652 = bitcast %union.rec* %1156 to %struct.word_type*
  %olist2653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12652, i32 0, i32 0
  %arrayidx2654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2653, i32 0, i64 0
  %osucc2655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2654, i32 0, i32 1
  store %union.rec* %1155, %union.rec** %osucc2655, align 8
  br label %cond.end.2656

cond.end.2656:                                    ; preds = %cond.false.2627, %cond.true.2626
  %cond2657 = phi %union.rec* [ %1144, %cond.true.2626 ], [ %1155, %cond.false.2627 ]
  br label %cond.end.2658

cond.end.2658:                                    ; preds = %cond.end.2656, %cond.true.2622
  %cond2659 = phi %union.rec* [ %1142, %cond.true.2622 ], [ %cond2657, %cond.end.2656 ]
  %1157 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1157, %union.rec** @zz_res, align 8
  %1158 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1158, %union.rec** @zz_hold, align 8
  %1159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2660 = icmp eq %union.rec* %1159, null
  br i1 %cmp2660, label %cond.true.2662, label %cond.false.2663

cond.true.2662:                                   ; preds = %cond.end.2658
  %1160 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2698

cond.false.2663:                                  ; preds = %cond.end.2658
  %1161 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2664 = icmp eq %union.rec* %1161, null
  br i1 %cmp2664, label %cond.true.2666, label %cond.false.2667

cond.true.2666:                                   ; preds = %cond.false.2663
  %1162 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2696

cond.false.2667:                                  ; preds = %cond.false.2663
  %1163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12668 = bitcast %union.rec* %1163 to %struct.word_type*
  %olist2669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12668, i32 0, i32 0
  %arrayidx2670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2669, i32 0, i64 1
  %opred2671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2670, i32 0, i32 0
  %1164 = load %union.rec*, %union.rec** %opred2671, align 8
  store %union.rec* %1164, %union.rec** @zz_tmp, align 8
  %1165 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12672 = bitcast %union.rec* %1165 to %struct.word_type*
  %olist2673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12672, i32 0, i32 0
  %arrayidx2674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2673, i32 0, i64 1
  %opred2675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2674, i32 0, i32 0
  %1166 = load %union.rec*, %union.rec** %opred2675, align 8
  %1167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12676 = bitcast %union.rec* %1167 to %struct.word_type*
  %olist2677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12676, i32 0, i32 0
  %arrayidx2678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2677, i32 0, i64 1
  %opred2679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2678, i32 0, i32 0
  store %union.rec* %1166, %union.rec** %opred2679, align 8
  %1168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1169 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12680 = bitcast %union.rec* %1169 to %struct.word_type*
  %olist2681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12680, i32 0, i32 0
  %arrayidx2682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2681, i32 0, i64 1
  %opred2683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2682, i32 0, i32 0
  %1170 = load %union.rec*, %union.rec** %opred2683, align 8
  %os12684 = bitcast %union.rec* %1170 to %struct.word_type*
  %olist2685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12684, i32 0, i32 0
  %arrayidx2686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2685, i32 0, i64 1
  %osucc2687 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2686, i32 0, i32 1
  store %union.rec* %1168, %union.rec** %osucc2687, align 8
  %1171 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1172 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12688 = bitcast %union.rec* %1172 to %struct.word_type*
  %olist2689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12688, i32 0, i32 0
  %arrayidx2690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2689, i32 0, i64 1
  %opred2691 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2690, i32 0, i32 0
  store %union.rec* %1171, %union.rec** %opred2691, align 8
  %1173 = load %union.rec*, %union.rec** @zz_res, align 8
  %1174 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12692 = bitcast %union.rec* %1174 to %struct.word_type*
  %olist2693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12692, i32 0, i32 0
  %arrayidx2694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2693, i32 0, i64 1
  %osucc2695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2694, i32 0, i32 1
  store %union.rec* %1173, %union.rec** %osucc2695, align 8
  br label %cond.end.2696

cond.end.2696:                                    ; preds = %cond.false.2667, %cond.true.2666
  %cond2697 = phi %union.rec* [ %1162, %cond.true.2666 ], [ %1173, %cond.false.2667 ]
  br label %cond.end.2698

cond.end.2698:                                    ; preds = %cond.end.2696, %cond.true.2662
  %cond2699 = phi %union.rec* [ %1160, %cond.true.2662 ], [ %cond2697, %cond.end.2696 ]
  %arraydecay2700 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1175 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2701 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay2700, %struct.FILE_POS* %1175)
  store %union.rec* %call2701, %union.rec** %tmp, align 8
  %1176 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2702 = zext i8 %1176 to i32
  store i32 %conv2702, i32* @zz_size, align 4
  %conv2703 = sext i32 %conv2702 to i64
  %cmp2704 = icmp uge i64 %conv2703, 265
  br i1 %cmp2704, label %if.then.2706, label %if.else.2708

if.then.2706:                                     ; preds = %cond.end.2698
  %1177 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2707 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1177)
  br label %if.end.2725

if.else.2708:                                     ; preds = %cond.end.2698
  %1178 = load i32, i32* @zz_size, align 4
  %idxprom2709 = sext i32 %1178 to i64
  %arrayidx2710 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2709
  %1179 = load %union.rec*, %union.rec** %arrayidx2710, align 8
  %cmp2711 = icmp eq %union.rec* %1179, null
  br i1 %cmp2711, label %if.then.2713, label %if.else.2715

if.then.2713:                                     ; preds = %if.else.2708
  %1180 = load i32, i32* @zz_size, align 4
  %1181 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2714 = call %union.rec* @GetMemory(i32 %1180, %struct.FILE_POS* %1181)
  store %union.rec* %call2714, %union.rec** @zz_hold, align 8
  br label %if.end.2724

if.else.2715:                                     ; preds = %if.else.2708
  %1182 = load i32, i32* @zz_size, align 4
  %idxprom2716 = sext i32 %1182 to i64
  %arrayidx2717 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2716
  %1183 = load %union.rec*, %union.rec** %arrayidx2717, align 8
  store %union.rec* %1183, %union.rec** @zz_hold, align 8
  store %union.rec* %1183, %union.rec** @zz_hold, align 8
  %1184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12718 = bitcast %union.rec* %1184 to %struct.word_type*
  %olist2719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12718, i32 0, i32 0
  %arrayidx2720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2719, i32 0, i64 0
  %opred2721 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2720, i32 0, i32 0
  %1185 = load %union.rec*, %union.rec** %opred2721, align 8
  %1186 = load i32, i32* @zz_size, align 4
  %idxprom2722 = sext i32 %1186 to i64
  %arrayidx2723 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2722
  store %union.rec* %1185, %union.rec** %arrayidx2723, align 8
  br label %if.end.2724

if.end.2724:                                      ; preds = %if.else.2715, %if.then.2713
  br label %if.end.2725

if.end.2725:                                      ; preds = %if.end.2724, %if.then.2706
  %1187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12726 = bitcast %union.rec* %1187 to %struct.word_type*
  %ou12727 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12726, i32 0, i32 1
  %os112728 = bitcast %union.FIRST_UNION* %ou12727 to %struct.anon*
  %otype2729 = getelementptr inbounds %struct.anon, %struct.anon* %os112728, i32 0, i32 0
  store i8 0, i8* %otype2729, align 1
  %1188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12730 = bitcast %union.rec* %1189 to %struct.word_type*
  %olist2731 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12730, i32 0, i32 0
  %arrayidx2732 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2731, i32 0, i64 1
  %osucc2733 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2732, i32 0, i32 1
  store %union.rec* %1188, %union.rec** %osucc2733, align 8
  %1190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12734 = bitcast %union.rec* %1190 to %struct.word_type*
  %olist2735 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12734, i32 0, i32 0
  %arrayidx2736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2735, i32 0, i64 1
  %opred2737 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2736, i32 0, i32 0
  store %union.rec* %1188, %union.rec** %opred2737, align 8
  %1191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12738 = bitcast %union.rec* %1191 to %struct.word_type*
  %olist2739 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12738, i32 0, i32 0
  %arrayidx2740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2739, i32 0, i64 0
  %osucc2741 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2740, i32 0, i32 1
  store %union.rec* %1188, %union.rec** %osucc2741, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12742 = bitcast %union.rec* %1192 to %struct.word_type*
  %olist2743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12742, i32 0, i32 0
  %arrayidx2744 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2743, i32 0, i64 0
  %opred2745 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2744, i32 0, i32 0
  store %union.rec* %1188, %union.rec** %opred2745, align 8
  store %union.rec* %1188, %union.rec** @xx_link, align 8
  %1193 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1193, %union.rec** @zz_res, align 8
  %1194 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1194, %union.rec** @zz_hold, align 8
  %1195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2746 = icmp eq %union.rec* %1195, null
  br i1 %cmp2746, label %cond.true.2748, label %cond.false.2749

cond.true.2748:                                   ; preds = %if.end.2725
  %1196 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2784

cond.false.2749:                                  ; preds = %if.end.2725
  %1197 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2750 = icmp eq %union.rec* %1197, null
  br i1 %cmp2750, label %cond.true.2752, label %cond.false.2753

cond.true.2752:                                   ; preds = %cond.false.2749
  %1198 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2782

cond.false.2753:                                  ; preds = %cond.false.2749
  %1199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12754 = bitcast %union.rec* %1199 to %struct.word_type*
  %olist2755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12754, i32 0, i32 0
  %arrayidx2756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2755, i32 0, i64 0
  %opred2757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2756, i32 0, i32 0
  %1200 = load %union.rec*, %union.rec** %opred2757, align 8
  store %union.rec* %1200, %union.rec** @zz_tmp, align 8
  %1201 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12758 = bitcast %union.rec* %1201 to %struct.word_type*
  %olist2759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12758, i32 0, i32 0
  %arrayidx2760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2759, i32 0, i64 0
  %opred2761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2760, i32 0, i32 0
  %1202 = load %union.rec*, %union.rec** %opred2761, align 8
  %1203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12762 = bitcast %union.rec* %1203 to %struct.word_type*
  %olist2763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12762, i32 0, i32 0
  %arrayidx2764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2763, i32 0, i64 0
  %opred2765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2764, i32 0, i32 0
  store %union.rec* %1202, %union.rec** %opred2765, align 8
  %1204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1205 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12766 = bitcast %union.rec* %1205 to %struct.word_type*
  %olist2767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12766, i32 0, i32 0
  %arrayidx2768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2767, i32 0, i64 0
  %opred2769 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2768, i32 0, i32 0
  %1206 = load %union.rec*, %union.rec** %opred2769, align 8
  %os12770 = bitcast %union.rec* %1206 to %struct.word_type*
  %olist2771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12770, i32 0, i32 0
  %arrayidx2772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2771, i32 0, i64 0
  %osucc2773 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2772, i32 0, i32 1
  store %union.rec* %1204, %union.rec** %osucc2773, align 8
  %1207 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12774 = bitcast %union.rec* %1208 to %struct.word_type*
  %olist2775 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12774, i32 0, i32 0
  %arrayidx2776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2775, i32 0, i64 0
  %opred2777 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2776, i32 0, i32 0
  store %union.rec* %1207, %union.rec** %opred2777, align 8
  %1209 = load %union.rec*, %union.rec** @zz_res, align 8
  %1210 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12778 = bitcast %union.rec* %1210 to %struct.word_type*
  %olist2779 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12778, i32 0, i32 0
  %arrayidx2780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2779, i32 0, i64 0
  %osucc2781 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2780, i32 0, i32 1
  store %union.rec* %1209, %union.rec** %osucc2781, align 8
  br label %cond.end.2782

cond.end.2782:                                    ; preds = %cond.false.2753, %cond.true.2752
  %cond2783 = phi %union.rec* [ %1198, %cond.true.2752 ], [ %1209, %cond.false.2753 ]
  br label %cond.end.2784

cond.end.2784:                                    ; preds = %cond.end.2782, %cond.true.2748
  %cond2785 = phi %union.rec* [ %1196, %cond.true.2748 ], [ %cond2783, %cond.end.2782 ]
  %1211 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1211, %union.rec** @zz_res, align 8
  %1212 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1212, %union.rec** @zz_hold, align 8
  %1213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2786 = icmp eq %union.rec* %1213, null
  br i1 %cmp2786, label %cond.true.2788, label %cond.false.2789

cond.true.2788:                                   ; preds = %cond.end.2784
  %1214 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2824

cond.false.2789:                                  ; preds = %cond.end.2784
  %1215 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2790 = icmp eq %union.rec* %1215, null
  br i1 %cmp2790, label %cond.true.2792, label %cond.false.2793

cond.true.2792:                                   ; preds = %cond.false.2789
  %1216 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2822

cond.false.2793:                                  ; preds = %cond.false.2789
  %1217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12794 = bitcast %union.rec* %1217 to %struct.word_type*
  %olist2795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12794, i32 0, i32 0
  %arrayidx2796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2795, i32 0, i64 1
  %opred2797 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2796, i32 0, i32 0
  %1218 = load %union.rec*, %union.rec** %opred2797, align 8
  store %union.rec* %1218, %union.rec** @zz_tmp, align 8
  %1219 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12798 = bitcast %union.rec* %1219 to %struct.word_type*
  %olist2799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12798, i32 0, i32 0
  %arrayidx2800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2799, i32 0, i64 1
  %opred2801 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2800, i32 0, i32 0
  %1220 = load %union.rec*, %union.rec** %opred2801, align 8
  %1221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12802 = bitcast %union.rec* %1221 to %struct.word_type*
  %olist2803 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12802, i32 0, i32 0
  %arrayidx2804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2803, i32 0, i64 1
  %opred2805 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2804, i32 0, i32 0
  store %union.rec* %1220, %union.rec** %opred2805, align 8
  %1222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1223 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12806 = bitcast %union.rec* %1223 to %struct.word_type*
  %olist2807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12806, i32 0, i32 0
  %arrayidx2808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2807, i32 0, i64 1
  %opred2809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2808, i32 0, i32 0
  %1224 = load %union.rec*, %union.rec** %opred2809, align 8
  %os12810 = bitcast %union.rec* %1224 to %struct.word_type*
  %olist2811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12810, i32 0, i32 0
  %arrayidx2812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2811, i32 0, i64 1
  %osucc2813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2812, i32 0, i32 1
  store %union.rec* %1222, %union.rec** %osucc2813, align 8
  %1225 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1226 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12814 = bitcast %union.rec* %1226 to %struct.word_type*
  %olist2815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12814, i32 0, i32 0
  %arrayidx2816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2815, i32 0, i64 1
  %opred2817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2816, i32 0, i32 0
  store %union.rec* %1225, %union.rec** %opred2817, align 8
  %1227 = load %union.rec*, %union.rec** @zz_res, align 8
  %1228 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12818 = bitcast %union.rec* %1228 to %struct.word_type*
  %olist2819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12818, i32 0, i32 0
  %arrayidx2820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2819, i32 0, i64 1
  %osucc2821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2820, i32 0, i32 1
  store %union.rec* %1227, %union.rec** %osucc2821, align 8
  br label %cond.end.2822

cond.end.2822:                                    ; preds = %cond.false.2793, %cond.true.2792
  %cond2823 = phi %union.rec* [ %1216, %cond.true.2792 ], [ %1227, %cond.false.2793 ]
  br label %cond.end.2824

cond.end.2824:                                    ; preds = %cond.end.2822, %cond.true.2788
  %cond2825 = phi %union.rec* [ %1214, %cond.true.2788 ], [ %cond2823, %cond.end.2822 ]
  %arraydecay2826 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1229 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %1229, i32 0, i32 7
  %1230 = load i32, i32* %tm_yday, align 4
  %call2827 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2826, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %1230) #3
  %1231 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv2828 = zext i8 %1231 to i32
  store i32 %conv2828, i32* @zz_size, align 4
  %conv2829 = sext i32 %conv2828 to i64
  %cmp2830 = icmp uge i64 %conv2829, 265
  br i1 %cmp2830, label %if.then.2832, label %if.else.2834

if.then.2832:                                     ; preds = %cond.end.2824
  %1232 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2833 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1232)
  br label %if.end.2851

if.else.2834:                                     ; preds = %cond.end.2824
  %1233 = load i32, i32* @zz_size, align 4
  %idxprom2835 = sext i32 %1233 to i64
  %arrayidx2836 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2835
  %1234 = load %union.rec*, %union.rec** %arrayidx2836, align 8
  %cmp2837 = icmp eq %union.rec* %1234, null
  br i1 %cmp2837, label %if.then.2839, label %if.else.2841

if.then.2839:                                     ; preds = %if.else.2834
  %1235 = load i32, i32* @zz_size, align 4
  %1236 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2840 = call %union.rec* @GetMemory(i32 %1235, %struct.FILE_POS* %1236)
  store %union.rec* %call2840, %union.rec** @zz_hold, align 8
  br label %if.end.2850

if.else.2841:                                     ; preds = %if.else.2834
  %1237 = load i32, i32* @zz_size, align 4
  %idxprom2842 = sext i32 %1237 to i64
  %arrayidx2843 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2842
  %1238 = load %union.rec*, %union.rec** %arrayidx2843, align 8
  store %union.rec* %1238, %union.rec** @zz_hold, align 8
  store %union.rec* %1238, %union.rec** @zz_hold, align 8
  %1239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12844 = bitcast %union.rec* %1239 to %struct.word_type*
  %olist2845 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12844, i32 0, i32 0
  %arrayidx2846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2845, i32 0, i64 0
  %opred2847 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2846, i32 0, i32 0
  %1240 = load %union.rec*, %union.rec** %opred2847, align 8
  %1241 = load i32, i32* @zz_size, align 4
  %idxprom2848 = sext i32 %1241 to i64
  %arrayidx2849 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2848
  store %union.rec* %1240, %union.rec** %arrayidx2849, align 8
  br label %if.end.2850

if.end.2850:                                      ; preds = %if.else.2841, %if.then.2839
  br label %if.end.2851

if.end.2851:                                      ; preds = %if.end.2850, %if.then.2832
  %1242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12852 = bitcast %union.rec* %1242 to %struct.word_type*
  %ou12853 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12852, i32 0, i32 1
  %os112854 = bitcast %union.FIRST_UNION* %ou12853 to %struct.anon*
  %otype2855 = getelementptr inbounds %struct.anon, %struct.anon* %os112854, i32 0, i32 0
  store i8 10, i8* %otype2855, align 1
  %1243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12856 = bitcast %union.rec* %1244 to %struct.word_type*
  %olist2857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12856, i32 0, i32 0
  %arrayidx2858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2857, i32 0, i64 1
  %osucc2859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2858, i32 0, i32 1
  store %union.rec* %1243, %union.rec** %osucc2859, align 8
  %1245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12860 = bitcast %union.rec* %1245 to %struct.word_type*
  %olist2861 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12860, i32 0, i32 0
  %arrayidx2862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2861, i32 0, i64 1
  %opred2863 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2862, i32 0, i32 0
  store %union.rec* %1243, %union.rec** %opred2863, align 8
  %1246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12864 = bitcast %union.rec* %1246 to %struct.word_type*
  %olist2865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12864, i32 0, i32 0
  %arrayidx2866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2865, i32 0, i64 0
  %osucc2867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2866, i32 0, i32 1
  store %union.rec* %1243, %union.rec** %osucc2867, align 8
  %1247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12868 = bitcast %union.rec* %1247 to %struct.word_type*
  %olist2869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12868, i32 0, i32 0
  %arrayidx2870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2869, i32 0, i64 0
  %opred2871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2870, i32 0, i32 0
  store %union.rec* %1243, %union.rec** %opred2871, align 8
  store %union.rec* %1243, %union.rec** %par, align 8
  %1248 = load %union.rec*, %union.rec** %yearday, align 8
  %1249 = load %union.rec*, %union.rec** %par, align 8
  %os22872 = bitcast %union.rec* %1249 to %struct.closure_type*
  %oactual2873 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22872, i32 0, i32 5
  store %union.rec* %1248, %union.rec** %oactual2873, align 8
  %1250 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2874 = zext i8 %1250 to i32
  store i32 %conv2874, i32* @zz_size, align 4
  %conv2875 = sext i32 %conv2874 to i64
  %cmp2876 = icmp uge i64 %conv2875, 265
  br i1 %cmp2876, label %if.then.2878, label %if.else.2880

if.then.2878:                                     ; preds = %if.end.2851
  %1251 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2879 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1251)
  br label %if.end.2897

if.else.2880:                                     ; preds = %if.end.2851
  %1252 = load i32, i32* @zz_size, align 4
  %idxprom2881 = sext i32 %1252 to i64
  %arrayidx2882 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2881
  %1253 = load %union.rec*, %union.rec** %arrayidx2882, align 8
  %cmp2883 = icmp eq %union.rec* %1253, null
  br i1 %cmp2883, label %if.then.2885, label %if.else.2887

if.then.2885:                                     ; preds = %if.else.2880
  %1254 = load i32, i32* @zz_size, align 4
  %1255 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2886 = call %union.rec* @GetMemory(i32 %1254, %struct.FILE_POS* %1255)
  store %union.rec* %call2886, %union.rec** @zz_hold, align 8
  br label %if.end.2896

if.else.2887:                                     ; preds = %if.else.2880
  %1256 = load i32, i32* @zz_size, align 4
  %idxprom2888 = sext i32 %1256 to i64
  %arrayidx2889 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2888
  %1257 = load %union.rec*, %union.rec** %arrayidx2889, align 8
  store %union.rec* %1257, %union.rec** @zz_hold, align 8
  store %union.rec* %1257, %union.rec** @zz_hold, align 8
  %1258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12890 = bitcast %union.rec* %1258 to %struct.word_type*
  %olist2891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12890, i32 0, i32 0
  %arrayidx2892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2891, i32 0, i64 0
  %opred2893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2892, i32 0, i32 0
  %1259 = load %union.rec*, %union.rec** %opred2893, align 8
  %1260 = load i32, i32* @zz_size, align 4
  %idxprom2894 = sext i32 %1260 to i64
  %arrayidx2895 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2894
  store %union.rec* %1259, %union.rec** %arrayidx2895, align 8
  br label %if.end.2896

if.end.2896:                                      ; preds = %if.else.2887, %if.then.2885
  br label %if.end.2897

if.end.2897:                                      ; preds = %if.end.2896, %if.then.2878
  %1261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12898 = bitcast %union.rec* %1261 to %struct.word_type*
  %ou12899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12898, i32 0, i32 1
  %os112900 = bitcast %union.FIRST_UNION* %ou12899 to %struct.anon*
  %otype2901 = getelementptr inbounds %struct.anon, %struct.anon* %os112900, i32 0, i32 0
  store i8 0, i8* %otype2901, align 1
  %1262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12902 = bitcast %union.rec* %1263 to %struct.word_type*
  %olist2903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12902, i32 0, i32 0
  %arrayidx2904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2903, i32 0, i64 1
  %osucc2905 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2904, i32 0, i32 1
  store %union.rec* %1262, %union.rec** %osucc2905, align 8
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12906 = bitcast %union.rec* %1264 to %struct.word_type*
  %olist2907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12906, i32 0, i32 0
  %arrayidx2908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2907, i32 0, i64 1
  %opred2909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2908, i32 0, i32 0
  store %union.rec* %1262, %union.rec** %opred2909, align 8
  %1265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12910 = bitcast %union.rec* %1265 to %struct.word_type*
  %olist2911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12910, i32 0, i32 0
  %arrayidx2912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2911, i32 0, i64 0
  %osucc2913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2912, i32 0, i32 1
  store %union.rec* %1262, %union.rec** %osucc2913, align 8
  %1266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12914 = bitcast %union.rec* %1266 to %struct.word_type*
  %olist2915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12914, i32 0, i32 0
  %arrayidx2916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2915, i32 0, i64 0
  %opred2917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2916, i32 0, i32 0
  store %union.rec* %1262, %union.rec** %opred2917, align 8
  store %union.rec* %1262, %union.rec** @xx_link, align 8
  %1267 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1267, %union.rec** @zz_res, align 8
  %1268 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %1268, %union.rec** @zz_hold, align 8
  %1269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2918 = icmp eq %union.rec* %1269, null
  br i1 %cmp2918, label %cond.true.2920, label %cond.false.2921

cond.true.2920:                                   ; preds = %if.end.2897
  %1270 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2956

cond.false.2921:                                  ; preds = %if.end.2897
  %1271 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2922 = icmp eq %union.rec* %1271, null
  br i1 %cmp2922, label %cond.true.2924, label %cond.false.2925

cond.true.2924:                                   ; preds = %cond.false.2921
  %1272 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2954

cond.false.2925:                                  ; preds = %cond.false.2921
  %1273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12926 = bitcast %union.rec* %1273 to %struct.word_type*
  %olist2927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12926, i32 0, i32 0
  %arrayidx2928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2927, i32 0, i64 0
  %opred2929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2928, i32 0, i32 0
  %1274 = load %union.rec*, %union.rec** %opred2929, align 8
  store %union.rec* %1274, %union.rec** @zz_tmp, align 8
  %1275 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12930 = bitcast %union.rec* %1275 to %struct.word_type*
  %olist2931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12930, i32 0, i32 0
  %arrayidx2932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2931, i32 0, i64 0
  %opred2933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2932, i32 0, i32 0
  %1276 = load %union.rec*, %union.rec** %opred2933, align 8
  %1277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12934 = bitcast %union.rec* %1277 to %struct.word_type*
  %olist2935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12934, i32 0, i32 0
  %arrayidx2936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2935, i32 0, i64 0
  %opred2937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2936, i32 0, i32 0
  store %union.rec* %1276, %union.rec** %opred2937, align 8
  %1278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1279 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12938 = bitcast %union.rec* %1279 to %struct.word_type*
  %olist2939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12938, i32 0, i32 0
  %arrayidx2940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2939, i32 0, i64 0
  %opred2941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2940, i32 0, i32 0
  %1280 = load %union.rec*, %union.rec** %opred2941, align 8
  %os12942 = bitcast %union.rec* %1280 to %struct.word_type*
  %olist2943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12942, i32 0, i32 0
  %arrayidx2944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2943, i32 0, i64 0
  %osucc2945 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2944, i32 0, i32 1
  store %union.rec* %1278, %union.rec** %osucc2945, align 8
  %1281 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1282 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12946 = bitcast %union.rec* %1282 to %struct.word_type*
  %olist2947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12946, i32 0, i32 0
  %arrayidx2948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2947, i32 0, i64 0
  %opred2949 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2948, i32 0, i32 0
  store %union.rec* %1281, %union.rec** %opred2949, align 8
  %1283 = load %union.rec*, %union.rec** @zz_res, align 8
  %1284 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12950 = bitcast %union.rec* %1284 to %struct.word_type*
  %olist2951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12950, i32 0, i32 0
  %arrayidx2952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2951, i32 0, i64 0
  %osucc2953 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2952, i32 0, i32 1
  store %union.rec* %1283, %union.rec** %osucc2953, align 8
  br label %cond.end.2954

cond.end.2954:                                    ; preds = %cond.false.2925, %cond.true.2924
  %cond2955 = phi %union.rec* [ %1272, %cond.true.2924 ], [ %1283, %cond.false.2925 ]
  br label %cond.end.2956

cond.end.2956:                                    ; preds = %cond.end.2954, %cond.true.2920
  %cond2957 = phi %union.rec* [ %1270, %cond.true.2920 ], [ %cond2955, %cond.end.2954 ]
  %1285 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1285, %union.rec** @zz_res, align 8
  %1286 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1286, %union.rec** @zz_hold, align 8
  %1287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2958 = icmp eq %union.rec* %1287, null
  br i1 %cmp2958, label %cond.true.2960, label %cond.false.2961

cond.true.2960:                                   ; preds = %cond.end.2956
  %1288 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2996

cond.false.2961:                                  ; preds = %cond.end.2956
  %1289 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2962 = icmp eq %union.rec* %1289, null
  br i1 %cmp2962, label %cond.true.2964, label %cond.false.2965

cond.true.2964:                                   ; preds = %cond.false.2961
  %1290 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2994

cond.false.2965:                                  ; preds = %cond.false.2961
  %1291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12966 = bitcast %union.rec* %1291 to %struct.word_type*
  %olist2967 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12966, i32 0, i32 0
  %arrayidx2968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2967, i32 0, i64 1
  %opred2969 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2968, i32 0, i32 0
  %1292 = load %union.rec*, %union.rec** %opred2969, align 8
  store %union.rec* %1292, %union.rec** @zz_tmp, align 8
  %1293 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12970 = bitcast %union.rec* %1293 to %struct.word_type*
  %olist2971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12970, i32 0, i32 0
  %arrayidx2972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2971, i32 0, i64 1
  %opred2973 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2972, i32 0, i32 0
  %1294 = load %union.rec*, %union.rec** %opred2973, align 8
  %1295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12974 = bitcast %union.rec* %1295 to %struct.word_type*
  %olist2975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12974, i32 0, i32 0
  %arrayidx2976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2975, i32 0, i64 1
  %opred2977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2976, i32 0, i32 0
  store %union.rec* %1294, %union.rec** %opred2977, align 8
  %1296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1297 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12978 = bitcast %union.rec* %1297 to %struct.word_type*
  %olist2979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12978, i32 0, i32 0
  %arrayidx2980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2979, i32 0, i64 1
  %opred2981 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2980, i32 0, i32 0
  %1298 = load %union.rec*, %union.rec** %opred2981, align 8
  %os12982 = bitcast %union.rec* %1298 to %struct.word_type*
  %olist2983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12982, i32 0, i32 0
  %arrayidx2984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2983, i32 0, i64 1
  %osucc2985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2984, i32 0, i32 1
  store %union.rec* %1296, %union.rec** %osucc2985, align 8
  %1299 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1300 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12986 = bitcast %union.rec* %1300 to %struct.word_type*
  %olist2987 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12986, i32 0, i32 0
  %arrayidx2988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2987, i32 0, i64 1
  %opred2989 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2988, i32 0, i32 0
  store %union.rec* %1299, %union.rec** %opred2989, align 8
  %1301 = load %union.rec*, %union.rec** @zz_res, align 8
  %1302 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12990 = bitcast %union.rec* %1302 to %struct.word_type*
  %olist2991 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12990, i32 0, i32 0
  %arrayidx2992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2991, i32 0, i64 1
  %osucc2993 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2992, i32 0, i32 1
  store %union.rec* %1301, %union.rec** %osucc2993, align 8
  br label %cond.end.2994

cond.end.2994:                                    ; preds = %cond.false.2965, %cond.true.2964
  %cond2995 = phi %union.rec* [ %1290, %cond.true.2964 ], [ %1301, %cond.false.2965 ]
  br label %cond.end.2996

cond.end.2996:                                    ; preds = %cond.end.2994, %cond.true.2960
  %cond2997 = phi %union.rec* [ %1288, %cond.true.2960 ], [ %cond2995, %cond.end.2994 ]
  %arraydecay2998 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1303 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2999 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay2998, %struct.FILE_POS* %1303)
  store %union.rec* %call2999, %union.rec** %tmp, align 8
  %1304 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3000 = zext i8 %1304 to i32
  store i32 %conv3000, i32* @zz_size, align 4
  %conv3001 = sext i32 %conv3000 to i64
  %cmp3002 = icmp uge i64 %conv3001, 265
  br i1 %cmp3002, label %if.then.3004, label %if.else.3006

if.then.3004:                                     ; preds = %cond.end.2996
  %1305 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3005 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1305)
  br label %if.end.3023

if.else.3006:                                     ; preds = %cond.end.2996
  %1306 = load i32, i32* @zz_size, align 4
  %idxprom3007 = sext i32 %1306 to i64
  %arrayidx3008 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3007
  %1307 = load %union.rec*, %union.rec** %arrayidx3008, align 8
  %cmp3009 = icmp eq %union.rec* %1307, null
  br i1 %cmp3009, label %if.then.3011, label %if.else.3013

if.then.3011:                                     ; preds = %if.else.3006
  %1308 = load i32, i32* @zz_size, align 4
  %1309 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3012 = call %union.rec* @GetMemory(i32 %1308, %struct.FILE_POS* %1309)
  store %union.rec* %call3012, %union.rec** @zz_hold, align 8
  br label %if.end.3022

if.else.3013:                                     ; preds = %if.else.3006
  %1310 = load i32, i32* @zz_size, align 4
  %idxprom3014 = sext i32 %1310 to i64
  %arrayidx3015 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3014
  %1311 = load %union.rec*, %union.rec** %arrayidx3015, align 8
  store %union.rec* %1311, %union.rec** @zz_hold, align 8
  store %union.rec* %1311, %union.rec** @zz_hold, align 8
  %1312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13016 = bitcast %union.rec* %1312 to %struct.word_type*
  %olist3017 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13016, i32 0, i32 0
  %arrayidx3018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3017, i32 0, i64 0
  %opred3019 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3018, i32 0, i32 0
  %1313 = load %union.rec*, %union.rec** %opred3019, align 8
  %1314 = load i32, i32* @zz_size, align 4
  %idxprom3020 = sext i32 %1314 to i64
  %arrayidx3021 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3020
  store %union.rec* %1313, %union.rec** %arrayidx3021, align 8
  br label %if.end.3022

if.end.3022:                                      ; preds = %if.else.3013, %if.then.3011
  br label %if.end.3023

if.end.3023:                                      ; preds = %if.end.3022, %if.then.3004
  %1315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13024 = bitcast %union.rec* %1315 to %struct.word_type*
  %ou13025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13024, i32 0, i32 1
  %os113026 = bitcast %union.FIRST_UNION* %ou13025 to %struct.anon*
  %otype3027 = getelementptr inbounds %struct.anon, %struct.anon* %os113026, i32 0, i32 0
  store i8 0, i8* %otype3027, align 1
  %1316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13028 = bitcast %union.rec* %1317 to %struct.word_type*
  %olist3029 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13028, i32 0, i32 0
  %arrayidx3030 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3029, i32 0, i64 1
  %osucc3031 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3030, i32 0, i32 1
  store %union.rec* %1316, %union.rec** %osucc3031, align 8
  %1318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13032 = bitcast %union.rec* %1318 to %struct.word_type*
  %olist3033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13032, i32 0, i32 0
  %arrayidx3034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3033, i32 0, i64 1
  %opred3035 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3034, i32 0, i32 0
  store %union.rec* %1316, %union.rec** %opred3035, align 8
  %1319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13036 = bitcast %union.rec* %1319 to %struct.word_type*
  %olist3037 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13036, i32 0, i32 0
  %arrayidx3038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3037, i32 0, i64 0
  %osucc3039 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3038, i32 0, i32 1
  store %union.rec* %1316, %union.rec** %osucc3039, align 8
  %1320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13040 = bitcast %union.rec* %1320 to %struct.word_type*
  %olist3041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13040, i32 0, i32 0
  %arrayidx3042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3041, i32 0, i64 0
  %opred3043 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3042, i32 0, i32 0
  store %union.rec* %1316, %union.rec** %opred3043, align 8
  store %union.rec* %1316, %union.rec** @xx_link, align 8
  %1321 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1321, %union.rec** @zz_res, align 8
  %1322 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1322, %union.rec** @zz_hold, align 8
  %1323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3044 = icmp eq %union.rec* %1323, null
  br i1 %cmp3044, label %cond.true.3046, label %cond.false.3047

cond.true.3046:                                   ; preds = %if.end.3023
  %1324 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3082

cond.false.3047:                                  ; preds = %if.end.3023
  %1325 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3048 = icmp eq %union.rec* %1325, null
  br i1 %cmp3048, label %cond.true.3050, label %cond.false.3051

cond.true.3050:                                   ; preds = %cond.false.3047
  %1326 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3080

cond.false.3051:                                  ; preds = %cond.false.3047
  %1327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13052 = bitcast %union.rec* %1327 to %struct.word_type*
  %olist3053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13052, i32 0, i32 0
  %arrayidx3054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3053, i32 0, i64 0
  %opred3055 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3054, i32 0, i32 0
  %1328 = load %union.rec*, %union.rec** %opred3055, align 8
  store %union.rec* %1328, %union.rec** @zz_tmp, align 8
  %1329 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13056 = bitcast %union.rec* %1329 to %struct.word_type*
  %olist3057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13056, i32 0, i32 0
  %arrayidx3058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3057, i32 0, i64 0
  %opred3059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3058, i32 0, i32 0
  %1330 = load %union.rec*, %union.rec** %opred3059, align 8
  %1331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13060 = bitcast %union.rec* %1331 to %struct.word_type*
  %olist3061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13060, i32 0, i32 0
  %arrayidx3062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3061, i32 0, i64 0
  %opred3063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3062, i32 0, i32 0
  store %union.rec* %1330, %union.rec** %opred3063, align 8
  %1332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1333 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13064 = bitcast %union.rec* %1333 to %struct.word_type*
  %olist3065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13064, i32 0, i32 0
  %arrayidx3066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3065, i32 0, i64 0
  %opred3067 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3066, i32 0, i32 0
  %1334 = load %union.rec*, %union.rec** %opred3067, align 8
  %os13068 = bitcast %union.rec* %1334 to %struct.word_type*
  %olist3069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13068, i32 0, i32 0
  %arrayidx3070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3069, i32 0, i64 0
  %osucc3071 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3070, i32 0, i32 1
  store %union.rec* %1332, %union.rec** %osucc3071, align 8
  %1335 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1336 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13072 = bitcast %union.rec* %1336 to %struct.word_type*
  %olist3073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13072, i32 0, i32 0
  %arrayidx3074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3073, i32 0, i64 0
  %opred3075 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3074, i32 0, i32 0
  store %union.rec* %1335, %union.rec** %opred3075, align 8
  %1337 = load %union.rec*, %union.rec** @zz_res, align 8
  %1338 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13076 = bitcast %union.rec* %1338 to %struct.word_type*
  %olist3077 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13076, i32 0, i32 0
  %arrayidx3078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3077, i32 0, i64 0
  %osucc3079 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3078, i32 0, i32 1
  store %union.rec* %1337, %union.rec** %osucc3079, align 8
  br label %cond.end.3080

cond.end.3080:                                    ; preds = %cond.false.3051, %cond.true.3050
  %cond3081 = phi %union.rec* [ %1326, %cond.true.3050 ], [ %1337, %cond.false.3051 ]
  br label %cond.end.3082

cond.end.3082:                                    ; preds = %cond.end.3080, %cond.true.3046
  %cond3083 = phi %union.rec* [ %1324, %cond.true.3046 ], [ %cond3081, %cond.end.3080 ]
  %1339 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1339, %union.rec** @zz_res, align 8
  %1340 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1340, %union.rec** @zz_hold, align 8
  %1341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3084 = icmp eq %union.rec* %1341, null
  br i1 %cmp3084, label %cond.true.3086, label %cond.false.3087

cond.true.3086:                                   ; preds = %cond.end.3082
  %1342 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3122

cond.false.3087:                                  ; preds = %cond.end.3082
  %1343 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3088 = icmp eq %union.rec* %1343, null
  br i1 %cmp3088, label %cond.true.3090, label %cond.false.3091

cond.true.3090:                                   ; preds = %cond.false.3087
  %1344 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3120

cond.false.3091:                                  ; preds = %cond.false.3087
  %1345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13092 = bitcast %union.rec* %1345 to %struct.word_type*
  %olist3093 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13092, i32 0, i32 0
  %arrayidx3094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3093, i32 0, i64 1
  %opred3095 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3094, i32 0, i32 0
  %1346 = load %union.rec*, %union.rec** %opred3095, align 8
  store %union.rec* %1346, %union.rec** @zz_tmp, align 8
  %1347 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13096 = bitcast %union.rec* %1347 to %struct.word_type*
  %olist3097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13096, i32 0, i32 0
  %arrayidx3098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3097, i32 0, i64 1
  %opred3099 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3098, i32 0, i32 0
  %1348 = load %union.rec*, %union.rec** %opred3099, align 8
  %1349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13100 = bitcast %union.rec* %1349 to %struct.word_type*
  %olist3101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13100, i32 0, i32 0
  %arrayidx3102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3101, i32 0, i64 1
  %opred3103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3102, i32 0, i32 0
  store %union.rec* %1348, %union.rec** %opred3103, align 8
  %1350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1351 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13104 = bitcast %union.rec* %1351 to %struct.word_type*
  %olist3105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13104, i32 0, i32 0
  %arrayidx3106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3105, i32 0, i64 1
  %opred3107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3106, i32 0, i32 0
  %1352 = load %union.rec*, %union.rec** %opred3107, align 8
  %os13108 = bitcast %union.rec* %1352 to %struct.word_type*
  %olist3109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13108, i32 0, i32 0
  %arrayidx3110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3109, i32 0, i64 1
  %osucc3111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3110, i32 0, i32 1
  store %union.rec* %1350, %union.rec** %osucc3111, align 8
  %1353 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1354 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13112 = bitcast %union.rec* %1354 to %struct.word_type*
  %olist3113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13112, i32 0, i32 0
  %arrayidx3114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3113, i32 0, i64 1
  %opred3115 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3114, i32 0, i32 0
  store %union.rec* %1353, %union.rec** %opred3115, align 8
  %1355 = load %union.rec*, %union.rec** @zz_res, align 8
  %1356 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13116 = bitcast %union.rec* %1356 to %struct.word_type*
  %olist3117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13116, i32 0, i32 0
  %arrayidx3118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3117, i32 0, i64 1
  %osucc3119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3118, i32 0, i32 1
  store %union.rec* %1355, %union.rec** %osucc3119, align 8
  br label %cond.end.3120

cond.end.3120:                                    ; preds = %cond.false.3091, %cond.true.3090
  %cond3121 = phi %union.rec* [ %1344, %cond.true.3090 ], [ %1355, %cond.false.3091 ]
  br label %cond.end.3122

cond.end.3122:                                    ; preds = %cond.end.3120, %cond.true.3086
  %cond3123 = phi %union.rec* [ %1342, %cond.true.3086 ], [ %cond3121, %cond.end.3120 ]
  %arraydecay3124 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1357 = load %struct.tm*, %struct.tm** %now, align 8
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %1357, i32 0, i32 8
  %1358 = load i32, i32* %tm_isdst, align 4
  %call3125 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %1358) #3
  %1359 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %conv3126 = zext i8 %1359 to i32
  store i32 %conv3126, i32* @zz_size, align 4
  %conv3127 = sext i32 %conv3126 to i64
  %cmp3128 = icmp uge i64 %conv3127, 265
  br i1 %cmp3128, label %if.then.3130, label %if.else.3132

if.then.3130:                                     ; preds = %cond.end.3122
  %1360 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3131 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1360)
  br label %if.end.3149

if.else.3132:                                     ; preds = %cond.end.3122
  %1361 = load i32, i32* @zz_size, align 4
  %idxprom3133 = sext i32 %1361 to i64
  %arrayidx3134 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3133
  %1362 = load %union.rec*, %union.rec** %arrayidx3134, align 8
  %cmp3135 = icmp eq %union.rec* %1362, null
  br i1 %cmp3135, label %if.then.3137, label %if.else.3139

if.then.3137:                                     ; preds = %if.else.3132
  %1363 = load i32, i32* @zz_size, align 4
  %1364 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3138 = call %union.rec* @GetMemory(i32 %1363, %struct.FILE_POS* %1364)
  store %union.rec* %call3138, %union.rec** @zz_hold, align 8
  br label %if.end.3148

if.else.3139:                                     ; preds = %if.else.3132
  %1365 = load i32, i32* @zz_size, align 4
  %idxprom3140 = sext i32 %1365 to i64
  %arrayidx3141 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3140
  %1366 = load %union.rec*, %union.rec** %arrayidx3141, align 8
  store %union.rec* %1366, %union.rec** @zz_hold, align 8
  store %union.rec* %1366, %union.rec** @zz_hold, align 8
  %1367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13142 = bitcast %union.rec* %1367 to %struct.word_type*
  %olist3143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13142, i32 0, i32 0
  %arrayidx3144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3143, i32 0, i64 0
  %opred3145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3144, i32 0, i32 0
  %1368 = load %union.rec*, %union.rec** %opred3145, align 8
  %1369 = load i32, i32* @zz_size, align 4
  %idxprom3146 = sext i32 %1369 to i64
  %arrayidx3147 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3146
  store %union.rec* %1368, %union.rec** %arrayidx3147, align 8
  br label %if.end.3148

if.end.3148:                                      ; preds = %if.else.3139, %if.then.3137
  br label %if.end.3149

if.end.3149:                                      ; preds = %if.end.3148, %if.then.3130
  %1370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13150 = bitcast %union.rec* %1370 to %struct.word_type*
  %ou13151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13150, i32 0, i32 1
  %os113152 = bitcast %union.FIRST_UNION* %ou13151 to %struct.anon*
  %otype3153 = getelementptr inbounds %struct.anon, %struct.anon* %os113152, i32 0, i32 0
  store i8 10, i8* %otype3153, align 1
  %1371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13154 = bitcast %union.rec* %1372 to %struct.word_type*
  %olist3155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13154, i32 0, i32 0
  %arrayidx3156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3155, i32 0, i64 1
  %osucc3157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3156, i32 0, i32 1
  store %union.rec* %1371, %union.rec** %osucc3157, align 8
  %1373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13158 = bitcast %union.rec* %1373 to %struct.word_type*
  %olist3159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13158, i32 0, i32 0
  %arrayidx3160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3159, i32 0, i64 1
  %opred3161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3160, i32 0, i32 0
  store %union.rec* %1371, %union.rec** %opred3161, align 8
  %1374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13162 = bitcast %union.rec* %1374 to %struct.word_type*
  %olist3163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13162, i32 0, i32 0
  %arrayidx3164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3163, i32 0, i64 0
  %osucc3165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3164, i32 0, i32 1
  store %union.rec* %1371, %union.rec** %osucc3165, align 8
  %1375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13166 = bitcast %union.rec* %1375 to %struct.word_type*
  %olist3167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13166, i32 0, i32 0
  %arrayidx3168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3167, i32 0, i64 0
  %opred3169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3168, i32 0, i32 0
  store %union.rec* %1371, %union.rec** %opred3169, align 8
  store %union.rec* %1371, %union.rec** %par, align 8
  %1376 = load %union.rec*, %union.rec** %dst, align 8
  %1377 = load %union.rec*, %union.rec** %par, align 8
  %os23170 = bitcast %union.rec* %1377 to %struct.closure_type*
  %oactual3171 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23170, i32 0, i32 5
  store %union.rec* %1376, %union.rec** %oactual3171, align 8
  %1378 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3172 = zext i8 %1378 to i32
  store i32 %conv3172, i32* @zz_size, align 4
  %conv3173 = sext i32 %conv3172 to i64
  %cmp3174 = icmp uge i64 %conv3173, 265
  br i1 %cmp3174, label %if.then.3176, label %if.else.3178

if.then.3176:                                     ; preds = %if.end.3149
  %1379 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3177 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1379)
  br label %if.end.3195

if.else.3178:                                     ; preds = %if.end.3149
  %1380 = load i32, i32* @zz_size, align 4
  %idxprom3179 = sext i32 %1380 to i64
  %arrayidx3180 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3179
  %1381 = load %union.rec*, %union.rec** %arrayidx3180, align 8
  %cmp3181 = icmp eq %union.rec* %1381, null
  br i1 %cmp3181, label %if.then.3183, label %if.else.3185

if.then.3183:                                     ; preds = %if.else.3178
  %1382 = load i32, i32* @zz_size, align 4
  %1383 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3184 = call %union.rec* @GetMemory(i32 %1382, %struct.FILE_POS* %1383)
  store %union.rec* %call3184, %union.rec** @zz_hold, align 8
  br label %if.end.3194

if.else.3185:                                     ; preds = %if.else.3178
  %1384 = load i32, i32* @zz_size, align 4
  %idxprom3186 = sext i32 %1384 to i64
  %arrayidx3187 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3186
  %1385 = load %union.rec*, %union.rec** %arrayidx3187, align 8
  store %union.rec* %1385, %union.rec** @zz_hold, align 8
  store %union.rec* %1385, %union.rec** @zz_hold, align 8
  %1386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13188 = bitcast %union.rec* %1386 to %struct.word_type*
  %olist3189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13188, i32 0, i32 0
  %arrayidx3190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3189, i32 0, i64 0
  %opred3191 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3190, i32 0, i32 0
  %1387 = load %union.rec*, %union.rec** %opred3191, align 8
  %1388 = load i32, i32* @zz_size, align 4
  %idxprom3192 = sext i32 %1388 to i64
  %arrayidx3193 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3192
  store %union.rec* %1387, %union.rec** %arrayidx3193, align 8
  br label %if.end.3194

if.end.3194:                                      ; preds = %if.else.3185, %if.then.3183
  br label %if.end.3195

if.end.3195:                                      ; preds = %if.end.3194, %if.then.3176
  %1389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13196 = bitcast %union.rec* %1389 to %struct.word_type*
  %ou13197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13196, i32 0, i32 1
  %os113198 = bitcast %union.FIRST_UNION* %ou13197 to %struct.anon*
  %otype3199 = getelementptr inbounds %struct.anon, %struct.anon* %os113198, i32 0, i32 0
  store i8 0, i8* %otype3199, align 1
  %1390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13200 = bitcast %union.rec* %1391 to %struct.word_type*
  %olist3201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13200, i32 0, i32 0
  %arrayidx3202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3201, i32 0, i64 1
  %osucc3203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3202, i32 0, i32 1
  store %union.rec* %1390, %union.rec** %osucc3203, align 8
  %1392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13204 = bitcast %union.rec* %1392 to %struct.word_type*
  %olist3205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13204, i32 0, i32 0
  %arrayidx3206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3205, i32 0, i64 1
  %opred3207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3206, i32 0, i32 0
  store %union.rec* %1390, %union.rec** %opred3207, align 8
  %1393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13208 = bitcast %union.rec* %1393 to %struct.word_type*
  %olist3209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13208, i32 0, i32 0
  %arrayidx3210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3209, i32 0, i64 0
  %osucc3211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3210, i32 0, i32 1
  store %union.rec* %1390, %union.rec** %osucc3211, align 8
  %1394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13212 = bitcast %union.rec* %1394 to %struct.word_type*
  %olist3213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13212, i32 0, i32 0
  %arrayidx3214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3213, i32 0, i64 0
  %opred3215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3214, i32 0, i32 0
  store %union.rec* %1390, %union.rec** %opred3215, align 8
  store %union.rec* %1390, %union.rec** @xx_link, align 8
  %1395 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1395, %union.rec** @zz_res, align 8
  %1396 = load %union.rec*, %union.rec** @current_moment, align 8
  store %union.rec* %1396, %union.rec** @zz_hold, align 8
  %1397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3216 = icmp eq %union.rec* %1397, null
  br i1 %cmp3216, label %cond.true.3218, label %cond.false.3219

cond.true.3218:                                   ; preds = %if.end.3195
  %1398 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3254

cond.false.3219:                                  ; preds = %if.end.3195
  %1399 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3220 = icmp eq %union.rec* %1399, null
  br i1 %cmp3220, label %cond.true.3222, label %cond.false.3223

cond.true.3222:                                   ; preds = %cond.false.3219
  %1400 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3252

cond.false.3223:                                  ; preds = %cond.false.3219
  %1401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13224 = bitcast %union.rec* %1401 to %struct.word_type*
  %olist3225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13224, i32 0, i32 0
  %arrayidx3226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3225, i32 0, i64 0
  %opred3227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3226, i32 0, i32 0
  %1402 = load %union.rec*, %union.rec** %opred3227, align 8
  store %union.rec* %1402, %union.rec** @zz_tmp, align 8
  %1403 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13228 = bitcast %union.rec* %1403 to %struct.word_type*
  %olist3229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13228, i32 0, i32 0
  %arrayidx3230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3229, i32 0, i64 0
  %opred3231 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3230, i32 0, i32 0
  %1404 = load %union.rec*, %union.rec** %opred3231, align 8
  %1405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13232 = bitcast %union.rec* %1405 to %struct.word_type*
  %olist3233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13232, i32 0, i32 0
  %arrayidx3234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3233, i32 0, i64 0
  %opred3235 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3234, i32 0, i32 0
  store %union.rec* %1404, %union.rec** %opred3235, align 8
  %1406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1407 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13236 = bitcast %union.rec* %1407 to %struct.word_type*
  %olist3237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13236, i32 0, i32 0
  %arrayidx3238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3237, i32 0, i64 0
  %opred3239 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3238, i32 0, i32 0
  %1408 = load %union.rec*, %union.rec** %opred3239, align 8
  %os13240 = bitcast %union.rec* %1408 to %struct.word_type*
  %olist3241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13240, i32 0, i32 0
  %arrayidx3242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3241, i32 0, i64 0
  %osucc3243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3242, i32 0, i32 1
  store %union.rec* %1406, %union.rec** %osucc3243, align 8
  %1409 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1410 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13244 = bitcast %union.rec* %1410 to %struct.word_type*
  %olist3245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13244, i32 0, i32 0
  %arrayidx3246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3245, i32 0, i64 0
  %opred3247 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3246, i32 0, i32 0
  store %union.rec* %1409, %union.rec** %opred3247, align 8
  %1411 = load %union.rec*, %union.rec** @zz_res, align 8
  %1412 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13248 = bitcast %union.rec* %1412 to %struct.word_type*
  %olist3249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13248, i32 0, i32 0
  %arrayidx3250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3249, i32 0, i64 0
  %osucc3251 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3250, i32 0, i32 1
  store %union.rec* %1411, %union.rec** %osucc3251, align 8
  br label %cond.end.3252

cond.end.3252:                                    ; preds = %cond.false.3223, %cond.true.3222
  %cond3253 = phi %union.rec* [ %1400, %cond.true.3222 ], [ %1411, %cond.false.3223 ]
  br label %cond.end.3254

cond.end.3254:                                    ; preds = %cond.end.3252, %cond.true.3218
  %cond3255 = phi %union.rec* [ %1398, %cond.true.3218 ], [ %cond3253, %cond.end.3252 ]
  %1413 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1413, %union.rec** @zz_res, align 8
  %1414 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1414, %union.rec** @zz_hold, align 8
  %1415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3256 = icmp eq %union.rec* %1415, null
  br i1 %cmp3256, label %cond.true.3258, label %cond.false.3259

cond.true.3258:                                   ; preds = %cond.end.3254
  %1416 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3294

cond.false.3259:                                  ; preds = %cond.end.3254
  %1417 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3260 = icmp eq %union.rec* %1417, null
  br i1 %cmp3260, label %cond.true.3262, label %cond.false.3263

cond.true.3262:                                   ; preds = %cond.false.3259
  %1418 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3292

cond.false.3263:                                  ; preds = %cond.false.3259
  %1419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13264 = bitcast %union.rec* %1419 to %struct.word_type*
  %olist3265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13264, i32 0, i32 0
  %arrayidx3266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3265, i32 0, i64 1
  %opred3267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3266, i32 0, i32 0
  %1420 = load %union.rec*, %union.rec** %opred3267, align 8
  store %union.rec* %1420, %union.rec** @zz_tmp, align 8
  %1421 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13268 = bitcast %union.rec* %1421 to %struct.word_type*
  %olist3269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13268, i32 0, i32 0
  %arrayidx3270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3269, i32 0, i64 1
  %opred3271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3270, i32 0, i32 0
  %1422 = load %union.rec*, %union.rec** %opred3271, align 8
  %1423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13272 = bitcast %union.rec* %1423 to %struct.word_type*
  %olist3273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13272, i32 0, i32 0
  %arrayidx3274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3273, i32 0, i64 1
  %opred3275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3274, i32 0, i32 0
  store %union.rec* %1422, %union.rec** %opred3275, align 8
  %1424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1425 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13276 = bitcast %union.rec* %1425 to %struct.word_type*
  %olist3277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13276, i32 0, i32 0
  %arrayidx3278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3277, i32 0, i64 1
  %opred3279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3278, i32 0, i32 0
  %1426 = load %union.rec*, %union.rec** %opred3279, align 8
  %os13280 = bitcast %union.rec* %1426 to %struct.word_type*
  %olist3281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13280, i32 0, i32 0
  %arrayidx3282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3281, i32 0, i64 1
  %osucc3283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3282, i32 0, i32 1
  store %union.rec* %1424, %union.rec** %osucc3283, align 8
  %1427 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1428 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13284 = bitcast %union.rec* %1428 to %struct.word_type*
  %olist3285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13284, i32 0, i32 0
  %arrayidx3286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3285, i32 0, i64 1
  %opred3287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3286, i32 0, i32 0
  store %union.rec* %1427, %union.rec** %opred3287, align 8
  %1429 = load %union.rec*, %union.rec** @zz_res, align 8
  %1430 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13288 = bitcast %union.rec* %1430 to %struct.word_type*
  %olist3289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13288, i32 0, i32 0
  %arrayidx3290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3289, i32 0, i64 1
  %osucc3291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3290, i32 0, i32 1
  store %union.rec* %1429, %union.rec** %osucc3291, align 8
  br label %cond.end.3292

cond.end.3292:                                    ; preds = %cond.false.3263, %cond.true.3262
  %cond3293 = phi %union.rec* [ %1418, %cond.true.3262 ], [ %1429, %cond.false.3263 ]
  br label %cond.end.3294

cond.end.3294:                                    ; preds = %cond.end.3292, %cond.true.3258
  %cond3295 = phi %union.rec* [ %1416, %cond.true.3258 ], [ %cond3293, %cond.end.3292 ]
  %arraydecay3296 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i32 0
  %1431 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3297 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay3296, %struct.FILE_POS* %1431)
  store %union.rec* %call3297, %union.rec** %tmp, align 8
  %1432 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3298 = zext i8 %1432 to i32
  store i32 %conv3298, i32* @zz_size, align 4
  %conv3299 = sext i32 %conv3298 to i64
  %cmp3300 = icmp uge i64 %conv3299, 265
  br i1 %cmp3300, label %if.then.3302, label %if.else.3304

if.then.3302:                                     ; preds = %cond.end.3294
  %1433 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3303 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1433)
  br label %if.end.3321

if.else.3304:                                     ; preds = %cond.end.3294
  %1434 = load i32, i32* @zz_size, align 4
  %idxprom3305 = sext i32 %1434 to i64
  %arrayidx3306 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3305
  %1435 = load %union.rec*, %union.rec** %arrayidx3306, align 8
  %cmp3307 = icmp eq %union.rec* %1435, null
  br i1 %cmp3307, label %if.then.3309, label %if.else.3311

if.then.3309:                                     ; preds = %if.else.3304
  %1436 = load i32, i32* @zz_size, align 4
  %1437 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3310 = call %union.rec* @GetMemory(i32 %1436, %struct.FILE_POS* %1437)
  store %union.rec* %call3310, %union.rec** @zz_hold, align 8
  br label %if.end.3320

if.else.3311:                                     ; preds = %if.else.3304
  %1438 = load i32, i32* @zz_size, align 4
  %idxprom3312 = sext i32 %1438 to i64
  %arrayidx3313 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3312
  %1439 = load %union.rec*, %union.rec** %arrayidx3313, align 8
  store %union.rec* %1439, %union.rec** @zz_hold, align 8
  store %union.rec* %1439, %union.rec** @zz_hold, align 8
  %1440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13314 = bitcast %union.rec* %1440 to %struct.word_type*
  %olist3315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13314, i32 0, i32 0
  %arrayidx3316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3315, i32 0, i64 0
  %opred3317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3316, i32 0, i32 0
  %1441 = load %union.rec*, %union.rec** %opred3317, align 8
  %1442 = load i32, i32* @zz_size, align 4
  %idxprom3318 = sext i32 %1442 to i64
  %arrayidx3319 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3318
  store %union.rec* %1441, %union.rec** %arrayidx3319, align 8
  br label %if.end.3320

if.end.3320:                                      ; preds = %if.else.3311, %if.then.3309
  br label %if.end.3321

if.end.3321:                                      ; preds = %if.end.3320, %if.then.3302
  %1443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13322 = bitcast %union.rec* %1443 to %struct.word_type*
  %ou13323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13322, i32 0, i32 1
  %os113324 = bitcast %union.FIRST_UNION* %ou13323 to %struct.anon*
  %otype3325 = getelementptr inbounds %struct.anon, %struct.anon* %os113324, i32 0, i32 0
  store i8 0, i8* %otype3325, align 1
  %1444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13326 = bitcast %union.rec* %1445 to %struct.word_type*
  %olist3327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13326, i32 0, i32 0
  %arrayidx3328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3327, i32 0, i64 1
  %osucc3329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3328, i32 0, i32 1
  store %union.rec* %1444, %union.rec** %osucc3329, align 8
  %1446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13330 = bitcast %union.rec* %1446 to %struct.word_type*
  %olist3331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13330, i32 0, i32 0
  %arrayidx3332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3331, i32 0, i64 1
  %opred3333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3332, i32 0, i32 0
  store %union.rec* %1444, %union.rec** %opred3333, align 8
  %1447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13334 = bitcast %union.rec* %1447 to %struct.word_type*
  %olist3335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13334, i32 0, i32 0
  %arrayidx3336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3335, i32 0, i64 0
  %osucc3337 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3336, i32 0, i32 1
  store %union.rec* %1444, %union.rec** %osucc3337, align 8
  %1448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13338 = bitcast %union.rec* %1448 to %struct.word_type*
  %olist3339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13338, i32 0, i32 0
  %arrayidx3340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3339, i32 0, i64 0
  %opred3341 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3340, i32 0, i32 0
  store %union.rec* %1444, %union.rec** %opred3341, align 8
  store %union.rec* %1444, %union.rec** @xx_link, align 8
  %1449 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1449, %union.rec** @zz_res, align 8
  %1450 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %1450, %union.rec** @zz_hold, align 8
  %1451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3342 = icmp eq %union.rec* %1451, null
  br i1 %cmp3342, label %cond.true.3344, label %cond.false.3345

cond.true.3344:                                   ; preds = %if.end.3321
  %1452 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3380

cond.false.3345:                                  ; preds = %if.end.3321
  %1453 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3346 = icmp eq %union.rec* %1453, null
  br i1 %cmp3346, label %cond.true.3348, label %cond.false.3349

cond.true.3348:                                   ; preds = %cond.false.3345
  %1454 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3378

cond.false.3349:                                  ; preds = %cond.false.3345
  %1455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13350 = bitcast %union.rec* %1455 to %struct.word_type*
  %olist3351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13350, i32 0, i32 0
  %arrayidx3352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3351, i32 0, i64 0
  %opred3353 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3352, i32 0, i32 0
  %1456 = load %union.rec*, %union.rec** %opred3353, align 8
  store %union.rec* %1456, %union.rec** @zz_tmp, align 8
  %1457 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13354 = bitcast %union.rec* %1457 to %struct.word_type*
  %olist3355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13354, i32 0, i32 0
  %arrayidx3356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3355, i32 0, i64 0
  %opred3357 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3356, i32 0, i32 0
  %1458 = load %union.rec*, %union.rec** %opred3357, align 8
  %1459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13358 = bitcast %union.rec* %1459 to %struct.word_type*
  %olist3359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13358, i32 0, i32 0
  %arrayidx3360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3359, i32 0, i64 0
  %opred3361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3360, i32 0, i32 0
  store %union.rec* %1458, %union.rec** %opred3361, align 8
  %1460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1461 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13362 = bitcast %union.rec* %1461 to %struct.word_type*
  %olist3363 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13362, i32 0, i32 0
  %arrayidx3364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3363, i32 0, i64 0
  %opred3365 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3364, i32 0, i32 0
  %1462 = load %union.rec*, %union.rec** %opred3365, align 8
  %os13366 = bitcast %union.rec* %1462 to %struct.word_type*
  %olist3367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13366, i32 0, i32 0
  %arrayidx3368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3367, i32 0, i64 0
  %osucc3369 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3368, i32 0, i32 1
  store %union.rec* %1460, %union.rec** %osucc3369, align 8
  %1463 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1464 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13370 = bitcast %union.rec* %1464 to %struct.word_type*
  %olist3371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13370, i32 0, i32 0
  %arrayidx3372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3371, i32 0, i64 0
  %opred3373 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3372, i32 0, i32 0
  store %union.rec* %1463, %union.rec** %opred3373, align 8
  %1465 = load %union.rec*, %union.rec** @zz_res, align 8
  %1466 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13374 = bitcast %union.rec* %1466 to %struct.word_type*
  %olist3375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13374, i32 0, i32 0
  %arrayidx3376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3375, i32 0, i64 0
  %osucc3377 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3376, i32 0, i32 1
  store %union.rec* %1465, %union.rec** %osucc3377, align 8
  br label %cond.end.3378

cond.end.3378:                                    ; preds = %cond.false.3349, %cond.true.3348
  %cond3379 = phi %union.rec* [ %1454, %cond.true.3348 ], [ %1465, %cond.false.3349 ]
  br label %cond.end.3380

cond.end.3380:                                    ; preds = %cond.end.3378, %cond.true.3344
  %cond3381 = phi %union.rec* [ %1452, %cond.true.3344 ], [ %cond3379, %cond.end.3378 ]
  %1467 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1467, %union.rec** @zz_res, align 8
  %1468 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1468, %union.rec** @zz_hold, align 8
  %1469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3382 = icmp eq %union.rec* %1469, null
  br i1 %cmp3382, label %cond.true.3384, label %cond.false.3385

cond.true.3384:                                   ; preds = %cond.end.3380
  %1470 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3420

cond.false.3385:                                  ; preds = %cond.end.3380
  %1471 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3386 = icmp eq %union.rec* %1471, null
  br i1 %cmp3386, label %cond.true.3388, label %cond.false.3389

cond.true.3388:                                   ; preds = %cond.false.3385
  %1472 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3418

cond.false.3389:                                  ; preds = %cond.false.3385
  %1473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13390 = bitcast %union.rec* %1473 to %struct.word_type*
  %olist3391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13390, i32 0, i32 0
  %arrayidx3392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3391, i32 0, i64 1
  %opred3393 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3392, i32 0, i32 0
  %1474 = load %union.rec*, %union.rec** %opred3393, align 8
  store %union.rec* %1474, %union.rec** @zz_tmp, align 8
  %1475 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13394 = bitcast %union.rec* %1475 to %struct.word_type*
  %olist3395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13394, i32 0, i32 0
  %arrayidx3396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3395, i32 0, i64 1
  %opred3397 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3396, i32 0, i32 0
  %1476 = load %union.rec*, %union.rec** %opred3397, align 8
  %1477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13398 = bitcast %union.rec* %1477 to %struct.word_type*
  %olist3399 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13398, i32 0, i32 0
  %arrayidx3400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3399, i32 0, i64 1
  %opred3401 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3400, i32 0, i32 0
  store %union.rec* %1476, %union.rec** %opred3401, align 8
  %1478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1479 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13402 = bitcast %union.rec* %1479 to %struct.word_type*
  %olist3403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13402, i32 0, i32 0
  %arrayidx3404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3403, i32 0, i64 1
  %opred3405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3404, i32 0, i32 0
  %1480 = load %union.rec*, %union.rec** %opred3405, align 8
  %os13406 = bitcast %union.rec* %1480 to %struct.word_type*
  %olist3407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13406, i32 0, i32 0
  %arrayidx3408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3407, i32 0, i64 1
  %osucc3409 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3408, i32 0, i32 1
  store %union.rec* %1478, %union.rec** %osucc3409, align 8
  %1481 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1482 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13410 = bitcast %union.rec* %1482 to %struct.word_type*
  %olist3411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13410, i32 0, i32 0
  %arrayidx3412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3411, i32 0, i64 1
  %opred3413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3412, i32 0, i32 0
  store %union.rec* %1481, %union.rec** %opred3413, align 8
  %1483 = load %union.rec*, %union.rec** @zz_res, align 8
  %1484 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13414 = bitcast %union.rec* %1484 to %struct.word_type*
  %olist3415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13414, i32 0, i32 0
  %arrayidx3416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3415, i32 0, i64 1
  %osucc3417 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3416, i32 0, i32 1
  store %union.rec* %1483, %union.rec** %osucc3417, align 8
  br label %cond.end.3418

cond.end.3418:                                    ; preds = %cond.false.3389, %cond.true.3388
  %cond3419 = phi %union.rec* [ %1472, %cond.true.3388 ], [ %1483, %cond.false.3389 ]
  br label %cond.end.3420

cond.end.3420:                                    ; preds = %cond.end.3418, %cond.true.3384
  %cond3421 = phi %union.rec* [ %1470, %cond.true.3384 ], [ %cond3419, %cond.end.3418 ]
  %1485 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %conv3422 = zext i8 %1485 to i32
  store i32 %conv3422, i32* @zz_size, align 4
  %conv3423 = sext i32 %conv3422 to i64
  %cmp3424 = icmp uge i64 %conv3423, 265
  br i1 %cmp3424, label %if.then.3426, label %if.else.3428

if.then.3426:                                     ; preds = %cond.end.3420
  %1486 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3427 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1486)
  br label %if.end.3445

if.else.3428:                                     ; preds = %cond.end.3420
  %1487 = load i32, i32* @zz_size, align 4
  %idxprom3429 = sext i32 %1487 to i64
  %arrayidx3430 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3429
  %1488 = load %union.rec*, %union.rec** %arrayidx3430, align 8
  %cmp3431 = icmp eq %union.rec* %1488, null
  br i1 %cmp3431, label %if.then.3433, label %if.else.3435

if.then.3433:                                     ; preds = %if.else.3428
  %1489 = load i32, i32* @zz_size, align 4
  %1490 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3434 = call %union.rec* @GetMemory(i32 %1489, %struct.FILE_POS* %1490)
  store %union.rec* %call3434, %union.rec** @zz_hold, align 8
  br label %if.end.3444

if.else.3435:                                     ; preds = %if.else.3428
  %1491 = load i32, i32* @zz_size, align 4
  %idxprom3436 = sext i32 %1491 to i64
  %arrayidx3437 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3436
  %1492 = load %union.rec*, %union.rec** %arrayidx3437, align 8
  store %union.rec* %1492, %union.rec** @zz_hold, align 8
  store %union.rec* %1492, %union.rec** @zz_hold, align 8
  %1493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13438 = bitcast %union.rec* %1493 to %struct.word_type*
  %olist3439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13438, i32 0, i32 0
  %arrayidx3440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3439, i32 0, i64 0
  %opred3441 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3440, i32 0, i32 0
  %1494 = load %union.rec*, %union.rec** %opred3441, align 8
  %1495 = load i32, i32* @zz_size, align 4
  %idxprom3442 = sext i32 %1495 to i64
  %arrayidx3443 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3442
  store %union.rec* %1494, %union.rec** %arrayidx3443, align 8
  br label %if.end.3444

if.end.3444:                                      ; preds = %if.else.3435, %if.then.3433
  br label %if.end.3445

if.end.3445:                                      ; preds = %if.end.3444, %if.then.3426
  %1496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13446 = bitcast %union.rec* %1496 to %struct.word_type*
  %ou13447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13446, i32 0, i32 1
  %os113448 = bitcast %union.FIRST_UNION* %ou13447 to %struct.anon*
  %otype3449 = getelementptr inbounds %struct.anon, %struct.anon* %os113448, i32 0, i32 0
  store i8 82, i8* %otype3449, align 1
  %1497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13450 = bitcast %union.rec* %1498 to %struct.word_type*
  %olist3451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13450, i32 0, i32 0
  %arrayidx3452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3451, i32 0, i64 1
  %osucc3453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3452, i32 0, i32 1
  store %union.rec* %1497, %union.rec** %osucc3453, align 8
  %1499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13454 = bitcast %union.rec* %1499 to %struct.word_type*
  %olist3455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13454, i32 0, i32 0
  %arrayidx3456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3455, i32 0, i64 1
  %opred3457 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3456, i32 0, i32 0
  store %union.rec* %1497, %union.rec** %opred3457, align 8
  %1500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13458 = bitcast %union.rec* %1500 to %struct.word_type*
  %olist3459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13458, i32 0, i32 0
  %arrayidx3460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3459, i32 0, i64 0
  %osucc3461 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3460, i32 0, i32 1
  store %union.rec* %1497, %union.rec** %osucc3461, align 8
  %1501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13462 = bitcast %union.rec* %1501 to %struct.word_type*
  %olist3463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13462, i32 0, i32 0
  %arrayidx3464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3463, i32 0, i64 0
  %opred3465 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3464, i32 0, i32 0
  store %union.rec* %1497, %union.rec** %opred3465, align 8
  store %union.rec* %1497, %union.rec** %env, align 8
  %1502 = load %union.rec*, %union.rec** %env, align 8
  %1503 = load %union.rec*, %union.rec** @current_moment, align 8
  call void @AttachEnv(%union.rec* %1502, %union.rec* %1503)
  ret void
}

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #2

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @AttachEnv(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @StartMoment() #0 {
entry:
  %res = alloca %union.rec*, align 8
  %0 = load %union.rec*, %union.rec** @current_moment, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %union.rec*, %union.rec** @current_moment, align 8
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1 = call %union.rec* @CopyObject(%union.rec* %2, %struct.FILE_POS* %3)
  store %union.rec* %call1, %union.rec** %res, align 8
  %4 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %4
}

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
