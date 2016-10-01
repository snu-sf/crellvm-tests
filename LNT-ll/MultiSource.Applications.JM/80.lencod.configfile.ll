; ModuleID = './MultiSource.Applications.JM/80.lencod.configfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.Mapping = type { i8*, i8*, i32, double, i32, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, i32***, i32***, i32****, i32****, %struct.Picture*, %struct.Slice*, %struct.macroblock*, i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double**, double***, i32***, double**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }

@.str = private unnamed_addr constant [11 x i8] c"ProfileIDC\00", align 1
@configinput = common global %struct.InputParameters zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"LevelIDC\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"FrameRate\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"IDRIntraEnable\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ResendSPS\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"StartFrame\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"IntraPeriod\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"EnableOpenGOP\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"FramesToBeEncoded\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"QPISlice\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"QPPSlice\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"QPBSlice\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"FrameSkip\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"DisableSubpelME\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SearchRange\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"NumberReferenceFrames\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"PList0References\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"BList0References\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"BList1References\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Log2MaxFNumMinus4\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Log2MaxPOCLsbMinus4\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"GenerateMultiplePPS\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Generate_SEIVUI\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"SEIMessageText\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ResendPPS\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"SourceWidth\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SourceHeight\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"MbLineIntraUpdate\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"SliceMode\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"SliceArgument\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"UseConstrainedIntraPred\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"InputFile\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"InputHeaderLength\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"ReconFile\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"TraceFile\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"DisposableP\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"DispPQPOffset\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"NumberBFrames\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"PReplaceBSlice\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"BRefPicQPOffset\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"DirectModeType\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"DirectInferenceFlag\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"SPPicturePeriodicity\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"QPSPSlice\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"QPSP2Slice\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"SI_FRAMES\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"SP_output\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"SP_output_name\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"SP2_FRAMES\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"SP2_input_name1\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"SP2_input_name2\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"SymbolMode\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"OutFileMode\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"PartitionMode\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"InterSearch16x16\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"InterSearch16x8\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"InterSearch8x16\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"InterSearch8x8\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"InterSearch8x4\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"InterSearch4x8\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"InterSearch4x4\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"IntraDisableInterOnly\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"Intra4x4ParDisable\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"Intra4x4DiagDisable\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Intra4x4DirDisable\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Intra16x16ParDisable\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Intra16x16PlaneDisable\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"EnableIPCM\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"ChromaIntraDisable\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"RestrictSearchRange\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"LastFrameNumber\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"ChangeQPI\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"ChangeQPP\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"ChangeQPB\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"ChangeQPBSRefOffset\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"ChangeQPStart\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"RDOptimization\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"CtxAdptLagrangeMult\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"FastCrIntraDecision\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"DisableThresholding\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"DisableBSkipRDO\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"LossRateA\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"LossRateB\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"LossRateC\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"NumberOfDecoders\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"RestrictRefFrames\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"NumberofLeakyBuckets\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"LeakyBucketRateFile\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"LeakyBucketParamFile\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"PicInterlace\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"MbInterlace\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"IntraBottom\00", align 1
@.str.93 = private unnamed_addr constant [42 x i8] c"NumberFramesInEnhancementLayerSubSequence\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"NumberOfFrameInSecondIGOP\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"RandomIntraMBRefresh\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"WeightedPrediction\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"WeightedBiprediction\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"UseWeightedReferenceME\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"RDPictureDecision\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"RDPictureIntra\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"RDPSliceWeightOnly\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"RDPSliceBTest\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"RDBSliceWeightOnly\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"SkipIntraInInterSlices\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"BReferencePictures\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"HierarchicalCoding\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"HierarchyLevelQPEnable\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"ExplicitHierarchyFormat\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"ReferenceReorder\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"PocMemoryManagement\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"BiPredMotionEstimation\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"BiPredMERefinements\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"BiPredMESearchRange\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"BiPredMESubPel\00", align 1
@.str.115 = private unnamed_addr constant [25 x i8] c"LoopFilterParametersFlag\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"LoopFilterDisable\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"LoopFilterAlphaC0Offset\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"LoopFilterBetaOffset\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"SparePictureOption\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"SparePictureDetectionThr\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"SparePicturePercentageThr\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"num_slice_groups_minus1\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"slice_group_map_type\00", align 1
@.str.124 = private unnamed_addr constant [34 x i8] c"slice_group_change_direction_flag\00", align 1
@.str.125 = private unnamed_addr constant [31 x i8] c"slice_group_change_rate_minus1\00", align 1
@.str.126 = private unnamed_addr constant [25 x i8] c"SliceGroupConfigFileName\00", align 1
@.str.127 = private unnamed_addr constant [20 x i8] c"UseRedundantPicture\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"NumRedundantHierarchy\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"PrimaryGOPLength\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"NumRefPrimary\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"PicOrderCntType\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"ContextInitMethod\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"FixedModelNumber\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"Transform8x8Mode\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"ReportFrameStats\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"DisplayEncParams\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"Verbose\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"RateControlEnable\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"InitialQP\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"BasicUnit\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"ChannelType\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"RCUpdateMode\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"RCISliceBitRatio\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"RCBSliceBitRatio0\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"RCBSliceBitRatio1\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"RCBSliceBitRatio2\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"RCBSliceBitRatio3\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"RCBSliceBitRatio4\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"RCBoverPRatio\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"RCIoverPRatio\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"QmatrixFile\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"ScalingMatrixPresentFlag\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag0\00", align 1
@.str.155 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag1\00", align 1
@.str.156 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag2\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag3\00", align 1
@.str.158 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag4\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag5\00", align 1
@.str.160 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag6\00", align 1
@.str.161 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag7\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"SearchMode\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"UMHexDSR\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"UMHexScale\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"EPZSPattern\00", align 1
@.str.166 = private unnamed_addr constant [19 x i8] c"EPZSDualRefinement\00", align 1
@.str.167 = private unnamed_addr constant [20 x i8] c"EPZSFixedPredictors\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"EPZSTemporal\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c"EPZSSpatialMem\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"EPZSMinThresScale\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"EPZSMaxThresScale\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"EPZSMedThresScale\00", align 1
@.str.173 = private unnamed_addr constant [13 x i8] c"EPZSSubPelME\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"EPZSSubPelMEBiPred\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"EPZSSubPelGrid\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"EPZSSubPelThresScale\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"ChromaQPOffset\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"BitDepthLuma\00", align 1
@.str.179 = private unnamed_addr constant [15 x i8] c"BitDepthChroma\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"YUVFormat\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"RGBInput\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"CbQPOffset\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"CrQPOffset\00", align 1
@.str.184 = private unnamed_addr constant [32 x i8] c"QPPrimeYZeroTransformBypassFlag\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"UseExplicitLambdaParams\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"FixedLambdaPslice\00", align 1
@.str.187 = private unnamed_addr constant [18 x i8] c"FixedLambdaBslice\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"FixedLambdaIslice\00", align 1
@.str.189 = private unnamed_addr constant [19 x i8] c"FixedLambdaSPslice\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"FixedLambdaSIslice\00", align 1
@.str.191 = private unnamed_addr constant [21 x i8] c"FixedLambdaRefBslice\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"LambdaWeightPslice\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"LambdaWeightBslice\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"LambdaWeightIslice\00", align 1
@.str.195 = private unnamed_addr constant [20 x i8] c"LambdaWeightSPslice\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c"LambdaWeightSIslice\00", align 1
@.str.197 = private unnamed_addr constant [22 x i8] c"LambdaWeightRefBslice\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"QOffsetMatrixFile\00", align 1
@.str.199 = private unnamed_addr constant [24 x i8] c"OffsetMatrixPresentFlag\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"EarlySkipEnable\00", align 1
@.str.201 = private unnamed_addr constant [21 x i8] c"SelectiveIntraEnable\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"AdaptiveRounding\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"AdaptRndPeriod\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"AdaptRndChroma\00", align 1
@.str.205 = private unnamed_addr constant [20 x i8] c"AdaptRndWFactorIRef\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"AdaptRndWFactorPRef\00", align 1
@.str.207 = private unnamed_addr constant [20 x i8] c"AdaptRndWFactorBRef\00", align 1
@.str.208 = private unnamed_addr constant [21 x i8] c"AdaptRndWFactorINRef\00", align 1
@.str.209 = private unnamed_addr constant [21 x i8] c"AdaptRndWFactorPNRef\00", align 1
@.str.210 = private unnamed_addr constant [21 x i8] c"AdaptRndWFactorBNRef\00", align 1
@.str.211 = private unnamed_addr constant [22 x i8] c"AdaptRndCrWFactorIRef\00", align 1
@.str.212 = private unnamed_addr constant [22 x i8] c"AdaptRndCrWFactorPRef\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"AdaptRndCrWFactorBRef\00", align 1
@.str.214 = private unnamed_addr constant [23 x i8] c"AdaptRndCrWFactorINRef\00", align 1
@.str.215 = private unnamed_addr constant [23 x i8] c"AdaptRndCrWFactorPNRef\00", align 1
@.str.216 = private unnamed_addr constant [23 x i8] c"AdaptRndCrWFactorBNRef\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"VUISupport\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"ChromaMCBuffer\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"ChromaMEEnable\00", align 1
@.str.220 = private unnamed_addr constant [17 x i8] c"MEDistortionFPel\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"MEDistortionHPel\00", align 1
@.str.222 = private unnamed_addr constant [17 x i8] c"MEDistortionQPel\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"MDDistortion\00", align 1
@Map = global [225 x %struct.Mapping] [%struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* bitcast (%struct.InputParameters* @configinput to i8*), i32 0, double 8.800000e+01, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4), i32 0, double 2.100000e+01, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4080), i32 2, double 3.000000e+01, i32 1, double 0.000000e+00, double 1.000000e+02 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1568), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2088), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1572), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1560), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1564), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 8), i32 0, double 1.000000e+00, i32 2, double 1.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 12), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 16), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2104), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 20), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 24), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 28), i32 0, double 1.600000e+01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 32), i32 0, double 1.000000e+00, i32 1, double 1.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 36), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 40), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 44), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 48), i32 0, double 0.000000e+00, i32 1, double -1.000000e+00, double 1.200000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 52), i32 0, double 2.000000e+00, i32 1, double -1.000000e+00, double 1.200000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1576), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1580), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1584), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2092), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 56), i32 0, double 1.760000e+02, i32 2, double 1.600000e+01, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 60), i32 0, double 1.440000e+02, i32 2, double 1.600000e+01, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 68), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 264), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 268), i32 0, double 1.000000e+00, i32 2, double 1.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 272), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 280), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 276), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 536), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 792), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1048), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5752), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5756), i32 0, double 0.000000e+00, i32 0, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2096), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2100), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2108), i32 0, double 0.000000e+00, i32 0, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2112), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2116), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2136), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2140), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2144), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2148), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2156), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2160), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2152), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2416), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2672), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4008), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4012), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4016), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4020), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4024), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4028), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4032), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4036), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4040), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4044), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4048), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4052), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4056), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4060), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4064), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4068), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4076), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4072), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4140), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4144), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4160), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4148), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4152), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4164), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4156), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4168), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4172), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4176), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4180), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4184), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4716), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4720), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4724), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4728), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4732), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4188), i32 0, double 2.000000e+00, i32 1, double 2.000000e+00, double 2.550000e+02 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4192), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4448), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4704), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4708), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4712), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4736), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4740), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4744), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2928), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2932), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2936), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2940), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2944), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2948), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2952), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2956), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2960), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2964), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2968), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2972), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2976), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4000), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4004), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2120), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2124), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 5.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2128), i32 0, double 8.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2132), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4748), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4752), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4756), i32 0, double 0.000000e+00, i32 1, double -6.000000e+00, double 6.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4760), i32 0, double 0.000000e+00, i32 1, double -6.000000e+00, double 6.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4764), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4768), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4772), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+02 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5032), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 7.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5036), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 6.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5072), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5076), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4776), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5084), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5760), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5764), i32 0, double 1.000000e+00, i32 1, double 1.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5768), i32 0, double 1.000000e+00, i32 1, double 1.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5088), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5092), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5096), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5100), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5104), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5108), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5112), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5116), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5120), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5124), i32 0, double 0.000000e+00, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5128), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5132), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5136), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 4.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5160), i32 2, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5168), i32 2, double 5.000000e-01, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5176), i32 2, double 2.500000e-01, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5184), i32 2, double 2.500000e-01, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5192), i32 2, double 2.500000e-01, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5200), i32 2, double 2.500000e-01, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5152), i32 2, double 4.500000e-01, i32 1, double 0.000000e+00, double 1.000000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5144), i32 2, double 3.800000e+00, i32 1, double 0.000000e+00, double 1.000000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1304), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5208), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5212), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5216), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5220), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5224), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5228), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5232), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5236), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5240), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5244), i32 0, double 0.000000e+00, i32 1, double -1.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5248), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5252), i32 0, double 1.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4088), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 5.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4092), i32 0, double 3.000000e+00, i32 1, double 0.000000e+00, double 6.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4096), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4100), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4104), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4108), i32 0, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4112), i32 0, double 2.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4116), i32 0, double 1.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4124), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4128), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4120), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4132), i32 0, double 2.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4136), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5256), i32 0, double 8.000000e+00, i32 1, double 8.000000e+00, double 1.200000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5260), i32 0, double 8.000000e+00, i32 1, double 8.000000e+00, double 1.200000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 64), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5272), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5276), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5280), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5284), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5288), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5344), i32 2, double 1.000000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5352), i32 2, double 1.000000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5360), i32 2, double 1.000000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5368), i32 2, double 1.000000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5376), i32 2, double 1.000000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5384), i32 2, double 1.000000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5296), i32 2, double 6.800000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5304), i32 2, double 2.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5312), i32 2, double 6.500000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5320), i32 2, double 1.500000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5328), i32 2, double 6.500000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5336), i32 2, double 1.500000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5392), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5648), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5744), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5748), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5652), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5656), i32 0, double 1.600000e+01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5660), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5692), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5684), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5688), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5672), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5664), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5668), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5732), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5724), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5728), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5712), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5704), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5708), i32 0, double 4.000000e+00, i32 1, double 0.000000e+00, double 4.096000e+03 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2084), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5772), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5776), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5780), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5784), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5788), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5792), i32 0, double 2.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* null, i8* null, i32 -1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.224 = private unnamed_addr constant [956 x i8] c"\0A   lencod [-h] [-d defenc.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\0A\0A## Parameters\0A\0A## Options\0A   -h :  prints function usage\0A   -d :  use <defenc.cfg> as default file for parameter initializations.\0A         If not used then file defaults to encoder.cfg in local directory.\0A   -f :  read <curencM.cfg> for reseting selected encoder parameters.\0A         Multiple files could be used that set different parameters\0A   -p :  Set parameter <EncParamM> to <EncValueM>.\0A         See default encoder.cfg file for description of all parameters.\0A\0A## Supported video file formats\0A   RAW:  .yuv -> YUV 4:2:0\0A\0A## Examples of usage:\0A   lencod\0A   lencod  -h\0A   lencod  -d default.cfg\0A   lencod  -f curenc1.cfg\0A   lencod  -f curenc1.cfg -p InputFile=\22e:\5Cdata\5Ccontainer_qcif_30.yuv\22 -p SourceWidth=176 -p SourceHeight=144\0A   lencod  -f curenc1.cfg -p FramesToBeEncoded=30 -p QPISlice=28 -p QPPSlice=28 -p QPBSlice=30\0A\00", align 1
@.str.225 = private unnamed_addr constant [12 x i8] c"encoder.cfg\00", align 1
@.str.226 = private unnamed_addr constant [31 x i8] c"Setting Default Parameters...\0A\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.228 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.229 = private unnamed_addr constant [22 x i8] c"Parsing Configfile %s\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str.230 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.231 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.232 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.233 = private unnamed_addr constant [19 x i8] c"Configure: content\00", align 1
@.str.234 = private unnamed_addr constant [33 x i8] c"Parsing command line string '%s'\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.236 = private unnamed_addr constant [79 x i8] c"Error in command line, ac %d, around string '%s', missing -f or -p parameters?\00", align 1
@input = external global %struct.InputParameters*, align 8
@.str.237 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.238 = private unnamed_addr constant [35 x i8] c"Cannot open configuration file %s.\00", align 1
@.str.239 = private unnamed_addr constant [39 x i8] c"Cannot fseek in configuration file %s.\00", align 1
@.str.240 = private unnamed_addr constant [71 x i8] c"Unreasonable Filesize %ld reported by ftell for configuration file %s.\00", align 1
@.str.241 = private unnamed_addr constant [26 x i8] c"GetConfigFileContent: buf\00", align 1
@FirstFrameIn2ndIGOP = external global i32, align 4
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@imgUV_org_bot = common global i16*** null, align 8
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@direct_ref_idx = common global i8*** null, align 8
@direct_pdir = common global i8** null, align 8
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@intras = common global i32 0, align 4
@frame_ctr = common global [5 x i32] zeroinitializer, align 16
@frame_no = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@tot_time = common global i64 0, align 8
@b8_ipredmode8x8 = common global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i8] zeroinitializer, align 16
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_trace = common global %struct._IO_FILE* null, align 8
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@mb16x16_cost_frame = common global double* null, align 8
@Bytes_After_Header = common global i32 0, align 4
@encode_one_macroblock = common global void ()* null, align 8
@lrec = common global i32** null, align 8
@lrec_uv = common global i32*** null, align 8
@si_frame_indicator = common global i32 0, align 4
@sp2_frame_indicator = common global i32 0, align 4
@number_sp2_frames = common global i32 0, align 4
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@imgY_tmp = common global i16** null, align 8
@imgUV_tmp = common global [2 x i16**] zeroinitializer, align 16
@frameNuminGOP = common global i32 0, align 4
@redundant_coding = common global i32 0, align 4
@key_frame = common global i32 0, align 4
@redundant_ref_idx = common global i32 0, align 4
@img_pad_size_uv_x = common global i32 0, align 4
@img_pad_size_uv_y = common global i32 0, align 4
@chroma_mask_mv_y = common global i8 0, align 1
@chroma_mask_mv_x = common global i8 0, align 1
@chroma_shift_y = common global i32 0, align 4
@chroma_shift_x = common global i32 0, align 4
@shift_cr_x = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@.str.242 = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.243 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.244 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each line.\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.246 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.247 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.249 = private unnamed_addr constant [57 x i8] c"Unknown value type in the map definition of configfile.h\00", align 1
@.str.250 = private unnamed_addr constant [56 x i8] c"******************************************************\0A\00", align 1
@.str.251 = private unnamed_addr constant [56 x i8] c"*               Encoder Parameters                   *\0A\00", align 1
@.str.252 = private unnamed_addr constant [19 x i8] c"Parameter %s = %d\0A\00", align 1
@.str.253 = private unnamed_addr constant [19 x i8] c"Parameter %s = %s\0A\00", align 1
@.str.254 = private unnamed_addr constant [21 x i8] c"Parameter %s = %.2f\0A\00", align 1
@.str.255 = private unnamed_addr constant [94 x i8] c" NumberReferenceFrames=%d and Log2MaxFNumMinus4=%d may lead to an invalid value of frame_num.\00", align 1
@.str.256 = private unnamed_addr constant [88 x i8] c"log2_max_pic_order_cnt_lsb_minus4 might not be sufficient for encoding. Increase value.\00", align 1
@.str.257 = private unnamed_addr constant [66 x i8] c"Number of B-frames %d can not exceed the number of frames skipped\00", align 1
@.str.258 = private unnamed_addr constant [56 x i8] c"Unsupported direct mode=%d, use TEMPORAL=0 or SPATIAL=1\00", align 1
@.str.259 = private unnamed_addr constant [55 x i8] c"\0ADirectInferenceFlag set to 1 due to interlace coding.\00", align 1
@.str.260 = private unnamed_addr constant [67 x i8] c"Incorrect value %d for IntraBottom. Use 0 (disable) or 1 (enable).\00", align 1
@.str.261 = private unnamed_addr constant [50 x i8] c"Unsupported symbol mode=%d, use UVLC=0 or CABAC=1\00", align 1
@.str.262 = private unnamed_addr constant [29 x i8] c"Input file %s does not exist\00", align 1
@.str.263 = private unnamed_addr constant [19 x i8] c"Error open file %s\00", align 1
@img = external global %struct.ImageParameters*, align 8
@.str.264 = private unnamed_addr constant [52 x i8] c"even number of lines required for interlaced coding\00", align 1
@.str.265 = private unnamed_addr constant [64 x i8] c"Warning: Automatic cropping activated: Coded frame Size: %dx%d\0A\00", align 1
@.str.266 = private unnamed_addr constant [47 x i8] c"Warning: slice border within macroblock pair. \00", align 1
@.str.267 = private unnamed_addr constant [25 x i8] c"Using %d MBs per slice.\0A\00", align 1
@.str.268 = private unnamed_addr constant [35 x i8] c"PatchInp: input->run_length_minus1\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"%*[^\0A]\00", align 1
@.str.270 = private unnamed_addr constant [26 x i8] c"PatchInp: input->top_left\00", align 1
@.str.271 = private unnamed_addr constant [30 x i8] c"PatchInp: input->bottom_right\00", align 1
@.str.272 = private unnamed_addr constant [32 x i8] c"PatchInp: input->slice_group_id\00", align 1
@.str.273 = private unnamed_addr constant [48 x i8] c"Error read slice group information from file %s\00", align 1
@.str.274 = private unnamed_addr constant [64 x i8] c"ReferenceReorder Not supported with Interlace encoding methods\0A\00", align 1
@.str.275 = private unnamed_addr constant [67 x i8] c"PocMemoryManagement not supported with Interlace encoding methods\0A\00", align 1
@.str.276 = private unnamed_addr constant [92 x i8] c"Unsupported PicInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2\00", align 1
@.str.277 = private unnamed_addr constant [115 x i8] c"Unsupported MbInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2 or frame MB pair only=3\00", align 1
@.str.278 = private unnamed_addr constant [55 x i8] c"MB AFF is not compatible with non-rd-optimized coding.\00", align 1
@.str.279 = private unnamed_addr constant [58 x i8] c"Fast Mode Decision methods does not support FREX Profiles\00", align 1
@.str.280 = private unnamed_addr constant [108 x i8] c"MEDistortionQPel=2, MEDistortionHPel=0, MEDistortionFPel=0 is not allowed when SearchMode is set to 1 or 2.\00", align 1
@.str.281 = private unnamed_addr constant [49 x i8] c"NumFramesInELSubSeq (%d) is out of range [0,%d).\00", align 1
@.str.282 = private unnamed_addr constant [66 x i8] c"Enhanced GOP is not supported in bitstream mode and RTP mode yet.\00", align 1
@.str.283 = private unnamed_addr constant [42 x i8] c"AFF is not compatible with spare picture.\00", align 1
@.str.284 = private unnamed_addr constant [64 x i8] c"Only RTP output mode is compatible with spare picture features.\00", align 1
@.str.285 = private unnamed_addr constant [66 x i8] c"Weighted prediction coding is not supported for MB AFF currently.\00", align 1
@.str.286 = private unnamed_addr constant [70 x i8] c"Enhanced GOP is not supported in weighted prediction coding mode yet.\00", align 1
@.str.287 = private unnamed_addr constant [59 x i8] c"Frame size in macroblocks must be a multiple of BasicUnit.\00", align 1
@.str.288 = private unnamed_addr constant [41 x i8] c"Use RC_MODE_1 only for all-intra coding.\00", align 1
@.str.289 = private unnamed_addr constant [91 x i8] c"Stored B pictures combined with IDR pictures only supported in Picture Order Count type 0\0A\00", align 1
@.str.290 = private unnamed_addr constant [45 x i8] c"temporal direct needs at least 2 ref frames\0A\00", align 1
@.str.291 = private unnamed_addr constant [52 x i8] c"\0AThe new 8x8 mode is not implemented for sp-frames.\00", align 1
@.str.292 = private unnamed_addr constant [61 x i8] c"\0ATransform8x8Mode may be used only with ProfileIDC %d to %d.\00", align 1
@.str.293 = private unnamed_addr constant [69 x i8] c"\0AScalingMatrixPresentFlag may be used only with ProfileIDC %d to %d.\00", align 1
@.str.294 = private unnamed_addr constant [84 x i8] c"\0AFRExt Profile(YUV Format) Error!\0AYUV422 can be used only with ProfileIDC %d or %d\0A\00", align 1
@.str.295 = private unnamed_addr constant [79 x i8] c"\0AFRExt Profile(YUV Format) Error!\0AYUV444 can be used only with ProfileIDC %d.\0A\00", align 1
@.str.296 = private unnamed_addr constant [59 x i8] c"\0ABiPredMESearchRange must be smaller or equal SearchRange.\00", align 1
@.str.297 = private unnamed_addr constant [59 x i8] c"\0AChromaMCBuffer must be set to 1 if ChromaMEEnable is set.\00", align 1
@.str.298 = private unnamed_addr constant [57 x i8] c"\0AChromaMEEnable cannot be used with YUV400 color format.\00", align 1
@.str.299 = private unnamed_addr constant [59 x i8] c"Open GOP currently not supported for Field coded pictures.\00", align 1
@.str.300 = private unnamed_addr constant [57 x i8] c"Redundant pictures cannot be used with interlaced tools.\00", align 1
@.str.301 = private unnamed_addr constant [58 x i8] c"Redundant pictures cannot be used with RDPictureDecision.\00", align 1
@.str.302 = private unnamed_addr constant [49 x i8] c"Redundant pictures cannot be used with B frames.\00", align 1
@.str.303 = private unnamed_addr constant [72 x i8] c"PrimaryGOPLength must be equal or greater than 2^NumRedundantHierarchy.\00", align 1
@.str.304 = private unnamed_addr constant [73 x i8] c"NumberReferenceFrames must be greater than or equal to PrimaryGOPLength.\00", align 1
@.str.305 = private unnamed_addr constant [83 x i8] c"\0AWarning: B slices used but only one reference allocated within reference buffer.\0A\00", align 1
@.str.306 = private unnamed_addr constant [56 x i8] c"         Performance may be considerably compromised! \0A\00", align 1
@.str.307 = private unnamed_addr constant [66 x i8] c"         2 or more references recommended for use with B slices.\0A\00", align 1
@.str.308 = private unnamed_addr constant [60 x i8] c"\0AWarning: Hierarchical coding or Referenced B slices used.\0A\00", align 1
@.str.309 = private unnamed_addr constant [62 x i8] c"         Make sure that you have allocated enough references\0A\00", align 1
@.str.310 = private unnamed_addr constant [59 x i8] c"         in reference buffer to achieve best performance.\0A\00", align 1
@.str.311 = private unnamed_addr constant [90 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range.\00", align 1
@.str.312 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range.\00", align 1
@.str.313 = private unnamed_addr constant [92 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %d.\00", align 1
@.str.314 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f.\00", align 1
@.str.315 = private unnamed_addr constant [72 x i8] c"Profile must be baseline(66)/main(77)/extended(88) or FRExt (%d to %d).\00", align 1
@.str.316 = private unnamed_addr constant [61 x i8] c"Data partitioning and CABAC is not supported in any profile.\00", align 1
@.str.317 = private unnamed_addr constant [57 x i8] c"Redundant pictures are only allowed in Baseline profile.\00", align 1
@.str.318 = private unnamed_addr constant [55 x i8] c"Data partitioning is only allowed in extended profile.\00", align 1
@.str.319 = private unnamed_addr constant [85 x i8] c"\0A----------------------------------------------------------------------------------\0A\00", align 1
@.str.320 = private unnamed_addr constant [118 x i8] c"\0A Warning: ChromaIntraDisable and FastCrIntraDecision cannot be combined together.\0A Using only Chroma Intra DC mode.\0A\00", align 1
@.str.321 = private unnamed_addr constant [38 x i8] c"B slices are not allowed in baseline.\00", align 1
@.str.322 = private unnamed_addr constant [41 x i8] c"SP pictures are not allowed in baseline.\00", align 1
@.str.323 = private unnamed_addr constant [48 x i8] c"Weighted prediction is not allowed in baseline.\00", align 1
@.str.324 = private unnamed_addr constant [34 x i8] c"CABAC is not allowed in baseline.\00", align 1
@.str.325 = private unnamed_addr constant [37 x i8] c"SP pictures are not allowed in main.\00", align 1
@.str.326 = private unnamed_addr constant [56 x i8] c"num_slice_groups_minus1>0 (FMO) is not allowed in main.\00", align 1
@.str.327 = private unnamed_addr constant [58 x i8] c"direct_8x8_inference flag must be equal to 1 in extended.\00", align 1
@.str.328 = private unnamed_addr constant [34 x i8] c"CABAC is not allowed in extended.\00", align 1
@.str.329 = private unnamed_addr constant [107 x i8] c"\0AWarning: LevelIDC 3.0 and above require direct_8x8_inference to be set to 1. Please check your settings.\0A\00", align 1
@.str.330 = private unnamed_addr constant [103 x i8] c"\0AInterlace modes only supported for LevelIDC in the range of 2.1 and 4.1. Please check your settings.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @JMHelpExit() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([956 x i8], [956 x i8]* @.str.224, i32 0, i32 0))
  call void @exit(i32 -1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @Configure(i32 %ac, i8** %av) #0 {
entry:
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %content = alloca i8*, align 8
  %CLcount = alloca i32, align 4
  %ContentLen = alloca i32, align 4
  %NumberParams = alloca i32, align 4
  %filename = alloca i8*, align 8
  %source = alloca i8*, align 8
  %destin = alloca i8*, align 8
  store i32 %ac, i32* %ac.addr, align 4
  store i8** %av, i8*** %av.addr, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.225, i32 0, i32 0), i8** %filename, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.InputParameters* @configinput to i8*), i8 0, i64 5800, i32 8, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.226, i32 0, i32 0))
  %call1 = call i32 @InitEncoderParams()
  store i32 1, i32* %CLcount, align 4
  %0 = load i32, i32* %ac.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %av.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call2 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i32 0, i32 0), i64 2) #8
  %cmp3 = icmp eq i32 0, %call2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  call void @JMHelpExit()
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %3 = load i32, i32* %ac.addr, align 4
  %cmp6 = icmp sge i32 %3, 3
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end.5
  %4 = load i8**, i8*** %av.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i32 0), i64 2) #8
  %cmp10 = icmp eq i32 0, %call9
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.7
  %6 = load i8**, i8*** %av.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %6, i64 2
  %7 = load i8*, i8** %arrayidx12, align 8
  store i8* %7, i8** %filename, align 8
  store i32 3, i32* %CLcount, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.7
  %8 = load i8**, i8*** %av.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i32 0, i32 0), i64 2) #8
  %cmp16 = icmp eq i32 0, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  call void @JMHelpExit()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.5
  %10 = load i8*, i8** %filename, align 8
  %call20 = call i8* @mybasename(i8* %10)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.229, i32 0, i32 0), i8* %call20)
  %11 = load i8*, i8** %filename, align 8
  %call22 = call i8* @GetConfigFileContent(i8* %11)
  store i8* %call22, i8** %content, align 8
  %12 = load i8*, i8** %content, align 8
  %cmp23 = icmp eq i8* null, %12
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.19
  %13 = load i8*, i8** %content, align 8
  %14 = load i8*, i8** %content, align 8
  %call26 = call i64 @strlen(i8* %14) #8
  %conv = trunc i64 %call26 to i32
  call void @ParseContent(i8* %13, i32 %conv)
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0))
  %15 = load i8*, i8** %content, align 8
  call void @free(i8* %15) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end.124, %if.end.25
  %16 = load i32, i32* %CLcount, align 4
  %17 = load i32, i32* %ac.addr, align 4
  %cmp28 = icmp slt i32 %16, %17
  br i1 %cmp28, label %while.body, label %while.end.125

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %CLcount, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8**, i8*** %av.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx30, align 8
  %call31 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i32 0, i32 0), i64 2) #8
  %cmp32 = icmp eq i32 0, %call31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.body
  call void @JMHelpExit()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %while.body
  %21 = load i32, i32* %CLcount, align 4
  %idxprom36 = sext i32 %21 to i64
  %22 = load i8**, i8*** %av.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %22, i64 %idxprom36
  %23 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.231, i32 0, i32 0), i64 2) #8
  %cmp39 = icmp eq i32 0, %call38
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.35
  %24 = load i32, i32* %CLcount, align 4
  %add = add nsw i32 %24, 1
  %idxprom42 = sext i32 %add to i64
  %25 = load i8**, i8*** %av.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %25, i64 %idxprom42
  %26 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i8* @GetConfigFileContent(i8* %26)
  store i8* %call44, i8** %content, align 8
  %27 = load i8*, i8** %content, align 8
  %cmp45 = icmp eq i8* null, %27
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.41
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.41
  %28 = load i32, i32* %CLcount, align 4
  %add49 = add nsw i32 %28, 1
  %idxprom50 = sext i32 %add49 to i64
  %29 = load i8**, i8*** %av.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %29, i64 %idxprom50
  %30 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.229, i32 0, i32 0), i8* %30)
  %31 = load i8*, i8** %content, align 8
  %32 = load i8*, i8** %content, align 8
  %call53 = call i64 @strlen(i8* %32) #8
  %conv54 = trunc i64 %call53 to i32
  call void @ParseContent(i8* %31, i32 %conv54)
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0))
  %33 = load i8*, i8** %content, align 8
  call void @free(i8* %33) #3
  %34 = load i32, i32* %CLcount, align 4
  %add56 = add nsw i32 %34, 2
  store i32 %add56, i32* %CLcount, align 4
  br label %if.end.124

