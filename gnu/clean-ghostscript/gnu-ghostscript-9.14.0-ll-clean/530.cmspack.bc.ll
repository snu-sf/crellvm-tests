; ModuleID = './cmspack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsFormattersPluginChunkType = type { %struct._cms_formatters_factory_list* }
%struct._cms_formatters_factory_list = type { i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)*, %struct._cms_formatters_factory_list* }
%struct._cmstransform_struct = type { i32, i32, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)*, {}*, {}*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, %struct._cmsCACHE, %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct*, %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct*, i32, i32, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ, %struct.cmsSEQ*, i32, double, i32, %struct._cmsContext_struct*, i8*, void (%struct._cmsContext_struct*, i8*)* }
%struct._cmsCACHE = type { [16 x i16], [16 x i16] }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cms_NAMEDCOLORLIST_struct = type { i32, i32, i32, [33 x i8], [33 x i8], %struct._cmsNAMEDCOLOR*, %struct._cmsContext_struct* }
%struct._cmsNAMEDCOLOR = type { [256 x i8], [3 x i16], [16 x i16] }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsSEQ = type { i32, %struct._cmsContext_struct*, %struct.cmsPSEQDESC* }
%struct.cmsPSEQDESC = type { i32, i32, i64, i32, %union.cmsProfileID, %struct._cms_MLU_struct*, %struct._cms_MLU_struct*, %struct._cms_MLU_struct* }
%union.cmsProfileID = type { [4 x i32] }
%struct._cms_MLU_struct = type { %struct._cmsContext_struct*, i32, i32, %struct._cmsMLUentry*, i32, i32, i8* }
%struct._cmsMLUentry = type { i16, i16, i32, i32 }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.cmsFormatters16 = type { i32, i32, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* }
%struct.cmsFormattersFloat = type { i32, i32, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.cmsPluginFormatters = type { %struct._cmsPluginBaseStruct, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)* }
%union.cmsFormatter = type { i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* }
%struct.cmsCIELab = type { double, double, double }
%union.anon = type { double }

@_cmsFormattersPluginChunk = global %struct._cmsFormattersPluginChunkType zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"(ctx != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"./lcms2/src/cmspack.c\00", align 1
@__PRETTY_FUNCTION__._cmsAllocFormattersPluginChunk = private unnamed_addr constant [100 x i8] c"void _cmsAllocFormattersPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)\00", align 1
@_cmsAllocFormattersPluginChunk.FormattersPluginChunk = internal global %struct._cmsFormattersPluginChunkType zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"(head != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.DupFormatterFactoryList = private unnamed_addr constant [93 x i8] c"void DupFormatterFactoryList(struct _cmsContext_struct *, const struct _cmsContext_struct *)\00", align 1
@InputFormatters16 = internal global [43 x %struct.cmsFormatters16] [%struct.cmsFormatters16 { i32 4849688, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollLabDoubleTo16 }, %struct.cmsFormatters16 { i32 4784152, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollXYZDoubleTo16 }, %struct.cmsFormatters16 { i32 4849692, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollLabFloatTo16 }, %struct.cmsFormatters16 { i32 4784156, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollXYZFloatTo16 }, %struct.cmsFormatters16 { i32 4390920, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollDouble1Chan }, %struct.cmsFormatters16 { i32 4194304, i32 2062328, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollDoubleTo16 }, %struct.cmsFormatters16 { i32 4194308, i32 2062328, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollFloatTo16 }, %struct.cmsFormatters16 { i32 4194306, i32 2062328, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollHalfTo16 }, %struct.cmsFormatters16 { i32 9, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll1Byte }, %struct.cmsFormatters16 { i32 137, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll1ByteSkip1 }, %struct.cmsFormatters16 { i32 265, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll1ByteSkip2 }, %struct.cmsFormatters16 { i32 8201, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll1ByteReversed }, %struct.cmsFormatters16 { i32 1048593, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll2Bytes }, %struct.cmsFormatters16 { i32 1966105, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollLabV2_8 }, %struct.cmsFormatters16 { i32 1982617, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollALabV2_8 }, %struct.cmsFormatters16 { i32 1966106, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollLabV2_16 }, %struct.cmsFormatters16 { i32 25, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3Bytes }, %struct.cmsFormatters16 { i32 1049, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3BytesSwap }, %struct.cmsFormatters16 { i32 1177, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3BytesSkip1Swap }, %struct.cmsFormatters16 { i32 16537, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3BytesSkip1SwapFirst }, %struct.cmsFormatters16 { i32 17561, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3BytesSkip1SwapSwapFirst }, %struct.cmsFormatters16 { i32 33, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4Bytes }, %struct.cmsFormatters16 { i32 8225, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4BytesReverse }, %struct.cmsFormatters16 { i32 16417, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4BytesSwapFirst }, %struct.cmsFormatters16 { i32 1057, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4BytesSwap }, %struct.cmsFormatters16 { i32 17441, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4BytesSwapSwapFirst }, %struct.cmsFormatters16 { i32 4097, i32 2058232, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollPlanarBytes }, %struct.cmsFormatters16 { i32 1, i32 2058232, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollChunkyBytes }, %struct.cmsFormatters16 { i32 10, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll1Word }, %struct.cmsFormatters16 { i32 8202, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll1WordReversed }, %struct.cmsFormatters16 { i32 394, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll1WordSkip3 }, %struct.cmsFormatters16 { i32 18, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll2Words }, %struct.cmsFormatters16 { i32 26, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3Words }, %struct.cmsFormatters16 { i32 34, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4Words }, %struct.cmsFormatters16 { i32 1050, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3WordsSwap }, %struct.cmsFormatters16 { i32 16538, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3WordsSkip1SwapFirst }, %struct.cmsFormatters16 { i32 1178, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll3WordsSkip1Swap }, %struct.cmsFormatters16 { i32 8226, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4WordsReverse }, %struct.cmsFormatters16 { i32 16418, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4WordsSwapFirst }, %struct.cmsFormatters16 { i32 1058, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4WordsSwap }, %struct.cmsFormatters16 { i32 17442, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Unroll4WordsSwapSwapFirst }, %struct.cmsFormatters16 { i32 4098, i32 2043896, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollPlanarWords }, %struct.cmsFormatters16 { i32 2, i32 2060280, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @UnrollAnyWords }], align 16
@InputFormattersFloat = internal global [7 x %struct.cmsFormattersFloat] [%struct.cmsFormattersFloat { i32 4849688, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @UnrollLabDoubleToFloat }, %struct.cmsFormattersFloat { i32 4849692, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @UnrollLabFloatToFloat }, %struct.cmsFormattersFloat { i32 4784152, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @UnrollXYZDoubleToFloat }, %struct.cmsFormattersFloat { i32 4784156, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @UnrollXYZFloatToFloat }, %struct.cmsFormattersFloat { i32 4194308, i32 2054136, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @UnrollFloatsToFloat }, %struct.cmsFormattersFloat { i32 4194304, i32 2054136, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @UnrollDoublesToFloat }, %struct.cmsFormattersFloat { i32 4194306, i32 2054136, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @UnrollHalfToFloat }], align 16
@OutputFormatters16 = internal global [55 x %struct.cmsFormatters16] [%struct.cmsFormatters16 { i32 4849688, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackLabDoubleFrom16 }, %struct.cmsFormatters16 { i32 4784152, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackXYZDoubleFrom16 }, %struct.cmsFormatters16 { i32 4849692, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackLabFloatFrom16 }, %struct.cmsFormatters16 { i32 4784156, i32 4992, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackXYZFloatFrom16 }, %struct.cmsFormatters16 { i32 4194304, i32 2062328, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackDoubleFrom16 }, %struct.cmsFormatters16 { i32 4194308, i32 2062328, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackFloatFrom16 }, %struct.cmsFormatters16 { i32 4194306, i32 2062328, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackHalfFrom16 }, %struct.cmsFormatters16 { i32 9, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1Byte }, %struct.cmsFormatters16 { i32 137, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1ByteSkip1 }, %struct.cmsFormatters16 { i32 16521, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1ByteSkip1SwapFirst }, %struct.cmsFormatters16 { i32 8201, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1ByteReversed }, %struct.cmsFormatters16 { i32 1966105, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackLabV2_8 }, %struct.cmsFormatters16 { i32 1982617, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackALabV2_8 }, %struct.cmsFormatters16 { i32 1966106, i32 0, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackLabV2_16 }, %struct.cmsFormatters16 { i32 2097177, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesOptimized }, %struct.cmsFormatters16 { i32 2097305, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1Optimized }, %struct.cmsFormatters16 { i32 2113689, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1SwapFirstOptimized }, %struct.cmsFormatters16 { i32 2114713, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1SwapSwapFirstOptimized }, %struct.cmsFormatters16 { i32 2098329, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1SwapOptimized }, %struct.cmsFormatters16 { i32 2098201, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesSwapOptimized }, %struct.cmsFormatters16 { i32 25, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3Bytes }, %struct.cmsFormatters16 { i32 153, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1 }, %struct.cmsFormatters16 { i32 16537, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1SwapFirst }, %struct.cmsFormatters16 { i32 17561, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1SwapSwapFirst }, %struct.cmsFormatters16 { i32 1177, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesAndSkip1Swap }, %struct.cmsFormatters16 { i32 1049, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3BytesSwap }, %struct.cmsFormatters16 { i32 49, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack6Bytes }, %struct.cmsFormatters16 { i32 1073, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack6BytesSwap }, %struct.cmsFormatters16 { i32 33, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4Bytes }, %struct.cmsFormatters16 { i32 8225, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4BytesReverse }, %struct.cmsFormatters16 { i32 16417, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4BytesSwapFirst }, %struct.cmsFormatters16 { i32 1057, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4BytesSwap }, %struct.cmsFormatters16 { i32 17441, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4BytesSwapSwapFirst }, %struct.cmsFormatters16 { i32 1, i32 2058232, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackAnyBytes }, %struct.cmsFormatters16 { i32 4097, i32 2058232, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackPlanarBytes }, %struct.cmsFormatters16 { i32 10, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1Word }, %struct.cmsFormatters16 { i32 138, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1WordSkip1 }, %struct.cmsFormatters16 { i32 16522, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1WordSkip1SwapFirst }, %struct.cmsFormatters16 { i32 8202, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1WordReversed }, %struct.cmsFormatters16 { i32 2058, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack1WordBigEndian }, %struct.cmsFormatters16 { i32 26, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3Words }, %struct.cmsFormatters16 { i32 1050, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3WordsSwap }, %struct.cmsFormatters16 { i32 2074, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3WordsBigEndian }, %struct.cmsFormatters16 { i32 154, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3WordsAndSkip1 }, %struct.cmsFormatters16 { i32 1178, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3WordsAndSkip1Swap }, %struct.cmsFormatters16 { i32 16538, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3WordsAndSkip1SwapFirst }, %struct.cmsFormatters16 { i32 17562, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack3WordsAndSkip1SwapSwapFirst }, %struct.cmsFormatters16 { i32 34, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4Words }, %struct.cmsFormatters16 { i32 8226, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4WordsReverse }, %struct.cmsFormatters16 { i32 1058, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4WordsSwap }, %struct.cmsFormatters16 { i32 2082, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack4WordsBigEndian }, %struct.cmsFormatters16 { i32 50, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack6Words }, %struct.cmsFormatters16 { i32 1074, i32 2031616, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @Pack6WordsSwap }, %struct.cmsFormatters16 { i32 4098, i32 2043896, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackPlanarWords }, %struct.cmsFormatters16 { i32 2, i32 2060280, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @PackAnyWords }], align 16
@OutputFormattersFloat = internal global [7 x %struct.cmsFormattersFloat] [%struct.cmsFormattersFloat { i32 4849692, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @PackLabFloatFromFloat }, %struct.cmsFormattersFloat { i32 4784156, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @PackXYZFloatFromFloat }, %struct.cmsFormattersFloat { i32 4849688, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @PackLabDoubleFromFloat }, %struct.cmsFormattersFloat { i32 4784152, i32 4992, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @PackXYZDoubleFromFloat }, %struct.cmsFormattersFloat { i32 4194308, i32 2062328, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @PackFloatsFromFloat }, %struct.cmsFormattersFloat { i32 4194304, i32 2062328, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @PackDoublesFromFloat }, %struct.cmsFormattersFloat { i32 4194306, i32 2058232, i8* (%struct._cmstransform_struct*, float*, i8*, i32)* @PackHalfFromFloat }], align 16

; Function Attrs: nounwind uwtable
define void @_cmsAllocFormattersPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsContext_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 3270, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @__PRETTY_FUNCTION__._cmsAllocFormattersPluginChunk, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cmsContext_struct* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  call void @DupFormatterFactoryList(%struct._cmsContext_struct* %3, %struct._cmsContext_struct* %4) #7
  br label %if.end

if.else:                                          ; preds = %cond.end
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 1
  %6 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %6, i8* bitcast (%struct._cmsFormattersPluginChunkType* @_cmsAllocFormattersPluginChunk.FormattersPluginChunk to i8*), i32 8) #7
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 7
  store i8* %call, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @DupFormatterFactoryList(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %newHead = alloca %struct._cmsFormattersPluginChunkType, align 8
  %entry1 = alloca %struct._cms_formatters_factory_list*, align 8
  %Anterior = alloca %struct._cms_formatters_factory_list*, align 8
  %head = alloca %struct._cmsFormattersPluginChunkType*, align 8
  %newEntry = alloca %struct._cms_formatters_factory_list*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsFormattersPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast %struct._cmsFormattersPluginChunkType* %newHead to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 8, i1 false)
  %2 = bitcast %struct._cms_formatters_factory_list** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast %struct._cms_formatters_factory_list** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  store %struct._cms_formatters_factory_list* null, %struct._cms_formatters_factory_list** %Anterior, align 8, !tbaa !1
  %4 = bitcast %struct._cmsFormattersPluginChunkType** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 7
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct._cmsFormattersPluginChunkType*
  store %struct._cmsFormattersPluginChunkType* %7, %struct._cmsFormattersPluginChunkType** %head, align 8, !tbaa !1
  %8 = load %struct._cmsFormattersPluginChunkType*, %struct._cmsFormattersPluginChunkType** %head, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsFormattersPluginChunkType* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 3240, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__.DupFormatterFactoryList, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load %struct._cmsFormattersPluginChunkType*, %struct._cmsFormattersPluginChunkType** %head, align 8, !tbaa !1
  %FactoryList = getelementptr inbounds %struct._cmsFormattersPluginChunkType, %struct._cmsFormattersPluginChunkType* %10, i32 0, i32 0
  %11 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %FactoryList, align 8, !tbaa !8
  store %struct._cms_formatters_factory_list* %11, %struct._cms_formatters_factory_list** %entry1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %entry1, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._cms_formatters_factory_list* %12, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct._cms_formatters_factory_list** %newEntry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %14, i32 0, i32 1
  %15 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %16 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %entry1, align 8, !tbaa !1
  %17 = bitcast %struct._cms_formatters_factory_list* %16 to i8*
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %15, i8* %17, i32 16) #7
  %18 = bitcast i8* %call to %struct._cms_formatters_factory_list*
  store %struct._cms_formatters_factory_list* %18, %struct._cms_formatters_factory_list** %newEntry, align 8, !tbaa !1
  %19 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %newEntry, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cms_formatters_factory_list* %19, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %20 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %newEntry, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cms_formatters_factory_list, %struct._cms_formatters_factory_list* %20, i32 0, i32 1
  store %struct._cms_formatters_factory_list* null, %struct._cms_formatters_factory_list** %Next, align 8, !tbaa !10
  %21 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %Anterior, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_formatters_factory_list* %21, null
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %22 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %newEntry, align 8, !tbaa !1
  %23 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %Anterior, align 8, !tbaa !1
  %Next5 = getelementptr inbounds %struct._cms_formatters_factory_list, %struct._cms_formatters_factory_list* %23, i32 0, i32 1
  store %struct._cms_formatters_factory_list* %22, %struct._cms_formatters_factory_list** %Next5, align 8, !tbaa !10
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %24 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %newEntry, align 8, !tbaa !1
  store %struct._cms_formatters_factory_list* %24, %struct._cms_formatters_factory_list** %Anterior, align 8, !tbaa !1
  %FactoryList7 = getelementptr inbounds %struct._cmsFormattersPluginChunkType, %struct._cmsFormattersPluginChunkType* %newHead, i32 0, i32 0
  %25 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %FactoryList7, align 8, !tbaa !8
  %cmp8 = icmp eq %struct._cms_formatters_factory_list* %25, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %26 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %newEntry, align 8, !tbaa !1
  %FactoryList10 = getelementptr inbounds %struct._cmsFormattersPluginChunkType, %struct._cmsFormattersPluginChunkType* %newHead, i32 0, i32 0
  store %struct._cms_formatters_factory_list* %26, %struct._cms_formatters_factory_list** %FactoryList10, align 8, !tbaa !8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %27 = bitcast %struct._cms_formatters_factory_list** %newEntry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %28 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %entry1, align 8, !tbaa !1
  %Next12 = getelementptr inbounds %struct._cms_formatters_factory_list, %struct._cms_formatters_factory_list* %28, i32 0, i32 1
  %29 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %Next12, align 8, !tbaa !10
  store %struct._cms_formatters_factory_list* %29, %struct._cms_formatters_factory_list** %entry1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool13 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %30, i32 0, i32 1
  %31 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool13, align 8, !tbaa !5
  %32 = bitcast %struct._cmsFormattersPluginChunkType* %newHead to i8*
  %call14 = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %31, i8* %32, i32 8) #7
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks15 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %33, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks15, i32 0, i64 7
  store i8* %call14, i8** %arrayidx16, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %for.end, %cleanup
  %34 = bitcast %struct._cmsFormattersPluginChunkType** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast %struct._cms_formatters_factory_list** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #3
  %36 = bitcast %struct._cms_formatters_factory_list** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast %struct._cmsFormattersPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  %cleanup.dest.21 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.21, label %unreachable [
    i32 0, label %cleanup.cont.22
    i32 1, label %cleanup.cont.22
  ]

cleanup.cont.22:                                  ; preds = %cleanup.17, %cleanup.17
  ret void

unreachable:                                      ; preds = %cleanup.17
  unreachable
}

declare i8* @_cmsSubAllocDup(%struct._cmsSubAllocator*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterFormattersPlugin(%struct._cmsContext_struct* %ContextID, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %ctx = alloca %struct._cmsFormattersPluginChunkType*, align 8
  %Plugin = alloca %struct.cmsPluginFormatters*, align 8
  %fl = alloca %struct._cms_formatters_factory_list*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsFormattersPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 7) #7
  %2 = bitcast i8* %call to %struct._cmsFormattersPluginChunkType*
  store %struct._cmsFormattersPluginChunkType* %2, %struct._cmsFormattersPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct.cmsPluginFormatters** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %5 = bitcast %struct._cmsPluginBaseStruct* %4 to %struct.cmsPluginFormatters*
  store %struct.cmsPluginFormatters* %5, %struct.cmsPluginFormatters** %Plugin, align 8, !tbaa !1
  %6 = bitcast %struct._cms_formatters_factory_list** %fl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._cmsFormattersPluginChunkType*, %struct._cmsFormattersPluginChunkType** %ctx, align 8, !tbaa !1
  %FactoryList = getelementptr inbounds %struct._cmsFormattersPluginChunkType, %struct._cmsFormattersPluginChunkType* %8, i32 0, i32 0
  store %struct._cms_formatters_factory_list* null, %struct._cms_formatters_factory_list** %FactoryList, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsPluginMalloc(%struct._cmsContext_struct* %9, i32 16) #7
  %10 = bitcast i8* %call1 to %struct._cms_formatters_factory_list*
  store %struct._cms_formatters_factory_list* %10, %struct._cms_formatters_factory_list** %fl, align 8, !tbaa !1
  %11 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %fl, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cms_formatters_factory_list* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.cmsPluginFormatters*, %struct.cmsPluginFormatters** %Plugin, align 8, !tbaa !1
  %FormattersFactory = getelementptr inbounds %struct.cmsPluginFormatters, %struct.cmsPluginFormatters* %12, i32 0, i32 1
  %13 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)** %FormattersFactory, align 8, !tbaa !12
  %14 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %fl, align 8, !tbaa !1
  %Factory = getelementptr inbounds %struct._cms_formatters_factory_list, %struct._cms_formatters_factory_list* %14, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)* %13, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)** %Factory, align 8, !tbaa !16
  %15 = load %struct._cmsFormattersPluginChunkType*, %struct._cmsFormattersPluginChunkType** %ctx, align 8, !tbaa !1
  %FactoryList5 = getelementptr inbounds %struct._cmsFormattersPluginChunkType, %struct._cmsFormattersPluginChunkType* %15, i32 0, i32 0
  %16 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %FactoryList5, align 8, !tbaa !8
  %17 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %fl, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cms_formatters_factory_list, %struct._cms_formatters_factory_list* %17, i32 0, i32 1
  store %struct._cms_formatters_factory_list* %16, %struct._cms_formatters_factory_list** %Next, align 8, !tbaa !10
  %18 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %fl, align 8, !tbaa !1
  %19 = load %struct._cmsFormattersPluginChunkType*, %struct._cmsFormattersPluginChunkType** %ctx, align 8, !tbaa !1
  %FactoryList6 = getelementptr inbounds %struct._cmsFormattersPluginChunkType, %struct._cmsFormattersPluginChunkType* %19, i32 0, i32 0
  store %struct._cms_formatters_factory_list* %18, %struct._cms_formatters_factory_list** %FactoryList6, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %20 = bitcast %struct._cms_formatters_factory_list** %fl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #3
  %21 = bitcast %struct.cmsPluginFormatters** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #3
  %22 = bitcast %struct._cmsFormattersPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #3
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct*, i32) #2

declare i8* @_cmsPluginMalloc(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %ContextID, i32 %Type, i32 %Dir, i32 %dwFlags) #0 {
entry:
  %retval = alloca %union.cmsFormatter, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Type.addr = alloca i32, align 4
  %Dir.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %ctx = alloca %struct._cmsFormattersPluginChunkType*, align 8
  %f = alloca %struct._cms_formatters_factory_list*, align 8
  %fn = alloca %union.cmsFormatter, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !17
  store i32 %Dir, i32* %Dir.addr, align 4, !tbaa !18
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !17
  %0 = bitcast %struct._cmsFormattersPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 7) #7
  %2 = bitcast i8* %call to %struct._cmsFormattersPluginChunkType*
  store %struct._cmsFormattersPluginChunkType* %2, %struct._cmsFormattersPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct._cms_formatters_factory_list** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct._cmsFormattersPluginChunkType*, %struct._cmsFormattersPluginChunkType** %ctx, align 8, !tbaa !1
  %FactoryList = getelementptr inbounds %struct._cmsFormattersPluginChunkType, %struct._cmsFormattersPluginChunkType* %4, i32 0, i32 0
  %5 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %FactoryList, align 8, !tbaa !8
  store %struct._cms_formatters_factory_list* %5, %struct._cms_formatters_factory_list** %f, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %f, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_formatters_factory_list* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast %union.cmsFormatter* %fn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %f, align 8, !tbaa !1
  %Factory = getelementptr inbounds %struct._cms_formatters_factory_list, %struct._cms_formatters_factory_list* %8, i32 0, i32 0
  %9 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* (i32, i32, i32)** %Factory, align 8, !tbaa !16
  %10 = load i32, i32* %Type.addr, align 4, !tbaa !17
  %11 = load i32, i32* %Dir.addr, align 4, !tbaa !18
  %12 = load i32, i32* %dwFlags.addr, align 4, !tbaa !17
  %call1 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %9(i32 %10, i32 %11, i32 %12) #7
  %coerce.dive = getelementptr %union.cmsFormatter, %union.cmsFormatter* %fn, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call1, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive, align 8
  %Fmt16 = bitcast %union.cmsFormatter* %fn to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  %13 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt16, align 8, !tbaa !1
  %cmp2 = icmp ne i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %13, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = bitcast %union.cmsFormatter* %retval to i8*
  %15 = bitcast %union.cmsFormatter* %fn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false), !tbaa.struct !19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %union.cmsFormatter* %fn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %f, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cms_formatters_factory_list, %struct._cms_formatters_factory_list* %17, i32 0, i32 1
  %18 = load %struct._cms_formatters_factory_list*, %struct._cms_formatters_factory_list** %Next, align 8, !tbaa !10
  store %struct._cms_formatters_factory_list* %18, %struct._cms_formatters_factory_list** %f, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %Dir.addr, align 4, !tbaa !18
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.end
  %20 = load i32, i32* %Type.addr, align 4, !tbaa !17
  %21 = load i32, i32* %dwFlags.addr, align 4, !tbaa !17
  %call5 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetStockInputFormatter(i32 %20, i32 %21) #7
  %coerce.dive6 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %retval, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call5, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive6, align 8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9

if.else:                                          ; preds = %for.end
  %22 = load i32, i32* %Type.addr, align 4, !tbaa !17
  %23 = load i32, i32* %dwFlags.addr, align 4, !tbaa !17
  %call7 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetStockOutputFormatter(i32 %22, i32 %23) #7
  %coerce.dive8 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %retval, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call7, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive8, align 8
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9

