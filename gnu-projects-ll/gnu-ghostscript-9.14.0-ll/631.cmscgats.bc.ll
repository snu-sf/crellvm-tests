; ModuleID = './cmscgats.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PROPERTY = type { i8*, i32 }
%struct.KEYWORD = type { i8*, i32 }
%struct.cmsIT8 = type { i32, i32, [255 x %struct._Table], %struct._OwnedMem*, %struct._SubAllocator, i32, i32, i32, double, [128 x i8], [1024 x i8], %struct._KeyVal*, %struct._KeyVal*, i8*, i32, [20 x %struct._FileContext*], i32, i8*, [128 x i8], %struct._cmsContext_struct* }
%struct._Table = type { [1024 x i8], i32, i32, i32, %struct._KeyVal*, i8**, i8** }
%struct._OwnedMem = type { %struct._OwnedMem*, i8* }
%struct._SubAllocator = type { i8*, i32, i32 }
%struct._KeyVal = type { %struct._KeyVal*, i8*, %struct._KeyVal*, i8*, i8*, i32 }
%struct._FileContext = type { [256 x i8], %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.SAVESTREAM = type { %struct._IO_FILE*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Table %d is out of sequence\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.10g\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CGATS.17\00", align 1
@PredefinedProperties = internal global [26 x %struct.PROPERTY] [%struct.PROPERTY { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 0 }, %struct.PROPERTY { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 0 }, %struct.PROPERTY { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i32 4 }, %struct.PROPERTY { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0), i32 4 }, %struct.PROPERTY { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 1 }, %struct.PROPERTY { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 1 }], align 16
@PredefinedSampleID = internal global [40 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"(Ptr != ((void*)0))\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"./lcms2/src/cmscgats.c\00", align 1
@__PRETTY_FUNCTION__.cmsIT8LoadFromMem = private unnamed_addr constant [65 x i8] c"cmsHANDLE cmsIT8LoadFromMem(cmsContext, void *, cmsUInt32Number)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"(len != 0)\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"(cFileName != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsIT8LoadFromFile = private unnamed_addr constant [55 x i8] c"cmsHANDLE cmsIT8LoadFromFile(cmsContext, const char *)\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"(hIT8 != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsIT8EnumDataFormat = private unnamed_addr constant [46 x i8] c"int cmsIT8EnumDataFormat(cmsHANDLE, char ***)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8EnumProperties = private unnamed_addr constant [58 x i8] c"cmsUInt32Number cmsIT8EnumProperties(cmsHANDLE, char ***)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8EnumPropertyMulti = private unnamed_addr constant [81 x i8] c"cmsUInt32Number cmsIT8EnumPropertyMulti(cmsHANDLE, const char *, const char ***)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8FindDataFormat = private unnamed_addr constant [50 x i8] c"int cmsIT8FindDataFormat(cmsHANDLE, const char *)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8GetDataRowCol = private unnamed_addr constant [53 x i8] c"const char *cmsIT8GetDataRowCol(cmsHANDLE, int, int)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8SetDataRowCol = private unnamed_addr constant [63 x i8] c"cmsBool cmsIT8SetDataRowCol(cmsHANDLE, int, int, const char *)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8SetDataRowColDbl = private unnamed_addr constant [70 x i8] c"cmsBool cmsIT8SetDataRowColDbl(cmsHANDLE, int, int, cmsFloat64Number)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8GetData = private unnamed_addr constant [65 x i8] c"const char *cmsIT8GetData(cmsHANDLE, const char *, const char *)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8SetData = private unnamed_addr constant [75 x i8] c"cmsBool cmsIT8SetData(cmsHANDLE, const char *, const char *, const char *)\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Couldn't add more patches '%s'\0A\00", align 1
@__PRETTY_FUNCTION__.cmsIT8SetDataDbl = private unnamed_addr constant [82 x i8] c"cmsBool cmsIT8SetDataDbl(cmsHANDLE, const char *, const char *, cmsFloat64Number)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8GetPatchName = private unnamed_addr constant [55 x i8] c"const char *cmsIT8GetPatchName(cmsHANDLE, int, char *)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8GetPatchByName = private unnamed_addr constant [50 x i8] c"int cmsIT8GetPatchByName(cmsHANDLE, const char *)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8TableCount = private unnamed_addr constant [44 x i8] c"cmsUInt32Number cmsIT8TableCount(cmsHANDLE)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8SetTableByLabel = private unnamed_addr constant [79 x i8] c"int cmsIT8SetTableByLabel(cmsHANDLE, const char *, const char *, const char *)\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%255s %d %255s\00", align 1
@__PRETTY_FUNCTION__.cmsIT8SetIndexColumn = private unnamed_addr constant [54 x i8] c"cmsBool cmsIT8SetIndexColumn(cmsHANDLE, const char *)\00", align 1
@__PRETTY_FUNCTION__.cmsIT8DefineDblFormat = private unnamed_addr constant [52 x i8] c"void cmsIT8DefineDblFormat(cmsHANDLE, const char *)\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s: Line %d, %s\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"NUMBER_OF_FIELDS\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"NUMBER_OF_SETS\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"ORIGINATOR\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"FILE_DESCRIPTOR\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"CREATED\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"DESCRIPTOR\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"DIFFUSE_GEOMETRY\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"MANUFACTURE\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"PROD_DATE\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"SERIAL\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"INSTRUMENTATION\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"MEASUREMENT_SOURCE\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"PRINT_CONDITIONS\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"SAMPLE_BACKING\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"CHISQ_DOF\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"MEASUREMENT_GEOMETRY\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"POLARIZATION\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"WEIGHTING_FUNCTION\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"COMPUTATIONAL_PARAMETER\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"TARGET_TYPE\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"COLORANT\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"TABLE_DESCRIPTOR\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"TABLE_NAME\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"CMYK_C\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"CMYK_M\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"CMYK_Y\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"CMYK_K\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"D_RED\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"D_GREEN\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"D_BLUE\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"D_VIS\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"D_MAJOR_FILTER\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"RGB_R\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"RGB_G\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"RGB_B\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"SPECTRAL_NM\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"SPECTRAL_PCT\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"SPECTRAL_DEC\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"XYZ_X\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"XYZ_Y\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"XYZ_Z\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"XYY_XXYY_Y\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"XYY_CAPY\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"LAB_L\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"LAB_A\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"LAB_B\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"LAB_C\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"LAB_H\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"LAB_DE\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"LAB_DE_94\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"LAB_DE_CMC\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"LAB_DE_2000\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"MEAN_DE\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"STDEV_X\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"STDEV_Y\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"STDEV_Z\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"STDEV_L\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"STDEV_A\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"STDEV_B\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"STDEV_DE\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"CHI_SQD_PAR\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"Table %d out of sequence\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"AddToList: out of memory\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"More than NUMBER_OF_FIELDS fields.\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"#\0A# \00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"\0A#\0A\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"\09\22%s\22\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"\090x%X\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"\090x%B\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"\09\22%s,%s\22\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"Unknown write mode %d\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"Write to file error in CGATS parser\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"Write to memory overflows in CGATS parser\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"BEGIN_DATA_FORMAT\0A\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"END_DATA_FORMAT\0A\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"BEGIN_DATA\0A\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"END_DATA\0A\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"Invalid hexadecimal number\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"Invalid binary number\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"Unrecognized character: 0x%x\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"Too many recursion levels\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"Filename expected\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"File path too long\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"File %s not found\00", align 1
@TabKeys = internal constant [8 x %struct.KEYWORD] [%struct.KEYWORD { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 15 }, %struct.KEYWORD { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i32 15 }, %struct.KEYWORD { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), i32 9 }, %struct.KEYWORD { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.118, i32 0, i32 0), i32 10 }, %struct.KEYWORD { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.119, i32 0, i32 0), i32 14 }, %struct.KEYWORD { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i32 11 }, %struct.KEYWORD { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.121, i32 0, i32 0), i32 12 }, %struct.KEYWORD { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i32 13 }], align 16
@.str.115 = private unnamed_addr constant [9 x i8] c"$INCLUDE\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c".INCLUDE\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"BEGIN_DATA\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"BEGIN_DATA_FORMAT\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"DATA_FORMAT_IDENTIFIER\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"END_DATA\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"END_DATA_FORMAT\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str.123 = private unnamed_addr constant [33 x i8] c"**** CORRUPTED FORMAT STRING ***\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"Sample type expected\00", align 1
@.str.125 = private unnamed_addr constant [51 x i8] c"Count mismatch. NUMBER_OF_FIELDS was %d, found %d\0A\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"Expected separator\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"Sample data expected\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"Count mismatch. NUMBER_OF_SETS was %d, found %d\0A\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"Keyword expected\00", align 1
@.str.130 = private unnamed_addr constant [23 x i8] c"Property data expected\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"Invalid value '%s' for property '%s'.\00", align 1
@.str.132 = private unnamed_addr constant [33 x i8] c"Invalid value for property '%s'.\00", align 1
@.str.133 = private unnamed_addr constant [31 x i8] c"expected keyword or identifier\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"Undefined DATA_FORMAT\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"%s %d %s\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"File '%s' not found\00", align 1
@.str.137 = private unnamed_addr constant [44 x i8] c"Patch %d out of range, there are %d patches\00", align 1
@.str.138 = private unnamed_addr constant [45 x i8] c"Sample %d out of range, there are %d samples\00", align 1
@.str.139 = private unnamed_addr constant [45 x i8] c"AllocateDataFormat: Unknown NUMBER_OF_FIELDS\00", align 1
@.str.140 = private unnamed_addr constant [56 x i8] c"AllocateDataFormat: Unable to allocate dataFormat array\00", align 1
@.str.141 = private unnamed_addr constant [47 x i8] c"AllocateDataSet: Unable to allocate data array\00", align 1

; Function Attrs: nounwind uwtable
define void @cmsIT8Free(i8* %hIT8) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %cleanup.dest.slot = alloca i32
  %p = alloca %struct._OwnedMem*, align 8
  %n = alloca %struct._OwnedMem*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsIT8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemorySink = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %4, i32 0, i32 3
  %5 = load %struct._OwnedMem*, %struct._OwnedMem** %MemorySink, align 8, !tbaa !5
  %tobool = icmp ne %struct._OwnedMem* %5, null
  br i1 %tobool, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %6 = bitcast %struct._OwnedMem** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct._OwnedMem** %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemorySink2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %8, i32 0, i32 3
  %9 = load %struct._OwnedMem*, %struct._OwnedMem** %MemorySink2, align 8, !tbaa !5
  store %struct._OwnedMem* %9, %struct._OwnedMem** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %10 = load %struct._OwnedMem*, %struct._OwnedMem** %p, align 8, !tbaa !1
  %cmp3 = icmp ne %struct._OwnedMem* %10, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._OwnedMem*, %struct._OwnedMem** %p, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._OwnedMem, %struct._OwnedMem* %11, i32 0, i32 0
  %12 = load %struct._OwnedMem*, %struct._OwnedMem** %Next, align 8, !tbaa !10
  store %struct._OwnedMem* %12, %struct._OwnedMem** %n, align 8, !tbaa !1
  %13 = load %struct._OwnedMem*, %struct._OwnedMem** %p, align 8, !tbaa !1
  %Ptr = getelementptr inbounds %struct._OwnedMem, %struct._OwnedMem* %13, i32 0, i32 1
  %14 = load i8*, i8** %Ptr, align 8, !tbaa !12
  %tobool4 = icmp ne i8* %14, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %for.body
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %15, i32 0, i32 19
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !13
  %17 = load %struct._OwnedMem*, %struct._OwnedMem** %p, align 8, !tbaa !1
  %Ptr6 = getelementptr inbounds %struct._OwnedMem, %struct._OwnedMem* %17, i32 0, i32 1
  %18 = load i8*, i8** %Ptr6, align 8, !tbaa !12
  call void @_cmsFree(%struct._cmsContext_struct* %16, i8* %18) #9
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %for.body
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ContextID8 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %19, i32 0, i32 19
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID8, align 8, !tbaa !13
  %21 = load %struct._OwnedMem*, %struct._OwnedMem** %p, align 8, !tbaa !1
  %22 = bitcast %struct._OwnedMem* %21 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %20, i8* %22) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %23 = load %struct._OwnedMem*, %struct._OwnedMem** %n, align 8, !tbaa !1
  store %struct._OwnedMem* %23, %struct._OwnedMem** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast %struct._OwnedMem** %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct._OwnedMem** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  %26 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %26, i32 0, i32 17
  %27 = load i8*, i8** %MemoryBlock, align 8, !tbaa !14
  %tobool10 = icmp ne i8* %27, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %28 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ContextID12 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %28, i32 0, i32 19
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID12, align 8, !tbaa !13
  %30 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock13 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %30, i32 0, i32 17
  %31 = load i8*, i8** %MemoryBlock13, align 8, !tbaa !14
  call void @_cmsFree(%struct._cmsContext_struct* %29, i8* %31) #9
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %32 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ContextID15 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %32, i32 0, i32 19
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID15, align 8, !tbaa !13
  %34 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %35 = bitcast %struct.cmsIT8* %34 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %33, i8* %35) #9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then
  %36 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetTable(i8* %IT8, i32 %nTable) #0 {
entry:
  %retval = alloca i32, align 4
  %IT8.addr = alloca i8*, align 8
  %nTable.addr = alloca i32, align 4
  %it8 = alloca %struct.cmsIT8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %IT8, i8** %IT8.addr, align 8, !tbaa !1
  store i32 %nTable, i32* %nTable.addr, align 4, !tbaa !15
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %IT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i32, i32* %nTable.addr, align 4, !tbaa !15
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %4, i32 0, i32 0
  %5 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %cmp = icmp uge i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %nTable.addr, align 4, !tbaa !15
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %TablesCount1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 0
  %8 = load i32, i32* %TablesCount1, align 4, !tbaa !16
  %cmp2 = icmp eq i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @AllocTable(%struct.cmsIT8* %9) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %11 = load i32, i32* %nTable.addr, align 4, !tbaa !15
  %call = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %11) #9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load i32, i32* %nTable.addr, align 4, !tbaa !15
  %13 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %nTable5 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %13, i32 0, i32 1
  store i32 %12, i32* %nTable5, align 4, !tbaa !17
  %14 = load i32, i32* %nTable.addr, align 4, !tbaa !15
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.else
  %15 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @AllocTable(%struct.cmsIT8* %it8) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %t = alloca %struct._Table*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [255 x %struct._Table], [255 x %struct._Table]* %Tab, i32 0, i32 0
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %2, i32 0, i32 0
  %3 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct._Table, %struct._Table* %arraydecay, i64 %idx.ext
  store %struct._Table* %add.ptr, %struct._Table** %t, align 8, !tbaa !1
  %4 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %4, i32 0, i32 4
  store %struct._KeyVal* null, %struct._KeyVal** %HeaderList, align 8, !tbaa !18
  %5 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat = getelementptr inbounds %struct._Table, %struct._Table* %5, i32 0, i32 5
  store i8** null, i8*** %DataFormat, align 8, !tbaa !20
  %6 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._Table, %struct._Table* %6, i32 0, i32 6
  store i8** null, i8*** %Data, align 8, !tbaa !21
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %TablesCount1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 0
  %8 = load i32, i32* %TablesCount1, align 4, !tbaa !16
  %inc = add i32 %8, 1
  store i32 %inc, i32* %TablesCount1, align 4, !tbaa !16
  %9 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @SynError(%struct.cmsIT8* %it8, i8* %Txt, ...) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %Txt.addr = alloca i8*, align 8
  %Buffer = alloca [256 x i8], align 16
  %ErrMsg = alloca [1024 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %Txt, i8** %Txt.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = bitcast [1024 x i8]* %ErrMsg to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %3 = load i8*, i8** %Txt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 255, i8* %3, %struct.__va_list_tag* %arraydecay3) #10
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i64 255
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ErrMsg, i32 0, i32 0
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %4, i32 0, i32 16
  %5 = load i32, i32* %IncludeSP, align 4, !tbaa !23
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %6, i32 0, i32 15
  %arrayidx7 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack, i32 0, i64 %idxprom
  %7 = load %struct._FileContext*, %struct._FileContext** %arrayidx7, align 8, !tbaa !1
  %FileName = getelementptr inbounds %struct._FileContext, %struct._FileContext* %7, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %FileName, i32 0, i32 0
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %lineno = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %8, i32 0, i32 14
  %9 = load i32, i32* %lineno, align 4, !tbaa !24
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay6, i64 1023, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay8, i32 %9, i8* %arraydecay9) #10
  %arrayidx11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ErrMsg, i32 0, i64 1023
  store i8 0, i8* %arrayidx11, align 1, !tbaa !22
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 5
  store i32 8, i32* %sy, align 4, !tbaa !25
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %11, i32 0, i32 19
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !13
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ErrMsg, i32 0, i32 0
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %12, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay12) #9
  %13 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %13) #1
  %14 = bitcast [1024 x i8]* %ErrMsg to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %14) #1
  %15 = bitcast [256 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 256, i8* %15) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8Alloc(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %2, i32 272872) #9
  %3 = bitcast i8* %call to %struct.cmsIT8*
  store %struct.cmsIT8* %3, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsIT8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @AllocTable(%struct.cmsIT8* %5) #9
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %6, i32 0, i32 17
  store i8* null, i8** %MemoryBlock, align 8, !tbaa !14
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemorySink = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 3
  store %struct._OwnedMem* null, %struct._OwnedMem** %MemorySink, align 8, !tbaa !5
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %nTable = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %8, i32 0, i32 1
  store i32 0, i32* %nTable, align 4, !tbaa !17
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 19
  store %struct._cmsContext_struct* %9, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !13
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %Allocator = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %11, i32 0, i32 4
  %Used = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator, i32 0, i32 2
  store i32 0, i32* %Used, align 4, !tbaa !26
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %Allocator2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 4
  %Block = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator2, i32 0, i32 0
  store i8* null, i8** %Block, align 8, !tbaa !27
  %13 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %Allocator3 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %13, i32 0, i32 4
  %BlockSize = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator3, i32 0, i32 1
  store i32 0, i32* %BlockSize, align 4, !tbaa !28
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ValidKeywords = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %14, i32 0, i32 11
  store %struct._KeyVal* null, %struct._KeyVal** %ValidKeywords, align 8, !tbaa !29
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ValidSampleID = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %15, i32 0, i32 12
  store %struct._KeyVal* null, %struct._KeyVal** %ValidSampleID, align 8, !tbaa !30
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %16, i32 0, i32 5
  store i32 0, i32* %sy, align 4, !tbaa !25
  %17 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %17, i32 0, i32 6
  store i32 32, i32* %ch, align 4, !tbaa !31
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %Source = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %18, i32 0, i32 13
  store i8* null, i8** %Source, align 8, !tbaa !32
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %inum = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %19, i32 0, i32 7
  store i32 0, i32* %inum, align 4, !tbaa !33
  %20 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %dnum = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %20, i32 0, i32 8
  store double 0.000000e+00, double* %dnum, align 8, !tbaa !34
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call4 = call i8* @AllocChunk(%struct.cmsIT8* %21, i32 264) #9
  %22 = bitcast i8* %call4 to %struct._FileContext*
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %23, i32 0, i32 15
  %arrayidx = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack, i32 0, i64 0
  store %struct._FileContext* %22, %struct._FileContext** %arrayidx, align 8, !tbaa !1
  %24 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %IncludeSP = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %24, i32 0, i32 16
  store i32 0, i32* %IncludeSP, align 4, !tbaa !23
  %25 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %lineno = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %25, i32 0, i32 14
  store i32 1, i32* %lineno, align 4, !tbaa !24
  %26 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %DoubleFormatter = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %26, i32 0, i32 18
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter, i32 0, i32 0
  %call5 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #10
  %27 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %28 = bitcast %struct.cmsIT8* %27 to i8*
  %call6 = call i32 @cmsIT8SetSheetType(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #9
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %i, align 4, !tbaa !15
  %conv = zext i32 %29 to i64
  %cmp7 = icmp ult i64 %conv, 26
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %31 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = zext i32 %31 to i64
  %arrayidx9 = getelementptr inbounds [26 x %struct.PROPERTY], [26 x %struct.PROPERTY]* @PredefinedProperties, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.PROPERTY, %struct.PROPERTY* %arrayidx9, i32 0, i32 0
  %32 = load i8*, i8** %id, align 8, !tbaa !35
  %33 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom10 = zext i32 %33 to i64
  %arrayidx11 = getelementptr inbounds [26 x %struct.PROPERTY], [26 x %struct.PROPERTY]* @PredefinedProperties, i32 0, i64 %idxprom10
  %as = getelementptr inbounds %struct.PROPERTY, %struct.PROPERTY* %arrayidx11, i32 0, i32 1
  %34 = load i32, i32* %as, align 4, !tbaa !37
  %call12 = call %struct._KeyVal* @AddAvailableProperty(%struct.cmsIT8* %30, i8* %32, i32 %34) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.end
  %36 = load i32, i32* %i, align 4, !tbaa !15
  %conv14 = zext i32 %36 to i64
  %cmp15 = icmp ult i64 %conv14, 40
  br i1 %cmp15, label %for.body.17, label %for.end.23

for.body.17:                                      ; preds = %for.cond.13
  %37 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %38 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom18 = zext i32 %38 to i64
  %arrayidx19 = getelementptr inbounds [40 x i8*], [40 x i8*]* @PredefinedSampleID, i32 0, i64 %idxprom18
  %39 = load i8*, i8** %arrayidx19, align 8, !tbaa !1
  %call20 = call %struct._KeyVal* @AddAvailableSampleID(%struct.cmsIT8* %37, i8* %39) #9
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.17
  %40 = load i32, i32* %i, align 4, !tbaa !15
  %inc22 = add i32 %40, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !15
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  %41 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %42 = bitcast %struct.cmsIT8* %41 to i8*
  store i8* %42, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.23, %if.then
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i8*, i8** %retval
  ret i8* %45
}

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @AllocChunk(%struct.cmsIT8* %it8, i32 %size) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %size.addr = alloca i32, align 4
  %Free = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !15
  %0 = bitcast i32* %Free to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %1, i32 0, i32 4
  %BlockSize = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator, i32 0, i32 1
  %2 = load i32, i32* %BlockSize, align 4, !tbaa !28
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %3, i32 0, i32 4
  %Used = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator1, i32 0, i32 2
  %4 = load i32, i32* %Used, align 4, !tbaa !26
  %sub = sub i32 %2, %4
  store i32 %sub, i32* %Free, align 4, !tbaa !15
  %5 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !15
  %conv = zext i32 %6 to i64
  %add = add i64 %conv, 7
  %and = and i64 %add, -8
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %size.addr, align 4, !tbaa !15
  %7 = load i32, i32* %size.addr, align 4, !tbaa !15
  %8 = load i32, i32* %Free, align 4, !tbaa !15
  %cmp = icmp ugt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator4 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 4
  %BlockSize5 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator4, i32 0, i32 1
  %10 = load i32, i32* %BlockSize5, align 4, !tbaa !28
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator9 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %11, i32 0, i32 4
  %BlockSize10 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator9, i32 0, i32 1
  store i32 20480, i32* %BlockSize10, align 4, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator11 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 4
  %BlockSize12 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator11, i32 0, i32 1
  %13 = load i32, i32* %BlockSize12, align 4, !tbaa !28
  %mul = mul i32 %13, 2
  store i32 %mul, i32* %BlockSize12, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator13 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %14, i32 0, i32 4
  %BlockSize14 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator13, i32 0, i32 1
  %15 = load i32, i32* %BlockSize14, align 4, !tbaa !28
  %16 = load i32, i32* %size.addr, align 4, !tbaa !15
  %cmp15 = icmp ult i32 %15, %16
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end
  %17 = load i32, i32* %size.addr, align 4, !tbaa !15
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator18 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %18, i32 0, i32 4
  %BlockSize19 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator18, i32 0, i32 1
  store i32 %17, i32* %BlockSize19, align 4, !tbaa !28
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator21 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %19, i32 0, i32 4
  %Used22 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator21, i32 0, i32 2
  store i32 0, i32* %Used22, align 4, !tbaa !26
  %20 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator23 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %21, i32 0, i32 4
  %BlockSize24 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator23, i32 0, i32 1
  %22 = load i32, i32* %BlockSize24, align 4, !tbaa !28
  %call = call i8* @AllocBigBlock(%struct.cmsIT8* %20, i32 %22) #9
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator25 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %23, i32 0, i32 4
  %Block = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator25, i32 0, i32 0
  store i8* %call, i8** %Block, align 8, !tbaa !27
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.20, %entry
  %24 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator27 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %24, i32 0, i32 4
  %Block28 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator27, i32 0, i32 0
  %25 = load i8*, i8** %Block28, align 8, !tbaa !27
  %26 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator29 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %26, i32 0, i32 4
  %Used30 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator29, i32 0, i32 2
  %27 = load i32, i32* %Used30, align 4, !tbaa !26
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !1
  %28 = load i32, i32* %size.addr, align 4, !tbaa !15
  %29 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Allocator31 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %29, i32 0, i32 4
  %Used32 = getelementptr inbounds %struct._SubAllocator, %struct._SubAllocator* %Allocator31, i32 0, i32 2
  %30 = load i32, i32* %Used32, align 4, !tbaa !26
  %add33 = add i32 %30, %28
  store i32 %add33, i32* %Used32, align 4, !tbaa !26
  %31 = load i8*, i8** %ptr, align 8, !tbaa !1
  %32 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %Free to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  ret i8* %31
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetSheetType(i8* %hIT8, i8* %Type) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %Type.addr = alloca i8*, align 8
  %t = alloca %struct._Table*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Type, i8** %Type.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %2) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %3 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SheetType = getelementptr inbounds %struct._Table, %struct._Table* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %SheetType, i32 0, i32 0
  %4 = load i8*, i8** %Type.addr, align 8, !tbaa !1
  %call1 = call i8* @strncpy(i8* %arraydecay, i8* %4, i64 1023) #10
  %5 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SheetType2 = getelementptr inbounds %struct._Table, %struct._Table* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %SheetType2, i32 0, i64 1023
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %6 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal %struct._KeyVal* @AddAvailableProperty(%struct.cmsIT8* %it8, i8* %Key, i32 %as) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %Key.addr = alloca i8*, align 8
  %as.addr = alloca i32, align 4
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  store i32 %as, i32* %as.addr, align 4, !tbaa !22
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ValidKeywords = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %1, i32 0, i32 11
  %2 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %3 = load i32, i32* %as.addr, align 4, !tbaa !22
  %call = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %0, %struct._KeyVal** %ValidKeywords, i8* %2, i8* null, i8* null, i32 %3) #9
  ret %struct._KeyVal* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._KeyVal* @AddAvailableSampleID(%struct.cmsIT8* %it8, i8* %Key) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %Key.addr = alloca i8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ValidSampleID = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %1, i32 0, i32 12
  %2 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %call = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %0, %struct._KeyVal** %ValidSampleID, i8* %2, i8* null, i8* null, i32 0) #9
  ret %struct._KeyVal* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8GetSheetType(i8* %hIT8) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.cmsIT8*
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %1) #9
  %SheetType = getelementptr inbounds %struct._Table, %struct._Table* %call, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %SheetType, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: nounwind uwtable
define internal %struct._Table* @GetTable(%struct.cmsIT8* %it8) #0 {
entry:
  %retval = alloca %struct._Table*, align 8
  %it8.addr = alloca %struct.cmsIT8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %nTable = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %0, i32 0, i32 1
  %1 = load i32, i32* %nTable, align 4, !tbaa !17
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %2, i32 0, i32 0
  %3 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %nTable1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %5, i32 0, i32 1
  %6 = load i32, i32* %nTable1, align 4, !tbaa !17
  %call = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0), i32 %6) #9
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [255 x %struct._Table], [255 x %struct._Table]* %Tab, i32 0, i32 0
  store %struct._Table* %arraydecay, %struct._Table** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Tab2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %8, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [255 x %struct._Table], [255 x %struct._Table]* %Tab2, i32 0, i32 0
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %nTable4 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 1
  %10 = load i32, i32* %nTable4, align 4, !tbaa !17
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct._Table, %struct._Table* %arraydecay3, i64 %idx.ext
  store %struct._Table* %add.ptr, %struct._Table** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct._Table*, %struct._Table** %retval
  ret %struct._Table* %11
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetComment(i8* %hIT8, i8* %Val) #0 {
entry:
  %retval = alloca i32, align 4
  %hIT8.addr = alloca i8*, align 8
  %Val.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Val, i8** %Val.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !22
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %7) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call, i32 0, i32 4
  %8 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %call4 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %6, %struct._KeyVal** %HeaderList, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* %8, i32 0) #9
  %cmp = icmp ne %struct._KeyVal* %call4, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %9 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._KeyVal* @AddToList(%struct.cmsIT8* %it8, %struct._KeyVal** %Head, i8* %Key, i8* %Subkey, i8* %xValue, i32 %WriteAs) #0 {
