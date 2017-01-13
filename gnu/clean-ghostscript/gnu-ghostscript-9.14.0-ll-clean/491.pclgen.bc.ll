; ModuleID = './pclgen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcl_FileData = type { i32, i32, i8*, i8*, %struct.pcl_OctetString, %struct.pcl_OctetString, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pcl_ColorantState*, [4 x %struct.pcl_ColorantState], i32, i32, i32, i16, i16, i32 }
%struct.pcl_OctetString = type { i8*, i32 }
%struct.pcl_ColorantState = type { i32, i32, i32 }
%struct.pcl_RasterData = type { i32, %struct.pcl_FileData*, %struct.pcl_OctetString*, %struct.pcl_OctetString*, [2 x i8*], i64, i32, %struct.pcl_OctetString** }

@.str = private unnamed_addr constant [52 x i8] c"? pclgen: Null pointer passed to pcl3_init_file().\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"? pclgen: Palette specification and number of colorants are inconsistent.\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"? pclgen: The resolution for colorant %d is not positive: %u x %u ppi.\0A\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"? pclgen: The number of intensity levels for colorant %d is %u instead of at least 2 and at most 65535.\0A\00", align 1
@.str.4 = private unnamed_addr constant [122 x i8] c"? pclgen: The vertical resolution for colorant %d (%u ppi) is not a multiple of the lowest vertical resolution (%u ppi).\0A\00", align 1
@.str.5 = private unnamed_addr constant [127 x i8] c"? pclgen: The highest horizontal resolution (%u ppi) is not a multiple of the horizontal resolution for colorant %d (%u ppi).\0A\00", align 1
@.str.6 = private unnamed_addr constant [123 x i8] c"? pclgen: The highest vertical resolution (%u ppi) is not a multiple of the vertical resolution for colorant %d (%u ppi).\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"? pclgen: You can't use an RGB palette at the requested PCL level.\0A\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"? pclgen: The specified structure of resolutions and intensity levels is not possible with an RGB palette.\0A\00", align 1
@.str.9 = private unnamed_addr constant [115 x i8] c"? pclgen: The specified structure of resolutions and intensity levels is not possible at the requested PCL level.\0A\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"? pclgen: The specified palette is not possible at the requested PCL level.\0A\00", align 1
@.str.11 = private unnamed_addr constant [127 x i8] c"? pclgen: Resolutions may be at most 65535 ppi when more than one resolution or more than two intensity levels are requested.\0A\00", align 1
@.str.12 = private unnamed_addr constant [96 x i8] c"? pclgen: Ordering bit planes as CMYK instead of KCMY is only meaningful\0A  for a CMYK palette.\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"? pclgen: Illegal character in PJL job name (code 0x%02X).\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"? pclgen: PJL job name is too long (more than 80 characters).\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"? pclgen: Empty PJL language name.\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"? pclgen: Illegal character in PJL language name (code 0x%02X).\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\1B%-12345X\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"@PJL JOB\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c" NAME=\22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"@PJL ENTER LANGUAGE=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\1BE\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"\1B&l%da0o0L\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\1B&l%dH\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"\1B&l2H\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\1B&l%dG\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\1B&l%dS\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\1B*r%dQ\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\1B*o%dQ\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\1B*o%dD\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"\1B&l%dM\1B*o%dM\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\1B&b%dT\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\1B*t%uR\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\1B&u%uD\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\1B*r%dU\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"\1B*g%uW\02%c\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"%c%c%c%c%c%c\00", align 1
@.str.37 = private unnamed_addr constant [68 x i8] c"? pclgen: Unidentified system error while writing the output file.\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"\1B*p0Y\00", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"? pclgen: Invalid data structure passed to pcl3_begin_raster().\0A\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"? pclgen: Memory allocation failure in pcl3_begin_raster().\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\1B*r%uS\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"\1B*p0X\1B*r1A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"\1B*b\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%uy\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"0Y\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"\1B&l0H\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"@PJL EOJ\0A\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"\1B*r\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"bC\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"? pclgen: Error from fprintf(): %s.\0A\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"? pclgen: Error from fputc(): %s.\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"? pclgen: Error in fwrite(): %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pcl3_levels_to_planes(i32 %levels) #0 {
entry:
  %levels.addr = alloca i32, align 4
  %power = alloca i64, align 8
  %planes = alloca i32, align 4
  store i32 %levels, i32* %levels.addr, align 4, !tbaa !1
  %0 = bitcast i64* %power to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 1, i64* %power, align 8, !tbaa !5
  %1 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %planes, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %power, align 8, !tbaa !5
  %3 = load i32, i32* %levels.addr, align 4, !tbaa !1
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %2, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %power, align 8, !tbaa !5
  %mul = mul i64 %4, 2
  store i64 %mul, i64* %power, align 8, !tbaa !5
  %5 = load i32, i32* %planes, align 4, !tbaa !1
  %inc = add i32 %5, 1
  store i32 %inc, i32* %planes, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %planes, align 4, !tbaa !1
  %7 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast i64* %power to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i32 %6
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @pcl3_init_file(%struct._IO_FILE* %out, %struct.pcl_FileData* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca %struct.pcl_FileData*, align 8
  %needs_CRD = alloca i32, align 4
  %j = alloca i32, align 4
  %colorant = alloca %struct.pcl_ColorantState*, align 8
  %maxhres = alloca i32, align 4
  %maxvres = alloca i32, align 4
  %invalid = alloca i32, align 4
  %s = alloca i8*, align 8
  %s259 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_FileData* %data, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %0 = bitcast i32* %needs_CRD to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %1, i32 0, i32 0
  %2 = load i32, i32* %level, align 4, !tbaa !9
  %cmp = icmp eq i32 %2, 4
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %needs_CRD, align 4, !tbaa !1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.pcl_ColorantState** %colorant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.pcl_ColorantState* null, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %5 = bitcast i32* %maxhres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %maxhres, align 4, !tbaa !1
  %6 = bitcast i32* %maxvres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %maxvres, align 4, !tbaa !1
  %7 = bitcast i32* %invalid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %cmp1 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %9 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %cmp3 = icmp eq %struct.pcl_FileData* %9, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  store i32 %lor.ext, i32* %invalid, align 4, !tbaa !1
  %11 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call = call i32 @fputs(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %12) #6
  br label %if.end.321

if.else:                                          ; preds = %lor.end
  %13 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %13, i32 0, i32 16
  %14 = load i32, i32* %palette, align 4, !tbaa !13
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 4, label %sw.bb.11
    i32 3, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  %15 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %15, i32 0, i32 17
  %16 = load i32, i32* %number_of_colorants, align 4, !tbaa !14
  %cmp5 = icmp ne i32 %16, 1
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %invalid, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.else
  %17 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants8 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %17, i32 0, i32 17
  %18 = load i32, i32* %number_of_colorants8, align 4, !tbaa !14
  %cmp9 = icmp ne i32 %18, 3
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %invalid, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.else
  %19 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants12 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %19, i32 0, i32 17
  %20 = load i32, i32* %number_of_colorants12, align 4, !tbaa !14
  %cmp13 = icmp ne i32 %20, 3
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %invalid, align 4, !tbaa !1
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.else
  %21 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants16 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %21, i32 0, i32 17
  %22 = load i32, i32* %number_of_colorants16, align 4, !tbaa !14
  %cmp17 = icmp ne i32 %22, 4
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %invalid, align 4, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %23 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants19 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %23, i32 0, i32 17
  %24 = load i32, i32* %number_of_colorants19, align 4, !tbaa !14
  %cmp20 = icmp ule i32 %24, 0
  %conv21 = zext i1 %cmp20 to i32
  store i32 %conv21, i32* %invalid, align 4, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.11, %sw.bb.7, %sw.bb
  %25 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool22 = icmp ne i32 %25, 0
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %sw.epilog
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %26) #6
  br label %if.end.168

if.else.25:                                       ; preds = %sw.epilog
  %27 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %colorant26 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %27, i32 0, i32 18
  %28 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant26, align 8, !tbaa !15
  %cmp27 = icmp eq %struct.pcl_ColorantState* %28, null
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.25
  %29 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %colorant_array = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %29, i32 0, i32 19
  %arraydecay = getelementptr inbounds [4 x %struct.pcl_ColorantState], [4 x %struct.pcl_ColorantState]* %colorant_array, i32 0, i32 0
  store %struct.pcl_ColorantState* %arraydecay, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  br label %if.end

if.else.30:                                       ; preds = %if.else.25
  %30 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %colorant31 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %30, i32 0, i32 18
  %31 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant31, align 8, !tbaa !15
  store %struct.pcl_ColorantState* %31, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else.30, %if.then.29
  %32 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %32, i64 0
  %vres = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx, i32 0, i32 1
  %33 = load i32, i32* %vres, align 4, !tbaa !16
  %34 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %minvres = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %34, i32 0, i32 25
  store i32 %33, i32* %minvres, align 4, !tbaa !18
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %35 = load i32, i32* %j, align 4, !tbaa !1
  %36 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants32 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %36, i32 0, i32 17
  %37 = load i32, i32* %number_of_colorants32, align 4, !tbaa !14
  %cmp33 = icmp ult i32 %35, %37
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %39, i64 %idxprom
  %hres = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx35, i32 0, i32 0
  %40 = load i32, i32* %hres, align 4, !tbaa !19
  %cmp36 = icmp ule i32 %40, 0
  br i1 %cmp36, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %41 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom38 = sext i32 %41 to i64
  %42 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %42, i64 %idxprom38
  %vres40 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx39, i32 0, i32 1
  %43 = load i32, i32* %vres40, align 4, !tbaa !16
  %cmp41 = icmp ule i32 %43, 0
  br i1 %cmp41, label %if.then.43, label %if.else.51

if.then.43:                                       ; preds = %lor.lhs.false, %for.body
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %45 = load i32, i32* %j, align 4, !tbaa !1
  %46 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom44 = sext i32 %46 to i64
  %47 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %47, i64 %idxprom44
  %hres46 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx45, i32 0, i32 0
  %48 = load i32, i32* %hres46, align 4, !tbaa !19
  %49 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom47 = sext i32 %49 to i64
  %50 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx48 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %50, i64 %idxprom47
  %vres49 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx48, i32 0, i32 1
  %51 = load i32, i32* %vres49, align 4, !tbaa !16
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i32 0, i32 0), i32 %45, i32 %48, i32 %51) #6
  br label %if.end.84

if.else.51:                                       ; preds = %lor.lhs.false
  %52 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom52 = sext i32 %52 to i64
  %53 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %53, i64 %idxprom52
  %vres54 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx53, i32 0, i32 1
  %54 = load i32, i32* %vres54, align 4, !tbaa !16
  %55 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %minvres55 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %55, i32 0, i32 25
  %56 = load i32, i32* %minvres55, align 4, !tbaa !18
  %cmp56 = icmp ult i32 %54, %56
  br i1 %cmp56, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.else.51
  %57 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom59 = sext i32 %57 to i64
  %58 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %58, i64 %idxprom59
  %vres61 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx60, i32 0, i32 1
  %59 = load i32, i32* %vres61, align 4, !tbaa !16
  %60 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %minvres62 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %60, i32 0, i32 25
  store i32 %59, i32* %minvres62, align 4, !tbaa !18
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.else.51
  %61 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom64 = sext i32 %61 to i64
  %62 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx65 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %62, i64 %idxprom64
  %hres66 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx65, i32 0, i32 0
  %63 = load i32, i32* %hres66, align 4, !tbaa !19
  %64 = load i32, i32* %maxhres, align 4, !tbaa !1
  %cmp67 = icmp ugt i32 %63, %64
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.63
  %65 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom70 = sext i32 %65 to i64
  %66 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx71 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %66, i64 %idxprom70
  %hres72 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx71, i32 0, i32 0
  %67 = load i32, i32* %hres72, align 4, !tbaa !19
  store i32 %67, i32* %maxhres, align 4, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.end.63
  %68 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom74 = sext i32 %68 to i64
  %69 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %69, i64 %idxprom74
  %vres76 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx75, i32 0, i32 1
  %70 = load i32, i32* %vres76, align 4, !tbaa !16
  %71 = load i32, i32* %maxvres, align 4, !tbaa !1
  %cmp77 = icmp ugt i32 %70, %71
  br i1 %cmp77, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.end.73
  %72 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom80 = sext i32 %72 to i64
  %73 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %73, i64 %idxprom80
  %vres82 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx81, i32 0, i32 1
  %74 = load i32, i32* %vres82, align 4, !tbaa !16
  store i32 %74, i32* %maxvres, align 4, !tbaa !1
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.end.73
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.43
  %75 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom85 = sext i32 %75 to i64
  %76 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx86 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %76, i64 %idxprom85
  %levels = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx86, i32 0, i32 2
  %77 = load i32, i32* %levels, align 4, !tbaa !20
  %cmp87 = icmp ult i32 %77, 2
  br i1 %cmp87, label %if.then.95, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.84
  %78 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom90 = sext i32 %78 to i64
  %79 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx91 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %79, i64 %idxprom90
  %levels92 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx91, i32 0, i32 2
  %80 = load i32, i32* %levels92, align 4, !tbaa !20
  %cmp93 = icmp ult i32 65535, %80
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %lor.lhs.false.89, %if.end.84
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %82 = load i32, i32* %j, align 4, !tbaa !1
  %83 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom96 = sext i32 %83 to i64
  %84 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx97 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %84, i64 %idxprom96
  %levels98 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx97, i32 0, i32 2
  %85 = load i32, i32* %levels98, align 4, !tbaa !20
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i32 0, i32 0), i32 %82, i32 %85) #6
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %lor.lhs.false.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %86 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool101 = icmp ne i32 %87, 0
  br i1 %tobool101, label %if.end.167, label %if.then.102

if.then.102:                                      ; preds = %for.end
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.164, %if.then.102
  %88 = load i32, i32* %j, align 4, !tbaa !1
  %89 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants104 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %89, i32 0, i32 17
  %90 = load i32, i32* %number_of_colorants104, align 4, !tbaa !14
  %cmp105 = icmp ult i32 %88, %90
  br i1 %cmp105, label %for.body.107, label %for.end.166