if.else:                                          ; preds = %if.end.35
  %35 = load i32, i32* %CLcount, align 4
  %idxprom57 = sext i32 %35 to i64
  %36 = load i8**, i8*** %av.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %36, i64 %idxprom57
  %37 = load i8*, i8** %arrayidx58, align 8
  %call59 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.232, i32 0, i32 0), i64 2) #8
  %cmp60 = icmp eq i32 0, %call59
  br i1 %cmp60, label %if.then.62, label %if.else.119

if.then.62:                                       ; preds = %if.else
  %38 = load i32, i32* %CLcount, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %CLcount, align 4
  store i32 0, i32* %ContentLen, align 4
  %39 = load i32, i32* %CLcount, align 4
  store i32 %39, i32* %NumberParams, align 4
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.72, %if.then.62
  %40 = load i32, i32* %NumberParams, align 4
  %41 = load i32, i32* %ac.addr, align 4
  %cmp64 = icmp slt i32 %40, %41
  br i1 %cmp64, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.63
  %42 = load i32, i32* %NumberParams, align 4
  %idxprom66 = sext i32 %42 to i64
  %43 = load i8**, i8*** %av.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %43, i64 %idxprom66
  %44 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %45 to i32
  %cmp70 = icmp ne i32 %conv69, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.63
  %46 = phi i1 [ false, %while.cond.63 ], [ %cmp70, %land.rhs ]
  br i1 %46, label %while.body.72, label %while.end