entry:
  %retval = alloca %struct._KeyVal*, align 8
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %Head.addr = alloca %struct._KeyVal**, align 8
  %Key.addr = alloca i8*, align 8
  %Subkey.addr = alloca i8*, align 8
  %xValue.addr = alloca i8*, align 8
  %WriteAs.addr = alloca i32, align 4
  %p = alloca %struct._KeyVal*, align 8
  %last = alloca %struct._KeyVal*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store %struct._KeyVal** %Head, %struct._KeyVal*** %Head.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  store i8* %Subkey, i8** %Subkey.addr, align 8, !tbaa !1
  store i8* %xValue, i8** %xValue.addr, align 8, !tbaa !1
  store i32 %WriteAs, i32* %WriteAs.addr, align 4, !tbaa !22
  %0 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._KeyVal** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._KeyVal**, %struct._KeyVal*** %Head.addr, align 8, !tbaa !1
  %3 = load %struct._KeyVal*, %struct._KeyVal** %2, align 8, !tbaa !1
  %4 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %Subkey.addr, align 8, !tbaa !1
  %call = call i32 @IsAvailableOnList(%struct._KeyVal* %3, i8* %4, i8* %5, %struct._KeyVal** %p) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.24

if.else:                                          ; preds = %entry
  %6 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  store %struct._KeyVal* %6, %struct._KeyVal** %last, align 8, !tbaa !1
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call1 = call i8* @AllocChunk(%struct.cmsIT8* %7, i32 48) #9
  %8 = bitcast i8* %call1 to %struct._KeyVal*
  store %struct._KeyVal* %8, %struct._KeyVal** %p, align 8, !tbaa !1
  %9 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %cmp = icmp eq %struct._KeyVal* %9, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i32 0, i32 0)) #9
  store %struct._KeyVal* null, %struct._KeyVal** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %call4 = call i8* @AllocString(%struct.cmsIT8* %11, i8* %12) #9
  %13 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Keyword = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %13, i32 0, i32 1
  store i8* %call4, i8** %Keyword, align 8, !tbaa !38
  %14 = load i8*, i8** %Subkey.addr, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %14, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %Subkey.addr, align 8, !tbaa !1
  %call6 = call i8* @AllocString(%struct.cmsIT8* %15, i8* %16) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call6, %cond.false ]
  %17 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Subkey7 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %17, i32 0, i32 3
  store i8* %cond, i8** %Subkey7, align 8, !tbaa !40
  %18 = load %struct._KeyVal**, %struct._KeyVal*** %Head.addr, align 8, !tbaa !1
  %19 = load %struct._KeyVal*, %struct._KeyVal** %18, align 8, !tbaa !1
  %cmp8 = icmp eq %struct._KeyVal* %19, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %cond.end
  %20 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %21 = load %struct._KeyVal**, %struct._KeyVal*** %Head.addr, align 8, !tbaa !1
  store %struct._KeyVal* %20, %struct._KeyVal** %21, align 8, !tbaa !1
  br label %if.end.21

if.else.10:                                       ; preds = %cond.end
  %22 = load i8*, i8** %Subkey.addr, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %22, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.else.10
  %23 = load %struct._KeyVal*, %struct._KeyVal** %last, align 8, !tbaa !1
  %cmp12 = icmp ne %struct._KeyVal* %23, null
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true
  %24 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %25 = load %struct._KeyVal*, %struct._KeyVal** %last, align 8, !tbaa !1
  %NextSubkey = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %25, i32 0, i32 2
  store %struct._KeyVal* %24, %struct._KeyVal** %NextSubkey, align 8, !tbaa !41
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.13
  %26 = load %struct._KeyVal*, %struct._KeyVal** %last, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %26, i32 0, i32 0
  %27 = load %struct._KeyVal*, %struct._KeyVal** %Next, align 8, !tbaa !42
  %cmp14 = icmp ne %struct._KeyVal* %27, null
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct._KeyVal*, %struct._KeyVal** %last, align 8, !tbaa !1
  %Next15 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %28, i32 0, i32 0
  %29 = load %struct._KeyVal*, %struct._KeyVal** %Next15, align 8, !tbaa !42
  store %struct._KeyVal* %29, %struct._KeyVal** %last, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.16

if.end.16:                                        ; preds = %while.end, %land.lhs.true, %if.else.10
  %30 = load %struct._KeyVal*, %struct._KeyVal** %last, align 8, !tbaa !1
  %cmp17 = icmp ne %struct._KeyVal* %30, null
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %31 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %32 = load %struct._KeyVal*, %struct._KeyVal** %last, align 8, !tbaa !1
  %Next19 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %32, i32 0, i32 0
  store %struct._KeyVal* %31, %struct._KeyVal** %Next19, align 8, !tbaa !42
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.9
  %33 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Next22 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %33, i32 0, i32 0
  store %struct._KeyVal* null, %struct._KeyVal** %Next22, align 8, !tbaa !42
  %34 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %NextSubkey23 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %34, i32 0, i32 2
  store %struct._KeyVal* null, %struct._KeyVal** %NextSubkey23, align 8, !tbaa !41
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.then
  %35 = load i32, i32* %WriteAs.addr, align 4, !tbaa !22
  %36 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %WriteAs25 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %36, i32 0, i32 5
  store i32 %35, i32* %WriteAs25, align 4, !tbaa !43
  %37 = load i8*, i8** %xValue.addr, align 8, !tbaa !1
  %cmp26 = icmp ne i8* %37, null
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.end.24
  %38 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %xValue.addr, align 8, !tbaa !1
  %call28 = call i8* @AllocString(%struct.cmsIT8* %38, i8* %39) #9
  %40 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %40, i32 0, i32 4
  store i8* %call28, i8** %Value, align 8, !tbaa !44
  br label %if.end.31

if.else.29:                                       ; preds = %if.end.24
  %41 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value30 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %41, i32 0, i32 4
  store i8* null, i8** %Value30, align 8, !tbaa !44
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.27
  %42 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  store %struct._KeyVal* %42, %struct._KeyVal** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.2
  %43 = bitcast %struct._KeyVal** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load %struct._KeyVal*, %struct._KeyVal** %retval
  ret %struct._KeyVal* %45
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetPropertyStr(i8* %hIT8, i8* %Key, i8* %Val) #0 {
entry:
  %retval = alloca i32, align 4
  %hIT8.addr = alloca i8*, align 8
  %Key.addr = alloca i8*, align 8
  %Val.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  store i8* %Val, i8** %Val.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !22
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %7) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call, i32 0, i32 4
  %8 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %call4 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %6, %struct._KeyVal** %HeaderList, i8* %8, i8* null, i8* %9, i32 1) #9
  %cmp = icmp ne %struct._KeyVal* %call4, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %10 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetPropertyDbl(i8* %hIT8, i8* %cProp, double %Val) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %cProp.addr = alloca i8*, align 8
  %Val.addr = alloca double, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %Buffer = alloca [1024 x i8], align 16
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cProp, i8** %cProp.addr, align 8, !tbaa !1
  store double %Val, double* %Val.addr, align 8, !tbaa !45
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %3) #1
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %DoubleFormatter = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %4, i32 0, i32 18
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter, i32 0, i32 0
  %5 = load double, double* %Val.addr, align 8, !tbaa !45
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %arraydecay1, double %5) #10
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call2 = call %struct._Table* @GetTable(%struct.cmsIT8* %7) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call2, i32 0, i32 4
  %8 = load i8*, i8** %cProp.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %call4 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %6, %struct._KeyVal** %HeaderList, i8* %8, i8* null, i8* %arraydecay3, i32 0) #9
  %cmp = icmp ne %struct._KeyVal* %call4, null
  %conv = zext i1 %cmp to i32
  %9 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %9) #1
  %10 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %conv
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetPropertyHex(i8* %hIT8, i8* %cProp, i32 %Val) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %cProp.addr = alloca i8*, align 8
  %Val.addr = alloca i32, align 4
  %it8 = alloca %struct.cmsIT8*, align 8
  %Buffer = alloca [1024 x i8], align 16
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cProp, i8** %cProp.addr, align 8, !tbaa !1
  store i32 %Val, i32* %Val.addr, align 4, !tbaa !15
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %3) #1
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %4 = load i32, i32* %Val.addr, align 4, !tbaa !15
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %4) #10
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call1 = call %struct._Table* @GetTable(%struct.cmsIT8* %6) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call1, i32 0, i32 4
  %7 = load i8*, i8** %cProp.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %call3 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %5, %struct._KeyVal** %HeaderList, i8* %7, i8* null, i8* %arraydecay2, i32 2) #9
  %cmp = icmp ne %struct._KeyVal* %call3, null
  %conv = zext i1 %cmp to i32
  %8 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %8) #1
  %9 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetPropertyUncooked(i8* %hIT8, i8* %Key, i8* %Buffer) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %Key.addr = alloca i8*, align 8
  %Buffer.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %4) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call, i32 0, i32 4
  %5 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %call1 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %3, %struct._KeyVal** %HeaderList, i8* %5, i8* null, i8* %6, i32 0) #9
  %cmp = icmp ne %struct._KeyVal* %call1, null
  %conv = zext i1 %cmp to i32
  %7 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetPropertyMulti(i8* %hIT8, i8* %Key, i8* %SubKey, i8* %Buffer) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %Key.addr = alloca i8*, align 8
  %SubKey.addr = alloca i8*, align 8
  %Buffer.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  store i8* %SubKey, i8** %SubKey.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %4) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call, i32 0, i32 4
  %5 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %SubKey.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %call1 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %3, %struct._KeyVal** %HeaderList, i8* %5, i8* %6, i8* %7, i32 4) #9
  %cmp = icmp ne %struct._KeyVal* %call1, null
  %conv = zext i1 %cmp to i32
  %8 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8GetProperty(i8* %hIT8, i8* %Key) #0 {
entry:
  %retval = alloca i8*, align 8
  %hIT8.addr = alloca i8*, align 8
  %Key.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %p = alloca %struct._KeyVal*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %4) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call, i32 0, i32 4
  %5 = load %struct._KeyVal*, %struct._KeyVal** %HeaderList, align 8, !tbaa !18
  %6 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %call1 = call i32 @IsAvailableOnList(%struct._KeyVal* %5, i8* %6, i8* null, %struct._KeyVal** %p) #9
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %7, i32 0, i32 4
  %8 = load i8*, i8** %Value, align 8, !tbaa !44
  store i8* %8, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @IsAvailableOnList(%struct._KeyVal* %p, i8* %Key, i8* %Subkey, %struct._KeyVal** %LastPtr) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct._KeyVal*, align 8
  %Key.addr = alloca i8*, align 8
  %Subkey.addr = alloca i8*, align 8
  %LastPtr.addr = alloca %struct._KeyVal**, align 8
  store %struct._KeyVal* %p, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  store i8* %Subkey, i8** %Subkey.addr, align 8, !tbaa !1
  store %struct._KeyVal** %LastPtr, %struct._KeyVal*** %LastPtr.addr, align 8, !tbaa !1
  %0 = load %struct._KeyVal**, %struct._KeyVal*** %LastPtr.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._KeyVal** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %2 = load %struct._KeyVal**, %struct._KeyVal*** %LastPtr.addr, align 8, !tbaa !1
  store %struct._KeyVal* %1, %struct._KeyVal** %2, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._KeyVal* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._KeyVal**, %struct._KeyVal*** %LastPtr.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct._KeyVal** %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.body
  %5 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %6 = load %struct._KeyVal**, %struct._KeyVal*** %LastPtr.addr, align 8, !tbaa !1
  store %struct._KeyVal* %5, %struct._KeyVal** %6, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %for.body
  %7 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !22
  %conv = sext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv, 35
  br i1 %cmp4, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.3
  %9 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %10 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %Keyword = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %10, i32 0, i32 1
  %11 = load i8*, i8** %Keyword, align 8, !tbaa !38
  %call = call i32 @cmsstrcasecmp(i8* %9, i8* %11) #9
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  br label %for.end

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %12 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %12, i32 0, i32 0
  %13 = load %struct._KeyVal*, %struct._KeyVal** %Next, align 8, !tbaa !42
  store %struct._KeyVal* %13, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %14 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %cmp12 = icmp eq %struct._KeyVal* %14, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.end
  %15 = load i8*, i8** %Subkey.addr, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %15, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.38, %if.end.19
  %16 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %cmp21 = icmp ne %struct._KeyVal* %16, null
  br i1 %cmp21, label %for.body.23, label %for.end.39

for.body.23:                                      ; preds = %for.cond.20
  %17 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %Subkey24 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %17, i32 0, i32 3
  %18 = load i8*, i8** %Subkey24, align 8, !tbaa !40
  %cmp25 = icmp eq i8* %18, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.23
  br label %for.inc.38

if.end.28:                                        ; preds = %for.body.23
  %19 = load %struct._KeyVal**, %struct._KeyVal*** %LastPtr.addr, align 8, !tbaa !1
  %tobool29 = icmp ne %struct._KeyVal** %19, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %20 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %21 = load %struct._KeyVal**, %struct._KeyVal*** %LastPtr.addr, align 8, !tbaa !1
  store %struct._KeyVal* %20, %struct._KeyVal** %21, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %22 = load i8*, i8** %Subkey.addr, align 8, !tbaa !1
  %23 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %Subkey32 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %23, i32 0, i32 3
  %24 = load i8*, i8** %Subkey32, align 8, !tbaa !40
  %call33 = call i32 @cmsstrcasecmp(i8* %22, i8* %24) #9
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.31
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37, %if.then.27
  %25 = load %struct._KeyVal*, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  %NextSubkey = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %25, i32 0, i32 2
  %26 = load %struct._KeyVal*, %struct._KeyVal** %NextSubkey, align 8, !tbaa !41
  store %struct._KeyVal* %26, %struct._KeyVal** %p.addr, align 8, !tbaa !1
  br label %for.cond.20

for.end.39:                                       ; preds = %for.cond.20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.39, %if.then.36, %if.then.18, %if.then.14
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define double @cmsIT8GetPropertyDbl(i8* %hIT8, i8* %cProp) #0 {
entry:
  %retval = alloca double, align 8
  %hIT8.addr = alloca i8*, align 8
  %cProp.addr = alloca i8*, align 8
  %v = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cProp, i8** %cProp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cProp.addr, align 8, !tbaa !1
  %call = call i8* @cmsIT8GetProperty(i8* %1, i8* %2) #9
  store i8* %call, i8** %v, align 8, !tbaa !1
  %3 = load i8*, i8** %v, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %v, align 8, !tbaa !1
  %call1 = call double @ParseFloatNumber(i8* %4) #9
  store double %call1, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast i8** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  %6 = load double, double* %retval
  ret double %6
}

; Function Attrs: nounwind uwtable
define internal double @ParseFloatNumber(i8* %Buffer) #0 {
entry:
  %retval = alloca double, align 8
  %Buffer.addr = alloca i8*, align 8
  %dnum = alloca double, align 8
  %sign = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %frac = alloca double, align 8
  %prec = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %e = alloca i32, align 4
  %sgn = alloca i32, align 4
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  %0 = bitcast double* %dnum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0.000000e+00, double* %dnum, align 8, !tbaa !45
  %1 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1, i32* %sign, align 4, !tbaa !15
  %2 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !22
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !22
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %7 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !22
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  %cond = select i1 %cmp8, i32 -1, i32 1
  store i32 %cond, i32* %sign, align 4, !tbaa !15
  %9 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.end.10
  %10 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !22
  %conv11 = sext i8 %11 to i32
  %tobool = icmp ne i32 %conv11, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !22
  %conv12 = sext i8 %13 to i32
  %idxprom = sext i32 %conv12 to i64
  %call = call i16** @__ctype_b_loc() #11
  %14 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %conv13 = zext i16 %15 to i32
  %and = and i32 %conv13, 2048
  %tobool14 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool14, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load double, double* %dnum, align 8, !tbaa !45
  %mul = fmul double %17, 1.000000e+01
  %18 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !22
  %conv15 = sext i8 %19 to i32
  %sub = sub nsw i32 %conv15, 48
  %conv16 = sitofp i32 %sub to double
  %add = fadd double %mul, %conv16
  store double %add, double* %dnum, align 8, !tbaa !45
  %20 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !22
  %tobool17 = icmp ne i8 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %while.body
  %22 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr19, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !22
  %conv21 = sext i8 %24 to i32
  %cmp22 = icmp eq i32 %conv21, 46
  br i1 %cmp22, label %if.then.24, label %if.end.54

if.then.24:                                       ; preds = %while.end
  %25 = bitcast double* %frac to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store double 0.000000e+00, double* %frac, align 8, !tbaa !45
  %26 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %prec, align 4, !tbaa !15
  %27 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !22
  %tobool25 = icmp ne i8 %28, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.24
  %29 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr27, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.24
  br label %while.cond.29

while.cond.29:                                    ; preds = %if.end.50, %if.end.28
  %30 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !22
  %conv30 = sext i8 %31 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.rhs.32, label %land.end.40

land.rhs.32:                                      ; preds = %while.cond.29
  %32 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !22
  %conv33 = sext i8 %33 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %call35 = call i16** @__ctype_b_loc() #11
  %34 = load i16*, i16** %call35, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %34, i64 %idxprom34
  %35 = load i16, i16* %arrayidx36, align 2, !tbaa !46
  %conv37 = zext i16 %35 to i32
  %and38 = and i32 %conv37, 2048
  %tobool39 = icmp ne i32 %and38, 0
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.32, %while.cond.29
  %36 = phi i1 [ false, %while.cond.29 ], [ %tobool39, %land.rhs.32 ]
  br i1 %36, label %while.body.41, label %while.end.51

while.body.41:                                    ; preds = %land.end.40
  %37 = load double, double* %frac, align 8, !tbaa !45
  %mul42 = fmul double %37, 1.000000e+01
  %38 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !22
  %conv43 = sext i8 %39 to i32
  %sub44 = sub nsw i32 %conv43, 48
  %conv45 = sitofp i32 %sub44 to double
  %add46 = fadd double %mul42, %conv45
  store double %add46, double* %frac, align 8, !tbaa !45
  %40 = load i32, i32* %prec, align 4, !tbaa !15
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %prec, align 4, !tbaa !15
  %41 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !22
  %tobool47 = icmp ne i8 %42, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %while.body.41
  %43 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr49, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %while.body.41
  br label %while.cond.29

while.end.51:                                     ; preds = %land.end.40
  %44 = load double, double* %dnum, align 8, !tbaa !45
  %45 = load double, double* %frac, align 8, !tbaa !45
  %46 = load i32, i32* %prec, align 4, !tbaa !15
  %call52 = call double @xpow10(i32 %46) #9
  %div = fdiv double %45, %call52
  %add53 = fadd double %44, %div
  store double %add53, double* %dnum, align 8, !tbaa !45
  %47 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast double* %frac to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %if.end.54

if.end.54:                                        ; preds = %while.end.51, %while.end
  %49 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !22
  %conv55 = sext i8 %50 to i32
  %tobool56 = icmp ne i32 %conv55, 0
  br i1 %tobool56, label %land.lhs.true, label %if.end.119

land.lhs.true:                                    ; preds = %if.end.54
  %51 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !22
  %conv57 = sext i8 %53 to i32
  %idxprom58 = sext i32 %conv57 to i64
  %call59 = call i32** @__ctype_toupper_loc() #11
  %54 = load i32*, i32** %call59, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %54, i64 %idxprom58
  %55 = load i32, i32* %arrayidx60, align 4, !tbaa !15
  store i32 %55, i32* %__res, align 4, !tbaa !15
  %56 = load i32, i32* %__res, align 4, !tbaa !15
  store i32 %56, i32* %tmp, !tbaa !15
  %57 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = load i32, i32* %tmp, !tbaa !15
  %cmp61 = icmp eq i32 %58, 69
  br i1 %cmp61, label %if.then.63, label %if.end.119

if.then.63:                                       ; preds = %land.lhs.true
  %59 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %sgn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !22
  %tobool66 = icmp ne i8 %62, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.63
  %63 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr68, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.63
  store i32 1, i32* %sgn, align 4, !tbaa !15
  %64 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !22
  %conv70 = sext i8 %65 to i32
  %cmp71 = icmp eq i32 %conv70, 45
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %if.end.69
  store i32 -1, i32* %sgn, align 4, !tbaa !15
  %66 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !22
  %tobool74 = icmp ne i8 %67, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.then.73
  %68 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr76, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.then.73
  br label %if.end.87

if.else:                                          ; preds = %if.end.69
  %69 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !22
  %conv78 = sext i8 %70 to i32
  %cmp79 = icmp eq i32 %conv78, 43
  br i1 %cmp79, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.else
  store i32 1, i32* %sgn, align 4, !tbaa !15
  %71 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !22
  %tobool82 = icmp ne i8 %72, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.then.81
  %73 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr84 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr84, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.then.81
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.else
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.77
  store i32 0, i32* %e, align 4, !tbaa !15
  br label %while.cond.88

while.cond.88:                                    ; preds = %if.end.114, %if.end.87
  %74 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !22
  %conv89 = sext i8 %75 to i32
  %tobool90 = icmp ne i32 %conv89, 0
  br i1 %tobool90, label %land.rhs.91, label %land.end.99

land.rhs.91:                                      ; preds = %while.cond.88
  %76 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !22
  %conv92 = sext i8 %77 to i32
  %idxprom93 = sext i32 %conv92 to i64
  %call94 = call i16** @__ctype_b_loc() #11
  %78 = load i16*, i16** %call94, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i16, i16* %78, i64 %idxprom93
  %79 = load i16, i16* %arrayidx95, align 2, !tbaa !46
  %conv96 = zext i16 %79 to i32
  %and97 = and i32 %conv96, 2048
  %tobool98 = icmp ne i32 %and97, 0
  br label %land.end.99

land.end.99:                                      ; preds = %land.rhs.91, %while.cond.88
  %80 = phi i1 [ false, %while.cond.88 ], [ %tobool98, %land.rhs.91 ]
  br i1 %80, label %while.body.100, label %while.end.115

while.body.100:                                   ; preds = %land.end.99
  %81 = load i32, i32* %e, align 4, !tbaa !15
  %conv101 = sitofp i32 %81 to double
  %mul102 = fmul double %conv101, 1.000000e+01
  %cmp103 = fcmp olt double %mul102, 0x41DFFFFFFFC00000
  br i1 %cmp103, label %if.then.105, label %if.end.110

if.then.105:                                      ; preds = %while.body.100
  %82 = load i32, i32* %e, align 4, !tbaa !15
  %mul106 = mul nsw i32 %82, 10
  %83 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !22
  %conv107 = sext i8 %84 to i32
  %sub108 = sub nsw i32 %conv107, 48
  %add109 = add nsw i32 %mul106, %sub108
  store i32 %add109, i32* %e, align 4, !tbaa !15
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.105, %while.body.100
  %85 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !22
  %tobool111 = icmp ne i8 %86, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.110
  %87 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr113, i8** %Buffer.addr, align 8, !tbaa !1
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.110
  br label %while.cond.88

while.end.115:                                    ; preds = %land.end.99
  %88 = load i32, i32* %sgn, align 4, !tbaa !15
  %89 = load i32, i32* %e, align 4, !tbaa !15
  %mul116 = mul nsw i32 %88, %89
  store i32 %mul116, i32* %e, align 4, !tbaa !15
  %90 = load double, double* %dnum, align 8, !tbaa !45
  %91 = load i32, i32* %e, align 4, !tbaa !15
  %call117 = call double @xpow10(i32 %91) #9
  %mul118 = fmul double %90, %call117
  store double %mul118, double* %dnum, align 8, !tbaa !45
  %92 = bitcast i32* %sgn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  br label %if.end.119

if.end.119:                                       ; preds = %while.end.115, %land.lhs.true, %if.end.54
  %94 = load i32, i32* %sign, align 4, !tbaa !15
  %conv120 = sitofp i32 %94 to double
  %95 = load double, double* %dnum, align 8, !tbaa !45
  %mul121 = fmul double %conv120, %95
  store double %mul121, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.119, %if.then
  %96 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast double* %dnum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = load double, double* %retval
  ret double %98
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8GetPropertyMulti(i8* %hIT8, i8* %Key, i8* %SubKey) #0 {
entry:
  %retval = alloca i8*, align 8
  %hIT8.addr = alloca i8*, align 8
  %Key.addr = alloca i8*, align 8
  %SubKey.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %p = alloca %struct._KeyVal*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Key, i8** %Key.addr, align 8, !tbaa !1
  store i8* %SubKey, i8** %SubKey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %4) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call, i32 0, i32 4
  %5 = load %struct._KeyVal*, %struct._KeyVal** %HeaderList, align 8, !tbaa !18
  %6 = load i8*, i8** %Key.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %SubKey.addr, align 8, !tbaa !1
  %call1 = call i32 @IsAvailableOnList(%struct._KeyVal* %5, i8* %6, i8* %7, %struct._KeyVal** %p) #9
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %8, i32 0, i32 4
  %9 = load i8*, i8** %Value, align 8, !tbaa !44
  store i8* %9, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetDataFormat(i8* %h, i32 %n, i8* %Sample) #0 {
entry:
  %h.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %Sample.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %h, i8** %h.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !15
  store i8* %Sample, i8** %Sample.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %h.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %4 = load i32, i32* %n.addr, align 4, !tbaa !15
  %5 = load i8*, i8** %Sample.addr, align 8, !tbaa !1
  %call = call i32 @SetDataFormat(%struct.cmsIT8* %3, i32 %4, i8* %5) #9
  %6 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @SetDataFormat(%struct.cmsIT8* %it8, i32 %n, i8* %label) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %n.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !15
  store i8* %label, i8** %label.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %1) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %2 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat = getelementptr inbounds %struct._Table, %struct._Table* %2, i32 0, i32 5
  %3 = load i8**, i8*** %DataFormat, align 8, !tbaa !20
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @AllocateDataFormat(%struct.cmsIT8* %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %n.addr, align 4, !tbaa !15
  %6 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %6, i32 0, i32 1
  %7 = load i32, i32* %nSamples, align 4, !tbaa !48
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call2 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i32 0, i32 0)) #9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %9 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat4 = getelementptr inbounds %struct._Table, %struct._Table* %9, i32 0, i32 5
  %10 = load i8**, i8*** %DataFormat4, align 8, !tbaa !20
  %tobool5 = icmp ne i8** %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.3
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %label.addr, align 8, !tbaa !1
  %call7 = call i8* @AllocString(%struct.cmsIT8* %11, i8* %12) #9
  %13 = load i32, i32* %n.addr, align 4, !tbaa !15
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat8 = getelementptr inbounds %struct._Table, %struct._Table* %14, i32 0, i32 5
  %15 = load i8**, i8*** %DataFormat8, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  store i8* %call7, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.3
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.1
  %16 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SaveToFile(i8* %hIT8, i8* %cFileName) #0 {
entry:
  %retval = alloca i32, align 4
  %hIT8.addr = alloca i8*, align 8
  %cFileName.addr = alloca i8*, align 8
  %sd = alloca %struct.SAVESTREAM, align 8
  %i = alloca i32, align 4
  %it8 = alloca %struct.cmsIT8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cFileName, i8** %cFileName.addr, align 8, !tbaa !1
  %0 = bitcast %struct.SAVESTREAM* %sd to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.cmsIT8*
  store %struct.cmsIT8* %4, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %5 = bitcast %struct.SAVESTREAM* %sd to i8*
  %call = call i8* @memset(i8* %5, i32 0, i64 32) #10
  %6 = load i8*, i8** %cFileName.addr, align 8, !tbaa !1
  %call1 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #9
  %stream = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %stream, align 8, !tbaa !49
  %stream2 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream2, align 8, !tbaa !49
  %tobool = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !15
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 0
  %10 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !15
  %call3 = call i32 @cmsIT8SetTable(i8* %11, i32 %12) #9
  %13 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @WriteHeader(%struct.cmsIT8* %13, %struct.SAVESTREAM* %sd) #9
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @WriteDataFormat(%struct.SAVESTREAM* %sd, %struct.cmsIT8* %14) #9
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @WriteData(%struct.SAVESTREAM* %sd, %struct.cmsIT8* %15) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %stream4 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream4, align 8, !tbaa !49
  %call5 = call i32 @fclose(%struct._IO_FILE* %17) #9
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %18 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.SAVESTREAM* %sd to i8*
  call void @llvm.lifetime.end(i64 32, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @WriteHeader(%struct.cmsIT8* %it8, %struct.SAVESTREAM* %fp) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %fp.addr = alloca %struct.SAVESTREAM*, align 8
  %p = alloca %struct._KeyVal*, align 8
  %t = alloca %struct._Table*, align 8
  %Pt = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store %struct.SAVESTREAM* %fp, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %0 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %2) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %3 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %4 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SheetType = getelementptr inbounds %struct._Table, %struct._Table* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %SheetType, i32 0, i32 0
  call void @WriteStr(%struct.SAVESTREAM* %3, i8* %arraydecay) #9
  %5 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0)) #9
  %6 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %6, i32 0, i32 4
  %7 = load %struct._KeyVal*, %struct._KeyVal** %HeaderList, align 8, !tbaa !18
  store %struct._KeyVal* %7, %struct._KeyVal** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %8 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %cmp = icmp ne %struct._KeyVal* %8, null
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %9 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Keyword = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %9, i32 0, i32 1
  %10 = load i8*, i8** %Keyword, align 8, !tbaa !38
  %11 = load i8, i8* %10, align 1, !tbaa !22
  %conv = sext i8 %11 to i32
  %cmp1 = icmp eq i32 %conv, 35
  br i1 %cmp1, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %12 = bitcast i8** %Pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0)) #9
  %14 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %14, i32 0, i32 4
  %15 = load i8*, i8** %Value, align 8, !tbaa !44
  store i8* %15, i8** %Pt, align 8, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then
  %16 = load i8*, i8** %Pt, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !22
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %18 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %Pt, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !22
  %conv5 = sext i8 %20 to i32
  call void (%struct.SAVESTREAM*, i8*, ...) @Writef(%struct.SAVESTREAM* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i32 %conv5) #9
  %21 = load i8*, i8** %Pt, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !22
  %conv6 = sext i8 %22 to i32
  %cmp7 = icmp eq i32 %conv6, 10
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body.4
  %23 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #9
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i8*, i8** %Pt, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %Pt, align 8, !tbaa !1
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %25 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0)) #9
  %26 = bitcast i8** %Pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %for.inc.36

