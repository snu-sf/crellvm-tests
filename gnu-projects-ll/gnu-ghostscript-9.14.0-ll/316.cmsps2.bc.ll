; ModuleID = './cmsps2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cms_io_handler = type { i8*, %struct._cmsContext_struct*, i32, i32, [256 x i8], i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i32)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*, i32, i8*)* }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cms_NAMEDCOLORLIST_struct = type { i32, i32, i32, [33 x i8], [33 x i8], %struct._cmsNAMEDCOLOR*, %struct._cmsContext_struct* }
%struct._cmsNAMEDCOLOR = type { [256 x i8], [3 x i16], [16 x i16] }
%struct.cmsCIELab = type { double, double, double }
%struct.cmsCIExyY = type { double, double, double }
%struct.cmsCIEXYZ = type { double, double, double }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%struct.cmsVEC3 = type { [3 x double] }
%struct._cmstransform_struct = type { i32, i32, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, %struct._cmsCACHE, %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct*, %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct*, i32, i32, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ, %struct.cmsSEQ*, i32, double, i32, %struct._cmsContext_struct*, i8*, void (%struct._cmsContext_struct*, i8*)* }
%struct._cmsCACHE = type { [16 x i16], [16 x i16] }
%struct.cmsSEQ = type { i32, %struct._cmsContext_struct*, %struct.cmsPSEQDESC* }
%struct.cmsPSEQDESC = type { i32, i32, i64, i32, %union.cmsProfileID, %struct._cms_MLU_struct*, %struct._cms_MLU_struct*, %struct._cms_MLU_struct* }
%union.cmsProfileID = type { [4 x i32] }
%struct._cms_MLU_struct = type { %struct._cmsContext_struct*, i32, i32, %struct._cmsMLUentry*, i32, i32, i8* }
%struct._cmsMLUentry = type { i16, i16, i32, i32 }
%struct._cmsStageMatrixData = type { double*, double* }
%union.anon = type { double }
%struct.cmsPsSamplerCargo = type { %struct._cmsStageCLutData*, %struct._cms_io_handler*, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct._cmsStageCLutData = type { %union.anon.0, %struct._cms_interp_struc*, i32, i32 }
%union.anon.0 = type { i16* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid output color space\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(colorlistcomment) (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Named color CSA\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"(Prefix) [ (Pantone ) (PANTONE ) ]\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"(Suffix) [ ( CV) ( CVC) ( C) ]\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"  (%s) [ %.3f %.3f %.3f ]\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Profile is not suitable for CSA. Unsupported colorspace.\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"[ /CIEBasedA\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"  <<\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"/DecodeA \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"/MatrixA [ 0.9642 1.0000 0.8249 ]\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"/RangeLMN [ 0.0 0.9642 0.0 1.0000 0.0 0.8249 ]\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"{ %g exp } bind \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"dup \00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"length 1 sub \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"3 -1 roll \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"mul \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"floor cvi \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"exch \00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"ceiling cvi \00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"3 index \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"get \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"4 -1 roll \00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"3 1 roll \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"sub \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"add \00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"65535 div \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c" } bind \00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"dup 0.0 lt { pop 0.0 } if dup 1.0 gt { pop 1.0 } if \00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"/BlackPoint [%f %f %f]\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"/WhitePoint [%f %f %f]\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Perceptual\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"RelativeColorimetric\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"AbsoluteColorimetric\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"/RenderingIntent (%s)\0A\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"[ /CIEBasedABC\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"/DecodeABC [ \00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"/MatrixABC [ \00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"%.6f %.6f %.6f \00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"Cannot create transform Profile -> Lab\00", align 1
@.str.51 = private unnamed_addr constant [68 x i8] c"Only 3, 4 channels supported for CSA. This profile has %d channels.\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"[ /CIEBasedDEF\0A\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"[ /CIEBasedDEFG\0A\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"/DecodeDEF [ \00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"/Table \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"   >>\0A\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c" [\0A\00", align 1
@_cmsPSActualColumn = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"/RangeABC [ 0 1 0 1 0 1]\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"/DecodeABC [\0A\00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"{100 mul  16 add 116 div } bind\0A\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"{255 mul 128 sub 500 div } bind\0A\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"{255 mul 128 sub 200 div } bind\0A\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"/MatrixABC [ 1 1 1 1 0 0 0 0 -1]\0A\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"/RangeLMN [ -0.236 1.254 0 1 -0.635 1.640 ]\0A\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"/DecodeLMN [\0A\00", align 1
@.str.73 = private unnamed_addr constant [93 x i8] c"{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse 0.964200 mul} bind\0A\00", align 1
@.str.74 = private unnamed_addr constant [81 x i8] c"{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse } bind\0A\00", align 1
@.str.75 = private unnamed_addr constant [93 x i8] c"{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse 0.824900 mul} bind\0A\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"Color Rendering Dictionary (CRD)\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"%%%%EndResource\0A\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"\0A%% CRD End\0A\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"%%!PS-Adobe-3.0\0A\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"%%\0A\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"%% %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"%% Source: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"%%         %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"%% Created: %s\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"%%%%BeginResource\0A\00", align 1
@RemoveCR.Buffer = internal global [2048 x i8] zeroinitializer, align 16
@.str.87 = private unnamed_addr constant [26 x i8] c"(colorlistcomment) (%s) \0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"Named profile\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"  (%s) [ %s ]\0A\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"   >>\00", align 1
@.str.91 = private unnamed_addr constant [48 x i8] c" /Current exch /HPSpotTable defineresource pop\0A\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"Cannot create transform Lab -> Profile in CRD creation\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"/ColorRenderingType 1\0A\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"/RenderTable \00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c" %d {} bind \00", align 1
@.str.98 = private unnamed_addr constant [50 x i8] c"/Current exch /ColorRendering defineresource pop\0A\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"/MatrixPQR [1 0 0 0 1 0 0 0 1 ]\0A\00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"/RangePQR [ -0.5 2 -0.5 2 -0.5 2 ]\0A\00", align 1
@.str.101 = private unnamed_addr constant [271 x i8] c"%% Absolute colorimetric -- encode to relative to maximize LUT usage\0A/TransformPQR [\0A{0.9642 mul %g div exch pop exch pop exch pop exch pop} bind\0A{1.0000 mul %g div exch pop exch pop exch pop exch pop} bind\0A{0.8249 mul %g div exch pop exch pop exch pop exch pop} bind\0A]\0A\00", align 1
@.str.102 = private unnamed_addr constant [105 x i8] c"%% Bradford Cone Space\0A/MatrixPQR [0.8951 -0.7502 0.0389 0.2664 1.7135 -0.0685 -0.1614 0.0367 1.0296 ] \0A\00", align 1
@.str.103 = private unnamed_addr constant [234 x i8] c"%% VonKries-like transform in Bradford Cone Space\0A/TransformPQR [\0A{exch pop exch 3 get mul exch pop exch 3 get div} bind\0A{exch pop exch 4 get mul exch pop exch 4 get div} bind\0A{exch pop exch 5 get mul exch pop exch 5 get div} bind\0A]\0A\00", align 1
@.str.104 = private unnamed_addr constant [76 x i8] c"%% VonKries-like transform in Bradford Cone Space plus BPC\0A/TransformPQR [\0A\00", align 1
@.str.105 = private unnamed_addr constant [212 x i8] c"{4 index 3 get div 2 index 3 get mul 2 index 3 get 2 index 3 get sub mul 2 index 3 get 4 index 3 get 3 index 3 get sub mul sub 3 index 3 get 3 index 3 get exch sub div exch pop exch pop exch pop exch pop } bind\0A\00", align 1
@.str.106 = private unnamed_addr constant [212 x i8] c"{4 index 4 get div 2 index 4 get mul 2 index 4 get 2 index 4 get sub mul 2 index 4 get 4 index 4 get 3 index 4 get sub mul sub 3 index 4 get 3 index 4 get exch sub div exch pop exch pop exch pop exch pop } bind\0A\00", align 1
@.str.107 = private unnamed_addr constant [214 x i8] c"{4 index 5 get div 2 index 5 get mul 2 index 5 get 2 index 5 get sub mul 2 index 5 get 4 index 5 get 3 index 5 get sub mul sub 3 index 5 get 3 index 5 get exch sub div exch pop exch pop exch pop exch pop } bind\0A]\0A\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"/RangeLMN [ -0.635 2.0 0 2 -0.635 2.0 ]\0A\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"/EncodeLMN [\0A\00", align 1
@.str.110 = private unnamed_addr constant [87 x i8] c"{ 0.964200  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\0A\00", align 1
@.str.111 = private unnamed_addr constant [87 x i8] c"{ 1.000000  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\0A\00", align 1
@.str.112 = private unnamed_addr constant [87 x i8] c"{ 0.824900  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\0A\00", align 1
@.str.113 = private unnamed_addr constant [36 x i8] c"/MatrixABC [ 0 1 0 1 -1 1 0 0 -1 ]\0A\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"/EncodeABC [\0A\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"{ 116 mul  16 sub 100 div  } bind\0A\00", align 1
@.str.116 = private unnamed_addr constant [35 x i8] c"{ 500 mul 128 add 256 div  } bind\0A\00", align 1
@.str.117 = private unnamed_addr constant [35 x i8] c"{ 200 mul 128 add 256 div  } bind\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cmsGetPostScriptColorResource(%struct._cmsContext_struct* %ContextID, i32 %Type, i8* %hProfile, i32 %Intent, i32 %dwFlags, %struct._cms_io_handler* %io) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Type.addr = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %rc = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !5
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %Type.addr, align 4, !tbaa !5
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %4 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %5 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %call = call i32 @GenerateCSA(%struct._cmsContext_struct* %2, i8* %3, i32 %4, i32 %5, %struct._cms_io_handler* %6) #7
  store i32 %call, i32* %rc, align 4, !tbaa !6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.default
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %9 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %10 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %call2 = call i32 @GenerateCRD(%struct._cmsContext_struct* %7, i8* %8, i32 %9, i32 %10, %struct._cms_io_handler* %11) #7
  store i32 %call2, i32* %rc, align 4, !tbaa !6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %12 = load i32, i32* %rc, align 4, !tbaa !6
  %13 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @GenerateCSA(%struct._cmsContext_struct* %ContextID, i8* %hProfile, i32 %Intent, i32 %dwFlags, %struct._cms_io_handler* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %mem.addr = alloca %struct._cms_io_handler*, align 8
  %dwBytesUsed = alloca i32, align 4
  %lut = alloca %struct._cmsPipeline_struct*, align 8
  %Matrix = alloca %struct._cmsStage_struct*, align 8
  %Shaper = alloca %struct._cmsStage_struct*, align 8
  %ColorSpace = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  store %struct._cms_io_handler* %mem, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %2 = bitcast %struct._cmsStage_struct** %Matrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsStage_struct** %Shaper to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetDeviceClass(i8* %4) #7
  %cmp = icmp eq i32 %call, 1852662636
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %7 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call1 = call i32 @WriteNamedColorCSA(%struct._cms_io_handler* %5, i8* %6, i32 %7) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  br label %Error

if.end:                                           ; preds = %if.then
  br label %if.end.25

if.else:                                          ; preds = %entry
  %8 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetPCS(i8* %9) #7
  store i32 %call3, i32* %ColorSpace, align 4, !tbaa !5
  %10 = load i32, i32* %ColorSpace, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %10, 1482250784
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.else
  %11 = load i32, i32* %ColorSpace, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %11, 1281450528
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %12, i32 9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #7
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %land.lhs.true, %if.else
  %13 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %14 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call8 = call %struct._cmsPipeline_struct* @_cmsReadInputLUT(i8* %13, i32 %14) #7
  store %struct._cmsPipeline_struct* %call8, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %cmp9 = icmp eq %struct._cmsPipeline_struct* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.7
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %call12 = call i32 (%struct._cmsPipeline_struct*, i32, ...) @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct* %16, i32 2, i32 1668707188, i32 1835103334, %struct._cmsStage_struct** %Shaper, %struct._cmsStage_struct** %Matrix) #7
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.end.11
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Matrix, align 8, !tbaa !1
  %20 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Shaper, align 8, !tbaa !1
  %call15 = call i32 @WriteInputMatrixShaper(%struct._cms_io_handler* %17, i8* %18, %struct._cmsStage_struct* %19, %struct._cmsStage_struct* %20) #7
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.14
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.24

if.else.19:                                       ; preds = %if.end.11
  %21 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %23 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %24 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %call20 = call i32 @WriteInputLUT(%struct._cms_io_handler* %21, i8* %22, i32 %23, i32 %24) #7
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.else.19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.else.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.22, %if.then.17, %if.then.10, %if.then.6, %if.end.24
  %25 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.32 [
    i32 0, label %cleanup.cont
    i32 2, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %if.end
  %26 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %26, i32 0, i32 2
  %27 = load i32, i32* %UsedSpace, align 4, !tbaa !8
  store i32 %27, i32* %dwBytesUsed, align 4, !tbaa !6
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %cmp26 = icmp ne %struct._cmsPipeline_struct* %28, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %29) #7
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %30 = load i32, i32* %dwBytesUsed, align 4, !tbaa !6
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

Error:                                            ; preds = %cleanup, %if.then.2
  %31 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %cmp29 = icmp ne %struct._cmsPipeline_struct* %31, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %Error
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %32) #7
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %Error
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

cleanup.32:                                       ; preds = %if.end.31, %if.end.28, %cleanup
  %33 = bitcast %struct._cmsStage_struct** %Shaper to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct._cmsStage_struct** %Matrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct._cmsPipeline_struct** %lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @GenerateCRD(%struct._cmsContext_struct* %ContextID, i8* %hProfile, i32 %Intent, i32 %dwFlags, %struct._cms_io_handler* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %mem.addr = alloca %struct._cms_io_handler*, align 8
  %dwBytesUsed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  store %struct._cms_io_handler* %mem, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and = and i32 %1, 16777216
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  call void @EmitHeader(%struct._cms_io_handler* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i32 0, i32 0), i8* %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetDeviceClass(i8* %4) #7
  %cmp = icmp eq i32 %call, 1852662636
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %7 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %8 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %call2 = call i32 @WriteNamedColorCRD(%struct._cms_io_handler* %5, i8* %6, i32 %7, i32 %8) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %11 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %12 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %call6 = call i32 @WriteOutputLUT(%struct._cms_io_handler* %9, i8* %10, i32 %11, i32 %12) #7
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.5
  %13 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and11 = and i32 %13, 16777216
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0)) #7
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0)) #7
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.10
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem.addr, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %16, i32 0, i32 2
  %17 = load i32, i32* %UsedSpace, align 4, !tbaa !8
  store i32 %17, i32* %dwBytesUsed, align 4, !tbaa !6
  %18 = load i32, i32* %dwBytesUsed, align 4, !tbaa !6
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.8, %if.then.4
  %19 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmsGetPostScriptCRD(%struct._cmsContext_struct* %ContextID, i8* %hProfile, i32 %Intent, i32 %dwFlags, i8* %Buffer, i32 %dwBufferLen) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %Buffer.addr = alloca i8*, align 8
  %dwBufferLen.addr = alloca i32, align 4
  %mem = alloca %struct._cms_io_handler*, align 8
  %dwBytesUsed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %dwBufferLen, i32* %dwBufferLen.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cms_io_handler** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cms_io_handler* @cmsOpenIOhandlerFromNULL(%struct._cmsContext_struct* %3) #7
  store %struct._cms_io_handler* %call, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %6 = load i32, i32* %dwBufferLen.addr, align 4, !tbaa !6
  %call1 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromMem(%struct._cmsContext_struct* %4, i8* %5, i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7
  store %struct._cms_io_handler* %call1, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_io_handler* %7, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %10 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %11 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  %call4 = call i32 @cmsGetPostScriptColorResource(%struct._cmsContext_struct* %8, i32 1, i8* %9, i32 %10, i32 %11, %struct._cms_io_handler* %12) #7
  store i32 %call4, i32* %dwBytesUsed, align 4, !tbaa !6
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  %call5 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %13) #7
  %14 = load i32, i32* %dwBytesUsed, align 4, !tbaa !6
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2
  %15 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct._cms_io_handler** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._cms_io_handler* @cmsOpenIOhandlerFromNULL(%struct._cmsContext_struct*) #2

declare %struct._cms_io_handler* @cmsOpenIOhandlerFromMem(%struct._cmsContext_struct*, i8*, i32, i8*) #2

declare i32 @cmsCloseIOhandler(%struct._cms_io_handler*) #2

; Function Attrs: nounwind uwtable
define i32 @cmsGetPostScriptCSA(%struct._cmsContext_struct* %ContextID, i8* %hProfile, i32 %Intent, i32 %dwFlags, i8* %Buffer, i32 %dwBufferLen) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %Buffer.addr = alloca i8*, align 8
  %dwBufferLen.addr = alloca i32, align 4
  %mem = alloca %struct._cms_io_handler*, align 8
  %dwBytesUsed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %dwBufferLen, i32* %dwBufferLen.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cms_io_handler** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cms_io_handler* @cmsOpenIOhandlerFromNULL(%struct._cmsContext_struct* %3) #7
  store %struct._cms_io_handler* %call, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %6 = load i32, i32* %dwBufferLen.addr, align 4, !tbaa !6
  %call1 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromMem(%struct._cmsContext_struct* %4, i8* %5, i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7
  store %struct._cms_io_handler* %call1, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_io_handler* %7, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %10 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %11 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  %call4 = call i32 @cmsGetPostScriptColorResource(%struct._cmsContext_struct* %8, i32 0, i8* %9, i32 %10, i32 %11, %struct._cms_io_handler* %12) #7
  store i32 %call4, i32* %dwBytesUsed, align 4, !tbaa !6
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %mem, align 8, !tbaa !1
  %call5 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %13) #7
  %14 = load i32, i32* %dwBytesUsed, align 4, !tbaa !6
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2
  %15 = bitcast i32* %dwBytesUsed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct._cms_io_handler** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @cmsGetDeviceClass(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @WriteNamedColorCSA(%struct._cms_io_handler* %m, i8* %hNamedColor, i32 %Intent) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %hNamedColor.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %xform = alloca i8*, align 8
  %hLab = alloca i8*, align 8
  %i = alloca i32, align 4
  %nColors = alloca i32, align 4
  %ColorName = alloca [32 x i8], align 16
  %NamedColorList = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %In = alloca [1 x i16], align 2
  %Lab = alloca %struct.cmsCIELab, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8* %hNamedColor, i8** %hNamedColor.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  %0 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nColors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [32 x i8]* %ColorName to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %6, i32 0, i32 1
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !10
  %call = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %7, %struct.cmsCIExyY* null) #7
  store i8* %call, i8** %hLab, align 8, !tbaa !1
  %8 = load i8*, i8** %hNamedColor.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %hLab, align 8, !tbaa !1
  %10 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call1 = call i8* @cmsCreateTransform(i8* %8, i32 10, i8* %9, i32 4849688, i32 %10, i32 0) #7
  store i8* %call1, i8** %xform, align 8, !tbaa !1
  %11 = load i8*, i8** %xform, align 8, !tbaa !1
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %xform, align 8, !tbaa !1
  %call2 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8* %12) #7
  store %struct._cms_NAMEDCOLORLIST_struct* %call2, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %13 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %13, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.end.5:                                         ; preds = %if.end
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #7
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #7
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)) #7
  %18 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %call10 = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %18) #7
  store i32 %call10, i32* %nColors, align 4, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %19 = load i32, i32* %i, align 4, !tbaa !6
  %20 = load i32, i32* %nColors, align 4, !tbaa !6
  %cmp11 = icmp slt i32 %19, %20
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = bitcast [1 x i16]* %In to i8*
  call void @llvm.lifetime.start(i64 2, i8* %21) #1
  %22 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %22) #1
  %23 = load i32, i32* %i, align 4, !tbaa !6
  %conv = trunc i32 %23 to i16
  %arrayidx = getelementptr inbounds [1 x i16], [1 x i16]* %In, i32 0, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !11
  %24 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !6
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ColorName, i32 0, i32 0
  %call12 = call i32 @cmsNamedColorInfo(%struct._cms_NAMEDCOLORLIST_struct* %24, i32 %25, i8* %arraydecay, i8* null, i8* null, i16* null, i16* null) #7
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %for.body
  %26 = load i8*, i8** %xform, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [1 x i16], [1 x i16]* %In, i32 0, i32 0
  %27 = bitcast i16* %arraydecay15 to i8*
  %28 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @cmsDoTransform(i8* %26, i8* %27, i8* %28, i32 1) #7
  %29 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %arraydecay16 = getelementptr inbounds [32 x i8], [32 x i8]* %ColorName, i32 0, i32 0
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %30 = load double, double* %L, align 8, !tbaa !13
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  %31 = load double, double* %a, align 8, !tbaa !16
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  %32 = load double, double* %b, align 8, !tbaa !17
  %call17 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay16, double %30, double %31, double %32) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %33 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %33) #1
  %34 = bitcast [1 x i16]* %In to i8*
  call void @llvm.lifetime.end(i64 2, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call19 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #7
  %37 = load i8*, i8** %xform, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %37) #7
  %38 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call20 = call i32 @cmsCloseProfile(i8* %38) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %for.end, %if.then.4, %if.then
  %39 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast [32 x i8]* %ColorName to i8*
  call void @llvm.lifetime.end(i64 32, i8* %40) #1
  %41 = bitcast i32* %nColors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @cmsGetPCS(i8*) #2

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