while.body.72:                                    ; preds = %land.end
  %47 = load i32, i32* %NumberParams, align 4
  %inc73 = add nsw i32 %47, 1
  store i32 %inc73, i32* %NumberParams, align 4
  %idxprom74 = sext i32 %47 to i64
  %48 = load i8**, i8*** %av.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %48, i64 %idxprom74
  %49 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i64 @strlen(i8* %49) #8
  %50 = load i32, i32* %ContentLen, align 4
  %conv77 = sext i32 %50 to i64
  %add78 = add i64 %conv77, %call76
  %conv79 = trunc i64 %add78 to i32
  store i32 %conv79, i32* %ContentLen, align 4
  br label %while.cond.63

while.end:                                        ; preds = %land.end
  %51 = load i32, i32* %ContentLen, align 4
  %add80 = add nsw i32 %51, 1000
  store i32 %add80, i32* %ContentLen, align 4
  %52 = load i32, i32* %ContentLen, align 4
  %conv81 = sext i32 %52 to i64
  %call82 = call noalias i8* @malloc(i64 %conv81) #3
  store i8* %call82, i8** %content, align 8
  %cmp83 = icmp eq i8* %call82, null
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.233, i32 0, i32 0))
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %while.end
  %53 = load i8*, i8** %content, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %arrayidx87, align 1
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.end.112, %if.end.86
  %54 = load i32, i32* %CLcount, align 4
  %55 = load i32, i32* %NumberParams, align 4
  %cmp89 = icmp slt i32 %54, %55
  br i1 %cmp89, label %while.body.91, label %while.end.114

while.body.91:                                    ; preds = %while.cond.88
  %56 = load i32, i32* %CLcount, align 4
  %idxprom92 = sext i32 %56 to i64
  %57 = load i8**, i8*** %av.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %57, i64 %idxprom92
  %58 = load i8*, i8** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %58, i64 0
  store i8* %arrayidx94, i8** %source, align 8
  %59 = load i8*, i8** %content, align 8
  %call95 = call i64 @strlen(i8* %59) #8
  %60 = load i8*, i8** %content, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %60, i64 %call95
  store i8* %arrayidx96, i8** %destin, align 8
  br label %while.cond.97

while.cond.97:                                    ; preds = %if.end.110, %while.body.91
  %61 = load i8*, i8** %source, align 8
  %62 = load i8, i8* %61, align 1
  %conv98 = sext i8 %62 to i32
  %cmp99 = icmp ne i32 %conv98, 0
  br i1 %cmp99, label %while.body.101, label %while.end.112

while.body.101:                                   ; preds = %while.cond.97
  %63 = load i8*, i8** %source, align 8
  %64 = load i8, i8* %63, align 1
  %conv102 = sext i8 %64 to i32
  %cmp103 = icmp eq i32 %conv102, 61
  br i1 %cmp103, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %while.body.101
  %65 = load i8*, i8** %destin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %destin, align 8
  store i8 32, i8* %65, align 1
  %66 = load i8*, i8** %destin, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr106, i8** %destin, align 8
  store i8 61, i8* %66, align 1
  %67 = load i8*, i8** %destin, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr107, i8** %destin, align 8
  store i8 32, i8* %67, align 1
  br label %if.end.110

if.else.108:                                      ; preds = %while.body.101
  %68 = load i8*, i8** %source, align 8
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %destin, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr109, i8** %destin, align 8
  store i8 %69, i8* %70, align 1
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.105
  %71 = load i8*, i8** %source, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr111, i8** %source, align 8
  br label %while.cond.97

while.end.112:                                    ; preds = %while.cond.97
  %72 = load i8*, i8** %destin, align 8
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* %CLcount, align 4
  %inc113 = add nsw i32 %73, 1
  store i32 %inc113, i32* %CLcount, align 4
  br label %while.cond.88

while.end.114:                                    ; preds = %while.cond.88
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i32 0, i32 0))
  %74 = load i8*, i8** %content, align 8
  %75 = load i8*, i8** %content, align 8
  %call116 = call i64 @strlen(i8* %75) #8
  %conv117 = trunc i64 %call116 to i32
  call void @ParseContent(i8* %74, i32 %conv117)
  %76 = load i8*, i8** %content, align 8
  call void @free(i8* %76) #3
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0))
  br label %if.end.123

if.else.119:                                      ; preds = %if.else
  %77 = load i32, i32* %CLcount, align 4
  %78 = load i32, i32* %CLcount, align 4
  %idxprom120 = sext i32 %78 to i64
  %79 = load i8**, i8*** %av.addr, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %79, i64 %idxprom120
  %80 = load i8*, i8** %arrayidx121, align 8
  %call122 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.236, i32 0, i32 0), i32 %77, i8* %80) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.119, %while.end.114
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.48
  br label %while.cond

while.end.125:                                    ; preds = %while.cond
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.230, i32 0, i32 0))
  call void @PatchInp()
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %DisplayEncParams = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 155
  %82 = load i32, i32* %DisplayEncParams, align 4
  %tobool = icmp ne i32 %82, 0
  br i1 %tobool, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %while.end.125
  %call128 = call i32 @DisplayEncoderParams()
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %while.end.125
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @InitEncoderParams() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom
  %TokenName = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %TokenName, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom1
  %Type = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx2, i32 0, i32 2
  %3 = load i32, i32* %Type, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom4
  %Default = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx5, i32 0, i32 3
  %5 = load double, double* %Default, align 8
  %conv = fptosi double %5 to i32
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom6
  %Place = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx7, i32 0, i32 1
  %7 = load i8*, i8** %Place, align 8
  %8 = bitcast i8* %7 to i32*
  store i32 %conv, i32* %8, align 4
  br label %if.end.20

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom8
  %Type10 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx9, i32 0, i32 2
  %10 = load i32, i32* %Type10, align 4
  %cmp11 = icmp eq i32 %10, 2
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom14
  %Default16 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx15, i32 0, i32 3
  %12 = load double, double* %Default16, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom17
  %Place19 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx18, i32 0, i32 1
  %14 = load i8*, i8** %Place19, align 8
  %15 = bitcast i8* %14 to double*
  store double %12, double* %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #8
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i8* @GetConfigFileContent(i8* %Filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %Filename.addr = alloca i8*, align 8
  %FileSize = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca i8*, align 8
  store i8* %Filename, i8** %Filename.addr, align 8
  %0 = load i8*, i8** %Filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %cmp = icmp eq %struct._IO_FILE* null, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %Filename.addr, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.238, i32 0, i32 0), i8* %1) #3
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 2)
  %cmp3 = icmp ne i32 0, %call2
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %3 = load i8*, i8** %Filename.addr, align 8
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.239, i32 0, i32 0), i8* %3) #3
  store i8* null, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call7 = call i64 @ftell(%struct._IO_FILE* %4)
  store i64 %call7, i64* %FileSize, align 8
  %5 = load i64, i64* %FileSize, align 8
  %cmp8 = icmp slt i64 %5, 0
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %6 = load i64, i64* %FileSize, align 8
  %cmp9 = icmp sgt i64 %6, 60000
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.6
  %7 = load i64, i64* %FileSize, align 8
  %8 = load i8*, i8** %Filename.addr, align 8
  %call11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.240, i32 0, i32 0), i64 %7, i8* %8) #3
  store i8* null, i8** %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call13 = call i32 @fseek(%struct._IO_FILE* %9, i64 0, i32 0)
  %cmp14 = icmp ne i32 0, %call13
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %10 = load i8*, i8** %Filename.addr, align 8
  %call16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.239, i32 0, i32 0), i8* %10) #3
  store i8* null, i8** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %11 = load i64, i64* %FileSize, align 8
  %add = add nsw i64 %11, 1
  %call18 = call noalias i8* @malloc(i64 %add) #3
  store i8* %call18, i8** %buf, align 8
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.241, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.17
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %FileSize, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call22 = call i64 @fread(i8* %12, i64 1, i64 %13, %struct._IO_FILE* %14)
  store i64 %call22, i64* %FileSize, align 8
  %15 = load i64, i64* %FileSize, align 8
  %16 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %15
  store i8 0, i8* %arrayidx, align 1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load i8*, i8** %buf, align 8
  store i8* %18, i8** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.15, %if.then.10, %if.then.4, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

declare void @error(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ParseContent(i8* %buf, i32 %bufsize) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i32, align 4
  %items = alloca [10000 x i8*], align 16
  %MapIdx = alloca i32, align 4
  %item = alloca i32, align 4
  %InString = alloca i32, align 4
  %InItem = alloca i32, align 4
  %p = alloca i8*, align 8
  %bufend = alloca i8*, align 8
  %IntContent = alloca i32, align 4
  %DoubleContent = alloca double, align 8
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store i32 0, i32* %item, align 4
  store i32 0, i32* %InString, align 4
  store i32 0, i32* %InItem, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i32, i32* %bufsize.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8* %arrayidx, i8** %bufend, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8*, i8** %bufend, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end.32

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb.1
    i32 10, label %sw.bb.10
    i32 32, label %sw.bb.12
    i32 9, label %sw.bb.12
    i32 34, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %8 = load i8*, i8** %p, align 8
  store i8 0, i8* %8, align 1
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.8, %sw.bb.1
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp ne i32 %conv3, 10
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %bufend, align 8
  %cmp6 = icmp ult i8* %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %13 = phi i1 [ false, %while.cond.2 ], [ %cmp6, %land.rhs ]
  br i1 %13, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  store i32 0, i32* %InString, align 4
  store i32 0, i32* %InItem, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  store i32 0, i32* %InItem, align 4
  store i32 0, i32* %InString, align 4
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 0, i8* %15, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body, %while.body
  %16 = load i32, i32* %InString, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.12
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.12
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  store i8 0, i8* %18, align 1
  store i32 0, i32* %InItem, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %InString, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.else.21, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  %21 = load i8*, i8** %p, align 8
  %22 = load i32, i32* %item, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %item, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom19
  store i8* %21, i8** %arrayidx20, align 8
  %23 = load i32, i32* %InItem, align 4
  %neg = xor i32 %23, -1
  store i32 %neg, i32* %InItem, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %sw.bb.15
  store i32 0, i32* %InItem, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.18
  %24 = load i32, i32* %InString, align 4
  %neg23 = xor i32 %24, -1
  store i32 %neg23, i32* %InString, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %25 = load i32, i32* %InItem, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %if.end.30, label %if.then.25

if.then.25:                                       ; preds = %sw.default
  %26 = load i8*, i8** %p, align 8
  %27 = load i32, i32* %item, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, i32* %item, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom27
  store i8* %26, i8** %arrayidx28, align 8
  %28 = load i32, i32* %InItem, align 4
  %neg29 = xor i32 %28, -1
  store i32 %neg29, i32* %InItem, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %sw.default
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr31, i8** %p, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.30, %if.end.22, %if.end, %sw.bb.10, %while.end, %sw.bb
  br label %while.cond

while.end.32:                                     ; preds = %while.cond
  %30 = load i32, i32* %item, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %item, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.32
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %item, align 4
  %cmp33 = icmp slt i32 %31, %32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom35
  %34 = load i8*, i8** %arrayidx36, align 8
  %call = call i32 @ParameterNameToMapIndex(i8* %34)
  store i32 %call, i32* %MapIdx, align 4
  %cmp37 = icmp sgt i32 0, %call
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %35 to i64
  %arrayidx41 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom40
  %36 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.242, i32 0, i32 0), i8* %36) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %for.body
  %37 = load i32, i32* %i, align 4
  %add = add nsw i32 %37, 1
  %idxprom44 = sext i32 %add to i64
  %arrayidx45 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom44
  %38 = load i8*, i8** %arrayidx45, align 8
  %call46 = call i32 @strcasecmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.243, i32 0, i32 0), i8* %38) #8
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.43
  %call49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.244, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.43
  %39 = load i32, i32* %MapIdx, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom51
  %Type = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx52, i32 0, i32 2
  %40 = load i32, i32* %Type, align 4
  switch i32 %40, label %sw.default.99 [
    i32 0, label %sw.bb.53
    i32 1, label %sw.bb.71
    i32 2, label %sw.bb.80
  ]

sw.bb.53:                                         ; preds = %if.end.50
  %41 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %41, 2
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom55
  %42 = load i8*, i8** %arrayidx56, align 8
  %call57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i32 0, i32 0), i32* %IntContent) #3
  %cmp58 = icmp ne i32 1, %call57
  br i1 %cmp58, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %sw.bb.53
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom61
  %44 = load i8*, i8** %arrayidx62, align 8
  %45 = load i32, i32* %i, align 4
  %add63 = add nsw i32 %45, 2
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom64
  %46 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.246, i32 0, i32 0), i8* %44, i8* %46) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %sw.bb.53
  %47 = load i32, i32* %IntContent, align 4
  %48 = load i32, i32* %MapIdx, align 4
  %idxprom68 = sext i32 %48 to i64
  %arrayidx69 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom68
  %Place = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx69, i32 0, i32 1
  %49 = load i8*, i8** %Place, align 8
  %50 = bitcast i8* %49 to i32*
  store i32 %47, i32* %50, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i32 0, i32 0))
  br label %sw.epilog.100

sw.bb.71:                                         ; preds = %if.end.50
  %51 = load i32, i32* %MapIdx, align 4
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom72
  %Place74 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx73, i32 0, i32 1
  %52 = load i8*, i8** %Place74, align 8
  %53 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %53, 2
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom76
  %54 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i8* @strncpy(i8* %52, i8* %54, i64 256) #3
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i32 0, i32 0))
  br label %sw.epilog.100

sw.bb.80:                                         ; preds = %if.end.50
  %55 = load i32, i32* %i, align 4
  %add81 = add nsw i32 %55, 2
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom82
  %56 = load i8*, i8** %arrayidx83, align 8
  %call84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.248, i32 0, i32 0), double* %DoubleContent) #3
  %cmp85 = icmp ne i32 1, %call84
  br i1 %cmp85, label %if.then.87, label %if.end.94

if.then.87:                                       ; preds = %sw.bb.80
  %57 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %57 to i64
  %arrayidx89 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom88
  %58 = load i8*, i8** %arrayidx89, align 8
  %59 = load i32, i32* %i, align 4
  %add90 = add nsw i32 %59, 2
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* %items, i32 0, i64 %idxprom91
  %60 = load i8*, i8** %arrayidx92, align 8
  %call93 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.246, i32 0, i32 0), i8* %58, i8* %60) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.87, %sw.bb.80
  %61 = load double, double* %DoubleContent, align 8
  %62 = load i32, i32* %MapIdx, align 4
  %idxprom95 = sext i32 %62 to i64
  %arrayidx96 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom95
  %Place97 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx96, i32 0, i32 1
  %63 = load i8*, i8** %Place97, align 8
  %64 = bitcast i8* %63 to double*
  store double %61, double* %64, align 8
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i32 0, i32 0))
  br label %sw.epilog.100

sw.default.99:                                    ; preds = %if.end.50
  call void @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.249, i32 0, i32 0), i32 -1)
  br label %sw.epilog.100

sw.epilog.100:                                    ; preds = %sw.default.99, %if.end.94, %sw.bb.71, %if.end.67
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.100
  %65 = load i32, i32* %i, align 4
  %add101 = add nsw i32 %65, 3
  store i32 %add101, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %67 = bitcast %struct.InputParameters* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 5800, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal void @PatchInp() #0 {
