; ModuleID = 'explicit_gop.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }

@input = external global %struct.InputParameters*, align 8
@gop_structure = external global %struct.GOP_DATA*, align 8
@.str = private unnamed_addr constant [30 x i8] c"create_pyramid:curGOPLevelfrm\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"create_pyramid:curGOPLeveldist\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"init_gop_structure: gop_structure\00", align 1
@errortext = external global [300 x i8], align 16
@.str.3 = private unnamed_addr constant [84 x i8] c"Slice Type invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Invalid Frame Order value. Frame position needs to be in [0,%d] range.\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Frame Order value %d in frame %d already used for enhancement frame %d.\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"Slice Type needs to be followed by Display Order. Please check configuration file.\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"Reference_IDC invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Invalid QP value. Please check configuration file.\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"Reference_IDC needs to be followed by QP. Please check configuration file.\00", align 1
@.str.11 = private unnamed_addr constant [92 x i8] c"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter.\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"ExplicitPyramidFormat is empty. Please check configuration file.\00", align 1
@img = external global %struct.ImageParameters*, align 8
@start_frame_no_in_this_IGOP = external global i32, align 4
@log2_max_frame_num_minus4 = external global i32, align 4
@start_tr_in_this_IGOP = external global i32, align 4
@dpb = external global %struct.decoded_picture_buffer, align 8
@.str.13 = private unnamed_addr constant [35 x i8] c"poc_based_ref_management: tmp_drpm\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"poc_based_ref_management: tmp_drpm2\00", align 1

; Function Attrs: nounwind uwtable
define void @create_pyramid() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %centerB = alloca i32, align 4
  %GOPlevels = alloca i32, align 4
  %Bframes = alloca i32, align 4
  %curGOPLevelfrm = alloca i32*, align 8
  %curGOPLeveldist = alloca i32*, align 8
  %curlevel = alloca i32, align 4
  %prvlevelrefs = alloca i32, align 4
  %levelrefs = alloca i32, align 4
  %i28 = alloca i32, align 4
  %tempnum = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %successive_Bframe, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %centerB, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 55
  %3 = load i32, i32* %PyramidCoding, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else.24

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 34
  %6 = load i32, i32* %successive_Bframe1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %centerB, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %10, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %11 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 %mul, 1
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx6 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom5
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx6, i32 0, i32 1
  store i32 %add, i32* %display_no, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx8 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %15, i64 %idxprom7
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx8, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %17, i64 %idxprom9
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 2
  store i32 2, i32* %reference_idc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %19, i64 %idxprom11
  %slice_type13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 0
  store i32 1, i32* %slice_type13, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %centerB, align 4
  %sub = sub nsw i32 %20, %21
  %mul14 = mul nsw i32 %sub, 2
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx16 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %23, i64 %idxprom15
  %display_no17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx16, i32 0, i32 1
  store i32 %mul14, i32* %display_no17, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx19 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %25, i64 %idxprom18
  %pyramid_layer20 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx19, i32 0, i32 4
  store i32 1, i32* %pyramid_layer20, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %27, i64 %idxprom21
  %reference_idc23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx22, i32 0, i32 2
  store i32 0, i32* %reference_idc23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.200

if.else.24:                                       ; preds = %entry
  store i32 0, i32* %GOPlevels, align 4
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 34
  %30 = load i32, i32* %successive_Bframe25, align 4
  store i32 %30, i32* %Bframes, align 4
  %31 = load i32, i32* %GOPlevels, align 4
  store i32 %31, i32* %curlevel, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 34
  %33 = load i32, i32* %successive_Bframe26, align 4
  store i32 %33, i32* %prvlevelrefs, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 34
  %35 = load i32, i32* %successive_Bframe27, align 4
  store i32 %35, i32* %levelrefs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.24
  %36 = load i32, i32* %Bframes, align 4
  %cmp29 = icmp sgt i32 %36, 2
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %Bframes, align 4
  %div30 = sdiv i32 %37, 2
  store i32 %div30, i32* %Bframes, align 4
  %38 = load i32, i32* %GOPlevels, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %GOPlevels, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %GOPlevels, align 4
  store i32 %39, i32* %curlevel, align 4
  %40 = load i32, i32* %GOPlevels, align 4
  %add32 = add nsw i32 %40, 1
  %conv = sext i32 %add32 to i64
  %mul33 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul33) #5
  %41 = bitcast i8* %call to i32*
  store i32* %41, i32** %curGOPLevelfrm, align 8
  %cmp34 = icmp eq i32* null, %41
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %while.end
  %42 = load i32, i32* %GOPlevels, align 4
  %add38 = add nsw i32 %42, 1
  %conv39 = sext i32 %add38 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call noalias i8* @malloc(i64 %mul40) #5
  %43 = bitcast i8* %call41 to i32*
  store i32* %43, i32** %curGOPLeveldist, align 8
  %cmp42 = icmp eq i32* null, %43
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.37
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.37
  store i32 0, i32* %i28, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.57, %if.end.45
  %44 = load i32, i32* %i28, align 4
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 34
  %46 = load i32, i32* %successive_Bframe47, align 4
  %cmp48 = icmp slt i32 %44, %46
  br i1 %cmp48, label %for.body.50, label %for.end.59

for.body.50:                                      ; preds = %for.cond.46
  %47 = load i32, i32* %i28, align 4
  %idxprom51 = sext i32 %47 to i64
  %48 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %48, i64 %idxprom51
  %display_no53 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx52, i32 0, i32 1
  store i32 0, i32* %display_no53, align 4
  %49 = load i32, i32* %i28, align 4
  %idxprom54 = sext i32 %49 to i64
  %50 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx55 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %50, i64 %idxprom54
  %slice_type56 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx55, i32 0, i32 0
  store i32 1, i32* %slice_type56, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.50
  %51 = load i32, i32* %i28, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %i28, align 4
  br label %for.cond.46

for.end.59:                                       ; preds = %for.cond.46
  br label %while.cond.60

while.cond.60:                                    ; preds = %while.body.63, %for.end.59
  %52 = load i32, i32* %levelrefs, align 4
  %cmp61 = icmp sgt i32 %52, 2
  br i1 %cmp61, label %while.body.63, label %while.end.72

while.body.63:                                    ; preds = %while.cond.60
  %53 = load i32, i32* %levelrefs, align 4
  %div64 = sdiv i32 %53, 2
  store i32 %div64, i32* %levelrefs, align 4
  %54 = load i32, i32* %prvlevelrefs, align 4
  %55 = load i32, i32* %levelrefs, align 4
  %sub65 = sub nsw i32 %54, %55
  %56 = load i32, i32* %curlevel, align 4
  %idxprom66 = sext i32 %56 to i64
  %57 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %57, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx67, align 4
  %58 = load i32, i32* %levelrefs, align 4
  %59 = load i32, i32* %levelrefs, align 4
  %rem = srem i32 %59, 2
  %add68 = add nsw i32 %58, %rem
  %60 = load i32, i32* %GOPlevels, align 4
  %61 = load i32, i32* %curlevel, align 4
  %sub69 = sub nsw i32 %60, %61
  %idxprom70 = sext i32 %sub69 to i64
  %62 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %62, i64 %idxprom70
  store i32 %add68, i32* %arrayidx71, align 4
  %63 = load i32, i32* %levelrefs, align 4
  store i32 %63, i32* %prvlevelrefs, align 4
  %64 = load i32, i32* %curlevel, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %curlevel, align 4
  br label %while.cond.60