for.body.107:                                     ; preds = %for.cond.103
  %91 = load i32, i32* %maxhres, align 4, !tbaa !1
  %92 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom108 = sext i32 %92 to i64
  %93 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx109 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %93, i64 %idxprom108
  %hres110 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx109, i32 0, i32 0
  %94 = load i32, i32* %hres110, align 4, !tbaa !19
  %cmp111 = icmp ne i32 %91, %94
  br i1 %cmp111, label %if.then.125, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %for.body.107
  %95 = load i32, i32* %maxhres, align 4, !tbaa !1
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom114 = sext i32 %96 to i64
  %97 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx115 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %97, i64 %idxprom114
  %vres116 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx115, i32 0, i32 1
  %98 = load i32, i32* %vres116, align 4, !tbaa !16
  %cmp117 = icmp ne i32 %95, %98
  br i1 %cmp117, label %if.then.125, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.113
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom120 = sext i32 %99 to i64
  %100 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx121 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %100, i64 %idxprom120
  %levels122 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx121, i32 0, i32 2
  %101 = load i32, i32* %levels122, align 4, !tbaa !20
  %cmp123 = icmp ugt i32 %101, 2
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %lor.lhs.false.119, %lor.lhs.false.113, %for.body.107
  store i32 1, i32* %needs_CRD, align 4, !tbaa !1
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %lor.lhs.false.119
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom127 = sext i32 %102 to i64
  %103 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx128 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %103, i64 %idxprom127
  %vres129 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx128, i32 0, i32 1
  %104 = load i32, i32* %vres129, align 4, !tbaa !16
  %105 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %minvres130 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %105, i32 0, i32 25
  %106 = load i32, i32* %minvres130, align 4, !tbaa !18
  %rem = urem i32 %104, %106
  %cmp131 = icmp ne i32 %rem, 0
  br i1 %cmp131, label %if.then.133, label %if.end.139

if.then.133:                                      ; preds = %if.end.126
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom134 = sext i32 %109 to i64
  %110 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %110, i64 %idxprom134
  %vres136 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx135, i32 0, i32 1
  %111 = load i32, i32* %vres136, align 4, !tbaa !16
  %112 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %minvres137 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %112, i32 0, i32 25
  %113 = load i32, i32* %minvres137, align 4, !tbaa !18
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.4, i32 0, i32 0), i32 %108, i32 %111, i32 %113) #6
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.133, %if.end.126
  %114 = load i32, i32* %maxhres, align 4, !tbaa !1
  %115 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom140 = sext i32 %115 to i64
  %116 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx141 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %116, i64 %idxprom140
  %hres142 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx141, i32 0, i32 0
  %117 = load i32, i32* %hres142, align 4, !tbaa !19
  %rem143 = urem i32 %114, %117
  %cmp144 = icmp ne i32 %rem143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.151

if.then.146:                                      ; preds = %if.end.139
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %119 = load i32, i32* %maxhres, align 4, !tbaa !1
  %120 = load i32, i32* %j, align 4, !tbaa !1
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom147 = sext i32 %121 to i64
  %122 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx148 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %122, i64 %idxprom147
  %hres149 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx148, i32 0, i32 0
  %123 = load i32, i32* %hres149, align 4, !tbaa !19
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.5, i32 0, i32 0), i32 %119, i32 %120, i32 %123) #6
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.146, %if.end.139
  %124 = load i32, i32* %maxvres, align 4, !tbaa !1
  %125 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom152 = sext i32 %125 to i64
  %126 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx153 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %126, i64 %idxprom152
  %vres154 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx153, i32 0, i32 1
  %127 = load i32, i32* %vres154, align 4, !tbaa !16
  %rem155 = urem i32 %124, %127
  %cmp156 = icmp ne i32 %rem155, 0
  br i1 %cmp156, label %if.then.158, label %if.end.163

if.then.158:                                      ; preds = %if.end.151
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %129 = load i32, i32* %maxvres, align 4, !tbaa !1
  %130 = load i32, i32* %j, align 4, !tbaa !1
  %131 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom159 = sext i32 %131 to i64
  %132 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx160 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %132, i64 %idxprom159
  %vres161 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx160, i32 0, i32 1
  %133 = load i32, i32* %vres161, align 4, !tbaa !16
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.6, i32 0, i32 0), i32 %129, i32 %130, i32 %133) #6
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.158, %if.end.151
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %134 = load i32, i32* %j, align 4, !tbaa !1
  %inc165 = add nsw i32 %134, 1
  store i32 %inc165, i32* %j, align 4, !tbaa !1
  br label %for.cond.103

for.end.166:                                      ; preds = %for.cond.103
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %for.end
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.23
  %135 = load i32, i32* %needs_CRD, align 4, !tbaa !1
  %tobool169 = icmp ne i32 %135, 0
  br i1 %tobool169, label %land.lhs.true, label %if.end.182

land.lhs.true:                                    ; preds = %if.end.168
  %136 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette170 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %136, i32 0, i32 16
  %137 = load i32, i32* %palette170, align 4, !tbaa !13
  %cmp171 = icmp eq i32 %137, 4
  br i1 %cmp171, label %if.then.173, label %if.end.182

if.then.173:                                      ; preds = %land.lhs.true
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %138 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level174 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %138, i32 0, i32 0
  %139 = load i32, i32* %level174, align 4, !tbaa !9
  %cmp175 = icmp eq i32 %139, 4
  br i1 %cmp175, label %if.then.177, label %if.else.179

if.then.177:                                      ; preds = %if.then.173
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call178 = call i32 @fputs(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %140) #6
  br label %if.end.181

if.else.179:                                      ; preds = %if.then.173
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call180 = call i32 @fputs(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %141) #6
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.179, %if.then.177
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %land.lhs.true, %if.end.168
  %142 = load i32, i32* %needs_CRD, align 4, !tbaa !1
  %tobool183 = icmp ne i32 %142, 0
  br i1 %tobool183, label %land.lhs.true.184, label %if.end.190

land.lhs.true.184:                                ; preds = %if.end.182
  %143 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level185 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %143, i32 0, i32 0
  %144 = load i32, i32* %level185, align 4, !tbaa !9
  %cmp186 = icmp uge i32 %144, 3
  br i1 %cmp186, label %if.end.190, label %if.then.188

if.then.188:                                      ; preds = %land.lhs.true.184
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call189 = call i32 @fputs(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %145) #6
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %land.lhs.true.184, %if.end.182
  %146 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette191 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %146, i32 0, i32 16
  %147 = load i32, i32* %palette191, align 4, !tbaa !13
  %cmp192 = icmp eq i32 %147, 5
  br i1 %cmp192, label %if.then.194, label %if.end.201

if.then.194:                                      ; preds = %if.end.190
  store i32 1, i32* %needs_CRD, align 4, !tbaa !1
  %148 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level195 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %148, i32 0, i32 0
  %149 = load i32, i32* %level195, align 4, !tbaa !9
  %cmp196 = icmp uge i32 %149, 3
  br i1 %cmp196, label %if.end.200, label %if.then.198

if.then.198:                                      ; preds = %if.then.194
  store i32 1, i32* %invalid, align 4, !tbaa !1
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call199 = call i32 @fputs(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %150) #6
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %if.then.194
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.190
  %151 = load i32, i32* %needs_CRD, align 4, !tbaa !1
  %tobool202 = icmp ne i32 %151, 0
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.211

land.lhs.true.203:                                ; preds = %if.end.201
  %152 = load i32, i32* %maxhres, align 4, !tbaa !1
  %cmp204 = icmp ugt i32 %152, 65535
  br i1 %cmp204, label %if.then.209, label %lor.lhs.false.206

lor.lhs.false.206:                                ; preds = %land.lhs.true.203
  %153 = load i32, i32* %maxvres, align 4, !tbaa !1
  %cmp207 = icmp ugt i32 %153, 65535
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %lor.lhs.false.206, %land.lhs.true.203
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call210 = call i32 @fputs(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %154) #6
  store i32 1, i32* %invalid, align 4, !tbaa !1
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %lor.lhs.false.206, %if.end.201
  %155 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %order_CMYK = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %155, i32 0, i32 20
  %156 = load i32, i32* %order_CMYK, align 4, !tbaa !21
  %tobool212 = icmp ne i32 %156, 0
  br i1 %tobool212, label %land.lhs.true.213, label %if.end.219

land.lhs.true.213:                                ; preds = %if.end.211
  %157 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette214 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %157, i32 0, i32 16
  %158 = load i32, i32* %palette214, align 4, !tbaa !13
  %cmp215 = icmp ne i32 %158, 3
  br i1 %cmp215, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %land.lhs.true.213
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call218 = call i32 @fputs(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %159) #6
  store i32 1, i32* %invalid, align 4, !tbaa !1
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %land.lhs.true.213, %if.end.211
  %160 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %160, i32 0, i32 2
  %161 = load i8*, i8** %PJL_job, align 8, !tbaa !22
  %cmp220 = icmp ne i8* %161, null
  br i1 %cmp220, label %if.then.222, label %if.end.255

if.then.222:                                      ; preds = %if.end.219
  %162 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #1
  %163 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job223 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %163, i32 0, i32 2
  %164 = load i8*, i8** %PJL_job223, align 8, !tbaa !22
  store i8* %164, i8** %s, align 8, !tbaa !7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.222
  %165 = load i8*, i8** %s, align 8, !tbaa !7
  %166 = load i8, i8* %165, align 1, !tbaa !23
  %conv224 = zext i8 %166 to i32
  %cmp225 = icmp ne i32 %conv224, 0
  br i1 %cmp225, label %land.rhs, label %land.end.240

land.rhs:                                         ; preds = %while.cond
  %167 = load i8*, i8** %s, align 8, !tbaa !7
  %168 = load i8, i8* %167, align 1, !tbaa !23
  %conv227 = zext i8 %168 to i32
  %cmp228 = icmp eq i32 %conv227, 9
  br i1 %cmp228, label %lor.end.238, label %lor.rhs.230

lor.rhs.230:                                      ; preds = %land.rhs
  %169 = load i8*, i8** %s, align 8, !tbaa !7
  %170 = load i8, i8* %169, align 1, !tbaa !23
  %conv231 = zext i8 %170 to i32
  %cmp232 = icmp sle i32 32, %conv231
  br i1 %cmp232, label %land.rhs.234, label %land.end

land.rhs.234:                                     ; preds = %lor.rhs.230
  %171 = load i8*, i8** %s, align 8, !tbaa !7
  %172 = load i8, i8* %171, align 1, !tbaa !23
  %conv235 = zext i8 %172 to i32
  %cmp236 = icmp ne i32 %conv235, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs.234, %lor.rhs.230
  %173 = phi i1 [ false, %lor.rhs.230 ], [ %cmp236, %land.rhs.234 ]
  br label %lor.end.238

lor.end.238:                                      ; preds = %land.end, %land.rhs
  %174 = phi i1 [ true, %land.rhs ], [ %173, %land.end ]
  br label %land.end.240

land.end.240:                                     ; preds = %lor.end.238, %while.cond
  %175 = phi i1 [ false, %while.cond ], [ %174, %lor.end.238 ]
  br i1 %175, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.240
  %176 = load i8*, i8** %s, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %land.end.240
  %177 = load i8*, i8** %s, align 8, !tbaa !7
  %178 = load i8, i8* %177, align 1, !tbaa !23
  %conv241 = zext i8 %178 to i32
  %cmp242 = icmp ne i32 %conv241, 0
  br i1 %cmp242, label %if.then.244, label %if.end.247

if.then.244:                                      ; preds = %while.end
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %180 = load i8*, i8** %s, align 8, !tbaa !7
  %181 = load i8, i8* %180, align 1, !tbaa !23
  %conv245 = zext i8 %181 to i32
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i32 %conv245) #6
  store i32 1, i32* %invalid, align 4, !tbaa !1
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.244, %while.end
  %182 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job248 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %182, i32 0, i32 2
  %183 = load i8*, i8** %PJL_job248, align 8, !tbaa !22
  %call249 = call i64 @strlen(i8* %183) #7
  %cmp250 = icmp ugt i64 %call249, 80
  br i1 %cmp250, label %if.then.252, label %if.end.254

if.then.252:                                      ; preds = %if.end.247
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call253 = call i32 @fputs(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %184) #6
  store i32 1, i32* %invalid, align 4, !tbaa !1
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.252, %if.end.247
  %185 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.end.219
  %186 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_language = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %186, i32 0, i32 3
  %187 = load i8*, i8** %PJL_language, align 8, !tbaa !24
  %cmp256 = icmp ne i8* %187, null
  br i1 %cmp256, label %if.then.258, label %if.end.320

if.then.258:                                      ; preds = %if.end.255
  %188 = bitcast i8** %s259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  %189 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_language260 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %189, i32 0, i32 3
  %190 = load i8*, i8** %PJL_language260, align 8, !tbaa !24
  store i8* %190, i8** %s259, align 8, !tbaa !7
  %191 = load i8*, i8** %s259, align 8, !tbaa !7
  %192 = load i8, i8* %191, align 1, !tbaa !23
  %conv261 = sext i8 %192 to i32
  %cmp262 = icmp sle i32 65, %conv261
  br i1 %cmp262, label %land.lhs.true.264, label %lor.lhs.false.268

land.lhs.true.264:                                ; preds = %if.then.258
  %193 = load i8*, i8** %s259, align 8, !tbaa !7
  %194 = load i8, i8* %193, align 1, !tbaa !23
  %conv265 = sext i8 %194 to i32
  %cmp266 = icmp sle i32 %conv265, 90
  br i1 %cmp266, label %if.then.276, label %lor.lhs.false.268

lor.lhs.false.268:                                ; preds = %land.lhs.true.264, %if.then.258
  %195 = load i8*, i8** %s259, align 8, !tbaa !7
  %196 = load i8, i8* %195, align 1, !tbaa !23
  %conv269 = sext i8 %196 to i32
  %cmp270 = icmp sle i32 97, %conv269
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.304

land.lhs.true.272:                                ; preds = %lor.lhs.false.268
  %197 = load i8*, i8** %s259, align 8, !tbaa !7
  %198 = load i8, i8* %197, align 1, !tbaa !23
  %conv273 = sext i8 %198 to i32
  %cmp274 = icmp sle i32 %conv273, 122
  br i1 %cmp274, label %if.then.276, label %if.end.304

if.then.276:                                      ; preds = %land.lhs.true.272, %land.lhs.true.264
  br label %do.body

do.body:                                          ; preds = %lor.end.302, %if.then.276
  %199 = load i8*, i8** %s259, align 8, !tbaa !7
  %incdec.ptr277 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr277, i8** %s259, align 8, !tbaa !7
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %200 = load i8*, i8** %s259, align 8, !tbaa !7
  %201 = load i8, i8* %200, align 1, !tbaa !23
  %conv278 = sext i8 %201 to i32
  %cmp279 = icmp sle i32 65, %conv278
  br i1 %cmp279, label %land.lhs.true.281, label %lor.lhs.false.285

land.lhs.true.281:                                ; preds = %do.cond
  %202 = load i8*, i8** %s259, align 8, !tbaa !7
  %203 = load i8, i8* %202, align 1, !tbaa !23
  %conv282 = sext i8 %203 to i32
  %cmp283 = icmp sle i32 %conv282, 90
  br i1 %cmp283, label %lor.end.302, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %land.lhs.true.281, %do.cond
  %204 = load i8*, i8** %s259, align 8, !tbaa !7
  %205 = load i8, i8* %204, align 1, !tbaa !23
  %conv286 = sext i8 %205 to i32
  %cmp287 = icmp sle i32 97, %conv286
  br i1 %cmp287, label %land.lhs.true.289, label %lor.rhs.293

land.lhs.true.289:                                ; preds = %lor.lhs.false.285
  %206 = load i8*, i8** %s259, align 8, !tbaa !7
  %207 = load i8, i8* %206, align 1, !tbaa !23
  %conv290 = sext i8 %207 to i32
  %cmp291 = icmp sle i32 %conv290, 122
  br i1 %cmp291, label %lor.end.302, label %lor.rhs.293