entry:
  %bitdepth_qp_scale = alloca i32, align 4
  %sgfile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %frame_mb_only = alloca i32, align 4
  %mb_width = alloca i32, align 4
  %mb_height = alloca i32, align 4
  %mapunit_height = alloca i32, align 4
  %storedBplus1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 172
  %1 = load i32, i32* %BitDepthLuma, align 4
  %sub = sub nsw i32 %1, 8
  %mul = mul nsw i32 6, %sub
  store i32 %mul, i32* %bitdepth_qp_scale, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %sgfile, align 8
  %2 = load i32, i32* %bitdepth_qp_scale, align 4
  %call = call i32 @TestEncoderParams(i32 %2)
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FrameRate = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 92
  %4 = load double, double* %FrameRate, align 8
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FrameRate1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 92
  store double 3.000000e+01, double* %FrameRate1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 19
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  store i32 4, i32* %arrayidx2, align 4
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 19
  %arrayidx4 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  store i32 4, i32* %arrayidx5, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 19
  %arrayidx7 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size6, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 0
  store i32 4, i32* %arrayidx8, align 4
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 19
  %arrayidx10 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 1
  store i32 4, i32* %arrayidx11, align 4
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 19
  %arrayidx13 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size12, i32 0, i64 2
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 0
  store i32 4, i32* %arrayidx14, align 4
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 19
  %arrayidx16 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size15, i32 0, i64 2
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 1
  store i32 2, i32* %arrayidx17, align 4
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size18 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 19
  %arrayidx19 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size18, i32 0, i64 3
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx19, i32 0, i64 0
  store i32 2, i32* %arrayidx20, align 4
  %13 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size21 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %13, i32 0, i32 19
  %arrayidx22 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size21, i32 0, i64 3
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx22, i32 0, i64 1
  store i32 4, i32* %arrayidx23, align 4
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 19
  %arrayidx25 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size24, i32 0, i64 4
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx25, i32 0, i64 0
  store i32 2, i32* %arrayidx26, align 4
  %15 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %15, i32 0, i32 19
  %arrayidx28 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size27, i32 0, i64 4
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx28, i32 0, i64 1
  store i32 2, i32* %arrayidx29, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size30 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 19
  %arrayidx31 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size30, i32 0, i64 5
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx31, i32 0, i64 0
  store i32 2, i32* %arrayidx32, align 4
  %17 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size33 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %17, i32 0, i32 19
  %arrayidx34 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size33, i32 0, i64 5
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx34, i32 0, i64 1
  store i32 1, i32* %arrayidx35, align 4
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 19
  %arrayidx37 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size36, i32 0, i64 6
  %arrayidx38 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx37, i32 0, i64 0
  store i32 1, i32* %arrayidx38, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 19
  %arrayidx40 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size39, i32 0, i64 6
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx40, i32 0, i64 1
  store i32 2, i32* %arrayidx41, align 4
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size42 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 19
  %arrayidx43 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size42, i32 0, i64 7
  %arrayidx44 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx43, i32 0, i64 0
  store i32 1, i32* %arrayidx44, align 4
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size45 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 19
  %arrayidx46 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size45, i32 0, i64 7
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx46, i32 0, i64 1
  store i32 1, i32* %arrayidx47, align 4
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 20
  %arrayidx48 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut, i32 0, i64 0
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx48, i32 0, i64 0
  store i32 7, i32* %arrayidx49, align 4
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut50 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 20
  %arrayidx51 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut50, i32 0, i64 0
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx51, i32 0, i64 1
  store i32 6, i32* %arrayidx52, align 4
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 20
  %arrayidx54 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut53, i32 0, i64 1
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx54, i32 0, i64 0
  store i32 5, i32* %arrayidx55, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut56 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 20
  %arrayidx57 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut56, i32 0, i64 1
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx57, i32 0, i64 1
  store i32 4, i32* %arrayidx58, align 4
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut59 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 20
  %arrayidx60 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut59, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx60, i32 0, i64 3
  store i32 3, i32* %arrayidx61, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 20
  %arrayidx63 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut62, i32 0, i64 3
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx63, i32 0, i64 1
  store i32 2, i32* %arrayidx64, align 4
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blocktype_lut65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 20
  %arrayidx66 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %blocktype_lut65, i32 0, i64 3
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx66, i32 0, i64 3
  store i32 1, i32* %arrayidx67, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %if.end
  %29 = load i32, i32* %j, align 4
  %cmp68 = icmp slt i32 %29, 8
  br i1 %cmp68, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %for.body
  %30 = load i32, i32* %i, align 4
  %cmp70 = icmp slt i32 %30, 2
  br i1 %cmp70, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.69
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %32 to i64
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %part_size73 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 19
  %arrayidx74 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %part_size73, i32 0, i64 %idxprom72
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx74, i32 0, i64 %idxprom
  %34 = load i32, i32* %arrayidx75, align 4
  %mul76 = mul nsw i32 %34, 4
  %35 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %35 to i64
  %36 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %36 to i64
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 18
  %arrayidx79 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx79, i32 0, i64 %idxprom77
  store i32 %mul76, i32* %arrayidx80, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.71
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.69

for.end:                                          ; preds = %for.cond.69
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end
  %39 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %39, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 68
  %41 = load i32, i32* %BRefPictures, align 4
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.83
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 40
  %43 = load i32, i32* %successive_Bframe, align 4
  %add = add nsw i32 %43, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end.83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %storedBplus1, align 4
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Log2MaxFNumMinus4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 12
  %45 = load i32, i32* %Log2MaxFNumMinus4, align 4
  %cmp84 = icmp eq i32 %45, -1
  br i1 %cmp84, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %cond.end
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 2
  %47 = load i32, i32* %no_frames, align 4
  %48 = load i32, i32* %storedBplus1, align 4
  %mul86 = mul nsw i32 %47, %48
  %call87 = call i32 @CeilLog2(i32 %mul86)
  %sub88 = sub i32 %call87, 4
  %call89 = call i32 @iClip3(i32 0, i32 12, i32 %sub88)
  store i32 %call89, i32* @log2_max_frame_num_minus4, align 4
  br label %if.end.91

if.else:                                          ; preds = %cond.end
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Log2MaxFNumMinus490 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 12
  %50 = load i32, i32* %Log2MaxFNumMinus490, align 4
  store i32 %50, i32* @log2_max_frame_num_minus4, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.else, %if.then.85
  %51 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %cmp92 = icmp eq i32 %51, 0
  br i1 %cmp92, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %if.end.91
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 8
  %53 = load i32, i32* %num_ref_frames, align 4
  %cmp93 = icmp eq i32 %53, 16
  br i1 %cmp93, label %if.then.94, label %if.end.98

if.then.94:                                       ; preds = %land.lhs.true
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames95 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 8
  %55 = load i32, i32* %num_ref_frames95, align 4
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Log2MaxFNumMinus496 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 12
  %57 = load i32, i32* %Log2MaxFNumMinus496, align 4
  %call97 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.255, i32 0, i32 0), i32 %55, i32 %57) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.94, %land.lhs.true, %if.end.91
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Log2MaxPOCLsbMinus4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 13
  %59 = load i32, i32* %Log2MaxPOCLsbMinus4, align 4
  %cmp99 = icmp eq i32 %59, -1
  br i1 %cmp99, label %if.then.100, label %if.else.108

if.then.100:                                      ; preds = %if.end.98
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames101 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 2
  %61 = load i32, i32* %no_frames101, align 4
  %mul102 = mul nsw i32 2, %61
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 5
  %63 = load i32, i32* %jumpd, align 4
  %add103 = add nsw i32 %63, 1
  %mul104 = mul nsw i32 %mul102, %add103
  %call105 = call i32 @CeilLog2(i32 %mul104)
  %sub106 = sub i32 %call105, 4
  %call107 = call i32 @iClip3(i32 0, i32 12, i32 %sub106)
  store i32 %call107, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  br label %if.end.110

if.else.108:                                      ; preds = %if.end.98
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Log2MaxPOCLsbMinus4109 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 13
  %65 = load i32, i32* %Log2MaxPOCLsbMinus4109, align 4
  store i32 %65, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.100
  %66 = load i32, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4
  %add111 = add i32 %66, 3
  %shl = shl i32 1, %add111
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd112 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 5
  %68 = load i32, i32* %jumpd112, align 4
  %mul113 = mul nsw i32 %68, 4
  %cmp114 = icmp slt i32 %shl, %mul113
  br i1 %cmp114, label %land.lhs.true.115, label %if.end.119

land.lhs.true.115:                                ; preds = %if.end.110
  %69 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Log2MaxPOCLsbMinus4116 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %69, i32 0, i32 13
  %70 = load i32, i32* %Log2MaxPOCLsbMinus4116, align 4
  %cmp117 = icmp ne i32 %70, -1
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %land.lhs.true.115
  call void @error(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.256, i32 0, i32 0), i32 400)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %land.lhs.true.115, %if.end.110
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe120 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 40
  %72 = load i32, i32* %successive_Bframe120, align 4
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd121 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 5
  %74 = load i32, i32* %jumpd121, align 4
  %cmp122 = icmp sgt i32 %72, %74
  br i1 %cmp122, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %if.end.119
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe124 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 40
  %76 = load i32, i32* %successive_Bframe124, align 4
  %call125 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.257, i32 0, i32 0), i32 %76) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.123, %if.end.119
  %77 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe127 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %77, i32 0, i32 40
  %78 = load i32, i32* %successive_Bframe127, align 4
  %tobool128 = icmp ne i32 %78, 0
  br i1 %tobool128, label %land.lhs.true.129, label %if.end.137

land.lhs.true.129:                                ; preds = %if.end.126
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 44
  %80 = load i32, i32* %direct_spatial_mv_pred_flag, align 4
  %cmp130 = icmp ne i32 %80, 1
  br i1 %cmp130, label %land.lhs.true.131, label %if.end.137

land.lhs.true.131:                                ; preds = %land.lhs.true.129
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %direct_spatial_mv_pred_flag132 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 44
  %82 = load i32, i32* %direct_spatial_mv_pred_flag132, align 4
  %cmp133 = icmp ne i32 %82, 0
  br i1 %cmp133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %land.lhs.true.131
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %direct_spatial_mv_pred_flag135 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 44
  %84 = load i32, i32* %direct_spatial_mv_pred_flag135, align 4
  %call136 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.258, i32 0, i32 0), i32 %84) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %land.lhs.true.131, %land.lhs.true.129, %if.end.126
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 121
  %86 = load i32, i32* %PicInterlace, align 4
  %cmp138 = icmp sgt i32 %86, 0
  br i1 %cmp138, label %if.then.140, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.137
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 122
  %88 = load i32, i32* %MbInterlace, align 4
  %cmp139 = icmp sgt i32 %88, 0
  br i1 %cmp139, label %if.then.140, label %if.end.146

if.then.140:                                      ; preds = %lor.lhs.false, %if.end.137
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %directInferenceFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 45
  %90 = load i32, i32* %directInferenceFlag, align 4
  %cmp141 = icmp eq i32 %90, 0
  br i1 %cmp141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.then.140
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.259, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.then.140
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %directInferenceFlag145 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 45
  store i32 1, i32* %directInferenceFlag145, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.144, %lor.lhs.false
  %92 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace147 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %92, i32 0, i32 121
  %93 = load i32, i32* %PicInterlace147, align 4
  %cmp148 = icmp sgt i32 %93, 0
  br i1 %cmp148, label %if.then.149, label %if.end.158

if.then.149:                                      ; preds = %if.end.146
  %94 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraBottom = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %94, i32 0, i32 123
  %95 = load i32, i32* %IntraBottom, align 4
  %cmp150 = icmp ne i32 %95, 0
  br i1 %cmp150, label %land.lhs.true.151, label %if.end.157

land.lhs.true.151:                                ; preds = %if.then.149
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraBottom152 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 123
  %97 = load i32, i32* %IntraBottom152, align 4
  %cmp153 = icmp ne i32 %97, 1
  br i1 %cmp153, label %if.then.154, label %if.end.157

if.then.154:                                      ; preds = %land.lhs.true.151
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %IntraBottom155 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 123
  %99 = load i32, i32* %IntraBottom155, align 4
  %call156 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.260, i32 0, i32 0), i32 %99) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.154, %land.lhs.true.151, %if.then.149
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.146
  %100 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %100, i32 0, i32 74
  %101 = load i32, i32* %symbol_mode, align 4
  %cmp159 = icmp ne i32 %101, 0
  br i1 %cmp159, label %land.lhs.true.160, label %if.end.166

land.lhs.true.160:                                ; preds = %if.end.158
  %102 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode161 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %102, i32 0, i32 74
  %103 = load i32, i32* %symbol_mode161, align 4
  %cmp162 = icmp ne i32 %103, 1
  br i1 %cmp162, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %land.lhs.true.160
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode164 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 74
  %105 = load i32, i32* %symbol_mode164, align 4
  %call165 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.261, i32 0, i32 0), i32 %105) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %land.lhs.true.160, %if.end.158
  %106 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %106, i32 0, i32 25
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %infile, i32 0, i32 0
  %call167 = call i32 (i8*, i32, ...) @open64(i8* %arraydecay, i32 0)
  store i32 %call167, i32* @p_in, align 4
  %cmp168 = icmp eq i32 %call167, -1
  br i1 %cmp168, label %if.then.169, label %if.end.173

if.then.169:                                      ; preds = %if.end.166
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %infile170 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 25
  %arraydecay171 = getelementptr inbounds [256 x i8], [256 x i8]* %infile170, i32 0, i32 0
  %call172 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.262, i32 0, i32 0), i8* %arraydecay171) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %if.end.166
  %108 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReconFile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %108, i32 0, i32 27
  %arraydecay174 = getelementptr inbounds [256 x i8], [256 x i8]* %ReconFile, i32 0, i32 0
  %call175 = call i64 @strlen(i8* %arraydecay174) #8
  %cmp176 = icmp ugt i64 %call175, 0
  br i1 %cmp176, label %land.lhs.true.177, label %if.end.186

land.lhs.true.177:                                ; preds = %if.end.173
  %109 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReconFile178 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %109, i32 0, i32 27
  %arraydecay179 = getelementptr inbounds [256 x i8], [256 x i8]* %ReconFile178, i32 0, i32 0
  %call180 = call i32 (i8*, i32, ...) @open64(i8* %arraydecay179, i32 577, i32 384)
  store i32 %call180, i32* @p_dec, align 4
  %cmp181 = icmp eq i32 %call180, -1
  br i1 %cmp181, label %if.then.182, label %if.end.186

if.then.182:                                      ; preds = %land.lhs.true.177
  %110 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReconFile183 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %110, i32 0, i32 27
  %arraydecay184 = getelementptr inbounds [256 x i8], [256 x i8]* %ReconFile183, i32 0, i32 0
  %call185 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.263, i32 0, i32 0), i8* %arraydecay184) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.182, %land.lhs.true.177, %if.end.173
  %111 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %111, i32 0, i32 14
  %112 = load i32, i32* %img_width, align 4
  %rem = srem i32 %112, 16
  %cmp187 = icmp ne i32 %rem, 0
  br i1 %cmp187, label %if.then.188, label %if.else.192

if.then.188:                                      ; preds = %if.end.186
  %113 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width189 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %113, i32 0, i32 14
  %114 = load i32, i32* %img_width189, align 4
  %rem190 = srem i32 %114, 16
  %sub191 = sub nsw i32 16, %rem190
  %115 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %115, i32 0, i32 166
  store i32 %sub191, i32* %auto_crop_right, align 4
  br label %if.end.194

if.else.192:                                      ; preds = %if.end.186
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right193 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 166
  store i32 0, i32* %auto_crop_right193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.192, %if.then.188
  %117 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace195 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %117, i32 0, i32 121
  %118 = load i32, i32* %PicInterlace195, align 4
  %tobool196 = icmp ne i32 %118, 0
  br i1 %tobool196, label %if.then.200, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %if.end.194
  %119 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace198 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %119, i32 0, i32 122
  %120 = load i32, i32* %MbInterlace198, align 4
  %tobool199 = icmp ne i32 %120, 0
  br i1 %tobool199, label %if.then.200, label %if.else.215

if.then.200:                                      ; preds = %lor.lhs.false.197, %if.end.194
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 15
  %122 = load i32, i32* %img_height, align 4
  %rem201 = srem i32 %122, 2
  %cmp202 = icmp ne i32 %rem201, 0
  br i1 %cmp202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.200
  call void @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.264, i32 0, i32 0), i32 500)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %if.then.200
  %123 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height205 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %123, i32 0, i32 15
  %124 = load i32, i32* %img_height205, align 4
  %rem206 = srem i32 %124, 32
  %cmp207 = icmp ne i32 %rem206, 0
  br i1 %cmp207, label %if.then.208, label %if.else.212

if.then.208:                                      ; preds = %if.end.204
  %125 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height209 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %125, i32 0, i32 15
  %126 = load i32, i32* %img_height209, align 4
  %rem210 = srem i32 %126, 32
  %sub211 = sub nsw i32 32, %rem210
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 167
  store i32 %sub211, i32* %auto_crop_bottom, align 4
  br label %if.end.214

if.else.212:                                      ; preds = %if.end.204
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom213 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 167
  store i32 0, i32* %auto_crop_bottom213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.212, %if.then.208
  br label %if.end.227

if.else.215:                                      ; preds = %lor.lhs.false.197
  %129 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height216 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %129, i32 0, i32 15
  %130 = load i32, i32* %img_height216, align 4
  %rem217 = srem i32 %130, 16
  %cmp218 = icmp ne i32 %rem217, 0
  br i1 %cmp218, label %if.then.219, label %if.else.224

if.then.219:                                      ; preds = %if.else.215
  %131 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height220 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %131, i32 0, i32 15
  %132 = load i32, i32* %img_height220, align 4
  %rem221 = srem i32 %132, 16
  %sub222 = sub nsw i32 16, %rem221
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 167
  store i32 %sub222, i32* %auto_crop_bottom223, align 4
  br label %if.end.226

if.else.224:                                      ; preds = %if.else.215
  %134 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %134, i32 0, i32 167
  store i32 0, i32* %auto_crop_bottom225, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.224, %if.then.219
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.214
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 167
  %136 = load i32, i32* %auto_crop_bottom228, align 4
  %tobool229 = icmp ne i32 %136, 0
  br i1 %tobool229, label %if.then.233, label %lor.lhs.false.230

lor.lhs.false.230:                                ; preds = %if.end.227
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right231 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 166
  %138 = load i32, i32* %auto_crop_right231, align 4
  %tobool232 = icmp ne i32 %138, 0
  br i1 %tobool232, label %if.then.233, label %if.end.241

if.then.233:                                      ; preds = %lor.lhs.false.230, %if.end.227
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %140 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width234 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %140, i32 0, i32 14
  %141 = load i32, i32* %img_width234, align 4
  %142 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %142, i32 0, i32 166
  %143 = load i32, i32* %auto_crop_right235, align 4
  %add236 = add nsw i32 %141, %143
  %144 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height237 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %144, i32 0, i32 15
  %145 = load i32, i32* %img_height237, align 4
  %146 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %146, i32 0, i32 167
  %147 = load i32, i32* %auto_crop_bottom238, align 4
  %add239 = add nsw i32 %145, %147
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.265, i32 0, i32 0), i32 %add236, i32 %add239)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.233, %lor.lhs.false.230
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 21
  %149 = load i32, i32* %slice_mode, align 4
  %cmp242 = icmp eq i32 %149, 1
  br i1 %cmp242, label %land.lhs.true.243, label %if.end.262