cleanup.9:                                        ; preds = %if.else, %if.then.4, %cleanup
  %24 = bitcast %struct._cms_formatters_factory_list** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #3
  %25 = bitcast %struct._cmsFormattersPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #3
  %coerce.dive11 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %retval, i32 0, i32 0
  %26 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive11, align 8
  ret i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %26
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetStockInputFormatter(i32 %dwInput, i32 %dwFlags) #0 {
entry:
  %retval = alloca %union.cmsFormatter, align 8
  %dwInput.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %fr = alloca %union.cmsFormatter, align 8
  %f = alloca %struct.cmsFormatters16*, align 8
  %cleanup.dest.slot = alloca i32
  %f10 = alloca %struct.cmsFormattersFloat*, align 8
  store i32 %dwInput, i32* %dwInput.addr, align 4, !tbaa !17
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !17
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load i32, i32* %dwFlags.addr, align 4, !tbaa !17
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i32, i32* %i, align 4, !tbaa !17
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %conv, 43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.cmsFormatters16** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load i32, i32* %i, align 4, !tbaa !17
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* getelementptr inbounds ([43 x %struct.cmsFormatters16], [43 x %struct.cmsFormatters16]* @InputFormatters16, i32 0, i32 0), i64 %idx.ext
  store %struct.cmsFormatters16* %add.ptr, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %6 = load i32, i32* %dwInput.addr, align 4, !tbaa !17
  %7 = load %struct.cmsFormatters16*, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %Mask = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* %7, i32 0, i32 1
  %8 = load i32, i32* %Mask, align 4, !tbaa !20
  %neg = xor i32 %8, -1
  %and = and i32 %6, %neg
  %9 = load %struct.cmsFormatters16*, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %Type = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* %9, i32 0, i32 0
  %10 = load i32, i32* %Type, align 4, !tbaa !22
  %cmp2 = icmp eq i32 %and, %10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.cmsFormatters16*, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %Frm = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* %11, i32 0, i32 2
  %12 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Frm, align 8, !tbaa !23
  %Fmt16 = bitcast %union.cmsFormatter* %fr to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %12, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt16, align 8, !tbaa !1
  %13 = bitcast %union.cmsFormatter* %retval to i8*
  %14 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false), !tbaa.struct !19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.cmsFormatters16** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.25, %sw.bb.4
  %17 = load i32, i32* %i, align 4, !tbaa !17
  %conv6 = zext i32 %17 to i64
  %cmp7 = icmp ult i64 %conv6, 7
  br i1 %cmp7, label %for.body.9, label %for.end.27

for.body.9:                                       ; preds = %for.cond.5
  %18 = bitcast %struct.cmsFormattersFloat** %f10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = load i32, i32* %i, align 4, !tbaa !17
  %idx.ext11 = zext i32 %19 to i64
  %add.ptr12 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* getelementptr inbounds ([7 x %struct.cmsFormattersFloat], [7 x %struct.cmsFormattersFloat]* @InputFormattersFloat, i32 0, i32 0), i64 %idx.ext11
  store %struct.cmsFormattersFloat* %add.ptr12, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %20 = load i32, i32* %dwInput.addr, align 4, !tbaa !17
  %21 = load %struct.cmsFormattersFloat*, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %Mask13 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* %21, i32 0, i32 1
  %22 = load i32, i32* %Mask13, align 4, !tbaa !20
  %neg14 = xor i32 %22, -1
  %and15 = and i32 %20, %neg14
  %23 = load %struct.cmsFormattersFloat*, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %Type16 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* %23, i32 0, i32 0
  %24 = load i32, i32* %Type16, align 4, !tbaa !22
  %cmp17 = icmp eq i32 %and15, %24
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body.9
  %25 = load %struct.cmsFormattersFloat*, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %Frm20 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* %25, i32 0, i32 2
  %26 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %Frm20, align 8, !tbaa !23
  %FmtFloat = bitcast %union.cmsFormatter* %fr to i8* (%struct._cmstransform_struct*, float*, i8*, i32)**
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %26, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FmtFloat, align 8, !tbaa !1
  %27 = bitcast %union.cmsFormatter* %retval to i8*
  %28 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false), !tbaa.struct !19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.end.21:                                        ; preds = %for.body.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.22

cleanup.22:                                       ; preds = %if.end.21, %if.then.19
  %29 = bitcast %struct.cmsFormattersFloat** %f10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %cleanup.dest.23 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.23, label %cleanup.29 [
    i32 0, label %cleanup.cont.24
  ]

cleanup.cont.24:                                  ; preds = %cleanup.22
  br label %for.inc.25

for.inc.25:                                       ; preds = %cleanup.cont.24
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %inc26 = add i32 %30, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !17
  br label %for.cond.5

for.end.27:                                       ; preds = %for.cond.5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.27, %for.end
  %Fmt1628 = bitcast %union.cmsFormatter* %fr to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* null, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt1628, align 8, !tbaa !1
  %31 = bitcast %union.cmsFormatter* %retval to i8*
  %32 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false), !tbaa.struct !19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %sw.epilog, %cleanup.22, %cleanup
  %33 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #3
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #3
  %coerce.dive = getelementptr %union.cmsFormatter, %union.cmsFormatter* %retval, i32 0, i32 0
  %35 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive, align 8
  ret i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %35
}

; Function Attrs: nounwind uwtable
define internal i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetStockOutputFormatter(i32 %dwInput, i32 %dwFlags) #0 {
entry:
  %retval = alloca %union.cmsFormatter, align 8
  %dwInput.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %fr = alloca %union.cmsFormatter, align 8
  %f = alloca %struct.cmsFormatters16*, align 8
  %cleanup.dest.slot = alloca i32
  %f10 = alloca %struct.cmsFormattersFloat*, align 8
  store i32 %dwInput, i32* %dwInput.addr, align 4, !tbaa !17
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !17
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load i32, i32* %dwFlags.addr, align 4, !tbaa !17
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i32, i32* %i, align 4, !tbaa !17
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %conv, 55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.cmsFormatters16** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load i32, i32* %i, align 4, !tbaa !17
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* getelementptr inbounds ([55 x %struct.cmsFormatters16], [55 x %struct.cmsFormatters16]* @OutputFormatters16, i32 0, i32 0), i64 %idx.ext
  store %struct.cmsFormatters16* %add.ptr, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %6 = load i32, i32* %dwInput.addr, align 4, !tbaa !17
  %7 = load %struct.cmsFormatters16*, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %Mask = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* %7, i32 0, i32 1
  %8 = load i32, i32* %Mask, align 4, !tbaa !20
  %neg = xor i32 %8, -1
  %and = and i32 %6, %neg
  %9 = load %struct.cmsFormatters16*, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %Type = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* %9, i32 0, i32 0
  %10 = load i32, i32* %Type, align 4, !tbaa !22
  %cmp2 = icmp eq i32 %and, %10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.cmsFormatters16*, %struct.cmsFormatters16** %f, align 8, !tbaa !1
  %Frm = getelementptr inbounds %struct.cmsFormatters16, %struct.cmsFormatters16* %11, i32 0, i32 2
  %12 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Frm, align 8, !tbaa !23
  %Fmt16 = bitcast %union.cmsFormatter* %fr to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %12, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt16, align 8, !tbaa !1
  %13 = bitcast %union.cmsFormatter* %retval to i8*
  %14 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false), !tbaa.struct !19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.cmsFormatters16** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.25, %sw.bb.4
  %17 = load i32, i32* %i, align 4, !tbaa !17
  %conv6 = zext i32 %17 to i64
  %cmp7 = icmp ult i64 %conv6, 7
  br i1 %cmp7, label %for.body.9, label %for.end.27

for.body.9:                                       ; preds = %for.cond.5
  %18 = bitcast %struct.cmsFormattersFloat** %f10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = load i32, i32* %i, align 4, !tbaa !17
  %idx.ext11 = zext i32 %19 to i64
  %add.ptr12 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* getelementptr inbounds ([7 x %struct.cmsFormattersFloat], [7 x %struct.cmsFormattersFloat]* @OutputFormattersFloat, i32 0, i32 0), i64 %idx.ext11
  store %struct.cmsFormattersFloat* %add.ptr12, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %20 = load i32, i32* %dwInput.addr, align 4, !tbaa !17
  %21 = load %struct.cmsFormattersFloat*, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %Mask13 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* %21, i32 0, i32 1
  %22 = load i32, i32* %Mask13, align 4, !tbaa !20
  %neg14 = xor i32 %22, -1
  %and15 = and i32 %20, %neg14
  %23 = load %struct.cmsFormattersFloat*, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %Type16 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* %23, i32 0, i32 0
  %24 = load i32, i32* %Type16, align 4, !tbaa !22
  %cmp17 = icmp eq i32 %and15, %24
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.body.9
  %25 = load %struct.cmsFormattersFloat*, %struct.cmsFormattersFloat** %f10, align 8, !tbaa !1
  %Frm20 = getelementptr inbounds %struct.cmsFormattersFloat, %struct.cmsFormattersFloat* %25, i32 0, i32 2
  %26 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %Frm20, align 8, !tbaa !23
  %FmtFloat = bitcast %union.cmsFormatter* %fr to i8* (%struct._cmstransform_struct*, float*, i8*, i32)**
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %26, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FmtFloat, align 8, !tbaa !1
  %27 = bitcast %union.cmsFormatter* %retval to i8*
  %28 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false), !tbaa.struct !19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.22

if.end.21:                                        ; preds = %for.body.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.22

cleanup.22:                                       ; preds = %if.end.21, %if.then.19
  %29 = bitcast %struct.cmsFormattersFloat** %f10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %cleanup.dest.23 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.23, label %cleanup.29 [
    i32 0, label %cleanup.cont.24
  ]

cleanup.cont.24:                                  ; preds = %cleanup.22
  br label %for.inc.25

for.inc.25:                                       ; preds = %cleanup.cont.24
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %inc26 = add i32 %30, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !17
  br label %for.cond.5

for.end.27:                                       ; preds = %for.cond.5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.27, %for.end
  %Fmt1628 = bitcast %union.cmsFormatter* %fr to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* null, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt1628, align 8, !tbaa !1
  %31 = bitcast %union.cmsFormatter* %retval to i8*
  %32 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false), !tbaa.struct !19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %sw.epilog, %cleanup.22, %cleanup
  %33 = bitcast %union.cmsFormatter* %fr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #3
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #3
  %coerce.dive = getelementptr %union.cmsFormatter, %union.cmsFormatter* %retval, i32 0, i32 0
  %35 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive, align 8
  ret i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %35
}

; Function Attrs: nounwind uwtable
define i32 @_cmsFormatterIsFloat(i32 %Type) #0 {
entry:
  %Type.addr = alloca i32, align 4
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !17
  %0 = load i32, i32* %Type.addr, align 4, !tbaa !17
  %shr = lshr i32 %0, 22
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @_cmsFormatterIs8bit(i32 %Type) #0 {
entry:
  %Type.addr = alloca i32, align 4
  %Bytes = alloca i32, align 4
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !17
  %0 = bitcast i32* %Bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %Type.addr, align 4, !tbaa !17
  %and = and i32 %1, 7
  store i32 %and, i32* %Bytes, align 4, !tbaa !17
  %2 = load i32, i32* %Bytes, align 4, !tbaa !17
  %cmp = icmp eq i32 %2, 1
  %conv = zext i1 %cmp to i32
  %3 = bitcast i32* %Bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #3
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cmsFormatterForColorspaceOfProfile(i8* %hProfile, i32 %nBytes, i32 %lIsFloat) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %nBytes.addr = alloca i32, align 4
  %lIsFloat.addr = alloca i32, align 4
  %ColorSpace = alloca i32, align 4
  %ColorSpaceBits = alloca i32, align 4
  %nOutputChans = alloca i32, align 4
  %Float = alloca i32, align 4
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %nBytes, i32* %nBytes.addr, align 4, !tbaa !17
  store i32 %lIsFloat, i32* %lIsFloat.addr, align 4, !tbaa !17
  %0 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetColorSpace(i8* %1) #7
  store i32 %call, i32* %ColorSpace, align 4, !tbaa !18
  %2 = bitcast i32* %ColorSpaceBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load i32, i32* %ColorSpace, align 4, !tbaa !18
  %call1 = call i32 @_cmsLCMScolorSpace(i32 %3) #7
  store i32 %call1, i32* %ColorSpaceBits, align 4, !tbaa !17
  %4 = bitcast i32* %nOutputChans to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load i32, i32* %ColorSpace, align 4, !tbaa !18
  %call2 = call i32 @cmsChannelsOf(i32 %5) #7
  store i32 %call2, i32* %nOutputChans, align 4, !tbaa !17
  %6 = bitcast i32* %Float to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load i32, i32* %lIsFloat.addr, align 4, !tbaa !17
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %Float, align 4, !tbaa !17
  %8 = load i32, i32* %Float, align 4, !tbaa !17
  %shl = shl i32 %8, 22
  %9 = load i32, i32* %ColorSpaceBits, align 4, !tbaa !17
  %shl3 = shl i32 %9, 16
  %or = or i32 %shl, %shl3
  %10 = load i32, i32* %nBytes.addr, align 4, !tbaa !17
  %or4 = or i32 %or, %10
  %11 = load i32, i32* %nOutputChans, align 4, !tbaa !17
  %shl5 = shl i32 %11, 3
  %or6 = or i32 %or4, %shl5
  %12 = bitcast i32* %Float to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #3
  %13 = bitcast i32* %nOutputChans to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  %14 = bitcast i32* %ColorSpaceBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #3
  %15 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #3
  ret i32 %or6
}

declare i32 @cmsGetColorSpace(i8*) #2

declare i32 @_cmsLCMScolorSpace(i32) #2

declare i32 @cmsChannelsOf(i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmsFormatterForPCSOfProfile(i8* %hProfile, i32 %nBytes, i32 %lIsFloat) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %nBytes.addr = alloca i32, align 4
  %lIsFloat.addr = alloca i32, align 4
  %ColorSpace = alloca i32, align 4
  %ColorSpaceBits = alloca i32, align 4
  %nOutputChans = alloca i32, align 4
  %Float = alloca i32, align 4
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %nBytes, i32* %nBytes.addr, align 4, !tbaa !17
  store i32 %lIsFloat, i32* %lIsFloat.addr, align 4, !tbaa !17
  %0 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetPCS(i8* %1) #7
  store i32 %call, i32* %ColorSpace, align 4, !tbaa !18
  %2 = bitcast i32* %ColorSpaceBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load i32, i32* %ColorSpace, align 4, !tbaa !18
  %call1 = call i32 @_cmsLCMScolorSpace(i32 %3) #7
  store i32 %call1, i32* %ColorSpaceBits, align 4, !tbaa !17
  %4 = bitcast i32* %nOutputChans to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load i32, i32* %ColorSpace, align 4, !tbaa !18
  %call2 = call i32 @cmsChannelsOf(i32 %5) #7
  store i32 %call2, i32* %nOutputChans, align 4, !tbaa !17
  %6 = bitcast i32* %Float to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load i32, i32* %lIsFloat.addr, align 4, !tbaa !17
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %Float, align 4, !tbaa !17
  %8 = load i32, i32* %Float, align 4, !tbaa !17
  %shl = shl i32 %8, 22
  %9 = load i32, i32* %ColorSpaceBits, align 4, !tbaa !17
  %shl3 = shl i32 %9, 16
  %or = or i32 %shl, %shl3
  %10 = load i32, i32* %nBytes.addr, align 4, !tbaa !17
  %or4 = or i32 %or, %10
  %11 = load i32, i32* %nOutputChans, align 4, !tbaa !17
  %shl5 = shl i32 %11, 3
  %or6 = or i32 %or4, %shl5
  %12 = bitcast i32* %Float to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #3
  %13 = bitcast i32* %nOutputChans to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  %14 = bitcast i32* %ColorSpaceBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #3
  %15 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #3
  ret i32 %or6
}

declare i32 @cmsGetPCS(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i8* @UnrollLabDoubleTo16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Pt = alloca double*, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to double*
  store double* %4, double** %Pt, align 8, !tbaa !1
  %5 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #3
  %6 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %6, i64 0
  %7 = load double, double* %arrayidx, align 8, !tbaa !29
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %7, double* %L, align 8, !tbaa !30
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx1, align 8, !tbaa !29
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %10, double* %a, align 8, !tbaa !31
  %11 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %11, 2
  %idxprom2 = zext i32 %mul to i64
  %12 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %12, i64 %idxprom2
  %13 = load double, double* %arrayidx3, align 8, !tbaa !29
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %13, double* %b, align 8, !tbaa !32
  %14 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  call void @cmsFloat2LabEncoded(i16* %14, %struct.cmsCIELab* %Lab) #7
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 8
  store i8* %add.ptr, i8** %retval
  %16 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %16) #3
  %17 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  br label %return

if.else:                                          ; preds = %entry
  %18 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.cmsCIELab*
  call void @cmsFloat2LabEncoded(i16* %18, %struct.cmsCIELab* %20) #7
  %21 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %21, i32 0, i32 0
  %22 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %22, 7
  %and6 = and i32 %shr5, 7
  %conv = zext i32 %and6 to i64
  %mul7 = mul i64 %conv, 8
  %add = add i64 24, %mul7
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %23, i64 %add
  store i8* %add.ptr8, i8** %accum.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollXYZDoubleTo16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Pt = alloca double*, align 8
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to double*
  store double* %4, double** %Pt, align 8, !tbaa !1
  %5 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #3
  %6 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %6, i64 0
  %7 = load double, double* %arrayidx, align 8, !tbaa !29
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 0
  store double %7, double* %X, align 8, !tbaa !30
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx1, align 8, !tbaa !29
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 1
  store double %10, double* %Y, align 8, !tbaa !31
  %11 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %11, 2
  %idxprom2 = zext i32 %mul to i64
  %12 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %12, i64 %idxprom2
  %13 = load double, double* %arrayidx3, align 8, !tbaa !29
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 2
  store double %13, double* %Z, align 8, !tbaa !32
  %14 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  call void @cmsFloat2XYZEncoded(i16* %14, %struct.cmsCIEXYZ* %XYZ) #7
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 8
  store i8* %add.ptr, i8** %retval
  %16 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %16) #3
  %17 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  br label %return

if.else:                                          ; preds = %entry
  %18 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.cmsCIEXYZ*
  call void @cmsFloat2XYZEncoded(i16* %18, %struct.cmsCIEXYZ* %20) #7
  %21 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %21, i32 0, i32 0
  %22 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %22, 7
  %and6 = and i32 %shr5, 7
  %conv = zext i32 %and6 to i64
  %mul7 = mul i64 %conv, 8
  %add = add i64 24, %mul7
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %23, i64 %add
  store i8* %add.ptr8, i8** %accum.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollLabFloatTo16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Lab = alloca %struct.cmsCIELab, align 8
  %Pt = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to float*
  store float* %5, float** %Pt, align 8, !tbaa !1
  %6 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %7 to double
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %conv, double* %L, align 8, !tbaa !30
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx1, align 4, !tbaa !33
  %conv2 = fpext float %10 to double
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %conv2, double* %a, align 8, !tbaa !31
  %11 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %11, 2
  %idxprom3 = zext i32 %mul to i64
  %12 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %12, i64 %idxprom3
  %13 = load float, float* %arrayidx4, align 4, !tbaa !33
  %conv5 = fpext float %13 to double
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %conv5, double* %b, align 8, !tbaa !32
  %14 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  call void @cmsFloat2LabEncoded(i16* %14, %struct.cmsCIELab* %Lab) #7
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  %16 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to float*
  %arrayidx6 = getelementptr inbounds float, float* %18, i64 0
  %19 = load float, float* %arrayidx6, align 4, !tbaa !33
  %conv7 = fpext float %19 to double
  %L8 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %conv7, double* %L8, align 8, !tbaa !30
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to float*
  %arrayidx9 = getelementptr inbounds float, float* %21, i64 1
  %22 = load float, float* %arrayidx9, align 4, !tbaa !33
  %conv10 = fpext float %22 to double
  %a11 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %conv10, double* %a11, align 8, !tbaa !31
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to float*
  %arrayidx12 = getelementptr inbounds float, float* %24, i64 2
  %25 = load float, float* %arrayidx12, align 4, !tbaa !33
  %conv13 = fpext float %25 to double
  %b14 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %conv13, double* %b14, align 8, !tbaa !32
  %26 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  call void @cmsFloat2LabEncoded(i16* %26, %struct.cmsCIELab* %Lab) #7
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat15 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 0
  %28 = load i32, i32* %InputFormat15, align 4, !tbaa !24
  %shr16 = lshr i32 %28, 7
  %and17 = and i32 %shr16, 7
  %add = add i32 3, %and17
  %conv18 = zext i32 %add to i64
  %mul19 = mul i64 %conv18, 4
  %29 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i8, i8* %29, i64 %mul19
  store i8* %add.ptr20, i8** %accum.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %30, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %31 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %31) #3
  %32 = load i8*, i8** %retval
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollXYZFloatTo16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Pt = alloca float*, align 8
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  %Pt6 = alloca float*, align 8
  %XYZ7 = alloca %struct.cmsCIEXYZ, align 8
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to float*
  store float* %4, float** %Pt, align 8, !tbaa !1
  %5 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #3
  %6 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %7 to double
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 0
  store double %conv, double* %X, align 8, !tbaa !30
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx1, align 4, !tbaa !33
  %conv2 = fpext float %10 to double
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 1
  store double %conv2, double* %Y, align 8, !tbaa !31
  %11 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %11, 2
  %idxprom3 = zext i32 %mul to i64
  %12 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %12, i64 %idxprom3
  %13 = load float, float* %arrayidx4, align 4, !tbaa !33
  %conv5 = fpext float %13 to double
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 2
  store double %conv5, double* %Z, align 8, !tbaa !32
  %14 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  call void @cmsFloat2XYZEncoded(i16* %14, %struct.cmsCIEXYZ* %XYZ) #7
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr, i8** %retval
  %16 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %16) #3
  %17 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #3
  br label %return

if.else:                                          ; preds = %entry
  %18 = bitcast float** %Pt6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to float*
  store float* %20, float** %Pt6, align 8, !tbaa !1
  %21 = bitcast %struct.cmsCIEXYZ* %XYZ7 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #3
  %22 = load float*, float** %Pt6, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %22, i64 0
  %23 = load float, float* %arrayidx8, align 4, !tbaa !33
  %conv9 = fpext float %23 to double
  %X10 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ7, i32 0, i32 0
  store double %conv9, double* %X10, align 8, !tbaa !30
  %24 = load float*, float** %Pt6, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %24, i64 1
  %25 = load float, float* %arrayidx11, align 4, !tbaa !33
  %conv12 = fpext float %25 to double
  %Y13 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ7, i32 0, i32 1
  store double %conv12, double* %Y13, align 8, !tbaa !31
  %26 = load float*, float** %Pt6, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %26, i64 2
  %27 = load float, float* %arrayidx14, align 4, !tbaa !33
  %conv15 = fpext float %27 to double
  %Z16 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ7, i32 0, i32 2
  store double %conv15, double* %Z16, align 8, !tbaa !32
  %28 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  call void @cmsFloat2XYZEncoded(i16* %28, %struct.cmsCIEXYZ* %XYZ7) #7
  %29 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat17 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %29, i32 0, i32 0
  %30 = load i32, i32* %InputFormat17, align 4, !tbaa !24
  %shr18 = lshr i32 %30, 7
  %and19 = and i32 %shr18, 7
  %conv20 = zext i32 %and19 to i64
  %mul21 = mul i64 %conv20, 4
  %add = add i64 12, %mul21
  %31 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %31, i64 %add
  store i8* %add.ptr22, i8** %accum.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %32, i8** %retval
  %33 = bitcast %struct.cmsCIEXYZ* %XYZ7 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %33) #3
  %34 = bitcast float** %Pt6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  br label %return