lor.rhs.293:                                      ; preds = %land.lhs.true.289, %lor.lhs.false.285
  %208 = load i8*, i8** %s259, align 8, !tbaa !7
  %209 = load i8, i8* %208, align 1, !tbaa !23
  %conv294 = sext i8 %209 to i32
  %cmp295 = icmp sle i32 48, %conv294
  br i1 %cmp295, label %land.rhs.297, label %land.end.301

land.rhs.297:                                     ; preds = %lor.rhs.293
  %210 = load i8*, i8** %s259, align 8, !tbaa !7
  %211 = load i8, i8* %210, align 1, !tbaa !23
  %conv298 = sext i8 %211 to i32
  %cmp299 = icmp sle i32 %conv298, 57
  br label %land.end.301

land.end.301:                                     ; preds = %land.rhs.297, %lor.rhs.293
  %212 = phi i1 [ false, %lor.rhs.293 ], [ %cmp299, %land.rhs.297 ]
  br label %lor.end.302

lor.end.302:                                      ; preds = %land.end.301, %land.lhs.true.289, %land.lhs.true.281
  %213 = phi i1 [ true, %land.lhs.true.289 ], [ true, %land.lhs.true.281 ], [ %212, %land.end.301 ]
  br i1 %213, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.302
  br label %if.end.304

if.end.304:                                       ; preds = %do.end, %land.lhs.true.272, %lor.lhs.false.268
  %214 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_language305 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %214, i32 0, i32 3
  %215 = load i8*, i8** %PJL_language305, align 8, !tbaa !24
  %216 = load i8, i8* %215, align 1, !tbaa !23
  %conv306 = sext i8 %216 to i32
  %cmp307 = icmp eq i32 %conv306, 0
  br i1 %cmp307, label %if.then.309, label %if.else.311

if.then.309:                                      ; preds = %if.end.304
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call310 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %217) #6
  store i32 1, i32* %invalid, align 4, !tbaa !1
  br label %if.end.319

if.else.311:                                      ; preds = %if.end.304
  %218 = load i8*, i8** %s259, align 8, !tbaa !7
  %219 = load i8, i8* %218, align 1, !tbaa !23
  %conv312 = sext i8 %219 to i32
  %cmp313 = icmp ne i32 %conv312, 0
  br i1 %cmp313, label %if.then.315, label %if.end.318

if.then.315:                                      ; preds = %if.else.311
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %221 = load i8*, i8** %s259, align 8, !tbaa !7
  %222 = load i8, i8* %221, align 1, !tbaa !23
  %conv316 = sext i8 %222 to i32
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i32 0, i32 0), i32 %conv316) #6
  store i32 1, i32* %invalid, align 4, !tbaa !1
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.315, %if.else.311
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.309
  %223 = bitcast i8** %s259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.end.255
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then
  %224 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool322 = icmp ne i32 %224, 0
  br i1 %tobool322, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.end.321
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.324:                                       ; preds = %if.end.321
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.324, %if.then.323
  %225 = bitcast i32* %invalid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.567 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc.330, %cleanup.cont
  %226 = load i32, i32* %j, align 4, !tbaa !1
  %227 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %NULs_to_send = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %227, i32 0, i32 1
  %228 = load i32, i32* %NULs_to_send, align 4, !tbaa !25
  %cmp326 = icmp slt i32 %226, %228
  br i1 %cmp326, label %for.body.328, label %for.end.332

for.body.328:                                     ; preds = %for.cond.325
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call329 = call i32 @fputc(i32 0, %struct._IO_FILE* %229) #6
  br label %for.inc.330

for.inc.330:                                      ; preds = %for.body.328
  %230 = load i32, i32* %j, align 4, !tbaa !1
  %inc331 = add nsw i32 %230, 1
  store i32 %inc331, i32* %j, align 4, !tbaa !1
  br label %for.cond.325

for.end.332:                                      ; preds = %for.cond.325
  %231 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job333 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %231, i32 0, i32 2
  %232 = load i8*, i8** %PJL_job333, align 8, !tbaa !22
  %cmp334 = icmp ne i8* %232, null
  br i1 %cmp334, label %if.then.340, label %lor.lhs.false.336

lor.lhs.false.336:                                ; preds = %for.end.332
  %233 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_language337 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %233, i32 0, i32 3
  %234 = load i8*, i8** %PJL_language337, align 8, !tbaa !24
  %cmp338 = icmp ne i8* %234, null
  br i1 %cmp338, label %if.then.340, label %if.end.364

if.then.340:                                      ; preds = %lor.lhs.false.336, %for.end.332
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call341 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %235) #6
  %236 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job342 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %236, i32 0, i32 2
  %237 = load i8*, i8** %PJL_job342, align 8, !tbaa !22
  %cmp343 = icmp ne i8* %237, null
  br i1 %cmp343, label %if.then.345, label %if.end.356

if.then.345:                                      ; preds = %if.then.340
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call346 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %238) #6
  %239 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job347 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %239, i32 0, i32 2
  %240 = load i8*, i8** %PJL_job347, align 8, !tbaa !22
  %241 = load i8, i8* %240, align 1, !tbaa !23
  %conv348 = sext i8 %241 to i32
  %cmp349 = icmp ne i32 %conv348, 0
  br i1 %cmp349, label %if.then.351, label %if.end.354

if.then.351:                                      ; preds = %if.then.345
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %243 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job352 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %243, i32 0, i32 2
  %244 = load i8*, i8** %PJL_job352, align 8, !tbaa !22
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %244) #6
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.351, %if.then.345
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call355 = call i32 @fputc(i32 10, %struct._IO_FILE* %245) #6
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.354, %if.then.340
  %246 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_language357 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %246, i32 0, i32 3
  %247 = load i8*, i8** %PJL_language357, align 8, !tbaa !24
  %cmp358 = icmp ne i8* %247, null
  br i1 %cmp358, label %if.then.360, label %if.end.363

if.then.360:                                      ; preds = %if.end.356
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %249 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_language361 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %249, i32 0, i32 3
  %250 = load i8*, i8** %PJL_language361, align 8, !tbaa !24
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8* %250) #6
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.360, %if.end.356
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %lor.lhs.false.336
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call365 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %251) #6
  %252 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %init1 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %252, i32 0, i32 4
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init1, i32 0, i32 1
  %253 = load i32, i32* %length, align 4, !tbaa !26
  %cmp366 = icmp sgt i32 %253, 0
  br i1 %cmp366, label %if.then.368, label %if.end.374

if.then.368:                                      ; preds = %if.end.364
  %254 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %init1369 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %254, i32 0, i32 4
  %str = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init1369, i32 0, i32 0
  %255 = load i8*, i8** %str, align 8, !tbaa !27
  %256 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %init1370 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %256, i32 0, i32 4
  %length371 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init1370, i32 0, i32 1
  %257 = load i32, i32* %length371, align 4, !tbaa !26
  %conv372 = sext i32 %257 to i64
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call373 = call i64 @fwrite(i8* %255, i64 1, i64 %conv372, %struct._IO_FILE* %258) #6
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.368, %if.end.364
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %260 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %size = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %260, i32 0, i32 6
  %261 = load i32, i32* %size, align 4, !tbaa !28
  %call375 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %259, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 %261) #6
  %262 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_source = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %262, i32 0, i32 8
  %263 = load i32, i32* %media_source, align 4, !tbaa !29
  %cmp376 = icmp ne i32 %263, 0
  br i1 %cmp376, label %if.then.378, label %if.end.381

if.then.378:                                      ; preds = %if.end.374
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %265 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_source379 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %265, i32 0, i32 8
  %266 = load i32, i32* %media_source379, align 4, !tbaa !29
  %call380 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 %266) #6
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.378, %if.end.374
  %267 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_source382 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %267, i32 0, i32 8
  %268 = load i32, i32* %media_source382, align 4, !tbaa !29
  %cmp383 = icmp ne i32 %268, 2
  br i1 %cmp383, label %land.lhs.true.385, label %if.end.389

land.lhs.true.385:                                ; preds = %if.end.381
  %269 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %manual_feed = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %269, i32 0, i32 11
  %270 = load i32, i32* %manual_feed, align 4, !tbaa !30
  %tobool386 = icmp ne i32 %270, 0
  br i1 %tobool386, label %if.then.387, label %if.end.389

if.then.387:                                      ; preds = %land.lhs.true.385
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call388 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %271) #6
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.387, %land.lhs.true.385, %if.end.381
  %272 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_destination = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %272, i32 0, i32 9
  %273 = load i32, i32* %media_destination, align 4, !tbaa !31
  %cmp390 = icmp ne i32 %273, 0
  br i1 %cmp390, label %if.then.392, label %if.end.395

if.then.392:                                      ; preds = %if.end.389
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %275 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_destination393 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %275, i32 0, i32 9
  %276 = load i32, i32* %media_destination393, align 4, !tbaa !31
  %call394 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %276) #6
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.392, %if.end.389
  %277 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %duplex = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %277, i32 0, i32 10
  %278 = load i32, i32* %duplex, align 4, !tbaa !32
  %cmp396 = icmp ne i32 %278, -1
  br i1 %cmp396, label %if.then.398, label %if.end.401

if.then.398:                                      ; preds = %if.end.395
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %280 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %duplex399 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %280, i32 0, i32 10
  %281 = load i32, i32* %duplex399, align 4, !tbaa !32
  %call400 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 %281) #6
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.398, %if.end.395
  %282 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level402 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %282, i32 0, i32 0
  %283 = load i32, i32* %level402, align 4, !tbaa !9
  %cmp403 = icmp ule i32 %283, 2
  br i1 %cmp403, label %if.then.405, label %if.else.419

if.then.405:                                      ; preds = %if.end.401
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %285 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %raster_graphics_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %285, i32 0, i32 15
  %286 = load i32, i32* %raster_graphics_quality, align 4, !tbaa !33
  %call406 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %286) #6
  %287 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level407 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %287, i32 0, i32 0
  %288 = load i32, i32* %level407, align 4, !tbaa !9
  %cmp408 = icmp ugt i32 %288, 0
  br i1 %cmp408, label %if.then.410, label %if.end.412

if.then.410:                                      ; preds = %if.then.405
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %290 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %shingling = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %290, i32 0, i32 14
  %291 = load i32, i32* %shingling, align 4, !tbaa !34
  %call411 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 %291) #6
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.410, %if.then.405
  %292 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %292, i32 0, i32 13
  %293 = load i32, i32* %depletion, align 4, !tbaa !35
  %cmp413 = icmp ne i32 %293, 0
  br i1 %cmp413, label %if.then.415, label %if.end.418

if.then.415:                                      ; preds = %if.end.412
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %295 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion416 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %295, i32 0, i32 13
  %296 = load i32, i32* %depletion416, align 4, !tbaa !35
  %call417 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %296) #6
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.415, %if.end.412
  br label %if.end.421

if.else.419:                                      ; preds = %if.end.401
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %298 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %298, i32 0, i32 7
  %299 = load i32, i32* %media_type, align 4, !tbaa !36
  %300 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %print_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %300, i32 0, i32 12
  %301 = load i32, i32* %print_quality, align 4, !tbaa !37
  %call420 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 %299, i32 %301) #6
  br label %if.end.421

if.end.421:                                       ; preds = %if.else.419, %if.end.418
  %302 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %dry_time = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %302, i32 0, i32 21
  %303 = load i32, i32* %dry_time, align 4, !tbaa !38
  %cmp422 = icmp sge i32 %303, 0
  br i1 %cmp422, label %if.then.424, label %if.end.427

if.then.424:                                      ; preds = %if.end.421
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %305 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %dry_time425 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %305, i32 0, i32 21
  %306 = load i32, i32* %dry_time425, align 4, !tbaa !38
  %call426 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %304, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %306) #6
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.424, %if.end.421
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %308 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level428 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %308, i32 0, i32 0
  %309 = load i32, i32* %level428, align 4, !tbaa !9
  call void @send_ERG(%struct._IO_FILE* %307, i32 %309) #6
  %310 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level429 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %310, i32 0, i32 0
  %311 = load i32, i32* %level429, align 4, !tbaa !9
  %cmp430 = icmp ne i32 %311, 4
  br i1 %cmp430, label %if.then.432, label %if.end.436

if.then.432:                                      ; preds = %if.end.427
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %313 = load i32, i32* %maxhres, align 4, !tbaa !1
  %314 = load i32, i32* %maxvres, align 4, !tbaa !1
  %cmp433 = icmp ult i32 %313, %314
  br i1 %cmp433, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.432
  %315 = load i32, i32* %maxvres, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.432
  %316 = load i32, i32* %maxhres, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %315, %cond.true ], [ %316, %cond.false ]
  %call435 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %cond) #6
  br label %if.end.436

if.end.436:                                       ; preds = %cond.end, %if.end.427
  %317 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level437 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %317, i32 0, i32 0
  %318 = load i32, i32* %level437, align 4, !tbaa !9
  %cmp438 = icmp uge i32 %318, 3
  br i1 %cmp438, label %if.then.440, label %if.end.448

if.then.440:                                      ; preds = %if.end.436
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %320 = load i32, i32* %maxhres, align 4, !tbaa !1
  %321 = load i32, i32* %maxvres, align 4, !tbaa !1
  %cmp441 = icmp ult i32 %320, %321
  br i1 %cmp441, label %cond.true.443, label %cond.false.444

cond.true.443:                                    ; preds = %if.then.440
  %322 = load i32, i32* %maxvres, align 4, !tbaa !1
  br label %cond.end.445

cond.false.444:                                   ; preds = %if.then.440
  %323 = load i32, i32* %maxhres, align 4, !tbaa !1
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.false.444, %cond.true.443
  %cond446 = phi i32 [ %322, %cond.true.443 ], [ %323, %cond.false.444 ]
  %call447 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %cond446) #6
  br label %if.end.448

if.end.448:                                       ; preds = %cond.end.445, %if.end.436
  %324 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level449 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %324, i32 0, i32 0
  %325 = load i32, i32* %level449, align 4, !tbaa !9
  %cmp450 = icmp ne i32 %325, 4
  br i1 %cmp450, label %land.lhs.true.452, label %if.end.470

land.lhs.true.452:                                ; preds = %if.end.448
  %326 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette453 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %326, i32 0, i32 16
  %327 = load i32, i32* %palette453, align 4, !tbaa !13
  %cmp454 = icmp ne i32 %327, 0
  br i1 %cmp454, label %land.lhs.true.456, label %if.end.470

land.lhs.true.456:                                ; preds = %land.lhs.true.452
  %328 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette457 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %328, i32 0, i32 16
  %329 = load i32, i32* %palette457, align 4, !tbaa !13
  %cmp458 = icmp ne i32 %329, 5
  br i1 %cmp458, label %if.then.460, label %if.end.470

if.then.460:                                      ; preds = %land.lhs.true.456
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %331 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette461 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %331, i32 0, i32 16
  %332 = load i32, i32* %palette461, align 4, !tbaa !13
  %cmp462 = icmp eq i32 %332, 4
  br i1 %cmp462, label %cond.true.464, label %cond.false.465