if.end.10:                                        ; preds = %for.body
  %27 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ValidKeywords = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %27, i32 0, i32 11
  %28 = load %struct._KeyVal*, %struct._KeyVal** %ValidKeywords, align 8, !tbaa !29
  %29 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Keyword11 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %29, i32 0, i32 1
  %30 = load i8*, i8** %Keyword11, align 8, !tbaa !38
  %call12 = call i32 @IsAvailableOnList(%struct._KeyVal* %28, i8* %30, i8* null, %struct._KeyVal** null) #9
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  %31 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %32 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Keyword15 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %32, i32 0, i32 1
  %33 = load i8*, i8** %Keyword15, align 8, !tbaa !38
  %call16 = call %struct._KeyVal* @AddAvailableProperty(%struct.cmsIT8* %31, i8* %33, i32 0) #9
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.10
  %34 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %35 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Keyword18 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %35, i32 0, i32 1
  %36 = load i8*, i8** %Keyword18, align 8, !tbaa !38
  call void @WriteStr(%struct.SAVESTREAM* %34, i8* %36) #9
  %37 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value19 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %37, i32 0, i32 4
  %38 = load i8*, i8** %Value19, align 8, !tbaa !44
  %tobool20 = icmp ne i8* %38, null
  br i1 %tobool20, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.end.17
  %39 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %WriteAs = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %39, i32 0, i32 5
  %40 = load i32, i32* %WriteAs, align 4, !tbaa !43
  switch i32 %40, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.then.21
  %41 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %42 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value22 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %42, i32 0, i32 4
  %43 = load i8*, i8** %Value22, align 8, !tbaa !44
  call void (%struct.SAVESTREAM*, i8*, ...) @Writef(%struct.SAVESTREAM* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8* %43) #9
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then.21
  %44 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %45 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value24 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %45, i32 0, i32 4
  %46 = load i8*, i8** %Value24, align 8, !tbaa !44
  call void (%struct.SAVESTREAM*, i8*, ...) @Writef(%struct.SAVESTREAM* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* %46) #9
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.21
  %47 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %48 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value26 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %48, i32 0, i32 4
  %49 = load i8*, i8** %Value26, align 8, !tbaa !44
  %call27 = call i32 @atoi(i8* %49) #12
  call void (%struct.SAVESTREAM*, i8*, ...) @Writef(%struct.SAVESTREAM* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i32 %call27) #9
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then.21
  %50 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %51 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value29 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %51, i32 0, i32 4
  %52 = load i8*, i8** %Value29, align 8, !tbaa !44
  %call30 = call i32 @atoi(i8* %52) #12
  call void (%struct.SAVESTREAM*, i8*, ...) @Writef(%struct.SAVESTREAM* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 %call30) #9
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then.21
  %53 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %54 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Subkey = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %54, i32 0, i32 3
  %55 = load i8*, i8** %Subkey, align 8, !tbaa !40
  %56 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value32 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %56, i32 0, i32 4
  %57 = load i8*, i8** %Value32, align 8, !tbaa !44
  call void (%struct.SAVESTREAM*, i8*, ...) @Writef(%struct.SAVESTREAM* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i8* %55, i8* %57) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.21
  %58 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %59 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %WriteAs33 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %59, i32 0, i32 5
  %60 = load i32, i32* %WriteAs33, align 4, !tbaa !43
  %call34 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0), i32 %60) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.31, %sw.bb.28, %sw.bb.25, %sw.bb.23, %sw.bb
  br label %if.end.35

if.end.35:                                        ; preds = %sw.epilog, %if.end.17
  %61 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0)) #9
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35, %for.end
  %62 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %62, i32 0, i32 0
  %63 = load %struct._KeyVal*, %struct._KeyVal** %Next, align 8, !tbaa !42
  store %struct._KeyVal* %63, %struct._KeyVal** %p, align 8, !tbaa !1
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.37, %sw.default
  %64 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
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
define internal void @WriteDataFormat(%struct.SAVESTREAM* %fp, %struct.cmsIT8* %it8) #0 {
entry:
  %fp.addr = alloca %struct.SAVESTREAM*, align 8
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %i = alloca i32, align 4
  %nSamples = alloca i32, align 4
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.SAVESTREAM* %fp, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nSamples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %3) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %4 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat = getelementptr inbounds %struct._Table, %struct._Table* %4, i32 0, i32 5
  %5 = load i8**, i8*** %DataFormat, align 8, !tbaa !20
  %tobool = icmp ne i8** %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0)) #9
  %7 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #9
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %9 = bitcast %struct.cmsIT8* %8 to i8*
  %call1 = call i8* @cmsIT8GetProperty(i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0)) #9
  %call2 = call i32 @atoi(i8* %call1) #12
  store i32 %call2, i32* %nSamples, align 4, !tbaa !15
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !15
  %11 = load i32, i32* %nSamples, align 4, !tbaa !15
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat3 = getelementptr inbounds %struct._Table, %struct._Table* %14, i32 0, i32 5
  %15 = load i8**, i8*** %DataFormat3, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %12, i8* %16) #9
  %17 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !15
  %19 = load i32, i32* %nSamples, align 4, !tbaa !15
  %sub = sub nsw i32 %19, 1
  %cmp4 = icmp eq i32 %18, %sub
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0)
  call void @WriteStr(%struct.SAVESTREAM* %17, i8* %cond) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0)) #9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %nSamples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
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
define internal void @WriteData(%struct.SAVESTREAM* %fp, %struct.cmsIT8* %it8) #0 {
entry:
  %fp.addr = alloca %struct.SAVESTREAM*, align 8
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  %ptr = alloca i8*, align 8
  store %struct.SAVESTREAM* %fp, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %3) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %4 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._Table, %struct._Table* %4, i32 0, i32 6
  %5 = load i8**, i8*** %Data, align 8, !tbaa !21
  %tobool = icmp ne i8** %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0)) #9
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %8 = bitcast %struct.cmsIT8* %7 to i8*
  %call1 = call i8* @cmsIT8GetProperty(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #9
  %call2 = call i32 @atoi(i8* %call1) #12
  %9 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %9, i32 0, i32 2
  store i32 %call2, i32* %nPatches, align 4, !tbaa !51
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !15
  %11 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches3 = getelementptr inbounds %struct._Table, %struct._Table* %11, i32 0, i32 2
  %12 = load i32, i32* %nPatches3, align 4, !tbaa !51
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %13 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #9
  store i32 0, i32* %j, align 4, !tbaa !15
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4, !tbaa !15
  %15 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %15, i32 0, i32 1
  %16 = load i32, i32* %nSamples, align 4, !tbaa !48
  %cmp5 = icmp slt i32 %14, %16
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %17 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !15
  %19 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples7 = getelementptr inbounds %struct._Table, %struct._Table* %19, i32 0, i32 1
  %20 = load i32, i32* %nSamples7, align 4, !tbaa !48
  %mul = mul nsw i32 %18, %20
  %21 = load i32, i32* %j, align 4, !tbaa !15
  %add = add nsw i32 %mul, %21
  %idxprom = sext i32 %add to i64
  %22 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data8 = getelementptr inbounds %struct._Table, %struct._Table* %22, i32 0, i32 6
  %23 = load i8**, i8*** %Data8, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 %idxprom
  %24 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %24, i8** %ptr, align 8, !tbaa !1
  %25 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %25, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body.6
  %26 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0)) #9
  br label %if.end.16

if.else:                                          ; preds = %for.body.6
  %27 = load i8*, i8** %ptr, align 8, !tbaa !1
  %call11 = call i8* @strchr(i8* %27, i32 32) #10
  %cmp12 = icmp ne i8* %call11, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  %28 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i32 0, i32 0)) #9
  %29 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %ptr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %29, i8* %30) #9
  %31 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i32 0, i32 0)) #9
  br label %if.end.15

if.else.14:                                       ; preds = %if.else
  %32 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %ptr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %32, i8* %33) #9
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.10
  %34 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  %35 = load i32, i32* %j, align 4, !tbaa !15
  %36 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples17 = getelementptr inbounds %struct._Table, %struct._Table* %36, i32 0, i32 1
  %37 = load i32, i32* %nSamples17, align 4, !tbaa !48
  %sub = sub nsw i32 %37, 1
  %cmp18 = icmp eq i32 %35, %sub
  %cond = select i1 %cmp18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0)
  call void @WriteStr(%struct.SAVESTREAM* %34, i8* %cond) #9
  %38 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %39 = load i32, i32* %j, align 4, !tbaa !15
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4, !tbaa !15
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %40 = load i32, i32* %i, align 4, !tbaa !15
  %inc20 = add nsw i32 %40, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %41 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %fp.addr, align 8, !tbaa !1
  call void @WriteStr(%struct.SAVESTREAM* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0)) #9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.21, %if.then
  %42 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
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

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SaveToMem(i8* %hIT8, i8* %MemPtr, i32* %BytesNeeded) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %MemPtr.addr = alloca i8*, align 8
  %BytesNeeded.addr = alloca i32*, align 8
  %sd = alloca %struct.SAVESTREAM, align 8
  %i = alloca i32, align 4
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %MemPtr, i8** %MemPtr.addr, align 8, !tbaa !1
  store i32* %BytesNeeded, i32** %BytesNeeded.addr, align 8, !tbaa !1
  %0 = bitcast %struct.SAVESTREAM* %sd to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.cmsIT8*
  store %struct.cmsIT8* %4, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %5 = bitcast %struct.SAVESTREAM* %sd to i8*
  %call = call i8* @memset(i8* %5, i32 0, i64 32) #10
  %stream = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %stream, align 8, !tbaa !49
  %6 = load i8*, i8** %MemPtr.addr, align 8, !tbaa !1
  %Base = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 1
  store i8* %6, i8** %Base, align 8, !tbaa !52
  %Base1 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 1
  %7 = load i8*, i8** %Base1, align 8, !tbaa !52
  %Ptr = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 2
  store i8* %7, i8** %Ptr, align 8, !tbaa !53
  %Used = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 3
  store i32 0, i32* %Used, align 4, !tbaa !54
  %Base2 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 1
  %8 = load i8*, i8** %Base2, align 8, !tbaa !52
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32*, i32** %BytesNeeded.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !15
  %Max = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 4
  store i32 %10, i32* %Max, align 4, !tbaa !55
  br label %if.end

if.else:                                          ; preds = %entry
  %Max3 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 4
  store i32 0, i32* %Max3, align 4, !tbaa !55
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !15
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 0
  %13 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !15
  %call4 = call i32 @cmsIT8SetTable(i8* %14, i32 %15) #9
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @WriteHeader(%struct.cmsIT8* %16, %struct.SAVESTREAM* %sd) #9
  %17 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @WriteDataFormat(%struct.SAVESTREAM* %sd, %struct.cmsIT8* %17) #9
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @WriteData(%struct.SAVESTREAM* %sd, %struct.cmsIT8* %18) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %Used5 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 3
  %20 = load i32, i32* %Used5, align 4, !tbaa !54
  %inc6 = add i32 %20, 1
  store i32 %inc6, i32* %Used5, align 4, !tbaa !54
  %Base7 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 1
  %21 = load i8*, i8** %Base7, align 8, !tbaa !52
  %tobool8 = icmp ne i8* %21, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %for.end
  %Ptr10 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 2
  %22 = load i8*, i8** %Ptr10, align 8, !tbaa !53
  store i8 0, i8* %22, align 1, !tbaa !22
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %for.end
  %Used12 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %sd, i32 0, i32 3
  %23 = load i32, i32* %Used12, align 4, !tbaa !54
  %24 = load i32*, i32** %BytesNeeded.addr, align 8, !tbaa !1
  store i32 %23, i32* %24, align 4, !tbaa !15
  %25 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.SAVESTREAM* %sd to i8*
  call void @llvm.lifetime.end(i64 32, i8* %27) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8LoadFromMem(%struct._cmsContext_struct* %ContextID, i8* %Ptr, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hIT8 = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Ptr, i8** %Ptr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !15
  %0 = bitcast i8** %hIT8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2297, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.cmsIT8LoadFromMem, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i32, i32* %len.addr, align 4, !tbaa !15
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2298, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.cmsIT8LoadFromMem, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %6, %cond.true.2
  %7 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !15
  %call = call i32 @IsMyBlock(i8* %7, i32 %8) #9
  store i32 %call, i32* %type, align 4, !tbaa !15
  %9 = load i32, i32* %type, align 4, !tbaa !15
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.4
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call6 = call i8* @cmsIT8Alloc(%struct._cmsContext_struct* %10) #9
  store i8* %call6, i8** %hIT8, align 8, !tbaa !1
  %11 = load i8*, i8** %hIT8, align 8, !tbaa !1
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %12 = load i8*, i8** %hIT8, align 8, !tbaa !1
  %13 = bitcast i8* %12 to %struct.cmsIT8*
  store %struct.cmsIT8* %13, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %15 = load i32, i32* %len.addr, align 4, !tbaa !15
  %add = add i32 %15, 1
  %call9 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %14, i32 %add) #9
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %16, i32 0, i32 17
  store i8* %call9, i8** %MemoryBlock, align 8, !tbaa !14
  %17 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock10 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %17, i32 0, i32 17
  %18 = load i8*, i8** %MemoryBlock10, align 8, !tbaa !14
  %19 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %20 = load i32, i32* %len.addr, align 4, !tbaa !15
  %conv = zext i32 %20 to i64
  %call11 = call i8* @strncpy(i8* %18, i8* %19, i64 %conv) #10
  %21 = load i32, i32* %len.addr, align 4, !tbaa !15
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock12 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %22, i32 0, i32 17
  %23 = load i8*, i8** %MemoryBlock12, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %24 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %24, i32 0, i32 15
  %arrayidx13 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack, i32 0, i64 0
  %25 = load %struct._FileContext*, %struct._FileContext** %arrayidx13, align 8, !tbaa !1
  %FileName = getelementptr inbounds %struct._FileContext, %struct._FileContext* %25, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %FileName, i32 0, i32 0
  %call14 = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i64 255) #10
  %26 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock15 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %26, i32 0, i32 17
  %27 = load i8*, i8** %MemoryBlock15, align 8, !tbaa !14
  %28 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %Source = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %28, i32 0, i32 13
  store i8* %27, i8** %Source, align 8, !tbaa !32
  %29 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %30 = load i32, i32* %type, align 4, !tbaa !15
  %sub = sub nsw i32 %30, 1
  %call16 = call i32 @ParseIT8(%struct.cmsIT8* %29, i32 %sub) #9
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.8
  %31 = load i8*, i8** %hIT8, align 8, !tbaa !1
  call void @cmsIT8Free(i8* %31) #9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.8
  %32 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @CookPointers(%struct.cmsIT8* %32) #9
  %33 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %nTable = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %33, i32 0, i32 1
  store i32 0, i32* %nTable, align 4, !tbaa !17
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %35 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock20 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %35, i32 0, i32 17
  %36 = load i8*, i8** %MemoryBlock20, align 8, !tbaa !14
  call void @_cmsFree(%struct._cmsContext_struct* %34, i8* %36) #9
  %37 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %MemoryBlock21 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %37, i32 0, i32 17
  store i8* null, i8** %MemoryBlock21, align 8, !tbaa !14
  %38 = load i8*, i8** %hIT8, align 8, !tbaa !1
  store i8* %38, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.7, %if.then
  %39 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %hIT8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i8*, i8** %retval
  ret i8* %42
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @IsMyBlock(i8* %Buffer, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %Buffer.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %words = alloca i32, align 4
  %space = alloca i32, align 4
  %quot = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !15
  %0 = bitcast i32* %words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %words, align 4, !tbaa !15
  %1 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %space, align 4, !tbaa !15
  %2 = bitcast i32* %quot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %quot, align 4, !tbaa !15
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %n.addr, align 4, !tbaa !15
  %cmp = icmp slt i32 %4, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %n.addr, align 4, !tbaa !15
  %cmp1 = icmp sgt i32 %5, 132
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 132, i32* %n.addr, align 4, !tbaa !15
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 1, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %6 = load i32, i32* %i, align 4, !tbaa !15
  %7 = load i32, i32* %n.addr, align 4, !tbaa !15
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb.9
    i32 32, label %sw.bb.9
    i32 34, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %11 = load i32, i32* %quot, align 4, !tbaa !15
  %cmp5 = icmp eq i32 %11, 1
  br i1 %cmp5, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %12 = load i32, i32* %words, align 4, !tbaa !15
  %cmp7 = icmp sgt i32 %12, 2
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %13 = load i32, i32* %words, align 4, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.9:                                          ; preds = %for.body, %for.body
  %14 = load i32, i32* %quot, align 4, !tbaa !15
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.9
  %15 = load i32, i32* %space, align 4, !tbaa !15
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %space, align 4, !tbaa !15
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true, %sw.bb.9
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %16 = load i32, i32* %quot, align 4, !tbaa !15
  %tobool14 = icmp ne i32 %16, 0
  %lnot = xor i1 %tobool14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %quot, align 4, !tbaa !15
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom15 = sext i32 %17 to i64
  %18 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1, !tbaa !22
  %conv17 = zext i8 %19 to i32
  %cmp18 = icmp slt i32 %conv17, 32
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.default
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %sw.default
  %20 = load i32, i32* %i, align 4, !tbaa !15
  %idxprom22 = sext i32 %20 to i64
  %21 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i64 %idxprom22
  %22 = load i8, i8* %arrayidx23, align 1, !tbaa !22
  %conv24 = zext i8 %22 to i32
  %cmp25 = icmp sgt i32 %conv24, 127
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.21
  %23 = load i32, i32* %space, align 4, !tbaa !15
  %24 = load i32, i32* %words, align 4, !tbaa !15
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %words, align 4, !tbaa !15
  store i32 0, i32* %space, align 4, !tbaa !15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28, %sw.bb.13, %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %25 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.27, %if.then.20, %cond.end, %if.then
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %quot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i8* @_cmsMalloc(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ParseIT8(%struct.cmsIT8* %it8, i32 %nosheet) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %nosheet.addr = alloca i32, align 4
  %SheetTypePtr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %nosheet, i32* %nosheet.addr, align 4, !tbaa !15
  %0 = bitcast i8** %SheetTypePtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [255 x %struct._Table], [255 x %struct._Table]* %Tab, i32 0, i64 0
  %SheetType = getelementptr inbounds %struct._Table, %struct._Table* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %SheetType, i32 0, i32 0
  store i8* %arraydecay, i8** %SheetTypePtr, align 8, !tbaa !1
  %2 = load i32, i32* %nosheet.addr, align 4, !tbaa !15
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %SheetTypePtr, align 8, !tbaa !1
  call void @ReadType(%struct.cmsIT8* %3, i8* %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %5) #9
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %6) #9
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 5
  %8 = load i32, i32* %sy, align 4, !tbaa !25
  %cmp1 = icmp ne i32 %8, 7
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 5
  %10 = load i32, i32* %sy2, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %10, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end.48

while.body:                                       ; preds = %land.end
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy4 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 5
  %13 = load i32, i32* %sy4, align 4, !tbaa !25
  switch i32 %13, label %sw.default [
    i32 10, label %sw.bb
    i32 9, label %sw.bb.7
    i32 6, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %while.body
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call i32 @DataFormatSection(%struct.cmsIT8* %14) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call8 = call i32 @DataSection(%struct.cmsIT8* %15) #9
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %sw.bb.7
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy12 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %16, i32 0, i32 5
  %17 = load i32, i32* %sy12, align 4, !tbaa !25
  %cmp13 = icmp ne i32 %17, 7
  br i1 %cmp13, label %if.then.14, label %if.end.42

if.then.14:                                       ; preds = %if.end.11
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @AllocTable(%struct.cmsIT8* %18) #9
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %19, i32 0, i32 0
  %20 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %sub = sub i32 %20, 1
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %nTable = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %21, i32 0, i32 1
  store i32 %sub, i32* %nTable, align 4, !tbaa !17
  %22 = load i32, i32* %nosheet.addr, align 4, !tbaa !15
  %cmp15 = icmp eq i32 %22, 0
  br i1 %cmp15, label %if.then.16, label %if.end.41

if.then.16:                                       ; preds = %if.then.14
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy17 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %23, i32 0, i32 5
  %24 = load i32, i32* %sy17, align 4, !tbaa !25
  %cmp18 = icmp eq i32 %24, 3
  br i1 %cmp18, label %if.then.19, label %if.else.33

if.then.19:                                       ; preds = %if.then.16
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.23, %if.then.19
  %25 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %25, i32 0, i32 6
  %26 = load i32, i32* %ch, align 4, !tbaa !31
  %call21 = call i32 @isseparator(i32 %26) #9
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %while.body.23, label %while.end

while.body.23:                                    ; preds = %while.cond.20
  %27 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %27) #9
  br label %while.cond.20

while.end:                                        ; preds = %while.cond.20
  %28 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch24 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %28, i32 0, i32 6
  %29 = load i32, i32* %ch24, align 4, !tbaa !31
  %cmp25 = icmp eq i32 %29, 10
  br i1 %cmp25, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %30 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch26 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %30, i32 0, i32 6
  %31 = load i32, i32* %ch26, align 4, !tbaa !31
  %cmp27 = icmp eq i32 %31, 13
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false, %while.end
  %32 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %33 = bitcast %struct.cmsIT8* %32 to i8*
  %34 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %34, i32 0, i32 9
  %arraydecay29 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %call30 = call i32 @cmsIT8SetSheetType(i8* %33, i8* %arraydecay29) #9
  %35 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %35) #9
  br label %if.end.32

if.else:                                          ; preds = %lor.lhs.false
  %36 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %37 = bitcast %struct.cmsIT8* %36 to i8*
  %call31 = call i32 @cmsIT8SetSheetType(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)) #9
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.28
  br label %if.end.40

if.else.33:                                       ; preds = %if.then.16
  %38 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy34 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %38, i32 0, i32 5
  %39 = load i32, i32* %sy34, align 4, !tbaa !25
  %cmp35 = icmp eq i32 %39, 4
  br i1 %cmp35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.else.33
  %40 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %41 = bitcast %struct.cmsIT8* %40 to i8*
  %42 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %42, i32 0, i32 10
  %arraydecay37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %call38 = call i32 @cmsIT8SetSheetType(i8* %41, i8* %arraydecay37) #9
  %43 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %43) #9
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.else.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.14
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.11
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.body
  %44 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %44) #9
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %45 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call44 = call i32 @HeaderSection(%struct.cmsIT8* %45) #9
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %sw.default
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.47, %sw.bb.43, %if.end.42, %if.end.6
  br label %while.cond

while.end.48:                                     ; preds = %land.end
  %46 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy49 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %46, i32 0, i32 5
  %47 = load i32, i32* %sy49, align 4, !tbaa !25
  %cmp50 = icmp ne i32 %47, 8
  %conv = zext i1 %cmp50 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.48, %if.then.46, %if.then.10, %if.then.5
  %48 = bitcast i8** %SheetTypePtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal void @CookPointers(%struct.cmsIT8* %it8) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %idField = alloca i32, align 4
  %i = alloca i32, align 4
  %Fld = alloca i8*, align 8
  %j = alloca i32, align 4
  %nOldTable = alloca i32, align 4
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  %Data = alloca i8*, align 8
  %Buffer = alloca [256 x i8], align 16
  %Label = alloca i8*, align 8
  %k = alloca i32, align 4
  %Table = alloca %struct._Table*, align 8
  %p = alloca %struct._KeyVal*, align 8
  %Buffer60 = alloca [256 x i8], align 16
  %Type = alloca i8*, align 8
  %nTable61 = alloca i32, align 4
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast i32* %idField to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %Fld to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %nOldTable to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %nTable = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %5, i32 0, i32 1
  %6 = load i32, i32* %nTable, align 4, !tbaa !17
  store i32 %6, i32* %nOldTable, align 4, !tbaa !15
  store i32 0, i32* %j, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %entry
  %7 = load i32, i32* %j, align 4, !tbaa !15
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %8, i32 0, i32 0
  %9 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  %10 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [255 x %struct._Table], [255 x %struct._Table]* %Tab, i32 0, i32 0
  %12 = load i32, i32* %j, align 4, !tbaa !15
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct._Table, %struct._Table* %arraydecay, i64 %idx.ext
  store %struct._Table* %add.ptr, %struct._Table** %t, align 8, !tbaa !1
  %13 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SampleID = getelementptr inbounds %struct._Table, %struct._Table* %13, i32 0, i32 3
  store i32 0, i32* %SampleID, align 4, !tbaa !56
  %14 = load i32, i32* %j, align 4, !tbaa !15
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %nTable1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %15, i32 0, i32 1
  store i32 %14, i32* %nTable1, align 4, !tbaa !17
  store i32 0, i32* %idField, align 4, !tbaa !15
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.75, %for.body
  %16 = load i32, i32* %idField, align 4, !tbaa !15
  %17 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %17, i32 0, i32 1
  %18 = load i32, i32* %nSamples, align 4, !tbaa !48
  %cmp3 = icmp slt i32 %16, %18
  br i1 %cmp3, label %for.body.4, label %for.end.77

for.body.4:                                       ; preds = %for.cond.2
  %19 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat = getelementptr inbounds %struct._Table, %struct._Table* %19, i32 0, i32 5
  %20 = load i8**, i8*** %DataFormat, align 8, !tbaa !20
  %cmp5 = icmp eq i8** %20, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.134, i32 0, i32 0)) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.4
  %22 = load i32, i32* %idField, align 4, !tbaa !15
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat6 = getelementptr inbounds %struct._Table, %struct._Table* %23, i32 0, i32 5
  %24 = load i8**, i8*** %DataFormat6, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %25 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %25, i8** %Fld, align 8, !tbaa !1
  %26 = load i8*, i8** %Fld, align 8, !tbaa !1
  %tobool = icmp ne i8* %26, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  br label %for.inc.75

if.end.8:                                         ; preds = %if.end
  %27 = load i8*, i8** %Fld, align 8, !tbaa !1
  %call9 = call i32 @cmsstrcasecmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.33

if.then.11:                                       ; preds = %if.end.8
  %28 = load i32, i32* %idField, align 4, !tbaa !15
  %29 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SampleID12 = getelementptr inbounds %struct._Table, %struct._Table* %29, i32 0, i32 3
  store i32 %28, i32* %SampleID12, align 4, !tbaa !56
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.11
  %30 = load i32, i32* %i, align 4, !tbaa !15
  %31 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %31, i32 0, i32 2
  %32 = load i32, i32* %nPatches, align 4, !tbaa !51
  %cmp14 = icmp slt i32 %30, %32
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %33 = bitcast i8** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %35 = load i32, i32* %i, align 4, !tbaa !15
  %36 = load i32, i32* %idField, align 4, !tbaa !15
  %call16 = call i8* @GetData(%struct.cmsIT8* %34, i32 %35, i32 %36) #9
  store i8* %call16, i8** %Data, align 8, !tbaa !1
  %37 = load i8*, i8** %Data, align 8, !tbaa !1
  %tobool17 = icmp ne i8* %37, null
  br i1 %tobool17, label %if.then.18, label %if.end.32

if.then.18:                                       ; preds = %for.body.15
  %38 = bitcast [256 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 256, i8* %38) #1
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %39 = load i8*, i8** %Data, align 8, !tbaa !1
  %call20 = call i8* @strncpy(i8* %arraydecay19, i8* %39, i64 255) #10
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i64 255
  store i8 0, i8* %arrayidx21, align 1, !tbaa !22
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %call23 = call i64 @strlen(i8* %arraydecay22) #12
  %40 = load i8*, i8** %Data, align 8, !tbaa !1
  %call24 = call i64 @strlen(i8* %40) #12
  %cmp25 = icmp ule i64 %call23, %call24
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.18
  %41 = load i8*, i8** %Data, align 8, !tbaa !1
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %call28 = call i8* @strcpy(i8* %41, i8* %arraydecay27) #10
  br label %if.end.31

if.else:                                          ; preds = %if.then.18
  %42 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %43 = load i32, i32* %i, align 4, !tbaa !15
  %44 = load i32, i32* %idField, align 4, !tbaa !15
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %call30 = call i32 @SetData(%struct.cmsIT8* %42, i32 %43, i32 %44, i8* %arraydecay29) #9
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.26
  %45 = bitcast [256 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 256, i8* %45) #1
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body.15
  %46 = bitcast i8** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %47 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %if.end.8
  %48 = load i8*, i8** %Fld, align 8, !tbaa !1
  %call34 = call i32 @cmsstrcasecmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #9
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %49 = load i8*, i8** %Fld, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx36, align 1, !tbaa !22
  %conv = sext i8 %50 to i32
  %cmp37 = icmp eq i32 %conv, 36
  br i1 %cmp37, label %if.then.39, label %if.end.74