while.end.72:                                     ; preds = %while.cond.60
  %65 = load i32, i32* %levelrefs, align 4
  %66 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %arrayidx73, align 4
  %67 = load i32, i32* %levelrefs, align 4
  %68 = load i32, i32* %levelrefs, align 4
  %rem74 = srem i32 %68, 2
  %add75 = add nsw i32 %67, %rem74
  %69 = load i32, i32* %GOPlevels, align 4
  %idxprom76 = sext i32 %69 to i64
  %70 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %70, i64 %idxprom76
  store i32 %add75, i32* %arrayidx77, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.89, %while.end.72
  %71 = load i32, i32* %j, align 4
  %72 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp slt i32 %71, %73
  br i1 %cmp80, label %for.body.82, label %for.end.91

for.body.82:                                      ; preds = %for.cond.78
  %74 = load i32, i32* %GOPlevels, align 4
  %75 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %75, 1
  %76 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx84, align 4
  %mul85 = mul nsw i32 %add83, %77
  %sub86 = sub nsw i32 %mul85, 1
  %78 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %79, 1
  %80 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  call void @gop_pyramid(i32 %74, i32 %sub86, i32 %sub88, %struct.GOP_DATA* %80)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.82
  %81 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %81, 1
  store i32 %inc90, i32* %j, align 4
  br label %for.cond.78

for.end.91:                                       ; preds = %for.cond.78
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 34
  %83 = load i32, i32* %successive_Bframe92, align 4
  store i32 %83, i32* %j, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.197, %for.end.91
  %84 = load i32, i32* %j, align 4
  %cmp94 = icmp sgt i32 %84, 0
  br i1 %cmp94, label %for.body.96, label %for.end.199

for.body.96:                                      ; preds = %for.cond.93
  store i32 1, i32* %i28, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.194, %for.body.96
  %85 = load i32, i32* %i28, align 4
  %86 = load i32, i32* %j, align 4
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %for.body.100, label %for.end.196

for.body.100:                                     ; preds = %for.cond.97
  %87 = load i32, i32* %i28, align 4
  %idxprom101 = sext i32 %87 to i64
  %88 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx102 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %88, i64 %idxprom101
  %pyramid_layer103 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx102, i32 0, i32 4
  %89 = load i32, i32* %pyramid_layer103, align 4
  %90 = load i32, i32* %i28, align 4
  %sub104 = sub nsw i32 %90, 1
  %idxprom105 = sext i32 %sub104 to i64
  %91 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx106 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %91, i64 %idxprom105
  %pyramid_layer107 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx106, i32 0, i32 4
  %92 = load i32, i32* %pyramid_layer107, align 4
  %cmp108 = icmp sgt i32 %89, %92
  br i1 %cmp108, label %if.then.110, label %if.end.193