cond.true.464:                                    ; preds = %if.then.460
  br label %cond.end.467

cond.false.465:                                   ; preds = %if.then.460
  %333 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants466 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %333, i32 0, i32 17
  %334 = load i32, i32* %number_of_colorants466, align 4, !tbaa !14
  %sub = sub i32 0, %334
  br label %cond.end.467

cond.end.467:                                     ; preds = %cond.false.465, %cond.true.464
  %cond468 = phi i32 [ 3, %cond.true.464 ], [ %sub, %cond.false.465 ]
  %call469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %cond468) #6
  br label %if.end.470

if.end.470:                                       ; preds = %cond.end.467, %land.lhs.true.456, %land.lhs.true.452, %if.end.448
  %335 = load i32, i32* %needs_CRD, align 4, !tbaa !1
  %tobool471 = icmp ne i32 %335, 0
  br i1 %tobool471, label %if.then.472, label %if.end.508

if.then.472:                                      ; preds = %if.end.470
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %337 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants473 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %337, i32 0, i32 17
  %338 = load i32, i32* %number_of_colorants473, align 4, !tbaa !14
  %mul = mul i32 6, %338
  %add = add i32 2, %mul
  %339 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants474 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %339, i32 0, i32 17
  %340 = load i32, i32* %number_of_colorants474, align 4, !tbaa !14
  %call475 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %336, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 %add, i32 %340) #6
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.476

for.cond.476:                                     ; preds = %for.inc.505, %if.then.472
  %341 = load i32, i32* %j, align 4, !tbaa !1
  %342 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants477 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %342, i32 0, i32 17
  %343 = load i32, i32* %number_of_colorants477, align 4, !tbaa !14
  %cmp478 = icmp ult i32 %341, %343
  br i1 %cmp478, label %for.body.480, label %for.end.507

for.body.480:                                     ; preds = %for.cond.476
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %345 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom481 = sext i32 %345 to i64
  %346 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx482 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %346, i64 %idxprom481
  %hres483 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx482, i32 0, i32 0
  %347 = load i32, i32* %hres483, align 4, !tbaa !19
  %div = udiv i32 %347, 256
  %348 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom484 = sext i32 %348 to i64
  %349 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx485 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %349, i64 %idxprom484
  %hres486 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx485, i32 0, i32 0
  %350 = load i32, i32* %hres486, align 4, !tbaa !19
  %rem487 = urem i32 %350, 256
  %351 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom488 = sext i32 %351 to i64
  %352 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx489 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %352, i64 %idxprom488
  %vres490 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx489, i32 0, i32 1
  %353 = load i32, i32* %vres490, align 4, !tbaa !16
  %div491 = udiv i32 %353, 256
  %354 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom492 = sext i32 %354 to i64
  %355 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx493 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %355, i64 %idxprom492
  %vres494 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx493, i32 0, i32 1
  %356 = load i32, i32* %vres494, align 4, !tbaa !16
  %rem495 = urem i32 %356, 256
  %357 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom496 = sext i32 %357 to i64
  %358 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx497 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %358, i64 %idxprom496
  %levels498 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx497, i32 0, i32 2
  %359 = load i32, i32* %levels498, align 4, !tbaa !20
  %div499 = udiv i32 %359, 256
  %360 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom500 = sext i32 %360 to i64
  %361 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx501 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %361, i64 %idxprom500
  %levels502 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx501, i32 0, i32 2
  %362 = load i32, i32* %levels502, align 4, !tbaa !20
  %rem503 = urem i32 %362, 256
  %call504 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %344, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 %div, i32 %rem487, i32 %div491, i32 %rem495, i32 %div499, i32 %rem503) #6
  br label %for.inc.505

for.inc.505:                                      ; preds = %for.body.480
  %363 = load i32, i32* %j, align 4, !tbaa !1
  %inc506 = add nsw i32 %363, 1
  store i32 %inc506, i32* %j, align 4, !tbaa !1
  br label %for.cond.476

for.end.507:                                      ; preds = %for.cond.476
  br label %if.end.508

if.end.508:                                       ; preds = %for.end.507, %if.end.470
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call509 = call i32 @ferror(%struct._IO_FILE* %364) #8
  %tobool510 = icmp ne i32 %call509, 0
  br i1 %tobool510, label %if.then.511, label %if.end.513

if.then.511:                                      ; preds = %if.end.508
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call512 = call i32 @fputs(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %365) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.567

if.end.513:                                       ; preds = %if.end.508
  %366 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %init2 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %366, i32 0, i32 5
  %length514 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init2, i32 0, i32 1
  %367 = load i32, i32* %length514, align 4, !tbaa !39
  %cmp515 = icmp sgt i32 %367, 0
  br i1 %cmp515, label %if.then.517, label %if.end.524

if.then.517:                                      ; preds = %if.end.513
  %368 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %init2518 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %368, i32 0, i32 5
  %str519 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init2518, i32 0, i32 0
  %369 = load i8*, i8** %str519, align 8, !tbaa !40
  %370 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %init2520 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %370, i32 0, i32 5
  %length521 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %init2520, i32 0, i32 1
  %371 = load i32, i32* %length521, align 4, !tbaa !39
  %conv522 = sext i32 %371 to i64
  %372 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call523 = call i64 @fwrite(i8* %369, i64 1, i64 %conv522, %struct._IO_FILE* %372) #6
  br label %if.end.524

if.end.524:                                       ; preds = %if.then.517, %if.end.513
  %373 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette525 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %373, i32 0, i32 16
  %374 = load i32, i32* %palette525, align 4, !tbaa !13
  %cmp526 = icmp eq i32 %374, 2
  br i1 %cmp526, label %if.then.532, label %lor.lhs.false.528

lor.lhs.false.528:                                ; preds = %if.end.524
  %375 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette529 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %375, i32 0, i32 16
  %376 = load i32, i32* %palette529, align 4, !tbaa !13
  %cmp530 = icmp eq i32 %376, 4
  br i1 %cmp530, label %if.then.532, label %if.else.533

if.then.532:                                      ; preds = %lor.lhs.false.528, %if.end.524
  %377 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %black_planes = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %377, i32 0, i32 24
  store i16 0, i16* %black_planes, align 2, !tbaa !41
  br label %if.end.544

if.else.533:                                      ; preds = %lor.lhs.false.528
  %378 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx534 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %378, i64 0
  %levels535 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx534, i32 0, i32 2
  %379 = load i32, i32* %levels535, align 4, !tbaa !20
  %call536 = call i32 @pcl3_levels_to_planes(i32 %379) #6
  %380 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx537 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %380, i64 0
  %vres538 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx537, i32 0, i32 1
  %381 = load i32, i32* %vres538, align 4, !tbaa !16
  %382 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %minvres539 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %382, i32 0, i32 25
  %383 = load i32, i32* %minvres539, align 4, !tbaa !18
  %div540 = udiv i32 %381, %383
  %mul541 = mul i32 %call536, %div540
  %conv542 = trunc i32 %mul541 to i16
  %384 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %black_planes543 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %384, i32 0, i32 24
  store i16 %conv542, i16* %black_planes543, align 2, !tbaa !41
  br label %if.end.544

if.end.544:                                       ; preds = %if.else.533, %if.then.532
  %385 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_bitplanes = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %385, i32 0, i32 23
  store i16 0, i16* %number_of_bitplanes, align 2, !tbaa !42
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.545

for.cond.545:                                     ; preds = %for.inc.564, %if.end.544
  %386 = load i32, i32* %j, align 4, !tbaa !1
  %387 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_colorants546 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %387, i32 0, i32 17
  %388 = load i32, i32* %number_of_colorants546, align 4, !tbaa !14
  %cmp547 = icmp ult i32 %386, %388
  br i1 %cmp547, label %for.body.549, label %for.end.566

for.body.549:                                     ; preds = %for.cond.545
  %389 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom550 = sext i32 %389 to i64
  %390 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx551 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %390, i64 %idxprom550
  %levels552 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx551, i32 0, i32 2
  %391 = load i32, i32* %levels552, align 4, !tbaa !20
  %call553 = call i32 @pcl3_levels_to_planes(i32 %391) #6
  %392 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom554 = sext i32 %392 to i64
  %393 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx555 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %393, i64 %idxprom554
  %vres556 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx555, i32 0, i32 1
  %394 = load i32, i32* %vres556, align 4, !tbaa !16
  %395 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %minvres557 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %395, i32 0, i32 25
  %396 = load i32, i32* %minvres557, align 4, !tbaa !18
  %div558 = udiv i32 %394, %396
  %mul559 = mul i32 %call553, %div558
  %397 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %number_of_bitplanes560 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %397, i32 0, i32 23
  %398 = load i16, i16* %number_of_bitplanes560, align 2, !tbaa !42
  %conv561 = zext i16 %398 to i32
  %add562 = add i32 %conv561, %mul559
  %conv563 = trunc i32 %add562 to i16
  store i16 %conv563, i16* %number_of_bitplanes560, align 2, !tbaa !42
  br label %for.inc.564

for.inc.564:                                      ; preds = %for.body.549
  %399 = load i32, i32* %j, align 4, !tbaa !1
  %inc565 = add nsw i32 %399, 1
  store i32 %inc565, i32* %j, align 4, !tbaa !1
  br label %for.cond.545

for.end.566:                                      ; preds = %for.cond.545
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.567

