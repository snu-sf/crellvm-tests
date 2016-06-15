; ModuleID = 'ratectl.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@THETA = constant double 1.363600e+00, align 8
@Switch = constant i32 0, align 4
@Iprev_bits = global i32 0, align 4
@Pprev_bits = global i32 0, align 4
@OMEGA = constant double 9.000000e-01, align 8
@img = external global %struct.ImageParameters*, align 8
@.str = private unnamed_addr constant [23 x i8] c"rc_alloc: img->MADofMB\00", align 1
@input = external global %struct.InputParameters*, align 8
@BUPFMAD = common global double* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUPFMAD\00", align 1
@BUCFMAD = common global double* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUCFMAD\00", align 1
@FCBUCFMAD = common global double* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUCFMAD\00", align 1
@FCBUPFMAD = common global double* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUPFMAD\00", align 1
@Xp = common global i32 0, align 4
@Xb = common global i32 0, align 4
@bit_rate = common global double 0.000000e+00, align 8
@frame_rate = common global double 0.000000e+00, align 8
@PreviousBit_Rate = common global double 0.000000e+00, align 8
@TotalNumberofBasicUnit = common global i32 0, align 4
@MINVALUE = common global double 0.000000e+00, align 8
@BufferSize = common global double 0.000000e+00, align 8
@CurrentBufferFullness = common global double 0.000000e+00, align 8
@GOPTargetBufferLevel = common global double 0.000000e+00, align 8
@InitialDelayOffset = common global double 0.000000e+00, align 8
@m_windowSize = common global i32 0, align 4
@MADm_windowSize = common global i32 0, align 4
@R = internal global i32 0, align 4
@GAMMAP = common global double 0.000000e+00, align 8
@BETAP = common global double 0.000000e+00, align 8
@PPreHeader = common global i32 0, align 4
@Pm_X1 = common global double 0.000000e+00, align 8
@Pm_X2 = common global double 0.000000e+00, align 8
@PMADPictureC1 = common global double 0.000000e+00, align 8
@PMADPictureC2 = common global double 0.000000e+00, align 8
@Pm_rgQp = common global [20 x double] zeroinitializer, align 16
@Pm_rgRp = common global [20 x double] zeroinitializer, align 16
@PPictureMAD = common global [21 x double] zeroinitializer, align 16
@PDuantQp = common global i32 0, align 4
@PAveHeaderBits1 = common global i32 0, align 4
@PAveHeaderBits3 = common global i32 0, align 4
@DDquant = common global i32 0, align 4
@MBPerRow = common global i32 0, align 4
@RC_MAX_QUANT = common global i32 0, align 4
@RC_MIN_QUANT = common global i32 0, align 4
@LowerBound = common global i64 0, align 8
@UpperBound1 = common global i64 0, align 8
@Np = internal global i32 0, align 4
@Nb = internal global i32 0, align 4
@GOPOverdue = common global i32 0, align 4
@TotalPFrame = common global i32 0, align 4
@MyInitialQp = common global i32 0, align 4
@PreviousQp2 = common global i32 0, align 4
@QPLastGOP = common global i32 0, align 4
@FrameQPBuffer = common global i32 0, align 4
@QPLastPFrame = common global i32 0, align 4
@FieldQPBuffer = common global i32 0, align 4
@PAverageQp = common global i32 0, align 4
@Pm_Qp = common global i32 0, align 4
@PAveFrameQP = common global i32 0, align 4
@PreviousQp1 = common global i32 0, align 4
@NumberofBFrames = common global i32 0, align 4
@TargetBufferLevel = common global double 0.000000e+00, align 8
@DeltaP = common global double 0.000000e+00, align 8
@Wp = common global double 0.000000e+00, align 8
@AWp = common global double 0.000000e+00, align 8
@AWb = common global double 0.000000e+00, align 8
@Wb = common global double 0.000000e+00, align 8
@T = common global i64 0, align 8
@T1 = common global i64 0, align 8
@UpperBound2 = common global i64 0, align 8
@T_field = internal global i32 0, align 4
@TotalFrameQP = common global i32 0, align 4
@NumberofBasicUnit = common global i32 0, align 4
@bits_topfield = internal global i32 0, align 4
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@m_Qc = common global i32 0, align 4
@Pm_Hp = common global i32 0, align 4
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@m_X1 = common global double 0.000000e+00, align 8
@m_X2 = common global double 0.000000e+00, align 8
@m_Hp = common global i32 0, align 4
@m_Qp = common global i32 0, align 4
@DuantQp = common global i32 0, align 4
@MADPictureC1 = common global double 0.000000e+00, align 8
@MADPictureC2 = common global double 0.000000e+00, align 8
@PreviousPictureMAD = common global double 0.000000e+00, align 8
@CurrentFrameMAD = common global double 0.000000e+00, align 8
@m_Qstep = common global double 0.000000e+00, align 8
@PAveHeaderBits2 = common global i32 0, align 4
@FrameAveHeaderBits = common global i32 0, align 4
@FieldAveHeaderBits = common global i32 0, align 4
@TotalBasicUnitBits = common global i32 0, align 4
@TotalBUMAD = common global double 0.000000e+00, align 8
@CurrentBUMAD = common global double 0.000000e+00, align 8
@CodedBasicUnit = common global i32 0, align 4
@m_rgQp = common global [21 x double] zeroinitializer, align 16
@m_rgRp = common global [21 x double] zeroinitializer, align 16
@PreviousFrameMAD = common global double 0.000000e+00, align 8
@m_rgRejected = common global [21 x i32] zeroinitializer, align 16
@PictureMAD = common global [21 x double] zeroinitializer, align 16
@ReferenceMAD = common global [21 x double] zeroinitializer, align 16
@PictureRejected = common global [21 x i32] zeroinitializer, align 16
@QP2Qstep.QP2QSTEP = internal constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 16
@PreAveMBHeader = common global i32 0, align 4
@CurAveMBHeader = common global i32 0, align 4
@AverageMADPreviousFrame = common global double 0.000000e+00, align 8
@diffyy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffy8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@BitRate = common global %struct._IO_FILE* null, align 8

; Function Attrs: nounwind uwtable
define void @rc_alloc() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 111
  %1 = load i32, i32* %FrameSizeInMbs, align 4
  %conv = zext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %2 = bitcast i8* %call to double*
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MADofMB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 131
  store double* %2, double** %MADofMB, align 8
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MADofMB1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 131
  %5 = load double*, double** %MADofMB1, align 8
  %cmp = icmp eq double* null, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 111
  %7 = load i32, i32* %FrameSizeInMbs3, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 130
  %9 = load i32, i32* %basicunit, align 4
  %div = udiv i32 %7, %9
  %conv4 = zext i32 %div to i64
  %call5 = call noalias i8* @calloc(i64 %conv4, i64 8) #4
  %10 = bitcast i8* %call5 to double*
  store double* %10, double** @BUPFMAD, align 8
  %11 = load double*, double** @BUPFMAD, align 8
  %cmp6 = icmp eq double* null, %11
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 111
  %13 = load i32, i32* %FrameSizeInMbs10, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 130
  %15 = load i32, i32* %basicunit11, align 4
  %div12 = udiv i32 %13, %15
  %conv13 = zext i32 %div12 to i64
  %call14 = call noalias i8* @calloc(i64 %conv13, i64 8) #4
  %16 = bitcast i8* %call14 to double*
  store double* %16, double** @BUCFMAD, align 8
  %17 = load double*, double** @BUCFMAD, align 8
  %cmp15 = icmp eq double* null, %17
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.9
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.9
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 111
  %19 = load i32, i32* %FrameSizeInMbs19, align 4
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit20 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 130
  %21 = load i32, i32* %basicunit20, align 4
  %div21 = udiv i32 %19, %21
  %conv22 = zext i32 %div21 to i64
  %call23 = call noalias i8* @calloc(i64 %conv22, i64 8) #4
  %22 = bitcast i8* %call23 to double*
  store double* %22, double** @FCBUCFMAD, align 8
  %23 = load double*, double** @FCBUCFMAD, align 8
  %cmp24 = icmp eq double* null, %23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.18
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.18
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FrameSizeInMbs28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 111
  %25 = load i32, i32* %FrameSizeInMbs28, align 4
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 130
  %27 = load i32, i32* %basicunit29, align 4
  %div30 = udiv i32 %25, %27
  %conv31 = zext i32 %div30 to i64
  %call32 = call noalias i8* @calloc(i64 %conv31, i64 8) #4
  %28 = bitcast i8* %call32 to double*
  store double* %28, double** @FCBUPFMAD, align 8
  %29 = load double*, double** @FCBUPFMAD, align 8
  %cmp33 = icmp eq double* null, %29
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.27
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.27
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define void @rc_free() #0 {
entry:
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MADofMB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 131
  %1 = load double*, double** %MADofMB, align 8
  %cmp = icmp ne double* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MADofMB1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 131
  %3 = load double*, double** %MADofMB1, align 8
  %4 = bitcast double* %3 to i8*
  call void @free(i8* %4) #4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MADofMB2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 131
  store double* null, double** %MADofMB2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load double*, double** @BUPFMAD, align 8
  %cmp3 = icmp ne double* null, %6
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load double*, double** @BUPFMAD, align 8
  %8 = bitcast double* %7 to i8*
  call void @free(i8* %8) #4
  store double* null, double** @BUPFMAD, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load double*, double** @BUCFMAD, align 8
  %cmp6 = icmp ne double* null, %9
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %10 = load double*, double** @BUCFMAD, align 8
  %11 = bitcast double* %10 to i8*
  call void @free(i8* %11) #4
  store double* null, double** @BUCFMAD, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %12 = load double*, double** @FCBUCFMAD, align 8
  %cmp9 = icmp ne double* null, %12
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %13 = load double*, double** @FCBUCFMAD, align 8
  %14 = bitcast double* %13 to i8*
  call void @free(i8* %14) #4
  store double* null, double** @FCBUCFMAD, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %15 = load double*, double** @FCBUPFMAD, align 8
  %cmp12 = icmp ne double* null, %15
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %16 = load double*, double** @FCBUPFMAD, align 8
  %17 = bitcast double* %16 to i8*
  call void @free(i8* %17) #4
  store double* null, double** @FCBUPFMAD, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @rc_init_seq() #0 {
entry:
  %L1 = alloca double, align 8
  %L2 = alloca double, align 8
  %L3 = alloca double, align 8
  %bpp = alloca double, align 8
  %qp = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* @Xp, align 4
  store i32 0, i32* @Xb, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bit_rate = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 128
  %1 = load i32, i32* %bit_rate, align 4
  %conv = sitofp i32 %1 to double
  store double %conv, double* @bit_rate, align 8
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framerate = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 12
  %3 = load float, float* %framerate, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 34
  %5 = load i32, i32* %successive_Bframe, align 4
  %add = add nsw i32 %5, 1
  %conv1 = sitofp i32 %add to float
  %mul = fmul float %3, %conv1
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 5
  %7 = load i32, i32* %jumpd, align 4
  %add2 = add nsw i32 %7, 1
  %conv3 = sitofp i32 %add2 to float
  %div = fdiv float %mul, %conv3
  %conv4 = fpext float %div to double
  store double %conv4, double* @frame_rate, align 8
  %8 = load double, double* @bit_rate, align 8
  store double %8, double* @PreviousBit_Rate, align 8
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 15
  %10 = load i32, i32* %height, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 13
  %12 = load i32, i32* %width, align 4
  %mul5 = mul nsw i32 %10, %12
  %div6 = sdiv i32 %mul5, 256
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 136
  store i32 %div6, i32* %Frame_Total_Number_MB, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 130
  %15 = load i32, i32* %basicunit, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 136
  %17 = load i32, i32* %Frame_Total_Number_MB7, align 4
  %cmp = icmp sgt i32 %15, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 136
  %19 = load i32, i32* %Frame_Total_Number_MB9, align 4
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 130
  store i32 %19, i32* %basicunit10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 130
  %22 = load i32, i32* %basicunit11, align 4
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 136
  %24 = load i32, i32* %Frame_Total_Number_MB12, align 4
  %cmp13 = icmp slt i32 %22, %24
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 136
  %26 = load i32, i32* %Frame_Total_Number_MB16, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 130
  %28 = load i32, i32* %basicunit17, align 4
  %div18 = sdiv i32 %26, %28
  store i32 %div18, i32* @TotalNumberofBasicUnit, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end
  store double 4.000000e+00, double* @MINVALUE, align 8
  %29 = load double, double* @bit_rate, align 8
  %mul20 = fmul double %29, 2.560000e+00
  store double %mul20, double* @BufferSize, align 8
  store double 0.000000e+00, double* @CurrentBufferFullness, align 8
  %30 = load double, double* @CurrentBufferFullness, align 8
  store double %30, double* @GOPTargetBufferLevel, align 8
  %31 = load double, double* @BufferSize, align 8
  %mul21 = fmul double %31, 8.000000e-01
  store double %mul21, double* @InitialDelayOffset, align 8
  store i32 0, i32* @m_windowSize, align 4
  store i32 0, i32* @MADm_windowSize, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 126
  store i32 0, i32* %NumberofCodedBFrame, align 4
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 127
  store i32 0, i32* %NumberofCodedPFrame, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 128
  store i32 0, i32* %NumberofGOP, align 4
  store i32 0, i32* @R, align 4
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe22 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 34
  %36 = load i32, i32* %successive_Bframe22, align 4
  %cmp23 = icmp sgt i32 %36, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.19
  store double 2.500000e-01, double* @GAMMAP, align 8
  store double 9.000000e-01, double* @BETAP, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.19
  store double 5.000000e-01, double* @GAMMAP, align 8
  store double 5.000000e-01, double* @BETAP, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  store i32 0, i32* @PPreHeader, align 4
  %37 = load double, double* @bit_rate, align 8
  %mul27 = fmul double %37, 1.000000e+00
  store double %mul27, double* @Pm_X1, align 8
  store double 0.000000e+00, double* @Pm_X2, align 8
  store double 1.000000e+00, double* @PMADPictureC1, align 8
  store double 0.000000e+00, double* @PMADPictureC2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %38 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %38, 20
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %40 to i64
  %arrayidx31 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i32 0, i64 %idxprom30
  store double 0.000000e+00, double* %arrayidx31, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %41 to i64
  %arrayidx33 = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i32 0, i64 %idxprom32
  store double 0.000000e+00, double* %arrayidx33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i32 0, i64 20), align 8
  store i32 2, i32* @PDuantQp, align 4
  store i32 0, i32* @PAveHeaderBits1, align 4
  store i32 0, i32* @PAveHeaderBits3, align 4
  %43 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %cmp34 = icmp sge i32 %43, 9
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %for.end
  store i32 1, i32* @DDquant, align 4
  br label %if.end.38

if.else.37:                                       ; preds = %for.end
  store i32 2, i32* @DDquant, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 13
  %45 = load i32, i32* %width39, align 4
  %div40 = sdiv i32 %45, 16
  store i32 %div40, i32* @MBPerRow, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 134
  store i32 0, i32* %FieldControl, align 4
  store i32 51, i32* @RC_MAX_QUANT, align 4
  store i32 0, i32* @RC_MIN_QUANT, align 4
  %47 = load double, double* @bit_rate, align 8
  %mul41 = fmul double 1.000000e+00, %47
  %48 = load double, double* @frame_rate, align 8
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 13
  %50 = load i32, i32* %width42, align 4
  %conv43 = sitofp i32 %50 to double
  %mul44 = fmul double %48, %conv43
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height45 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 15
  %52 = load i32, i32* %height45, align 4
  %conv46 = sitofp i32 %52 to double
  %mul47 = fmul double %mul44, %conv46
  %div48 = fdiv double %mul41, %mul47
  store double %div48, double* %bpp, align 8
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 13
  %54 = load i32, i32* %width49, align 4
  %cmp50 = icmp eq i32 %54, 176
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.38
  store double 1.000000e-01, double* %L1, align 8
  store double 3.000000e-01, double* %L2, align 8
  store double 6.000000e-01, double* %L3, align 8
  br label %if.end.60

if.else.53:                                       ; preds = %if.end.38
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 13
  %56 = load i32, i32* %width54, align 4
  %cmp55 = icmp eq i32 %56, 352
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.53
  store double 2.000000e-01, double* %L1, align 8
  store double 6.000000e-01, double* %L2, align 8
  store double 1.200000e+00, double* %L3, align 8
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.53
  store double 6.000000e-01, double* %L1, align 8
  store double 1.400000e+00, double* %L2, align 8
  store double 2.400000e+00, double* %L3, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.52
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SeinitialQP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 129
  %58 = load i32, i32* %SeinitialQP, align 4
  %cmp61 = icmp eq i32 %58, 0
  br i1 %cmp61, label %if.then.63, label %if.end.80

if.then.63:                                       ; preds = %if.end.60
  %59 = load double, double* %bpp, align 8
  %60 = load double, double* %L1, align 8
  %cmp64 = fcmp ole double %59, %60
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.then.63
  store i32 35, i32* %qp, align 4
  br label %if.end.78

if.else.67:                                       ; preds = %if.then.63
  %61 = load double, double* %bpp, align 8
  %62 = load double, double* %L2, align 8
  %cmp68 = fcmp ole double %61, %62
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.67
  store i32 25, i32* %qp, align 4
  br label %if.end.77

if.else.71:                                       ; preds = %if.else.67
  %63 = load double, double* %bpp, align 8
  %64 = load double, double* %L3, align 8
  %cmp72 = fcmp ole double %63, %64
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.71
  store i32 20, i32* %qp, align 4
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.71
  store i32 10, i32* %qp, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.66
  %65 = load i32, i32* %qp, align 4
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SeinitialQP79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 129
  store i32 %65, i32* %SeinitialQP79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.78, %if.end.60
  ret void
}

; Function Attrs: nounwind uwtable
define void @rc_init_GOP(i32 %np, i32 %nb) #0 {
entry:
  %np.addr = alloca i32, align 4
  %nb.addr = alloca i32, align 4
  %Overum = alloca i32, align 4
  %OverBits = alloca i32, align 4
  %OverDuantQp = alloca i32, align 4
  %AllocatedBits = alloca i32, align 4
  %GOPDquant = alloca i32, align 4
  store i32 %np, i32* %np.addr, align 4
  store i32 %nb, i32* %nb.addr, align 4
  store i32 0, i32* %Overum, align 4
  %0 = load i32, i32* @R, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %Overum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @R, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %OverBits, align 4
  %2 = load i32, i32* @R, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* @bit_rate, align 8
  %4 = load double, double* @frame_rate, align 8
  %div = fdiv double %3, %4
  %add = fadd double %conv, %div
  %conv1 = fptosi double %add to i64
  store i64 %conv1, i64* @LowerBound, align 8
  %5 = load i32, i32* @R, align 4
  %conv2 = sitofp i32 %5 to double
  %6 = load double, double* @InitialDelayOffset, align 8
  %add3 = fadd double %conv2, %6
  %conv4 = fptosi double %add3 to i64
  store i64 %conv4, i64* @UpperBound1, align 8
  %7 = load i32, i32* %np.addr, align 4
  %add5 = add nsw i32 1, %7
  %8 = load i32, i32* %nb.addr, align 4
  %add6 = add nsw i32 %add5, %8
  %conv7 = sitofp i32 %add6 to double
  %9 = load double, double* @bit_rate, align 8
  %mul = fmul double %conv7, %9
  %10 = load double, double* @frame_rate, align 8
  %div8 = fdiv double %mul, %10
  %add9 = fadd double %div8, 5.000000e-01
  %call = call double @floor(double %add9) #5
  %conv10 = fptosi double %call to i32
  store i32 %conv10, i32* %AllocatedBits, align 4
  %11 = load i32, i32* %AllocatedBits, align 4
  %12 = load i32, i32* @R, align 4
  %add11 = add nsw i32 %12, %11
  store i32 %add11, i32* @R, align 4
  %13 = load i32, i32* %np.addr, align 4
  store i32 %13, i32* @Np, align 4
  %14 = load i32, i32* %nb.addr, align 4
  store i32 %14, i32* @Nb, align 4
  %15 = load i32, i32* %OverBits, align 4
  %mul12 = mul nsw i32 8, %15
  %16 = load i32, i32* %AllocatedBits, align 4
  %div13 = sdiv i32 %mul12, %16
  %conv14 = sitofp i32 %div13 to double
  %add15 = fadd double %conv14, 5.000000e-01
  %conv16 = fptosi double %add15 to i32
  store i32 %conv16, i32* %OverDuantQp, align 4
  store i32 0, i32* @GOPOverdue, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 137
  store i32 1, i32* %IFLAG, align 4
  %18 = load i32, i32* %np.addr, align 4
  store i32 %18, i32* @TotalPFrame, align 4
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 128
  %20 = load i32, i32* %NumberofGOP, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %NumberofGOP, align 4
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 128
  %22 = load i32, i32* %NumberofGOP17, align 4
  %cmp18 = icmp eq i32 %22, 1
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SeinitialQP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 129
  %24 = load i32, i32* %SeinitialQP, align 4
  store i32 %24, i32* @MyInitialQp, align 4
  %25 = load i32, i32* @MyInitialQp, align 4
  %sub21 = sub nsw i32 %25, 1
  store i32 %sub21, i32* @PreviousQp2, align 4
  %26 = load i32, i32* @MyInitialQp, align 4
  store i32 %26, i32* @QPLastGOP, align 4
  br label %if.end.83

if.else:                                          ; preds = %if.end
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 91
  %28 = load i32, i32* %PicInterlace, align 4
  %cmp22 = icmp eq i32 %28, 2
  br i1 %cmp22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 92
  %30 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %lor.lhs.false, %if.else
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 135
  %32 = load i32, i32* %FieldFrame, align 4
  %cmp25 = icmp eq i32 %32, 1
  br i1 %cmp25, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.then.24
  %33 = load i32, i32* @FrameQPBuffer, align 4
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 129
  %35 = load i32, i32* %TotalQpforPPicture, align 4
  %add28 = add nsw i32 %35, %33
  store i32 %add28, i32* %TotalQpforPPicture, align 4
  %36 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %36, i32* @QPLastPFrame, align 4
  br label %if.end.32

if.else.29:                                       ; preds = %if.then.24
  %37 = load i32, i32* @FieldQPBuffer, align 4
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 129
  %39 = load i32, i32* %TotalQpforPPicture30, align 4
  %add31 = add nsw i32 %39, %37
  store i32 %add31, i32* %TotalQpforPPicture30, align 4
  %40 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %40, i32* @QPLastPFrame, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %lor.lhs.false
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 129
  %42 = load i32, i32* %TotalQpforPPicture34, align 4
  %conv35 = sitofp i32 %42 to double
  %mul36 = fmul double 1.000000e+00, %conv35
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 130
  %44 = load i32, i32* %NumberofPPicture, align 4
  %conv37 = sitofp i32 %44 to double
  %div38 = fdiv double %mul36, %conv37
  %add39 = fadd double %div38, 5.000000e-01
  %conv40 = fptosi double %add39 to i32
  store i32 %conv40, i32* @PAverageQp, align 4
  %45 = load i32, i32* %np.addr, align 4
  %46 = load i32, i32* %nb.addr, align 4
  %add41 = add nsw i32 %45, %46
  %add42 = add nsw i32 %add41, 1
  %conv43 = sitofp i32 %add42 to double
  %mul44 = fmul double 1.000000e+00, %conv43
  %div45 = fdiv double %mul44, 1.500000e+01
  %add46 = fadd double 5.000000e-01, %div45
  %conv47 = fptosi double %add46 to i32
  store i32 %conv47, i32* %GOPDquant, align 4
  %47 = load i32, i32* %GOPDquant, align 4
  %cmp48 = icmp sgt i32 %47, 2
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.33
  store i32 2, i32* %GOPDquant, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.33
  %48 = load i32, i32* %GOPDquant, align 4
  %49 = load i32, i32* @PAverageQp, align 4
  %sub52 = sub nsw i32 %49, %48
  store i32 %sub52, i32* @PAverageQp, align 4
  %50 = load i32, i32* @PAverageQp, align 4
  %51 = load i32, i32* @QPLastPFrame, align 4
  %sub53 = sub nsw i32 %51, 2
  %cmp54 = icmp sgt i32 %50, %sub53
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.51
  %52 = load i32, i32* @PAverageQp, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* @PAverageQp, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.51
  %53 = load i32, i32* @QPLastGOP, align 4
  %sub58 = sub nsw i32 %53, 2
  %54 = load i32, i32* @PAverageQp, align 4
  %cmp59 = icmp slt i32 %sub58, %54
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.57
  %55 = load i32, i32* @PAverageQp, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  %56 = load i32, i32* @QPLastGOP, align 4
  %sub61 = sub nsw i32 %56, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %55, %cond.true ], [ %sub61, %cond.false ]
  store i32 %cond, i32* @PAverageQp, align 4
  %57 = load i32, i32* @QPLastGOP, align 4
  %add62 = add nsw i32 %57, 2
  %58 = load i32, i32* @PAverageQp, align 4
  %cmp63 = icmp slt i32 %add62, %58
  br i1 %cmp63, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %cond.end
  %59 = load i32, i32* @QPLastGOP, align 4
  %add66 = add nsw i32 %59, 2
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.end
  %60 = load i32, i32* @PAverageQp, align 4
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.65
  %cond69 = phi i32 [ %add66, %cond.true.65 ], [ %60, %cond.false.67 ]
  store i32 %cond69, i32* @PAverageQp, align 4
  %61 = load i32, i32* @RC_MAX_QUANT, align 4
  %62 = load i32, i32* @PAverageQp, align 4
  %cmp70 = icmp slt i32 %61, %62
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.68
  %63 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.74

cond.false.73:                                    ; preds = %cond.end.68
  %64 = load i32, i32* @PAverageQp, align 4
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi i32 [ %63, %cond.true.72 ], [ %64, %cond.false.73 ]
  store i32 %cond75, i32* @PAverageQp, align 4
  %65 = load i32, i32* @RC_MIN_QUANT, align 4
  %66 = load i32, i32* @PAverageQp, align 4
  %cmp76 = icmp slt i32 %65, %66
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.end.74
  %67 = load i32, i32* @PAverageQp, align 4
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.74
  %68 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.78
  %cond81 = phi i32 [ %67, %cond.true.78 ], [ %68, %cond.false.79 ]
  store i32 %cond81, i32* @PAverageQp, align 4
  %69 = load i32, i32* @PAverageQp, align 4
  store i32 %69, i32* @MyInitialQp, align 4
  %70 = load i32, i32* @MyInitialQp, align 4
  store i32 %70, i32* @QPLastGOP, align 4
  %71 = load i32, i32* @PAverageQp, align 4
  store i32 %71, i32* @Pm_Qp, align 4
  %72 = load i32, i32* @PAverageQp, align 4
  store i32 %72, i32* @PAveFrameQP, align 4
  %73 = load i32, i32* @PreviousQp2, align 4
  store i32 %73, i32* @PreviousQp1, align 4
  %74 = load i32, i32* @MyInitialQp, align 4
  %sub82 = sub nsw i32 %74, 1
  store i32 %sub82, i32* @PreviousQp2, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %cond.end.80, %if.then.20
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 129
  store i32 0, i32* %TotalQpforPPicture84, align 4
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 130
  store i32 0, i32* %NumberofPPicture85, align 4
  store i32 0, i32* @NumberofBFrames, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define void @rc_init_pict(i32 %fieldpic, i32 %topfield, i32 %targetcomputation) #0 {