declare %struct._cmsPipeline_struct* @_cmsReadInputLUT(i8*, i32) #2

declare i32 @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @WriteInputMatrixShaper(%struct._cms_io_handler* %m, i8* %hProfile, %struct._cmsStage_struct* %Matrix, %struct._cmsStage_struct* %Shaper) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Matrix.addr = alloca %struct._cmsStage_struct*, align 8
  %Shaper.addr = alloca %struct._cmsStage_struct*, align 8
  %ColorSpace = alloca i32, align 4
  %rc = alloca i32, align 4
  %BlackPointAdaptedToD50 = alloca %struct.cmsCIEXYZ, align 8
  %ShaperCurve = alloca %struct._cms_curve_struct**, align 8
  %Mat = alloca %struct.cmsMAT3, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %Matrix, %struct._cmsStage_struct** %Matrix.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %Shaper, %struct._cmsStage_struct** %Shaper.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cmsCIEXYZ* %BlackPointAdaptedToD50 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetColorSpace(i8* %3) #7
  store i32 %call, i32* %ColorSpace, align 4, !tbaa !5
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ* %BlackPointAdaptedToD50, i8* %4, i32 1, i32 0) #7
  %5 = load i32, i32* %ColorSpace, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 1196573017
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = bitcast %struct._cms_curve_struct*** %ShaperCurve to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Shaper.addr, align 8, !tbaa !1
  %call2 = call %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %7) #7
  store %struct._cms_curve_struct** %call2, %struct._cms_curve_struct*** %ShaperCurve, align 8, !tbaa !1
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %9 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %ShaperCurve, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %9, i64 0
  %10 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %call3 = call i32 @EmitCIEBasedA(%struct._cms_io_handler* %8, %struct._cms_curve_struct* %10, %struct.cmsCIEXYZ* %BlackPointAdaptedToD50) #7
  store i32 %call3, i32* %rc, align 4, !tbaa !6
  %11 = bitcast %struct._cms_curve_struct*** %ShaperCurve to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  br label %if.end.21

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %ColorSpace, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %12, 1380401696
  br i1 %cmp4, label %if.then.5, label %if.else.20