return:                                           ; preds = %if.else, %if.then
  %35 = load i8*, i8** %retval
  ret i8* %35
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollDouble1Chan(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Inks = alloca double*, align 8
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast double** %Inks to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to double*
  store double* %2, double** %Inks, align 8, !tbaa !1
  %3 = load double*, double** %Inks, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %3, i64 0
  %4 = load double, double* %arrayidx, align 8, !tbaa !29
  %mul = fmul double %4, 6.553500e+04
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %call, i16* %arrayidx1, align 2, !tbaa !35
  %6 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 1
  store i16 %call, i16* %arrayidx2, align 2, !tbaa !35
  %7 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %7, i64 0
  store i16 %call, i16* %arrayidx3, align 2, !tbaa !35
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 8
  %9 = bitcast double** %Inks to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #3
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollDoubleTo16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %v = alloca double, align 8
  %vi = alloca i16, align 2
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %maximum = alloca double, align 8
  %index = alloca i32, align 4
  %tmp = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 14
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapFirst, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 7
  %and12 = and i32 %shr11, 7
  store i32 %and12, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %InputFormat13, align 4, !tbaa !24
  %shr14 = lshr i32 %20, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %21 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = bitcast i16* %vi to i8*
  call void @llvm.lifetime.start(i64 2, i8* %22) #3
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %25 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %InputFormat16, align 4, !tbaa !24
  %call = call i32 @IsInkSpace(i32 %27) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, double 6.553500e+02, double 6.553500e+04
  store double %cond, double* %maximum, align 8, !tbaa !29
  %28 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %29, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %31 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %30, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #3
  %33 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %34 = load i32, i32* %nChan, align 4, !tbaa !17
  %35 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %34, %35
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %36, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %37 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %37, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end
  %38 = load i32, i32* %i, align 4, !tbaa !17
  %39 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %38, %39
  %40 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %40
  %idxprom = zext i32 %mul to i64
  %41 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %42 = bitcast i8* %41 to double*
  %arrayidx = getelementptr inbounds double, double* %42, i64 %idxprom
  %43 = load double, double* %arrayidx, align 8, !tbaa !29
  %conv = fptrunc double %43 to float
  %conv23 = fpext float %conv to double
  store double %conv23, double* %v, align 8, !tbaa !29
  br label %if.end.29

if.else:                                          ; preds = %cond.end
  %44 = load i32, i32* %i, align 4, !tbaa !17
  %45 = load i32, i32* %start, align 4, !tbaa !17
  %add24 = add nsw i32 %44, %45
  %idxprom25 = sext i32 %add24 to i64
  %46 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %47 = bitcast i8* %46 to double*
  %arrayidx26 = getelementptr inbounds double, double* %47, i64 %idxprom25
  %48 = load double, double* %arrayidx26, align 8, !tbaa !29
  %conv27 = fptrunc double %48 to float
  %conv28 = fpext float %conv27 to double
  store double %conv28, double* %v, align 8, !tbaa !29
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.22
  %49 = load double, double* %v, align 8, !tbaa !29
  %50 = load double, double* %maximum, align 8, !tbaa !29
  %mul30 = fmul double %49, %50
  %call31 = call zeroext i16 @_cmsQuickSaturateWord(double %mul30) #7
  store i16 %call31, i16* %vi, align 2, !tbaa !35
  %51 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool32 = icmp ne i32 %51, 0
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.29
  %52 = load i16, i16* %vi, align 2, !tbaa !35
  %conv34 = zext i16 %52 to i32
  %sub35 = sub nsw i32 65535, %conv34
  %conv36 = trunc i32 %sub35 to i16
  store i16 %conv36, i16* %vi, align 2, !tbaa !35
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.29
  %53 = load i16, i16* %vi, align 2, !tbaa !35
  %54 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom38 = sext i32 %54 to i64
  %55 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %55, i64 %idxprom38
  store i16 %53, i16* %arrayidx39, align 2, !tbaa !35
  %56 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %57 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp40 = icmp eq i32 %58, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %for.end
  %59 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool42 = icmp ne i32 %59, 0
  br i1 %tobool42, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %land.lhs.true
  %60 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %60) #3
  %61 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %61, i64 0
  %62 = load i16, i16* %arrayidx44, align 2, !tbaa !35
  store i16 %62, i16* %tmp, align 2, !tbaa !35
  %63 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = bitcast i16* %arrayidx45 to i8*
  %65 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i16, i16* %65, i64 1
  %66 = bitcast i16* %arrayidx46 to i8*
  %67 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub47 = sub nsw i32 %67, 1
  %conv48 = sext i32 %sub47 to i64
  %mul49 = mul i64 %conv48, 2
  %call50 = call i8* @memmove(i8* %64, i8* %66, i64 %mul49) #8
  %68 = load i16, i16* %tmp, align 2, !tbaa !35
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub51 = sub nsw i32 %69, 1
  %idxprom52 = sext i32 %sub51 to i64
  %70 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i16, i16* %70, i64 %idxprom52
  store i16 %68, i16* %arrayidx53, align 2, !tbaa !35
  %71 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %71) #3
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.43, %land.lhs.true, %for.end
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat55 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 0
  %73 = load i32, i32* %InputFormat55, align 4, !tbaa !24
  %shr56 = lshr i32 %73, 12
  %and57 = and i32 %shr56, 1
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.end.54
  %74 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.60:                                       ; preds = %if.end.54
  %75 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %77 = load i32, i32* %Extra, align 4, !tbaa !17
  %add61 = add nsw i32 %76, %77
  %conv62 = sext i32 %add61 to i64
  %mul63 = mul i64 %conv62, 8
  %add.ptr64 = getelementptr inbounds i8, i8* %75, i64 %mul63
  store i8* %add.ptr64, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.60, %if.then.59
  %78 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  %79 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast i16* %vi to i8*
  call void @llvm.lifetime.end(i64 2, i8* %81) #3
  %82 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #3
  %90 = load i8*, i8** %retval
  ret i8* %90
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollFloatTo16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %v = alloca float, align 4
  %vi = alloca i16, align 2
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %maximum = alloca double, align 8
  %index = alloca i32, align 4
  %tmp = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 14
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapFirst, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 7
  %and12 = and i32 %shr11, 7
  store i32 %and12, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %InputFormat13, align 4, !tbaa !24
  %shr14 = lshr i32 %20, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %21 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = bitcast i16* %vi to i8*
  call void @llvm.lifetime.start(i64 2, i8* %22) #3
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %25 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %InputFormat16, align 4, !tbaa !24
  %call = call i32 @IsInkSpace(i32 %27) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, double 6.553500e+02, double 6.553500e+04
  store double %cond, double* %maximum, align 8, !tbaa !29
  %28 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %29, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %31 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %30, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #3
  %33 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %34 = load i32, i32* %nChan, align 4, !tbaa !17
  %35 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %34, %35
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %36, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %37 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %37, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end
  %38 = load i32, i32* %i, align 4, !tbaa !17
  %39 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %38, %39
  %40 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %40
  %idxprom = zext i32 %mul to i64
  %41 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %42 = bitcast i8* %41 to float*
  %arrayidx = getelementptr inbounds float, float* %42, i64 %idxprom
  %43 = load float, float* %arrayidx, align 4, !tbaa !33
  store float %43, float* %v, align 4, !tbaa !33
  br label %if.end.26

if.else:                                          ; preds = %cond.end
  %44 = load i32, i32* %i, align 4, !tbaa !17
  %45 = load i32, i32* %start, align 4, !tbaa !17
  %add23 = add nsw i32 %44, %45
  %idxprom24 = sext i32 %add23 to i64
  %46 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %47 = bitcast i8* %46 to float*
  %arrayidx25 = getelementptr inbounds float, float* %47, i64 %idxprom24
  %48 = load float, float* %arrayidx25, align 4, !tbaa !33
  store float %48, float* %v, align 4, !tbaa !33
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.22
  %49 = load float, float* %v, align 4, !tbaa !33
  %conv = fpext float %49 to double
  %50 = load double, double* %maximum, align 8, !tbaa !29
  %mul27 = fmul double %conv, %50
  %call28 = call zeroext i16 @_cmsQuickSaturateWord(double %mul27) #7
  store i16 %call28, i16* %vi, align 2, !tbaa !35
  %51 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool29 = icmp ne i32 %51, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.26
  %52 = load i16, i16* %vi, align 2, !tbaa !35
  %conv31 = zext i16 %52 to i32
  %sub32 = sub nsw i32 65535, %conv31
  %conv33 = trunc i32 %sub32 to i16
  store i16 %conv33, i16* %vi, align 2, !tbaa !35
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.26
  %53 = load i16, i16* %vi, align 2, !tbaa !35
  %54 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom35 = sext i32 %54 to i64
  %55 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %55, i64 %idxprom35
  store i16 %53, i16* %arrayidx36, align 2, !tbaa !35
  %56 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %57 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp37 = icmp eq i32 %58, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %for.end
  %59 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool39 = icmp ne i32 %59, 0
  br i1 %tobool39, label %if.then.40, label %if.end.51

if.then.40:                                       ; preds = %land.lhs.true
  %60 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %60) #3
  %61 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %61, i64 0
  %62 = load i16, i16* %arrayidx41, align 2, !tbaa !35
  store i16 %62, i16* %tmp, align 2, !tbaa !35
  %63 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = bitcast i16* %arrayidx42 to i8*
  %65 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %65, i64 1
  %66 = bitcast i16* %arrayidx43 to i8*
  %67 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub44 = sub nsw i32 %67, 1
  %conv45 = sext i32 %sub44 to i64
  %mul46 = mul i64 %conv45, 2
  %call47 = call i8* @memmove(i8* %64, i8* %66, i64 %mul46) #8
  %68 = load i16, i16* %tmp, align 2, !tbaa !35
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub48 = sub nsw i32 %69, 1
  %idxprom49 = sext i32 %sub48 to i64
  %70 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %70, i64 %idxprom49
  store i16 %68, i16* %arrayidx50, align 2, !tbaa !35
  %71 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %71) #3
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.40, %land.lhs.true, %for.end
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat52 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 0
  %73 = load i32, i32* %InputFormat52, align 4, !tbaa !24
  %shr53 = lshr i32 %73, 12
  %and54 = and i32 %shr53, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.51
  %74 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.57:                                       ; preds = %if.end.51
  %75 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %77 = load i32, i32* %Extra, align 4, !tbaa !17
  %add58 = add nsw i32 %76, %77
  %conv59 = sext i32 %add58 to i64
  %mul60 = mul i64 %conv59, 4
  %add.ptr61 = getelementptr inbounds i8, i8* %75, i64 %mul60
  store i8* %add.ptr61, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.57, %if.then.56
  %78 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  %79 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast i16* %vi to i8*
  call void @llvm.lifetime.end(i64 2, i8* %81) #3
  %82 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #3
  %90 = load i8*, i8** %retval
  ret i8* %90
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollHalfTo16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %v = alloca float, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %maximum = alloca float, align 4
  %index = alloca i32, align 4
  %tmp = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 14
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapFirst, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 7
  %and12 = and i32 %shr11, 7
  store i32 %and12, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %InputFormat13, align 4, !tbaa !24
  %shr14 = lshr i32 %20, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %21 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %24 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  %25 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %25, i32 0, i32 0
  %26 = load i32, i32* %InputFormat16, align 4, !tbaa !24
  %call = call i32 @IsInkSpace(i32 %26) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, float 0x40847ACCC0000000, float 6.553500e+04
  store float %cond, float* %maximum, align 4, !tbaa !33
  %27 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %28, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %30 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #3
  %32 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %32, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %34 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %33, %34
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %35, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %36 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %36, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %38 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %37, %38
  %39 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %39
  %idxprom = zext i32 %mul to i64
  %40 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %41 = bitcast i8* %40 to i16*
  %arrayidx = getelementptr inbounds i16, i16* %41, i64 %idxprom
  %42 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %call23 = call float @_cmsHalf2Float(i16 zeroext %42) #7
  store float %call23, float* %v, align 4, !tbaa !33
  br label %if.end.28

if.else:                                          ; preds = %cond.end
  %43 = load i32, i32* %i, align 4, !tbaa !17
  %44 = load i32, i32* %start, align 4, !tbaa !17
  %add24 = add nsw i32 %43, %44
  %idxprom25 = sext i32 %add24 to i64
  %45 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to i16*
  %arrayidx26 = getelementptr inbounds i16, i16* %46, i64 %idxprom25
  %47 = load i16, i16* %arrayidx26, align 2, !tbaa !35
  %call27 = call float @_cmsHalf2Float(i16 zeroext %47) #7
  store float %call27, float* %v, align 4, !tbaa !33
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.22
  %48 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool29 = icmp ne i32 %48, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %49 = load float, float* %maximum, align 4, !tbaa !33
  %50 = load float, float* %v, align 4, !tbaa !33
  %sub31 = fsub float %49, %50
  store float %sub31, float* %v, align 4, !tbaa !33
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %51 = load float, float* %v, align 4, !tbaa !33
  %52 = load float, float* %maximum, align 4, !tbaa !33
  %mul33 = fmul float %51, %52
  %conv = fpext float %mul33 to double
  %call34 = call zeroext i16 @_cmsQuickSaturateWord(double %conv) #7
  %53 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom35 = sext i32 %53 to i64
  %54 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %54, i64 %idxprom35
  store i16 %call34, i16* %arrayidx36, align 2, !tbaa !35
  %55 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %56 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp37 = icmp eq i32 %57, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %for.end
  %58 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool39 = icmp ne i32 %58, 0
  br i1 %tobool39, label %if.then.40, label %if.end.51