entry:
  %fieldpic.addr = alloca i32, align 4
  %topfield.addr = alloca i32, align 4
  %targetcomputation.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %fieldpic, i32* %fieldpic.addr, align 4
  store i32 %topfield, i32* %topfield.addr, align 4
  store i32 %targetcomputation, i32* %targetcomputation.addr, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 92
  %1 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 136
  %3 = load i32, i32* %Frame_Total_Number_MB, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 139
  %5 = load i32, i32* %BasicUnit, align 4
  %div = sdiv i32 %3, %5
  store i32 %div, i32* @TotalNumberofBasicUnit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 138
  store i32 0, i32* %NumberofCodedMacroBlocks, align 4
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %channel_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 131
  %8 = load i32, i32* %channel_type, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 127
  %10 = load i32, i32* %NumberofCodedPFrame, align 4
  %cmp2 = icmp eq i32 %10, 58
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %11 = load double, double* @bit_rate, align 8
  %mul = fmul double %11, 1.500000e+00
  store double %mul, double* @bit_rate, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.then.1
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 127
  %13 = load i32, i32* %NumberofCodedPFrame4, align 4
  %cmp5 = icmp eq i32 %13, 59
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %14 = load double, double* @bit_rate, align 8
  store double %14, double* @PreviousBit_Rate, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %15 = load i32, i32* %fieldpic.addr, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %16 = load i32, i32* %topfield.addr, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.383

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.9
  %17 = load i32, i32* %targetcomputation.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.383

if.then.13:                                       ; preds = %land.lhs.true
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 6
  %19 = load i32, i32* %type, align 4
  switch i32 %19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.172
  ]

sw.bb:                                            ; preds = %if.then.13
  %20 = load double, double* @PreviousBit_Rate, align 8
  %21 = load double, double* @bit_rate, align 8
  %cmp14 = fcmp une double %20, %21
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %sw.bb
  %22 = load double, double* @bit_rate, align 8
  %23 = load double, double* @PreviousBit_Rate, align 8
  %sub = fsub double %22, %23
  %24 = load i32, i32* @Np, align 4
  %25 = load i32, i32* @Nb, align 4
  %add = add nsw i32 %24, %25
  %conv = sitofp i32 %add to double
  %mul16 = fmul double %sub, %conv
  %26 = load double, double* @frame_rate, align 8
  %div17 = fdiv double %mul16, %26
  %add18 = fadd double %div17, 5.000000e-01
  %call = call double @floor(double %add18) #5
  %conv19 = fptosi double %call to i32
  %27 = load i32, i32* @R, align 4
  %add20 = add nsw i32 %27, %conv19
  store i32 %add20, i32* @R, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %sw.bb
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 139
  %29 = load i32, i32* %BasicUnit22, align 4
  %30 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %30, i32 0, i32 136
  %31 = load i32, i32* %Frame_Total_Number_MB23, align 4
  %cmp24 = icmp eq i32 %29, %31
  br i1 %cmp24, label %if.then.26, label %if.else.43

if.then.26:                                       ; preds = %if.end.21
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 130
  %33 = load i32, i32* %NumberofPPicture, align 4
  %cmp27 = icmp eq i32 %33, 1
  br i1 %cmp27, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %if.then.26
  %34 = load double, double* @CurrentBufferFullness, align 8
  store double %34, double* @TargetBufferLevel, align 8
  %35 = load double, double* @CurrentBufferFullness, align 8
  %36 = load double, double* @GOPTargetBufferLevel, align 8
  %sub30 = fsub double %35, %36
  %37 = load i32, i32* @TotalPFrame, align 4
  %sub31 = sub nsw i32 %37, 1
  %conv32 = sitofp i32 %sub31 to double
  %div33 = fdiv double %sub30, %conv32
  store double %div33, double* @DeltaP, align 8
  %38 = load double, double* @DeltaP, align 8
  %39 = load double, double* @TargetBufferLevel, align 8
  %sub34 = fsub double %39, %38
  store double %sub34, double* @TargetBufferLevel, align 8
  br label %if.end.42

if.else.35:                                       ; preds = %if.then.26
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 130
  %41 = load i32, i32* %NumberofPPicture36, align 4
  %cmp37 = icmp sgt i32 %41, 1
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else.35
  %42 = load double, double* @DeltaP, align 8
  %43 = load double, double* @TargetBufferLevel, align 8
  %sub40 = fsub double %43, %42
  store double %sub40, double* @TargetBufferLevel, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.29
  br label %if.end.118

if.else.43:                                       ; preds = %if.end.21
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 127
  %45 = load i32, i32* %NumberofCodedPFrame44, align 4
  %cmp45 = icmp sgt i32 %45, 0
  br i1 %cmp45, label %if.then.47, label %if.end.74

if.then.47:                                       ; preds = %if.else.43
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 91
  %47 = load i32, i32* %PicInterlace, align 4
  %cmp48 = icmp eq i32 %47, 2
  br i1 %cmp48, label %land.lhs.true.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.then.47
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace51 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 92
  %49 = load i32, i32* %MbInterlace51, align 4
  %tobool52 = icmp ne i32 %49, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.61

land.lhs.true.53:                                 ; preds = %lor.lhs.false.50, %if.then.47
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 134
  %51 = load i32, i32* %FieldControl, align 4
  %cmp54 = icmp eq i32 %51, 1
  br i1 %cmp54, label %if.then.56, label %if.else.61

if.then.56:                                       ; preds = %land.lhs.true.53
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.56
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %cmp57 = icmp slt i32 %52, %53
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load double*, double** @FCBUCFMAD, align 8
  %arrayidx = getelementptr inbounds double, double* %55, i64 %idxprom
  %56 = load double, double* %arrayidx, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %57 to i64
  %58 = load double*, double** @FCBUPFMAD, align 8
  %arrayidx60 = getelementptr inbounds double, double* %58, i64 %idxprom59
  store double %56, double* %arrayidx60, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.73

if.else.61:                                       ; preds = %land.lhs.true.53, %lor.lhs.false.50
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.70, %if.else.61
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %cmp63 = icmp slt i32 %60, %61
  br i1 %cmp63, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.62
  %62 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %62 to i64
  %63 = load double*, double** @BUCFMAD, align 8
  %arrayidx67 = getelementptr inbounds double, double* %63, i64 %idxprom66
  %64 = load double, double* %arrayidx67, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %65 to i64
  %66 = load double*, double** @BUPFMAD, align 8
  %arrayidx69 = getelementptr inbounds double, double* %66, i64 %idxprom68
  store double %64, double* %arrayidx69, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %67 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %67, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.62

for.end.72:                                       ; preds = %for.cond.62
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %for.end
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.else.43
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 128
  %69 = load i32, i32* %NumberofGOP, align 4
  %cmp75 = icmp eq i32 %69, 1
  br i1 %cmp75, label %if.then.77, label %if.else.95

if.then.77:                                       ; preds = %if.end.74
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 130
  %71 = load i32, i32* %NumberofPPicture78, align 4
  %cmp79 = icmp eq i32 %71, 1
  br i1 %cmp79, label %if.then.81, label %if.else.87

if.then.81:                                       ; preds = %if.then.77
  %72 = load double, double* @CurrentBufferFullness, align 8
  store double %72, double* @TargetBufferLevel, align 8
  %73 = load double, double* @CurrentBufferFullness, align 8
  %74 = load double, double* @GOPTargetBufferLevel, align 8
  %sub82 = fsub double %73, %74
  %75 = load i32, i32* @TotalPFrame, align 4
  %sub83 = sub nsw i32 %75, 1
  %conv84 = sitofp i32 %sub83 to double
  %div85 = fdiv double %sub82, %conv84
  store double %div85, double* @DeltaP, align 8
  %76 = load double, double* @DeltaP, align 8
  %77 = load double, double* @TargetBufferLevel, align 8
  %sub86 = fsub double %77, %76
  store double %sub86, double* @TargetBufferLevel, align 8
  br label %if.end.94

if.else.87:                                       ; preds = %if.then.77
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 130
  %79 = load i32, i32* %NumberofPPicture88, align 4
  %cmp89 = icmp sgt i32 %79, 1
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.else.87
  %80 = load double, double* @DeltaP, align 8
  %81 = load double, double* @TargetBufferLevel, align 8
  %sub92 = fsub double %81, %80
  store double %sub92, double* @TargetBufferLevel, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.else.87
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.81
  br label %if.end.117

if.else.95:                                       ; preds = %if.end.74
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 128
  %83 = load i32, i32* %NumberofGOP96, align 4
  %cmp97 = icmp sgt i32 %83, 1
  br i1 %cmp97, label %if.then.99, label %if.end.116

if.then.99:                                       ; preds = %if.else.95
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 130
  %85 = load i32, i32* %NumberofPPicture100, align 4
  %cmp101 = icmp eq i32 %85, 0
  br i1 %cmp101, label %if.then.103, label %if.else.108

if.then.103:                                      ; preds = %if.then.99
  %86 = load double, double* @CurrentBufferFullness, align 8
  store double %86, double* @TargetBufferLevel, align 8
  %87 = load double, double* @CurrentBufferFullness, align 8
  %88 = load double, double* @GOPTargetBufferLevel, align 8
  %sub104 = fsub double %87, %88
  %89 = load i32, i32* @TotalPFrame, align 4
  %conv105 = sitofp i32 %89 to double
  %div106 = fdiv double %sub104, %conv105
  store double %div106, double* @DeltaP, align 8
  %90 = load double, double* @DeltaP, align 8
  %91 = load double, double* @TargetBufferLevel, align 8
  %sub107 = fsub double %91, %90
  store double %sub107, double* @TargetBufferLevel, align 8
  br label %if.end.115

if.else.108:                                      ; preds = %if.then.99
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 130
  %93 = load i32, i32* %NumberofPPicture109, align 4
  %cmp110 = icmp sgt i32 %93, 0
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.else.108
  %94 = load double, double* @DeltaP, align 8
  %95 = load double, double* @TargetBufferLevel, align 8
  %sub113 = fsub double %95, %94
  store double %sub113, double* @TargetBufferLevel, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.else.108
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.103
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.else.95
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.94
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.42
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 127
  %97 = load i32, i32* %NumberofCodedPFrame119, align 4
  %cmp120 = icmp eq i32 %97, 1
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.118
  %98 = load double, double* @Wp, align 8
  store double %98, double* @AWp, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.118
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 127
  %100 = load i32, i32* %NumberofCodedPFrame124, align 4
  %cmp125 = icmp slt i32 %100, 8
  br i1 %cmp125, label %land.lhs.true.127, label %if.else.143

land.lhs.true.127:                                ; preds = %if.end.123
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 127
  %102 = load i32, i32* %NumberofCodedPFrame128, align 4
  %cmp129 = icmp sgt i32 %102, 1
  br i1 %cmp129, label %if.then.131, label %if.else.143

if.then.131:                                      ; preds = %land.lhs.true.127
  %103 = load double, double* @Wp, align 8
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 127
  %105 = load i32, i32* %NumberofCodedPFrame132, align 4
  %sub133 = sub nsw i32 %105, 1
  %conv134 = sitofp i32 %sub133 to double
  %mul135 = fmul double %103, %conv134
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame136 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 127
  %107 = load i32, i32* %NumberofCodedPFrame136, align 4
  %conv137 = sitofp i32 %107 to double
  %div138 = fdiv double %mul135, %conv137
  %108 = load double, double* @AWp, align 8
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 127
  %110 = load i32, i32* %NumberofCodedPFrame139, align 4
  %conv140 = sitofp i32 %110 to double
  %div141 = fdiv double %108, %conv140
  %add142 = fadd double %div138, %div141
  store double %add142, double* @AWp, align 8
  br label %if.end.153

if.else.143:                                      ; preds = %land.lhs.true.127, %if.end.123
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 127
  %112 = load i32, i32* %NumberofCodedPFrame144, align 4
  %cmp145 = icmp sgt i32 %112, 1
  br i1 %cmp145, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %if.else.143
  %113 = load double, double* @Wp, align 8
  %div148 = fdiv double %113, 8.000000e+00
  %114 = load double, double* @AWp, align 8
  %mul149 = fmul double 7.000000e+00, %114
  %div150 = fdiv double %mul149, 8.000000e+00
  %add151 = fadd double %div148, %div150
  store double %add151, double* @AWp, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.147, %if.else.143
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.131
  %115 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %115, i32 0, i32 34
  %116 = load i32, i32* %successive_Bframe, align 4
  %cmp154 = icmp sgt i32 %116, 0
  br i1 %cmp154, label %if.then.156, label %if.end.171

if.then.156:                                      ; preds = %if.end.153
  %117 = load double, double* @AWp, align 8
  %118 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe157 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %118, i32 0, i32 34
  %119 = load i32, i32* %successive_Bframe157, align 4
  %add158 = add nsw i32 %119, 1
  %conv159 = sitofp i32 %add158 to double
  %mul160 = fmul double %117, %conv159
  %120 = load double, double* @bit_rate, align 8
  %mul161 = fmul double %mul160, %120
  %121 = load double, double* @frame_rate, align 8
  %122 = load double, double* @AWp, align 8
  %123 = load double, double* @AWb, align 8
  %124 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe162 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %124, i32 0, i32 34
  %125 = load i32, i32* %successive_Bframe162, align 4
  %conv163 = sitofp i32 %125 to double
  %mul164 = fmul double %123, %conv163
  %add165 = fadd double %122, %mul164
  %mul166 = fmul double %121, %add165
  %div167 = fdiv double %mul161, %mul166
  %126 = load double, double* @bit_rate, align 8
  %127 = load double, double* @frame_rate, align 8
  %div168 = fdiv double %126, %127
  %sub169 = fsub double %div167, %div168
  %128 = load double, double* @TargetBufferLevel, align 8
  %add170 = fadd double %128, %sub169
  store double %add170, double* @TargetBufferLevel, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.156, %if.end.153
  br label %sw.epilog

sw.bb.172:                                        ; preds = %if.then.13
  %129 = load double, double* @PreviousBit_Rate, align 8
  %130 = load double, double* @bit_rate, align 8
  %cmp173 = fcmp une double %129, %130
  br i1 %cmp173, label %if.then.175, label %if.end.185

if.then.175:                                      ; preds = %sw.bb.172
  %131 = load double, double* @bit_rate, align 8
  %132 = load double, double* @PreviousBit_Rate, align 8
  %sub176 = fsub double %131, %132
  %133 = load i32, i32* @Np, align 4
  %134 = load i32, i32* @Nb, align 4
  %add177 = add nsw i32 %133, %134
  %conv178 = sitofp i32 %add177 to double
  %mul179 = fmul double %sub176, %conv178
  %135 = load double, double* @frame_rate, align 8
  %div180 = fdiv double %mul179, %135
  %add181 = fadd double %div180, 5.000000e-01
  %call182 = call double @floor(double %add181) #5
  %conv183 = fptosi double %call182 to i32
  %136 = load i32, i32* @R, align 4
  %add184 = add nsw i32 %136, %conv183
  store i32 %add184, i32* @R, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.175, %sw.bb.172
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 127
  %138 = load i32, i32* %NumberofCodedPFrame186, align 4
  %cmp187 = icmp eq i32 %138, 1
  br i1 %cmp187, label %land.lhs.true.189, label %if.else.193

land.lhs.true.189:                                ; preds = %if.end.185
  %139 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %139, i32 0, i32 126
  %140 = load i32, i32* %NumberofCodedBFrame, align 4
  %cmp190 = icmp eq i32 %140, 1
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %land.lhs.true.189
  %141 = load double, double* @Wp, align 8
  store double %141, double* @AWp, align 8
  %142 = load double, double* @Wb, align 8
  store double %142, double* @AWb, align 8
  br label %if.end.220

if.else.193:                                      ; preds = %land.lhs.true.189, %if.end.185
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 126
  %144 = load i32, i32* %NumberofCodedBFrame194, align 4
  %cmp195 = icmp sgt i32 %144, 1
  br i1 %cmp195, label %if.then.197, label %if.end.219

if.then.197:                                      ; preds = %if.else.193
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame198 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 126
  %146 = load i32, i32* %NumberofCodedBFrame198, align 4
  %cmp199 = icmp slt i32 %146, 8
  br i1 %cmp199, label %if.then.201, label %if.else.213

if.then.201:                                      ; preds = %if.then.197
  %147 = load double, double* @Wb, align 8
  %148 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame202 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %148, i32 0, i32 126
  %149 = load i32, i32* %NumberofCodedBFrame202, align 4
  %sub203 = sub nsw i32 %149, 1
  %conv204 = sitofp i32 %sub203 to double
  %mul205 = fmul double %147, %conv204
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 126
  %151 = load i32, i32* %NumberofCodedBFrame206, align 4
  %conv207 = sitofp i32 %151 to double
  %div208 = fdiv double %mul205, %conv207
  %152 = load double, double* @AWb, align 8
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame209 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 126
  %154 = load i32, i32* %NumberofCodedBFrame209, align 4
  %conv210 = sitofp i32 %154 to double
  %div211 = fdiv double %152, %conv210
  %add212 = fadd double %div208, %div211
  store double %add212, double* @AWb, align 8
  br label %if.end.218

if.else.213:                                      ; preds = %if.then.197
  %155 = load double, double* @Wb, align 8
  %div214 = fdiv double %155, 8.000000e+00
  %156 = load double, double* @AWb, align 8
  %mul215 = fmul double 7.000000e+00, %156
  %div216 = fdiv double %mul215, 8.000000e+00
  %add217 = fadd double %div214, %div216
  store double %add217, double* @AWb, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.213, %if.then.201
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.else.193
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.192
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.13, %if.end.220, %if.end.171
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 6
  %158 = load i32, i32* %type221, align 4
  %cmp222 = icmp eq i32 %158, 0
  br i1 %cmp222, label %if.then.224, label %if.end.382

if.then.224:                                      ; preds = %sw.epilog
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 139
  %160 = load i32, i32* %BasicUnit225, align 4
  %161 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %161, i32 0, i32 136
  %162 = load i32, i32* %Frame_Total_Number_MB226, align 4
  %cmp227 = icmp eq i32 %160, %162
  br i1 %cmp227, label %if.then.229, label %if.else.264

if.then.229:                                      ; preds = %if.then.224
  %163 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame230 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %163, i32 0, i32 127
  %164 = load i32, i32* %NumberofCodedPFrame230, align 4
  %cmp231 = icmp sgt i32 %164, 0
  br i1 %cmp231, label %if.then.233, label %if.end.263

if.then.233:                                      ; preds = %if.then.229
  %165 = load double, double* @Wp, align 8
  %166 = load i32, i32* @R, align 4
  %conv234 = sitofp i32 %166 to double
  %mul235 = fmul double %165, %conv234
  %167 = load i32, i32* @Np, align 4
  %conv236 = sitofp i32 %167 to double
  %168 = load double, double* @Wp, align 8
  %mul237 = fmul double %conv236, %168
  %169 = load i32, i32* @Nb, align 4
  %conv238 = sitofp i32 %169 to double
  %170 = load double, double* @Wb, align 8
  %mul239 = fmul double %conv238, %170
  %add240 = fadd double %mul237, %mul239
  %div241 = fdiv double %mul235, %add240
  %add242 = fadd double %div241, 5.000000e-01
  %call243 = call double @floor(double %add242) #5
  %conv244 = fptosi double %call243 to i64
  store i64 %conv244, i64* @T, align 8
  %171 = load double, double* @bit_rate, align 8
  %172 = load double, double* @frame_rate, align 8
  %div245 = fdiv double %171, %172
  %173 = load double, double* @GAMMAP, align 8
  %174 = load double, double* @CurrentBufferFullness, align 8
  %175 = load double, double* @TargetBufferLevel, align 8
  %sub246 = fsub double %174, %175
  %mul247 = fmul double %173, %sub246
  %sub248 = fsub double %div245, %mul247
  %add249 = fadd double %sub248, 5.000000e-01
  %call250 = call double @floor(double %add249) #5
  %conv251 = fptosi double %call250 to i64
  store i64 %conv251, i64* @T1, align 8
  %176 = load i64, i64* @T1, align 8
  %cmp252 = icmp slt i64 0, %176
  br i1 %cmp252, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.233
  %177 = load i64, i64* @T1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.233
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %177, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* @T1, align 8
  %178 = load double, double* @BETAP, align 8
  %179 = load i64, i64* @T, align 8
  %conv254 = sitofp i64 %179 to double
  %mul255 = fmul double %178, %conv254
  %180 = load double, double* @BETAP, align 8
  %sub256 = fsub double 1.000000e+00, %180
  %181 = load i64, i64* @T1, align 8
  %conv257 = sitofp i64 %181 to double
  %mul258 = fmul double %sub256, %conv257
  %add259 = fadd double %mul255, %mul258
  %add260 = fadd double %add259, 5.000000e-01
  %call261 = call double @floor(double %add260) #5
  %conv262 = fptosi double %call261 to i64
  store i64 %conv262, i64* @T, align 8
  br label %if.end.263

if.end.263:                                       ; preds = %cond.end, %if.then.229
  br label %if.end.349

if.else.264:                                      ; preds = %if.then.224
  %182 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP265 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %182, i32 0, i32 128
  %183 = load i32, i32* %NumberofGOP265, align 4
  %cmp266 = icmp eq i32 %183, 1
  br i1 %cmp266, label %land.lhs.true.268, label %if.else.309

land.lhs.true.268:                                ; preds = %if.else.264
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 127
  %185 = load i32, i32* %NumberofCodedPFrame269, align 4
  %cmp270 = icmp sgt i32 %185, 0
  br i1 %cmp270, label %if.then.272, label %if.else.309

if.then.272:                                      ; preds = %land.lhs.true.268
  %186 = load double, double* @Wp, align 8
  %187 = load i32, i32* @R, align 4
  %conv273 = sitofp i32 %187 to double
  %mul274 = fmul double %186, %conv273
  %188 = load i32, i32* @Np, align 4
  %conv275 = sitofp i32 %188 to double
  %189 = load double, double* @Wp, align 8
  %mul276 = fmul double %conv275, %189
  %190 = load i32, i32* @Nb, align 4
  %conv277 = sitofp i32 %190 to double
  %191 = load double, double* @Wb, align 8
  %mul278 = fmul double %conv277, %191
  %add279 = fadd double %mul276, %mul278
  %div280 = fdiv double %mul274, %add279
  %add281 = fadd double %div280, 5.000000e-01
  %call282 = call double @floor(double %add281) #5
  %conv283 = fptosi double %call282 to i32
  %conv284 = sext i32 %conv283 to i64
  store i64 %conv284, i64* @T, align 8
  %192 = load double, double* @bit_rate, align 8
  %193 = load double, double* @frame_rate, align 8
  %div285 = fdiv double %192, %193
  %194 = load double, double* @GAMMAP, align 8
  %195 = load double, double* @CurrentBufferFullness, align 8
  %196 = load double, double* @TargetBufferLevel, align 8
  %sub286 = fsub double %195, %196
  %mul287 = fmul double %194, %sub286
  %sub288 = fsub double %div285, %mul287
  %add289 = fadd double %sub288, 5.000000e-01
  %call290 = call double @floor(double %add289) #5
  %conv291 = fptosi double %call290 to i32
  %conv292 = sext i32 %conv291 to i64
  store i64 %conv292, i64* @T1, align 8
  %197 = load i64, i64* @T1, align 8
  %cmp293 = icmp slt i64 0, %197
  br i1 %cmp293, label %cond.true.295, label %cond.false.296

cond.true.295:                                    ; preds = %if.then.272
  %198 = load i64, i64* @T1, align 8
  br label %cond.end.297

cond.false.296:                                   ; preds = %if.then.272
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.296, %cond.true.295
  %cond298 = phi i64 [ %198, %cond.true.295 ], [ 0, %cond.false.296 ]
  store i64 %cond298, i64* @T1, align 8
  %199 = load double, double* @BETAP, align 8
  %200 = load i64, i64* @T, align 8
  %conv299 = sitofp i64 %200 to double
  %mul300 = fmul double %199, %conv299
  %201 = load double, double* @BETAP, align 8
  %sub301 = fsub double 1.000000e+00, %201
  %202 = load i64, i64* @T1, align 8
  %conv302 = sitofp i64 %202 to double
  %mul303 = fmul double %sub301, %conv302
  %add304 = fadd double %mul300, %mul303
  %add305 = fadd double %add304, 5.000000e-01
  %call306 = call double @floor(double %add305) #5
  %conv307 = fptosi double %call306 to i32
  %conv308 = sext i32 %conv307 to i64
  store i64 %conv308, i64* @T, align 8
  br label %if.end.348

if.else.309:                                      ; preds = %land.lhs.true.268, %if.else.264
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP310 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 128
  %204 = load i32, i32* %NumberofGOP310, align 4
  %cmp311 = icmp sgt i32 %204, 1
  br i1 %cmp311, label %if.then.313, label %if.end.347

if.then.313:                                      ; preds = %if.else.309
  %205 = load double, double* @Wp, align 8
  %206 = load i32, i32* @R, align 4
  %conv314 = sitofp i32 %206 to double
  %mul315 = fmul double %205, %conv314
  %207 = load i32, i32* @Np, align 4
  %conv316 = sitofp i32 %207 to double
  %208 = load double, double* @Wp, align 8
  %mul317 = fmul double %conv316, %208
  %209 = load i32, i32* @Nb, align 4
  %conv318 = sitofp i32 %209 to double
  %210 = load double, double* @Wb, align 8
  %mul319 = fmul double %conv318, %210
  %add320 = fadd double %mul317, %mul319
  %div321 = fdiv double %mul315, %add320
  %add322 = fadd double %div321, 5.000000e-01
  %call323 = call double @floor(double %add322) #5
  %conv324 = fptosi double %call323 to i64
  store i64 %conv324, i64* @T, align 8
  %211 = load double, double* @bit_rate, align 8
  %212 = load double, double* @frame_rate, align 8
  %div325 = fdiv double %211, %212
  %213 = load double, double* @GAMMAP, align 8
  %214 = load double, double* @CurrentBufferFullness, align 8
  %215 = load double, double* @TargetBufferLevel, align 8
  %sub326 = fsub double %214, %215
  %mul327 = fmul double %213, %sub326
  %sub328 = fsub double %div325, %mul327
  %add329 = fadd double %sub328, 5.000000e-01
  %call330 = call double @floor(double %add329) #5
  %conv331 = fptosi double %call330 to i64
  store i64 %conv331, i64* @T1, align 8
  %216 = load i64, i64* @T1, align 8
  %cmp332 = icmp slt i64 0, %216
  br i1 %cmp332, label %cond.true.334, label %cond.false.335

cond.true.334:                                    ; preds = %if.then.313
  %217 = load i64, i64* @T1, align 8
  br label %cond.end.336

cond.false.335:                                   ; preds = %if.then.313
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.335, %cond.true.334
  %cond337 = phi i64 [ %217, %cond.true.334 ], [ 0, %cond.false.335 ]
  store i64 %cond337, i64* @T1, align 8
  %218 = load double, double* @BETAP, align 8
  %219 = load i64, i64* @T, align 8
  %conv338 = sitofp i64 %219 to double
  %mul339 = fmul double %218, %conv338
  %220 = load double, double* @BETAP, align 8
  %sub340 = fsub double 1.000000e+00, %220
  %221 = load i64, i64* @T1, align 8
  %conv341 = sitofp i64 %221 to double
  %mul342 = fmul double %sub340, %conv341
  %add343 = fadd double %mul339, %mul342
  %add344 = fadd double %add343, 5.000000e-01
  %call345 = call double @floor(double %add344) #5
  %conv346 = fptosi double %call345 to i64
  store i64 %conv346, i64* @T, align 8
  br label %if.end.347

if.end.347:                                       ; preds = %cond.end.336, %if.else.309
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %cond.end.297
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.end.263
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe350 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 34
  %223 = load i32, i32* %successive_Bframe350, align 4
  %conv351 = sitofp i32 %223 to double
  %mul352 = fmul double 0.000000e+00, %conv351
  %sub353 = fsub double 1.000000e+00, %mul352
  %224 = load i64, i64* @T, align 8
  %conv354 = sitofp i64 %224 to double
  %mul355 = fmul double %sub353, %conv354
  %conv356 = fptosi double %mul355 to i64
  store i64 %conv356, i64* @T, align 8
  %225 = load i64, i64* @T, align 8
  %226 = load i64, i64* @LowerBound, align 8
  %cmp357 = icmp slt i64 %225, %226
  br i1 %cmp357, label %cond.true.359, label %cond.false.360

cond.true.359:                                    ; preds = %if.end.349
  %227 = load i64, i64* @LowerBound, align 8
  br label %cond.end.361