cleanup.567:                                      ; preds = %for.end.566, %if.then.511, %cleanup
  %400 = bitcast i32* %maxvres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #1
  %401 = bitcast i32* %maxhres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast %struct.pcl_ColorantState** %colorant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %402) #1
  %403 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast i32* %needs_CRD to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #1
  %405 = load i32, i32* %retval
  ret i32 %405
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @send_ERG(%struct._IO_FILE* %out, i32 %level) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %level.addr = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store i32 %level, i32* %level.addr, align 4, !tbaa !23
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %0) #6
  %1 = load i32, i32* %level.addr, align 4, !tbaa !23
  %cmp = icmp ule i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call1 = call i32 @fputc(i32 66, %struct._IO_FILE* %2) #6
  br label %if.end.7

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %level.addr, align 4, !tbaa !23
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %4) #6
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call6 = call i32 @fputc(i32 67, %struct._IO_FILE* %5) #6
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define i32 @pcl3_begin_page(%struct._IO_FILE* %out, %struct.pcl_FileData* %global) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %global.addr = alloca %struct.pcl_FileData*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_FileData* %global, %struct.pcl_FileData** %global.addr, align 8, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %0) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @pcl3_begin_raster(%struct._IO_FILE* %out, %struct.pcl_RasterData* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca %struct.pcl_RasterData*, align 8
  %global = alloca %struct.pcl_FileData*, align 8
  %j = alloca i32, align 4
  %invalid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %strip = alloca i32, align 4
  %colorant = alloca %struct.pcl_ColorantState*, align 8
  %plane = alloca i32, align 4
  %lines = alloca i32, align 4
  %planes = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_RasterData* %data, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %0 = bitcast %struct.pcl_FileData** %global to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.pcl_FileData* null, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %invalid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %cmp = icmp eq %struct.pcl_RasterData* %3, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global1 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %4, i32 0, i32 1
  %5 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global1, align 8, !tbaa !43
  %cmp2 = icmp eq %struct.pcl_FileData* %5, null
  br i1 %cmp2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %6, i32 0, i32 3
  %7 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next, align 8, !tbaa !45
  %cmp4 = icmp eq %struct.pcl_OctetString* %7, null
  br i1 %cmp4, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %8 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %8, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace, i32 0, i64 0
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !7
  %cmp6 = icmp eq i8* %9, null
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %10 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace_allocated = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %10, i32 0, i32 5
  %11 = load i64, i64* %workspace_allocated, align 8, !tbaa !46
  %cmp7 = icmp ule i64 %11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* %invalid, align 4, !tbaa !1
  %13 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end.86, label %if.then

if.then:                                          ; preds = %lor.end
  %14 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global8 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %14, i32 0, i32 1
  %15 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global8, align 8, !tbaa !43
  store %struct.pcl_FileData* %15, %struct.pcl_FileData** %global, align 8, !tbaa !7
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, i32* %j, align 4, !tbaa !1
  %17 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %17, i32 0, i32 23
  %18 = load i16, i16* %number_of_bitplanes, align 2, !tbaa !42
  %conv = zext i16 %18 to i32
  %cmp9 = icmp slt i32 %16, %conv
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next11 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %20, i32 0, i32 3
  %21 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next11, align 8, !tbaa !45
  %arrayidx12 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %21, i64 %idxprom
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx12, i32 0, i32 1
  %22 = load i32, i32* %length, align 4, !tbaa !47
  %cmp13 = icmp eq i32 %22, 0
  br i1 %cmp13, label %lor.end.21, label %lor.rhs.15

lor.rhs.15:                                       ; preds = %land.rhs
  %23 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next17 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %24, i32 0, i32 3
  %25 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %25, i64 %idxprom16
  %str = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx18, i32 0, i32 0
  %26 = load i8*, i8** %str, align 8, !tbaa !48
  %cmp19 = icmp ne i8* %26, null
  br label %lor.end.21

lor.end.21:                                       ; preds = %lor.rhs.15, %land.rhs
  %27 = phi i1 [ true, %land.rhs ], [ %cmp19, %lor.rhs.15 ]
  br label %land.end

land.end:                                         ; preds = %lor.end.21, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %27, %lor.end.21 ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %30 = load i32, i32* %j, align 4, !tbaa !1
  %31 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes23 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %31, i32 0, i32 23
  %32 = load i16, i16* %number_of_bitplanes23, align 2, !tbaa !42
  %conv24 = zext i16 %32 to i32
  %cmp25 = icmp slt i32 %30, %conv24
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %invalid, align 4, !tbaa !1
  %33 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool27 = icmp ne i32 %33, 0
  br i1 %tobool27, label %if.end.85, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %34 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %34, i32 0, i32 22
  %35 = load i32, i32* %compression, align 4, !tbaa !49
  %cmp28 = icmp eq i32 %35, 3
  br i1 %cmp28, label %if.then.38, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true
  %36 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression31 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %36, i32 0, i32 22
  %37 = load i32, i32* %compression31, align 4, !tbaa !49
  %cmp32 = icmp eq i32 %37, 5
  br i1 %cmp32, label %if.then.38, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.30
  %38 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression35 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %38, i32 0, i32 22
  %39 = load i32, i32* %compression35, align 4, !tbaa !49
  %cmp36 = icmp eq i32 %39, 9
  br i1 %cmp36, label %if.then.38, label %if.end.85

if.then.38:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false.30, %land.lhs.true
  %40 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %40, i32 0, i32 2
  %41 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous, align 8, !tbaa !50
  %cmp39 = icmp eq %struct.pcl_OctetString* %41, null
  br i1 %cmp39, label %lor.end.51, label %lor.rhs.41

lor.rhs.41:                                       ; preds = %if.then.38
  %42 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression42 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %42, i32 0, i32 22
  %43 = load i32, i32* %compression42, align 4, !tbaa !49
  %cmp43 = icmp eq i32 %43, 3
  br i1 %cmp43, label %land.rhs.45, label %land.end.50

land.rhs.45:                                      ; preds = %lor.rhs.41
  %44 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace46 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %44, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace46, i32 0, i64 1
  %45 = load i8*, i8** %arrayidx47, align 8, !tbaa !7
  %cmp48 = icmp eq i8* %45, null
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.45, %lor.rhs.41
  %46 = phi i1 [ false, %lor.rhs.41 ], [ %cmp48, %land.rhs.45 ]
  br label %lor.end.51

lor.end.51:                                       ; preds = %land.end.50, %if.then.38
  %47 = phi i1 [ true, %if.then.38 ], [ %46, %land.end.50 ]
  %lor.ext52 = zext i1 %47 to i32
  store i32 %lor.ext52, i32* %invalid, align 4, !tbaa !1
  %48 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool53 = icmp ne i32 %48, 0
  br i1 %tobool53, label %if.end, label %if.then.54

if.then.54:                                       ; preds = %lor.end.51
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.78, %if.then.54
  %49 = load i32, i32* %j, align 4, !tbaa !1
  %50 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes56 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %50, i32 0, i32 23
  %51 = load i16, i16* %number_of_bitplanes56, align 2, !tbaa !42
  %conv57 = zext i16 %51 to i32
  %cmp58 = icmp slt i32 %49, %conv57
  br i1 %cmp58, label %land.rhs.60, label %land.end.76

land.rhs.60:                                      ; preds = %for.cond.55
  %52 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom61 = sext i32 %52 to i64
  %53 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous62 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %53, i32 0, i32 2
  %54 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous62, align 8, !tbaa !50
  %arrayidx63 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %54, i64 %idxprom61
  %length64 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx63, i32 0, i32 1
  %55 = load i32, i32* %length64, align 4, !tbaa !47
  %cmp65 = icmp eq i32 %55, 0
  br i1 %cmp65, label %lor.end.74, label %lor.rhs.67

lor.rhs.67:                                       ; preds = %land.rhs.60
  %56 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom68 = sext i32 %56 to i64
  %57 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous69 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %57, i32 0, i32 2
  %58 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous69, align 8, !tbaa !50
  %arrayidx70 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %58, i64 %idxprom68
  %str71 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx70, i32 0, i32 0
  %59 = load i8*, i8** %str71, align 8, !tbaa !48
  %cmp72 = icmp ne i8* %59, null
  br label %lor.end.74

lor.end.74:                                       ; preds = %lor.rhs.67, %land.rhs.60
  %60 = phi i1 [ true, %land.rhs.60 ], [ %cmp72, %lor.rhs.67 ]
  br label %land.end.76

land.end.76:                                      ; preds = %lor.end.74, %for.cond.55
  %61 = phi i1 [ false, %for.cond.55 ], [ %60, %lor.end.74 ]
  br i1 %61, label %for.body.77, label %for.end.80

for.body.77:                                      ; preds = %land.end.76
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.77
  %62 = load i32, i32* %j, align 4, !tbaa !1
  %inc79 = add nsw i32 %62, 1
  store i32 %inc79, i32* %j, align 4, !tbaa !1
  br label %for.cond.55

for.end.80:                                       ; preds = %land.end.76
  %63 = load i32, i32* %j, align 4, !tbaa !1
  %64 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes81 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %64, i32 0, i32 23
  %65 = load i16, i16* %number_of_bitplanes81, align 2, !tbaa !42
  %conv82 = zext i16 %65 to i32
  %cmp83 = icmp slt i32 %63, %conv82
  %conv84 = zext i1 %cmp83 to i32
  store i32 %conv84, i32* %invalid, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %for.end.80, %lor.end.51
  br label %if.end.85

if.end.85:                                        ; preds = %if.end, %lor.lhs.false.34, %for.end
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %lor.end
  %66 = load i32, i32* %invalid, align 4, !tbaa !1
  %tobool87 = icmp ne i32 %66, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.86
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call = call i32 @fputs(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %67) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.89:                                        ; preds = %if.end.86
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.89, %if.then.88
  %68 = bitcast i32* %invalid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.216 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %69 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes90 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %69, i32 0, i32 23
  %70 = load i16, i16* %number_of_bitplanes90, align 2, !tbaa !42
  %conv91 = zext i16 %70 to i64
  %mul = mul i64 %conv91, 8
  %call92 = call noalias i8* @malloc(i64 %mul) #8
  %71 = bitcast i8* %call92 to %struct.pcl_OctetString**
  %72 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %72, i32 0, i32 7
  store %struct.pcl_OctetString** %71, %struct.pcl_OctetString*** %seed_plane, align 8, !tbaa !51
  %73 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane93 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %73, i32 0, i32 7
  %74 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane93, align 8, !tbaa !51
  %cmp94 = icmp eq %struct.pcl_OctetString** %74, null
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %cleanup.cont
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call97 = call i32 @fputs(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %75) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

if.end.98:                                        ; preds = %cleanup.cont
  %76 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane99 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %76, i32 0, i32 7
  %77 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane99, align 8, !tbaa !51
  %78 = bitcast %struct.pcl_OctetString** %77 to i8*
  %79 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes100 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %79, i32 0, i32 23
  %80 = load i16, i16* %number_of_bitplanes100, align 2, !tbaa !42
  %conv101 = zext i16 %80 to i64
  %mul102 = mul i64 %conv101, 8
  %call103 = call i8* @memset(i8* %78, i32 0, i64 %mul102) #8
  %81 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression104 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %81, i32 0, i32 22
  %82 = load i32, i32* %compression104, align 4, !tbaa !49
  %cmp105 = icmp eq i32 %82, 3
  br i1 %cmp105, label %if.then.115, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.end.98
  %83 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression108 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %83, i32 0, i32 22
  %84 = load i32, i32* %compression108, align 4, !tbaa !49
  %cmp109 = icmp eq i32 %84, 5
  br i1 %cmp109, label %if.then.115, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.107
  %85 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression112 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %85, i32 0, i32 22
  %86 = load i32, i32* %compression112, align 4, !tbaa !49
  %cmp113 = icmp eq i32 %86, 9
  br i1 %cmp113, label %if.then.115, label %if.end.172

if.then.115:                                      ; preds = %lor.lhs.false.111, %lor.lhs.false.107, %if.end.98
  %87 = bitcast i32* %strip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = bitcast %struct.pcl_ColorantState** %colorant to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  store %struct.pcl_ColorantState* null, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %89 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  store i32 0, i32* %plane, align 4, !tbaa !1
  %90 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %colorant116 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %90, i32 0, i32 18
  %91 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant116, align 8, !tbaa !15
  %cmp117 = icmp eq %struct.pcl_ColorantState* %91, null
  br i1 %cmp117, label %if.then.119, label %if.else

if.then.119:                                      ; preds = %if.then.115
  %92 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %colorant_array = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %92, i32 0, i32 19
  %arraydecay = getelementptr inbounds [4 x %struct.pcl_ColorantState], [4 x %struct.pcl_ColorantState]* %colorant_array, i32 0, i32 0
  store %struct.pcl_ColorantState* %arraydecay, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  br label %if.end.121

if.else:                                          ; preds = %if.then.115
  %93 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %colorant120 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %93, i32 0, i32 18
  %94 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant120, align 8, !tbaa !15
  store %struct.pcl_ColorantState* %94, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  br label %if.end.121

if.end.121:                                       ; preds = %if.else, %if.then.119
  store i32 0, i32* %strip, align 4, !tbaa !1
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.169, %if.end.121
  %95 = load i32, i32* %strip, align 4, !tbaa !1
  %96 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_colorants = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %96, i32 0, i32 17
  %97 = load i32, i32* %number_of_colorants, align 4, !tbaa !14
  %cmp123 = icmp ult i32 %95, %97
  br i1 %cmp123, label %for.body.125, label %for.end.171

for.body.125:                                     ; preds = %for.cond.122
  %98 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = load i32, i32* %strip, align 4, !tbaa !1
  %idxprom126 = sext i32 %99 to i64
  %100 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx127 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %100, i64 %idxprom126
  %vres = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx127, i32 0, i32 1
  %101 = load i32, i32* %vres, align 4, !tbaa !16
  %102 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %minvres = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %102, i32 0, i32 25
  %103 = load i32, i32* %minvres, align 4, !tbaa !18
  %div = udiv i32 %101, %103
  store i32 %div, i32* %lines, align 4, !tbaa !1
  %104 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load i32, i32* %strip, align 4, !tbaa !1
  %idxprom128 = sext i32 %105 to i64
  %106 = load %struct.pcl_ColorantState*, %struct.pcl_ColorantState** %colorant, align 8, !tbaa !7
  %arrayidx129 = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %106, i64 %idxprom128
  %levels = getelementptr inbounds %struct.pcl_ColorantState, %struct.pcl_ColorantState* %arrayidx129, i32 0, i32 2
  %107 = load i32, i32* %levels, align 4, !tbaa !20
  %call130 = call i32 @pcl3_levels_to_planes(i32 %107) #6
  store i32 %call130, i32* %planes, align 4, !tbaa !1
  %108 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  store i32 0, i32* %p, align 4, !tbaa !1
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.142, %for.body.125
  %110 = load i32, i32* %p, align 4, !tbaa !1
  %111 = load i32, i32* %planes, align 4, !tbaa !1
  %cmp132 = icmp slt i32 %110, %111
  br i1 %cmp132, label %for.body.134, label %for.end.145

for.body.134:                                     ; preds = %for.cond.131
  %112 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous135 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %112, i32 0, i32 2
  %113 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous135, align 8, !tbaa !50
  %114 = load i32, i32* %plane, align 4, !tbaa !1
  %idx.ext = sext i32 %114 to i64
  %add.ptr = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %113, i64 %idx.ext
  %115 = load i32, i32* %lines, align 4, !tbaa !1
  %sub = sub nsw i32 %115, 1
  %116 = load i32, i32* %planes, align 4, !tbaa !1
  %mul136 = mul nsw i32 %sub, %116
  %idx.ext137 = sext i32 %mul136 to i64
  %add.ptr138 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %add.ptr, i64 %idx.ext137
  %117 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom139 = sext i32 %117 to i64
  %118 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane140 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %118, i32 0, i32 7
  %119 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane140, align 8, !tbaa !51
  %arrayidx141 = getelementptr inbounds %struct.pcl_OctetString*, %struct.pcl_OctetString** %119, i64 %idxprom139
  store %struct.pcl_OctetString* %add.ptr138, %struct.pcl_OctetString** %arrayidx141, align 8, !tbaa !7
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.134
  %120 = load i32, i32* %p, align 4, !tbaa !1
  %inc143 = add nsw i32 %120, 1
  store i32 %inc143, i32* %p, align 4, !tbaa !1
  %121 = load i32, i32* %plane, align 4, !tbaa !1
  %inc144 = add nsw i32 %121, 1
  store i32 %inc144, i32* %plane, align 4, !tbaa !1
  br label %for.cond.131

for.end.145:                                      ; preds = %for.cond.131
  store i32 1, i32* %l, align 4, !tbaa !1
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.166, %for.end.145
  %122 = load i32, i32* %l, align 4, !tbaa !1
  %123 = load i32, i32* %lines, align 4, !tbaa !1
  %cmp147 = icmp slt i32 %122, %123
  br i1 %cmp147, label %for.body.149, label %for.end.168

for.body.149:                                     ; preds = %for.cond.146
  store i32 0, i32* %p, align 4, !tbaa !1
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.162, %for.body.149
  %124 = load i32, i32* %p, align 4, !tbaa !1
  %125 = load i32, i32* %planes, align 4, !tbaa !1
  %cmp151 = icmp slt i32 %124, %125
  br i1 %cmp151, label %for.body.153, label %for.end.165

for.body.153:                                     ; preds = %for.cond.150
  %126 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next154 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %126, i32 0, i32 3
  %127 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next154, align 8, !tbaa !45
  %128 = load i32, i32* %plane, align 4, !tbaa !1
  %idx.ext155 = sext i32 %128 to i64
  %add.ptr156 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %127, i64 %idx.ext155
  %129 = load i32, i32* %planes, align 4, !tbaa !1
  %idx.ext157 = sext i32 %129 to i64
  %idx.neg = sub i64 0, %idx.ext157
  %add.ptr158 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %add.ptr156, i64 %idx.neg
  %130 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom159 = sext i32 %130 to i64
  %131 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane160 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %131, i32 0, i32 7
  %132 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane160, align 8, !tbaa !51
  %arrayidx161 = getelementptr inbounds %struct.pcl_OctetString*, %struct.pcl_OctetString** %132, i64 %idxprom159
  store %struct.pcl_OctetString* %add.ptr158, %struct.pcl_OctetString** %arrayidx161, align 8, !tbaa !7
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.153
  %133 = load i32, i32* %p, align 4, !tbaa !1
  %inc163 = add nsw i32 %133, 1
  store i32 %inc163, i32* %p, align 4, !tbaa !1
  %134 = load i32, i32* %plane, align 4, !tbaa !1
  %inc164 = add nsw i32 %134, 1
  store i32 %inc164, i32* %plane, align 4, !tbaa !1
  br label %for.cond.150

for.end.165:                                      ; preds = %for.cond.150
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end.165
  %135 = load i32, i32* %l, align 4, !tbaa !1
  %inc167 = add nsw i32 %135, 1
  store i32 %inc167, i32* %l, align 4, !tbaa !1
  br label %for.cond.146

for.end.168:                                      ; preds = %for.cond.146
  %136 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.end.168
  %140 = load i32, i32* %strip, align 4, !tbaa !1
  %inc170 = add nsw i32 %140, 1
  store i32 %inc170, i32* %strip, align 4, !tbaa !1
  br label %for.cond.122

for.end.171:                                      ; preds = %for.cond.122
  %141 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast %struct.pcl_ColorantState** %colorant to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32* %strip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  br label %if.end.172

if.end.172:                                       ; preds = %for.end.171, %lor.lhs.false.111
  %144 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %width = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %144, i32 0, i32 0
  %145 = load i32, i32* %width, align 4, !tbaa !52
  %cmp173 = icmp ugt i32 %145, 0
  br i1 %cmp173, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %if.end.172
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %147 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %width176 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %147, i32 0, i32 0
  %148 = load i32, i32* %width176, align 4, !tbaa !52
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %148) #6
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %if.end.172
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call179 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %149) #6
  %150 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression180 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %150, i32 0, i32 22
  %151 = load i32, i32* %compression180, align 4, !tbaa !49
  %cmp181 = icmp eq i32 %151, 3
  br i1 %cmp181, label %if.then.191, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %if.end.178
  %152 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression184 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %152, i32 0, i32 22
  %153 = load i32, i32* %compression184, align 4, !tbaa !49
  %cmp185 = icmp eq i32 %153, 5
  br i1 %cmp185, label %if.then.191, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %lor.lhs.false.183
  %154 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression188 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %154, i32 0, i32 22
  %155 = load i32, i32* %compression188, align 4, !tbaa !49
  %cmp189 = icmp eq i32 %155, 9
  br i1 %cmp189, label %if.then.191, label %if.end.205