if.then.39:                                       ; preds = %lor.lhs.false, %if.end.33
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.71, %if.then.39
  %51 = load i32, i32* %i, align 4, !tbaa !15
  %52 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches41 = getelementptr inbounds %struct._Table, %struct._Table* %52, i32 0, i32 2
  %53 = load i32, i32* %nPatches41, align 4, !tbaa !51
  %cmp42 = icmp slt i32 %51, %53
  br i1 %cmp42, label %for.body.44, label %for.end.73

for.body.44:                                      ; preds = %for.cond.40
  %54 = bitcast i8** %Label to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %56 = load i32, i32* %i, align 4, !tbaa !15
  %57 = load i32, i32* %idField, align 4, !tbaa !15
  %call45 = call i8* @GetData(%struct.cmsIT8* %55, i32 %56, i32 %57) #9
  store i8* %call45, i8** %Label, align 8, !tbaa !1
  %58 = load i8*, i8** %Label, align 8, !tbaa !1
  %tobool46 = icmp ne i8* %58, null
  br i1 %tobool46, label %if.then.47, label %if.end.70

if.then.47:                                       ; preds = %for.body.44
  %59 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 0, i32* %k, align 4, !tbaa !15
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.67, %if.then.47
  %60 = load i32, i32* %k, align 4, !tbaa !15
  %61 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %TablesCount49 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %61, i32 0, i32 0
  %62 = load i32, i32* %TablesCount49, align 4, !tbaa !16
  %cmp50 = icmp ult i32 %60, %62
  br i1 %cmp50, label %for.body.52, label %for.end.69

for.body.52:                                      ; preds = %for.cond.48
  %63 = bitcast %struct._Table** %Table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Tab53 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %64, i32 0, i32 2
  %arraydecay54 = getelementptr inbounds [255 x %struct._Table], [255 x %struct._Table]* %Tab53, i32 0, i32 0
  %65 = load i32, i32* %k, align 4, !tbaa !15
  %idx.ext55 = zext i32 %65 to i64
  %add.ptr56 = getelementptr inbounds %struct._Table, %struct._Table* %arraydecay54, i64 %idx.ext55
  store %struct._Table* %add.ptr56, %struct._Table** %Table, align 8, !tbaa !1
  %66 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load %struct._Table*, %struct._Table** %Table, align 8, !tbaa !1
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %67, i32 0, i32 4
  %68 = load %struct._KeyVal*, %struct._KeyVal** %HeaderList, align 8, !tbaa !18
  %69 = load i8*, i8** %Label, align 8, !tbaa !1
  %call57 = call i32 @IsAvailableOnList(%struct._KeyVal* %68, i8* %69, i8* null, %struct._KeyVal** %p) #9
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %for.body.52
  %70 = bitcast [256 x i8]* %Buffer60 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %70) #1
  %71 = bitcast i8** %Type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Value = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %72, i32 0, i32 4
  %73 = load i8*, i8** %Value, align 8, !tbaa !44
  store i8* %73, i8** %Type, align 8, !tbaa !1
  %74 = bitcast i32* %nTable61 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32, i32* %k, align 4, !tbaa !15
  store i32 %75, i32* %nTable61, align 4, !tbaa !15
  %arraydecay62 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer60, i32 0, i32 0
  %76 = load i8*, i8** %Label, align 8, !tbaa !1
  %77 = load i32, i32* %nTable61, align 4, !tbaa !15
  %78 = load i8*, i8** %Type, align 8, !tbaa !1
  %call63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay62, i64 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i8* %76, i32 %77, i8* %78) #10
  %79 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %80 = load i32, i32* %i, align 4, !tbaa !15
  %81 = load i32, i32* %idField, align 4, !tbaa !15
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer60, i32 0, i32 0
  %call65 = call i32 @SetData(%struct.cmsIT8* %79, i32 %80, i32 %81, i8* %arraydecay64) #9
  %82 = bitcast i32* %nTable61 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i8** %Type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast [256 x i8]* %Buffer60 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %84) #1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %for.body.52
  %85 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct._Table** %Table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %87 = load i32, i32* %k, align 4, !tbaa !15
  %inc68 = add i32 %87, 1
  store i32 %inc68, i32* %k, align 4, !tbaa !15
  br label %for.cond.48

for.end.69:                                       ; preds = %for.cond.48
  %88 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %for.body.44
  %89 = bitcast i8** %Label to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %90 = load i32, i32* %i, align 4, !tbaa !15
  %inc72 = add nsw i32 %90, 1
  store i32 %inc72, i32* %i, align 4, !tbaa !15
  br label %for.cond.40

for.end.73:                                       ; preds = %for.cond.40
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %lor.lhs.false
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74, %if.then.7
  %91 = load i32, i32* %idField, align 4, !tbaa !15
  %inc76 = add nsw i32 %91, 1
  store i32 %inc76, i32* %idField, align 4, !tbaa !15
  br label %for.cond.2

for.end.77:                                       ; preds = %for.cond.2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.77, %if.then
  %92 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.82 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.78

for.inc.78:                                       ; preds = %cleanup.cont
  %93 = load i32, i32* %j, align 4, !tbaa !15
  %inc79 = add i32 %93, 1
  store i32 %inc79, i32* %j, align 4, !tbaa !15
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  %94 = load i32, i32* %nOldTable, align 4, !tbaa !15
  %95 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %nTable81 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %95, i32 0, i32 1
  store i32 %94, i32* %nTable81, align 4, !tbaa !17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %for.end.80, %cleanup
  %96 = bitcast i32* %nOldTable to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i8** %Fld to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %idField to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.87, label %unreachable [
    i32 0, label %cleanup.cont.88
    i32 1, label %cleanup.cont.88
  ]

cleanup.cont.88:                                  ; preds = %cleanup.82, %cleanup.82
  ret void

unreachable:                                      ; preds = %cleanup.82
  unreachable
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8LoadFromFile(%struct._cmsContext_struct* %ContextID, i8* %cFileName) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %cFileName.addr = alloca i8*, align 8
  %hIT8 = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %cFileName, i8** %cFileName.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hIT8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %cFileName.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2340, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.cmsIT8LoadFromFile, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i8*, i8** %cFileName.addr, align 8, !tbaa !1
  %call = call i32 @IsMyFile(i8* %5) #9
  store i32 %call, i32* %type, align 4, !tbaa !15
  %6 = load i32, i32* %type, align 4, !tbaa !15
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call2 = call i8* @cmsIT8Alloc(%struct._cmsContext_struct* %7) #9
  store i8* %call2, i8** %hIT8, align 8, !tbaa !1
  %8 = load i8*, i8** %hIT8, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.cmsIT8*
  store %struct.cmsIT8* %9, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %10 = load i8*, i8** %hIT8, align 8, !tbaa !1
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load i8*, i8** %cFileName.addr, align 8, !tbaa !1
  %call5 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #9
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 15
  %arrayidx = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack, i32 0, i64 0
  %13 = load %struct._FileContext*, %struct._FileContext** %arrayidx, align 8, !tbaa !1
  %Stream = getelementptr inbounds %struct._FileContext, %struct._FileContext* %13, i32 0, i32 1
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %Stream, align 8, !tbaa !57
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack6 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %14, i32 0, i32 15
  %arrayidx7 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack6, i32 0, i64 0
  %15 = load %struct._FileContext*, %struct._FileContext** %arrayidx7, align 8, !tbaa !1
  %Stream8 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %15, i32 0, i32 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream8, align 8, !tbaa !57
  %tobool9 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.4
  %17 = load i8*, i8** %hIT8, align 8, !tbaa !1
  call void @cmsIT8Free(i8* %17) #9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.4
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack12 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %18, i32 0, i32 15
  %arrayidx13 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack12, i32 0, i64 0
  %19 = load %struct._FileContext*, %struct._FileContext** %arrayidx13, align 8, !tbaa !1
  %FileName = getelementptr inbounds %struct._FileContext, %struct._FileContext* %19, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %FileName, i32 0, i32 0
  %20 = load i8*, i8** %cFileName.addr, align 8, !tbaa !1
  %call14 = call i8* @strncpy(i8* %arraydecay, i8* %20, i64 255) #10
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack15 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %21, i32 0, i32 15
  %arrayidx16 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack15, i32 0, i64 0
  %22 = load %struct._FileContext*, %struct._FileContext** %arrayidx16, align 8, !tbaa !1
  %FileName17 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %22, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %FileName17, i32 0, i64 255
  store i8 0, i8* %arrayidx18, align 1, !tbaa !22
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %24 = load i32, i32* %type, align 4, !tbaa !15
  %sub = sub nsw i32 %24, 1
  %call19 = call i32 @ParseIT8(%struct.cmsIT8* %23, i32 %sub) #9
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.26, label %if.then.21

if.then.21:                                       ; preds = %if.end.11
  %25 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack22 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %25, i32 0, i32 15
  %arrayidx23 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack22, i32 0, i64 0
  %26 = load %struct._FileContext*, %struct._FileContext** %arrayidx23, align 8, !tbaa !1
  %Stream24 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %26, i32 0, i32 1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream24, align 8, !tbaa !57
  %call25 = call i32 @fclose(%struct._IO_FILE* %27) #9
  %28 = load i8*, i8** %hIT8, align 8, !tbaa !1
  call void @cmsIT8Free(i8* %28) #9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.11
  %29 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @CookPointers(%struct.cmsIT8* %29) #9
  %30 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %nTable = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %30, i32 0, i32 1
  store i32 0, i32* %nTable, align 4, !tbaa !17
  %31 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %FileStack27 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %31, i32 0, i32 15
  %arrayidx28 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack27, i32 0, i64 0
  %32 = load %struct._FileContext*, %struct._FileContext** %arrayidx28, align 8, !tbaa !1
  %Stream29 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %32, i32 0, i32 1
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream29, align 8, !tbaa !57
  %call30 = call i32 @fclose(%struct._IO_FILE* %33) #9
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  %34 = load i8*, i8** %hIT8, align 8, !tbaa !1
  call void @cmsIT8Free(i8* %34) #9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.26
  %35 = load i8*, i8** %hIT8, align 8, !tbaa !1
  store i8* %35, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32, %if.then.21, %if.then.10, %if.then.3, %if.then
  %36 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i8** %hIT8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i8*, i8** %retval
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define internal i32 @IsMyFile(i8* %FileName) #0 {
entry:
  %retval = alloca i32, align 4
  %FileName.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %Size = alloca i32, align 4
  %Ptr = alloca [133 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store i8* %FileName, i8** %FileName.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %Size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [133 x i8]* %Ptr to i8*
  call void @llvm.lifetime.start(i64 133, i8* %2) #1
  %3 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* null, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.136, i32 0, i32 0), i8* %5) #9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [133 x i8], [133 x i8]* %Ptr, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 132, %struct._IO_FILE* %6) #9
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %Size, align 4, !tbaa !15
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !1
  %call2 = call i32 @fclose(%struct._IO_FILE* %7) #9
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %8 = load i32, i32* %Size, align 4, !tbaa !15
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [133 x i8], [133 x i8]* %Ptr, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %arraydecay6 = getelementptr inbounds [133 x i8], [133 x i8]* %Ptr, i32 0, i32 0
  %9 = load i32, i32* %Size, align 4, !tbaa !15
  %call7 = call i32 @IsMyBlock(i8* %arraydecay6, i32 %9) #9
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %10 = bitcast [133 x i8]* %Ptr to i8*
  call void @llvm.lifetime.end(i64 133, i8* %10) #1
  %11 = bitcast i32* %Size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8EnumDataFormat(i8* %hIT8, i8*** %SampleNames) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %SampleNames.addr = alloca i8***, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %t = alloca %struct._Table*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8*** %SampleNames, i8**** %SampleNames.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2385, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.cmsIT8EnumDataFormat, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %6) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %7 = load i8***, i8**** %SampleNames.addr, align 8, !tbaa !1
  %tobool = icmp ne i8*** %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat = getelementptr inbounds %struct._Table, %struct._Table* %8, i32 0, i32 5
  %9 = load i8**, i8*** %DataFormat, align 8, !tbaa !20
  %10 = load i8***, i8**** %SampleNames.addr, align 8, !tbaa !1
  store i8** %9, i8*** %10, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %11 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %11, i32 0, i32 1
  %12 = load i32, i32* %nSamples, align 4, !tbaa !48
  %13 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8EnumProperties(i8* %hIT8, i8*** %PropertyNames) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %PropertyNames.addr = alloca i8***, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %p = alloca %struct._KeyVal*, align 8
  %n = alloca i32, align 4
  %Props = alloca i8**, align 8
  %t = alloca %struct._Table*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8*** %PropertyNames, i8**** %PropertyNames.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8*** %Props to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2403, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.cmsIT8EnumProperties, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %9) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  store i32 0, i32* %n, align 4, !tbaa !15
  %10 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %10, i32 0, i32 4
  %11 = load %struct._KeyVal*, %struct._KeyVal** %HeaderList, align 8, !tbaa !18
  store %struct._KeyVal* %11, %struct._KeyVal** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._KeyVal* %12, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %n, align 4, !tbaa !15
  %inc = add i32 %13, 1
  store i32 %inc, i32* %n, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %14, i32 0, i32 0
  %15 = load %struct._KeyVal*, %struct._KeyVal** %Next, align 8, !tbaa !42
  store %struct._KeyVal* %15, %struct._KeyVal** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %17 = load i32, i32* %n, align 4, !tbaa !15
  %conv = zext i32 %17 to i64
  %mul = mul i64 8, %conv
  %conv2 = trunc i64 %mul to i32
  %call3 = call i8* @AllocChunk(%struct.cmsIT8* %16, i32 %conv2) #9
  %18 = bitcast i8* %call3 to i8**
  store i8** %18, i8*** %Props, align 8, !tbaa !1
  store i32 0, i32* %n, align 4, !tbaa !15
  %19 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %HeaderList4 = getelementptr inbounds %struct._Table, %struct._Table* %19, i32 0, i32 4
  %20 = load %struct._KeyVal*, %struct._KeyVal** %HeaderList4, align 8, !tbaa !18
  store %struct._KeyVal* %20, %struct._KeyVal** %p, align 8, !tbaa !1
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %for.end
  %21 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %cmp6 = icmp ne %struct._KeyVal* %21, null
  br i1 %cmp6, label %for.body.8, label %for.end.12

for.body.8:                                       ; preds = %for.cond.5
  %22 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Keyword = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %22, i32 0, i32 1
  %23 = load i8*, i8** %Keyword, align 8, !tbaa !38
  %24 = load i32, i32* %n, align 4, !tbaa !15
  %inc9 = add i32 %24, 1
  store i32 %inc9, i32* %n, align 4, !tbaa !15
  %idxprom = zext i32 %24 to i64
  %25 = load i8**, i8*** %Props, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 %idxprom
  store i8* %23, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.8
  %26 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Next11 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %26, i32 0, i32 0
  %27 = load %struct._KeyVal*, %struct._KeyVal** %Next11, align 8, !tbaa !42
  store %struct._KeyVal* %27, %struct._KeyVal** %p, align 8, !tbaa !1
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  %28 = load i8**, i8*** %Props, align 8, !tbaa !1
  %29 = load i8***, i8**** %PropertyNames.addr, align 8, !tbaa !1
  store i8** %28, i8*** %29, align 8, !tbaa !1
  %30 = load i32, i32* %n, align 4, !tbaa !15
  %31 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i8*** %Props to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8EnumPropertyMulti(i8* %hIT8, i8* %cProp, i8*** %SubpropertyNames) #0 {
entry:
  %retval = alloca i32, align 4
  %hIT8.addr = alloca i8*, align 8
  %cProp.addr = alloca i8*, align 8
  %SubpropertyNames.addr = alloca i8***, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %p = alloca %struct._KeyVal*, align 8
  %tmp = alloca %struct._KeyVal*, align 8
  %n = alloca i32, align 4
  %Props = alloca i8**, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cProp, i8** %cProp.addr, align 8, !tbaa !1
  store i8*** %SubpropertyNames, i8**** %SubpropertyNames.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._KeyVal** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8*** %Props to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2435, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.cmsIT8EnumPropertyMulti, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %10) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %11 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %11, i32 0, i32 4
  %12 = load %struct._KeyVal*, %struct._KeyVal** %HeaderList, align 8, !tbaa !18
  %13 = load i8*, i8** %cProp.addr, align 8, !tbaa !1
  %call4 = call i32 @IsAvailableOnList(%struct._KeyVal* %12, i8* %13, i8* null, %struct._KeyVal** %p) #9
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %14 = load i8***, i8**** %SubpropertyNames.addr, align 8, !tbaa !1
  store i8** null, i8*** %14, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %n, align 4, !tbaa !15
  %15 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  store %struct._KeyVal* %15, %struct._KeyVal** %tmp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load %struct._KeyVal*, %struct._KeyVal** %tmp, align 8, !tbaa !1
  %cmp5 = icmp ne %struct._KeyVal* %16, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._KeyVal*, %struct._KeyVal** %tmp, align 8, !tbaa !1
  %Subkey = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %17, i32 0, i32 3
  %18 = load i8*, i8** %Subkey, align 8, !tbaa !40
  %cmp6 = icmp ne i8* %18, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %19 = load i32, i32* %n, align 4, !tbaa !15
  %inc = add i32 %19, 1
  store i32 %inc, i32* %n, align 4, !tbaa !15
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %20 = load %struct._KeyVal*, %struct._KeyVal** %tmp, align 8, !tbaa !1
  %NextSubkey = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %20, i32 0, i32 2
  %21 = load %struct._KeyVal*, %struct._KeyVal** %NextSubkey, align 8, !tbaa !41
  store %struct._KeyVal* %21, %struct._KeyVal** %tmp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %23 = load i32, i32* %n, align 4, !tbaa !15
  %conv = zext i32 %23 to i64
  %mul = mul i64 8, %conv
  %conv9 = trunc i64 %mul to i32
  %call10 = call i8* @AllocChunk(%struct.cmsIT8* %22, i32 %conv9) #9
  %24 = bitcast i8* %call10 to i8**
  store i8** %24, i8*** %Props, align 8, !tbaa !1
  store i32 0, i32* %n, align 4, !tbaa !15
  %25 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  store %struct._KeyVal* %25, %struct._KeyVal** %tmp, align 8, !tbaa !1
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.22, %for.end
  %26 = load %struct._KeyVal*, %struct._KeyVal** %tmp, align 8, !tbaa !1
  %cmp12 = icmp ne %struct._KeyVal* %26, null
  br i1 %cmp12, label %for.body.14, label %for.end.24

for.body.14:                                      ; preds = %for.cond.11
  %27 = load %struct._KeyVal*, %struct._KeyVal** %tmp, align 8, !tbaa !1
  %Subkey15 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %27, i32 0, i32 3
  %28 = load i8*, i8** %Subkey15, align 8, !tbaa !40
  %cmp16 = icmp ne i8* %28, null
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.body.14
  %29 = load %struct._KeyVal*, %struct._KeyVal** %p, align 8, !tbaa !1
  %Subkey19 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %29, i32 0, i32 3
  %30 = load i8*, i8** %Subkey19, align 8, !tbaa !40
  %31 = load i32, i32* %n, align 4, !tbaa !15
  %inc20 = add i32 %31, 1
  store i32 %inc20, i32* %n, align 4, !tbaa !15
  %idxprom = zext i32 %31 to i64
  %32 = load i8**, i8*** %Props, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  store i8* %30, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %for.body.14
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %33 = load %struct._KeyVal*, %struct._KeyVal** %tmp, align 8, !tbaa !1
  %NextSubkey23 = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %33, i32 0, i32 2
  %34 = load %struct._KeyVal*, %struct._KeyVal** %NextSubkey23, align 8, !tbaa !41
  store %struct._KeyVal* %34, %struct._KeyVal** %tmp, align 8, !tbaa !1
  br label %for.cond.11

for.end.24:                                       ; preds = %for.cond.11
  %35 = load i8**, i8*** %Props, align 8, !tbaa !1
  %36 = load i8***, i8**** %SubpropertyNames.addr, align 8, !tbaa !1
  store i8** %35, i8*** %36, align 8, !tbaa !1
  %37 = load i32, i32* %n, align 4, !tbaa !15
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.24, %if.then
  %38 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i8*** %Props to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct._KeyVal** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct._KeyVal** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8FindDataFormat(i8* %hIT8, i8* %cSample) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %cSample.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cSample, i8** %cSample.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2532, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.cmsIT8FindDataFormat, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %6 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %call = call i32 @LocateSample(%struct.cmsIT8* %5, i8* %6) #9
  %7 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @LocateSample(%struct.cmsIT8* %it8, i8* %cSample) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %cSample.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %fld = alloca i8*, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %cSample, i8** %cSample.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %fld to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %3) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !15
  %5 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %5, i32 0, i32 1
  %6 = load i32, i32* %nSamples, align 4, !tbaa !48
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !15
  %call1 = call i8* @GetDataFormat(%struct.cmsIT8* %7, i32 %8) #9
  store i8* %call1, i8** %fld, align 8, !tbaa !1
  %9 = load i8*, i8** %fld, align 8, !tbaa !1
  %10 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %call2 = call i32 @cmsstrcasecmp(i8* %9, i8* %10) #9
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !15
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i8** %fld to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8GetDataRowCol(i8* %hIT8, i32 %row, i32 %col) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i32 %row, i32* %row.addr, align 4, !tbaa !15
  store i32 %col, i32* %col.addr, align 4, !tbaa !15
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2543, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.cmsIT8GetDataRowCol, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %6 = load i32, i32* %row.addr, align 4, !tbaa !15
  %7 = load i32, i32* %col.addr, align 4, !tbaa !15
  %call = call i8* @GetData(%struct.cmsIT8* %5, i32 %6, i32 %7) #9
  %8 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @GetData(%struct.cmsIT8* %it8, i32 %nSet, i32 %nField) #0 {
entry:
  %retval = alloca i8*, align 8
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %nSet.addr = alloca i32, align 4
  %nField.addr = alloca i32, align 4
  %t = alloca %struct._Table*, align 8
  %nSamples = alloca i32, align 4
  %nPatches = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %nSet, i32* %nSet.addr, align 4, !tbaa !15
  store i32 %nField, i32* %nField.addr, align 4, !tbaa !15
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %1) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %2 = bitcast i32* %nSamples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples1 = getelementptr inbounds %struct._Table, %struct._Table* %3, i32 0, i32 1
  %4 = load i32, i32* %nSamples1, align 4, !tbaa !48
  store i32 %4, i32* %nSamples, align 4, !tbaa !15
  %5 = bitcast i32* %nPatches to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches2 = getelementptr inbounds %struct._Table, %struct._Table* %6, i32 0, i32 2
  %7 = load i32, i32* %nPatches2, align 4, !tbaa !51
  store i32 %7, i32* %nPatches, align 4, !tbaa !15
  %8 = load i32, i32* %nSet.addr, align 4, !tbaa !15
  %9 = load i32, i32* %nPatches, align 4, !tbaa !15
  %cmp = icmp sge i32 %8, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %nField.addr, align 4, !tbaa !15
  %11 = load i32, i32* %nSamples, align 4, !tbaa !15
  %cmp3 = icmp sge i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._Table, %struct._Table* %12, i32 0, i32 6
  %13 = load i8**, i8*** %Data, align 8, !tbaa !21
  %tobool = icmp ne i8** %13, null
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %14 = load i32, i32* %nSet.addr, align 4, !tbaa !15
  %15 = load i32, i32* %nSamples, align 4, !tbaa !15
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %nField.addr, align 4, !tbaa !15
  %add = add nsw i32 %mul, %16
  %idxprom = sext i32 %add to i64
  %17 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data6 = getelementptr inbounds %struct._Table, %struct._Table* %17, i32 0, i32 6
  %18 = load i8**, i8*** %Data6, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %19, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %20 = bitcast i32* %nPatches to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %nSamples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define double @cmsIT8GetDataRowColDbl(i8* %hIT8, i32 %row, i32 %col) #0 {
entry:
  %retval = alloca double, align 8
  %hIT8.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %Buffer = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i32 %row, i32* %row.addr, align 4, !tbaa !15
  store i32 %col, i32* %col.addr, align 4, !tbaa !15
  %0 = bitcast i8** %Buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = load i32, i32* %row.addr, align 4, !tbaa !15
  %3 = load i32, i32* %col.addr, align 4, !tbaa !15
  %call = call i8* @cmsIT8GetDataRowCol(i8* %1, i32 %2, i32 %3) #9
  store i8* %call, i8** %Buffer, align 8, !tbaa !1
  %4 = load i8*, i8** %Buffer, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %Buffer, align 8, !tbaa !1
  %call1 = call double @ParseFloatNumber(i8* %5) #9
  store double %call1, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast i8** %Buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetDataRowCol(i8* %hIT8, i32 %row, i32 %col, i8* %Val) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %Val.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i32 %row, i32* %row.addr, align 4, !tbaa !15
  store i32 %col, i32* %col.addr, align 4, !tbaa !15
  store i8* %Val, i8** %Val.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2565, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.cmsIT8SetDataRowCol, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %6 = load i32, i32* %row.addr, align 4, !tbaa !15
  %7 = load i32, i32* %col.addr, align 4, !tbaa !15
  %8 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %call = call i32 @SetData(%struct.cmsIT8* %5, i32 %6, i32 %7, i8* %8) #9
  %9 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @SetData(%struct.cmsIT8* %it8, i32 %nSet, i32 %nField, i8* %Val) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %nSet.addr = alloca i32, align 4
  %nField.addr = alloca i32, align 4
  %Val.addr = alloca i8*, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %nSet, i32* %nSet.addr, align 4, !tbaa !15
  store i32 %nField, i32* %nField.addr, align 4, !tbaa !15
  store i8* %Val, i8** %Val.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %1) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %2 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._Table, %struct._Table* %2, i32 0, i32 6
  %3 = load i8**, i8*** %Data, align 8, !tbaa !21
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @AllocateDataSet(%struct.cmsIT8* %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._Table, %struct._Table* %5, i32 0, i32 6
  %6 = load i8**, i8*** %Data1, align 8, !tbaa !21
  %tobool2 = icmp ne i8** %6, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load i32, i32* %nSet.addr, align 4, !tbaa !15
  %8 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %8, i32 0, i32 2
  %9 = load i32, i32* %nPatches, align 4, !tbaa !51
  %cmp = icmp sgt i32 %7, %9
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %10 = load i32, i32* %nSet.addr, align 4, !tbaa !15
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.4
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %12 = load i32, i32* %nSet.addr, align 4, !tbaa !15
  %13 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches7 = getelementptr inbounds %struct._Table, %struct._Table* %13, i32 0, i32 2
  %14 = load i32, i32* %nPatches7, align 4, !tbaa !51
  %call8 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.137, i32 0, i32 0), i32 %12, i32 %14) #9
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %15 = load i32, i32* %nField.addr, align 4, !tbaa !15
  %16 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %16, i32 0, i32 1
  %17 = load i32, i32* %nSamples, align 4, !tbaa !48
  %cmp10 = icmp sgt i32 %15, %17
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.9
  %18 = load i32, i32* %nField.addr, align 4, !tbaa !15
  %cmp12 = icmp slt i32 %18, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.end.9
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %20 = load i32, i32* %nField.addr, align 4, !tbaa !15
  %21 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples14 = getelementptr inbounds %struct._Table, %struct._Table* %21, i32 0, i32 1
  %22 = load i32, i32* %nSamples14, align 4, !tbaa !48
  %call15 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.138, i32 0, i32 0), i32 %20, i32 %22) #9
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %lor.lhs.false.11
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %call17 = call i8* @AllocString(%struct.cmsIT8* %23, i8* %24) #9
  %25 = load i32, i32* %nSet.addr, align 4, !tbaa !15
  %26 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples18 = getelementptr inbounds %struct._Table, %struct._Table* %26, i32 0, i32 1
  %27 = load i32, i32* %nSamples18, align 4, !tbaa !48
  %mul = mul nsw i32 %25, %27
  %28 = load i32, i32* %nField.addr, align 4, !tbaa !15
  %add = add nsw i32 %mul, %28
  %idxprom = sext i32 %add to i64
  %29 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data19 = getelementptr inbounds %struct._Table, %struct._Table* %29, i32 0, i32 6
  %30 = load i8**, i8*** %Data19, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i8*, i8** %30, i64 %idxprom
  store i8* %call17, i8** %arrayidx, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.13, %if.then.6, %if.then.3
  %31 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetDataRowColDbl(i8* %hIT8, i32 %row, i32 %col, double %Val) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %Val.addr = alloca double, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %Buff = alloca [256 x i8], align 16
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i32 %row, i32* %row.addr, align 4, !tbaa !15
  store i32 %col, i32* %col.addr, align 4, !tbaa !15
  store double %Val, double* %Val.addr, align 8, !tbaa !45
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast [256 x i8]* %Buff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %3) #1
  %4 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2576, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.cmsIT8SetDataRowColDbl, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Buff, i32 0, i32 0
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %DoubleFormatter = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %6, i32 0, i32 18
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter, i32 0, i32 0
  %7 = load double, double* %Val.addr, align 8, !tbaa !45
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %arraydecay1, double %7) #10
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %9 = load i32, i32* %row.addr, align 4, !tbaa !15
  %10 = load i32, i32* %col.addr, align 4, !tbaa !15
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %Buff, i32 0, i32 0
  %call3 = call i32 @SetData(%struct.cmsIT8* %8, i32 %9, i32 %10, i8* %arraydecay2) #9
  %11 = bitcast [256 x i8]* %Buff to i8*
  call void @llvm.lifetime.end(i64 256, i8* %11) #1
  %12 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define i8* @cmsIT8GetData(i8* %hIT8, i8* %cPatch, i8* %cSample) #0 {
