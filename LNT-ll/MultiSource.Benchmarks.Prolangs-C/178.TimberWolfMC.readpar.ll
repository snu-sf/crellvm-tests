; ModuleID = './MultiSource.Benchmarks.Prolangs-C/178.TimberWolfMC.readpar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@wireEstimateOnly = common global i32 0, align 4
@attpercell = external global i32, align 4
@lapFactor = external global double, align 8
@cost_only = external global i32, align 4
@maxWeight = external global i32, align 4
@baseWeight = external global i32, align 4
@chipaspect = external global double, align 8
@pinSpacing = external global i32, align 4
@trackspacing = external global i32, align 4
@doPlacement = external global i32, align 4
@doChannelGraph = external global i32, align 4
@doGlobalRoute = external global i32, align 4
@doCompaction = external global i32, align 4
@coreGiven = external global i32, align 4
@gOffsetX = external global i32, align 4
@gOffsetY = external global i32, align 4
@gridX = external global i32, align 4
@gridY = external global i32, align 4
@defaultTracks = common global i32 0, align 4
@routerMaxPaths = common global i32 0, align 4
@routerExtraS = common global i32 0, align 4
@core_expansion_given = common global i32 0, align 4
@spot_control = external global double, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.par\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"initialT\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@T = external global double, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"The value of initialT was not properly\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"entered in the .par file\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"spot.control\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"The value of spot.control was not properly\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"core.expansion\00", align 1
@core_expansion = common global double 0.000000e+00, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"The value of core.expansion was not properly\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"wire.estimation.factor\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@wire_est_factor = common global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"The value of wire.estimation.factor was not \00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"properly entered in the .par file\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"cost_only\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"random.seed\00", align 1
@randVar = external global i32, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"The value of random.seed was not properly\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"att.per.cell\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"The value of att.per.cell was not properly\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"track.spacing\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"The value for track.spacing was not properly\00", align 1
@pitch = external global i32, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"pin.spacing\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"The value for pin.spacing was not properly\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"chip.aspect.ratio\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"The value for chip.aspect.ratio was not\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c" properly entered in the .par file\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"router.max.paths\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"The value for router.max.paths was\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c" not properly entered in the .par file\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"router.extra.sources\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"The value for router.extra.sources was\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"default.tracks.per.channel\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"The value for default.tracks.per.channel was\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"wire.estimation.only\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"do.placement\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"do.channel.graph\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"do.global.route\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"do.compaction\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"The value for do.compaction was not properly\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c" %d %d %d %d \00", align 1
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockt = external global i32, align 4
@.str.43 = private unnamed_addr constant [40 x i8] c"The 4 values for core were not properly\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"gridOffsetX\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"The value for gridOffsetX was not properly\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"gridOffsetY\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"The value for gridOffsetY was not properly\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"gridX\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"The value for gridX was not properly\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"gridY\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"The value for gridY was not properly\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Unexpected keyword in the .par file\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"Error: It appears as though the grid is\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"not fully specified\0A\00", align 1
@gridGiven = external global i32, align 4
@.str.55 = private unnamed_addr constant [47 x i8] c"att.per.cell was not entered in the .par file\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"att.per.cell: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"track.spacing was not entered in .par file\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"track.spacing: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"pin.spacing was not entered in the .par file\0A\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"pin.spacing: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"chip.aspect.ratio was not entered \00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"in the .par file\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"chip.aspect.ratio: %g\0A\00", align 1
@.str.64 = private unnamed_addr constant [42 x i8] c"Using default value of spot.control: 1.0\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"spot.control set to: %f\0A\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"TimberWolf instructed to do \00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"placement of circuit:<%s>\0A\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"TimberWolf instructed to generate \00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"channel graph for circuit:<%s>\0A\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"TimberWolf assumes input files: \00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"<%s.geo> and <%s.pin> are present in\0A\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"router.max.paths was not entered in .par file\0A\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"router.max.paths: %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"router.max.paths set to BARE MINIMUM version\0A\00", align 1
@bareFlag = common global i32 0, align 4
@.str.75 = private unnamed_addr constant [51 x i8] c"router.extra.sources was not entered in .par file\0A\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"router.extra.sources: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"default.tracks.per.channel \0A\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"was not entered in .par file\0A\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"default.tracks.per.channel: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"global route for circuit:<%s>\0A\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"<%s.gph> and <%s.twf> are present in \00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"the working directory\0A\00", align 1
@.str.83 = private unnamed_addr constant [44 x i8] c"post-placement compaction for circuit:<%s>\0A\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"Error: TimberWolf cannot do compaction\0A\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"without request to also do: doPlacement,\0A\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"doChannelGraph and doGlobalRoute\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Hence, request is cancelled\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @readpar() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %test = alloca i32, align 4
  %input = alloca [1024 x i8], align 16
  %filename = alloca [1024 x i8], align 16
  store i32 0, i32* @wireEstimateOnly, align 4
  store i32 -1, i32* @attpercell, align 4
  store double 1.000000e+00, double* @lapFactor, align 8
  store i32 0, i32* @cost_only, align 4
  store i32 2, i32* @maxWeight, align 4
  store i32 1, i32* @baseWeight, align 4
  store double -1.000000e+00, double* @chipaspect, align 8
  store i32 -1, i32* @pinSpacing, align 4
  store i32 -1, i32* @trackspacing, align 4
  store i32 0, i32* @doPlacement, align 4
  store i32 0, i32* @doChannelGraph, align 4
  store i32 0, i32* @doGlobalRoute, align 4
  store i32 0, i32* @doCompaction, align 4
  store i32 0, i32* @coreGiven, align 4
  store i32 -1000000, i32* @gOffsetX, align 4
  store i32 -1000000, i32* @gOffsetY, align 4
  store i32 -1000000, i32* @gridX, align 4
  store i32 -1000000, i32* @gridY, align 4
  store i32 -1, i32* @defaultTracks, align 4
  store i32 -1, i32* @routerMaxPaths, align 4
  store i32 -1, i32* @routerExtraS, align 4
  store i32 0, i32* @core_expansion_given, align 4
  store double -1.000000e+00, double* @spot_control, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %0 = load i8*, i8** @cktName, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %0) #5
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay3)
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.253, %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay5)
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call9 = call i32 @strcmp(i8* %arraydecay8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), double* @T)
  store i32 %call12, i32* %test, align 4
  %4 = load i32, i32* %test, align 4
  %cmp13 = icmp ne i32 %4, 1
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.then.11
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.17:                                        ; preds = %if.then.11
  br label %if.end.253

