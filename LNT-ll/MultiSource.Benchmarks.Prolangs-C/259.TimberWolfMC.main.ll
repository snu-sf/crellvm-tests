; ModuleID = './MultiSource.Benchmarks.Prolangs-C/259.TimberWolfMC.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@offset = external global i32, align 4
@lapFactor = external global double, align 8
@finalShot = external global i32, align 4
@maxWeight = external global i32, align 4
@baseWeight = external global i32, align 4
@layersFactor = external global i32, align 4
@totNetLen = external global i32, align 4
@randVar = external global i32, align 4
@.str = private unnamed_addr constant [49 x i8] c"TimberWolf usage:  TimberWolf circuitName <CR> \0A\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.out\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"TimberWolfMC dated: June 29 1986\0A\00", align 1
@doPlacement = common global i32 0, align 4
@overlap = external global i32 (...)*, align 8
@overlapf = external global i32 (...)*, align 8
@overlapx = external global i32 (...)*, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"\0AThe rand generator seed was: %d\0A\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s.cel\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@blockr = external global i32, align 4
@blockl = external global i32, align 4
@bdxlength = external global i32, align 4
@blockt = external global i32, align 4
@blockb = external global i32, align 4
@bdylength = external global i32, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"bdxlength:%d    bdylength:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s.net\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s.sav\00", align 1
@funccost = external global i32, align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"\0A\0A\0ATHE ROUTE COST OF THE CURRENT PLACEMENT: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\0ATHE PENALTY OF THE CURRENT PLACEMENT: %d\0A\00", align 1
@penalty = external global i32, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"\0ATHE OVERFILL OF THE CURRENT PIN PLACEMENT: %d\0A\00", align 1
@overfill = external global i32, align 4
@wireEstimateOnly = external global i32, align 4
@T = external global double, align 8
@numcells = external global i32, align 4
@bigcell = common global i32 0, align 4
@toobig = common global i32 0, align 4
@totFunc = common global double 0.000000e+00, align 8
@cellarray = external global %struct.cellbox**, align 8
@aveCellSide = common global double 0.000000e+00, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"\0A\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"parameter adjust: route:%d  penalty:%d  overfill:%d\0A\00", align 1
@totPen = common global double 0.000000e+00, align 8
@numnets = external global i32, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"nets.per.cell:%g  ave.cell.side:%g\0A\00", align 1
@aveChanWid = external global i32, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"\0A\0AOVERLAP FACTOR (COMPUTED) : %f\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"MEAN AND STANDARD DEVIATION OF SQRT OF CELL AREA:\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"MEAN: %g   STANDARD DEVIATION: %g\0A\00", align 1
@rangeLimit = common global i32 0, align 4
@Tsave = common global double 0.000000e+00, align 8
@.str.21 = private unnamed_addr constant [45 x i8] c"\0A\0A\0AThe New Cost Values after readjustment:\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"route:%d  penalty:%d  overfill:%d\0A\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%s.res\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"restart file: %s  wasn't present\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"reading data from %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"\0A\0ATHE PENALTY OF THE CURRENT PLACEMENT: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"\0A\0ATHE OVERFILL OF THE CURRENT PIN PLACEMENT: %d\0A\00", align 1
@cost_only = common global i32 0, align 4
@.str.28 = private unnamed_addr constant [48 x i8] c"\0ATimberWolfMC Cell Placement Ready for Action\0A\0A\00", align 1
@numpads = external global i32, align 4
@attpercell = common global i32 0, align 4
@attmax = external global i32, align 4
@choose = common global i32 0, align 4
@doChannelGraph = common global i32 0, align 4
@doGlobalRoute = common global i32 0, align 4
@.str.29 = private unnamed_addr constant [42 x i8] c"\0A\0A************************************ \0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"TimberWolfMC has completed its mission\0A\00", align 1
@spotXhash = common global i32 0, align 4
@spotYhash = common global i32 0, align 4
@spotSize = common global i32 0, align 4
@numXspots = common global i32 0, align 4
@numYspots = common global i32 0, align 4
@.str.31 = private unnamed_addr constant [34 x i8] c"numXspots:%d       numYspots:%d\0A\0A\00", align 1
@spots = common global i8** null, align 8
@spotPenalty = common global i32 0, align 4
@spot_control = common global double 0.000000e+00, align 8
@.str.32 = private unnamed_addr constant [27 x i8] c"Value of Spot Control: %f\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Value of Spot Size: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Initial Value of Spot Penalty: %d\0A\0A\00", align 1
@chipaspect = common global double 0.000000e+00, align 8
@iwire = common global i32 0, align 4
@iwirex = common global i32 0, align 4
@iwirey = common global i32 0, align 4
@icost = common global i32 0, align 4
@fwire = common global i32 0, align 4
@fwirex = common global i32 0, align 4
@fwirey = common global i32 0, align 4
@fcost = common global i32 0, align 4
@doCompaction = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca [1024 x i8], align 16
  %attempts = alloca i32, align 4
  %padflippers = alloca i32, align 4
  %cell = alloca i32, align 4
  %i = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %temp1 = alloca double, align 8
  %temp2 = alloca double, align 8
  %fraction = alloca double, align 8
  %ratio = alloca double, align 8
  %aveCside = alloca double, align 8
  %variance = alloca double, align 8
  %standardDev = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* @offset, align 4
  store double 1.000000e+00, double* @lapFactor, align 8
  store i32 0, i32* @finalShot, align 4
  store i32 2, i32* @maxWeight, align 4
  store i32 1, i32* @baseWeight, align 4
  store i32 1, i32* @layersFactor, align 4
  store i32 0, i32* @totNetLen, align 4
  store i32 -1, i32* @randVar, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  %add = add i64 %call1, 1
  %mul = mul i64 %add, 1
  %call2 = call noalias i8* @malloc(i64 %mul) #7
  store i8* %call2, i8** @cktName, align 8
  %3 = load i8*, i8** @cktName, align 8
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %5) #7
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %6 = load i8*, i8** @cktName, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %6) #7
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call7 = call %struct._IO_FILE* @fopen(i8* %arraydecay6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** @fpo, align 8
  %cmp8 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay10)
  call void @exit(i32 0) #5
  unreachable

if.end.12:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  call void @readpar()
  %8 = load i32, i32* @doPlacement, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.14, label %if.else.341

if.then.14:                                       ; preds = %if.end.12
  store i32 (...)* @woverlap, i32 (...)** @overlap, align 8
  store i32 (...)* @woverlapf, i32 (...)** @overlapf, align 8
  store i32 (...)* @woverlapx, i32 (...)** @overlapx, align 8
  %9 = load i32, i32* @randVar, align 4
  %cmp15 = icmp eq i32 %9, -1
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.14
  %call17 = call i64 @time(i64* null) #7
  %conv = trunc i64 %call17 to i32
  store i32 %conv, i32* @randVar, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.14
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %11 = load i32, i32* @randVar, align 4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call20 = call i32 @fflush(%struct._IO_FILE* %12)
  %arraydecay21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %13 = load i8*, i8** @cktName, align 8
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %13) #7
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call24 = call %struct._IO_FILE* @fopen(i8* %arraydecay23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call24, %struct._IO_FILE** %fp, align 8
  %cmp25 = icmp eq %struct._IO_FILE* %call24, null
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.18
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay28)
  call void @exit(i32 0) #5
  unreachable

if.end.30:                                        ; preds = %if.end.18
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @readcells(%struct._IO_FILE* %15)
  call void @scrapnet()
  call void @config1()
  %16 = load i32, i32* @blockr, align 4
  %17 = load i32, i32* @blockl, align 4
  %sub = sub nsw i32 %16, %17
  store i32 %sub, i32* @bdxlength, align 4
  %18 = load i32, i32* @blockt, align 4
  %19 = load i32, i32* @blockb, align 4
  %sub31 = sub nsw i32 %18, %19
  store i32 %sub31, i32* @bdylength, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %21 = load i32, i32* @bdxlength, align 4
  %22 = load i32, i32* @bdylength, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %21, i32 %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call33 = call i32 @fflush(%struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %24)
  %arraydecay35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %25 = load i8*, i8** @cktName, align 8
  %call36 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* %25) #7
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call38 = call %struct._IO_FILE* @fopen(i8* %arraydecay37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call38, %struct._IO_FILE** %fp, align 8
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.30
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay42)
  call void @exit(i32 0) #5
  unreachable