entry:
  %retval = alloca i8*, align 8
  %hIT8.addr = alloca i8*, align 8
  %cPatch.addr = alloca i8*, align 8
  %cSample.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %iField = alloca i32, align 4
  %iSet = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cPatch, i8** %cPatch.addr, align 8, !tbaa !1
  store i8* %cSample, i8** %cSample.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %iSet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2590, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.cmsIT8GetData, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %8 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %call = call i32 @LocateSample(%struct.cmsIT8* %7, i8* %8) #9
  store i32 %call, i32* %iField, align 4, !tbaa !15
  %9 = load i32, i32* %iField, align 4, !tbaa !15
  %cmp1 = icmp slt i32 %9, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %11 = load i8*, i8** %cPatch.addr, align 8, !tbaa !1
  %call2 = call i32 @LocatePatch(%struct.cmsIT8* %10, i8* %11) #9
  store i32 %call2, i32* %iSet, align 4, !tbaa !15
  %12 = load i32, i32* %iSet, align 4, !tbaa !15
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %14 = load i32, i32* %iSet, align 4, !tbaa !15
  %15 = load i32, i32* %iField, align 4, !tbaa !15
  %call6 = call i8* @GetData(%struct.cmsIT8* %13, i32 %14, i32 %15) #9
  store i8* %call6, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %16 = bitcast i32* %iSet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i8*, i8** %retval
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define internal i32 @LocatePatch(%struct.cmsIT8* %it8, i8* %cPatch) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %cPatch.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %cPatch, i8** %cPatch.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %3) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !15
  %5 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %5, i32 0, i32 2
  %6 = load i32, i32* %nPatches, align 4, !tbaa !51
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !15
  %9 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SampleID = getelementptr inbounds %struct._Table, %struct._Table* %9, i32 0, i32 3
  %10 = load i32, i32* %SampleID, align 4, !tbaa !56
  %call1 = call i8* @GetData(%struct.cmsIT8* %7, i32 %8, i32 %10) #9
  store i8* %call1, i8** %data, align 8, !tbaa !1
  %11 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp2 = icmp ne i8* %11, null
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %12 = load i8*, i8** %data, align 8, !tbaa !1
  %13 = load i8*, i8** %cPatch.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsstrcasecmp(i8* %12, i8* %13) #9
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !15
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %15 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.5
  %16 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define double @cmsIT8GetDataDbl(i8* %it8, i8* %cPatch, i8* %cSample) #0 {
entry:
  %it8.addr = alloca i8*, align 8
  %cPatch.addr = alloca i8*, align 8
  %cSample.addr = alloca i8*, align 8
  %Buffer = alloca i8*, align 8
  store i8* %it8, i8** %it8.addr, align 8, !tbaa !1
  store i8* %cPatch, i8** %cPatch.addr, align 8, !tbaa !1
  store i8* %cSample, i8** %cSample.addr, align 8, !tbaa !1
  %0 = bitcast i8** %Buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %it8.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cPatch.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %call = call i8* @cmsIT8GetData(i8* %1, i8* %2, i8* %3) #9
  store i8* %call, i8** %Buffer, align 8, !tbaa !1
  %4 = load i8*, i8** %Buffer, align 8, !tbaa !1
  %call1 = call double @ParseFloatNumber(i8* %4) #9
  %5 = bitcast i8** %Buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret double %call1
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetData(i8* %hIT8, i8* %cPatch, i8* %cSample, i8* %Val) #0 {
entry:
  %retval = alloca i32, align 4
  %hIT8.addr = alloca i8*, align 8
  %cPatch.addr = alloca i8*, align 8
  %cSample.addr = alloca i8*, align 8
  %Val.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %iField = alloca i32, align 4
  %iSet = alloca i32, align 4
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cPatch, i8** %cPatch.addr, align 8, !tbaa !1
  store i8* %cSample, i8** %cSample.addr, align 8, !tbaa !1
  store i8* %Val, i8** %Val.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %iSet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2623, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.cmsIT8SetData, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %8) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %10 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %call1 = call i32 @LocateSample(%struct.cmsIT8* %9, i8* %10) #9
  store i32 %call1, i32* %iField, align 4, !tbaa !15
  %11 = load i32, i32* %iField, align 4, !tbaa !15
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %12 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %12, i32 0, i32 2
  %13 = load i32, i32* %nPatches, align 4, !tbaa !51
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @AllocateDataFormat(%struct.cmsIT8* %14) #9
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @AllocateDataSet(%struct.cmsIT8* %15) #9
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  call void @CookPointers(%struct.cmsIT8* %16) #9
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %17 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %call6 = call i32 @cmsstrcasecmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call9 = call i32 @LocateEmptyPatch(%struct.cmsIT8* %18) #9
  store i32 %call9, i32* %iSet, align 4, !tbaa !15
  %19 = load i32, i32* %iSet, align 4, !tbaa !15
  %cmp10 = icmp slt i32 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %20 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %21 = load i8*, i8** %cPatch.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* %21) #9
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.8
  %22 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SampleID = getelementptr inbounds %struct._Table, %struct._Table* %22, i32 0, i32 3
  %23 = load i32, i32* %SampleID, align 4, !tbaa !56
  store i32 %23, i32* %iField, align 4, !tbaa !15
  br label %if.end.18

if.else:                                          ; preds = %if.end.5
  %24 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %25 = load i8*, i8** %cPatch.addr, align 8, !tbaa !1
  %call14 = call i32 @LocatePatch(%struct.cmsIT8* %24, i8* %25) #9
  store i32 %call14, i32* %iSet, align 4, !tbaa !15
  %26 = load i32, i32* %iSet, align 4, !tbaa !15
  %cmp15 = icmp slt i32 %26, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.13
  %27 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %28 = load i32, i32* %iSet, align 4, !tbaa !15
  %29 = load i32, i32* %iField, align 4, !tbaa !15
  %30 = load i8*, i8** %Val.addr, align 8, !tbaa !1
  %call19 = call i32 @SetData(%struct.cmsIT8* %27, i32 %28, i32 %29, i8* %30) #9
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.16, %if.then.11, %if.then
  %31 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %iSet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @AllocateDataFormat(%struct.cmsIT8* %it8) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %1) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %2 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat = getelementptr inbounds %struct._Table, %struct._Table* %2, i32 0, i32 5
  %3 = load i8**, i8*** %DataFormat, align 8, !tbaa !20
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cmsIT8* %4 to i8*
  %call1 = call double @cmsIT8GetPropertyDbl(i8* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0)) #9
  %conv = fptosi double %call1 to i32
  %6 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %6, i32 0, i32 1
  store i32 %conv, i32* %nSamples, align 4, !tbaa !48
  %7 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples2 = getelementptr inbounds %struct._Table, %struct._Table* %7, i32 0, i32 1
  %8 = load i32, i32* %nSamples2, align 4, !tbaa !48
  %cmp = icmp sle i32 %8, 0
  br i1 %cmp, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call5 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.139, i32 0, i32 0)) #9
  %10 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples6 = getelementptr inbounds %struct._Table, %struct._Table* %10, i32 0, i32 1
  store i32 10, i32* %nSamples6, align 4, !tbaa !48
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %12 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples8 = getelementptr inbounds %struct._Table, %struct._Table* %12, i32 0, i32 1
  %13 = load i32, i32* %nSamples8, align 4, !tbaa !48
  %add = add i32 %13, 1
  %conv9 = zext i32 %add to i64
  %mul = mul i64 %conv9, 8
  %conv10 = trunc i64 %mul to i32
  %call11 = call i8* @AllocChunk(%struct.cmsIT8* %11, i32 %conv10) #9
  %14 = bitcast i8* %call11 to i8**
  %15 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat12 = getelementptr inbounds %struct._Table, %struct._Table* %15, i32 0, i32 5
  store i8** %14, i8*** %DataFormat12, align 8, !tbaa !20
  %16 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat13 = getelementptr inbounds %struct._Table, %struct._Table* %16, i32 0, i32 5
  %17 = load i8**, i8*** %DataFormat13, align 8, !tbaa !20
  %cmp14 = icmp eq i8** %17, null
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.7
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.140, i32 0, i32 0)) #9
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then
  %19 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
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
define internal void @AllocateDataSet(%struct.cmsIT8* %it8) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %1) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %2 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._Table, %struct._Table* %2, i32 0, i32 6
  %3 = load i8**, i8*** %Data, align 8, !tbaa !21
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cmsIT8* %4 to i8*
  %call1 = call i8* @cmsIT8GetProperty(i8* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0)) #9
  %call2 = call i32 @atoi(i8* %call1) #12
  %6 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %6, i32 0, i32 1
  store i32 %call2, i32* %nSamples, align 4, !tbaa !48
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %8 = bitcast %struct.cmsIT8* %7 to i8*
  %call3 = call i8* @cmsIT8GetProperty(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #9
  %call4 = call i32 @atoi(i8* %call3) #12
  %9 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %9, i32 0, i32 2
  store i32 %call4, i32* %nPatches, align 4, !tbaa !51
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %11 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples5 = getelementptr inbounds %struct._Table, %struct._Table* %11, i32 0, i32 1
  %12 = load i32, i32* %nSamples5, align 4, !tbaa !48
  %add = add i32 %12, 1
  %13 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches6 = getelementptr inbounds %struct._Table, %struct._Table* %13, i32 0, i32 2
  %14 = load i32, i32* %nPatches6, align 4, !tbaa !51
  %add7 = add i32 %14, 1
  %mul = mul i32 %add, %add7
  %conv = zext i32 %mul to i64
  %mul8 = mul i64 %conv, 8
  %conv9 = trunc i64 %mul8 to i32
  %call10 = call i8* @AllocChunk(%struct.cmsIT8* %10, i32 %conv9) #9
  %15 = bitcast i8* %call10 to i8**
  %16 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data11 = getelementptr inbounds %struct._Table, %struct._Table* %16, i32 0, i32 6
  store i8** %15, i8*** %Data11, align 8, !tbaa !21
  %17 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data12 = getelementptr inbounds %struct._Table, %struct._Table* %17, i32 0, i32 6
  %18 = load i8**, i8*** %Data12, align 8, !tbaa !21
  %cmp = icmp eq i8** %18, null
  br i1 %cmp, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.141, i32 0, i32 0)) #9
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %20 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
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

declare i32 @cmsstrcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @LocateEmptyPatch(%struct.cmsIT8* %it8) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %3) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !15
  %5 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %5, i32 0, i32 2
  %6 = load i32, i32* %nPatches, align 4, !tbaa !51
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !15
  %9 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SampleID = getelementptr inbounds %struct._Table, %struct._Table* %9, i32 0, i32 3
  %10 = load i32, i32* %SampleID, align 4, !tbaa !56
  %call1 = call i8* @GetData(%struct.cmsIT8* %7, i32 %8, i32 %10) #9
  store i8* %call1, i8** %data, align 8, !tbaa !1
  %11 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %11, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !15
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !15
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %14 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetDataDbl(i8* %hIT8, i8* %cPatch, i8* %cSample, double %Val) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %cPatch.addr = alloca i8*, align 8
  %cSample.addr = alloca i8*, align 8
  %Val.addr = alloca double, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %Buff = alloca [256 x i8], align 16
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cPatch, i8** %cPatch.addr, align 8, !tbaa !1
  store i8* %cSample, i8** %cSample.addr, align 8, !tbaa !1
  store double %Val, double* %Val.addr, align 8, !tbaa !45
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast [256 x i8]* %Buff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %3) #1
  %4 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2666, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.cmsIT8SetDataDbl, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Buff, i32 0, i32 0
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %DoubleFormatter = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %6, i32 0, i32 18
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter, i32 0, i32 0
  %7 = load double, double* %Val.addr, align 8, !tbaa !45
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 255, i8* %arraydecay1, double %7) #10
  %8 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %cPatch.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %Buff, i32 0, i32 0
  %call3 = call i32 @cmsIT8SetData(i8* %8, i8* %9, i8* %10, i8* %arraydecay2) #9
  %11 = bitcast [256 x i8]* %Buff to i8*
  call void @llvm.lifetime.end(i64 256, i8* %11) #1
  %12 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %call3
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @cmsIT8GetPatchName(i8* %hIT8, i32 %nPatch, i8* %buffer) #0 {
entry:
  %retval = alloca i8*, align 8
  %hIT8.addr = alloca i8*, align 8
  %nPatch.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %t = alloca %struct._Table*, align 8
  %Data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i32 %nPatch, i32* %nPatch.addr, align 4, !tbaa !15
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2680, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.cmsIT8GetPatchName, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %7) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %9 = load i32, i32* %nPatch.addr, align 4, !tbaa !15
  %10 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %SampleID = getelementptr inbounds %struct._Table, %struct._Table* %10, i32 0, i32 3
  %11 = load i32, i32* %SampleID, align 4, !tbaa !56
  %call1 = call i8* @GetData(%struct.cmsIT8* %8, i32 %9, i32 %11) #9
  store i8* %call1, i8** %Data, align 8, !tbaa !1
  %12 = load i8*, i8** %Data, align 8, !tbaa !1
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %tobool2 = icmp ne i8* %13, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %14 = load i8*, i8** %Data, align 8, !tbaa !1
  store i8* %14, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %15 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %Data, align 8, !tbaa !1
  %call5 = call i8* @strncpy(i8* %15, i8* %16, i64 1023) #10
  %17 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1023
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %18 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %18, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %19 = bitcast i8** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8GetPatchByName(i8* %hIT8, i8* %cPatch) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %cPatch.addr = alloca i8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cPatch, i8** %cPatch.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2695, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.cmsIT8GetPatchByName, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.cmsIT8*
  %4 = load i8*, i8** %cPatch.addr, align 8, !tbaa !1
  %call = call i32 @LocatePatch(%struct.cmsIT8* %3, i8* %4) #9
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8TableCount(i8* %hIT8) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2704, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.cmsIT8TableCount, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %TablesCount = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %5, i32 0, i32 0
  %6 = load i32, i32* %TablesCount, align 4, !tbaa !16
  %7 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetTableByLabel(i8* %hIT8, i8* %cSet, i8* %cField, i8* %ExpectedType) #0 {
entry:
  %retval = alloca i32, align 4
  %hIT8.addr = alloca i8*, align 8
  %cSet.addr = alloca i8*, align 8
  %cField.addr = alloca i8*, align 8
  %ExpectedType.addr = alloca i8*, align 8
  %cLabelFld = alloca i8*, align 8
  %Type = alloca [256 x i8], align 16
  %Label = alloca [256 x i8], align 16
  %nTable = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cSet, i8** %cSet.addr, align 8, !tbaa !1
  store i8* %cField, i8** %cField.addr, align 8, !tbaa !1
  store i8* %ExpectedType, i8** %ExpectedType.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cLabelFld to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [256 x i8]* %Type to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #1
  %2 = bitcast [256 x i8]* %Label to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #1
  %3 = bitcast i32* %nTable to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2718, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.cmsIT8SetTableByLabel, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i8*, i8** %cField.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %7 = load i8*, i8** %cField.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !22
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %cField.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %9 = load i8*, i8** %cField.addr, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %9, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %cField.addr, align 8, !tbaa !1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %10 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %cSet.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %cField.addr, align 8, !tbaa !1
  %call = call i8* @cmsIT8GetData(i8* %10, i8* %11, i8* %12) #9
  store i8* %call, i8** %cLabelFld, align 8, !tbaa !1
  %13 = load i8*, i8** %cLabelFld, align 8, !tbaa !1
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.7
  %14 = load i8*, i8** %cLabelFld, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Label, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %Type, i32 0, i32 0
  %call11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay, i32* %nTable, i8* %arraydecay10) #10
  %cmp12 = icmp ne i32 %call11, 3
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.9
  %15 = load i8*, i8** %ExpectedType.addr, align 8, !tbaa !1
  %cmp16 = icmp ne i8* %15, null
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.23

land.lhs.true.18:                                 ; preds = %if.end.15
  %16 = load i8*, i8** %ExpectedType.addr, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !22
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.18
  store i8* null, i8** %ExpectedType.addr, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.18, %if.end.15
  %18 = load i8*, i8** %ExpectedType.addr, align 8, !tbaa !1
  %tobool24 = icmp ne i8* %18, null
  br i1 %tobool24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.end.23
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %Type, i32 0, i32 0
  %19 = load i8*, i8** %ExpectedType.addr, align 8, !tbaa !1
  %call27 = call i32 @cmsstrcasecmp(i8* %arraydecay26, i8* %19) #9
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.25
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.23
  %20 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %21 = load i32, i32* %nTable, align 4, !tbaa !15
  %call33 = call i32 @cmsIT8SetTable(i8* %20, i32 %21) #9
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.30, %if.then.14, %if.then.8
  %22 = bitcast i32* %nTable to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast [256 x i8]* %Label to i8*
  call void @llvm.lifetime.end(i64 256, i8* %23) #1
  %24 = bitcast [256 x i8]* %Type to i8*
  call void @llvm.lifetime.end(i64 256, i8* %24) #1
  %25 = bitcast i8** %cLabelFld to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @cmsIT8SetIndexColumn(i8* %hIT8, i8* %cSample) #0 {
entry:
  %retval = alloca i32, align 4
  %hIT8.addr = alloca i8*, align 8
  %cSample.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %cSample, i8** %cSample.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2749, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.cmsIT8SetIndexColumn, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %7 = load i8*, i8** %cSample.addr, align 8, !tbaa !1
  %call = call i32 @LocateSample(%struct.cmsIT8* %6, i8* %7) #9
  store i32 %call, i32* %pos, align 4, !tbaa !15
  %8 = load i32, i32* %pos, align 4, !tbaa !15
  %cmp1 = icmp eq i32 %8, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = load i32, i32* %pos, align 4, !tbaa !15
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %nTable = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 1
  %11 = load i32, i32* %nTable, align 4, !tbaa !17
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [255 x %struct._Table], [255 x %struct._Table]* %Tab, i32 0, i64 %idxprom
  %SampleID = getelementptr inbounds %struct._Table, %struct._Table* %arrayidx, i32 0, i32 3
  store i32 %9, i32* %SampleID, align 4, !tbaa !56
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @cmsIT8DefineDblFormat(i8* %hIT8, i8* %Formatter) #0 {
entry:
  %hIT8.addr = alloca i8*, align 8
  %Formatter.addr = alloca i8*, align 8
  %it8 = alloca %struct.cmsIT8*, align 8
  store i8* %hIT8, i8** %hIT8.addr, align 8, !tbaa !1
  store i8* %Formatter, i8** %Formatter.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsIT8*
  store %struct.cmsIT8* %2, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %3 = load i8*, i8** %hIT8.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 2764, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.cmsIT8DefineDblFormat, i32 0, i32 0)) #13
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i8*, i8** %Formatter.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %5, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %DoubleFormatter = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %6, i32 0, i32 18
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #10
  br label %if.end

if.else:                                          ; preds = %cond.end
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %DoubleFormatter2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 18
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter2, i32 0, i32 0
  %8 = load i8*, i8** %Formatter.addr, align 8, !tbaa !1
  %call4 = call i8* @strncpy(i8* %arraydecay3, i8* %8, i64 128) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8, align 8, !tbaa !1
  %DoubleFormatter5 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 18
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter5, i32 0, i64 127
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %10 = bitcast %struct.cmsIT8** %it8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @AllocBigBlock(%struct.cmsIT8* %it8, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %size.addr = alloca i32, align 4
  %ptr1 = alloca %struct._OwnedMem*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !15
  %0 = bitcast %struct._OwnedMem** %ptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %2, i32 0, i32 19
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !13
  %4 = load i32, i32* %size.addr, align 4, !tbaa !15
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %3, i32 %4) #9
  store i8* %call, i8** %ptr, align 8, !tbaa !1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %6, i32 0, i32 19
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !13
  %call2 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %7, i32 16) #9
  %8 = bitcast i8* %call2 to %struct._OwnedMem*
  store %struct._OwnedMem* %8, %struct._OwnedMem** %ptr1, align 8, !tbaa !1
  %9 = load %struct._OwnedMem*, %struct._OwnedMem** %ptr1, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._OwnedMem* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ContextID5 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 19
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID5, align 8, !tbaa !13
  %12 = load i8*, i8** %ptr, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %11, i8* %12) #9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load i8*, i8** %ptr, align 8, !tbaa !1
  %14 = load %struct._OwnedMem*, %struct._OwnedMem** %ptr1, align 8, !tbaa !1
  %Ptr = getelementptr inbounds %struct._OwnedMem, %struct._OwnedMem* %14, i32 0, i32 1
  store i8* %13, i8** %Ptr, align 8, !tbaa !12
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %MemorySink = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %15, i32 0, i32 3
  %16 = load %struct._OwnedMem*, %struct._OwnedMem** %MemorySink, align 8, !tbaa !5
  %17 = load %struct._OwnedMem*, %struct._OwnedMem** %ptr1, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._OwnedMem, %struct._OwnedMem* %17, i32 0, i32 0
  store %struct._OwnedMem* %16, %struct._OwnedMem** %Next, align 8, !tbaa !10
  %18 = load %struct._OwnedMem*, %struct._OwnedMem** %ptr1, align 8, !tbaa !1
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %MemorySink6 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %19, i32 0, i32 3
  store %struct._OwnedMem* %18, %struct._OwnedMem** %MemorySink6, align 8, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %20 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8* %20, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.4
  %21 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct._OwnedMem** %ptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal i8* @AllocString(%struct.cmsIT8* %it8, i8* %str) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %str.addr = alloca i8*, align 8
  %Size = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i32* %Size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #12
  %conv = trunc i64 %call to i32
  %add = add i32 %conv, 1
  store i32 %add, i32* %Size, align 4, !tbaa !15
  %2 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %4 = load i32, i32* %Size, align 4, !tbaa !15
  %call1 = call i8* @AllocChunk(%struct.cmsIT8* %3, i32 %4) #9
  store i8* %call1, i8** %ptr, align 8, !tbaa !1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !1
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %8 = load i32, i32* %Size, align 4, !tbaa !15
  %sub = sub i32 %8, 1
  %conv2 = zext i32 %sub to i64
  %call3 = call i8* @strncpy(i8* %6, i8* %7, i64 %conv2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %ptr, align 8, !tbaa !1
  %10 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast i32* %Size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret i8* %9
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define internal double @xpow10(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !15
  %0 = load i32, i32* %n.addr, align 4, !tbaa !15
  %conv = sitofp i32 %0 to double
  %call = call double @pow(double 1.000000e+01, double %conv) #10
  ret double %call
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #6

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define internal void @WriteStr(%struct.SAVESTREAM* %f, i8* %str) #0 {
entry:
  %f.addr = alloca %struct.SAVESTREAM*, align 8
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.SAVESTREAM* %f, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8** %str.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #12
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4, !tbaa !15
  %3 = load i32, i32* %len, align 4, !tbaa !15
  %4 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %Used = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %4, i32 0, i32 3
  %5 = load i32, i32* %Used, align 4, !tbaa !54
  %add = add i32 %5, %3
  store i32 %add, i32* %Used, align 4, !tbaa !54
  %6 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !49
  %tobool = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %8 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %9 = load i32, i32* %len, align 4, !tbaa !15
  %conv2 = zext i32 %9 to i64
  %10 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %stream3 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream3, align 8, !tbaa !49
  %call4 = call i64 @fwrite(i8* %8, i64 1, i64 %conv2, %struct._IO_FILE* %11) #9
  %12 = load i32, i32* %len, align 4, !tbaa !15
  %conv5 = zext i32 %12 to i64
  %cmp6 = icmp ne i64 %call4, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* null, i32 7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.98, i32 0, i32 0)) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.1
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %13 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %Base = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %13, i32 0, i32 1
  %14 = load i8*, i8** %Base, align 8, !tbaa !52
  %tobool10 = icmp ne i8* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.else
  %15 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %Used12 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %15, i32 0, i32 3
  %16 = load i32, i32* %Used12, align 4, !tbaa !54
  %17 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %Max = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %17, i32 0, i32 4
  %18 = load i32, i32* %Max, align 4, !tbaa !55
  %cmp13 = icmp ugt i32 %16, %18
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* null, i32 7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i32 0, i32 0)) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.11
  %19 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %Ptr = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %19, i32 0, i32 2
  %20 = load i8*, i8** %Ptr, align 8, !tbaa !53
  %21 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %22 = load i32, i32* %len, align 4, !tbaa !15
  %conv17 = zext i32 %22 to i64
  %call18 = call i8* @memmove(i8* %20, i8* %21, i64 %conv17) #10
  %23 = load i32, i32* %len, align 4, !tbaa !15
  %24 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %Ptr19 = getelementptr inbounds %struct.SAVESTREAM, %struct.SAVESTREAM* %24, i32 0, i32 2
  %25 = load i8*, i8** %Ptr19, align 8, !tbaa !53
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %Ptr19, align 8, !tbaa !53
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.16, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.15, %if.then.8
  %26 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
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
define internal void @Writef(%struct.SAVESTREAM* %f, i8* %frm, ...) #0 {
entry:
  %f.addr = alloca %struct.SAVESTREAM*, align 8
  %frm.addr = alloca i8*, align 8
  %Buffer = alloca [4096 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.SAVESTREAM* %f, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  store i8* %frm, i8** %frm.addr, align 8, !tbaa !1
  %0 = bitcast [4096 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %Buffer, i32 0, i32 0
  %2 = load i8*, i8** %frm.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 4095, i8* %2, %struct.__va_list_tag* %arraydecay3) #10
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %Buffer, i32 0, i64 4095
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %3 = load %struct.SAVESTREAM*, %struct.SAVESTREAM** %f.addr, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %Buffer, i32 0, i32 0
  call void @WriteStr(%struct.SAVESTREAM* %3, i8* %arraydecay4) #9
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %4 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %4) #1
  %5 = bitcast [4096 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %5) #1
  ret void
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #7 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #10
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @ReadType(%struct.cmsIT8* %it8, i8* %SheetTypePtr) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %SheetTypePtr.addr = alloca i8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %SheetTypePtr, i8** %SheetTypePtr.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %0, i32 0, i32 6
  %1 = load i32, i32* %ch, align 4, !tbaa !31
  %call = call i32 @isseparator(i32 %1) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %2) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.10, %while.end
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %3, i32 0, i32 6
  %4 = load i32, i32* %ch2, align 4, !tbaa !31
  %cmp = icmp ne i32 %4, 13
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.1
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch3 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %5, i32 0, i32 6
  %6 = load i32, i32* %ch3, align 4, !tbaa !31
  %cmp4 = icmp ne i32 %6, 10
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch6 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 6
  %8 = load i32, i32* %ch6, align 4, !tbaa !31
  %cmp7 = icmp ne i32 %8, 9
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch8 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 6
  %10 = load i32, i32* %ch8, align 4, !tbaa !31
  %cmp9 = icmp ne i32 %10, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %while.cond.1
  %11 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %while.cond.1 ], [ %cmp9, %land.rhs ]
  br i1 %11, label %while.body.10, label %while.end.12

while.body.10:                                    ; preds = %land.end
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch11 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 6
  %13 = load i32, i32* %ch11, align 4, !tbaa !31
  %conv = trunc i32 %13 to i8
  %14 = load i8*, i8** %SheetTypePtr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %SheetTypePtr.addr, align 8, !tbaa !1
  store i8 %conv, i8* %14, align 1, !tbaa !22
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %15) #9
  br label %while.cond.1

while.end.12:                                     ; preds = %land.end
  %16 = load i8*, i8** %SheetTypePtr.addr, align 8, !tbaa !1
  store i8 0, i8* %16, align 1, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InSymbol(%struct.cmsIT8* %it8) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %idptr = alloca i8*, align 8
  %k = alloca i32, align 4
  %key = alloca i32, align 4
  %sng = alloca i32, align 4
  %sign = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %j = alloca i32, align 4
  %__res61 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__res92 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %j100 = alloca i32, align 4
  %FileNest = alloca %struct._FileContext*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast i8** %idptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %key to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %sng to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %do.cond.270, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %4, i32 0, i32 6
  %5 = load i32, i32* %ch, align 4, !tbaa !31
  %call = call i32 @isseparator(i32 %5) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %6) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 6
  %8 = load i32, i32* %ch1, align 4, !tbaa !31
  %call2 = call i32 @isfirstidchar(i32 %8) #9
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else.18