if.then.110:                                      ; preds = %for.body.100
  %93 = load i32, i32* %i28, align 4
  %sub111 = sub nsw i32 %93, 1
  %idxprom112 = sext i32 %sub111 to i64
  %94 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx113 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %94, i64 %idxprom112
  %display_no114 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx113, i32 0, i32 1
  %95 = load i32, i32* %display_no114, align 4
  store i32 %95, i32* %tempnum, align 4
  %96 = load i32, i32* %i28, align 4
  %idxprom115 = sext i32 %96 to i64
  %97 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx116 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %97, i64 %idxprom115
  %display_no117 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx116, i32 0, i32 1
  %98 = load i32, i32* %display_no117, align 4
  %99 = load i32, i32* %i28, align 4
  %sub118 = sub nsw i32 %99, 1
  %idxprom119 = sext i32 %sub118 to i64
  %100 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx120 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %100, i64 %idxprom119
  %display_no121 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx120, i32 0, i32 1
  store i32 %98, i32* %display_no121, align 4
  %101 = load i32, i32* %tempnum, align 4
  %102 = load i32, i32* %i28, align 4
  %idxprom122 = sext i32 %102 to i64
  %103 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx123 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %103, i64 %idxprom122
  %display_no124 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx123, i32 0, i32 1
  store i32 %101, i32* %display_no124, align 4
  %104 = load i32, i32* %i28, align 4
  %sub125 = sub nsw i32 %104, 1
  %idxprom126 = sext i32 %sub125 to i64
  %105 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx127 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %105, i64 %idxprom126
  %pyramid_layer128 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx127, i32 0, i32 4
  %106 = load i32, i32* %pyramid_layer128, align 4
  store i32 %106, i32* %tempnum, align 4
  %107 = load i32, i32* %i28, align 4
  %idxprom129 = sext i32 %107 to i64
  %108 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx130 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %108, i64 %idxprom129
  %pyramid_layer131 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx130, i32 0, i32 4
  %109 = load i32, i32* %pyramid_layer131, align 4
  %110 = load i32, i32* %i28, align 4
  %sub132 = sub nsw i32 %110, 1
  %idxprom133 = sext i32 %sub132 to i64
  %111 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx134 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %111, i64 %idxprom133
  %pyramid_layer135 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx134, i32 0, i32 4
  store i32 %109, i32* %pyramid_layer135, align 4
  %112 = load i32, i32* %tempnum, align 4
  %113 = load i32, i32* %i28, align 4
  %idxprom136 = sext i32 %113 to i64
  %114 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx137 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %114, i64 %idxprom136
  %pyramid_layer138 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx137, i32 0, i32 4
  store i32 %112, i32* %pyramid_layer138, align 4
  %115 = load i32, i32* %i28, align 4
  %sub139 = sub nsw i32 %115, 1
  %idxprom140 = sext i32 %sub139 to i64
  %116 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx141 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %116, i64 %idxprom140
  %reference_idc142 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx141, i32 0, i32 2
  %117 = load i32, i32* %reference_idc142, align 4
  store i32 %117, i32* %tempnum, align 4
  %118 = load i32, i32* %i28, align 4
  %idxprom143 = sext i32 %118 to i64
  %119 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx144 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %119, i64 %idxprom143
  %reference_idc145 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx144, i32 0, i32 2
  %120 = load i32, i32* %reference_idc145, align 4
  %121 = load i32, i32* %i28, align 4
  %sub146 = sub nsw i32 %121, 1
  %idxprom147 = sext i32 %sub146 to i64
  %122 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx148 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %122, i64 %idxprom147
  %reference_idc149 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx148, i32 0, i32 2
  store i32 %120, i32* %reference_idc149, align 4
  %123 = load i32, i32* %tempnum, align 4
  %124 = load i32, i32* %i28, align 4
  %idxprom150 = sext i32 %124 to i64
  %125 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx151 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %125, i64 %idxprom150
  %reference_idc152 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx151, i32 0, i32 2
  store i32 %123, i32* %reference_idc152, align 4
  %126 = load i32, i32* %i28, align 4
  %sub153 = sub nsw i32 %126, 1
  %idxprom154 = sext i32 %sub153 to i64
  %127 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx155 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %127, i64 %idxprom154
  %slice_type156 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx155, i32 0, i32 0
  %128 = load i32, i32* %slice_type156, align 4
  store i32 %128, i32* %tempnum, align 4
  %129 = load i32, i32* %i28, align 4
  %idxprom157 = sext i32 %129 to i64
  %130 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx158 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %130, i64 %idxprom157
  %slice_type159 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx158, i32 0, i32 0
  %131 = load i32, i32* %slice_type159, align 4
  %132 = load i32, i32* %i28, align 4
  %sub160 = sub nsw i32 %132, 1
  %idxprom161 = sext i32 %sub160 to i64
  %133 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx162 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %133, i64 %idxprom161
  %slice_type163 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx162, i32 0, i32 0
  store i32 %131, i32* %slice_type163, align 4
  %134 = load i32, i32* %tempnum, align 4
  %135 = load i32, i32* %i28, align 4
  %idxprom164 = sext i32 %135 to i64
  %136 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx165 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %136, i64 %idxprom164
  %slice_type166 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx165, i32 0, i32 0
  store i32 %134, i32* %slice_type166, align 4
  %137 = load i32, i32* %i28, align 4
  %sub167 = sub nsw i32 %137, 1
  %idxprom168 = sext i32 %sub167 to i64
  %138 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx169 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %138, i64 %idxprom168
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx169, i32 0, i32 3
  %139 = load i32, i32* %slice_qp, align 4
  store i32 %139, i32* %tempnum, align 4
  %140 = load i32, i32* %i28, align 4
  %idxprom170 = sext i32 %140 to i64
  %141 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx171 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %141, i64 %idxprom170
  %slice_qp172 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx171, i32 0, i32 3
  %142 = load i32, i32* %slice_qp172, align 4
  %143 = load i32, i32* %i28, align 4
  %sub173 = sub nsw i32 %143, 1
  %idxprom174 = sext i32 %sub173 to i64
  %144 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx175 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %144, i64 %idxprom174
  %slice_qp176 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx175, i32 0, i32 3
  store i32 %142, i32* %slice_qp176, align 4
  %145 = load i32, i32* %tempnum, align 4
  %146 = load i32, i32* %i28, align 4
  %idxprom177 = sext i32 %146 to i64
  %147 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx178 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %147, i64 %idxprom177
  %slice_qp179 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx178, i32 0, i32 3
  store i32 %145, i32* %slice_qp179, align 4
  %148 = load i32, i32* %i28, align 4
  %sub180 = sub nsw i32 %148, 1
  %idxprom181 = sext i32 %sub180 to i64
  %149 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx182 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %149, i64 %idxprom181
  %pyramidPocDelta = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx182, i32 0, i32 5
  %150 = load i32, i32* %pyramidPocDelta, align 4
  store i32 %150, i32* %tempnum, align 4
  %151 = load i32, i32* %i28, align 4
  %idxprom183 = sext i32 %151 to i64
  %152 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx184 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %152, i64 %idxprom183
  %pyramidPocDelta185 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx184, i32 0, i32 5
  %153 = load i32, i32* %pyramidPocDelta185, align 4
  %154 = load i32, i32* %i28, align 4
  %sub186 = sub nsw i32 %154, 1
  %idxprom187 = sext i32 %sub186 to i64
  %155 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx188 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %155, i64 %idxprom187
  %pyramidPocDelta189 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx188, i32 0, i32 5
  store i32 %153, i32* %pyramidPocDelta189, align 4
  %156 = load i32, i32* %tempnum, align 4
  %157 = load i32, i32* %i28, align 4
  %idxprom190 = sext i32 %157 to i64
  %158 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx191 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %158, i64 %idxprom190
  %pyramidPocDelta192 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx191, i32 0, i32 5
  store i32 %156, i32* %pyramidPocDelta192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.110, %for.body.100
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193
  %159 = load i32, i32* %i28, align 4
  %inc195 = add nsw i32 %159, 1
  store i32 %inc195, i32* %i28, align 4
  br label %for.cond.97

for.end.196:                                      ; preds = %for.cond.97
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.196
  %160 = load i32, i32* %j, align 4
  %dec198 = add nsw i32 %160, -1
  store i32 %dec198, i32* %j, align 4
  br label %for.cond.93

for.end.199:                                      ; preds = %for.cond.93
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.199, %for.end
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @gop_pyramid(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
entry:
  %level.addr = alloca i32, align 4
  %frm_no.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %pyramid_structure.addr = alloca %struct.GOP_DATA*, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %frm_no, i32* %frm_no.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store %struct.GOP_DATA* %pyramid_structure, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %frm_no.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %frm_no.addr, align 4
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 34
  %4 = load i32, i32* %successive_Bframe, align 4
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %frm_no.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %6, i64 %idxprom
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %display_no, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true.3
  %8 = load i32, i32* %frm_no.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %9, i64 %idxprom6
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx7, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %10 = load i32, i32* %frm_no.addr, align 4
  %11 = load i32, i32* %frm_no.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom8
  %display_no10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx9, i32 0, i32 1
  store i32 %10, i32* %display_no10, align 4
  %13 = load i32, i32* %frm_no.addr, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %14, i64 %idxprom11
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %15 = load i32, i32* %frm_no.addr, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %16, i64 %idxprom13
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx14, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true.3, %land.lhs.true, %if.then
  br label %if.end.42

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %frm_no.addr, align 4
  %cmp15 = icmp sge i32 %17, 0
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.32

land.lhs.true.16:                                 ; preds = %if.else
  %18 = load i32, i32* %frm_no.addr, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 34
  %20 = load i32, i32* %successive_Bframe17, align 4
  %cmp18 = icmp slt i32 %18, %20
  br i1 %cmp18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %land.lhs.true.16
  %21 = load i32, i32* %frm_no.addr, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %22, i64 %idxprom20
  %slice_type22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx21, i32 0, i32 0
  store i32 1, i32* %slice_type22, align 4
  %23 = load i32, i32* %frm_no.addr, align 4
  %24 = load i32, i32* %frm_no.addr, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %25, i64 %idxprom23
  %display_no25 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx24, i32 0, i32 1
  store i32 %23, i32* %display_no25, align 4
  %26 = load i32, i32* %level.addr, align 4
  %27 = load i32, i32* %frm_no.addr, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %28, i64 %idxprom26
  %pyramid_layer28 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx27, i32 0, i32 4
  store i32 %26, i32* %pyramid_layer28, align 4
  %29 = load i32, i32* %frm_no.addr, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %30, i64 %idxprom29
  %reference_idc31 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx30, i32 0, i32 2
  store i32 2, i32* %reference_idc31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.19, %land.lhs.true.16, %if.else
  %31 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %31, 1
  %32 = load i32, i32* %frm_no.addr, align 4
  %33 = load i32, i32* %frames.addr, align 4
  %add = add nsw i32 %33, 1
  %div = sdiv i32 %add, 2
  %sub33 = sub nsw i32 %32, %div
  %34 = load i32, i32* %frames.addr, align 4
  %add34 = add nsw i32 %34, 1
  %div35 = sdiv i32 %add34, 2
  %35 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub, i32 %sub33, i32 %div35, %struct.GOP_DATA* %35)
  %36 = load i32, i32* %level.addr, align 4
  %sub36 = sub nsw i32 %36, 1
  %37 = load i32, i32* %frm_no.addr, align 4
  %38 = load i32, i32* %frames.addr, align 4
  %add37 = add nsw i32 %38, 1
  %div38 = sdiv i32 %add37, 2
  %add39 = add nsw i32 %37, %div38
  %39 = load i32, i32* %frames.addr, align 4
  %add40 = add nsw i32 %39, 1
  %div41 = sdiv i32 %add40, 2
  %40 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub36, i32 %add39, i32 %div41, %struct.GOP_DATA* %40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.32, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_gop_structure() #0 {