if.then.191:                                      ; preds = %lor.lhs.false.187, %lor.lhs.false.183, %if.end.178
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.202, %if.then.191
  %156 = load i32, i32* %j, align 4, !tbaa !1
  %157 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes193 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %157, i32 0, i32 23
  %158 = load i16, i16* %number_of_bitplanes193, align 2, !tbaa !42
  %conv194 = zext i16 %158 to i32
  %cmp195 = icmp slt i32 %156, %conv194
  br i1 %cmp195, label %for.body.197, label %for.end.204

for.body.197:                                     ; preds = %for.cond.192
  %159 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom198 = sext i32 %159 to i64
  %160 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous199 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %160, i32 0, i32 2
  %161 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous199, align 8, !tbaa !50
  %arrayidx200 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %161, i64 %idxprom198
  %length201 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx200, i32 0, i32 1
  store i32 0, i32* %length201, align 4, !tbaa !47
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.197
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %inc203 = add nsw i32 %162, 1
  store i32 %inc203, i32* %j, align 4, !tbaa !1
  br label %for.cond.192

for.end.204:                                      ; preds = %for.cond.192
  br label %if.end.205

if.end.205:                                       ; preds = %for.end.204, %lor.lhs.false.187
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call206 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %163) #6
  %164 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %level = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %164, i32 0, i32 0
  %165 = load i32, i32* %level, align 4, !tbaa !9
  %cmp207 = icmp ule i32 %165, 0
  br i1 %cmp207, label %if.then.209, label %if.else.213

if.then.209:                                      ; preds = %if.end.205
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %167 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression210 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %167, i32 0, i32 22
  %168 = load i32, i32* %compression210, align 4, !tbaa !49
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 %168) #6
  %169 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression212 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %169, i32 0, i32 22
  %170 = load i32, i32* %compression212, align 4, !tbaa !49
  %171 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %current_compression = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %171, i32 0, i32 6
  store i32 %170, i32* %current_compression, align 4, !tbaa !53
  br label %if.end.215

if.else.213:                                      ; preds = %if.end.205
  %172 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %current_compression214 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %172, i32 0, i32 6
  store i32 0, i32* %current_compression214, align 4, !tbaa !53
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213, %if.then.209
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.216

cleanup.216:                                      ; preds = %if.end.215, %if.then.96, %cleanup
  %173 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast %struct.pcl_FileData** %global to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = load i32, i32* %retval
  ret i32 %175
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define i32 @pcl3_skip_groups(%struct._IO_FILE* %out, %struct.pcl_RasterData* %data, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca %struct.pcl_RasterData*, align 8
  %count.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_RasterData* %data, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  store i32 %count, i32* %count.addr, align 4, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %3 = load i32, i32* %count.addr, align 4, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 %3) #6
  %4 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %4, i32 0, i32 1
  %5 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !43
  %compression = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %5, i32 0, i32 22
  %6 = load i32, i32* %compression, align 4, !tbaa !49
  %cmp1 = icmp eq i32 %6, 3
  br i1 %cmp1, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global2 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %7, i32 0, i32 1
  %8 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global2, align 8, !tbaa !43
  %compression3 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %8, i32 0, i32 22
  %9 = load i32, i32* %compression3, align 4, !tbaa !49
  %cmp4 = icmp eq i32 %9, 5
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %10 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global6 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %10, i32 0, i32 1
  %11 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global6, align 8, !tbaa !43
  %compression7 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %11, i32 0, i32 22
  %12 = load i32, i32* %compression7, align 4, !tbaa !49
  %cmp8 = icmp eq i32 %12, 9
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %lor.lhs.false.5, %lor.lhs.false, %if.end
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %13 = load i32, i32* %j, align 4, !tbaa !1
  %14 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global10 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %14, i32 0, i32 1
  %15 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global10, align 8, !tbaa !43
  %number_of_bitplanes = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %15, i32 0, i32 23
  %16 = load i16, i16* %number_of_bitplanes, align 2, !tbaa !42
  %conv = zext i16 %16 to i32
  %cmp11 = icmp slt i32 %13, %conv
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %18, i32 0, i32 2
  %19 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous, align 8, !tbaa !50
  %arrayidx = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %19, i64 %idxprom
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %arrayidx, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !47
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %lor.lhs.false.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @pcl3_transfer_group(%struct._IO_FILE* %out, %struct.pcl_RasterData* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca %struct.pcl_RasterData*, align 8
  %global = alloca %struct.pcl_FileData*, align 8
  %final = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct.pcl_OctetString, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_RasterData* %data, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %0 = bitcast %struct.pcl_FileData** %global to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global1 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %1, i32 0, i32 1
  %2 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global1, align 8, !tbaa !43
  store %struct.pcl_FileData* %2, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %3 = bitcast i32* %final to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %palette = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %5, i32 0, i32 16
  %6 = load i32, i32* %palette, align 4, !tbaa !13
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %order_CMYK = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %7, i32 0, i32 20
  %8 = load i32, i32* %order_CMYK, align 4, !tbaa !21
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %black_planes = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %9, i32 0, i32 24
  %10 = load i16, i16* %black_planes, align 2, !tbaa !41
  %conv = zext i16 %10 to i32
  store i32 %conv, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %12 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %12, i32 0, i32 23
  %13 = load i16, i16* %number_of_bitplanes, align 2, !tbaa !42
  %conv2 = zext i16 %13 to i32
  %cmp3 = icmp slt i32 %11, %conv2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %14, i32 0, i32 22
  %15 = load i32, i32* %compression, align 4, !tbaa !49
  %16 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %current_compression = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %16, i32 0, i32 6
  %17 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %17, i32 0, i32 3
  %18 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next, align 8, !tbaa !45
  %19 = load i32, i32* %j, align 4, !tbaa !1
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %18, i64 %idx.ext
  %20 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %21, i32 0, i32 7
  %22 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane, align 8, !tbaa !51
  %arrayidx = getelementptr inbounds %struct.pcl_OctetString*, %struct.pcl_OctetString** %22, i64 %idxprom
  %23 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %arrayidx, align 8, !tbaa !7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %25 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %25, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace, i32 0, i64 0
  %26 = load i8*, i8** %arrayidx5, align 8, !tbaa !7
  %27 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace6 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %27, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace6, i32 0, i64 1
  %28 = load i8*, i8** %arrayidx7, align 8, !tbaa !7
  %29 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace_allocated = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %29, i32 0, i32 5
  %30 = load i64, i64* %workspace_allocated, align 8, !tbaa !46
  %call = call i32 @send_plane(i32 0, i32 %15, i32* %current_compression, %struct.pcl_OctetString* %add.ptr, %struct.pcl_OctetString* %23, %struct._IO_FILE* %24, i8* %26, i8* %28, i64 %30) #6
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %j, align 4, !tbaa !1
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %black_planes11 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %32, i32 0, i32 24
  %33 = load i16, i16* %black_planes11, align 2, !tbaa !41
  %conv12 = zext i16 %33 to i32
  %sub = sub nsw i32 %conv12, 1
  store i32 %sub, i32* %final, align 4, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.39, %for.end
  %34 = load i32, i32* %j, align 4, !tbaa !1
  %35 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %black_planes14 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %35, i32 0, i32 24
  %36 = load i16, i16* %black_planes14, align 2, !tbaa !41
  %conv15 = zext i16 %36 to i32
  %cmp16 = icmp slt i32 %34, %conv15
  br i1 %cmp16, label %for.body.18, label %for.end.41

for.body.18:                                      ; preds = %for.cond.13
  %37 = load i32, i32* %j, align 4, !tbaa !1
  %38 = load i32, i32* %final, align 4, !tbaa !1
  %cmp19 = icmp eq i32 %37, %38
  %conv20 = zext i1 %cmp19 to i32
  %39 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression21 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %39, i32 0, i32 22
  %40 = load i32, i32* %compression21, align 4, !tbaa !49
  %41 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %current_compression22 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %41, i32 0, i32 6
  %42 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next23 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %42, i32 0, i32 3
  %43 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next23, align 8, !tbaa !45
  %44 = load i32, i32* %j, align 4, !tbaa !1
  %idx.ext24 = sext i32 %44 to i64
  %add.ptr25 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %43, i64 %idx.ext24
  %45 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom26 = sext i32 %45 to i64
  %46 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane27 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %46, i32 0, i32 7
  %47 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane27, align 8, !tbaa !51
  %arrayidx28 = getelementptr inbounds %struct.pcl_OctetString*, %struct.pcl_OctetString** %47, i64 %idxprom26
  %48 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %arrayidx28, align 8, !tbaa !7
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %50 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace29 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %50, i32 0, i32 4
  %arrayidx30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace29, i32 0, i64 0
  %51 = load i8*, i8** %arrayidx30, align 8, !tbaa !7
  %52 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace31 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %52, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace31, i32 0, i64 1
  %53 = load i8*, i8** %arrayidx32, align 8, !tbaa !7
  %54 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace_allocated33 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %54, i32 0, i32 5
  %55 = load i64, i64* %workspace_allocated33, align 8, !tbaa !46
  %call34 = call i32 @send_plane(i32 %conv20, i32 %40, i32* %current_compression22, %struct.pcl_OctetString* %add.ptr25, %struct.pcl_OctetString* %48, %struct._IO_FILE* %49, i8* %51, i8* %53, i64 %55) #6
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.18
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %for.body.18
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %56 = load i32, i32* %j, align 4, !tbaa !1
  %inc40 = add nsw i32 %56, 1
  store i32 %inc40, i32* %j, align 4, !tbaa !1
  br label %for.cond.13

for.end.41:                                       ; preds = %for.cond.13
  br label %if.end.74

if.else:                                          ; preds = %land.lhs.true, %entry
  %57 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes42 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %57, i32 0, i32 23
  %58 = load i16, i16* %number_of_bitplanes42, align 2, !tbaa !42
  %conv43 = zext i16 %58 to i32
  %sub44 = sub nsw i32 %conv43, 1
  store i32 %sub44, i32* %final, align 4, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.71, %if.else
  %59 = load i32, i32* %j, align 4, !tbaa !1
  %60 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes46 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %60, i32 0, i32 23
  %61 = load i16, i16* %number_of_bitplanes46, align 2, !tbaa !42
  %conv47 = zext i16 %61 to i32
  %cmp48 = icmp slt i32 %59, %conv47
  br i1 %cmp48, label %for.body.50, label %for.end.73

for.body.50:                                      ; preds = %for.cond.45
  %62 = load i32, i32* %j, align 4, !tbaa !1
  %63 = load i32, i32* %final, align 4, !tbaa !1
  %cmp51 = icmp eq i32 %62, %63
  %conv52 = zext i1 %cmp51 to i32
  %64 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %compression53 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %64, i32 0, i32 22
  %65 = load i32, i32* %compression53, align 4, !tbaa !49
  %66 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %current_compression54 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %66, i32 0, i32 6
  %67 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next55 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %67, i32 0, i32 3
  %68 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next55, align 8, !tbaa !45
  %69 = load i32, i32* %j, align 4, !tbaa !1
  %idx.ext56 = sext i32 %69 to i64
  %add.ptr57 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %68, i64 %idx.ext56
  %70 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom58 = sext i32 %70 to i64
  %71 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane59 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %71, i32 0, i32 7
  %72 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane59, align 8, !tbaa !51
  %arrayidx60 = getelementptr inbounds %struct.pcl_OctetString*, %struct.pcl_OctetString** %72, i64 %idxprom58
  %73 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %arrayidx60, align 8, !tbaa !7
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %75 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace61 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %75, i32 0, i32 4
  %arrayidx62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace61, i32 0, i64 0
  %76 = load i8*, i8** %arrayidx62, align 8, !tbaa !7
  %77 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace63 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %77, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [2 x i8*], [2 x i8*]* %workspace63, i32 0, i64 1
  %78 = load i8*, i8** %arrayidx64, align 8, !tbaa !7
  %79 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %workspace_allocated65 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %79, i32 0, i32 5
  %80 = load i64, i64* %workspace_allocated65, align 8, !tbaa !46
  %call66 = call i32 @send_plane(i32 %conv52, i32 %65, i32* %current_compression54, %struct.pcl_OctetString* %add.ptr57, %struct.pcl_OctetString* %73, %struct._IO_FILE* %74, i8* %76, i8* %78, i64 %80) #6
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.50
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %for.body.50
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %81 = load i32, i32* %j, align 4, !tbaa !1
  %inc72 = add nsw i32 %81, 1
  store i32 %inc72, i32* %j, align 4, !tbaa !1
  br label %for.cond.45

for.end.73:                                       ; preds = %for.cond.45
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %for.end.41
  %82 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global75 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %82, i32 0, i32 1
  %83 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global75, align 8, !tbaa !43
  %compression76 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %83, i32 0, i32 22
  %84 = load i32, i32* %compression76, align 4, !tbaa !49
  %cmp77 = icmp eq i32 %84, 3
  br i1 %cmp77, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.74
  %85 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global79 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %85, i32 0, i32 1
  %86 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global79, align 8, !tbaa !43
  %compression80 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %86, i32 0, i32 22
  %87 = load i32, i32* %compression80, align 4, !tbaa !49
  %cmp81 = icmp eq i32 %87, 5
  br i1 %cmp81, label %if.then.88, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false
  %88 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global84 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %88, i32 0, i32 1
  %89 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global84, align 8, !tbaa !43
  %compression85 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %89, i32 0, i32 22
  %90 = load i32, i32* %compression85, align 4, !tbaa !49
  %cmp86 = icmp eq i32 %90, 9
  br i1 %cmp86, label %if.then.88, label %if.end.109

if.then.88:                                       ; preds = %lor.lhs.false.83, %lor.lhs.false, %if.end.74
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.106, %if.then.88
  %91 = load i32, i32* %j, align 4, !tbaa !1
  %92 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !7
  %number_of_bitplanes90 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %92, i32 0, i32 23
  %93 = load i16, i16* %number_of_bitplanes90, align 2, !tbaa !42
  %conv91 = zext i16 %93 to i32
  %cmp92 = icmp slt i32 %91, %conv91
  br i1 %cmp92, label %for.body.94, label %for.end.108

for.body.94:                                      ; preds = %for.cond.89
  %94 = bitcast %struct.pcl_OctetString* %tmp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %94) #1
  %95 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom95 = sext i32 %95 to i64
  %96 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %96, i32 0, i32 2
  %97 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous, align 8, !tbaa !50
  %arrayidx96 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %97, i64 %idxprom95
  %98 = bitcast %struct.pcl_OctetString* %tmp to i8*
  %99 = bitcast %struct.pcl_OctetString* %arrayidx96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 16, i32 8, i1 false), !tbaa.struct !54
  %100 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom97 = sext i32 %100 to i64
  %101 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %previous98 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %101, i32 0, i32 2
  %102 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %previous98, align 8, !tbaa !50
  %arrayidx99 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %102, i64 %idxprom97
  %103 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom100 = sext i32 %103 to i64
  %104 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next101 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %104, i32 0, i32 3
  %105 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next101, align 8, !tbaa !45
  %arrayidx102 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %105, i64 %idxprom100
  %106 = bitcast %struct.pcl_OctetString* %arrayidx99 to i8*
  %107 = bitcast %struct.pcl_OctetString* %arrayidx102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 16, i32 8, i1 false), !tbaa.struct !54
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom103 = sext i32 %108 to i64
  %109 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %next104 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %109, i32 0, i32 3
  %110 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %next104, align 8, !tbaa !45
  %arrayidx105 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %110, i64 %idxprom103
  %111 = bitcast %struct.pcl_OctetString* %arrayidx105 to i8*
  %112 = bitcast %struct.pcl_OctetString* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 16, i32 8, i1 false), !tbaa.struct !54
  %113 = bitcast %struct.pcl_OctetString* %tmp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %113) #1
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.94
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %inc107 = add nsw i32 %114, 1
  store i32 %inc107, i32* %j, align 4, !tbaa !1
  br label %for.cond.89