if.else:                                          ; preds = %while.body
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call19 = call i32 @strcmp(i8* %arraydecay18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), double* @spot_control)
  store i32 %call22, i32* %test, align 4
  %8 = load i32, i32* %test, align 4
  %cmp23 = icmp ne i32 %8, 1
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.21
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.27:                                        ; preds = %if.then.21
  br label %if.end.252

if.else.28:                                       ; preds = %if.else
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call30 = call i32 @strcmp(i8* %arraydecay29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.39

if.then.32:                                       ; preds = %if.else.28
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), double* @core_expansion)
  store i32 %call33, i32* %test, align 4
  %12 = load i32, i32* %test, align 4
  %cmp34 = icmp ne i32 %12, 1
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.then.32
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.38:                                        ; preds = %if.then.32
  store i32 1, i32* @core_expansion_given, align 4
  br label %if.end.251

if.else.39:                                       ; preds = %if.else.28
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call41 = call i32 @strcmp(i8* %arraydecay40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.50

if.then.43:                                       ; preds = %if.else.39
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @wire_est_factor)
  store i32 %call44, i32* %test, align 4
  %16 = load i32, i32* %test, align 4
  %cmp45 = icmp ne i32 %16, 1
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.then.43
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.49:                                        ; preds = %if.then.43
  br label %if.end.250