entry:
  %max_gopsize = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 55
  %1 = load i32, i32* %PyramidCoding, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 34
  %3 = load i32, i32* %successive_Bframe, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %jumpd, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %max_gopsize, align 4
  %6 = load i32, i32* %max_gopsize, align 4
  %cmp1 = icmp sgt i32 10, %6
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %7 = load i32, i32* %max_gopsize, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ 10, %cond.true.2 ], [ %7, %cond.false.3 ]
  %conv = sext i32 %cond5 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 24) #5
  %8 = bitcast i8* %call to %struct.GOP_DATA*
  store %struct.GOP_DATA* %8, %struct.GOP_DATA** @gop_structure, align 8
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %cmp6 = icmp eq %struct.GOP_DATA* null, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @clear_gop_structure() #0 {
entry:
  %0 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %tobool = icmp ne %struct.GOP_DATA* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %2 = bitcast %struct.GOP_DATA* %1 to i8*
  call void @free(i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @interpret_gop_structure() #0 {
entry:
  %nLength = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %qp = alloca i32, align 4
  %display_no = alloca i32, align 4
  %slice_read = alloca i32, align 4
  %order_read = alloca i32, align 4
  %stored_read = alloca i32, align 4
  %qp_read = alloca i32, align 4
  %coded_frame = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 56
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nLength, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %slice_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %coded_frame, align 4
  %1 = load i32, i32* %nLength, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.169

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.166, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nLength, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %slice_read, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 56
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat7, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %7 to i32
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb.11
    i32 98, label %sw.bb.11
    i32 73, label %sw.bb.15
    i32 105, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.then.6, %if.then.6
  %8 = load i32, i32* %coded_frame, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %9, i64 %idxprom9
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %slice_type, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then.6, %if.then.6
  %10 = load i32, i32* %coded_frame, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %11, i64 %idxprom12
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx13, i32 0, i32 0
  store i32 1, i32* %slice_type14, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then.6, %if.then.6
  %12 = load i32, i32* %coded_frame, align 4
  %idxprom16 = sext i32 %12 to i64
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom16
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx17, i32 0, i32 0
  store i32 2, i32* %slice_type18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.6
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.11, %sw.bb
  store i32 1, i32* %slice_read, align 4
  br label %if.end.165

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %order_read, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then.22, label %if.else.61

if.then.22:                                       ; preds = %if.else
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 56
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat23, i32 0, i32 0
  %16 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay24, i64 %idx.ext
  %17 = load i8, i8* %add.ptr, align 1
  %conv25 = sext i8 %17 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call27 = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %call27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %18, i64 %idxprom26
  %19 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %and = and i32 %conv29, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.30, label %if.else.58

if.then.30:                                       ; preds = %if.then.22
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 56
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat31, i32 0, i32 0
  %21 = load i32, i32* %i, align 4
  %idx.ext33 = sext i32 %21 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay32, i64 %idx.ext33
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %display_no) #5
  %22 = load i32, i32* %display_no, align 4
  %23 = load i32, i32* %coded_frame, align 4
  %idxprom36 = sext i32 %23 to i64
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx37 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom36
  %display_no38 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx37, i32 0, i32 1
  store i32 %22, i32* %display_no38, align 4
  store i32 1, i32* %order_read, align 4
  %25 = load i32, i32* %display_no, align 4
  %cmp39 = icmp slt i32 %25, 0
  br i1 %cmp39, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.30
  %26 = load i32, i32* %display_no, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %jumpd, align 4
  %cmp41 = icmp sge i32 %26, %28
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %lor.lhs.false, %if.then.30
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %jumpd44, align 4
  %sub = sub nsw i32 %30, 1
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i32 0, i32 0), i32 %sub) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end

if.end:                                           ; preds = %if.then.43, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %coded_frame, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %33 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %33 to i64
  %34 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx51 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %34, i64 %idxprom50
  %display_no52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx51, i32 0, i32 1
  %35 = load i32, i32* %display_no52, align 4
  %36 = load i32, i32* %display_no, align 4
  %cmp53 = icmp eq i32 %35, %36
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %for.body.49
  %37 = load i32, i32* %display_no, align 4
  %38 = load i32, i32* %coded_frame, align 4
  %39 = load i32, i32* %k, align 4
  %call56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i32 0, i32 0), i32 %37, i32 %38, i32 %39) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %for.body.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %if.end.60

if.else.58:                                       ; preds = %if.then.22
  %call59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %for.end
  br label %if.end.164

if.else.61:                                       ; preds = %if.else
  %41 = load i32, i32* %order_read, align 4
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then.64, label %if.end.163

if.then.64:                                       ; preds = %if.else.61
  %42 = load i32, i32* %stored_read, align 4
  %cmp65 = icmp eq i32 %42, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else.93

land.lhs.true:                                    ; preds = %if.then.64
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat67 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 56
  %arraydecay68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat67, i32 0, i32 0
  %44 = load i32, i32* %i, align 4
  %idx.ext69 = sext i32 %44 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %arraydecay68, i64 %idx.ext69
  %45 = load i8, i8* %add.ptr70, align 1
  %conv71 = sext i8 %45 to i32
  %idxprom72 = sext i32 %conv71 to i64
  %call73 = call i16** @__ctype_b_loc() #7
  %46 = load i16*, i16** %call73, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %46, i64 %idxprom72
  %47 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %47 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.else.93, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %48 to i64
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 56
  %arrayidx81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat80, i32 0, i64 %idxprom79
  %50 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %50 to i32
  switch i32 %conv82, label %sw.default.90 [
    i32 69, label %sw.bb.83
    i32 101, label %sw.bb.83
    i32 82, label %sw.bb.86
    i32 114, label %sw.bb.86
  ]

sw.bb.83:                                         ; preds = %if.then.78, %if.then.78
  %51 = load i32, i32* %coded_frame, align 4
  %idxprom84 = sext i32 %51 to i64
  %52 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx85 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %52, i64 %idxprom84
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx85, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %sw.epilog.92