land.lhs.true.243:                                ; preds = %if.end.241
  %150 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace244 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %150, i32 0, i32 122
  %151 = load i32, i32* %MbInterlace244, align 4
  %cmp245 = icmp ne i32 %151, 0
  br i1 %cmp245, label %if.then.246, label %if.end.262

if.then.246:                                      ; preds = %land.lhs.true.243
  %152 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %152, i32 0, i32 22
  %153 = load i32, i32* %slice_argument, align 4
  %rem247 = srem i32 %153, 2
  %cmp248 = icmp ne i32 %rem247, 0
  br i1 %cmp248, label %if.then.249, label %if.end.261

if.then.249:                                      ; preds = %if.then.246
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.266, i32 0, i32 0))
  %155 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument251 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %155, i32 0, i32 22
  %156 = load i32, i32* %slice_argument251, align 4
  %cmp252 = icmp sgt i32 %156, 1
  br i1 %cmp252, label %if.then.253, label %if.else.255

if.then.253:                                      ; preds = %if.then.249
  %157 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument254 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %157, i32 0, i32 22
  %158 = load i32, i32* %slice_argument254, align 4
  %dec = add nsw i32 %158, -1
  store i32 %dec, i32* %slice_argument254, align 4
  br label %if.end.258

if.else.255:                                      ; preds = %if.then.249
  %159 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument256 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %159, i32 0, i32 22
  %160 = load i32, i32* %slice_argument256, align 4
  %inc257 = add nsw i32 %160, 1
  store i32 %inc257, i32* %slice_argument256, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.255, %if.then.253
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %162 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_argument259 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %162, i32 0, i32 22
  %163 = load i32, i32* %slice_argument259, align 4
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.267, i32 0, i32 0), i32 %163)
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.258, %if.then.246
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %land.lhs.true.243, %if.end.241
  %164 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %164, i32 0, i32 140
  %165 = load i32, i32* %num_slice_groups_minus1, align 4
  %cmp263 = icmp ne i32 %165, 0
  br i1 %cmp263, label %land.lhs.true.264, label %if.end.408

land.lhs.true.264:                                ; preds = %if.end.262
  %166 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %166, i32 0, i32 141
  %167 = load i32, i32* %slice_group_map_type, align 4
  %cmp265 = icmp eq i32 %167, 0
  br i1 %cmp265, label %if.then.272, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %land.lhs.true.264
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type267 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 141
  %169 = load i32, i32* %slice_group_map_type267, align 4
  %cmp268 = icmp eq i32 %169, 2
  br i1 %cmp268, label %if.then.272, label %lor.lhs.false.269

lor.lhs.false.269:                                ; preds = %lor.lhs.false.266
  %170 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type270 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %170, i32 0, i32 141
  %171 = load i32, i32* %slice_group_map_type270, align 4
  %cmp271 = icmp eq i32 %171, 6
  br i1 %cmp271, label %if.then.272, label %if.end.408

if.then.272:                                      ; preds = %lor.lhs.false.269, %lor.lhs.false.266, %land.lhs.true.264
  %172 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SliceGroupConfigFileName = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %172, i32 0, i32 139
  %arraydecay273 = getelementptr inbounds [256 x i8], [256 x i8]* %SliceGroupConfigFileName, i32 0, i32 0
  %call274 = call i64 @strlen(i8* %arraydecay273) #8
  %cmp275 = icmp ugt i64 %call274, 0
  br i1 %cmp275, label %land.lhs.true.276, label %if.else.285

land.lhs.true.276:                                ; preds = %if.then.272
  %173 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SliceGroupConfigFileName277 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %173, i32 0, i32 139
  %arraydecay278 = getelementptr inbounds [256 x i8], [256 x i8]* %SliceGroupConfigFileName277, i32 0, i32 0
  %call279 = call %struct._IO_FILE* @fopen64(i8* %arraydecay278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i32 0, i32 0))
  store %struct._IO_FILE* %call279, %struct._IO_FILE** %sgfile, align 8
  %cmp280 = icmp eq %struct._IO_FILE* %call279, null
  br i1 %cmp280, label %if.then.281, label %if.else.285

if.then.281:                                      ; preds = %land.lhs.true.276
  %174 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SliceGroupConfigFileName282 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %174, i32 0, i32 139
  %arraydecay283 = getelementptr inbounds [256 x i8], [256 x i8]* %SliceGroupConfigFileName282, i32 0, i32 0
  %call284 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.263, i32 0, i32 0), i8* %arraydecay283) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.407

if.else.285:                                      ; preds = %land.lhs.true.276, %if.then.272
  %175 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type286 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %175, i32 0, i32 141
  %176 = load i32, i32* %slice_group_map_type286, align 4
  %cmp287 = icmp eq i32 %176, 0
  br i1 %cmp287, label %if.then.288, label %if.else.309

if.then.288:                                      ; preds = %if.else.285
  %177 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1289 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %177, i32 0, i32 140
  %178 = load i32, i32* %num_slice_groups_minus1289, align 4
  %add290 = add nsw i32 %178, 1
  %conv = sext i32 %add290 to i64
  %mul291 = mul i64 4, %conv
  %call292 = call noalias i8* @malloc(i64 %mul291) #3
  %179 = bitcast i8* %call292 to i32*
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %run_length_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 145
  store i32* %179, i32** %run_length_minus1, align 8
  %181 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %run_length_minus1293 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %181, i32 0, i32 145
  %182 = load i32*, i32** %run_length_minus1293, align 8
  %cmp294 = icmp eq i32* null, %182
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.then.288
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.268, i32 0, i32 0))
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.then.288
  store i32 0, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.306, %if.end.297
  %183 = load i32, i32* %i, align 4
  %184 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1299 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %184, i32 0, i32 140
  %185 = load i32, i32* %num_slice_groups_minus1299, align 4
  %cmp300 = icmp sle i32 %183, %185
  br i1 %cmp300, label %for.body.302, label %for.end.308

for.body.302:                                     ; preds = %for.cond.298
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %187 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %run_length_minus1303 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %187, i32 0, i32 145
  %188 = load i32*, i32** %run_length_minus1303, align 8
  %189 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %189 to i64
  %add.ptr = getelementptr inbounds i32, i32* %188, i64 %idx.ext
  %call304 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i32 0, i32 0), i32* %add.ptr)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0))
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.body.302
  %191 = load i32, i32* %i, align 4
  %inc307 = add nsw i32 %191, 1
  store i32 %inc307, i32* %i, align 4
  br label %for.cond.298

for.end.308:                                      ; preds = %for.cond.298
  br label %if.end.405

if.else.309:                                      ; preds = %if.else.285
  %192 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type310 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %192, i32 0, i32 141
  %193 = load i32, i32* %slice_group_map_type310, align 4
  %cmp311 = icmp eq i32 %193, 2
  br i1 %cmp311, label %if.then.313, label %if.else.350

if.then.313:                                      ; preds = %if.else.309
  %194 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1314 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %194, i32 0, i32 140
  %195 = load i32, i32* %num_slice_groups_minus1314, align 4
  %conv315 = sext i32 %195 to i64
  %mul316 = mul i64 4, %conv315
  %call317 = call noalias i8* @malloc(i64 %mul316) #3
  %196 = bitcast i8* %call317 to i32*
  %197 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %top_left = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %197, i32 0, i32 142
  store i32* %196, i32** %top_left, align 8
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1318 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 140
  %199 = load i32, i32* %num_slice_groups_minus1318, align 4
  %conv319 = sext i32 %199 to i64
  %mul320 = mul i64 4, %conv319
  %call321 = call noalias i8* @malloc(i64 %mul320) #3
  %200 = bitcast i8* %call321 to i32*
  %201 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bottom_right = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %201, i32 0, i32 143
  store i32* %200, i32** %bottom_right, align 8
  %202 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %top_left322 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %202, i32 0, i32 142
  %203 = load i32*, i32** %top_left322, align 8
  %cmp323 = icmp eq i32* null, %203
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.then.313
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.270, i32 0, i32 0))
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %if.then.313
  %204 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bottom_right327 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %204, i32 0, i32 143
  %205 = load i32*, i32** %bottom_right327, align 8
  %cmp328 = icmp eq i32* null, %205
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.326
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.271, i32 0, i32 0))
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %if.end.326
  store i32 0, i32* %i, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.347, %if.end.331
  %206 = load i32, i32* %i, align 4
  %207 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1333 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %207, i32 0, i32 140
  %208 = load i32, i32* %num_slice_groups_minus1333, align 4
  %cmp334 = icmp slt i32 %206, %208
  br i1 %cmp334, label %for.body.336, label %for.end.349

for.body.336:                                     ; preds = %for.cond.332
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %210 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %top_left337 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %210, i32 0, i32 142
  %211 = load i32*, i32** %top_left337, align 8
  %212 = load i32, i32* %i, align 4
  %idx.ext338 = sext i32 %212 to i64
  %add.ptr339 = getelementptr inbounds i32, i32* %211, i64 %idx.ext338
  %call340 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i32 0, i32 0), i32* %add.ptr339)
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %call341 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0))
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %215 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %bottom_right342 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %215, i32 0, i32 143
  %216 = load i32*, i32** %bottom_right342, align 8
  %217 = load i32, i32* %i, align 4
  %idx.ext343 = sext i32 %217 to i64
  %add.ptr344 = getelementptr inbounds i32, i32* %216, i64 %idx.ext343
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i32 0, i32 0), i32* %add.ptr344)
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %call346 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0))
  br label %for.inc.347

for.inc.347:                                      ; preds = %for.body.336
  %219 = load i32, i32* %i, align 4
  %inc348 = add nsw i32 %219, 1
  store i32 %inc348, i32* %i, align 4
  br label %for.cond.332

for.end.349:                                      ; preds = %for.cond.332
  br label %if.end.404

if.else.350:                                      ; preds = %if.else.309
  %220 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type351 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %220, i32 0, i32 141
  %221 = load i32, i32* %slice_group_map_type351, align 4
  %cmp352 = icmp eq i32 %221, 6
  br i1 %cmp352, label %if.then.354, label %if.end.403

if.then.354:                                      ; preds = %if.else.350
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace355 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 121
  %223 = load i32, i32* %PicInterlace355, align 4
  %tobool356 = icmp ne i32 %223, 0
  br i1 %tobool356, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.354
  %224 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace357 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %224, i32 0, i32 122
  %225 = load i32, i32* %MbInterlace357, align 4
  %tobool358 = icmp ne i32 %225, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.354
  %226 = phi i1 [ true, %if.then.354 ], [ %tobool358, %lor.rhs ]
  %lnot = xor i1 %226, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %frame_mb_only, align 4
  %227 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width359 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %227, i32 0, i32 14
  %228 = load i32, i32* %img_width359, align 4
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right360 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 166
  %230 = load i32, i32* %auto_crop_right360, align 4
  %add361 = add nsw i32 %228, %230
  %shr = ashr i32 %add361, 4
  store i32 %shr, i32* %mb_width, align 4
  %231 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height362 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %231, i32 0, i32 15
  %232 = load i32, i32* %img_height362, align 4
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom363 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 167
  %234 = load i32, i32* %auto_crop_bottom363, align 4
  %add364 = add nsw i32 %232, %234
  %shr365 = ashr i32 %add364, 4
  store i32 %shr365, i32* %mb_height, align 4
  %235 = load i32, i32* %mb_height, align 4
  %236 = load i32, i32* %frame_mb_only, align 4
  %sub366 = sub nsw i32 2, %236
  %div = sdiv i32 %235, %sub366
  store i32 %div, i32* %mapunit_height, align 4
  %237 = load i32, i32* %mapunit_height, align 4
  %conv367 = sext i32 %237 to i64
  %mul368 = mul i64 1, %conv367
  %238 = load i32, i32* %mb_width, align 4
  %conv369 = sext i32 %238 to i64
  %mul370 = mul i64 %mul368, %conv369
  %call371 = call noalias i8* @malloc(i64 %mul370) #3
  %239 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_id = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %239, i32 0, i32 144
  store i8* %call371, i8** %slice_group_id, align 8
  %240 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_id372 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %240, i32 0, i32 144
  %241 = load i8*, i8** %slice_group_id372, align 8
  %cmp373 = icmp eq i8* null, %241
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %lor.end
  call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.272, i32 0, i32 0))
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %lor.end
  store i32 0, i32* %i, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.400, %if.end.376
  %242 = load i32, i32* %i, align 4
  %243 = load i32, i32* %mapunit_height, align 4
  %244 = load i32, i32* %mb_width, align 4
  %mul378 = mul nsw i32 %243, %244
  %cmp379 = icmp slt i32 %242, %mul378
  br i1 %cmp379, label %for.body.381, label %for.end.402

for.body.381:                                     ; preds = %for.cond.377
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %call382 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i32 0, i32 0), i32* %tmp)
  %246 = load i32, i32* %tmp, align 4
  %conv383 = trunc i32 %246 to i8
  %247 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %247 to i64
  %248 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_id385 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %248, i32 0, i32 144
  %249 = load i8*, i8** %slice_group_id385, align 8
  %arrayidx386 = getelementptr inbounds i8, i8* %249, i64 %idxprom384
  store i8 %conv383, i8* %arrayidx386, align 1
  %250 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_id387 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %250, i32 0, i32 144
  %251 = load i8*, i8** %slice_group_id387, align 8
  %252 = load i32, i32* %i, align 4
  %idx.ext388 = sext i32 %252 to i64
  %add.ptr389 = getelementptr inbounds i8, i8* %251, i64 %idx.ext388
  %253 = load i8, i8* %add.ptr389, align 1
  %conv390 = zext i8 %253 to i32
  %254 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1391 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %254, i32 0, i32 140
  %255 = load i32, i32* %num_slice_groups_minus1391, align 4
  %cmp392 = icmp sgt i32 %conv390, %255
  br i1 %cmp392, label %if.then.394, label %if.end.398

if.then.394:                                      ; preds = %for.body.381
  %256 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SliceGroupConfigFileName395 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %256, i32 0, i32 139
  %arraydecay396 = getelementptr inbounds [256 x i8], [256 x i8]* %SliceGroupConfigFileName395, i32 0, i32 0
  %call397 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.273, i32 0, i32 0), i8* %arraydecay396) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.394, %for.body.381
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %call399 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0))
  br label %for.inc.400

for.inc.400:                                      ; preds = %if.end.398
  %258 = load i32, i32* %i, align 4
  %inc401 = add nsw i32 %258, 1
  store i32 %inc401, i32* %i, align 4
  br label %for.cond.377

for.end.402:                                      ; preds = %for.cond.377
  br label %if.end.403

if.end.403:                                       ; preds = %for.end.402, %if.else.350
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %for.end.349
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %for.end.308
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %sgfile, align 8
  %call406 = call i32 @fclose(%struct._IO_FILE* %259)
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.405, %if.then.281
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407, %lor.lhs.false.269, %if.end.262
  %260 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReferenceReorder = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %260, i32 0, i32 72
  %261 = load i32, i32* %ReferenceReorder, align 4
  %tobool409 = icmp ne i32 %261, 0
  br i1 %tobool409, label %land.lhs.true.410, label %if.end.418

land.lhs.true.410:                                ; preds = %if.end.408
  %262 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace411 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %262, i32 0, i32 121
  %263 = load i32, i32* %PicInterlace411, align 4
  %tobool412 = icmp ne i32 %263, 0
  br i1 %tobool412, label %if.then.416, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %land.lhs.true.410
  %264 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace414 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %264, i32 0, i32 122
  %265 = load i32, i32* %MbInterlace414, align 4
  %tobool415 = icmp ne i32 %265, 0
  br i1 %tobool415, label %if.then.416, label %if.end.418

if.then.416:                                      ; preds = %lor.lhs.false.413, %land.lhs.true.410
  %call417 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.274, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.416, %lor.lhs.false.413, %if.end.408
  %266 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PocMemoryManagement = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %266, i32 0, i32 73
  %267 = load i32, i32* %PocMemoryManagement, align 4
  %tobool419 = icmp ne i32 %267, 0
  br i1 %tobool419, label %land.lhs.true.420, label %if.end.428

land.lhs.true.420:                                ; preds = %if.end.418
  %268 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace421 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %268, i32 0, i32 121
  %269 = load i32, i32* %PicInterlace421, align 4
  %tobool422 = icmp ne i32 %269, 0
  br i1 %tobool422, label %if.then.426, label %lor.lhs.false.423

lor.lhs.false.423:                                ; preds = %land.lhs.true.420
  %270 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace424 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %270, i32 0, i32 122
  %271 = load i32, i32* %MbInterlace424, align 4
  %tobool425 = icmp ne i32 %271, 0
  br i1 %tobool425, label %if.then.426, label %if.end.428

if.then.426:                                      ; preds = %lor.lhs.false.423, %land.lhs.true.420
  %call427 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.275, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.426, %lor.lhs.false.423, %if.end.418
  %272 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace429 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %272, i32 0, i32 121
  %273 = load i32, i32* %PicInterlace429, align 4
  %cmp430 = icmp ne i32 %273, 0
  br i1 %cmp430, label %land.lhs.true.432, label %if.end.443