if.else.50:                                       ; preds = %if.else.39
  %arraydecay51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call52 = call i32 @strcmp(i8* %arraydecay51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #7
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.50
  store i32 1, i32* @cost_only, align 4
  br label %if.end.249

if.else.55:                                       ; preds = %if.else.50
  %arraydecay56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call57 = call i32 @strcmp(i8* %arraydecay56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #7
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.66

if.then.59:                                       ; preds = %if.else.55
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @randVar)
  store i32 %call60, i32* %test, align 4
  %20 = load i32, i32* %test, align 4
  %cmp61 = icmp ne i32 %20, 1
  br i1 %cmp61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.then.59
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.65:                                        ; preds = %if.then.59
  br label %if.end.248

if.else.66:                                       ; preds = %if.else.55
  %arraydecay67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call68 = call i32 @strcmp(i8* %arraydecay67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.77

if.then.70:                                       ; preds = %if.else.66
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @attpercell)
  store i32 %call71, i32* %test, align 4
  %24 = load i32, i32* %test, align 4
  %cmp72 = icmp ne i32 %24, 1
  br i1 %cmp72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.then.70
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.76:                                        ; preds = %if.then.70
  br label %if.end.247

if.else.77:                                       ; preds = %if.else.66
  %arraydecay78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call79 = call i32 @strcmp(i8* %arraydecay78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)) #7
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.88

if.then.81:                                       ; preds = %if.else.77
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @trackspacing)
  store i32 %call82, i32* %test, align 4
  %28 = load i32, i32* %test, align 4
  %cmp83 = icmp ne i32 %28, 1
  br i1 %cmp83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.then.81
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.87:                                        ; preds = %if.then.81
  %31 = load i32, i32* @trackspacing, align 4
  store i32 %31, i32* @pitch, align 4
  br label %if.end.246

if.else.88:                                       ; preds = %if.else.77
  %arraydecay89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call90 = call i32 @strcmp(i8* %arraydecay89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #7
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.99

if.then.92:                                       ; preds = %if.else.88
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @pinSpacing)
  store i32 %call93, i32* %test, align 4
  %33 = load i32, i32* %test, align 4
  %cmp94 = icmp ne i32 %33, 1
  br i1 %cmp94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.then.92
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.98:                                        ; preds = %if.then.92
  br label %if.end.245

if.else.99:                                       ; preds = %if.else.88
  %arraydecay100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call101 = call i32 @strcmp(i8* %arraydecay100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #7
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %if.else.99
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), double* @chipaspect)
  store i32 %call104, i32* %test, align 4
  %37 = load i32, i32* %test, align 4
  %cmp105 = icmp ne i32 %37, 1
  br i1 %cmp105, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.then.103
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.109:                                       ; preds = %if.then.103
  br label %if.end.244

if.else.110:                                      ; preds = %if.else.99
  %arraydecay111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call112 = call i32 @strcmp(i8* %arraydecay111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0)) #7
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %if.then.114, label %if.else.121

if.then.114:                                      ; preds = %if.else.110
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @routerMaxPaths)
  store i32 %call115, i32* %test, align 4
  %41 = load i32, i32* %test, align 4
  %cmp116 = icmp ne i32 %41, 1
  br i1 %cmp116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.then.114
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.120:                                       ; preds = %if.then.114
  br label %if.end.243

if.else.121:                                      ; preds = %if.else.110
  %arraydecay122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call123 = call i32 @strcmp(i8* %arraydecay122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0)) #7
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.132

if.then.125:                                      ; preds = %if.else.121
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @routerExtraS)
  store i32 %call126, i32* %test, align 4
  %45 = load i32, i32* %test, align 4
  %cmp127 = icmp ne i32 %45, 1
  br i1 %cmp127, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.then.125
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.131:                                       ; preds = %if.then.125
  br label %if.end.242

if.else.132:                                      ; preds = %if.else.121
  %arraydecay133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call134 = call i32 @strcmp(i8* %arraydecay133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0)) #7
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.then.136, label %if.else.143

if.then.136:                                      ; preds = %if.else.132
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @defaultTracks)
  store i32 %call137, i32* %test, align 4
  %49 = load i32, i32* %test, align 4
  %cmp138 = icmp ne i32 %49, 1
  br i1 %cmp138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.then.136
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.142:                                       ; preds = %if.then.136
  br label %if.end.241