if.end.44:                                        ; preds = %if.end.30
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @readnets(%struct._IO_FILE* %27)
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %28 = load i8*, i8** @cktName, align 8
  %call46 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* %28) #7
  %arraydecay47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call48 = call %struct._IO_FILE* @fopen(i8* %arraydecay47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call48, %struct._IO_FILE** %fp, align 8
  %cmp49 = icmp eq %struct._IO_FILE* %call48, null
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.44
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay52)
  call void @exit(i32 0) #5
  unreachable

if.else:                                          ; preds = %if.end.44
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call54 = call i32 @fclose(%struct._IO_FILE* %30)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else
  %call56 = call i32 @findcost()
  store i32 %call56, i32* @funccost, align 4
  call void @initcheck()
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %32 = load i32, i32* @funccost, align 4
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0), i32 %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %34 = load i32, i32* @penalty, align 4
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %36 = load i32, i32* @overfill, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call60 = call i32 @fflush(%struct._IO_FILE* %37)
  %call61 = call double (...) @analyze()
  store double %call61, double* %ratio, align 8
  %38 = load i32, i32* @wireEstimateOnly, align 4
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.55
  call void @exit(i32 0) #5
  unreachable

if.end.64:                                        ; preds = %if.end.55
  store double 1.000000e+09, double* @T, align 8
  %39 = load i32, i32* @numcells, align 4
  %mul65 = mul nsw i32 %39, 11
  store i32 %mul65, i32* @bigcell, align 4
  %40 = load i32, i32* @bigcell, align 4
  %add66 = add nsw i32 %40, 1
  store i32 %add66, i32* @toobig, align 4
  %41 = load i32, i32* @numcells, align 4
  %mul67 = mul nsw i32 100, %41
  %call68 = call i32 @testloop(i32 %mul67)
  store i32 %call68, i32* %attempts, align 4
  %42 = load double, double* @totFunc, align 8
  %43 = load i32, i32* %attempts, align 4
  %conv69 = sitofp i32 %43 to double
  %div = fdiv double %42, %conv69
  %44 = load double, double* %ratio, align 8
  %div70 = fdiv double %div, %44
  %conv71 = fptosi double %div70 to i32
  store i32 %conv71, i32* @totNetLen, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.64
  %45 = load i32, i32* %cell, align 4
  %46 = load i32, i32* @numcells, align 4
  %cmp72 = icmp sle i32 %45, %46
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx74 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %48, i64 %idxprom
  %49 = load %struct.cellbox*, %struct.cellbox** %arrayidx74, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %49, i32 0, i32 10
  %50 = load i32, i32* %softflag, align 4
  %cmp75 = icmp eq i32 %50, 1
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %52 = load i32, i32* %cell, align 4
  %inc79 = add nsw i32 %52, 1
  store i32 %inc79, i32* %cell, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i32, i32* %i, align 4
  %conv80 = sitofp i32 %53 to double
  %54 = load i32, i32* @numcells, align 4
  %conv81 = sitofp i32 %54 to double
  %div82 = fdiv double %conv80, %conv81
  store double %div82, double* %fraction, align 8
  %55 = load i32, i32* @totNetLen, align 4
  %conv83 = sitofp i32 %55 to double
  %56 = load double, double* %fraction, align 8
  %57 = load i32, i32* @numcells, align 4
  %conv84 = sitofp i32 %57 to double
  %call85 = call double @sqrt(double %conv84) #7
  %div86 = fdiv double %56, %call85
  %add87 = fadd double 1.000000e+00, %div86
  %div88 = fdiv double %conv83, %add87
  store double %div88, double* %temp1, align 8
  %58 = load double, double* %temp1, align 8
  %conv89 = fptosi double %58 to i32
  store i32 %conv89, i32* @totNetLen, align 4
  call void @config2()
  %59 = load i32, i32* @blockr, align 4
  %60 = load i32, i32* @blockl, align 4
  %sub90 = sub nsw i32 %59, %60
  store i32 %sub90, i32* @bdxlength, align 4
  %61 = load i32, i32* @blockt, align 4
  %62 = load i32, i32* @blockb, align 4
  %sub91 = sub nsw i32 %61, %62
  store i32 %sub91, i32* @bdylength, align 4
  %63 = load i32, i32* @bdxlength, align 4
  %conv92 = sitofp i32 %63 to double
  %64 = load i32, i32* @bdylength, align 4
  %conv93 = sitofp i32 %64 to double
  %mul94 = fmul double %conv92, %conv93
  %65 = load i32, i32* @numcells, align 4
  %conv95 = sitofp i32 %65 to double
  %div96 = fdiv double %mul94, %conv95
  store double %div96, double* %temp2, align 8
  %66 = load double, double* %temp2, align 8
  %call97 = call double @sqrt(double %66) #7
  store double %call97, double* @aveCellSide, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %68 = load i32, i32* @bdxlength, align 4
  %69 = load i32, i32* @bdylength, align 4
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %68, i32 %69)
  %call99 = call i32 @findcost()
  store i32 %call99, i32* @funccost, align 4
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %72 = load i32, i32* @funccost, align 4
  %73 = load i32, i32* @penalty, align 4
  %74 = load i32, i32* @overfill, align 4
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i32 %72, i32 %73, i32 %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call102 = call i32 @fflush(%struct._IO_FILE* %75)
  %76 = load i32, i32* @numcells, align 4
  %mul103 = mul nsw i32 %76, 11
  store i32 %mul103, i32* @bigcell, align 4
  %77 = load i32, i32* @bigcell, align 4
  %add104 = add nsw i32 %77, 1
  store i32 %add104, i32* @toobig, align 4
  %78 = load i32, i32* @numcells, align 4
  %mul105 = mul nsw i32 100, %78
  %call106 = call i32 @test2loop(i32 %mul105)
  store i32 %call106, i32* %attempts, align 4
  %79 = load i32, i32* %attempts, align 4
  %conv107 = sitofp i32 %79 to double
  %80 = load double, double* @totFunc, align 8
  %div108 = fdiv double %80, %conv107
  store double %div108, double* @totFunc, align 8
  %81 = load i32, i32* %attempts, align 4
  %conv109 = sitofp i32 %81 to double
  %82 = load double, double* @totPen, align 8
  %div110 = fdiv double %82, %conv109
  store double %div110, double* @totPen, align 8
  %83 = load double, double* @totFunc, align 8
  %mul111 = fmul double 4.000000e-01, %83
  %84 = load double, double* @totPen, align 8
  %div112 = fdiv double %mul111, %84
  store double %div112, double* @lapFactor, align 8
  %85 = load i32, i32* @numnets, align 4
  %conv113 = sitofp i32 %85 to double
  %86 = load i32, i32* @numcells, align 4
  %conv114 = sitofp i32 %86 to double
  %div115 = fdiv double %conv113, %conv114
  store double %div115, double* %temp1, align 8
  %87 = load i32, i32* @bdxlength, align 4
  %conv116 = sitofp i32 %87 to double
  %88 = load i32, i32* @bdylength, align 4
  %conv117 = sitofp i32 %88 to double
  %mul118 = fmul double %conv116, %conv117
  %89 = load i32, i32* @numcells, align 4
  %conv119 = sitofp i32 %89 to double
  %div120 = fdiv double %mul118, %conv119
  store double %div120, double* %temp2, align 8
  %90 = load double, double* %temp2, align 8
  %call121 = call double @sqrt(double %90) #7
  store double %call121, double* %temp2, align 8
  %91 = load double, double* %temp2, align 8
  %div122 = fdiv double %91, 1.270000e+02
  %mul123 = fmul double 1.000000e+05, %div122
  store double %mul123, double* @T, align 8
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %93 = load double, double* %temp1, align 8
  %94 = load double, double* %temp2, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), double %93, double %94)
  %95 = load i32, i32* @aveChanWid, align 4
  %conv125 = sitofp i32 %95 to double
  %mul126 = fmul double 1.800000e+00, %conv125
  %96 = load double, double* @aveCellSide, align 8
  %div127 = fdiv double %mul126, %96
  store double %div127, double* %temp1, align 8
  %97 = load double, double* %temp1, align 8
  %cmp128 = fcmp ole double %97, 8.000000e-02
  br i1 %cmp128, label %if.then.130, label %if.else.145