land.lhs.true.432:                                ; preds = %if.end.428
  %274 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace433 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %274, i32 0, i32 121
  %275 = load i32, i32* %PicInterlace433, align 4
  %cmp434 = icmp ne i32 %275, 2
  br i1 %cmp434, label %land.lhs.true.436, label %if.end.443

land.lhs.true.436:                                ; preds = %land.lhs.true.432
  %276 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace437 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %276, i32 0, i32 121
  %277 = load i32, i32* %PicInterlace437, align 4
  %cmp438 = icmp ne i32 %277, 1
  br i1 %cmp438, label %if.then.440, label %if.end.443

if.then.440:                                      ; preds = %land.lhs.true.436
  %278 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace441 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %278, i32 0, i32 121
  %279 = load i32, i32* %PicInterlace441, align 4
  %call442 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.276, i32 0, i32 0), i32 %279) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.440, %land.lhs.true.436, %land.lhs.true.432, %if.end.428
  %280 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace444 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %280, i32 0, i32 122
  %281 = load i32, i32* %MbInterlace444, align 4
  %cmp445 = icmp ne i32 %281, 0
  br i1 %cmp445, label %land.lhs.true.447, label %if.end.462

land.lhs.true.447:                                ; preds = %if.end.443
  %282 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace448 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %282, i32 0, i32 122
  %283 = load i32, i32* %MbInterlace448, align 4
  %cmp449 = icmp ne i32 %283, 2
  br i1 %cmp449, label %land.lhs.true.451, label %if.end.462

land.lhs.true.451:                                ; preds = %land.lhs.true.447
  %284 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace452 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %284, i32 0, i32 122
  %285 = load i32, i32* %MbInterlace452, align 4
  %cmp453 = icmp ne i32 %285, 1
  br i1 %cmp453, label %land.lhs.true.455, label %if.end.462

land.lhs.true.455:                                ; preds = %land.lhs.true.451
  %286 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace456 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %286, i32 0, i32 122
  %287 = load i32, i32* %MbInterlace456, align 4
  %cmp457 = icmp ne i32 %287, 3
  br i1 %cmp457, label %if.then.459, label %if.end.462

if.then.459:                                      ; preds = %land.lhs.true.455
  %288 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace460 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %288, i32 0, i32 122
  %289 = load i32, i32* %MbInterlace460, align 4
  %call461 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.277, i32 0, i32 0), i32 %289) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.459, %land.lhs.true.455, %land.lhs.true.451, %land.lhs.true.447, %if.end.443
  %290 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %290, i32 0, i32 113
  %291 = load i32, i32* %rdopt, align 4
  %tobool463 = icmp ne i32 %291, 0
  br i1 %tobool463, label %if.end.469, label %land.lhs.true.464

land.lhs.true.464:                                ; preds = %if.end.462
  %292 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace465 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %292, i32 0, i32 122
  %293 = load i32, i32* %MbInterlace465, align 4
  %tobool466 = icmp ne i32 %293, 0
  br i1 %tobool466, label %if.then.467, label %if.end.469

if.then.467:                                      ; preds = %land.lhs.true.464
  %call468 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.278, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.467, %land.lhs.true.464, %if.end.462
  %294 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt470 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %294, i32 0, i32 113
  %295 = load i32, i32* %rdopt470, align 4
  %cmp471 = icmp eq i32 %295, 2
  br i1 %cmp471, label %land.lhs.true.473, label %if.end.478

land.lhs.true.473:                                ; preds = %if.end.469
  %296 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %296, i32 0, i32 0
  %297 = load i32, i32* %ProfileIDC, align 4
  %cmp474 = icmp sge i32 %297, 100
  br i1 %cmp474, label %if.then.476, label %if.end.478

if.then.476:                                      ; preds = %land.lhs.true.473
  %call477 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.279, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.476, %land.lhs.true.473, %if.end.469
  %298 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %298, i32 0, i32 199
  %arrayidx479 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric, i32 0, i64 2
  %299 = load i32, i32* %arrayidx479, align 4
  %cmp480 = icmp eq i32 %299, 2
  br i1 %cmp480, label %land.lhs.true.482, label %if.end.501

land.lhs.true.482:                                ; preds = %if.end.478
  %300 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric483 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %300, i32 0, i32 199
  %arrayidx484 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric483, i32 0, i64 1
  %301 = load i32, i32* %arrayidx484, align 4
  %cmp485 = icmp eq i32 %301, 0
  br i1 %cmp485, label %land.lhs.true.487, label %if.end.501

land.lhs.true.487:                                ; preds = %land.lhs.true.482
  %302 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MEErrorMetric488 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %302, i32 0, i32 199
  %arrayidx489 = getelementptr inbounds [3 x i32], [3 x i32]* %MEErrorMetric488, i32 0, i64 0
  %303 = load i32, i32* %arrayidx489, align 4
  %cmp490 = icmp eq i32 %303, 0
  br i1 %cmp490, label %land.lhs.true.492, label %if.end.501

land.lhs.true.492:                                ; preds = %land.lhs.true.487
  %304 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %304, i32 0, i32 169
  %305 = load i32, i32* %SearchMode, align 4
  %cmp493 = icmp sgt i32 %305, 0
  br i1 %cmp493, label %land.lhs.true.495, label %if.end.501

land.lhs.true.495:                                ; preds = %land.lhs.true.492
  %306 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SearchMode496 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %306, i32 0, i32 169
  %307 = load i32, i32* %SearchMode496, align 4
  %cmp497 = icmp slt i32 %307, 3
  br i1 %cmp497, label %if.then.499, label %if.end.501

if.then.499:                                      ; preds = %land.lhs.true.495
  %call500 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.280, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.501

if.end.501:                                       ; preds = %if.then.499, %land.lhs.true.495, %land.lhs.true.492, %land.lhs.true.487, %land.lhs.true.482, %if.end.478
  %308 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %308, i32 0, i32 129
  %309 = load i32, i32* %NumFramesInELSubSeq, align 4
  %310 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames502 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %310, i32 0, i32 8
  %311 = load i32, i32* %num_ref_frames502, align 4
  %cmp503 = icmp sge i32 %309, %311
  br i1 %cmp503, label %if.then.509, label %lor.lhs.false.505

lor.lhs.false.505:                                ; preds = %if.end.501
  %312 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq506 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %312, i32 0, i32 129
  %313 = load i32, i32* %NumFramesInELSubSeq506, align 4
  %cmp507 = icmp slt i32 %313, 0
  br i1 %cmp507, label %if.then.509, label %if.end.513

if.then.509:                                      ; preds = %lor.lhs.false.505, %if.end.501
  %314 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq510 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %314, i32 0, i32 129
  %315 = load i32, i32* %NumFramesInELSubSeq510, align 4
  %316 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames511 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %316, i32 0, i32 8
  %317 = load i32, i32* %num_ref_frames511, align 4
  %call512 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.281, i32 0, i32 0), i32 %315, i32 %317) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.509, %lor.lhs.false.505
  %318 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq514 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %318, i32 0, i32 129
  %319 = load i32, i32* %NumFramesInELSubSeq514, align 4
  %cmp515 = icmp sgt i32 %319, 0
  br i1 %cmp515, label %land.lhs.true.517, label %if.end.522

land.lhs.true.517:                                ; preds = %if.end.513
  %320 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %320, i32 0, i32 75
  %321 = load i32, i32* %of_mode, align 4
  %cmp518 = icmp eq i32 %321, 0
  br i1 %cmp518, label %if.then.520, label %if.end.522

if.then.520:                                      ; preds = %land.lhs.true.517
  %call521 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.282, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.520, %land.lhs.true.517, %if.end.513
  %322 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace523 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %322, i32 0, i32 121
  %323 = load i32, i32* %PicInterlace523, align 4
  %tobool524 = icmp ne i32 %323, 0
  br i1 %tobool524, label %land.lhs.true.528, label %lor.lhs.false.525

lor.lhs.false.525:                                ; preds = %if.end.522
  %324 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace526 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %324, i32 0, i32 122
  %325 = load i32, i32* %MbInterlace526, align 4
  %tobool527 = icmp ne i32 %325, 0
  br i1 %tobool527, label %land.lhs.true.528, label %if.end.533

land.lhs.true.528:                                ; preds = %lor.lhs.false.525, %if.end.522
  %326 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SparePictureOption = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %326, i32 0, i32 136
  %327 = load i32, i32* %SparePictureOption, align 4
  %cmp529 = icmp eq i32 %327, 1
  br i1 %cmp529, label %if.then.531, label %if.end.533

if.then.531:                                      ; preds = %land.lhs.true.528
  %call532 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.283, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.533

if.end.533:                                       ; preds = %if.then.531, %land.lhs.true.528, %lor.lhs.false.525
  %328 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode534 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %328, i32 0, i32 75
  %329 = load i32, i32* %of_mode534, align 4
  %cmp535 = icmp ne i32 %329, 1
  br i1 %cmp535, label %land.lhs.true.537, label %if.end.543

land.lhs.true.537:                                ; preds = %if.end.533
  %330 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %SparePictureOption538 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %330, i32 0, i32 136
  %331 = load i32, i32* %SparePictureOption538, align 4
  %cmp539 = icmp eq i32 %331, 1
  br i1 %cmp539, label %if.then.541, label %if.end.543

if.then.541:                                      ; preds = %land.lhs.true.537
  %call542 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.284, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.543

if.end.543:                                       ; preds = %if.then.541, %land.lhs.true.537, %if.end.533
  %332 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %332, i32 0, i32 59
  %333 = load i32, i32* %WeightedPrediction, align 4
  %cmp544 = icmp sgt i32 %333, 0
  br i1 %cmp544, label %land.lhs.true.549, label %lor.lhs.false.546

lor.lhs.false.546:                                ; preds = %if.end.543
  %334 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %334, i32 0, i32 60
  %335 = load i32, i32* %WeightedBiprediction, align 4
  %cmp547 = icmp sgt i32 %335, 0
  br i1 %cmp547, label %land.lhs.true.549, label %if.end.554

land.lhs.true.549:                                ; preds = %lor.lhs.false.546, %if.end.543
  %336 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace550 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %336, i32 0, i32 122
  %337 = load i32, i32* %MbInterlace550, align 4
  %tobool551 = icmp ne i32 %337, 0
  br i1 %tobool551, label %if.then.552, label %if.end.554

if.then.552:                                      ; preds = %land.lhs.true.549
  %call553 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.285, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.554

if.end.554:                                       ; preds = %if.then.552, %land.lhs.true.549, %lor.lhs.false.546
  %338 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq555 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %338, i32 0, i32 129
  %339 = load i32, i32* %NumFramesInELSubSeq555, align 4
  %cmp556 = icmp sgt i32 %339, 0
  br i1 %cmp556, label %land.lhs.true.558, label %if.end.564

land.lhs.true.558:                                ; preds = %if.end.554
  %340 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction559 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %340, i32 0, i32 59
  %341 = load i32, i32* %WeightedPrediction559, align 4
  %cmp560 = icmp sgt i32 %341, 0
  br i1 %cmp560, label %if.then.562, label %if.end.564

if.then.562:                                      ; preds = %land.lhs.true.558
  %call563 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.286, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.562, %land.lhs.true.558, %if.end.554
  %342 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1565 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %342, i32 0, i32 140
  %343 = load i32, i32* %num_slice_groups_minus1565, align 4
  %cmp566 = icmp sgt i32 %343, 0
  br i1 %cmp566, label %if.then.568, label %if.end.579

if.then.568:                                      ; preds = %if.end.564
  %344 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type569 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %344, i32 0, i32 141
  %345 = load i32, i32* %slice_group_map_type569, align 4
  %cmp570 = icmp sge i32 %345, 3
  br i1 %cmp570, label %land.lhs.true.572, label %if.end.578

land.lhs.true.572:                                ; preds = %if.then.568
  %346 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %slice_group_map_type573 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %346, i32 0, i32 141
  %347 = load i32, i32* %slice_group_map_type573, align 4
  %cmp574 = icmp sle i32 %347, 5
  br i1 %cmp574, label %if.then.576, label %if.end.578

if.then.576:                                      ; preds = %land.lhs.true.572
  %348 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1577 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %348, i32 0, i32 140
  store i32 1, i32* %num_slice_groups_minus1577, align 4
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.576, %land.lhs.true.572, %if.then.568
  br label %if.end.579

if.end.579:                                       ; preds = %if.end.578, %if.end.564
  %349 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %349, i32 0, i32 157
  %350 = load i32, i32* %RCEnable, align 4
  %tobool580 = icmp ne i32 %350, 0
  br i1 %tobool580, label %if.then.581, label %if.end.607

if.then.581:                                      ; preds = %if.end.579
  %351 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_height582 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %351, i32 0, i32 15
  %352 = load i32, i32* %img_height582, align 4
  %353 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_bottom583 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %353, i32 0, i32 167
  %354 = load i32, i32* %auto_crop_bottom583, align 4
  %add584 = add nsw i32 %352, %354
  %355 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %img_width585 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %355, i32 0, i32 14
  %356 = load i32, i32* %img_width585, align 4
  %357 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %auto_crop_right586 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %357, i32 0, i32 166
  %358 = load i32, i32* %auto_crop_right586, align 4
  %add587 = add nsw i32 %356, %358
  %mul588 = mul nsw i32 %add584, %add587
  %div589 = sdiv i32 %mul588, 256
  %359 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %basicunit = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %359, i32 0, i32 160
  %360 = load i32, i32* %basicunit, align 4
  %rem590 = urem i32 %div589, %360
  %cmp591 = icmp ne i32 %rem590, 0
  br i1 %cmp591, label %if.then.593, label %if.end.595

if.then.593:                                      ; preds = %if.then.581
  %call594 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.287, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.593, %if.then.581
  %361 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe596 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %361, i32 0, i32 40
  %362 = load i32, i32* %successive_Bframe596, align 4
  %tobool597 = icmp ne i32 %362, 0
  br i1 %tobool597, label %land.lhs.true.601, label %lor.lhs.false.598

lor.lhs.false.598:                                ; preds = %if.end.595
  %363 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd599 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %363, i32 0, i32 5
  %364 = load i32, i32* %jumpd599, align 4
  %tobool600 = icmp ne i32 %364, 0
  br i1 %tobool600, label %land.lhs.true.601, label %if.end.606

land.lhs.true.601:                                ; preds = %lor.lhs.false.598, %if.end.595
  %365 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RCUpdateMode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %365, i32 0, i32 162
  %366 = load i32, i32* %RCUpdateMode, align 4
  %cmp602 = icmp eq i32 %366, 1
  br i1 %cmp602, label %if.then.604, label %if.end.606

if.then.604:                                      ; preds = %land.lhs.true.601
  %call605 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.288, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.606

if.end.606:                                       ; preds = %if.then.604, %land.lhs.true.601, %lor.lhs.false.598
  br label %if.end.607

if.end.607:                                       ; preds = %if.end.606, %if.end.579
  %367 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe608 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %367, i32 0, i32 40
  %368 = load i32, i32* %successive_Bframe608, align 4
  %tobool609 = icmp ne i32 %368, 0
  br i1 %tobool609, label %land.lhs.true.610, label %if.end.621

land.lhs.true.610:                                ; preds = %if.end.607
  %369 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures611 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %369, i32 0, i32 68
  %370 = load i32, i32* %BRefPictures611, align 4
  %tobool612 = icmp ne i32 %370, 0
  br i1 %tobool612, label %land.lhs.true.613, label %if.end.621

land.lhs.true.613:                                ; preds = %land.lhs.true.610
  %371 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %371, i32 0, i32 32
  %372 = load i32, i32* %idr_enable, align 4
  %tobool614 = icmp ne i32 %372, 0
  br i1 %tobool614, label %land.lhs.true.615, label %if.end.621

land.lhs.true.615:                                ; preds = %land.lhs.true.613
  %373 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %373, i32 0, i32 30
  %374 = load i32, i32* %intra_period, align 4
  %tobool616 = icmp ne i32 %374, 0
  br i1 %tobool616, label %land.lhs.true.617, label %if.end.621

land.lhs.true.617:                                ; preds = %land.lhs.true.615
  %375 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %375, i32 0, i32 150
  %376 = load i32, i32* %pic_order_cnt_type, align 4
  %cmp618 = icmp ne i32 %376, 0
  br i1 %cmp618, label %if.then.620, label %if.end.621

if.then.620:                                      ; preds = %land.lhs.true.617
  call void @error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.289, i32 0, i32 0), i32 -1000)
  br label %if.end.621

if.end.621:                                       ; preds = %if.then.620, %land.lhs.true.617, %land.lhs.true.615, %land.lhs.true.613, %land.lhs.true.610, %if.end.607
  %377 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %direct_spatial_mv_pred_flag622 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %377, i32 0, i32 44
  %378 = load i32, i32* %direct_spatial_mv_pred_flag622, align 4
  %tobool623 = icmp ne i32 %378, 0
  br i1 %tobool623, label %if.end.633, label %land.lhs.true.624

land.lhs.true.624:                                ; preds = %if.end.621
  %379 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames625 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %379, i32 0, i32 8
  %380 = load i32, i32* %num_ref_frames625, align 4
  %cmp626 = icmp slt i32 %380, 2
  br i1 %cmp626, label %land.lhs.true.628, label %if.end.633