cond.false.360:                                   ; preds = %if.end.349
  %228 = load i64, i64* @T, align 8
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.360, %cond.true.359
  %cond362 = phi i64 [ %227, %cond.true.359 ], [ %228, %cond.false.360 ]
  store i64 %cond362, i64* @T, align 8
  %229 = load i64, i64* @T, align 8
  %230 = load i64, i64* @UpperBound2, align 8
  %cmp363 = icmp slt i64 %229, %230
  br i1 %cmp363, label %cond.true.365, label %cond.false.366

cond.true.365:                                    ; preds = %cond.end.361
  %231 = load i64, i64* @T, align 8
  br label %cond.end.367

cond.false.366:                                   ; preds = %cond.end.361
  %232 = load i64, i64* @UpperBound2, align 8
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.366, %cond.true.365
  %cond368 = phi i64 [ %231, %cond.true.365 ], [ %232, %cond.false.366 ]
  store i64 %cond368, i64* @T, align 8
  %233 = load i32, i32* %topfield.addr, align 4
  %tobool369 = icmp ne i32 %233, 0
  br i1 %tobool369, label %if.then.379, label %lor.lhs.false.370

lor.lhs.false.370:                                ; preds = %cond.end.367
  %234 = load i32, i32* %fieldpic.addr, align 4
  %tobool371 = icmp ne i32 %234, 0
  br i1 %tobool371, label %land.lhs.true.372, label %if.end.381

land.lhs.true.372:                                ; preds = %lor.lhs.false.370
  %235 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace373 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %235, i32 0, i32 91
  %236 = load i32, i32* %PicInterlace373, align 4
  %cmp374 = icmp eq i32 %236, 2
  br i1 %cmp374, label %if.then.379, label %lor.lhs.false.376

lor.lhs.false.376:                                ; preds = %land.lhs.true.372
  %237 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace377 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %237, i32 0, i32 92
  %238 = load i32, i32* %MbInterlace377, align 4
  %tobool378 = icmp ne i32 %238, 0
  br i1 %tobool378, label %if.then.379, label %if.end.381

if.then.379:                                      ; preds = %lor.lhs.false.376, %land.lhs.true.372, %cond.end.367
  %239 = load i64, i64* @T, align 8
  %conv380 = trunc i64 %239 to i32
  store i32 %conv380, i32* @T_field, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.379, %lor.lhs.false.376, %lor.lhs.false.370
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %sw.epilog
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %land.lhs.true, %lor.lhs.false
  %240 = load i32, i32* %fieldpic.addr, align 4
  %tobool384 = icmp ne i32 %240, 0
  br i1 %tobool384, label %if.then.387, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %if.end.383
  %241 = load i32, i32* %topfield.addr, align 4
  %tobool386 = icmp ne i32 %241, 0
  br i1 %tobool386, label %if.then.387, label %if.end.401

if.then.387:                                      ; preds = %lor.lhs.false.385, %if.end.383
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 119
  store i32 0, i32* %NumberofHeaderBits, align 4
  %243 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofTextureBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %243, i32 0, i32 120
  store i32 0, i32* %NumberofTextureBits, align 4
  %244 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit388 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %244, i32 0, i32 139
  %245 = load i32, i32* %BasicUnit388, align 4
  %246 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB389 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %246, i32 0, i32 136
  %247 = load i32, i32* %Frame_Total_Number_MB389, align 4
  %cmp390 = icmp slt i32 %245, %247
  br i1 %cmp390, label %if.then.392, label %if.end.400

if.then.392:                                      ; preds = %if.then.387
  store i32 0, i32* @TotalFrameQP, align 4
  %248 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %248, i32 0, i32 121
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 122
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4
  %250 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalMADBasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %250, i32 0, i32 123
  store double 0.000000e+00, double* %TotalMADBasicUnit, align 8
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl393 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 134
  %252 = load i32, i32* %FieldControl393, align 4
  %cmp394 = icmp eq i32 %252, 0
  br i1 %cmp394, label %if.then.396, label %if.else.397

if.then.396:                                      ; preds = %if.then.392
  %253 = load i32, i32* @TotalNumberofBasicUnit, align 4
  store i32 %253, i32* @NumberofBasicUnit, align 4
  br label %if.end.399

if.else.397:                                      ; preds = %if.then.392
  %254 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %div398 = sdiv i32 %254, 2
  store i32 %div398, i32* @NumberofBasicUnit, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.else.397, %if.then.396
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.399, %if.then.387
  br label %if.end.401

if.end.401:                                       ; preds = %if.end.400, %lor.lhs.false.385
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type402 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 6
  %256 = load i32, i32* %type402, align 4
  %cmp403 = icmp eq i32 %256, 0
  br i1 %cmp403, label %land.lhs.true.405, label %if.end.428

land.lhs.true.405:                                ; preds = %if.end.401
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit406 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 139
  %258 = load i32, i32* %BasicUnit406, align 4
  %259 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB407 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %259, i32 0, i32 136
  %260 = load i32, i32* %Frame_Total_Number_MB407, align 4
  %cmp408 = icmp slt i32 %258, %260
  br i1 %cmp408, label %land.lhs.true.410, label %if.end.428

land.lhs.true.410:                                ; preds = %land.lhs.true.405
  %261 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl411 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %261, i32 0, i32 134
  %262 = load i32, i32* %FieldControl411, align 4
  %cmp412 = icmp eq i32 %262, 1
  br i1 %cmp412, label %if.then.414, label %if.end.428

if.then.414:                                      ; preds = %land.lhs.true.410
  %263 = load i32, i32* %topfield.addr, align 4
  %tobool415 = icmp ne i32 %263, 0
  br i1 %tobool415, label %if.then.416, label %if.else.420

if.then.416:                                      ; preds = %if.then.414
  store i32 0, i32* @bits_topfield, align 4
  %264 = load i32, i32* @T_field, align 4
  %conv417 = sitofp i32 %264 to double
  %mul418 = fmul double %conv417, 6.000000e-01
  %conv419 = fptosi double %mul418 to i64
  store i64 %conv419, i64* @T, align 8
  br label %if.end.427

if.else.420:                                      ; preds = %if.then.414
  %265 = load i32, i32* @T_field, align 4
  %266 = load i32, i32* @bits_topfield, align 4
  %sub421 = sub nsw i32 %265, %266
  %conv422 = sext i32 %sub421 to i64
  store i64 %conv422, i64* @T, align 8
  %267 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitHeaderBits423 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %267, i32 0, i32 121
  store i32 0, i32* %NumberofBasicUnitHeaderBits423, align 4
  %268 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitTextureBits424 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %268, i32 0, i32 122
  store i32 0, i32* %NumberofBasicUnitTextureBits424, align 4
  %269 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalMADBasicUnit425 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %269, i32 0, i32 123
  store double 0.000000e+00, double* %TotalMADBasicUnit425, align 8
  %270 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %div426 = sdiv i32 %270, 2
  store i32 %div426, i32* @NumberofBasicUnit, align 4
  br label %if.end.427

if.end.427:                                       ; preds = %if.else.420, %if.then.416
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %land.lhs.true.410, %land.lhs.true.405, %if.end.401
  ret void
}

; Function Attrs: nounwind uwtable
define double @calc_MAD() #0 {
entry:
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %s = alloca i32, align 4
  %MAD = alloca double, align 8
  store i32 0, i32* %s, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %l, align 4
  %cmp2 = icmp slt i32 %1, 16
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %l, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @diffy, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx5, align 4
  %call = call i32 @abs(i32 %4) #5
  %5 = load i32, i32* %s, align 4
  %add = add nsw i32 %5, %call
  store i32 %add, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %l, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %7 = load i32, i32* %k, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %k, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  %conv = sitofp i32 %8 to double
  %mul = fmul double %conv, 1.000000e+00
  %div = fdiv double %mul, 2.560000e+02
  store double %div, double* %MAD, align 8
  %9 = load double, double* %MAD, align 8
  ret double %9
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind uwtable
define void @rc_update_pict(i32 %nbits) #0 {
entry:
  %nbits.addr = alloca i32, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  %1 = load i32, i32* @R, align 4
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* @R, align 4
  %2 = load i32, i32* %nbits.addr, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* @bit_rate, align 8
  %4 = load double, double* @frame_rate, align 8
  %div = fdiv double %3, %4
  %sub1 = fsub double %conv, %div
  %5 = load double, double* @CurrentBufferFullness, align 8
  %add = fadd double %5, %sub1
  store double %add, double* @CurrentBufferFullness, align 8
  %6 = load double, double* @bit_rate, align 8
  %7 = load double, double* @frame_rate, align 8
  %div2 = fdiv double %6, %7
  %8 = load i32, i32* %nbits.addr, align 4
  %conv3 = sitofp i32 %8 to double
  %sub4 = fsub double %div2, %conv3
  %conv5 = fptosi double %sub4 to i64
  %9 = load i64, i64* @LowerBound, align 8
  %add6 = add nsw i64 %9, %conv5
  store i64 %add6, i64* @LowerBound, align 8
  %10 = load double, double* @bit_rate, align 8
  %11 = load double, double* @frame_rate, align 8
  %div7 = fdiv double %10, %11
  %12 = load i32, i32* %nbits.addr, align 4
  %conv8 = sitofp i32 %12 to double
  %sub9 = fsub double %div7, %conv8
  %conv10 = fptosi double %sub9 to i64
  %13 = load i64, i64* @UpperBound1, align 8
  %add11 = add nsw i64 %13, %conv10
  store i64 %add11, i64* @UpperBound1, align 8
  %14 = load i64, i64* @UpperBound1, align 8
  %conv12 = sitofp i64 %14 to double
  %mul = fmul double 9.000000e-01, %conv12
  %conv13 = fptosi double %mul to i64
  store i64 %conv13, i64* @UpperBound2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @rc_update_pict_frame(i32 %nbits) #0 {
entry:
  %nbits.addr = alloca i32, align 4
  %Avem_Qc = alloca i32, align 4
  %X = alloca i32, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  store i32 0, i32* %X, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 139
  %1 = load i32, i32* %BasicUnit, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 136
  %3 = load i32, i32* %Frame_Total_Number_MB, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %nbits.addr, align 4
  %5 = load i32, i32* @m_Qc, align 4
  %mul = mul nsw i32 %4, %5
  %conv = sitofp i32 %mul to double
  %add = fadd double %conv, 5.000000e-01
  %call = call double @floor(double %add) #5
  %conv1 = fptosi double %call to i32
  store i32 %conv1, i32* %X, align 4
  br label %if.end.30

if.else:                                          ; preds = %entry
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 6
  %7 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.4, label %if.else.18

if.then.4:                                        ; preds = %if.else
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 137
  %9 = load i32, i32* %IFLAG, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 134
  %11 = load i32, i32* %FieldControl, align 4
  %cmp7 = icmp eq i32 %11, 1
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 134
  %13 = load i32, i32* %FieldControl9, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i32, i32* @TotalFrameQP, align 4
  %15 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %div = sdiv i32 %14, %15
  store i32 %div, i32* %Avem_Qc, align 4
  %16 = load i32, i32* %nbits.addr, align 4
  %17 = load i32, i32* %Avem_Qc, align 4
  %mul13 = mul nsw i32 %16, %17
  %conv14 = sitofp i32 %mul13 to double
  %add15 = fadd double %conv14, 5.000000e-01
  %call16 = call double @floor(double %add15) #5
  %conv17 = fptosi double %call16 to i32
  store i32 %conv17, i32* %X, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false
  br label %if.end.29

if.else.18:                                       ; preds = %if.else
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 6
  %19 = load i32, i32* %type19, align 4
  %cmp20 = icmp eq i32 %19, 1
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.else.18
  %20 = load i32, i32* %nbits.addr, align 4
  %21 = load i32, i32* @m_Qc, align 4
  %mul23 = mul nsw i32 %20, %21
  %conv24 = sitofp i32 %mul23 to double
  %add25 = fadd double %conv24, 5.000000e-01
  %call26 = call double @floor(double %add25) #5
  %conv27 = fptosi double %call26 to i32
  store i32 %conv27, i32* %X, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.else.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 6
  %23 = load i32, i32* %type31, align 4
  switch i32 %23, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.end.30
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 137
  %25 = load i32, i32* %IFLAG32, align 4
  %cmp33 = icmp eq i32 %25, 0
  br i1 %cmp33, label %land.lhs.true.35, label %lor.lhs.false.39

land.lhs.true.35:                                 ; preds = %sw.bb
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 134
  %27 = load i32, i32* %FieldControl36, align 4
  %cmp37 = icmp eq i32 %27, 1
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %land.lhs.true.35, %sw.bb
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 134
  %29 = load i32, i32* %FieldControl40, align 4
  %cmp41 = icmp eq i32 %29, 0
  br i1 %cmp41, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %lor.lhs.false.39, %land.lhs.true.35
  %30 = load i32, i32* %X, align 4
  store i32 %30, i32* @Xp, align 4
  %31 = load i32, i32* @Np, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* @Np, align 4
  %32 = load i32, i32* @Xp, align 4
  %conv44 = sitofp i32 %32 to double
  store double %conv44, double* @Wp, align 8
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 119
  %34 = load i32, i32* %NumberofHeaderBits, align 4
  store i32 %34, i32* @Pm_Hp, align 4
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 127
  %36 = load i32, i32* %NumberofCodedPFrame, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %NumberofCodedPFrame, align 4
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 130
  %38 = load i32, i32* %NumberofPPicture, align 4
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, i32* %NumberofPPicture, align 4
  br label %if.end.57

if.else.46:                                       ; preds = %lor.lhs.false.39
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 137
  %40 = load i32, i32* %IFLAG47, align 4
  %cmp48 = icmp ne i32 %40, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.56

land.lhs.true.50:                                 ; preds = %if.else.46
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl51 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 134
  %42 = load i32, i32* %FieldControl51, align 4
  %cmp52 = icmp eq i32 %42, 1
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %land.lhs.true.50
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 137
  store i32 0, i32* %IFLAG55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %land.lhs.true.50, %if.else.46
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.43
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.30
  %44 = load i32, i32* %X, align 4
  store i32 %44, i32* @Xb, align 4
  %45 = load i32, i32* @Nb, align 4
  %dec59 = add nsw i32 %45, -1
  store i32 %dec59, i32* @Nb, align 4
  %46 = load i32, i32* @Xb, align 4
  %conv60 = sitofp i32 %46 to double
  %div61 = fdiv double %conv60, 1.363600e+00
  store double %div61, double* @Wb, align 8
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 126
  %48 = load i32, i32* %NumberofCodedBFrame, align 4
  %inc62 = add nsw i32 %48, 1
  store i32 %inc62, i32* %NumberofCodedBFrame, align 4
  %49 = load i32, i32* @NumberofBFrames, align 4
  %inc63 = add nsw i32 %49, 1
  store i32 %inc63, i32* @NumberofBFrames, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %sw.bb.58, %if.end.57
  ret void
}

; Function Attrs: nounwind uwtable
define void @setbitscount(i32 %nbits) #0 {
entry:
  %nbits.addr = alloca i32, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load i32, i32* %nbits.addr, align 4
  store i32 %0, i32* @bits_topfield, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @updateQuantizationParameter(i32 %topfield) #0 {
entry:
  %retval = alloca i32, align 4
  %topfield.addr = alloca i32, align 4
  %dtmp = alloca double, align 8
  %m_Bits = alloca i32, align 4
  %BFrameNumber = alloca i32, align 4
  %StepSize = alloca i32, align 4
  %PAverageQP = alloca i32, align 4
  %SumofBasicUnit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %topfield, i32* %topfield.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 139
  %1 = load i32, i32* %BasicUnit, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 136
  %3 = load i32, i32* %Frame_Total_Number_MB, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else.314

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %topfield.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 134
  %6 = load i32, i32* %FieldControl, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.else.296

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 6
  %8 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %8, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %9 = load i32, i32* @MyInitialQp, align 4
  store i32 %9, i32* @m_Qc, align 4
  %10 = load i32, i32* @m_Qc, align 4
  store i32 %10, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 6
  %12 = load i32, i32* %type5, align 4
  %cmp6 = icmp eq i32 %12, 1
  br i1 %cmp6, label %if.then.7, label %if.else.161

if.then.7:                                        ; preds = %if.else
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 34
  %14 = load i32, i32* %successive_Bframe, align 4
  %cmp8 = icmp eq i32 %14, 1
  br i1 %cmp8, label %if.then.9, label %if.else.34

if.then.9:                                        ; preds = %if.then.7
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 91
  %16 = load i32, i32* %PicInterlace, align 4
  %cmp10 = icmp eq i32 %16, 2
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.then.9
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 92
  %18 = load i32, i32* %MbInterlace, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.then.9
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 134
  %20 = load i32, i32* %FieldControl14, align 4
  %cmp15 = icmp eq i32 %20, 0
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.13
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 135
  %22 = load i32, i32* %FieldFrame, align 4
  %cmp17 = icmp eq i32 %22, 1
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.then.16
  %23 = load i32, i32* @PreviousQp2, align 4
  store i32 %23, i32* @PreviousQp1, align 4
  %24 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %24, i32* @PreviousQp2, align 4
  br label %if.end

if.else.19:                                       ; preds = %if.then.16
  %25 = load i32, i32* @PreviousQp2, align 4
  store i32 %25, i32* @PreviousQp1, align 4
  %26 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %26, i32* @PreviousQp2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %lor.lhs.false.11
  %27 = load i32, i32* @PreviousQp1, align 4
  %28 = load i32, i32* @PreviousQp2, align 4
  %cmp22 = icmp eq i32 %27, %28
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end.21
  %29 = load i32, i32* @PreviousQp1, align 4
  %add = add nsw i32 %29, 2
  store i32 %add, i32* @m_Qc, align 4
  br label %if.end.27

if.else.24:                                       ; preds = %if.end.21
  %30 = load i32, i32* @PreviousQp1, align 4
  %31 = load i32, i32* @PreviousQp2, align 4
  %add25 = add nsw i32 %30, %31
  %div = sdiv i32 %add25, 2
  %add26 = add nsw i32 %div, 1
  store i32 %add26, i32* @m_Qc, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %32 = load i32, i32* @m_Qc, align 4
  %33 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp28 = icmp slt i32 %32, %33
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.27
  %34 = load i32, i32* @m_Qc, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.27
  %35 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %35, %cond.false ]
  store i32 %cond, i32* @m_Qc, align 4
  %36 = load i32, i32* @RC_MIN_QUANT, align 4
  %37 = load i32, i32* @m_Qc, align 4
  %cmp29 = icmp slt i32 %36, %37
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end
  %38 = load i32, i32* @m_Qc, align 4
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end
  %39 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ %38, %cond.true.30 ], [ %39, %cond.false.31 ]
  store i32 %cond33, i32* @m_Qc, align 4
  br label %if.end.160

if.else.34:                                       ; preds = %if.then.7
  %40 = load i32, i32* @NumberofBFrames, align 4
  %add35 = add nsw i32 %40, 1
  %41 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %41, i32 0, i32 34
  %42 = load i32, i32* %successive_Bframe36, align 4
  %rem = srem i32 %add35, %42
  store i32 %rem, i32* %BFrameNumber, align 4
  %43 = load i32, i32* %BFrameNumber, align 4
  %cmp37 = icmp eq i32 %43, 0
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.else.34
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 34
  %45 = load i32, i32* %successive_Bframe39, align 4
  store i32 %45, i32* %BFrameNumber, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.else.34
  %46 = load i32, i32* %BFrameNumber, align 4
  %cmp41 = icmp eq i32 %46, 1
  br i1 %cmp41, label %if.then.42, label %if.end.59

if.then.42:                                       ; preds = %if.end.40
  %47 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace43 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %47, i32 0, i32 91
  %48 = load i32, i32* %PicInterlace43, align 4
  %cmp44 = icmp eq i32 %48, 2
  br i1 %cmp44, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.then.42
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 92
  %50 = load i32, i32* %MbInterlace46, align 4
  %tobool47 = icmp ne i32 %50, 0
  br i1 %tobool47, label %if.then.48, label %if.end.58

if.then.48:                                       ; preds = %lor.lhs.false.45, %if.then.42
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl49 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 134
  %52 = load i32, i32* %FieldControl49, align 4
  %cmp50 = icmp eq i32 %52, 0
  br i1 %cmp50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %if.then.48
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame52 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 135
  %54 = load i32, i32* %FieldFrame52, align 4
  %cmp53 = icmp eq i32 %54, 1
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.51
  %55 = load i32, i32* @PreviousQp2, align 4
  store i32 %55, i32* @PreviousQp1, align 4
  %56 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %56, i32* @PreviousQp2, align 4
  br label %if.end.56

if.else.55:                                       ; preds = %if.then.51
  %57 = load i32, i32* @PreviousQp2, align 4
  store i32 %57, i32* @PreviousQp1, align 4
  %58 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %58, i32* @PreviousQp2, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.48
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %lor.lhs.false.45
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.40
  %59 = load i32, i32* @PreviousQp2, align 4
  %60 = load i32, i32* @PreviousQp1, align 4
  %sub = sub nsw i32 %59, %60
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe60 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 34
  %62 = load i32, i32* %successive_Bframe60, align 4
  %mul = mul nsw i32 -2, %62
  %sub61 = sub nsw i32 %mul, 3
  %cmp62 = icmp sle i32 %sub, %sub61
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.59
  store i32 -3, i32* %StepSize, align 4
  br label %if.end.96

if.else.64:                                       ; preds = %if.end.59
  %63 = load i32, i32* @PreviousQp2, align 4
  %64 = load i32, i32* @PreviousQp1, align 4
  %sub65 = sub nsw i32 %63, %64
  %65 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe66 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %65, i32 0, i32 34
  %66 = load i32, i32* %successive_Bframe66, align 4
  %mul67 = mul nsw i32 -2, %66
  %sub68 = sub nsw i32 %mul67, 2
  %cmp69 = icmp eq i32 %sub65, %sub68
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.64
  store i32 -2, i32* %StepSize, align 4
  br label %if.end.95

if.else.71:                                       ; preds = %if.else.64
  %67 = load i32, i32* @PreviousQp2, align 4
  %68 = load i32, i32* @PreviousQp1, align 4
  %sub72 = sub nsw i32 %67, %68
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe73 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 34
  %70 = load i32, i32* %successive_Bframe73, align 4
  %mul74 = mul nsw i32 -2, %70
  %sub75 = sub nsw i32 %mul74, 1
  %cmp76 = icmp eq i32 %sub72, %sub75
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.else.71
  store i32 -1, i32* %StepSize, align 4
  br label %if.end.94

if.else.78:                                       ; preds = %if.else.71
  %71 = load i32, i32* @PreviousQp2, align 4
  %72 = load i32, i32* @PreviousQp1, align 4
  %sub79 = sub nsw i32 %71, %72
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 34
  %74 = load i32, i32* %successive_Bframe80, align 4
  %mul81 = mul nsw i32 -2, %74
  %cmp82 = icmp eq i32 %sub79, %mul81
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.else.78
  store i32 0, i32* %StepSize, align 4
  br label %if.end.93

if.else.84:                                       ; preds = %if.else.78
  %75 = load i32, i32* @PreviousQp2, align 4
  %76 = load i32, i32* @PreviousQp1, align 4
  %sub85 = sub nsw i32 %75, %76
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe86 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i32 0, i32 34
  %78 = load i32, i32* %successive_Bframe86, align 4
  %mul87 = mul nsw i32 -2, %78
  %add88 = add nsw i32 %mul87, 1
  %cmp89 = icmp eq i32 %sub85, %add88
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %if.else.84
  store i32 1, i32* %StepSize, align 4
  br label %if.end.92

if.else.91:                                       ; preds = %if.else.84
  store i32 2, i32* %StepSize, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.83
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.77
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.70
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.63
  %79 = load i32, i32* @PreviousQp1, align 4
  %80 = load i32, i32* %StepSize, align 4
  %add97 = add nsw i32 %79, %80
  store i32 %add97, i32* @m_Qc, align 4
  %81 = load i32, i32* %BFrameNumber, align 4
  %sub98 = sub nsw i32 %81, 1
  %mul99 = mul nsw i32 2, %sub98
  %82 = load i32, i32* %BFrameNumber, align 4
  %sub100 = sub nsw i32 %82, 1
  %mul101 = mul nsw i32 -2, %sub100
  %83 = load i32, i32* %BFrameNumber, align 4
  %sub102 = sub nsw i32 %83, 1
  %84 = load i32, i32* @PreviousQp2, align 4
  %85 = load i32, i32* @PreviousQp1, align 4
  %sub103 = sub nsw i32 %84, %85
  %mul104 = mul nsw i32 %sub102, %sub103
  %86 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe105 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %86, i32 0, i32 34
  %87 = load i32, i32* %successive_Bframe105, align 4
  %sub106 = sub nsw i32 %87, 1
  %div107 = sdiv i32 %mul104, %sub106
  %cmp108 = icmp slt i32 %mul101, %div107
  br i1 %cmp108, label %cond.true.109, label %cond.false.116

cond.true.109:                                    ; preds = %if.end.96
  %88 = load i32, i32* %BFrameNumber, align 4
  %sub110 = sub nsw i32 %88, 1
  %89 = load i32, i32* @PreviousQp2, align 4
  %90 = load i32, i32* @PreviousQp1, align 4
  %sub111 = sub nsw i32 %89, %90
  %mul112 = mul nsw i32 %sub110, %sub111
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe113 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 34
  %92 = load i32, i32* %successive_Bframe113, align 4
  %sub114 = sub nsw i32 %92, 1
  %div115 = sdiv i32 %mul112, %sub114
  br label %cond.end.119

cond.false.116:                                   ; preds = %if.end.96
  %93 = load i32, i32* %BFrameNumber, align 4
  %sub117 = sub nsw i32 %93, 1
  %mul118 = mul nsw i32 -2, %sub117
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.116, %cond.true.109
  %cond120 = phi i32 [ %div115, %cond.true.109 ], [ %mul118, %cond.false.116 ]
  %cmp121 = icmp slt i32 %mul99, %cond120
  br i1 %cmp121, label %cond.true.122, label %cond.false.125

cond.true.122:                                    ; preds = %cond.end.119
  %94 = load i32, i32* %BFrameNumber, align 4
  %sub123 = sub nsw i32 %94, 1
  %mul124 = mul nsw i32 2, %sub123
  br label %cond.end.147

cond.false.125:                                   ; preds = %cond.end.119
  %95 = load i32, i32* %BFrameNumber, align 4
  %sub126 = sub nsw i32 %95, 1
  %mul127 = mul nsw i32 -2, %sub126
  %96 = load i32, i32* %BFrameNumber, align 4
  %sub128 = sub nsw i32 %96, 1
  %97 = load i32, i32* @PreviousQp2, align 4
  %98 = load i32, i32* @PreviousQp1, align 4
  %sub129 = sub nsw i32 %97, %98
  %mul130 = mul nsw i32 %sub128, %sub129
  %99 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe131 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %99, i32 0, i32 34
  %100 = load i32, i32* %successive_Bframe131, align 4
  %sub132 = sub nsw i32 %100, 1
  %div133 = sdiv i32 %mul130, %sub132
  %cmp134 = icmp slt i32 %mul127, %div133
  br i1 %cmp134, label %cond.true.135, label %cond.false.142

cond.true.135:                                    ; preds = %cond.false.125
  %101 = load i32, i32* %BFrameNumber, align 4
  %sub136 = sub nsw i32 %101, 1
  %102 = load i32, i32* @PreviousQp2, align 4
  %103 = load i32, i32* @PreviousQp1, align 4
  %sub137 = sub nsw i32 %102, %103
  %mul138 = mul nsw i32 %sub136, %sub137
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe139 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 34
  %105 = load i32, i32* %successive_Bframe139, align 4
  %sub140 = sub nsw i32 %105, 1
  %div141 = sdiv i32 %mul138, %sub140
  br label %cond.end.145

cond.false.142:                                   ; preds = %cond.false.125
  %106 = load i32, i32* %BFrameNumber, align 4
  %sub143 = sub nsw i32 %106, 1
  %mul144 = mul nsw i32 -2, %sub143
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.142, %cond.true.135
  %cond146 = phi i32 [ %div141, %cond.true.135 ], [ %mul144, %cond.false.142 ]
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end.145, %cond.true.122
  %cond148 = phi i32 [ %mul124, %cond.true.122 ], [ %cond146, %cond.end.145 ]
  %107 = load i32, i32* @m_Qc, align 4
  %add149 = add nsw i32 %107, %cond148
  store i32 %add149, i32* @m_Qc, align 4
  %108 = load i32, i32* @m_Qc, align 4
  %109 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp150 = icmp slt i32 %108, %109
  br i1 %cmp150, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %cond.end.147
  %110 = load i32, i32* @m_Qc, align 4
  br label %cond.end.153