if.then.5:                                        ; preds = %if.else
  %13 = bitcast %struct.cmsMAT3* %Mat to i8*
  call void @llvm.lifetime.start(i64 72, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct.cmsMAT3* %Mat to i8*
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Matrix.addr, align 8, !tbaa !1
  %call6 = call double* @GetPtrToMatrix(%struct._cmsStage_struct* %17) #7
  %18 = bitcast double* %call6 to i8*
  %call7 = call i8* @memmove(i8* %16, i8* %18, i64 72) #8
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.then.5
  %19 = load i32, i32* %i, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %19, 3
  br i1 %cmp8, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4, !tbaa !6
  %cmp10 = icmp slt i32 %20, 3
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %21 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom12 = sext i32 %22 to i64
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Mat, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 %idxprom12
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx13, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 %idxprom
  %23 = load double, double* %arrayidx14, align 8, !tbaa !18
  %mul = fmul double %23, 0x3FFFFFE000000000
  store double %mul, double* %arrayidx14, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %24 = load i32, i32* %j, align 4, !tbaa !6
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4, !tbaa !6
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4, !tbaa !6
  %inc16 = add nsw i32 %25, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %26 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %27 = bitcast %struct.cmsMAT3* %Mat to double*
  %28 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Shaper.addr, align 8, !tbaa !1
  %call18 = call %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %28) #7
  %call19 = call i32 @EmitCIEBasedABC(%struct._cms_io_handler* %26, double* %27, %struct._cms_curve_struct** %call18, %struct.cmsCIEXYZ* %BlackPointAdaptedToD50) #7
  store i32 %call19, i32* %rc, align 4, !tbaa !6
  %29 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.cmsMAT3* %Mat to i8*
  call void @llvm.lifetime.end(i64 72, i8* %31) #1
  br label %if.end

if.else.20:                                       ; preds = %if.else
  %32 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %32, i32 0, i32 1
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !10
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %33, i32 9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then
  %34 = load i32, i32* %rc, align 4, !tbaa !6
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.else.20
  %35 = bitcast %struct.cmsCIEXYZ* %BlackPointAdaptedToD50 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %35) #1
  %36 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @WriteInputLUT(%struct._cms_io_handler* %m, i8* %hProfile, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %hLab = alloca i8*, align 8
  %xform = alloca i8*, align 8
  %nChannels = alloca i32, align 4
  %InputFormat = alloca i32, align 4
  %rc = alloca i32, align 4
  %Profiles = alloca [2 x i8*], align 16
  %BlackPointAdaptedToD50 = alloca %struct.cmsCIEXYZ, align 8
  %cleanup.dest.slot = alloca i32
  %Gray2Y = alloca %struct._cms_curve_struct*, align 8
  %OutFrm = alloca i32, align 4
  %DeviceLink = alloca %struct._cmsPipeline_struct*, align 8
  %v = alloca %struct._cmstransform_struct*, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  %0 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %InputFormat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [2 x i8*]* %Profiles to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.cmsCIEXYZ* %BlackPointAdaptedToD50 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsFormatterForColorspaceOfProfile(i8* %7, i32 2, i32 0) #7
  store i32 %call, i32* %InputFormat, align 4, !tbaa !6
  %8 = load i32, i32* %InputFormat, align 4, !tbaa !6
  %shr = lshr i32 %8, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChannels, align 4, !tbaa !6
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %10 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call1 = call i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ* %BlackPointAdaptedToD50, i8* %9, i32 %10, i32 0) #7
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %11, i32 0, i32 1
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !10
  %call2 = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %12, %struct.cmsCIExyY* null) #7
  store i8* %call2, i8** %hLab, align 8, !tbaa !1
  %13 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %Profiles, i32 0, i64 0
  store i8* %13, i8** %arrayidx, align 8, !tbaa !1
  %14 = load i8*, i8** %hLab, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %Profiles, i32 0, i64 1
  store i8* %14, i8** %arrayidx3, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %Profiles, i32 0, i32 0
  %15 = load i32, i32* %InputFormat, align 4, !tbaa !6
  %16 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call4 = call i8* @cmsCreateMultiprofileTransform(i8** %arraydecay, i32 2, i32 %15, i32 4849688, i32 %16, i32 0) #7
  store i8* %call4, i8** %xform, align 8, !tbaa !1
  %17 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call5 = call i32 @cmsCloseProfile(i8* %17) #7
  %18 = load i8*, i8** %xform, align 8, !tbaa !1
  %cmp = icmp eq i8* %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID6 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %19, i32 0, i32 1
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID6, align 8, !tbaa !10
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %20, i32 9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end:                                           ; preds = %entry
  %21 = load i32, i32* %nChannels, align 4, !tbaa !6
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end
  %22 = bitcast %struct._cms_curve_struct** %Gray2Y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID7 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %23, i32 0, i32 1
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID7, align 8, !tbaa !10
  %25 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %26 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call8 = call %struct._cms_curve_struct* @ExtractGray2Y(%struct._cmsContext_struct* %24, i8* %25, i32 %26) #7
  store %struct._cms_curve_struct* %call8, %struct._cms_curve_struct** %Gray2Y, align 8, !tbaa !1
  %27 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %28 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Gray2Y, align 8, !tbaa !1
  %call9 = call i32 @EmitCIEBasedA(%struct._cms_io_handler* %27, %struct._cms_curve_struct* %28, %struct.cmsCIEXYZ* %BlackPointAdaptedToD50) #7
  %29 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Gray2Y, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %29) #7
  %30 = bitcast %struct._cms_curve_struct** %Gray2Y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end, %if.end
  %31 = bitcast i32* %OutFrm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 655386, i32* %OutFrm, align 4, !tbaa !6
  %32 = bitcast %struct._cmsPipeline_struct** %DeviceLink to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load i8*, i8** %xform, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %35, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %36 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %36, i32 0, i32 8
  %37 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !19
  %call11 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %37) #7
  store %struct._cmsPipeline_struct* %call11, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  %cmp12 = icmp eq %struct._cmsPipeline_struct* %38, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %sw.bb.10
  %39 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %or = or i32 %39, 2
  store i32 %or, i32* %dwFlags.addr, align 4, !tbaa !6
  %40 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID15 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %40, i32 0, i32 1
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID15, align 8, !tbaa !10
  %42 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call16 = call i32 @_cmsOptimizePipeline(%struct._cmsContext_struct* %41, %struct._cmsPipeline_struct** %DeviceLink, i32 %42, i32* %InputFormat, i32* %OutFrm, i32* %dwFlags.addr) #7
  %43 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %44 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  %45 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call17 = call i32 @EmitCIEBasedDEF(%struct._cms_io_handler* %43, %struct._cmsPipeline_struct* %44, i32 %45, %struct.cmsCIEXYZ* %BlackPointAdaptedToD50) #7
  store i32 %call17, i32* %rc, align 4, !tbaa !6
  %46 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %46) #7
  %47 = load i32, i32* %rc, align 4, !tbaa !6
  %cmp18 = icmp eq i32 %47, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then.13
  %48 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct._cmsPipeline_struct** %DeviceLink to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %OutFrm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %51 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID23 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %51, i32 0, i32 1
  %52 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID23, align 8, !tbaa !10
  %53 = load i32, i32* %nChannels, align 4, !tbaa !6
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %52, i32 9, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.51, i32 0, i32 0), i32 %53) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

sw.epilog:                                        ; preds = %cleanup.cont, %sw.bb
  %54 = load i8*, i8** %xform, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %54) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %sw.epilog, %sw.default, %cleanup, %if.then
  %55 = bitcast %struct.cmsCIEXYZ* %BlackPointAdaptedToD50 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %55) #1
  %56 = bitcast [2 x i8*]* %Profiles to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %57 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %InputFormat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare void @cmsPipelineFree(%struct._cmsPipeline_struct*) #2

declare i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct*, %struct.cmsCIExyY*) #2

declare i8* @cmsCreateTransform(i8*, i32, i8*, i32, i32, i32) #2

declare %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8*) #2

declare i32 @_cmsIOPrintf(%struct._cms_io_handler*, i8*, ...) #2

declare i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct*) #2

declare i32 @cmsNamedColorInfo(%struct._cms_NAMEDCOLORLIST_struct*, i32, i8*, i8*, i8*, i16*, i16*) #2

declare void @cmsDoTransform(i8*, i8*, i8*, i32) #2

declare void @cmsDeleteTransform(i8*) #2

declare i32 @cmsCloseProfile(i8*) #2

declare i32 @cmsGetColorSpace(i8*) #2