if.else.143:                                      ; preds = %if.else.132
  %arraydecay144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call145 = call i32 @strcmp(i8* %arraydecay144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0)) #7
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %if.else.143
  store i32 1, i32* @wireEstimateOnly, align 4
  br label %if.end.240

if.else.148:                                      ; preds = %if.else.143
  %arraydecay149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call150 = call i32 @strcmp(i8* %arraydecay149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #7
  %cmp151 = icmp eq i32 %call150, 0
  br i1 %cmp151, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %if.else.148
  store i32 1, i32* @doPlacement, align 4
  br label %if.end.239

if.else.153:                                      ; preds = %if.else.148
  %arraydecay154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call155 = call i32 @strcmp(i8* %arraydecay154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0)) #7
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.else.153
  store i32 1, i32* @doChannelGraph, align 4
  br label %if.end.238

if.else.158:                                      ; preds = %if.else.153
  %arraydecay159 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call160 = call i32 @strcmp(i8* %arraydecay159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0)) #7
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %if.else.158
  store i32 1, i32* @doGlobalRoute, align 4
  br label %if.end.237

if.else.163:                                      ; preds = %if.else.158
  %arraydecay164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call165 = call i32 @strcmp(i8* %arraydecay164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0)) #7
  %cmp166 = icmp eq i32 %call165, 0
  br i1 %cmp166, label %if.then.167, label %if.else.174

if.then.167:                                      ; preds = %if.else.163
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @doCompaction)
  store i32 %call168, i32* %test, align 4
  %53 = load i32, i32* %test, align 4
  %cmp169 = icmp ne i32 %53, 1
  br i1 %cmp169, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %if.then.167
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.173:                                       ; preds = %if.then.167
  br label %if.end.236

if.else.174:                                      ; preds = %if.else.163
  %arraydecay175 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call176 = call i32 @strcmp(i8* %arraydecay175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0)) #7
  %cmp177 = icmp eq i32 %call176, 0
  br i1 %cmp177, label %if.then.178, label %if.else.185

if.then.178:                                      ; preds = %if.else.174
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32* @blockl, i32* @blockr, i32* @blockb, i32* @blockt)
  store i32 %call179, i32* %test, align 4
  %57 = load i32, i32* %test, align 4
  %cmp180 = icmp ne i32 %57, 4
  br i1 %cmp180, label %if.then.181, label %if.end.184

if.then.181:                                      ; preds = %if.then.178
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i32 0, i32 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.184:                                       ; preds = %if.then.178
  store i32 1, i32* @coreGiven, align 4
  br label %if.end.235

if.else.185:                                      ; preds = %if.else.174
  %arraydecay186 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call187 = call i32 @strcmp(i8* %arraydecay186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0)) #7
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %if.then.189, label %if.else.196

if.then.189:                                      ; preds = %if.else.185
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @gOffsetX)
  store i32 %call190, i32* %test, align 4
  %61 = load i32, i32* %test, align 4
  %cmp191 = icmp ne i32 %61, 1
  br i1 %cmp191, label %if.then.192, label %if.end.195

if.then.192:                                      ; preds = %if.then.189
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.195:                                       ; preds = %if.then.189
  br label %if.end.234

if.else.196:                                      ; preds = %if.else.185
  %arraydecay197 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call198 = call i32 @strcmp(i8* %arraydecay197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0)) #7
  %cmp199 = icmp eq i32 %call198, 0
  br i1 %cmp199, label %if.then.200, label %if.else.207

if.then.200:                                      ; preds = %if.else.196
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @gOffsetY)
  store i32 %call201, i32* %test, align 4
  %65 = load i32, i32* %test, align 4
  %cmp202 = icmp ne i32 %65, 1
  br i1 %cmp202, label %if.then.203, label %if.end.206

if.then.203:                                      ; preds = %if.then.200
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.206:                                       ; preds = %if.then.200
  br label %if.end.233