cond.false.152:                                   ; preds = %cond.end.147
  %111 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.151
  %cond154 = phi i32 [ %110, %cond.true.151 ], [ %111, %cond.false.152 ]
  store i32 %cond154, i32* @m_Qc, align 4
  %112 = load i32, i32* @RC_MIN_QUANT, align 4
  %113 = load i32, i32* @m_Qc, align 4
  %cmp155 = icmp slt i32 %112, %113
  br i1 %cmp155, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %cond.end.153
  %114 = load i32, i32* @m_Qc, align 4
  br label %cond.end.158

cond.false.157:                                   ; preds = %cond.end.153
  %115 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.157, %cond.true.156
  %cond159 = phi i32 [ %114, %cond.true.156 ], [ %115, %cond.false.157 ]
  store i32 %cond159, i32* @m_Qc, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %cond.end.158, %cond.end.32
  %116 = load i32, i32* @m_Qc, align 4
  store i32 %116, i32* %retval
  br label %return

if.else.161:                                      ; preds = %if.else
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type162 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 6
  %118 = load i32, i32* %type162, align 4
  %cmp163 = icmp eq i32 %118, 0
  br i1 %cmp163, label %land.lhs.true, label %if.else.175

land.lhs.true:                                    ; preds = %if.else.161
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 130
  %120 = load i32, i32* %NumberofPPicture, align 4
  %cmp164 = icmp eq i32 %120, 0
  br i1 %cmp164, label %if.then.165, label %if.else.175

if.then.165:                                      ; preds = %land.lhs.true
  %121 = load i32, i32* @MyInitialQp, align 4
  store i32 %121, i32* @m_Qc, align 4
  %122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %122, i32 0, i32 134
  %123 = load i32, i32* %FieldControl166, align 4
  %cmp167 = icmp eq i32 %123, 0
  br i1 %cmp167, label %if.then.168, label %if.end.174

if.then.168:                                      ; preds = %if.then.165
  %124 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %124, i32 0, i32 25
  %125 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool169 = icmp ne i32 %125, 0
  br i1 %tobool169, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %if.then.168
  %126 = load i32, i32* @m_Qc, align 4
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 129
  %128 = load i32, i32* %TotalQpforPPicture, align 4
  %add171 = add nsw i32 %128, %126
  store i32 %add171, i32* %TotalQpforPPicture, align 4
  %129 = load i32, i32* @PreviousQp2, align 4
  store i32 %129, i32* @PreviousQp1, align 4
  %130 = load i32, i32* @m_Qc, align 4
  store i32 %130, i32* @PreviousQp2, align 4
  %131 = load i32, i32* @m_Qc, align 4
  store i32 %131, i32* @Pm_Qp, align 4
  br label %if.end.173

if.else.172:                                      ; preds = %if.then.168
  %132 = load i32, i32* @m_Qc, align 4
  store i32 %132, i32* @FrameQPBuffer, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.172, %if.then.170
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.165
  %133 = load i32, i32* @m_Qc, align 4
  store i32 %133, i32* %retval
  br label %return

if.else.175:                                      ; preds = %land.lhs.true, %if.else.161
  %134 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace176 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %134, i32 0, i32 91
  %135 = load i32, i32* %PicInterlace176, align 4
  %cmp177 = icmp eq i32 %135, 2
  br i1 %cmp177, label %land.lhs.true.181, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %if.else.175
  %136 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace179 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %136, i32 0, i32 92
  %137 = load i32, i32* %MbInterlace179, align 4
  %tobool180 = icmp ne i32 %137, 0
  br i1 %tobool180, label %land.lhs.true.181, label %if.end.194

land.lhs.true.181:                                ; preds = %lor.lhs.false.178, %if.else.175
  %138 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %138, i32 0, i32 134
  %139 = load i32, i32* %FieldControl182, align 4
  %cmp183 = icmp eq i32 %139, 0
  br i1 %cmp183, label %if.then.184, label %if.end.194

if.then.184:                                      ; preds = %land.lhs.true.181
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame185 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 135
  %141 = load i32, i32* %FieldFrame185, align 4
  %cmp186 = icmp eq i32 %141, 1
  br i1 %cmp186, label %if.then.187, label %if.else.190

if.then.187:                                      ; preds = %if.then.184
  %142 = load i32, i32* @FrameQPBuffer, align 4
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture188 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 129
  %144 = load i32, i32* %TotalQpforPPicture188, align 4
  %add189 = add nsw i32 %144, %142
  store i32 %add189, i32* %TotalQpforPPicture188, align 4
  %145 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %145, i32* @Pm_Qp, align 4
  br label %if.end.193

if.else.190:                                      ; preds = %if.then.184
  %146 = load i32, i32* @FieldQPBuffer, align 4
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture191 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 129
  %148 = load i32, i32* %TotalQpforPPicture191, align 4
  %add192 = add nsw i32 %148, %146
  store i32 %add192, i32* %TotalQpforPPicture191, align 4
  %149 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %149, i32* @Pm_Qp, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %if.then.187
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %land.lhs.true.181, %lor.lhs.false.178
  %150 = load double, double* @Pm_X1, align 8
  store double %150, double* @m_X1, align 8
  %151 = load double, double* @Pm_X2, align 8
  store double %151, double* @m_X2, align 8
  %152 = load i32, i32* @PPreHeader, align 4
  store i32 %152, i32* @m_Hp, align 4
  %153 = load i32, i32* @Pm_Qp, align 4
  store i32 %153, i32* @m_Qp, align 4
  %154 = load i32, i32* @PDuantQp, align 4
  store i32 %154, i32* @DuantQp, align 4
  %155 = load double, double* @PMADPictureC1, align 8
  store double %155, double* @MADPictureC1, align 8
  %156 = load double, double* @PMADPictureC2, align 8
  store double %156, double* @MADPictureC2, align 8
  %157 = load double, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i32 0, i64 0), align 8
  store double %157, double* @PreviousPictureMAD, align 8
  %158 = load double, double* @MADPictureC1, align 8
  %159 = load double, double* @PreviousPictureMAD, align 8
  %mul195 = fmul double %158, %159
  %160 = load double, double* @MADPictureC2, align 8
  %add196 = fadd double %mul195, %160
  store double %add196, double* @CurrentFrameMAD, align 8
  %161 = load i64, i64* @T, align 8
  %cmp197 = icmp slt i64 %161, 0
  br i1 %cmp197, label %if.then.198, label %if.else.205

if.then.198:                                      ; preds = %if.end.194
  %162 = load i32, i32* @m_Qp, align 4
  %163 = load i32, i32* @DuantQp, align 4
  %add199 = add nsw i32 %162, %163
  store i32 %add199, i32* @m_Qc, align 4
  %164 = load i32, i32* @m_Qc, align 4
  %165 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp200 = icmp slt i32 %164, %165
  br i1 %cmp200, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %if.then.198
  %166 = load i32, i32* @m_Qc, align 4
  br label %cond.end.203

cond.false.202:                                   ; preds = %if.then.198
  %167 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.202, %cond.true.201
  %cond204 = phi i32 [ %166, %cond.true.201 ], [ %167, %cond.false.202 ]
  store i32 %cond204, i32* @m_Qc, align 4
  br label %if.end.283

if.else.205:                                      ; preds = %if.end.194
  %168 = load i64, i64* @T, align 8
  %169 = load i32, i32* @m_Hp, align 4
  %conv = sext i32 %169 to i64
  %sub206 = sub nsw i64 %168, %conv
  %conv207 = trunc i64 %sub206 to i32
  store i32 %conv207, i32* %m_Bits, align 4
  %170 = load i32, i32* %m_Bits, align 4
  %171 = load double, double* @bit_rate, align 8
  %172 = load double, double* @MINVALUE, align 8
  %173 = load double, double* @frame_rate, align 8
  %mul208 = fmul double %172, %173
  %div209 = fdiv double %171, %mul208
  %conv210 = fptosi double %div209 to i32
  %cmp211 = icmp slt i32 %170, %conv210
  br i1 %cmp211, label %cond.true.213, label %cond.false.217

cond.true.213:                                    ; preds = %if.else.205
  %174 = load double, double* @bit_rate, align 8
  %175 = load double, double* @MINVALUE, align 8
  %176 = load double, double* @frame_rate, align 8
  %mul214 = fmul double %175, %176
  %div215 = fdiv double %174, %mul214
  %conv216 = fptosi double %div215 to i32
  br label %cond.end.218

cond.false.217:                                   ; preds = %if.else.205
  %177 = load i32, i32* %m_Bits, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.217, %cond.true.213
  %cond219 = phi i32 [ %conv216, %cond.true.213 ], [ %177, %cond.false.217 ]
  store i32 %cond219, i32* %m_Bits, align 4
  %178 = load double, double* @CurrentFrameMAD, align 8
  %179 = load double, double* @m_X1, align 8
  %mul220 = fmul double %178, %179
  %180 = load double, double* @CurrentFrameMAD, align 8
  %mul221 = fmul double %mul220, %180
  %181 = load double, double* @m_X1, align 8
  %mul222 = fmul double %mul221, %181
  %182 = load double, double* @m_X2, align 8
  %mul223 = fmul double 4.000000e+00, %182
  %183 = load double, double* @CurrentFrameMAD, align 8
  %mul224 = fmul double %mul223, %183
  %184 = load i32, i32* %m_Bits, align 4
  %conv225 = sitofp i32 %184 to double
  %mul226 = fmul double %mul224, %conv225
  %add227 = fadd double %mul222, %mul226
  store double %add227, double* %dtmp, align 8
  %185 = load double, double* @m_X2, align 8
  %cmp228 = fcmp oeq double %185, 0.000000e+00
  br i1 %cmp228, label %if.then.238, label %lor.lhs.false.230

lor.lhs.false.230:                                ; preds = %cond.end.218
  %186 = load double, double* %dtmp, align 8
  %cmp231 = fcmp olt double %186, 0.000000e+00
  br i1 %cmp231, label %if.then.238, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %lor.lhs.false.230
  %187 = load double, double* %dtmp, align 8
  %call = call double @sqrt(double %187) #4
  %188 = load double, double* @m_X1, align 8
  %189 = load double, double* @CurrentFrameMAD, align 8
  %mul234 = fmul double %188, %189
  %sub235 = fsub double %call, %mul234
  %cmp236 = fcmp ole double %sub235, 0.000000e+00
  br i1 %cmp236, label %if.then.238, label %if.else.244

if.then.238:                                      ; preds = %lor.lhs.false.233, %lor.lhs.false.230, %cond.end.218
  %190 = load double, double* @m_X1, align 8
  %191 = load double, double* @CurrentFrameMAD, align 8
  %mul239 = fmul double %190, %191
  %192 = load i32, i32* %m_Bits, align 4
  %conv240 = sitofp i32 %192 to double
  %div241 = fdiv double %mul239, %conv240
  %conv242 = fptrunc double %div241 to float
  %conv243 = fpext float %conv242 to double
  store double %conv243, double* @m_Qstep, align 8
  br label %if.end.253

if.else.244:                                      ; preds = %lor.lhs.false.233
  %193 = load double, double* @m_X2, align 8
  %mul245 = fmul double 2.000000e+00, %193
  %194 = load double, double* @CurrentFrameMAD, align 8
  %mul246 = fmul double %mul245, %194
  %195 = load double, double* %dtmp, align 8
  %call247 = call double @sqrt(double %195) #4
  %196 = load double, double* @m_X1, align 8
  %197 = load double, double* @CurrentFrameMAD, align 8
  %mul248 = fmul double %196, %197
  %sub249 = fsub double %call247, %mul248
  %div250 = fdiv double %mul246, %sub249
  %conv251 = fptrunc double %div250 to float
  %conv252 = fpext float %conv251 to double
  store double %conv252, double* @m_Qstep, align 8
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.244, %if.then.238
  %198 = load double, double* @m_Qstep, align 8
  %call254 = call i32 @Qstep2QP(double %198)
  store i32 %call254, i32* @m_Qc, align 4
  %199 = load i32, i32* @m_Qp, align 4
  %200 = load i32, i32* @DuantQp, align 4
  %add255 = add nsw i32 %199, %200
  %201 = load i32, i32* @m_Qc, align 4
  %cmp256 = icmp slt i32 %add255, %201
  br i1 %cmp256, label %cond.true.258, label %cond.false.260

cond.true.258:                                    ; preds = %if.end.253
  %202 = load i32, i32* @m_Qp, align 4
  %203 = load i32, i32* @DuantQp, align 4
  %add259 = add nsw i32 %202, %203
  br label %cond.end.261

cond.false.260:                                   ; preds = %if.end.253
  %204 = load i32, i32* @m_Qc, align 4
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.260, %cond.true.258
  %cond262 = phi i32 [ %add259, %cond.true.258 ], [ %204, %cond.false.260 ]
  store i32 %cond262, i32* @m_Qc, align 4
  %205 = load i32, i32* @m_Qc, align 4
  %206 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp263 = icmp slt i32 %205, %206
  br i1 %cmp263, label %cond.true.265, label %cond.false.266

cond.true.265:                                    ; preds = %cond.end.261
  %207 = load i32, i32* @m_Qc, align 4
  br label %cond.end.267

cond.false.266:                                   ; preds = %cond.end.261
  %208 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.266, %cond.true.265
  %cond268 = phi i32 [ %207, %cond.true.265 ], [ %208, %cond.false.266 ]
  store i32 %cond268, i32* @m_Qc, align 4
  %209 = load i32, i32* @m_Qp, align 4
  %210 = load i32, i32* @DuantQp, align 4
  %sub269 = sub nsw i32 %209, %210
  %211 = load i32, i32* @m_Qc, align 4
  %cmp270 = icmp slt i32 %sub269, %211
  br i1 %cmp270, label %cond.true.272, label %cond.false.273

cond.true.272:                                    ; preds = %cond.end.267
  %212 = load i32, i32* @m_Qc, align 4
  br label %cond.end.275

cond.false.273:                                   ; preds = %cond.end.267
  %213 = load i32, i32* @m_Qp, align 4
  %214 = load i32, i32* @DuantQp, align 4
  %sub274 = sub nsw i32 %213, %214
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.273, %cond.true.272
  %cond276 = phi i32 [ %212, %cond.true.272 ], [ %sub274, %cond.false.273 ]
  store i32 %cond276, i32* @m_Qc, align 4
  %215 = load i32, i32* @RC_MIN_QUANT, align 4
  %216 = load i32, i32* @m_Qc, align 4
  %cmp277 = icmp slt i32 %215, %216
  br i1 %cmp277, label %cond.true.279, label %cond.false.280

cond.true.279:                                    ; preds = %cond.end.275
  %217 = load i32, i32* @m_Qc, align 4
  br label %cond.end.281

cond.false.280:                                   ; preds = %cond.end.275
  %218 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.280, %cond.true.279
  %cond282 = phi i32 [ %217, %cond.true.279 ], [ %218, %cond.false.280 ]
  store i32 %cond282, i32* @m_Qc, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %cond.end.281, %cond.end.203
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl284 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 134
  %220 = load i32, i32* %FieldControl284, align 4
  %cmp285 = icmp eq i32 %220, 0
  br i1 %cmp285, label %if.then.287, label %if.end.295

if.then.287:                                      ; preds = %if.end.283
  %221 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag288 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %221, i32 0, i32 25
  %222 = load i32, i32* %frame_mbs_only_flag288, align 4
  %tobool289 = icmp ne i32 %222, 0
  br i1 %tobool289, label %if.then.290, label %if.else.293

if.then.290:                                      ; preds = %if.then.287
  %223 = load i32, i32* @m_Qc, align 4
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 129
  %225 = load i32, i32* %TotalQpforPPicture291, align 4
  %add292 = add nsw i32 %225, %223
  store i32 %add292, i32* %TotalQpforPPicture291, align 4
  %226 = load i32, i32* @PreviousQp2, align 4
  store i32 %226, i32* @PreviousQp1, align 4
  %227 = load i32, i32* @m_Qc, align 4
  store i32 %227, i32* @PreviousQp2, align 4
  %228 = load i32, i32* @m_Qc, align 4
  store i32 %228, i32* @Pm_Qp, align 4
  br label %if.end.294

if.else.293:                                      ; preds = %if.then.287
  %229 = load i32, i32* @m_Qc, align 4
  store i32 %229, i32* @FrameQPBuffer, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.293, %if.then.290
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end.283
  %230 = load i32, i32* @m_Qc, align 4
  store i32 %230, i32* %retval
  br label %return

if.else.296:                                      ; preds = %lor.lhs.false
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 6
  %232 = load i32, i32* %type297, align 4
  %cmp298 = icmp eq i32 %232, 0
  br i1 %cmp298, label %land.lhs.true.300, label %if.end.313

land.lhs.true.300:                                ; preds = %if.else.296
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 137
  %234 = load i32, i32* %IFLAG, align 4
  %cmp301 = icmp eq i32 %234, 0
  br i1 %cmp301, label %if.then.303, label %if.end.313

if.then.303:                                      ; preds = %land.lhs.true.300
  %235 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace304 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %235, i32 0, i32 91
  %236 = load i32, i32* %PicInterlace304, align 4
  %cmp305 = icmp eq i32 %236, 1
  br i1 %cmp305, label %if.then.307, label %if.else.311

if.then.307:                                      ; preds = %if.then.303
  %237 = load i32, i32* @m_Qc, align 4
  %238 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture308 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %238, i32 0, i32 129
  %239 = load i32, i32* %TotalQpforPPicture308, align 4
  %add309 = add nsw i32 %239, %237
  store i32 %add309, i32* %TotalQpforPPicture308, align 4
  %240 = load i32, i32* @PreviousQp2, align 4
  %add310 = add nsw i32 %240, 1
  store i32 %add310, i32* @PreviousQp1, align 4
  %241 = load i32, i32* @m_Qc, align 4
  store i32 %241, i32* @PreviousQp2, align 4
  %242 = load i32, i32* @m_Qc, align 4
  store i32 %242, i32* @Pm_Qp, align 4
  br label %if.end.312

if.else.311:                                      ; preds = %if.then.303
  %243 = load i32, i32* @m_Qc, align 4
  store i32 %243, i32* @FieldQPBuffer, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.else.311, %if.then.307
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %land.lhs.true.300, %if.else.296
  %244 = load i32, i32* @m_Qc, align 4
  store i32 %244, i32* %retval
  br label %return

if.else.314:                                      ; preds = %entry
  %245 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type315 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %245, i32 0, i32 6
  %246 = load i32, i32* %type315, align 4
  %cmp316 = icmp eq i32 %246, 2
  br i1 %cmp316, label %if.then.318, label %if.else.319

if.then.318:                                      ; preds = %if.else.314
  %247 = load i32, i32* @MyInitialQp, align 4
  store i32 %247, i32* @m_Qc, align 4
  %248 = load i32, i32* @m_Qc, align 4
  store i32 %248, i32* %retval
  br label %return

if.else.319:                                      ; preds = %if.else.314
  %249 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type320 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %249, i32 0, i32 6
  %250 = load i32, i32* %type320, align 4
  %cmp321 = icmp eq i32 %250, 0
  br i1 %cmp321, label %land.lhs.true.323, label %if.else.332

land.lhs.true.323:                                ; preds = %if.else.319
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG324 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 137
  %252 = load i32, i32* %IFLAG324, align 4
  %cmp325 = icmp eq i32 %252, 1
  br i1 %cmp325, label %land.lhs.true.327, label %if.else.332

land.lhs.true.327:                                ; preds = %land.lhs.true.323
  %253 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl328 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %253, i32 0, i32 134
  %254 = load i32, i32* %FieldControl328, align 4
  %cmp329 = icmp eq i32 %254, 1
  br i1 %cmp329, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %land.lhs.true.327
  %255 = load i32, i32* @MyInitialQp, align 4
  store i32 %255, i32* @m_Qc, align 4
  %256 = load i32, i32* @m_Qc, align 4
  store i32 %256, i32* %retval
  br label %return

if.else.332:                                      ; preds = %land.lhs.true.327, %land.lhs.true.323, %if.else.319
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type333 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 6
  %258 = load i32, i32* %type333, align 4
  %cmp334 = icmp eq i32 %258, 1
  br i1 %cmp334, label %if.then.336, label %if.else.533

if.then.336:                                      ; preds = %if.else.332
  %259 = load i32, i32* %topfield.addr, align 4
  %tobool337 = icmp ne i32 %259, 0
  br i1 %tobool337, label %if.then.342, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %if.then.336
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl339 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 134
  %261 = load i32, i32* %FieldControl339, align 4
  %cmp340 = icmp eq i32 %261, 0
  br i1 %cmp340, label %if.then.342, label %if.else.532

if.then.342:                                      ; preds = %lor.lhs.false.338, %if.then.336
  %262 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe343 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %262, i32 0, i32 34
  %263 = load i32, i32* %successive_Bframe343, align 4
  %cmp344 = icmp eq i32 %263, 1
  br i1 %cmp344, label %if.then.346, label %if.else.387

if.then.346:                                      ; preds = %if.then.342
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace347 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 91
  %265 = load i32, i32* %PicInterlace347, align 4
  %cmp348 = icmp eq i32 %265, 2
  br i1 %cmp348, label %if.then.353, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %if.then.346
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace351 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 92
  %267 = load i32, i32* %MbInterlace351, align 4
  %tobool352 = icmp ne i32 %267, 0
  br i1 %tobool352, label %if.then.353, label %if.end.365

if.then.353:                                      ; preds = %lor.lhs.false.350, %if.then.346
  %268 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl354 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %268, i32 0, i32 134
  %269 = load i32, i32* %FieldControl354, align 4
  %cmp355 = icmp eq i32 %269, 0
  br i1 %cmp355, label %if.then.357, label %if.end.364

if.then.357:                                      ; preds = %if.then.353
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame358 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 135
  %271 = load i32, i32* %FieldFrame358, align 4
  %cmp359 = icmp eq i32 %271, 1
  br i1 %cmp359, label %if.then.361, label %if.else.362

if.then.361:                                      ; preds = %if.then.357
  %272 = load i32, i32* @PreviousQp2, align 4
  store i32 %272, i32* @PreviousQp1, align 4
  %273 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %273, i32* @PreviousQp2, align 4
  br label %if.end.363

if.else.362:                                      ; preds = %if.then.357
  %274 = load i32, i32* @PreviousQp2, align 4
  store i32 %274, i32* @PreviousQp1, align 4
  %275 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %275, i32* @PreviousQp2, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.else.362, %if.then.361
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.then.353
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %lor.lhs.false.350
  %276 = load i32, i32* @PreviousQp1, align 4
  %277 = load i32, i32* @PreviousQp2, align 4
  %cmp366 = icmp eq i32 %276, %277
  br i1 %cmp366, label %if.then.368, label %if.else.370

if.then.368:                                      ; preds = %if.end.365
  %278 = load i32, i32* @PreviousQp1, align 4
  %add369 = add nsw i32 %278, 2
  store i32 %add369, i32* @m_Qc, align 4
  br label %if.end.374

if.else.370:                                      ; preds = %if.end.365
  %279 = load i32, i32* @PreviousQp1, align 4
  %280 = load i32, i32* @PreviousQp2, align 4
  %add371 = add nsw i32 %279, %280
  %div372 = sdiv i32 %add371, 2
  %add373 = add nsw i32 %div372, 1
  store i32 %add373, i32* @m_Qc, align 4
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.370, %if.then.368
  %281 = load i32, i32* @m_Qc, align 4
  %282 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp375 = icmp slt i32 %281, %282
  br i1 %cmp375, label %cond.true.377, label %cond.false.378

cond.true.377:                                    ; preds = %if.end.374
  %283 = load i32, i32* @m_Qc, align 4
  br label %cond.end.379

cond.false.378:                                   ; preds = %if.end.374
  %284 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.379

cond.end.379:                                     ; preds = %cond.false.378, %cond.true.377
  %cond380 = phi i32 [ %283, %cond.true.377 ], [ %284, %cond.false.378 ]
  store i32 %cond380, i32* @m_Qc, align 4
  %285 = load i32, i32* @RC_MIN_QUANT, align 4
  %286 = load i32, i32* @m_Qc, align 4
  %cmp381 = icmp slt i32 %285, %286
  br i1 %cmp381, label %cond.true.383, label %cond.false.384

cond.true.383:                                    ; preds = %cond.end.379
  %287 = load i32, i32* @m_Qc, align 4
  br label %cond.end.385

cond.false.384:                                   ; preds = %cond.end.379
  %288 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.false.384, %cond.true.383
  %cond386 = phi i32 [ %287, %cond.true.383 ], [ %288, %cond.false.384 ]
  store i32 %cond386, i32* @m_Qc, align 4
  br label %if.end.531

if.else.387:                                      ; preds = %if.then.342
  %289 = load i32, i32* @NumberofBFrames, align 4
  %add388 = add nsw i32 %289, 1
  %290 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe389 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %290, i32 0, i32 34
  %291 = load i32, i32* %successive_Bframe389, align 4
  %rem390 = srem i32 %add388, %291
  store i32 %rem390, i32* %BFrameNumber, align 4
  %292 = load i32, i32* %BFrameNumber, align 4
  %cmp391 = icmp eq i32 %292, 0
  br i1 %cmp391, label %if.then.393, label %if.end.395

if.then.393:                                      ; preds = %if.else.387
  %293 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe394 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %293, i32 0, i32 34
  %294 = load i32, i32* %successive_Bframe394, align 4
  store i32 %294, i32* %BFrameNumber, align 4
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.393, %if.else.387
  %295 = load i32, i32* %BFrameNumber, align 4
  %cmp396 = icmp eq i32 %295, 1
  br i1 %cmp396, label %if.then.398, label %if.end.418

if.then.398:                                      ; preds = %if.end.395
  %296 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace399 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %296, i32 0, i32 91
  %297 = load i32, i32* %PicInterlace399, align 4
  %cmp400 = icmp eq i32 %297, 2
  br i1 %cmp400, label %if.then.405, label %lor.lhs.false.402

lor.lhs.false.402:                                ; preds = %if.then.398
  %298 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace403 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %298, i32 0, i32 92
  %299 = load i32, i32* %MbInterlace403, align 4
  %tobool404 = icmp ne i32 %299, 0
  br i1 %tobool404, label %if.then.405, label %if.end.417

if.then.405:                                      ; preds = %lor.lhs.false.402, %if.then.398
  %300 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl406 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %300, i32 0, i32 134
  %301 = load i32, i32* %FieldControl406, align 4
  %cmp407 = icmp eq i32 %301, 0
  br i1 %cmp407, label %if.then.409, label %if.end.416

if.then.409:                                      ; preds = %if.then.405
  %302 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame410 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %302, i32 0, i32 135
  %303 = load i32, i32* %FieldFrame410, align 4
  %cmp411 = icmp eq i32 %303, 1
  br i1 %cmp411, label %if.then.413, label %if.else.414

if.then.413:                                      ; preds = %if.then.409
  %304 = load i32, i32* @PreviousQp2, align 4
  store i32 %304, i32* @PreviousQp1, align 4
  %305 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %305, i32* @PreviousQp2, align 4
  br label %if.end.415

if.else.414:                                      ; preds = %if.then.409
  %306 = load i32, i32* @PreviousQp2, align 4
  store i32 %306, i32* @PreviousQp1, align 4
  %307 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %307, i32* @PreviousQp2, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.else.414, %if.then.413
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.then.405
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %lor.lhs.false.402
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %if.end.395
  %308 = load i32, i32* @PreviousQp2, align 4
  %309 = load i32, i32* @PreviousQp1, align 4
  %sub419 = sub nsw i32 %308, %309
  %310 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe420 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %310, i32 0, i32 34
  %311 = load i32, i32* %successive_Bframe420, align 4
  %mul421 = mul nsw i32 -2, %311
  %sub422 = sub nsw i32 %mul421, 3
  %cmp423 = icmp sle i32 %sub419, %sub422
  br i1 %cmp423, label %if.then.425, label %if.else.426