sw.bb.86:                                         ; preds = %if.then.78, %if.then.78
  %53 = load i32, i32* %coded_frame, align 4
  %idxprom87 = sext i32 %53 to i64
  %54 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx88 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %54, i64 %idxprom87
  %reference_idc89 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx88, i32 0, i32 2
  store i32 2, i32* %reference_idc89, align 4
  br label %sw.epilog.92

sw.default.90:                                    ; preds = %if.then.78
  %call91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %sw.epilog.92

sw.epilog.92:                                     ; preds = %sw.default.90, %sw.bb.86, %sw.bb.83
  store i32 1, i32* %stored_read, align 4
  br label %if.end.162

if.else.93:                                       ; preds = %land.lhs.true, %if.then.64
  %55 = load i32, i32* %stored_read, align 4
  %cmp94 = icmp eq i32 %55, 1
  br i1 %cmp94, label %land.lhs.true.96, label %if.else.130

land.lhs.true.96:                                 ; preds = %if.else.93
  %56 = load i32, i32* %qp_read, align 4
  %cmp97 = icmp eq i32 %56, 0
  br i1 %cmp97, label %if.then.99, label %if.else.130

if.then.99:                                       ; preds = %land.lhs.true.96
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat100 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 56
  %arraydecay101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat100, i32 0, i32 0
  %58 = load i32, i32* %i, align 4
  %idx.ext102 = sext i32 %58 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay101, i64 %idx.ext102
  %59 = load i8, i8* %add.ptr103, align 1
  %conv104 = sext i8 %59 to i32
  %idxprom105 = sext i32 %conv104 to i64
  %call106 = call i16** @__ctype_b_loc() #7
  %60 = load i16*, i16** %call106, align 8
  %arrayidx107 = getelementptr inbounds i16, i16* %60, i64 %idxprom105
  %61 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %61 to i32
  %and109 = and i32 %conv108, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.127

if.then.111:                                      ; preds = %if.then.99
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat112 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 56
  %arraydecay113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat112, i32 0, i32 0
  %63 = load i32, i32* %i, align 4
  %idx.ext114 = sext i32 %63 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %arraydecay113, i64 %idx.ext114
  %call116 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %qp) #5
  %64 = load i32, i32* %qp, align 4
  %65 = load i32, i32* %coded_frame, align 4
  %idxprom117 = sext i32 %65 to i64
  %66 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx118 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %66, i64 %idxprom117
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx118, i32 0, i32 3
  store i32 %64, i32* %slice_qp, align 4
  store i32 1, i32* %qp_read, align 4
  %67 = load i32, i32* %qp, align 4
  %cmp119 = icmp slt i32 %67, 0
  br i1 %cmp119, label %if.then.124, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.then.111
  %68 = load i32, i32* %qp, align 4
  %cmp122 = icmp sgt i32 %68, 51
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %lor.lhs.false.121, %if.then.111
  %call125 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %lor.lhs.false.121
  br label %if.end.129

if.else.127:                                      ; preds = %if.then.99
  %call128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.127, %if.end.126
  br label %if.end.161

if.else.130:                                      ; preds = %land.lhs.true.96, %if.else.93
  %69 = load i32, i32* %stored_read, align 4
  %cmp131 = icmp eq i32 %69, 1
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.160

land.lhs.true.133:                                ; preds = %if.else.130
  %70 = load i32, i32* %qp_read, align 4
  %cmp134 = icmp eq i32 %70, 1
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.160

land.lhs.true.136:                                ; preds = %land.lhs.true.133
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat137 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 56
  %arraydecay138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat137, i32 0, i32 0
  %72 = load i32, i32* %i, align 4
  %idx.ext139 = sext i32 %72 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %arraydecay138, i64 %idx.ext139
  %73 = load i8, i8* %add.ptr140, align 1
  %conv141 = sext i8 %73 to i32
  %idxprom142 = sext i32 %conv141 to i64
  %call143 = call i16** @__ctype_b_loc() #7
  %74 = load i16*, i16** %call143, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %74, i64 %idxprom142
  %75 = load i16, i16* %arrayidx144, align 2
  %conv145 = zext i16 %75 to i32
  %and146 = and i32 %conv145, 2048
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.end.160, label %land.lhs.true.148

land.lhs.true.148:                                ; preds = %land.lhs.true.136
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %nLength, align 4
  %sub149 = sub nsw i32 %77, 2
  %cmp150 = icmp slt i32 %76, %sub149
  br i1 %cmp150, label %if.then.152, label %if.end.160

if.then.152:                                      ; preds = %land.lhs.true.148
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %slice_read, align 4
  %78 = load i32, i32* %i, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i, align 4
  %79 = load i32, i32* %coded_frame, align 4
  %inc153 = add nsw i32 %79, 1
  store i32 %inc153, i32* %coded_frame, align 4
  %80 = load i32, i32* %coded_frame, align 4
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 5
  %82 = load i32, i32* %jumpd154, align 4
  %cmp155 = icmp sge i32 %80, %82
  br i1 %cmp155, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %if.then.152
  %call158 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %if.then.152
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %land.lhs.true.148, %land.lhs.true.136, %land.lhs.true.133, %if.else.130
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.end.129
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %sw.epilog.92
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.else.61
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.60
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %sw.epilog
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165
  %83 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %83, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  br label %if.end.171