if.else.207:                                      ; preds = %if.else.196
  %arraydecay208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call209 = call i32 @strcmp(i8* %arraydecay208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #7
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then.211, label %if.else.218

if.then.211:                                      ; preds = %if.else.207
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @gridX)
  store i32 %call212, i32* %test, align 4
  %69 = load i32, i32* %test, align 4
  %cmp213 = icmp ne i32 %69, 1
  br i1 %cmp213, label %if.then.214, label %if.end.217

if.then.214:                                      ; preds = %if.then.211
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.217:                                       ; preds = %if.then.211
  br label %if.end.232

if.else.218:                                      ; preds = %if.else.207
  %arraydecay219 = getelementptr inbounds [1024 x i8], [1024 x i8]* %input, i32 0, i32 0
  %call220 = call i32 @strcmp(i8* %arraydecay219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0)) #7
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %if.then.222, label %if.else.229

if.then.222:                                      ; preds = %if.else.218
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32* @gridY)
  store i32 %call223, i32* %test, align 4
  %73 = load i32, i32* %test, align 4
  %cmp224 = icmp ne i32 %73, 1
  br i1 %cmp224, label %if.then.225, label %if.end.228

if.then.225:                                      ; preds = %if.then.222
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i32 0, i32 0))
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.228:                                       ; preds = %if.then.222
  br label %if.end.231

if.else.229:                                      ; preds = %if.else.218
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.231:                                       ; preds = %if.end.228
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.217
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.end.206
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.end.195
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.end.184
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.173
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.162
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.157
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.152
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.147
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.142
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.131
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.120
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.end.109
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.end.98
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.end.87
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.end.76
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.65
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.54
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.end.49
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.38
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.27
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.end.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load i32, i32* @doPlacement, align 4
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %if.then.254, label %if.end.305

if.then.254:                                      ; preds = %while.end
  %78 = load i32, i32* @gridX, align 4
  %cmp255 = icmp sge i32 %78, 0
  br i1 %cmp255, label %if.then.261, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.254
  %79 = load i32, i32* @gridY, align 4
  %cmp256 = icmp sge i32 %79, 0
  br i1 %cmp256, label %if.then.261, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %lor.lhs.false
  %80 = load i32, i32* @gOffsetX, align 4
  %cmp258 = icmp sge i32 %80, 0
  br i1 %cmp258, label %if.then.261, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %lor.lhs.false.257
  %81 = load i32, i32* @gOffsetY, align 4
  %cmp260 = icmp sge i32 %81, 0
  br i1 %cmp260, label %if.then.261, label %if.end.273

if.then.261:                                      ; preds = %lor.lhs.false.259, %lor.lhs.false.257, %lor.lhs.false, %if.then.254
  %82 = load i32, i32* @gridX, align 4
  %cmp262 = icmp sge i32 %82, 0
  br i1 %cmp262, label %land.lhs.true, label %if.then.268

land.lhs.true:                                    ; preds = %if.then.261
  %83 = load i32, i32* @gridY, align 4
  %cmp263 = icmp sge i32 %83, 0
  br i1 %cmp263, label %land.lhs.true.264, label %if.then.268

land.lhs.true.264:                                ; preds = %land.lhs.true
  %84 = load i32, i32* @gOffsetX, align 4
  %cmp265 = icmp sge i32 %84, 0
  br i1 %cmp265, label %land.lhs.true.266, label %if.then.268

land.lhs.true.266:                                ; preds = %land.lhs.true.264
  %85 = load i32, i32* @gOffsetY, align 4
  %cmp267 = icmp sge i32 %85, 0
  br i1 %cmp267, label %if.else.271, label %if.then.268

if.then.268:                                      ; preds = %land.lhs.true.266, %land.lhs.true.264, %land.lhs.true, %if.then.261
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i32 0, i32 0))
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.271:                                      ; preds = %land.lhs.true.266
  store i32 1, i32* @gridGiven, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.271
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %lor.lhs.false.259
  %88 = load i32, i32* @attpercell, align 4
  %cmp274 = icmp eq i32 %88, -1
  br i1 %cmp274, label %if.then.275, label %if.else.277