if.then.425:                                      ; preds = %if.end.418
  store i32 -3, i32* %StepSize, align 4
  br label %if.end.462

if.else.426:                                      ; preds = %if.end.418
  %312 = load i32, i32* @PreviousQp2, align 4
  %313 = load i32, i32* @PreviousQp1, align 4
  %sub427 = sub nsw i32 %312, %313
  %314 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe428 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %314, i32 0, i32 34
  %315 = load i32, i32* %successive_Bframe428, align 4
  %mul429 = mul nsw i32 -2, %315
  %sub430 = sub nsw i32 %mul429, 2
  %cmp431 = icmp eq i32 %sub427, %sub430
  br i1 %cmp431, label %if.then.433, label %if.else.434

if.then.433:                                      ; preds = %if.else.426
  store i32 -2, i32* %StepSize, align 4
  br label %if.end.461

if.else.434:                                      ; preds = %if.else.426
  %316 = load i32, i32* @PreviousQp2, align 4
  %317 = load i32, i32* @PreviousQp1, align 4
  %sub435 = sub nsw i32 %316, %317
  %318 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe436 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %318, i32 0, i32 34
  %319 = load i32, i32* %successive_Bframe436, align 4
  %mul437 = mul nsw i32 -2, %319
  %sub438 = sub nsw i32 %mul437, 1
  %cmp439 = icmp eq i32 %sub435, %sub438
  br i1 %cmp439, label %if.then.441, label %if.else.442

if.then.441:                                      ; preds = %if.else.434
  store i32 -1, i32* %StepSize, align 4
  br label %if.end.460

if.else.442:                                      ; preds = %if.else.434
  %320 = load i32, i32* @PreviousQp2, align 4
  %321 = load i32, i32* @PreviousQp1, align 4
  %sub443 = sub nsw i32 %320, %321
  %322 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe444 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %322, i32 0, i32 34
  %323 = load i32, i32* %successive_Bframe444, align 4
  %mul445 = mul nsw i32 -2, %323
  %cmp446 = icmp eq i32 %sub443, %mul445
  br i1 %cmp446, label %if.then.448, label %if.else.449

if.then.448:                                      ; preds = %if.else.442
  store i32 0, i32* %StepSize, align 4
  br label %if.end.459

if.else.449:                                      ; preds = %if.else.442
  %324 = load i32, i32* @PreviousQp2, align 4
  %325 = load i32, i32* @PreviousQp1, align 4
  %sub450 = sub nsw i32 %324, %325
  %326 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe451 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %326, i32 0, i32 34
  %327 = load i32, i32* %successive_Bframe451, align 4
  %mul452 = mul nsw i32 -2, %327
  %add453 = add nsw i32 %mul452, 1
  %cmp454 = icmp eq i32 %sub450, %add453
  br i1 %cmp454, label %if.then.456, label %if.else.457

if.then.456:                                      ; preds = %if.else.449
  store i32 1, i32* %StepSize, align 4
  br label %if.end.458

if.else.457:                                      ; preds = %if.else.449
  store i32 2, i32* %StepSize, align 4
  br label %if.end.458

if.end.458:                                       ; preds = %if.else.457, %if.then.456
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.then.448
  br label %if.end.460

if.end.460:                                       ; preds = %if.end.459, %if.then.441
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.then.433
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %if.then.425
  %328 = load i32, i32* @PreviousQp1, align 4
  %329 = load i32, i32* %StepSize, align 4
  %add463 = add nsw i32 %328, %329
  store i32 %add463, i32* @m_Qc, align 4
  %330 = load i32, i32* %BFrameNumber, align 4
  %sub464 = sub nsw i32 %330, 1
  %mul465 = mul nsw i32 2, %sub464
  %331 = load i32, i32* %BFrameNumber, align 4
  %sub466 = sub nsw i32 %331, 1
  %mul467 = mul nsw i32 -2, %sub466
  %332 = load i32, i32* %BFrameNumber, align 4
  %sub468 = sub nsw i32 %332, 1
  %333 = load i32, i32* @PreviousQp2, align 4
  %334 = load i32, i32* @PreviousQp1, align 4
  %sub469 = sub nsw i32 %333, %334
  %mul470 = mul nsw i32 %sub468, %sub469
  %335 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe471 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %335, i32 0, i32 34
  %336 = load i32, i32* %successive_Bframe471, align 4
  %sub472 = sub nsw i32 %336, 1
  %div473 = sdiv i32 %mul470, %sub472
  %cmp474 = icmp slt i32 %mul467, %div473
  br i1 %cmp474, label %cond.true.476, label %cond.false.483

cond.true.476:                                    ; preds = %if.end.462
  %337 = load i32, i32* %BFrameNumber, align 4
  %sub477 = sub nsw i32 %337, 1
  %338 = load i32, i32* @PreviousQp2, align 4
  %339 = load i32, i32* @PreviousQp1, align 4
  %sub478 = sub nsw i32 %338, %339
  %mul479 = mul nsw i32 %sub477, %sub478
  %340 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe480 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %340, i32 0, i32 34
  %341 = load i32, i32* %successive_Bframe480, align 4
  %sub481 = sub nsw i32 %341, 1
  %div482 = sdiv i32 %mul479, %sub481
  br label %cond.end.486

cond.false.483:                                   ; preds = %if.end.462
  %342 = load i32, i32* %BFrameNumber, align 4
  %sub484 = sub nsw i32 %342, 1
  %mul485 = mul nsw i32 -2, %sub484
  br label %cond.end.486

cond.end.486:                                     ; preds = %cond.false.483, %cond.true.476
  %cond487 = phi i32 [ %div482, %cond.true.476 ], [ %mul485, %cond.false.483 ]
  %cmp488 = icmp slt i32 %mul465, %cond487
  br i1 %cmp488, label %cond.true.490, label %cond.false.493

cond.true.490:                                    ; preds = %cond.end.486
  %343 = load i32, i32* %BFrameNumber, align 4
  %sub491 = sub nsw i32 %343, 1
  %mul492 = mul nsw i32 2, %sub491
  br label %cond.end.516

cond.false.493:                                   ; preds = %cond.end.486
  %344 = load i32, i32* %BFrameNumber, align 4
  %sub494 = sub nsw i32 %344, 1
  %mul495 = mul nsw i32 -2, %sub494
  %345 = load i32, i32* %BFrameNumber, align 4
  %sub496 = sub nsw i32 %345, 1
  %346 = load i32, i32* @PreviousQp2, align 4
  %347 = load i32, i32* @PreviousQp1, align 4
  %sub497 = sub nsw i32 %346, %347
  %mul498 = mul nsw i32 %sub496, %sub497
  %348 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe499 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %348, i32 0, i32 34
  %349 = load i32, i32* %successive_Bframe499, align 4
  %sub500 = sub nsw i32 %349, 1
  %div501 = sdiv i32 %mul498, %sub500
  %cmp502 = icmp slt i32 %mul495, %div501
  br i1 %cmp502, label %cond.true.504, label %cond.false.511

cond.true.504:                                    ; preds = %cond.false.493
  %350 = load i32, i32* %BFrameNumber, align 4
  %sub505 = sub nsw i32 %350, 1
  %351 = load i32, i32* @PreviousQp2, align 4
  %352 = load i32, i32* @PreviousQp1, align 4
  %sub506 = sub nsw i32 %351, %352
  %mul507 = mul nsw i32 %sub505, %sub506
  %353 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe508 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %353, i32 0, i32 34
  %354 = load i32, i32* %successive_Bframe508, align 4
  %sub509 = sub nsw i32 %354, 1
  %div510 = sdiv i32 %mul507, %sub509
  br label %cond.end.514

cond.false.511:                                   ; preds = %cond.false.493
  %355 = load i32, i32* %BFrameNumber, align 4
  %sub512 = sub nsw i32 %355, 1
  %mul513 = mul nsw i32 -2, %sub512
  br label %cond.end.514

cond.end.514:                                     ; preds = %cond.false.511, %cond.true.504
  %cond515 = phi i32 [ %div510, %cond.true.504 ], [ %mul513, %cond.false.511 ]
  br label %cond.end.516

cond.end.516:                                     ; preds = %cond.end.514, %cond.true.490
  %cond517 = phi i32 [ %mul492, %cond.true.490 ], [ %cond515, %cond.end.514 ]
  %356 = load i32, i32* @m_Qc, align 4
  %add518 = add nsw i32 %356, %cond517
  store i32 %add518, i32* @m_Qc, align 4
  %357 = load i32, i32* @m_Qc, align 4
  %358 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp519 = icmp slt i32 %357, %358
  br i1 %cmp519, label %cond.true.521, label %cond.false.522

cond.true.521:                                    ; preds = %cond.end.516
  %359 = load i32, i32* @m_Qc, align 4
  br label %cond.end.523

cond.false.522:                                   ; preds = %cond.end.516
  %360 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.false.522, %cond.true.521
  %cond524 = phi i32 [ %359, %cond.true.521 ], [ %360, %cond.false.522 ]
  store i32 %cond524, i32* @m_Qc, align 4
  %361 = load i32, i32* @RC_MIN_QUANT, align 4
  %362 = load i32, i32* @m_Qc, align 4
  %cmp525 = icmp slt i32 %361, %362
  br i1 %cmp525, label %cond.true.527, label %cond.false.528

cond.true.527:                                    ; preds = %cond.end.523
  %363 = load i32, i32* @m_Qc, align 4
  br label %cond.end.529

cond.false.528:                                   ; preds = %cond.end.523
  %364 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %cond.end.529

cond.end.529:                                     ; preds = %cond.false.528, %cond.true.527
  %cond530 = phi i32 [ %363, %cond.true.527 ], [ %364, %cond.false.528 ]
  store i32 %cond530, i32* @m_Qc, align 4
  br label %if.end.531

if.end.531:                                       ; preds = %cond.end.529, %cond.end.385
  %365 = load i32, i32* @m_Qc, align 4
  store i32 %365, i32* %retval
  br label %return

if.else.532:                                      ; preds = %lor.lhs.false.338
  %366 = load i32, i32* @m_Qc, align 4
  store i32 %366, i32* %retval
  br label %return

if.else.533:                                      ; preds = %if.else.332
  %367 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type534 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %367, i32 0, i32 6
  %368 = load i32, i32* %type534, align 4
  %cmp535 = icmp eq i32 %368, 0
  br i1 %cmp535, label %if.then.537, label %if.end.1032

if.then.537:                                      ; preds = %if.else.533
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 128
  %370 = load i32, i32* %NumberofGOP, align 4
  %cmp538 = icmp eq i32 %370, 1
  br i1 %cmp538, label %land.lhs.true.540, label %if.else.590

land.lhs.true.540:                                ; preds = %if.then.537
  %371 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture541 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %371, i32 0, i32 130
  %372 = load i32, i32* %NumberofPPicture541, align 4
  %cmp542 = icmp eq i32 %372, 0
  br i1 %cmp542, label %if.then.544, label %if.else.590

if.then.544:                                      ; preds = %land.lhs.true.540
  %373 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl545 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %373, i32 0, i32 134
  %374 = load i32, i32* %FieldControl545, align 4
  %cmp546 = icmp eq i32 %374, 0
  br i1 %cmp546, label %if.then.556, label %lor.lhs.false.548

lor.lhs.false.548:                                ; preds = %if.then.544
  %375 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl549 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %375, i32 0, i32 134
  %376 = load i32, i32* %FieldControl549, align 4
  %cmp550 = icmp eq i32 %376, 1
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.589

land.lhs.true.552:                                ; preds = %lor.lhs.false.548
  %377 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %IFLAG553 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %377, i32 0, i32 137
  %378 = load i32, i32* %IFLAG553, align 4
  %cmp554 = icmp eq i32 %378, 0
  br i1 %cmp554, label %if.then.556, label %if.end.589

if.then.556:                                      ; preds = %land.lhs.true.552, %if.then.544
  %379 = load i32, i32* @MyInitialQp, align 4
  store i32 %379, i32* @m_Qc, align 4
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 121
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4
  %381 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %381, i32 0, i32 122
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4
  %382 = load i32, i32* @NumberofBasicUnit, align 4
  %dec = add nsw i32 %382, -1
  store i32 %dec, i32* @NumberofBasicUnit, align 4
  %383 = load i32, i32* %topfield.addr, align 4
  %tobool557 = icmp ne i32 %383, 0
  br i1 %tobool557, label %if.end.587, label %land.lhs.true.558

land.lhs.true.558:                                ; preds = %if.then.556
  %384 = load i32, i32* @NumberofBasicUnit, align 4
  %cmp559 = icmp eq i32 %384, 0
  br i1 %cmp559, label %if.then.561, label %if.end.587

if.then.561:                                      ; preds = %land.lhs.true.558
  %385 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag562 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %385, i32 0, i32 25
  %386 = load i32, i32* %frame_mbs_only_flag562, align 4
  %tobool563 = icmp ne i32 %386, 0
  br i1 %tobool563, label %if.then.568, label %lor.lhs.false.564

lor.lhs.false.564:                                ; preds = %if.then.561
  %387 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace565 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %387, i32 0, i32 91
  %388 = load i32, i32* %PicInterlace565, align 4
  %cmp566 = icmp eq i32 %388, 1
  br i1 %cmp566, label %if.then.568, label %if.else.571

if.then.568:                                      ; preds = %lor.lhs.false.564, %if.then.561
  %389 = load i32, i32* @m_Qc, align 4
  %390 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture569 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %390, i32 0, i32 129
  %391 = load i32, i32* %TotalQpforPPicture569, align 4
  %add570 = add nsw i32 %391, %389
  store i32 %add570, i32* %TotalQpforPPicture569, align 4
  %392 = load i32, i32* @PreviousQp2, align 4
  store i32 %392, i32* @PreviousQp1, align 4
  %393 = load i32, i32* @m_Qc, align 4
  store i32 %393, i32* @PreviousQp2, align 4
  %394 = load i32, i32* @m_Qc, align 4
  store i32 %394, i32* @PAveFrameQP, align 4
  %395 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %395, i32* @PAveHeaderBits3, align 4
  br label %if.end.586

if.else.571:                                      ; preds = %lor.lhs.false.564
  %396 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace572 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %396, i32 0, i32 91
  %397 = load i32, i32* %PicInterlace572, align 4
  %cmp573 = icmp eq i32 %397, 2
  br i1 %cmp573, label %if.then.578, label %lor.lhs.false.575

lor.lhs.false.575:                                ; preds = %if.else.571
  %398 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace576 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %398, i32 0, i32 92
  %399 = load i32, i32* %MbInterlace576, align 4
  %tobool577 = icmp ne i32 %399, 0
  br i1 %tobool577, label %if.then.578, label %if.end.585

if.then.578:                                      ; preds = %lor.lhs.false.575, %if.else.571
  %400 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl579 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %400, i32 0, i32 134
  %401 = load i32, i32* %FieldControl579, align 4
  %cmp580 = icmp eq i32 %401, 0
  br i1 %cmp580, label %if.then.582, label %if.else.583

if.then.582:                                      ; preds = %if.then.578
  %402 = load i32, i32* @m_Qc, align 4
  store i32 %402, i32* @FrameQPBuffer, align 4
  %403 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %403, i32* @FrameAveHeaderBits, align 4
  br label %if.end.584

if.else.583:                                      ; preds = %if.then.578
  %404 = load i32, i32* @m_Qc, align 4
  store i32 %404, i32* @FieldQPBuffer, align 4
  %405 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %405, i32* @FieldAveHeaderBits, align 4
  br label %if.end.584

if.end.584:                                       ; preds = %if.else.583, %if.then.582
  br label %if.end.585

if.end.585:                                       ; preds = %if.end.584, %lor.lhs.false.575
  br label %if.end.586

if.end.586:                                       ; preds = %if.end.585, %if.then.568
  br label %if.end.587

if.end.587:                                       ; preds = %if.end.586, %land.lhs.true.558, %if.then.556
  %406 = load i32, i32* @m_Qc, align 4
  store i32 %406, i32* @Pm_Qp, align 4
  %407 = load i32, i32* @m_Qc, align 4
  %408 = load i32, i32* @TotalFrameQP, align 4
  %add588 = add nsw i32 %408, %407
  store i32 %add588, i32* @TotalFrameQP, align 4
  %409 = load i32, i32* @m_Qc, align 4
  store i32 %409, i32* %retval
  br label %return

if.end.589:                                       ; preds = %land.lhs.true.552, %lor.lhs.false.548
  br label %if.end.1031

if.else.590:                                      ; preds = %land.lhs.true.540, %if.then.537
  %410 = load double, double* @Pm_X1, align 8
  store double %410, double* @m_X1, align 8
  %411 = load double, double* @Pm_X2, align 8
  store double %411, double* @m_X2, align 8
  %412 = load i32, i32* @PPreHeader, align 4
  store i32 %412, i32* @m_Hp, align 4
  %413 = load i32, i32* @Pm_Qp, align 4
  store i32 %413, i32* @m_Qp, align 4
  %414 = load i32, i32* @PDuantQp, align 4
  store i32 %414, i32* @DuantQp, align 4
  %415 = load double, double* @PMADPictureC1, align 8
  store double %415, double* @MADPictureC1, align 8
  %416 = load double, double* @PMADPictureC2, align 8
  store double %416, double* @MADPictureC2, align 8
  %417 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl591 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %417, i32 0, i32 134
  %418 = load i32, i32* %FieldControl591, align 4
  %cmp592 = icmp eq i32 %418, 0
  br i1 %cmp592, label %if.then.594, label %if.else.595

if.then.594:                                      ; preds = %if.else.590
  %419 = load i32, i32* @TotalNumberofBasicUnit, align 4
  store i32 %419, i32* %SumofBasicUnit, align 4
  br label %if.end.597

if.else.595:                                      ; preds = %if.else.590
  %420 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %div596 = sdiv i32 %420, 2
  store i32 %div596, i32* %SumofBasicUnit, align 4
  br label %if.end.597

if.end.597:                                       ; preds = %if.else.595, %if.then.594
  %421 = load i32, i32* @NumberofBasicUnit, align 4
  %422 = load i32, i32* %SumofBasicUnit, align 4
  %cmp598 = icmp eq i32 %421, %422
  br i1 %cmp598, label %if.then.600, label %if.else.652

if.then.600:                                      ; preds = %if.end.597
  %423 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace601 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %423, i32 0, i32 91
  %424 = load i32, i32* %PicInterlace601, align 4
  %cmp602 = icmp eq i32 %424, 2
  br i1 %cmp602, label %land.lhs.true.607, label %lor.lhs.false.604

lor.lhs.false.604:                                ; preds = %if.then.600
  %425 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace605 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %425, i32 0, i32 92
  %426 = load i32, i32* %MbInterlace605, align 4
  %tobool606 = icmp ne i32 %426, 0
  br i1 %tobool606, label %land.lhs.true.607, label %if.end.632

land.lhs.true.607:                                ; preds = %lor.lhs.false.604, %if.then.600
  %427 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl608 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %427, i32 0, i32 134
  %428 = load i32, i32* %FieldControl608, align 4
  %cmp609 = icmp eq i32 %428, 0
  br i1 %cmp609, label %if.then.611, label %if.end.632

if.then.611:                                      ; preds = %land.lhs.true.607
  %429 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldFrame612 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %429, i32 0, i32 135
  %430 = load i32, i32* %FieldFrame612, align 4
  %cmp613 = icmp eq i32 %430, 1
  br i1 %cmp613, label %if.then.615, label %if.else.623

if.then.615:                                      ; preds = %if.then.611
  %431 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture616 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %431, i32 0, i32 130
  %432 = load i32, i32* %NumberofPPicture616, align 4
  %cmp617 = icmp sgt i32 %432, 0
  br i1 %cmp617, label %if.then.619, label %if.end.622

if.then.619:                                      ; preds = %if.then.615
  %433 = load i32, i32* @FrameQPBuffer, align 4
  %434 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture620 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %434, i32 0, i32 129
  %435 = load i32, i32* %TotalQpforPPicture620, align 4
  %add621 = add nsw i32 %435, %433
  store i32 %add621, i32* %TotalQpforPPicture620, align 4
  br label %if.end.622

if.end.622:                                       ; preds = %if.then.619, %if.then.615
  %436 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %436, i32* @PAveFrameQP, align 4
  %437 = load i32, i32* @FrameAveHeaderBits, align 4
  store i32 %437, i32* @PAveHeaderBits3, align 4
  br label %if.end.631

if.else.623:                                      ; preds = %if.then.611
  %438 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture624 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %438, i32 0, i32 130
  %439 = load i32, i32* %NumberofPPicture624, align 4
  %cmp625 = icmp sgt i32 %439, 0
  br i1 %cmp625, label %if.then.627, label %if.end.630

if.then.627:                                      ; preds = %if.else.623
  %440 = load i32, i32* @FieldQPBuffer, align 4
  %441 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture628 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %441, i32 0, i32 129
  %442 = load i32, i32* %TotalQpforPPicture628, align 4
  %add629 = add nsw i32 %442, %440
  store i32 %add629, i32* %TotalQpforPPicture628, align 4
  br label %if.end.630

if.end.630:                                       ; preds = %if.then.627, %if.else.623
  %443 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %443, i32* @PAveFrameQP, align 4
  %444 = load i32, i32* @FieldAveHeaderBits, align 4
  store i32 %444, i32* @PAveHeaderBits3, align 4
  br label %if.end.631

if.end.631:                                       ; preds = %if.end.630, %if.end.622
  br label %if.end.632

if.end.632:                                       ; preds = %if.end.631, %land.lhs.true.607, %lor.lhs.false.604
  %445 = load i64, i64* @T, align 8
  %cmp633 = icmp sle i64 %445, 0
  br i1 %cmp633, label %if.then.635, label %if.else.648

if.then.635:                                      ; preds = %if.end.632
  %446 = load i32, i32* @PAveFrameQP, align 4
  %add636 = add nsw i32 %446, 2
  store i32 %add636, i32* @m_Qc, align 4
  %447 = load i32, i32* @m_Qc, align 4
  %448 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp637 = icmp sgt i32 %447, %448
  br i1 %cmp637, label %if.then.639, label %if.end.640

if.then.639:                                      ; preds = %if.then.635
  %449 = load i32, i32* @RC_MAX_QUANT, align 4
  store i32 %449, i32* @m_Qc, align 4
  br label %if.end.640

if.end.640:                                       ; preds = %if.then.639, %if.then.635
  %450 = load i32, i32* %topfield.addr, align 4
  %tobool641 = icmp ne i32 %450, 0
  br i1 %tobool641, label %if.then.646, label %lor.lhs.false.642

lor.lhs.false.642:                                ; preds = %if.end.640
  %451 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl643 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %451, i32 0, i32 134
  %452 = load i32, i32* %FieldControl643, align 4
  %cmp644 = icmp eq i32 %452, 0
  br i1 %cmp644, label %if.then.646, label %if.end.647

if.then.646:                                      ; preds = %lor.lhs.false.642, %if.end.640
  store i32 1, i32* @GOPOverdue, align 4
  br label %if.end.647

if.end.647:                                       ; preds = %if.then.646, %lor.lhs.false.642
  br label %if.end.649

if.else.648:                                      ; preds = %if.end.632
  %453 = load i32, i32* @PAveFrameQP, align 4
  store i32 %453, i32* @m_Qc, align 4
  br label %if.end.649

if.end.649:                                       ; preds = %if.else.648, %if.end.647
  %454 = load i32, i32* @m_Qc, align 4
  %455 = load i32, i32* @TotalFrameQP, align 4
  %add650 = add nsw i32 %455, %454
  store i32 %add650, i32* @TotalFrameQP, align 4
  %456 = load i32, i32* @NumberofBasicUnit, align 4
  %dec651 = add nsw i32 %456, -1
  store i32 %dec651, i32* @NumberofBasicUnit, align 4
  %457 = load i32, i32* @PAveFrameQP, align 4
  store i32 %457, i32* @Pm_Qp, align 4
  %458 = load i32, i32* @m_Qc, align 4
  store i32 %458, i32* %retval
  br label %return

if.else.652:                                      ; preds = %if.end.597
  %459 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitHeaderBits653 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %459, i32 0, i32 121
  %460 = load i32, i32* %NumberofBasicUnitHeaderBits653, align 4
  %461 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitTextureBits654 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %461, i32 0, i32 122
  %462 = load i32, i32* %NumberofBasicUnitTextureBits654, align 4
  %add655 = add nsw i32 %460, %462
  store i32 %add655, i32* @TotalBasicUnitBits, align 4
  %463 = load i32, i32* @TotalBasicUnitBits, align 4
  %conv656 = sext i32 %463 to i64
  %464 = load i64, i64* @T, align 8
  %sub657 = sub nsw i64 %464, %conv656
  store i64 %sub657, i64* @T, align 8
  %465 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitHeaderBits658 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %465, i32 0, i32 121
  store i32 0, i32* %NumberofBasicUnitHeaderBits658, align 4
  %466 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitTextureBits659 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %466, i32 0, i32 122
  store i32 0, i32* %NumberofBasicUnitTextureBits659, align 4
  %467 = load i64, i64* @T, align 8
  %cmp660 = icmp slt i64 %467, 0
  br i1 %cmp660, label %if.then.662, label %if.else.786

if.then.662:                                      ; preds = %if.else.652
  %468 = load i32, i32* @GOPOverdue, align 4
  %cmp663 = icmp eq i32 %468, 1
  br i1 %cmp663, label %if.then.665, label %if.else.667

if.then.665:                                      ; preds = %if.then.662
  %469 = load i32, i32* @m_Qp, align 4
  %add666 = add nsw i32 %469, 2
  store i32 %add666, i32* @m_Qc, align 4
  br label %if.end.669

if.else.667:                                      ; preds = %if.then.662
  %470 = load i32, i32* @m_Qp, align 4
  %471 = load i32, i32* @DDquant, align 4
  %add668 = add nsw i32 %470, %471
  store i32 %add668, i32* @m_Qc, align 4
  br label %if.end.669

if.end.669:                                       ; preds = %if.else.667, %if.then.665
  %472 = load i32, i32* @m_Qc, align 4
  %473 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp670 = icmp slt i32 %472, %473
  br i1 %cmp670, label %cond.true.672, label %cond.false.673

cond.true.672:                                    ; preds = %if.end.669
  %474 = load i32, i32* @m_Qc, align 4
  br label %cond.end.674

cond.false.673:                                   ; preds = %if.end.669
  %475 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.673, %cond.true.672
  %cond675 = phi i32 [ %474, %cond.true.672 ], [ %475, %cond.false.673 ]
  store i32 %cond675, i32* @m_Qc, align 4
  %476 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %476, i32 0, i32 130
  %477 = load i32, i32* %basicunit, align 4
  %478 = load i32, i32* @MBPerRow, align 4
  %cmp676 = icmp sge i32 %477, %478
  br i1 %cmp676, label %if.then.678, label %if.else.687

if.then.678:                                      ; preds = %cond.end.674
  %479 = load i32, i32* @m_Qc, align 4
  %480 = load i32, i32* @PAveFrameQP, align 4
  %add679 = add nsw i32 %480, 6
  %cmp680 = icmp slt i32 %479, %add679
  br i1 %cmp680, label %cond.true.682, label %cond.false.683

cond.true.682:                                    ; preds = %if.then.678
  %481 = load i32, i32* @m_Qc, align 4
  br label %cond.end.685

cond.false.683:                                   ; preds = %if.then.678
  %482 = load i32, i32* @PAveFrameQP, align 4
  %add684 = add nsw i32 %482, 6
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.false.683, %cond.true.682
  %cond686 = phi i32 [ %481, %cond.true.682 ], [ %add684, %cond.false.683 ]
  store i32 %cond686, i32* @m_Qc, align 4
  br label %if.end.696