if.then.130:                                      ; preds = %for.end
  %98 = load double, double* %temp1, align 8
  %call131 = call double @log10(double %98) #7
  %sub132 = fsub double -0.000000e+00, %call131
  %sub133 = fsub double %sub132, 1.000000e-01
  store double %sub133, double* %temp1, align 8
  %99 = load double, double* %temp1, align 8
  %call134 = call double @pow(double 1.000000e+01, double %99) #7
  %mul135 = fmul double 1.000000e-03, %call134
  %sub136 = fsub double %mul135, 2.000000e-02
  store double %sub136, double* %temp1, align 8
  %100 = load double, double* @lapFactor, align 8
  %101 = load double, double* %temp1, align 8
  %cmp137 = fcmp olt double %100, %101
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.then.130
  %102 = load double, double* %temp1, align 8
  store double %102, double* @lapFactor, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %if.then.130
  %103 = load double, double* @lapFactor, align 8
  %cmp141 = fcmp olt double %103, 2.000000e-02
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.140
  store double 2.000000e-02, double* @lapFactor, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.end.140
  br label %if.end.150

if.else.145:                                      ; preds = %for.end
  %104 = load double, double* @lapFactor, align 8
  %cmp146 = fcmp olt double %104, 2.000000e-02
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.else.145
  store double 2.000000e-02, double* @lapFactor, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.else.145
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.144
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %106 = load double, double* @lapFactor, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), double %106)
  %107 = load double, double* @lapFactor, align 8
  %div152 = fdiv double 4.000000e+00, %107
  %conv153 = fptosi double %div152 to i32
  store i32 %conv153, i32* @offset, align 4
  store double 0.000000e+00, double* %aveCside, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.200, %if.end.150
  %108 = load i32, i32* %cell, align 4
  %109 = load i32, i32* @numcells, align 4
  %cmp155 = icmp sle i32 %108, %109
  br i1 %cmp155, label %for.body.157, label %for.end.202

for.body.157:                                     ; preds = %for.cond.154
  %110 = load i32, i32* %cell, align 4
  %idxprom158 = sext i32 %110 to i64
  %111 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx159 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %111, i64 %idxprom158
  %112 = load %struct.cellbox*, %struct.cellbox** %arrayidx159, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i32 0, i32 5
  %113 = load i32, i32* %orient, align 4
  %idxprom160 = sext i32 %113 to i64
  %114 = load i32, i32* %cell, align 4
  %idxprom161 = sext i32 %114 to i64
  %115 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx162 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %115, i64 %idxprom161
  %116 = load %struct.cellbox*, %struct.cellbox** %arrayidx162, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %116, i32 0, i32 21
  %arrayidx163 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom160
  %117 = load %struct.tilebox*, %struct.tilebox** %arrayidx163, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %117, i32 0, i32 10
  %118 = load i32, i32* %right, align 4
  %119 = load i32, i32* %cell, align 4
  %idxprom164 = sext i32 %119 to i64
  %120 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx165 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %120, i64 %idxprom164
  %121 = load %struct.cellbox*, %struct.cellbox** %arrayidx165, align 8
  %orient166 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %121, i32 0, i32 5
  %122 = load i32, i32* %orient166, align 4
  %idxprom167 = sext i32 %122 to i64
  %123 = load i32, i32* %cell, align 4
  %idxprom168 = sext i32 %123 to i64
  %124 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx169 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %124, i64 %idxprom168
  %125 = load %struct.cellbox*, %struct.cellbox** %arrayidx169, align 8
  %config170 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %125, i32 0, i32 21
  %arrayidx171 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config170, i32 0, i64 %idxprom167
  %126 = load %struct.tilebox*, %struct.tilebox** %arrayidx171, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i32 0, i32 9
  %127 = load i32, i32* %left, align 4
  %sub172 = sub nsw i32 %118, %127
  store i32 %sub172, i32* %w, align 4
  %128 = load i32, i32* %cell, align 4
  %idxprom173 = sext i32 %128 to i64
  %129 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx174 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %129, i64 %idxprom173
  %130 = load %struct.cellbox*, %struct.cellbox** %arrayidx174, align 8
  %orient175 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %130, i32 0, i32 5
  %131 = load i32, i32* %orient175, align 4
  %idxprom176 = sext i32 %131 to i64
  %132 = load i32, i32* %cell, align 4
  %idxprom177 = sext i32 %132 to i64
  %133 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx178 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %133, i64 %idxprom177
  %134 = load %struct.cellbox*, %struct.cellbox** %arrayidx178, align 8
  %config179 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %134, i32 0, i32 21
  %arrayidx180 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config179, i32 0, i64 %idxprom176
  %135 = load %struct.tilebox*, %struct.tilebox** %arrayidx180, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %135, i32 0, i32 12
  %136 = load i32, i32* %top, align 4
  %137 = load i32, i32* %cell, align 4
  %idxprom181 = sext i32 %137 to i64
  %138 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx182 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %138, i64 %idxprom181
  %139 = load %struct.cellbox*, %struct.cellbox** %arrayidx182, align 8
  %orient183 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %139, i32 0, i32 5
  %140 = load i32, i32* %orient183, align 4
  %idxprom184 = sext i32 %140 to i64
  %141 = load i32, i32* %cell, align 4
  %idxprom185 = sext i32 %141 to i64
  %142 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx186 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %142, i64 %idxprom185
  %143 = load %struct.cellbox*, %struct.cellbox** %arrayidx186, align 8
  %config187 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %143, i32 0, i32 21
  %arrayidx188 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config187, i32 0, i64 %idxprom184
  %144 = load %struct.tilebox*, %struct.tilebox** %arrayidx188, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %144, i32 0, i32 11
  %145 = load i32, i32* %bottom, align 4
  %sub189 = sub nsw i32 %136, %145
  store i32 %sub189, i32* %h, align 4
  %146 = load i32, i32* @maxWeight, align 4
  %147 = load i32, i32* @maxWeight, align 4
  %mul190 = mul nsw i32 %146, %147
  %148 = load i32, i32* @aveChanWid, align 4
  %mul191 = mul nsw i32 %mul190, %148
  %149 = load i32, i32* %w, align 4
  %add192 = add nsw i32 %149, %mul191
  store i32 %add192, i32* %w, align 4
  %150 = load i32, i32* @maxWeight, align 4
  %151 = load i32, i32* @maxWeight, align 4
  %mul193 = mul nsw i32 %150, %151
  %152 = load i32, i32* @aveChanWid, align 4
  %mul194 = mul nsw i32 %mul193, %152
  %153 = load i32, i32* %h, align 4
  %add195 = add nsw i32 %153, %mul194
  store i32 %add195, i32* %h, align 4
  %154 = load i32, i32* %w, align 4
  %155 = load i32, i32* %h, align 4
  %mul196 = mul nsw i32 %154, %155
  %conv197 = sitofp i32 %mul196 to double
  %call198 = call double @sqrt(double %conv197) #7
  %156 = load double, double* %aveCside, align 8
  %add199 = fadd double %156, %call198
  store double %add199, double* %aveCside, align 8
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.157
  %157 = load i32, i32* %cell, align 4
  %inc201 = add nsw i32 %157, 1
  store i32 %inc201, i32* %cell, align 4
  br label %for.cond.154

for.end.202:                                      ; preds = %for.cond.154
  %158 = load i32, i32* @numcells, align 4
  %conv203 = sitofp i32 %158 to double
  %159 = load double, double* %aveCside, align 8
  %div204 = fdiv double %159, %conv203
  store double %div204, double* %aveCside, align 8
  store double 0.000000e+00, double* %variance, align 8
  store i32 1, i32* %cell, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.263, %for.end.202
  %160 = load i32, i32* %cell, align 4
  %161 = load i32, i32* @numcells, align 4
  %cmp206 = icmp sle i32 %160, %161
  br i1 %cmp206, label %for.body.208, label %for.end.265