for.end.108:                                      ; preds = %for.cond.89
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %lor.lhs.false.83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.109, %if.then.69, %if.then.37, %if.then.10
  %115 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %final to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.pcl_FileData** %global to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = load i32, i32* %retval
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define internal i32 @send_plane(i32 %final, i32 %method_demanded, i32* %method_used, %struct.pcl_OctetString* %in, %struct.pcl_OctetString* %prev, %struct._IO_FILE* %out, i8* %out_bf1, i8* %out_bf2, i64 %out_bf_size) #0 {
entry:
  %retval = alloca i32, align 4
  %final.addr = alloca i32, align 4
  %method_demanded.addr = alloca i32, align 4
  %method_used.addr = alloca i32*, align 8
  %in.addr = alloca %struct.pcl_OctetString*, align 8
  %prev.addr = alloca %struct.pcl_OctetString*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %out_bf1.addr = alloca i8*, align 8
  %out_bf2.addr = alloca i8*, align 8
  %out_bf_size.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %choice = alloca i32, align 4
  %out1 = alloca %struct.pcl_OctetString, align 8
  %out2 = alloca %struct.pcl_OctetString, align 8
  %send = alloca %struct.pcl_OctetString, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %bound = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %final, i32* %final.addr, align 4, !tbaa !1
  store i32 %method_demanded, i32* %method_demanded.addr, align 4, !tbaa !23
  store i32* %method_used, i32** %method_used.addr, align 8, !tbaa !7
  store %struct.pcl_OctetString* %in, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  store %struct.pcl_OctetString* %prev, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !7
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store i8* %out_bf1, i8** %out_bf1.addr, align 8, !tbaa !7
  store i8* %out_bf2, i8** %out_bf2.addr, align 8, !tbaa !7
  store i64 %out_bf_size, i64* %out_bf_size.addr, align 8, !tbaa !5
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %rc, align 4, !tbaa !1
  %1 = bitcast i32* %choice to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.pcl_OctetString* %out1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.pcl_OctetString* %out2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.pcl_OctetString* %send to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load i8*, i8** %out_bf1.addr, align 8, !tbaa !7
  %str = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out1, i32 0, i32 0
  store i8* %5, i8** %str, align 8, !tbaa !48
  %6 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %6, i32 0, i32 1
  %7 = load i32, i32* %length, align 4, !tbaa !47
  %8 = load i32*, i32** %method_used.addr, align 8, !tbaa !7
  %9 = load i32, i32* %8, align 4, !tbaa !23
  %cmp = icmp eq i32 %9, 0
  %cond = select i1 %cmp, i32 0, i32 2
  %add = add nsw i32 %7, %cond
  %length1 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out1, i32 0, i32 1
  store i32 %add, i32* %length1, align 4, !tbaa !47
  %length2 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out1, i32 0, i32 1
  %10 = load i32, i32* %length2, align 4, !tbaa !47
  %conv = sext i32 %10 to i64
  %11 = load i64, i64* %out_bf_size.addr, align 8, !tbaa !5
  %cmp3 = icmp ugt i64 %conv, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %out_bf_size.addr, align 8, !tbaa !5
  %conv5 = trunc i64 %12 to i32
  %length6 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out1, i32 0, i32 1
  store i32 %conv5, i32* %length6, align 4, !tbaa !47
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %method_demanded.addr, align 4, !tbaa !23
  %cmp7 = icmp eq i32 %13, 3
  br i1 %cmp7, label %if.then.9, label %if.else.81

if.then.9:                                        ; preds = %if.end
  %14 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  %17 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !7
  %call = call i32 @pcl_compress(i32 3, %struct.pcl_OctetString* %16, %struct.pcl_OctetString* %17, %struct.pcl_OctetString* %out1) #6
  store i32 %call, i32* %rc, align 4, !tbaa !1
  %18 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %length13 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out1, i32 0, i32 1
  %19 = load i32, i32* %length13, align 4, !tbaa !47
  store i32 %19, i32* %c1, align 4, !tbaa !1
  br label %if.end.14

if.else:                                          ; preds = %if.then.9
  store i32 -1, i32* %c1, align 4, !tbaa !1
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  %20 = load i32*, i32** %method_used.addr, align 8, !tbaa !7
  %21 = load i32, i32* %20, align 4, !tbaa !23
  %cmp15 = icmp ne i32 %21, 3
  br i1 %cmp15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.14
  %22 = load i32, i32* %c1, align 4, !tbaa !1
  %cmp17 = icmp sge i32 %22, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %c1, align 4, !tbaa !1
  %add20 = add nsw i32 %23, 2
  store i32 %add20, i32* %c1, align 4, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true, %if.end.14
  %24 = load i32, i32* %c1, align 4, !tbaa !1
  %cmp22 = icmp eq i32 0, %24
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.21
  store i32 -1, i32* %c2, align 4, !tbaa !1
  br label %if.end.62

if.else.25:                                       ; preds = %if.end.21
  %25 = bitcast i32* %bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  %length26 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %26, i32 0, i32 1
  %27 = load i32, i32* %length26, align 4, !tbaa !47
  %28 = load i32*, i32** %method_used.addr, align 8, !tbaa !7
  %29 = load i32, i32* %28, align 4, !tbaa !23
  %cmp27 = icmp eq i32 %29, 0
  %cond29 = select i1 %cmp27, i32 0, i32 2
  %add30 = add nsw i32 %27, %cond29
  store i32 %add30, i32* %bound, align 4, !tbaa !1
  %30 = load i32, i32* %c1, align 4, !tbaa !1
  %cmp31 = icmp sge i32 %30, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.44

land.lhs.true.33:                                 ; preds = %if.else.25
  %31 = load i32, i32* %c1, align 4, !tbaa !1
  %32 = load i32, i32* %bound, align 4, !tbaa !1
  %cmp34 = icmp slt i32 %31, %32
  br i1 %cmp34, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %land.lhs.true.33
  %33 = load i32, i32* %c1, align 4, !tbaa !1
  store i32 %33, i32* %bound, align 4, !tbaa !1
  %34 = load i32*, i32** %method_used.addr, align 8, !tbaa !7
  %35 = load i32, i32* %34, align 4, !tbaa !23
  %cmp37 = icmp ne i32 %35, 2
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.43

land.lhs.true.39:                                 ; preds = %if.then.36
  %36 = load i32, i32* %bound, align 4, !tbaa !1
  %cmp40 = icmp sge i32 %36, 2
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.39
  %37 = load i32, i32* %bound, align 4, !tbaa !1
  %sub = sub nsw i32 %37, 2
  store i32 %sub, i32* %bound, align 4, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.39, %if.then.36
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.33, %if.else.25
  %38 = load i8*, i8** %out_bf2.addr, align 8, !tbaa !7
  %str45 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out2, i32 0, i32 0
  store i8* %38, i8** %str45, align 8, !tbaa !48
  %39 = load i32, i32* %bound, align 4, !tbaa !1
  %length46 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out2, i32 0, i32 1
  store i32 %39, i32* %length46, align 4, !tbaa !47
  %40 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  %call47 = call i32 @pcl_compress(i32 2, %struct.pcl_OctetString* %40, %struct.pcl_OctetString* null, %struct.pcl_OctetString* %out2) #6
  store i32 %call47, i32* %rc, align 4, !tbaa !1
  %41 = load i32, i32* %rc, align 4, !tbaa !1
  %cmp48 = icmp eq i32 %41, 0
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.end.44
  %length51 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %out2, i32 0, i32 1
  %42 = load i32, i32* %length51, align 4, !tbaa !47
  store i32 %42, i32* %c2, align 4, !tbaa !1
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.44
  store i32 -1, i32* %c2, align 4, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.50
  %43 = load i32*, i32** %method_used.addr, align 8, !tbaa !7
  %44 = load i32, i32* %43, align 4, !tbaa !23
  %cmp54 = icmp ne i32 %44, 2
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.61

land.lhs.true.56:                                 ; preds = %if.end.53
  %45 = load i32, i32* %c2, align 4, !tbaa !1
  %cmp57 = icmp sge i32 %45, 0
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true.56
  %46 = load i32, i32* %c2, align 4, !tbaa !1
  %add60 = add nsw i32 %46, 2
  store i32 %add60, i32* %c2, align 4, !tbaa !1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %land.lhs.true.56, %if.end.53
  %47 = bitcast i32* %bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.24
  %48 = load i32, i32* %c1, align 4, !tbaa !1
  %cmp63 = icmp slt i32 %48, 0
  br i1 %cmp63, label %if.then.65, label %if.else.71

if.then.65:                                       ; preds = %if.end.62
  %49 = load i32, i32* %c2, align 4, !tbaa !1
  %cmp66 = icmp slt i32 %49, 0
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.then.65
  store i32 0, i32* %choice, align 4, !tbaa !23
  br label %if.end.70

if.else.69:                                       ; preds = %if.then.65
  store i32 2, i32* %choice, align 4, !tbaa !23
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.79

if.else.71:                                       ; preds = %if.end.62
  %50 = load i32, i32* %c2, align 4, !tbaa !1
  %cmp72 = icmp slt i32 %50, 0
  br i1 %cmp72, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.71
  %51 = load i32, i32* %c1, align 4, !tbaa !1
  %52 = load i32, i32* %c2, align 4, !tbaa !1
  %cmp74 = icmp sle i32 %51, %52
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %lor.lhs.false, %if.else.71
  store i32 3, i32* %choice, align 4, !tbaa !23
  br label %if.end.78

if.else.77:                                       ; preds = %lor.lhs.false
  store i32 2, i32* %choice, align 4, !tbaa !23
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.76
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.70
  %53 = load i32, i32* %choice, align 4, !tbaa !23
  switch i32 %53, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %if.end.79
  %54 = bitcast %struct.pcl_OctetString* %send to i8*
  %55 = bitcast %struct.pcl_OctetString* %out2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false), !tbaa.struct !54
  br label %sw.epilog

sw.bb.80:                                         ; preds = %if.end.79
  %56 = bitcast %struct.pcl_OctetString* %send to i8*
  %57 = bitcast %struct.pcl_OctetString* %out1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 16, i32 8, i1 false), !tbaa.struct !54
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.79
  %58 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  %59 = bitcast %struct.pcl_OctetString* %send to i8*
  %60 = bitcast %struct.pcl_OctetString* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false), !tbaa.struct !54
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.80, %sw.bb
  %61 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  br label %if.end.91

if.else.81:                                       ; preds = %if.end
  %63 = load i32, i32* %method_demanded.addr, align 4, !tbaa !23
  %cmp82 = icmp ne i32 %63, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.89

land.lhs.true.84:                                 ; preds = %if.else.81
  %64 = load i32, i32* %method_demanded.addr, align 4, !tbaa !23
  %65 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  %66 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !7
  %call85 = call i32 @pcl_compress(i32 %64, %struct.pcl_OctetString* %65, %struct.pcl_OctetString* %66, %struct.pcl_OctetString* %out1) #6
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %land.lhs.true.84
  %67 = bitcast %struct.pcl_OctetString* %send to i8*
  %68 = bitcast %struct.pcl_OctetString* %out1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 16, i32 8, i1 false), !tbaa.struct !54
  %69 = load i32, i32* %method_demanded.addr, align 4, !tbaa !23
  store i32 %69, i32* %choice, align 4, !tbaa !23
  br label %if.end.90

if.else.89:                                       ; preds = %land.lhs.true.84, %if.else.81
  %70 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !7
  %71 = bitcast %struct.pcl_OctetString* %send to i8*
  %72 = bitcast %struct.pcl_OctetString* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 8, i1 false), !tbaa.struct !54
  store i32 0, i32* %choice, align 4, !tbaa !23
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.88
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %sw.epilog
  %73 = load i32*, i32** %method_used.addr, align 8, !tbaa !7
  %74 = load i32, i32* %73, align 4, !tbaa !23
  %75 = load i32, i32* %choice, align 4, !tbaa !23
  %cmp92 = icmp ne i32 %74, %75
  br i1 %cmp92, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %if.end.91
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %77 = load i32, i32* %choice, align 4, !tbaa !23
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 %77) #6
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %if.then.94
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call99 = call i32* @__errno_location() #9
  %79 = load i32, i32* %call99, align 4, !tbaa !1
  %call100 = call i8* @strerror(i32 %79) #8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i32 0, i32 0), i8* %call100) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.then.94
  %80 = load i32, i32* %choice, align 4, !tbaa !23
  %81 = load i32*, i32** %method_used.addr, align 8, !tbaa !7
  store i32 %80, i32* %81, align 4, !tbaa !23
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.91
  %length104 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %send, i32 0, i32 1
  %82 = load i32, i32* %length104, align 4, !tbaa !47
  %cmp105 = icmp eq i32 %82, 0
  br i1 %cmp105, label %if.then.107, label %if.else.122

if.then.107:                                      ; preds = %if.end.103
  %call108 = call i32* @__errno_location() #9
  store i32 0, i32* %call108, align 4, !tbaa !1
  %83 = load i32, i32* %final.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %83, 0
  br i1 %tobool, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %if.then.107
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call110 = call i32 @fputc(i32 119, %struct._IO_FILE* %84) #6
  br label %if.end.113

if.else.111:                                      ; preds = %if.then.107
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call112 = call i32 @fputc(i32 118, %struct._IO_FILE* %85) #6
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.then.109
  %call114 = call i32* @__errno_location() #9
  %86 = load i32, i32* %call114, align 4, !tbaa !1
  %cmp115 = icmp ne i32 %86, 0
  br i1 %cmp115, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.end.113
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call118 = call i32* @__errno_location() #9
  %88 = load i32, i32* %call118, align 4, !tbaa !1
  %call119 = call i8* @strerror(i32 %88) #8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0), i8* %call119) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %if.end.113
  br label %if.end.147