if.else.687:                                      ; preds = %cond.end.674
  %483 = load i32, i32* @m_Qc, align 4
  %484 = load i32, i32* @PAveFrameQP, align 4
  %add688 = add nsw i32 %484, 3
  %cmp689 = icmp slt i32 %483, %add688
  br i1 %cmp689, label %cond.true.691, label %cond.false.692

cond.true.691:                                    ; preds = %if.else.687
  %485 = load i32, i32* @m_Qc, align 4
  br label %cond.end.694

cond.false.692:                                   ; preds = %if.else.687
  %486 = load i32, i32* @PAveFrameQP, align 4
  %add693 = add nsw i32 %486, 3
  br label %cond.end.694

cond.end.694:                                     ; preds = %cond.false.692, %cond.true.691
  %cond695 = phi i32 [ %485, %cond.true.691 ], [ %add693, %cond.false.692 ]
  store i32 %cond695, i32* @m_Qc, align 4
  br label %if.end.696

if.end.696:                                       ; preds = %cond.end.694, %cond.end.685
  %487 = load i32, i32* @m_Qc, align 4
  %488 = load i32, i32* @TotalFrameQP, align 4
  %add697 = add nsw i32 %488, %487
  store i32 %add697, i32* @TotalFrameQP, align 4
  %489 = load i32, i32* @NumberofBasicUnit, align 4
  %dec698 = add nsw i32 %489, -1
  store i32 %dec698, i32* @NumberofBasicUnit, align 4
  %490 = load i32, i32* @NumberofBasicUnit, align 4
  %cmp699 = icmp eq i32 %490, 0
  br i1 %cmp699, label %if.then.701, label %if.end.780

if.then.701:                                      ; preds = %if.end.696
  %491 = load i32, i32* %topfield.addr, align 4
  %tobool702 = icmp ne i32 %491, 0
  br i1 %tobool702, label %lor.lhs.false.703, label %if.then.707

lor.lhs.false.703:                                ; preds = %if.then.701
  %492 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl704 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %492, i32 0, i32 134
  %493 = load i32, i32* %FieldControl704, align 4
  %cmp705 = icmp eq i32 %493, 0
  br i1 %cmp705, label %if.then.707, label %if.end.779

if.then.707:                                      ; preds = %lor.lhs.false.703, %if.then.701
  %494 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag708 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %494, i32 0, i32 25
  %495 = load i32, i32* %frame_mbs_only_flag708, align 4
  %tobool709 = icmp ne i32 %495, 0
  br i1 %tobool709, label %if.then.714, label %lor.lhs.false.710

lor.lhs.false.710:                                ; preds = %if.then.707
  %496 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace711 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %496, i32 0, i32 91
  %497 = load i32, i32* %PicInterlace711, align 4
  %cmp712 = icmp eq i32 %497, 1
  br i1 %cmp712, label %if.then.714, label %if.else.751

if.then.714:                                      ; preds = %lor.lhs.false.710, %if.then.707
  %498 = load i32, i32* @TotalFrameQP, align 4
  %conv715 = sitofp i32 %498 to double
  %mul716 = fmul double 1.000000e+00, %conv715
  %499 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv717 = sitofp i32 %499 to double
  %div718 = fdiv double %mul716, %conv717
  %add719 = fadd double %div718, 5.000000e-01
  %conv720 = fptosi double %add719 to i32
  store i32 %conv720, i32* %PAverageQP, align 4
  %500 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture721 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %500, i32 0, i32 130
  %501 = load i32, i32* %NumberofPPicture721, align 4
  %502 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %502, i32 0, i32 31
  %503 = load i32, i32* %intra_period, align 4
  %sub722 = sub nsw i32 %503, 2
  %cmp723 = icmp eq i32 %501, %sub722
  br i1 %cmp723, label %if.then.725, label %if.end.726

if.then.725:                                      ; preds = %if.then.714
  %504 = load i32, i32* %PAverageQP, align 4
  store i32 %504, i32* @QPLastPFrame, align 4
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.725, %if.then.714
  %505 = load i32, i32* %PAverageQP, align 4
  %506 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture727 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %506, i32 0, i32 129
  %507 = load i32, i32* %TotalQpforPPicture727, align 4
  %add728 = add nsw i32 %507, %505
  store i32 %add728, i32* %TotalQpforPPicture727, align 4
  %508 = load i32, i32* @GOPOverdue, align 4
  %cmp729 = icmp eq i32 %508, 1
  br i1 %cmp729, label %if.then.731, label %if.else.733

if.then.731:                                      ; preds = %if.end.726
  %509 = load i32, i32* @PreviousQp2, align 4
  %add732 = add nsw i32 %509, 1
  store i32 %add732, i32* @PreviousQp1, align 4
  %510 = load i32, i32* %PAverageQP, align 4
  store i32 %510, i32* @PreviousQp2, align 4
  br label %if.end.750

if.else.733:                                      ; preds = %if.end.726
  %511 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture734 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %511, i32 0, i32 130
  %512 = load i32, i32* %NumberofPPicture734, align 4
  %cmp735 = icmp eq i32 %512, 0
  br i1 %cmp735, label %land.lhs.true.737, label %if.else.742

land.lhs.true.737:                                ; preds = %if.else.733
  %513 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofGOP738 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %513, i32 0, i32 128
  %514 = load i32, i32* %NumberofGOP738, align 4
  %cmp739 = icmp sgt i32 %514, 1
  br i1 %cmp739, label %if.then.741, label %if.else.742

if.then.741:                                      ; preds = %land.lhs.true.737
  %515 = load i32, i32* @PreviousQp2, align 4
  store i32 %515, i32* @PreviousQp1, align 4
  %516 = load i32, i32* %PAverageQP, align 4
  store i32 %516, i32* @PreviousQp2, align 4
  br label %if.end.749

if.else.742:                                      ; preds = %land.lhs.true.737, %if.else.733
  %517 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture743 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %517, i32 0, i32 130
  %518 = load i32, i32* %NumberofPPicture743, align 4
  %cmp744 = icmp sgt i32 %518, 0
  br i1 %cmp744, label %if.then.746, label %if.end.748

if.then.746:                                      ; preds = %if.else.742
  %519 = load i32, i32* @PreviousQp2, align 4
  %add747 = add nsw i32 %519, 1
  store i32 %add747, i32* @PreviousQp1, align 4
  %520 = load i32, i32* %PAverageQP, align 4
  store i32 %520, i32* @PreviousQp2, align 4
  br label %if.end.748

if.end.748:                                       ; preds = %if.then.746, %if.else.742
  br label %if.end.749

if.end.749:                                       ; preds = %if.end.748, %if.then.741
  br label %if.end.750

if.end.750:                                       ; preds = %if.end.749, %if.then.731
  %521 = load i32, i32* %PAverageQP, align 4
  store i32 %521, i32* @PAveFrameQP, align 4
  %522 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %522, i32* @PAveHeaderBits3, align 4
  br label %if.end.778

if.else.751:                                      ; preds = %lor.lhs.false.710
  %523 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace752 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %523, i32 0, i32 91
  %524 = load i32, i32* %PicInterlace752, align 4
  %cmp753 = icmp eq i32 %524, 2
  br i1 %cmp753, label %if.then.758, label %lor.lhs.false.755

lor.lhs.false.755:                                ; preds = %if.else.751
  %525 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace756 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %525, i32 0, i32 92
  %526 = load i32, i32* %MbInterlace756, align 4
  %tobool757 = icmp ne i32 %526, 0
  br i1 %tobool757, label %if.then.758, label %if.end.777

if.then.758:                                      ; preds = %lor.lhs.false.755, %if.else.751
  %527 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl759 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %527, i32 0, i32 134
  %528 = load i32, i32* %FieldControl759, align 4
  %cmp760 = icmp eq i32 %528, 0
  br i1 %cmp760, label %if.then.762, label %if.else.769

if.then.762:                                      ; preds = %if.then.758
  %529 = load i32, i32* @TotalFrameQP, align 4
  %conv763 = sitofp i32 %529 to double
  %mul764 = fmul double 1.000000e+00, %conv763
  %530 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv765 = sitofp i32 %530 to double
  %div766 = fdiv double %mul764, %conv765
  %add767 = fadd double %div766, 5.000000e-01
  %conv768 = fptosi double %add767 to i32
  store i32 %conv768, i32* %PAverageQP, align 4
  %531 = load i32, i32* %PAverageQP, align 4
  store i32 %531, i32* @FrameQPBuffer, align 4
  %532 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %532, i32* @FrameAveHeaderBits, align 4
  br label %if.end.776

if.else.769:                                      ; preds = %if.then.758
  %533 = load i32, i32* @TotalFrameQP, align 4
  %conv770 = sitofp i32 %533 to double
  %mul771 = fmul double 1.000000e+00, %conv770
  %534 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv772 = sitofp i32 %534 to double
  %div773 = fdiv double %mul771, %conv772
  %add774 = fadd double %div773, 5.000000e-01
  %conv775 = fptosi double %add774 to i32
  store i32 %conv775, i32* %PAverageQP, align 4
  %535 = load i32, i32* %PAverageQP, align 4
  store i32 %535, i32* @FieldQPBuffer, align 4
  %536 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %536, i32* @FieldAveHeaderBits, align 4
  br label %if.end.776

if.end.776:                                       ; preds = %if.else.769, %if.then.762
  br label %if.end.777

if.end.777:                                       ; preds = %if.end.776, %lor.lhs.false.755
  br label %if.end.778

if.end.778:                                       ; preds = %if.end.777, %if.end.750
  br label %if.end.779

if.end.779:                                       ; preds = %if.end.778, %lor.lhs.false.703
  br label %if.end.780

if.end.780:                                       ; preds = %if.end.779, %if.end.696
  %537 = load i32, i32* @GOPOverdue, align 4
  %cmp781 = icmp eq i32 %537, 1
  br i1 %cmp781, label %if.then.783, label %if.else.784

if.then.783:                                      ; preds = %if.end.780
  %538 = load i32, i32* @PAveFrameQP, align 4
  store i32 %538, i32* @Pm_Qp, align 4
  br label %if.end.785

if.else.784:                                      ; preds = %if.end.780
  %539 = load i32, i32* @m_Qc, align 4
  store i32 %539, i32* @Pm_Qp, align 4
  br label %if.end.785

if.end.785:                                       ; preds = %if.else.784, %if.then.783
  %540 = load i32, i32* @m_Qc, align 4
  store i32 %540, i32* %retval
  br label %return

if.else.786:                                      ; preds = %if.else.652
  %541 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace787 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %541, i32 0, i32 91
  %542 = load i32, i32* %PicInterlace787, align 4
  %cmp788 = icmp eq i32 %542, 2
  br i1 %cmp788, label %land.lhs.true.793, label %lor.lhs.false.790

lor.lhs.false.790:                                ; preds = %if.else.786
  %543 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace791 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %543, i32 0, i32 92
  %544 = load i32, i32* %MbInterlace791, align 4
  %tobool792 = icmp ne i32 %544, 0
  br i1 %tobool792, label %land.lhs.true.793, label %if.else.812

land.lhs.true.793:                                ; preds = %lor.lhs.false.790, %if.else.786
  %545 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl794 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %545, i32 0, i32 134
  %546 = load i32, i32* %FieldControl794, align 4
  %cmp795 = icmp eq i32 %546, 1
  br i1 %cmp795, label %if.then.797, label %if.else.812

if.then.797:                                      ; preds = %land.lhs.true.793
  %547 = load double, double* @MADPictureC1, align 8
  %548 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %549 = load i32, i32* @NumberofBasicUnit, align 4
  %sub798 = sub nsw i32 %548, %549
  %idxprom = sext i32 %sub798 to i64
  %550 = load double*, double** @FCBUPFMAD, align 8
  %arrayidx = getelementptr inbounds double, double* %550, i64 %idxprom
  %551 = load double, double* %arrayidx, align 8
  %mul799 = fmul double %547, %551
  %552 = load double, double* @MADPictureC2, align 8
  %add800 = fadd double %mul799, %552
  store double %add800, double* @CurrentFrameMAD, align 8
  store double 0.000000e+00, double* @TotalBUMAD, align 8
  %553 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %sub801 = sub nsw i32 %553, 1
  store i32 %sub801, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.797
  %554 = load i32, i32* %i, align 4
  %555 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %556 = load i32, i32* @NumberofBasicUnit, align 4
  %sub802 = sub nsw i32 %555, %556
  %cmp803 = icmp sge i32 %554, %sub802
  br i1 %cmp803, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %557 = load double, double* @MADPictureC1, align 8
  %558 = load i32, i32* %i, align 4
  %idxprom805 = sext i32 %558 to i64
  %559 = load double*, double** @FCBUPFMAD, align 8
  %arrayidx806 = getelementptr inbounds double, double* %559, i64 %idxprom805
  %560 = load double, double* %arrayidx806, align 8
  %mul807 = fmul double %557, %560
  %561 = load double, double* @MADPictureC2, align 8
  %add808 = fadd double %mul807, %561
  store double %add808, double* @CurrentBUMAD, align 8
  %562 = load double, double* @CurrentBUMAD, align 8
  %563 = load double, double* @CurrentBUMAD, align 8
  %mul809 = fmul double %562, %563
  %564 = load double, double* @TotalBUMAD, align 8
  %add810 = fadd double %564, %mul809
  store double %add810, double* @TotalBUMAD, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %565 = load i32, i32* %i, align 4
  %dec811 = add nsw i32 %565, -1
  store i32 %dec811, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.833

if.else.812:                                      ; preds = %land.lhs.true.793, %lor.lhs.false.790
  %566 = load double, double* @MADPictureC1, align 8
  %567 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %568 = load i32, i32* @NumberofBasicUnit, align 4
  %sub813 = sub nsw i32 %567, %568
  %idxprom814 = sext i32 %sub813 to i64
  %569 = load double*, double** @BUPFMAD, align 8
  %arrayidx815 = getelementptr inbounds double, double* %569, i64 %idxprom814
  %570 = load double, double* %arrayidx815, align 8
  %mul816 = fmul double %566, %570
  %571 = load double, double* @MADPictureC2, align 8
  %add817 = fadd double %mul816, %571
  store double %add817, double* @CurrentFrameMAD, align 8
  store double 0.000000e+00, double* @TotalBUMAD, align 8
  %572 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %sub818 = sub nsw i32 %572, 1
  store i32 %sub818, i32* %i, align 4
  br label %for.cond.819

for.cond.819:                                     ; preds = %for.inc.830, %if.else.812
  %573 = load i32, i32* %i, align 4
  %574 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %575 = load i32, i32* @NumberofBasicUnit, align 4
  %sub820 = sub nsw i32 %574, %575
  %cmp821 = icmp sge i32 %573, %sub820
  br i1 %cmp821, label %for.body.823, label %for.end.832

for.body.823:                                     ; preds = %for.cond.819
  %576 = load double, double* @MADPictureC1, align 8
  %577 = load i32, i32* %i, align 4
  %idxprom824 = sext i32 %577 to i64
  %578 = load double*, double** @BUPFMAD, align 8
  %arrayidx825 = getelementptr inbounds double, double* %578, i64 %idxprom824
  %579 = load double, double* %arrayidx825, align 8
  %mul826 = fmul double %576, %579
  %580 = load double, double* @MADPictureC2, align 8
  %add827 = fadd double %mul826, %580
  store double %add827, double* @CurrentBUMAD, align 8
  %581 = load double, double* @CurrentBUMAD, align 8
  %582 = load double, double* @CurrentBUMAD, align 8
  %mul828 = fmul double %581, %582
  %583 = load double, double* @TotalBUMAD, align 8
  %add829 = fadd double %583, %mul828
  store double %add829, double* @TotalBUMAD, align 8
  br label %for.inc.830

for.inc.830:                                      ; preds = %for.body.823
  %584 = load i32, i32* %i, align 4
  %dec831 = add nsw i32 %584, -1
  store i32 %dec831, i32* %i, align 4
  br label %for.cond.819

for.end.832:                                      ; preds = %for.cond.819
  br label %if.end.833

if.end.833:                                       ; preds = %for.end.832, %for.end
  %585 = load i64, i64* @T, align 8
  %conv834 = sitofp i64 %585 to double
  %586 = load double, double* @CurrentFrameMAD, align 8
  %mul835 = fmul double %conv834, %586
  %587 = load double, double* @CurrentFrameMAD, align 8
  %mul836 = fmul double %mul835, %587
  %588 = load double, double* @TotalBUMAD, align 8
  %div837 = fdiv double %mul836, %588
  %conv838 = fptosi double %div837 to i32
  store i32 %conv838, i32* %m_Bits, align 4
  %589 = load i32, i32* @PAveHeaderBits2, align 4
  %590 = load i32, i32* %m_Bits, align 4
  %sub839 = sub nsw i32 %590, %589
  store i32 %sub839, i32* %m_Bits, align 4
  %591 = load i32, i32* %m_Bits, align 4
  %592 = load double, double* @bit_rate, align 8
  %593 = load double, double* @MINVALUE, align 8
  %594 = load double, double* @frame_rate, align 8
  %mul840 = fmul double %593, %594
  %595 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv841 = sitofp i32 %595 to double
  %mul842 = fmul double %mul840, %conv841
  %div843 = fdiv double %592, %mul842
  %conv844 = fptosi double %div843 to i32
  %cmp845 = icmp slt i32 %591, %conv844
  br i1 %cmp845, label %cond.true.847, label %cond.false.853

cond.true.847:                                    ; preds = %if.end.833
  %596 = load double, double* @bit_rate, align 8
  %597 = load double, double* @MINVALUE, align 8
  %598 = load double, double* @frame_rate, align 8
  %mul848 = fmul double %597, %598
  %599 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv849 = sitofp i32 %599 to double
  %mul850 = fmul double %mul848, %conv849
  %div851 = fdiv double %596, %mul850
  %conv852 = fptosi double %div851 to i32
  br label %cond.end.854

cond.false.853:                                   ; preds = %if.end.833
  %600 = load i32, i32* %m_Bits, align 4
  br label %cond.end.854

cond.end.854:                                     ; preds = %cond.false.853, %cond.true.847
  %cond855 = phi i32 [ %conv852, %cond.true.847 ], [ %600, %cond.false.853 ]
  store i32 %cond855, i32* %m_Bits, align 4
  %601 = load double, double* @CurrentFrameMAD, align 8
  %602 = load double, double* @m_X1, align 8
  %mul856 = fmul double %601, %602
  %603 = load double, double* @CurrentFrameMAD, align 8
  %mul857 = fmul double %mul856, %603
  %604 = load double, double* @m_X1, align 8
  %mul858 = fmul double %mul857, %604
  %605 = load double, double* @m_X2, align 8
  %mul859 = fmul double 4.000000e+00, %605
  %606 = load double, double* @CurrentFrameMAD, align 8
  %mul860 = fmul double %mul859, %606
  %607 = load i32, i32* %m_Bits, align 4
  %conv861 = sitofp i32 %607 to double
  %mul862 = fmul double %mul860, %conv861
  %add863 = fadd double %mul858, %mul862
  store double %add863, double* %dtmp, align 8
  %608 = load double, double* @m_X2, align 8
  %cmp864 = fcmp oeq double %608, 0.000000e+00
  br i1 %cmp864, label %if.then.875, label %lor.lhs.false.866

lor.lhs.false.866:                                ; preds = %cond.end.854
  %609 = load double, double* %dtmp, align 8
  %cmp867 = fcmp olt double %609, 0.000000e+00
  br i1 %cmp867, label %if.then.875, label %lor.lhs.false.869

lor.lhs.false.869:                                ; preds = %lor.lhs.false.866
  %610 = load double, double* %dtmp, align 8
  %call870 = call double @sqrt(double %610) #4
  %611 = load double, double* @m_X1, align 8
  %612 = load double, double* @CurrentFrameMAD, align 8
  %mul871 = fmul double %611, %612
  %sub872 = fsub double %call870, %mul871
  %cmp873 = fcmp ole double %sub872, 0.000000e+00
  br i1 %cmp873, label %if.then.875, label %if.else.881

if.then.875:                                      ; preds = %lor.lhs.false.869, %lor.lhs.false.866, %cond.end.854
  %613 = load double, double* @m_X1, align 8
  %614 = load double, double* @CurrentFrameMAD, align 8
  %mul876 = fmul double %613, %614
  %615 = load i32, i32* %m_Bits, align 4
  %conv877 = sitofp i32 %615 to double
  %div878 = fdiv double %mul876, %conv877
  %conv879 = fptrunc double %div878 to float
  %conv880 = fpext float %conv879 to double
  store double %conv880, double* @m_Qstep, align 8
  br label %if.end.890

if.else.881:                                      ; preds = %lor.lhs.false.869
  %616 = load double, double* @m_X2, align 8
  %mul882 = fmul double 2.000000e+00, %616
  %617 = load double, double* @CurrentFrameMAD, align 8
  %mul883 = fmul double %mul882, %617
  %618 = load double, double* %dtmp, align 8
  %call884 = call double @sqrt(double %618) #4
  %619 = load double, double* @m_X1, align 8
  %620 = load double, double* @CurrentFrameMAD, align 8
  %mul885 = fmul double %619, %620
  %sub886 = fsub double %call884, %mul885
  %div887 = fdiv double %mul883, %sub886
  %conv888 = fptrunc double %div887 to float
  %conv889 = fpext float %conv888 to double
  store double %conv889, double* @m_Qstep, align 8
  br label %if.end.890

if.end.890:                                       ; preds = %if.else.881, %if.then.875
  %621 = load double, double* @m_Qstep, align 8
  %call891 = call i32 @Qstep2QP(double %621)
  store i32 %call891, i32* @m_Qc, align 4
  %622 = load i32, i32* @m_Qp, align 4
  %623 = load i32, i32* @DDquant, align 4
  %add892 = add nsw i32 %622, %623
  %624 = load i32, i32* @m_Qc, align 4
  %cmp893 = icmp slt i32 %add892, %624
  br i1 %cmp893, label %cond.true.895, label %cond.false.897

cond.true.895:                                    ; preds = %if.end.890
  %625 = load i32, i32* @m_Qp, align 4
  %626 = load i32, i32* @DDquant, align 4
  %add896 = add nsw i32 %625, %626
  br label %cond.end.898

cond.false.897:                                   ; preds = %if.end.890
  %627 = load i32, i32* @m_Qc, align 4
  br label %cond.end.898

cond.end.898:                                     ; preds = %cond.false.897, %cond.true.895
  %cond899 = phi i32 [ %add896, %cond.true.895 ], [ %627, %cond.false.897 ]
  store i32 %cond899, i32* @m_Qc, align 4
  %628 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit900 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %628, i32 0, i32 130
  %629 = load i32, i32* %basicunit900, align 4
  %630 = load i32, i32* @MBPerRow, align 4
  %cmp901 = icmp sge i32 %629, %630
  br i1 %cmp901, label %if.then.903, label %if.else.912

if.then.903:                                      ; preds = %cond.end.898
  %631 = load i32, i32* @PAveFrameQP, align 4
  %add904 = add nsw i32 %631, 6
  %632 = load i32, i32* @m_Qc, align 4
  %cmp905 = icmp slt i32 %add904, %632
  br i1 %cmp905, label %cond.true.907, label %cond.false.909

cond.true.907:                                    ; preds = %if.then.903
  %633 = load i32, i32* @PAveFrameQP, align 4
  %add908 = add nsw i32 %633, 6
  br label %cond.end.910

cond.false.909:                                   ; preds = %if.then.903
  %634 = load i32, i32* @m_Qc, align 4
  br label %cond.end.910

cond.end.910:                                     ; preds = %cond.false.909, %cond.true.907
  %cond911 = phi i32 [ %add908, %cond.true.907 ], [ %634, %cond.false.909 ]
  store i32 %cond911, i32* @m_Qc, align 4
  br label %if.end.921

if.else.912:                                      ; preds = %cond.end.898
  %635 = load i32, i32* @PAveFrameQP, align 4
  %add913 = add nsw i32 %635, 3
  %636 = load i32, i32* @m_Qc, align 4
  %cmp914 = icmp slt i32 %add913, %636
  br i1 %cmp914, label %cond.true.916, label %cond.false.918

cond.true.916:                                    ; preds = %if.else.912
  %637 = load i32, i32* @PAveFrameQP, align 4
  %add917 = add nsw i32 %637, 3
  br label %cond.end.919

cond.false.918:                                   ; preds = %if.else.912
  %638 = load i32, i32* @m_Qc, align 4
  br label %cond.end.919

cond.end.919:                                     ; preds = %cond.false.918, %cond.true.916
  %cond920 = phi i32 [ %add917, %cond.true.916 ], [ %638, %cond.false.918 ]
  store i32 %cond920, i32* @m_Qc, align 4
  br label %if.end.921

if.end.921:                                       ; preds = %cond.end.919, %cond.end.910
  %639 = load i32, i32* @m_Qc, align 4
  %640 = load i32, i32* @RC_MAX_QUANT, align 4
  %cmp922 = icmp slt i32 %639, %640
  br i1 %cmp922, label %cond.true.924, label %cond.false.925

cond.true.924:                                    ; preds = %if.end.921
  %641 = load i32, i32* @m_Qc, align 4
  br label %cond.end.926

cond.false.925:                                   ; preds = %if.end.921
  %642 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %cond.end.926

cond.end.926:                                     ; preds = %cond.false.925, %cond.true.924
  %cond927 = phi i32 [ %641, %cond.true.924 ], [ %642, %cond.false.925 ]
  store i32 %cond927, i32* @m_Qc, align 4
  %643 = load i32, i32* @m_Qp, align 4
  %644 = load i32, i32* @DDquant, align 4
  %sub928 = sub nsw i32 %643, %644
  %645 = load i32, i32* @m_Qc, align 4
  %cmp929 = icmp slt i32 %sub928, %645
  br i1 %cmp929, label %cond.true.931, label %cond.false.932

cond.true.931:                                    ; preds = %cond.end.926
  %646 = load i32, i32* @m_Qc, align 4
  br label %cond.end.934

cond.false.932:                                   ; preds = %cond.end.926
  %647 = load i32, i32* @m_Qp, align 4
  %648 = load i32, i32* @DDquant, align 4
  %sub933 = sub nsw i32 %647, %648
  br label %cond.end.934

cond.end.934:                                     ; preds = %cond.false.932, %cond.true.931
  %cond935 = phi i32 [ %646, %cond.true.931 ], [ %sub933, %cond.false.932 ]
  store i32 %cond935, i32* @m_Qc, align 4
  %649 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit936 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %649, i32 0, i32 130
  %650 = load i32, i32* %basicunit936, align 4
  %651 = load i32, i32* @MBPerRow, align 4
  %cmp937 = icmp sge i32 %650, %651
  br i1 %cmp937, label %if.then.939, label %if.else.948

if.then.939:                                      ; preds = %cond.end.934
  %652 = load i32, i32* @PAveFrameQP, align 4
  %sub940 = sub nsw i32 %652, 6
  %653 = load i32, i32* @m_Qc, align 4
  %cmp941 = icmp slt i32 %sub940, %653
  br i1 %cmp941, label %cond.true.943, label %cond.false.944

cond.true.943:                                    ; preds = %if.then.939
  %654 = load i32, i32* @m_Qc, align 4
  br label %cond.end.946

cond.false.944:                                   ; preds = %if.then.939
  %655 = load i32, i32* @PAveFrameQP, align 4
  %sub945 = sub nsw i32 %655, 6
  br label %cond.end.946

cond.end.946:                                     ; preds = %cond.false.944, %cond.true.943
  %cond947 = phi i32 [ %654, %cond.true.943 ], [ %sub945, %cond.false.944 ]
  store i32 %cond947, i32* @m_Qc, align 4
  br label %if.end.957

if.else.948:                                      ; preds = %cond.end.934
  %656 = load i32, i32* @PAveFrameQP, align 4
  %sub949 = sub nsw i32 %656, 3
  %657 = load i32, i32* @m_Qc, align 4
  %cmp950 = icmp slt i32 %sub949, %657
  br i1 %cmp950, label %cond.true.952, label %cond.false.953

cond.true.952:                                    ; preds = %if.else.948
  %658 = load i32, i32* @m_Qc, align 4
  br label %cond.end.955