declare i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ*, i8*, i32, i32) #2

declare %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @EmitCIEBasedA(%struct._cms_io_handler* %m, %struct._cms_curve_struct* %Curve, %struct.cmsCIEXYZ* %BlackPoint) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %Curve.addr = alloca %struct._cms_curve_struct*, align 8
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %Curve, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)) #7
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #7
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #7
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %4 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  call void @Emit1Gamma(%struct._cms_io_handler* %3, %struct._cms_curve_struct* %4) #7
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #7
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0)) #7
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  call void @EmitWhiteBlackD50(%struct._cms_io_handler* %8, %struct.cmsCIEXYZ* %9) #7
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  call void @EmitIntent(%struct._cms_io_handler* %10, i32 0) #7
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #7
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal double* @GetPtrToMatrix(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageMatrixData*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !22
  %3 = bitcast i8* %2 to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %3, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %4 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Double = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %4, i32 0, i32 0
  %5 = load double*, double** %Double, align 8, !tbaa !24
  %6 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret double* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @EmitCIEBasedABC(%struct._cms_io_handler* %m, double* %Matrix, %struct._cms_curve_struct** %CurveSet, %struct.cmsCIEXYZ* %BlackPoint) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %Matrix.addr = alloca double*, align 8
  %CurveSet.addr = alloca %struct._cms_curve_struct**, align 8
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %i = alloca i32, align 4
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store double* %Matrix, double** %Matrix.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct** %CurveSet, %struct._cms_curve_struct*** %CurveSet.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0)) #7
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0)) #7
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %5 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %CurveSet.addr, align 8, !tbaa !1
  call void @EmitNGamma(%struct._cms_io_handler* %4, i32 3, %struct._cms_curve_struct** %5) #7
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %8, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %add = add nsw i32 %10, 0
  %idxprom = sext i32 %add to i64
  %11 = load double*, double** %Matrix.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8, !tbaa !18
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %add5 = add nsw i32 %13, 3
  %idxprom6 = sext i32 %add5 to i64
  %14 = load double*, double** %Matrix.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 %idxprom6
  %15 = load double, double* %arrayidx7, align 8, !tbaa !18
  %16 = load i32, i32* %i, align 4, !tbaa !6
  %add8 = add nsw i32 %16, 6
  %idxprom9 = sext i32 %add8 to i64
  %17 = load double*, double** %Matrix.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %17, i64 %idxprom9
  %18 = load double, double* %arrayidx10, align 8, !tbaa !18
  %call11 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), double %12, double %15, double %18) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %21 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0)) #7
  %22 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %23 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  call void @EmitWhiteBlackD50(%struct._cms_io_handler* %22, %struct.cmsCIEXYZ* %23) #7
  %24 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  call void @EmitIntent(%struct._cms_io_handler* %24, i32 0) #7
  %25 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #7
  %26 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @Emit1Gamma(%struct._cms_io_handler* %m, %struct._cms_curve_struct* %Table) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %Table.addr = alloca %struct._cms_curve_struct*, align 8
  %i = alloca i32, align 4
  %gamma = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %Table, %struct._cms_curve_struct** %Table.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %gamma to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Table.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Table.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %3, i32 0, i32 5
  %4 = load i32, i32* %nEntries, align 4, !tbaa !26
  %cmp1 = icmp ule i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Table.addr, align 8, !tbaa !1
  %call = call i32 @cmsIsToneCurveLinear(%struct._cms_curve_struct* %5) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.3
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Table.addr, align 8, !tbaa !1
  %call6 = call double @cmsEstimateGamma(%struct._cms_curve_struct* %6, double 1.000000e-03) #7
  store double %call6, double* %gamma, align 8, !tbaa !18
  %7 = load double, double* %gamma, align 8, !tbaa !18
  %cmp7 = fcmp ogt double %7, 0.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %9 = load double, double* %gamma, align 8, !tbaa !18
  %call9 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), double %9) #7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)) #7
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  call void @EmitRangeCheck(%struct._cms_io_handler* %11) #7
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %14 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Table.addr, align 8, !tbaa !1
  %nEntries13 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %14, i32 0, i32 5
  %15 = load i32, i32* %nEntries13, align 4, !tbaa !26
  %cmp14 = icmp ult i32 %13, %15
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %17 to i64
  %18 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Table.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %18, i32 0, i32 6
  %19 = load i16*, i16** %Table16, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 %idxprom
  %20 = load i16, i16* %arrayidx, align 2, !tbaa !11
  %conv = zext i16 %20 to i32
  %call15 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 %conv) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call16 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  %24 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call18 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #7
  %25 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call19 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)) #7
  %26 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call20 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #7
  %27 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call21 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  %28 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  %29 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)) #7
  %30 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call24 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #7
  %31 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call25 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)) #7
  %32 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call26 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #7
  %33 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #7
  %34 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call28 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #7
  %35 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call29 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #7
  %36 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call30 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)) #7
  %37 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call31 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #7
  %38 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  %39 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call33 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #7
  %40 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call34 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #7
  %41 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call35 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)) #7
  %42 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call36 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  %43 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call37 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)) #7
  %44 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call38 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #7
  %45 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call39 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #7
  %46 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call40 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #7
  %47 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call41 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #7
  %48 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call42 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.8, %if.then.4, %if.then.2, %if.then
  %49 = bitcast double* %gamma to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @EmitWhiteBlackD50(%struct._cms_io_handler* %m, %struct.cmsCIEXYZ* %BlackPoint) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %1 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %1, i32 0, i32 0
  %2 = load double, double* %X, align 8, !tbaa !13
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %3, i32 0, i32 1
  %4 = load double, double* %Y, align 8, !tbaa !16
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %5, i32 0, i32 2
  %6 = load double, double* %Z, align 8, !tbaa !17
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), double %2, double %4, double %6) #7
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call1 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #7
  %X2 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call1, i32 0, i32 0
  %8 = load double, double* %X2, align 8, !tbaa !13
  %call3 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #7
  %Y4 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call3, i32 0, i32 1
  %9 = load double, double* %Y4, align 8, !tbaa !16
  %call5 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #7
  %Z6 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call5, i32 0, i32 2
  %10 = load double, double* %Z6, align 8, !tbaa !17
  %call7 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), double %8, double %9, double %10) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EmitIntent(%struct._cms_io_handler* %m, i32 %RenderingIntent) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %RenderingIntent.addr = alloca i32, align 4
  %intent = alloca i8*, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i32 %RenderingIntent, i32* %RenderingIntent.addr, align 4, !tbaa !6
  %0 = bitcast i8** %intent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %RenderingIntent.addr, align 4, !tbaa !6
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8** %intent, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i8** %intent, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8** %intent, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8** %intent, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8** %intent, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %intent, align 8, !tbaa !1
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), i8* %3) #7
  %4 = bitcast i8** %intent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

declare i32 @cmsIsToneCurveLinear(%struct._cms_curve_struct*) #2

declare double @cmsEstimateGamma(%struct._cms_curve_struct*, double) #2

; Function Attrs: nounwind uwtable
define internal void @EmitRangeCheck(%struct._cms_io_handler* %m) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i32 0, i32 0)) #7
  ret void
}

declare %struct.cmsCIEXYZ* @cmsD50_XYZ() #2

; Function Attrs: nounwind uwtable
define internal void @EmitNGamma(%struct._cms_io_handler* %m, i32 %n, %struct._cms_curve_struct** %g) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i32, align 4
  %g.addr = alloca %struct._cms_curve_struct**, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !6
  store %struct._cms_curve_struct** %g, %struct._cms_curve_struct*** %g.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !6
  %2 = load i32, i32* %n.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %g.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %4, i64 %idxprom
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cms_curve_struct* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %sub = sub nsw i32 %7, 1
  %idxprom3 = sext i32 %sub to i64
  %8 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %g.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %8, i64 %idxprom3
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx4, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %9, i32 0, i32 6
  %10 = load i16*, i16** %Table16, align 8, !tbaa !28
  %11 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %g.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %12, i64 %idxprom5
  %13 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx6, align 8, !tbaa !1
  %Table167 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %13, i32 0, i32 6
  %14 = load i16*, i16** %Table167, align 8, !tbaa !28
  %15 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %g.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %16, i64 %idxprom8
  %17 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx9, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %17, i32 0, i32 5
  %18 = load i32, i32* %nEntries, align 4, !tbaa !26
  %call = call i32 @GammaTableEquals(i16* %10, i16* %14, i32 %18) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %19 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %if.end
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %g.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %22, i64 %idxprom12
  %23 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx13, align 8, !tbaa !1
  call void @Emit1Gamma(%struct._cms_io_handler* %20, %struct._cms_curve_struct* %23) #7
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %24 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @GammaTableEquals(i16* %g1, i16* %g2, i32 %nEntries) #0 {
entry:
  %g1.addr = alloca i16*, align 8
  %g2.addr = alloca i16*, align 8
  %nEntries.addr = alloca i32, align 4
  store i16* %g1, i16** %g1.addr, align 8, !tbaa !1
  store i16* %g2, i16** %g2.addr, align 8, !tbaa !1
  store i32 %nEntries, i32* %nEntries.addr, align 4, !tbaa !6
  %0 = load i16*, i16** %g1.addr, align 8, !tbaa !1
  %1 = bitcast i16* %0 to i8*
  %2 = load i16*, i16** %g2.addr, align 8, !tbaa !1
  %3 = bitcast i16* %2 to i8*
  %4 = load i32, i32* %nEntries.addr, align 4, !tbaa !6
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 2
  %call = call i32 @memcmp(i8* %1, i8* %3, i64 %mul) #9
  %cmp = icmp eq i32 %call, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @cmsFormatterForColorspaceOfProfile(i8*, i32, i32) #2