if.else.122:                                      ; preds = %if.end.103
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %length123 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %send, i32 0, i32 1
  %90 = load i32, i32* %length123, align 4, !tbaa !47
  %91 = load i32, i32* %final.addr, align 4, !tbaa !1
  %tobool124 = icmp ne i32 %91, 0
  %cond125 = select i1 %tobool124, i32 119, i32 118
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 %90, i32 %cond125) #6
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.133

if.then.129:                                      ; preds = %if.else.122
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call130 = call i32* @__errno_location() #9
  %93 = load i32, i32* %call130, align 4, !tbaa !1
  %call131 = call i8* @strerror(i32 %93) #8
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i32 0, i32 0), i8* %call131) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.133:                                       ; preds = %if.else.122
  %str134 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %send, i32 0, i32 0
  %94 = load i8*, i8** %str134, align 8, !tbaa !48
  %length135 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %send, i32 0, i32 1
  %95 = load i32, i32* %length135, align 4, !tbaa !47
  %conv136 = sext i32 %95 to i64
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call137 = call i64 @fwrite(i8* %94, i64 1, i64 %conv136, %struct._IO_FILE* %96) #6
  %length138 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %send, i32 0, i32 1
  %97 = load i32, i32* %length138, align 4, !tbaa !47
  %conv139 = sext i32 %97 to i64
  %cmp140 = icmp ne i64 %call137, %conv139
  br i1 %cmp140, label %if.then.142, label %if.end.146

if.then.142:                                      ; preds = %if.end.133
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call143 = call i32* @__errno_location() #9
  %99 = load i32, i32* %call143, align 4, !tbaa !1
  %call144 = call i8* @strerror(i32 %99) #8
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0), i8* %call144) #6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %if.end.133
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.121
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.147, %if.then.142, %if.then.129, %if.then.117, %if.then.98
  %100 = bitcast %struct.pcl_OctetString* %send to i8*
  call void @llvm.lifetime.end(i64 16, i8* %100) #1
  %101 = bitcast %struct.pcl_OctetString* %out2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %101) #1
  %102 = bitcast %struct.pcl_OctetString* %out1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %102) #1
  %103 = bitcast i32* %choice to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = load i32, i32* %retval
  ret i32 %105
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @pcl3_end_raster(%struct._IO_FILE* %out, %struct.pcl_RasterData* %data) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca %struct.pcl_RasterData*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_RasterData* %data, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), %struct._IO_FILE* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %2 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %2, i32 0, i32 1
  %3 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global, align 8, !tbaa !43
  %level = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %3, i32 0, i32 0
  %4 = load i32, i32* %level, align 4, !tbaa !9
  call void @send_ERG(%struct._IO_FILE* %1, i32 %4) #6
  %5 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %global1 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %5, i32 0, i32 1
  %6 = load %struct.pcl_FileData*, %struct.pcl_FileData** %global1, align 8, !tbaa !43
  %level2 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %6, i32 0, i32 0
  %7 = load i32, i32* %level2, align 4, !tbaa !9
  %cmp = icmp ule i32 %7, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %current_compression = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %8, i32 0, i32 6
  store i32 0, i32* %current_compression, align 4, !tbaa !53
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %9, i32 0, i32 7
  %10 = load %struct.pcl_OctetString**, %struct.pcl_OctetString*** %seed_plane, align 8, !tbaa !51
  %11 = bitcast %struct.pcl_OctetString** %10 to i8*
  call void @free(i8* %11) #8
  %12 = load %struct.pcl_RasterData*, %struct.pcl_RasterData** %data.addr, align 8, !tbaa !7
  %seed_plane3 = getelementptr inbounds %struct.pcl_RasterData, %struct.pcl_RasterData* %12, i32 0, i32 7
  store %struct.pcl_OctetString** null, %struct.pcl_OctetString*** %seed_plane3, align 8, !tbaa !51
  ret i32 0
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @pcl3_end_page(%struct._IO_FILE* %out, %struct.pcl_FileData* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca %struct.pcl_FileData*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_FileData* %data, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call = call i32 @fputc(i32 12, %struct._IO_FILE* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call1 = call i32 @ferror(%struct._IO_FILE* %1) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %2) #6
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @pcl3_end_file(%struct._IO_FILE* %out, %struct.pcl_FileData* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca %struct.pcl_FileData*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  store %struct.pcl_FileData* %data, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %0 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_source = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %0, i32 0, i32 8
  %1 = load i32, i32* %media_source, align 4, !tbaa !29
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), %struct._IO_FILE* %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %3) #6
  %4 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %4, i32 0, i32 2
  %5 = load i8*, i8** %PJL_job, align 8, !tbaa !22
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_language = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %6, i32 0, i32 3
  %7 = load i8*, i8** %PJL_language, align 8, !tbaa !24
  %cmp3 = icmp ne i8* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %8) #6
  %9 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %PJL_job6 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %9, i32 0, i32 2
  %10 = load i8*, i8** %PJL_job6, align 8, !tbaa !22
  %cmp7 = icmp ne i8* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %11) #6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %12) #6
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.then.4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %lor.lhs.false
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !7
  %call13 = call i32 @ferror(%struct._IO_FILE* %13) #8
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %14) #6
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @pcl3_set_oldquality(%struct.pcl_FileData* %data) #0 {
entry:
  %data.addr = alloca %struct.pcl_FileData*, align 8
  store %struct.pcl_FileData* %data, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %0 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %print_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %0, i32 0, i32 12
  %1 = load i32, i32* %print_quality, align 4, !tbaa !37
  switch i32 %1, label %sw.default [
    i32 -1, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %2, i32 0, i32 13
  store i32 3, i32* %depletion, align 4, !tbaa !35
  %3 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %raster_graphics_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %3, i32 0, i32 15
  store i32 1, i32* %raster_graphics_quality, align 4, !tbaa !33
  %4 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %4, i32 0, i32 7
  %5 = load i32, i32* %media_type, align 4, !tbaa !36
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %shingling = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %6, i32 0, i32 14
  store i32 1, i32* %shingling, align 4, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %7 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %shingling1 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %7, i32 0, i32 14
  store i32 0, i32* %shingling1, align 4, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type3 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %8, i32 0, i32 7
  %9 = load i32, i32* %media_type3, align 4, !tbaa !36
  %cmp4 = icmp sle i32 3, %9
  br i1 %cmp4, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %sw.bb.2
  %10 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type5 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %10, i32 0, i32 7
  %11 = load i32, i32* %media_type5, align 4, !tbaa !36
  %cmp6 = icmp sle i32 %11, 4
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion8 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %12, i32 0, i32 13
  store i32 1, i32* %depletion8, align 4, !tbaa !35
  br label %if.end.18

if.else.9:                                        ; preds = %land.lhs.true, %sw.bb.2
  %13 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %13, i32 0, i32 16
  %14 = load i32, i32* %palette, align 4, !tbaa !13
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.9
  %15 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette11 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %15, i32 0, i32 16
  %16 = load i32, i32* %palette11, align 4, !tbaa !13
  %cmp12 = icmp eq i32 %16, 4
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %lor.lhs.false, %if.else.9
  %17 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion14 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %17, i32 0, i32 13
  store i32 2, i32* %depletion14, align 4, !tbaa !35
  br label %if.end.17

if.else.15:                                       ; preds = %lor.lhs.false
  %18 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion16 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %18, i32 0, i32 13
  store i32 3, i32* %depletion16, align 4, !tbaa !35
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.7
  %19 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %raster_graphics_quality19 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %19, i32 0, i32 15
  store i32 2, i32* %raster_graphics_quality19, align 4, !tbaa !33
  %20 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %shingling20 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %20, i32 0, i32 14
  store i32 2, i32* %shingling20, align 4, !tbaa !34
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %21 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion21 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %21, i32 0, i32 13
  store i32 2, i32* %depletion21, align 4, !tbaa !35
  %22 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %raster_graphics_quality22 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %22, i32 0, i32 15
  store i32 0, i32* %raster_graphics_quality22, align 4, !tbaa !33
  %23 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type23 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %23, i32 0, i32 7
  %24 = load i32, i32* %media_type23, align 4, !tbaa !36
  %cmp24 = icmp eq i32 %24, 3
  br i1 %cmp24, label %if.then.34, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %sw.default
  %25 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type26 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %25, i32 0, i32 7
  %26 = load i32, i32* %media_type26, align 4, !tbaa !36
  %cmp27 = icmp eq i32 %26, 4
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.36

land.lhs.true.28:                                 ; preds = %lor.lhs.false.25
  %27 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette29 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %27, i32 0, i32 16
  %28 = load i32, i32* %palette29, align 4, !tbaa !13
  %cmp30 = icmp ne i32 %28, 2
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %29 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette32 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %29, i32 0, i32 16
  %30 = load i32, i32* %palette32, align 4, !tbaa !13
  %cmp33 = icmp ne i32 %30, 4
  br i1 %cmp33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %land.lhs.true.31, %sw.default
  %31 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %shingling35 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %31, i32 0, i32 14
  store i32 2, i32* %shingling35, align 4, !tbaa !34
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %land.lhs.true.28, %lor.lhs.false.25
  %32 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %shingling37 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %32, i32 0, i32 14
  store i32 1, i32* %shingling37, align 4, !tbaa !34
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.34
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.38, %if.end.18, %if.end
  %33 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %palette39 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %33, i32 0, i32 16
  %34 = load i32, i32* %palette39, align 4, !tbaa !13
  %cmp40 = icmp ule i32 %34, 1
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %sw.epilog
  %35 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %depletion42 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %35, i32 0, i32 13
  store i32 0, i32* %depletion42, align 4, !tbaa !35
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %sw.epilog
  %36 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %print_quality44 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %36, i32 0, i32 12
  %37 = load i32, i32* %print_quality44, align 4, !tbaa !37
  %cmp45 = icmp sle i32 -1, %37
  br i1 %cmp45, label %land.lhs.true.46, label %land.end

land.lhs.true.46:                                 ; preds = %if.end.43
  %38 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %print_quality47 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %38, i32 0, i32 12
  %39 = load i32, i32* %print_quality47, align 4, !tbaa !37
  %cmp48 = icmp sle i32 %39, 1
  br i1 %cmp48, label %land.lhs.true.49, label %land.end

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %40 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type50 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %40, i32 0, i32 7
  %41 = load i32, i32* %media_type50, align 4, !tbaa !36
  %cmp51 = icmp sle i32 0, %41
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.49
  %42 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type52 = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %42, i32 0, i32 7
  %43 = load i32, i32* %media_type52, align 4, !tbaa !36
  %cmp53 = icmp sle i32 %43, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.49, %land.lhs.true.46, %if.end.43
  %44 = phi i1 [ false, %land.lhs.true.49 ], [ false, %land.lhs.true.46 ], [ false, %if.end.43 ], [ %cmp53, %land.rhs ]
  %cond = select i1 %44, i32 0, i32 1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @pcl3_set_printquality(%struct.pcl_FileData* %data, i32 %quality) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.pcl_FileData*, align 8
  %quality.addr = alloca i32, align 4
  store %struct.pcl_FileData* %data, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  store i32 %quality, i32* %quality.addr, align 4, !tbaa !1
  %0 = load i32, i32* %quality.addr, align 4, !tbaa !1
  %1 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %print_quality = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %1, i32 0, i32 12
  store i32 %0, i32* %print_quality, align 4, !tbaa !37
  %2 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %2, i32 0, i32 0
  %3 = load i32, i32* %level, align 4, !tbaa !9
  %cmp = icmp ule i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %call = call i32 @pcl3_set_oldquality(%struct.pcl_FileData* %4) #6
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @pcl3_set_mediatype(%struct.pcl_FileData* %data, i32 %mediatype) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.pcl_FileData*, align 8
  %mediatype.addr = alloca i32, align 4
  store %struct.pcl_FileData* %data, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  store i32 %mediatype, i32* %mediatype.addr, align 4, !tbaa !1
  %0 = load i32, i32* %mediatype.addr, align 4, !tbaa !1
  %1 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %media_type = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %1, i32 0, i32 7
  store i32 %0, i32* %media_type, align 4, !tbaa !36
  %2 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %level = getelementptr inbounds %struct.pcl_FileData, %struct.pcl_FileData* %2, i32 0, i32 0
  %3 = load i32, i32* %level, align 4, !tbaa !9
  %cmp = icmp ule i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pcl_FileData*, %struct.pcl_FileData** %data.addr, align 8, !tbaa !7
  %call = call i32 @pcl3_set_oldquality(%struct.pcl_FileData* %4) #6
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @pcl_compress(i32, %struct.pcl_OctetString*, %struct.pcl_OctetString*, %struct.pcl_OctetString*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!10, !3, i64 0}
!10 = !{!"", !3, i64 0, !2, i64 4, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 40, !3, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !2, i64 72, !2, i64 76, !2, i64 80, !2, i64 84, !2, i64 88, !2, i64 92, !3, i64 96, !2, i64 100, !8, i64 104, !3, i64 112, !2, i64 160, !2, i64 164, !3, i64 168, !12, i64 172, !12, i64 174, !2, i64 176}
!11 = !{!"", !8, i64 0, !2, i64 8}
!12 = !{!"short", !3, i64 0}
!13 = !{!10, !3, i64 96}
!14 = !{!10, !2, i64 100}
!15 = !{!10, !8, i64 104}
!16 = !{!17, !2, i64 4}
!17 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8}
!18 = !{!10, !2, i64 176}
!19 = !{!17, !2, i64 0}
!20 = !{!17, !2, i64 8}
!21 = !{!10, !2, i64 160}
!22 = !{!10, !8, i64 8}
!23 = !{!3, !3, i64 0}
!24 = !{!10, !8, i64 16}
!25 = !{!10, !2, i64 4}
!26 = !{!10, !2, i64 32}
!27 = !{!10, !8, i64 24}
!28 = !{!10, !3, i64 56}
!29 = !{!10, !2, i64 64}
!30 = !{!10, !2, i64 76}
!31 = !{!10, !2, i64 68}
!32 = !{!10, !2, i64 72}
!33 = !{!10, !2, i64 92}
!34 = !{!10, !2, i64 88}
!35 = !{!10, !2, i64 84}
!36 = !{!10, !2, i64 60}
!37 = !{!10, !2, i64 80}
!38 = !{!10, !2, i64 164}
!39 = !{!10, !2, i64 48}
!40 = !{!10, !8, i64 40}
!41 = !{!10, !12, i64 174}
!42 = !{!10, !12, i64 172}
!43 = !{!44, !8, i64 8}
!44 = !{!"", !2, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !3, i64 32, !6, i64 48, !3, i64 56, !8, i64 64}
!45 = !{!44, !8, i64 24}
!46 = !{!44, !6, i64 48}
!47 = !{!11, !2, i64 8}
!48 = !{!11, !8, i64 0}
!49 = !{!10, !3, i64 168}
!50 = !{!44, !8, i64 16}
!51 = !{!44, !8, i64 64}
!52 = !{!44, !2, i64 0}
!53 = !{!44, !3, i64 56}
!54 = !{i64 0, i64 8, !7, i64 8, i64 4, !1}