if.then.275:                                      ; preds = %if.end.273
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.277:                                      ; preds = %if.end.273
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %91 = load i32, i32* @attpercell, align 4
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), i32 %91)
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.277
  %92 = load i32, i32* @trackspacing, align 4
  %cmp280 = icmp slt i32 %92, 0
  br i1 %cmp280, label %if.then.281, label %if.else.283

if.then.281:                                      ; preds = %if.end.279
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.283:                                      ; preds = %if.end.279
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %95 = load i32, i32* @trackspacing, align 4
  %call284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i32 %95)
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.283
  %96 = load i32, i32* @pinSpacing, align 4
  %cmp286 = icmp slt i32 %96, 0
  br i1 %cmp286, label %if.then.287, label %if.else.289

if.then.287:                                      ; preds = %if.end.285
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.289:                                      ; preds = %if.end.285
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %99 = load i32, i32* @pinSpacing, align 4
  %call290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i32 %99)
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.289
  %100 = load double, double* @chipaspect, align 8
  %cmp292 = fcmp olt double %100, 0.000000e+00
  br i1 %cmp292, label %if.then.293, label %if.else.296

if.then.293:                                      ; preds = %if.end.291
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0))
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.296:                                      ; preds = %if.end.291
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %104 = load double, double* @chipaspect, align 8
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), double %104)
  br label %if.end.298

if.end.298:                                       ; preds = %if.else.296
  %105 = load double, double* @spot_control, align 8
  %cmp299 = fcmp olt double %105, 0.000000e+00
  br i1 %cmp299, label %if.then.300, label %if.else.302

if.then.300:                                      ; preds = %if.end.298
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i32 0, i32 0))
  store double 1.000000e+00, double* @spot_control, align 8
  br label %if.end.304

if.else.302:                                      ; preds = %if.end.298
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %108 = load double, double* @spot_control, align 8
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), double %108)
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.302, %if.then.300
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %while.end
  %109 = load i32, i32* @doPlacement, align 4
  %tobool306 = icmp ne i32 %109, 0
  br i1 %tobool306, label %if.then.307, label %if.end.310

if.then.307:                                      ; preds = %if.end.305
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call308 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %112 = load i8*, i8** @cktName, align 8
  %call309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0), i8* %112)
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.307, %if.end.305
  %113 = load i32, i32* @doChannelGraph, align 4
  %tobool311 = icmp ne i32 %113, 0
  br i1 %tobool311, label %if.then.312, label %if.end.320

if.then.312:                                      ; preds = %if.end.310
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call313 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0))
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %116 = load i8*, i8** @cktName, align 8
  %call314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i32 0, i32 0), i8* %116)
  %117 = load i32, i32* @doPlacement, align 4
  %tobool315 = icmp ne i32 %117, 0
  br i1 %tobool315, label %if.end.319, label %if.then.316

if.then.316:                                      ; preds = %if.then.312
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i32 0, i32 0))
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %120 = load i8*, i8** @cktName, align 8
  %121 = load i8*, i8** @cktName, align 8
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i32 0, i32 0), i8* %120, i8* %121)
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.316, %if.then.312
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.end.310
  %122 = load i32, i32* @doGlobalRoute, align 4
  %tobool321 = icmp ne i32 %122, 0
  br i1 %tobool321, label %if.then.322, label %if.end.364

if.then.322:                                      ; preds = %if.end.320
  %123 = load i32, i32* @routerMaxPaths, align 4
  %cmp323 = icmp slt i32 %123, 0
  br i1 %cmp323, label %if.then.324, label %if.else.326

if.then.324:                                      ; preds = %if.then.322
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.72, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.326:                                      ; preds = %if.then.322
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %126 = load i32, i32* @routerMaxPaths, align 4
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0), i32 %126)
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.326
  %127 = load i32, i32* @routerMaxPaths, align 4
  %cmp329 = icmp eq i32 %127, 0
  br i1 %cmp329, label %if.then.330, label %if.else.332