if.then.40:                                       ; preds = %land.lhs.true
  %59 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %59) #3
  %60 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %60, i64 0
  %61 = load i16, i16* %arrayidx41, align 2, !tbaa !35
  store i16 %61, i16* %tmp, align 2, !tbaa !35
  %62 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16, i16* %62, i64 0
  %63 = bitcast i16* %arrayidx42 to i8*
  %64 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %64, i64 1
  %65 = bitcast i16* %arrayidx43 to i8*
  %66 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub44 = sub nsw i32 %66, 1
  %conv45 = sext i32 %sub44 to i64
  %mul46 = mul i64 %conv45, 2
  %call47 = call i8* @memmove(i8* %63, i8* %65, i64 %mul46) #8
  %67 = load i16, i16* %tmp, align 2, !tbaa !35
  %68 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub48 = sub nsw i32 %68, 1
  %idxprom49 = sext i32 %sub48 to i64
  %69 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %69, i64 %idxprom49
  store i16 %67, i16* %arrayidx50, align 2, !tbaa !35
  %70 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %70) #3
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.40, %land.lhs.true, %for.end
  %71 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat52 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %71, i32 0, i32 0
  %72 = load i32, i32* %InputFormat52, align 4, !tbaa !24
  %shr53 = lshr i32 %72, 12
  %and54 = and i32 %shr53, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.51
  %73 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.57:                                       ; preds = %if.end.51
  %74 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %75 = load i32, i32* %nChan, align 4, !tbaa !17
  %76 = load i32, i32* %Extra, align 4, !tbaa !17
  %add58 = add nsw i32 %75, %76
  %conv59 = sext i32 %add58 to i64
  %mul60 = mul i64 %conv59, 2
  %add.ptr61 = getelementptr inbounds i8, i8* %74, i64 %mul60
  store i8* %add.ptr61, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.57, %if.then.56
  %77 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = load i8*, i8** %retval
  ret i8* %88
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll1Byte(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !35
  %6 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !35
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll1ByteSkip1(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !35
  %6 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !35
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll1ByteSkip2(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !35
  %6 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !35
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll1ByteReversed(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %conv4 = zext i16 %conv3 to i32
  %sub = sub nsw i32 65535, %conv4
  %conv5 = trunc i32 %sub to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %conv5, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv5, i16* %arrayidx6, align 2, !tbaa !35
  %6 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 %conv5, i16* %arrayidx7, align 2, !tbaa !35
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll2Bytes(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollLabV2_8(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %call = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %conv3) #7
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %call10 = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %conv9) #7
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %call10, i16* %arrayidx11, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr12, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv13 = zext i8 %13 to i16
  %conv14 = zext i16 %conv13 to i32
  %shl15 = shl i32 %conv14, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv16 = zext i8 %15 to i32
  %or17 = or i32 %shl15, %conv16
  %conv18 = trunc i32 %or17 to i16
  %call19 = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %conv18) #7
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %16, i64 2
  store i16 %call19, i16* %arrayidx20, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr21, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollALabV2_8(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !18
  %conv = zext i8 %2 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %3 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !18
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %call = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %conv3) #7
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !35
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !18
  %conv5 = zext i8 %8 to i16
  %conv6 = zext i16 %conv5 to i32
  %shl7 = shl i32 %conv6, 8
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !18
  %conv8 = zext i8 %10 to i32
  %or9 = or i32 %shl7, %conv8
  %conv10 = trunc i32 %or9 to i16
  %call11 = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %conv10) #7
  %11 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %call11, i16* %arrayidx12, align 2, !tbaa !35
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr13, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !18
  %conv14 = zext i8 %14 to i16
  %conv15 = zext i16 %conv14 to i32
  %shl16 = shl i32 %conv15, 8
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !18
  %conv17 = zext i8 %16 to i32
  %or18 = or i32 %shl16, %conv17
  %conv19 = trunc i32 %or18 to i16
  %call20 = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %conv19) #7
  %17 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %17, i64 2
  store i16 %call20, i16* %arrayidx21, align 2, !tbaa !35
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr22, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollLabV2_16(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %call = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %2) #7
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %call1 = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %7) #7
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 %call1, i16* %arrayidx2, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr3, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %call4 = call zeroext i16 @FomLabV2ToLabV4(i16 zeroext %12) #7
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %13, i64 2
  store i16 %call4, i16* %arrayidx5, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr6, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3Bytes(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv12 = zext i8 %13 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %shl14, %conv15
  %conv17 = trunc i32 %or16 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 2
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3BytesSwap(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv12 = zext i8 %13 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %shl14, %conv15
  %conv17 = trunc i32 %or16 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 0
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3BytesSkip1Swap(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !18
  %conv = zext i8 %2 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %3 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !18
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !18
  %conv5 = zext i8 %8 to i16
  %conv6 = zext i16 %conv5 to i32
  %shl7 = shl i32 %conv6, 8
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !18
  %conv8 = zext i8 %10 to i32
  %or9 = or i32 %shl7, %conv8
  %conv10 = trunc i32 %or9 to i16
  %11 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !35
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr12, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !18
  %conv13 = zext i8 %14 to i16
  %conv14 = zext i16 %conv13 to i32
  %shl15 = shl i32 %conv14, 8
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !18
  %conv16 = zext i8 %16 to i32
  %or17 = or i32 %shl15, %conv16
  %conv18 = trunc i32 %or17 to i16
  %17 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %17, i64 0
  store i16 %conv18, i16* %arrayidx19, align 2, !tbaa !35
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr20, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3BytesSkip1SwapFirst(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !18
  %conv = zext i8 %2 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %3 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !18
  %conv2 = zext i8 %4 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !18
  %conv5 = zext i8 %8 to i16
  %conv6 = zext i16 %conv5 to i32
  %shl7 = shl i32 %conv6, 8
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !18
  %conv8 = zext i8 %10 to i32
  %or9 = or i32 %shl7, %conv8
  %conv10 = trunc i32 %or9 to i16
  %11 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !35
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr12, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !18
  %conv13 = zext i8 %14 to i16
  %conv14 = zext i16 %conv13 to i32
  %shl15 = shl i32 %conv14, 8
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !18
  %conv16 = zext i8 %16 to i32
  %or17 = or i32 %shl15, %conv16
  %conv18 = trunc i32 %or17 to i16
  %17 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %17, i64 2
  store i16 %conv18, i16* %arrayidx19, align 2, !tbaa !35
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr20, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3BytesSkip1SwapSwapFirst(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv12 = zext i8 %13 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %shl14, %conv15
  %conv17 = trunc i32 %or16 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 0
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr20, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4Bytes(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv12 = zext i8 %13 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %shl14, %conv15
  %conv17 = trunc i32 %or16 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 2
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !18
  %conv20 = zext i8 %19 to i16
  %conv21 = zext i16 %conv20 to i32
  %shl22 = shl i32 %conv21, 8
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !18
  %conv23 = zext i8 %21 to i32
  %or24 = or i32 %shl22, %conv23
  %conv25 = trunc i32 %or24 to i16
  %22 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %22, i64 3
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !35
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr27, i8** %accum.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4BytesReverse(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 255, %conv
  %conv1 = trunc i32 %sub to i8
  %conv2 = zext i8 %conv1 to i16
  %conv3 = zext i16 %conv2 to i32
  %shl = shl i32 %conv3, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv4 = zext i8 %3 to i32
  %sub5 = sub nsw i32 255, %conv4
  %conv6 = trunc i32 %sub5 to i8
  %conv7 = zext i8 %conv6 to i32
  %or = or i32 %shl, %conv7
  %conv8 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %conv8, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv9 = zext i8 %7 to i32
  %sub10 = sub nsw i32 255, %conv9
  %conv11 = trunc i32 %sub10 to i8
  %conv12 = zext i8 %conv11 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv15 = zext i8 %9 to i32
  %sub16 = sub nsw i32 255, %conv15
  %conv17 = trunc i32 %sub16 to i8
  %conv18 = zext i8 %conv17 to i32
  %or19 = or i32 %shl14, %conv18
  %conv20 = trunc i32 %or19 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %conv20, i16* %arrayidx21, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr22, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv23 = zext i8 %13 to i32
  %sub24 = sub nsw i32 255, %conv23
  %conv25 = trunc i32 %sub24 to i8
  %conv26 = zext i8 %conv25 to i16
  %conv27 = zext i16 %conv26 to i32
  %shl28 = shl i32 %conv27, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv29 = zext i8 %15 to i32
  %sub30 = sub nsw i32 255, %conv29
  %conv31 = trunc i32 %sub30 to i8
  %conv32 = zext i8 %conv31 to i32
  %or33 = or i32 %shl28, %conv32
  %conv34 = trunc i32 %or33 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %16, i64 2
  store i16 %conv34, i16* %arrayidx35, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr36, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !18
  %conv37 = zext i8 %19 to i32
  %sub38 = sub nsw i32 255, %conv37
  %conv39 = trunc i32 %sub38 to i8
  %conv40 = zext i8 %conv39 to i16
  %conv41 = zext i16 %conv40 to i32
  %shl42 = shl i32 %conv41, 8
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !18
  %conv43 = zext i8 %21 to i32
  %sub44 = sub nsw i32 255, %conv43
  %conv45 = trunc i32 %sub44 to i8
  %conv46 = zext i8 %conv45 to i32
  %or47 = or i32 %shl42, %conv46
  %conv48 = trunc i32 %or47 to i16
  %22 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i16, i16* %22, i64 3
  store i16 %conv48, i16* %arrayidx49, align 2, !tbaa !35
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr50, i8** %accum.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4BytesSwapFirst(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 3
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 0
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv12 = zext i8 %13 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %shl14, %conv15
  %conv17 = trunc i32 %or16 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 1
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !18
  %conv20 = zext i8 %19 to i16
  %conv21 = zext i16 %conv20 to i32
  %shl22 = shl i32 %conv21, 8
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !18
  %conv23 = zext i8 %21 to i32
  %or24 = or i32 %shl22, %conv23
  %conv25 = trunc i32 %or24 to i16
  %22 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %22, i64 2
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !35
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr27, i8** %accum.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4BytesSwap(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 3
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 2
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv12 = zext i8 %13 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %shl14, %conv15
  %conv17 = trunc i32 %or16 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 1
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !18
  %conv20 = zext i8 %19 to i16
  %conv21 = zext i16 %conv20 to i32
  %shl22 = shl i32 %conv21, 8
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !18
  %conv23 = zext i8 %21 to i32
  %or24 = or i32 %shl22, %conv23
  %conv25 = trunc i32 %or24 to i16
  %22 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %22, i64 0
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !35
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr27, i8** %accum.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4BytesSwapSwapFirst(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !18
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %conv3 = trunc i32 %or to i16
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !18
  %conv4 = zext i8 %7 to i16
  %conv5 = zext i16 %conv4 to i32
  %shl6 = shl i32 %conv5, 8
  %8 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !18
  %conv7 = zext i8 %9 to i32
  %or8 = or i32 %shl6, %conv7
  %conv9 = trunc i32 %or8 to i16
  %10 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !18
  %conv12 = zext i8 %13 to i16
  %conv13 = zext i16 %conv12 to i32
  %shl14 = shl i32 %conv13, 8
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !18
  %conv15 = zext i8 %15 to i32
  %or16 = or i32 %shl14, %conv15
  %conv17 = trunc i32 %or16 to i16
  %16 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 0
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !35
  %17 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %accum.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !18
  %conv20 = zext i8 %19 to i16
  %conv21 = zext i16 %conv20 to i32
  %shl22 = shl i32 %conv21, 8
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !18
  %conv23 = zext i8 %21 to i32
  %or24 = or i32 %shl22, %conv23
  %conv25 = trunc i32 %or24 to i16
  %22 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %22, i64 3
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !35
  %23 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr27, i8** %accum.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollPlanarBytes(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %i = alloca i32, align 4
  %Init = alloca i8*, align 8
  %index = alloca i32, align 4
  %v = alloca i16, align 2
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 14
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %SwapFirst, align 4, !tbaa !17
  %9 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 13
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %Reverse, align 4, !tbaa !17
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %14, i8** %Init, align 8, !tbaa !1
  %15 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %16 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %15, %16
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %18, 7
  %and12 = and i32 %shr11, 7
  %19 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %and12, %19
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %22 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %25 = load i32, i32* %nChan, align 4, !tbaa !17
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %25, %26
  %sub14 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  %28 = bitcast i16* %v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %28) #3
  %29 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !18
  %conv = zext i8 %30 to i16
  %conv15 = zext i16 %conv to i32
  %shl = shl i32 %conv15, 8
  %31 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !18
  %conv16 = zext i8 %32 to i32
  %or = or i32 %shl, %conv16
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %v, align 2, !tbaa !35
  %33 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.24

cond.true.19:                                     ; preds = %cond.end
  %34 = load i16, i16* %v, align 2, !tbaa !35
  %conv20 = zext i16 %34 to i32
  %sub21 = sub nsw i32 65535, %conv20
  %conv22 = trunc i32 %sub21 to i16
  %conv23 = zext i16 %conv22 to i32
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end
  %35 = load i16, i16* %v, align 2, !tbaa !35
  %conv25 = zext i16 %35 to i32
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.19
  %cond27 = phi i32 [ %conv23, %cond.true.19 ], [ %conv25, %cond.false.24 ]
  %conv28 = trunc i32 %cond27 to i16
  %36 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %36 to i64
  %37 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %37, i64 %idxprom
  store i16 %conv28, i16* %arrayidx, align 2, !tbaa !35
  %38 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %39 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %idx.ext29 = zext i32 %38 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %39, i64 %idx.ext29
  store i8* %add.ptr30, i8** %accum.addr, align 8, !tbaa !1
  %40 = bitcast i16* %v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %40) #3
  %41 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.26
  %42 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %Init, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #3
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #3
  %46 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  %47 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #3
  %48 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  %49 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #3
  ret i8* %add.ptr31
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollChunkyBytes(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %v = alloca i16, align 2
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %tmp = alloca i16, align 2
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 14
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapFirst, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 7
  %and12 = and i32 %shr11, 7
  store i32 %and12, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i16* %v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #3
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #3
  %20 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %Extra, align 4, !tbaa !17
  %22 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %i, align 4, !tbaa !17
  %24 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #3
  %26 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool13 = icmp ne i32 %26, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %27 = load i32, i32* %nChan, align 4, !tbaa !17
  %28 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %27, %28
  %sub14 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %29, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  %30 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !18
  %conv = zext i8 %31 to i16
  %conv15 = zext i16 %conv to i32
  %shl = shl i32 %conv15, 8
  %32 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !18
  %conv16 = zext i8 %33 to i32
  %or = or i32 %shl, %conv16
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %v, align 2, !tbaa !35
  %34 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %34, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.24

cond.true.19:                                     ; preds = %cond.end
  %35 = load i16, i16* %v, align 2, !tbaa !35
  %conv20 = zext i16 %35 to i32
  %sub21 = sub nsw i32 65535, %conv20
  %conv22 = trunc i32 %sub21 to i16
  %conv23 = zext i16 %conv22 to i32
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end
  %36 = load i16, i16* %v, align 2, !tbaa !35
  %conv25 = zext i16 %36 to i32
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.19
  %cond27 = phi i32 [ %conv23, %cond.true.19 ], [ %conv25, %cond.false.24 ]
  %conv28 = trunc i32 %cond27 to i16
  store i16 %conv28, i16* %v, align 2, !tbaa !35
  %37 = load i16, i16* %v, align 2, !tbaa !35
  %38 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %38 to i64
  %39 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %39, i64 %idxprom
  store i16 %37, i16* %arrayidx, align 2, !tbaa !35
  %40 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %accum.addr, align 8, !tbaa !1
  %41 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.26
  %42 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool29 = icmp ne i32 %43, 0
  br i1 %tobool29, label %if.end.33, label %if.then.30

if.then.30:                                       ; preds = %for.end
  %44 = load i32, i32* %Extra, align 4, !tbaa !17
  %45 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %idx.ext31 = sext i32 %44 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 %idx.ext31
  store i8* %add.ptr32, i8** %accum.addr, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %for.end
  %46 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp34 = icmp eq i32 %46, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end.33
  %47 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool36 = icmp ne i32 %47, 0
  br i1 %tobool36, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %land.lhs.true
  %48 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %48) #3
  %49 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16, i16* %49, i64 0
  %50 = load i16, i16* %arrayidx38, align 2, !tbaa !35
  store i16 %50, i16* %tmp, align 2, !tbaa !35
  %51 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %51, i64 0
  %52 = bitcast i16* %arrayidx39 to i8*
  %53 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i16, i16* %53, i64 1
  %54 = bitcast i16* %arrayidx40 to i8*
  %55 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub41 = sub nsw i32 %55, 1
  %conv42 = sext i32 %sub41 to i64
  %mul = mul i64 %conv42, 2
  %call = call i8* @memmove(i8* %52, i8* %54, i64 %mul) #8
  %56 = load i16, i16* %tmp, align 2, !tbaa !35
  %57 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub43 = sub nsw i32 %57, 1
  %idxprom44 = sext i32 %sub43 to i64
  %58 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %58, i64 %idxprom44
  store i16 %56, i16* %arrayidx45, align 2, !tbaa !35
  %59 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %59) #3
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.37, %land.lhs.true, %if.end.33
  %60 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #3
  %62 = bitcast i16* %v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %62) #3
  %63 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  %64 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #3
  %65 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #3
  %66 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
  %67 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #3
  ret i8* %60
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll1Word(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %2, i16* %arrayidx1, align 2, !tbaa !35
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %2, i16* %arrayidx2, align 2, !tbaa !35
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll1WordReversed(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %conv = zext i16 %2 to i32
  %sub = sub nsw i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %conv1, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv1, i16* %arrayidx2, align 2, !tbaa !35
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv1, i16* %arrayidx3, align 2, !tbaa !35
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll1WordSkip3(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %2, i16* %arrayidx1, align 2, !tbaa !35
  %5 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %2, i16* %arrayidx2, align 2, !tbaa !35
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll2Words(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 %7, i16* %arrayidx1, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3Words(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 %7, i16* %arrayidx1, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 2
  store i16 %12, i16* %arrayidx3, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4Words(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 %7, i16* %arrayidx1, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 2
  store i16 %12, i16* %arrayidx3, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to i16*
  %17 = load i16, i16* %16, align 2, !tbaa !35
  %18 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 3
  store i16 %17, i16* %arrayidx5, align 2, !tbaa !35
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %accum.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3WordsSwap(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 %7, i16* %arrayidx1, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 0
  store i16 %12, i16* %arrayidx3, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3WordsSkip1SwapFirst(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i16*
  %3 = load i16, i16* %2, align 2, !tbaa !35
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr1, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to i16*
  %8 = load i16, i16* %7, align 2, !tbaa !35
  %9 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 %8, i16* %arrayidx2, align 2, !tbaa !35
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr3, i8** %accum.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to i16*
  %13 = load i16, i16* %12, align 2, !tbaa !35
  %14 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %14, i64 2
  store i16 %13, i16* %arrayidx4, align 2, !tbaa !35
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr5, i8** %accum.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll3WordsSkip1Swap(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i16*
  %3 = load i16, i16* %2, align 2, !tbaa !35
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 %3, i16* %arrayidx, align 2, !tbaa !35
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr1, i8** %accum.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to i16*
  %8 = load i16, i16* %7, align 2, !tbaa !35
  %9 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 %8, i16* %arrayidx2, align 2, !tbaa !35
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr3, i8** %accum.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to i16*
  %13 = load i16, i16* %12, align 2, !tbaa !35
  %14 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %14, i64 0
  store i16 %13, i16* %arrayidx4, align 2, !tbaa !35
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr5, i8** %accum.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4WordsReverse(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %conv = zext i16 %2 to i32
  %sub = sub nsw i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %conv1, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %conv2 = zext i16 %7 to i32
  %sub3 = sub nsw i32 65535, %conv2
  %conv4 = trunc i32 %sub3 to i16
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 %conv4, i16* %arrayidx5, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr6, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %conv7 = zext i16 %12 to i32
  %sub8 = sub nsw i32 65535, %conv7
  %conv9 = trunc i32 %sub8 to i16
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 2
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr11, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to i16*
  %17 = load i16, i16* %16, align 2, !tbaa !35
  %conv12 = zext i16 %17 to i32
  %sub13 = sub nsw i32 65535, %conv12
  %conv14 = trunc i32 %sub13 to i16
  %18 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %18, i64 3
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !35
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr16, i8** %accum.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4WordsSwapFirst(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 3
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %7, i16* %arrayidx1, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %12, i16* %arrayidx3, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to i16*
  %17 = load i16, i16* %16, align 2, !tbaa !35
  %18 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 2
  store i16 %17, i16* %arrayidx5, align 2, !tbaa !35
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %accum.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4WordsSwap(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 3
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %8, i64 2
  store i16 %7, i16* %arrayidx1, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %12, i16* %arrayidx3, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to i16*
  %17 = load i16, i16* %16, align 2, !tbaa !35
  %18 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 0
  store i16 %17, i16* %arrayidx5, align 2, !tbaa !35
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %accum.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @Unroll4WordsSwapSwapFirst(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to i16*
  %2 = load i16, i16* %1, align 2, !tbaa !35
  %3 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %2, i16* %arrayidx, align 2, !tbaa !35
  %4 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !35
  %8 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 %7, i16* %arrayidx1, align 2, !tbaa !35
  %9 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %accum.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !35
  %13 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 0
  store i16 %12, i16* %arrayidx3, align 2, !tbaa !35
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %accum.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to i16*
  %17 = load i16, i16* %16, align 2, !tbaa !35
  %18 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 3
  store i16 %17, i16* %arrayidx5, align 2, !tbaa !35
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %accum.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollPlanarWords(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapEndian = alloca i32, align 4
  %i = alloca i32, align 4
  %Init = alloca i8*, align 8
  %index = alloca i32, align 4
  %v = alloca i16, align 2
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 11
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapEndian, align 4, !tbaa !17
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %14, i8** %Init, align 8, !tbaa !1
  %15 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 0
  %17 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %17, 7
  %and12 = and i32 %shr11, 7
  %18 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %and12, %18
  %conv = zext i32 %mul to i64
  %mul13 = mul i64 %conv, 2
  %19 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %mul13
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !17
  %21 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load i32, i32* %nChan, align 4, !tbaa !17
  %25 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %24, %25
  %sub16 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub16, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  %27 = bitcast i16* %v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #3
  %28 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %29 = bitcast i8* %28 to i16*
  %30 = load i16, i16* %29, align 2, !tbaa !35
  store i16 %30, i16* %v, align 2, !tbaa !35
  %31 = load i32, i32* %SwapEndian, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %31, 0
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %cond.end
  %32 = load i16, i16* %v, align 2, !tbaa !35
  %conv19 = zext i16 %32 to i32
  %shl = shl i32 %conv19, 8
  %conv20 = trunc i32 %shl to i16
  %conv21 = zext i16 %conv20 to i32
  %33 = load i16, i16* %v, align 2, !tbaa !35
  %conv22 = zext i16 %33 to i32
  %shr23 = ashr i32 %conv22, 8
  %or = or i32 %conv21, %shr23
  %conv24 = trunc i32 %or to i16
  store i16 %conv24, i16* %v, align 2, !tbaa !35
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %cond.end
  %34 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %cond.true.27, label %cond.false.32

cond.true.27:                                     ; preds = %if.end.25
  %35 = load i16, i16* %v, align 2, !tbaa !35
  %conv28 = zext i16 %35 to i32
  %sub29 = sub nsw i32 65535, %conv28
  %conv30 = trunc i32 %sub29 to i16
  %conv31 = zext i16 %conv30 to i32
  br label %cond.end.34

cond.false.32:                                    ; preds = %if.end.25
  %36 = load i16, i16* %v, align 2, !tbaa !35
  %conv33 = zext i16 %36 to i32
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.27
  %cond35 = phi i32 [ %conv31, %cond.true.27 ], [ %conv33, %cond.false.32 ]
  %conv36 = trunc i32 %cond35 to i16
  %37 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %37 to i64
  %38 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %38, i64 %idxprom
  store i16 %conv36, i16* %arrayidx, align 2, !tbaa !35
  %39 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %conv37 = zext i32 %39 to i64
  %mul38 = mul i64 %conv37, 2
  %40 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds i8, i8* %40, i64 %mul38
  store i8* %add.ptr39, i8** %accum.addr, align 8, !tbaa !1
  %41 = bitcast i16* %v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #3
  %42 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.34
  %43 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i8*, i8** %Init, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds i8, i8* %44, i64 2
  %45 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #3
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  %47 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #3
  %48 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  %49 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #3
  %50 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  ret i8* %add.ptr40
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollAnyWords(%struct._cmstransform_struct* %info, i16* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %SwapEndian = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %v = alloca i16, align 2
  %tmp = alloca i16, align 2
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 11
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %SwapEndian, align 4, !tbaa !17
  %6 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 10
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %DoSwap, align 4, !tbaa !17
  %9 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 13
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %Reverse, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 0
  %17 = load i32, i32* %InputFormat13, align 4, !tbaa !24
  %shr14 = lshr i32 %17, 7
  %and15 = and i32 %shr14, 7
  store i32 %and15, i32* %Extra, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv = sext i32 %23 to i64
  %mul = mul i64 %conv, 2
  %24 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %mul
  store i8* %add.ptr, i8** %accum.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !17
  %26 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #3
  %28 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %29 = load i32, i32* %nChan, align 4, !tbaa !17
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %29, %30
  %sub18 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub18, %cond.true ], [ %31, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  %32 = bitcast i16* %v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %32) #3
  %33 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %34 = bitcast i8* %33 to i16*
  %35 = load i16, i16* %34, align 2, !tbaa !35
  store i16 %35, i16* %v, align 2, !tbaa !35
  %36 = load i32, i32* %SwapEndian, align 4, !tbaa !17
  %tobool19 = icmp ne i32 %36, 0
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %cond.end
  %37 = load i16, i16* %v, align 2, !tbaa !35
  %conv21 = zext i16 %37 to i32
  %shl = shl i32 %conv21, 8
  %conv22 = trunc i32 %shl to i16
  %conv23 = zext i16 %conv22 to i32
  %38 = load i16, i16* %v, align 2, !tbaa !35
  %conv24 = zext i16 %38 to i32
  %shr25 = ashr i32 %conv24, 8
  %or = or i32 %conv23, %shr25
  %conv26 = trunc i32 %or to i16
  store i16 %conv26, i16* %v, align 2, !tbaa !35
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %cond.end
  %39 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.34

cond.true.29:                                     ; preds = %if.end.27
  %40 = load i16, i16* %v, align 2, !tbaa !35
  %conv30 = zext i16 %40 to i32
  %sub31 = sub nsw i32 65535, %conv30
  %conv32 = trunc i32 %sub31 to i16
  %conv33 = zext i16 %conv32 to i32
  br label %cond.end.36

cond.false.34:                                    ; preds = %if.end.27
  %41 = load i16, i16* %v, align 2, !tbaa !35
  %conv35 = zext i16 %41 to i32
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.29
  %cond37 = phi i32 [ %conv33, %cond.true.29 ], [ %conv35, %cond.false.34 ]
  %conv38 = trunc i32 %cond37 to i16
  %42 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %42 to i64
  %43 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %43, i64 %idxprom
  store i16 %conv38, i16* %arrayidx, align 2, !tbaa !35
  %44 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %add.ptr39, i8** %accum.addr, align 8, !tbaa !1
  %45 = bitcast i16* %v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #3
  %46 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.36
  %47 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool40 = icmp ne i32 %48, 0
  br i1 %tobool40, label %if.end.45, label %if.then.41

if.then.41:                                       ; preds = %for.end
  %49 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv42 = sext i32 %49 to i64
  %mul43 = mul i64 %conv42, 2
  %50 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %50, i64 %mul43
  store i8* %add.ptr44, i8** %accum.addr, align 8, !tbaa !1
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %for.end
  %51 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp46 = icmp eq i32 %51, 0
  br i1 %cmp46, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.45
  %52 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool48 = icmp ne i32 %52, 0
  br i1 %tobool48, label %if.then.49, label %if.end.59

if.then.49:                                       ; preds = %land.lhs.true
  %53 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %53) #3
  %54 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %54, i64 0
  %55 = load i16, i16* %arrayidx50, align 2, !tbaa !35
  store i16 %55, i16* %tmp, align 2, !tbaa !35
  %56 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %56, i64 0
  %57 = bitcast i16* %arrayidx51 to i8*
  %58 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i16, i16* %58, i64 1
  %59 = bitcast i16* %arrayidx52 to i8*
  %60 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub53 = sub nsw i32 %60, 1
  %conv54 = sext i32 %sub53 to i64
  %mul55 = mul i64 %conv54, 2
  %call = call i8* @memmove(i8* %57, i8* %59, i64 %mul55) #8
  %61 = load i16, i16* %tmp, align 2, !tbaa !35
  %62 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub56 = sub nsw i32 %62, 1
  %idxprom57 = sext i32 %sub56 to i64
  %63 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i16, i16* %63, i64 %idxprom57
  store i16 %61, i16* %arrayidx58, align 2, !tbaa !35
  %64 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %64) #3
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.49, %land.lhs.true, %if.end.45
  %65 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
  %67 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #3
  %69 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  %73 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #3
  ret i8* %65
}

declare void @cmsFloat2LabEncoded(i16*, %struct.cmsCIELab*) #2

declare void @cmsFloat2XYZEncoded(i16*, %struct.cmsCIEXYZ*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #4 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !29
  %0 = load double, double* %d.addr, align 8, !tbaa !29
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !29
  %1 = load double, double* %d.addr, align 8, !tbaa !29
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !29
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !29
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #7
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #4 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !29
  %0 = load double, double* %d.addr, align 8, !tbaa !29
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #7
  %conv = trunc i32 %call to i16
  %conv1 = zext i16 %conv to i32
  %add = add i32 %conv1, 32767
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #4 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !29
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !29
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load double, double* %val.addr, align 8, !tbaa !29
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !29
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !17
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #3
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #3
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @IsInkSpace(i32 %Type) #4 {
entry:
  %retval = alloca i32, align 4
  %Type.addr = alloca i32, align 4
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !17
  %0 = load i32, i32* %Type.addr, align 4, !tbaa !17
  %shr = lshr i32 %0, 16
  %and = and i32 %shr, 31
  switch i32 %and, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
    i32 23, label %sw.bb
    i32 24, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #5

declare float @_cmsHalf2Float(i16 zeroext) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @FomLabV2ToLabV4(i16 zeroext %x) #4 {
entry:
  %retval = alloca i16, align 2
  %x.addr = alloca i16, align 2
  %a = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16 %x, i16* %x.addr, align 2, !tbaa !35
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i16, i16* %x.addr, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load i16, i16* %x.addr, align 2, !tbaa !35
  %conv1 = zext i16 %2 to i32
  %or = or i32 %shl, %conv1
  %shr = ashr i32 %or, 8
  store i32 %shr, i32* %a, align 4, !tbaa !17
  %3 = load i32, i32* %a, align 4, !tbaa !17
  %cmp = icmp sgt i32 %3, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 -1, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %a, align 4, !tbaa !17
  %conv3 = trunc i32 %4 to i16
  store i16 %conv3, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #3
  %6 = load i16, i16* %retval
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollLabDoubleToFloat(%struct._cmstransform_struct* %info, float* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca float*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Pt = alloca double*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wIn, float** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to double*
  store double* %2, double** %Pt, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %5, i64 0
  %6 = load double, double* %arrayidx, align 8, !tbaa !29
  %div = fdiv double %6, 1.000000e+02
  %conv = fptrunc double %div to float
  %7 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %7, i64 0
  store float %conv, float* %arrayidx1, align 4, !tbaa !33
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx2, align 8, !tbaa !29
  %add = fadd double %10, 1.280000e+02
  %div3 = fdiv double %add, 2.550000e+02
  %conv4 = fptrunc double %div3 to float
  %11 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %11, i64 1
  store float %conv4, float* %arrayidx5, align 4, !tbaa !33
  %12 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %12, 2
  %idxprom6 = zext i32 %mul to i64
  %13 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %13, i64 %idxprom6
  %14 = load double, double* %arrayidx7, align 8, !tbaa !29
  %add8 = fadd double %14, 1.280000e+02
  %div9 = fdiv double %add8, 2.550000e+02
  %conv10 = fptrunc double %div9 to float
  %15 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %15, i64 2
  store float %conv10, float* %arrayidx11, align 4, !tbaa !33
  %16 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 8
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx12, align 8, !tbaa !29
  %div13 = fdiv double %18, 1.000000e+02
  %conv14 = fptrunc double %div13 to float
  %19 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %19, i64 0
  store float %conv14, float* %arrayidx15, align 4, !tbaa !33
  %20 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %20, i64 1
  %21 = load double, double* %arrayidx16, align 8, !tbaa !29
  %add17 = fadd double %21, 1.280000e+02
  %div18 = fdiv double %add17, 2.550000e+02
  %conv19 = fptrunc double %div18 to float
  %22 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds float, float* %22, i64 1
  store float %conv19, float* %arrayidx20, align 4, !tbaa !33
  %23 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds double, double* %23, i64 2
  %24 = load double, double* %arrayidx21, align 8, !tbaa !29
  %add22 = fadd double %24, 1.280000e+02
  %div23 = fdiv double %add22, 2.550000e+02
  %conv24 = fptrunc double %div23 to float
  %25 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %25, i64 2
  store float %conv24, float* %arrayidx25, align 4, !tbaa !33
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat26 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %InputFormat26, align 4, !tbaa !24
  %shr27 = lshr i32 %27, 7
  %and28 = and i32 %shr27, 7
  %add29 = add i32 3, %and28
  %conv30 = zext i32 %add29 to i64
  %mul31 = mul i64 8, %conv30
  %28 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %28, i64 %mul31
  store i8* %add.ptr32, i8** %accum.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %29, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %30 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #3
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollLabFloatToFloat(%struct._cmstransform_struct* %info, float* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca float*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Pt = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wIn, float** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to float*
  store float* %2, float** %Pt, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %6 to double
  %div = fdiv double %conv, 1.000000e+02
  %conv1 = fptrunc double %div to float
  %7 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 0
  store float %conv1, float* %arrayidx2, align 4, !tbaa !33
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx3, align 4, !tbaa !33
  %add = fadd float %10, 1.280000e+02
  %conv4 = fpext float %add to double
  %div5 = fdiv double %conv4, 2.550000e+02
  %conv6 = fptrunc double %div5 to float
  %11 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 1
  store float %conv6, float* %arrayidx7, align 4, !tbaa !33
  %12 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %12, 2
  %idxprom8 = zext i32 %mul to i64
  %13 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %13, i64 %idxprom8
  %14 = load float, float* %arrayidx9, align 4, !tbaa !33
  %add10 = fadd float %14, 1.280000e+02
  %conv11 = fpext float %add10 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  %conv13 = fptrunc double %div12 to float
  %15 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %15, i64 2
  store float %conv13, float* %arrayidx14, align 4, !tbaa !33
  %16 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx15, align 4, !tbaa !33
  %conv16 = fpext float %18 to double
  %div17 = fdiv double %conv16, 1.000000e+02
  %conv18 = fptrunc double %div17 to float
  %19 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %19, i64 0
  store float %conv18, float* %arrayidx19, align 4, !tbaa !33
  %20 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx20, align 4, !tbaa !33
  %add21 = fadd float %21, 1.280000e+02
  %conv22 = fpext float %add21 to double
  %div23 = fdiv double %conv22, 2.550000e+02
  %conv24 = fptrunc double %div23 to float
  %22 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %22, i64 1
  store float %conv24, float* %arrayidx25, align 4, !tbaa !33
  %23 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds float, float* %23, i64 2
  %24 = load float, float* %arrayidx26, align 4, !tbaa !33
  %add27 = fadd float %24, 1.280000e+02
  %conv28 = fpext float %add27 to double
  %div29 = fdiv double %conv28, 2.550000e+02
  %conv30 = fptrunc double %div29 to float
  %25 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds float, float* %25, i64 2
  store float %conv30, float* %arrayidx31, align 4, !tbaa !33
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat32 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %InputFormat32, align 4, !tbaa !24
  %shr33 = lshr i32 %27, 7
  %and34 = and i32 %shr33, 7
  %add35 = add i32 3, %and34
  %conv36 = zext i32 %add35 to i64
  %mul37 = mul i64 4, %conv36
  %28 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds i8, i8* %28, i64 %mul37
  store i8* %add.ptr38, i8** %accum.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %29, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %30 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #3
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollXYZDoubleToFloat(%struct._cmstransform_struct* %info, float* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca float*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Pt = alloca double*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wIn, float** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to double*
  store double* %2, double** %Pt, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %5, i64 0
  %6 = load double, double* %arrayidx, align 8, !tbaa !29
  %div = fdiv double %6, 0x3FFFFFE000000000
  %conv = fptrunc double %div to float
  %7 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %7, i64 0
  store float %conv, float* %arrayidx1, align 4, !tbaa !33
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx2, align 8, !tbaa !29
  %div3 = fdiv double %10, 0x3FFFFFE000000000
  %conv4 = fptrunc double %div3 to float
  %11 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %11, i64 1
  store float %conv4, float* %arrayidx5, align 4, !tbaa !33
  %12 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %12, 2
  %idxprom6 = zext i32 %mul to i64
  %13 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %13, i64 %idxprom6
  %14 = load double, double* %arrayidx7, align 8, !tbaa !29
  %div8 = fdiv double %14, 0x3FFFFFE000000000
  %conv9 = fptrunc double %div8 to float
  %15 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds float, float* %15, i64 2
  store float %conv9, float* %arrayidx10, align 4, !tbaa !33
  %16 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 8
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx11, align 8, !tbaa !29
  %div12 = fdiv double %18, 0x3FFFFFE000000000
  %conv13 = fptrunc double %div12 to float
  %19 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %19, i64 0
  store float %conv13, float* %arrayidx14, align 4, !tbaa !33
  %20 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 1
  %21 = load double, double* %arrayidx15, align 8, !tbaa !29
  %div16 = fdiv double %21, 0x3FFFFFE000000000
  %conv17 = fptrunc double %div16 to float
  %22 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %22, i64 1
  store float %conv17, float* %arrayidx18, align 4, !tbaa !33
  %23 = load double*, double** %Pt, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds double, double* %23, i64 2
  %24 = load double, double* %arrayidx19, align 8, !tbaa !29
  %div20 = fdiv double %24, 0x3FFFFFE000000000
  %conv21 = fptrunc double %div20 to float
  %25 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds float, float* %25, i64 2
  store float %conv21, float* %arrayidx22, align 4, !tbaa !33
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat23 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %InputFormat23, align 4, !tbaa !24
  %shr24 = lshr i32 %27, 7
  %and25 = and i32 %shr24, 7
  %add = add i32 3, %and25
  %conv26 = zext i32 %add to i64
  %mul27 = mul i64 8, %conv26
  %28 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds i8, i8* %28, i64 %mul27
  store i8* %add.ptr28, i8** %accum.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %29, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %30 = bitcast double** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #3
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollXYZFloatToFloat(%struct._cmstransform_struct* %info, float* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca float*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Pt = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wIn, float** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to float*
  store float* %2, float** %Pt, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %6 to double
  %div = fdiv double %conv, 0x3FFFFFE000000000
  %conv1 = fptrunc double %div to float
  %7 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 0
  store float %conv1, float* %arrayidx2, align 4, !tbaa !33
  %8 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx3, align 4, !tbaa !33
  %conv4 = fpext float %10 to double
  %div5 = fdiv double %conv4, 0x3FFFFFE000000000
  %conv6 = fptrunc double %div5 to float
  %11 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 1
  store float %conv6, float* %arrayidx7, align 4, !tbaa !33
  %12 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %12, 2
  %idxprom8 = zext i32 %mul to i64
  %13 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %13, i64 %idxprom8
  %14 = load float, float* %arrayidx9, align 4, !tbaa !33
  %conv10 = fpext float %14 to double
  %div11 = fdiv double %conv10, 0x3FFFFFE000000000
  %conv12 = fptrunc double %div11 to float
  %15 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %15, i64 2
  store float %conv12, float* %arrayidx13, align 4, !tbaa !33
  %16 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx14, align 4, !tbaa !33
  %conv15 = fpext float %18 to double
  %div16 = fdiv double %conv15, 0x3FFFFFE000000000
  %conv17 = fptrunc double %div16 to float
  %19 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %19, i64 0
  store float %conv17, float* %arrayidx18, align 4, !tbaa !33
  %20 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx19, align 4, !tbaa !33
  %conv20 = fpext float %21 to double
  %div21 = fdiv double %conv20, 0x3FFFFFE000000000
  %conv22 = fptrunc double %div21 to float
  %22 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds float, float* %22, i64 1
  store float %conv22, float* %arrayidx23, align 4, !tbaa !33
  %23 = load float*, float** %Pt, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds float, float* %23, i64 2
  %24 = load float, float* %arrayidx24, align 4, !tbaa !33
  %conv25 = fpext float %24 to double
  %div26 = fdiv double %conv25, 0x3FFFFFE000000000
  %conv27 = fptrunc double %div26 to float
  %25 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds float, float* %25, i64 2
  store float %conv27, float* %arrayidx28, align 4, !tbaa !33
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat29 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %InputFormat29, align 4, !tbaa !24
  %shr30 = lshr i32 %27, 7
  %and31 = and i32 %shr30, 7
  %add = add i32 3, %and31
  %conv32 = zext i32 %add to i64
  %mul33 = mul i64 4, %conv32
  %28 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %28, i64 %mul33
  store i8* %add.ptr34, i8** %accum.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  store i8* %29, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %30 = bitcast float** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #3
  %31 = load i8*, i8** %retval
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollFloatsToFloat(%struct._cmstransform_struct* %info, float* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca float*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %v = alloca float, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %maximum = alloca float, align 4
  %index = alloca i32, align 4
  %tmp = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wIn, float** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 14
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapFirst, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 7
  %and12 = and i32 %shr11, 7
  store i32 %and12, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %InputFormat13, align 4, !tbaa !24
  %shr14 = lshr i32 %20, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %21 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %24 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  %25 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %25, i32 0, i32 0
  %26 = load i32, i32* %InputFormat16, align 4, !tbaa !24
  %call = call i32 @IsInkSpace(i32 %26) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, float 1.000000e+02, float 1.000000e+00
  store float %cond, float* %maximum, align 4, !tbaa !33
  %27 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %28, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %30 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #3
  %32 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %32, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %34 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %33, %34
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %35, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %36 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %36, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %38 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %37, %38
  %39 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %39
  %idxprom = zext i32 %mul to i64
  %40 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %41 = bitcast i8* %40 to float*
  %arrayidx = getelementptr inbounds float, float* %41, i64 %idxprom
  %42 = load float, float* %arrayidx, align 4, !tbaa !33
  store float %42, float* %v, align 4, !tbaa !33
  br label %if.end.26

if.else:                                          ; preds = %cond.end
  %43 = load i32, i32* %i, align 4, !tbaa !17
  %44 = load i32, i32* %start, align 4, !tbaa !17
  %add23 = add nsw i32 %43, %44
  %idxprom24 = sext i32 %add23 to i64
  %45 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to float*
  %arrayidx25 = getelementptr inbounds float, float* %46, i64 %idxprom24
  %47 = load float, float* %arrayidx25, align 4, !tbaa !33
  store float %47, float* %v, align 4, !tbaa !33
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.22
  %48 = load float, float* %maximum, align 4, !tbaa !33
  %49 = load float, float* %v, align 4, !tbaa !33
  %div = fdiv float %49, %48
  store float %div, float* %v, align 4, !tbaa !33
  %50 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool27 = icmp ne i32 %50, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %if.end.26
  %51 = load float, float* %v, align 4, !tbaa !33
  %sub29 = fsub float 1.000000e+00, %51
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.end.26
  %52 = load float, float* %v, align 4, !tbaa !33
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.28
  %cond32 = phi float [ %sub29, %cond.true.28 ], [ %52, %cond.false.30 ]
  %53 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom33 = sext i32 %53 to i64
  %54 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %54, i64 %idxprom33
  store float %cond32, float* %arrayidx34, align 4, !tbaa !33
  %55 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %56 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp35 = icmp eq i32 %57, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.end
  %58 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool36 = icmp ne i32 %58, 0
  br i1 %tobool36, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %land.lhs.true
  %59 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #3
  %60 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds float, float* %60, i64 0
  %61 = load float, float* %arrayidx38, align 4, !tbaa !33
  store float %61, float* %tmp, align 4, !tbaa !33
  %62 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds float, float* %62, i64 0
  %63 = bitcast float* %arrayidx39 to i8*
  %64 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds float, float* %64, i64 1
  %65 = bitcast float* %arrayidx40 to i8*
  %66 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub41 = sub nsw i32 %66, 1
  %conv = sext i32 %sub41 to i64
  %mul42 = mul i64 %conv, 4
  %call43 = call i8* @memmove(i8* %63, i8* %65, i64 %mul42) #8
  %67 = load float, float* %tmp, align 4, !tbaa !33
  %68 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub44 = sub nsw i32 %68, 1
  %idxprom45 = sext i32 %sub44 to i64
  %69 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds float, float* %69, i64 %idxprom45
  store float %67, float* %arrayidx46, align 4, !tbaa !33
  %70 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.37, %land.lhs.true, %for.end
  %71 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat48 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %71, i32 0, i32 0
  %72 = load i32, i32* %InputFormat48, align 4, !tbaa !24
  %shr49 = lshr i32 %72, 12
  %and50 = and i32 %shr49, 1
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.47
  %73 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.53:                                       ; preds = %if.end.47
  %74 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %75 = load i32, i32* %nChan, align 4, !tbaa !17
  %76 = load i32, i32* %Extra, align 4, !tbaa !17
  %add54 = add nsw i32 %75, %76
  %conv55 = sext i32 %add54 to i64
  %mul56 = mul i64 %conv55, 4
  %add.ptr57 = getelementptr inbounds i8, i8* %74, i64 %mul56
  store i8* %add.ptr57, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.53, %if.then.52
  %77 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = load i8*, i8** %retval
  ret i8* %88
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollDoublesToFloat(%struct._cmstransform_struct* %info, float* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca float*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %v = alloca double, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %maximum = alloca double, align 8
  %index = alloca i32, align 4
  %tmp = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wIn, float** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 14
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapFirst, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 7
  %and12 = and i32 %shr11, 7
  store i32 %and12, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %InputFormat13, align 4, !tbaa !24
  %shr14 = lshr i32 %20, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %21 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %24 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  %25 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %25, i32 0, i32 0
  %26 = load i32, i32* %InputFormat16, align 4, !tbaa !24
  %call = call i32 @IsInkSpace(i32 %26) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, double 1.000000e+02, double 1.000000e+00
  store double %cond, double* %maximum, align 8, !tbaa !29
  %27 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %28, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %30 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #3
  %32 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %32, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %34 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %33, %34
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %35, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %36 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %36, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %38 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %37, %38
  %39 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %39
  %idxprom = zext i32 %mul to i64
  %40 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %41 = bitcast i8* %40 to double*
  %arrayidx = getelementptr inbounds double, double* %41, i64 %idxprom
  %42 = load double, double* %arrayidx, align 8, !tbaa !29
  store double %42, double* %v, align 8, !tbaa !29
  br label %if.end.26

if.else:                                          ; preds = %cond.end
  %43 = load i32, i32* %i, align 4, !tbaa !17
  %44 = load i32, i32* %start, align 4, !tbaa !17
  %add23 = add nsw i32 %43, %44
  %idxprom24 = sext i32 %add23 to i64
  %45 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to double*
  %arrayidx25 = getelementptr inbounds double, double* %46, i64 %idxprom24
  %47 = load double, double* %arrayidx25, align 8, !tbaa !29
  store double %47, double* %v, align 8, !tbaa !29
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.22
  %48 = load double, double* %maximum, align 8, !tbaa !29
  %49 = load double, double* %v, align 8, !tbaa !29
  %div = fdiv double %49, %48
  store double %div, double* %v, align 8, !tbaa !29
  %50 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool27 = icmp ne i32 %50, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %if.end.26
  %51 = load double, double* %v, align 8, !tbaa !29
  %sub29 = fsub double 1.000000e+00, %51
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.end.26
  %52 = load double, double* %v, align 8, !tbaa !29
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.28
  %cond32 = phi double [ %sub29, %cond.true.28 ], [ %52, %cond.false.30 ]
  %conv = fptrunc double %cond32 to float
  %53 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom33 = sext i32 %53 to i64
  %54 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %54, i64 %idxprom33
  store float %conv, float* %arrayidx34, align 4, !tbaa !33
  %55 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %56 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp35 = icmp eq i32 %57, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %for.end
  %58 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool37 = icmp ne i32 %58, 0
  br i1 %tobool37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %land.lhs.true
  %59 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #3
  %60 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds float, float* %60, i64 0
  %61 = load float, float* %arrayidx39, align 4, !tbaa !33
  store float %61, float* %tmp, align 4, !tbaa !33
  %62 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds float, float* %62, i64 0
  %63 = bitcast float* %arrayidx40 to i8*
  %64 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %64, i64 1
  %65 = bitcast float* %arrayidx41 to i8*
  %66 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub42 = sub nsw i32 %66, 1
  %conv43 = sext i32 %sub42 to i64
  %mul44 = mul i64 %conv43, 4
  %call45 = call i8* @memmove(i8* %63, i8* %65, i64 %mul44) #8
  %67 = load float, float* %tmp, align 4, !tbaa !33
  %68 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub46 = sub nsw i32 %68, 1
  %idxprom47 = sext i32 %sub46 to i64
  %69 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds float, float* %69, i64 %idxprom47
  store float %67, float* %arrayidx48, align 4, !tbaa !33
  %70 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.38, %land.lhs.true, %for.end
  %71 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat50 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %71, i32 0, i32 0
  %72 = load i32, i32* %InputFormat50, align 4, !tbaa !24
  %shr51 = lshr i32 %72, 12
  %and52 = and i32 %shr51, 1
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.end.49
  %73 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 8
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.55:                                       ; preds = %if.end.49
  %74 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %75 = load i32, i32* %nChan, align 4, !tbaa !17
  %76 = load i32, i32* %Extra, align 4, !tbaa !17
  %add56 = add nsw i32 %75, %76
  %conv57 = sext i32 %add56 to i64
  %mul58 = mul i64 %conv57, 8
  %add.ptr59 = getelementptr inbounds i8, i8* %74, i64 %mul58
  store i8* %add.ptr59, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.55, %if.then.54
  %77 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #3
  %78 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = load i8*, i8** %retval
  ret i8* %88
}

; Function Attrs: nounwind uwtable
define internal i8* @UnrollHalfToFloat(%struct._cmstransform_struct* %info, float* %wIn, i8* %accum, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca float*, align 8
  %accum.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Extra = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %v = alloca float, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %maximum = alloca float, align 4
  %index = alloca i32, align 4
  %tmp = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wIn, float** %wIn.addr, align 8, !tbaa !1
  store i8* %accum, i8** %accum.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat1, align 4, !tbaa !24
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %InputFormat4, align 4, !tbaa !24
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %InputFormat7, align 4, !tbaa !24
  %shr8 = lshr i32 %11, 14
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapFirst, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %InputFormat10, align 4, !tbaa !24
  %shr11 = lshr i32 %14, 7
  %and12 = and i32 %shr11, 7
  store i32 %and12, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %InputFormat13, align 4, !tbaa !24
  %shr14 = lshr i32 %20, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %21 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #3
  %23 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %24 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  %25 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %25, i32 0, i32 0
  %26 = load i32, i32* %InputFormat16, align 4, !tbaa !24
  %call = call i32 @IsInkSpace(i32 %26) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, float 1.000000e+02, float 1.000000e+00
  store float %cond, float* %maximum, align 4, !tbaa !33
  %27 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %27, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %28, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %30 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #3
  %32 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %32, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %34 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %33, %34
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %35, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %36 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %36, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %cond.end
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %38 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %37, %38
  %39 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %39
  %idxprom = zext i32 %mul to i64
  %40 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %41 = bitcast i8* %40 to i16*
  %arrayidx = getelementptr inbounds i16, i16* %41, i64 %idxprom
  %42 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %call23 = call float @_cmsHalf2Float(i16 zeroext %42) #7
  store float %call23, float* %v, align 4, !tbaa !33
  br label %if.end.28

if.else:                                          ; preds = %cond.end
  %43 = load i32, i32* %i, align 4, !tbaa !17
  %44 = load i32, i32* %start, align 4, !tbaa !17
  %add24 = add nsw i32 %43, %44
  %idxprom25 = sext i32 %add24 to i64
  %45 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to i16*
  %arrayidx26 = getelementptr inbounds i16, i16* %46, i64 %idxprom25
  %47 = load i16, i16* %arrayidx26, align 2, !tbaa !35
  %call27 = call float @_cmsHalf2Float(i16 zeroext %47) #7
  store float %call27, float* %v, align 4, !tbaa !33
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.22
  %48 = load float, float* %maximum, align 4, !tbaa !33
  %49 = load float, float* %v, align 4, !tbaa !33
  %div = fdiv float %49, %48
  store float %div, float* %v, align 4, !tbaa !33
  %50 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool29 = icmp ne i32 %50, 0
  br i1 %tobool29, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %if.end.28
  %51 = load float, float* %v, align 4, !tbaa !33
  %sub31 = fsub float 1.000000e+00, %51
  br label %cond.end.33

cond.false.32:                                    ; preds = %if.end.28
  %52 = load float, float* %v, align 4, !tbaa !33
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.30
  %cond34 = phi float [ %sub31, %cond.true.30 ], [ %52, %cond.false.32 ]
  %53 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom35 = sext i32 %53 to i64
  %54 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds float, float* %54, i64 %idxprom35
  store float %cond34, float* %arrayidx36, align 4, !tbaa !33
  %55 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.33
  %56 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp37 = icmp eq i32 %57, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %for.end
  %58 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool38 = icmp ne i32 %58, 0
  br i1 %tobool38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %land.lhs.true
  %59 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #3
  %60 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds float, float* %60, i64 0
  %61 = load float, float* %arrayidx40, align 4, !tbaa !33
  store float %61, float* %tmp, align 4, !tbaa !33
  %62 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %62, i64 0
  %63 = bitcast float* %arrayidx41 to i8*
  %64 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds float, float* %64, i64 1
  %65 = bitcast float* %arrayidx42 to i8*
  %66 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub43 = sub nsw i32 %66, 1
  %conv = sext i32 %sub43 to i64
  %mul44 = mul i64 %conv, 4
  %call45 = call i8* @memmove(i8* %63, i8* %65, i64 %mul44) #8
  %67 = load float, float* %tmp, align 4, !tbaa !33
  %68 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub46 = sub nsw i32 %68, 1
  %idxprom47 = sext i32 %sub46 to i64
  %69 = load float*, float** %wIn.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds float, float* %69, i64 %idxprom47
  store float %67, float* %arrayidx48, align 4, !tbaa !33
  %70 = bitcast float* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.39, %land.lhs.true, %for.end
  %71 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat50 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %71, i32 0, i32 0
  %72 = load i32, i32* %InputFormat50, align 4, !tbaa !24
  %shr51 = lshr i32 %72, 12
  %and52 = and i32 %shr51, 1
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.end.49
  %73 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.55:                                       ; preds = %if.end.49
  %74 = load i8*, i8** %accum.addr, align 8, !tbaa !1
  %75 = load i32, i32* %nChan, align 4, !tbaa !17
  %76 = load i32, i32* %Extra, align 4, !tbaa !17
  %add56 = add nsw i32 %75, %76
  %conv57 = sext i32 %add56 to i64
  %mul58 = mul i64 %conv57, 2
  %add.ptr59 = getelementptr inbounds i8, i8* %74, i64 %mul58
  store i8* %add.ptr59, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.55, %if.then.54
  %77 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = load i8*, i8** %retval
  ret i8* %88
}

; Function Attrs: nounwind uwtable
define internal i8* @PackLabDoubleFrom16(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Lab = alloca %struct.cmsCIELab, align 8
  %Out = alloca double*, align 8
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #3
  %3 = bitcast double** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to double*
  store double* %5, double** %Out, align 8, !tbaa !1
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  call void @cmsLabEncoded2Float(%struct.cmsCIELab* %Lab, i16* %6) #7
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %7 = load double, double* %L, align 8, !tbaa !30
  %8 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %8, i64 0
  store double %7, double* %arrayidx, align 8, !tbaa !29
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  %9 = load double, double* %a, align 8, !tbaa !31
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %9, double* %arrayidx1, align 8, !tbaa !29
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  %12 = load double, double* %b, align 8, !tbaa !32
  %13 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %13, 2
  %idxprom2 = zext i32 %mul to i64
  %14 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %14, i64 %idxprom2
  store double %12, double* %arrayidx3, align 8, !tbaa !29
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 8
  store i8* %add.ptr, i8** %retval
  %16 = bitcast double** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  %17 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %17) #3
  br label %return

if.else:                                          ; preds = %entry
  %18 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to %struct.cmsCIELab*
  %20 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  call void @cmsLabEncoded2Float(%struct.cmsCIELab* %19, i16* %20) #7
  %21 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %23, 7
  %and6 = and i32 %shr5, 7
  %conv = zext i32 %and6 to i64
  %mul7 = mul i64 %conv, 8
  %add = add i64 24, %mul7
  %add.ptr8 = getelementptr inbounds i8, i8* %21, i64 %add
  store i8* %add.ptr8, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @PackXYZDoubleFrom16(%struct._cmstransform_struct* %Info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %Info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  %Out = alloca double*, align 8
  store %struct._cmstransform_struct* %Info, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #3
  %3 = bitcast double** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to double*
  store double* %5, double** %Out, align 8, !tbaa !1
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  call void @cmsXYZEncoded2Float(%struct.cmsCIEXYZ* %XYZ, i16* %6) #7
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 0
  %7 = load double, double* %X, align 8, !tbaa !30
  %8 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %8, i64 0
  store double %7, double* %arrayidx, align 8, !tbaa !29
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 1
  %9 = load double, double* %Y, align 8, !tbaa !31
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %9, double* %arrayidx1, align 8, !tbaa !29
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 2
  %12 = load double, double* %Z, align 8, !tbaa !32
  %13 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %13, 2
  %idxprom2 = zext i32 %mul to i64
  %14 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %14, i64 %idxprom2
  store double %12, double* %arrayidx3, align 8, !tbaa !29
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 8
  store i8* %add.ptr, i8** %retval
  %16 = bitcast double** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  %17 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %17) #3
  br label %return

if.else:                                          ; preds = %entry
  %18 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to %struct.cmsCIEXYZ*
  %20 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  call void @cmsXYZEncoded2Float(%struct.cmsCIEXYZ* %19, i16* %20) #7
  %21 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %23, 7
  %and6 = and i32 %shr5, 7
  %conv = zext i32 %and6 to i64
  %mul7 = mul i64 %conv, 8
  %add = add i64 24, %mul7
  %add.ptr8 = getelementptr inbounds i8, i8* %21, i64 %add
  store i8* %add.ptr8, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @PackLabFloatFrom16(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Lab = alloca %struct.cmsCIELab, align 8
  %Out = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #3
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  call void @cmsLabEncoded2Float(%struct.cmsCIELab* %Lab, i16* %1) #7
  %2 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %3, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast float** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to float*
  store float* %6, float** %Out, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %7 = load double, double* %L, align 8, !tbaa !30
  %conv = fptrunc double %7 to float
  %8 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %8, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !33
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  %9 = load double, double* %a, align 8, !tbaa !31
  %conv1 = fptrunc double %9 to float
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %conv1, float* %arrayidx2, align 4, !tbaa !33
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  %12 = load double, double* %b, align 8, !tbaa !32
  %conv3 = fptrunc double %12 to float
  %13 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %13, 2
  %idxprom4 = zext i32 %mul to i64
  %14 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %14, i64 %idxprom4
  store float %conv3, float* %arrayidx5, align 4, !tbaa !33
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  %16 = bitcast float** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  br label %cleanup

if.else:                                          ; preds = %entry
  %L6 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %17 = load double, double* %L6, align 8, !tbaa !30
  %conv7 = fptrunc double %17 to float
  %18 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to float*
  %arrayidx8 = getelementptr inbounds float, float* %19, i64 0
  store float %conv7, float* %arrayidx8, align 4, !tbaa !33
  %a9 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  %20 = load double, double* %a9, align 8, !tbaa !31
  %conv10 = fptrunc double %20 to float
  %21 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to float*
  %arrayidx11 = getelementptr inbounds float, float* %22, i64 1
  store float %conv10, float* %arrayidx11, align 4, !tbaa !33
  %b12 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  %23 = load double, double* %b12, align 8, !tbaa !32
  %conv13 = fptrunc double %23 to float
  %24 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to float*
  %arrayidx14 = getelementptr inbounds float, float* %25, i64 2
  store float %conv13, float* %arrayidx14, align 4, !tbaa !33
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat15 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %OutputFormat15, align 4, !tbaa !37
  %shr16 = lshr i32 %28, 7
  %and17 = and i32 %shr16, 7
  %add = add i32 3, %and17
  %conv18 = zext i32 %add to i64
  %mul19 = mul i64 %conv18, 4
  %add.ptr20 = getelementptr inbounds i8, i8* %26, i64 %mul19
  store i8* %add.ptr20, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %29 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #3
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define internal i8* @PackXYZFloatFrom16(%struct._cmstransform_struct* %Info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %Info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  %Out = alloca float*, align 8
  %XYZ6 = alloca %struct.cmsCIEXYZ, align 8
  %Out7 = alloca float*, align 8
  store %struct._cmstransform_struct* %Info, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %1, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #3
  %3 = bitcast float** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to float*
  store float* %5, float** %Out, align 8, !tbaa !1
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  call void @cmsXYZEncoded2Float(%struct.cmsCIEXYZ* %XYZ, i16* %6) #7
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 0
  %7 = load double, double* %X, align 8, !tbaa !30
  %conv = fptrunc double %7 to float
  %8 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %8, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !33
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 1
  %9 = load double, double* %Y, align 8, !tbaa !31
  %conv1 = fptrunc double %9 to float
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %conv1, float* %arrayidx2, align 4, !tbaa !33
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 2
  %12 = load double, double* %Z, align 8, !tbaa !32
  %conv3 = fptrunc double %12 to float
  %13 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %13, 2
  %idxprom4 = zext i32 %mul to i64
  %14 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %14, i64 %idxprom4
  store float %conv3, float* %arrayidx5, align 4, !tbaa !33
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr, i8** %retval
  %16 = bitcast float** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #3
  %17 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %17) #3
  br label %return

if.else:                                          ; preds = %entry
  %18 = bitcast %struct.cmsCIEXYZ* %XYZ6 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %18) #3
  %19 = bitcast float** %Out7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to float*
  store float* %21, float** %Out7, align 8, !tbaa !1
  %22 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  call void @cmsXYZEncoded2Float(%struct.cmsCIEXYZ* %XYZ6, i16* %22) #7
  %X8 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ6, i32 0, i32 0
  %23 = load double, double* %X8, align 8, !tbaa !30
  %conv9 = fptrunc double %23 to float
  %24 = load float*, float** %Out7, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds float, float* %24, i64 0
  store float %conv9, float* %arrayidx10, align 4, !tbaa !33
  %Y11 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ6, i32 0, i32 1
  %25 = load double, double* %Y11, align 8, !tbaa !31
  %conv12 = fptrunc double %25 to float
  %26 = load float*, float** %Out7, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %26, i64 1
  store float %conv12, float* %arrayidx13, align 4, !tbaa !33
  %Z14 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ6, i32 0, i32 2
  %27 = load double, double* %Z14, align 8, !tbaa !32
  %conv15 = fptrunc double %27 to float
  %28 = load float*, float** %Out7, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds float, float* %28, i64 2
  store float %conv15, float* %arrayidx16, align 4, !tbaa !33
  %29 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %30 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat17 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %30, i32 0, i32 1
  %31 = load i32, i32* %OutputFormat17, align 4, !tbaa !37
  %shr18 = lshr i32 %31, 7
  %and19 = and i32 %shr18, 7
  %conv20 = zext i32 %and19 to i64
  %mul21 = mul i64 %conv20, 4
  %add = add i64 12, %mul21
  %add.ptr22 = getelementptr inbounds i8, i8* %29, i64 %add
  store i8* %add.ptr22, i8** %retval
  %32 = bitcast float** %Out7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #3
  %33 = bitcast %struct.cmsCIEXYZ* %XYZ6 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %33) #3
  br label %return

return:                                           ; preds = %if.else, %if.then
  %34 = load i8*, i8** %retval
  ret i8* %34
}

; Function Attrs: nounwind uwtable
define internal i8* @PackDoubleFrom16(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %maximum = alloca double, align 8
  %v = alloca double, align 8
  %swap1 = alloca double*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 7
  %and9 = and i32 %shr8, 7
  store i32 %and9, i32* %Extra, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %OutputFormat13, align 4, !tbaa !37
  %shr14 = lshr i32 %17, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat16, align 4, !tbaa !37
  %call = call i32 @IsInkSpace(i32 %23) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, double 6.553500e+02, double 6.553500e+04
  store double %cond, double* %maximum, align 8, !tbaa !29
  %24 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  store double 0.000000e+00, double* %v, align 8, !tbaa !29
  %25 = bitcast double** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to double*
  store double* %27, double** %swap1, align 8, !tbaa !1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #3
  %29 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %30 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %31, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #3
  %35 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %nChan, align 4, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %36, %37
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %38, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %39 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %39 to i64
  %40 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %40, i64 %idxprom
  %41 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = uitofp i16 %41 to double
  %42 = load double, double* %maximum, align 8, !tbaa !29
  %div = fdiv double %conv, %42
  store double %div, double* %v, align 8, !tbaa !29
  %43 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end
  %44 = load double, double* %maximum, align 8, !tbaa !29
  %45 = load double, double* %v, align 8, !tbaa !29
  %sub23 = fsub double %44, %45
  store double %sub23, double* %v, align 8, !tbaa !29
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end
  %46 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool25 = icmp ne i32 %46, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %47 = load double, double* %v, align 8, !tbaa !29
  %48 = load i32, i32* %i, align 4, !tbaa !17
  %49 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %48, %49
  %50 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %50
  %idxprom27 = zext i32 %mul to i64
  %51 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to double*
  %arrayidx28 = getelementptr inbounds double, double* %52, i64 %idxprom27
  store double %47, double* %arrayidx28, align 8, !tbaa !29
  br label %if.end.32

if.else:                                          ; preds = %if.end.24
  %53 = load double, double* %v, align 8, !tbaa !29
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %55 = load i32, i32* %start, align 4, !tbaa !17
  %add29 = add nsw i32 %54, %55
  %idxprom30 = sext i32 %add29 to i64
  %56 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to double*
  %arrayidx31 = getelementptr inbounds double, double* %57, i64 %idxprom30
  store double %53, double* %arrayidx31, align 8, !tbaa !29
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.26
  %58 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %59 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool33 = icmp ne i32 %60, 0
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %for.end
  %61 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv35 = sext i32 %61 to i64
  %mul36 = mul i64 %conv35, 8
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %mul36
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %for.end
  %63 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp38 = icmp eq i32 %63, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.37
  %64 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool40 = icmp ne i32 %64, 0
  br i1 %tobool40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %land.lhs.true
  %65 = load double*, double** %swap1, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds double, double* %65, i64 1
  %66 = bitcast double* %add.ptr42 to i8*
  %67 = load double*, double** %swap1, align 8, !tbaa !1
  %68 = bitcast double* %67 to i8*
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub43 = sub nsw i32 %69, 1
  %conv44 = sext i32 %sub43 to i64
  %mul45 = mul i64 %conv44, 8
  %call46 = call i8* @memmove(i8* %66, i8* %68, i64 %mul45) #8
  %70 = load double, double* %v, align 8, !tbaa !29
  %71 = load double*, double** %swap1, align 8, !tbaa !1
  store double %70, double* %71, align 8, !tbaa !29
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.41, %land.lhs.true, %if.end.37
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat48 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %OutputFormat48, align 4, !tbaa !37
  %shr49 = lshr i32 %73, 12
  %and50 = and i32 %shr49, 1
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.end.47
  %74 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %add.ptr53, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.54:                                       ; preds = %if.end.47
  %75 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %conv55 = sext i32 %76 to i64
  %mul56 = mul i64 %conv55, 8
  %add.ptr57 = getelementptr inbounds i8, i8* %75, i64 %mul56
  store i8* %add.ptr57, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.54, %if.then.52
  %77 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast double** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  %80 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = load i8*, i8** %retval
  ret i8* %89
}

; Function Attrs: nounwind uwtable
define internal i8* @PackFloatFrom16(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %maximum = alloca double, align 8
  %v = alloca double, align 8
  %swap1 = alloca float*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 7
  %and9 = and i32 %shr8, 7
  store i32 %and9, i32* %Extra, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %OutputFormat13, align 4, !tbaa !37
  %shr14 = lshr i32 %17, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat16, align 4, !tbaa !37
  %call = call i32 @IsInkSpace(i32 %23) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, double 6.553500e+02, double 6.553500e+04
  store double %cond, double* %maximum, align 8, !tbaa !29
  %24 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  store double 0.000000e+00, double* %v, align 8, !tbaa !29
  %25 = bitcast float** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to float*
  store float* %27, float** %swap1, align 8, !tbaa !1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #3
  %29 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %30 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %31, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #3
  %35 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %nChan, align 4, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %36, %37
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %38, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %39 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %39 to i64
  %40 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %40, i64 %idxprom
  %41 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = uitofp i16 %41 to double
  %42 = load double, double* %maximum, align 8, !tbaa !29
  %div = fdiv double %conv, %42
  store double %div, double* %v, align 8, !tbaa !29
  %43 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end
  %44 = load double, double* %maximum, align 8, !tbaa !29
  %45 = load double, double* %v, align 8, !tbaa !29
  %sub23 = fsub double %44, %45
  store double %sub23, double* %v, align 8, !tbaa !29
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end
  %46 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool25 = icmp ne i32 %46, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %47 = load double, double* %v, align 8, !tbaa !29
  %conv27 = fptrunc double %47 to float
  %48 = load i32, i32* %i, align 4, !tbaa !17
  %49 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %48, %49
  %50 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %50
  %idxprom28 = zext i32 %mul to i64
  %51 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to float*
  %arrayidx29 = getelementptr inbounds float, float* %52, i64 %idxprom28
  store float %conv27, float* %arrayidx29, align 4, !tbaa !33
  br label %if.end.34

if.else:                                          ; preds = %if.end.24
  %53 = load double, double* %v, align 8, !tbaa !29
  %conv30 = fptrunc double %53 to float
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %55 = load i32, i32* %start, align 4, !tbaa !17
  %add31 = add nsw i32 %54, %55
  %idxprom32 = sext i32 %add31 to i64
  %56 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to float*
  %arrayidx33 = getelementptr inbounds float, float* %57, i64 %idxprom32
  store float %conv30, float* %arrayidx33, align 4, !tbaa !33
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.26
  %58 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %59 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool35 = icmp ne i32 %60, 0
  br i1 %tobool35, label %if.end.39, label %if.then.36

if.then.36:                                       ; preds = %for.end
  %61 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv37 = sext i32 %61 to i64
  %mul38 = mul i64 %conv37, 4
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %mul38
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %for.end
  %63 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp40 = icmp eq i32 %63, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.39
  %64 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool42 = icmp ne i32 %64, 0
  br i1 %tobool42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %land.lhs.true
  %65 = load float*, float** %swap1, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds float, float* %65, i64 1
  %66 = bitcast float* %add.ptr44 to i8*
  %67 = load float*, float** %swap1, align 8, !tbaa !1
  %68 = bitcast float* %67 to i8*
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub45 = sub nsw i32 %69, 1
  %conv46 = sext i32 %sub45 to i64
  %mul47 = mul i64 %conv46, 4
  %call48 = call i8* @memmove(i8* %66, i8* %68, i64 %mul47) #8
  %70 = load double, double* %v, align 8, !tbaa !29
  %conv49 = fptrunc double %70 to float
  %71 = load float*, float** %swap1, align 8, !tbaa !1
  store float %conv49, float* %71, align 4, !tbaa !33
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %land.lhs.true, %if.end.39
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat51 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %OutputFormat51, align 4, !tbaa !37
  %shr52 = lshr i32 %73, 12
  %and53 = and i32 %shr52, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.end.50
  %74 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %add.ptr56, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.57:                                       ; preds = %if.end.50
  %75 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %conv58 = sext i32 %76 to i64
  %mul59 = mul i64 %conv58, 4
  %add.ptr60 = getelementptr inbounds i8, i8* %75, i64 %mul59
  store i8* %add.ptr60, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.57, %if.then.55
  %77 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast float** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  %80 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = load i8*, i8** %retval
  ret i8* %89
}

; Function Attrs: nounwind uwtable
define internal i8* @PackHalfFrom16(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %maximum = alloca float, align 4
  %v = alloca float, align 4
  %swap1 = alloca i16*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 7
  %and9 = and i32 %shr8, 7
  store i32 %and9, i32* %Extra, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %OutputFormat13, align 4, !tbaa !37
  %shr14 = lshr i32 %17, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat16, align 4, !tbaa !37
  %call = call i32 @IsInkSpace(i32 %23) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, float 0x40847ACCC0000000, float 6.553500e+04
  store float %cond, float* %maximum, align 4, !tbaa !33
  %24 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #3
  store float 0.000000e+00, float* %v, align 4, !tbaa !33
  %25 = bitcast i16** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to i16*
  store i16* %27, i16** %swap1, align 8, !tbaa !1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #3
  %29 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %30 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %31, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #3
  %35 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %nChan, align 4, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %36, %37
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %38, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %39 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %39 to i64
  %40 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %40, i64 %idxprom
  %41 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = uitofp i16 %41 to float
  %42 = load float, float* %maximum, align 4, !tbaa !33
  %div = fdiv float %conv, %42
  store float %div, float* %v, align 4, !tbaa !33
  %43 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end
  %44 = load float, float* %maximum, align 4, !tbaa !33
  %45 = load float, float* %v, align 4, !tbaa !33
  %sub23 = fsub float %44, %45
  store float %sub23, float* %v, align 4, !tbaa !33
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end
  %46 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool25 = icmp ne i32 %46, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %47 = load float, float* %v, align 4, !tbaa !33
  %call27 = call zeroext i16 @_cmsFloat2Half(float %47) #7
  %48 = load i32, i32* %i, align 4, !tbaa !17
  %49 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %48, %49
  %50 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %add, %50
  %idxprom28 = zext i32 %mul to i64
  %51 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to i16*
  %arrayidx29 = getelementptr inbounds i16, i16* %52, i64 %idxprom28
  store i16 %call27, i16* %arrayidx29, align 2, !tbaa !35
  br label %if.end.34

if.else:                                          ; preds = %if.end.24
  %53 = load float, float* %v, align 4, !tbaa !33
  %call30 = call zeroext i16 @_cmsFloat2Half(float %53) #7
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %55 = load i32, i32* %start, align 4, !tbaa !17
  %add31 = add nsw i32 %54, %55
  %idxprom32 = sext i32 %add31 to i64
  %56 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to i16*
  %arrayidx33 = getelementptr inbounds i16, i16* %57, i64 %idxprom32
  store i16 %call30, i16* %arrayidx33, align 2, !tbaa !35
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.26
  %58 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %59 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool35 = icmp ne i32 %60, 0
  br i1 %tobool35, label %if.end.39, label %if.then.36

if.then.36:                                       ; preds = %for.end
  %61 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv37 = sext i32 %61 to i64
  %mul38 = mul i64 %conv37, 2
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %mul38
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %for.end
  %63 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp40 = icmp eq i32 %63, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.39
  %64 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool42 = icmp ne i32 %64, 0
  br i1 %tobool42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %land.lhs.true
  %65 = load i16*, i16** %swap1, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i16, i16* %65, i64 1
  %66 = bitcast i16* %add.ptr44 to i8*
  %67 = load i16*, i16** %swap1, align 8, !tbaa !1
  %68 = bitcast i16* %67 to i8*
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub45 = sub nsw i32 %69, 1
  %conv46 = sext i32 %sub45 to i64
  %mul47 = mul i64 %conv46, 2
  %call48 = call i8* @memmove(i8* %66, i8* %68, i64 %mul47) #8
  %70 = load float, float* %v, align 4, !tbaa !33
  %call49 = call zeroext i16 @_cmsFloat2Half(float %70) #7
  %71 = load i16*, i16** %swap1, align 8, !tbaa !1
  store i16 %call49, i16* %71, align 2, !tbaa !35
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %land.lhs.true, %if.end.39
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat51 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %OutputFormat51, align 4, !tbaa !37
  %shr52 = lshr i32 %73, 12
  %and53 = and i32 %shr52, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.end.50
  %74 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %add.ptr56, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.57:                                       ; preds = %if.end.50
  %75 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %conv58 = sext i32 %76 to i64
  %mul59 = mul i64 %conv58, 2
  %add.ptr60 = getelementptr inbounds i8, i8* %75, i64 %mul59
  store i8* %add.ptr60, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.57, %if.then.55
  %77 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast i16** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  %80 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #3
  %81 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = load i8*, i8** %retval
  ret i8* %89
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1Byte(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1ByteSkip1(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %output.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1ByteSkip1SwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %2 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %3, align 1, !tbaa !18
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1ByteReversed(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  %conv2 = zext i16 %conv1 to i32
  %mul = mul nsw i32 %conv2, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv3 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv3, i8* %2, align 1, !tbaa !18
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i8* @PackLabV2_8(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %call = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %1) #7
  %conv = zext i16 %call to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %call3 = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %4) #7
  %conv4 = zext i16 %call3 to i32
  %mul5 = mul nsw i32 %conv4, 65281
  %add6 = add nsw i32 %mul5, 8388608
  %shr7 = ashr i32 %add6, 24
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr10, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv9, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx11, align 2, !tbaa !35
  %call12 = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %7) #7
  %conv13 = zext i16 %call12 to i32
  %mul14 = mul nsw i32 %conv13, 65281
  %add15 = add nsw i32 %mul14, 8388608
  %shr16 = ashr i32 %add15, 24
  %and17 = and i32 %shr16, 255
  %conv18 = trunc i32 %and17 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr19, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv18, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @PackALabV2_8(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %call = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %2) #7
  %conv = zext i16 %call to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %3, align 1, !tbaa !18
  %4 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %call4 = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %5) #7
  %conv5 = zext i16 %call4 to i32
  %mul6 = mul nsw i32 %conv5, 65281
  %add7 = add nsw i32 %mul6, 8388608
  %shr8 = ashr i32 %add7, 24
  %and9 = and i32 %shr8, 255
  %conv10 = trunc i32 %and9 to i8
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr11, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %6, align 1, !tbaa !18
  %7 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx12, align 2, !tbaa !35
  %call13 = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %8) #7
  %conv14 = zext i16 %call13 to i32
  %mul15 = mul nsw i32 %conv14, 65281
  %add16 = add nsw i32 %mul15, 8388608
  %shr17 = ashr i32 %add16, 24
  %and18 = and i32 %shr17, 255
  %conv19 = trunc i32 %and18 to i8
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr20, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv19, i8* %9, align 1, !tbaa !18
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @PackLabV2_16(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %call = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %1) #7
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %call, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %call2 = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %6) #7
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %call2, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr3, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx4, align 2, !tbaa !35
  %call5 = call zeroext i16 @FomLabV4ToLabV2(i16 zeroext %11) #7
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %call5, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr6, i8** %output.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesOptimized(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = trunc i32 %and4 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr6, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv5, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx7, align 2, !tbaa !35
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = trunc i32 %and9 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr11, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1Optimized(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = trunc i32 %and4 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr6, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv5, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx7, align 2, !tbaa !35
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = trunc i32 %and9 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr11, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr12, i8** %output.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1SwapFirstOptimized(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %3, align 1, !tbaa !18
  %4 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, 255
  %conv6 = trunc i32 %and5 to i8
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv6, i8* %6, align 1, !tbaa !18
  %7 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx8, align 2, !tbaa !35
  %conv9 = zext i16 %8 to i32
  %and10 = and i32 %conv9, 255
  %conv11 = trunc i32 %and10 to i8
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr12, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv11, i8* %9, align 1, !tbaa !18
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1SwapSwapFirstOptimized(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = trunc i32 %and4 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr6, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv5, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx7, align 2, !tbaa !35
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = trunc i32 %and9 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr11, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr12, i8** %output.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1SwapOptimized(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %3, align 1, !tbaa !18
  %4 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, 255
  %conv6 = trunc i32 %and5 to i8
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv6, i8* %6, align 1, !tbaa !18
  %7 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx8, align 2, !tbaa !35
  %conv9 = zext i16 %8 to i32
  %and10 = and i32 %conv9, 255
  %conv11 = trunc i32 %and10 to i8
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr12, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv11, i8* %9, align 1, !tbaa !18
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesSwapOptimized(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = trunc i32 %and4 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr6, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv5, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx7, align 2, !tbaa !35
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = trunc i32 %and9 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr11, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3Bytes(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr18, i8** %output.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1SwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %2 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %3, align 1, !tbaa !18
  %4 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %conv4 = zext i16 %5 to i32
  %mul5 = mul nsw i32 %conv4, 65281
  %add6 = add nsw i32 %mul5, 8388608
  %shr7 = ashr i32 %add6, 24
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr10, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv9, i8* %6, align 1, !tbaa !18
  %7 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx11, align 2, !tbaa !35
  %conv12 = zext i16 %8 to i32
  %mul13 = mul nsw i32 %conv12, 65281
  %add14 = add nsw i32 %mul13, 8388608
  %shr15 = ashr i32 %add14, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr18, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv17, i8* %9, align 1, !tbaa !18
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1SwapSwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr18, i8** %output.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesAndSkip1Swap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %2 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr2, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %3, align 1, !tbaa !18
  %4 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %conv4 = zext i16 %5 to i32
  %mul5 = mul nsw i32 %conv4, 65281
  %add6 = add nsw i32 %mul5, 8388608
  %shr7 = ashr i32 %add6, 24
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr10, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv9, i8* %6, align 1, !tbaa !18
  %7 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx11, align 2, !tbaa !35
  %conv12 = zext i16 %8 to i32
  %mul13 = mul nsw i32 %conv12, 65281
  %add14 = add nsw i32 %mul13, 8388608
  %shr15 = ashr i32 %add14, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr18, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv17, i8* %9, align 1, !tbaa !18
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3BytesSwap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack6Bytes(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %9, i64 3
  %10 = load i16, i16* %arrayidx18, align 2, !tbaa !35
  %conv19 = zext i16 %10 to i32
  %mul20 = mul nsw i32 %conv19, 65281
  %add21 = add nsw i32 %mul20, 8388608
  %shr22 = ashr i32 %add21, 24
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr25, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv24, i8* %11, align 1, !tbaa !18
  %12 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %12, i64 4
  %13 = load i16, i16* %arrayidx26, align 2, !tbaa !35
  %conv27 = zext i16 %13 to i32
  %mul28 = mul nsw i32 %conv27, 65281
  %add29 = add nsw i32 %mul28, 8388608
  %shr30 = ashr i32 %add29, 24
  %and31 = and i32 %shr30, 255
  %conv32 = trunc i32 %and31 to i8
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr33, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv32, i8* %14, align 1, !tbaa !18
  %15 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %15, i64 5
  %16 = load i16, i16* %arrayidx34, align 2, !tbaa !35
  %conv35 = zext i16 %16 to i32
  %mul36 = mul nsw i32 %conv35, 65281
  %add37 = add nsw i32 %mul36, 8388608
  %shr38 = ashr i32 %add37, 24
  %and39 = and i32 %shr38, 255
  %conv40 = trunc i32 %and39 to i8
  %17 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr41, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv40, i8* %17, align 1, !tbaa !18
  %18 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack6BytesSwap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 5
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 4
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 3
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %9, i64 2
  %10 = load i16, i16* %arrayidx18, align 2, !tbaa !35
  %conv19 = zext i16 %10 to i32
  %mul20 = mul nsw i32 %conv19, 65281
  %add21 = add nsw i32 %mul20, 8388608
  %shr22 = ashr i32 %add21, 24
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr25, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv24, i8* %11, align 1, !tbaa !18
  %12 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %12, i64 1
  %13 = load i16, i16* %arrayidx26, align 2, !tbaa !35
  %conv27 = zext i16 %13 to i32
  %mul28 = mul nsw i32 %conv27, 65281
  %add29 = add nsw i32 %mul28, 8388608
  %shr30 = ashr i32 %add29, 24
  %and31 = and i32 %shr30, 255
  %conv32 = trunc i32 %and31 to i8
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr33, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv32, i8* %14, align 1, !tbaa !18
  %15 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %15, i64 0
  %16 = load i16, i16* %arrayidx34, align 2, !tbaa !35
  %conv35 = zext i16 %16 to i32
  %mul36 = mul nsw i32 %conv35, 65281
  %add37 = add nsw i32 %mul36, 8388608
  %shr38 = ashr i32 %add37, 24
  %and39 = and i32 %shr38, 255
  %conv40 = trunc i32 %and39 to i8
  %17 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr41, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv40, i8* %17, align 1, !tbaa !18
  %18 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4Bytes(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %9, i64 3
  %10 = load i16, i16* %arrayidx18, align 2, !tbaa !35
  %conv19 = zext i16 %10 to i32
  %mul20 = mul nsw i32 %conv19, 65281
  %add21 = add nsw i32 %mul20, 8388608
  %shr22 = ashr i32 %add21, 24
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr25, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv24, i8* %11, align 1, !tbaa !18
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4BytesReverse(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  %sub = sub nsw i32 255, %conv2
  %conv3 = trunc i32 %sub to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv3, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx4, align 2, !tbaa !35
  %conv5 = zext i16 %4 to i32
  %mul6 = mul nsw i32 %conv5, 65281
  %add7 = add nsw i32 %mul6, 8388608
  %shr8 = ashr i32 %add7, 24
  %and9 = and i32 %shr8, 255
  %conv10 = trunc i32 %and9 to i8
  %conv11 = zext i8 %conv10 to i32
  %sub12 = sub nsw i32 255, %conv11
  %conv13 = trunc i32 %sub12 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr14, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv13, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx15, align 2, !tbaa !35
  %conv16 = zext i16 %7 to i32
  %mul17 = mul nsw i32 %conv16, 65281
  %add18 = add nsw i32 %mul17, 8388608
  %shr19 = ashr i32 %add18, 24
  %and20 = and i32 %shr19, 255
  %conv21 = trunc i32 %and20 to i8
  %conv22 = zext i8 %conv21 to i32
  %sub23 = sub nsw i32 255, %conv22
  %conv24 = trunc i32 %sub23 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr25, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv24, i8* %8, align 1, !tbaa !18
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %9, i64 3
  %10 = load i16, i16* %arrayidx26, align 2, !tbaa !35
  %conv27 = zext i16 %10 to i32
  %mul28 = mul nsw i32 %conv27, 65281
  %add29 = add nsw i32 %mul28, 8388608
  %shr30 = ashr i32 %add29, 24
  %and31 = and i32 %shr30, 255
  %conv32 = trunc i32 %and31 to i8
  %conv33 = zext i8 %conv32 to i32
  %sub34 = sub nsw i32 255, %conv33
  %conv35 = trunc i32 %sub34 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr36, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv35, i8* %11, align 1, !tbaa !18
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4BytesSwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 3
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %9, i64 2
  %10 = load i16, i16* %arrayidx18, align 2, !tbaa !35
  %conv19 = zext i16 %10 to i32
  %mul20 = mul nsw i32 %conv19, 65281
  %add21 = add nsw i32 %mul20, 8388608
  %shr22 = ashr i32 %add21, 24
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr25, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv24, i8* %11, align 1, !tbaa !18
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4BytesSwap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 3
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 2
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %9, i64 0
  %10 = load i16, i16* %arrayidx18, align 2, !tbaa !35
  %conv19 = zext i16 %10 to i32
  %mul20 = mul nsw i32 %conv19, 65281
  %add21 = add nsw i32 %mul20, 8388608
  %shr22 = ashr i32 %add21, 24
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr25, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv24, i8* %11, align 1, !tbaa !18
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4BytesSwapSwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %2, align 1, !tbaa !18
  %3 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %4 to i32
  %mul4 = mul nsw i32 %conv3, 65281
  %add5 = add nsw i32 %mul4, 8388608
  %shr6 = ashr i32 %add5, 24
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv8, i8* %5, align 1, !tbaa !18
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx10, align 2, !tbaa !35
  %conv11 = zext i16 %7 to i32
  %mul12 = mul nsw i32 %conv11, 65281
  %add13 = add nsw i32 %mul12, 8388608
  %shr14 = ashr i32 %add13, 24
  %and15 = and i32 %shr14, 255
  %conv16 = trunc i32 %and15 to i8
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr17, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv16, i8* %8, align 1, !tbaa !18
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %9, i64 3
  %10 = load i16, i16* %arrayidx18, align 2, !tbaa !35
  %conv19 = zext i16 %10 to i32
  %mul20 = mul nsw i32 %conv19, 65281
  %add21 = add nsw i32 %mul20, 8388608
  %shr22 = ashr i32 %add21, 24
  %and23 = and i32 %shr22, 255
  %conv24 = trunc i32 %and23 to i8
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr25, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv24, i8* %11, align 1, !tbaa !18
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @PackAnyBytes(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %swap1 = alloca i8*, align 8
  %v = alloca i8, align 1
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 7
  %and9 = and i32 %shr8, 7
  store i32 %and9, i32* %Extra, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %17 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %16, %17
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %18 = bitcast i8** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  call void @llvm.lifetime.start(i64 1, i8* %v) #3
  store i8 0, i8* %v, align 1, !tbaa !18
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #3
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8* %20, i8** %swap1, align 8, !tbaa !1
  %21 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load i32, i32* %Extra, align 4, !tbaa !17
  %23 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %i, align 4, !tbaa !17
  %25 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #3
  %27 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool13 = icmp ne i32 %27, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %28 = load i32, i32* %nChan, align 4, !tbaa !17
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %28, %29
  %sub14 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %30, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  %31 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %31 to i64
  %32 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %32, i64 %idxprom
  %33 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %33 to i32
  %mul = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul, 8388608
  %shr15 = ashr i32 %add, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  store i8 %conv17, i8* %v, align 1, !tbaa !18
  %34 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %34, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %cond.end
  %35 = load i8, i8* %v, align 1, !tbaa !18
  %conv20 = zext i8 %35 to i32
  %sub21 = sub nsw i32 255, %conv20
  %conv22 = trunc i32 %sub21 to i8
  store i8 %conv22, i8* %v, align 1, !tbaa !18
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %cond.end
  %36 = load i8, i8* %v, align 1, !tbaa !18
  %37 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %output.addr, align 8, !tbaa !1
  store i8 %36, i8* %37, align 1, !tbaa !18
  %38 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %39 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool24 = icmp ne i32 %40, 0
  br i1 %tobool24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %for.end
  %41 = load i32, i32* %Extra, align 4, !tbaa !17
  %42 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %idx.ext26 = sext i32 %41 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %42, i64 %idx.ext26
  store i8* %add.ptr27, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %for.end
  %43 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp29 = icmp eq i32 %43, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.28
  %44 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool31 = icmp ne i32 %44, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %land.lhs.true
  %45 = load i8*, i8** %swap1, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8*, i8** %swap1, align 8, !tbaa !1
  %47 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub34 = sub nsw i32 %47, 1
  %conv35 = sext i32 %sub34 to i64
  %call = call i8* @memmove(i8* %add.ptr33, i8* %46, i64 %conv35) #8
  %48 = load i8, i8* %v, align 1, !tbaa !18
  %49 = load i8*, i8** %swap1, align 8, !tbaa !1
  store i8 %48, i8* %49, align 1, !tbaa !18
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %land.lhs.true, %if.end.28
  %50 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  call void @llvm.lifetime.end(i64 1, i8* %v) #3
  %52 = bitcast i8** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #3
  %53 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  %54 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #3
  %55 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #3
  %56 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #3
  %57 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #3
  %58 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  ret i8* %50
}

; Function Attrs: nounwind uwtable
define internal i8* @PackPlanarBytes(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %i = alloca i32, align 4
  %Init = alloca i8*, align 8
  %index = alloca i32, align 4
  %v = alloca i8, align 1
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 14
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %SwapFirst, align 4, !tbaa !17
  %9 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 13
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %Reverse, align 4, !tbaa !17
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8* %14, i8** %Init, align 8, !tbaa !1
  %15 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %16 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %15, %16
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %18, 7
  %and12 = and i32 %shr11, 7
  %19 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %and12, %19
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %22 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %25 = load i32, i32* %nChan, align 4, !tbaa !17
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %25, %26
  %sub14 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  call void @llvm.lifetime.start(i64 1, i8* %v) #3
  %28 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %28 to i64
  %29 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %29, i64 %idxprom
  %30 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %30 to i32
  %mul15 = mul nsw i32 %conv, 65281
  %add = add nsw i32 %mul15, 8388608
  %shr16 = ashr i32 %add, 24
  %and17 = and i32 %shr16, 255
  %conv18 = trunc i32 %and17 to i8
  store i8 %conv18, i8* %v, align 1, !tbaa !18
  %31 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool19 = icmp ne i32 %31, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.25

cond.true.20:                                     ; preds = %cond.end
  %32 = load i8, i8* %v, align 1, !tbaa !18
  %conv21 = zext i8 %32 to i32
  %sub22 = sub nsw i32 255, %conv21
  %conv23 = trunc i32 %sub22 to i8
  %conv24 = zext i8 %conv23 to i32
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end
  %33 = load i8, i8* %v, align 1, !tbaa !18
  %conv26 = zext i8 %33 to i32
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.20
  %cond28 = phi i32 [ %conv24, %cond.true.20 ], [ %conv26, %cond.false.25 ]
  %conv29 = trunc i32 %cond28 to i8
  %34 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8 %conv29, i8* %34, align 1, !tbaa !18
  %35 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %36 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %idx.ext30 = zext i32 %35 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %36, i64 %idx.ext30
  store i8* %add.ptr31, i8** %output.addr, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %v) #3
  %37 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end.27
  %38 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i8*, i8** %Init, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  %42 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #3
  %43 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #3
  %44 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #3
  %45 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #3
  ret i8* %add.ptr32
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1Word(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1WordSkip1(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1WordSkip1SwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to i16*
  store i16 %2, i16* %4, align 2, !tbaa !35
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr1, i8** %output.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1WordReversed(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %conv1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack1WordBigEndian(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 8
  %conv1 = trunc i32 %shl to i16
  %conv2 = zext i16 %conv1 to i32
  %2 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 0
  %3 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %conv4 = zext i16 %3 to i32
  %shr = ashr i32 %conv4, 8
  %or = or i32 %conv2, %shr
  %conv5 = trunc i32 %or to i16
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to i16*
  store i16 %conv5, i16* %5, align 2, !tbaa !35
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3Words(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3WordsSwap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 0
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3WordsBigEndian(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 8
  %conv1 = trunc i32 %shl to i16
  %conv2 = zext i16 %conv1 to i32
  %2 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 0
  %3 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %conv4 = zext i16 %3 to i32
  %shr = ashr i32 %conv4, 8
  %or = or i32 %conv2, %shr
  %conv5 = trunc i32 %or to i16
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to i16*
  store i16 %conv5, i16* %5, align 2, !tbaa !35
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %7 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx6, align 2, !tbaa !35
  %conv7 = zext i16 %8 to i32
  %shl8 = shl i32 %conv7, 8
  %conv9 = trunc i32 %shl8 to i16
  %conv10 = zext i16 %conv9 to i32
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %9, i64 1
  %10 = load i16, i16* %arrayidx11, align 2, !tbaa !35
  %conv12 = zext i16 %10 to i32
  %shr13 = ashr i32 %conv12, 8
  %or14 = or i32 %conv10, %shr13
  %conv15 = trunc i32 %or14 to i16
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to i16*
  store i16 %conv15, i16* %12, align 2, !tbaa !35
  %13 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %add.ptr16, i8** %output.addr, align 8, !tbaa !1
  %14 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %14, i64 2
  %15 = load i16, i16* %arrayidx17, align 2, !tbaa !35
  %conv18 = zext i16 %15 to i32
  %shl19 = shl i32 %conv18, 8
  %conv20 = trunc i32 %shl19 to i16
  %conv21 = zext i16 %conv20 to i32
  %16 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 2
  %17 = load i16, i16* %arrayidx22, align 2, !tbaa !35
  %conv23 = zext i16 %17 to i32
  %shr24 = ashr i32 %conv23, 8
  %or25 = or i32 %conv21, %shr24
  %conv26 = trunc i32 %or25 to i16
  %18 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to i16*
  store i16 %conv26, i16* %19, align 2, !tbaa !35
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %add.ptr27, i8** %output.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3WordsAndSkip1(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr5, i8** %output.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3WordsAndSkip1Swap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to i16*
  store i16 %2, i16* %4, align 2, !tbaa !35
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr1, i8** %output.addr, align 8, !tbaa !1
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to i16*
  store i16 %7, i16* %9, align 2, !tbaa !35
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr3, i8** %output.addr, align 8, !tbaa !1
  %11 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %11, i64 0
  %12 = load i16, i16* %arrayidx4, align 2, !tbaa !35
  %13 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to i16*
  store i16 %12, i16* %14, align 2, !tbaa !35
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr5, i8** %output.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3WordsAndSkip1SwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %3 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to i16*
  store i16 %2, i16* %4, align 2, !tbaa !35
  %5 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 2
  store i8* %add.ptr1, i8** %output.addr, align 8, !tbaa !1
  %6 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %8 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to i16*
  store i16 %7, i16* %9, align 2, !tbaa !35
  %10 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr3, i8** %output.addr, align 8, !tbaa !1
  %11 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %11, i64 2
  %12 = load i16, i16* %arrayidx4, align 2, !tbaa !35
  %13 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to i16*
  store i16 %12, i16* %14, align 2, !tbaa !35
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr5, i8** %output.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack3WordsAndSkip1SwapSwapFirst(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 0
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr5, i8** %output.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4Words(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %15, i64 3
  %16 = load i16, i16* %arrayidx5, align 2, !tbaa !35
  %17 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to i16*
  store i16 %16, i16* %18, align 2, !tbaa !35
  %19 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %output.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4WordsReverse(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %conv1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx2, align 2, !tbaa !35
  %conv3 = zext i16 %6 to i32
  %sub4 = sub nsw i32 65535, %conv3
  %conv5 = trunc i32 %sub4 to i16
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %conv5, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr6, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx7, align 2, !tbaa !35
  %conv8 = zext i16 %11 to i32
  %sub9 = sub nsw i32 65535, %conv8
  %conv10 = trunc i32 %sub9 to i16
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %conv10, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr11, i8** %output.addr, align 8, !tbaa !1
  %15 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %15, i64 3
  %16 = load i16, i16* %arrayidx12, align 2, !tbaa !35
  %conv13 = zext i16 %16 to i32
  %sub14 = sub nsw i32 65535, %conv13
  %conv15 = trunc i32 %sub14 to i16
  %17 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to i16*
  store i16 %conv15, i16* %18, align 2, !tbaa !35
  %19 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr16, i8** %output.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4WordsSwap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 3
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 2
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 1
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %15, i64 0
  %16 = load i16, i16* %arrayidx5, align 2, !tbaa !35
  %17 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to i16*
  store i16 %16, i16* %18, align 2, !tbaa !35
  %19 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %output.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack4WordsBigEndian(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 8
  %conv1 = trunc i32 %shl to i16
  %conv2 = zext i16 %conv1 to i32
  %2 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 0
  %3 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %conv4 = zext i16 %3 to i32
  %shr = ashr i32 %conv4, 8
  %or = or i32 %conv2, %shr
  %conv5 = trunc i32 %or to i16
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to i16*
  store i16 %conv5, i16* %5, align 2, !tbaa !35
  %6 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %7 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %7, i64 1
  %8 = load i16, i16* %arrayidx6, align 2, !tbaa !35
  %conv7 = zext i16 %8 to i32
  %shl8 = shl i32 %conv7, 8
  %conv9 = trunc i32 %shl8 to i16
  %conv10 = zext i16 %conv9 to i32
  %9 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %9, i64 1
  %10 = load i16, i16* %arrayidx11, align 2, !tbaa !35
  %conv12 = zext i16 %10 to i32
  %shr13 = ashr i32 %conv12, 8
  %or14 = or i32 %conv10, %shr13
  %conv15 = trunc i32 %or14 to i16
  %11 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to i16*
  store i16 %conv15, i16* %12, align 2, !tbaa !35
  %13 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %add.ptr16, i8** %output.addr, align 8, !tbaa !1
  %14 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %14, i64 2
  %15 = load i16, i16* %arrayidx17, align 2, !tbaa !35
  %conv18 = zext i16 %15 to i32
  %shl19 = shl i32 %conv18, 8
  %conv20 = trunc i32 %shl19 to i16
  %conv21 = zext i16 %conv20 to i32
  %16 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 2
  %17 = load i16, i16* %arrayidx22, align 2, !tbaa !35
  %conv23 = zext i16 %17 to i32
  %shr24 = ashr i32 %conv23, 8
  %or25 = or i32 %conv21, %shr24
  %conv26 = trunc i32 %or25 to i16
  %18 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to i16*
  store i16 %conv26, i16* %19, align 2, !tbaa !35
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %add.ptr27, i8** %output.addr, align 8, !tbaa !1
  %21 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %21, i64 3
  %22 = load i16, i16* %arrayidx28, align 2, !tbaa !35
  %conv29 = zext i16 %22 to i32
  %shl30 = shl i32 %conv29, 8
  %conv31 = trunc i32 %shl30 to i16
  %conv32 = zext i16 %conv31 to i32
  %23 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %23, i64 3
  %24 = load i16, i16* %arrayidx33, align 2, !tbaa !35
  %conv34 = zext i16 %24 to i32
  %shr35 = ashr i32 %conv34, 8
  %or36 = or i32 %conv32, %shr35
  %conv37 = trunc i32 %or36 to i16
  %25 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to i16*
  store i16 %conv37, i16* %26, align 2, !tbaa !35
  %27 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %add.ptr38, i8** %output.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack6Words(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 2
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %15, i64 3
  %16 = load i16, i16* %arrayidx5, align 2, !tbaa !35
  %17 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to i16*
  store i16 %16, i16* %18, align 2, !tbaa !35
  %19 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %output.addr, align 8, !tbaa !1
  %20 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %20, i64 4
  %21 = load i16, i16* %arrayidx7, align 2, !tbaa !35
  %22 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %23 = bitcast i8* %22 to i16*
  store i16 %21, i16* %23, align 2, !tbaa !35
  %24 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %add.ptr8, i8** %output.addr, align 8, !tbaa !1
  %25 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %25, i64 5
  %26 = load i16, i16* %arrayidx9, align 2, !tbaa !35
  %27 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %28 = bitcast i8* %27 to i16*
  store i16 %26, i16* %28, align 2, !tbaa !35
  %29 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr10, i8** %output.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define internal i8* @Pack6WordsSwap(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 5
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !35
  %2 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  store i16 %1, i16* %3, align 2, !tbaa !35
  %4 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 4
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !35
  %7 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  store i16 %6, i16* %8, align 2, !tbaa !35
  %9 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 2
  store i8* %add.ptr2, i8** %output.addr, align 8, !tbaa !1
  %10 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 3
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !35
  %12 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to i16*
  store i16 %11, i16* %13, align 2, !tbaa !35
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr4, i8** %output.addr, align 8, !tbaa !1
  %15 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %15, i64 2
  %16 = load i16, i16* %arrayidx5, align 2, !tbaa !35
  %17 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to i16*
  store i16 %16, i16* %18, align 2, !tbaa !35
  %19 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %19, i64 2
  store i8* %add.ptr6, i8** %output.addr, align 8, !tbaa !1
  %20 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %20, i64 1
  %21 = load i16, i16* %arrayidx7, align 2, !tbaa !35
  %22 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %23 = bitcast i8* %22 to i16*
  store i16 %21, i16* %23, align 2, !tbaa !35
  %24 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %add.ptr8, i8** %output.addr, align 8, !tbaa !1
  %25 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %25, i64 0
  %26 = load i16, i16* %arrayidx9, align 2, !tbaa !35
  %27 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %28 = bitcast i8* %27 to i16*
  store i16 %26, i16* %28, align 2, !tbaa !35
  %29 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr10, i8** %output.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %output.addr, align 8, !tbaa !1
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define internal i8* @PackPlanarWords(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %SwapEndian = alloca i32, align 4
  %i = alloca i32, align 4
  %Init = alloca i8*, align 8
  %v = alloca i16, align 2
  %index = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 11
  %and9 = and i32 %shr8, 1
  store i32 %and9, i32* %SwapEndian, align 4, !tbaa !17
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = load i8*, i8** %output.addr, align 8, !tbaa !1
  store i8* %14, i8** %Init, align 8, !tbaa !1
  %15 = bitcast i16* %v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #3
  %16 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %18, 7
  %and12 = and i32 %shr11, 7
  %19 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul = mul i32 %and12, %19
  %conv = zext i32 %mul to i64
  %mul13 = mul i64 %conv, 2
  %20 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %mul13
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %22 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %25 = load i32, i32* %nChan, align 4, !tbaa !17
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %25, %26
  %sub16 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub16, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  %28 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %28 to i64
  %29 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %29, i64 %idxprom
  %30 = load i16, i16* %arrayidx, align 2, !tbaa !35
  store i16 %30, i16* %v, align 2, !tbaa !35
  %31 = load i32, i32* %SwapEndian, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %31, 0
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %cond.end
  %32 = load i16, i16* %v, align 2, !tbaa !35
  %conv19 = zext i16 %32 to i32
  %shl = shl i32 %conv19, 8
  %conv20 = trunc i32 %shl to i16
  %conv21 = zext i16 %conv20 to i32
  %33 = load i16, i16* %v, align 2, !tbaa !35
  %conv22 = zext i16 %33 to i32
  %shr23 = ashr i32 %conv22, 8
  %or = or i32 %conv21, %shr23
  %conv24 = trunc i32 %or to i16
  store i16 %conv24, i16* %v, align 2, !tbaa !35
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %cond.end
  %34 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.25
  %35 = load i16, i16* %v, align 2, !tbaa !35
  %conv28 = zext i16 %35 to i32
  %sub29 = sub nsw i32 65535, %conv28
  %conv30 = trunc i32 %sub29 to i16
  store i16 %conv30, i16* %v, align 2, !tbaa !35
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.25
  %36 = load i16, i16* %v, align 2, !tbaa !35
  %37 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to i16*
  store i16 %36, i16* %38, align 2, !tbaa !35
  %39 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %conv32 = zext i32 %39 to i64
  %mul33 = mul i64 %conv32, 2
  %40 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %40, i64 %mul33
  store i8* %add.ptr34, i8** %output.addr, align 8, !tbaa !1
  %41 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %42 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %Init, align 8, !tbaa !1
  %add.ptr35 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = bitcast i16* %v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %44) #3
  %45 = bitcast i8** %Init to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #3
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  %47 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #3
  %48 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  %49 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #3
  %50 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  ret i8* %add.ptr35
}

; Function Attrs: nounwind uwtable
define internal i8* @PackAnyWords(%struct._cmstransform_struct* %info, i16* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca i16*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %SwapEndian = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %swap1 = alloca i16*, align 8
  %v = alloca i16, align 2
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat, align 4, !tbaa !24
  %shr1 = lshr i32 %5, 11
  %and2 = and i32 %shr1, 1
  store i32 %and2, i32* %SwapEndian, align 4, !tbaa !17
  %6 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat3 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat3, align 4, !tbaa !37
  %shr4 = lshr i32 %8, 10
  %and5 = and i32 %shr4, 1
  store i32 %and5, i32* %DoSwap, align 4, !tbaa !17
  %9 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat6 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat6, align 4, !tbaa !37
  %shr7 = lshr i32 %11, 13
  %and8 = and i32 %shr7, 1
  store i32 %and8, i32* %Reverse, align 4, !tbaa !17
  %12 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat9 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat9, align 4, !tbaa !37
  %shr10 = lshr i32 %14, 7
  %and11 = and i32 %shr10, 7
  store i32 %and11, i32* %Extra, align 4, !tbaa !17
  %15 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat12 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %OutputFormat12, align 4, !tbaa !37
  %shr13 = lshr i32 %17, 14
  %and14 = and i32 %shr13, 1
  store i32 %and14, i32* %SwapFirst, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast i16** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = bitcast i16* %v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %22) #3
  store i16 0, i16* %v, align 2, !tbaa !35
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #3
  %24 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to i16*
  store i16* %25, i16** %swap1, align 8, !tbaa !1
  %26 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv = sext i32 %27 to i64
  %mul = mul i64 %conv, 2
  %28 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %mul
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %30 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #3
  %32 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %34 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %33, %34
  %sub17 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub17, %cond.true ], [ %35, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !17
  %36 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %36 to i64
  %37 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %37, i64 %idxprom
  %38 = load i16, i16* %arrayidx, align 2, !tbaa !35
  store i16 %38, i16* %v, align 2, !tbaa !35
  %39 = load i32, i32* %SwapEndian, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %39, 0
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %cond.end
  %40 = load i16, i16* %v, align 2, !tbaa !35
  %conv20 = zext i16 %40 to i32
  %shl = shl i32 %conv20, 8
  %conv21 = trunc i32 %shl to i16
  %conv22 = zext i16 %conv21 to i32
  %41 = load i16, i16* %v, align 2, !tbaa !35
  %conv23 = zext i16 %41 to i32
  %shr24 = ashr i32 %conv23, 8
  %or = or i32 %conv22, %shr24
  %conv25 = trunc i32 %or to i16
  store i16 %conv25, i16* %v, align 2, !tbaa !35
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.19, %cond.end
  %42 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool27 = icmp ne i32 %42, 0
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.end.26
  %43 = load i16, i16* %v, align 2, !tbaa !35
  %conv29 = zext i16 %43 to i32
  %sub30 = sub nsw i32 65535, %conv29
  %conv31 = trunc i32 %sub30 to i16
  store i16 %conv31, i16* %v, align 2, !tbaa !35
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.end.26
  %44 = load i16, i16* %v, align 2, !tbaa !35
  %45 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to i16*
  store i16 %44, i16* %46, align 2, !tbaa !35
  %47 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %add.ptr33, i8** %output.addr, align 8, !tbaa !1
  %48 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %49 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool34 = icmp ne i32 %50, 0
  br i1 %tobool34, label %if.end.39, label %if.then.35

if.then.35:                                       ; preds = %for.end
  %51 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv36 = sext i32 %51 to i64
  %mul37 = mul i64 %conv36, 2
  %52 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds i8, i8* %52, i64 %mul37
  store i8* %add.ptr38, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %for.end
  %53 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp40 = icmp eq i32 %53, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.39
  %54 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool42 = icmp ne i32 %54, 0
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %land.lhs.true
  %55 = load i16*, i16** %swap1, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i16, i16* %55, i64 1
  %56 = bitcast i16* %add.ptr44 to i8*
  %57 = load i16*, i16** %swap1, align 8, !tbaa !1
  %58 = bitcast i16* %57 to i8*
  %59 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub45 = sub nsw i32 %59, 1
  %conv46 = sext i32 %sub45 to i64
  %mul47 = mul i64 %conv46, 2
  %call = call i8* @memmove(i8* %56, i8* %58, i64 %mul47) #8
  %60 = load i16, i16* %v, align 2, !tbaa !35
  %61 = load i16*, i16** %swap1, align 8, !tbaa !1
  store i16 %60, i16* %61, align 2, !tbaa !35
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %land.lhs.true, %if.end.39
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  %64 = bitcast i16* %v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %64) #3
  %65 = bitcast i16** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #3
  %66 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
  %67 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #3
  %69 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %SwapEndian to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  ret i8* %62
}

declare void @cmsLabEncoded2Float(%struct.cmsCIELab*, i16*) #2

declare void @cmsXYZEncoded2Float(%struct.cmsCIEXYZ*, i16*) #2

declare zeroext i16 @_cmsFloat2Half(float) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @FomLabV4ToLabV2(i16 zeroext %x) #4 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, i16* %x.addr, align 2, !tbaa !35
  %0 = load i16, i16* %x.addr, align 2, !tbaa !35
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 8
  %add = add nsw i32 %shl, 128
  %div = sdiv i32 %add, 257
  %conv1 = trunc i32 %div to i16
  ret i16 %conv1
}

; Function Attrs: nounwind uwtable
define internal i8* @PackLabFloatFromFloat(%struct._cmstransform_struct* %Info, float* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %Info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca float*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Out = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %Info, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  store float* %wOut, float** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast float** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to float*
  store float* %2, float** %Out, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 1.000000e+02
  %conv1 = fptrunc double %mul to float
  %7 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 0
  store float %conv1, float* %arrayidx2, align 4, !tbaa !33
  %8 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx3, align 4, !tbaa !33
  %conv4 = fpext float %9 to double
  %mul5 = fmul double %conv4, 2.550000e+02
  %sub = fsub double %mul5, 1.280000e+02
  %conv6 = fptrunc double %sub to float
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %conv6, float* %arrayidx7, align 4, !tbaa !33
  %12 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %12, i64 2
  %13 = load float, float* %arrayidx8, align 4, !tbaa !33
  %conv9 = fpext float %13 to double
  %mul10 = fmul double %conv9, 2.550000e+02
  %sub11 = fsub double %mul10, 1.280000e+02
  %conv12 = fptrunc double %sub11 to float
  %14 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul13 = mul i32 %14, 2
  %idxprom14 = zext i32 %mul13 to i64
  %15 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %15, i64 %idxprom14
  store float %conv12, float* %arrayidx15, align 4, !tbaa !33
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx16, align 4, !tbaa !33
  %conv17 = fpext float %18 to double
  %mul18 = fmul double %conv17, 1.000000e+02
  %conv19 = fptrunc double %mul18 to float
  %19 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds float, float* %19, i64 0
  store float %conv19, float* %arrayidx20, align 4, !tbaa !33
  %20 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx21, align 4, !tbaa !33
  %conv22 = fpext float %21 to double
  %mul23 = fmul double %conv22, 2.550000e+02
  %sub24 = fsub double %mul23, 1.280000e+02
  %conv25 = fptrunc double %sub24 to float
  %22 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds float, float* %22, i64 1
  store float %conv25, float* %arrayidx26, align 4, !tbaa !33
  %23 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds float, float* %23, i64 2
  %24 = load float, float* %arrayidx27, align 4, !tbaa !33
  %conv28 = fpext float %24 to double
  %mul29 = fmul double %conv28, 2.550000e+02
  %sub30 = fsub double %mul29, 1.280000e+02
  %conv31 = fptrunc double %sub30 to float
  %25 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds float, float* %25, i64 2
  store float %conv31, float* %arrayidx32, align 4, !tbaa !33
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat33 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %OutputFormat33, align 4, !tbaa !37
  %shr34 = lshr i32 %28, 7
  %and35 = and i32 %shr34, 7
  %conv36 = zext i32 %and35 to i64
  %mul37 = mul i64 %conv36, 4
  %add = add i64 12, %mul37
  %add.ptr38 = getelementptr inbounds i8, i8* %26, i64 %add
  store i8* %add.ptr38, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %29 = bitcast float** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define internal i8* @PackXYZFloatFromFloat(%struct._cmstransform_struct* %Info, float* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %Info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca float*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Out = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %Info, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  store float* %wOut, float** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast float** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to float*
  store float* %2, float** %Out, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 0x3FFFFFE000000000
  %conv1 = fptrunc double %mul to float
  %7 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 0
  store float %conv1, float* %arrayidx2, align 4, !tbaa !33
  %8 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx3, align 4, !tbaa !33
  %conv4 = fpext float %9 to double
  %mul5 = fmul double %conv4, 0x3FFFFFE000000000
  %conv6 = fptrunc double %mul5 to float
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %conv6, float* %arrayidx7, align 4, !tbaa !33
  %12 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %12, i64 2
  %13 = load float, float* %arrayidx8, align 4, !tbaa !33
  %conv9 = fpext float %13 to double
  %mul10 = fmul double %conv9, 0x3FFFFFE000000000
  %conv11 = fptrunc double %mul10 to float
  %14 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul12 = mul i32 %14, 2
  %idxprom13 = zext i32 %mul12 to i64
  %15 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %15, i64 %idxprom13
  store float %conv11, float* %arrayidx14, align 4, !tbaa !33
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx15, align 4, !tbaa !33
  %conv16 = fpext float %18 to double
  %mul17 = fmul double %conv16, 0x3FFFFFE000000000
  %conv18 = fptrunc double %mul17 to float
  %19 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %19, i64 0
  store float %conv18, float* %arrayidx19, align 4, !tbaa !33
  %20 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx20, align 4, !tbaa !33
  %conv21 = fpext float %21 to double
  %mul22 = fmul double %conv21, 0x3FFFFFE000000000
  %conv23 = fptrunc double %mul22 to float
  %22 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds float, float* %22, i64 1
  store float %conv23, float* %arrayidx24, align 4, !tbaa !33
  %23 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %23, i64 2
  %24 = load float, float* %arrayidx25, align 4, !tbaa !33
  %conv26 = fpext float %24 to double
  %mul27 = fmul double %conv26, 0x3FFFFFE000000000
  %conv28 = fptrunc double %mul27 to float
  %25 = load float*, float** %Out, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds float, float* %25, i64 2
  store float %conv28, float* %arrayidx29, align 4, !tbaa !33
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat30 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %OutputFormat30, align 4, !tbaa !37
  %shr31 = lshr i32 %28, 7
  %and32 = and i32 %shr31, 7
  %conv33 = zext i32 %and32 to i64
  %mul34 = mul i64 %conv33, 4
  %add = add i64 12, %mul34
  %add.ptr35 = getelementptr inbounds i8, i8* %26, i64 %add
  store i8* %add.ptr35, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %29 = bitcast float** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define internal i8* @PackLabDoubleFromFloat(%struct._cmstransform_struct* %Info, float* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %Info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca float*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Out = alloca double*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %Info, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  store float* %wOut, float** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast double** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to double*
  store double* %2, double** %Out, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 1.000000e+02
  %7 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %7, i64 0
  store double %mul, double* %arrayidx1, align 8, !tbaa !29
  %8 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx2, align 4, !tbaa !33
  %conv3 = fpext float %9 to double
  %mul4 = fmul double %conv3, 2.550000e+02
  %sub = fsub double %mul4, 1.280000e+02
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %sub, double* %arrayidx5, align 8, !tbaa !29
  %12 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %12, i64 2
  %13 = load float, float* %arrayidx6, align 4, !tbaa !33
  %conv7 = fpext float %13 to double
  %mul8 = fmul double %conv7, 2.550000e+02
  %sub9 = fsub double %mul8, 1.280000e+02
  %14 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul10 = mul i32 %14, 2
  %idxprom11 = zext i32 %mul10 to i64
  %15 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %15, i64 %idxprom11
  store double %sub9, double* %arrayidx12, align 8, !tbaa !29
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 8
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx13, align 4, !tbaa !33
  %conv14 = fpext float %18 to double
  %mul15 = fmul double %conv14, 1.000000e+02
  %19 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %19, i64 0
  store double %mul15, double* %arrayidx16, align 8, !tbaa !29
  %20 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx17, align 4, !tbaa !33
  %conv18 = fpext float %21 to double
  %mul19 = fmul double %conv18, 2.550000e+02
  %sub20 = fsub double %mul19, 1.280000e+02
  %22 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds double, double* %22, i64 1
  store double %sub20, double* %arrayidx21, align 8, !tbaa !29
  %23 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds float, float* %23, i64 2
  %24 = load float, float* %arrayidx22, align 4, !tbaa !33
  %conv23 = fpext float %24 to double
  %mul24 = fmul double %conv23, 2.550000e+02
  %sub25 = fsub double %mul24, 1.280000e+02
  %25 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds double, double* %25, i64 2
  store double %sub25, double* %arrayidx26, align 8, !tbaa !29
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat27 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %OutputFormat27, align 4, !tbaa !37
  %shr28 = lshr i32 %28, 7
  %and29 = and i32 %shr28, 7
  %conv30 = zext i32 %and29 to i64
  %mul31 = mul i64 %conv30, 8
  %add = add i64 24, %mul31
  %add.ptr32 = getelementptr inbounds i8, i8* %26, i64 %add
  store i8* %add.ptr32, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %29 = bitcast double** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define internal i8* @PackXYZDoubleFromFloat(%struct._cmstransform_struct* %Info, float* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %Info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca float*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %Out = alloca double*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %Info, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  store float* %wOut, float** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast double** %Out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to double*
  store double* %2, double** %Out, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 0x3FFFFFE000000000
  %7 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %7, i64 0
  store double %mul, double* %arrayidx1, align 8, !tbaa !29
  %8 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx2, align 4, !tbaa !33
  %conv3 = fpext float %9 to double
  %mul4 = fmul double %conv3, 0x3FFFFFE000000000
  %10 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %idxprom = zext i32 %10 to i64
  %11 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %11, i64 %idxprom
  store double %mul4, double* %arrayidx5, align 8, !tbaa !29
  %12 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %12, i64 2
  %13 = load float, float* %arrayidx6, align 4, !tbaa !33
  %conv7 = fpext float %13 to double
  %mul8 = fmul double %conv7, 0x3FFFFFE000000000
  %14 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul9 = mul i32 %14, 2
  %idxprom10 = zext i32 %mul9 to i64
  %15 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds double, double* %15, i64 %idxprom10
  store double %mul8, double* %arrayidx11, align 8, !tbaa !29
  %16 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 8
  store i8* %add.ptr, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx12, align 4, !tbaa !33
  %conv13 = fpext float %18 to double
  %mul14 = fmul double %conv13, 0x3FFFFFE000000000
  %19 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds double, double* %19, i64 0
  store double %mul14, double* %arrayidx15, align 8, !tbaa !29
  %20 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx16, align 4, !tbaa !33
  %conv17 = fpext float %21 to double
  %mul18 = fmul double %conv17, 0x3FFFFFE000000000
  %22 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds double, double* %22, i64 1
  store double %mul18, double* %arrayidx19, align 8, !tbaa !29
  %23 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds float, float* %23, i64 2
  %24 = load float, float* %arrayidx20, align 4, !tbaa !33
  %conv21 = fpext float %24 to double
  %mul22 = fmul double %conv21, 0x3FFFFFE000000000
  %25 = load double*, double** %Out, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds double, double* %25, i64 2
  store double %mul22, double* %arrayidx23, align 8, !tbaa !29
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %Info.addr, align 8, !tbaa !1
  %OutputFormat24 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %OutputFormat24, align 4, !tbaa !37
  %shr25 = lshr i32 %28, 7
  %and26 = and i32 %shr25, 7
  %conv27 = zext i32 %and26 to i64
  %mul28 = mul i64 %conv27, 8
  %add = add i64 24, %mul28
  %add.ptr29 = getelementptr inbounds i8, i8* %26, i64 %add
  store i8* %add.ptr29, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %29 = bitcast double** %Out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind uwtable
define internal i8* @PackFloatsFromFloat(%struct._cmstransform_struct* %info, float* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca float*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %maximum = alloca double, align 8
  %swap1 = alloca float*, align 8
  %v = alloca double, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wOut, float** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 7
  %and9 = and i32 %shr8, 7
  store i32 %and9, i32* %Extra, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %OutputFormat13, align 4, !tbaa !37
  %shr14 = lshr i32 %17, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat16, align 4, !tbaa !37
  %call = call i32 @IsInkSpace(i32 %23) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, double 1.000000e+02, double 1.000000e+00
  store double %cond, double* %maximum, align 8, !tbaa !29
  %24 = bitcast float** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  %25 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to float*
  store float* %26, float** %swap1, align 8, !tbaa !1
  %27 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #3
  store double 0.000000e+00, double* %v, align 8, !tbaa !29
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #3
  %29 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %30 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %31, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #3
  %35 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %nChan, align 4, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %36, %37
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %38, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %39 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %39 to i64
  %40 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %40, i64 %idxprom
  %41 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %41 to double
  %42 = load double, double* %maximum, align 8, !tbaa !29
  %mul = fmul double %conv, %42
  store double %mul, double* %v, align 8, !tbaa !29
  %43 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end
  %44 = load double, double* %maximum, align 8, !tbaa !29
  %45 = load double, double* %v, align 8, !tbaa !29
  %sub23 = fsub double %44, %45
  store double %sub23, double* %v, align 8, !tbaa !29
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end
  %46 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool25 = icmp ne i32 %46, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %47 = load double, double* %v, align 8, !tbaa !29
  %conv27 = fptrunc double %47 to float
  %48 = load i32, i32* %i, align 4, !tbaa !17
  %49 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %48, %49
  %50 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul28 = mul i32 %add, %50
  %idxprom29 = zext i32 %mul28 to i64
  %51 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to float*
  %arrayidx30 = getelementptr inbounds float, float* %52, i64 %idxprom29
  store float %conv27, float* %arrayidx30, align 4, !tbaa !33
  br label %if.end.35

if.else:                                          ; preds = %if.end.24
  %53 = load double, double* %v, align 8, !tbaa !29
  %conv31 = fptrunc double %53 to float
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %55 = load i32, i32* %start, align 4, !tbaa !17
  %add32 = add nsw i32 %54, %55
  %idxprom33 = sext i32 %add32 to i64
  %56 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to float*
  %arrayidx34 = getelementptr inbounds float, float* %57, i64 %idxprom33
  store float %conv31, float* %arrayidx34, align 4, !tbaa !33
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.26
  %58 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %59 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool36 = icmp ne i32 %60, 0
  br i1 %tobool36, label %if.end.40, label %if.then.37

if.then.37:                                       ; preds = %for.end
  %61 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv38 = sext i32 %61 to i64
  %mul39 = mul i64 %conv38, 4
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %mul39
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %for.end
  %63 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp41 = icmp eq i32 %63, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.40
  %64 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool43 = icmp ne i32 %64, 0
  br i1 %tobool43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %land.lhs.true
  %65 = load float*, float** %swap1, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds float, float* %65, i64 1
  %66 = bitcast float* %add.ptr45 to i8*
  %67 = load float*, float** %swap1, align 8, !tbaa !1
  %68 = bitcast float* %67 to i8*
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub46 = sub nsw i32 %69, 1
  %conv47 = sext i32 %sub46 to i64
  %mul48 = mul i64 %conv47, 4
  %call49 = call i8* @memmove(i8* %66, i8* %68, i64 %mul48) #8
  %70 = load double, double* %v, align 8, !tbaa !29
  %conv50 = fptrunc double %70 to float
  %71 = load float*, float** %swap1, align 8, !tbaa !1
  store float %conv50, float* %71, align 4, !tbaa !33
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %land.lhs.true, %if.end.40
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat52 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %OutputFormat52, align 4, !tbaa !37
  %shr53 = lshr i32 %73, 12
  %and54 = and i32 %shr53, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.end.51
  %74 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %add.ptr57, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.58:                                       ; preds = %if.end.51
  %75 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %conv59 = sext i32 %76 to i64
  %mul60 = mul i64 %conv59, 4
  %add.ptr61 = getelementptr inbounds i8, i8* %75, i64 %mul60
  store i8* %add.ptr61, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.58, %if.then.56
  %77 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  %80 = bitcast float** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = load i8*, i8** %retval
  ret i8* %89
}

; Function Attrs: nounwind uwtable
define internal i8* @PackDoublesFromFloat(%struct._cmstransform_struct* %info, float* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca float*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %maximum = alloca double, align 8
  %v = alloca double, align 8
  %swap1 = alloca double*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wOut, float** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 7
  %and9 = and i32 %shr8, 7
  store i32 %and9, i32* %Extra, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %OutputFormat13, align 4, !tbaa !37
  %shr14 = lshr i32 %17, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #3
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat16, align 4, !tbaa !37
  %call = call i32 @IsInkSpace(i32 %23) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, double 1.000000e+02, double 1.000000e+00
  store double %cond, double* %maximum, align 8, !tbaa !29
  %24 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  store double 0.000000e+00, double* %v, align 8, !tbaa !29
  %25 = bitcast double** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #3
  %26 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %27 = bitcast i8* %26 to double*
  store double* %27, double** %swap1, align 8, !tbaa !1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #3
  %29 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %30 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %31, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #3
  %35 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %nChan, align 4, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %36, %37
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %38, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %39 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %39 to i64
  %40 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %40, i64 %idxprom
  %41 = load float, float* %arrayidx, align 4, !tbaa !33
  %conv = fpext float %41 to double
  %42 = load double, double* %maximum, align 8, !tbaa !29
  %mul = fmul double %conv, %42
  store double %mul, double* %v, align 8, !tbaa !29
  %43 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end
  %44 = load double, double* %maximum, align 8, !tbaa !29
  %45 = load double, double* %v, align 8, !tbaa !29
  %sub23 = fsub double %44, %45
  store double %sub23, double* %v, align 8, !tbaa !29
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end
  %46 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool25 = icmp ne i32 %46, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %47 = load double, double* %v, align 8, !tbaa !29
  %48 = load i32, i32* %i, align 4, !tbaa !17
  %49 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %48, %49
  %50 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul27 = mul i32 %add, %50
  %idxprom28 = zext i32 %mul27 to i64
  %51 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to double*
  %arrayidx29 = getelementptr inbounds double, double* %52, i64 %idxprom28
  store double %47, double* %arrayidx29, align 8, !tbaa !29
  br label %if.end.33

if.else:                                          ; preds = %if.end.24
  %53 = load double, double* %v, align 8, !tbaa !29
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %55 = load i32, i32* %start, align 4, !tbaa !17
  %add30 = add nsw i32 %54, %55
  %idxprom31 = sext i32 %add30 to i64
  %56 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to double*
  %arrayidx32 = getelementptr inbounds double, double* %57, i64 %idxprom31
  store double %53, double* %arrayidx32, align 8, !tbaa !29
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.26
  %58 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %59 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool34 = icmp ne i32 %60, 0
  br i1 %tobool34, label %if.end.38, label %if.then.35

if.then.35:                                       ; preds = %for.end
  %61 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv36 = sext i32 %61 to i64
  %mul37 = mul i64 %conv36, 8
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %mul37
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %for.end
  %63 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp39 = icmp eq i32 %63, 0
  br i1 %cmp39, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.38
  %64 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool41 = icmp ne i32 %64, 0
  br i1 %tobool41, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %land.lhs.true
  %65 = load double*, double** %swap1, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds double, double* %65, i64 1
  %66 = bitcast double* %add.ptr43 to i8*
  %67 = load double*, double** %swap1, align 8, !tbaa !1
  %68 = bitcast double* %67 to i8*
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub44 = sub nsw i32 %69, 1
  %conv45 = sext i32 %sub44 to i64
  %mul46 = mul i64 %conv45, 8
  %call47 = call i8* @memmove(i8* %66, i8* %68, i64 %mul46) #8
  %70 = load double, double* %v, align 8, !tbaa !29
  %71 = load double*, double** %swap1, align 8, !tbaa !1
  store double %70, double* %71, align 8, !tbaa !29
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %land.lhs.true, %if.end.38
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat49 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %OutputFormat49, align 4, !tbaa !37
  %shr50 = lshr i32 %73, 12
  %and51 = and i32 %shr50, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.end.48
  %74 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %add.ptr54, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.55:                                       ; preds = %if.end.48
  %75 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %conv56 = sext i32 %76 to i64
  %mul57 = mul i64 %conv56, 8
  %add.ptr58 = getelementptr inbounds i8, i8* %75, i64 %mul57
  store i8* %add.ptr58, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.55, %if.then.53
  %77 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast double** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  %80 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast double* %maximum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = load i8*, i8** %retval
  ret i8* %89
}

; Function Attrs: nounwind uwtable
define internal i8* @PackHalfFromFloat(%struct._cmstransform_struct* %info, float* %wOut, i8* %output, i32 %Stride) #0 {
entry:
  %retval = alloca i8*, align 8
  %info.addr = alloca %struct._cmstransform_struct*, align 8
  %wOut.addr = alloca float*, align 8
  %output.addr = alloca i8*, align 8
  %Stride.addr = alloca i32, align 4
  %nChan = alloca i32, align 4
  %DoSwap = alloca i32, align 4
  %Reverse = alloca i32, align 4
  %Extra = alloca i32, align 4
  %SwapFirst = alloca i32, align 4
  %Planar = alloca i32, align 4
  %ExtraFirst = alloca i32, align 4
  %maximum = alloca float, align 4
  %swap1 = alloca i16*, align 8
  %v = alloca float, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %info, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  store float* %wOut, float** %wOut.addr, align 8, !tbaa !1
  store i8* %output, i8** %output.addr, align 8, !tbaa !1
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !17
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %OutputFormat, align 4, !tbaa !37
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 15
  store i32 %and, i32* %nChan, align 4, !tbaa !17
  %3 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat1, align 4, !tbaa !37
  %shr2 = lshr i32 %5, 10
  %and3 = and i32 %shr2, 1
  store i32 %and3, i32* %DoSwap, align 4, !tbaa !17
  %6 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %OutputFormat4, align 4, !tbaa !37
  %shr5 = lshr i32 %8, 13
  %and6 = and i32 %shr5, 1
  store i32 %and6, i32* %Reverse, align 4, !tbaa !17
  %9 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %OutputFormat7, align 4, !tbaa !37
  %shr8 = lshr i32 %11, 7
  %and9 = and i32 %shr8, 7
  store i32 %and9, i32* %Extra, align 4, !tbaa !17
  %12 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %OutputFormat10, align 4, !tbaa !37
  %shr11 = lshr i32 %14, 14
  %and12 = and i32 %shr11, 1
  store i32 %and12, i32* %SwapFirst, align 4, !tbaa !17
  %15 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %OutputFormat13, align 4, !tbaa !37
  %shr14 = lshr i32 %17, 12
  %and15 = and i32 %shr14, 1
  store i32 %and15, i32* %Planar, align 4, !tbaa !17
  %18 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %20 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %xor = xor i32 %19, %20
  store i32 %xor, i32* %ExtraFirst, align 4, !tbaa !17
  %21 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %OutputFormat16, align 4, !tbaa !37
  %call = call i32 @IsInkSpace(i32 %23) #7
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, float 1.000000e+02, float 1.000000e+00
  store float %cond, float* %maximum, align 4, !tbaa !33
  %24 = bitcast i16** %swap1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #3
  %25 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to i16*
  store i16* %26, i16** %swap1, align 8, !tbaa !1
  %27 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #3
  store float 0.000000e+00, float* %v, align 4, !tbaa !33
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #3
  %29 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #3
  store i32 0, i32* %start, align 4, !tbaa !17
  %30 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, i32* %Extra, align 4, !tbaa !17
  store i32 %31, i32* %start, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %33 = load i32, i32* %nChan, align 4, !tbaa !17
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #3
  %35 = load i32, i32* %DoSwap, align 4, !tbaa !17
  %tobool18 = icmp ne i32 %35, 0
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %nChan, align 4, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %sub = sub nsw i32 %36, %37
  %sub19 = sub nsw i32 %sub, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %sub19, %cond.true ], [ %38, %cond.false ]
  store i32 %cond20, i32* %index, align 4, !tbaa !17
  %39 = load i32, i32* %index, align 4, !tbaa !17
  %idxprom = sext i32 %39 to i64
  %40 = load float*, float** %wOut.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %40, i64 %idxprom
  %41 = load float, float* %arrayidx, align 4, !tbaa !33
  %42 = load float, float* %maximum, align 4, !tbaa !33
  %mul = fmul float %41, %42
  store float %mul, float* %v, align 4, !tbaa !33
  %43 = load i32, i32* %Reverse, align 4, !tbaa !17
  %tobool21 = icmp ne i32 %43, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %cond.end
  %44 = load float, float* %maximum, align 4, !tbaa !33
  %45 = load float, float* %v, align 4, !tbaa !33
  %sub23 = fsub float %44, %45
  store float %sub23, float* %v, align 4, !tbaa !33
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %cond.end
  %46 = load i32, i32* %Planar, align 4, !tbaa !17
  %tobool25 = icmp ne i32 %46, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %47 = load float, float* %v, align 4, !tbaa !33
  %call27 = call zeroext i16 @_cmsFloat2Half(float %47) #7
  %48 = load i32, i32* %i, align 4, !tbaa !17
  %49 = load i32, i32* %start, align 4, !tbaa !17
  %add = add nsw i32 %48, %49
  %50 = load i32, i32* %Stride.addr, align 4, !tbaa !17
  %mul28 = mul i32 %add, %50
  %idxprom29 = zext i32 %mul28 to i64
  %51 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to i16*
  %arrayidx30 = getelementptr inbounds i16, i16* %52, i64 %idxprom29
  store i16 %call27, i16* %arrayidx30, align 2, !tbaa !35
  br label %if.end.35

if.else:                                          ; preds = %if.end.24
  %53 = load float, float* %v, align 4, !tbaa !33
  %call31 = call zeroext i16 @_cmsFloat2Half(float %53) #7
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %55 = load i32, i32* %start, align 4, !tbaa !17
  %add32 = add nsw i32 %54, %55
  %idxprom33 = sext i32 %add32 to i64
  %56 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %57 = bitcast i8* %56 to i16*
  %arrayidx34 = getelementptr inbounds i16, i16* %57, i64 %idxprom33
  store i16 %call31, i16* %arrayidx34, align 2, !tbaa !35
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.26
  %58 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %59 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %ExtraFirst, align 4, !tbaa !17
  %tobool36 = icmp ne i32 %60, 0
  br i1 %tobool36, label %if.end.39, label %if.then.37

if.then.37:                                       ; preds = %for.end
  %61 = load i32, i32* %Extra, align 4, !tbaa !17
  %conv = sext i32 %61 to i64
  %mul38 = mul i64 %conv, 2
  %62 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %mul38
  store i8* %add.ptr, i8** %output.addr, align 8, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %for.end
  %63 = load i32, i32* %Extra, align 4, !tbaa !17
  %cmp40 = icmp eq i32 %63, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.39
  %64 = load i32, i32* %SwapFirst, align 4, !tbaa !17
  %tobool42 = icmp ne i32 %64, 0
  br i1 %tobool42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %land.lhs.true
  %65 = load i16*, i16** %swap1, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i16, i16* %65, i64 1
  %66 = bitcast i16* %add.ptr44 to i8*
  %67 = load i16*, i16** %swap1, align 8, !tbaa !1
  %68 = bitcast i16* %67 to i8*
  %69 = load i32, i32* %nChan, align 4, !tbaa !17
  %sub45 = sub nsw i32 %69, 1
  %conv46 = sext i32 %sub45 to i64
  %mul47 = mul i64 %conv46, 2
  %call48 = call i8* @memmove(i8* %66, i8* %68, i64 %mul47) #8
  %70 = load float, float* %v, align 4, !tbaa !33
  %call49 = call zeroext i16 @_cmsFloat2Half(float %70) #7
  %71 = load i16*, i16** %swap1, align 8, !tbaa !1
  store i16 %call49, i16* %71, align 2, !tbaa !35
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %land.lhs.true, %if.end.39
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %info.addr, align 8, !tbaa !1
  %OutputFormat51 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %OutputFormat51, align 4, !tbaa !37
  %shr52 = lshr i32 %73, 12
  %and53 = and i32 %shr52, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.end.50
  %74 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %add.ptr56, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.57:                                       ; preds = %if.end.50
  %75 = load i8*, i8** %output.addr, align 8, !tbaa !1
  %76 = load i32, i32* %nChan, align 4, !tbaa !17
  %conv58 = sext i32 %76 to i64
  %mul59 = mul i64 %conv58, 2
  %add.ptr60 = getelementptr inbounds i8, i8* %75, i64 %mul59
  store i8* %add.ptr60, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.57, %if.then.55
  %77 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #3
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #3
  %79 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #3
  %80 = bitcast i16** %swap1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast float* %maximum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #3
  %82 = bitcast i32* %ExtraFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %Planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %SwapFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %Extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %Reverse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %DoSwap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = load i8*, i8** %retval
  ret i8* %89
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noreturn nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"_cmsContext_struct", !2, i64 0, !2, i64 8, !3, i64 16, !7, i64 136}
!7 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!8 = !{!9, !2, i64 0}
!9 = !{!"", !2, i64 0}
!10 = !{!11, !2, i64 8}
!11 = !{!"_cms_formatters_factory_list", !2, i64 0, !2, i64 8}
!12 = !{!13, !2, i64 24}
!13 = !{!"", !14, i64 0, !2, i64 24}
!14 = !{!"_cmsPluginBaseStruct", !15, i64 0, !15, i64 4, !15, i64 8, !2, i64 16}
!15 = !{!"int", !3, i64 0}
!16 = !{!11, !2, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!3, !3, i64 0}
!19 = !{i64 0, i64 8, !1, i64 0, i64 8, !1}
!20 = !{!21, !15, i64 4}
!21 = !{!"", !15, i64 0, !15, i64 4, !2, i64 8}
!22 = !{!21, !15, i64 0}
!23 = !{!21, !2, i64 8}
!24 = !{!25, !15, i64 0}
!25 = !{!"_cmstransform_struct", !15, i64 0, !15, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !26, i64 48, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !3, i64 144, !3, i64 148, !27, i64 152, !27, i64 176, !2, i64 200, !15, i64 208, !28, i64 216, !15, i64 224, !2, i64 232, !2, i64 240, !2, i64 248}
!26 = !{!"", !3, i64 0, !3, i64 32}
!27 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"double", !3, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!27, !28, i64 0}
!31 = !{!27, !28, i64 8}
!32 = !{!27, !28, i64 16}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !3, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !3, i64 0}
!37 = !{!25, !15, i64 4}