if.then:                                          ; preds = %while.end
  store i32 0, i32* %k, align 4, !tbaa !15
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 9
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  store i8* %arraydecay, i8** %idptr, align 8, !tbaa !1
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %if.then
  %10 = load i32, i32* %k, align 4, !tbaa !15
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4, !tbaa !15
  %cmp = icmp slt i32 %inc, 128
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.body.4
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch6 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %11, i32 0, i32 6
  %12 = load i32, i32* %ch6, align 4, !tbaa !31
  %conv = trunc i32 %12 to i8
  %13 = load i8*, i8** %idptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %idptr, align 8, !tbaa !1
  store i8 %conv, i8* %13, align 1, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.5, %do.body.4
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %14) #9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch7 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %15, i32 0, i32 6
  %16 = load i32, i32* %ch7, align 4, !tbaa !31
  %call8 = call i32 @isidchar(i32 %16) #9
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i8*, i8** %idptr, align 8, !tbaa !1
  store i8 0, i8* %17, align 1, !tbaa !22
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id10 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %18, i32 0, i32 9
  %arraydecay11 = getelementptr inbounds [128 x i8], [128 x i8]* %id10, i32 0, i32 0
  %call12 = call i32 @BinSrchKey(i8* %arraydecay11) #9
  store i32 %call12, i32* %key, align 4, !tbaa !22
  %19 = load i32, i32* %key, align 4, !tbaa !22
  %cmp13 = icmp eq i32 %19, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.end
  %20 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %20, i32 0, i32 5
  store i32 3, i32* %sy, align 4, !tbaa !25
  br label %if.end.17

if.else:                                          ; preds = %do.end
  %21 = load i32, i32* %key, align 4, !tbaa !22
  %22 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy16 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %22, i32 0, i32 5
  store i32 %21, i32* %sy16, align 4, !tbaa !25
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %if.end.269

if.else.18:                                       ; preds = %while.end
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch19 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %23, i32 0, i32 6
  %24 = load i32, i32* %ch19, align 4, !tbaa !31
  %idxprom = sext i32 %24 to i64
  %call20 = call i16** @__ctype_b_loc() #11
  %25 = load i16*, i16** %call20, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 %idxprom
  %26 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %conv21 = zext i16 %26 to i32
  %and = and i32 %conv21, 2048
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.18
  %27 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch23 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %27, i32 0, i32 6
  %28 = load i32, i32* %ch23, align 4, !tbaa !31
  %cmp24 = icmp eq i32 %28, 46
  br i1 %cmp24, label %if.then.34, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %29 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch27 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %29, i32 0, i32 6
  %30 = load i32, i32* %ch27, align 4, !tbaa !31
  %cmp28 = icmp eq i32 %30, 45
  br i1 %cmp28, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.26
  %31 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch31 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %31, i32 0, i32 6
  %32 = load i32, i32* %ch31, align 4, !tbaa !31
  %cmp32 = icmp eq i32 %32, 43
  br i1 %cmp32, label %if.then.34, label %if.else.208

if.then.34:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.26, %lor.lhs.false, %if.else.18
  %33 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 1, i32* %sign, align 4, !tbaa !15
  %34 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch35 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %34, i32 0, i32 6
  %35 = load i32, i32* %ch35, align 4, !tbaa !31
  %cmp36 = icmp eq i32 %35, 45
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  store i32 -1, i32* %sign, align 4, !tbaa !15
  %36 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %36) #9
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.34
  %37 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %37, i32 0, i32 7
  store i32 0, i32* %inum, align 4, !tbaa !33
  %38 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy40 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %38, i32 0, i32 5
  store i32 1, i32* %sy40, align 4, !tbaa !25
  %39 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch41 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %39, i32 0, i32 6
  %40 = load i32, i32* %ch41, align 4, !tbaa !31
  %cmp42 = icmp eq i32 %40, 48
  br i1 %cmp42, label %if.then.44, label %if.end.126

if.then.44:                                       ; preds = %if.end.39
  %41 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %41) #9
  %42 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch45 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %43, i32 0, i32 6
  %44 = load i32, i32* %ch45, align 4, !tbaa !31
  %call46 = call i32 @toupper(i32 %44) #10
  store i32 %call46, i32* %__res, align 4, !tbaa !15
  %45 = load i32, i32* %__res, align 4, !tbaa !15
  store i32 %45, i32* %tmp, !tbaa !15
  %46 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %tmp, !tbaa !15
  %cmp47 = icmp eq i32 %47, 88
  br i1 %cmp47, label %if.then.49, label %if.end.90

if.then.49:                                       ; preds = %if.then.44
  %48 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %49) #9
  br label %while.cond.51

while.cond.51:                                    ; preds = %if.end.84, %if.then.49
  %50 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch52 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %50, i32 0, i32 6
  %51 = load i32, i32* %ch52, align 4, !tbaa !31
  %idxprom53 = sext i32 %51 to i64
  %call54 = call i16** @__ctype_b_loc() #11
  %52 = load i16*, i16** %call54, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i16, i16* %52, i64 %idxprom53
  %53 = load i16, i16* %arrayidx55, align 2, !tbaa !46
  %conv56 = zext i16 %53 to i32
  %and57 = and i32 %conv56, 4096
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %while.body.59, label %while.end.89

while.body.59:                                    ; preds = %while.cond.51
  %54 = bitcast i32* %__res61 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch62 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %55, i32 0, i32 6
  %56 = load i32, i32* %ch62, align 4, !tbaa !31
  %call63 = call i32 @toupper(i32 %56) #10
  store i32 %call63, i32* %__res61, align 4, !tbaa !15
  %57 = load i32, i32* %__res61, align 4, !tbaa !15
  store i32 %57, i32* %tmp64, !tbaa !15
  %58 = bitcast i32* %__res61 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = load i32, i32* %tmp64, !tbaa !15
  %60 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch65 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %60, i32 0, i32 6
  store i32 %59, i32* %ch65, align 4, !tbaa !31
  %61 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch66 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %61, i32 0, i32 6
  %62 = load i32, i32* %ch66, align 4, !tbaa !31
  %cmp67 = icmp sge i32 %62, 65
  br i1 %cmp67, label %land.lhs.true, label %if.else.74

land.lhs.true:                                    ; preds = %while.body.59
  %63 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch69 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %63, i32 0, i32 6
  %64 = load i32, i32* %ch69, align 4, !tbaa !31
  %cmp70 = icmp sle i32 %64, 70
  br i1 %cmp70, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %land.lhs.true
  %65 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch73 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %65, i32 0, i32 6
  %66 = load i32, i32* %ch73, align 4, !tbaa !31
  %sub = sub nsw i32 %66, 65
  %add = add nsw i32 %sub, 10
  store i32 %add, i32* %j, align 4, !tbaa !15
  br label %if.end.77

if.else.74:                                       ; preds = %land.lhs.true, %while.body.59
  %67 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch75 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %67, i32 0, i32 6
  %68 = load i32, i32* %ch75, align 4, !tbaa !31
  %sub76 = sub nsw i32 %68, 48
  store i32 %sub76, i32* %j, align 4, !tbaa !15
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.72
  %69 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum78 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %69, i32 0, i32 7
  %70 = load i32, i32* %inum78, align 4, !tbaa !33
  %conv79 = sext i32 %70 to i64
  %mul = mul nsw i64 %conv79, 16
  %cmp80 = icmp sgt i64 %mul, 2147483647
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.77
  %71 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call83 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i32 0, i32 0)) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %if.end.77
  %72 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum85 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %72, i32 0, i32 7
  %73 = load i32, i32* %inum85, align 4, !tbaa !33
  %mul86 = mul nsw i32 %73, 16
  %74 = load i32, i32* %j, align 4, !tbaa !15
  %add87 = add nsw i32 %mul86, %74
  %75 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum88 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %75, i32 0, i32 7
  store i32 %add87, i32* %inum88, align 4, !tbaa !33
  %76 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %76) #9
  br label %while.cond.51

while.end.89:                                     ; preds = %while.cond.51
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.89, %if.then.82
  %77 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  br label %cleanup.207

if.end.90:                                        ; preds = %if.then.44
  %78 = bitcast i32* %__res92 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch93 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %79, i32 0, i32 6
  %80 = load i32, i32* %ch93, align 4, !tbaa !31
  %call94 = call i32 @toupper(i32 %80) #10
  store i32 %call94, i32* %__res92, align 4, !tbaa !15
  %81 = load i32, i32* %__res92, align 4, !tbaa !15
  store i32 %81, i32* %tmp95, !tbaa !15
  %82 = bitcast i32* %__res92 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = load i32, i32* %tmp95, !tbaa !15
  %cmp96 = icmp eq i32 %83, 66
  br i1 %cmp96, label %if.then.98, label %if.end.125

if.then.98:                                       ; preds = %if.end.90
  %84 = bitcast i32* %j100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %85) #9
  br label %while.cond.101

while.cond.101:                                   ; preds = %if.end.118, %if.then.98
  %86 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch102 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %86, i32 0, i32 6
  %87 = load i32, i32* %ch102, align 4, !tbaa !31
  %cmp103 = icmp eq i32 %87, 48
  br i1 %cmp103, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.101
  %88 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch105 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %88, i32 0, i32 6
  %89 = load i32, i32* %ch105, align 4, !tbaa !31
  %cmp106 = icmp eq i32 %89, 49
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.101
  %90 = phi i1 [ true, %while.cond.101 ], [ %cmp106, %lor.rhs ]
  br i1 %90, label %while.body.108, label %while.end.123

while.body.108:                                   ; preds = %lor.end
  %91 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch109 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %91, i32 0, i32 6
  %92 = load i32, i32* %ch109, align 4, !tbaa !31
  %sub110 = sub nsw i32 %92, 48
  store i32 %sub110, i32* %j100, align 4, !tbaa !15
  %93 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum111 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %93, i32 0, i32 7
  %94 = load i32, i32* %inum111, align 4, !tbaa !33
  %conv112 = sext i32 %94 to i64
  %mul113 = mul nsw i64 %conv112, 2
  %cmp114 = icmp sgt i64 %mul113, 2147483647
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %while.body.108
  %95 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call117 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i32 0, i32 0)) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end.118:                                       ; preds = %while.body.108
  %96 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum119 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %96, i32 0, i32 7
  %97 = load i32, i32* %inum119, align 4, !tbaa !33
  %mul120 = mul nsw i32 %97, 2
  %98 = load i32, i32* %j100, align 4, !tbaa !15
  %add121 = add nsw i32 %mul120, %98
  %99 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum122 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %99, i32 0, i32 7
  store i32 %add121, i32* %inum122, align 4, !tbaa !33
  %100 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %100) #9
  br label %while.cond.101

while.end.123:                                    ; preds = %lor.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

cleanup.124:                                      ; preds = %while.end.123, %if.then.116
  %101 = bitcast i32* %j100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  br label %cleanup.207

if.end.125:                                       ; preds = %if.end.90
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.39
  br label %while.cond.127

while.cond.127:                                   ; preds = %if.end.146, %if.end.126
  %102 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch128 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %102, i32 0, i32 6
  %103 = load i32, i32* %ch128, align 4, !tbaa !31
  %idxprom129 = sext i32 %103 to i64
  %call130 = call i16** @__ctype_b_loc() #11
  %104 = load i16*, i16** %call130, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i16, i16* %104, i64 %idxprom129
  %105 = load i16, i16* %arrayidx131, align 2, !tbaa !46
  %conv132 = zext i16 %105 to i32
  %and133 = and i32 %conv132, 2048
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %while.body.135, label %while.end.153

while.body.135:                                   ; preds = %while.cond.127
  %106 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum136 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %106, i32 0, i32 7
  %107 = load i32, i32* %inum136, align 4, !tbaa !33
  %conv137 = sext i32 %107 to i64
  %mul138 = mul nsw i64 %conv137, 10
  %cmp139 = icmp sgt i64 %mul138, 2147483647
  br i1 %cmp139, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %while.body.135
  %108 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %109 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum142 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %109, i32 0, i32 7
  %110 = load i32, i32* %inum142, align 4, !tbaa !33
  call void @ReadReal(%struct.cmsIT8* %108, i32 %110) #9
  %111 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy143 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %111, i32 0, i32 5
  store i32 2, i32* %sy143, align 4, !tbaa !25
  %112 = load i32, i32* %sign, align 4, !tbaa !15
  %conv144 = sitofp i32 %112 to double
  %113 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %113, i32 0, i32 8
  %114 = load double, double* %dnum, align 8, !tbaa !34
  %mul145 = fmul double %114, %conv144
  store double %mul145, double* %dnum, align 8, !tbaa !34
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

if.end.146:                                       ; preds = %while.body.135
  %115 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum147 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %115, i32 0, i32 7
  %116 = load i32, i32* %inum147, align 4, !tbaa !33
  %mul148 = mul nsw i32 %116, 10
  %117 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch149 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %117, i32 0, i32 6
  %118 = load i32, i32* %ch149, align 4, !tbaa !31
  %sub150 = sub nsw i32 %118, 48
  %add151 = add nsw i32 %mul148, %sub150
  %119 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum152 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %119, i32 0, i32 7
  store i32 %add151, i32* %inum152, align 4, !tbaa !33
  %120 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %120) #9
  br label %while.cond.127

while.end.153:                                    ; preds = %while.cond.127
  %121 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch154 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %121, i32 0, i32 6
  %122 = load i32, i32* %ch154, align 4, !tbaa !31
  %cmp155 = icmp eq i32 %122, 46
  br i1 %cmp155, label %if.then.157, label %if.end.163

if.then.157:                                      ; preds = %while.end.153
  %123 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %124 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum158 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %124, i32 0, i32 7
  %125 = load i32, i32* %inum158, align 4, !tbaa !33
  call void @ReadReal(%struct.cmsIT8* %123, i32 %125) #9
  %126 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy159 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %126, i32 0, i32 5
  store i32 2, i32* %sy159, align 4, !tbaa !25
  %127 = load i32, i32* %sign, align 4, !tbaa !15
  %conv160 = sitofp i32 %127 to double
  %128 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum161 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %128, i32 0, i32 8
  %129 = load double, double* %dnum161, align 8, !tbaa !34
  %mul162 = fmul double %129, %conv160
  store double %mul162, double* %dnum161, align 8, !tbaa !34
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

if.end.163:                                       ; preds = %while.end.153
  %130 = load i32, i32* %sign, align 4, !tbaa !15
  %131 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum164 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %131, i32 0, i32 7
  %132 = load i32, i32* %inum164, align 4, !tbaa !33
  %mul165 = mul nsw i32 %132, %130
  store i32 %mul165, i32* %inum164, align 4, !tbaa !33
  %133 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch166 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %133, i32 0, i32 6
  %134 = load i32, i32* %ch166, align 4, !tbaa !31
  %call167 = call i32 @isidchar(i32 %134) #9
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then.169, label %if.end.206

if.then.169:                                      ; preds = %if.end.163
  %135 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy170 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %135, i32 0, i32 5
  %136 = load i32, i32* %sy170, align 4, !tbaa !25
  %cmp171 = icmp eq i32 %136, 1
  br i1 %cmp171, label %if.then.173, label %if.else.178

if.then.173:                                      ; preds = %if.then.169
  %137 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id174 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %137, i32 0, i32 9
  %arraydecay175 = getelementptr inbounds [128 x i8], [128 x i8]* %id174, i32 0, i32 0
  %138 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum176 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %138, i32 0, i32 7
  %139 = load i32, i32* %inum176, align 4, !tbaa !33
  %call177 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i32 %139) #10
  br label %if.end.184

if.else.178:                                      ; preds = %if.then.169
  %140 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id179 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %140, i32 0, i32 9
  %arraydecay180 = getelementptr inbounds [128 x i8], [128 x i8]* %id179, i32 0, i32 0
  %141 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %DoubleFormatter = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %141, i32 0, i32 18
  %arraydecay181 = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter, i32 0, i32 0
  %142 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum182 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %142, i32 0, i32 8
  %143 = load double, double* %dnum182, align 8, !tbaa !34
  %call183 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay180, i8* %arraydecay181, double %143) #10
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.178, %if.then.173
  %144 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id185 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %144, i32 0, i32 9
  %arraydecay186 = getelementptr inbounds [128 x i8], [128 x i8]* %id185, i32 0, i32 0
  %call187 = call i64 @strlen(i8* %arraydecay186) #12
  %conv188 = trunc i64 %call187 to i32
  store i32 %conv188, i32* %k, align 4, !tbaa !15
  %145 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id189 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %145, i32 0, i32 9
  %arraydecay190 = getelementptr inbounds [128 x i8], [128 x i8]* %id189, i32 0, i32 0
  %146 = load i32, i32* %k, align 4, !tbaa !15
  %idx.ext = sext i32 %146 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay190, i64 %idx.ext
  store i8* %add.ptr, i8** %idptr, align 8, !tbaa !1
  br label %do.body.191

do.body.191:                                      ; preds = %do.cond.200, %if.end.184
  %147 = load i32, i32* %k, align 4, !tbaa !15
  %inc192 = add nsw i32 %147, 1
  store i32 %inc192, i32* %k, align 4, !tbaa !15
  %cmp193 = icmp slt i32 %inc192, 128
  br i1 %cmp193, label %if.then.195, label %if.end.199

if.then.195:                                      ; preds = %do.body.191
  %148 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch196 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %148, i32 0, i32 6
  %149 = load i32, i32* %ch196, align 4, !tbaa !31
  %conv197 = trunc i32 %149 to i8
  %150 = load i8*, i8** %idptr, align 8, !tbaa !1
  %incdec.ptr198 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr198, i8** %idptr, align 8, !tbaa !1
  store i8 %conv197, i8* %150, align 1, !tbaa !22
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.195, %do.body.191
  %151 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %151) #9
  br label %do.cond.200

do.cond.200:                                      ; preds = %if.end.199
  %152 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch201 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %152, i32 0, i32 6
  %153 = load i32, i32* %ch201, align 4, !tbaa !31
  %call202 = call i32 @isidchar(i32 %153) #9
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %do.body.191, label %do.end.204

do.end.204:                                       ; preds = %do.cond.200
  %154 = load i8*, i8** %idptr, align 8, !tbaa !1
  store i8 0, i8* %154, align 1, !tbaa !22
  %155 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy205 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %155, i32 0, i32 5
  store i32 3, i32* %sy205, align 4, !tbaa !25
  br label %if.end.206

if.end.206:                                       ; preds = %do.end.204, %if.end.163
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

cleanup.207:                                      ; preds = %if.end.206, %if.then.157, %if.then.141, %cleanup.124, %cleanup
  %156 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  br label %cleanup.334

if.else.208:                                      ; preds = %lor.lhs.false.30
  %157 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch209 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %157, i32 0, i32 6
  %158 = load i32, i32* %ch209, align 4, !tbaa !31
  switch i32 %158, label %sw.default [
    i32 26, label %sw.bb
    i32 0, label %sw.bb.210
    i32 -1, label %sw.bb.210
    i32 13, label %sw.bb.212
    i32 10, label %sw.bb.220
    i32 35, label %sw.bb.224
    i32 39, label %sw.bb.238
    i32 34, label %sw.bb.238
  ]

sw.bb:                                            ; preds = %if.else.208
  %159 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %159) #9
  br label %sw.epilog

sw.bb.210:                                        ; preds = %if.else.208, %if.else.208
  %160 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy211 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %160, i32 0, i32 5
  store i32 7, i32* %sy211, align 4, !tbaa !25
  br label %sw.epilog

sw.bb.212:                                        ; preds = %if.else.208
  %161 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %161) #9
  %162 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch213 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %162, i32 0, i32 6
  %163 = load i32, i32* %ch213, align 4, !tbaa !31
  %cmp214 = icmp eq i32 %163, 10
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %sw.bb.212
  %164 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %164) #9
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %sw.bb.212
  %165 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy218 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %165, i32 0, i32 5
  store i32 6, i32* %sy218, align 4, !tbaa !25
  %166 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %lineno = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %166, i32 0, i32 14
  %167 = load i32, i32* %lineno, align 4, !tbaa !24
  %inc219 = add nsw i32 %167, 1
  store i32 %inc219, i32* %lineno, align 4, !tbaa !24
  br label %sw.epilog

sw.bb.220:                                        ; preds = %if.else.208
  %168 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %168) #9
  %169 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy221 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %169, i32 0, i32 5
  store i32 6, i32* %sy221, align 4, !tbaa !25
  %170 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %lineno222 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %170, i32 0, i32 14
  %171 = load i32, i32* %lineno222, align 4, !tbaa !24
  %inc223 = add nsw i32 %171, 1
  store i32 %inc223, i32* %lineno222, align 4, !tbaa !24
  br label %sw.epilog

sw.bb.224:                                        ; preds = %if.else.208
  %172 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %172) #9
  br label %while.cond.225

while.cond.225:                                   ; preds = %while.body.235, %sw.bb.224
  %173 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch226 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %173, i32 0, i32 6
  %174 = load i32, i32* %ch226, align 4, !tbaa !31
  %tobool227 = icmp ne i32 %174, 0
  br i1 %tobool227, label %land.lhs.true.228, label %land.end

land.lhs.true.228:                                ; preds = %while.cond.225
  %175 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch229 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %175, i32 0, i32 6
  %176 = load i32, i32* %ch229, align 4, !tbaa !31
  %cmp230 = icmp ne i32 %176, 10
  br i1 %cmp230, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.228
  %177 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch232 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %177, i32 0, i32 6
  %178 = load i32, i32* %ch232, align 4, !tbaa !31
  %cmp233 = icmp ne i32 %178, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.228, %while.cond.225
  %179 = phi i1 [ false, %land.lhs.true.228 ], [ false, %while.cond.225 ], [ %cmp233, %land.rhs ]
  br i1 %179, label %while.body.235, label %while.end.236

while.body.235:                                   ; preds = %land.end
  %180 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %180) #9
  br label %while.cond.225

while.end.236:                                    ; preds = %land.end
  %181 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy237 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %181, i32 0, i32 5
  store i32 5, i32* %sy237, align 4, !tbaa !25
  br label %sw.epilog

sw.bb.238:                                        ; preds = %if.else.208, %if.else.208
  %182 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %182, i32 0, i32 10
  %arraydecay239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay239, i8** %idptr, align 8, !tbaa !1
  %183 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch240 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %183, i32 0, i32 6
  %184 = load i32, i32* %ch240, align 4, !tbaa !31
  store i32 %184, i32* %sng, align 4, !tbaa !15
  store i32 0, i32* %k, align 4, !tbaa !15
  %185 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %185) #9
  br label %while.cond.241

while.cond.241:                                   ; preds = %if.end.263, %sw.bb.238
  %186 = load i32, i32* %k, align 4, !tbaa !15
  %cmp242 = icmp slt i32 %186, 1024
  br i1 %cmp242, label %land.rhs.244, label %land.end.248

land.rhs.244:                                     ; preds = %while.cond.241
  %187 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch245 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %187, i32 0, i32 6
  %188 = load i32, i32* %ch245, align 4, !tbaa !31
  %189 = load i32, i32* %sng, align 4, !tbaa !15
  %cmp246 = icmp ne i32 %188, %189
  br label %land.end.248

land.end.248:                                     ; preds = %land.rhs.244, %while.cond.241
  %190 = phi i1 [ false, %while.cond.241 ], [ %cmp246, %land.rhs.244 ]
  br i1 %190, label %while.body.249, label %while.end.264

while.body.249:                                   ; preds = %land.end.248
  %191 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch250 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %191, i32 0, i32 6
  %192 = load i32, i32* %ch250, align 4, !tbaa !31
  %cmp251 = icmp eq i32 %192, 10
  br i1 %cmp251, label %if.then.257, label %lor.lhs.false.253

lor.lhs.false.253:                                ; preds = %while.body.249
  %193 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch254 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %193, i32 0, i32 6
  %194 = load i32, i32* %ch254, align 4, !tbaa !31
  %cmp255 = icmp eq i32 %194, 13
  br i1 %cmp255, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %lor.lhs.false.253, %while.body.249
  store i32 1025, i32* %k, align 4, !tbaa !15
  br label %if.end.263

if.else.258:                                      ; preds = %lor.lhs.false.253
  %195 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch259 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %195, i32 0, i32 6
  %196 = load i32, i32* %ch259, align 4, !tbaa !31
  %conv260 = trunc i32 %196 to i8
  %197 = load i8*, i8** %idptr, align 8, !tbaa !1
  %incdec.ptr261 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr261, i8** %idptr, align 8, !tbaa !1
  store i8 %conv260, i8* %197, align 1, !tbaa !22
  %198 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %198) #9
  %199 = load i32, i32* %k, align 4, !tbaa !15
  %inc262 = add nsw i32 %199, 1
  store i32 %inc262, i32* %k, align 4, !tbaa !15
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.258, %if.then.257
  br label %while.cond.241

while.end.264:                                    ; preds = %land.end.248
  %200 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy265 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %200, i32 0, i32 5
  store i32 4, i32* %sy265, align 4, !tbaa !25
  %201 = load i8*, i8** %idptr, align 8, !tbaa !1
  store i8 0, i8* %201, align 1, !tbaa !22
  %202 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %202) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.208
  %203 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %204 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch266 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %204, i32 0, i32 6
  %205 = load i32, i32* %ch266, align 4, !tbaa !31
  %call267 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.110, i32 0, i32 0), i32 %205) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.334

sw.epilog:                                        ; preds = %while.end.264, %while.end.236, %sw.bb.220, %if.end.217, %sw.bb.210, %sw.bb
  br label %if.end.268

if.end.268:                                       ; preds = %sw.epilog
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.17
  br label %do.cond.270

do.cond.270:                                      ; preds = %if.end.269
  %206 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy271 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %206, i32 0, i32 5
  %207 = load i32, i32* %sy271, align 4, !tbaa !25
  %cmp272 = icmp eq i32 %207, 5
  br i1 %cmp272, label %do.body, label %do.end.274

do.end.274:                                       ; preds = %do.cond.270
  %208 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy275 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %208, i32 0, i32 5
  %209 = load i32, i32* %sy275, align 4, !tbaa !25
  %cmp276 = icmp eq i32 %209, 15
  br i1 %cmp276, label %if.then.278, label %if.end.333

if.then.278:                                      ; preds = %do.end.274
  %210 = bitcast %struct._FileContext** %FileNest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210) #1
  %211 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %211, i32 0, i32 16
  %212 = load i32, i32* %IncludeSP, align 4, !tbaa !23
  %cmp280 = icmp sge i32 %212, 19
  br i1 %cmp280, label %if.then.282, label %if.end.284

if.then.282:                                      ; preds = %if.then.278
  %213 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call283 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %213, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0)) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.284:                                       ; preds = %if.then.278
  %214 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %214) #9
  %215 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call285 = call i32 @Check(%struct.cmsIT8* %215, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i32 0, i32 0)) #9
  %tobool286 = icmp ne i32 %call285, 0
  br i1 %tobool286, label %if.end.288, label %if.then.287

if.then.287:                                      ; preds = %if.end.284
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.288:                                       ; preds = %if.end.284
  %216 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP289 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %216, i32 0, i32 16
  %217 = load i32, i32* %IncludeSP289, align 4, !tbaa !23
  %add290 = add nsw i32 %217, 1
  %idxprom291 = sext i32 %add290 to i64
  %218 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %218, i32 0, i32 15
  %arrayidx292 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack, i32 0, i64 %idxprom291
  %219 = load %struct._FileContext*, %struct._FileContext** %arrayidx292, align 8, !tbaa !1
  store %struct._FileContext* %219, %struct._FileContext** %FileNest, align 8, !tbaa !1
  %220 = load %struct._FileContext*, %struct._FileContext** %FileNest, align 8, !tbaa !1
  %cmp293 = icmp eq %struct._FileContext* %220, null
  br i1 %cmp293, label %if.then.295, label %if.end.302