cond.false.953:                                   ; preds = %if.else.948
  %659 = load i32, i32* @PAveFrameQP, align 4
  %sub954 = sub nsw i32 %659, 3
  br label %cond.end.955

cond.end.955:                                     ; preds = %cond.false.953, %cond.true.952
  %cond956 = phi i32 [ %658, %cond.true.952 ], [ %sub954, %cond.false.953 ]
  store i32 %cond956, i32* @m_Qc, align 4
  br label %if.end.957

if.end.957:                                       ; preds = %cond.end.955, %cond.end.946
  %660 = load i32, i32* @RC_MIN_QUANT, align 4
  %661 = load i32, i32* @m_Qc, align 4
  %cmp958 = icmp slt i32 %660, %661
  br i1 %cmp958, label %cond.true.960, label %cond.false.961

cond.true.960:                                    ; preds = %if.end.957
  %662 = load i32, i32* @m_Qc, align 4
  br label %cond.end.962

cond.false.961:                                   ; preds = %if.end.957
  %663 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %cond.end.962

cond.end.962:                                     ; preds = %cond.false.961, %cond.true.960
  %cond963 = phi i32 [ %662, %cond.true.960 ], [ %663, %cond.false.961 ]
  store i32 %cond963, i32* @m_Qc, align 4
  %664 = load i32, i32* @m_Qc, align 4
  %665 = load i32, i32* @TotalFrameQP, align 4
  %add964 = add nsw i32 %665, %664
  store i32 %add964, i32* @TotalFrameQP, align 4
  %666 = load i32, i32* @m_Qc, align 4
  store i32 %666, i32* @Pm_Qp, align 4
  %667 = load i32, i32* @NumberofBasicUnit, align 4
  %dec965 = add nsw i32 %667, -1
  store i32 %dec965, i32* @NumberofBasicUnit, align 4
  %668 = load i32, i32* @NumberofBasicUnit, align 4
  %cmp966 = icmp eq i32 %668, 0
  br i1 %cmp966, label %land.lhs.true.968, label %if.end.1030

land.lhs.true.968:                                ; preds = %cond.end.962
  %669 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type969 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %669, i32 0, i32 6
  %670 = load i32, i32* %type969, align 4
  %cmp970 = icmp eq i32 %670, 0
  br i1 %cmp970, label %if.then.972, label %if.end.1030

if.then.972:                                      ; preds = %land.lhs.true.968
  %671 = load i32, i32* %topfield.addr, align 4
  %tobool973 = icmp ne i32 %671, 0
  br i1 %tobool973, label %lor.lhs.false.974, label %if.then.978

lor.lhs.false.974:                                ; preds = %if.then.972
  %672 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl975 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %672, i32 0, i32 134
  %673 = load i32, i32* %FieldControl975, align 4
  %cmp976 = icmp eq i32 %673, 0
  br i1 %cmp976, label %if.then.978, label %if.end.1029

if.then.978:                                      ; preds = %lor.lhs.false.974, %if.then.972
  %674 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag979 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %674, i32 0, i32 25
  %675 = load i32, i32* %frame_mbs_only_flag979, align 4
  %tobool980 = icmp ne i32 %675, 0
  br i1 %tobool980, label %if.then.985, label %lor.lhs.false.981

lor.lhs.false.981:                                ; preds = %if.then.978
  %676 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace982 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %676, i32 0, i32 91
  %677 = load i32, i32* %PicInterlace982, align 4
  %cmp983 = icmp eq i32 %677, 1
  br i1 %cmp983, label %if.then.985, label %if.else.1001

if.then.985:                                      ; preds = %lor.lhs.false.981, %if.then.978
  %678 = load i32, i32* @TotalFrameQP, align 4
  %conv986 = sitofp i32 %678 to double
  %mul987 = fmul double 1.000000e+00, %conv986
  %679 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv988 = sitofp i32 %679 to double
  %div989 = fdiv double %mul987, %conv988
  %add990 = fadd double %div989, 5.000000e-01
  %conv991 = fptosi double %add990 to i32
  store i32 %conv991, i32* %PAverageQP, align 4
  %680 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofPPicture992 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %680, i32 0, i32 130
  %681 = load i32, i32* %NumberofPPicture992, align 4
  %682 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period993 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %682, i32 0, i32 31
  %683 = load i32, i32* %intra_period993, align 4
  %sub994 = sub nsw i32 %683, 2
  %cmp995 = icmp eq i32 %681, %sub994
  br i1 %cmp995, label %if.then.997, label %if.end.998

if.then.997:                                      ; preds = %if.then.985
  %684 = load i32, i32* %PAverageQP, align 4
  store i32 %684, i32* @QPLastPFrame, align 4
  br label %if.end.998

if.end.998:                                       ; preds = %if.then.997, %if.then.985
  %685 = load i32, i32* %PAverageQP, align 4
  %686 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalQpforPPicture999 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %686, i32 0, i32 129
  %687 = load i32, i32* %TotalQpforPPicture999, align 4
  %add1000 = add nsw i32 %687, %685
  store i32 %add1000, i32* %TotalQpforPPicture999, align 4
  %688 = load i32, i32* @PreviousQp2, align 4
  store i32 %688, i32* @PreviousQp1, align 4
  %689 = load i32, i32* %PAverageQP, align 4
  store i32 %689, i32* @PreviousQp2, align 4
  %690 = load i32, i32* %PAverageQP, align 4
  store i32 %690, i32* @PAveFrameQP, align 4
  %691 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %691, i32* @PAveHeaderBits3, align 4
  br label %if.end.1028

if.else.1001:                                     ; preds = %lor.lhs.false.981
  %692 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace1002 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %692, i32 0, i32 91
  %693 = load i32, i32* %PicInterlace1002, align 4
  %cmp1003 = icmp eq i32 %693, 2
  br i1 %cmp1003, label %if.then.1008, label %lor.lhs.false.1005

lor.lhs.false.1005:                               ; preds = %if.else.1001
  %694 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace1006 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %694, i32 0, i32 92
  %695 = load i32, i32* %MbInterlace1006, align 4
  %tobool1007 = icmp ne i32 %695, 0
  br i1 %tobool1007, label %if.then.1008, label %if.end.1027

if.then.1008:                                     ; preds = %lor.lhs.false.1005, %if.else.1001
  %696 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl1009 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %696, i32 0, i32 134
  %697 = load i32, i32* %FieldControl1009, align 4
  %cmp1010 = icmp eq i32 %697, 0
  br i1 %cmp1010, label %if.then.1012, label %if.else.1019

if.then.1012:                                     ; preds = %if.then.1008
  %698 = load i32, i32* @TotalFrameQP, align 4
  %conv1013 = sitofp i32 %698 to double
  %mul1014 = fmul double 1.000000e+00, %conv1013
  %699 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv1015 = sitofp i32 %699 to double
  %div1016 = fdiv double %mul1014, %conv1015
  %add1017 = fadd double %div1016, 5.000000e-01
  %conv1018 = fptosi double %add1017 to i32
  store i32 %conv1018, i32* %PAverageQP, align 4
  %700 = load i32, i32* %PAverageQP, align 4
  store i32 %700, i32* @FrameQPBuffer, align 4
  %701 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %701, i32* @FrameAveHeaderBits, align 4
  br label %if.end.1026

if.else.1019:                                     ; preds = %if.then.1008
  %702 = load i32, i32* @TotalFrameQP, align 4
  %conv1020 = sitofp i32 %702 to double
  %mul1021 = fmul double 1.000000e+00, %conv1020
  %703 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv1022 = sitofp i32 %703 to double
  %div1023 = fdiv double %mul1021, %conv1022
  %add1024 = fadd double %div1023, 5.000000e-01
  %conv1025 = fptosi double %add1024 to i32
  store i32 %conv1025, i32* %PAverageQP, align 4
  %704 = load i32, i32* %PAverageQP, align 4
  store i32 %704, i32* @FieldQPBuffer, align 4
  %705 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %705, i32* @FieldAveHeaderBits, align 4
  br label %if.end.1026

if.end.1026:                                      ; preds = %if.else.1019, %if.then.1012
  br label %if.end.1027

if.end.1027:                                      ; preds = %if.end.1026, %lor.lhs.false.1005
  br label %if.end.1028

if.end.1028:                                      ; preds = %if.end.1027, %if.end.998
  br label %if.end.1029

if.end.1029:                                      ; preds = %if.end.1028, %lor.lhs.false.974
  br label %if.end.1030

if.end.1030:                                      ; preds = %if.end.1029, %land.lhs.true.968, %cond.end.962
  %706 = load i32, i32* @m_Qc, align 4
  store i32 %706, i32* %retval
  br label %return

if.end.1031:                                      ; preds = %if.end.589
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.end.1031, %if.else.533
  br label %if.end.1033

if.end.1033:                                      ; preds = %if.end.1032
  br label %if.end.1034

if.end.1034:                                      ; preds = %if.end.1033
  br label %if.end.1035

if.end.1035:                                      ; preds = %if.end.1034
  br label %if.end.1036

if.end.1036:                                      ; preds = %if.end.1035
  %707 = load i32, i32* @m_Qc, align 4
  store i32 %707, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1036, %if.end.1030, %if.end.785, %if.end.649, %if.end.587, %if.else.532, %if.end.531, %if.then.331, %if.then.318, %if.end.313, %if.end.295, %if.end.174, %if.end.160, %if.then.4
  %708 = load i32, i32* %retval
  ret i32 %708
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define i32 @Qstep2QP(double %Qstep) #0 {
entry:
  %retval = alloca i32, align 4
  %Qstep.addr = alloca double, align 8
  %q_per = alloca i32, align 4
  %q_rem = alloca i32, align 4
  store double %Qstep, double* %Qstep.addr, align 8
  store i32 0, i32* %q_per, align 4
  store i32 0, i32* %q_rem, align 4
  %0 = load double, double* %Qstep.addr, align 8
  %call = call double @QP2Qstep(i32 0)
  %cmp = fcmp olt double %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %Qstep.addr, align 8
  %call1 = call double @QP2Qstep(i32 51)
  %cmp2 = fcmp ogt double %1, %call1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store i32 51, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %2 = load double, double* %Qstep.addr, align 8
  %call5 = call double @QP2Qstep(i32 5)
  %cmp6 = fcmp ogt double %2, %call5
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load double, double* %Qstep.addr, align 8
  %div = fdiv double %3, 2.000000e+00
  store double %div, double* %Qstep.addr, align 8
  %4 = load i32, i32* %q_per, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %q_per, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load double, double* %Qstep.addr, align 8
  %cmp7 = fcmp ole double %5, 6.562500e-01
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %while.end
  store double 6.250000e-01, double* %Qstep.addr, align 8
  store i32 0, i32* %q_rem, align 4
  br label %if.end.26

if.else.9:                                        ; preds = %while.end
  %6 = load double, double* %Qstep.addr, align 8
  %cmp10 = fcmp ole double %6, 7.500000e-01
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store double 6.875000e-01, double* %Qstep.addr, align 8
  store i32 1, i32* %q_rem, align 4
  br label %if.end.25

if.else.12:                                       ; preds = %if.else.9
  %7 = load double, double* %Qstep.addr, align 8
  %cmp13 = fcmp ole double %7, 8.437500e-01
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.12
  store double 8.125000e-01, double* %Qstep.addr, align 8
  store i32 2, i32* %q_rem, align 4
  br label %if.end.24

if.else.15:                                       ; preds = %if.else.12
  %8 = load double, double* %Qstep.addr, align 8
  %cmp16 = fcmp ole double %8, 9.375000e-01
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.15
  store double 8.750000e-01, double* %Qstep.addr, align 8
  store i32 3, i32* %q_rem, align 4
  br label %if.end.23

if.else.18:                                       ; preds = %if.else.15
  %9 = load double, double* %Qstep.addr, align 8
  %cmp19 = fcmp ole double %9, 1.062500e+00
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  store double 1.000000e+00, double* %Qstep.addr, align 8
  store i32 4, i32* %q_rem, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %if.else.18
  store double 1.125000e+00, double* %Qstep.addr, align 8
  store i32 5, i32* %q_rem, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.11
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.8
  %10 = load i32, i32* %q_per, align 4
  %mul = mul nsw i32 %10, 6
  %11 = load i32, i32* %q_rem, align 4
  %add27 = add nsw i32 %mul, %11
  store i32 %add27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.3, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define void @updateRCModel() #0 {
entry:
  %n_windowSize = alloca i32, align 4
  %i = alloca i32, align 4
  %error = alloca [20 x double], align 16
  %std = alloca double, align 8
  %threshold = alloca double, align 8
  %m_Nc = alloca i32, align 4
  %MADModelFlag = alloca i32, align 4
  store double 0.000000e+00, double* %std, align 8
  store i32 0, i32* %MADModelFlag, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 6
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.210

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 139
  %3 = load i32, i32* %BasicUnit, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 136
  %5 = load i32, i32* %Frame_Total_Number_MB, align 4
  %cmp1 = icmp eq i32 %3, %5
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %call = call double @ComputeFrameMAD()
  store double %call, double* @CurrentFrameMAD, align 8
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 127
  %7 = load i32, i32* %NumberofCodedPFrame, align 4
  store i32 %7, i32* %m_Nc, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.then
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 92
  %9 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 134
  %11 = load i32, i32* %FieldControl, align 4
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %land.lhs.true
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalMADBasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 123
  %13 = load double, double* %TotalMADBasicUnit, align 8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 139
  %15 = load i32, i32* %BasicUnit5, align 4
  %conv = sitofp i32 %15 to double
  %div = fdiv double %13, %conv
  %div6 = fdiv double %div, 2.000000e+00
  store double %div6, double* @CurrentFrameMAD, align 8
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalMADBasicUnit8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 123
  %17 = load double, double* %TotalMADBasicUnit8, align 8
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 139
  %19 = load i32, i32* %BasicUnit9, align 4
  %conv10 = sitofp i32 %19 to double
  %div11 = fdiv double %17, %conv10
  store double %div11, double* @CurrentFrameMAD, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %TotalMADBasicUnit12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 123
  store double 0.000000e+00, double* %TotalMADBasicUnit12, align 8
  %21 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %22 = load i32, i32* @NumberofBasicUnit, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* @CodedBasicUnit, align 4
  %23 = load i32, i32* @CodedBasicUnit, align 4
  %cmp13 = icmp sgt i32 %23, 0
  br i1 %cmp13, label %if.then.15, label %if.end.37

if.then.15:                                       ; preds = %if.end
  %24 = load i32, i32* @PAveHeaderBits1, align 4
  %25 = load i32, i32* @CodedBasicUnit, align 4
  %sub16 = sub nsw i32 %25, 1
  %mul = mul nsw i32 %24, %sub16
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 121
  %27 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %add = add nsw i32 %mul, %27
  %conv17 = sitofp i32 %add to double
  %mul18 = fmul double 1.000000e+00, %conv17
  %28 = load i32, i32* @CodedBasicUnit, align 4
  %conv19 = sitofp i32 %28 to double
  %div20 = fdiv double %mul18, %conv19
  %add21 = fadd double %div20, 5.000000e-01
  %conv22 = fptosi double %add21 to i32
  store i32 %conv22, i32* @PAveHeaderBits1, align 4
  %29 = load i32, i32* @PAveHeaderBits3, align 4
  %cmp23 = icmp eq i32 %29, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.15
  %30 = load i32, i32* @PAveHeaderBits1, align 4
  store i32 %30, i32* @PAveHeaderBits2, align 4
  br label %if.end.36

if.else.26:                                       ; preds = %if.then.15
  %31 = load i32, i32* @PAveHeaderBits1, align 4
  %32 = load i32, i32* @CodedBasicUnit, align 4
  %mul27 = mul nsw i32 %31, %32
  %33 = load i32, i32* @PAveHeaderBits3, align 4
  %34 = load i32, i32* @NumberofBasicUnit, align 4
  %mul28 = mul nsw i32 %33, %34
  %add29 = add nsw i32 %mul27, %mul28
  %conv30 = sitofp i32 %add29 to double
  %mul31 = fmul double 1.000000e+00, %conv30
  %35 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %conv32 = sitofp i32 %35 to double
  %div33 = fdiv double %mul31, %conv32
  %add34 = fadd double %div33, 5.000000e-01
  %conv35 = fptosi double %add34 to i32
  store i32 %conv35, i32* @PAveHeaderBits2, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 91
  %37 = load i32, i32* %PicInterlace, align 4
  %cmp38 = icmp eq i32 %37, 2
  br i1 %cmp38, label %land.lhs.true.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.37
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 92
  %39 = load i32, i32* %MbInterlace40, align 4
  %tobool41 = icmp ne i32 %39, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.else.49

land.lhs.true.42:                                 ; preds = %lor.lhs.false, %if.end.37
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl43 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 134
  %41 = load i32, i32* %FieldControl43, align 4
  %cmp44 = icmp eq i32 %41, 1
  br i1 %cmp44, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %land.lhs.true.42
  %42 = load double, double* @CurrentFrameMAD, align 8
  %43 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %sub47 = sub nsw i32 %43, 1
  %44 = load i32, i32* @NumberofBasicUnit, align 4
  %sub48 = sub nsw i32 %sub47, %44
  %idxprom = sext i32 %sub48 to i64
  %45 = load double*, double** @FCBUCFMAD, align 8
  %arrayidx = getelementptr inbounds double, double* %45, i64 %idxprom
  store double %42, double* %arrayidx, align 8
  br label %if.end.54

if.else.49:                                       ; preds = %land.lhs.true.42, %lor.lhs.false
  %46 = load double, double* @CurrentFrameMAD, align 8
  %47 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %sub50 = sub nsw i32 %47, 1
  %48 = load i32, i32* @NumberofBasicUnit, align 4
  %sub51 = sub nsw i32 %sub50, %48
  %idxprom52 = sext i32 %sub51 to i64
  %49 = load double*, double** @BUCFMAD, align 8
  %arrayidx53 = getelementptr inbounds double, double* %49, i64 %idxprom52
  store double %46, double* %arrayidx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.49, %if.then.46
  %50 = load i32, i32* @NumberofBasicUnit, align 4
  %cmp55 = icmp ne i32 %50, 0
  br i1 %cmp55, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %if.end.54
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 127
  %52 = load i32, i32* %NumberofCodedPFrame58, align 4
  %53 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %mul59 = mul nsw i32 %52, %53
  %54 = load i32, i32* @CodedBasicUnit, align 4
  %add60 = add nsw i32 %mul59, %54
  store i32 %add60, i32* %m_Nc, align 4
  br label %if.end.66

if.else.61:                                       ; preds = %if.end.54
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 127
  %56 = load i32, i32* %NumberofCodedPFrame62, align 4
  %sub63 = sub nsw i32 %56, 1
  %57 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %mul64 = mul nsw i32 %sub63, %57
  %58 = load i32, i32* @CodedBasicUnit, align 4
  %add65 = add nsw i32 %mul64, %58
  store i32 %add65, i32* %m_Nc, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.61, %if.then.57
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.2
  %59 = load i32, i32* %m_Nc, align 4
  %cmp68 = icmp sgt i32 %59, 1
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  store i32 1, i32* %MADModelFlag, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 119
  %61 = load i32, i32* %NumberofHeaderBits, align 4
  store i32 %61, i32* @PPreHeader, align 4
  store i32 19, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.71
  %62 = load i32, i32* %i, align 4
  %cmp72 = icmp sgt i32 %62, 0
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %i, align 4
  %sub74 = sub nsw i32 %63, 1
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i32 0, i64 %idxprom75
  %64 = load double, double* %arrayidx76, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %65 to i64
  %arrayidx78 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i32 0, i64 %idxprom77
  store double %64, double* %arrayidx78, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %66 to i64
  %arrayidx80 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i32 0, i64 %idxprom79
  %67 = load double, double* %arrayidx80, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %68 to i64
  %arrayidx82 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom81
  store double %67, double* %arrayidx82, align 8
  %69 = load i32, i32* %i, align 4
  %sub83 = sub nsw i32 %69, 1
  %idxprom84 = sext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i32 0, i64 %idxprom84
  %70 = load double, double* %arrayidx85, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %71 to i64
  %arrayidx87 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i32 0, i64 %idxprom86
  store double %70, double* %arrayidx87, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %72 to i64
  %arrayidx89 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i32 0, i64 %idxprom88
  %73 = load double, double* %arrayidx89, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %74 to i64
  %arrayidx91 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i32 0, i64 %idxprom90
  store double %73, double* %arrayidx91, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i32, i32* %i, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load i32, i32* @m_Qc, align 4
  %call92 = call double @QP2Qstep(i32 %76)
  store double %call92, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgQp, i32 0, i64 0), align 8
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 139
  %78 = load i32, i32* %BasicUnit93, align 4
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 136
  %80 = load i32, i32* %Frame_Total_Number_MB94, align 4
  %cmp95 = icmp eq i32 %78, %80
  br i1 %cmp95, label %if.then.97, label %if.else.101

if.then.97:                                       ; preds = %for.end
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofTextureBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 120
  %82 = load i32, i32* %NumberofTextureBits, align 4
  %conv98 = sitofp i32 %82 to double
  %mul99 = fmul double %conv98, 1.000000e+00
  %83 = load double, double* @CurrentFrameMAD, align 8
  %div100 = fdiv double %mul99, %83
  store double %div100, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgRp, i32 0, i64 0), align 8
  br label %if.end.105

if.else.101:                                      ; preds = %for.end
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 122
  %85 = load i32, i32* %NumberofBasicUnitTextureBits, align 4
  %conv102 = sitofp i32 %85 to double
  %mul103 = fmul double %conv102, 1.000000e+00
  %86 = load double, double* @CurrentFrameMAD, align 8
  %div104 = fdiv double %mul103, %86
  store double %div104, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgRp, i32 0, i64 0), align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.101, %if.then.97
  %87 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgQp, i32 0, i64 0), align 8
  store double %87, double* getelementptr inbounds ([21 x double], [21 x double]* @m_rgQp, i32 0, i64 0), align 8
  %88 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgRp, i32 0, i64 0), align 8
  store double %88, double* getelementptr inbounds ([21 x double], [21 x double]* @m_rgRp, i32 0, i64 0), align 8
  %89 = load double, double* @Pm_X1, align 8
  store double %89, double* @m_X1, align 8
  %90 = load double, double* @Pm_X2, align 8
  store double %90, double* @m_X2, align 8
  %91 = load double, double* @CurrentFrameMAD, align 8
  %92 = load double, double* @PreviousFrameMAD, align 8
  %cmp106 = fcmp ogt double %91, %92
  br i1 %cmp106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.105
  %93 = load double, double* @PreviousFrameMAD, align 8
  %94 = load double, double* @CurrentFrameMAD, align 8
  %div108 = fdiv double %93, %94
  %mul109 = fmul double %div108, 2.000000e+01
  %conv110 = fptosi double %mul109 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.105
  %95 = load double, double* @CurrentFrameMAD, align 8
  %96 = load double, double* @PreviousFrameMAD, align 8
  %div111 = fdiv double %95, %96
  %mul112 = fmul double %div111, 2.000000e+01
  %conv113 = fptosi double %mul112 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv110, %cond.true ], [ %conv113, %cond.false ]
  store i32 %cond, i32* %n_windowSize, align 4
  %97 = load i32, i32* %n_windowSize, align 4
  %cmp114 = icmp slt i32 %97, 1
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.end
  br label %cond.end.118

cond.false.117:                                   ; preds = %cond.end
  %98 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %cond119 = phi i32 [ 1, %cond.true.116 ], [ %98, %cond.false.117 ]
  store i32 %cond119, i32* %n_windowSize, align 4
  %99 = load i32, i32* %n_windowSize, align 4
  %100 = load i32, i32* %m_Nc, align 4
  %cmp120 = icmp slt i32 %99, %100
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end.118
  %101 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.124

cond.false.123:                                   ; preds = %cond.end.118
  %102 = load i32, i32* %m_Nc, align 4
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ %101, %cond.true.122 ], [ %102, %cond.false.123 ]
  store i32 %cond125, i32* %n_windowSize, align 4
  %103 = load i32, i32* %n_windowSize, align 4
  %104 = load i32, i32* @m_windowSize, align 4
  %add126 = add nsw i32 %104, 1
  %cmp127 = icmp slt i32 %103, %add126
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.end.124
  %105 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.132

cond.false.130:                                   ; preds = %cond.end.124
  %106 = load i32, i32* @m_windowSize, align 4
  %add131 = add nsw i32 %106, 1
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.130, %cond.true.129
  %cond133 = phi i32 [ %105, %cond.true.129 ], [ %add131, %cond.false.130 ]
  store i32 %cond133, i32* %n_windowSize, align 4
  %107 = load i32, i32* %n_windowSize, align 4
  %cmp134 = icmp slt i32 %107, 20
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.end.132
  %108 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.end.132
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i32 [ %108, %cond.true.136 ], [ 20, %cond.false.137 ]
  store i32 %cond139, i32* %n_windowSize, align 4
  %109 = load i32, i32* %n_windowSize, align 4
  store i32 %109, i32* @m_windowSize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.146, %cond.end.138
  %110 = load i32, i32* %i, align 4
  %cmp141 = icmp slt i32 %110, 20
  br i1 %cmp141, label %for.body.143, label %for.end.147

for.body.143:                                     ; preds = %for.cond.140
  %111 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %111 to i64
  %arrayidx145 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 %idxprom144
  store i32 0, i32* %arrayidx145, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.143
  %112 = load i32, i32* %i, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.140

for.end.147:                                      ; preds = %for.cond.140
  %113 = load i32, i32* %n_windowSize, align 4
  call void @RCModelEstimator(i32 %113)
  %114 = load i32, i32* @m_windowSize, align 4
  store i32 %114, i32* %n_windowSize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.173, %for.end.147
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %n_windowSize, align 4
  %cmp149 = icmp slt i32 %115, %116
  br i1 %cmp149, label %for.body.151, label %for.end.175

for.body.151:                                     ; preds = %for.cond.148
  %117 = load double, double* @m_X1, align 8
  %118 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %118 to i64
  %arrayidx153 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom152
  %119 = load double, double* %arrayidx153, align 8
  %div154 = fdiv double %117, %119
  %120 = load double, double* @m_X2, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %121 to i64
  %arrayidx156 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom155
  %122 = load double, double* %arrayidx156, align 8
  %123 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %123 to i64
  %arrayidx158 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom157
  %124 = load double, double* %arrayidx158, align 8
  %mul159 = fmul double %122, %124
  %div160 = fdiv double %120, %mul159
  %add161 = fadd double %div154, %div160
  %125 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %125 to i64
  %arrayidx163 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i32 0, i64 %idxprom162
  %126 = load double, double* %arrayidx163, align 8
  %sub164 = fsub double %add161, %126
  %127 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %127 to i64
  %arrayidx166 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom165
  store double %sub164, double* %arrayidx166, align 8
  %128 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %128 to i64
  %arrayidx168 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom167
  %129 = load double, double* %arrayidx168, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %130 to i64
  %arrayidx170 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom169
  %131 = load double, double* %arrayidx170, align 8
  %mul171 = fmul double %129, %131
  %132 = load double, double* %std, align 8
  %add172 = fadd double %132, %mul171
  store double %add172, double* %std, align 8
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.body.151
  %133 = load i32, i32* %i, align 4
  %inc174 = add nsw i32 %133, 1
  store i32 %inc174, i32* %i, align 4
  br label %for.cond.148

for.end.175:                                      ; preds = %for.cond.148
  %134 = load i32, i32* %n_windowSize, align 4
  %cmp176 = icmp eq i32 %134, 2
  br i1 %cmp176, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %for.end.175
  br label %cond.end.183

cond.false.179:                                   ; preds = %for.end.175
  %135 = load double, double* %std, align 8
  %136 = load i32, i32* %n_windowSize, align 4
  %conv180 = sitofp i32 %136 to double
  %div181 = fdiv double %135, %conv180
  %call182 = call double @sqrt(double %div181) #4
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.179, %cond.true.178
  %cond184 = phi double [ 0.000000e+00, %cond.true.178 ], [ %call182, %cond.false.179 ]
  store double %cond184, double* %threshold, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.198, %cond.end.183
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* %n_windowSize, align 4
  %cmp186 = icmp slt i32 %137, %138
  br i1 %cmp186, label %for.body.188, label %for.end.200