land.lhs.true.628:                                ; preds = %land.lhs.true.624
  %381 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe629 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %381, i32 0, i32 40
  %382 = load i32, i32* %successive_Bframe629, align 4
  %cmp630 = icmp sgt i32 %382, 0
  br i1 %cmp630, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %land.lhs.true.628
  call void @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.290, i32 0, i32 0), i32 -1000)
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.632, %land.lhs.true.628, %land.lhs.true.624, %if.end.621
  %383 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %383, i32 0, i32 153
  %384 = load i32, i32* %Transform8x8Mode, align 4
  %tobool634 = icmp ne i32 %384, 0
  br i1 %tobool634, label %land.lhs.true.635, label %if.end.639

land.lhs.true.635:                                ; preds = %if.end.633
  %385 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %385, i32 0, i32 50
  %386 = load i32, i32* %sp_periodicity, align 4
  %tobool636 = icmp ne i32 %386, 0
  br i1 %tobool636, label %if.then.637, label %if.end.639

if.then.637:                                      ; preds = %land.lhs.true.635
  %call638 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.291, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.639

if.end.639:                                       ; preds = %if.then.637, %land.lhs.true.635, %if.end.633
  %387 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %Transform8x8Mode640 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %387, i32 0, i32 153
  %388 = load i32, i32* %Transform8x8Mode640, align 4
  %tobool641 = icmp ne i32 %388, 0
  br i1 %tobool641, label %land.lhs.true.642, label %if.end.652

land.lhs.true.642:                                ; preds = %if.end.639
  %389 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC643 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %389, i32 0, i32 0
  %390 = load i32, i32* %ProfileIDC643, align 4
  %cmp644 = icmp slt i32 %390, 100
  br i1 %cmp644, label %if.then.650, label %lor.lhs.false.646

lor.lhs.false.646:                                ; preds = %land.lhs.true.642
  %391 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC647 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %391, i32 0, i32 0
  %392 = load i32, i32* %ProfileIDC647, align 4
  %cmp648 = icmp sgt i32 %392, 144
  br i1 %cmp648, label %if.then.650, label %if.end.652

if.then.650:                                      ; preds = %lor.lhs.false.646, %land.lhs.true.642
  %call651 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.292, i32 0, i32 0), i32 100, i32 144) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.652

if.end.652:                                       ; preds = %if.then.650, %lor.lhs.false.646, %if.end.639
  %393 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %393, i32 0, i32 167
  %394 = load i32, i32* %ScalingMatrixPresentFlag, align 4
  %tobool653 = icmp ne i32 %394, 0
  br i1 %tobool653, label %land.lhs.true.654, label %if.end.664

land.lhs.true.654:                                ; preds = %if.end.652
  %395 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC655 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %395, i32 0, i32 0
  %396 = load i32, i32* %ProfileIDC655, align 4
  %cmp656 = icmp slt i32 %396, 100
  br i1 %cmp656, label %if.then.662, label %lor.lhs.false.658

lor.lhs.false.658:                                ; preds = %land.lhs.true.654
  %397 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC659 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %397, i32 0, i32 0
  %398 = load i32, i32* %ProfileIDC659, align 4
  %cmp660 = icmp sgt i32 %398, 144
  br i1 %cmp660, label %if.then.662, label %if.end.664

if.then.662:                                      ; preds = %lor.lhs.false.658, %land.lhs.true.654
  %call663 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.293, i32 0, i32 0), i32 100, i32 144) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.664

if.end.664:                                       ; preds = %if.then.662, %lor.lhs.false.658, %if.end.652
  %399 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %399, i32 0, i32 16
  %400 = load i32, i32* %yuv_format, align 4
  %cmp665 = icmp eq i32 %400, 2
  br i1 %cmp665, label %land.lhs.true.667, label %if.end.673

land.lhs.true.667:                                ; preds = %if.end.664
  %401 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC668 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %401, i32 0, i32 0
  %402 = load i32, i32* %ProfileIDC668, align 4
  %cmp669 = icmp slt i32 %402, 122
  br i1 %cmp669, label %if.then.671, label %if.end.673

if.then.671:                                      ; preds = %land.lhs.true.667
  %call672 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.294, i32 0, i32 0), i32 122, i32 144) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.673

if.end.673:                                       ; preds = %if.then.671, %land.lhs.true.667, %if.end.664
  %403 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format674 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %403, i32 0, i32 16
  %404 = load i32, i32* %yuv_format674, align 4
  %cmp675 = icmp eq i32 %404, 3
  br i1 %cmp675, label %land.lhs.true.677, label %if.end.683

land.lhs.true.677:                                ; preds = %if.end.673
  %405 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC678 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %405, i32 0, i32 0
  %406 = load i32, i32* %ProfileIDC678, align 4
  %cmp679 = icmp slt i32 %406, 144
  br i1 %cmp679, label %if.then.681, label %if.end.683

if.then.681:                                      ; preds = %land.lhs.true.677
  %call682 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.295, i32 0, i32 0), i32 144) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.681, %land.lhs.true.677, %if.end.673
  %407 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe684 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %407, i32 0, i32 40
  %408 = load i32, i32* %successive_Bframe684, align 4
  %tobool685 = icmp ne i32 %408, 0
  br i1 %tobool685, label %land.lhs.true.686, label %if.end.693

land.lhs.true.686:                                ; preds = %if.end.683
  %409 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %409, i32 0, i32 46
  %410 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool687 = icmp ne i32 %410, 0
  br i1 %tobool687, label %land.lhs.true.688, label %if.end.693

land.lhs.true.688:                                ; preds = %land.lhs.true.686
  %411 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %411, i32 0, i32 7
  %412 = load i32, i32* %search_range, align 4
  %413 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESearchRange = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %413, i32 0, i32 48
  %414 = load i32, i32* %BiPredMESearchRange, align 4
  %cmp689 = icmp slt i32 %412, %414
  br i1 %cmp689, label %if.then.691, label %if.end.693

if.then.691:                                      ; preds = %land.lhs.true.688
  %call692 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.296, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.693

if.end.693:                                       ; preds = %if.then.691, %land.lhs.true.688, %land.lhs.true.686, %if.end.683
  %415 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %415, i32 0, i32 198
  %416 = load i32, i32* %ChromaMEEnable, align 4
  %tobool694 = icmp ne i32 %416, 0
  br i1 %tobool694, label %land.lhs.true.695, label %if.end.699

land.lhs.true.695:                                ; preds = %if.end.693
  %417 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMCBuffer = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %417, i32 0, i32 197
  %418 = load i32, i32* %ChromaMCBuffer, align 4
  %tobool696 = icmp ne i32 %418, 0
  br i1 %tobool696, label %if.end.699, label %if.then.697

if.then.697:                                      ; preds = %land.lhs.true.695
  %call698 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.297, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.699

if.end.699:                                       ; preds = %if.then.697, %land.lhs.true.695, %if.end.693
  %419 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable700 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %419, i32 0, i32 198
  %420 = load i32, i32* %ChromaMEEnable700, align 4
  %tobool701 = icmp ne i32 %420, 0
  br i1 %tobool701, label %land.lhs.true.702, label %if.end.709

land.lhs.true.702:                                ; preds = %if.end.699
  %421 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %yuv_format703 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %421, i32 0, i32 16
  %422 = load i32, i32* %yuv_format703, align 4
  %cmp704 = icmp eq i32 %422, 0
  br i1 %cmp704, label %if.then.706, label %if.end.709

if.then.706:                                      ; preds = %land.lhs.true.702
  %call707 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.298, i32 0, i32 0)) #3
  %423 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaMEEnable708 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %423, i32 0, i32 198
  store i32 0, i32* %ChromaMEEnable708, align 4
  br label %if.end.709

if.end.709:                                       ; preds = %if.then.706, %land.lhs.true.702, %if.end.699
  %424 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EnableOpenGOP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %424, i32 0, i32 31
  %425 = load i32, i32* %EnableOpenGOP, align 4
  %tobool710 = icmp ne i32 %425, 0
  br i1 %tobool710, label %land.lhs.true.711, label %if.end.716

land.lhs.true.711:                                ; preds = %if.end.709
  %426 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace712 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %426, i32 0, i32 121
  %427 = load i32, i32* %PicInterlace712, align 4
  %tobool713 = icmp ne i32 %427, 0
  br i1 %tobool713, label %if.then.714, label %if.end.716

if.then.714:                                      ; preds = %land.lhs.true.711
  %call715 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.299, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.716

if.end.716:                                       ; preds = %if.then.714, %land.lhs.true.711, %if.end.709
  %428 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EnableOpenGOP717 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %428, i32 0, i32 31
  %429 = load i32, i32* %EnableOpenGOP717, align 4
  %tobool718 = icmp ne i32 %429, 0
  br i1 %tobool718, label %if.then.719, label %if.end.721

if.then.719:                                      ; preds = %if.end.716
  %430 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReferenceReorder720 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %430, i32 0, i32 72
  store i32 1, i32* %ReferenceReorder720, align 4
  br label %if.end.721

if.end.721:                                       ; preds = %if.then.719, %if.end.716
  %431 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %431, i32 0, i32 149
  %432 = load i32, i32* %redundant_pic_flag, align 4
  %tobool722 = icmp ne i32 %432, 0
  br i1 %tobool722, label %if.then.723, label %if.end.754

if.then.723:                                      ; preds = %if.end.721
  %433 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace724 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %433, i32 0, i32 121
  %434 = load i32, i32* %PicInterlace724, align 4
  %tobool725 = icmp ne i32 %434, 0
  br i1 %tobool725, label %if.then.729, label %lor.lhs.false.726

lor.lhs.false.726:                                ; preds = %if.then.723
  %435 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace727 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %435, i32 0, i32 122
  %436 = load i32, i32* %MbInterlace727, align 4
  %tobool728 = icmp ne i32 %436, 0
  br i1 %tobool728, label %if.then.729, label %if.end.731

if.then.729:                                      ; preds = %lor.lhs.false.726, %if.then.723
  %call730 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.300, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.731

if.end.731:                                       ; preds = %if.then.729, %lor.lhs.false.726
  %437 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %437, i32 0, i32 62
  %438 = load i32, i32* %RDPictureDecision, align 4
  %tobool732 = icmp ne i32 %438, 0
  br i1 %tobool732, label %if.then.733, label %if.end.735

if.then.733:                                      ; preds = %if.end.731
  %call734 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.301, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.735

if.end.735:                                       ; preds = %if.then.733, %if.end.731
  %439 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe736 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %439, i32 0, i32 40
  %440 = load i32, i32* %successive_Bframe736, align 4
  %tobool737 = icmp ne i32 %440, 0
  br i1 %tobool737, label %if.then.738, label %if.end.740

if.then.738:                                      ; preds = %if.end.735
  %call739 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.302, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.740

if.end.740:                                       ; preds = %if.then.738, %if.end.735
  %441 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PrimaryGOPLength = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %441, i32 0, i32 195
  %442 = load i32, i32* %PrimaryGOPLength, align 4
  %443 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumRedundantHierarchy = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %443, i32 0, i32 194
  %444 = load i32, i32* %NumRedundantHierarchy, align 4
  %shl741 = shl i32 1, %444
  %cmp742 = icmp slt i32 %442, %shl741
  br i1 %cmp742, label %if.then.744, label %if.end.746

if.then.744:                                      ; preds = %if.end.740
  %call745 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.303, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.744, %if.end.740
  %445 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames747 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %445, i32 0, i32 8
  %446 = load i32, i32* %num_ref_frames747, align 4
  %447 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PrimaryGOPLength748 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %447, i32 0, i32 195
  %448 = load i32, i32* %PrimaryGOPLength748, align 4
  %cmp749 = icmp slt i32 %446, %448
  br i1 %cmp749, label %if.then.751, label %if.end.753

if.then.751:                                      ; preds = %if.end.746
  %call752 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.304, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.753

if.end.753:                                       ; preds = %if.then.751, %if.end.746
  br label %if.end.754

if.end.754:                                       ; preds = %if.end.753, %if.end.721
  %449 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames755 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %449, i32 0, i32 8
  %450 = load i32, i32* %num_ref_frames755, align 4
  %cmp756 = icmp eq i32 %450, 1
  br i1 %cmp756, label %land.lhs.true.758, label %if.end.765

land.lhs.true.758:                                ; preds = %if.end.754
  %451 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe759 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %451, i32 0, i32 40
  %452 = load i32, i32* %successive_Bframe759, align 4
  %tobool760 = icmp ne i32 %452, 0
  br i1 %tobool760, label %if.then.761, label %if.end.765

if.then.761:                                      ; preds = %land.lhs.true.758
  %453 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call762 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %453, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.305, i32 0, i32 0))
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call763 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %454, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.306, i32 0, i32 0))
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call764 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.307, i32 0, i32 0))
  br label %if.end.765

if.end.765:                                       ; preds = %if.then.761, %land.lhs.true.758, %if.end.754
  %456 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %HierarchicalCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %456, i32 0, i32 69
  %457 = load i32, i32* %HierarchicalCoding, align 4
  %tobool766 = icmp ne i32 %457, 0
  br i1 %tobool766, label %land.lhs.true.770, label %lor.lhs.false.767

lor.lhs.false.767:                                ; preds = %if.end.765
  %458 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures768 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %458, i32 0, i32 68
  %459 = load i32, i32* %BRefPictures768, align 4
  %tobool769 = icmp ne i32 %459, 0
  br i1 %tobool769, label %land.lhs.true.770, label %if.end.777

land.lhs.true.770:                                ; preds = %lor.lhs.false.767, %if.end.765
  %460 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe771 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %460, i32 0, i32 40
  %461 = load i32, i32* %successive_Bframe771, align 4
  %tobool772 = icmp ne i32 %461, 0
  br i1 %tobool772, label %if.then.773, label %if.end.777

if.then.773:                                      ; preds = %land.lhs.true.770
  %462 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call774 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %462, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.308, i32 0, i32 0))
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call775 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %463, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.309, i32 0, i32 0))
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call776 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %464, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.310, i32 0, i32 0))
  br label %if.end.777

if.end.777:                                       ; preds = %if.then.773, %land.lhs.true.770, %lor.lhs.false.767
  call void @ProfileCheck()
  call void @LevelCheck()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @DisplayEncoderParams() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.250, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.251, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.250, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom
  %TokenName = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %TokenName, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom3
  %Type = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx4, i32 0, i32 2
  %3 = load i32, i32* %Type, align 4
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom6
  %TokenName8 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx7, i32 0, i32 0
  %5 = load i8*, i8** %TokenName8, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom9
  %Place = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx10, i32 0, i32 1
  %7 = load i8*, i8** %Place, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.252, i32 0, i32 0), i8* %5, i32 %9)
  br label %if.end.38

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom12
  %Type14 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx13, i32 0, i32 2
  %11 = load i32, i32* %Type14, align 4
  %cmp15 = icmp eq i32 %11, 1
  br i1 %cmp15, label %if.then.16, label %if.else.24

if.then.16:                                       ; preds = %if.else
  %12 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom17
  %TokenName19 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx18, i32 0, i32 0
  %13 = load i8*, i8** %TokenName19, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom20
  %Place22 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx21, i32 0, i32 1
  %15 = load i8*, i8** %Place22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.253, i32 0, i32 0), i8* %13, i8* %15)
  br label %if.end.37

if.else.24:                                       ; preds = %if.else
  %16 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom25
  %Type27 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx26, i32 0, i32 2
  %17 = load i32, i32* %Type27, align 4
  %cmp28 = icmp eq i32 %17, 2
  br i1 %cmp28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else.24
  %18 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom30
  %TokenName32 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx31, i32 0, i32 0
  %19 = load i8*, i8** %TokenName32, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom33
  %Place35 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx34, i32 0, i32 1
  %21 = load i8*, i8** %Place35, align 8
  %22 = bitcast i8* %21 to double*
  %23 = load double, double* %22, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.254, i32 0, i32 0), i8* %19, double %23)
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.16
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.250, i32 0, i32 0))
  ret i32 -1
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @CeilLog2(i32 %uiVal) #0 {
entry:
  %uiVal.addr = alloca i32, align 4
  %uiTmp = alloca i32, align 4
  %uiRet = alloca i32, align 4
  store i32 %uiVal, i32* %uiVal.addr, align 4
  %0 = load i32, i32* %uiVal.addr, align 4
  %sub = sub i32 %0, 1
  store i32 %sub, i32* %uiTmp, align 4
  store i32 0, i32* %uiRet, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %uiTmp, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %uiTmp, align 4
  %shr = lshr i32 %2, 1
  store i32 %shr, i32* %uiTmp, align 4
  %3 = load i32, i32* %uiRet, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %uiRet, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %uiRet, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @PatchInputNoFrames() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 2
  %1 = load i32, i32* %no_frames, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 129
  %3 = load i32, i32* %NumFramesInELSubSeq, align 4
  %add = add nsw i32 %3, 1
  %mul = mul nsw i32 %sub, %add
  %add1 = add nsw i32 1, %mul
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 2
  store i32 %add1, i32* %no_frames2, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFrameIn2ndIGOP = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 130
  %6 = load i32, i32* %NumFrameIn2ndIGOP, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFrameIn2ndIGOP3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 130
  %8 = load i32, i32* %NumFrameIn2ndIGOP3, align 4
  %sub4 = sub nsw i32 %8, 1
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 129
  %10 = load i32, i32* %NumFramesInELSubSeq5, align 4
  %add6 = add nsw i32 %10, 1
  %mul7 = mul nsw i32 %sub4, %add6
  %add8 = add nsw i32 1, %mul7
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFrameIn2ndIGOP9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 130
  store i32 %add8, i32* %NumFrameIn2ndIGOP9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %no_frames10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 2
  %13 = load i32, i32* %no_frames10, align 4
  store i32 %13, i32* @FirstFrameIn2ndIGOP, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @ParameterNameToMapIndex(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom
  %TokenName = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %TokenName, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom1
  %TokenName3 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx2, i32 0, i32 0
  %3 = load i8*, i8** %TokenName3, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcasecmp(i8* %3, i8* %4) #8
  %cmp4 = icmp eq i32 0, %call
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @TestEncoderParams(i32 %bitdepth_qp_scale) #0 {
entry:
  %bitdepth_qp_scale.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %bitdepth_qp_scale, i32* %bitdepth_qp_scale.addr, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.181, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom
  %TokenName = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %TokenName, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom1
  %param_limits = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx2, i32 0, i32 4
  %3 = load i32, i32* %param_limits, align 4
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then, label %if.else.71

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom4
  %Type = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx5, i32 0, i32 2
  %5 = load i32, i32* %Type, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %6 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom8
  %Place = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx9, i32 0, i32 1
  %7 = load i8*, i8** %Place, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom10
  %min_limit = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx11, i32 0, i32 5
  %11 = load double, double* %min_limit, align 8
  %conv = fptosi double %11 to i32
  %cmp12 = icmp slt i32 %9, %conv
  br i1 %cmp12, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom14
  %Place16 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx15, i32 0, i32 1
  %13 = load i8*, i8** %Place16, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom17
  %max_limit = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx18, i32 0, i32 6
  %17 = load double, double* %max_limit, align 8
  %conv19 = fptosi double %17 to i32
  %cmp20 = icmp sgt i32 %15, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %lor.lhs.false, %if.then.7
  %18 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom23
  %TokenName25 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx24, i32 0, i32 0
  %19 = load i8*, i8** %TokenName25, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom26
  %min_limit28 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx27, i32 0, i32 5
  %21 = load double, double* %min_limit28, align 8
  %conv29 = fptosi double %21 to i32
  %22 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom30
  %max_limit32 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx31, i32 0, i32 6
  %23 = load double, double* %max_limit32, align 8
  %conv33 = fptosi double %23 to i32
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.311, i32 0, i32 0), i8* %19, i32 %conv29, i32 %conv33) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %lor.lhs.false
  br label %if.end.70