if.else.169:                                      ; preds = %entry
  %call170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %for.end.168
  %84 = load i32, i32* %coded_frame, align 4
  %add = add nsw i32 %84, 1
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 34
  store i32 %add, i32* %successive_Bframe, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare void @error(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @encode_enhancement_layer() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %successive_Bframe, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.276

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 0
  %3 = load i32, i32* %number, align 4
  %4 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %3, %4
  %cmp1 = icmp sgt i32 %sub, 0
  br i1 %cmp1, label %if.then, label %if.end.276

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 6
  store i32 1, i32* %type, align 4
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 99
  %7 = load i32, i32* %NumFramesInELSubSeq, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 86
  store i32 0, i32* %layer, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 86
  store i32 1, i32* %layer4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 54
  %11 = load i32, i32* %BRefPictures, align 4
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %if.end
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 55
  %13 = load i32, i32* %PyramidCoding, align 4
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true.6
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 105
  %15 = load i32, i32* %frame_num, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %frame_num, align 4
  %16 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add = add i32 %16, 4
  %shl = shl i32 1, %add
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 105
  %18 = load i32, i32* %frame_num9, align 4
  %rem = urem i32 %18, %shl
  store i32 %rem, i32* %frame_num9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true.6, %if.end
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 113
  store i32 0, i32* %nal_reference_idc, align 4
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 55
  %21 = load i32, i32* %PyramidCoding11, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.12, label %if.else.153

if.then.12:                                       ; preds = %if.end.10
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 67
  store i32 1, i32* %b_frame_to_code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 67
  %24 = load i32, i32* %b_frame_to_code13, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 34
  %26 = load i32, i32* %successive_Bframe14, align 4
  %cmp15 = icmp sle i32 %24, %26
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 113
  store i32 0, i32* %nal_reference_idc16, align 4
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 67
  %29 = load i32, i32* %b_frame_to_code17, align 4
  %sub18 = sub nsw i32 %29, 1
  %idxprom = sext i32 %sub18 to i64
  %30 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %30, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  %31 = load i32, i32* %slice_type, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 6
  store i32 %31, i32* %type19, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 67
  %34 = load i32, i32* %b_frame_to_code20, align 4
  %sub21 = sub nsw i32 %34, 1
  %idxprom22 = sext i32 %sub21 to i64
  %35 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %35, i64 %idxprom22
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx23, i32 0, i32 2
  %36 = load i32, i32* %reference_idc, align 4
  %cmp24 = icmp eq i32 %36, 2
  br i1 %cmp24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %for.body
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 113
  store i32 1, i32* %nal_reference_idc26, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 105
  %39 = load i32, i32* %frame_num27, align 4
  %inc28 = add i32 %39, 1
  store i32 %inc28, i32* %frame_num27, align 4
  %40 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add29 = add i32 %40, 4
  %shl30 = shl i32 1, %add29
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 105
  %42 = load i32, i32* %frame_num31, align 4
  %rem32 = urem i32 %42, %shl30
  store i32 %rem32, i32* %frame_num31, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.25, %for.body
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 5
  %44 = load i32, i32* %jumpd, align 4
  %add34 = add nsw i32 %44, 1
  %conv = sitofp i32 %add34 to double
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 34
  %46 = load i32, i32* %successive_Bframe35, align 4
  %conv36 = sitofp i32 %46 to double
  %add37 = fadd double %conv36, 1.000000e+00
  %div = fdiv double %conv, %add37
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 65
  store double %div, double* %b_interval, align 8
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding38 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 55
  %49 = load i32, i32* %PyramidCoding38, align 4
  %cmp39 = icmp eq i32 %49, 3
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.33
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 65
  store double 1.000000e+00, double* %b_interval42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.33
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 31
  %52 = load i32, i32* %intra_period, align 4
  %tobool44 = icmp ne i32 %52, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.else.66

land.lhs.true.45:                                 ; preds = %if.end.43
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 32
  %54 = load i32, i32* %idr_enable, align 4
  %tobool46 = icmp ne i32 %54, 0
  br i1 %tobool46, label %if.then.47, label %if.else.66

if.then.47:                                       ; preds = %land.lhs.true.45
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 0
  %56 = load i32, i32* %number48, align 4
  %57 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub49 = sub nsw i32 %56, %57
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period50 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 31
  %59 = load i32, i32* %intra_period50, align 4
  %rem51 = srem i32 %sub49, %59
  %sub52 = sub nsw i32 %rem51, 1
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 5
  %61 = load i32, i32* %jumpd53, align 4
  %add54 = add nsw i32 %61, 1
  %mul = mul nsw i32 %sub52, %add54
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 65
  %63 = load double, double* %b_interval55, align 8
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 67
  %65 = load i32, i32* %b_frame_to_code56, align 4
  %sub57 = sub nsw i32 %65, 1
  %idxprom58 = sext i32 %sub57 to i64
  %66 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx59 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %66, i64 %idxprom58
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx59, i32 0, i32 1
  %67 = load i32, i32* %display_no, align 4
  %add60 = add nsw i32 1, %67
  %conv61 = sitofp i32 %add60 to double
  %mul62 = fmul double %63, %conv61
  %conv63 = fptosi double %mul62 to i32
  %add64 = add nsw i32 %mul, %conv63
  %mul65 = mul nsw i32 2, %add64
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 101
  store i32 %mul65, i32* %toppoc, align 4
  br label %if.end.86

if.else.66:                                       ; preds = %land.lhs.true.45, %if.end.43
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number67 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 0
  %70 = load i32, i32* %number67, align 4
  %71 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub68 = sub nsw i32 %70, %71
  %sub69 = sub nsw i32 %sub68, 1
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd70 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 5
  %73 = load i32, i32* %jumpd70, align 4
  %add71 = add nsw i32 %73, 1
  %mul72 = mul nsw i32 %sub69, %add71
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 65
  %75 = load double, double* %b_interval73, align 8
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 67
  %77 = load i32, i32* %b_frame_to_code74, align 4
  %sub75 = sub nsw i32 %77, 1
  %idxprom76 = sext i32 %sub75 to i64
  %78 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx77 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %78, i64 %idxprom76
  %display_no78 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx77, i32 0, i32 1
  %79 = load i32, i32* %display_no78, align 4
  %add79 = add nsw i32 1, %79
  %conv80 = sitofp i32 %add79 to double
  %mul81 = fmul double %75, %conv80
  %conv82 = fptosi double %mul81 to i32
  %add83 = add nsw i32 %mul72, %conv82
  %mul84 = mul nsw i32 2, %add83
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 101
  store i32 %mul84, i32* %toppoc85, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.66, %if.then.47
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 67
  %82 = load i32, i32* %b_frame_to_code87, align 4
  %cmp88 = icmp eq i32 %82, 1
  br i1 %cmp88, label %if.then.90, label %if.else.101

if.then.90:                                       ; preds = %if.end.86
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 101
  %84 = load i32, i32* %toppoc91, align 4
  %85 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 0
  %87 = load i32, i32* %number92, align 4
  %88 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub93 = sub nsw i32 %87, %88
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd94 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 5
  %90 = load i32, i32* %jumpd94, align 4
  %add95 = add nsw i32 %90, 1
  %mul96 = mul nsw i32 %sub93, %add95
  %add97 = add nsw i32 %85, %mul96
  %mul98 = mul nsw i32 2, %add97
  %sub99 = sub nsw i32 %84, %mul98
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 99
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt, i32 0, i64 0
  store i32 %sub99, i32* %arrayidx100, align 4
  br label %if.end.126

if.else.101:                                      ; preds = %if.end.86
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 101
  %93 = load i32, i32* %toppoc102, align 4
  %94 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 0
  %96 = load i32, i32* %number103, align 4
  %97 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub104 = sub nsw i32 %96, %97
  %sub105 = sub nsw i32 %sub104, 1
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd106 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 5
  %99 = load i32, i32* %jumpd106, align 4
  %add107 = add nsw i32 %99, 1
  %mul108 = mul nsw i32 %sub105, %add107
  %add109 = add nsw i32 %94, %mul108
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 65
  %101 = load double, double* %b_interval110, align 8
  %mul111 = fmul double 2.000000e+00, %101
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 67
  %103 = load i32, i32* %b_frame_to_code112, align 4
  %sub113 = sub nsw i32 %103, 2
  %idxprom114 = sext i32 %sub113 to i64
  %104 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %arrayidx115 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %104, i64 %idxprom114
  %display_no116 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx115, i32 0, i32 1
  %105 = load i32, i32* %display_no116, align 4
  %add117 = add nsw i32 1, %105
  %conv118 = sitofp i32 %add117 to double
  %mul119 = fmul double %mul111, %conv118
  %conv120 = fptosi double %mul119 to i32
  %add121 = add nsw i32 %add109, %conv120
  %mul122 = mul nsw i32 2, %add121
  %sub123 = sub nsw i32 %93, %mul122
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 99
  %arrayidx125 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt124, i32 0, i64 0
  store i32 %sub123, i32* %arrayidx125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.101, %if.then.90
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 91
  %108 = load i32, i32* %PicInterlace, align 4
  %cmp127 = icmp eq i32 %108, 0
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.134

land.lhs.true.129:                                ; preds = %if.end.126
  %109 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %109, i32 0, i32 92
  %110 = load i32, i32* %MbInterlace, align 4
  %cmp130 = icmp eq i32 %110, 0
  br i1 %cmp130, label %if.then.132, label %if.else.134

if.then.132:                                      ; preds = %land.lhs.true.129
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 101
  %112 = load i32, i32* %toppoc133, align 4
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 102
  store i32 %112, i32* %bottompoc, align 4
  br label %if.end.138

if.else.134:                                      ; preds = %land.lhs.true.129, %if.end.126
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 101
  %115 = load i32, i32* %toppoc135, align 4
  %add136 = add nsw i32 %115, 1
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 102
  store i32 %add136, i32* %bottompoc137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.134, %if.then.132
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 101
  %118 = load i32, i32* %toppoc139, align 4
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 102
  %120 = load i32, i32* %bottompoc140, align 4
  %cmp141 = icmp slt i32 %118, %120
  br i1 %cmp141, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.138
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 101
  %122 = load i32, i32* %toppoc143, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.138
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 102
  %124 = load i32, i32* %bottompoc144, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %122, %cond.true ], [ %124, %cond.false ]
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 103
  store i32 %cond, i32* %framepoc, align 4
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt145 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 99
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt145, i32 0, i64 1
  store i32 0, i32* %arrayidx146, align 4
  %call = call i32 (...) @encode_one_frame()
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 125
  %128 = load i32, i32* %ReportFrameStats, align 4
  %tobool147 = icmp ne i32 %128, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %cond.end
  call void (...) @report_frame_statistic()
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.149
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 67
  %130 = load i32, i32* %b_frame_to_code150, align 4
  %inc151 = add nsw i32 %130, 1
  store i32 %inc151, i32* %b_frame_to_code150, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 67
  store i32 0, i32* %b_frame_to_code152, align 4
  br label %if.end.275