for.body.188:                                     ; preds = %for.cond.185
  %139 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %139 to i64
  %arrayidx190 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom189
  %140 = load double, double* %arrayidx190, align 8
  %call191 = call double @fabs(double %140) #5
  %141 = load double, double* %threshold, align 8
  %cmp192 = fcmp ogt double %call191, %141
  br i1 %cmp192, label %if.then.194, label %if.end.197

if.then.194:                                      ; preds = %for.body.188
  %142 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %142 to i64
  %arrayidx196 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 %idxprom195
  store i32 1, i32* %arrayidx196, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.194, %for.body.188
  br label %for.inc.198

for.inc.198:                                      ; preds = %if.end.197
  %143 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %143, 1
  store i32 %inc199, i32* %i, align 4
  br label %for.cond.185

for.end.200:                                      ; preds = %for.cond.185
  store i32 0, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 0), align 4
  %144 = load i32, i32* %n_windowSize, align 4
  call void @RCModelEstimator(i32 %144)
  %145 = load i32, i32* %MADModelFlag, align 4
  %tobool201 = icmp ne i32 %145, 0
  br i1 %tobool201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %for.end.200
  call void @updateMADModel()
  br label %if.end.209

if.else.203:                                      ; preds = %for.end.200
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type204 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 6
  %147 = load i32, i32* %type204, align 4
  %cmp205 = icmp eq i32 %147, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.else.203
  %148 = load double, double* @CurrentFrameMAD, align 8
  store double %148, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i32 0, i64 0), align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %if.else.203
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.202
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define double @QP2Qstep(i32 %QP) #0 {
entry:
  %QP.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %Qstep = alloca double, align 8
  store i32 %QP, i32* %QP.addr, align 4
  %0 = load i32, i32* %QP.addr, align 4
  %rem = srem i32 %0, 6
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* @QP2Qstep.QP2QSTEP, i32 0, i64 %idxprom
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %Qstep, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %QP.addr, align 4
  %div = sdiv i32 %3, 6
  %cmp = icmp slt i32 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, double* %Qstep, align 8
  %mul = fmul double %4, 2.000000e+00
  store double %mul, double* %Qstep, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load double, double* %Qstep, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define void @RCModelEstimator(i32 %n_windowSize) #0 {
entry:
  %n_windowSize.addr = alloca i32, align 4
  %n_realSize = alloca i32, align 4
  %i = alloca i32, align 4
  %oneSampleQ = alloca double, align 8
  %a00 = alloca double, align 8
  %a01 = alloca double, align 8
  %a10 = alloca double, align 8
  %a11 = alloca double, align 8
  %b0 = alloca double, align 8
  %b1 = alloca double, align 8
  %MatrixValue = alloca double, align 8
  %estimateX2 = alloca i32, align 4
  store i32 %n_windowSize, i32* %n_windowSize.addr, align 4
  %0 = load i32, i32* %n_windowSize.addr, align 4
  store i32 %0, i32* %n_realSize, align 4
  store double 0.000000e+00, double* %a00, align 8
  store double 0.000000e+00, double* %a01, align 8
  store double 0.000000e+00, double* %a10, align 8
  store double 0.000000e+00, double* %a11, align 8
  store double 0.000000e+00, double* %b0, align 8
  store double 0.000000e+00, double* %b1, align 8
  store i32 0, i32* %estimateX2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_windowSize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %n_realSize, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %n_realSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* @m_X2, align 8
  store double 0.000000e+00, double* @m_X1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_windowSize.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %for.body.3
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom8
  %12 = load double, double* %arrayidx9, align 8
  store double %12, double* %oneSampleQ, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %for.body.3
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %13 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %for.end.13
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n_windowSize.addr, align 4
  %cmp15 = icmp slt i32 %14, %15
  br i1 %cmp15, label %for.body.16, label %for.end.36

for.body.16:                                      ; preds = %for.cond.14
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom17
  %17 = load double, double* %arrayidx18, align 8
  %18 = load double, double* %oneSampleQ, align 8
  %cmp19 = fcmp une double %17, %18
  br i1 %cmp19, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body.16
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %estimateX2, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true, %for.body.16
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 %idxprom25
  %22 = load i32, i32* %arrayidx26, align 4
  %tobool27 = icmp ne i32 %22, 0
  br i1 %tobool27, label %if.end.33, label %if.then.28

if.then.28:                                       ; preds = %if.end.24
  %23 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom29
  %24 = load double, double* %arrayidx30, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i32 0, i64 %idxprom31
  %26 = load double, double* %arrayidx32, align 8
  %mul = fmul double %24, %26
  %27 = load i32, i32* %n_realSize, align 4
  %conv = sitofp i32 %27 to double
  %div = fdiv double %mul, %conv
  %28 = load double, double* @m_X1, align 8
  %add = fadd double %28, %div
  store double %add, double* @m_X1, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %if.end.24
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %29 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  %30 = load i32, i32* %n_realSize, align 4
  %cmp37 = icmp sge i32 %30, 1
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.90

land.lhs.true.39:                                 ; preds = %for.end.36
  %31 = load i32, i32* %estimateX2, align 4
  %tobool40 = icmp ne i32 %31, 0
  br i1 %tobool40, label %if.then.41, label %if.end.90

if.then.41:                                       ; preds = %land.lhs.true.39
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.72, %if.then.41
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %n_windowSize.addr, align 4
  %cmp43 = icmp slt i32 %32, %33
  br i1 %cmp43, label %for.body.45, label %for.end.74

for.body.45:                                      ; preds = %for.cond.42
  %34 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i32 0, i64 %idxprom46
  %35 = load i32, i32* %arrayidx47, align 4
  %tobool48 = icmp ne i32 %35, 0
  br i1 %tobool48, label %if.end.71, label %if.then.49

if.then.49:                                       ; preds = %for.body.45
  %36 = load double, double* %a00, align 8
  %add50 = fadd double %36, 1.000000e+00
  store double %add50, double* %a00, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom51
  %38 = load double, double* %arrayidx52, align 8
  %div53 = fdiv double 1.000000e+00, %38
  %39 = load double, double* %a01, align 8
  %add54 = fadd double %39, %div53
  store double %add54, double* %a01, align 8
  %40 = load double, double* %a01, align 8
  store double %40, double* %a10, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom55
  %42 = load double, double* %arrayidx56, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %43 to i64
  %arrayidx58 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom57
  %44 = load double, double* %arrayidx58, align 8
  %mul59 = fmul double %42, %44
  %div60 = fdiv double 1.000000e+00, %mul59
  %45 = load double, double* %a11, align 8
  %add61 = fadd double %45, %div60
  store double %add61, double* %a11, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %46 to i64
  %arrayidx63 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i32 0, i64 %idxprom62
  %47 = load double, double* %arrayidx63, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i32 0, i64 %idxprom64
  %49 = load double, double* %arrayidx65, align 8
  %mul66 = fmul double %47, %49
  %50 = load double, double* %b0, align 8
  %add67 = fadd double %50, %mul66
  store double %add67, double* %b0, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %51 to i64
  %arrayidx69 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i32 0, i64 %idxprom68
  %52 = load double, double* %arrayidx69, align 8
  %53 = load double, double* %b1, align 8
  %add70 = fadd double %53, %52
  store double %add70, double* %b1, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.49, %for.body.45
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %54 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %54, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.42

for.end.74:                                       ; preds = %for.cond.42
  %55 = load double, double* %a00, align 8
  %56 = load double, double* %a11, align 8
  %mul75 = fmul double %55, %56
  %57 = load double, double* %a01, align 8
  %58 = load double, double* %a10, align 8
  %mul76 = fmul double %57, %58
  %sub = fsub double %mul75, %mul76
  store double %sub, double* %MatrixValue, align 8
  %59 = load double, double* %MatrixValue, align 8
  %call = call double @fabs(double %59) #5
  %cmp77 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %for.end.74
  %60 = load double, double* %b0, align 8
  %61 = load double, double* %a11, align 8
  %mul80 = fmul double %60, %61
  %62 = load double, double* %b1, align 8
  %63 = load double, double* %a01, align 8
  %mul81 = fmul double %62, %63
  %sub82 = fsub double %mul80, %mul81
  %64 = load double, double* %MatrixValue, align 8
  %div83 = fdiv double %sub82, %64
  store double %div83, double* @m_X1, align 8
  %65 = load double, double* %b1, align 8
  %66 = load double, double* %a00, align 8
  %mul84 = fmul double %65, %66
  %67 = load double, double* %b0, align 8
  %68 = load double, double* %a10, align 8
  %mul85 = fmul double %67, %68
  %sub86 = fsub double %mul84, %mul85
  %69 = load double, double* %MatrixValue, align 8
  %div87 = fdiv double %sub86, %69
  store double %div87, double* @m_X2, align 8
  br label %if.end.89

if.else:                                          ; preds = %for.end.74
  %70 = load double, double* %b0, align 8
  %71 = load double, double* %a00, align 8
  %div88 = fdiv double %70, %71
  store double %div88, double* @m_X1, align 8
  store double 0.000000e+00, double* @m_X2, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %if.then.79
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.39, %for.end.36
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 6
  %73 = load i32, i32* %type, align 4
  %cmp91 = icmp eq i32 %73, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.90
  %74 = load double, double* @m_X1, align 8
  store double %74, double* @Pm_X1, align 8
  %75 = load double, double* @m_X2, align 8
  store double %75, double* @Pm_X2, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.90
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define double @ComputeFrameMAD() #0 {
entry:
  %TotalMAD = alloca double, align 8
  %i = alloca i32, align 4
  store double 0.000000e+00, double* %TotalMAD, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 136
  %2 = load i32, i32* %Frame_Total_Number_MB, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MADofMB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 131
  %5 = load double*, double** %MADofMB, align 8
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %TotalMAD, align 8
  %add = fadd double %7, %6
  store double %add, double* %TotalMAD, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 136
  %10 = load i32, i32* %Frame_Total_Number_MB1, align 4
  %conv = sitofp i32 %10 to double
  %11 = load double, double* %TotalMAD, align 8
  %div = fdiv double %11, %conv
  store double %div, double* %TotalMAD, align 8
  %12 = load double, double* %TotalMAD, align 8
  ret double %12
}

; Function Attrs: nounwind uwtable
define void @updateMADModel() #0 {
entry:
  %n_windowSize = alloca i32, align 4
  %i = alloca i32, align 4
  %error = alloca [20 x double], align 16
  %std = alloca double, align 8
  %threshold = alloca double, align 8
  %m_Nc = alloca i32, align 4
  store double 0.000000e+00, double* %std, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 127
  %1 = load i32, i32* %NumberofCodedPFrame, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.127

if.then:                                          ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 139
  %3 = load i32, i32* %BasicUnit, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 136
  %5 = load i32, i32* %Frame_Total_Number_MB, align 4
  %cmp1 = icmp eq i32 %3, %5
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 127
  %7 = load i32, i32* %NumberofCodedPFrame3, align 4
  store i32 %7, i32* %m_Nc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofCodedPFrame4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 127
  %9 = load i32, i32* %NumberofCodedPFrame4, align 4
  %10 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* @CodedBasicUnit, align 4
  %add = add nsw i32 %mul, %11
  store i32 %add, i32* %m_Nc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 19, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp5 = icmp sgt i32 %12, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i32 0, i64 %idxprom
  %14 = load double, double* %arrayidx, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i32 0, i64 %idxprom6
  store double %14, double* %arrayidx7, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i32 0, i64 %idxprom8
  %17 = load double, double* %arrayidx9, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i32 0, i64 %idxprom10
  store double %17, double* %arrayidx11, align 8
  %19 = load i32, i32* %i, align 4
  %sub12 = sub nsw i32 %19, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom13
  %20 = load double, double* %arrayidx14, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom15
  store double %20, double* %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load double, double* @CurrentFrameMAD, align 8
  store double %23, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i32 0, i64 0), align 8
  %24 = load double, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i32 0, i64 0), align 8
  store double %24, double* getelementptr inbounds ([21 x double], [21 x double]* @PictureMAD, i32 0, i64 0), align 8
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 139
  %26 = load i32, i32* %BasicUnit17, align 4
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 136
  %28 = load i32, i32* %Frame_Total_Number_MB18, align 4
  %cmp19 = icmp eq i32 %26, %28
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %for.end
  %29 = load double, double* getelementptr inbounds ([21 x double], [21 x double]* @PictureMAD, i32 0, i64 1), align 8
  store double %29, double* getelementptr inbounds ([21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 0), align 8
  br label %if.end.35

if.else.21:                                       ; preds = %for.end
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 91
  %31 = load i32, i32* %PicInterlace, align 4
  %cmp22 = icmp eq i32 %31, 2
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.21
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 92
  %33 = load i32, i32* %MbInterlace, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else.21
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %FieldControl = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 134
  %35 = load i32, i32* %FieldControl, align 4
  %cmp23 = icmp eq i32 %35, 1
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %land.lhs.true
  %36 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %sub25 = sub nsw i32 %36, 1
  %37 = load i32, i32* @NumberofBasicUnit, align 4
  %sub26 = sub nsw i32 %sub25, %37
  %idxprom27 = sext i32 %sub26 to i64
  %38 = load double*, double** @FCBUPFMAD, align 8
  %arrayidx28 = getelementptr inbounds double, double* %38, i64 %idxprom27
  %39 = load double, double* %arrayidx28, align 8
  store double %39, double* getelementptr inbounds ([21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 0), align 8
  br label %if.end.34

if.else.29:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %40 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %sub30 = sub nsw i32 %40, 1
  %41 = load i32, i32* @NumberofBasicUnit, align 4
  %sub31 = sub nsw i32 %sub30, %41
  %idxprom32 = sext i32 %sub31 to i64
  %42 = load double*, double** @BUPFMAD, align 8
  %arrayidx33 = getelementptr inbounds double, double* %42, i64 %idxprom32
  %43 = load double, double* %arrayidx33, align 8
  store double %43, double* getelementptr inbounds ([21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 0), align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.29, %if.then.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.20
  %44 = load double, double* @PMADPictureC1, align 8
  store double %44, double* @MADPictureC1, align 8
  %45 = load double, double* @PMADPictureC2, align 8
  store double %45, double* @MADPictureC2, align 8
  %46 = load double, double* @CurrentFrameMAD, align 8
  %47 = load double, double* @PreviousFrameMAD, align 8
  %cmp36 = fcmp ogt double %46, %47
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.35
  %48 = load double, double* @PreviousFrameMAD, align 8
  %49 = load double, double* @CurrentFrameMAD, align 8
  %div = fdiv double %48, %49
  %mul37 = fmul double %div, 2.000000e+01
  %conv = fptosi double %mul37 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.35
  %50 = load double, double* @CurrentFrameMAD, align 8
  %51 = load double, double* @PreviousFrameMAD, align 8
  %div38 = fdiv double %50, %51
  %mul39 = fmul double %div38, 2.000000e+01
  %conv40 = fptosi double %mul39 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv40, %cond.false ]
  store i32 %cond, i32* %n_windowSize, align 4
  %52 = load i32, i32* %n_windowSize, align 4
  %53 = load i32, i32* %m_Nc, align 4
  %sub41 = sub nsw i32 %53, 1
  %cmp42 = icmp slt i32 %52, %sub41
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end
  %54 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.47

cond.false.45:                                    ; preds = %cond.end
  %55 = load i32, i32* %m_Nc, align 4
  %sub46 = sub nsw i32 %55, 1
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi i32 [ %54, %cond.true.44 ], [ %sub46, %cond.false.45 ]
  store i32 %cond48, i32* %n_windowSize, align 4
  %56 = load i32, i32* %n_windowSize, align 4
  %cmp49 = icmp slt i32 %56, 1
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.47
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.47
  %57 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi i32 [ 1, %cond.true.51 ], [ %57, %cond.false.52 ]
  store i32 %cond54, i32* %n_windowSize, align 4
  %58 = load i32, i32* %n_windowSize, align 4
  %59 = load i32, i32* @MADm_windowSize, align 4
  %add55 = add nsw i32 %59, 1
  %cmp56 = icmp slt i32 %58, %add55
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.53
  %60 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.61

cond.false.59:                                    ; preds = %cond.end.53
  %61 = load i32, i32* @MADm_windowSize, align 4
  %add60 = add nsw i32 %61, 1
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.58
  %cond62 = phi i32 [ %60, %cond.true.58 ], [ %add60, %cond.false.59 ]
  store i32 %cond62, i32* %n_windowSize, align 4
  %62 = load i32, i32* %n_windowSize, align 4
  %cmp63 = icmp slt i32 20, %62
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.61
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.61
  %63 = load i32, i32* %n_windowSize, align 4
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ 20, %cond.true.65 ], [ %63, %cond.false.66 ]
  store i32 %cond68, i32* %n_windowSize, align 4
  %64 = load i32, i32* %n_windowSize, align 4
  store i32 %64, i32* @MADm_windowSize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.75, %cond.end.67
  %65 = load i32, i32* %i, align 4
  %cmp70 = icmp slt i32 %65, 20
  br i1 %cmp70, label %for.body.72, label %for.end.76

for.body.72:                                      ; preds = %for.cond.69
  %66 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %66 to i64
  %arrayidx74 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 %idxprom73
  store i32 0, i32* %arrayidx74, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.72
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.69

for.end.76:                                       ; preds = %for.cond.69
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 6
  %69 = load i32, i32* %type, align 4
  %cmp77 = icmp eq i32 %69, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.end.76
  %70 = load double, double* @CurrentFrameMAD, align 8
  store double %70, double* @PreviousFrameMAD, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %for.end.76
  %71 = load i32, i32* %n_windowSize, align 4
  call void @MADModelEstimator(i32 %71)
  store i32 0, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.100, %if.end.80
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %n_windowSize, align 4
  %cmp82 = icmp slt i32 %72, %73
  br i1 %cmp82, label %for.body.84, label %for.end.102

for.body.84:                                      ; preds = %for.cond.81
  %74 = load double, double* @MADPictureC1, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %75 to i64
  %arrayidx86 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom85
  %76 = load double, double* %arrayidx86, align 8
  %mul87 = fmul double %74, %76
  %77 = load double, double* @MADPictureC2, align 8
  %add88 = fadd double %mul87, %77
  %78 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %78 to i64
  %arrayidx90 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i32 0, i64 %idxprom89
  %79 = load double, double* %arrayidx90, align 8
  %sub91 = fsub double %add88, %79
  %80 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %80 to i64
  %arrayidx93 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom92
  store double %sub91, double* %arrayidx93, align 8
  %81 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %81 to i64
  %arrayidx95 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom94
  %82 = load double, double* %arrayidx95, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %83 to i64
  %arrayidx97 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom96
  %84 = load double, double* %arrayidx97, align 8
  %mul98 = fmul double %82, %84
  %85 = load double, double* %std, align 8
  %add99 = fadd double %85, %mul98
  store double %add99, double* %std, align 8
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.84
  %86 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %86, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.81

for.end.102:                                      ; preds = %for.cond.81
  %87 = load i32, i32* %n_windowSize, align 4
  %cmp103 = icmp eq i32 %87, 2
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %for.end.102
  br label %cond.end.109

cond.false.106:                                   ; preds = %for.end.102
  %88 = load double, double* %std, align 8
  %89 = load i32, i32* %n_windowSize, align 4
  %conv107 = sitofp i32 %89 to double
  %div108 = fdiv double %88, %conv107
  %call = call double @sqrt(double %div108) #4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.106, %cond.true.105
  %cond110 = phi double [ 0.000000e+00, %cond.true.105 ], [ %call, %cond.false.106 ]
  store double %cond110, double* %threshold, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.124, %cond.end.109
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %n_windowSize, align 4
  %cmp112 = icmp slt i32 %90, %91
  br i1 %cmp112, label %for.body.114, label %for.end.126

for.body.114:                                     ; preds = %for.cond.111
  %92 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %92 to i64
  %arrayidx116 = getelementptr inbounds [20 x double], [20 x double]* %error, i32 0, i64 %idxprom115
  %93 = load double, double* %arrayidx116, align 8
  %call117 = call double @fabs(double %93) #5
  %94 = load double, double* %threshold, align 8
  %cmp118 = fcmp ogt double %call117, %94
  br i1 %cmp118, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %for.body.114
  %95 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %95 to i64
  %arrayidx122 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 %idxprom121
  store i32 1, i32* %arrayidx122, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %for.body.114
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %96 = load i32, i32* %i, align 4
  %inc125 = add nsw i32 %96, 1
  store i32 %inc125, i32* %i, align 4
  br label %for.cond.111

for.end.126:                                      ; preds = %for.cond.111
  store i32 0, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 0), align 4
  %97 = load i32, i32* %n_windowSize, align 4
  call void @MADModelEstimator(i32 %97)
  br label %if.end.127

if.end.127:                                       ; preds = %for.end.126, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @MADModelEstimator(i32 %n_windowSize) #0 {
entry:
  %n_windowSize.addr = alloca i32, align 4
  %n_realSize = alloca i32, align 4
  %i = alloca i32, align 4
  %oneSampleQ = alloca double, align 8
  %a00 = alloca double, align 8
  %a01 = alloca double, align 8
  %a10 = alloca double, align 8
  %a11 = alloca double, align 8
  %b0 = alloca double, align 8
  %b1 = alloca double, align 8
  %MatrixValue = alloca double, align 8
  %estimateX2 = alloca i32, align 4
  store i32 %n_windowSize, i32* %n_windowSize.addr, align 4
  %0 = load i32, i32* %n_windowSize.addr, align 4
  store i32 %0, i32* %n_realSize, align 4
  store double 0.000000e+00, double* %a00, align 8
  store double 0.000000e+00, double* %a01, align 8
  store double 0.000000e+00, double* %a10, align 8
  store double 0.000000e+00, double* %a11, align 8
  store double 0.000000e+00, double* %b0, align 8
  store double 0.000000e+00, double* %b1, align 8
  store i32 0, i32* %estimateX2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n_windowSize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %n_realSize, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %n_realSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* @MADPictureC2, align 8
  store double 0.000000e+00, double* @MADPictureC1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.11, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_windowSize.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body.3, label %for.end.13

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %for.body.3
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i32 0, i64 %idxprom8
  %12 = load double, double* %arrayidx9, align 8
  store double %12, double* %oneSampleQ, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %for.body.3
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %13 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.1

for.end.13:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %for.end.13
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n_windowSize.addr, align 4
  %cmp15 = icmp slt i32 %14, %15
  br i1 %cmp15, label %for.body.16, label %for.end.36

for.body.16:                                      ; preds = %for.cond.14
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i32 0, i64 %idxprom17
  %17 = load double, double* %arrayidx18, align 8
  %18 = load double, double* %oneSampleQ, align 8
  %cmp19 = fcmp une double %17, %18
  br i1 %cmp19, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body.16
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %estimateX2, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true, %for.body.16
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 %idxprom25
  %22 = load i32, i32* %arrayidx26, align 4
  %tobool27 = icmp ne i32 %22, 0
  br i1 %tobool27, label %if.end.33, label %if.then.28

if.then.28:                                       ; preds = %if.end.24
  %23 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i32 0, i64 %idxprom29
  %24 = load double, double* %arrayidx30, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom31
  %26 = load double, double* %arrayidx32, align 8
  %27 = load i32, i32* %n_realSize, align 4
  %conv = sitofp i32 %27 to double
  %mul = fmul double %26, %conv
  %div = fdiv double %24, %mul
  %28 = load double, double* @MADPictureC1, align 8
  %add = fadd double %28, %div
  store double %add, double* @MADPictureC1, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %if.end.24
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %29 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  %30 = load i32, i32* %n_realSize, align 4
  %cmp37 = icmp sge i32 %30, 1
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.88

land.lhs.true.39:                                 ; preds = %for.end.36
  %31 = load i32, i32* %estimateX2, align 4
  %tobool40 = icmp ne i32 %31, 0
  br i1 %tobool40, label %if.then.41, label %if.end.88

if.then.41:                                       ; preds = %land.lhs.true.39
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.70, %if.then.41
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %n_windowSize.addr, align 4
  %cmp43 = icmp slt i32 %32, %33
  br i1 %cmp43, label %for.body.45, label %for.end.72

for.body.45:                                      ; preds = %for.cond.42
  %34 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i32 0, i64 %idxprom46
  %35 = load i32, i32* %arrayidx47, align 4
  %tobool48 = icmp ne i32 %35, 0
  br i1 %tobool48, label %if.end.69, label %if.then.49

if.then.49:                                       ; preds = %for.body.45
  %36 = load double, double* %a00, align 8
  %add50 = fadd double %36, 1.000000e+00
  store double %add50, double* %a00, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom51
  %38 = load double, double* %arrayidx52, align 8
  %39 = load double, double* %a01, align 8
  %add53 = fadd double %39, %38
  store double %add53, double* %a01, align 8
  %40 = load double, double* %a01, align 8
  store double %40, double* %a10, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %41 to i64
  %arrayidx55 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom54
  %42 = load double, double* %arrayidx55, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %43 to i64
  %arrayidx57 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom56
  %44 = load double, double* %arrayidx57, align 8
  %mul58 = fmul double %42, %44
  %45 = load double, double* %a11, align 8
  %add59 = fadd double %45, %mul58
  store double %add59, double* %a11, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %46 to i64
  %arrayidx61 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i32 0, i64 %idxprom60
  %47 = load double, double* %arrayidx61, align 8
  %48 = load double, double* %b0, align 8
  %add62 = fadd double %48, %47
  store double %add62, double* %b0, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %49 to i64
  %arrayidx64 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i32 0, i64 %idxprom63
  %50 = load double, double* %arrayidx64, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %51 to i64
  %arrayidx66 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i32 0, i64 %idxprom65
  %52 = load double, double* %arrayidx66, align 8
  %mul67 = fmul double %50, %52
  %53 = load double, double* %b1, align 8
  %add68 = fadd double %53, %mul67
  store double %add68, double* %b1, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.49, %for.body.45
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %54 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %54, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.42

for.end.72:                                       ; preds = %for.cond.42
  %55 = load double, double* %a00, align 8
  %56 = load double, double* %a11, align 8
  %mul73 = fmul double %55, %56
  %57 = load double, double* %a01, align 8
  %58 = load double, double* %a10, align 8
  %mul74 = fmul double %57, %58
  %sub = fsub double %mul73, %mul74
  store double %sub, double* %MatrixValue, align 8
  %59 = load double, double* %MatrixValue, align 8
  %call = call double @fabs(double %59) #5
  %cmp75 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %for.end.72
  %60 = load double, double* %b0, align 8
  %61 = load double, double* %a11, align 8
  %mul78 = fmul double %60, %61
  %62 = load double, double* %b1, align 8
  %63 = load double, double* %a01, align 8
  %mul79 = fmul double %62, %63
  %sub80 = fsub double %mul78, %mul79
  %64 = load double, double* %MatrixValue, align 8
  %div81 = fdiv double %sub80, %64
  store double %div81, double* @MADPictureC2, align 8
  %65 = load double, double* %b1, align 8
  %66 = load double, double* %a00, align 8
  %mul82 = fmul double %65, %66
  %67 = load double, double* %b0, align 8
  %68 = load double, double* %a10, align 8
  %mul83 = fmul double %67, %68
  %sub84 = fsub double %mul82, %mul83
  %69 = load double, double* %MatrixValue, align 8
  %div85 = fdiv double %sub84, %69
  store double %div85, double* @MADPictureC1, align 8
  br label %if.end.87

if.else:                                          ; preds = %for.end.72
  %70 = load double, double* %b0, align 8
  %71 = load double, double* %a01, align 8
  %div86 = fdiv double %70, %71
  store double %div86, double* @MADPictureC1, align 8
  store double 0.000000e+00, double* @MADPictureC2, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else, %if.then.77
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true.39, %for.end.36
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 6
  %73 = load i32, i32* %type, align 4
  %cmp89 = icmp eq i32 %73, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.88
  %74 = load double, double* @MADPictureC1, align 8
  store double %74, double* @PMADPictureC1, align 8
  %75 = load double, double* @MADPictureC2, align 8
  store double %75, double* @PMADPictureC2, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.88
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