if.then.295:                                      ; preds = %if.end.288
  %221 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call296 = call i8* @AllocChunk(%struct.cmsIT8* %221, i32 264) #9
  %222 = bitcast i8* %call296 to %struct._FileContext*
  %223 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP297 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %223, i32 0, i32 16
  %224 = load i32, i32* %IncludeSP297, align 4, !tbaa !23
  %add298 = add nsw i32 %224, 1
  %idxprom299 = sext i32 %add298 to i64
  %225 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack300 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %225, i32 0, i32 15
  %arrayidx301 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack300, i32 0, i64 %idxprom299
  store %struct._FileContext* %222, %struct._FileContext** %arrayidx301, align 8, !tbaa !1
  store %struct._FileContext* %222, %struct._FileContext** %FileNest, align 8, !tbaa !1
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.295, %if.end.288
  %226 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %str303 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %226, i32 0, i32 10
  %arraydecay304 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str303, i32 0, i32 0
  %227 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP305 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %227, i32 0, i32 16
  %228 = load i32, i32* %IncludeSP305, align 4, !tbaa !23
  %idxprom306 = sext i32 %228 to i64
  %229 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack307 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %229, i32 0, i32 15
  %arrayidx308 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack307, i32 0, i64 %idxprom306
  %230 = load %struct._FileContext*, %struct._FileContext** %arrayidx308, align 8, !tbaa !1
  %FileName = getelementptr inbounds %struct._FileContext, %struct._FileContext* %230, i32 0, i32 0
  %arraydecay309 = getelementptr inbounds [256 x i8], [256 x i8]* %FileName, i32 0, i32 0
  %231 = load %struct._FileContext*, %struct._FileContext** %FileNest, align 8, !tbaa !1
  %FileName310 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %231, i32 0, i32 0
  %arraydecay311 = getelementptr inbounds [256 x i8], [256 x i8]* %FileName310, i32 0, i32 0
  %call312 = call i32 @BuildAbsolutePath(i8* %arraydecay304, i8* %arraydecay309, i8* %arraydecay311, i32 255) #9
  %cmp313 = icmp eq i32 %call312, 0
  br i1 %cmp313, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %if.end.302
  %232 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call316 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0)) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.317:                                       ; preds = %if.end.302
  %233 = load %struct._FileContext*, %struct._FileContext** %FileNest, align 8, !tbaa !1
  %FileName318 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %233, i32 0, i32 0
  %arraydecay319 = getelementptr inbounds [256 x i8], [256 x i8]* %FileName318, i32 0, i32 0
  %call320 = call %struct._IO_FILE* @fopen(i8* %arraydecay319, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #9
  %234 = load %struct._FileContext*, %struct._FileContext** %FileNest, align 8, !tbaa !1
  %Stream = getelementptr inbounds %struct._FileContext, %struct._FileContext* %234, i32 0, i32 1
  store %struct._IO_FILE* %call320, %struct._IO_FILE** %Stream, align 8, !tbaa !57
  %235 = load %struct._FileContext*, %struct._FileContext** %FileNest, align 8, !tbaa !1
  %Stream321 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %235, i32 0, i32 1
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream321, align 8, !tbaa !57
  %cmp322 = icmp eq %struct._IO_FILE* %236, null
  br i1 %cmp322, label %if.then.324, label %if.end.328

if.then.324:                                      ; preds = %if.end.317
  %237 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %238 = load %struct._FileContext*, %struct._FileContext** %FileNest, align 8, !tbaa !1
  %FileName325 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %238, i32 0, i32 0
  %arraydecay326 = getelementptr inbounds [256 x i8], [256 x i8]* %FileName325, i32 0, i32 0
  %call327 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %237, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i8* %arraydecay326) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.328:                                       ; preds = %if.end.317
  %239 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP329 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %239, i32 0, i32 16
  %240 = load i32, i32* %IncludeSP329, align 4, !tbaa !23
  %inc330 = add nsw i32 %240, 1
  store i32 %inc330, i32* %IncludeSP329, align 4, !tbaa !23
  %241 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch331 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %241, i32 0, i32 6
  store i32 32, i32* %ch331, align 4, !tbaa !31
  %242 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %242) #9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.332

cleanup.332:                                      ; preds = %if.end.328, %if.then.324, %if.then.315, %if.then.287, %if.then.282
  %243 = bitcast %struct._FileContext** %FileNest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.334 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.332
  br label %if.end.333

if.end.333:                                       ; preds = %cleanup.cont, %do.end.274
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.334

cleanup.334:                                      ; preds = %if.end.333, %cleanup.332, %sw.default, %cleanup.207
  %244 = bitcast i32* %sng to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %key to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i8** %idptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %cleanup.dest.338 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.338, label %unreachable [
    i32 0, label %cleanup.cont.339
    i32 1, label %cleanup.cont.339
  ]

cleanup.cont.339:                                 ; preds = %cleanup.334, %cleanup.334
  ret void

unreachable:                                      ; preds = %cleanup.334
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @SkipEOLN(%struct.cmsIT8* %it8) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %0, i32 0, i32 5
  %1 = load i32, i32* %sy, align 4, !tbaa !25
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %2) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @DataFormatSection(%struct.cmsIT8* %it8) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %iField = alloca i32, align 4
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %iField, align 4, !tbaa !15
  %1 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %2) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %3) #9
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call1 = call i32 @CheckEOLN(%struct.cmsIT8* %4) #9
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %5, i32 0, i32 5
  %6 = load i32, i32* %sy, align 4, !tbaa !25
  %cmp = icmp ne i32 %6, 12
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 5
  %8 = load i32, i32* %sy2, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %8, 6
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy5 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 5
  %10 = load i32, i32* %sy5, align 4, !tbaa !25
  %cmp6 = icmp ne i32 %10, 7
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.4
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy7 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %11, i32 0, i32 5
  %12 = load i32, i32* %sy7, align 4, !tbaa !25
  %cmp8 = icmp ne i32 %12, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.4, %land.lhs.true, %while.cond
  %13 = phi i1 [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy9 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %14, i32 0, i32 5
  %15 = load i32, i32* %sy9, align 4, !tbaa !25
  %cmp10 = icmp ne i32 %15, 3
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0)) #9
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %17 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %18 = load i32, i32* %iField, align 4, !tbaa !15
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %19, i32 0, i32 9
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %call12 = call i32 @SetDataFormat(%struct.cmsIT8* %17, i32 %18, i8* %arraydecay) #9
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %20 = load i32, i32* %iField, align 4, !tbaa !15
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %iField, align 4, !tbaa !15
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %21) #9
  %22 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %22) #9
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %23) #9
  %24 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @Skip(%struct.cmsIT8* %24, i32 12) #9
  %25 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %25) #9
  %26 = load i32, i32* %iField, align 4, !tbaa !15
  %27 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %27, i32 0, i32 1
  %28 = load i32, i32* %nSamples, align 4, !tbaa !48
  %cmp15 = icmp ne i32 %26, %28
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %while.end
  %29 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %30 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples17 = getelementptr inbounds %struct._Table, %struct._Table* %30, i32 0, i32 1
  %31 = load i32, i32* %nSamples17, align 4, !tbaa !48
  %32 = load i32, i32* %iField, align 4, !tbaa !15
  %call18 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.125, i32 0, i32 0), i32 %31, i32 %32) #9
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %while.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.13, %if.then
  %33 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @DataSection(%struct.cmsIT8* %it8) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %iField = alloca i32, align 4
  %iSet = alloca i32, align 4
  %Buffer = alloca [256 x i8], align 16
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %iField, align 4, !tbaa !15
  %1 = bitcast i32* %iSet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %iSet, align 4, !tbaa !15
  %2 = bitcast [256 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #1
  %3 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %4) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %5) #9
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call1 = call i32 @CheckEOLN(%struct.cmsIT8* %6) #9
  %7 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._Table, %struct._Table* %7, i32 0, i32 6
  %8 = load i8**, i8*** %Data, align 8, !tbaa !21
  %tobool = icmp ne i8** %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @AllocateDataSet(%struct.cmsIT8* %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 5
  %11 = load i32, i32* %sy, align 4, !tbaa !25
  %cmp = icmp ne i32 %11, 11
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 5
  %13 = load i32, i32* %sy2, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %13, 7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %iField, align 4, !tbaa !15
  %16 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nSamples = getelementptr inbounds %struct._Table, %struct._Table* %16, i32 0, i32 1
  %17 = load i32, i32* %nSamples, align 4, !tbaa !48
  %cmp4 = icmp sge i32 %15, %17
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  store i32 0, i32* %iField, align 4, !tbaa !15
  %18 = load i32, i32* %iSet, align 4, !tbaa !15
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %iSet, align 4, !tbaa !15
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %while.body
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy7 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %19, i32 0, i32 5
  %20 = load i32, i32* %sy7, align 4, !tbaa !25
  %cmp8 = icmp ne i32 %20, 11
  br i1 %cmp8, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.6
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy9 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %21, i32 0, i32 5
  %22 = load i32, i32* %sy9, align 4, !tbaa !25
  %cmp10 = icmp ne i32 %22, 7
  br i1 %cmp10, label %if.then.11, label %if.end.22

if.then.11:                                       ; preds = %land.lhs.true
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %call12 = call i32 @GetVal(%struct.cmsIT8* %23, i8* %arraydecay, i32 255, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0)) #9
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.11
  %24 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %25 = load i32, i32* %iSet, align 4, !tbaa !15
  %26 = load i32, i32* %iField, align 4, !tbaa !15
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %Buffer, i32 0, i32 0
  %call17 = call i32 @SetData(%struct.cmsIT8* %24, i32 %25, i32 %26, i8* %arraydecay16) #9
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  %27 = load i32, i32* %iField, align 4, !tbaa !15
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, i32* %iField, align 4, !tbaa !15
  %28 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %28) #9
  %29 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %29) #9
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %land.lhs.true, %if.end.6
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %30) #9
  %31 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @Skip(%struct.cmsIT8* %31, i32 11) #9
  %32 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %32) #9
  %33 = load i32, i32* %iSet, align 4, !tbaa !15
  %add = add nsw i32 %33, 1
  %34 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches = getelementptr inbounds %struct._Table, %struct._Table* %34, i32 0, i32 2
  %35 = load i32, i32* %nPatches, align 4, !tbaa !51
  %cmp23 = icmp ne i32 %add, %35
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %while.end
  %36 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %37 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %nPatches25 = getelementptr inbounds %struct._Table, %struct._Table* %37, i32 0, i32 2
  %38 = load i32, i32* %nPatches25, align 4, !tbaa !51
  %39 = load i32, i32* %iSet, align 4, !tbaa !15
  %add26 = add nsw i32 %39, 1
  %call27 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.128, i32 0, i32 0), i32 %38, i32 %add26) #9
  store i32 %call27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %while.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.24, %if.then.19, %if.then.14
  %40 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast [256 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 256, i8* %41) #1
  %42 = bitcast i32* %iSet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %iField to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @isseparator(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !15
  %0 = load i32, i32* %c.addr, align 4, !tbaa !15
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !tbaa !15
  %cmp1 = icmp eq i32 %1, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @NextCh(%struct.cmsIT8* %it8) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %0, i32 0, i32 16
  %1 = load i32, i32* %IncludeSP, align 4, !tbaa !23
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %2, i32 0, i32 15
  %arrayidx = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack, i32 0, i64 %idxprom
  %3 = load %struct._FileContext*, %struct._FileContext** %arrayidx, align 8, !tbaa !1
  %Stream = getelementptr inbounds %struct._FileContext, %struct._FileContext* %3, i32 0, i32 1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream, align 8, !tbaa !57
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %5, i32 0, i32 16
  %6 = load i32, i32* %IncludeSP1, align 4, !tbaa !23
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack3 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 15
  %arrayidx4 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack3, i32 0, i64 %idxprom2
  %8 = load %struct._FileContext*, %struct._FileContext** %arrayidx4, align 8, !tbaa !1
  %Stream5 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %8, i32 0, i32 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream5, align 8, !tbaa !57
  %call = call i32 @fgetc(%struct._IO_FILE* %9) #9
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 6
  store i32 %call, i32* %ch, align 4, !tbaa !31
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP6 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %11, i32 0, i32 16
  %12 = load i32, i32* %IncludeSP6, align 4, !tbaa !23
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack8 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %13, i32 0, i32 15
  %arrayidx9 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack8, i32 0, i64 %idxprom7
  %14 = load %struct._FileContext*, %struct._FileContext** %arrayidx9, align 8, !tbaa !1
  %Stream10 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %14, i32 0, i32 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream10, align 8, !tbaa !57
  %call11 = call i32 @feof(%struct._IO_FILE* %15) #10
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %if.then
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP14 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %16, i32 0, i32 16
  %17 = load i32, i32* %IncludeSP14, align 4, !tbaa !23
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %IncludeSP16 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %18, i32 0, i32 16
  %19 = load i32, i32* %IncludeSP16, align 4, !tbaa !23
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %IncludeSP16, align 4, !tbaa !23
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %FileStack18 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %20, i32 0, i32 15
  %arrayidx19 = getelementptr inbounds [20 x %struct._FileContext*], [20 x %struct._FileContext*]* %FileStack18, i32 0, i64 %idxprom17
  %21 = load %struct._FileContext*, %struct._FileContext** %arrayidx19, align 8, !tbaa !1
  %Stream20 = getelementptr inbounds %struct._FileContext, %struct._FileContext* %21, i32 0, i32 1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream20, align 8, !tbaa !57
  %call21 = call i32 @fclose(%struct._IO_FILE* %22) #9
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch22 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %23, i32 0, i32 6
  store i32 32, i32* %ch22, align 4, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %if.then.13
  %24 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch23 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %24, i32 0, i32 6
  store i32 0, i32* %ch23, align 4, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  br label %if.end.32

if.else.25:                                       ; preds = %entry
  %25 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Source = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %25, i32 0, i32 13
  %26 = load i8*, i8** %Source, align 8, !tbaa !32
  %27 = load i8, i8* %26, align 1, !tbaa !22
  %conv = sext i8 %27 to i32
  %28 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch26 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %28, i32 0, i32 6
  store i32 %conv, i32* %ch26, align 4, !tbaa !31
  %29 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch27 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %29, i32 0, i32 6
  %30 = load i32, i32* %ch27, align 4, !tbaa !31
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else.25
  %31 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %Source30 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %31, i32 0, i32 13
  %32 = load i8*, i8** %Source30, align 8, !tbaa !32
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %Source30, align 8, !tbaa !32
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.else.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @HeaderSection(%struct.cmsIT8* %it8) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %VarName = alloca [128 x i8], align 16
  %Buffer = alloca [1024 x i8], align 16
  %Key = alloca %struct._KeyVal*, align 8
  %cleanup.dest.slot = alloca i32
  %Subkey = alloca i8*, align 8
  %Nextkey = alloca i8*, align 8
  %Value = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__a0128 = alloca i8, align 1
  %__a1130 = alloca i8, align 1
  %__a2132 = alloca i8, align 1
  %tmp133 = alloca i64, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = bitcast [128 x i8]* %VarName to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast %struct._KeyVal** %Key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %3, i32 0, i32 5
  %4 = load i32, i32* %sy, align 4, !tbaa !25
  %cmp = icmp ne i32 %4, 7
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %5, i32 0, i32 5
  %6 = load i32, i32* %sy1, align 4, !tbaa !25
  %cmp2 = icmp ne i32 %6, 8
  br i1 %cmp2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %7 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy4 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %7, i32 0, i32 5
  %8 = load i32, i32* %sy4, align 4, !tbaa !25
  %cmp5 = icmp ne i32 %8, 10
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %9 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy6 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %9, i32 0, i32 5
  %10 = load i32, i32* %sy6, align 4, !tbaa !25
  %cmp7 = icmp ne i32 %10, 9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.3, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %11, label %while.body, label %while.end.201

while.body:                                       ; preds = %land.end
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy8 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 5
  %13 = load i32, i32* %sy8, align 4, !tbaa !25
  switch i32 %13, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb.14
    i32 3, label %sw.bb.25
    i32 6, label %sw.epilog
  ]

sw.bb:                                            ; preds = %while.body
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %14) #9
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %call = call i32 @GetVal(%struct.cmsIT8* %15, i8* %arraydecay, i32 1023, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0)) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end:                                           ; preds = %sw.bb
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %call10 = call %struct._KeyVal* @AddAvailableProperty(%struct.cmsIT8* %16, i8* %arraydecay9, i32 0) #9
  %tobool11 = icmp ne %struct._KeyVal* %call10, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.13:                                        ; preds = %if.end
  %17 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %17) #9
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %18) #9
  %19 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %call16 = call i32 @GetVal(%struct.cmsIT8* %19, i8* %arraydecay15, i32 1023, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0)) #9
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.19:                                        ; preds = %sw.bb.14
  %20 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %call21 = call %struct._KeyVal* @AddAvailableSampleID(%struct.cmsIT8* %20, i8* %arraydecay20) #9
  %tobool22 = icmp ne %struct._KeyVal* %call21, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.24:                                        ; preds = %if.end.19
  %21 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %21) #9
  br label %sw.epilog

sw.bb.25:                                         ; preds = %while.body
  %arraydecay26 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %22 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %22, i32 0, i32 9
  %arraydecay27 = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %call28 = call i8* @strncpy(i8* %arraydecay26, i8* %arraydecay27, i64 127) #10
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i64 127
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  %23 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ValidKeywords = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %23, i32 0, i32 11
  %24 = load %struct._KeyVal*, %struct._KeyVal** %ValidKeywords, align 8, !tbaa !29
  %arraydecay29 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %call30 = call i32 @IsAvailableOnList(%struct._KeyVal* %24, i8* %arraydecay29, i8* null, %struct._KeyVal** %Key) #9
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.38, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.25
  %25 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay33 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %call34 = call %struct._KeyVal* @AddAvailableProperty(%struct.cmsIT8* %25, i8* %arraydecay33, i32 0) #9
  store %struct._KeyVal* %call34, %struct._KeyVal** %Key, align 8, !tbaa !1
  %26 = load %struct._KeyVal*, %struct._KeyVal** %Key, align 8, !tbaa !1
  %cmp35 = icmp eq %struct._KeyVal* %26, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.37:                                        ; preds = %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %sw.bb.25
  %27 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %27) #9
  %28 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %call40 = call i32 @GetVal(%struct.cmsIT8* %28, i8* %arraydecay39, i32 1023, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.130, i32 0, i32 0)) #9
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

if.end.43:                                        ; preds = %if.end.38
  %29 = load %struct._KeyVal*, %struct._KeyVal** %Key, align 8, !tbaa !1
  %WriteAs = getelementptr inbounds %struct._KeyVal, %struct._KeyVal* %29, i32 0, i32 5
  %30 = load i32, i32* %WriteAs, align 4, !tbaa !43
  %cmp44 = icmp ne i32 %30, 4
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.43
  %31 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %32 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call46 = call %struct._Table* @GetTable(%struct.cmsIT8* %32) #9
  %HeaderList = getelementptr inbounds %struct._Table, %struct._Table* %call46, i32 0, i32 4
  %arraydecay47 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %33 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy49 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %33, i32 0, i32 5
  %34 = load i32, i32* %sy49, align 4, !tbaa !25
  %cmp50 = icmp eq i32 %34, 4
  %cond = select i1 %cmp50, i32 1, i32 0
  %call51 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %31, %struct._KeyVal** %HeaderList, i8* %arraydecay47, i8* null, i8* %arraydecay48, i32 %cond) #9
  br label %if.end.199

if.else:                                          ; preds = %if.end.43
  %35 = bitcast i8** %Subkey to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = bitcast i8** %Nextkey to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy52 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %37, i32 0, i32 5
  %38 = load i32, i32* %sy52, align 4, !tbaa !25
  %cmp53 = icmp ne i32 %38, 4
  br i1 %cmp53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.else
  %39 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %call57 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.131, i32 0, i32 0), i8* %arraydecay55, i8* %arraydecay56) #9
  store i32 %call57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.195

if.end.58:                                        ; preds = %if.else
  %arraydecay59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  store i8* %arraydecay59, i8** %Subkey, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.58
  %40 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %cmp60 = icmp ne i8* %40, null
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = bitcast i8** %Value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %call61 = call i8* @strchr(i8* %43, i32 59) #10
  store i8* %call61, i8** %Nextkey, align 8, !tbaa !1
  %44 = load i8*, i8** %Nextkey, align 8, !tbaa !1
  %tobool62 = icmp ne i8* %44, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.body
  %45 = load i8*, i8** %Nextkey, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr, i8** %Nextkey, align 8, !tbaa !1
  store i8 0, i8* %45, align 1, !tbaa !22
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %for.body
  %46 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %call65 = call i8* @strrchr(i8* %46, i32 44) #12
  store i8* %call65, i8** %Value, align 8, !tbaa !1
  %47 = load i8*, i8** %Value, align 8, !tbaa !1
  %cmp66 = icmp eq i8* %47, null
  br i1 %cmp66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.64
  %48 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay68 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %call69 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.132, i32 0, i32 0), i8* %arraydecay68) #9
  store i32 %call69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.end.64
  %49 = load i8*, i8** %Value, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr71, i8** %Value, align 8, !tbaa !1
  store i8* %49, i8** %temp, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %land.end.77, %if.end.70
  %50 = load i8*, i8** %temp, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr72, i8** %temp, align 8, !tbaa !1
  store i8 0, i8* %50, align 1, !tbaa !22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %51 = load i8*, i8** %temp, align 8, !tbaa !1
  %52 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %cmp73 = icmp uge i8* %51, %52
  br i1 %cmp73, label %land.rhs.74, label %land.end.77

land.rhs.74:                                      ; preds = %do.cond
  %53 = load i8*, i8** %temp, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !22
  %conv = sext i8 %54 to i32
  %cmp75 = icmp eq i32 %conv, 32
  br label %land.end.77

land.end.77:                                      ; preds = %land.rhs.74, %do.cond
  %55 = phi i1 [ false, %do.cond ], [ %cmp75, %land.rhs.74 ]
  br i1 %55, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.77
  %56 = load i8*, i8** %Value, align 8, !tbaa !1
  %57 = load i8*, i8** %Value, align 8, !tbaa !1
  %call78 = call i64 @strlen(i8* %57) #12
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %call78
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr79, i8** %temp, align 8, !tbaa !1
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.84, %do.end
  %58 = load i8*, i8** %temp, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !22
  %conv81 = sext i8 %59 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br i1 %cmp82, label %while.body.84, label %while.end

while.body.84:                                    ; preds = %while.cond.80
  %60 = load i8*, i8** %temp, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr85, i8** %temp, align 8, !tbaa !1
  store i8 0, i8* %60, align 1, !tbaa !22
  br label %while.cond.80

while.end:                                        ; preds = %while.cond.80
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.97 to i64)), i64 1), label %cond.true, label %cond.false.122

cond.true:                                        ; preds = %while.end
  %61 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), align 1, !tbaa !22
  store i8 %61, i8* %__a0, align 1, !tbaa !22
  %62 = load i8, i8* %__a0, align 1, !tbaa !22
  %conv86 = sext i8 %62 to i32
  %cmp87 = icmp eq i32 %conv86, 0
  br i1 %cmp87, label %cond.true.89, label %cond.false

cond.true.89:                                     ; preds = %cond.true
  %63 = load i8*, i8** %Subkey, align 8, !tbaa !1
  br label %cond.end.120

cond.false:                                       ; preds = %cond.true
  %64 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i64 1), align 1, !tbaa !22
  store i8 %64, i8* %__a1, align 1, !tbaa !22
  %65 = load i8, i8* %__a1, align 1, !tbaa !22
  %conv90 = sext i8 %65 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  br i1 %cmp91, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %cond.false
  %66 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %67 = load i8, i8* %__a0, align 1, !tbaa !22
  %conv94 = sext i8 %67 to i32
  %call95 = call i64 @__strspn_c1(i8* %66, i32 %conv94) #9
  br label %cond.end.118

cond.false.96:                                    ; preds = %cond.false
  %68 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i64 2), align 1, !tbaa !22
  store i8 %68, i8* %__a2, align 1, !tbaa !22
  %69 = load i8, i8* %__a2, align 1, !tbaa !22
  %conv97 = sext i8 %69 to i32
  %cmp98 = icmp eq i32 %conv97, 0
  br i1 %cmp98, label %cond.true.100, label %cond.false.104

cond.true.100:                                    ; preds = %cond.false.96
  %70 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %71 = load i8, i8* %__a0, align 1, !tbaa !22
  %conv101 = sext i8 %71 to i32
  %72 = load i8, i8* %__a1, align 1, !tbaa !22
  %conv102 = sext i8 %72 to i32
  %call103 = call i64 @__strspn_c2(i8* %70, i32 %conv101, i32 %conv102) #9
  br label %cond.end.116

cond.false.104:                                   ; preds = %cond.false.96
  %73 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i64 3), align 1, !tbaa !22
  %conv105 = sext i8 %73 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.113

cond.true.108:                                    ; preds = %cond.false.104
  %74 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %75 = load i8, i8* %__a0, align 1, !tbaa !22
  %conv109 = sext i8 %75 to i32
  %76 = load i8, i8* %__a1, align 1, !tbaa !22
  %conv110 = sext i8 %76 to i32
  %77 = load i8, i8* %__a2, align 1, !tbaa !22
  %conv111 = sext i8 %77 to i32
  %call112 = call i64 @__strspn_c3(i8* %74, i32 %conv109, i32 %conv110, i32 %conv111) #9
  br label %cond.end

cond.false.113:                                   ; preds = %cond.false.104
  %78 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %call114 = call i64 @strspn(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.113, %cond.true.108
  %cond115 = phi i64 [ %call112, %cond.true.108 ], [ %call114, %cond.false.113 ]
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.end, %cond.true.100
  %cond117 = phi i64 [ %call103, %cond.true.100 ], [ %cond115, %cond.end ]
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.end.116, %cond.true.93
  %cond119 = phi i64 [ %call95, %cond.true.93 ], [ %cond117, %cond.end.116 ]
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.end.118, %cond.true.89
  %cond121 = phi i64 [ 0, %cond.true.89 ], [ %cond119, %cond.end.118 ]
  br label %cond.end.124

cond.false.122:                                   ; preds = %while.end
  %79 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %call123 = call i64 @strspn(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.end.120
  %cond125 = phi i64 [ %cond121, %cond.end.120 ], [ %call123, %cond.false.122 ]
  store i64 %cond125, i64* %tmp, !tbaa !59
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %80 = load i64, i64* %tmp, !tbaa !59
  %81 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %add.ptr126 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %add.ptr126, i8** %Subkey, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %__a0128) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1130) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2132) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.97 to i64)), i64 1), label %cond.true.134, label %cond.false.173

cond.true.134:                                    ; preds = %cond.end.124
  %82 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), align 1, !tbaa !22
  store i8 %82, i8* %__a0128, align 1, !tbaa !22
  %83 = load i8, i8* %__a0128, align 1, !tbaa !22
  %conv135 = sext i8 %83 to i32
  %cmp136 = icmp eq i32 %conv135, 0
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.true.134
  %84 = load i8*, i8** %Value, align 8, !tbaa !1
  br label %cond.end.171

cond.false.139:                                   ; preds = %cond.true.134
  %85 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i64 1), align 1, !tbaa !22
  store i8 %85, i8* %__a1130, align 1, !tbaa !22
  %86 = load i8, i8* %__a1130, align 1, !tbaa !22
  %conv140 = sext i8 %86 to i32
  %cmp141 = icmp eq i32 %conv140, 0
  br i1 %cmp141, label %cond.true.143, label %cond.false.146

cond.true.143:                                    ; preds = %cond.false.139
  %87 = load i8*, i8** %Value, align 8, !tbaa !1
  %88 = load i8, i8* %__a0128, align 1, !tbaa !22
  %conv144 = sext i8 %88 to i32
  %call145 = call i64 @__strspn_c1(i8* %87, i32 %conv144) #9
  br label %cond.end.169

cond.false.146:                                   ; preds = %cond.false.139
  %89 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i64 2), align 1, !tbaa !22
  store i8 %89, i8* %__a2132, align 1, !tbaa !22
  %90 = load i8, i8* %__a2132, align 1, !tbaa !22
  %conv147 = sext i8 %90 to i32
  %cmp148 = icmp eq i32 %conv147, 0
  br i1 %cmp148, label %cond.true.150, label %cond.false.154

cond.true.150:                                    ; preds = %cond.false.146
  %91 = load i8*, i8** %Value, align 8, !tbaa !1
  %92 = load i8, i8* %__a0128, align 1, !tbaa !22
  %conv151 = sext i8 %92 to i32
  %93 = load i8, i8* %__a1130, align 1, !tbaa !22
  %conv152 = sext i8 %93 to i32
  %call153 = call i64 @__strspn_c2(i8* %91, i32 %conv151, i32 %conv152) #9
  br label %cond.end.167

cond.false.154:                                   ; preds = %cond.false.146
  %94 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i64 3), align 1, !tbaa !22
  %conv155 = sext i8 %94 to i32
  %cmp156 = icmp eq i32 %conv155, 0
  br i1 %cmp156, label %cond.true.158, label %cond.false.163

cond.true.158:                                    ; preds = %cond.false.154
  %95 = load i8*, i8** %Value, align 8, !tbaa !1
  %96 = load i8, i8* %__a0128, align 1, !tbaa !22
  %conv159 = sext i8 %96 to i32
  %97 = load i8, i8* %__a1130, align 1, !tbaa !22
  %conv160 = sext i8 %97 to i32
  %98 = load i8, i8* %__a2132, align 1, !tbaa !22
  %conv161 = sext i8 %98 to i32
  %call162 = call i64 @__strspn_c3(i8* %95, i32 %conv159, i32 %conv160, i32 %conv161) #9
  br label %cond.end.165