declare i8* @cmsCreateMultiprofileTransform(i8**, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._cms_curve_struct* @ExtractGray2Y(%struct._cmsContext_struct* %ContextID, i8* %hProfile, i32 %Intent) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %Out = alloca %struct._cms_curve_struct*, align 8
  %hXYZ = alloca i8*, align 8
  %xform = alloca i8*, align 8
  %i = alloca i32, align 4
  %Gray = alloca i8, align 1
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cms_curve_struct** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %1, i32 256, i16* null) #7
  store %struct._cms_curve_struct* %call, %struct._cms_curve_struct** %Out, align 8, !tbaa !1
  %2 = bitcast i8** %hXYZ to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %call1 = call i8* @cmsCreateXYZProfile() #7
  store i8* %call1, i8** %hXYZ, align 8, !tbaa !1
  %3 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %hXYZ, align 8, !tbaa !1
  %7 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call2 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %4, i8* %5, i32 196617, i8* %6, i32 4784152, i32 %7, i32 256) #7
  store i8* %call2, i8** %xform, align 8, !tbaa !1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Out, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %cmp3 = icmp slt i32 %10, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %Gray) #1
  %11 = load i32, i32* %i, align 4, !tbaa !6
  %conv = trunc i32 %11 to i8
  store i8 %conv, i8* %Gray, align 1, !tbaa !5
  %12 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = load i8*, i8** %xform, align 8, !tbaa !1
  %14 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @cmsDoTransform(i8* %13, i8* %Gray, i8* %14, i32 1) #7
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 1
  %15 = load double, double* %Y, align 8, !tbaa !16
  %mul = fmul double %15, 6.553500e+04
  %call4 = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  %16 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Out, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %17, i32 0, i32 6
  %18 = load i16*, i16** %Table16, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  store i16 %call4, i16* %arrayidx, align 2, !tbaa !11
  %19 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %19) #1
  call void @llvm.lifetime.end(i64 1, i8* %Gray) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %21 = load i8*, i8** %xform, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %21) #7
  %22 = load i8*, i8** %hXYZ, align 8, !tbaa !1
  %call5 = call i32 @cmsCloseProfile(i8* %22) #7
  %23 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Out, align 8, !tbaa !1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i8** %hXYZ to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct._cms_curve_struct** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret %struct._cms_curve_struct* %23
}

declare void @cmsFreeToneCurve(%struct._cms_curve_struct*) #2

declare %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct*) #2

declare i32 @_cmsOptimizePipeline(%struct._cmsContext_struct*, %struct._cmsPipeline_struct**, i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @EmitCIEBasedDEF(%struct._cms_io_handler* %m, %struct._cmsPipeline_struct* %Pipeline, i32 %Intent, %struct.cmsCIEXYZ* %BlackPoint) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %Pipeline.addr = alloca %struct._cmsPipeline_struct*, align 8
  %Intent.addr = alloca i32, align 4
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %PreMaj = alloca i8*, align 8
  %PostMaj = alloca i8*, align 8
  %PreMin = alloca i8*, align 8
  %PostMin = alloca i8*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %Pipeline, %struct._cmsPipeline_struct** %Pipeline.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %0 = bitcast i8** %PreMaj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %PostMaj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %PreMin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %PostMin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %5, i32 0, i32 0
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !29
  store %struct._cmsStage_struct* %6, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call = call i32 @cmsStageInputChannels(%struct._cmsStage_struct* %7) #7
  switch i32 %call, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0)) #7
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8** %PreMaj, align 8, !tbaa !1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8** %PostMaj, align 8, !tbaa !1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0), i8** %PostMin, align 8, !tbaa !1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0), i8** %PreMin, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0)) #7
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i8** %PreMaj, align 8, !tbaa !1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8** %PostMaj, align 8, !tbaa !1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8** %PreMin, align 8, !tbaa !1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8** %PostMin, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call5 = call i32 @cmsStageType(%struct._cmsStage_struct* %11) #7
  %cmp = icmp eq i32 %call5, 1668707188
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0)) #7
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call7 = call i32 @cmsStageOutputChannels(%struct._cmsStage_struct* %14) #7
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call8 = call %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %15) #7
  call void @EmitNGamma(%struct._cms_io_handler* %13, i32 %call7, %struct._cms_curve_struct** %call8) #7
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %17, i32 0, i32 9
  %18 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !31
  store %struct._cmsStage_struct* %18, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call10 = call i32 @cmsStageType(%struct._cmsStage_struct* %19) #7
  %cmp11 = icmp eq i32 %call10, 1668052340
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #7
  %21 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %23 = load i8*, i8** %PreMaj, align 8, !tbaa !1
  %24 = load i8*, i8** %PostMaj, align 8, !tbaa !1
  %25 = load i8*, i8** %PreMin, align 8, !tbaa !1
  %26 = load i8*, i8** %PostMin, align 8, !tbaa !1
  call void @WriteCLUT(%struct._cms_io_handler* %21, %struct._cmsStage_struct* %22, i8* %23, i8* %24, i8* %25, i8* %26, i32 0, i32 0) #7
  %27 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %28 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  call void @EmitLab2XYZ(%struct._cms_io_handler* %28) #7
  %29 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %30 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  call void @EmitWhiteBlackD50(%struct._cms_io_handler* %29, %struct.cmsCIEXYZ* %30) #7
  %31 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %32 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  call void @EmitIntent(%struct._cms_io_handler* %31, i32 %32) #7
  %33 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call16 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0)) #7
  %34 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %sw.default
  %35 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i8** %PostMin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i8** %PreMin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i8** %PostMaj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i8** %PreMaj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct*, i32, i16*) #2

declare i8* @cmsCreateXYZProfile() #2

declare i8* @cmsCreateTransformTHR(%struct._cmsContext_struct*, i8*, i32, i8*, i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #5 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !18
  %0 = load double, double* %d.addr, align 8, !tbaa !18
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !18
  %1 = load double, double* %d.addr, align 8, !tbaa !18
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !18
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !18
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #7
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #5 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !18
  %0 = load double, double* %d.addr, align 8, !tbaa !18
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #7
  %conv = trunc i32 %call to i16
  %conv1 = zext i16 %conv to i32
  %add = add i32 %conv1, 32767
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #5 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !18
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !18
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %val.addr, align 8, !tbaa !18
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !18
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %shr
}

declare i32 @cmsStageInputChannels(%struct._cmsStage_struct*) #2

declare i32 @cmsStageType(%struct._cmsStage_struct*) #2

declare i32 @cmsStageOutputChannels(%struct._cmsStage_struct*) #2

; Function Attrs: nounwind uwtable
define internal void @WriteCLUT(%struct._cms_io_handler* %m, %struct._cmsStage_struct* %mpe, i8* %PreMaj, i8* %PostMaj, i8* %PreMin, i8* %PostMin, i32 %FixWhite, i32 %ColorSpace) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %PreMaj.addr = alloca i8*, align 8
  %PostMaj.addr = alloca i8*, align 8
  %PreMin.addr = alloca i8*, align 8
  %PostMin.addr = alloca i8*, align 8
  %FixWhite.addr = alloca i32, align 4
  %ColorSpace.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sc = alloca %struct.cmsPsSamplerCargo, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  store i8* %PreMaj, i8** %PreMaj.addr, align 8, !tbaa !1
  store i8* %PostMaj, i8** %PostMaj.addr, align 8, !tbaa !1
  store i8* %PreMin, i8** %PreMin.addr, align 8, !tbaa !1
  store i8* %PostMin, i8** %PostMin.addr, align 8, !tbaa !1
  store i32 %FixWhite, i32* %FixWhite.addr, align 4, !tbaa !6
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmsPsSamplerCargo* %sc to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %FirstComponent = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 2
  store i32 -1, i32* %FirstComponent, align 4, !tbaa !32
  %SecondComponent = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 3
  store i32 -1, i32* %SecondComponent, align 4, !tbaa !34
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %2, i32 0, i32 8
  %3 = load i8*, i8** %Data, align 8, !tbaa !22
  %4 = bitcast i8* %3 to %struct._cmsStageCLutData*
  %Pipeline = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 0
  store %struct._cmsStageCLutData* %4, %struct._cmsStageCLutData** %Pipeline, align 8, !tbaa !35
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %m1 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 1
  store %struct._cms_io_handler* %5, %struct._cms_io_handler** %m1, align 8, !tbaa !36
  %6 = load i8*, i8** %PreMaj.addr, align 8, !tbaa !1
  %PreMaj2 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 4
  store i8* %6, i8** %PreMaj2, align 8, !tbaa !37
  %7 = load i8*, i8** %PostMaj.addr, align 8, !tbaa !1
  %PostMaj3 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 5
  store i8* %7, i8** %PostMaj3, align 8, !tbaa !38
  %8 = load i8*, i8** %PreMin.addr, align 8, !tbaa !1
  %PreMin4 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 6
  store i8* %8, i8** %PreMin4, align 8, !tbaa !39
  %9 = load i8*, i8** %PostMin.addr, align 8, !tbaa !1
  %PostMin5 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 7
  store i8* %9, i8** %PostMin5, align 8, !tbaa !40
  %10 = load i32, i32* %FixWhite.addr, align 4, !tbaa !6
  %FixWhite6 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 8
  store i32 %10, i32* %FixWhite6, align 4, !tbaa !41
  %11 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !5
  %ColorSpace7 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 9
  store i32 %11, i32* %ColorSpace7, align 4, !tbaa !42
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0)) #7
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %Pipeline8 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 0
  %14 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Pipeline8, align 8, !tbaa !35
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %14, i32 0, i32 1
  %15 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !43
  %nInputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %15, i32 0, i32 2
  %16 = load i32, i32* %nInputs, align 4, !tbaa !45
  %cmp = icmp ult i32 %13, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %18 to i64
  %Pipeline9 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %sc, i32 0, i32 0
  %19 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Pipeline9, align 8, !tbaa !35
  %Params10 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %19, i32 0, i32 1
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params10, align 8, !tbaa !43
  %nSamples = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %20, i32 0, i32 4
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %nSamples, i32 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %call11 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 %21) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0)) #7
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %25 = bitcast %struct.cmsPsSamplerCargo* %sc to i8*
  %call13 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %24, i32 (i16*, i16*, i8*)* @OutputValueSampler, i8* %25, i32 16777216) #7
  %26 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %27 = load i8*, i8** %PostMin.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %26, i8* %27) #7
  %28 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %PostMaj.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %28, i8* %29) #7
  %30 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call16 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)) #7
  %31 = bitcast %struct.cmsPsSamplerCargo* %sc to i8*
  call void @llvm.lifetime.end(i64 64, i8* %31) #1
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EmitLab2XYZ(%struct._cms_io_handler* %m) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0)) #7
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0)) #7
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.67, i32 0, i32 0)) #7
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0)) #7
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0)) #7
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.70, i32 0, i32 0)) #7
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.71, i32 0, i32 0)) #7
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0)) #7
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %9, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.73, i32 0, i32 0)) #7
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %10, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.74, i32 0, i32 0)) #7
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %11, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.75, i32 0, i32 0)) #7
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  ret void
}