if.else.153:                                      ; preds = %if.end.10
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 67
  store i32 1, i32* %b_frame_to_code154, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.271, %if.else.153
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 67
  %134 = load i32, i32* %b_frame_to_code156, align 4
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe157 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 34
  %136 = load i32, i32* %successive_Bframe157, align 4
  %cmp158 = icmp sle i32 %134, %136
  br i1 %cmp158, label %for.body.160, label %for.end.274

for.body.160:                                     ; preds = %for.cond.155
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 113
  store i32 0, i32* %nal_reference_idc161, align 4
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures162 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 54
  %139 = load i32, i32* %BRefPictures162, align 4
  %cmp163 = icmp eq i32 %139, 1
  br i1 %cmp163, label %if.then.165, label %if.end.173

if.then.165:                                      ; preds = %for.body.160
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 113
  store i32 1, i32* %nal_reference_idc166, align 4
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 105
  %142 = load i32, i32* %frame_num167, align 4
  %inc168 = add i32 %142, 1
  store i32 %inc168, i32* %frame_num167, align 4
  %143 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add169 = add i32 %143, 4
  %shl170 = shl i32 1, %add169
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num171 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 105
  %145 = load i32, i32* %frame_num171, align 4
  %rem172 = urem i32 %145, %shl170
  store i32 %rem172, i32* %frame_num171, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.165, %for.body.160
  %146 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd174 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %146, i32 0, i32 5
  %147 = load i32, i32* %jumpd174, align 4
  %add175 = add nsw i32 %147, 1
  %conv176 = sitofp i32 %add175 to double
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe177 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 34
  %149 = load i32, i32* %successive_Bframe177, align 4
  %conv178 = sitofp i32 %149 to double
  %add179 = fadd double %conv178, 1.000000e+00
  %div180 = fdiv double %conv176, %add179
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 65
  store double %div180, double* %b_interval181, align 8
  %151 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding182 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %151, i32 0, i32 55
  %152 = load i32, i32* %PyramidCoding182, align 4
  %cmp183 = icmp eq i32 %152, 3
  br i1 %cmp183, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %if.end.173
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 65
  store double 1.000000e+00, double* %b_interval186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %if.end.173
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period188 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 31
  %155 = load i32, i32* %intra_period188, align 4
  %tobool189 = icmp ne i32 %155, 0
  br i1 %tobool189, label %land.lhs.true.190, label %if.else.210

land.lhs.true.190:                                ; preds = %if.end.187
  %156 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable191 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %156, i32 0, i32 32
  %157 = load i32, i32* %idr_enable191, align 4
  %tobool192 = icmp ne i32 %157, 0
  br i1 %tobool192, label %if.then.193, label %if.else.210

if.then.193:                                      ; preds = %land.lhs.true.190
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 0
  %159 = load i32, i32* %number194, align 4
  %160 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub195 = sub nsw i32 %159, %160
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period196 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 31
  %162 = load i32, i32* %intra_period196, align 4
  %rem197 = srem i32 %sub195, %162
  %sub198 = sub nsw i32 %rem197, 1
  %163 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd199 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %163, i32 0, i32 5
  %164 = load i32, i32* %jumpd199, align 4
  %add200 = add nsw i32 %164, 1
  %mul201 = mul nsw i32 %sub198, %add200
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval202 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 65
  %166 = load double, double* %b_interval202, align 8
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 67
  %168 = load i32, i32* %b_frame_to_code203, align 4
  %conv204 = sitofp i32 %168 to double
  %mul205 = fmul double %166, %conv204
  %conv206 = fptosi double %mul205 to i32
  %add207 = add nsw i32 %mul201, %conv206
  %mul208 = mul nsw i32 2, %add207
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc209 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 101
  store i32 %mul208, i32* %toppoc209, align 4
  br label %if.end.225

if.else.210:                                      ; preds = %land.lhs.true.190, %if.end.187
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number211 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 0
  %171 = load i32, i32* %number211, align 4
  %172 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub212 = sub nsw i32 %171, %172
  %sub213 = sub nsw i32 %sub212, 1
  %173 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd214 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %173, i32 0, i32 5
  %174 = load i32, i32* %jumpd214, align 4
  %add215 = add nsw i32 %174, 1
  %mul216 = mul nsw i32 %sub213, %add215
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 65
  %176 = load double, double* %b_interval217, align 8
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 67
  %178 = load i32, i32* %b_frame_to_code218, align 4
  %conv219 = sitofp i32 %178 to double
  %mul220 = fmul double %176, %conv219
  %conv221 = fptosi double %mul220 to i32
  %add222 = add nsw i32 %mul216, %conv221
  %mul223 = mul nsw i32 2, %add222
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 101
  store i32 %mul223, i32* %toppoc224, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.210, %if.then.193
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace226 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 91
  %181 = load i32, i32* %PicInterlace226, align 4
  %cmp227 = icmp eq i32 %181, 0
  br i1 %cmp227, label %land.lhs.true.229, label %if.else.236