for.body.208:                                     ; preds = %for.cond.205
  %162 = load i32, i32* %cell, align 4
  %idxprom209 = sext i32 %162 to i64
  %163 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx210 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %163, i64 %idxprom209
  %164 = load %struct.cellbox*, %struct.cellbox** %arrayidx210, align 8
  %orient211 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %164, i32 0, i32 5
  %165 = load i32, i32* %orient211, align 4
  %idxprom212 = sext i32 %165 to i64
  %166 = load i32, i32* %cell, align 4
  %idxprom213 = sext i32 %166 to i64
  %167 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx214 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %167, i64 %idxprom213
  %168 = load %struct.cellbox*, %struct.cellbox** %arrayidx214, align 8
  %config215 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %168, i32 0, i32 21
  %arrayidx216 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config215, i32 0, i64 %idxprom212
  %169 = load %struct.tilebox*, %struct.tilebox** %arrayidx216, align 8
  %right217 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %169, i32 0, i32 10
  %170 = load i32, i32* %right217, align 4
  %171 = load i32, i32* %cell, align 4
  %idxprom218 = sext i32 %171 to i64
  %172 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx219 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %172, i64 %idxprom218
  %173 = load %struct.cellbox*, %struct.cellbox** %arrayidx219, align 8
  %orient220 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %173, i32 0, i32 5
  %174 = load i32, i32* %orient220, align 4
  %idxprom221 = sext i32 %174 to i64
  %175 = load i32, i32* %cell, align 4
  %idxprom222 = sext i32 %175 to i64
  %176 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx223 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %176, i64 %idxprom222
  %177 = load %struct.cellbox*, %struct.cellbox** %arrayidx223, align 8
  %config224 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %177, i32 0, i32 21
  %arrayidx225 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config224, i32 0, i64 %idxprom221
  %178 = load %struct.tilebox*, %struct.tilebox** %arrayidx225, align 8
  %left226 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %178, i32 0, i32 9
  %179 = load i32, i32* %left226, align 4
  %sub227 = sub nsw i32 %170, %179
  store i32 %sub227, i32* %w, align 4
  %180 = load i32, i32* %cell, align 4
  %idxprom228 = sext i32 %180 to i64
  %181 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx229 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %181, i64 %idxprom228
  %182 = load %struct.cellbox*, %struct.cellbox** %arrayidx229, align 8
  %orient230 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %182, i32 0, i32 5
  %183 = load i32, i32* %orient230, align 4
  %idxprom231 = sext i32 %183 to i64
  %184 = load i32, i32* %cell, align 4
  %idxprom232 = sext i32 %184 to i64
  %185 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx233 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %185, i64 %idxprom232
  %186 = load %struct.cellbox*, %struct.cellbox** %arrayidx233, align 8
  %config234 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i32 0, i32 21
  %arrayidx235 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config234, i32 0, i64 %idxprom231
  %187 = load %struct.tilebox*, %struct.tilebox** %arrayidx235, align 8
  %top236 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %187, i32 0, i32 12
  %188 = load i32, i32* %top236, align 4
  %189 = load i32, i32* %cell, align 4
  %idxprom237 = sext i32 %189 to i64
  %190 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx238 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %190, i64 %idxprom237
  %191 = load %struct.cellbox*, %struct.cellbox** %arrayidx238, align 8
  %orient239 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %191, i32 0, i32 5
  %192 = load i32, i32* %orient239, align 4
  %idxprom240 = sext i32 %192 to i64
  %193 = load i32, i32* %cell, align 4
  %idxprom241 = sext i32 %193 to i64
  %194 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx242 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %194, i64 %idxprom241
  %195 = load %struct.cellbox*, %struct.cellbox** %arrayidx242, align 8
  %config243 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %195, i32 0, i32 21
  %arrayidx244 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config243, i32 0, i64 %idxprom240
  %196 = load %struct.tilebox*, %struct.tilebox** %arrayidx244, align 8
  %bottom245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %196, i32 0, i32 11
  %197 = load i32, i32* %bottom245, align 4
  %sub246 = sub nsw i32 %188, %197
  store i32 %sub246, i32* %h, align 4
  %198 = load i32, i32* @maxWeight, align 4
  %199 = load i32, i32* @maxWeight, align 4
  %mul247 = mul nsw i32 %198, %199
  %200 = load i32, i32* @aveChanWid, align 4
  %mul248 = mul nsw i32 %mul247, %200
  %201 = load i32, i32* %w, align 4
  %add249 = add nsw i32 %201, %mul248
  store i32 %add249, i32* %w, align 4
  %202 = load i32, i32* @maxWeight, align 4
  %203 = load i32, i32* @maxWeight, align 4
  %mul250 = mul nsw i32 %202, %203
  %204 = load i32, i32* @aveChanWid, align 4
  %mul251 = mul nsw i32 %mul250, %204
  %205 = load i32, i32* %h, align 4
  %add252 = add nsw i32 %205, %mul251
  store i32 %add252, i32* %h, align 4
  %206 = load i32, i32* %w, align 4
  %207 = load i32, i32* %h, align 4
  %mul253 = mul nsw i32 %206, %207
  %conv254 = sitofp i32 %mul253 to double
  %call255 = call double @sqrt(double %conv254) #7
  %208 = load double, double* %aveCside, align 8
  %sub256 = fsub double %call255, %208
  %209 = load i32, i32* %w, align 4
  %210 = load i32, i32* %h, align 4
  %mul257 = mul nsw i32 %209, %210
  %conv258 = sitofp i32 %mul257 to double
  %call259 = call double @sqrt(double %conv258) #7
  %211 = load double, double* %aveCside, align 8
  %sub260 = fsub double %call259, %211
  %mul261 = fmul double %sub256, %sub260
  %212 = load double, double* %variance, align 8
  %add262 = fadd double %212, %mul261
  store double %add262, double* %variance, align 8
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.body.208
  %213 = load i32, i32* %cell, align 4
  %inc264 = add nsw i32 %213, 1
  store i32 %inc264, i32* %cell, align 4
  br label %for.cond.205

for.end.265:                                      ; preds = %for.cond.205
  %214 = load i32, i32* @numcells, align 4
  %conv266 = sitofp i32 %214 to double
  %215 = load double, double* %variance, align 8
  %div267 = fdiv double %215, %conv266
  store double %div267, double* %variance, align 8
  %216 = load double, double* %variance, align 8
  %call268 = call double @sqrt(double %216) #7
  store double %call268, double* %standardDev, align 8
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0))
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %219 = load double, double* %aveCside, align 8
  %220 = load double, double* %standardDev, align 8
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), double %219, double %220)
  %221 = load double, double* %aveCside, align 8
  %222 = load double, double* %standardDev, align 8
  %mul271 = fmul double 2.000000e+00, %222
  %add272 = fadd double %221, %mul271
  %conv273 = fptosi double %add272 to i32
  store i32 %conv273, i32* @rangeLimit, align 4
  %223 = load double, double* @T, align 8
  %cmp274 = fcmp olt double %223, 1.000000e+05
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %for.end.265
  store double 1.000000e+05, double* @T, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.276, %for.end.265
  %224 = load double, double* @T, align 8
  store double %224, double* @Tsave, align 8
  %call278 = call i32 @findcost()
  store i32 %call278, i32* @funccost, align 4
  %225 = load double, double* @T, align 8
  %226 = load i32, i32* @funccost, align 4
  %conv279 = sitofp i32 %226 to double
  %div280 = fdiv double %conv279, 1.000000e+01
  %cmp281 = fcmp ogt double %225, %div280
  br i1 %cmp281, label %if.then.283, label %if.end.287

if.then.283:                                      ; preds = %if.end.277
  %227 = load i32, i32* @funccost, align 4
  %conv284 = sitofp i32 %227 to double
  %div285 = fdiv double %conv284, 1.000000e+01
  store double %div285, double* @T, align 8
  %228 = load double, double* @T, align 8
  store double %228, double* @Tsave, align 8
  %call286 = call i32 @findcost()
  store i32 %call286, i32* @funccost, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.283, %if.end.277
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0))
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %231 = load i32, i32* @funccost, align 4
  %232 = load i32, i32* @penalty, align 4
  %233 = load i32, i32* @overfill, align 4
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), i32 %231, i32 %232, i32 %233)
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call290 = call i32 @fflush(%struct._IO_FILE* %234)
  %arraydecay291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %235 = load i8*, i8** @cktName, align 8
  %call292 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* %235) #7
  %arraydecay293 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call294 = call %struct._IO_FILE* @fopen(i8* %arraydecay293, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call294, %struct._IO_FILE** %fp, align 8
  %cmp295 = icmp eq %struct._IO_FILE* %call294, null
  br i1 %cmp295, label %if.then.297, label %if.else.300

if.then.297:                                      ; preds = %if.end.287
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay298 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i8* %arraydecay298)
  br label %if.end.307