declare i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct*, i32 (i16*, i16*, i8*)*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @OutputValueSampler(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %retval = alloca i32, align 4
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %sc = alloca %struct.cmsPsSamplerCargo*, align 8
  %i = alloca i32, align 4
  %Black = alloca i16*, align 8
  %White = alloca i16*, align 8
  %nOutputs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %wWordOut = alloca i16, align 2
  %wByteOut = alloca i8, align 1
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsPsSamplerCargo** %sc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsPsSamplerCargo*
  store %struct.cmsPsSamplerCargo* %2, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %FixWhite = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %4, i32 0, i32 8
  %5 = load i32, i32* %FixWhite, align 4, !tbaa !41
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %6 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !11
  %conv = zext i16 %7 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then.2, label %if.end.32

if.then.2:                                        ; preds = %if.then
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %8, i64 1
  %9 = load i16, i16* %arrayidx3, align 2, !tbaa !11
  %conv4 = zext i16 %9 to i32
  %cmp5 = icmp sge i32 %conv4, 30720
  br i1 %cmp5, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then.2
  %10 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %10, i64 1
  %11 = load i16, i16* %arrayidx7, align 2, !tbaa !11
  %conv8 = zext i16 %11 to i32
  %cmp9 = icmp sle i32 %conv8, 34816
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.31

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %12 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %12, i64 2
  %13 = load i16, i16* %arrayidx12, align 2, !tbaa !11
  %conv13 = zext i16 %13 to i32
  %cmp14 = icmp sge i32 %conv13, 30720
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.31

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %14 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %14, i64 2
  %15 = load i16, i16* %arrayidx17, align 2, !tbaa !11
  %conv18 = zext i16 %15 to i32
  %cmp19 = icmp sle i32 %conv18, 34816
  br i1 %cmp19, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %land.lhs.true.16
  %16 = bitcast i16** %Black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i16** %White to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %nOutputs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %19, i32 0, i32 9
  %20 = load i32, i32* %ColorSpace, align 4, !tbaa !42
  %call = call i32 @_cmsEndPointsBySpace(i32 %20, i16** %White, i16** %Black, i32* %nOutputs) #7
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.21
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %22 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp24 = icmp ult i32 %21, %22
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %23 to i64
  %24 = load i16*, i16** %White, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx26, align 2, !tbaa !11
  %26 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom27 = zext i32 %26 to i64
  %27 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %27, i64 %idxprom27
  store i16 %25, i16* %arrayidx28, align 2, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.23
  %29 = bitcast i32* %nOutputs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i16** %White to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i16** %Black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true, %if.then.2
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %entry
  %32 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %32, i64 0
  %33 = load i16, i16* %arrayidx34, align 2, !tbaa !11
  %conv35 = zext i16 %33 to i32
  %34 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %FirstComponent = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %34, i32 0, i32 2
  %35 = load i32, i32* %FirstComponent, align 4, !tbaa !32
  %cmp36 = icmp ne i32 %conv35, %35
  br i1 %cmp36, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %if.end.33
  %36 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %FirstComponent39 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %36, i32 0, i32 2
  %37 = load i32, i32* %FirstComponent39, align 4, !tbaa !32
  %cmp40 = icmp ne i32 %37, -1
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.then.38
  %38 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %38, i32 0, i32 1
  %39 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m, align 8, !tbaa !36
  %40 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %PostMin = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %40, i32 0, i32 7
  %41 = load i8*, i8** %PostMin, align 8, !tbaa !40
  %call43 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %39, i8* %41) #7
  %42 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %SecondComponent = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %42, i32 0, i32 3
  store i32 -1, i32* %SecondComponent, align 4, !tbaa !34
  %43 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %m44 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %43, i32 0, i32 1
  %44 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m44, align 8, !tbaa !36
  %45 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %PostMaj = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %45, i32 0, i32 5
  %46 = load i8*, i8** %PostMaj, align 8, !tbaa !38
  %call45 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %44, i8* %46) #7
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.then.38
  store i32 0, i32* @_cmsPSActualColumn, align 4, !tbaa !6
  %47 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %m47 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %47, i32 0, i32 1
  %48 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m47, align 8, !tbaa !36
  %49 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %PreMaj = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %49, i32 0, i32 4
  %50 = load i8*, i8** %PreMaj, align 8, !tbaa !37
  %call48 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %48, i8* %50) #7
  %51 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i16, i16* %51, i64 0
  %52 = load i16, i16* %arrayidx49, align 2, !tbaa !11
  %conv50 = zext i16 %52 to i32
  %53 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %FirstComponent51 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %53, i32 0, i32 2
  store i32 %conv50, i32* %FirstComponent51, align 4, !tbaa !32
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.46, %if.end.33
  %54 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i16, i16* %54, i64 1
  %55 = load i16, i16* %arrayidx53, align 2, !tbaa !11
  %conv54 = zext i16 %55 to i32
  %56 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %SecondComponent55 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %56, i32 0, i32 3
  %57 = load i32, i32* %SecondComponent55, align 4, !tbaa !34
  %cmp56 = icmp ne i32 %conv54, %57
  br i1 %cmp56, label %if.then.58, label %if.end.72

if.then.58:                                       ; preds = %if.end.52
  %58 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %SecondComponent59 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %58, i32 0, i32 3
  %59 = load i32, i32* %SecondComponent59, align 4, !tbaa !34
  %cmp60 = icmp ne i32 %59, -1
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.then.58
  %60 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %m63 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %60, i32 0, i32 1
  %61 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m63, align 8, !tbaa !36
  %62 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %PostMin64 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %62, i32 0, i32 7
  %63 = load i8*, i8** %PostMin64, align 8, !tbaa !40
  %call65 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %61, i8* %63) #7
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.then.58
  %64 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %m67 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %64, i32 0, i32 1
  %65 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m67, align 8, !tbaa !36
  %66 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %PreMin = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %66, i32 0, i32 6
  %67 = load i8*, i8** %PreMin, align 8, !tbaa !39
  %call68 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %65, i8* %67) #7
  %68 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i16, i16* %68, i64 1
  %69 = load i16, i16* %arrayidx69, align 2, !tbaa !11
  %conv70 = zext i16 %69 to i32
  %70 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %SecondComponent71 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %70, i32 0, i32 3
  store i32 %conv70, i32* %SecondComponent71, align 4, !tbaa !34
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.66, %if.end.52
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.82, %if.end.72
  %71 = load i32, i32* %i, align 4, !tbaa !6
  %72 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %Pipeline = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %72, i32 0, i32 0
  %73 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Pipeline, align 8, !tbaa !35
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %73, i32 0, i32 1
  %74 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !43
  %nOutputs74 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %74, i32 0, i32 3
  %75 = load i32, i32* %nOutputs74, align 4, !tbaa !47
  %cmp75 = icmp ult i32 %71, %75
  br i1 %cmp75, label %for.body.77, label %for.end.84

for.body.77:                                      ; preds = %for.cond.73
  %76 = bitcast i16* %wWordOut to i8*
  call void @llvm.lifetime.start(i64 2, i8* %76) #1
  %77 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom78 = zext i32 %77 to i64
  %78 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16, i16* %78, i64 %idxprom78
  %79 = load i16, i16* %arrayidx79, align 2, !tbaa !11
  store i16 %79, i16* %wWordOut, align 2, !tbaa !11
  call void @llvm.lifetime.start(i64 1, i8* %wByteOut) #1
  %80 = load i16, i16* %wWordOut, align 2, !tbaa !11
  %call80 = call zeroext i8 @Word2Byte(i16 zeroext %80) #7
  store i8 %call80, i8* %wByteOut, align 1, !tbaa !5
  %81 = load %struct.cmsPsSamplerCargo*, %struct.cmsPsSamplerCargo** %sc, align 8, !tbaa !1
  %m81 = getelementptr inbounds %struct.cmsPsSamplerCargo, %struct.cmsPsSamplerCargo* %81, i32 0, i32 1
  %82 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m81, align 8, !tbaa !36
  %83 = load i8, i8* %wByteOut, align 1, !tbaa !5
  call void @WriteByte(%struct._cms_io_handler* %82, i8 zeroext %83) #7
  call void @llvm.lifetime.end(i64 1, i8* %wByteOut) #1
  %84 = bitcast i16* %wWordOut to i8*
  call void @llvm.lifetime.end(i64 2, i8* %84) #1
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.77
  %85 = load i32, i32* %i, align 4, !tbaa !6
  %inc83 = add i32 %85, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !6
  br label %for.cond.73

for.end.84:                                       ; preds = %for.cond.73
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %for.end.84, %cleanup
  %86 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast %struct.cmsPsSamplerCargo** %sc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = load i32, i32* %retval
  ret i32 %88
}

declare i32 @_cmsEndPointsBySpace(i32, i16**, i16**, i32*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @Word2Byte(i16 zeroext %w) #0 {
entry:
  %w.addr = alloca i16, align 2
  store i16 %w, i16* %w.addr, align 2, !tbaa !11
  %0 = load i16, i16* %w.addr, align 2, !tbaa !11
  %conv = uitofp i16 %0 to double
  %div = fdiv double %conv, 2.570000e+02
  %add = fadd double %div, 5.000000e-01
  %call = call double @floor(double %add) #10
  %conv1 = fptoui double %call to i8
  ret i8 %conv1
}

; Function Attrs: nounwind uwtable
define internal void @WriteByte(%struct._cms_io_handler* %m, i8 zeroext %b) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %b.addr = alloca i8, align 1
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8 %b, i8* %b.addr, align 1, !tbaa !5
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %1 = load i8, i8* %b.addr, align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 %conv) #7
  %2 = load i32, i32* @_cmsPSActualColumn, align 4, !tbaa !6
  %add = add nsw i32 %2, 2
  store i32 %add, i32* @_cmsPSActualColumn, align 4, !tbaa !6
  %3 = load i32, i32* @_cmsPSActualColumn, align 4, !tbaa !6
  %cmp = icmp sgt i32 %3, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0)) #7
  store i32 0, i32* @_cmsPSActualColumn, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #6