if.then.330:                                      ; preds = %if.end.328
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i32 0, i32 0))
  store i32 1, i32* @routerMaxPaths, align 4
  store i32 1, i32* @bareFlag, align 4
  br label %if.end.333

if.else.332:                                      ; preds = %if.end.328
  store i32 0, i32* @bareFlag, align 4
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.332, %if.then.330
  %129 = load i32, i32* @routerExtraS, align 4
  %cmp334 = icmp slt i32 %129, 0
  br i1 %cmp334, label %if.then.335, label %if.else.337

if.then.335:                                      ; preds = %if.end.333
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.75, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.337:                                      ; preds = %if.end.333
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %132 = load i32, i32* @routerExtraS, align 4
  %call338 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0), i32 %132)
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.337
  %133 = load i32, i32* @doChannelGraph, align 4
  %tobool340 = icmp ne i32 %133, 0
  br i1 %tobool340, label %if.then.341, label %if.end.355

if.then.341:                                      ; preds = %if.end.339
  %134 = load i32, i32* @trackspacing, align 4
  %cmp342 = icmp slt i32 %134, 0
  br i1 %cmp342, label %if.then.343, label %if.else.345

if.then.343:                                      ; preds = %if.then.341
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.345:                                      ; preds = %if.then.341
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %137 = load i32, i32* @trackspacing, align 4
  %call346 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i32 %137)
  br label %if.end.347

if.end.347:                                       ; preds = %if.else.345
  %138 = load i32, i32* @defaultTracks, align 4
  %cmp348 = icmp slt i32 %138, 0
  br i1 %cmp348, label %if.then.349, label %if.else.352

if.then.349:                                      ; preds = %if.end.347
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call350 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0))
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.else.352:                                      ; preds = %if.end.347
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %142 = load i32, i32* @defaultTracks, align 4
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i32 0, i32 0), i32 %142)
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.352
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.end.339
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call356 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0))
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %145 = load i8*, i8** @cktName, align 8
  %call357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i32 0, i32 0), i8* %145)
  %146 = load i32, i32* @doChannelGraph, align 4
  %tobool358 = icmp ne i32 %146, 0
  br i1 %tobool358, label %if.end.363, label %if.then.359

if.then.359:                                      ; preds = %if.end.355
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call360 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i32 0, i32 0))
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %149 = load i8*, i8** @cktName, align 8
  %150 = load i8*, i8** @cktName, align 8
  %call361 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0), i8* %149, i8* %150)
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.359, %if.end.355
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.end.320
  %152 = load i32, i32* @doCompaction, align 4
  %tobool365 = icmp ne i32 %152, 0
  br i1 %tobool365, label %if.then.366, label %if.end.380

if.then.366:                                      ; preds = %if.end.364
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0))
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %155 = load i8*, i8** @cktName, align 8
  %call368 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.83, i32 0, i32 0), i8* %155)
  %156 = load i32, i32* @doPlacement, align 4
  %tobool369 = icmp ne i32 %156, 0
  br i1 %tobool369, label %land.lhs.true.370, label %if.then.374

land.lhs.true.370:                                ; preds = %if.then.366
  %157 = load i32, i32* @doChannelGraph, align 4
  %tobool371 = icmp ne i32 %157, 0
  br i1 %tobool371, label %land.lhs.true.372, label %if.then.374

land.lhs.true.372:                                ; preds = %land.lhs.true.370
  %158 = load i32, i32* @doGlobalRoute, align 4
  %tobool373 = icmp ne i32 %158, 0
  br i1 %tobool373, label %if.end.379, label %if.then.374

if.then.374:                                      ; preds = %land.lhs.true.372, %land.lhs.true.370, %if.then.366
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call375 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.84, i32 0, i32 0))
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i32 0, i32 0))
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i32 0, i32 0))
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call378 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0))
  store i32 0, i32* @doCompaction, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.374, %land.lhs.true.372
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.end.364
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call381 = call i32 @fflush(%struct._IO_FILE* %163)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @fflush(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