if.else.300:                                      ; preds = %if.end.287
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay301 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay301)
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @TW_oldinput(%struct._IO_FILE* %238)
  %call303 = call i32 @findcost()
  store i32 %call303, i32* @funccost, align 4
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %240 = load i32, i32* @funccost, align 4
  %call304 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0), i32 %240)
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %242 = load i32, i32* @penalty, align 4
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i32 0, i32 0), i32 %242)
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %244 = load i32, i32* @overfill, align 4
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %243, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0), i32 %244)
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.300, %if.then.297
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call308 = call i32 @fflush(%struct._IO_FILE* %245)
  %246 = load i32, i32* @cost_only, align 4
  %tobool309 = icmp ne i32 %246, 0
  br i1 %tobool309, label %if.end.340, label %if.then.310

if.then.310:                                      ; preds = %if.end.307
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %padflippers, align 4
  %248 = load i32, i32* @numcells, align 4
  %add312 = add nsw i32 %248, 1
  store i32 %add312, i32* %cell, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.325, %if.then.310
  %249 = load i32, i32* %cell, align 4
  %250 = load i32, i32* @numcells, align 4
  %251 = load i32, i32* @numpads, align 4
  %add314 = add nsw i32 %250, %251
  %cmp315 = icmp sle i32 %249, %add314
  br i1 %cmp315, label %for.body.317, label %for.end.327

for.body.317:                                     ; preds = %for.cond.313
  %252 = load i32, i32* %cell, align 4
  %idxprom318 = sext i32 %252 to i64
  %253 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx319 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %253, i64 %idxprom318
  %254 = load %struct.cellbox*, %struct.cellbox** %arrayidx319, align 8
  %class = getelementptr inbounds %struct.cellbox, %struct.cellbox* %254, i32 0, i32 1
  %255 = load i32, i32* %class, align 4
  %cmp320 = icmp sgt i32 %255, 0
  br i1 %cmp320, label %if.then.322, label %if.end.324

if.then.322:                                      ; preds = %for.body.317
  %256 = load i32, i32* %padflippers, align 4
  %inc323 = add nsw i32 %256, 1
  store i32 %inc323, i32* %padflippers, align 4
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.322, %for.body.317
  br label %for.inc.325

for.inc.325:                                      ; preds = %if.end.324
  %257 = load i32, i32* %cell, align 4
  %inc326 = add nsw i32 %257, 1
  store i32 %inc326, i32* %cell, align 4
  br label %for.cond.313

for.end.327:                                      ; preds = %for.cond.313
  %258 = load i32, i32* @attpercell, align 4
  %259 = load i32, i32* @numcells, align 4
  %260 = load i32, i32* %padflippers, align 4
  %add328 = add nsw i32 %259, %260
  %mul329 = mul nsw i32 %258, %add328
  store i32 %mul329, i32* @attmax, align 4
  %261 = load i32, i32* %padflippers, align 4
  %cmp330 = icmp sge i32 %261, 2
  br i1 %cmp330, label %if.then.332, label %if.else.336

if.then.332:                                      ; preds = %for.end.327
  %262 = load i32, i32* @numcells, align 4
  %263 = load i32, i32* @numpads, align 4
  %add333 = add nsw i32 %262, %263
  %mul334 = mul nsw i32 %add333, 11
  store i32 %mul334, i32* @bigcell, align 4
  %264 = load i32, i32* @numcells, align 4
  %265 = load i32, i32* @numpads, align 4
  %add335 = add nsw i32 %264, %265
  store i32 %add335, i32* @choose, align 4
  br label %if.end.338

if.else.336:                                      ; preds = %for.end.327
  %266 = load i32, i32* @numcells, align 4
  %mul337 = mul nsw i32 %266, 11
  store i32 %mul337, i32* @bigcell, align 4
  %267 = load i32, i32* @numcells, align 4
  store i32 %267, i32* @choose, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.else.336, %if.then.332
  %268 = load i32, i32* @bigcell, align 4
  %add339 = add nsw i32 %268, 1
  store i32 %add339, i32* @toobig, align 4
  call void @prepSpots()
  call void @utemp()
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.338, %if.end.307
  call void @finalout()
  call void @finalcheck()
  call void @twstats()
  br label %if.end.352

if.else.341:                                      ; preds = %if.end.12
  %269 = load i32, i32* @doChannelGraph, align 4
  %tobool342 = icmp ne i32 %269, 0
  br i1 %tobool342, label %if.then.343, label %if.else.347

if.then.343:                                      ; preds = %if.else.341
  call void @gmain()
  %270 = load i32, i32* @doGlobalRoute, align 4
  %tobool344 = icmp ne i32 %270, 0
  br i1 %tobool344, label %if.then.345, label %if.end.346

if.then.345:                                      ; preds = %if.then.343
  call void @rmain()
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.345, %if.then.343
  br label %if.end.351

if.else.347:                                      ; preds = %if.else.341
  %271 = load i32, i32* @doGlobalRoute, align 4
  %tobool348 = icmp ne i32 %271, 0
  br i1 %tobool348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.else.347
  call void @rmain()
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.else.347
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.end.346
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.end.340
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %272, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0))
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call354 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0))
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call355 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0))
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call356 = call i32 @fclose(%struct._IO_FILE* %275)
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %276 = load i32, i32* %retval
  ret i32 %276
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @readpar() #1

declare i32 @woverlap(...) #1

declare i32 @woverlapf(...) #1