if.else:                                          ; preds = %if.then
  %24 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom34
  %Type36 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx35, i32 0, i32 2
  %25 = load i32, i32* %Type36, align 4
  %cmp37 = icmp eq i32 %25, 2
  br i1 %cmp37, label %if.then.39, label %if.end.69

if.then.39:                                       ; preds = %if.else
  %26 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom40
  %Place42 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx41, i32 0, i32 1
  %27 = load i8*, i8** %Place42, align 8
  %28 = bitcast i8* %27 to double*
  %29 = load double, double* %28, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom43
  %min_limit45 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx44, i32 0, i32 5
  %31 = load double, double* %min_limit45, align 8
  %cmp46 = fcmp olt double %29, %31
  br i1 %cmp46, label %if.then.57, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.then.39
  %32 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom49
  %Place51 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx50, i32 0, i32 1
  %33 = load i8*, i8** %Place51, align 8
  %34 = bitcast i8* %33 to double*
  %35 = load double, double* %34, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom52
  %max_limit54 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx53, i32 0, i32 6
  %37 = load double, double* %max_limit54, align 8
  %cmp55 = fcmp ogt double %35, %37
  br i1 %cmp55, label %if.then.57, label %if.end.68

if.then.57:                                       ; preds = %lor.lhs.false.48, %if.then.39
  %38 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom58
  %TokenName60 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx59, i32 0, i32 0
  %39 = load i8*, i8** %TokenName60, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %40 to i64
  %arrayidx62 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom61
  %min_limit63 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx62, i32 0, i32 5
  %41 = load double, double* %min_limit63, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom64
  %max_limit66 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx65, i32 0, i32 6
  %43 = load double, double* %max_limit66, align 8
  %call67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.312, i32 0, i32 0), i8* %39, double %41, double %43) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.57, %lor.lhs.false.48
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.else
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end
  br label %if.end.181

if.else.71:                                       ; preds = %while.body
  %44 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %44 to i64
  %arrayidx73 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom72
  %param_limits74 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx73, i32 0, i32 4
  %45 = load i32, i32* %param_limits74, align 4
  %cmp75 = icmp eq i32 %45, 2
  br i1 %cmp75, label %if.then.77, label %if.else.129

if.then.77:                                       ; preds = %if.else.71
  %46 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %46 to i64
  %arrayidx79 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom78
  %Type80 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx79, i32 0, i32 2
  %47 = load i32, i32* %Type80, align 4
  %cmp81 = icmp eq i32 %47, 0
  br i1 %cmp81, label %if.then.83, label %if.else.103

if.then.83:                                       ; preds = %if.then.77
  %48 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %48 to i64
  %arrayidx85 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom84
  %Place86 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx85, i32 0, i32 1
  %49 = load i8*, i8** %Place86, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %52 to i64
  %arrayidx88 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom87
  %min_limit89 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx88, i32 0, i32 5
  %53 = load double, double* %min_limit89, align 8
  %conv90 = fptosi double %53 to i32
  %cmp91 = icmp slt i32 %51, %conv90
  br i1 %cmp91, label %if.then.93, label %if.end.102

if.then.93:                                       ; preds = %if.then.83
  %54 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %54 to i64
  %arrayidx95 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom94
  %TokenName96 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx95, i32 0, i32 0
  %55 = load i8*, i8** %TokenName96, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %56 to i64
  %arrayidx98 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom97
  %min_limit99 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx98, i32 0, i32 5
  %57 = load double, double* %min_limit99, align 8
  %conv100 = fptosi double %57 to i32
  %call101 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.313, i32 0, i32 0), i8* %55, i32 %conv100) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.93, %if.then.83
  br label %if.end.128

if.else.103:                                      ; preds = %if.then.77
  %58 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %58 to i64
  %arrayidx105 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom104
  %Type106 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx105, i32 0, i32 2
  %59 = load i32, i32* %Type106, align 4
  %cmp107 = icmp eq i32 %59, 2
  br i1 %cmp107, label %if.then.109, label %if.end.127

if.then.109:                                      ; preds = %if.else.103
  %60 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %60 to i64
  %arrayidx111 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom110
  %Place112 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx111, i32 0, i32 1
  %61 = load i8*, i8** %Place112, align 8
  %62 = bitcast i8* %61 to double*
  %63 = load double, double* %62, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %64 to i64
  %arrayidx114 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom113
  %min_limit115 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx114, i32 0, i32 5
  %65 = load double, double* %min_limit115, align 8
  %cmp116 = fcmp olt double %63, %65
  br i1 %cmp116, label %if.then.118, label %if.end.126

if.then.118:                                      ; preds = %if.then.109
  %66 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %66 to i64
  %arrayidx120 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom119
  %TokenName121 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx120, i32 0, i32 0
  %67 = load i8*, i8** %TokenName121, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %68 to i64
  %arrayidx123 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom122
  %min_limit124 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx123, i32 0, i32 5
  %69 = load double, double* %min_limit124, align 8
  %call125 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.314, i32 0, i32 0), i8* %67, double %69) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.118, %if.then.109
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.else.103
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.102
  br label %if.end.180

if.else.129:                                      ; preds = %if.else.71
  %70 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %70 to i64
  %arrayidx131 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom130
  %param_limits132 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx131, i32 0, i32 4
  %71 = load i32, i32* %param_limits132, align 4
  %cmp133 = icmp eq i32 %71, 3
  br i1 %cmp133, label %if.then.135, label %if.end.179

if.then.135:                                      ; preds = %if.else.129
  %72 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %72 to i64
  %arrayidx137 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom136
  %Type138 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx137, i32 0, i32 2
  %73 = load i32, i32* %Type138, align 4
  %cmp139 = icmp eq i32 %73, 0
  br i1 %cmp139, label %if.then.141, label %if.end.178

if.then.141:                                      ; preds = %if.then.135
  %74 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %74 to i64
  %arrayidx143 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom142
  %Place144 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx143, i32 0, i32 1
  %75 = load i8*, i8** %Place144, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %78 to i64
  %arrayidx146 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom145
  %min_limit147 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx146, i32 0, i32 5
  %79 = load double, double* %min_limit147, align 8
  %80 = load i32, i32* %bitdepth_qp_scale.addr, align 4
  %conv148 = sitofp i32 %80 to double
  %sub = fsub double %79, %conv148
  %conv149 = fptosi double %sub to i32
  %cmp150 = icmp slt i32 %77, %conv149
  br i1 %cmp150, label %if.then.162, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %if.then.141
  %81 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %81 to i64
  %arrayidx154 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom153
  %Place155 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx154, i32 0, i32 1
  %82 = load i8*, i8** %Place155, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %85 to i64
  %arrayidx157 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom156
  %max_limit158 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx157, i32 0, i32 6
  %86 = load double, double* %max_limit158, align 8
  %conv159 = fptosi double %86 to i32
  %cmp160 = icmp sgt i32 %84, %conv159
  br i1 %cmp160, label %if.then.162, label %if.end.177

if.then.162:                                      ; preds = %lor.lhs.false.152, %if.then.141
  %87 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %87 to i64
  %arrayidx164 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom163
  %TokenName165 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx164, i32 0, i32 0
  %88 = load i8*, i8** %TokenName165, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %89 to i64
  %arrayidx167 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom166
  %min_limit168 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx167, i32 0, i32 5
  %90 = load double, double* %min_limit168, align 8
  %91 = load i32, i32* %bitdepth_qp_scale.addr, align 4
  %conv169 = sitofp i32 %91 to double
  %sub170 = fsub double %90, %conv169
  %conv171 = fptosi double %sub170 to i32
  %92 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %92 to i64
  %arrayidx173 = getelementptr inbounds [225 x %struct.Mapping], [225 x %struct.Mapping]* @Map, i32 0, i64 %idxprom172
  %max_limit174 = getelementptr inbounds %struct.Mapping, %struct.Mapping* %arrayidx173, i32 0, i32 6
  %93 = load double, double* %max_limit174, align 8
  %conv175 = fptosi double %93 to i32
  %call176 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.311, i32 0, i32 0), i8* %88, i32 %conv171, i32 %conv175) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 400)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.162, %lor.lhs.false.152
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.135
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.else.129
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.end.128
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.end.70
  %94 = load i32, i32* %i, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #6 {
entry:
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %low.addr, align 4
  %call = call i32 @imax(i32 %0, i32 %1)
  store i32 %call, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %2, i32 %3)
  store i32 %call1, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  ret i32 %4
}

declare i32 @open64(i8*, i32, ...) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @ProfileCheck() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 0
  %1 = load i32, i32* %ProfileIDC, align 4
  %cmp = icmp ne i32 %1, 66
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 0
  %3 = load i32, i32* %ProfileIDC1, align 4
  %cmp2 = icmp ne i32 %3, 77
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 0
  %5 = load i32, i32* %ProfileIDC4, align 4
  %cmp5 = icmp ne i32 %5, 88
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 0
  %7 = load i32, i32* %ProfileIDC7, align 4
  %cmp8 = icmp ne i32 %7, 100
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 0
  %9 = load i32, i32* %ProfileIDC10, align 4
  %cmp11 = icmp ne i32 %9, 110
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC13 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 0
  %11 = load i32, i32* %ProfileIDC13, align 4
  %cmp14 = icmp ne i32 %11, 122
  br i1 %cmp14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC16 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 0
  %13 = load i32, i32* %ProfileIDC16, align 4
  %cmp17 = icmp ne i32 %13, 144
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.315, i32 0, i32 0), i32 100, i32 144) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %entry
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 76
  %15 = load i32, i32* %partition_mode, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %if.end
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 74
  %17 = load i32, i32* %symbol_mode, align 4
  %cmp19 = icmp eq i32 %17, 1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true.18
  %call21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.316, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true.18, %if.end
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %redundant_pic_flag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 149
  %19 = load i32, i32* %redundant_pic_flag, align 4
  %tobool23 = icmp ne i32 %19, 0
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.22
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 0
  %21 = load i32, i32* %ProfileIDC25, align 4
  %cmp26 = icmp ne i32 %21, 66
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.24
  %call28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.317, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.22
  %22 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %22, i32 0, i32 76
  %23 = load i32, i32* %partition_mode31, align 4
  %tobool32 = icmp ne i32 %23, 0
  br i1 %tobool32, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.30
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 0
  %25 = load i32, i32* %ProfileIDC34, align 4
  %cmp35 = icmp ne i32 %25, 88
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.33
  %call37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.318, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.30
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ChromaIntraDisable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 90
  %27 = load i32, i32* %ChromaIntraDisable, align 4
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.48

land.lhs.true.41:                                 ; preds = %if.end.39
  %28 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FastCrIntraDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %28, i32 0, i32 115
  %29 = load i32, i32* %FastCrIntraDecision, align 4
  %tobool42 = icmp ne i32 %29, 0
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %land.lhs.true.41
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.319, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.320, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.319, i32 0, i32 0))
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %FastCrIntraDecision47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 115
  store i32 0, i32* %FastCrIntraDecision47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %land.lhs.true.41, %if.end.39
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC49 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 0
  %35 = load i32, i32* %ProfileIDC49, align 4
  %cmp50 = icmp eq i32 %35, 66
  br i1 %cmp50, label %if.then.51, label %if.end.76

if.then.51:                                       ; preds = %if.end.48
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 40
  %37 = load i32, i32* %successive_Bframe, align 4
  %tobool52 = icmp ne i32 %37, 0
  br i1 %tobool52, label %land.lhs.true.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.51
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 68
  %39 = load i32, i32* %BRefPictures, align 4
  %cmp53 = icmp eq i32 %39, 2
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.58

land.lhs.true.54:                                 ; preds = %lor.lhs.false, %if.then.51
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PReplaceBSlice = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 41
  %41 = load i32, i32* %PReplaceBSlice, align 4
  %cmp55 = icmp eq i32 %41, 0
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %land.lhs.true.54
  %call57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.321, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %land.lhs.true.54, %lor.lhs.false
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 50
  %43 = load i32, i32* %sp_periodicity, align 4
  %tobool59 = icmp ne i32 %43, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.58
  %call61 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.322, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.58
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 59
  %45 = load i32, i32* %WeightedPrediction, align 4
  %tobool63 = icmp ne i32 %45, 0
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.62
  %call65 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.323, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.62
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 60
  %47 = load i32, i32* %WeightedBiprediction, align 4
  %tobool67 = icmp ne i32 %47, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.66
  %call69 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.323, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.66
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode71 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 74
  %49 = load i32, i32* %symbol_mode71, align 4
  %cmp72 = icmp eq i32 %49, 1
  br i1 %cmp72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.70
  %call74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.324, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.48
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC77 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i32 0, i32 0
  %51 = load i32, i32* %ProfileIDC77, align 4
  %cmp78 = icmp eq i32 %51, 77
  br i1 %cmp78, label %if.then.79, label %if.end.89

if.then.79:                                       ; preds = %if.end.76
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %sp_periodicity80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 50
  %53 = load i32, i32* %sp_periodicity80, align 4
  %tobool81 = icmp ne i32 %53, 0
  br i1 %tobool81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.79
  %call83 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.325, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.then.79
  %54 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_slice_groups_minus1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %54, i32 0, i32 140
  %55 = load i32, i32* %num_slice_groups_minus1, align 4
  %tobool85 = icmp ne i32 %55, 0
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.84
  %call87 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.326, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.76
  %56 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ProfileIDC90 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %56, i32 0, i32 0
  %57 = load i32, i32* %ProfileIDC90, align 4
  %cmp91 = icmp eq i32 %57, 88
  br i1 %cmp91, label %if.then.92, label %if.end.102

if.then.92:                                       ; preds = %if.end.89
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %directInferenceFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 45
  %59 = load i32, i32* %directInferenceFlag, align 4
  %tobool93 = icmp ne i32 %59, 0
  br i1 %tobool93, label %if.end.96, label %if.then.94

if.then.94:                                       ; preds = %if.then.92
  %call95 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.327, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.then.92
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode97 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 74
  %61 = load i32, i32* %symbol_mode97, align 4
  %cmp98 = icmp eq i32 %61, 1
  br i1 %cmp98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.96
  %call100 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.328, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.96
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.89
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LevelCheck() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LevelIDC = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 1
  %1 = load i32, i32* %LevelIDC, align 4
  %cmp = icmp sge i32 %1, 30
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %directInferenceFlag = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 45
  %3 = load i32, i32* %directInferenceFlag, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.329, i32 0, i32 0))
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %directInferenceFlag2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 45
  store i32 1, i32* %directInferenceFlag2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LevelIDC3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 1
  %7 = load i32, i32* %LevelIDC3, align 4
  %cmp4 = icmp slt i32 %7, 21
  br i1 %cmp4, label %land.lhs.true.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %LevelIDC5 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 1
  %9 = load i32, i32* %LevelIDC5, align 4
  %cmp6 = icmp sgt i32 %9, 41
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.13

land.lhs.true.7:                                  ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 121
  %11 = load i32, i32* %PicInterlace, align 4
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 122
  %13 = load i32, i32* %MbInterlace, align 4
  %cmp10 = icmp sgt i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false.9, %land.lhs.true.7
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.330, i32 0, i32 0)) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 500)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %lor.lhs.false.9, %lor.lhs.false
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #6 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #6 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