land.lhs.true.229:                                ; preds = %if.end.225
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 92
  %183 = load i32, i32* %MbInterlace230, align 4
  %cmp231 = icmp eq i32 %183, 0
  br i1 %cmp231, label %if.then.233, label %if.else.236

if.then.233:                                      ; preds = %land.lhs.true.229
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc234 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 101
  %185 = load i32, i32* %toppoc234, align 4
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 102
  store i32 %185, i32* %bottompoc235, align 4
  br label %if.end.240

if.else.236:                                      ; preds = %land.lhs.true.229, %if.end.225
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc237 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 101
  %188 = load i32, i32* %toppoc237, align 4
  %add238 = add nsw i32 %188, 1
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 102
  store i32 %add238, i32* %bottompoc239, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.236, %if.then.233
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 101
  %191 = load i32, i32* %toppoc241, align 4
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc242 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 102
  %193 = load i32, i32* %bottompoc242, align 4
  %cmp243 = icmp slt i32 %191, %193
  br i1 %cmp243, label %cond.true.245, label %cond.false.247

cond.true.245:                                    ; preds = %if.end.240
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc246 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 101
  %195 = load i32, i32* %toppoc246, align 4
  br label %cond.end.249

cond.false.247:                                   ; preds = %if.end.240
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc248 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 102
  %197 = load i32, i32* %bottompoc248, align 4
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.247, %cond.true.245
  %cond250 = phi i32 [ %195, %cond.true.245 ], [ %197, %cond.false.247 ]
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc251 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 103
  store i32 %cond250, i32* %framepoc251, align 4
  %199 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures252 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %199, i32 0, i32 54
  %200 = load i32, i32* %BRefPictures252, align 4
  %tobool253 = icmp ne i32 %200, 0
  br i1 %tobool253, label %if.else.260, label %if.then.254

if.then.254:                                      ; preds = %cond.end.249
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code255 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 67
  %202 = load i32, i32* %b_frame_to_code255, align 4
  %sub256 = sub nsw i32 %202, 1
  %mul257 = mul nsw i32 2, %sub256
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt258 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 99
  %arrayidx259 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt258, i32 0, i64 0
  store i32 %mul257, i32* %arrayidx259, align 4
  br label %if.end.263

if.else.260:                                      ; preds = %cond.end.249
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt261 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 99
  %arrayidx262 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt261, i32 0, i64 0
  store i32 -2, i32* %arrayidx262, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.then.254
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt264 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 99
  %arrayidx265 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt264, i32 0, i64 1
  store i32 0, i32* %arrayidx265, align 4
  %call266 = call i32 (...) @encode_one_frame()
  %206 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats267 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %206, i32 0, i32 125
  %207 = load i32, i32* %ReportFrameStats267, align 4
  %tobool268 = icmp ne i32 %207, 0
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.263
  call void (...) @report_frame_statistic()
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %if.end.263
  br label %for.inc.271

for.inc.271:                                      ; preds = %if.end.270
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code272 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 67
  %209 = load i32, i32* %b_frame_to_code272, align 4
  %inc273 = add nsw i32 %209, 1
  store i32 %inc273, i32* %b_frame_to_code272, align 4
  br label %for.cond.155

for.end.274:                                      ; preds = %for.cond.155
  br label %if.end.275

if.end.275:                                       ; preds = %for.end.274, %for.end
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %land.lhs.true, %entry
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code277 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 67
  store i32 0, i32* %b_frame_to_code277, align 4
  ret void
}

declare i32 @encode_one_frame(...) #2

declare void @report_frame_statistic(...) #2

; Function Attrs: nounwind uwtable
define void @poc_based_ref_management(i32 %current_pic_num) #0 {
entry:
  %current_pic_num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pic_num = alloca i32, align 4
  %min_poc = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %tmp_drpm2 = alloca %struct.DecRefPicMarking_s*, align 8
  store i32 %current_pic_num, i32* %current_pic_num.addr, align 4
  store i32 0, i32* %pic_num, align 4
  store i32 2147483647, i32* %min_poc, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 117
  %1 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 6), align 4
  %add = add i32 %2, %3
  %cmp1 = icmp eq i32 %add, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp4 = icmp ult i32 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %7, i64 %idxprom
  %8 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %is_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 1
  %9 = load i32, i32* %is_reference, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %10 to i64
  %11 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx6 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %11, i64 %idxprom5
  %12 = load %struct.frame_store*, %struct.frame_store** %arrayidx6, align 8
  %is_long_term = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 2
  %13 = load i32, i32* %is_long_term, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end.20, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %14 to i64
  %15 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx10 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %15, i64 %idxprom9
  %16 = load %struct.frame_store*, %struct.frame_store** %arrayidx10, align 8
  %poc = getelementptr inbounds %struct.frame_store, %struct.frame_store* %16, i32 0, i32 9
  %17 = load i32, i32* %poc, align 4
  %18 = load i32, i32* %min_poc, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %land.lhs.true.8
  %19 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx14 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %20, i64 %idxprom13
  %21 = load %struct.frame_store*, %struct.frame_store** %arrayidx14, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 10
  %22 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 1
  %23 = load i32, i32* %poc15, align 4
  store i32 %23, i32* %min_poc, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %24 to i64
  %25 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %arrayidx17 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %25, i64 %idxprom16
  %26 = load %struct.frame_store*, %struct.frame_store** %arrayidx17, align 8
  %frame18 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %26, i32 0, i32 10
  %27 = load %struct.storable_picture*, %struct.storable_picture** %frame18, align 8
  %pic_num19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 11
  %28 = load i32, i32* %pic_num19, align 4
  store i32 %28, i32* %pic_num, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %land.lhs.true.8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call noalias i8* @calloc(i64 1, i64 32) #5
  %30 = bitcast i8* %call to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %30, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp21 = icmp eq %struct.DecRefPicMarking_s* null, %30
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.end
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %31, i32 0, i32 5
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %Next, align 8
  %32 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %32, i32 0, i32 0
  store i32 0, i32* %memory_management_control_operation, align 4
  %call24 = call noalias i8* @calloc(i64 1, i64 32) #5
  %33 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %33, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %cmp25 = icmp eq %struct.DecRefPicMarking_s* null, %33
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %34 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %35 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next28 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %35, i32 0, i32 5
  store %struct.DecRefPicMarking_s* %34, %struct.DecRefPicMarking_s** %Next28, align 8
  %36 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %memory_management_control_operation29 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %36, i32 0, i32 0
  store i32 1, i32* %memory_management_control_operation29, align 4
  %37 = load i32, i32* %current_pic_num.addr, align 4
  %38 = load i32, i32* %pic_num, align 4
  %sub = sub i32 %37, %38
  %sub30 = sub i32 %sub, 1
  %39 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %39, i32 0, i32 1
  store i32 %sub30, i32* %difference_of_pic_nums_minus1, align 4
  %40 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 117
  store %struct.DecRefPicMarking_s* %40, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8
  br label %return

return:                                           ; preds = %if.end.27, %if.then.2, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