declare i32 @woverlapx(...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @readcells(%struct._IO_FILE*) #1

declare void @scrapnet() #1

declare void @config1() #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @readnets(%struct._IO_FILE*) #1

declare i32 @findcost() #1

declare void @initcheck() #1

declare double @analyze(...) #1

declare i32 @testloop(i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @config2() #1

declare i32 @test2loop(i32) #1

; Function Attrs: nounwind
declare double @log10(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare void @TW_oldinput(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @prepSpots() #0 {
entry:
  %tileptr = alloca %struct.tilebox*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %s = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cell = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %lspot = alloca i32, align 4
  %rspot = alloca i32, align 4
  %bspot = alloca i32, align 4
  %tspot = alloca i32, align 4
  store i32 10000000, i32* %min, align 4
  store i32 -10000000, i32* %max, align 4
  store i32 1, i32* %cell, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cell, align 4
  %1 = load i32, i32* @numcells, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cell, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %3, i64 %idxprom
  %4 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %4, i32 0, i32 5
  %5 = load i32, i32* %orient, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32, i32* %cell, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx3 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %7, i64 %idxprom2
  %8 = load %struct.cellbox*, %struct.cellbox** %arrayidx3, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %8, i32 0, i32 21
  %arrayidx4 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom1
  %9 = load %struct.tilebox*, %struct.tilebox** %arrayidx4, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %9, i32 0, i32 10
  %10 = load i32, i32* %right, align 4
  %11 = load i32, i32* %cell, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %12, i64 %idxprom5
  %13 = load %struct.cellbox*, %struct.cellbox** %arrayidx6, align 8
  %orient7 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 5
  %14 = load i32, i32* %orient7, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load i32, i32* %cell, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx10 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %16, i64 %idxprom9
  %17 = load %struct.cellbox*, %struct.cellbox** %arrayidx10, align 8
  %config11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 21
  %arrayidx12 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config11, i32 0, i64 %idxprom8
  %18 = load %struct.tilebox*, %struct.tilebox** %arrayidx12, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %18, i32 0, i32 9
  %19 = load i32, i32* %left, align 4
  %sub = sub nsw i32 %10, %19
  store i32 %sub, i32* %w, align 4
  %20 = load i32, i32* %cell, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx14 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %21, i64 %idxprom13
  %22 = load %struct.cellbox*, %struct.cellbox** %arrayidx14, align 8
  %orient15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i32 0, i32 5
  %23 = load i32, i32* %orient15, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32, i32* %cell, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx18 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %25, i64 %idxprom17
  %26 = load %struct.cellbox*, %struct.cellbox** %arrayidx18, align 8
  %config19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 21
  %arrayidx20 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config19, i32 0, i64 %idxprom16
  %27 = load %struct.tilebox*, %struct.tilebox** %arrayidx20, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 12
  %28 = load i32, i32* %top, align 4
  %29 = load i32, i32* %cell, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx22 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %30, i64 %idxprom21
  %31 = load %struct.cellbox*, %struct.cellbox** %arrayidx22, align 8
  %orient23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %31, i32 0, i32 5
  %32 = load i32, i32* %orient23, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load i32, i32* %cell, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx26 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %34, i64 %idxprom25
  %35 = load %struct.cellbox*, %struct.cellbox** %arrayidx26, align 8
  %config27 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %35, i32 0, i32 21
  %arrayidx28 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config27, i32 0, i64 %idxprom24
  %36 = load %struct.tilebox*, %struct.tilebox** %arrayidx28, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 11
  %37 = load i32, i32* %bottom, align 4
  %sub29 = sub nsw i32 %28, %37
  store i32 %sub29, i32* %h, align 4
  %38 = load i32, i32* %w, align 4
  %39 = load i32, i32* %h, align 4
  %cmp30 = icmp slt i32 %38, %39
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %40 = load i32, i32* %w, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %41 = load i32, i32* %h, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %s, align 4
  %42 = load i32, i32* %s, align 4
  %43 = load i32, i32* %min, align 4
  %cmp31 = icmp slt i32 %42, %43
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end
  %44 = load i32, i32* %s, align 4
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end
  %45 = load i32, i32* %min, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.32
  %cond35 = phi i32 [ %44, %cond.true.32 ], [ %45, %cond.false.33 ]
  store i32 %cond35, i32* %min, align 4
  %46 = load i32, i32* %min, align 4
  %cmp36 = icmp sgt i32 %46, 1
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.34
  %47 = load i32, i32* %min, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end.34
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i32 [ %47, %cond.true.37 ], [ 1, %cond.false.38 ]
  store i32 %cond40, i32* %min, align 4
  %48 = load i32, i32* %w, align 4
  %49 = load i32, i32* %h, align 4
  %cmp41 = icmp sgt i32 %48, %49
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.39
  %50 = load i32, i32* %w, align 4
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.39
  %51 = load i32, i32* %h, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ %50, %cond.true.42 ], [ %51, %cond.false.43 ]
  store i32 %cond45, i32* %s, align 4
  %52 = load i32, i32* %s, align 4
  %53 = load i32, i32* %max, align 4
  %cmp46 = icmp sge i32 %52, %53
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end.44
  %54 = load i32, i32* %s, align 4
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end.44
  %55 = load i32, i32* %max, align 4
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.47
  %cond50 = phi i32 [ %54, %cond.true.47 ], [ %55, %cond.false.48 ]
  store i32 %cond50, i32* %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.49
  %56 = load i32, i32* %cell, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %cell, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* @blockl, align 4
  %58 = load i32, i32* %max, align 4
  %sub51 = sub nsw i32 %57, %58
  store i32 %sub51, i32* @spotXhash, align 4
  %59 = load i32, i32* @blockb, align 4
  %60 = load i32, i32* %max, align 4
  %sub52 = sub nsw i32 %59, %60
  store i32 %sub52, i32* @spotYhash, align 4
  %61 = load i32, i32* %min, align 4
  %div = sdiv i32 %61, 4
  %62 = load i32, i32* @blockr, align 4
  %63 = load i32, i32* @blockl, align 4
  %sub53 = sub nsw i32 %62, %63
  %div54 = sdiv i32 %sub53, 2000
  %cmp55 = icmp sgt i32 %div, %div54
  br i1 %cmp55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %for.end
  %64 = load i32, i32* %min, align 4
  %div57 = sdiv i32 %64, 4
  br label %cond.end.61

cond.false.58:                                    ; preds = %for.end
  %65 = load i32, i32* @blockr, align 4
  %66 = load i32, i32* @blockl, align 4
  %sub59 = sub nsw i32 %65, %66
  %div60 = sdiv i32 %sub59, 2000
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.true.56
  %cond62 = phi i32 [ %div57, %cond.true.56 ], [ %div60, %cond.false.58 ]
  store i32 %cond62, i32* @spotSize, align 4
  %67 = load i32, i32* @blockr, align 4
  %68 = load i32, i32* %max, align 4
  %add = add nsw i32 %67, %68
  %69 = load i32, i32* @spotXhash, align 4
  %sub63 = sub nsw i32 %add, %69
  %70 = load i32, i32* @spotSize, align 4
  %div64 = sdiv i32 %sub63, %70
  %add65 = add nsw i32 %div64, 1
  store i32 %add65, i32* @numXspots, align 4
  %71 = load i32, i32* @blockt, align 4
  %72 = load i32, i32* %max, align 4
  %add66 = add nsw i32 %71, %72
  %73 = load i32, i32* @spotYhash, align 4
  %sub67 = sub nsw i32 %add66, %73
  %74 = load i32, i32* @spotSize, align 4
  %div68 = sdiv i32 %sub67, %74
  %add69 = add nsw i32 %div68, 1
  store i32 %add69, i32* @numYspots, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %76 = load i32, i32* @numXspots, align 4
  %77 = load i32, i32* @numYspots, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i32 %76, i32 %77)
  %78 = load i32, i32* @numXspots, align 4
  %conv = sext i32 %78 to i64
  %mul = mul i64 %conv, 8
  %call70 = call noalias i8* @malloc(i64 %mul) #7
  %79 = bitcast i8* %call70 to i8**
  store i8** %79, i8*** @spots, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.91, %cond.end.61
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* @numXspots, align 4
  %cmp72 = icmp slt i32 %80, %81
  br i1 %cmp72, label %for.body.74, label %for.end.93

for.body.74:                                      ; preds = %for.cond.71
  %82 = load i32, i32* @numYspots, align 4
  %conv75 = sext i32 %82 to i64
  %mul76 = mul i64 %conv75, 1
  %call77 = call noalias i8* @malloc(i64 %mul76) #7
  %83 = load i32, i32* %x, align 4
  %idxprom78 = sext i32 %83 to i64
  %84 = load i8**, i8*** @spots, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %84, i64 %idxprom78
  store i8* %call77, i8** %arrayidx79, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.88, %for.body.74
  %85 = load i32, i32* %y, align 4
  %86 = load i32, i32* @numYspots, align 4
  %cmp81 = icmp slt i32 %85, %86
  br i1 %cmp81, label %for.body.83, label %for.end.90

for.body.83:                                      ; preds = %for.cond.80
  %87 = load i32, i32* %y, align 4
  %idxprom84 = sext i32 %87 to i64
  %88 = load i32, i32* %x, align 4
  %idxprom85 = sext i32 %88 to i64
  %89 = load i8**, i8*** @spots, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %89, i64 %idxprom85
  %90 = load i8*, i8** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %90, i64 %idxprom84
  store i8 0, i8* %arrayidx87, align 1
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.83
  %91 = load i32, i32* %y, align 4
  %inc89 = add nsw i32 %91, 1
  store i32 %inc89, i32* %y, align 4
  br label %for.cond.80

for.end.90:                                       ; preds = %for.cond.80
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %92 = load i32, i32* %x, align 4
  %inc92 = add nsw i32 %92, 1
  store i32 %inc92, i32* %x, align 4
  br label %for.cond.71

for.end.93:                                       ; preds = %for.cond.71
  store i32 1, i32* %cell, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.161, %for.end.93
  %93 = load i32, i32* %cell, align 4
  %94 = load i32, i32* @numcells, align 4
  %cmp95 = icmp sle i32 %93, %94
  br i1 %cmp95, label %for.body.97, label %for.end.163

for.body.97:                                      ; preds = %for.cond.94
  %95 = load i32, i32* %cell, align 4
  %idxprom98 = sext i32 %95 to i64
  %96 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx99 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %96, i64 %idxprom98
  %97 = load %struct.cellbox*, %struct.cellbox** %arrayidx99, align 8
  %orient100 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %97, i32 0, i32 5
  %98 = load i32, i32* %orient100, align 4
  %idxprom101 = sext i32 %98 to i64
  %99 = load i32, i32* %cell, align 4
  %idxprom102 = sext i32 %99 to i64
  %100 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx103 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %100, i64 %idxprom102
  %101 = load %struct.cellbox*, %struct.cellbox** %arrayidx103, align 8
  %config104 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %101, i32 0, i32 21
  %arrayidx105 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config104, i32 0, i64 %idxprom101
  %102 = load %struct.tilebox*, %struct.tilebox** %arrayidx105, align 8
  store %struct.tilebox* %102, %struct.tilebox** %tileptr, align 8
  %103 = load i32, i32* %cell, align 4
  %idxprom106 = sext i32 %103 to i64
  %104 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx107 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %104, i64 %idxprom106
  %105 = load %struct.cellbox*, %struct.cellbox** %arrayidx107, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %105, i32 0, i32 2
  %106 = load i32, i32* %xcenter, align 4
  %107 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left108 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %107, i32 0, i32 9
  %108 = load i32, i32* %left108, align 4
  %add109 = add nsw i32 %106, %108
  store i32 %add109, i32* %l, align 4
  %109 = load i32, i32* %cell, align 4
  %idxprom110 = sext i32 %109 to i64
  %110 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx111 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %110, i64 %idxprom110
  %111 = load %struct.cellbox*, %struct.cellbox** %arrayidx111, align 8
  %xcenter112 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %111, i32 0, i32 2
  %112 = load i32, i32* %xcenter112, align 4
  %113 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right113 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 10
  %114 = load i32, i32* %right113, align 4
  %add114 = add nsw i32 %112, %114
  store i32 %add114, i32* %r, align 4
  %115 = load i32, i32* %cell, align 4
  %idxprom115 = sext i32 %115 to i64
  %116 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx116 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %116, i64 %idxprom115
  %117 = load %struct.cellbox*, %struct.cellbox** %arrayidx116, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %117, i32 0, i32 3
  %118 = load i32, i32* %ycenter, align 4
  %119 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom117 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i32 0, i32 11
  %120 = load i32, i32* %bottom117, align 4
  %add118 = add nsw i32 %118, %120
  store i32 %add118, i32* %b, align 4
  %121 = load i32, i32* %cell, align 4
  %idxprom119 = sext i32 %121 to i64
  %122 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx120 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %122, i64 %idxprom119
  %123 = load %struct.cellbox*, %struct.cellbox** %arrayidx120, align 8
  %ycenter121 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 3
  %124 = load i32, i32* %ycenter121, align 4
  %125 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top122 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %125, i32 0, i32 12
  %126 = load i32, i32* %top122, align 4
  %add123 = add nsw i32 %124, %126
  store i32 %add123, i32* %t, align 4
  %127 = load i32, i32* %l, align 4
  %128 = load i32, i32* %b, align 4
  %129 = load i32, i32* %t, align 4
  %130 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 1
  %131 = load double, double* %lweight, align 8
  %call124 = call i32 @wireestx(i32 %127, i32 %128, i32 %129, double %131)
  %132 = load i32, i32* %l, align 4
  %sub125 = sub nsw i32 %132, %call124
  store i32 %sub125, i32* %l, align 4
  %133 = load i32, i32* %r, align 4
  %134 = load i32, i32* %b, align 4
  %135 = load i32, i32* %t, align 4
  %136 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %136, i32 0, i32 2
  %137 = load double, double* %rweight, align 8
  %call126 = call i32 @wireestx(i32 %133, i32 %134, i32 %135, double %137)
  %138 = load i32, i32* %r, align 4
  %add127 = add nsw i32 %138, %call126
  store i32 %add127, i32* %r, align 4
  %139 = load i32, i32* %b, align 4
  %140 = load i32, i32* %l, align 4
  %141 = load i32, i32* %r, align 4
  %142 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %142, i32 0, i32 3
  %143 = load double, double* %bweight, align 8
  %call128 = call i32 @wireesty(i32 %139, i32 %140, i32 %141, double %143)
  %144 = load i32, i32* %b, align 4
  %sub129 = sub nsw i32 %144, %call128
  store i32 %sub129, i32* %b, align 4
  %145 = load i32, i32* %t, align 4
  %146 = load i32, i32* %l, align 4
  %147 = load i32, i32* %r, align 4
  %148 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %148, i32 0, i32 4
  %149 = load double, double* %tweight, align 8
  %call130 = call i32 @wireesty(i32 %145, i32 %146, i32 %147, double %149)
  %150 = load i32, i32* %t, align 4
  %add131 = add nsw i32 %150, %call130
  store i32 %add131, i32* %t, align 4
  %151 = load i32, i32* %l, align 4
  %152 = load i32, i32* @spotXhash, align 4
  %sub132 = sub nsw i32 %151, %152
  %153 = load i32, i32* @spotSize, align 4
  %div133 = sdiv i32 %sub132, %153
  store i32 %div133, i32* %lspot, align 4
  %154 = load i32, i32* %r, align 4
  %155 = load i32, i32* @spotXhash, align 4
  %sub134 = sub nsw i32 %154, %155
  %156 = load i32, i32* @spotSize, align 4
  %div135 = sdiv i32 %sub134, %156
  store i32 %div135, i32* %rspot, align 4
  %157 = load i32, i32* %b, align 4
  %158 = load i32, i32* @spotYhash, align 4
  %sub136 = sub nsw i32 %157, %158
  %159 = load i32, i32* @spotSize, align 4
  %div137 = sdiv i32 %sub136, %159
  store i32 %div137, i32* %bspot, align 4
  %160 = load i32, i32* %t, align 4
  %161 = load i32, i32* @spotYhash, align 4
  %sub138 = sub nsw i32 %160, %161
  %162 = load i32, i32* @spotSize, align 4
  %div139 = sdiv i32 %sub138, %162
  store i32 %div139, i32* %tspot, align 4
  %163 = load i32, i32* %lspot, align 4
  %add140 = add nsw i32 %163, 1
  store i32 %add140, i32* %x, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.158, %for.body.97
  %164 = load i32, i32* %x, align 4
  %165 = load i32, i32* %rspot, align 4
  %cmp142 = icmp slt i32 %164, %165
  br i1 %cmp142, label %for.body.144, label %for.end.160

for.body.144:                                     ; preds = %for.cond.141
  %166 = load i32, i32* %bspot, align 4
  %add145 = add nsw i32 %166, 1
  store i32 %add145, i32* %y, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.155, %for.body.144
  %167 = load i32, i32* %y, align 4
  %168 = load i32, i32* %tspot, align 4
  %cmp147 = icmp slt i32 %167, %168
  br i1 %cmp147, label %for.body.149, label %for.end.157

for.body.149:                                     ; preds = %for.cond.146
  %169 = load i32, i32* %y, align 4
  %idxprom150 = sext i32 %169 to i64
  %170 = load i32, i32* %x, align 4
  %idxprom151 = sext i32 %170 to i64
  %171 = load i8**, i8*** @spots, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %171, i64 %idxprom151
  %172 = load i8*, i8** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %172, i64 %idxprom150
  %173 = load i8, i8* %arrayidx153, align 1
  %inc154 = add i8 %173, 1
  store i8 %inc154, i8* %arrayidx153, align 1
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.149
  %174 = load i32, i32* %y, align 4
  %inc156 = add nsw i32 %174, 1
  store i32 %inc156, i32* %y, align 4
  br label %for.cond.146

for.end.157:                                      ; preds = %for.cond.146
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.157
  %175 = load i32, i32* %x, align 4
  %inc159 = add nsw i32 %175, 1
  store i32 %inc159, i32* %x, align 4
  br label %for.cond.141

for.end.160:                                      ; preds = %for.cond.141
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.end.160
  %176 = load i32, i32* %cell, align 4
  %inc162 = add nsw i32 %176, 1
  store i32 %inc162, i32* %cell, align 4
  br label %for.cond.94

for.end.163:                                      ; preds = %for.cond.94
  %177 = load i32, i32* @blockl, align 4
  %178 = load i32, i32* @spotXhash, align 4
  %sub164 = sub nsw i32 %177, %178
  %179 = load i32, i32* @spotSize, align 4
  %div165 = sdiv i32 %sub164, %179
  store i32 %div165, i32* %lspot, align 4
  %180 = load i32, i32* @blockr, align 4
  %181 = load i32, i32* @spotXhash, align 4
  %sub166 = sub nsw i32 %180, %181
  %182 = load i32, i32* @spotSize, align 4
  %div167 = sdiv i32 %sub166, %182
  store i32 %div167, i32* %rspot, align 4
  %183 = load i32, i32* @blockb, align 4
  %184 = load i32, i32* @spotYhash, align 4
  %sub168 = sub nsw i32 %183, %184
  %185 = load i32, i32* @spotSize, align 4
  %div169 = sdiv i32 %sub168, %185
  store i32 %div169, i32* %bspot, align 4
  %186 = load i32, i32* @blockt, align 4
  %187 = load i32, i32* @spotYhash, align 4
  %sub170 = sub nsw i32 %186, %187
  %188 = load i32, i32* @spotSize, align 4
  %div171 = sdiv i32 %sub170, %188
  store i32 %div171, i32* %tspot, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.198, %for.end.163
  %189 = load i32, i32* %x, align 4
  %190 = load i32, i32* @numXspots, align 4
  %cmp173 = icmp slt i32 %189, %190
  br i1 %cmp173, label %for.body.175, label %for.end.200

for.body.175:                                     ; preds = %for.cond.172
  store i32 0, i32* %y, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.195, %for.body.175
  %191 = load i32, i32* %y, align 4
  %192 = load i32, i32* @numYspots, align 4
  %cmp177 = icmp slt i32 %191, %192
  br i1 %cmp177, label %for.body.179, label %for.end.197

for.body.179:                                     ; preds = %for.cond.176
  %193 = load i32, i32* %x, align 4
  %194 = load i32, i32* %lspot, align 4
  %cmp180 = icmp sge i32 %193, %194
  br i1 %cmp180, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.179
  %195 = load i32, i32* %x, align 4
  %196 = load i32, i32* %rspot, align 4
  %cmp182 = icmp sle i32 %195, %196
  br i1 %cmp182, label %land.lhs.true.184, label %if.end

land.lhs.true.184:                                ; preds = %land.lhs.true
  %197 = load i32, i32* %y, align 4
  %198 = load i32, i32* %bspot, align 4
  %cmp185 = icmp sge i32 %197, %198
  br i1 %cmp185, label %land.lhs.true.187, label %if.end

land.lhs.true.187:                                ; preds = %land.lhs.true.184
  %199 = load i32, i32* %y, align 4
  %200 = load i32, i32* %tspot, align 4
  %cmp188 = icmp sle i32 %199, %200
  br i1 %cmp188, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.187
  br label %for.inc.195

if.end:                                           ; preds = %land.lhs.true.187, %land.lhs.true.184, %land.lhs.true, %for.body.179
  %201 = load i32, i32* %y, align 4
  %idxprom190 = sext i32 %201 to i64
  %202 = load i32, i32* %x, align 4
  %idxprom191 = sext i32 %202 to i64
  %203 = load i8**, i8*** @spots, align 8
  %arrayidx192 = getelementptr inbounds i8*, i8** %203, i64 %idxprom191
  %204 = load i8*, i8** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %204, i64 %idxprom190
  %205 = load i8, i8* %arrayidx193, align 1
  %inc194 = add i8 %205, 1
  store i8 %inc194, i8* %arrayidx193, align 1
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end, %if.then
  %206 = load i32, i32* %y, align 4
  %inc196 = add nsw i32 %206, 1
  store i32 %inc196, i32* %y, align 4
  br label %for.cond.176

for.end.197:                                      ; preds = %for.cond.176
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.end.197
  %207 = load i32, i32* %x, align 4
  %inc199 = add nsw i32 %207, 1
  store i32 %inc199, i32* %x, align 4
  br label %for.cond.172

for.end.200:                                      ; preds = %for.cond.172
  store i32 0, i32* @spotPenalty, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.243, %for.end.200
  %208 = load i32, i32* %x, align 4
  %209 = load i32, i32* @numXspots, align 4
  %cmp202 = icmp slt i32 %208, %209
  br i1 %cmp202, label %for.body.204, label %for.end.245

for.body.204:                                     ; preds = %for.cond.201
  store i32 0, i32* %y, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.240, %for.body.204
  %210 = load i32, i32* %y, align 4
  %211 = load i32, i32* @numYspots, align 4
  %cmp206 = icmp slt i32 %210, %211
  br i1 %cmp206, label %for.body.208, label %for.end.242

for.body.208:                                     ; preds = %for.cond.205
  %212 = load double, double* @spot_control, align 8
  %213 = load i32, i32* %y, align 4
  %idxprom209 = sext i32 %213 to i64
  %214 = load i32, i32* %x, align 4
  %idxprom210 = sext i32 %214 to i64
  %215 = load i8**, i8*** @spots, align 8
  %arrayidx211 = getelementptr inbounds i8*, i8** %215, i64 %idxprom210
  %216 = load i8*, i8** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %216, i64 %idxprom209
  %217 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %217 to i32
  %sub214 = sub nsw i32 %conv213, 1
  %cmp215 = icmp sge i32 %sub214, 0
  br i1 %cmp215, label %cond.true.217, label %cond.false.224

cond.true.217:                                    ; preds = %for.body.208
  %218 = load i32, i32* %y, align 4
  %idxprom218 = sext i32 %218 to i64
  %219 = load i32, i32* %x, align 4
  %idxprom219 = sext i32 %219 to i64
  %220 = load i8**, i8*** @spots, align 8
  %arrayidx220 = getelementptr inbounds i8*, i8** %220, i64 %idxprom219
  %221 = load i8*, i8** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %221, i64 %idxprom218
  %222 = load i8, i8* %arrayidx221, align 1
  %conv222 = sext i8 %222 to i32
  %sub223 = sub nsw i32 %conv222, 1
  br label %cond.end.232

cond.false.224:                                   ; preds = %for.body.208
  %223 = load i32, i32* %y, align 4
  %idxprom225 = sext i32 %223 to i64
  %224 = load i32, i32* %x, align 4
  %idxprom226 = sext i32 %224 to i64
  %225 = load i8**, i8*** @spots, align 8
  %arrayidx227 = getelementptr inbounds i8*, i8** %225, i64 %idxprom226
  %226 = load i8*, i8** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %226, i64 %idxprom225
  %227 = load i8, i8* %arrayidx228, align 1
  %conv229 = sext i8 %227 to i32
  %sub230 = sub nsw i32 %conv229, 1
  %sub231 = sub nsw i32 0, %sub230
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.224, %cond.true.217
  %cond233 = phi i32 [ %sub223, %cond.true.217 ], [ %sub231, %cond.false.224 ]
  %conv234 = sitofp i32 %cond233 to double
  %mul235 = fmul double %212, %conv234
  %228 = load i32, i32* @spotSize, align 4
  %conv236 = sitofp i32 %228 to double
  %mul237 = fmul double %mul235, %conv236
  %conv238 = fptosi double %mul237 to i32
  %229 = load i32, i32* @spotPenalty, align 4
  %add239 = add nsw i32 %229, %conv238
  store i32 %add239, i32* @spotPenalty, align 4
  br label %for.inc.240

for.inc.240:                                      ; preds = %cond.end.232
  %230 = load i32, i32* %y, align 4
  %inc241 = add nsw i32 %230, 1
  store i32 %inc241, i32* %y, align 4
  br label %for.cond.205

for.end.242:                                      ; preds = %for.cond.205
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.242
  %231 = load i32, i32* %x, align 4
  %inc244 = add nsw i32 %231, 1
  store i32 %inc244, i32* %x, align 4
  br label %for.cond.201

for.end.245:                                      ; preds = %for.cond.201
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %233 = load double, double* @spot_control, align 8
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), double %233)
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %235 = load i32, i32* @spotSize, align 4
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i32 %235)
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %237 = load i32, i32* @spotPenalty, align 4
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0), i32 %237)
  ret void
}

declare void @utemp() #1

declare void @finalout() #1

declare void @finalcheck() #1

declare void @twstats() #1

declare void @gmain() #1

declare void @rmain() #1

declare i32 @wireestx(i32, i32, i32, double) #1

declare i32 @wireesty(i32, i32, i32, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