cond.false.163:                                   ; preds = %cond.false.154
  %99 = load i8*, i8** %Value, align 8, !tbaa !1
  %call164 = call i64 @strspn(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.158
  %cond166 = phi i64 [ %call162, %cond.true.158 ], [ %call164, %cond.false.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.150
  %cond168 = phi i64 [ %call153, %cond.true.150 ], [ %cond166, %cond.end.165 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.167, %cond.true.143
  %cond170 = phi i64 [ %call145, %cond.true.143 ], [ %cond168, %cond.end.167 ]
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.end.169, %cond.true.138
  %cond172 = phi i64 [ 0, %cond.true.138 ], [ %cond170, %cond.end.169 ]
  br label %cond.end.175

cond.false.173:                                   ; preds = %cond.end.124
  %100 = load i8*, i8** %Value, align 8, !tbaa !1
  %call174 = call i64 @strspn(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.173, %cond.end.171
  %cond176 = phi i64 [ %cond172, %cond.end.171 ], [ %call174, %cond.false.173 ]
  store i64 %cond176, i64* %tmp133, !tbaa !59
  call void @llvm.lifetime.end(i64 1, i8* %__a2132) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1130) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0128) #1
  %101 = load i64, i64* %tmp133, !tbaa !59
  %102 = load i8*, i8** %Value, align 8, !tbaa !1
  %add.ptr177 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %add.ptr177, i8** %Value, align 8, !tbaa !1
  %103 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %103, i64 0
  %104 = load i8, i8* %arrayidx178, align 1, !tbaa !22
  %conv179 = sext i8 %104 to i32
  %cmp180 = icmp eq i32 %conv179, 0
  br i1 %cmp180, label %if.then.186, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.175
  %105 = load i8*, i8** %Value, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8, i8* %105, i64 0
  %106 = load i8, i8* %arrayidx182, align 1, !tbaa !22
  %conv183 = sext i8 %106 to i32
  %cmp184 = icmp eq i32 %conv183, 0
  br i1 %cmp184, label %if.then.186, label %if.end.189

if.then.186:                                      ; preds = %lor.lhs.false, %cond.end.175
  %107 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %arraydecay187 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %call188 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.132, i32 0, i32 0), i8* %arraydecay187) #9
  store i32 %call188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.189:                                       ; preds = %lor.lhs.false
  %108 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %109 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call190 = call %struct._Table* @GetTable(%struct.cmsIT8* %109) #9
  %HeaderList191 = getelementptr inbounds %struct._Table, %struct._Table* %call190, i32 0, i32 4
  %arraydecay192 = getelementptr inbounds [128 x i8], [128 x i8]* %VarName, i32 0, i32 0
  %110 = load i8*, i8** %Subkey, align 8, !tbaa !1
  %111 = load i8*, i8** %Value, align 8, !tbaa !1
  %call193 = call %struct._KeyVal* @AddToList(%struct.cmsIT8* %108, %struct._KeyVal** %HeaderList191, i8* %arraydecay192, i8* %110, i8* %111, i32 4) #9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.189, %if.then.186, %if.then.67
  %112 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i8** %Value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.195 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %114 = load i8*, i8** %Nextkey, align 8, !tbaa !1
  store i8* %114, i8** %Subkey, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.195

cleanup.195:                                      ; preds = %for.end, %cleanup, %if.then.54
  %115 = bitcast i8** %Nextkey to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i8** %Subkey to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %cleanup.dest.197 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.197, label %cleanup.202 [
    i32 0, label %cleanup.cont.198
  ]

cleanup.cont.198:                                 ; preds = %cleanup.195
  br label %if.end.199

if.end.199:                                       ; preds = %cleanup.cont.198, %if.then.45
  %117 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %117) #9
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %118 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call200 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.133, i32 0, i32 0)) #9
  store i32 %call200, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

sw.epilog:                                        ; preds = %while.body, %if.end.199, %if.end.24, %if.end.13
  %119 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @SkipEOLN(%struct.cmsIT8* %119) #9
  br label %while.cond

while.end.201:                                    ; preds = %land.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.202

cleanup.202:                                      ; preds = %while.end.201, %sw.default, %cleanup.195, %if.then.42, %if.then.36, %if.then.23, %if.then.18, %if.then.12, %if.then
  %120 = bitcast %struct._KeyVal** %Key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %121) #1
  %122 = bitcast [128 x i8]* %VarName to i8*
  call void @llvm.lifetime.end(i64 128, i8* %122) #1
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal i32 @isfirstidchar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !15
  %0 = load i32, i32* %c.addr, align 4, !tbaa !15
  %idxprom = sext i32 %0 to i64
  %call = call i16** @__ctype_b_loc() #11
  %1 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4, !tbaa !15
  %call1 = call i32 @ismiddle(i32 %3) #9
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @isidchar(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !15
  %0 = load i32, i32* %c.addr, align 4, !tbaa !15
  %idxprom = sext i32 %0 to i64
  %call = call i16** @__ctype_b_loc() #11
  %1 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4, !tbaa !15
  %call1 = call i32 @ismiddle(i32 %3) #9
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @BinSrchKey(i8* %id) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %x = alloca i32, align 4
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %id, i8** %id.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %l, align 4, !tbaa !15
  %1 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 8, i32* %r, align 4, !tbaa !15
  %2 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %entry
  %4 = load i32, i32* %r, align 4, !tbaa !15
  %5 = load i32, i32* %l, align 4, !tbaa !15
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %l, align 4, !tbaa !15
  %7 = load i32, i32* %r, align 4, !tbaa !15
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %x, align 4, !tbaa !15
  %8 = load i8*, i8** %id.addr, align 8, !tbaa !1
  %9 = load i32, i32* %x, align 4, !tbaa !15
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [8 x %struct.KEYWORD], [8 x %struct.KEYWORD]* @TabKeys, i32 0, i64 %idxprom
  %id1 = getelementptr inbounds %struct.KEYWORD, %struct.KEYWORD* %arrayidx, i32 0, i32 0
  %10 = load i8*, i8** %id1, align 8, !tbaa !35
  %call = call i32 @cmsstrcasecmp(i8* %8, i8* %10) #9
  store i32 %call, i32* %res, align 4, !tbaa !15
  %11 = load i32, i32* %res, align 4, !tbaa !15
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %x, align 4, !tbaa !15
  %sub3 = sub nsw i32 %12, 1
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds [8 x %struct.KEYWORD], [8 x %struct.KEYWORD]* @TabKeys, i32 0, i64 %idxprom4
  %sy = getelementptr inbounds %struct.KEYWORD, %struct.KEYWORD* %arrayidx5, i32 0, i32 1
  %13 = load i32, i32* %sy, align 4, !tbaa !37
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %14 = load i32, i32* %res, align 4, !tbaa !15
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %15 = load i32, i32* %x, align 4, !tbaa !15
  %sub8 = sub nsw i32 %15, 1
  store i32 %sub8, i32* %r, align 4, !tbaa !15
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %x, align 4, !tbaa !15
  %add9 = add nsw i32 %16, 1
  store i32 %add9, i32* %l, align 4, !tbaa !15
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %17 = bitcast i32* %res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @toupper(i32 %__c) #8 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !15
  %0 = load i32, i32* %__c.addr, align 4, !tbaa !15
  %cmp = icmp sge i32 %0, -128
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !tbaa !15
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !tbaa !15
  %idxprom = sext i32 %2 to i64
  %call = call i32** @__ctype_toupper_loc() #11
  %3 = load i32*, i32** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @ReadReal(%struct.cmsIT8* %it8, i32 %inum) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %inum.addr = alloca i32, align 4
  %frac = alloca double, align 8
  %prec = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %e = alloca i32, align 4
  %sgn = alloca i32, align 4
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %inum, i32* %inum.addr, align 4, !tbaa !15
  %0 = load i32, i32* %inum.addr, align 4, !tbaa !15
  %conv = sitofp i32 %0 to double
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %1, i32 0, i32 8
  store double %conv, double* %dnum, align 8, !tbaa !34
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %2, i32 0, i32 6
  %3 = load i32, i32* %ch, align 4, !tbaa !31
  %idxprom = sext i32 %3 to i64
  %call = call i16** @__ctype_b_loc() #11
  %4 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %conv1 = zext i16 %5 to i32
  %and = and i32 %conv1, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %6, i32 0, i32 8
  %7 = load double, double* %dnum2, align 8, !tbaa !34
  %mul = fmul double %7, 1.000000e+01
  %8 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch3 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %8, i32 0, i32 6
  %9 = load i32, i32* %ch3, align 4, !tbaa !31
  %sub = sub nsw i32 %9, 48
  %conv4 = sitofp i32 %sub to double
  %add = fadd double %mul, %conv4
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum5 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 8
  store double %add, double* %dnum5, align 8, !tbaa !34
  %11 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %11) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch6 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %12, i32 0, i32 6
  %13 = load i32, i32* %ch6, align 4, !tbaa !31
  %cmp = icmp eq i32 %13, 46
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = bitcast double* %frac to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store double 0.000000e+00, double* %frac, align 8, !tbaa !45
  %15 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %prec, align 4, !tbaa !15
  %16 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %16) #9
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.16, %if.then
  %17 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch9 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %17, i32 0, i32 6
  %18 = load i32, i32* %ch9, align 4, !tbaa !31
  %idxprom10 = sext i32 %18 to i64
  %call11 = call i16** @__ctype_b_loc() #11
  %19 = load i16*, i16** %call11, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %19, i64 %idxprom10
  %20 = load i16, i16* %arrayidx12, align 2, !tbaa !46
  %conv13 = zext i16 %20 to i32
  %and14 = and i32 %conv13, 2048
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %while.body.16, label %while.end.22

while.body.16:                                    ; preds = %while.cond.8
  %21 = load double, double* %frac, align 8, !tbaa !45
  %mul17 = fmul double %21, 1.000000e+01
  %22 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch18 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %22, i32 0, i32 6
  %23 = load i32, i32* %ch18, align 4, !tbaa !31
  %sub19 = sub nsw i32 %23, 48
  %conv20 = sitofp i32 %sub19 to double
  %add21 = fadd double %mul17, %conv20
  store double %add21, double* %frac, align 8, !tbaa !45
  %24 = load i32, i32* %prec, align 4, !tbaa !15
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %prec, align 4, !tbaa !15
  %25 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %25) #9
  br label %while.cond.8

while.end.22:                                     ; preds = %while.cond.8
  %26 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum23 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %26, i32 0, i32 8
  %27 = load double, double* %dnum23, align 8, !tbaa !34
  %28 = load double, double* %frac, align 8, !tbaa !45
  %29 = load i32, i32* %prec, align 4, !tbaa !15
  %call24 = call double @xpow10(i32 %29) #9
  %div = fdiv double %28, %call24
  %add25 = fadd double %27, %div
  %30 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum26 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %30, i32 0, i32 8
  store double %add25, double* %dnum26, align 8, !tbaa !34
  %31 = bitcast i32* %prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast double* %frac to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %if.end

if.end:                                           ; preds = %while.end.22, %while.end
  %33 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch27 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %34, i32 0, i32 6
  %35 = load i32, i32* %ch27, align 4, !tbaa !31
  %call28 = call i32 @toupper(i32 %35) #10
  store i32 %call28, i32* %__res, align 4, !tbaa !15
  %36 = load i32, i32* %__res, align 4, !tbaa !15
  store i32 %36, i32* %tmp, !tbaa !15
  %37 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %tmp, !tbaa !15
  %cmp29 = icmp eq i32 %38, 69
  br i1 %cmp29, label %if.then.31, label %if.end.69

if.then.31:                                       ; preds = %if.end
  %39 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %sgn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %41) #9
  store i32 1, i32* %sgn, align 4, !tbaa !15
  %42 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch34 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %42, i32 0, i32 6
  %43 = load i32, i32* %ch34, align 4, !tbaa !31
  %cmp35 = icmp eq i32 %43, 45
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.31
  store i32 -1, i32* %sgn, align 4, !tbaa !15
  %44 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %44) #9
  br label %if.end.43

if.else:                                          ; preds = %if.then.31
  %45 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch38 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %45, i32 0, i32 6
  %46 = load i32, i32* %ch38, align 4, !tbaa !31
  %cmp39 = icmp eq i32 %46, 43
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else
  store i32 1, i32* %sgn, align 4, !tbaa !15
  %47 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %47) #9
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.37
  store i32 0, i32* %e, align 4, !tbaa !15
  br label %while.cond.44

while.cond.44:                                    ; preds = %if.end.62, %if.end.43
  %48 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch45 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %48, i32 0, i32 6
  %49 = load i32, i32* %ch45, align 4, !tbaa !31
  %idxprom46 = sext i32 %49 to i64
  %call47 = call i16** @__ctype_b_loc() #11
  %50 = load i16*, i16** %call47, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %50, i64 %idxprom46
  %51 = load i16, i16* %arrayidx48, align 2, !tbaa !46
  %conv49 = zext i16 %51 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %while.body.52, label %while.end.63

while.body.52:                                    ; preds = %while.cond.44
  %52 = load i32, i32* %e, align 4, !tbaa !15
  %conv53 = sitofp i32 %52 to double
  %mul54 = fmul double %conv53, 1.000000e+01
  %cmp55 = fcmp olt double %mul54, 0x41DFFFFFFFC00000
  br i1 %cmp55, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %while.body.52
  %53 = load i32, i32* %e, align 4, !tbaa !15
  %mul58 = mul nsw i32 %53, 10
  %54 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %ch59 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %54, i32 0, i32 6
  %55 = load i32, i32* %ch59, align 4, !tbaa !31
  %sub60 = sub nsw i32 %55, 48
  %add61 = add nsw i32 %mul58, %sub60
  store i32 %add61, i32* %e, align 4, !tbaa !15
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %while.body.52
  %56 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @NextCh(%struct.cmsIT8* %56) #9
  br label %while.cond.44

while.end.63:                                     ; preds = %while.cond.44
  %57 = load i32, i32* %sgn, align 4, !tbaa !15
  %58 = load i32, i32* %e, align 4, !tbaa !15
  %mul64 = mul nsw i32 %57, %58
  store i32 %mul64, i32* %e, align 4, !tbaa !15
  %59 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum65 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %59, i32 0, i32 8
  %60 = load double, double* %dnum65, align 8, !tbaa !34
  %61 = load i32, i32* %e, align 4, !tbaa !15
  %call66 = call double @xpow10(i32 %61) #9
  %mul67 = fmul double %60, %call66
  %62 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum68 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %62, i32 0, i32 8
  store double %mul67, double* %dnum68, align 8, !tbaa !34
  %63 = bitcast i32* %sgn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  br label %if.end.69

if.end.69:                                        ; preds = %while.end.63, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Check(%struct.cmsIT8* %it8, i32 %sy, i8* %Err) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %sy.addr = alloca i32, align 4
  %Err.addr = alloca i8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %sy, i32* %sy.addr, align 4, !tbaa !22
  store i8* %Err, i8** %Err.addr, align 8, !tbaa !1
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %0, i32 0, i32 5
  %1 = load i32, i32* %sy1, align 4, !tbaa !25
  %2 = load i32, i32* %sy.addr, align 4, !tbaa !22
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %Err.addr, align 8, !tbaa !1
  %call = call i8* @NoMeta(i8* %4) #9
  %call2 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %3, i8* %call) #9
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @BuildAbsolutePath(i8* %relPath, i8* %basePath, i8* %buffer, i32 %MaxLen) #0 {
entry:
  %retval = alloca i32, align 4
  %relPath.addr = alloca i8*, align 8
  %basePath.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %MaxLen.addr = alloca i32, align 4
  %tail = alloca i8*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %relPath, i8** %relPath.addr, align 8, !tbaa !1
  store i8* %basePath, i8** %basePath.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %MaxLen, i32* %MaxLen.addr, align 4, !tbaa !15
  %0 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %relPath.addr, align 8, !tbaa !1
  %call = call i32 @isabsolutepath(i8* %2) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %relPath.addr, align 8, !tbaa !1
  %5 = load i32, i32* %MaxLen.addr, align 4, !tbaa !15
  %conv = zext i32 %5 to i64
  %call1 = call i8* @strncpy(i8* %3, i8* %4, i64 %conv) #10
  %6 = load i32, i32* %MaxLen.addr, align 4, !tbaa !15
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %7 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %basePath.addr, align 8, !tbaa !1
  %10 = load i32, i32* %MaxLen.addr, align 4, !tbaa !15
  %conv2 = zext i32 %10 to i64
  %call3 = call i8* @strncpy(i8* %8, i8* %9, i64 %conv2) #10
  %11 = load i32, i32* %MaxLen.addr, align 4, !tbaa !15
  %sub4 = sub i32 %11, 1
  %idxprom5 = zext i32 %sub4 to i64
  %12 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1, !tbaa !22
  %13 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %call7 = call i8* @strrchr(i8* %13, i32 47) #12
  store i8* %call7, i8** %tail, align 8, !tbaa !1
  %14 = load i8*, i8** %tail, align 8, !tbaa !1
  %cmp = icmp eq i8* %14, null
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %15 = load i8*, i8** %tail, align 8, !tbaa !1
  %16 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv11, i32* %len, align 4, !tbaa !15
  %17 = load i32, i32* %len, align 4, !tbaa !15
  %18 = load i32, i32* %MaxLen.addr, align 4, !tbaa !15
  %cmp12 = icmp uge i32 %17, %18
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %19 = load i8*, i8** %tail, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8*, i8** %relPath.addr, align 8, !tbaa !1
  %21 = load i32, i32* %MaxLen.addr, align 4, !tbaa !15
  %22 = load i32, i32* %len, align 4, !tbaa !15
  %sub16 = sub i32 %21, %22
  %conv17 = zext i32 %sub16 to i64
  %call18 = call i8* @strncpy(i8* %add.ptr, i8* %20, i64 %conv17) #10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then.9, %if.then
  %23 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @ismiddle(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !15
  %0 = load i32, i32* %c.addr, align 4, !tbaa !15
  %call = call i32 @isseparator(i32 %0) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !tbaa !15
  %cmp = icmp ne i32 %1, 35
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !tbaa !15
  %cmp2 = icmp ne i32 %2, 34
  br i1 %cmp2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.1
  %3 = load i32, i32* %c.addr, align 4, !tbaa !15
  %cmp4 = icmp ne i32 %3, 39
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %4 = load i32, i32* %c.addr, align 4, !tbaa !15
  %cmp6 = icmp sgt i32 %4, 32
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %5 = load i32, i32* %c.addr, align 4, !tbaa !15
  %cmp7 = icmp slt i32 %5, 127
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true.1, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true.3 ], [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i8* @NoMeta(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %0, i32 37) #10
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.123, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  store i8* %1, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal i32 @isabsolutepath(i8* %path) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %ThreeChars = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store i8* %path, i8** %path.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i8]* %ThreeChars to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ThreeChars, i32 0, i32 0
  %4 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %call = call i8* @strncpy(i8* %arraydecay, i8* %4, i64 3) #10
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %ThreeChars, i32 0, i64 3
  store i8 0, i8* %arrayidx5, align 1, !tbaa !22
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %ThreeChars, i32 0, i64 0
  %5 = load i8, i8* %arrayidx6, align 1, !tbaa !22
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.3, %if.then
  %6 = bitcast [4 x i8]* %ThreeChars to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @CheckEOLN(%struct.cmsIT8* %it8) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call i32 @Check(%struct.cmsIT8* %0, i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.126, i32 0, i32 0)) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %1, i32 0, i32 5
  %2 = load i32, i32* %sy, align 4, !tbaa !25
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %3) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @Skip(%struct.cmsIT8* %it8, i32 %sy) #0 {
entry:
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %sy.addr = alloca i32, align 4
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %sy, i32* %sy.addr, align 4, !tbaa !22
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy1 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %0, i32 0, i32 5
  %1 = load i32, i32* %sy1, align 4, !tbaa !25
  %2 = load i32, i32* %sy.addr, align 4, !tbaa !22
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy2 = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %3, i32 0, i32 5
  %4 = load i32, i32* %sy2, align 4, !tbaa !25
  %cmp3 = icmp ne i32 %4, 7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  call void @InSymbol(%struct.cmsIT8* %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @GetVal(%struct.cmsIT8* %it8, i8* %Buffer, i32 %max, i8* %ErrorTitle) #0 {
entry:
  %retval = alloca i32, align 4
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %Buffer.addr = alloca i8*, align 8
  %max.addr = alloca i32, align 4
  %ErrorTitle.addr = alloca i8*, align 8
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %max, i32* %max.addr, align 4, !tbaa !15
  store i8* %ErrorTitle, i8** %ErrorTitle.addr, align 8, !tbaa !1
  %0 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %sy = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %0, i32 0, i32 5
  %1 = load i32, i32* %sy, align 4, !tbaa !25
  switch i32 %1, label %sw.default [
    i32 6, label %sw.bb
    i32 3, label %sw.bb.1
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.6
    i32 4, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !22
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %4 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %4, i32 0, i32 9
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %id, i32 0, i32 0
  %5 = load i32, i32* %max.addr, align 4, !tbaa !15
  %conv = zext i32 %5 to i64
  %call = call i8* @strncpy(i8* %3, i8* %arraydecay, i64 %conv) #10
  %6 = load i32, i32* %max.addr, align 4, !tbaa !15
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %7 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx2, align 1, !tbaa !22
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %9 = load i32, i32* %max.addr, align 4, !tbaa !15
  %conv4 = zext i32 %9 to i64
  %10 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %inum = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %10, i32 0, i32 7
  %11 = load i32, i32* %inum, align 4, !tbaa !33
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %8, i64 %conv4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i32 %11) #10
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %12 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %13 = load i32, i32* %max.addr, align 4, !tbaa !15
  %conv7 = zext i32 %13 to i64
  %14 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %DoubleFormatter = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %14, i32 0, i32 18
  %arraydecay8 = getelementptr inbounds [128 x i8], [128 x i8]* %DoubleFormatter, i32 0, i32 0
  %15 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %dnum = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %15, i32 0, i32 8
  %16 = load double, double* %dnum, align 8, !tbaa !34
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %12, i64 %conv7, i8* %arraydecay8, double %16) #10
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %17 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %18 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.cmsIT8, %struct.cmsIT8* %18, i32 0, i32 10
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %str, i32 0, i32 0
  %19 = load i32, i32* %max.addr, align 4, !tbaa !15
  %conv12 = zext i32 %19 to i64
  %call13 = call i8* @strncpy(i8* %17, i8* %arraydecay11, i64 %conv12) #10
  %20 = load i32, i32* %max.addr, align 4, !tbaa !15
  %sub14 = sub i32 %20, 1
  %idxprom15 = zext i32 %sub14 to i64
  %21 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1, !tbaa !22
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %ErrorTitle.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct.cmsIT8*, i8*, ...) @SynError(%struct.cmsIT8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %23) #9
  store i32 %call17, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.10, %sw.bb.6, %sw.bb.3, %sw.bb.1, %sw.bb
  %24 = load i32, i32* %max.addr, align 4, !tbaa !15
  %idxprom18 = zext i32 %24 to i64
  %25 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %25, i64 %idxprom18
  store i8 0, i8* %arrayidx19, align 1, !tbaa !22
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strspn_c1(i8* %__s, i32 %__accept) #8 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept, i32* %__accept.addr, align 4, !tbaa !15
  %0 = bitcast i64* %__result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %__result, align 8, !tbaa !59
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %__result, align 8, !tbaa !59
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* %__accept.addr, align 4, !tbaa !15
  %cmp = icmp eq i32 %conv, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %__result, align 8, !tbaa !59
  %inc = add i64 %5, 1
  store i64 %inc, i64* %__result, align 8, !tbaa !59
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i64, i64* %__result, align 8, !tbaa !59
  %7 = bitcast i64* %__result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i64 %6
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strspn_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #8 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !15
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !15
  %0 = bitcast i64* %__result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %__result, align 8, !tbaa !59
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %__result, align 8, !tbaa !59
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !15
  %cmp = icmp eq i32 %conv, %4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %5 = load i64, i64* %__result, align 8, !tbaa !59
  %6 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx2, align 1, !tbaa !22
  %conv3 = sext i8 %7 to i32
  %8 = load i32, i32* %__accept2.addr, align 4, !tbaa !15
  %cmp4 = icmp eq i32 %conv3, %8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %9 = phi i1 [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %10 = load i64, i64* %__result, align 8, !tbaa !59
  %inc = add i64 %10, 1
  store i64 %inc, i64* %__result, align 8, !tbaa !59
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load i64, i64* %__result, align 8, !tbaa !59
  %12 = bitcast i64* %__result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i64 %11
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strspn_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #8 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !15
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !15
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !15
  %0 = bitcast i64* %__result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %__result, align 8, !tbaa !59
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %__result, align 8, !tbaa !59
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !15
  %cmp = icmp eq i32 %conv, %4
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load i64, i64* %__result, align 8, !tbaa !59
  %6 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx2, align 1, !tbaa !22
  %conv3 = sext i8 %7 to i32
  %8 = load i32, i32* %__accept2.addr, align 4, !tbaa !15
  %cmp4 = icmp eq i32 %conv3, %8
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load i64, i64* %__result, align 8, !tbaa !59
  %10 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %9
  %11 = load i8, i8* %arrayidx6, align 1, !tbaa !22
  %conv7 = sext i8 %11 to i32
  %12 = load i32, i32* %__accept3.addr, align 4, !tbaa !15
  %cmp8 = icmp eq i32 %conv7, %12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %13 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp8, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %14 = load i64, i64* %__result, align 8, !tbaa !59
  %inc = add i64 %14, 1
  store i64 %inc, i64* %__result, align 8, !tbaa !59
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %15 = load i64, i64* %__result, align 8, !tbaa !59
  %16 = bitcast i64* %__result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i64 %15
}

; Function Attrs: nounwind
declare i64 @strspn(i8*, i8*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetDataFormat(%struct.cmsIT8* %it8, i32 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %it8.addr = alloca %struct.cmsIT8*, align 8
  %n.addr = alloca i32, align 4
  %t = alloca %struct._Table*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsIT8* %it8, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !15
  %0 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsIT8*, %struct.cmsIT8** %it8.addr, align 8, !tbaa !1
  %call = call %struct._Table* @GetTable(%struct.cmsIT8* %1) #9
  store %struct._Table* %call, %struct._Table** %t, align 8, !tbaa !1
  %2 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat = getelementptr inbounds %struct._Table, %struct._Table* %2, i32 0, i32 5
  %3 = load i8**, i8*** %DataFormat, align 8, !tbaa !20
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4, !tbaa !15
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._Table*, %struct._Table** %t, align 8, !tbaa !1
  %DataFormat1 = getelementptr inbounds %struct._Table, %struct._Table* %5, i32 0, i32 5
  %6 = load i8**, i8*** %DataFormat1, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %7, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._Table** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i8*, i8** %retval
  ret i8* %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin nounwind readnone }
attributes #12 = { nobuiltin nounwind readonly }
attributes #13 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 271328}
!6 = !{!"", !7, i64 0, !7, i64 4, !3, i64 8, !2, i64 271328, !8, i64 271336, !3, i64 271352, !7, i64 271356, !7, i64 271360, !9, i64 271368, !3, i64 271376, !3, i64 271504, !2, i64 272528, !2, i64 272536, !2, i64 272544, !7, i64 272552, !3, i64 272560, !7, i64 272720, !2, i64 272728, !3, i64 272736, !2, i64 272864}
!7 = !{!"int", !3, i64 0}
!8 = !{!"_SubAllocator", !2, i64 0, !7, i64 8, !7, i64 12}
!9 = !{!"double", !3, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"_OwnedMem", !2, i64 0, !2, i64 8}
!12 = !{!11, !2, i64 8}
!13 = !{!6, !2, i64 272864}
!14 = !{!6, !2, i64 272728}
!15 = !{!7, !7, i64 0}
!16 = !{!6, !7, i64 0}
!17 = !{!6, !7, i64 4}
!18 = !{!19, !2, i64 1040}
!19 = !{!"_Table", !3, i64 0, !7, i64 1024, !7, i64 1028, !7, i64 1032, !2, i64 1040, !2, i64 1048, !2, i64 1056}
!20 = !{!19, !2, i64 1048}
!21 = !{!19, !2, i64 1056}
!22 = !{!3, !3, i64 0}
!23 = !{!6, !7, i64 272720}
!24 = !{!6, !7, i64 272552}
!25 = !{!6, !3, i64 271352}
!26 = !{!6, !7, i64 271348}
!27 = !{!6, !2, i64 271336}
!28 = !{!6, !7, i64 271344}
!29 = !{!6, !2, i64 272528}
!30 = !{!6, !2, i64 272536}
!31 = !{!6, !7, i64 271356}
!32 = !{!6, !2, i64 272544}
!33 = !{!6, !7, i64 271360}
!34 = !{!6, !9, i64 271368}
!35 = !{!36, !2, i64 0}
!36 = !{!"", !2, i64 0, !3, i64 8}
!37 = !{!36, !3, i64 8}
!38 = !{!39, !2, i64 8}
!39 = !{!"_KeyVal", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40}
!40 = !{!39, !2, i64 24}
!41 = !{!39, !2, i64 16}
!42 = !{!39, !2, i64 0}
!43 = !{!39, !3, i64 40}
!44 = !{!39, !2, i64 32}
!45 = !{!9, !9, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !3, i64 0}
!48 = !{!19, !7, i64 1024}
!49 = !{!50, !2, i64 0}
!50 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!51 = !{!19, !7, i64 1028}
!52 = !{!50, !2, i64 8}
!53 = !{!50, !2, i64 16}
!54 = !{!50, !7, i64 24}
!55 = !{!50, !7, i64 28}
!56 = !{!19, !7, i64 1032}
!57 = !{!58, !2, i64 256}
!58 = !{!"_FileContext", !3, i64 0, !2, i64 256}
!59 = !{!60, !60, i64 0}
!60 = !{!"long", !3, i64 0}