; Function Attrs: nounwind uwtable
define internal void @EmitHeader(%struct._cms_io_handler* %m, i8* %Title, i8* %hProfile) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %Title.addr = alloca i8*, align 8
  %hProfile.addr = alloca i8*, align 8
  %timer = alloca i64, align 8
  %Description = alloca %struct._cms_MLU_struct*, align 8
  %Copyright = alloca %struct._cms_MLU_struct*, align 8
  %DescASCII = alloca [256 x i8], align 16
  %CopyrightASCII = alloca [256 x i8], align 16
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8* %Title, i8** %Title.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast i64* %timer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cms_MLU_struct** %Description to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cms_MLU_struct** %Copyright to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [256 x i8]* %DescASCII to i8*
  call void @llvm.lifetime.start(i64 256, i8* %3) #1
  %4 = bitcast [256 x i8]* %CopyrightASCII to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #1
  %call = call i64 @time(i64* %timer) #8
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i8* @cmsReadTag(i8* %5, i32 1684370275) #7
  %6 = bitcast i8* %call1 to %struct._cms_MLU_struct*
  store %struct._cms_MLU_struct* %6, %struct._cms_MLU_struct** %Description, align 8, !tbaa !1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call2 = call i8* @cmsReadTag(i8* %7, i32 1668313716) #7
  %8 = bitcast i8* %call2 to %struct._cms_MLU_struct*
  store %struct._cms_MLU_struct* %8, %struct._cms_MLU_struct** %Copyright, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %DescASCII, i32 0, i64 255
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %DescASCII, i32 0, i64 0
  store i8 0, i8* %arrayidx3, align 1, !tbaa !5
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %CopyrightASCII, i32 0, i64 255
  store i8 0, i8* %arrayidx4, align 1, !tbaa !5
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %CopyrightASCII, i32 0, i64 0
  store i8 0, i8* %arrayidx5, align 1, !tbaa !5
  %9 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Description, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_MLU_struct* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Description, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %DescASCII, i32 0, i32 0
  %call6 = call i32 @cmsMLUgetASCII(%struct._cms_MLU_struct* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* %arraydecay, i32 255) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Copyright, align 8, !tbaa !1
  %cmp7 = icmp ne %struct._cms_MLU_struct* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %12 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Copyright, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %CopyrightASCII, i32 0, i32 0
  %call10 = call i32 @cmsMLUgetASCII(%struct._cms_MLU_struct* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i8* %arraydecay9, i32 255) #7
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0)) #7
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0)) #7
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %Title.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* %16) #7
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %DescASCII, i32 0, i32 0
  %call16 = call i8* @RemoveCR(i8* %arraydecay15) #7
  %call17 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), i8* %call16) #7
  %18 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %CopyrightASCII, i32 0, i32 0
  %call19 = call i8* @RemoveCR(i8* %arraydecay18) #7
  %call20 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* %call19) #7
  %19 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call21 = call i8* @ctime(i64* %timer) #8
  %call22 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0), i8* %call21) #7
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0)) #7
  %21 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call24 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0)) #7
  %22 = bitcast [256 x i8]* %CopyrightASCII to i8*
  call void @llvm.lifetime.end(i64 256, i8* %22) #1
  %23 = bitcast [256 x i8]* %DescASCII to i8*
  call void @llvm.lifetime.end(i64 256, i8* %23) #1
  %24 = bitcast %struct._cms_MLU_struct** %Copyright to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct._cms_MLU_struct** %Description to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %timer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @WriteNamedColorCRD(%struct._cms_io_handler* %m, i8* %hNamedColor, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %hNamedColor.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %xform = alloca i8*, align 8
  %i = alloca i32, align 4
  %nColors = alloca i32, align 4
  %nColorant = alloca i32, align 4
  %OutputFormat = alloca i32, align 4
  %ColorName = alloca [32 x i8], align 16
  %Colorant = alloca [128 x i8], align 16
  %NamedColorList = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %In = alloca [1 x i16], align 2
  %Out = alloca [16 x i16], align 16
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8* %hNamedColor, i8** %hNamedColor.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  %0 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nColors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nColorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %OutputFormat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [32 x i8]* %ColorName to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast [128 x i8]* %Colorant to i8*
  call void @llvm.lifetime.start(i64 128, i8* %6) #1
  %7 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %hNamedColor.addr, align 8, !tbaa !1
  %call = call i32 @cmsFormatterForColorspaceOfProfile(i8* %8, i32 2, i32 0) #7
  store i32 %call, i32* %OutputFormat, align 4, !tbaa !6
  %9 = load i32, i32* %OutputFormat, align 4, !tbaa !6
  %shr = lshr i32 %9, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nColorant, align 4, !tbaa !6
  %10 = load i8*, i8** %hNamedColor.addr, align 8, !tbaa !1
  %11 = load i32, i32* %OutputFormat, align 4, !tbaa !6
  %12 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %13 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %call1 = call i8* @cmsCreateTransform(i8* %10, i32 10, i8* null, i32 %11, i32 %12, i32 %13) #7
  store i8* %call1, i8** %xform, align 8, !tbaa !1
  %14 = load i8*, i8** %xform, align 8, !tbaa !1
  %cmp = icmp eq i8* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %xform, align 8, !tbaa !1
  %call2 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8* %15) #7
  store %struct._cms_NAMEDCOLORLIST_struct* %call2, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %16 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %16, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.5:                                         ; preds = %if.end
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  %18 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0)) #7
  %19 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #7
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)) #7
  %21 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %call10 = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %21) #7
  store i32 %call10, i32* %nColors, align 4, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %23 = load i32, i32* %nColors, align 4, !tbaa !6
  %cmp11 = icmp slt i32 %22, %23
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast [1 x i16]* %In to i8*
  call void @llvm.lifetime.start(i64 2, i8* %24) #1
  %25 = bitcast [16 x i16]* %Out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %25) #1
  %26 = load i32, i32* %i, align 4, !tbaa !6
  %conv = trunc i32 %26 to i16
  %arrayidx = getelementptr inbounds [1 x i16], [1 x i16]* %In, i32 0, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !11
  %27 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !6
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ColorName, i32 0, i32 0
  %call12 = call i32 @cmsNamedColorInfo(%struct._cms_NAMEDCOLORLIST_struct* %27, i32 %28, i8* %arraydecay, i8* null, i8* null, i16* null, i16* null) #7
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %for.body
  %29 = load i8*, i8** %xform, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [1 x i16], [1 x i16]* %In, i32 0, i32 0
  %30 = bitcast i16* %arraydecay15 to i8*
  %arraydecay16 = getelementptr inbounds [16 x i16], [16 x i16]* %Out, i32 0, i32 0
  %31 = bitcast i16* %arraydecay16 to i8*
  call void @cmsDoTransform(i8* %29, i8* %30, i8* %31, i32 1) #7
  %arraydecay17 = getelementptr inbounds [128 x i8], [128 x i8]* %Colorant, i32 0, i32 0
  %32 = load i32, i32* %nColorant, align 4, !tbaa !6
  %arraydecay18 = getelementptr inbounds [16 x i16], [16 x i16]* %Out, i32 0, i32 0
  call void @BuildColorantList(i8* %arraydecay17, i32 %32, i16* %arraydecay18) #7
  %33 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %ColorName, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [128 x i8], [128 x i8]* %Colorant, i32 0, i32 0
  %call21 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i8* %arraydecay19, i8* %arraydecay20) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %34 = bitcast [16 x i16]* %Out to i8*
  call void @llvm.lifetime.end(i64 32, i8* %34) #1
  %35 = bitcast [1 x i16]* %In to i8*
  call void @llvm.lifetime.end(i64 2, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %36 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)) #7
  %38 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and24 = and i32 %38, 16777216
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %for.end
  %39 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.91, i32 0, i32 0)) #7
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %for.end
  %40 = load i8*, i8** %xform, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %40) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.end.28, %if.then.4, %if.then
  %41 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast [128 x i8]* %Colorant to i8*
  call void @llvm.lifetime.end(i64 128, i8* %42) #1
  %43 = bitcast [32 x i8]* %ColorName to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast i32* %OutputFormat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %nColorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %nColors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @WriteOutputLUT(%struct._cms_io_handler* %m, i8* %hProfile, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %hLab = alloca i8*, align 8
  %xform = alloca i8*, align 8
  %i = alloca i32, align 4
  %nChannels = alloca i32, align 4
  %OutputFormat = alloca i32, align 4
  %v = alloca %struct._cmstransform_struct*, align 8
  %DeviceLink = alloca %struct._cmsPipeline_struct*, align 8
  %Profiles = alloca [3 x i8*], align 16
  %BlackPointAdaptedToD50 = alloca %struct.cmsCIEXYZ, align 8
  %lDoBPC = alloca i32, align 4
  %lFixWhite = alloca i32, align 4
  %InFrm = alloca i32, align 4
  %RelativeEncodingIntent = alloca i32, align 4
  %ColorSpace = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  %0 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %OutputFormat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct._cmsPipeline_struct** %DeviceLink to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [3 x i8*]* %Profiles to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct.cmsCIEXYZ* %BlackPointAdaptedToD50 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast i32* %lDoBPC to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and = and i32 %10, 8192
  store i32 %and, i32* %lDoBPC, align 4, !tbaa !6
  %11 = bitcast i32* %lFixWhite to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and1 = and i32 %12, 4
  %tobool = icmp ne i32 %and1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %lFixWhite, align 4, !tbaa !6
  %13 = bitcast i32* %InFrm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 655386, i32* %InFrm, align 4, !tbaa !6
  %14 = bitcast i32* %RelativeEncodingIntent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %16, i32 0, i32 1
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !10
  %call = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %17, %struct.cmsCIExyY* null) #7
  store i8* %call, i8** %hLab, align 8, !tbaa !1
  %18 = load i8*, i8** %hLab, align 8, !tbaa !1
  %cmp = icmp eq i8* %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call2 = call i32 @cmsFormatterForColorspaceOfProfile(i8* %19, i32 2, i32 0) #7
  store i32 %call2, i32* %OutputFormat, align 4, !tbaa !6
  %20 = load i32, i32* %OutputFormat, align 4, !tbaa !6
  %shr = lshr i32 %20, 3
  %and3 = and i32 %shr, 15
  store i32 %and3, i32* %nChannels, align 4, !tbaa !6
  %21 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsGetColorSpace(i8* %21) #7
  store i32 %call4, i32* %ColorSpace, align 4, !tbaa !5
  %22 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  store i32 %22, i32* %RelativeEncodingIntent, align 4, !tbaa !6
  %23 = load i32, i32* %RelativeEncodingIntent, align 4, !tbaa !6
  %cmp5 = icmp eq i32 %23, 3
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %RelativeEncodingIntent, align 4, !tbaa !6
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %24 = load i8*, i8** %hLab, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %Profiles, i32 0, i64 0
  store i8* %24, i8** %arrayidx, align 8, !tbaa !1
  %25 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %Profiles, i32 0, i64 1
  store i8* %25, i8** %arrayidx8, align 8, !tbaa !1
  %26 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID9 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %26, i32 0, i32 1
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID9, align 8, !tbaa !10
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %Profiles, i32 0, i32 0
  %28 = load i32, i32* %OutputFormat, align 4, !tbaa !6
  %29 = load i32, i32* %RelativeEncodingIntent, align 4, !tbaa !6
  %call10 = call i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct* %27, i8** %arraydecay, i32 2, i32 4849688, i32 %28, i32 %29, i32 0) #7
  store i8* %call10, i8** %xform, align 8, !tbaa !1
  %30 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call11 = call i32 @cmsCloseProfile(i8* %30) #7
  %31 = load i8*, i8** %xform, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %31, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.7
  %32 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID14 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %32, i32 0, i32 1
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID14, align 8, !tbaa !10
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %33, i32 9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.94, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.7
  %34 = load i8*, i8** %xform, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %35, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %36 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %36, i32 0, i32 8
  %37 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !19
  %call16 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %37) #7
  store %struct._cmsPipeline_struct* %call16, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  %cmp17 = icmp eq %struct._cmsPipeline_struct* %38, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  %39 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %or = or i32 %39, 2
  store i32 %or, i32* %dwFlags.addr, align 4, !tbaa !6
  %40 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %ContextID20 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %40, i32 0, i32 1
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID20, align 8, !tbaa !10
  %42 = load i32, i32* %RelativeEncodingIntent, align 4, !tbaa !6
  %call21 = call i32 @_cmsOptimizePipeline(%struct._cmsContext_struct* %41, %struct._cmsPipeline_struct** %DeviceLink, i32 %42, i32* %InFrm, i32* %OutputFormat, i32* %dwFlags.addr) #7
  %43 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  %44 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0)) #7
  %45 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %46 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %call24 = call i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ* %BlackPointAdaptedToD50, i8* %45, i32 %46, i32 0) #7
  %47 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  call void @EmitWhiteBlackD50(%struct._cms_io_handler* %47, %struct.cmsCIEXYZ* %BlackPointAdaptedToD50) #7
  %48 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %50 = load i32, i32* %lDoBPC, align 4, !tbaa !6
  %51 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %cmp25 = icmp eq i32 %51, 3
  %conv = zext i1 %cmp25 to i32
  call void @EmitPQRStage(%struct._cms_io_handler* %48, i8* %49, i32 %50, i32 %conv) #7
  %52 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  call void @EmitXYZ2Lab(%struct._cms_io_handler* %52) #7
  %53 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  %cmp26 = icmp eq i32 %53, 3
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.19
  store i32 0, i32* %lFixWhite, align 4, !tbaa !6
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.19
  %54 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call30 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0)) #7
  %55 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %56 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  %call31 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %56) #7
  %57 = load i32, i32* %lFixWhite, align 4, !tbaa !6
  %58 = load i32, i32* %ColorSpace, align 4, !tbaa !5
  call void @WriteCLUT(%struct._cms_io_handler* %55, %struct._cmsStage_struct* %call31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0), i32 %57, i32 %58) #7
  %59 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %60 = load i32, i32* %nChannels, align 4, !tbaa !6
  %call32 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i32 %60) #7
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %61 = load i32, i32* %i, align 4, !tbaa !6
  %62 = load i32, i32* %nChannels, align 4, !tbaa !6
  %cmp33 = icmp slt i32 %61, %62
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call35 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call36 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %66 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %67 = load i32, i32* %Intent.addr, align 4, !tbaa !6
  call void @EmitIntent(%struct._cms_io_handler* %66, i32 %67) #7
  %68 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call37 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #7
  %69 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and38 = and i32 %69, 16777216
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %for.end
  %70 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call41 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.98, i32 0, i32 0)) #7
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %for.end
  %71 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %DeviceLink, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %71) #7
  %72 = load i8*, i8** %xform, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %72) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.18, %if.then.13, %if.then
  %73 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %RelativeEncodingIntent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %InFrm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %lFixWhite to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %lDoBPC to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.cmsCIEXYZ* %BlackPointAdaptedToD50 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %78) #1
  %79 = bitcast [3 x i8*]* %Profiles to i8*
  call void @llvm.lifetime.end(i64 24, i8* %79) #1
  %80 = bitcast %struct._cmsPipeline_struct** %DeviceLink to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %OutputFormat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i8* @cmsReadTag(i8*, i32) #2

declare i32 @cmsMLUgetASCII(%struct._cms_MLU_struct*, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @RemoveCR(i8* %txt) #0 {
entry:
  %txt.addr = alloca i8*, align 8
  %pt = alloca i8*, align 8
  store i8* %txt, i8** %txt.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %txt.addr, align 8, !tbaa !1
  %call = call i8* @strncpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @RemoveCR.Buffer, i32 0, i32 0), i8* %1, i64 2047) #8
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @RemoveCR.Buffer, i32 0, i64 2047), align 1, !tbaa !5
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @RemoveCR.Buffer, i32 0, i32 0), i8** %pt, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %pt, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !5
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %pt, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !5
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i8*, i8** %pt, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %8 = load i8*, i8** %pt, align 8, !tbaa !1
  store i8 32, i8* %8, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8*, i8** %pt, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = bitcast i8** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @RemoveCR.Buffer, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @BuildColorantList(i8* %Colorant, i32 %nColorant, i16* %Out) #0 {
entry:
  %Colorant.addr = alloca i8*, align 8
  %nColorant.addr = alloca i32, align 4
  %Out.addr = alloca i16*, align 8
  %Buff = alloca [32 x i8], align 16
  %j = alloca i32, align 4
  store i8* %Colorant, i8** %Colorant.addr, align 8, !tbaa !1
  store i32 %nColorant, i32* %nColorant.addr, align 4, !tbaa !6
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  %0 = bitcast [32 x i8]* %Buff to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %Colorant.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %3 = load i32, i32* %nColorant.addr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %3, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 16, i32* %nColorant.addr, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %j, align 4, !tbaa !6
  %5 = load i32, i32* %nColorant.addr, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %Buff, i32 0, i32 0
  %6 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !11
  %conv = zext i16 %8 to i32
  %conv3 = sitofp i32 %conv to double
  %div = fdiv double %conv3, 6.553500e+04
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), double %div) #8
  %9 = load i8*, i8** %Colorant.addr, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %Buff, i32 0, i32 0
  %call5 = call i8* @strcat(i8* %9, i8* %arraydecay4) #8
  %10 = load i32, i32* %j, align 4, !tbaa !6
  %11 = load i32, i32* %nColorant.addr, align 4, !tbaa !6
  %sub = sub nsw i32 %11, 1
  %cmp6 = icmp slt i32 %10, %sub
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body
  %12 = load i8*, i8** %Colorant.addr, align 8, !tbaa !1
  %call9 = call i8* @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0)) #8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %13 = load i32, i32* %j, align 4, !tbaa !6
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast [32 x i8]* %Buff to i8*
  call void @llvm.lifetime.end(i64 32, i8* %15) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct*, i8**, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @EmitPQRStage(%struct._cms_io_handler* %m, i8* %hProfile, i32 %DoBPC, i32 %lIsAbsolute) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  %hProfile.addr = alloca i8*, align 8
  %DoBPC.addr = alloca i32, align 4
  %lIsAbsolute.addr = alloca i32, align 4
  %White = alloca %struct.cmsCIEXYZ, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %DoBPC, i32* %DoBPC.addr, align 4, !tbaa !6
  store i32 %lIsAbsolute, i32* %lIsAbsolute.addr, align 4, !tbaa !6
  %0 = load i32, i32* %lIsAbsolute.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.cmsCIEXYZ* %White to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @_cmsReadMediaWhitePoint(%struct.cmsCIEXYZ* %White, i8* %2) #7
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.99, i32 0, i32 0)) #7
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.100, i32 0, i32 0)) #7
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %White, i32 0, i32 0
  %6 = load double, double* %X, align 8, !tbaa !13
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %White, i32 0, i32 1
  %7 = load double, double* %Y, align 8, !tbaa !16
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %White, i32 0, i32 2
  %8 = load double, double* %Z, align 8, !tbaa !17
  %call3 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %5, i8* getelementptr inbounds ([271 x i8], [271 x i8]* @.str.101, i32 0, i32 0), double %6, double %7, double %8) #7
  %9 = bitcast %struct.cmsCIEXYZ* %White to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #1
  br label %if.end.13

if.end:                                           ; preds = %entry
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %10, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.102, i32 0, i32 0)) #7
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.100, i32 0, i32 0)) #7
  %12 = load i32, i32* %DoBPC.addr, align 4, !tbaa !6
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %13, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.103, i32 0, i32 0)) #7
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %14, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.104, i32 0, i32 0)) #7
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %15, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.105, i32 0, i32 0)) #7
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %16, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.106, i32 0, i32 0)) #7
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %17, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.107, i32 0, i32 0)) #7
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.else, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EmitXYZ2Lab(%struct._cms_io_handler* %m) #0 {
entry:
  %m.addr = alloca %struct._cms_io_handler*, align 8
  store %struct._cms_io_handler* %m, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.108, i32 0, i32 0)) #7
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0)) #7
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %2, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.110, i32 0, i32 0)) #7
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %3, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.111, i32 0, i32 0)) #7
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %4, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.112, i32 0, i32 0)) #7
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.113, i32 0, i32 0)) #7
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0)) #7
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call8 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.115, i32 0, i32 0)) #7
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.116, i32 0, i32 0)) #7
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.117, i32 0, i32 0)) #7
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %m.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct._cms_io_handler*, i8*, ...) @_cmsIOPrintf(%struct._cms_io_handler* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  ret void
}

declare %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct*) #2

declare i32 @_cmsReadMediaWhitePoint(%struct.cmsCIEXYZ*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !7, i64 16}
!9 = !{!"_cms_io_handler", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !3, i64 24, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312}
!10 = !{!9, !2, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !3, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"double", !3, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!14, !15, i64 16}
!18 = !{!15, !15, i64 0}
!19 = !{!20, !2, i64 112}
!20 = !{!"_cmstransform_struct", !7, i64 0, !7, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !21, i64 48, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !3, i64 144, !3, i64 148, !14, i64 152, !14, i64 176, !2, i64 200, !7, i64 208, !15, i64 216, !7, i64 224, !2, i64 232, !2, i64 240, !2, i64 248}
!21 = !{!"", !3, i64 0, !3, i64 32}
!22 = !{!23, !2, i64 48}
!23 = !{!"_cmsStage_struct", !2, i64 0, !3, i64 8, !3, i64 12, !7, i64 16, !7, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!24 = !{!25, !2, i64 0}
!25 = !{!"", !2, i64 0, !2, i64 8}
!26 = !{!27, !7, i64 40}
!27 = !{!"_cms_curve_struct", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48}
!28 = !{!27, !2, i64 48}
!29 = !{!30, !2, i64 0}
!30 = !{!"_cmsPipeline_struct", !2, i64 0, !7, i64 8, !7, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64}
!31 = !{!23, !2, i64 56}
!32 = !{!33, !7, i64 16}
!33 = !{!"", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !7, i64 56, !3, i64 60}
!34 = !{!33, !7, i64 20}
!35 = !{!33, !2, i64 0}
!36 = !{!33, !2, i64 8}
!37 = !{!33, !2, i64 24}
!38 = !{!33, !2, i64 32}
!39 = !{!33, !2, i64 40}
!40 = !{!33, !2, i64 48}
!41 = !{!33, !7, i64 56}
!42 = !{!33, !3, i64 60}
!43 = !{!44, !2, i64 8}
!44 = !{!"", !3, i64 0, !2, i64 8, !7, i64 16, !7, i64 20}
!45 = !{!46, !7, i64 12}
!46 = !{!"_cms_interp_struc", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !3, i64 20, !3, i64 52, !3, i64 84, !2, i64 120, !3, i64 128}
!47 = !{!46, !7, i64 16}
