; ModuleID = './ttfmain.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct._TGraphicsState = type { i32, i32, i32, %struct._TT_UnitVector, %struct._TT_UnitVector, %struct._TT_UnitVector, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32 }
%struct._TT_UnitVector = type { i16, i16 }
%struct.FixMatrix = type { i32, i32, i32, i32, i32, i32 }
%struct._TT_Instance = type { i8* }
%struct._TInstance = type { %struct._TFace*, i32, %struct._TIns_Metrics, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], [3 x %struct._TCodeRange], %struct._TGraphicsState, %struct._TGraphicsState, i32, i64*, i32, i64* }
%struct._TFace = type { %struct.ttfReader_s*, %struct.ttfFont_s*, %struct._TMaxProfile, i32, i32, i8*, i32, i8*, i32, i16*, i32, i32, i32, i32 }
%struct.ttfReader_s = type { i32 (%struct.ttfReader_s*)*, void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* }
%struct.ttfFont_s = type { %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._TFace*, %struct._TInstance*, %struct._TExecution_Context*, %struct.ttfInterpreter_s*, void (%struct.ttfFont_s*)*, i32 (%struct.ttfFont_s*, i8*, ...)*, %struct.gs_memory_s* }
%struct.ttfPtrElem = type { i32, i32 }
%struct._TExecution_Context = type { %struct._TFace*, i32, i32, i8*, i32, i32, i8, i32, i32, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], i8*, i32, i32, i32, %struct._TCallRecord*, [3 x %struct._TCodeRange], i32, i64*, i32, i32, i64*, i32, i32, i32, i32, i32, %struct._TIns_Metrics, i32, i64, i64, i32, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, i32, %struct._TGraphicsState, %struct._TGraphicsState, i32, i32, i64*, i64, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, i32 (%struct._TExecution_Context*, i32)*, void (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, i32, i32)*, %struct.gsfix_jmp_buf, i32, i32, i32, i32, %struct.ttfMemory_s* }
%struct._TCallRecord = type { i32, i32, i32, i32 }
%struct._TGlyph_Zone = type { i32, i32, i32*, i32*, i32*, i32*, i8*, i16* }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.ttfMemory_s = type { i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)* }
%struct.ttfMemoryDescriptor_s = type opaque
%struct.ttfInterpreter_s = type { %struct._TExecution_Context*, %struct.ttfSubGlyphUsage_s*, i32, i32, i32, %struct.ttfMemory_s* }
%struct.ttfSubGlyphUsage_s = type { %struct.FixMatrix, i32, i32, i16, i16 }
%struct._TMaxProfile = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct._TIns_Metrics = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, [4 x i32], i32, i32 }
%struct._TDefRecord = type { i32, i32, i8, i32 }
%struct._TCodeRange = type { i8*, i32 }
%struct.sfnt_FontHeader = type { i32, i32, i32, i32, i16, i16, %struct.BigDate, %struct.BigDate, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.BigDate = type { i32, i32 }
%struct.sfnt_maxProfileTable = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.sfnt_MetricsHeader = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16 }
%struct.ttfOutliner = type { i32, i32, i32, i32, i32, i32, i32, %struct.ttfReader_s*, %struct.ttfExport_s*, %struct.ttfFont_s*, %struct.ttfGlyphOutline, %struct.FloatMatrix }
%struct.ttfGlyphOutline = type { i32, i32, i32, %struct.F26Dot6Point, i32, i32, i32, i32, i32 }
%struct.F26Dot6Point = type { i32, i32 }
%struct.FloatMatrix = type { double, double, double, double, double, double }
%struct.ttfExport_s = type { i32, i32, void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*, %struct.FloatPoint*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*, i32, i32)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*)* }
%struct.FloatPoint = type { double, double }
%struct._TSubglyph_Record = type { i32, i32, i32, i32, i64, %struct._TT_BBox, %struct._TGlyph_Zone, i32, i32, i32, %struct._TTransform, %struct._TT_Vector, %struct._TT_Vector, i32, i32 }
%struct._TT_BBox = type { i32, i32, i32, i32 }
%struct._TTransform = type { i32, i32, i32, i32, i32, i32 }
%struct._TT_Vector = type { i32, i32 }

@st_ttfInterpreter = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [23 x i8] c"ttfInterpreter__obtain\00", align 1
@st_TExecution_Context = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"ttfInterpreter__release\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ttfFont__finit\00", align 1
@ttfFont__Open.sVersion1 = private unnamed_addr constant [4 x i8] c"\00\01\00\00", align 1
@ttfFont__Open.sVersion2 = private unnamed_addr constant [4 x i8] c"\00\02\00\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ttcf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ttfFont__Open\00", align 1
@st_TFace = external constant %struct.gs_memory_struct_type_s, align 8
@st_TInstance = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"cvt \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fpgm\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"hhea\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"hmtx\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vhea\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"vmtx\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"maxp\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"prep\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@Default_GraphicsState = external constant %struct._TGraphicsState, align 8
@ttfOutliner__BuildGlyphOutline.m_orig = private unnamed_addr constant %struct.FixMatrix { i32 65536, i32 0, i32 0, i32 65536, i32 0, i32 0 }, align 4

; Function Attrs: nounwind uwtable
define i32 @TT_Set_Instance_CharSizes(i8* %instance.coerce, i32 %charWidth, i32 %charHeight) #0 {
entry:
  %retval = alloca i32, align 4
  %instance = alloca %struct._TT_Instance, align 8
  %charWidth.addr = alloca i32, align 4
  %charHeight.addr = alloca i32, align 4
  %ins = alloca %struct._TInstance*, align 8
  %cleanup.dest.slot = alloca i32
  %coerce.dive = getelementptr %struct._TT_Instance, %struct._TT_Instance* %instance, i32 0, i32 0
  store i8* %instance.coerce, i8** %coerce.dive, align 8
  store i32 %charWidth, i32* %charWidth.addr, align 4, !tbaa !1
  store i32 %charHeight, i32* %charHeight.addr, align 4, !tbaa !1
  %0 = bitcast %struct._TInstance** %ins to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %z = getelementptr inbounds %struct._TT_Instance, %struct._TT_Instance* %instance, i32 0, i32 0
  %1 = load i8*, i8** %z, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct._TInstance*
  store %struct._TInstance* %2, %struct._TInstance** %ins, align 8, !tbaa !8
  %3 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %tobool = icmp ne %struct._TInstance* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %charWidth.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, 64
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 64, i32* %charWidth.addr, align 4, !tbaa !1
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %5 = load i32, i32* %charHeight.addr, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %5, 64
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store i32 64, i32* %charHeight.addr, align 4, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %6 = load i32, i32* %charWidth.addr, align 4, !tbaa !1
  %conv = sext i32 %6 to i64
  %7 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics = getelementptr inbounds %struct._TInstance, %struct._TInstance* %7, i32 0, i32 2
  %x_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 5
  store i64 %conv, i64* %x_scale1, align 8, !tbaa !9
  %8 = load i32, i32* %charHeight.addr, align 4, !tbaa !1
  %conv6 = sext i32 %8 to i64
  %9 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics7 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %9, i32 0, i32 2
  %y_scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics7, i32 0, i32 7
  store i64 %conv6, i64* %y_scale1, align 8, !tbaa !16
  %10 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %face = getelementptr inbounds %struct._TInstance, %struct._TInstance* %10, i32 0, i32 0
  %11 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !17
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %11, i32 0, i32 1
  %12 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font, align 8, !tbaa !18
  %nUnitsPerEm = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %12, i32 0, i32 12
  %13 = load i16, i16* %nUnitsPerEm, align 2, !tbaa !21
  %conv8 = zext i16 %13 to i64
  %14 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics9 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %14, i32 0, i32 2
  %x_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics9, i32 0, i32 6
  store i64 %conv8, i64* %x_scale2, align 8, !tbaa !24
  %15 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %face10 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %15, i32 0, i32 0
  %16 = load %struct._TFace*, %struct._TFace** %face10, align 8, !tbaa !17
  %font11 = getelementptr inbounds %struct._TFace, %struct._TFace* %16, i32 0, i32 1
  %17 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font11, align 8, !tbaa !18
  %nUnitsPerEm12 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %17, i32 0, i32 12
  %18 = load i16, i16* %nUnitsPerEm12, align 2, !tbaa !21
  %conv13 = zext i16 %18 to i64
  %19 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics14 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %19, i32 0, i32 2
  %y_scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics14, i32 0, i32 8
  store i64 %conv13, i64* %y_scale2, align 8, !tbaa !25
  %20 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %face15 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %20, i32 0, i32 0
  %21 = load %struct._TFace*, %struct._TFace** %face15, align 8, !tbaa !17
  %font16 = getelementptr inbounds %struct._TFace, %struct._TFace* %21, i32 0, i32 1
  %22 = load %struct.ttfFont_s*, %struct.ttfFont_s** %font16, align 8, !tbaa !18
  %nFlags = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %22, i32 0, i32 13
  %23 = load i32, i32* %nFlags, align 4, !tbaa !26
  %and = and i32 %23, 8
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.5
  %24 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics19 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %24, i32 0, i32 2
  %x_scale120 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics19, i32 0, i32 5
  %25 = load i64, i64* %x_scale120, align 8, !tbaa !9
  %add = add nsw i64 %25, 32
  %and21 = and i64 %add, -64
  %26 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics22 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %26, i32 0, i32 2
  %x_scale123 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics22, i32 0, i32 5
  store i64 %and21, i64* %x_scale123, align 8, !tbaa !9
  %27 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics24 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %27, i32 0, i32 2
  %y_scale125 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics24, i32 0, i32 7
  %28 = load i64, i64* %y_scale125, align 8, !tbaa !16
  %add26 = add nsw i64 %28, 32
  %and27 = and i64 %add26, -64
  %29 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics28 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %29, i32 0, i32 2
  %y_scale129 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics28, i32 0, i32 7
  store i64 %and27, i64* %y_scale129, align 8, !tbaa !16
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.18, %if.end.5
  %30 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics31 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %30, i32 0, i32 2
  %x_scale132 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics31, i32 0, i32 5
  %31 = load i64, i64* %x_scale132, align 8, !tbaa !9
  %div = sdiv i64 %31, 64
  %conv33 = trunc i64 %div to i32
  %32 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics34 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %32, i32 0, i32 2
  %x_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics34, i32 0, i32 3
  store i32 %conv33, i32* %x_ppem, align 4, !tbaa !27
  %33 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics35 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %33, i32 0, i32 2
  %y_scale136 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics35, i32 0, i32 7
  %34 = load i64, i64* %y_scale136, align 8, !tbaa !16
  %div37 = sdiv i64 %34, 64
  %conv38 = trunc i64 %div37 to i32
  %35 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics39 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %35, i32 0, i32 2
  %y_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics39, i32 0, i32 4
  store i32 %conv38, i32* %y_ppem, align 4, !tbaa !28
  %36 = load i32, i32* %charWidth.addr, align 4, !tbaa !1
  %37 = load i32, i32* %charHeight.addr, align 4, !tbaa !1
  %cmp40 = icmp sgt i32 %36, %37
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.30
  %38 = load i32, i32* %charWidth.addr, align 4, !tbaa !1
  %39 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics43 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %39, i32 0, i32 2
  %pointSize = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics43, i32 0, i32 0
  store i32 %38, i32* %pointSize, align 4, !tbaa !29
  br label %if.end.46

if.else:                                          ; preds = %if.end.30
  %40 = load i32, i32* %charHeight.addr, align 4, !tbaa !1
  %41 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %metrics44 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %41, i32 0, i32 2
  %pointSize45 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics44, i32 0, i32 0
  store i32 %40, i32* %pointSize45, align 4, !tbaa !29
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.42
  %42 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %valid = getelementptr inbounds %struct._TInstance, %struct._TInstance* %42, i32 0, i32 1
  store i32 0, i32* %valid, align 4, !tbaa !30
  %43 = load %struct._TInstance*, %struct._TInstance** %ins, align 8, !tbaa !8
  %call = call i32 @Instance_Reset(%struct._TInstance* %43, i32 0) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then
  %44 = bitcast %struct._TInstance** %ins to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @Instance_Reset(%struct._TInstance*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @ttfInterpreter__obtain(%struct.ttfMemory_s* %mem, %struct.ttfInterpreter_s** %ptti) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.ttfMemory_s*, align 8
  %ptti.addr = alloca %struct.ttfInterpreter_s**, align 8
  %tti = alloca %struct.ttfInterpreter_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ttfMemory_s* %mem, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  store %struct.ttfInterpreter_s** %ptti, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  %0 = bitcast %struct.ttfInterpreter_s** %tti to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfInterpreter_s**, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  %2 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %1, align 8, !tbaa !8
  %tobool = icmp ne %struct.ttfInterpreter_s* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ttfInterpreter_s**, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  %4 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %3, align 8, !tbaa !8
  %lock = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %4, i32 0, i32 4
  %5 = load i32, i32* %lock, align 4, !tbaa !31
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %lock, align 4, !tbaa !31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  %alloc_struct = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %6, i32 0, i32 1
  %7 = load i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)** %alloc_struct, align 8, !tbaa !33
  %8 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  %call = call i8* %7(%struct.ttfMemory_s* %8, %struct.ttfMemoryDescriptor_s* bitcast (%struct.gs_memory_struct_type_s* @st_ttfInterpreter to %struct.ttfMemoryDescriptor_s*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  %9 = bitcast i8* %call to %struct.ttfInterpreter_s*
  store %struct.ttfInterpreter_s* %9, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %10 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %tobool1 = icmp ne %struct.ttfInterpreter_s* %10, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %11 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %11, i32 0, i32 1
  store %struct.ttfSubGlyphUsage_s* null, %struct.ttfSubGlyphUsage_s** %usage, align 8, !tbaa !35
  %12 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage_size = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %12, i32 0, i32 2
  store i32 0, i32* %usage_size, align 4, !tbaa !36
  %13 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  %14 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %14, i32 0, i32 5
  store %struct.ttfMemory_s* %13, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !37
  %15 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %lock4 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %15, i32 0, i32 4
  store i32 1, i32* %lock4, align 4, !tbaa !31
  %16 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  %alloc_struct5 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %16, i32 0, i32 1
  %17 = load i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)** %alloc_struct5, align 8, !tbaa !33
  %18 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  %call6 = call i8* %17(%struct.ttfMemory_s* %18, %struct.ttfMemoryDescriptor_s* bitcast (%struct.gs_memory_struct_type_s* @st_TExecution_Context to %struct.ttfMemoryDescriptor_s*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  %19 = bitcast i8* %call6 to %struct._TExecution_Context*
  %20 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %exec = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %20, i32 0, i32 0
  store %struct._TExecution_Context* %19, %struct._TExecution_Context** %exec, align 8, !tbaa !38
  %21 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %exec7 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %21, i32 0, i32 0
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec7, align 8, !tbaa !38
  %tobool8 = icmp ne %struct._TExecution_Context* %22, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.3
  %23 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %23, i32 0, i32 2
  %24 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !39
  %25 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  %26 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %27 = bitcast %struct.ttfInterpreter_s* %26 to i8*
  call void %24(%struct.ttfMemory_s* %25, i8* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.3
  %28 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %exec11 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %28, i32 0, i32 0
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec11, align 8, !tbaa !38
  %30 = bitcast %struct._TExecution_Context* %29 to i8*
  %call12 = call i8* @memset(i8* %30, i32 0, i64 1416) #7
  %31 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %32 = load %struct.ttfInterpreter_s**, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  store %struct.ttfInterpreter_s* %31, %struct.ttfInterpreter_s** %32, align 8, !tbaa !8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.2, %if.then
  %33 = bitcast %struct.ttfInterpreter_s** %tti to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define void @ttfInterpreter__release(%struct.ttfInterpreter_s** %ptti) #0 {
entry:
  %ptti.addr = alloca %struct.ttfInterpreter_s**, align 8
  %tti = alloca %struct.ttfInterpreter_s*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ttfInterpreter_s** %ptti, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  %0 = bitcast %struct.ttfInterpreter_s** %tti to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfInterpreter_s**, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  %2 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %1, align 8, !tbaa !8
  store %struct.ttfInterpreter_s* %2, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %3 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %4, i32 0, i32 5
  %5 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !37
  store %struct.ttfMemory_s* %5, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %6 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %lock = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %6, i32 0, i32 4
  %7 = load i32, i32* %lock, align 4, !tbaa !31
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %lock, align 4, !tbaa !31
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %8, i32 0, i32 2
  %9 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !39
  %10 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %11 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %11, i32 0, i32 1
  %12 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %usage, align 8, !tbaa !35
  %13 = bitcast %struct.ttfSubGlyphUsage_s* %12 to i8*
  call void %9(%struct.ttfMemory_s* %10, i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #6
  %14 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %free1 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %14, i32 0, i32 2
  %15 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free1, align 8, !tbaa !39
  %16 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %17 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %exec = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %17, i32 0, i32 0
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !38
  %19 = bitcast %struct._TExecution_Context* %18 to i8*
  call void %15(%struct.ttfMemory_s* %16, i8* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #6
  %20 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %free2 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %20, i32 0, i32 2
  %21 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free2, align 8, !tbaa !39
  %22 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %23 = load %struct.ttfInterpreter_s**, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  %24 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %23, align 8, !tbaa !8
  %25 = bitcast %struct.ttfInterpreter_s* %24 to i8*
  call void %21(%struct.ttfMemory_s* %22, i8* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #6
  %26 = load %struct.ttfInterpreter_s**, %struct.ttfInterpreter_s*** %ptti.addr, align 8, !tbaa !8
  store %struct.ttfInterpreter_s* null, %struct.ttfInterpreter_s** %26, align 8, !tbaa !8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %27 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.ttfInterpreter_s** %tti to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
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
define void @ttfFont__init(%struct.ttfFont_s* %self, %struct.ttfMemory_s* %mem, void (%struct.ttfFont_s*)* %DebugRepaint, i32 (%struct.ttfFont_s*, i8*, ...)* %DebugPrint, %struct.gs_memory_s* %DebugMem) #0 {
entry:
  %self.addr = alloca %struct.ttfFont_s*, align 8
  %mem.addr = alloca %struct.ttfMemory_s*, align 8
  %DebugRepaint.addr = alloca void (%struct.ttfFont_s*)*, align 8
  %DebugPrint.addr = alloca i32 (%struct.ttfFont_s*, i8*, ...)*, align 8
  %DebugMem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.ttfFont_s* %self, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  store %struct.ttfMemory_s* %mem, %struct.ttfMemory_s** %mem.addr, align 8, !tbaa !8
  store void (%struct.ttfFont_s*)* %DebugRepaint, void (%struct.ttfFont_s*)** %DebugRepaint.addr, align 8, !tbaa !8
  store i32 (%struct.ttfFont_s*, i8*, ...)* %DebugPrint, i32 (%struct.ttfFont_s*, i8*, ...)** %DebugPrint.addr, align 8, !tbaa !8
  store %struct.gs_memory_s* %DebugMem, %struct.gs_memory_s** %DebugMem.addr, align 8, !tbaa !8
  %0 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %1 = bitcast %struct.ttfFont_s* %0 to i8*
  %call = call i8* @memset(i8* %1, i32 0, i64 192) #7
  %2 = load void (%struct.ttfFont_s*)*, void (%struct.ttfFont_s*)** %DebugRepaint.addr, align 8, !tbaa !8
  %3 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %DebugRepaint1 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %3, i32 0, i32 25
  store void (%struct.ttfFont_s*)* %2, void (%struct.ttfFont_s*)** %DebugRepaint1, align 8, !tbaa !40
  %4 = load i32 (%struct.ttfFont_s*, i8*, ...)*, i32 (%struct.ttfFont_s*, i8*, ...)** %DebugPrint.addr, align 8, !tbaa !8
  %5 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %DebugPrint2 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %5, i32 0, i32 26
  store i32 (%struct.ttfFont_s*, i8*, ...)* %4, i32 (%struct.ttfFont_s*, i8*, ...)** %DebugPrint2, align 8, !tbaa !41
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %DebugMem.addr, align 8, !tbaa !8
  %7 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %DebugMem3 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %7, i32 0, i32 27
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %DebugMem3, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define void @ttfFont__finit(%struct.ttfFont_s* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfFont_s*, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  store %struct.ttfFont_s* %self, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %0 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %1, i32 0, i32 24
  %2 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !43
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %2, i32 0, i32 5
  %3 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !37
  store %struct.ttfMemory_s* %3, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %4 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %4, i32 0, i32 23
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !44
  %tobool = icmp ne %struct._TExecution_Context* %5, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %6, i32 0, i32 22
  %7 = load %struct._TInstance*, %struct._TInstance** %inst, align 8, !tbaa !45
  %tobool1 = icmp ne %struct._TInstance* %7, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec3 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %8, i32 0, i32 23
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec3, align 8, !tbaa !44
  %10 = bitcast %struct._TExecution_Context* %9 to i8*
  %call = call i32 @Context_Destroy(i8* %10) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %11 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec5 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %11, i32 0, i32 23
  store %struct._TExecution_Context* null, %struct._TExecution_Context** %exec5, align 8, !tbaa !44
  %12 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst6 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %12, i32 0, i32 22
  %13 = load %struct._TInstance*, %struct._TInstance** %inst6, align 8, !tbaa !45
  %tobool7 = icmp ne %struct._TInstance* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.4
  %14 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst9 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %14, i32 0, i32 22
  %15 = load %struct._TInstance*, %struct._TInstance** %inst9, align 8, !tbaa !45
  %16 = bitcast %struct._TInstance* %15 to i8*
  %call10 = call i32 @Instance_Destroy(i8* %16) #6
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.4
  %17 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %17, i32 0, i32 2
  %18 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !39
  %19 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %20 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst12 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %20, i32 0, i32 22
  %21 = load %struct._TInstance*, %struct._TInstance** %inst12, align 8, !tbaa !45
  %22 = bitcast %struct._TInstance* %21 to i8*
  call void %18(%struct.ttfMemory_s* %19, i8* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #6
  %23 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst13 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %23, i32 0, i32 22
  store %struct._TInstance* null, %struct._TInstance** %inst13, align 8, !tbaa !45
  %24 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %24, i32 0, i32 21
  %25 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !46
  %tobool14 = icmp ne %struct._TFace* %25, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.11
  %26 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face16 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %26, i32 0, i32 21
  %27 = load %struct._TFace*, %struct._TFace** %face16, align 8, !tbaa !46
  %call17 = call i32 @Face_Destroy(%struct._TFace* %27) #6
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.11
  %28 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %free19 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %28, i32 0, i32 2
  %29 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free19, align 8, !tbaa !39
  %30 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %31 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face20 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %31, i32 0, i32 21
  %32 = load %struct._TFace*, %struct._TFace** %face20, align 8, !tbaa !46
  %33 = bitcast %struct._TFace* %32 to i8*
  call void %29(%struct.ttfMemory_s* %30, i8* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #6
  %34 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face21 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %34, i32 0, i32 21
  store %struct._TFace* null, %struct._TFace** %face21, align 8, !tbaa !46
  %35 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret void
}

declare i32 @Context_Destroy(i8*) #2

declare i32 @Instance_Destroy(i8*) #2

declare i32 @Face_Destroy(%struct._TFace*) #2

; Function Attrs: nounwind uwtable
define i32 @ttfFont__Open(%struct.ttfInterpreter_s* %tti, %struct.ttfFont_s* %self, %struct.ttfReader_s* %r, i32 %nTTC, float %w, float %h, i32 %design_grid) #0 {
entry:
  %retval = alloca i32, align 4
  %tti.addr = alloca %struct.ttfInterpreter_s*, align 8
  %self.addr = alloca %struct.ttfFont_s*, align 8
  %r.addr = alloca %struct.ttfReader_s*, align 8
  %nTTC.addr = alloca i32, align 4
  %w.addr = alloca float, align 4
  %h.addr = alloca float, align 4
  %design_grid.addr = alloca i32, align 4
  %sVersion = alloca [4 x i8], align 1
  %sVersion1 = alloca [4 x i8], align 1
  %sVersion2 = alloca [4 x i8], align 1
  %nNumTables = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %code1 = alloca i32, align 4
  %k = alloca i32, align 4
  %I = alloca %struct._TT_Instance, align 8
  %mem = alloca %struct.ttfMemory_s*, align 8
  %ww = alloca i32, align 4
  %hh = alloca i32, align 4
  %nFonts = alloca i32, align 4
  %nPos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sTag = alloca [5 x i8], align 1
  %nOffset = alloca i32, align 4
  %nLength = alloca i32, align 4
  %e = alloca %struct.ttfPtrElem*, align 8
  store %struct.ttfInterpreter_s* %tti, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  store %struct.ttfFont_s* %self, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  store i32 %nTTC, i32* %nTTC.addr, align 4, !tbaa !1
  store float %w, float* %w.addr, align 4, !tbaa !47
  store float %h, float* %h.addr, align 4, !tbaa !47
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !1
  %0 = bitcast [4 x i8]* %sVersion to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [4 x i8]* %sVersion1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [4 x i8]* %sVersion1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ttfFont__Open.sVersion1, i32 0, i32 0), i64 4, i32 1, i1 false)
  %3 = bitcast [4 x i8]* %sVersion2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [4 x i8]* %sVersion2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ttfFont__Open.sVersion2, i32 0, i32 0), i64 4, i32 1, i1 false)
  %5 = bitcast i32* %nNumTables to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %code1, align 4, !tbaa !1
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct._TT_Instance* %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %ttf_memory = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %12, i32 0, i32 5
  %13 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory, align 8, !tbaa !37
  store %struct.ttfMemory_s* %13, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %14 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %hh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %17 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %tti1 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %17, i32 0, i32 24
  store %struct.ttfInterpreter_s* %16, %struct.ttfInterpreter_s** %tti1, align 8, !tbaa !43
  %18 = load i32, i32* %design_grid.addr, align 4, !tbaa !1
  %19 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %design_grid2 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %19, i32 0, i32 20
  store i32 %18, i32* %design_grid2, align 4, !tbaa !49
  %20 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %20, i32 0, i32 1
  %21 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !50
  %22 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  call void %21(%struct.ttfReader_s* %22, i8* %arraydecay, i32 4) #6
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  %call = call i32 @memcmp(i8* %arraydecay3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 4) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.26, label %if.then

if.then:                                          ; preds = %entry
  %23 = bitcast i32* %nFonts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %nPos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 -1163005939, i32* %nPos, align 4, !tbaa !1
  %25 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Read4 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %25, i32 0, i32 1
  %26 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read4, align 8, !tbaa !50
  %27 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  call void %26(%struct.ttfReader_s* %27, i8* %arraydecay5, i32 4) #6
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion1, i32 0, i32 0
  %call8 = call i32 @memcmp(i8* %arraydecay6, i8* %arraydecay7, i64 4) #8
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion2, i32 0, i32 0
  %call12 = call i32 @memcmp(i8* %arraydecay10, i8* %arraydecay11, i64 4) #8
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  %28 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call15 = call i32 @ttfReader__UInt(%struct.ttfReader_s* %28) #6
  store i32 %call15, i32* %nFonts, align 4, !tbaa !1
  %29 = load i32, i32* %nFonts, align 4, !tbaa !1
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  %30 = load i32, i32* %nTTC.addr, align 4, !tbaa !1
  %31 = load i32, i32* %nFonts, align 4, !tbaa !1
  %cmp18 = icmp uge i32 %30, %31
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.17
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %33 = load i32, i32* %nTTC.addr, align 4, !tbaa !1
  %cmp21 = icmp ule i32 %32, %33
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call22 = call i32 @ttfReader__UInt(%struct.ttfReader_s* %34) #6
  store i32 %call22, i32* %nPos, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %36, i32 0, i32 2
  %37 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek, align 8, !tbaa !52
  %38 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %39 = load i32, i32* %nPos, align 4, !tbaa !1
  call void %37(%struct.ttfReader_s* %38, i32 %39) #6
  %40 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Read23 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %40, i32 0, i32 1
  %41 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read23, align 8, !tbaa !50
  %42 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  call void %41(%struct.ttfReader_s* %42, i8* %arraydecay24, i32 4) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.19, %if.then.16, %if.then.14
  %43 = bitcast i32* %nPos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %nFonts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.247 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.end.26:                                        ; preds = %cleanup.cont, %entry
  %arraydecay27 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion1, i32 0, i32 0
  %call29 = call i32 @memcmp(i8* %arraydecay27, i8* %arraydecay28, i64 4) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %if.end.26
  %arraydecay32 = getelementptr inbounds [4 x i8], [4 x i8]* %sVersion, i32 0, i32 0
  %call33 = call i32 @memcmp(i8* %arraydecay32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 4) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.36:                                        ; preds = %land.lhs.true.31, %if.end.26
  %45 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call37 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %45) #6
  %conv = zext i16 %call37 to i32
  store i32 %conv, i32* %nNumTables, align 4, !tbaa !1
  %46 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call38 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %46) #6
  %47 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call39 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %47) #6
  %48 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call40 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %48) #6
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.57, %if.end.36
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = load i32, i32* %nNumTables, align 4, !tbaa !1
  %cmp42 = icmp ult i32 %49, %50
  br i1 %cmp42, label %for.body.44, label %for.end.59

for.body.44:                                      ; preds = %for.cond.41
  %51 = bitcast [5 x i8]* %sTag to i8*
  call void @llvm.lifetime.start(i64 5, i8* %51) #1
  %52 = bitcast i32* %nOffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32* %nLength to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast %struct.ttfPtrElem** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %sTag, i32 0, i64 4
  store i8 0, i8* %arrayidx, align 1, !tbaa !53
  %55 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Read45 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %55, i32 0, i32 1
  %56 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read45, align 8, !tbaa !50
  %57 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %arraydecay46 = getelementptr inbounds [5 x i8], [5 x i8]* %sTag, i32 0, i32 0
  call void %56(%struct.ttfReader_s* %57, i8* %arraydecay46, i32 4) #6
  %58 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call47 = call i32 @ttfReader__UInt(%struct.ttfReader_s* %58) #6
  %59 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call48 = call i32 @ttfReader__UInt(%struct.ttfReader_s* %59) #6
  store i32 %call48, i32* %nOffset, align 4, !tbaa !1
  %60 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call49 = call i32 @ttfReader__UInt(%struct.ttfReader_s* %60) #6
  store i32 %call49, i32* %nLength, align 4, !tbaa !1
  %61 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %arraydecay50 = getelementptr inbounds [5 x i8], [5 x i8]* %sTag, i32 0, i32 0
  %call51 = call %struct.ttfPtrElem* @ttfFont__get_table_ptr(%struct.ttfFont_s* %61, i8* %arraydecay50) #6
  store %struct.ttfPtrElem* %call51, %struct.ttfPtrElem** %e, align 8, !tbaa !8
  %62 = load %struct.ttfPtrElem*, %struct.ttfPtrElem** %e, align 8, !tbaa !8
  %cmp52 = icmp ne %struct.ttfPtrElem* %62, null
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.body.44
  %63 = load i32, i32* %nOffset, align 4, !tbaa !1
  %64 = load %struct.ttfPtrElem*, %struct.ttfPtrElem** %e, align 8, !tbaa !8
  %nPos55 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %64, i32 0, i32 0
  store i32 %63, i32* %nPos55, align 4, !tbaa !54
  %65 = load i32, i32* %nLength, align 4, !tbaa !1
  %66 = load %struct.ttfPtrElem*, %struct.ttfPtrElem** %e, align 8, !tbaa !8
  %nLen = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %66, i32 0, i32 1
  store i32 %65, i32* %nLen, align 4, !tbaa !55
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.body.44
  %67 = bitcast %struct.ttfPtrElem** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %nLength to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %nOffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast [5 x i8]* %sTag to i8*
  call void @llvm.lifetime.end(i64 5, i8* %70) #1
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %71 = load i32, i32* %i, align 4, !tbaa !1
  %inc58 = add i32 %71, 1
  store i32 %inc58, i32* %i, align 4, !tbaa !1
  br label %for.cond.41

for.end.59:                                       ; preds = %for.cond.41
  %72 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek60 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %72, i32 0, i32 2
  %73 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek60, align 8, !tbaa !52
  %74 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %75 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_head = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %75, i32 0, i32 3
  %nPos61 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_head, i32 0, i32 0
  %76 = load i32, i32* %nPos61, align 4, !tbaa !56
  %add = add nsw i32 %76, ptrtoint (i16* getelementptr inbounds (%struct.sfnt_FontHeader, %struct.sfnt_FontHeader* null, i32 0, i32 4) to i32)
  call void %73(%struct.ttfReader_s* %74, i32 %add) #6
  %77 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call62 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %77) #6
  %conv63 = zext i16 %call62 to i32
  %78 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nFlags = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %78, i32 0, i32 13
  store i32 %conv63, i32* %nFlags, align 4, !tbaa !26
  %79 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek64 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %79, i32 0, i32 2
  %80 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek64, align 8, !tbaa !52
  %81 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %82 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_head65 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %82, i32 0, i32 3
  %nPos66 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_head65, i32 0, i32 0
  %83 = load i32, i32* %nPos66, align 4, !tbaa !56
  %add67 = add nsw i32 %83, ptrtoint (i16* getelementptr inbounds (%struct.sfnt_FontHeader, %struct.sfnt_FontHeader* null, i32 0, i32 5) to i32)
  call void %80(%struct.ttfReader_s* %81, i32 %add67) #6
  %84 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call68 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %84) #6
  %85 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nUnitsPerEm = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %85, i32 0, i32 12
  store i16 %call68, i16* %nUnitsPerEm, align 2, !tbaa !21
  %86 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek69 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %86, i32 0, i32 2
  %87 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek69, align 8, !tbaa !52
  %88 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %89 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_head70 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %89, i32 0, i32 3
  %nPos71 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_head70, i32 0, i32 0
  %90 = load i32, i32* %nPos71, align 4, !tbaa !56
  %add72 = add nsw i32 %90, ptrtoint (i16* getelementptr inbounds (%struct.sfnt_FontHeader, %struct.sfnt_FontHeader* null, i32 0, i32 15) to i32)
  call void %87(%struct.ttfReader_s* %88, i32 %add72) #6
  %91 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call73 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %91) #6
  %conv74 = zext i16 %call73 to i32
  %92 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nIndexToLocFormat = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %92, i32 0, i32 18
  store i32 %conv74, i32* %nIndexToLocFormat, align 4, !tbaa !57
  %93 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek75 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %93, i32 0, i32 2
  %94 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek75, align 8, !tbaa !52
  %95 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %96 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_maxp = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %96, i32 0, i32 9
  %nPos76 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_maxp, i32 0, i32 0
  %97 = load i32, i32* %nPos76, align 4, !tbaa !58
  %add77 = add nsw i32 %97, ptrtoint (i16* getelementptr inbounds (%struct.sfnt_maxProfileTable, %struct.sfnt_maxProfileTable* null, i32 0, i32 1) to i32)
  call void %94(%struct.ttfReader_s* %95, i32 %add77) #6
  %98 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call78 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %98) #6
  %conv79 = zext i16 %call78 to i32
  %99 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nNumGlyphs = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %99, i32 0, i32 14
  store i32 %conv79, i32* %nNumGlyphs, align 4, !tbaa !59
  %100 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek80 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %100, i32 0, i32 2
  %101 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek80, align 8, !tbaa !52
  %102 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %103 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_maxp81 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %103, i32 0, i32 9
  %nPos82 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_maxp81, i32 0, i32 0
  %104 = load i32, i32* %nPos82, align 4, !tbaa !58
  %add83 = add nsw i32 %104, ptrtoint (i16* getelementptr inbounds (%struct.sfnt_maxProfileTable, %struct.sfnt_maxProfileTable* null, i32 0, i32 13) to i32)
  call void %101(%struct.ttfReader_s* %102, i32 %add83) #6
  %105 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call84 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %105) #6
  %conv85 = zext i16 %call84 to i32
  %106 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nMaxComponents = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %106, i32 0, i32 15
  store i32 %conv85, i32* %nMaxComponents, align 4, !tbaa !60
  %107 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nMaxComponents86 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %107, i32 0, i32 15
  %108 = load i32, i32* %nMaxComponents86, align 4, !tbaa !60
  %cmp87 = icmp ult i32 %108, 10
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %for.end.59
  %109 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nMaxComponents90 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %109, i32 0, i32 15
  store i32 10, i32* %nMaxComponents90, align 4, !tbaa !60
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %for.end.59
  %110 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek92 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %110, i32 0, i32 2
  %111 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek92, align 8, !tbaa !52
  %112 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %113 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_hhea = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %113, i32 0, i32 4
  %nPos93 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_hhea, i32 0, i32 0
  %114 = load i32, i32* %nPos93, align 4, !tbaa !61
  %add94 = add nsw i32 %114, ptrtoint (i16* getelementptr inbounds (%struct.sfnt_MetricsHeader, %struct.sfnt_MetricsHeader* null, i32 0, i32 14) to i32)
  call void %111(%struct.ttfReader_s* %112, i32 %add94) #6
  %115 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call95 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %115) #6
  %conv96 = zext i16 %call95 to i32
  %116 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nLongMetricsHorz = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %116, i32 0, i32 17
  store i32 %conv96, i32* %nLongMetricsHorz, align 4, !tbaa !62
  %117 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_vhea = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %117, i32 0, i32 6
  %nPos97 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_vhea, i32 0, i32 0
  %118 = load i32, i32* %nPos97, align 4, !tbaa !63
  %cmp98 = icmp ne i32 %118, 0
  br i1 %cmp98, label %if.then.100, label %if.else

if.then.100:                                      ; preds = %if.end.91
  %119 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Seek101 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %119, i32 0, i32 2
  %120 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek101, align 8, !tbaa !52
  %121 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %122 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %t_vhea102 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %122, i32 0, i32 6
  %nPos103 = getelementptr inbounds %struct.ttfPtrElem, %struct.ttfPtrElem* %t_vhea102, i32 0, i32 0
  %123 = load i32, i32* %nPos103, align 4, !tbaa !63
  %add104 = add nsw i32 %123, ptrtoint (i16* getelementptr inbounds (%struct.sfnt_MetricsHeader, %struct.sfnt_MetricsHeader* null, i32 0, i32 14) to i32)
  call void %120(%struct.ttfReader_s* %121, i32 %add104) #6
  %124 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call105 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %124) #6
  %conv106 = zext i16 %call105 to i32
  %125 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nLongMetricsVert = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %125, i32 0, i32 16
  store i32 %conv106, i32* %nLongMetricsVert, align 4, !tbaa !64
  br label %if.end.108

if.else:                                          ; preds = %if.end.91
  %126 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nLongMetricsVert107 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %126, i32 0, i32 16
  store i32 0, i32* %nLongMetricsVert107, align 4, !tbaa !64
  br label %if.end.108

if.end.108:                                       ; preds = %if.else, %if.then.100
  %127 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %usage_size = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %127, i32 0, i32 2
  %128 = load i32, i32* %usage_size, align 4, !tbaa !36
  %129 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nMaxComponents109 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %129, i32 0, i32 15
  %130 = load i32, i32* %nMaxComponents109, align 4, !tbaa !60
  %mul = mul i32 %130, 3
  %cmp110 = icmp ult i32 %128, %mul
  br i1 %cmp110, label %if.then.112, label %if.end.131

if.then.112:                                      ; preds = %if.end.108
  %131 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %ttf_memory113 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %131, i32 0, i32 5
  %132 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory113, align 8, !tbaa !37
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %132, i32 0, i32 2
  %133 = load void (%struct.ttfMemory_s*, i8*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !39
  %134 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %ttf_memory114 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %134, i32 0, i32 5
  %135 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %ttf_memory114, align 8, !tbaa !37
  %136 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %usage = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %136, i32 0, i32 1
  %137 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %usage, align 8, !tbaa !35
  %138 = bitcast %struct.ttfSubGlyphUsage_s* %137 to i8*
  call void %133(%struct.ttfMemory_s* %135, i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #6
  %139 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %usage_size115 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %139, i32 0, i32 2
  store i32 0, i32* %usage_size115, align 4, !tbaa !36
  %140 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %alloc_bytes = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %140, i32 0, i32 0
  %141 = load i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !65
  %142 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %143 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nMaxComponents116 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %143, i32 0, i32 15
  %144 = load i32, i32* %nMaxComponents116, align 4, !tbaa !60
  %conv117 = zext i32 %144 to i64
  %mul118 = mul i64 36, %conv117
  %mul119 = mul i64 %mul118, 3
  %conv120 = trunc i64 %mul119 to i32
  %call121 = call i8* %141(%struct.ttfMemory_s* %142, i32 %conv120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #6
  %145 = bitcast i8* %call121 to %struct.ttfSubGlyphUsage_s*
  %146 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %usage122 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %146, i32 0, i32 1
  store %struct.ttfSubGlyphUsage_s* %145, %struct.ttfSubGlyphUsage_s** %usage122, align 8, !tbaa !35
  %147 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %usage123 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %147, i32 0, i32 1
  %148 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %usage123, align 8, !tbaa !35
  %cmp124 = icmp eq %struct.ttfSubGlyphUsage_s* %148, null
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.112
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.127:                                       ; preds = %if.then.112
  %149 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nMaxComponents128 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %149, i32 0, i32 15
  %150 = load i32, i32* %nMaxComponents128, align 4, !tbaa !60
  %mul129 = mul i32 %150, 3
  %151 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %usage_size130 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %151, i32 0, i32 2
  store i32 %mul129, i32* %usage_size130, align 4, !tbaa !36
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.127, %if.end.108
  %152 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %alloc_struct = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %152, i32 0, i32 1
  %153 = load i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)** %alloc_struct, align 8, !tbaa !33
  %154 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %call132 = call i8* %153(%struct.ttfMemory_s* %154, %struct.ttfMemoryDescriptor_s* bitcast (%struct.gs_memory_struct_type_s* @st_TFace to %struct.ttfMemoryDescriptor_s*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #6
  %155 = bitcast i8* %call132 to %struct._TFace*
  %156 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %156, i32 0, i32 21
  store %struct._TFace* %155, %struct._TFace** %face, align 8, !tbaa !46
  %157 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face133 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %157, i32 0, i32 21
  %158 = load %struct._TFace*, %struct._TFace** %face133, align 8, !tbaa !46
  %cmp134 = icmp eq %struct._TFace* %158, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.131
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.137:                                       ; preds = %if.end.131
  %159 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face138 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %159, i32 0, i32 21
  %160 = load %struct._TFace*, %struct._TFace** %face138, align 8, !tbaa !46
  %161 = bitcast %struct._TFace* %160 to i8*
  %call139 = call i8* @memset(i8* %161, i32 0, i64 112) #7
  %162 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %163 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face140 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %163, i32 0, i32 21
  %164 = load %struct._TFace*, %struct._TFace** %face140, align 8, !tbaa !46
  %r141 = getelementptr inbounds %struct._TFace, %struct._TFace* %164, i32 0, i32 0
  store %struct.ttfReader_s* %162, %struct.ttfReader_s** %r141, align 8, !tbaa !66
  %165 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %166 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face142 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %166, i32 0, i32 21
  %167 = load %struct._TFace*, %struct._TFace** %face142, align 8, !tbaa !46
  %font = getelementptr inbounds %struct._TFace, %struct._TFace* %167, i32 0, i32 1
  store %struct.ttfFont_s* %165, %struct.ttfFont_s** %font, align 8, !tbaa !18
  %168 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !8
  %exec = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %168, i32 0, i32 0
  %169 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !38
  %170 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec143 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %170, i32 0, i32 23
  store %struct._TExecution_Context* %169, %struct._TExecution_Context** %exec143, align 8, !tbaa !44
  %171 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face144 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %171, i32 0, i32 21
  %172 = load %struct._TFace*, %struct._TFace** %face144, align 8, !tbaa !46
  %call145 = call i32 @Face_Create(%struct._TFace* %172) #6
  store i32 %call145, i32* %code, align 4, !tbaa !1
  %173 = load i32, i32* %code, align 4, !tbaa !1
  %tobool146 = icmp ne i32 %173, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.137
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.148:                                       ; preds = %if.end.137
  %174 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %Error = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %174, i32 0, i32 4
  %175 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error, align 8, !tbaa !67
  %176 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %call149 = call i32 %175(%struct.ttfReader_s* %176) #6
  store i32 %call149, i32* %code, align 4, !tbaa !1
  %177 = load i32, i32* %code, align 4, !tbaa !1
  %cmp150 = icmp slt i32 %177, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.148
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.153:                                       ; preds = %if.end.148
  %178 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %alloc_struct154 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %178, i32 0, i32 1
  %179 = load i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)** %alloc_struct154, align 8, !tbaa !33
  %180 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %mem, align 8, !tbaa !8
  %call155 = call i8* %179(%struct.ttfMemory_s* %180, %struct.ttfMemoryDescriptor_s* bitcast (%struct.gs_memory_struct_type_s* @st_TInstance to %struct.ttfMemoryDescriptor_s*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #6
  %181 = bitcast i8* %call155 to %struct._TInstance*
  %182 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %182, i32 0, i32 22
  store %struct._TInstance* %181, %struct._TInstance** %inst, align 8, !tbaa !45
  %183 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst156 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %183, i32 0, i32 22
  %184 = load %struct._TInstance*, %struct._TInstance** %inst156, align 8, !tbaa !45
  %cmp157 = icmp eq %struct._TInstance* %184, null
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.153
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.160:                                       ; preds = %if.end.153
  %185 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst161 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %185, i32 0, i32 22
  %186 = load %struct._TInstance*, %struct._TInstance** %inst161, align 8, !tbaa !45
  %187 = bitcast %struct._TInstance* %186 to i8*
  %call162 = call i8* @memset(i8* %187, i32 0, i64 696) #7
  %188 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec163 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %188, i32 0, i32 23
  %189 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec163, align 8, !tbaa !44
  %190 = bitcast %struct._TExecution_Context* %189 to i8*
  %191 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face164 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %191, i32 0, i32 21
  %192 = load %struct._TFace*, %struct._TFace** %face164, align 8, !tbaa !46
  %193 = bitcast %struct._TFace* %192 to i8*
  %call165 = call i32 @Context_Create(i8* %190, i8* %193) #6
  store i32 %call165, i32* %code, align 4, !tbaa !1
  %194 = load i32, i32* %code, align 4, !tbaa !1
  %cmp166 = icmp eq i32 %194, 256
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.160
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.169:                                       ; preds = %if.end.160
  %195 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst170 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %195, i32 0, i32 22
  %196 = load %struct._TInstance*, %struct._TInstance** %inst170, align 8, !tbaa !45
  %197 = bitcast %struct._TInstance* %196 to i8*
  %198 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face171 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %198, i32 0, i32 21
  %199 = load %struct._TFace*, %struct._TFace** %face171, align 8, !tbaa !46
  %200 = bitcast %struct._TFace* %199 to i8*
  %call172 = call i32 @Instance_Create(i8* %197, i8* %200) #6
  store i32 %call172, i32* %code, align 4, !tbaa !1
  %201 = load i32, i32* %code, align 4, !tbaa !1
  %cmp173 = icmp eq i32 %201, 256
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.169
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.176:                                       ; preds = %if.end.169
  %202 = load i32, i32* %code, align 4, !tbaa !1
  %tobool177 = icmp ne i32 %202, 0
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.176
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.179:                                       ; preds = %if.end.176
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.193, %if.end.179
  %203 = load i32, i32* %k, align 4, !tbaa !1
  %204 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face181 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %204, i32 0, i32 21
  %205 = load %struct._TFace*, %struct._TFace** %face181, align 8, !tbaa !46
  %cvtSize = getelementptr inbounds %struct._TFace, %struct._TFace* %205, i32 0, i32 8
  %206 = load i32, i32* %cvtSize, align 4, !tbaa !68
  %cmp182 = icmp slt i32 %203, %206
  br i1 %cmp182, label %for.body.184, label %for.end.195

for.body.184:                                     ; preds = %for.cond.180
  %207 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom = sext i32 %207 to i64
  %208 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %face185 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %208, i32 0, i32 21
  %209 = load %struct._TFace*, %struct._TFace** %face185, align 8, !tbaa !46
  %cvt = getelementptr inbounds %struct._TFace, %struct._TFace* %209, i32 0, i32 9
  %210 = load i16*, i16** %cvt, align 8, !tbaa !69
  %arrayidx186 = getelementptr inbounds i16, i16* %210, i64 %idxprom
  %211 = load i16, i16* %arrayidx186, align 2, !tbaa !70
  %call187 = call i32 @shortToF26Dot6(i16 signext %211) #6
  %conv188 = sext i32 %call187 to i64
  %212 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom189 = sext i32 %212 to i64
  %213 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst190 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %213, i32 0, i32 22
  %214 = load %struct._TInstance*, %struct._TInstance** %inst190, align 8, !tbaa !45
  %cvt191 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %214, i32 0, i32 13
  %215 = load i64*, i64** %cvt191, align 8, !tbaa !71
  %arrayidx192 = getelementptr inbounds i64, i64* %215, i64 %idxprom189
  store i64 %conv188, i64* %arrayidx192, align 8, !tbaa !72
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.184
  %216 = load i32, i32* %k, align 4, !tbaa !1
  %inc194 = add nsw i32 %216, 1
  store i32 %inc194, i32* %k, align 4, !tbaa !1
  br label %for.cond.180

for.end.195:                                      ; preds = %for.cond.180
  %217 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst196 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %217, i32 0, i32 22
  %218 = load %struct._TInstance*, %struct._TInstance** %inst196, align 8, !tbaa !45
  %call197 = call i32 @Instance_Init(%struct._TInstance* %218) #6
  store i32 %call197, i32* %code, align 4, !tbaa !1
  %219 = load i32, i32* %code, align 4, !tbaa !1
  %cmp198 = icmp eq i32 %219, 256
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %for.end.195
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.201:                                       ; preds = %for.end.195
  %220 = load i32, i32* %code, align 4, !tbaa !1
  %cmp202 = icmp sge i32 %220, 1024
  br i1 %cmp202, label %land.lhs.true.204, label %if.else.208

land.lhs.true.204:                                ; preds = %if.end.201
  %221 = load i32, i32* %code, align 4, !tbaa !1
  %cmp205 = icmp sle i32 %221, 1040
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %land.lhs.true.204
  store i32 9, i32* %code1, align 4, !tbaa !1
  br label %if.end.212

if.else.208:                                      ; preds = %land.lhs.true.204, %if.end.201
  %222 = load i32, i32* %code, align 4, !tbaa !1
  %tobool209 = icmp ne i32 %222, 0
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.else.208
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.211:                                       ; preds = %if.else.208
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.207
  %223 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst213 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %223, i32 0, i32 22
  %224 = load %struct._TInstance*, %struct._TInstance** %inst213, align 8, !tbaa !45
  %225 = bitcast %struct._TInstance* %224 to i8*
  %z = getelementptr inbounds %struct._TT_Instance, %struct._TT_Instance* %I, i32 0, i32 0
  store i8* %225, i8** %z, align 8, !tbaa !5
  %226 = load i32, i32* %design_grid.addr, align 4, !tbaa !1
  %tobool214 = icmp ne i32 %226, 0
  br i1 %tobool214, label %if.then.215, label %if.else.218

if.then.215:                                      ; preds = %if.end.212
  %227 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %nUnitsPerEm216 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %227, i32 0, i32 12
  %228 = load i16, i16* %nUnitsPerEm216, align 2, !tbaa !21
  %call217 = call i32 @shortToF26Dot6(i16 signext %228) #6
  store i32 %call217, i32* %hh, align 4, !tbaa !1
  store i32 %call217, i32* %ww, align 4, !tbaa !1
  br label %if.end.221

if.else.218:                                      ; preds = %if.end.212
  %229 = load float, float* %w.addr, align 4, !tbaa !47
  %call219 = call i32 @floatToF26Dot6(float %229) #6
  store i32 %call219, i32* %ww, align 4, !tbaa !1
  %230 = load float, float* %h.addr, align 4, !tbaa !47
  %call220 = call i32 @floatToF26Dot6(float %230) #6
  store i32 %call220, i32* %hh, align 4, !tbaa !1
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.218, %if.then.215
  %231 = load i32, i32* %ww, align 4, !tbaa !1
  %232 = load i32, i32* %hh, align 4, !tbaa !1
  %coerce.dive = getelementptr %struct._TT_Instance, %struct._TT_Instance* %I, i32 0, i32 0
  %233 = load i8*, i8** %coerce.dive, align 8
  %call222 = call i32 @TT_Set_Instance_CharSizes(i8* %233, i32 %231, i32 %232) #6
  store i32 %call222, i32* %code, align 4, !tbaa !1
  %234 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst223 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %234, i32 0, i32 22
  %235 = load %struct._TInstance*, %struct._TInstance** %inst223, align 8, !tbaa !45
  %metrics = getelementptr inbounds %struct._TInstance, %struct._TInstance* %235, i32 0, i32 2
  %236 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec224 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %236, i32 0, i32 23
  %237 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec224, align 8, !tbaa !44
  %metrics225 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %237, i32 0, i32 31
  %238 = bitcast %struct._TIns_Metrics* %metrics to i8*
  %239 = bitcast %struct._TIns_Metrics* %metrics225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %239, i64 128, i32 8, i1 false), !tbaa.struct !73
  %240 = load i32, i32* %code, align 4, !tbaa !1
  %cmp226 = icmp eq i32 %240, 32
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.221
  store i32 8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.229:                                       ; preds = %if.end.221
  %241 = load i32, i32* %code, align 4, !tbaa !1
  %cmp230 = icmp eq i32 %241, 256
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.end.229
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.233:                                       ; preds = %if.end.229
  %242 = load i32, i32* %code, align 4, !tbaa !1
  %cmp234 = icmp sge i32 %242, 1024
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.240

land.lhs.true.236:                                ; preds = %if.end.233
  %243 = load i32, i32* %code, align 4, !tbaa !1
  %cmp237 = icmp sle i32 %243, 1040
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %land.lhs.true.236
  store i32 9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.240:                                       ; preds = %land.lhs.true.236, %if.end.233
  %244 = load i32, i32* %code, align 4, !tbaa !1
  %tobool241 = icmp ne i32 %244, 0
  br i1 %tobool241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.end.240
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.243:                                       ; preds = %if.end.240
  %245 = load i32, i32* %code1, align 4, !tbaa !1
  %tobool244 = icmp ne i32 %245, 0
  br i1 %tobool244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.end.243
  %246 = load i32, i32* %code1, align 4, !tbaa !1
  store i32 %246, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

if.end.246:                                       ; preds = %if.end.243
  %247 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %247, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

cleanup.247:                                      ; preds = %if.end.246, %if.then.245, %if.then.242, %if.then.239, %if.then.232, %if.then.228, %if.then.210, %if.then.200, %if.then.178, %if.then.175, %if.then.168, %if.then.159, %if.then.152, %if.then.147, %if.then.136, %if.then.126, %if.then.35, %cleanup
  %248 = bitcast i32* %hh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast %struct.ttfMemory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast %struct._TT_Instance* %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %nNumTables to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast [4 x i8]* %sVersion2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast [4 x i8]* %sVersion1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast [4 x i8]* %sVersion to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = load i32, i32* %retval
  ret i32 %260
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @ttfReader__UInt(%struct.ttfReader_s*) #2

declare zeroext i16 @ttfReader__UShort(%struct.ttfReader_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.ttfPtrElem* @ttfFont__get_table_ptr(%struct.ttfFont_s* %f, i8* %id) #0 {
entry:
  %retval = alloca %struct.ttfPtrElem*, align 8
  %f.addr = alloca %struct.ttfFont_s*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.ttfFont_s* %f, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  store i8* %id, i8** %id.addr, align 8, !tbaa !8
  %0 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call = call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_cvt_ = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %1, i32 0, i32 0
  store %struct.ttfPtrElem* %t_cvt_, %struct.ttfPtrElem** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call1 = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_fpgm = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %3, i32 0, i32 1
  store %struct.ttfPtrElem* %t_fpgm, %struct.ttfPtrElem** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call5 = call i32 @memcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #8
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %5 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_glyf = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %5, i32 0, i32 2
  store %struct.ttfPtrElem* %t_glyf, %struct.ttfPtrElem** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call9 = call i32 @memcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 4) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %7 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_head = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %7, i32 0, i32 3
  store %struct.ttfPtrElem* %t_head, %struct.ttfPtrElem** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %8 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call13 = call i32 @memcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i64 4) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %9 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_hhea = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %9, i32 0, i32 4
  store %struct.ttfPtrElem* %t_hhea, %struct.ttfPtrElem** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %10 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call17 = call i32 @memcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 4) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %11 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_hmtx = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %11, i32 0, i32 5
  store %struct.ttfPtrElem* %t_hmtx, %struct.ttfPtrElem** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %12 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call21 = call i32 @memcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4) #8
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  %13 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_vhea = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %13, i32 0, i32 6
  store %struct.ttfPtrElem* %t_vhea, %struct.ttfPtrElem** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %14 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call25 = call i32 @memcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #8
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  %15 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_vmtx = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %15, i32 0, i32 7
  store %struct.ttfPtrElem* %t_vmtx, %struct.ttfPtrElem** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %16 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call29 = call i32 @memcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  %17 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_loca = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %17, i32 0, i32 8
  store %struct.ttfPtrElem* %t_loca, %struct.ttfPtrElem** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %18 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call33 = call i32 @memcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 4) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  %19 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_maxp = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %19, i32 0, i32 9
  store %struct.ttfPtrElem* %t_maxp, %struct.ttfPtrElem** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  %20 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call37 = call i32 @memcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 4) #8
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %21 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_prep = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %21, i32 0, i32 10
  store %struct.ttfPtrElem* %t_prep, %struct.ttfPtrElem** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %22 = load i8*, i8** %id.addr, align 8, !tbaa !8
  %call41 = call i32 @memcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i64 4) #8
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.40
  %23 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %t_cmap = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %23, i32 0, i32 11
  store %struct.ttfPtrElem* %t_cmap, %struct.ttfPtrElem** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  store %struct.ttfPtrElem* null, %struct.ttfPtrElem** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %24 = load %struct.ttfPtrElem*, %struct.ttfPtrElem** %retval
  ret %struct.ttfPtrElem* %24
}

declare i32 @Face_Create(%struct._TFace*) #2

declare i32 @Context_Create(i8*, i8*) #2

declare i32 @Instance_Create(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @shortToF26Dot6(i16 signext %a) #0 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2, !tbaa !70
  %0 = load i16, i16* %a.addr, align 2, !tbaa !70
  %conv = sext i16 %0 to i32
  %shl = shl i32 %conv, 6
  ret i32 %shl
}

declare i32 @Instance_Init(%struct._TInstance*) #2

; Function Attrs: nounwind uwtable
define internal i32 @floatToF26Dot6(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4, !tbaa !47
  %0 = load float, float* %a.addr, align 4, !tbaa !47
  %mul = fmul float %0, 6.400000e+01
  %conv = fpext float %mul to double
  %add = fadd double %conv, 5.000000e-01
  %conv1 = fptosi double %add to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define void @ttfOutliner__init(%struct.ttfOutliner* %self, %struct.ttfFont_s* %f, %struct.ttfReader_s* %r, %struct.ttfExport_s* %exp, i32 %bOutline, i32 %bFirst, i32 %bVertical) #0 {
entry:
  %self.addr = alloca %struct.ttfOutliner*, align 8
  %f.addr = alloca %struct.ttfFont_s*, align 8
  %r.addr = alloca %struct.ttfReader_s*, align 8
  %exp.addr = alloca %struct.ttfExport_s*, align 8
  %bOutline.addr = alloca i32, align 4
  %bFirst.addr = alloca i32, align 4
  %bVertical.addr = alloca i32, align 4
  store %struct.ttfOutliner* %self, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  store %struct.ttfFont_s* %f, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  store %struct.ttfExport_s* %exp, %struct.ttfExport_s** %exp.addr, align 8, !tbaa !8
  store i32 %bOutline, i32* %bOutline.addr, align 4, !tbaa !1
  store i32 %bFirst, i32* %bFirst.addr, align 4, !tbaa !1
  store i32 %bVertical, i32* %bVertical.addr, align 4, !tbaa !1
  %0 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !8
  %1 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %r1 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %1, i32 0, i32 7
  store %struct.ttfReader_s* %0, %struct.ttfReader_s** %r1, align 8, !tbaa !74
  %2 = load i32, i32* %bOutline.addr, align 4, !tbaa !1
  %3 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %bOutline2 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %3, i32 0, i32 0
  store i32 %2, i32* %bOutline2, align 4, !tbaa !79
  %4 = load i32, i32* %bFirst.addr, align 4, !tbaa !1
  %5 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %bFirst3 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %5, i32 0, i32 1
  store i32 %4, i32* %bFirst3, align 4, !tbaa !80
  %6 = load %struct.ttfFont_s*, %struct.ttfFont_s** %f.addr, align 8, !tbaa !8
  %7 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %pFont = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %7, i32 0, i32 9
  store %struct.ttfFont_s* %6, %struct.ttfFont_s** %pFont, align 8, !tbaa !81
  %8 = load i32, i32* %bVertical.addr, align 4, !tbaa !1
  %9 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %bVertical4 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %9, i32 0, i32 2
  store i32 %8, i32* %bVertical4, align 4, !tbaa !82
  %10 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp.addr, align 8, !tbaa !8
  %11 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %exp5 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %11, i32 0, i32 8
  store %struct.ttfExport_s* %10, %struct.ttfExport_s** %exp5, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define void @ttfOutliner__DrawGlyphOutline(%struct.ttfOutliner* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfOutliner*, align 8
  %out = alloca %struct.ttfGlyphOutline*, align 8
  %m = alloca %struct.FloatMatrix*, align 8
  %pFont = alloca %struct.ttfFont_s*, align 8
  %exp = alloca %struct.ttfExport_s*, align 8
  %exec = alloca %struct._TExecution_Context*, align 8
  %pts = alloca %struct._TGlyph_Zone*, align 8
  %endP = alloca i16*, align 8
  %onCurve = alloca i8*, align 8
  %x = alloca i32*, align 8
  %y = alloca i32*, align 8
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %sp = alloca i16, align 2
  %ctr = alloca i16, align 2
  %p0 = alloca %struct.FloatPoint, align 8
  %p1 = alloca %struct.FloatPoint, align 8
  %p2 = alloca %struct.FloatPoint, align 8
  %p3 = alloca %struct.FloatPoint, align 8
  %expand_x = alloca i32, align 4
  %expand_y = alloca i32, align 4
  %xMin = alloca i32, align 4
  %xMax = alloca i32, align 4
  %yMin = alloca i32, align 4
  %yMax = alloca i32, align 4
  %pt = alloca i16, align 2
  %pts25 = alloca i16, align 2
  %ep = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  %prevIndex = alloca i16, align 2
  %nextIndex = alloca i16, align 2
  %prevIndex146 = alloca i16, align 2
  %nextIndex158 = alloca i16, align 2
  %prevX = alloca i32, align 4
  %prevY = alloca i32, align 4
  %nextX = alloca i32, align 4
  %nextY = alloca i32, align 4
  %dx1 = alloca double, align 8
  %dy1 = alloca double, align 8
  %dx2 = alloca double, align 8
  %dy2 = alloca double, align 8
  %dx3 = alloca double, align 8
  %dy3 = alloca double, align 8
  %prec = alloca double, align 8
  store %struct.ttfOutliner* %self, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %0 = bitcast %struct.ttfGlyphOutline** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %out1 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %1, i32 0, i32 10
  store %struct.ttfGlyphOutline* %out1, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %2 = bitcast %struct.FloatMatrix** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %3, i32 0, i32 11
  store %struct.FloatMatrix* %post_transform, %struct.FloatMatrix** %m, align 8, !tbaa !8
  %4 = bitcast %struct.ttfFont_s** %pFont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %pFont2 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %5, i32 0, i32 9
  %6 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont2, align 8, !tbaa !81
  store %struct.ttfFont_s* %6, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %7 = bitcast %struct.ttfExport_s** %exp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %exp3 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %8, i32 0, i32 8
  %9 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp3, align 8, !tbaa !83
  store %struct.ttfExport_s* %9, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %10 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %exec4 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %11, i32 0, i32 23
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec4, align 8, !tbaa !44
  store %struct._TExecution_Context* %12, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %13 = bitcast %struct._TGlyph_Zone** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %pts5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 39
  store %struct._TGlyph_Zone* %pts5, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %15 = bitcast i16** %endP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %16, i32 0, i32 7
  %17 = load i16*, i16** %contours, align 8, !tbaa !84
  store i16* %17, i16** %endP, align 8, !tbaa !8
  %18 = bitcast i8** %onCurve to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %19, i32 0, i32 6
  %20 = load i8*, i8** %touch, align 8, !tbaa !86
  store i8* %20, i8** %onCurve, align 8, !tbaa !8
  %21 = bitcast i32** %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %22, i32 0, i32 2
  %23 = load i32*, i32** %org_x, align 8, !tbaa !87
  store i32* %23, i32** %x, align 8, !tbaa !8
  %24 = bitcast i32** %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %25, i32 0, i32 3
  %26 = load i32*, i32** %org_y, align 8, !tbaa !88
  store i32* %26, i32** %y, align 8, !tbaa !8
  %27 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i16* %sp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  %30 = bitcast i16* %ctr to i8*
  call void @llvm.lifetime.start(i64 2, i8* %30) #1
  %31 = bitcast %struct.FloatPoint* %p0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %31) #1
  %32 = bitcast %struct.FloatPoint* %p1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast %struct.FloatPoint* %p2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #1
  %34 = bitcast %struct.FloatPoint* %p3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #1
  %35 = bitcast i32* %expand_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %36, i32 0, i32 31
  %37 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %37, i32 0, i32 12
  %38 = load i16, i16* %nUnitsPerEm, align 2, !tbaa !21
  %conv = zext i16 %38 to i32
  %mul = mul nsw i32 %conv, 2
  %call = call i32 @Scale_X(%struct._TIns_Metrics* %metrics, i32 %mul) #6
  store i32 %call, i32* %expand_x, align 4, !tbaa !1
  %39 = bitcast i32* %expand_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 31
  %41 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm7 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %41, i32 0, i32 12
  %42 = load i16, i16* %nUnitsPerEm7, align 2, !tbaa !21
  %conv8 = zext i16 %42 to i32
  %mul9 = mul nsw i32 %conv8, 2
  %call10 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics6, i32 %mul9) #6
  store i32 %call10, i32* %expand_y, align 4, !tbaa !1
  %43 = bitcast i32* %xMin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %xMinB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %44, i32 0, i32 5
  %45 = load i32, i32* %xMinB, align 4, !tbaa !89
  %46 = load i32, i32* %expand_x, align 4, !tbaa !1
  %sub = sub nsw i32 %45, %46
  store i32 %sub, i32* %xMin, align 4, !tbaa !1
  %47 = bitcast i32* %xMax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %xMaxB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %48, i32 0, i32 7
  %49 = load i32, i32* %xMaxB, align 4, !tbaa !90
  %50 = load i32, i32* %expand_x, align 4, !tbaa !1
  %add = add nsw i32 %49, %50
  store i32 %add, i32* %xMax, align 4, !tbaa !1
  %51 = bitcast i32* %yMin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %yMinB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %52, i32 0, i32 6
  %53 = load i32, i32* %yMinB, align 4, !tbaa !91
  %54 = load i32, i32* %expand_y, align 4, !tbaa !1
  %sub11 = sub nsw i32 %53, %54
  store i32 %sub11, i32* %yMin, align 4, !tbaa !1
  %55 = bitcast i32* %yMax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %yMaxB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %56, i32 0, i32 8
  %57 = load i32, i32* %yMaxB, align 4, !tbaa !92
  %58 = load i32, i32* %expand_y, align 4, !tbaa !1
  %add12 = add nsw i32 %57, %58
  store i32 %add12, i32* %yMax, align 4, !tbaa !1
  %59 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %advance = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %59, i32 0, i32 3
  %x13 = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance, i32 0, i32 0
  %60 = load i32, i32* %x13, align 4, !tbaa !93
  %61 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %advance14 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %61, i32 0, i32 3
  %y15 = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance14, i32 0, i32 1
  %62 = load i32, i32* %y15, align 4, !tbaa !94
  %63 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m, align 8, !tbaa !8
  call void @TransformF26Dot6PointFloat(%struct.FloatPoint* %p1, i32 %60, i32 %62, %struct.FloatMatrix* %63) #6
  %64 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform16 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %64, i32 0, i32 11
  %tx = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform16, i32 0, i32 4
  %65 = load double, double* %tx, align 8, !tbaa !95
  %x17 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p1, i32 0, i32 0
  %66 = load double, double* %x17, align 8, !tbaa !96
  %sub18 = fsub double %66, %65
  store double %sub18, double* %x17, align 8, !tbaa !96
  %67 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform19 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %67, i32 0, i32 11
  %ty = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform19, i32 0, i32 5
  %68 = load double, double* %ty, align 8, !tbaa !98
  %y20 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p1, i32 0, i32 1
  %69 = load double, double* %y20, align 8, !tbaa !99
  %sub21 = fsub double %69, %68
  store double %sub21, double* %y20, align 8, !tbaa !99
  %70 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %SetWidth = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %70, i32 0, i32 7
  %71 = load void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)** %SetWidth, align 8, !tbaa !100
  %72 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  call void %71(%struct.ttfExport_s* %72, %struct.FloatPoint* %p1) #6
  store i16 -1, i16* %sp, align 2, !tbaa !70
  %73 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out, align 8, !tbaa !8
  %contourCount = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %73, i32 0, i32 1
  %74 = load i32, i32* %contourCount, align 4, !tbaa !102
  %conv22 = trunc i32 %74 to i16
  store i16 %conv22, i16* %ctr, align 2, !tbaa !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc.353, %entry
  %75 = load i16, i16* %ctr, align 2, !tbaa !70
  %conv23 = sext i16 %75 to i32
  %cmp = icmp ne i32 %conv23, 0
  br i1 %cmp, label %for.body, label %for.end.354

for.body:                                         ; preds = %for.cond
  %76 = bitcast i16* %pt to i8*
  call void @llvm.lifetime.start(i64 2, i8* %76) #1
  %77 = bitcast i16* %pts25 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %77) #1
  %78 = load i16*, i16** %endP, align 8, !tbaa !8
  %79 = load i16, i16* %78, align 2, !tbaa !70
  %conv26 = sext i16 %79 to i32
  %80 = load i16, i16* %sp, align 2, !tbaa !70
  %conv27 = sext i16 %80 to i32
  %sub28 = sub nsw i32 %conv26, %conv27
  %conv29 = trunc i32 %sub28 to i16
  store i16 %conv29, i16* %pts25, align 2, !tbaa !70
  %81 = bitcast i16* %ep to i8*
  call void @llvm.lifetime.start(i64 2, i8* %81) #1
  %82 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv30 = sext i16 %82 to i32
  %sub31 = sub nsw i32 %conv30, 1
  %conv32 = trunc i32 %sub31 to i16
  store i16 %conv32, i16* %ep, align 2, !tbaa !70
  %83 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv33 = sext i16 %83 to i32
  %cmp34 = icmp slt i32 %conv33, 3
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %84 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv36 = sext i16 %84 to i32
  %85 = load i32*, i32** %x, align 8, !tbaa !8
  %idx.ext = sext i32 %conv36 to i64
  %add.ptr = getelementptr inbounds i32, i32* %85, i64 %idx.ext
  store i32* %add.ptr, i32** %x, align 8, !tbaa !8
  %86 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv37 = sext i16 %86 to i32
  %87 = load i32*, i32** %y, align 8, !tbaa !8
  %idx.ext38 = sext i32 %conv37 to i64
  %add.ptr39 = getelementptr inbounds i32, i32* %87, i64 %idx.ext38
  store i32* %add.ptr39, i32** %y, align 8, !tbaa !8
  %88 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv40 = sext i16 %88 to i32
  %89 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %idx.ext41 = sext i32 %conv40 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %89, i64 %idx.ext41
  store i8* %add.ptr42, i8** %onCurve, align 8, !tbaa !8
  %90 = load i16*, i16** %endP, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %incdec.ptr, i16** %endP, align 8, !tbaa !8
  %91 = load i16, i16* %90, align 2, !tbaa !70
  store i16 %91, i16* %sp, align 2, !tbaa !70
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %92 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %bPoints = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %92, i32 0, i32 0
  %93 = load i32, i32* %bPoints, align 4, !tbaa !103
  %tobool = icmp ne i32 %93, 0
  br i1 %tobool, label %if.then.43, label %if.end.110

if.then.43:                                       ; preds = %if.end
  store i16 0, i16* %pt, align 2, !tbaa !70
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %if.then.43
  %94 = load i16, i16* %pt, align 2, !tbaa !70
  %conv45 = sext i16 %94 to i32
  %95 = load i16, i16* %ep, align 2, !tbaa !70
  %conv46 = sext i16 %95 to i32
  %cmp47 = icmp sle i32 %conv45, %conv46
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.44
  %96 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom = sext i16 %96 to i64
  %97 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i32, i32* %97, i64 %idxprom
  %98 = load i32, i32* %arrayidx, align 4, !tbaa !1
  store i32 %98, i32* %px, align 4, !tbaa !1
  %99 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom50 = sext i16 %99 to i64
  %100 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx51 = getelementptr inbounds i32, i32* %100, i64 %idxprom50
  %101 = load i32, i32* %arrayidx51, align 4, !tbaa !1
  store i32 %101, i32* %py, align 4, !tbaa !1
  %102 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom52 = sext i16 %102 to i64
  %103 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx53 = getelementptr inbounds i32, i32* %103, i64 %idxprom52
  %104 = load i32, i32* %arrayidx53, align 4, !tbaa !1
  %105 = load i32, i32* %xMin, align 4, !tbaa !1
  %cmp54 = icmp slt i32 %104, %105
  br i1 %cmp54, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.49
  %106 = load i32, i32* %xMax, align 4, !tbaa !1
  %107 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom56 = sext i16 %107 to i64
  %108 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx57 = getelementptr inbounds i32, i32* %108, i64 %idxprom56
  %109 = load i32, i32* %arrayidx57, align 4, !tbaa !1
  %cmp58 = icmp slt i32 %106, %109
  br i1 %cmp58, label %if.then.70, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false
  %110 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom61 = sext i16 %110 to i64
  %111 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx62 = getelementptr inbounds i32, i32* %111, i64 %idxprom61
  %112 = load i32, i32* %arrayidx62, align 4, !tbaa !1
  %113 = load i32, i32* %yMin, align 4, !tbaa !1
  %cmp63 = icmp slt i32 %112, %113
  br i1 %cmp63, label %if.then.70, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.60
  %114 = load i32, i32* %yMax, align 4, !tbaa !1
  %115 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom66 = sext i16 %115 to i64
  %116 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx67 = getelementptr inbounds i32, i32* %116, i64 %idxprom66
  %117 = load i32, i32* %arrayidx67, align 4, !tbaa !1
  %cmp68 = icmp slt i32 %114, %117
  br i1 %cmp68, label %if.then.70, label %if.end.105

if.then.70:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.60, %lor.lhs.false, %for.body.49
  %118 = bitcast i16* %prevIndex to i8*
  call void @llvm.lifetime.start(i64 2, i8* %118) #1
  %119 = load i16, i16* %pt, align 2, !tbaa !70
  %conv71 = sext i16 %119 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.70
  %120 = load i16, i16* %ep, align 2, !tbaa !70
  %conv74 = sext i16 %120 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.70
  %121 = load i16, i16* %pt, align 2, !tbaa !70
  %conv75 = sext i16 %121 to i32
  %sub76 = sub nsw i32 %conv75, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv74, %cond.true ], [ %sub76, %cond.false ]
  %conv77 = trunc i32 %cond to i16
  store i16 %conv77, i16* %prevIndex, align 2, !tbaa !70
  %122 = bitcast i16* %nextIndex to i8*
  call void @llvm.lifetime.start(i64 2, i8* %122) #1
  %123 = load i16, i16* %pt, align 2, !tbaa !70
  %conv78 = sext i16 %123 to i32
  %124 = load i16, i16* %ep, align 2, !tbaa !70
  %conv79 = sext i16 %124 to i32
  %cmp80 = icmp eq i32 %conv78, %conv79
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end
  br label %cond.end.86

cond.false.83:                                    ; preds = %cond.end
  %125 = load i16, i16* %pt, align 2, !tbaa !70
  %conv84 = sext i16 %125 to i32
  %add85 = add nsw i32 %conv84, 1
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ %add85, %cond.false.83 ]
  %conv88 = trunc i32 %cond87 to i16
  store i16 %conv88, i16* %nextIndex, align 2, !tbaa !70
  %126 = load i16, i16* %nextIndex, align 2, !tbaa !70
  %conv89 = sext i16 %126 to i32
  %127 = load i16, i16* %ep, align 2, !tbaa !70
  %conv90 = sext i16 %127 to i32
  %cmp91 = icmp sgt i32 %conv89, %conv90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %cond.end.86
  store i16 0, i16* %nextIndex, align 2, !tbaa !70
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %cond.end.86
  %128 = load i16, i16* %prevIndex, align 2, !tbaa !70
  %idxprom95 = sext i16 %128 to i64
  %129 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx96 = getelementptr inbounds i32, i32* %129, i64 %idxprom95
  %130 = load i32, i32* %arrayidx96, align 4, !tbaa !1
  %131 = load i16, i16* %nextIndex, align 2, !tbaa !70
  %idxprom97 = sext i16 %131 to i64
  %132 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx98 = getelementptr inbounds i32, i32* %132, i64 %idxprom97
  %133 = load i32, i32* %arrayidx98, align 4, !tbaa !1
  %call99 = call i32 @AVE(i32 %130, i32 %133) #6
  store i32 %call99, i32* %px, align 4, !tbaa !1
  %134 = load i16, i16* %prevIndex, align 2, !tbaa !70
  %idxprom100 = sext i16 %134 to i64
  %135 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx101 = getelementptr inbounds i32, i32* %135, i64 %idxprom100
  %136 = load i32, i32* %arrayidx101, align 4, !tbaa !1
  %137 = load i16, i16* %nextIndex, align 2, !tbaa !70
  %idxprom102 = sext i16 %137 to i64
  %138 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx103 = getelementptr inbounds i32, i32* %138, i64 %idxprom102
  %139 = load i32, i32* %arrayidx103, align 4, !tbaa !1
  %call104 = call i32 @AVE(i32 %136, i32 %139) #6
  store i32 %call104, i32* %py, align 4, !tbaa !1
  %140 = bitcast i16* %nextIndex to i8*
  call void @llvm.lifetime.end(i64 2, i8* %140) #1
  %141 = bitcast i16* %prevIndex to i8*
  call void @llvm.lifetime.end(i64 2, i8* %141) #1
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.94, %lor.lhs.false.65
  %142 = load i32, i32* %px, align 4, !tbaa !1
  %143 = load i32, i32* %py, align 4, !tbaa !1
  %144 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m, align 8, !tbaa !8
  call void @TransformF26Dot6PointFloat(%struct.FloatPoint* %p0, i32 %142, i32 %143, %struct.FloatMatrix* %144) #6
  %145 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %Point = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %145, i32 0, i32 6
  %146 = load void (%struct.ttfExport_s*, %struct.FloatPoint*, i32, i32)*, void (%struct.ttfExport_s*, %struct.FloatPoint*, i32, i32)** %Point, align 8, !tbaa !104
  %147 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %148 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom106 = sext i16 %148 to i64
  %149 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %arrayidx107 = getelementptr inbounds i8, i8* %149, i64 %idxprom106
  %150 = load i8, i8* %arrayidx107, align 1, !tbaa !53
  %conv108 = zext i8 %150 to i32
  %151 = load i16, i16* %pt, align 2, !tbaa !70
  %tobool109 = icmp ne i16 %151, 0
  %lnot = xor i1 %tobool109, true
  %lnot.ext = zext i1 %lnot to i32
  call void %146(%struct.ttfExport_s* %147, %struct.FloatPoint* %p0, i32 %conv108, i32 %lnot.ext) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %152 = load i16, i16* %pt, align 2, !tbaa !70
  %inc = add i16 %152, 1
  store i16 %inc, i16* %pt, align 2, !tbaa !70
  br label %for.cond.44

for.end:                                          ; preds = %for.cond.44
  br label %if.end.110

if.end.110:                                       ; preds = %for.end, %if.end
  %153 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %bOutline = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %153, i32 0, i32 1
  %154 = load i32, i32* %bOutline, align 4, !tbaa !105
  %tobool111 = icmp ne i32 %154, 0
  br i1 %tobool111, label %if.then.112, label %if.end.340

if.then.112:                                      ; preds = %if.end.110
  store i16 0, i16* %pt, align 2, !tbaa !70
  %155 = load i16, i16* %ep, align 2, !tbaa !70
  %idxprom113 = sext i16 %155 to i64
  %156 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %arrayidx114 = getelementptr inbounds i8, i8* %156, i64 %idxprom113
  %157 = load i8, i8* %arrayidx114, align 1, !tbaa !53
  %conv115 = zext i8 %157 to i32
  %and = and i32 %conv115, 1
  %tobool116 = icmp ne i32 %and, 0
  br i1 %tobool116, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %if.then.112
  %158 = load i16, i16* %ep, align 2, !tbaa !70
  %idxprom118 = sext i16 %158 to i64
  %159 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx119 = getelementptr inbounds i32, i32* %159, i64 %idxprom118
  %160 = load i32, i32* %arrayidx119, align 4, !tbaa !1
  store i32 %160, i32* %px, align 4, !tbaa !1
  %161 = load i16, i16* %ep, align 2, !tbaa !70
  %idxprom120 = sext i16 %161 to i64
  %162 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx121 = getelementptr inbounds i32, i32* %162, i64 %idxprom120
  %163 = load i32, i32* %arrayidx121, align 4, !tbaa !1
  store i32 %163, i32* %py, align 4, !tbaa !1
  br label %if.end.139

if.else:                                          ; preds = %if.then.112
  %164 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %arrayidx122 = getelementptr inbounds i8, i8* %164, i64 0
  %165 = load i8, i8* %arrayidx122, align 1, !tbaa !53
  %conv123 = zext i8 %165 to i32
  %and124 = and i32 %conv123, 1
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.else.129

if.then.126:                                      ; preds = %if.else
  %166 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx127 = getelementptr inbounds i32, i32* %166, i64 0
  %167 = load i32, i32* %arrayidx127, align 4, !tbaa !1
  store i32 %167, i32* %px, align 4, !tbaa !1
  %168 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx128 = getelementptr inbounds i32, i32* %168, i64 0
  %169 = load i32, i32* %arrayidx128, align 4, !tbaa !1
  store i32 %169, i32* %py, align 4, !tbaa !1
  store i16 1, i16* %pt, align 2, !tbaa !70
  br label %if.end.138

if.else.129:                                      ; preds = %if.else
  %170 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx130 = getelementptr inbounds i32, i32* %170, i64 0
  %171 = load i32, i32* %arrayidx130, align 4, !tbaa !1
  %172 = load i16, i16* %ep, align 2, !tbaa !70
  %idxprom131 = sext i16 %172 to i64
  %173 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx132 = getelementptr inbounds i32, i32* %173, i64 %idxprom131
  %174 = load i32, i32* %arrayidx132, align 4, !tbaa !1
  %call133 = call i32 @AVE(i32 %171, i32 %174) #6
  store i32 %call133, i32* %px, align 4, !tbaa !1
  %175 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx134 = getelementptr inbounds i32, i32* %175, i64 0
  %176 = load i32, i32* %arrayidx134, align 4, !tbaa !1
  %177 = load i16, i16* %ep, align 2, !tbaa !70
  %idxprom135 = sext i16 %177 to i64
  %178 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx136 = getelementptr inbounds i32, i32* %178, i64 %idxprom135
  %179 = load i32, i32* %arrayidx136, align 4, !tbaa !1
  %call137 = call i32 @AVE(i32 %176, i32 %179) #6
  store i32 %call137, i32* %py, align 4, !tbaa !1
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.129, %if.then.126
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.117
  %180 = load i32, i32* %px, align 4, !tbaa !1
  %181 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppx = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %181, i32 0, i32 5
  store i32 %180, i32* %ppx, align 4, !tbaa !106
  %182 = load i32, i32* %py, align 4, !tbaa !1
  %183 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppy = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %183, i32 0, i32 6
  store i32 %182, i32* %ppy, align 4, !tbaa !107
  %184 = load i32, i32* %px, align 4, !tbaa !1
  %185 = load i32, i32* %py, align 4, !tbaa !1
  %186 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m, align 8, !tbaa !8
  call void @TransformF26Dot6PointFloat(%struct.FloatPoint* %p0, i32 %184, i32 %185, %struct.FloatMatrix* %186) #6
  %187 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %MoveTo = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %187, i32 0, i32 2
  %188 = load void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)** %MoveTo, align 8, !tbaa !108
  %189 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  call void %188(%struct.ttfExport_s* %189, %struct.FloatPoint* %p0) #6
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.337, %if.end.139
  %190 = load i16, i16* %pt, align 2, !tbaa !70
  %conv141 = sext i16 %190 to i32
  %191 = load i16, i16* %ep, align 2, !tbaa !70
  %conv142 = sext i16 %191 to i32
  %cmp143 = icmp sle i32 %conv141, %conv142
  br i1 %cmp143, label %for.body.145, label %for.end.339

for.body.145:                                     ; preds = %for.cond.140
  %192 = bitcast i16* %prevIndex146 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %192) #1
  %193 = load i16, i16* %pt, align 2, !tbaa !70
  %conv147 = sext i16 %193 to i32
  %cmp148 = icmp eq i32 %conv147, 0
  br i1 %cmp148, label %cond.true.150, label %cond.false.152

cond.true.150:                                    ; preds = %for.body.145
  %194 = load i16, i16* %ep, align 2, !tbaa !70
  %conv151 = sext i16 %194 to i32
  br label %cond.end.155

cond.false.152:                                   ; preds = %for.body.145
  %195 = load i16, i16* %pt, align 2, !tbaa !70
  %conv153 = sext i16 %195 to i32
  %sub154 = sub nsw i32 %conv153, 1
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.152, %cond.true.150
  %cond156 = phi i32 [ %conv151, %cond.true.150 ], [ %sub154, %cond.false.152 ]
  %conv157 = trunc i32 %cond156 to i16
  store i16 %conv157, i16* %prevIndex146, align 2, !tbaa !70
  %196 = bitcast i16* %nextIndex158 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %196) #1
  %197 = load i16, i16* %pt, align 2, !tbaa !70
  %conv159 = sext i16 %197 to i32
  %198 = load i16, i16* %ep, align 2, !tbaa !70
  %conv160 = sext i16 %198 to i32
  %cmp161 = icmp eq i32 %conv159, %conv160
  br i1 %cmp161, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %cond.end.155
  br label %cond.end.167

cond.false.164:                                   ; preds = %cond.end.155
  %199 = load i16, i16* %pt, align 2, !tbaa !70
  %conv165 = sext i16 %199 to i32
  %add166 = add nsw i32 %conv165, 1
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.164, %cond.true.163
  %cond168 = phi i32 [ 0, %cond.true.163 ], [ %add166, %cond.false.164 ]
  %conv169 = trunc i32 %cond168 to i16
  store i16 %conv169, i16* %nextIndex158, align 2, !tbaa !70
  %200 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom170 = sext i16 %200 to i64
  %201 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %arrayidx171 = getelementptr inbounds i8, i8* %201, i64 %idxprom170
  %202 = load i8, i8* %arrayidx171, align 1, !tbaa !53
  %conv172 = zext i8 %202 to i32
  %and173 = and i32 %conv172, 1
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then.175, label %if.else.198

if.then.175:                                      ; preds = %cond.end.167
  %203 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom176 = sext i16 %203 to i64
  %204 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %arrayidx177 = getelementptr inbounds i8, i8* %204, i64 %idxprom176
  %205 = load i8, i8* %arrayidx177, align 1, !tbaa !53
  %conv178 = zext i8 %205 to i32
  %and179 = and i32 %conv178, 1
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.197

if.then.181:                                      ; preds = %if.then.175
  %206 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom182 = sext i16 %206 to i64
  %207 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx183 = getelementptr inbounds i32, i32* %207, i64 %idxprom182
  %208 = load i32, i32* %arrayidx183, align 4, !tbaa !1
  store i32 %208, i32* %px, align 4, !tbaa !1
  %209 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom184 = sext i16 %209 to i64
  %210 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx185 = getelementptr inbounds i32, i32* %210, i64 %idxprom184
  %211 = load i32, i32* %arrayidx185, align 4, !tbaa !1
  store i32 %211, i32* %py, align 4, !tbaa !1
  %212 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppx186 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %212, i32 0, i32 5
  %213 = load i32, i32* %ppx186, align 4, !tbaa !106
  %214 = load i32, i32* %px, align 4, !tbaa !1
  %cmp187 = icmp ne i32 %213, %214
  br i1 %cmp187, label %if.then.193, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %if.then.181
  %215 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppy190 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %215, i32 0, i32 6
  %216 = load i32, i32* %ppy190, align 4, !tbaa !107
  %217 = load i32, i32* %py, align 4, !tbaa !1
  %cmp191 = icmp ne i32 %216, %217
  br i1 %cmp191, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %lor.lhs.false.189, %if.then.181
  %218 = load i32, i32* %px, align 4, !tbaa !1
  %219 = load i32, i32* %py, align 4, !tbaa !1
  %220 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m, align 8, !tbaa !8
  call void @TransformF26Dot6PointFloat(%struct.FloatPoint* %p1, i32 %218, i32 %219, %struct.FloatMatrix* %220) #6
  %221 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %LineTo = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %221, i32 0, i32 3
  %222 = load void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)** %LineTo, align 8, !tbaa !109
  %223 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  call void %222(%struct.ttfExport_s* %223, %struct.FloatPoint* %p1) #6
  %224 = load i32, i32* %px, align 4, !tbaa !1
  %225 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppx194 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %225, i32 0, i32 5
  store i32 %224, i32* %ppx194, align 4, !tbaa !106
  %226 = load i32, i32* %py, align 4, !tbaa !1
  %227 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppy195 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %227, i32 0, i32 6
  store i32 %226, i32* %ppy195, align 4, !tbaa !107
  %228 = bitcast %struct.FloatPoint* %p0 to i8*
  %229 = bitcast %struct.FloatPoint* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %228, i8* %229, i64 16, i32 8, i1 false), !tbaa.struct !110
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %lor.lhs.false.189
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.175
  br label %if.end.336

if.else.198:                                      ; preds = %cond.end.167
  %230 = bitcast i32* %prevX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #1
  %231 = bitcast i32* %prevY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #1
  %232 = bitcast i32* %nextX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %232) #1
  %233 = bitcast i32* %nextY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %233) #1
  %234 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom199 = sext i16 %234 to i64
  %235 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx200 = getelementptr inbounds i32, i32* %235, i64 %idxprom199
  %236 = load i32, i32* %arrayidx200, align 4, !tbaa !1
  store i32 %236, i32* %px, align 4, !tbaa !1
  %237 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom201 = sext i16 %237 to i64
  %238 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx202 = getelementptr inbounds i32, i32* %238, i64 %idxprom201
  %239 = load i32, i32* %arrayidx202, align 4, !tbaa !1
  store i32 %239, i32* %py, align 4, !tbaa !1
  %240 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom203 = sext i16 %240 to i64
  %241 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx204 = getelementptr inbounds i32, i32* %241, i64 %idxprom203
  %242 = load i32, i32* %arrayidx204, align 4, !tbaa !1
  %243 = load i32, i32* %xMin, align 4, !tbaa !1
  %cmp205 = icmp slt i32 %242, %243
  br i1 %cmp205, label %if.then.222, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %if.else.198
  %244 = load i32, i32* %xMax, align 4, !tbaa !1
  %245 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom208 = sext i16 %245 to i64
  %246 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx209 = getelementptr inbounds i32, i32* %246, i64 %idxprom208
  %247 = load i32, i32* %arrayidx209, align 4, !tbaa !1
  %cmp210 = icmp slt i32 %244, %247
  br i1 %cmp210, label %if.then.222, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.207
  %248 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom213 = sext i16 %248 to i64
  %249 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx214 = getelementptr inbounds i32, i32* %249, i64 %idxprom213
  %250 = load i32, i32* %arrayidx214, align 4, !tbaa !1
  %251 = load i32, i32* %yMin, align 4, !tbaa !1
  %cmp215 = icmp slt i32 %250, %251
  br i1 %cmp215, label %if.then.222, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %lor.lhs.false.212
  %252 = load i32, i32* %yMax, align 4, !tbaa !1
  %253 = load i16, i16* %pt, align 2, !tbaa !70
  %idxprom218 = sext i16 %253 to i64
  %254 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx219 = getelementptr inbounds i32, i32* %254, i64 %idxprom218
  %255 = load i32, i32* %arrayidx219, align 4, !tbaa !1
  %cmp220 = icmp slt i32 %252, %255
  br i1 %cmp220, label %if.then.222, label %if.end.233

if.then.222:                                      ; preds = %lor.lhs.false.217, %lor.lhs.false.212, %lor.lhs.false.207, %if.else.198
  %256 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom223 = sext i16 %256 to i64
  %257 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx224 = getelementptr inbounds i32, i32* %257, i64 %idxprom223
  %258 = load i32, i32* %arrayidx224, align 4, !tbaa !1
  %259 = load i16, i16* %nextIndex158, align 2, !tbaa !70
  %idxprom225 = sext i16 %259 to i64
  %260 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx226 = getelementptr inbounds i32, i32* %260, i64 %idxprom225
  %261 = load i32, i32* %arrayidx226, align 4, !tbaa !1
  %call227 = call i32 @AVE(i32 %258, i32 %261) #6
  store i32 %call227, i32* %px, align 4, !tbaa !1
  %262 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom228 = sext i16 %262 to i64
  %263 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx229 = getelementptr inbounds i32, i32* %263, i64 %idxprom228
  %264 = load i32, i32* %arrayidx229, align 4, !tbaa !1
  %265 = load i16, i16* %nextIndex158, align 2, !tbaa !70
  %idxprom230 = sext i16 %265 to i64
  %266 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx231 = getelementptr inbounds i32, i32* %266, i64 %idxprom230
  %267 = load i32, i32* %arrayidx231, align 4, !tbaa !1
  %call232 = call i32 @AVE(i32 %264, i32 %267) #6
  store i32 %call232, i32* %py, align 4, !tbaa !1
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.222, %lor.lhs.false.217
  %268 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom234 = sext i16 %268 to i64
  %269 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %arrayidx235 = getelementptr inbounds i8, i8* %269, i64 %idxprom234
  %270 = load i8, i8* %arrayidx235, align 1, !tbaa !53
  %conv236 = zext i8 %270 to i32
  %and237 = and i32 %conv236, 1
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %if.then.239, label %if.else.244

if.then.239:                                      ; preds = %if.end.233
  %271 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom240 = sext i16 %271 to i64
  %272 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx241 = getelementptr inbounds i32, i32* %272, i64 %idxprom240
  %273 = load i32, i32* %arrayidx241, align 4, !tbaa !1
  store i32 %273, i32* %prevX, align 4, !tbaa !1
  %274 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom242 = sext i16 %274 to i64
  %275 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx243 = getelementptr inbounds i32, i32* %275, i64 %idxprom242
  %276 = load i32, i32* %arrayidx243, align 4, !tbaa !1
  store i32 %276, i32* %prevY, align 4, !tbaa !1
  br label %if.end.251

if.else.244:                                      ; preds = %if.end.233
  %277 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom245 = sext i16 %277 to i64
  %278 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx246 = getelementptr inbounds i32, i32* %278, i64 %idxprom245
  %279 = load i32, i32* %arrayidx246, align 4, !tbaa !1
  %280 = load i32, i32* %px, align 4, !tbaa !1
  %call247 = call i32 @AVE(i32 %279, i32 %280) #6
  store i32 %call247, i32* %prevX, align 4, !tbaa !1
  %281 = load i16, i16* %prevIndex146, align 2, !tbaa !70
  %idxprom248 = sext i16 %281 to i64
  %282 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx249 = getelementptr inbounds i32, i32* %282, i64 %idxprom248
  %283 = load i32, i32* %arrayidx249, align 4, !tbaa !1
  %284 = load i32, i32* %py, align 4, !tbaa !1
  %call250 = call i32 @AVE(i32 %283, i32 %284) #6
  store i32 %call250, i32* %prevY, align 4, !tbaa !1
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.244, %if.then.239
  %285 = load i16, i16* %nextIndex158, align 2, !tbaa !70
  %idxprom252 = sext i16 %285 to i64
  %286 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %arrayidx253 = getelementptr inbounds i8, i8* %286, i64 %idxprom252
  %287 = load i8, i8* %arrayidx253, align 1, !tbaa !53
  %conv254 = zext i8 %287 to i32
  %and255 = and i32 %conv254, 1
  %tobool256 = icmp ne i32 %and255, 0
  br i1 %tobool256, label %if.then.257, label %if.else.262

if.then.257:                                      ; preds = %if.end.251
  %288 = load i16, i16* %nextIndex158, align 2, !tbaa !70
  %idxprom258 = sext i16 %288 to i64
  %289 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx259 = getelementptr inbounds i32, i32* %289, i64 %idxprom258
  %290 = load i32, i32* %arrayidx259, align 4, !tbaa !1
  store i32 %290, i32* %nextX, align 4, !tbaa !1
  %291 = load i16, i16* %nextIndex158, align 2, !tbaa !70
  %idxprom260 = sext i16 %291 to i64
  %292 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx261 = getelementptr inbounds i32, i32* %292, i64 %idxprom260
  %293 = load i32, i32* %arrayidx261, align 4, !tbaa !1
  store i32 %293, i32* %nextY, align 4, !tbaa !1
  br label %if.end.269

if.else.262:                                      ; preds = %if.end.251
  %294 = load i32, i32* %px, align 4, !tbaa !1
  %295 = load i16, i16* %nextIndex158, align 2, !tbaa !70
  %idxprom263 = sext i16 %295 to i64
  %296 = load i32*, i32** %x, align 8, !tbaa !8
  %arrayidx264 = getelementptr inbounds i32, i32* %296, i64 %idxprom263
  %297 = load i32, i32* %arrayidx264, align 4, !tbaa !1
  %call265 = call i32 @AVE(i32 %294, i32 %297) #6
  store i32 %call265, i32* %nextX, align 4, !tbaa !1
  %298 = load i32, i32* %py, align 4, !tbaa !1
  %299 = load i16, i16* %nextIndex158, align 2, !tbaa !70
  %idxprom266 = sext i16 %299 to i64
  %300 = load i32*, i32** %y, align 8, !tbaa !8
  %arrayidx267 = getelementptr inbounds i32, i32* %300, i64 %idxprom266
  %301 = load i32, i32* %arrayidx267, align 4, !tbaa !1
  %call268 = call i32 @AVE(i32 %298, i32 %301) #6
  store i32 %call268, i32* %nextY, align 4, !tbaa !1
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.262, %if.then.257
  %302 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppx270 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %302, i32 0, i32 5
  %303 = load i32, i32* %ppx270, align 4, !tbaa !106
  %304 = load i32, i32* %nextX, align 4, !tbaa !1
  %cmp271 = icmp ne i32 %303, %304
  br i1 %cmp271, label %if.then.277, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %if.end.269
  %305 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppy274 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %305, i32 0, i32 6
  %306 = load i32, i32* %ppy274, align 4, !tbaa !107
  %307 = load i32, i32* %nextY, align 4, !tbaa !1
  %cmp275 = icmp ne i32 %306, %307
  br i1 %cmp275, label %if.then.277, label %if.end.335

if.then.277:                                      ; preds = %lor.lhs.false.273, %if.end.269
  %308 = bitcast double* %dx1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #1
  %309 = bitcast double* %dy1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309) #1
  %310 = bitcast double* %dx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  %311 = bitcast double* %dy2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  %312 = bitcast double* %dx3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #1
  %313 = bitcast double* %dy3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #1
  %314 = bitcast double* %prec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %314) #1
  store double 1.000000e-06, double* %prec, align 8, !tbaa !111
  %315 = load i32, i32* %prevX, align 4, !tbaa !1
  %316 = load i32, i32* %px, align 4, !tbaa !1
  %shl = shl i32 %316, 1
  %add278 = add nsw i32 %315, %shl
  %div = sdiv i32 %add278, 3
  %317 = load i32, i32* %prevY, align 4, !tbaa !1
  %318 = load i32, i32* %py, align 4, !tbaa !1
  %shl279 = shl i32 %318, 1
  %add280 = add nsw i32 %317, %shl279
  %div281 = sdiv i32 %add280, 3
  %319 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m, align 8, !tbaa !8
  call void @TransformF26Dot6PointFloat(%struct.FloatPoint* %p1, i32 %div, i32 %div281, %struct.FloatMatrix* %319) #6
  %320 = load i32, i32* %nextX, align 4, !tbaa !1
  %321 = load i32, i32* %px, align 4, !tbaa !1
  %shl282 = shl i32 %321, 1
  %add283 = add nsw i32 %320, %shl282
  %div284 = sdiv i32 %add283, 3
  %322 = load i32, i32* %nextY, align 4, !tbaa !1
  %323 = load i32, i32* %py, align 4, !tbaa !1
  %shl285 = shl i32 %323, 1
  %add286 = add nsw i32 %322, %shl285
  %div287 = sdiv i32 %add286, 3
  %324 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m, align 8, !tbaa !8
  call void @TransformF26Dot6PointFloat(%struct.FloatPoint* %p2, i32 %div284, i32 %div287, %struct.FloatMatrix* %324) #6
  %325 = load i32, i32* %nextX, align 4, !tbaa !1
  %326 = load i32, i32* %nextY, align 4, !tbaa !1
  %327 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m, align 8, !tbaa !8
  call void @TransformF26Dot6PointFloat(%struct.FloatPoint* %p3, i32 %325, i32 %326, %struct.FloatMatrix* %327) #6
  %x288 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p1, i32 0, i32 0
  %328 = load double, double* %x288, align 8, !tbaa !96
  %x289 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p0, i32 0, i32 0
  %329 = load double, double* %x289, align 8, !tbaa !96
  %sub290 = fsub double %328, %329
  store double %sub290, double* %dx1, align 8, !tbaa !111
  %y291 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p1, i32 0, i32 1
  %330 = load double, double* %y291, align 8, !tbaa !99
  %y292 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p0, i32 0, i32 1
  %331 = load double, double* %y292, align 8, !tbaa !99
  %sub293 = fsub double %330, %331
  store double %sub293, double* %dy1, align 8, !tbaa !111
  %x294 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p2, i32 0, i32 0
  %332 = load double, double* %x294, align 8, !tbaa !96
  %x295 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p0, i32 0, i32 0
  %333 = load double, double* %x295, align 8, !tbaa !96
  %sub296 = fsub double %332, %333
  store double %sub296, double* %dx2, align 8, !tbaa !111
  %y297 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p2, i32 0, i32 1
  %334 = load double, double* %y297, align 8, !tbaa !99
  %y298 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p0, i32 0, i32 1
  %335 = load double, double* %y298, align 8, !tbaa !99
  %sub299 = fsub double %334, %335
  store double %sub299, double* %dy2, align 8, !tbaa !111
  %x300 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p3, i32 0, i32 0
  %336 = load double, double* %x300, align 8, !tbaa !96
  %x301 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p0, i32 0, i32 0
  %337 = load double, double* %x301, align 8, !tbaa !96
  %sub302 = fsub double %336, %337
  store double %sub302, double* %dx3, align 8, !tbaa !111
  %y303 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p3, i32 0, i32 1
  %338 = load double, double* %y303, align 8, !tbaa !99
  %y304 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %p0, i32 0, i32 1
  %339 = load double, double* %y304, align 8, !tbaa !99
  %sub305 = fsub double %338, %339
  store double %sub305, double* %dy3, align 8, !tbaa !111
  %340 = load double, double* %dx1, align 8, !tbaa !111
  %341 = load double, double* %dy3, align 8, !tbaa !111
  %mul306 = fmul double %340, %341
  %342 = load double, double* %dy1, align 8, !tbaa !111
  %343 = load double, double* %dx3, align 8, !tbaa !111
  %mul307 = fmul double %342, %343
  %sub308 = fsub double %mul306, %mul307
  %call309 = call double @fabs(double %sub308) #9
  %344 = load double, double* %dx1, align 8, !tbaa !111
  %345 = load double, double* %dx3, align 8, !tbaa !111
  %mul310 = fmul double %344, %345
  %346 = load double, double* %dy1, align 8, !tbaa !111
  %347 = load double, double* %dy3, align 8, !tbaa !111
  %mul311 = fmul double %346, %347
  %sub312 = fsub double %mul310, %mul311
  %call313 = call double @fabs(double %sub312) #9
  %mul314 = fmul double 1.000000e-06, %call313
  %cmp315 = fcmp ogt double %call309, %mul314
  br i1 %cmp315, label %if.then.329, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %if.then.277
  %348 = load double, double* %dx2, align 8, !tbaa !111
  %349 = load double, double* %dy3, align 8, !tbaa !111
  %mul318 = fmul double %348, %349
  %350 = load double, double* %dy2, align 8, !tbaa !111
  %351 = load double, double* %dx3, align 8, !tbaa !111
  %mul319 = fmul double %350, %351
  %sub320 = fsub double %mul318, %mul319
  %call321 = call double @fabs(double %sub320) #9
  %352 = load double, double* %dx2, align 8, !tbaa !111
  %353 = load double, double* %dx3, align 8, !tbaa !111
  %mul322 = fmul double %352, %353
  %354 = load double, double* %dy2, align 8, !tbaa !111
  %355 = load double, double* %dy3, align 8, !tbaa !111
  %mul323 = fmul double %354, %355
  %sub324 = fsub double %mul322, %mul323
  %call325 = call double @fabs(double %sub324) #9
  %mul326 = fmul double 1.000000e-06, %call325
  %cmp327 = fcmp ogt double %call321, %mul326
  br i1 %cmp327, label %if.then.329, label %if.else.330

if.then.329:                                      ; preds = %lor.lhs.false.317, %if.then.277
  %356 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %CurveTo = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %356, i32 0, i32 4
  %357 = load void (%struct.ttfExport_s*, %struct.FloatPoint*, %struct.FloatPoint*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*, %struct.FloatPoint*, %struct.FloatPoint*)** %CurveTo, align 8, !tbaa !112
  %358 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  call void %357(%struct.ttfExport_s* %358, %struct.FloatPoint* %p1, %struct.FloatPoint* %p2, %struct.FloatPoint* %p3) #6
  br label %if.end.332

if.else.330:                                      ; preds = %lor.lhs.false.317
  %359 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %LineTo331 = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %359, i32 0, i32 3
  %360 = load void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)** %LineTo331, align 8, !tbaa !109
  %361 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  call void %360(%struct.ttfExport_s* %361, %struct.FloatPoint* %p3) #6
  br label %if.end.332

if.end.332:                                       ; preds = %if.else.330, %if.then.329
  %362 = load i32, i32* %nextX, align 4, !tbaa !1
  %363 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppx333 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %363, i32 0, i32 5
  store i32 %362, i32* %ppx333, align 4, !tbaa !106
  %364 = load i32, i32* %nextY, align 4, !tbaa !1
  %365 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %ppy334 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %365, i32 0, i32 6
  store i32 %364, i32* %ppy334, align 4, !tbaa !107
  %366 = bitcast %struct.FloatPoint* %p0 to i8*
  %367 = bitcast %struct.FloatPoint* %p3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %366, i8* %367, i64 16, i32 8, i1 false), !tbaa.struct !110
  %368 = bitcast double* %prec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = bitcast double* %dy3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %370 = bitcast double* %dx3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %370) #1
  %371 = bitcast double* %dy2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #1
  %372 = bitcast double* %dx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #1
  %373 = bitcast double* %dy1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = bitcast double* %dx1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.332, %lor.lhs.false.273
  %375 = bitcast i32* %nextY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  %376 = bitcast i32* %nextX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #1
  %377 = bitcast i32* %prevY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %prevX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.197
  %379 = bitcast i16* %nextIndex158 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %379) #1
  %380 = bitcast i16* %prevIndex146 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %380) #1
  br label %for.inc.337

for.inc.337:                                      ; preds = %if.end.336
  %381 = load i16, i16* %pt, align 2, !tbaa !70
  %inc338 = add i16 %381, 1
  store i16 %inc338, i16* %pt, align 2, !tbaa !70
  br label %for.cond.140

for.end.339:                                      ; preds = %for.cond.140
  %382 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  %Close = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %382, i32 0, i32 5
  %383 = load void (%struct.ttfExport_s*)*, void (%struct.ttfExport_s*)** %Close, align 8, !tbaa !113
  %384 = load %struct.ttfExport_s*, %struct.ttfExport_s** %exp, align 8, !tbaa !8
  call void %383(%struct.ttfExport_s* %384) #6
  br label %if.end.340

if.end.340:                                       ; preds = %for.end.339, %if.end.110
  %385 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv341 = sext i16 %385 to i32
  %386 = load i32*, i32** %x, align 8, !tbaa !8
  %idx.ext342 = sext i32 %conv341 to i64
  %add.ptr343 = getelementptr inbounds i32, i32* %386, i64 %idx.ext342
  store i32* %add.ptr343, i32** %x, align 8, !tbaa !8
  %387 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv344 = sext i16 %387 to i32
  %388 = load i32*, i32** %y, align 8, !tbaa !8
  %idx.ext345 = sext i32 %conv344 to i64
  %add.ptr346 = getelementptr inbounds i32, i32* %388, i64 %idx.ext345
  store i32* %add.ptr346, i32** %y, align 8, !tbaa !8
  %389 = load i16, i16* %pts25, align 2, !tbaa !70
  %conv347 = sext i16 %389 to i32
  %390 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %idx.ext348 = sext i32 %conv347 to i64
  %add.ptr349 = getelementptr inbounds i8, i8* %390, i64 %idx.ext348
  store i8* %add.ptr349, i8** %onCurve, align 8, !tbaa !8
  %391 = load i16*, i16** %endP, align 8, !tbaa !8
  %incdec.ptr350 = getelementptr inbounds i16, i16* %391, i32 1
  store i16* %incdec.ptr350, i16** %endP, align 8, !tbaa !8
  %392 = load i16, i16* %391, align 2, !tbaa !70
  store i16 %392, i16* %sp, align 2, !tbaa !70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.340, %if.then
  %393 = bitcast i16* %ep to i8*
  call void @llvm.lifetime.end(i64 2, i8* %393) #1
  %394 = bitcast i16* %pts25 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %394) #1
  %395 = bitcast i16* %pt to i8*
  call void @llvm.lifetime.end(i64 2, i8* %395) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc.353
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.353

for.inc.353:                                      ; preds = %cleanup.cont, %cleanup
  %396 = load i16, i16* %ctr, align 2, !tbaa !70
  %dec = add i16 %396, -1
  store i16 %dec, i16* %ctr, align 2, !tbaa !70
  br label %for.cond

for.end.354:                                      ; preds = %for.cond
  %397 = bitcast i32* %yMax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #1
  %398 = bitcast i32* %yMin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %398) #1
  %399 = bitcast i32* %xMax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %399) #1
  %400 = bitcast i32* %xMin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #1
  %401 = bitcast i32* %expand_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast i32* %expand_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %403 = bitcast %struct.FloatPoint* %p3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %403) #1
  %404 = bitcast %struct.FloatPoint* %p2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %404) #1
  %405 = bitcast %struct.FloatPoint* %p1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %405) #1
  %406 = bitcast %struct.FloatPoint* %p0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %406) #1
  %407 = bitcast i16* %ctr to i8*
  call void @llvm.lifetime.end(i64 2, i8* %407) #1
  %408 = bitcast i16* %sp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %408) #1
  %409 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %410 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %410) #1
  %411 = bitcast i32** %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast i32** %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %412) #1
  %413 = bitcast i8** %onCurve to i8*
  call void @llvm.lifetime.end(i64 8, i8* %413) #1
  %414 = bitcast i16** %endP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %414) #1
  %415 = bitcast %struct._TGlyph_Zone** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %415) #1
  %416 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %416) #1
  %417 = bitcast %struct.ttfExport_s** %exp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %417) #1
  %418 = bitcast %struct.ttfFont_s** %pFont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %418) #1
  %419 = bitcast %struct.FloatMatrix** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %419) #1
  %420 = bitcast %struct.ttfGlyphOutline** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %420) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @Scale_X(%struct._TIns_Metrics*, i32) #2

declare i32 @Scale_Y(%struct._TIns_Metrics*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @TransformF26Dot6PointFloat(%struct.FloatPoint* %pt, i32 %dx, i32 %dy, %struct.FloatMatrix* %m) #0 {
entry:
  %pt.addr = alloca %struct.FloatPoint*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %m.addr = alloca %struct.FloatMatrix*, align 8
  store %struct.FloatPoint* %pt, %struct.FloatPoint** %pt.addr, align 8, !tbaa !8
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !1
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !1
  store %struct.FloatMatrix* %m, %struct.FloatMatrix** %m.addr, align 8, !tbaa !8
  %0 = load i32, i32* %dx.addr, align 4, !tbaa !1
  %conv = sitofp i32 %0 to double
  %1 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m.addr, align 8, !tbaa !8
  %a = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %1, i32 0, i32 0
  %2 = load double, double* %a, align 8, !tbaa !114
  %mul = fmul double %conv, %2
  %div = fdiv double %mul, 6.400000e+01
  %3 = load i32, i32* %dy.addr, align 4, !tbaa !1
  %conv1 = sitofp i32 %3 to double
  %4 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m.addr, align 8, !tbaa !8
  %c = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %4, i32 0, i32 2
  %5 = load double, double* %c, align 8, !tbaa !115
  %mul2 = fmul double %conv1, %5
  %div3 = fdiv double %mul2, 6.400000e+01
  %add = fadd double %div, %div3
  %6 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m.addr, align 8, !tbaa !8
  %tx = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %6, i32 0, i32 4
  %7 = load double, double* %tx, align 8, !tbaa !116
  %add4 = fadd double %add, %7
  %8 = load %struct.FloatPoint*, %struct.FloatPoint** %pt.addr, align 8, !tbaa !8
  %x = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %8, i32 0, i32 0
  store double %add4, double* %x, align 8, !tbaa !96
  %9 = load i32, i32* %dx.addr, align 4, !tbaa !1
  %conv5 = sitofp i32 %9 to double
  %10 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m.addr, align 8, !tbaa !8
  %b = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %10, i32 0, i32 1
  %11 = load double, double* %b, align 8, !tbaa !117
  %mul6 = fmul double %conv5, %11
  %div7 = fdiv double %mul6, 6.400000e+01
  %12 = load i32, i32* %dy.addr, align 4, !tbaa !1
  %conv8 = sitofp i32 %12 to double
  %13 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m.addr, align 8, !tbaa !8
  %d = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %13, i32 0, i32 3
  %14 = load double, double* %d, align 8, !tbaa !118
  %mul9 = fmul double %conv8, %14
  %div10 = fdiv double %mul9, 6.400000e+01
  %add11 = fadd double %div7, %div10
  %15 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m.addr, align 8, !tbaa !8
  %ty = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %15, i32 0, i32 5
  %16 = load double, double* %ty, align 8, !tbaa !119
  %add12 = fadd double %add11, %16
  %17 = load %struct.FloatPoint*, %struct.FloatPoint** %pt.addr, align 8, !tbaa !8
  %y = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %17, i32 0, i32 1
  store double %add12, double* %y, align 8, !tbaa !99
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @AVE(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %add = add nsw i32 %0, %1
  %div = sdiv i32 %add, 2
  ret i32 %div
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define i32 @ttfOutliner__Outline(%struct.ttfOutliner* %self, i32 %glyphIndex, float %orig_x, float %orig_y, %struct.FloatMatrix* %m1) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ttfOutliner*, align 8
  %glyphIndex.addr = alloca i32, align 4
  %orig_x.addr = alloca float, align 4
  %orig_y.addr = alloca float, align 4
  %m1.addr = alloca %struct.FloatMatrix*, align 8
  %pFont = alloca %struct.ttfFont_s*, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ttfOutliner* %self, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  store i32 %glyphIndex, i32* %glyphIndex.addr, align 4, !tbaa !1
  store float %orig_x, float* %orig_x.addr, align 4, !tbaa !47
  store float %orig_y, float* %orig_y.addr, align 4, !tbaa !47
  store %struct.FloatMatrix* %m1, %struct.FloatMatrix** %m1.addr, align 8, !tbaa !8
  %0 = bitcast %struct.ttfFont_s** %pFont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %pFont1 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %1, i32 0, i32 9
  %2 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont1, align 8, !tbaa !81
  store %struct.ttfFont_s* %2, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %3 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %4, i32 0, i32 11
  %5 = load %struct.FloatMatrix*, %struct.FloatMatrix** %m1.addr, align 8, !tbaa !8
  %6 = bitcast %struct.FloatMatrix* %post_transform to i8*
  %7 = bitcast %struct.FloatMatrix* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 48, i32 8, i1 false), !tbaa.struct !120
  %8 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %out = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %8, i32 0, i32 10
  %contourCount = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 1
  store i32 0, i32* %contourCount, align 4, !tbaa !121
  %9 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %out2 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %9, i32 0, i32 10
  %pointCount = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out2, i32 0, i32 2
  store i32 0, i32* %pointCount, align 4, !tbaa !122
  %10 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %out3 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %10, i32 0, i32 10
  %bCompound = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out3, i32 0, i32 0
  store i32 0, i32* %bCompound, align 4, !tbaa !123
  %11 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nPointsTotal = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %11, i32 0, i32 3
  store i32 0, i32* %nPointsTotal, align 4, !tbaa !124
  %12 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nContoursTotal = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %12, i32 0, i32 4
  store i32 0, i32* %nContoursTotal, align 4, !tbaa !125
  %13 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %out4 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %13, i32 0, i32 10
  %advance = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out4, i32 0, i32 3
  %y = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !126
  %14 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %out5 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %14, i32 0, i32 10
  %advance6 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out5, i32 0, i32 3
  %x = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance6, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !127
  %15 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  call void @ttfFont__StartGlyph(%struct.ttfFont_s* %15) #6
  %16 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %17 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  %18 = load float, float* %orig_x.addr, align 4, !tbaa !47
  %19 = load float, float* %orig_y.addr, align 4, !tbaa !47
  %20 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %out7 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %20, i32 0, i32 10
  %call = call i32 @ttfOutliner__BuildGlyphOutline(%struct.ttfOutliner* %16, i32 %17, float %18, float %19, %struct.ttfGlyphOutline* %out7) #6
  store i32 %call, i32* %error, align 4, !tbaa !53
  %21 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  call void @ttfFont__StopGlyph(%struct.ttfFont_s* %21) #6
  %22 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %22, i32 0, i32 12
  %23 = load i16, i16* %nUnitsPerEm, align 2, !tbaa !21
  %conv = zext i16 %23 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm9 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %24, i32 0, i32 12
  store i16 1024, i16* %nUnitsPerEm9, align 2, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %design_grid = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %25, i32 0, i32 20
  %26 = load i32, i32* %design_grid, align 4, !tbaa !49
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.10, label %if.end.30

if.then.10:                                       ; preds = %if.end
  %27 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm11 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %27, i32 0, i32 12
  %28 = load i16, i16* %nUnitsPerEm11, align 2, !tbaa !21
  %conv12 = zext i16 %28 to i32
  %conv13 = sitofp i32 %conv12 to double
  %29 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform14 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %29, i32 0, i32 11
  %a = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform14, i32 0, i32 0
  %30 = load double, double* %a, align 8, !tbaa !128
  %div = fdiv double %30, %conv13
  store double %div, double* %a, align 8, !tbaa !128
  %31 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm15 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %31, i32 0, i32 12
  %32 = load i16, i16* %nUnitsPerEm15, align 2, !tbaa !21
  %conv16 = zext i16 %32 to i32
  %conv17 = sitofp i32 %conv16 to double
  %33 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform18 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %33, i32 0, i32 11
  %b = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform18, i32 0, i32 1
  %34 = load double, double* %b, align 8, !tbaa !129
  %div19 = fdiv double %34, %conv17
  store double %div19, double* %b, align 8, !tbaa !129
  %35 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm20 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %35, i32 0, i32 12
  %36 = load i16, i16* %nUnitsPerEm20, align 2, !tbaa !21
  %conv21 = zext i16 %36 to i32
  %conv22 = sitofp i32 %conv21 to double
  %37 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform23 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %37, i32 0, i32 11
  %c = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform23, i32 0, i32 2
  %38 = load double, double* %c, align 8, !tbaa !130
  %div24 = fdiv double %38, %conv22
  store double %div24, double* %c, align 8, !tbaa !130
  %39 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nUnitsPerEm25 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %39, i32 0, i32 12
  %40 = load i16, i16* %nUnitsPerEm25, align 2, !tbaa !21
  %conv26 = zext i16 %40 to i32
  %conv27 = sitofp i32 %conv26 to double
  %41 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %post_transform28 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %41, i32 0, i32 11
  %d = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform28, i32 0, i32 3
  %42 = load double, double* %d, align 8, !tbaa !131
  %div29 = fdiv double %42, %conv27
  store double %div29, double* %d, align 8, !tbaa !131
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.10, %if.end
  %43 = load i32, i32* %error, align 4, !tbaa !53
  %cmp31 = icmp ne i32 %43, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.30
  %44 = load i32, i32* %error, align 4, !tbaa !53
  %cmp33 = icmp ne i32 %44, 8
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  %45 = load i32, i32* %error, align 4, !tbaa !53
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %land.lhs.true, %if.end.30
  %46 = load i32, i32* %error, align 4, !tbaa !53
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.35
  %47 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.ttfFont_s** %pFont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal void @ttfFont__StartGlyph(%struct.ttfFont_s* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfFont_s*, align 8
  store %struct.ttfFont_s* %self, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %0 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %0, i32 0, i32 23
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !44
  %2 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %2, i32 0, i32 22
  %3 = load %struct._TInstance*, %struct._TInstance** %inst, align 8, !tbaa !45
  %call = call i32 @Context_Load(%struct._TExecution_Context* %1, %struct._TInstance* %3) #6
  %4 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst1 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %4, i32 0, i32 22
  %5 = load %struct._TInstance*, %struct._TInstance** %inst1, align 8, !tbaa !45
  %GS = getelementptr inbounds %struct._TInstance, %struct._TInstance* %5, i32 0, i32 10
  %instruct_control = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 15
  %6 = load i8, i8* %instruct_control, align 1, !tbaa !132
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec2 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %7, i32 0, i32 23
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec2, align 8, !tbaa !44
  %GS3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 42
  %9 = bitcast %struct._TGraphicsState* %GS3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct._TGraphicsState* @Default_GraphicsState to i8*), i64 88, i32 8, i1 false), !tbaa.struct !133
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec4 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %10, i32 0, i32 23
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec4, align 8, !tbaa !44
  %GS5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 42
  %12 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst6 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %12, i32 0, i32 22
  %13 = load %struct._TInstance*, %struct._TInstance** %inst6, align 8, !tbaa !45
  %GS7 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %13, i32 0, i32 10
  %14 = bitcast %struct._TGraphicsState* %GS5 to i8*
  %15 = bitcast %struct._TGraphicsState* %GS7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 88, i32 8, i1 false), !tbaa.struct !133
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %16, i32 0, i32 24
  %17 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !43
  %usage_top = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %17, i32 0, i32 3
  store i32 0, i32* %usage_top, align 4, !tbaa !134
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ttfOutliner__BuildGlyphOutline(%struct.ttfOutliner* %self, i32 %glyphIndex, float %orig_x, float %orig_y, %struct.ttfGlyphOutline* %gOutline) #0 {
entry:
  %self.addr = alloca %struct.ttfOutliner*, align 8
  %glyphIndex.addr = alloca i32, align 4
  %orig_x.addr = alloca float, align 4
  %orig_y.addr = alloca float, align 4
  %gOutline.addr = alloca %struct.ttfGlyphOutline*, align 8
  %m_orig = alloca %struct.FixMatrix, align 4
  store %struct.ttfOutliner* %self, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  store i32 %glyphIndex, i32* %glyphIndex.addr, align 4, !tbaa !1
  store float %orig_x, float* %orig_x.addr, align 4, !tbaa !47
  store float %orig_y, float* %orig_y.addr, align 4, !tbaa !47
  store %struct.ttfGlyphOutline* %gOutline, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %0 = bitcast %struct.FixMatrix* %m_orig to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.FixMatrix* %m_orig to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.FixMatrix* @ttfOutliner__BuildGlyphOutline.m_orig to i8*), i64 24, i32 4, i1 false)
  %2 = load float, float* %orig_x.addr, align 4, !tbaa !47
  %call = call i32 @floatToF16Dot16(float %2) #6
  %tx = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m_orig, i32 0, i32 4
  store i32 %call, i32* %tx, align 4, !tbaa !135
  %3 = load float, float* %orig_y.addr, align 4, !tbaa !47
  %call1 = call i32 @floatToF16Dot16(float %3) #6
  %ty = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m_orig, i32 0, i32 5
  store i32 %call1, i32* %ty, align 4, !tbaa !137
  %4 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %5 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  %6 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %call2 = call i32 @ttfOutliner__BuildGlyphOutlineAux(%struct.ttfOutliner* %4, i32 %5, %struct.FixMatrix* %m_orig, %struct.ttfGlyphOutline* %6) #6
  %7 = bitcast %struct.FixMatrix* %m_orig to i8*
  call void @llvm.lifetime.end(i64 24, i8* %7) #1
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal void @ttfFont__StopGlyph(%struct.ttfFont_s* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfFont_s*, align 8
  store %struct.ttfFont_s* %self, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %0 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %exec = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %0, i32 0, i32 23
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !44
  %2 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !8
  %inst = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %2, i32 0, i32 22
  %3 = load %struct._TInstance*, %struct._TInstance** %inst, align 8, !tbaa !45
  %call = call i32 @Context_Save(%struct._TExecution_Context* %1, %struct._TInstance* %3) #6
  ret void
}

declare i32 @Context_Load(%struct._TExecution_Context*, %struct._TInstance*) #2

; Function Attrs: nounwind uwtable
define internal i32 @floatToF16Dot16(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4, !tbaa !47
  %0 = load float, float* %a.addr, align 4, !tbaa !47
  %mul = fmul float %0, 6.553600e+04
  %conv = fpext float %mul to double
  %add = fadd double %conv, 5.000000e-01
  %conv1 = fptosi double %add to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @ttfOutliner__BuildGlyphOutlineAux(%struct.ttfOutliner* %self, i32 %glyphIndex, %struct.FixMatrix* %m_orig, %struct.ttfGlyphOutline* %gOutline) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ttfOutliner*, align 8
  %glyphIndex.addr = alloca i32, align 4
  %m_orig.addr = alloca %struct.FixMatrix*, align 8
  %gOutline.addr = alloca %struct.ttfGlyphOutline*, align 8
  %pFont = alloca %struct.ttfFont_s*, align 8
  %r = alloca %struct.ttfReader_s*, align 8
  %tti = alloca %struct.ttfInterpreter_s*, align 8
  %sideBearing = alloca i16, align 2
  %error = alloca i32, align 4
  %arg1 = alloca i16, align 2
  %arg2 = alloca i16, align 2
  %count = alloca i16, align 2
  %i = alloca i32, align 4
  %nAdvance = alloca i16, align 2
  %nNextGlyphPtr = alloca i32, align 4
  %nPosBeg = alloca i32, align 4
  %exec = alloca %struct._TExecution_Context*, align 8
  %pts = alloca %struct._TGlyph_Zone*, align 8
  %subglyph = alloca %struct._TSubglyph_Record, align 8
  %usage = alloca %struct.ttfSubGlyphUsage_s*, align 8
  %glyph = alloca i8*, align 8
  %glyph_size = alloca i32, align 4
  %execute_bytecode = alloca i32, align 4
  %nPoints = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %flags = alloca i16, align 2
  %index = alloca i16, align 2
  %bHaveInstructions = alloca i16, align 2
  %nUsage = alloca i32, align 4
  %nPos = alloca i32, align 4
  %n_ins = alloca i32, align 4
  %m = alloca %struct.FixMatrix, align 4
  %e = alloca %struct.ttfSubGlyphUsage_s*, align 8
  %out = alloca %struct.ttfGlyphOutline, align 4
  %e198 = alloca %struct.ttfSubGlyphUsage_s*, align 8
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %nPointsStored = alloca i32, align 4
  %nContoursStored = alloca i32, align 4
  %code356 = alloca i32, align 4
  %k = alloca i32, align 4
  %x374 = alloca i32, align 4
  %i507 = alloca i16, align 2
  %bInsOK = alloca i32, align 4
  %onCurve = alloca i8*, align 8
  %stop = alloca i8*, align 8
  %flag = alloca i8, align 1
  %endPoints = alloca i16*, align 8
  %nPos508 = alloca i32, align 4
  %n_ins509 = alloca i32, align 4
  %coord = alloca i16, align 2
  %x615 = alloca i32*, align 8
  %coord660 = alloca i16, align 2
  %y661 = alloca i32*, align 8
  %pts731 = alloca %struct._TGlyph_Zone*, align 8
  %k733 = alloca i32, align 4
  %x734 = alloca i32, align 4
  %code735 = alloca i32, align 4
  store %struct.ttfOutliner* %self, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  store i32 %glyphIndex, i32* %glyphIndex.addr, align 4, !tbaa !1
  store %struct.FixMatrix* %m_orig, %struct.FixMatrix** %m_orig.addr, align 8, !tbaa !8
  store %struct.ttfGlyphOutline* %gOutline, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %0 = bitcast %struct.ttfFont_s** %pFont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %pFont1 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %1, i32 0, i32 9
  %2 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont1, align 8, !tbaa !81
  store %struct.ttfFont_s* %2, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %3 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %r2 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %4, i32 0, i32 7
  %5 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r2, align 8, !tbaa !74
  store %struct.ttfReader_s* %5, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %6 = bitcast %struct.ttfInterpreter_s** %tti to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %tti3 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %7, i32 0, i32 24
  %8 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti3, align 8, !tbaa !43
  store %struct.ttfInterpreter_s* %8, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %9 = bitcast i16* %sideBearing to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %error, align 4, !tbaa !53
  %11 = bitcast i16* %arg1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  %12 = bitcast i16* %arg2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  %13 = bitcast i16* %count to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i16* %nAdvance to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  %16 = bitcast i32* %nNextGlyphPtr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %nNextGlyphPtr, align 4, !tbaa !1
  %17 = bitcast i32* %nPosBeg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %exec4 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %19, i32 0, i32 23
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec4, align 8, !tbaa !44
  store %struct._TExecution_Context* %20, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %21 = bitcast %struct._TGlyph_Zone** %pts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %pts5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 39
  store %struct._TGlyph_Zone* %pts5, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %23 = bitcast %struct._TSubglyph_Record* %subglyph to i8*
  call void @llvm.lifetime.start(i64 160, i8* %23) #1
  %24 = bitcast %struct.ttfSubGlyphUsage_s** %usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage6 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %25, i32 0, i32 1
  %26 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %usage6, align 8, !tbaa !35
  %27 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage_top = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %27, i32 0, i32 3
  %28 = load i32, i32* %usage_top, align 4, !tbaa !134
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %26, i64 %idx.ext
  store %struct.ttfSubGlyphUsage_s* %add.ptr, %struct.ttfSubGlyphUsage_s** %usage, align 8, !tbaa !8
  %29 = bitcast i8** %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i8* null, i8** %glyph, align 8, !tbaa !8
  %30 = bitcast i32* %glyph_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %execute_bytecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 1, i32* %execute_bytecode, align 4, !tbaa !1
  %32 = bitcast i32* %nPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 0, i32* %nPoints, align 4, !tbaa !1
  br label %retry

retry:                                            ; preds = %if.then.865, %entry
  %33 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %get_metrics = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %33, i32 0, i32 7
  %34 = load i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)** %get_metrics, align 8, !tbaa !138
  %35 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %36 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  %37 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %bVertical = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %37, i32 0, i32 2
  %38 = load i32, i32* %bVertical, align 4, !tbaa !82
  %call = call i32 %34(%struct.ttfReader_s* %35, i32 %36, i32 %38, i16* %sideBearing, i16* %nAdvance) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %retry
  br label %errex

if.end:                                           ; preds = %retry
  %39 = load i16, i16* %sideBearing, align 2, !tbaa !70
  %call7 = call i32 @shortToF26Dot6(i16 signext %39) #6
  %40 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %sideBearing8 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %40, i32 0, i32 4
  store i32 %call7, i32* %sideBearing8, align 4, !tbaa !139
  %41 = load i16, i16* %nAdvance, align 2, !tbaa !70
  %call9 = call i32 @shortToF26Dot6(i16 signext %41) #6
  %42 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %advance = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %42, i32 0, i32 3
  %x = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance, i32 0, i32 0
  store i32 %call9, i32* %x, align 4, !tbaa !93
  %43 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %advance10 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %43, i32 0, i32 3
  %y = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance10, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !94
  %44 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %bFirst = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %44, i32 0, i32 1
  store i32 0, i32* %bFirst, align 4, !tbaa !80
  %45 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %bOutline = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %45, i32 0, i32 0
  %46 = load i32, i32* %bOutline, align 4, !tbaa !79
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.880

if.end.12:                                        ; preds = %if.end
  %47 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %LoadGlyph = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %47, i32 0, i32 5
  %48 = load i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)** %LoadGlyph, align 8, !tbaa !140
  %49 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %50 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  %call13 = call i32 %48(%struct.ttfReader_s* %49, i32 %50, i8** %glyph, i32* %glyph_size) #6
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store i32 6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.880

if.end.16:                                        ; preds = %if.end.12
  %51 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Eof = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %51, i32 0, i32 0
  %52 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Eof, align 8, !tbaa !141
  %53 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call17 = call i32 %52(%struct.ttfReader_s* %53) #6
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %54 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %ReleaseGlyph = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %54, i32 0, i32 6
  %55 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %ReleaseGlyph, align 8, !tbaa !142
  %56 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %57 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  call void %55(%struct.ttfReader_s* %56, i32 %57) #6
  %58 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %yMinB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %58, i32 0, i32 6
  store i32 0, i32* %yMinB, align 4, !tbaa !91
  %59 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %xMinB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %59, i32 0, i32 5
  store i32 0, i32* %xMinB, align 4, !tbaa !89
  %60 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %yMaxB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %60, i32 0, i32 8
  store i32 0, i32* %yMaxB, align 4, !tbaa !92
  %61 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %xMaxB = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %61, i32 0, i32 7
  store i32 0, i32* %xMaxB, align 4, !tbaa !90
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.880

if.end.20:                                        ; preds = %if.end.16
  %62 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Error = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %62, i32 0, i32 4
  %63 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error, align 8, !tbaa !67
  %64 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call21 = call i32 %63(%struct.ttfReader_s* %64) #6
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  br label %errex

if.end.24:                                        ; preds = %if.end.20
  %65 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Tell = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %65, i32 0, i32 3
  %66 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Tell, align 8, !tbaa !143
  %67 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call25 = call i32 %66(%struct.ttfReader_s* %67) #6
  store i32 %call25, i32* %nPosBeg, align 4, !tbaa !1
  %68 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call26 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %68) #6
  %conv = sext i16 %call26 to i32
  %69 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %69, i32 0, i32 1
  store i32 %conv, i32* %contourCount, align 4, !tbaa !102
  %70 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call27 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %70) #6
  %conv28 = sext i16 %call27 to i32
  %bbox = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %xMin = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox, i32 0, i32 0
  store i32 %conv28, i32* %xMin, align 4, !tbaa !144
  %71 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call29 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %71) #6
  %conv30 = sext i16 %call29 to i32
  %bbox31 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %yMin = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox31, i32 0, i32 1
  store i32 %conv30, i32* %yMin, align 4, !tbaa !149
  %72 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call32 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %72) #6
  %conv33 = sext i16 %call32 to i32
  %bbox34 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %xMax = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox34, i32 0, i32 2
  store i32 %conv33, i32* %xMax, align 4, !tbaa !150
  %73 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call35 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %73) #6
  %conv36 = sext i16 %call35 to i32
  %bbox37 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %yMax = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox37, i32 0, i32 3
  store i32 %conv36, i32* %yMax, align 4, !tbaa !151
  %74 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %74, i32 0, i32 31
  %bbox38 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %xMin39 = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox38, i32 0, i32 0
  %75 = load i32, i32* %xMin39, align 4, !tbaa !144
  %call40 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics, i32 %75) #6
  %76 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %xMinB41 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %76, i32 0, i32 5
  store i32 %call40, i32* %xMinB41, align 4, !tbaa !89
  %77 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics42 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %77, i32 0, i32 31
  %bbox43 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %yMin44 = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox43, i32 0, i32 1
  %78 = load i32, i32* %yMin44, align 4, !tbaa !149
  %call45 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics42, i32 %78) #6
  %79 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %yMinB46 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %79, i32 0, i32 6
  store i32 %call45, i32* %yMinB46, align 4, !tbaa !91
  %80 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics47 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %80, i32 0, i32 31
  %bbox48 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %xMax49 = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox48, i32 0, i32 2
  %81 = load i32, i32* %xMax49, align 4, !tbaa !150
  %call50 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics47, i32 %81) #6
  %82 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %xMaxB51 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %82, i32 0, i32 7
  store i32 %call50, i32* %xMaxB51, align 4, !tbaa !90
  %83 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics52 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %83, i32 0, i32 31
  %bbox53 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %yMax54 = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox53, i32 0, i32 3
  %84 = load i32, i32* %yMax54, align 4, !tbaa !151
  %call55 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics52, i32 %84) #6
  %85 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %yMaxB56 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %85, i32 0, i32 8
  store i32 %call55, i32* %yMaxB56, align 4, !tbaa !92
  %86 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %exec57 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %86, i32 0, i32 23
  %87 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec57, align 8, !tbaa !44
  call void @Init_Glyph_Component(%struct._TSubglyph_Record* %subglyph, %struct._TSubglyph_Record* null, %struct._TExecution_Context* %87) #6
  %88 = load i16, i16* %sideBearing, align 2, !tbaa !70
  %conv58 = sext i16 %88 to i32
  %leftBearing = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 13
  store i32 %conv58, i32* %leftBearing, align 4, !tbaa !152
  %89 = load i16, i16* %nAdvance, align 2, !tbaa !70
  %conv59 = zext i16 %89 to i32
  %advanceWidth = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 14
  store i32 %conv59, i32* %advanceWidth, align 4, !tbaa !153
  %bbox60 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %xMin61 = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox60, i32 0, i32 0
  %90 = load i32, i32* %xMin61, align 4, !tbaa !144
  %91 = load i16, i16* %sideBearing, align 2, !tbaa !70
  %conv62 = sext i16 %91 to i32
  %sub = sub nsw i32 %90, %conv62
  %pp1 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %x63 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp1, i32 0, i32 0
  store i32 %sub, i32* %x63, align 4, !tbaa !154
  %pp164 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %y65 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp164, i32 0, i32 1
  store i32 0, i32* %y65, align 4, !tbaa !155
  %pp166 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %x67 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp166, i32 0, i32 0
  %92 = load i32, i32* %x67, align 4, !tbaa !154
  %93 = load i16, i16* %nAdvance, align 2, !tbaa !70
  %conv68 = zext i16 %93 to i32
  %add = add nsw i32 %92, %conv68
  %pp2 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 12
  %x69 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp2, i32 0, i32 0
  store i32 %add, i32* %x69, align 4, !tbaa !156
  %pp270 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 12
  %y71 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp270, i32 0, i32 1
  store i32 0, i32* %y71, align 4, !tbaa !157
  %94 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount72 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %94, i32 0, i32 1
  %95 = load i32, i32* %contourCount72, align 4, !tbaa !102
  %cmp73 = icmp eq i32 %95, 0
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.end.24
  %96 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %96, i32 0, i32 2
  store i32 0, i32* %pointCount, align 4, !tbaa !158
  br label %if.end.859

if.else:                                          ; preds = %if.end.24
  %97 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount76 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %97, i32 0, i32 1
  %98 = load i32, i32* %contourCount76, align 4, !tbaa !102
  %cmp77 = icmp eq i32 %98, -1
  br i1 %cmp77, label %if.then.79, label %if.else.502

if.then.79:                                       ; preds = %if.else
  %99 = bitcast i16* %flags to i8*
  call void @llvm.lifetime.start(i64 2, i8* %99) #1
  %100 = bitcast i16* %index to i8*
  call void @llvm.lifetime.start(i64 2, i8* %100) #1
  %101 = bitcast i16* %bHaveInstructions to i8*
  call void @llvm.lifetime.start(i64 2, i8* %101) #1
  store i16 0, i16* %bHaveInstructions, align 2, !tbaa !70
  %102 = bitcast i32* %nUsage to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  store i32 0, i32* %nUsage, align 4, !tbaa !1
  %103 = bitcast i32* %nPos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = bitcast i32* %n_ins to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %bCompound = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %105, i32 0, i32 0
  store i32 1, i32* %bCompound, align 4, !tbaa !159
  %106 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage_top80 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %106, i32 0, i32 3
  %107 = load i32, i32* %usage_top80, align 4, !tbaa !134
  %108 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nMaxComponents = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %108, i32 0, i32 15
  %109 = load i32, i32* %nMaxComponents, align 4, !tbaa !60
  %add81 = add i32 %107, %109
  %110 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage_size = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %110, i32 0, i32 2
  %111 = load i32, i32* %usage_size, align 4, !tbaa !36
  %cmp82 = icmp ugt i32 %add81, %111
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.79
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.494

if.end.85:                                        ; preds = %if.then.79
  %112 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount86 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %112, i32 0, i32 2
  store i32 0, i32* %pointCount86, align 4, !tbaa !158
  %113 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount87 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %113, i32 0, i32 1
  store i32 0, i32* %contourCount87, align 4, !tbaa !102
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.85
  %114 = bitcast %struct.FixMatrix* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %114) #1
  %115 = bitcast %struct.ttfSubGlyphUsage_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load i32, i32* %nUsage, align 4, !tbaa !1
  %117 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %nMaxComponents88 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %117, i32 0, i32 15
  %118 = load i32, i32* %nMaxComponents88, align 4, !tbaa !60
  %cmp89 = icmp uge i32 %116, %118
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %do.body
  store i32 3, i32* %error, align 4, !tbaa !53
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %do.body
  %119 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call93 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %119) #6
  store i16 %call93, i16* %flags, align 2, !tbaa !70
  %120 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call94 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %120) #6
  store i16 %call94, i16* %index, align 2, !tbaa !70
  %121 = load i16, i16* %flags, align 2, !tbaa !70
  %conv95 = zext i16 %121 to i32
  %and = and i32 %conv95, 256
  %122 = load i16, i16* %bHaveInstructions, align 2, !tbaa !70
  %conv96 = zext i16 %122 to i32
  %or = or i32 %conv96, %and
  %conv97 = trunc i32 %or to i16
  store i16 %conv97, i16* %bHaveInstructions, align 2, !tbaa !70
  %123 = load i16, i16* %flags, align 2, !tbaa !70
  %conv98 = zext i16 %123 to i32
  %and99 = and i32 %conv98, 1
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then.101, label %if.else.104

if.then.101:                                      ; preds = %if.end.92
  %124 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call102 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %124) #6
  store i16 %call102, i16* %arg1, align 2, !tbaa !70
  %125 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call103 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %125) #6
  store i16 %call103, i16* %arg2, align 2, !tbaa !70
  br label %if.end.119

if.else.104:                                      ; preds = %if.end.92
  %126 = load i16, i16* %flags, align 2, !tbaa !70
  %conv105 = zext i16 %126 to i32
  %and106 = and i32 %conv105, 2
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.else.113

if.then.108:                                      ; preds = %if.else.104
  %127 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call109 = call signext i8 @ttfReader__SignedByte(%struct.ttfReader_s* %127) #6
  %conv110 = sext i8 %call109 to i16
  store i16 %conv110, i16* %arg1, align 2, !tbaa !70
  %128 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call111 = call signext i8 @ttfReader__SignedByte(%struct.ttfReader_s* %128) #6
  %conv112 = sext i8 %call111 to i16
  store i16 %conv112, i16* %arg2, align 2, !tbaa !70
  br label %if.end.118

if.else.113:                                      ; preds = %if.else.104
  %129 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call114 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %129) #6
  %conv115 = zext i8 %call114 to i16
  store i16 %conv115, i16* %arg1, align 2, !tbaa !70
  %130 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call116 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %130) #6
  %conv117 = zext i8 %call116 to i16
  store i16 %conv117, i16* %arg2, align 2, !tbaa !70
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.113, %if.then.108
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.101
  %ty = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 5
  store i32 0, i32* %ty, align 4, !tbaa !137
  %tx = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 4
  store i32 0, i32* %tx, align 4, !tbaa !135
  %c = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 2
  store i32 0, i32* %c, align 4, !tbaa !160
  %b = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 1
  store i32 0, i32* %b, align 4, !tbaa !161
  %131 = load i16, i16* %flags, align 2, !tbaa !70
  %conv120 = zext i16 %131 to i32
  %and121 = and i32 %conv120, 8
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.else.126

if.then.123:                                      ; preds = %if.end.119
  %132 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call124 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %132) #6
  %conv125 = sext i16 %call124 to i32
  %shl = shl i32 %conv125, 2
  %d = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 3
  store i32 %shl, i32* %d, align 4, !tbaa !162
  %a = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 0
  store i32 %shl, i32* %a, align 4, !tbaa !163
  br label %if.end.165

if.else.126:                                      ; preds = %if.end.119
  %133 = load i16, i16* %flags, align 2, !tbaa !70
  %conv127 = zext i16 %133 to i32
  %and128 = and i32 %conv127, 64
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.else.139

if.then.130:                                      ; preds = %if.else.126
  %134 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call131 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %134) #6
  %conv132 = sext i16 %call131 to i32
  %shl133 = shl i32 %conv132, 2
  %a134 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 0
  store i32 %shl133, i32* %a134, align 4, !tbaa !163
  %135 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call135 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %135) #6
  %conv136 = sext i16 %call135 to i32
  %shl137 = shl i32 %conv136, 2
  %d138 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 3
  store i32 %shl137, i32* %d138, align 4, !tbaa !162
  br label %if.end.164

if.else.139:                                      ; preds = %if.else.126
  %136 = load i16, i16* %flags, align 2, !tbaa !70
  %conv140 = zext i16 %136 to i32
  %and141 = and i32 %conv140, 128
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then.143, label %if.else.160

if.then.143:                                      ; preds = %if.else.139
  %137 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call144 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %137) #6
  %conv145 = sext i16 %call144 to i32
  %shl146 = shl i32 %conv145, 2
  %a147 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 0
  store i32 %shl146, i32* %a147, align 4, !tbaa !163
  %138 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call148 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %138) #6
  %conv149 = sext i16 %call148 to i32
  %shl150 = shl i32 %conv149, 2
  %b151 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 1
  store i32 %shl150, i32* %b151, align 4, !tbaa !161
  %139 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call152 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %139) #6
  %conv153 = sext i16 %call152 to i32
  %shl154 = shl i32 %conv153, 2
  %c155 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 2
  store i32 %shl154, i32* %c155, align 4, !tbaa !160
  %140 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call156 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %140) #6
  %conv157 = sext i16 %call156 to i32
  %shl158 = shl i32 %conv157, 2
  %d159 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 3
  store i32 %shl158, i32* %d159, align 4, !tbaa !162
  br label %if.end.163

if.else.160:                                      ; preds = %if.else.139
  %d161 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 3
  store i32 65536, i32* %d161, align 4, !tbaa !162
  %a162 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m, i32 0, i32 0
  store i32 65536, i32* %a162, align 4, !tbaa !163
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.143
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.130
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.123
  %141 = load i32, i32* %nUsage, align 4, !tbaa !1
  %idxprom = zext i32 %141 to i64
  %142 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %usage, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %142, i64 %idxprom
  store %struct.ttfSubGlyphUsage_s* %arrayidx, %struct.ttfSubGlyphUsage_s** %e, align 8, !tbaa !8
  %143 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e, align 8, !tbaa !8
  %m166 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %143, i32 0, i32 0
  %144 = bitcast %struct.FixMatrix* %m166 to i8*
  %145 = bitcast %struct.FixMatrix* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 24, i32 4, i1 false), !tbaa.struct !164
  %146 = load i16, i16* %index, align 2, !tbaa !70
  %conv167 = zext i16 %146 to i32
  %147 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e, align 8, !tbaa !8
  %index168 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %147, i32 0, i32 1
  store i32 %conv167, i32* %index168, align 4, !tbaa !165
  %148 = load i16, i16* %arg1, align 2, !tbaa !70
  %149 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e, align 8, !tbaa !8
  %arg1169 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %149, i32 0, i32 3
  store i16 %148, i16* %arg1169, align 2, !tbaa !167
  %150 = load i16, i16* %arg2, align 2, !tbaa !70
  %151 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e, align 8, !tbaa !8
  %arg2170 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %151, i32 0, i32 4
  store i16 %150, i16* %arg2170, align 2, !tbaa !168
  %152 = load i16, i16* %flags, align 2, !tbaa !70
  %conv171 = zext i16 %152 to i32
  %153 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e, align 8, !tbaa !8
  %flags172 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %153, i32 0, i32 2
  store i32 %conv171, i32* %flags172, align 4, !tbaa !169
  %154 = load i32, i32* %nUsage, align 4, !tbaa !1
  %inc = add i32 %154, 1
  store i32 %inc, i32* %nUsage, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.91, %if.end.165
  %155 = bitcast %struct.ttfSubGlyphUsage_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast %struct.FixMatrix* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %156) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.494 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  %157 = load i16, i16* %flags, align 2, !tbaa !70
  %conv174 = zext i16 %157 to i32
  %and175 = and i32 %conv174, 32
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %158 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Error177 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %158, i32 0, i32 4
  %159 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error177, align 8, !tbaa !67
  %160 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call178 = call i32 %159(%struct.ttfReader_s* %160) #6
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %do.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.494

if.end.181:                                       ; preds = %do.end
  %161 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Tell182 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %161, i32 0, i32 3
  %162 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Tell182, align 8, !tbaa !143
  %163 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call183 = call i32 %162(%struct.ttfReader_s* %163) #6
  store i32 %call183, i32* %nPos, align 4, !tbaa !1
  %164 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Eof184 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %164, i32 0, i32 0
  %165 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Eof184, align 8, !tbaa !141
  %166 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call185 = call i32 %165(%struct.ttfReader_s* %166) #6
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.181
  %167 = load i16, i16* %bHaveInstructions, align 2, !tbaa !70
  %conv187 = zext i16 %167 to i32
  %tobool188 = icmp ne i32 %conv187, 0
  br i1 %tobool188, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %168 = load i32, i32* %nPos, align 4, !tbaa !1
  %169 = load i32, i32* %nNextGlyphPtr, align 4, !tbaa !1
  %cmp189 = icmp ult i32 %168, %169
  br i1 %cmp189, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %170 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call191 = call zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %170) #6
  %conv192 = zext i16 %call191 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %if.end.181
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv192, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %n_ins, align 4, !tbaa !1
  %171 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Tell193 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %171, i32 0, i32 3
  %172 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Tell193, align 8, !tbaa !143
  %173 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call194 = call i32 %172(%struct.ttfReader_s* %173) #6
  store i32 %call194, i32* %nPos, align 4, !tbaa !1
  %174 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %ReleaseGlyph195 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %174, i32 0, i32 6
  %175 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %ReleaseGlyph195, align 8, !tbaa !142
  %176 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %177 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  call void %175(%struct.ttfReader_s* %176, i32 %177) #6
  store i8* null, i8** %glyph, align 8, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.345, %cond.end
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = load i32, i32* %nUsage, align 4, !tbaa !1
  %cmp196 = icmp ult i32 %178, %179
  br i1 %cmp196, label %for.body, label %for.end.347

for.body:                                         ; preds = %for.cond
  %180 = bitcast %struct.ttfGlyphOutline* %out to i8*
  call void @llvm.lifetime.start(i64 40, i8* %180) #1
  %181 = bitcast %struct.ttfSubGlyphUsage_s** %e198 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom199 = zext i32 %182 to i64
  %183 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %usage, align 8, !tbaa !8
  %arrayidx200 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %183, i64 %idxprom199
  store %struct.ttfSubGlyphUsage_s* %arrayidx200, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %184 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  %186 = bitcast i32* %nPointsStored to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount201 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %187, i32 0, i32 2
  %188 = load i32, i32* %pointCount201, align 4, !tbaa !158
  store i32 %188, i32* %nPointsStored, align 4, !tbaa !1
  %189 = bitcast i32* %nContoursStored to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount202 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %190, i32 0, i32 1
  %191 = load i32, i32* %contourCount202, align 4, !tbaa !102
  store i32 %191, i32* %nContoursStored, align 4, !tbaa !1
  %contourCount203 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 1
  store i32 0, i32* %contourCount203, align 4, !tbaa !102
  %pointCount204 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 2
  store i32 0, i32* %pointCount204, align 4, !tbaa !158
  %bCompound205 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 0
  store i32 0, i32* %bCompound205, align 4, !tbaa !159
  %192 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %193 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %193, i32 0, i32 2
  %194 = load i32*, i32** %org_x, align 8, !tbaa !87
  %idx.ext206 = sext i32 %192 to i64
  %add.ptr207 = getelementptr inbounds i32, i32* %194, i64 %idx.ext206
  store i32* %add.ptr207, i32** %org_x, align 8, !tbaa !87
  %195 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %196 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %196, i32 0, i32 3
  %197 = load i32*, i32** %org_y, align 8, !tbaa !88
  %idx.ext208 = sext i32 %195 to i64
  %add.ptr209 = getelementptr inbounds i32, i32* %197, i64 %idx.ext208
  store i32* %add.ptr209, i32** %org_y, align 8, !tbaa !88
  %198 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %199 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %199, i32 0, i32 4
  %200 = load i32*, i32** %cur_x, align 8, !tbaa !170
  %idx.ext210 = sext i32 %198 to i64
  %add.ptr211 = getelementptr inbounds i32, i32* %200, i64 %idx.ext210
  store i32* %add.ptr211, i32** %cur_x, align 8, !tbaa !170
  %201 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %202 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %202, i32 0, i32 5
  %203 = load i32*, i32** %cur_y, align 8, !tbaa !171
  %idx.ext212 = sext i32 %201 to i64
  %add.ptr213 = getelementptr inbounds i32, i32* %203, i64 %idx.ext212
  store i32* %add.ptr213, i32** %cur_y, align 8, !tbaa !171
  %204 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %205 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %205, i32 0, i32 6
  %206 = load i8*, i8** %touch, align 8, !tbaa !86
  %idx.ext214 = sext i32 %204 to i64
  %add.ptr215 = getelementptr inbounds i8, i8* %206, i64 %idx.ext214
  store i8* %add.ptr215, i8** %touch, align 8, !tbaa !86
  %207 = load i32, i32* %nContoursStored, align 4, !tbaa !1
  %208 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %208, i32 0, i32 7
  %209 = load i16*, i16** %contours, align 8, !tbaa !84
  %idx.ext216 = sext i32 %207 to i64
  %add.ptr217 = getelementptr inbounds i16, i16* %209, i64 %idx.ext216
  store i16* %add.ptr217, i16** %contours, align 8, !tbaa !84
  %210 = load i32, i32* %nUsage, align 4, !tbaa !1
  %211 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage_top218 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %211, i32 0, i32 3
  %212 = load i32, i32* %usage_top218, align 4, !tbaa !134
  %add219 = add i32 %212, %210
  store i32 %add219, i32* %usage_top218, align 4, !tbaa !134
  %213 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %214 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %index220 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %214, i32 0, i32 1
  %215 = load i32, i32* %index220, align 4, !tbaa !165
  %216 = load %struct.FixMatrix*, %struct.FixMatrix** %m_orig.addr, align 8, !tbaa !8
  %call221 = call i32 @ttfOutliner__BuildGlyphOutlineAux(%struct.ttfOutliner* %213, i32 %215, %struct.FixMatrix* %216, %struct.ttfGlyphOutline* %out) #6
  store i32 %call221, i32* %code, align 4, !tbaa !1
  %217 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %218 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x222 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %218, i32 0, i32 2
  %219 = load i32*, i32** %org_x222, align 8, !tbaa !87
  %idx.ext223 = sext i32 %217 to i64
  %idx.neg = sub i64 0, %idx.ext223
  %add.ptr224 = getelementptr inbounds i32, i32* %219, i64 %idx.neg
  store i32* %add.ptr224, i32** %org_x222, align 8, !tbaa !87
  %220 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %221 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y225 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %221, i32 0, i32 3
  %222 = load i32*, i32** %org_y225, align 8, !tbaa !88
  %idx.ext226 = sext i32 %220 to i64
  %idx.neg227 = sub i64 0, %idx.ext226
  %add.ptr228 = getelementptr inbounds i32, i32* %222, i64 %idx.neg227
  store i32* %add.ptr228, i32** %org_y225, align 8, !tbaa !88
  %223 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %224 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %cur_x229 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %224, i32 0, i32 4
  %225 = load i32*, i32** %cur_x229, align 8, !tbaa !170
  %idx.ext230 = sext i32 %223 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i32, i32* %225, i64 %idx.neg231
  store i32* %add.ptr232, i32** %cur_x229, align 8, !tbaa !170
  %226 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %227 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %cur_y233 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %227, i32 0, i32 5
  %228 = load i32*, i32** %cur_y233, align 8, !tbaa !171
  %idx.ext234 = sext i32 %226 to i64
  %idx.neg235 = sub i64 0, %idx.ext234
  %add.ptr236 = getelementptr inbounds i32, i32* %228, i64 %idx.neg235
  store i32* %add.ptr236, i32** %cur_y233, align 8, !tbaa !171
  %229 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %230 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch237 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %230, i32 0, i32 6
  %231 = load i8*, i8** %touch237, align 8, !tbaa !86
  %idx.ext238 = sext i32 %229 to i64
  %idx.neg239 = sub i64 0, %idx.ext238
  %add.ptr240 = getelementptr inbounds i8, i8* %231, i64 %idx.neg239
  store i8* %add.ptr240, i8** %touch237, align 8, !tbaa !86
  %232 = load i32, i32* %nUsage, align 4, !tbaa !1
  %233 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage_top241 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %233, i32 0, i32 3
  %234 = load i32, i32* %usage_top241, align 4, !tbaa !134
  %sub242 = sub i32 %234, %232
  store i32 %sub242, i32* %usage_top241, align 4, !tbaa !134
  %235 = load i32, i32* %nContoursStored, align 4, !tbaa !1
  %236 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %contours243 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %236, i32 0, i32 7
  %237 = load i16*, i16** %contours243, align 8, !tbaa !84
  %idx.ext244 = sext i32 %235 to i64
  %idx.neg245 = sub i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i16, i16* %237, i64 %idx.neg245
  store i16* %add.ptr246, i16** %contours243, align 8, !tbaa !84
  %238 = load i32, i32* %code, align 4, !tbaa !1
  %cmp247 = icmp eq i32 %238, 8
  br i1 %cmp247, label %if.then.249, label %if.else.250

if.then.249:                                      ; preds = %for.body
  %239 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %239, i32* %error, align 4, !tbaa !53
  br label %if.end.255

if.else.250:                                      ; preds = %for.body
  %240 = load i32, i32* %code, align 4, !tbaa !1
  %cmp251 = icmp ne i32 %240, 0
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.else.250
  %241 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %241, i32* %error, align 4, !tbaa !53
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.337

if.end.254:                                       ; preds = %if.else.250
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.then.249
  %242 = load i16, i16* %flags, align 2, !tbaa !70
  %conv256 = zext i16 %242 to i32
  %and257 = and i32 %conv256, 2
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %if.then.259, label %if.else.274

if.then.259:                                      ; preds = %if.end.255
  %243 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics260 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %243, i32 0, i32 31
  %244 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %arg1261 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %244, i32 0, i32 3
  %245 = load i16, i16* %arg1261, align 2, !tbaa !167
  %conv262 = sext i16 %245 to i32
  %call263 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics260, i32 %conv262) #6
  %shl264 = shl i32 %call263, 10
  %246 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %m265 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %246, i32 0, i32 0
  %tx266 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m265, i32 0, i32 4
  store i32 %shl264, i32* %tx266, align 4, !tbaa !172
  %247 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics267 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %247, i32 0, i32 31
  %248 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %arg2268 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %248, i32 0, i32 4
  %249 = load i16, i16* %arg2268, align 2, !tbaa !168
  %conv269 = sext i16 %249 to i32
  %call270 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics267, i32 %conv269) #6
  %shl271 = shl i32 %call270, 10
  %250 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %m272 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %250, i32 0, i32 0
  %ty273 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m272, i32 0, i32 5
  store i32 %shl271, i32* %ty273, align 4, !tbaa !173
  br label %if.end.305

if.else.274:                                      ; preds = %if.end.255
  %251 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %arg1275 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %251, i32 0, i32 3
  %252 = load i16, i16* %arg1275, align 2, !tbaa !167
  %idxprom276 = sext i16 %252 to i64
  %253 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x277 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %253, i32 0, i32 2
  %254 = load i32*, i32** %org_x277, align 8, !tbaa !87
  %arrayidx278 = getelementptr inbounds i32, i32* %254, i64 %idxprom276
  %255 = load i32, i32* %arrayidx278, align 4, !tbaa !1
  %256 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount279 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %256, i32 0, i32 2
  %257 = load i32, i32* %pointCount279, align 4, !tbaa !158
  %258 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %arg2280 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %258, i32 0, i32 4
  %259 = load i16, i16* %arg2280, align 2, !tbaa !168
  %conv281 = sext i16 %259 to i32
  %add282 = add i32 %257, %conv281
  %idxprom283 = zext i32 %add282 to i64
  %260 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x284 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %260, i32 0, i32 2
  %261 = load i32*, i32** %org_x284, align 8, !tbaa !87
  %arrayidx285 = getelementptr inbounds i32, i32* %261, i64 %idxprom283
  %262 = load i32, i32* %arrayidx285, align 4, !tbaa !1
  %sub286 = sub nsw i32 %255, %262
  %shl287 = shl i32 %sub286, 10
  %263 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %m288 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %263, i32 0, i32 0
  %tx289 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m288, i32 0, i32 4
  store i32 %shl287, i32* %tx289, align 4, !tbaa !172
  %264 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %arg1290 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %264, i32 0, i32 3
  %265 = load i16, i16* %arg1290, align 2, !tbaa !167
  %idxprom291 = sext i16 %265 to i64
  %266 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y292 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %266, i32 0, i32 3
  %267 = load i32*, i32** %org_y292, align 8, !tbaa !88
  %arrayidx293 = getelementptr inbounds i32, i32* %267, i64 %idxprom291
  %268 = load i32, i32* %arrayidx293, align 4, !tbaa !1
  %269 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount294 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %269, i32 0, i32 2
  %270 = load i32, i32* %pointCount294, align 4, !tbaa !158
  %271 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %arg2295 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %271, i32 0, i32 4
  %272 = load i16, i16* %arg2295, align 2, !tbaa !168
  %conv296 = sext i16 %272 to i32
  %add297 = add i32 %270, %conv296
  %idxprom298 = zext i32 %add297 to i64
  %273 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y299 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %273, i32 0, i32 3
  %274 = load i32*, i32** %org_y299, align 8, !tbaa !88
  %arrayidx300 = getelementptr inbounds i32, i32* %274, i64 %idxprom298
  %275 = load i32, i32* %arrayidx300, align 4, !tbaa !1
  %sub301 = sub nsw i32 %268, %275
  %shl302 = shl i32 %sub301, 10
  %276 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %m303 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %276, i32 0, i32 0
  %ty304 = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %m303, i32 0, i32 5
  store i32 %shl302, i32* %ty304, align 4, !tbaa !173
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.274, %if.then.259
  %277 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %278 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %279 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %m306 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %279, i32 0, i32 0
  call void @MoveGlyphOutline(%struct._TGlyph_Zone* %277, i32 %278, %struct.ttfGlyphOutline* %out, %struct.FixMatrix* %m306) #6
  %280 = load i32, i32* %nContoursStored, align 4, !tbaa !1
  store i32 %280, i32* %j, align 4, !tbaa !1
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc, %if.end.305
  %281 = load i32, i32* %j, align 4, !tbaa !1
  %contourCount308 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 1
  %282 = load i32, i32* %contourCount308, align 4, !tbaa !102
  %283 = load i32, i32* %nContoursStored, align 4, !tbaa !1
  %add309 = add nsw i32 %282, %283
  %cmp310 = icmp slt i32 %281, %add309
  br i1 %cmp310, label %for.body.312, label %for.end

for.body.312:                                     ; preds = %for.cond.307
  %284 = load i32, i32* %nPointsStored, align 4, !tbaa !1
  %285 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom313 = sext i32 %285 to i64
  %286 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %contours314 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %286, i32 0, i32 7
  %287 = load i16*, i16** %contours314, align 8, !tbaa !84
  %arrayidx315 = getelementptr inbounds i16, i16* %287, i64 %idxprom313
  %288 = load i16, i16* %arrayidx315, align 2, !tbaa !70
  %conv316 = sext i16 %288 to i32
  %add317 = add nsw i32 %conv316, %284
  %conv318 = trunc i32 %add317 to i16
  store i16 %conv318, i16* %arrayidx315, align 2, !tbaa !70
  br label %for.inc

for.inc:                                          ; preds = %for.body.312
  %289 = load i32, i32* %j, align 4, !tbaa !1
  %inc319 = add nsw i32 %289, 1
  store i32 %inc319, i32* %j, align 4, !tbaa !1
  br label %for.cond.307

for.end:                                          ; preds = %for.cond.307
  %contourCount320 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 1
  %290 = load i32, i32* %contourCount320, align 4, !tbaa !102
  %291 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount321 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %291, i32 0, i32 1
  %292 = load i32, i32* %contourCount321, align 4, !tbaa !102
  %add322 = add nsw i32 %292, %290
  store i32 %add322, i32* %contourCount321, align 4, !tbaa !102
  %pointCount323 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 2
  %293 = load i32, i32* %pointCount323, align 4, !tbaa !158
  %294 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount324 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %294, i32 0, i32 2
  %295 = load i32, i32* %pointCount324, align 4, !tbaa !158
  %add325 = add i32 %295, %293
  store i32 %add325, i32* %pointCount324, align 4, !tbaa !158
  %296 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %e198, align 8, !tbaa !8
  %flags326 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %296, i32 0, i32 2
  %297 = load i32, i32* %flags326, align 4, !tbaa !169
  %and327 = and i32 %297, 512
  %tobool328 = icmp ne i32 %and327, 0
  br i1 %tobool328, label %if.then.329, label %if.end.336

if.then.329:                                      ; preds = %for.end
  %advance330 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 3
  %x331 = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance330, i32 0, i32 0
  %298 = load i32, i32* %x331, align 4, !tbaa !93
  %299 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %advance332 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %299, i32 0, i32 3
  %x333 = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance332, i32 0, i32 0
  store i32 %298, i32* %x333, align 4, !tbaa !93
  %sideBearing334 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %out, i32 0, i32 4
  %300 = load i32, i32* %sideBearing334, align 4, !tbaa !139
  %301 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %sideBearing335 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %301, i32 0, i32 4
  store i32 %300, i32* %sideBearing335, align 4, !tbaa !139
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.329, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.337

cleanup.337:                                      ; preds = %if.then.253, %if.end.336
  %302 = bitcast i32* %nContoursStored to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %nPointsStored to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast %struct.ttfSubGlyphUsage_s** %e198 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast %struct.ttfGlyphOutline* %out to i8*
  call void @llvm.lifetime.end(i64 40, i8* %307) #1
  %cleanup.dest.343 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.343, label %cleanup.494 [
    i32 0, label %cleanup.cont.344
  ]

cleanup.cont.344:                                 ; preds = %cleanup.337
  br label %for.inc.345

for.inc.345:                                      ; preds = %cleanup.cont.344
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %inc346 = add i32 %308, 1
  store i32 %inc346, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.347:                                      ; preds = %for.cond
  %309 = load i32, i32* %execute_bytecode, align 4, !tbaa !1
  %tobool348 = icmp ne i32 %309, 0
  br i1 %tobool348, label %land.lhs.true.349, label %if.end.493

land.lhs.true.349:                                ; preds = %for.end.347
  %310 = load i32, i32* %n_ins, align 4, !tbaa !1
  %tobool350 = icmp ne i32 %310, 0
  br i1 %tobool350, label %land.lhs.true.351, label %if.end.493

land.lhs.true.351:                                ; preds = %land.lhs.true.349
  %311 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %inst = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %311, i32 0, i32 22
  %312 = load %struct._TInstance*, %struct._TInstance** %inst, align 8, !tbaa !45
  %GS = getelementptr inbounds %struct._TInstance, %struct._TInstance* %312, i32 0, i32 10
  %instruct_control = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 15
  %313 = load i8, i8* %instruct_control, align 1, !tbaa !132
  %conv352 = zext i8 %313 to i32
  %and353 = and i32 %conv352, 1
  %tobool354 = icmp ne i32 %and353, 0
  br i1 %tobool354, label %if.end.493, label %if.then.355

if.then.355:                                      ; preds = %land.lhs.true.351
  %314 = bitcast i32* %code356 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #1
  %315 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %LoadGlyph357 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %315, i32 0, i32 5
  %316 = load i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)** %LoadGlyph357, align 8, !tbaa !140
  %317 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %318 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  %call358 = call i32 %316(%struct.ttfReader_s* %317, i32 %318, i8** %glyph, i32* %glyph_size) #6
  %319 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Error359 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %319, i32 0, i32 4
  %320 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error359, align 8, !tbaa !67
  %321 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call360 = call i32 %320(%struct.ttfReader_s* %321) #6
  %tobool361 = icmp ne i32 %call360, 0
  br i1 %tobool361, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %if.then.355
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.490

if.end.363:                                       ; preds = %if.then.355
  %322 = load i32, i32* %nPos, align 4, !tbaa !1
  %323 = load i32, i32* %n_ins, align 4, !tbaa !1
  %add364 = add i32 %322, %323
  %324 = load i32, i32* %glyph_size, align 4, !tbaa !1
  %cmp365 = icmp ugt i32 %add364, %324
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %if.end.363
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.490

if.end.368:                                       ; preds = %if.end.363
  %325 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %326 = load i8*, i8** %glyph, align 8, !tbaa !8
  %327 = load i32, i32* %nPos, align 4, !tbaa !1
  %idx.ext369 = zext i32 %327 to i64
  %add.ptr370 = getelementptr inbounds i8, i8* %326, i64 %idx.ext369
  %328 = load i32, i32* %n_ins, align 4, !tbaa !1
  %call371 = call i32 @Set_CodeRange(%struct._TExecution_Context* %325, i32 3, i8* %add.ptr370, i32 %328) #6
  store i32 %call371, i32* %code356, align 4, !tbaa !1
  %329 = load i32, i32* %code356, align 4, !tbaa !1
  %tobool372 = icmp ne i32 %329, 0
  br i1 %tobool372, label %if.end.488, label %if.then.373

if.then.373:                                      ; preds = %if.end.368
  %330 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %330) #1
  %331 = bitcast i32* %x374 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %331) #1
  %332 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount375 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %332, i32 0, i32 2
  %333 = load i32, i32* %pointCount375, align 4, !tbaa !158
  %add376 = add i32 %333, 2
  store i32 %add376, i32* %nPoints, align 4, !tbaa !1
  %334 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %pts377 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %334, i32 0, i32 39
  %zone = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 6
  %335 = bitcast %struct._TGlyph_Zone* %pts377 to i8*
  %336 = bitcast %struct._TGlyph_Zone* %zone to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %335, i8* %336, i64 56, i32 8, i1 false), !tbaa.struct !174
  %337 = load i32, i32* %nPoints, align 4, !tbaa !1
  %338 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %338, i32 0, i32 0
  store i32 %337, i32* %n_points, align 4, !tbaa !175
  %339 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount378 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %339, i32 0, i32 1
  %340 = load i32, i32* %contourCount378, align 4, !tbaa !102
  %341 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %n_contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %341, i32 0, i32 1
  store i32 %340, i32* %n_contours, align 4, !tbaa !176
  %342 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics379 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %342, i32 0, i32 31
  %pp1380 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %x381 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp1380, i32 0, i32 0
  %343 = load i32, i32* %x381, align 4, !tbaa !154
  %call382 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics379, i32 %343) #6
  %344 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub383 = sub nsw i32 %344, 2
  %idxprom384 = sext i32 %sub383 to i64
  %345 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x385 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %345, i32 0, i32 2
  %346 = load i32*, i32** %org_x385, align 8, !tbaa !87
  %arrayidx386 = getelementptr inbounds i32, i32* %346, i64 %idxprom384
  store i32 %call382, i32* %arrayidx386, align 4, !tbaa !1
  %347 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics387 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %347, i32 0, i32 31
  %pp1388 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %y389 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp1388, i32 0, i32 1
  %348 = load i32, i32* %y389, align 4, !tbaa !155
  %call390 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics387, i32 %348) #6
  %349 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub391 = sub nsw i32 %349, 2
  %idxprom392 = sext i32 %sub391 to i64
  %350 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y393 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %350, i32 0, i32 3
  %351 = load i32*, i32** %org_y393, align 8, !tbaa !88
  %arrayidx394 = getelementptr inbounds i32, i32* %351, i64 %idxprom392
  store i32 %call390, i32* %arrayidx394, align 4, !tbaa !1
  %352 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics395 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %352, i32 0, i32 31
  %pp2396 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 12
  %x397 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp2396, i32 0, i32 0
  %353 = load i32, i32* %x397, align 4, !tbaa !156
  %call398 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics395, i32 %353) #6
  %354 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub399 = sub nsw i32 %354, 1
  %idxprom400 = sext i32 %sub399 to i64
  %355 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x401 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %355, i32 0, i32 2
  %356 = load i32*, i32** %org_x401, align 8, !tbaa !87
  %arrayidx402 = getelementptr inbounds i32, i32* %356, i64 %idxprom400
  store i32 %call398, i32* %arrayidx402, align 4, !tbaa !1
  %357 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics403 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %357, i32 0, i32 31
  %pp2404 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 12
  %y405 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp2404, i32 0, i32 1
  %358 = load i32, i32* %y405, align 4, !tbaa !157
  %call406 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics403, i32 %358) #6
  %359 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub407 = sub nsw i32 %359, 1
  %idxprom408 = sext i32 %sub407 to i64
  %360 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y409 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %360, i32 0, i32 3
  %361 = load i32*, i32** %org_y409, align 8, !tbaa !88
  %arrayidx410 = getelementptr inbounds i32, i32* %361, i64 %idxprom408
  store i32 %call406, i32* %arrayidx410, align 4, !tbaa !1
  %362 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub411 = sub nsw i32 %362, 1
  %idxprom412 = sext i32 %sub411 to i64
  %363 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch413 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %363, i32 0, i32 6
  %364 = load i8*, i8** %touch413, align 8, !tbaa !86
  %arrayidx414 = getelementptr inbounds i8, i8* %364, i64 %idxprom412
  store i8 0, i8* %arrayidx414, align 1, !tbaa !53
  %365 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub415 = sub nsw i32 %365, 2
  %idxprom416 = sext i32 %sub415 to i64
  %366 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch417 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %366, i32 0, i32 6
  %367 = load i8*, i8** %touch417, align 8, !tbaa !86
  %arrayidx418 = getelementptr inbounds i8, i8* %367, i64 %idxprom416
  store i8 0, i8* %arrayidx418, align 1, !tbaa !53
  %368 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub419 = sub nsw i32 %368, 2
  %idxprom420 = sext i32 %sub419 to i64
  %369 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x421 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %369, i32 0, i32 2
  %370 = load i32*, i32** %org_x421, align 8, !tbaa !87
  %arrayidx422 = getelementptr inbounds i32, i32* %370, i64 %idxprom420
  %371 = load i32, i32* %arrayidx422, align 4, !tbaa !1
  store i32 %371, i32* %x374, align 4, !tbaa !1
  %372 = load i32, i32* %x374, align 4, !tbaa !1
  %add423 = add nsw i32 %372, 32
  %and424 = and i32 %add423, -64
  %373 = load i32, i32* %x374, align 4, !tbaa !1
  %sub425 = sub nsw i32 %and424, %373
  store i32 %sub425, i32* %x374, align 4, !tbaa !1
  %374 = load i32, i32* %x374, align 4, !tbaa !1
  %tobool426 = icmp ne i32 %374, 0
  br i1 %tobool426, label %if.then.427, label %if.end.439

if.then.427:                                      ; preds = %if.then.373
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.428

for.cond.428:                                     ; preds = %for.inc.436, %if.then.427
  %375 = load i32, i32* %k, align 4, !tbaa !1
  %376 = load i32, i32* %nPoints, align 4, !tbaa !1
  %cmp429 = icmp slt i32 %375, %376
  br i1 %cmp429, label %for.body.431, label %for.end.438

for.body.431:                                     ; preds = %for.cond.428
  %377 = load i32, i32* %x374, align 4, !tbaa !1
  %378 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom432 = sext i32 %378 to i64
  %379 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x433 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %379, i32 0, i32 2
  %380 = load i32*, i32** %org_x433, align 8, !tbaa !87
  %arrayidx434 = getelementptr inbounds i32, i32* %380, i64 %idxprom432
  %381 = load i32, i32* %arrayidx434, align 4, !tbaa !1
  %add435 = add nsw i32 %381, %377
  store i32 %add435, i32* %arrayidx434, align 4, !tbaa !1
  br label %for.inc.436

for.inc.436:                                      ; preds = %for.body.431
  %382 = load i32, i32* %k, align 4, !tbaa !1
  %inc437 = add nsw i32 %382, 1
  store i32 %inc437, i32* %k, align 4, !tbaa !1
  br label %for.cond.428

for.end.438:                                      ; preds = %for.cond.428
  br label %if.end.439

if.end.439:                                       ; preds = %for.end.438, %if.then.373
  %383 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub440 = sub nsw i32 %383, 1
  %idxprom441 = sext i32 %sub440 to i64
  %384 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %cur_x442 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %384, i32 0, i32 4
  %385 = load i32*, i32** %cur_x442, align 8, !tbaa !170
  %arrayidx443 = getelementptr inbounds i32, i32* %385, i64 %idxprom441
  %386 = load i32, i32* %arrayidx443, align 4, !tbaa !1
  %add444 = add nsw i32 %386, 32
  %and445 = and i32 %add444, -64
  %387 = load i32, i32* %nPoints, align 4, !tbaa !1
  %sub446 = sub nsw i32 %387, 1
  %idxprom447 = sext i32 %sub446 to i64
  %388 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %cur_x448 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %388, i32 0, i32 4
  %389 = load i32*, i32** %cur_x448, align 8, !tbaa !170
  %arrayidx449 = getelementptr inbounds i32, i32* %389, i64 %idxprom447
  store i32 %and445, i32* %arrayidx449, align 4, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.450

for.cond.450:                                     ; preds = %for.inc.463, %if.end.439
  %390 = load i32, i32* %k, align 4, !tbaa !1
  %391 = load i32, i32* %nPoints, align 4, !tbaa !1
  %cmp451 = icmp slt i32 %390, %391
  br i1 %cmp451, label %for.body.453, label %for.end.465

for.body.453:                                     ; preds = %for.cond.450
  %392 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom454 = sext i32 %392 to i64
  %393 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch455 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %393, i32 0, i32 6
  %394 = load i8*, i8** %touch455, align 8, !tbaa !86
  %arrayidx456 = getelementptr inbounds i8, i8* %394, i64 %idxprom454
  %395 = load i8, i8* %arrayidx456, align 1, !tbaa !53
  %conv457 = zext i8 %395 to i32
  %and458 = and i32 %conv457, 1
  %conv459 = trunc i32 %and458 to i8
  %396 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom460 = sext i32 %396 to i64
  %397 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch461 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %397, i32 0, i32 6
  %398 = load i8*, i8** %touch461, align 8, !tbaa !86
  %arrayidx462 = getelementptr inbounds i8, i8* %398, i64 %idxprom460
  store i8 %conv459, i8* %arrayidx462, align 1, !tbaa !53
  br label %for.inc.463

for.inc.463:                                      ; preds = %for.body.453
  %399 = load i32, i32* %k, align 4, !tbaa !1
  %inc464 = add nsw i32 %399, 1
  store i32 %inc464, i32* %k, align 4, !tbaa !1
  br label %for.cond.450

for.end.465:                                      ; preds = %for.cond.450
  %400 = load i32, i32* %nPoints, align 4, !tbaa !1
  %401 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  call void @org_to_cur(i32 %400, %struct._TGlyph_Zone* %401) #6
  %402 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %is_composite = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %402, i32 0, i32 44
  store i32 1, i32* %is_composite, align 4, !tbaa !177
  %403 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %patented = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %403, i32 0, i32 19
  %404 = load i32, i32* %patented, align 4, !tbaa !180
  %tobool466 = icmp ne i32 %404, 0
  br i1 %tobool466, label %if.then.467, label %if.else.468

if.then.467:                                      ; preds = %for.end.465
  store i32 32, i32* %code356, align 4, !tbaa !1
  br label %if.end.470

if.else.468:                                      ; preds = %for.end.465
  %405 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %call469 = call i32 @Context_Run(%struct._TExecution_Context* %405, i32 0) #6
  store i32 %call469, i32* %code356, align 4, !tbaa !1
  br label %if.end.470

if.end.470:                                       ; preds = %if.else.468, %if.then.467
  %406 = load i32, i32* %code356, align 4, !tbaa !1
  %tobool471 = icmp ne i32 %406, 0
  br i1 %tobool471, label %if.else.473, label %if.then.472

if.then.472:                                      ; preds = %if.end.470
  %407 = load i32, i32* %nPoints, align 4, !tbaa !1
  %408 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  call void @cur_to_org(i32 %407, %struct._TGlyph_Zone* %408) #6
  br label %if.end.487

if.else.473:                                      ; preds = %if.end.470
  %409 = load i32, i32* %code356, align 4, !tbaa !1
  %cmp474 = icmp eq i32 %409, 32
  br i1 %cmp474, label %if.then.476, label %if.else.477

if.then.476:                                      ; preds = %if.else.473
  store i32 8, i32* %error, align 4, !tbaa !53
  br label %if.end.486

if.else.477:                                      ; preds = %if.else.473
  %410 = load i32, i32* %error, align 4, !tbaa !53
  %cmp478 = icmp uge i32 %410, 1024
  br i1 %cmp478, label %if.then.483, label %lor.lhs.false.480

lor.lhs.false.480:                                ; preds = %if.else.477
  %411 = load i32, i32* %error, align 4, !tbaa !53
  %cmp481 = icmp ule i32 %411, 1040
  br i1 %cmp481, label %if.then.483, label %if.else.484

if.then.483:                                      ; preds = %lor.lhs.false.480, %if.else.477
  store i32 9, i32* %error, align 4, !tbaa !53
  br label %if.end.485

if.else.484:                                      ; preds = %lor.lhs.false.480
  store i32 7, i32* %error, align 4, !tbaa !53
  br label %if.end.485

if.end.485:                                       ; preds = %if.else.484, %if.then.483
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.then.476
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %if.then.472
  %412 = bitcast i32* %x374 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %413 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #1
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.end.368
  %414 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  call void @Unset_CodeRange(%struct._TExecution_Context* %414) #6
  %415 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %call489 = call i32 @Clear_CodeRange(%struct._TExecution_Context* %415, i32 3) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.490

cleanup.490:                                      ; preds = %if.then.367, %if.then.362, %if.end.488
  %416 = bitcast i32* %code356 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %cleanup.dest.491 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.491, label %cleanup.494 [
    i32 0, label %cleanup.cont.492
  ]

cleanup.cont.492:                                 ; preds = %cleanup.490
  br label %if.end.493

if.end.493:                                       ; preds = %cleanup.cont.492, %land.lhs.true.351, %land.lhs.true.349, %for.end.347
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.494

cleanup.494:                                      ; preds = %if.then.180, %if.end.493, %cleanup.490, %cleanup.337, %cleanup, %if.then.84
  %417 = bitcast i32* %n_ins to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast i32* %nPos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = bitcast i32* %nUsage to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #1
  %420 = bitcast i16* %bHaveInstructions to i8*
  call void @llvm.lifetime.end(i64 2, i8* %420) #1
  %421 = bitcast i16* %index to i8*
  call void @llvm.lifetime.end(i64 2, i8* %421) #1
  %422 = bitcast i16* %flags to i8*
  call void @llvm.lifetime.end(i64 2, i8* %422) #1
  %cleanup.dest.500 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.500, label %cleanup.880 [
    i32 0, label %cleanup.cont.501
    i32 3, label %errex
    i32 6, label %ex
  ]

cleanup.cont.501:                                 ; preds = %cleanup.494
  br label %if.end.858

if.else.502:                                      ; preds = %if.else
  %423 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount503 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %423, i32 0, i32 1
  %424 = load i32, i32* %contourCount503, align 4, !tbaa !102
  %cmp504 = icmp sgt i32 %424, 0
  br i1 %cmp504, label %if.then.506, label %if.else.856

if.then.506:                                      ; preds = %if.else.502
  %425 = bitcast i16* %i507 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %425) #1
  %426 = bitcast i32* %bInsOK to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #1
  %427 = bitcast i8** %onCurve to i8*
  call void @llvm.lifetime.start(i64 8, i8* %427) #1
  %428 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %428) #1
  call void @llvm.lifetime.start(i64 1, i8* %flag) #1
  %429 = bitcast i16** %endPoints to i8*
  call void @llvm.lifetime.start(i64 8, i8* %429) #1
  %430 = bitcast i32* %nPos508 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %430) #1
  %431 = bitcast i32* %n_ins509 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %431) #1
  %432 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nContoursTotal = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %432, i32 0, i32 4
  %433 = load i32, i32* %nContoursTotal, align 4, !tbaa !125
  %434 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount510 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %434, i32 0, i32 1
  %435 = load i32, i32* %contourCount510, align 4, !tbaa !102
  %add511 = add nsw i32 %433, %435
  %436 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %n_contours512 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %436, i32 0, i32 57
  %437 = load i32, i32* %n_contours512, align 4, !tbaa !181
  %cmp513 = icmp sgt i32 %add511, %437
  br i1 %cmp513, label %if.then.515, label %if.end.516

if.then.515:                                      ; preds = %if.then.506
  store i32 7, i32* %error, align 4, !tbaa !53
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.846

if.end.516:                                       ; preds = %if.then.506
  %438 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %contours517 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %438, i32 0, i32 7
  %439 = load i16*, i16** %contours517, align 8, !tbaa !84
  store i16* %439, i16** %endPoints, align 8, !tbaa !8
  store i16 0, i16* %i507, align 2, !tbaa !70
  br label %for.cond.518

for.cond.518:                                     ; preds = %for.inc.527, %if.end.516
  %440 = load i16, i16* %i507, align 2, !tbaa !70
  %conv519 = zext i16 %440 to i32
  %441 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount520 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %441, i32 0, i32 1
  %442 = load i32, i32* %contourCount520, align 4, !tbaa !102
  %cmp521 = icmp slt i32 %conv519, %442
  br i1 %cmp521, label %for.body.523, label %for.end.529

for.body.523:                                     ; preds = %for.cond.518
  %443 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call524 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %443) #6
  %444 = load i16, i16* %i507, align 2, !tbaa !70
  %idxprom525 = zext i16 %444 to i64
  %445 = load i16*, i16** %endPoints, align 8, !tbaa !8
  %arrayidx526 = getelementptr inbounds i16, i16* %445, i64 %idxprom525
  store i16 %call524, i16* %arrayidx526, align 2, !tbaa !70
  br label %for.inc.527

for.inc.527:                                      ; preds = %for.body.523
  %446 = load i16, i16* %i507, align 2, !tbaa !70
  %inc528 = add i16 %446, 1
  store i16 %inc528, i16* %i507, align 2, !tbaa !70
  br label %for.cond.518

for.end.529:                                      ; preds = %for.cond.518
  store i16 1, i16* %i507, align 2, !tbaa !70
  br label %for.cond.530

for.cond.530:                                     ; preds = %for.inc.548, %for.end.529
  %447 = load i16, i16* %i507, align 2, !tbaa !70
  %conv531 = zext i16 %447 to i32
  %448 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount532 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %448, i32 0, i32 1
  %449 = load i32, i32* %contourCount532, align 4, !tbaa !102
  %cmp533 = icmp slt i32 %conv531, %449
  br i1 %cmp533, label %for.body.535, label %for.end.550

for.body.535:                                     ; preds = %for.cond.530
  %450 = load i16, i16* %i507, align 2, !tbaa !70
  %conv536 = zext i16 %450 to i32
  %sub537 = sub nsw i32 %conv536, 1
  %idxprom538 = sext i32 %sub537 to i64
  %451 = load i16*, i16** %endPoints, align 8, !tbaa !8
  %arrayidx539 = getelementptr inbounds i16, i16* %451, i64 %idxprom538
  %452 = load i16, i16* %arrayidx539, align 2, !tbaa !70
  %conv540 = sext i16 %452 to i32
  %453 = load i16, i16* %i507, align 2, !tbaa !70
  %idxprom541 = zext i16 %453 to i64
  %454 = load i16*, i16** %endPoints, align 8, !tbaa !8
  %arrayidx542 = getelementptr inbounds i16, i16* %454, i64 %idxprom541
  %455 = load i16, i16* %arrayidx542, align 2, !tbaa !70
  %conv543 = sext i16 %455 to i32
  %cmp544 = icmp sge i32 %conv540, %conv543
  br i1 %cmp544, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %for.body.535
  store i32 7, i32* %error, align 4, !tbaa !53
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.846

if.end.547:                                       ; preds = %for.body.535
  br label %for.inc.548

for.inc.548:                                      ; preds = %if.end.547
  %456 = load i16, i16* %i507, align 2, !tbaa !70
  %inc549 = add i16 %456, 1
  store i16 %inc549, i16* %i507, align 2, !tbaa !70
  br label %for.cond.530

for.end.550:                                      ; preds = %for.cond.530
  %457 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount551 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %457, i32 0, i32 1
  %458 = load i32, i32* %contourCount551, align 4, !tbaa !102
  %sub552 = sub nsw i32 %458, 1
  %idxprom553 = sext i32 %sub552 to i64
  %459 = load i16*, i16** %endPoints, align 8, !tbaa !8
  %arrayidx554 = getelementptr inbounds i16, i16* %459, i64 %idxprom553
  %460 = load i16, i16* %arrayidx554, align 2, !tbaa !70
  %conv555 = sext i16 %460 to i32
  %add556 = add nsw i32 %conv555, 1
  %461 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount557 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %461, i32 0, i32 2
  store i32 %add556, i32* %pointCount557, align 4, !tbaa !158
  store i32 %add556, i32* %nPoints, align 4, !tbaa !1
  %462 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nPointsTotal = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %462, i32 0, i32 3
  %463 = load i32, i32* %nPointsTotal, align 4, !tbaa !124
  %464 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add558 = add nsw i32 %463, %464
  %add559 = add nsw i32 %add558, 2
  %465 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %n_points560 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %465, i32 0, i32 58
  %466 = load i32, i32* %n_points560, align 4, !tbaa !182
  %cmp561 = icmp sgt i32 %add559, %466
  br i1 %cmp561, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %for.end.550
  store i32 7, i32* %error, align 4, !tbaa !53
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.846

if.end.564:                                       ; preds = %for.end.550
  %467 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call565 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %467) #6
  %conv566 = sext i16 %call565 to i32
  store i32 %conv566, i32* %n_ins509, align 4, !tbaa !1
  %468 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Tell567 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %468, i32 0, i32 3
  %469 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Tell567, align 8, !tbaa !143
  %470 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call568 = call i32 %469(%struct.ttfReader_s* %470) #6
  store i32 %call568, i32* %nPos508, align 4, !tbaa !1
  %471 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Seek = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %471, i32 0, i32 2
  %472 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek, align 8, !tbaa !52
  %473 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %474 = load i32, i32* %nPos508, align 4, !tbaa !1
  %475 = load i32, i32* %n_ins509, align 4, !tbaa !1
  %add569 = add i32 %474, %475
  call void %472(%struct.ttfReader_s* %473, i32 %add569) #6
  %476 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Error570 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %476, i32 0, i32 4
  %477 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error570, align 8, !tbaa !67
  %478 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call571 = call i32 %477(%struct.ttfReader_s* %478) #6
  %tobool572 = icmp ne i32 %call571, 0
  br i1 %tobool572, label %if.then.573, label %if.end.574

if.then.573:                                      ; preds = %if.end.564
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.846

if.end.574:                                       ; preds = %if.end.564
  %479 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %480 = load i8*, i8** %glyph, align 8, !tbaa !8
  %481 = load i32, i32* %nPos508, align 4, !tbaa !1
  %idx.ext575 = zext i32 %481 to i64
  %add.ptr576 = getelementptr inbounds i8, i8* %480, i64 %idx.ext575
  %482 = load i32, i32* %n_ins509, align 4, !tbaa !1
  %call577 = call i32 @Set_CodeRange(%struct._TExecution_Context* %479, i32 3, i8* %add.ptr576, i32 %482) #6
  %tobool578 = icmp ne i32 %call577, 0
  %lnot = xor i1 %tobool578, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bInsOK, align 4, !tbaa !1
  %483 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch579 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %483, i32 0, i32 6
  %484 = load i8*, i8** %touch579, align 8, !tbaa !86
  store i8* %484, i8** %onCurve, align 8, !tbaa !8
  %485 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %486 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %pointCount580 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %486, i32 0, i32 2
  %487 = load i32, i32* %pointCount580, align 4, !tbaa !158
  %idx.ext581 = zext i32 %487 to i64
  %add.ptr582 = getelementptr inbounds i8, i8* %485, i64 %idx.ext581
  store i8* %add.ptr582, i8** %stop, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end.603, %if.end.574
  %488 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %489 = load i8*, i8** %stop, align 8, !tbaa !8
  %cmp583 = icmp ult i8* %488, %489
  br i1 %cmp583, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %490 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call585 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %490) #6
  store i8 %call585, i8* %flag, align 1, !tbaa !53
  %491 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %incdec.ptr, i8** %onCurve, align 8, !tbaa !8
  store i8 %call585, i8* %491, align 1, !tbaa !53
  %492 = load i8, i8* %flag, align 1, !tbaa !53
  %conv586 = zext i8 %492 to i32
  %and587 = and i32 %conv586, 8
  %tobool588 = icmp ne i32 %and587, 0
  br i1 %tobool588, label %if.then.589, label %if.end.603

if.then.589:                                      ; preds = %while.body
  %493 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call590 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %493) #6
  %conv591 = zext i8 %call590 to i16
  store i16 %conv591, i16* %count, align 2, !tbaa !70
  %494 = load i16, i16* %count, align 2, !tbaa !70
  %dec = add i16 %494, -1
  store i16 %dec, i16* %count, align 2, !tbaa !70
  br label %for.cond.592

for.cond.592:                                     ; preds = %for.inc.600, %if.then.589
  %495 = load i16, i16* %count, align 2, !tbaa !70
  %conv593 = sext i16 %495 to i32
  %cmp594 = icmp sge i32 %conv593, 0
  br i1 %cmp594, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.592
  %496 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %497 = load i8*, i8** %stop, align 8, !tbaa !8
  %cmp596 = icmp ult i8* %496, %497
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.592
  %498 = phi i1 [ false, %for.cond.592 ], [ %cmp596, %land.rhs ]
  br i1 %498, label %for.body.598, label %for.end.602

for.body.598:                                     ; preds = %land.end
  %499 = load i8, i8* %flag, align 1, !tbaa !53
  %500 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %incdec.ptr599 = getelementptr inbounds i8, i8* %500, i32 1
  store i8* %incdec.ptr599, i8** %onCurve, align 8, !tbaa !8
  store i8 %499, i8* %500, align 1, !tbaa !53
  br label %for.inc.600

for.inc.600:                                      ; preds = %for.body.598
  %501 = load i16, i16* %count, align 2, !tbaa !70
  %dec601 = add i16 %501, -1
  store i16 %dec601, i16* %count, align 2, !tbaa !70
  br label %for.cond.592

for.end.602:                                      ; preds = %land.end
  br label %if.end.603

if.end.603:                                       ; preds = %for.end.602, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %502 = bitcast i16* %coord to i8*
  call void @llvm.lifetime.start(i64 2, i8* %502) #1
  %503 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %bVertical604 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %503, i32 0, i32 2
  %504 = load i32, i32* %bVertical604, align 4, !tbaa !82
  %tobool605 = icmp ne i32 %504, 0
  br i1 %tobool605, label %cond.true.606, label %cond.false.607

cond.true.606:                                    ; preds = %while.end
  br label %cond.end.612

cond.false.607:                                   ; preds = %while.end
  %505 = load i16, i16* %sideBearing, align 2, !tbaa !70
  %conv608 = sext i16 %505 to i32
  %bbox609 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %xMin610 = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox609, i32 0, i32 0
  %506 = load i32, i32* %xMin610, align 4, !tbaa !144
  %sub611 = sub nsw i32 %conv608, %506
  br label %cond.end.612

cond.end.612:                                     ; preds = %cond.false.607, %cond.true.606
  %cond613 = phi i32 [ 0, %cond.true.606 ], [ %sub611, %cond.false.607 ]
  %conv614 = trunc i32 %cond613 to i16
  store i16 %conv614, i16* %coord, align 2, !tbaa !70
  %507 = bitcast i32** %x615 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %507) #1
  %508 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_x616 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %508, i32 0, i32 2
  %509 = load i32*, i32** %org_x616, align 8, !tbaa !87
  store i32* %509, i32** %x615, align 8, !tbaa !8
  %510 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch617 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %510, i32 0, i32 6
  %511 = load i8*, i8** %touch617, align 8, !tbaa !86
  store i8* %511, i8** %onCurve, align 8, !tbaa !8
  br label %while.cond.618

while.cond.618:                                   ; preds = %if.end.654, %cond.end.612
  %512 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %513 = load i8*, i8** %stop, align 8, !tbaa !8
  %cmp619 = icmp ult i8* %512, %513
  br i1 %cmp619, label %while.body.621, label %while.end.659

while.body.621:                                   ; preds = %while.cond.618
  %514 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %incdec.ptr622 = getelementptr inbounds i8, i8* %514, i32 1
  store i8* %incdec.ptr622, i8** %onCurve, align 8, !tbaa !8
  %515 = load i8, i8* %514, align 1, !tbaa !53
  store i8 %515, i8* %flag, align 1, !tbaa !53
  %conv623 = zext i8 %515 to i32
  %and624 = and i32 %conv623, 2
  %tobool625 = icmp ne i32 %and624, 0
  br i1 %tobool625, label %if.then.626, label %if.else.643

if.then.626:                                      ; preds = %while.body.621
  %516 = load i8, i8* %flag, align 1, !tbaa !53
  %conv627 = zext i8 %516 to i32
  %and628 = and i32 %conv627, 16
  %tobool629 = icmp ne i32 %and628, 0
  br i1 %tobool629, label %if.then.630, label %if.else.636

if.then.630:                                      ; preds = %if.then.626
  %517 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call631 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %517) #6
  %conv632 = zext i8 %call631 to i32
  %518 = load i16, i16* %coord, align 2, !tbaa !70
  %conv633 = sext i16 %518 to i32
  %add634 = add nsw i32 %conv633, %conv632
  %conv635 = trunc i32 %add634 to i16
  store i16 %conv635, i16* %coord, align 2, !tbaa !70
  br label %if.end.642

if.else.636:                                      ; preds = %if.then.626
  %519 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call637 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %519) #6
  %conv638 = zext i8 %call637 to i32
  %520 = load i16, i16* %coord, align 2, !tbaa !70
  %conv639 = sext i16 %520 to i32
  %sub640 = sub nsw i32 %conv639, %conv638
  %conv641 = trunc i32 %sub640 to i16
  store i16 %conv641, i16* %coord, align 2, !tbaa !70
  br label %if.end.642

if.end.642:                                       ; preds = %if.else.636, %if.then.630
  br label %if.end.654

if.else.643:                                      ; preds = %while.body.621
  %521 = load i8, i8* %flag, align 1, !tbaa !53
  %conv644 = zext i8 %521 to i32
  %and645 = and i32 %conv644, 16
  %tobool646 = icmp ne i32 %and645, 0
  br i1 %tobool646, label %if.end.653, label %if.then.647

if.then.647:                                      ; preds = %if.else.643
  %522 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call648 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %522) #6
  %conv649 = sext i16 %call648 to i32
  %523 = load i16, i16* %coord, align 2, !tbaa !70
  %conv650 = sext i16 %523 to i32
  %add651 = add nsw i32 %conv650, %conv649
  %conv652 = trunc i32 %add651 to i16
  store i16 %conv652, i16* %coord, align 2, !tbaa !70
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.647, %if.else.643
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.end.642
  %524 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics655 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %524, i32 0, i32 31
  %525 = load i16, i16* %coord, align 2, !tbaa !70
  %conv656 = sext i16 %525 to i32
  %call657 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics655, i32 %conv656) #6
  %526 = load i32*, i32** %x615, align 8, !tbaa !8
  %incdec.ptr658 = getelementptr inbounds i32, i32* %526, i32 1
  store i32* %incdec.ptr658, i32** %x615, align 8, !tbaa !8
  store i32 %call657, i32* %526, align 4, !tbaa !1
  br label %while.cond.618

while.end.659:                                    ; preds = %while.cond.618
  %527 = bitcast i32** %x615 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %527) #1
  %528 = bitcast i16* %coord to i8*
  call void @llvm.lifetime.end(i64 2, i8* %528) #1
  %529 = bitcast i16* %coord660 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %529) #1
  store i16 0, i16* %coord660, align 2, !tbaa !70
  %530 = bitcast i32** %y661 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %530) #1
  %531 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %org_y662 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %531, i32 0, i32 3
  %532 = load i32*, i32** %org_y662, align 8, !tbaa !88
  store i32* %532, i32** %y661, align 8, !tbaa !8
  %533 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %touch663 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %533, i32 0, i32 6
  %534 = load i8*, i8** %touch663, align 8, !tbaa !86
  store i8* %534, i8** %onCurve, align 8, !tbaa !8
  br label %while.cond.664

while.cond.664:                                   ; preds = %if.end.699, %while.end.659
  %535 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %536 = load i8*, i8** %stop, align 8, !tbaa !8
  %cmp665 = icmp ult i8* %535, %536
  br i1 %cmp665, label %while.body.667, label %while.end.708

while.body.667:                                   ; preds = %while.cond.664
  %537 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %538 = load i8, i8* %537, align 1, !tbaa !53
  store i8 %538, i8* %flag, align 1, !tbaa !53
  %conv668 = zext i8 %538 to i32
  %and669 = and i32 %conv668, 4
  %tobool670 = icmp ne i32 %and669, 0
  br i1 %tobool670, label %if.then.671, label %if.else.688

if.then.671:                                      ; preds = %while.body.667
  %539 = load i8, i8* %flag, align 1, !tbaa !53
  %conv672 = zext i8 %539 to i32
  %and673 = and i32 %conv672, 32
  %tobool674 = icmp ne i32 %and673, 0
  br i1 %tobool674, label %if.then.675, label %if.else.681

if.then.675:                                      ; preds = %if.then.671
  %540 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call676 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %540) #6
  %conv677 = zext i8 %call676 to i32
  %541 = load i16, i16* %coord660, align 2, !tbaa !70
  %conv678 = sext i16 %541 to i32
  %add679 = add nsw i32 %conv678, %conv677
  %conv680 = trunc i32 %add679 to i16
  store i16 %conv680, i16* %coord660, align 2, !tbaa !70
  br label %if.end.687

if.else.681:                                      ; preds = %if.then.671
  %542 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call682 = call zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %542) #6
  %conv683 = zext i8 %call682 to i32
  %543 = load i16, i16* %coord660, align 2, !tbaa !70
  %conv684 = sext i16 %543 to i32
  %sub685 = sub nsw i32 %conv684, %conv683
  %conv686 = trunc i32 %sub685 to i16
  store i16 %conv686, i16* %coord660, align 2, !tbaa !70
  br label %if.end.687

if.end.687:                                       ; preds = %if.else.681, %if.then.675
  br label %if.end.699

if.else.688:                                      ; preds = %while.body.667
  %544 = load i8, i8* %flag, align 1, !tbaa !53
  %conv689 = zext i8 %544 to i32
  %and690 = and i32 %conv689, 32
  %tobool691 = icmp ne i32 %and690, 0
  br i1 %tobool691, label %if.end.698, label %if.then.692

if.then.692:                                      ; preds = %if.else.688
  %545 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call693 = call signext i16 @ttfReader__Short(%struct.ttfReader_s* %545) #6
  %conv694 = sext i16 %call693 to i32
  %546 = load i16, i16* %coord660, align 2, !tbaa !70
  %conv695 = sext i16 %546 to i32
  %add696 = add nsw i32 %conv695, %conv694
  %conv697 = trunc i32 %add696 to i16
  store i16 %conv697, i16* %coord660, align 2, !tbaa !70
  br label %if.end.698

if.end.698:                                       ; preds = %if.then.692, %if.else.688
  br label %if.end.699

if.end.699:                                       ; preds = %if.end.698, %if.end.687
  %547 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics700 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %547, i32 0, i32 31
  %548 = load i16, i16* %coord660, align 2, !tbaa !70
  %conv701 = sext i16 %548 to i32
  %call702 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics700, i32 %conv701) #6
  %549 = load i32*, i32** %y661, align 8, !tbaa !8
  %incdec.ptr703 = getelementptr inbounds i32, i32* %549, i32 1
  store i32* %incdec.ptr703, i32** %y661, align 8, !tbaa !8
  store i32 %call702, i32* %549, align 4, !tbaa !1
  %550 = load i8, i8* %flag, align 1, !tbaa !53
  %conv704 = zext i8 %550 to i32
  %and705 = and i32 %conv704, 1
  %conv706 = trunc i32 %and705 to i8
  %551 = load i8*, i8** %onCurve, align 8, !tbaa !8
  %incdec.ptr707 = getelementptr inbounds i8, i8* %551, i32 1
  store i8* %incdec.ptr707, i8** %onCurve, align 8, !tbaa !8
  store i8 %conv706, i8* %551, align 1, !tbaa !53
  br label %while.cond.664

while.end.708:                                    ; preds = %while.cond.664
  %552 = bitcast i32** %y661 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %552) #1
  %553 = bitcast i16* %coord660 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %553) #1
  %554 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %555 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %556 = load %struct.FixMatrix*, %struct.FixMatrix** %m_orig.addr, align 8, !tbaa !8
  call void @MoveGlyphOutline(%struct._TGlyph_Zone* %554, i32 0, %struct.ttfGlyphOutline* %555, %struct.FixMatrix* %556) #6
  %557 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount709 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %557, i32 0, i32 1
  %558 = load i32, i32* %contourCount709, align 4, !tbaa !102
  %559 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nContoursTotal710 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %559, i32 0, i32 4
  %560 = load i32, i32* %nContoursTotal710, align 4, !tbaa !125
  %add711 = add nsw i32 %560, %558
  store i32 %add711, i32* %nContoursTotal710, align 4, !tbaa !125
  %561 = load i32, i32* %nPoints, align 4, !tbaa !1
  %562 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nPointsTotal712 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %562, i32 0, i32 3
  %563 = load i32, i32* %nPointsTotal712, align 4, !tbaa !124
  %add713 = add nsw i32 %563, %561
  store i32 %add713, i32* %nPointsTotal712, align 4, !tbaa !124
  %564 = load i32, i32* %execute_bytecode, align 4, !tbaa !1
  %tobool714 = icmp ne i32 %564, 0
  br i1 %tobool714, label %land.lhs.true.715, label %if.end.844

land.lhs.true.715:                                ; preds = %while.end.708
  %565 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Error716 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %565, i32 0, i32 4
  %566 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error716, align 8, !tbaa !67
  %567 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %call717 = call i32 %566(%struct.ttfReader_s* %567) #6
  %tobool718 = icmp ne i32 %call717, 0
  br i1 %tobool718, label %if.end.844, label %land.lhs.true.719

land.lhs.true.719:                                ; preds = %land.lhs.true.715
  %568 = load i32, i32* %n_ins509, align 4, !tbaa !1
  %tobool720 = icmp ne i32 %568, 0
  br i1 %tobool720, label %land.lhs.true.721, label %if.end.844

land.lhs.true.721:                                ; preds = %land.lhs.true.719
  %569 = load i32, i32* %bInsOK, align 4, !tbaa !1
  %tobool722 = icmp ne i32 %569, 0
  br i1 %tobool722, label %land.lhs.true.723, label %if.end.844

land.lhs.true.723:                                ; preds = %land.lhs.true.721
  %570 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %inst724 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %570, i32 0, i32 22
  %571 = load %struct._TInstance*, %struct._TInstance** %inst724, align 8, !tbaa !45
  %GS725 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %571, i32 0, i32 10
  %instruct_control726 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS725, i32 0, i32 15
  %572 = load i8, i8* %instruct_control726, align 1, !tbaa !132
  %conv727 = zext i8 %572 to i32
  %and728 = and i32 %conv727, 1
  %tobool729 = icmp ne i32 %and728, 0
  br i1 %tobool729, label %if.end.844, label %if.then.730

if.then.730:                                      ; preds = %land.lhs.true.723
  %573 = bitcast %struct._TGlyph_Zone** %pts731 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %573) #1
  %574 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %pts732 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %574, i32 0, i32 39
  store %struct._TGlyph_Zone* %pts732, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %575 = bitcast i32* %k733 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %575) #1
  %576 = bitcast i32* %x734 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %576) #1
  %577 = bitcast i32* %code735 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %577) #1
  %578 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %is_composite736 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %578, i32 0, i32 44
  store i32 0, i32* %is_composite736, align 4, !tbaa !177
  %579 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics737 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %579, i32 0, i32 31
  %pp1738 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %x739 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp1738, i32 0, i32 0
  %580 = load i32, i32* %x739, align 4, !tbaa !154
  %call740 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics737, i32 %580) #6
  %581 = load i32, i32* %nPoints, align 4, !tbaa !1
  %idxprom741 = sext i32 %581 to i64
  %582 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %org_x742 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %582, i32 0, i32 2
  %583 = load i32*, i32** %org_x742, align 8, !tbaa !87
  %arrayidx743 = getelementptr inbounds i32, i32* %583, i64 %idxprom741
  store i32 %call740, i32* %arrayidx743, align 4, !tbaa !1
  %584 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics744 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %584, i32 0, i32 31
  %pp1745 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %y746 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp1745, i32 0, i32 1
  %585 = load i32, i32* %y746, align 4, !tbaa !155
  %call747 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics744, i32 %585) #6
  %586 = load i32, i32* %nPoints, align 4, !tbaa !1
  %idxprom748 = sext i32 %586 to i64
  %587 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %org_y749 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %587, i32 0, i32 3
  %588 = load i32*, i32** %org_y749, align 8, !tbaa !88
  %arrayidx750 = getelementptr inbounds i32, i32* %588, i64 %idxprom748
  store i32 %call747, i32* %arrayidx750, align 4, !tbaa !1
  %589 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics751 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %589, i32 0, i32 31
  %pp2752 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 12
  %x753 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp2752, i32 0, i32 0
  %590 = load i32, i32* %x753, align 4, !tbaa !156
  %call754 = call i32 @Scale_X(%struct._TIns_Metrics* %metrics751, i32 %590) #6
  %591 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add755 = add nsw i32 %591, 1
  %idxprom756 = sext i32 %add755 to i64
  %592 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %org_x757 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %592, i32 0, i32 2
  %593 = load i32*, i32** %org_x757, align 8, !tbaa !87
  %arrayidx758 = getelementptr inbounds i32, i32* %593, i64 %idxprom756
  store i32 %call754, i32* %arrayidx758, align 4, !tbaa !1
  %594 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %metrics759 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %594, i32 0, i32 31
  %pp2760 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 12
  %y761 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp2760, i32 0, i32 1
  %595 = load i32, i32* %y761, align 4, !tbaa !157
  %call762 = call i32 @Scale_Y(%struct._TIns_Metrics* %metrics759, i32 %595) #6
  %596 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add763 = add nsw i32 %596, 1
  %idxprom764 = sext i32 %add763 to i64
  %597 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %org_y765 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %597, i32 0, i32 3
  %598 = load i32*, i32** %org_y765, align 8, !tbaa !88
  %arrayidx766 = getelementptr inbounds i32, i32* %598, i64 %idxprom764
  store i32 %call762, i32* %arrayidx766, align 4, !tbaa !1
  %599 = load i32, i32* %nPoints, align 4, !tbaa !1
  %idxprom767 = sext i32 %599 to i64
  %600 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %touch768 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %600, i32 0, i32 6
  %601 = load i8*, i8** %touch768, align 8, !tbaa !86
  %arrayidx769 = getelementptr inbounds i8, i8* %601, i64 %idxprom767
  store i8 0, i8* %arrayidx769, align 1, !tbaa !53
  %602 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add770 = add nsw i32 %602, 1
  %idxprom771 = sext i32 %add770 to i64
  %603 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %touch772 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %603, i32 0, i32 6
  %604 = load i8*, i8** %touch772, align 8, !tbaa !86
  %arrayidx773 = getelementptr inbounds i8, i8* %604, i64 %idxprom771
  store i8 0, i8* %arrayidx773, align 1, !tbaa !53
  %605 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add774 = add nsw i32 %605, 2
  %606 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %n_points775 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %606, i32 0, i32 0
  store i32 %add774, i32* %n_points775, align 4, !tbaa !175
  %607 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount776 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %607, i32 0, i32 1
  %608 = load i32, i32* %contourCount776, align 4, !tbaa !102
  %609 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %n_contours777 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %609, i32 0, i32 1
  store i32 %608, i32* %n_contours777, align 4, !tbaa !176
  %610 = load i32, i32* %nPoints, align 4, !tbaa !1
  %idxprom778 = sext i32 %610 to i64
  %611 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %org_x779 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %611, i32 0, i32 2
  %612 = load i32*, i32** %org_x779, align 8, !tbaa !87
  %arrayidx780 = getelementptr inbounds i32, i32* %612, i64 %idxprom778
  %613 = load i32, i32* %arrayidx780, align 4, !tbaa !1
  store i32 %613, i32* %x734, align 4, !tbaa !1
  %614 = load i32, i32* %x734, align 4, !tbaa !1
  %add781 = add nsw i32 %614, 32
  %and782 = and i32 %add781, -64
  %615 = load i32, i32* %x734, align 4, !tbaa !1
  %sub783 = sub nsw i32 %and782, %615
  store i32 %sub783, i32* %x734, align 4, !tbaa !1
  %616 = load i32, i32* %x734, align 4, !tbaa !1
  %tobool784 = icmp ne i32 %616, 0
  br i1 %tobool784, label %if.then.785, label %if.end.798

if.then.785:                                      ; preds = %if.then.730
  store i32 0, i32* %k733, align 4, !tbaa !1
  br label %for.cond.786

for.cond.786:                                     ; preds = %for.inc.795, %if.then.785
  %617 = load i32, i32* %k733, align 4, !tbaa !1
  %618 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add787 = add nsw i32 %618, 2
  %cmp788 = icmp slt i32 %617, %add787
  br i1 %cmp788, label %for.body.790, label %for.end.797

for.body.790:                                     ; preds = %for.cond.786
  %619 = load i32, i32* %x734, align 4, !tbaa !1
  %620 = load i32, i32* %k733, align 4, !tbaa !1
  %idxprom791 = sext i32 %620 to i64
  %621 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %org_x792 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %621, i32 0, i32 2
  %622 = load i32*, i32** %org_x792, align 8, !tbaa !87
  %arrayidx793 = getelementptr inbounds i32, i32* %622, i64 %idxprom791
  %623 = load i32, i32* %arrayidx793, align 4, !tbaa !1
  %add794 = add nsw i32 %623, %619
  store i32 %add794, i32* %arrayidx793, align 4, !tbaa !1
  br label %for.inc.795

for.inc.795:                                      ; preds = %for.body.790
  %624 = load i32, i32* %k733, align 4, !tbaa !1
  %inc796 = add nsw i32 %624, 1
  store i32 %inc796, i32* %k733, align 4, !tbaa !1
  br label %for.cond.786

for.end.797:                                      ; preds = %for.cond.786
  br label %if.end.798

if.end.798:                                       ; preds = %for.end.797, %if.then.730
  %625 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add799 = add nsw i32 %625, 2
  %626 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  call void @org_to_cur(i32 %add799, %struct._TGlyph_Zone* %626) #6
  %627 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %is_composite800 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %627, i32 0, i32 44
  store i32 0, i32* %is_composite800, align 4, !tbaa !177
  store i32 0, i32* %k733, align 4, !tbaa !1
  br label %for.cond.801

for.cond.801:                                     ; preds = %for.inc.812, %if.end.798
  %628 = load i32, i32* %k733, align 4, !tbaa !1
  %629 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add802 = add nsw i32 %629, 2
  %cmp803 = icmp slt i32 %628, %add802
  br i1 %cmp803, label %for.body.805, label %for.end.814

for.body.805:                                     ; preds = %for.cond.801
  %630 = load i32, i32* %k733, align 4, !tbaa !1
  %idxprom806 = sext i32 %630 to i64
  %631 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  %touch807 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %631, i32 0, i32 6
  %632 = load i8*, i8** %touch807, align 8, !tbaa !86
  %arrayidx808 = getelementptr inbounds i8, i8* %632, i64 %idxprom806
  %633 = load i8, i8* %arrayidx808, align 1, !tbaa !53
  %conv809 = zext i8 %633 to i32
  %and810 = and i32 %conv809, 1
  %conv811 = trunc i32 %and810 to i8
  store i8 %conv811, i8* %arrayidx808, align 1, !tbaa !53
  br label %for.inc.812

for.inc.812:                                      ; preds = %for.body.805
  %634 = load i32, i32* %k733, align 4, !tbaa !1
  %inc813 = add nsw i32 %634, 1
  store i32 %inc813, i32* %k733, align 4, !tbaa !1
  br label %for.cond.801

for.end.814:                                      ; preds = %for.cond.801
  %635 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %patented815 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %635, i32 0, i32 19
  %636 = load i32, i32* %patented815, align 4, !tbaa !180
  %tobool816 = icmp ne i32 %636, 0
  br i1 %tobool816, label %if.then.817, label %if.else.818

if.then.817:                                      ; preds = %for.end.814
  store i32 32, i32* %code735, align 4, !tbaa !1
  br label %if.end.820

if.else.818:                                      ; preds = %for.end.814
  %637 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %call819 = call i32 @Context_Run(%struct._TExecution_Context* %637, i32 0) #6
  store i32 %call819, i32* %code735, align 4, !tbaa !1
  br label %if.end.820

if.end.820:                                       ; preds = %if.else.818, %if.then.817
  %638 = load i32, i32* %code735, align 4, !tbaa !1
  %tobool821 = icmp ne i32 %638, 0
  br i1 %tobool821, label %if.else.824, label %if.then.822

if.then.822:                                      ; preds = %if.end.820
  %639 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add823 = add nsw i32 %639, 2
  %640 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts731, align 8, !tbaa !8
  call void @cur_to_org(i32 %add823, %struct._TGlyph_Zone* %640) #6
  br label %if.end.830

if.else.824:                                      ; preds = %if.end.820
  %641 = load i32, i32* %code735, align 4, !tbaa !1
  %cmp825 = icmp eq i32 %641, 32
  br i1 %cmp825, label %if.then.827, label %if.else.828

if.then.827:                                      ; preds = %if.else.824
  store i32 8, i32* %error, align 4, !tbaa !53
  br label %if.end.829

if.else.828:                                      ; preds = %if.else.824
  store i32 9, i32* %error, align 4, !tbaa !53
  br label %if.end.829

if.end.829:                                       ; preds = %if.else.828, %if.then.827
  br label %if.end.830

if.end.830:                                       ; preds = %if.end.829, %if.then.822
  %bbox831 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 5
  %xMin832 = getelementptr inbounds %struct._TT_BBox, %struct._TT_BBox* %bbox831, i32 0, i32 0
  %642 = load i32, i32* %xMin832, align 4, !tbaa !144
  %pp1833 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %x834 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp1833, i32 0, i32 0
  %643 = load i32, i32* %x834, align 4, !tbaa !154
  %sub835 = sub nsw i32 %642, %643
  %644 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %sideBearing836 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %644, i32 0, i32 4
  store i32 %sub835, i32* %sideBearing836, align 4, !tbaa !139
  %pp2837 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 12
  %x838 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp2837, i32 0, i32 0
  %645 = load i32, i32* %x838, align 4, !tbaa !156
  %pp1839 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %subglyph, i32 0, i32 11
  %x840 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %pp1839, i32 0, i32 0
  %646 = load i32, i32* %x840, align 4, !tbaa !154
  %sub841 = sub nsw i32 %645, %646
  %647 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %advance842 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %647, i32 0, i32 3
  %x843 = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %advance842, i32 0, i32 0
  store i32 %sub841, i32* %x843, align 4, !tbaa !93
  %648 = bitcast i32* %code735 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast i32* %x734 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %649) #1
  %650 = bitcast i32* %k733 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %650) #1
  %651 = bitcast %struct._TGlyph_Zone** %pts731 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %651) #1
  br label %if.end.844

if.end.844:                                       ; preds = %if.end.830, %land.lhs.true.723, %land.lhs.true.721, %land.lhs.true.719, %land.lhs.true.715, %while.end.708
  %652 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  call void @Unset_CodeRange(%struct._TExecution_Context* %652) #6
  %653 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %call845 = call i32 @Clear_CodeRange(%struct._TExecution_Context* %653, i32 3) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.846

cleanup.846:                                      ; preds = %if.then.573, %if.then.563, %if.then.546, %if.then.515, %if.end.844
  %654 = bitcast i32* %n_ins509 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %654) #1
  %655 = bitcast i32* %nPos508 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %655) #1
  %656 = bitcast i16** %endPoints to i8*
  call void @llvm.lifetime.end(i64 8, i8* %656) #1
  call void @llvm.lifetime.end(i64 1, i8* %flag) #1
  %657 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %657) #1
  %658 = bitcast i8** %onCurve to i8*
  call void @llvm.lifetime.end(i64 8, i8* %658) #1
  %659 = bitcast i32* %bInsOK to i8*
  call void @llvm.lifetime.end(i64 4, i8* %659) #1
  %660 = bitcast i16* %i507 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %660) #1
  %cleanup.dest.854 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.854, label %cleanup.880 [
    i32 0, label %cleanup.cont.855
    i32 3, label %errex
    i32 6, label %ex
  ]

cleanup.cont.855:                                 ; preds = %cleanup.846
  br label %if.end.857

if.else.856:                                      ; preds = %if.else.502
  store i32 7, i32* %error, align 4, !tbaa !53
  br label %if.end.857

if.end.857:                                       ; preds = %if.else.856, %cleanup.cont.855
  br label %if.end.858

if.end.858:                                       ; preds = %if.end.857, %cleanup.cont.501
  br label %if.end.859

if.end.859:                                       ; preds = %if.end.858, %if.then.75
  br label %ex

errex:                                            ; preds = %cleanup.846, %cleanup.494, %if.then.23, %if.then
  store i32 7, i32* %error, align 4, !tbaa !53
  br label %ex

ex:                                               ; preds = %errex, %cleanup.846, %cleanup.494, %if.end.859
  %661 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %ReleaseGlyph860 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %661, i32 0, i32 6
  %662 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %ReleaseGlyph860, align 8, !tbaa !142
  %663 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %664 = load i32, i32* %glyphIndex.addr, align 4, !tbaa !1
  call void %662(%struct.ttfReader_s* %663, i32 %664) #6
  %665 = load i32, i32* %error, align 4, !tbaa !53
  %cmp861 = icmp eq i32 %665, 9
  br i1 %cmp861, label %land.lhs.true.863, label %if.end.879

land.lhs.true.863:                                ; preds = %ex
  %666 = load i32, i32* %execute_bytecode, align 4, !tbaa !1
  %tobool864 = icmp ne i32 %666, 0
  br i1 %tobool864, label %if.then.865, label %if.end.879

if.then.865:                                      ; preds = %land.lhs.true.863
  store i32 0, i32* %nNextGlyphPtr, align 4, !tbaa !1
  %667 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !8
  %exec866 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %667, i32 0, i32 23
  %668 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec866, align 8, !tbaa !44
  store %struct._TExecution_Context* %668, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %669 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !8
  %pts867 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %669, i32 0, i32 39
  store %struct._TGlyph_Zone* %pts867, %struct._TGlyph_Zone** %pts, align 8, !tbaa !8
  %670 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage868 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %670, i32 0, i32 1
  %671 = load %struct.ttfSubGlyphUsage_s*, %struct.ttfSubGlyphUsage_s** %usage868, align 8, !tbaa !35
  %672 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !8
  %usage_top869 = getelementptr inbounds %struct.ttfInterpreter_s, %struct.ttfInterpreter_s* %672, i32 0, i32 3
  %673 = load i32, i32* %usage_top869, align 4, !tbaa !134
  %idx.ext870 = sext i32 %673 to i64
  %add.ptr871 = getelementptr inbounds %struct.ttfSubGlyphUsage_s, %struct.ttfSubGlyphUsage_s* %671, i64 %idx.ext870
  store %struct.ttfSubGlyphUsage_s* %add.ptr871, %struct.ttfSubGlyphUsage_s** %usage, align 8, !tbaa !8
  store i8* null, i8** %glyph, align 8, !tbaa !8
  %674 = load i32, i32* %nPoints, align 4, !tbaa !1
  %add872 = add nsw i32 %674, 2
  %675 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nPointsTotal873 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %675, i32 0, i32 3
  %676 = load i32, i32* %nPointsTotal873, align 4, !tbaa !124
  %sub874 = sub nsw i32 %676, %add872
  store i32 %sub874, i32* %nPointsTotal873, align 4, !tbaa !124
  store i32 0, i32* %nPoints, align 4, !tbaa !1
  %677 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %gOutline.addr, align 8, !tbaa !8
  %contourCount875 = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %677, i32 0, i32 1
  %678 = load i32, i32* %contourCount875, align 4, !tbaa !102
  %679 = load %struct.ttfOutliner*, %struct.ttfOutliner** %self.addr, align 8, !tbaa !8
  %nContoursTotal876 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %679, i32 0, i32 4
  %680 = load i32, i32* %nContoursTotal876, align 4, !tbaa !125
  %sub877 = sub nsw i32 %680, %678
  store i32 %sub877, i32* %nContoursTotal876, align 4, !tbaa !125
  store i32 0, i32* %error, align 4, !tbaa !53
  store i32 0, i32* %execute_bytecode, align 4, !tbaa !1
  %681 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %Seek878 = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %681, i32 0, i32 2
  %682 = load void (%struct.ttfReader_s*, i32)*, void (%struct.ttfReader_s*, i32)** %Seek878, align 8, !tbaa !52
  %683 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r, align 8, !tbaa !8
  %684 = load i32, i32* %nPosBeg, align 4, !tbaa !1
  call void %682(%struct.ttfReader_s* %683, i32 %684) #6
  br label %retry

if.end.879:                                       ; preds = %land.lhs.true.863, %ex
  %685 = load i32, i32* %error, align 4, !tbaa !53
  store i32 %685, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.880

cleanup.880:                                      ; preds = %if.end.879, %cleanup.846, %cleanup.494, %if.then.19, %if.then.15, %if.then.11
  %686 = bitcast i32* %nPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %686) #1
  %687 = bitcast i32* %execute_bytecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %687) #1
  %688 = bitcast i32* %glyph_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %688) #1
  %689 = bitcast i8** %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %689) #1
  %690 = bitcast %struct.ttfSubGlyphUsage_s** %usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %690) #1
  %691 = bitcast %struct._TSubglyph_Record* %subglyph to i8*
  call void @llvm.lifetime.end(i64 160, i8* %691) #1
  %692 = bitcast %struct._TGlyph_Zone** %pts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %692) #1
  %693 = bitcast %struct._TExecution_Context** %exec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %693) #1
  %694 = bitcast i32* %nPosBeg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %694) #1
  %695 = bitcast i32* %nNextGlyphPtr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %695) #1
  %696 = bitcast i16* %nAdvance to i8*
  call void @llvm.lifetime.end(i64 2, i8* %696) #1
  %697 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %697) #1
  %698 = bitcast i16* %count to i8*
  call void @llvm.lifetime.end(i64 2, i8* %698) #1
  %699 = bitcast i16* %arg2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %699) #1
  %700 = bitcast i16* %arg1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %700) #1
  %701 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %701) #1
  %702 = bitcast i16* %sideBearing to i8*
  call void @llvm.lifetime.end(i64 2, i8* %702) #1
  %703 = bitcast %struct.ttfInterpreter_s** %tti to i8*
  call void @llvm.lifetime.end(i64 8, i8* %703) #1
  %704 = bitcast %struct.ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %704) #1
  %705 = bitcast %struct.ttfFont_s** %pFont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %705) #1
  %706 = load i32, i32* %retval
  ret i32 %706
}

declare signext i16 @ttfReader__Short(%struct.ttfReader_s*) #2

; Function Attrs: nounwind uwtable
define internal void @Init_Glyph_Component(%struct._TSubglyph_Record* %element, %struct._TSubglyph_Record* %original, %struct._TExecution_Context* %exec) #0 {
entry:
  %element.addr = alloca %struct._TSubglyph_Record*, align 8
  %original.addr = alloca %struct._TSubglyph_Record*, align 8
  %exec.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TSubglyph_Record* %element, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  store %struct._TSubglyph_Record* %original, %struct._TSubglyph_Record** %original.addr, align 8, !tbaa !8
  store %struct._TExecution_Context* %exec, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !8
  %0 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %index = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %0, i32 0, i32 0
  store i32 -1, i32* %index, align 4, !tbaa !183
  %1 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %is_scaled = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %1, i32 0, i32 1
  store i32 0, i32* %is_scaled, align 4, !tbaa !184
  %2 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %is_hinted = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %2, i32 0, i32 2
  store i32 0, i32* %is_hinted, align 4, !tbaa !185
  %3 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %original.addr, align 8, !tbaa !8
  %tobool = icmp ne %struct._TSubglyph_Record* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %original.addr, align 8, !tbaa !8
  %zone = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %4, i32 0, i32 6
  %5 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %zone1 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %5, i32 0, i32 6
  call void @mount_zone(%struct._TGlyph_Zone* %zone, %struct._TGlyph_Zone* %zone1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %zone2 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %6, i32 0, i32 6
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec.addr, align 8, !tbaa !8
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 39
  %8 = bitcast %struct._TGlyph_Zone* %zone2 to i8*
  %9 = bitcast %struct._TGlyph_Zone* %pts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 56, i32 8, i1 false), !tbaa.struct !174
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %zone3 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %10, i32 0, i32 6
  %n_contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zone3, i32 0, i32 1
  store i32 0, i32* %n_contours, align 4, !tbaa !186
  %11 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %zone4 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %11, i32 0, i32 6
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zone4, i32 0, i32 0
  store i32 0, i32* %n_points, align 4, !tbaa !187
  %12 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %arg1 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %12, i32 0, i32 7
  store i32 0, i32* %arg1, align 4, !tbaa !188
  %13 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %arg2 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %13, i32 0, i32 8
  store i32 0, i32* %arg2, align 4, !tbaa !189
  %14 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %element_flag = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %14, i32 0, i32 9
  store i32 0, i32* %element_flag, align 4, !tbaa !190
  %15 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %preserve_pps = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %15, i32 0, i32 3
  store i32 0, i32* %preserve_pps, align 4, !tbaa !191
  %16 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %transform = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %16, i32 0, i32 10
  %xx = getelementptr inbounds %struct._TTransform, %struct._TTransform* %transform, i32 0, i32 0
  store i32 65536, i32* %xx, align 4, !tbaa !192
  %17 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %transform5 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %17, i32 0, i32 10
  %xy = getelementptr inbounds %struct._TTransform, %struct._TTransform* %transform5, i32 0, i32 1
  store i32 0, i32* %xy, align 4, !tbaa !193
  %18 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %transform6 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %18, i32 0, i32 10
  %yx = getelementptr inbounds %struct._TTransform, %struct._TTransform* %transform6, i32 0, i32 2
  store i32 0, i32* %yx, align 4, !tbaa !194
  %19 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %transform7 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %19, i32 0, i32 10
  %yy = getelementptr inbounds %struct._TTransform, %struct._TTransform* %transform7, i32 0, i32 3
  store i32 65536, i32* %yy, align 4, !tbaa !195
  %20 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %transform8 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %20, i32 0, i32 10
  %ox = getelementptr inbounds %struct._TTransform, %struct._TTransform* %transform8, i32 0, i32 4
  store i32 0, i32* %ox, align 4, !tbaa !196
  %21 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %transform9 = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %21, i32 0, i32 10
  %oy = getelementptr inbounds %struct._TTransform, %struct._TTransform* %transform9, i32 0, i32 5
  store i32 0, i32* %oy, align 4, !tbaa !197
  %22 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %leftBearing = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %22, i32 0, i32 13
  store i32 0, i32* %leftBearing, align 4, !tbaa !152
  %23 = load %struct._TSubglyph_Record*, %struct._TSubglyph_Record** %element.addr, align 8, !tbaa !8
  %advanceWidth = getelementptr inbounds %struct._TSubglyph_Record, %struct._TSubglyph_Record* %23, i32 0, i32 14
  store i32 0, i32* %advanceWidth, align 4, !tbaa !153
  ret void
}

declare signext i8 @ttfReader__SignedByte(%struct.ttfReader_s*) #2

declare zeroext i8 @ttfReader__Byte(%struct.ttfReader_s*) #2

; Function Attrs: nounwind uwtable
define internal void @MoveGlyphOutline(%struct._TGlyph_Zone* %pts, i32 %nOffset, %struct.ttfGlyphOutline* %out, %struct.FixMatrix* %m) #0 {
entry:
  %pts.addr = alloca %struct._TGlyph_Zone*, align 8
  %nOffset.addr = alloca i32, align 4
  %out.addr = alloca %struct.ttfGlyphOutline*, align 8
  %m.addr = alloca %struct.FixMatrix*, align 8
  %x = alloca i32*, align 8
  %y = alloca i32*, align 8
  %count = alloca i16, align 2
  %p = alloca %struct.F26Dot6Point, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TGlyph_Zone* %pts, %struct._TGlyph_Zone** %pts.addr, align 8, !tbaa !8
  store i32 %nOffset, i32* %nOffset.addr, align 4, !tbaa !1
  store %struct.ttfGlyphOutline* %out, %struct.ttfGlyphOutline** %out.addr, align 8, !tbaa !8
  store %struct.FixMatrix* %m, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %0 = bitcast i32** %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts.addr, align 8, !tbaa !8
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %1, i32 0, i32 2
  %2 = load i32*, i32** %org_x, align 8, !tbaa !87
  %3 = load i32, i32* %nOffset.addr, align 4, !tbaa !1
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  store i32* %add.ptr, i32** %x, align 8, !tbaa !8
  %4 = bitcast i32** %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %pts.addr, align 8, !tbaa !8
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %5, i32 0, i32 3
  %6 = load i32*, i32** %org_y, align 8, !tbaa !88
  %7 = load i32, i32* %nOffset.addr, align 4, !tbaa !1
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i32, i32* %6, i64 %idx.ext1
  store i32* %add.ptr2, i32** %y, align 8, !tbaa !8
  %8 = bitcast i16* %count to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  %9 = load %struct.ttfGlyphOutline*, %struct.ttfGlyphOutline** %out.addr, align 8, !tbaa !8
  %pointCount = getelementptr inbounds %struct.ttfGlyphOutline, %struct.ttfGlyphOutline* %9, i32 0, i32 2
  %10 = load i32, i32* %pointCount, align 4, !tbaa !158
  %conv = trunc i32 %10 to i16
  store i16 %conv, i16* %count, align 2, !tbaa !70
  %11 = bitcast %struct.F26Dot6Point* %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %a = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %12, i32 0, i32 0
  %13 = load i32, i32* %a, align 4, !tbaa !163
  %cmp = icmp eq i32 %13, 65536
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %b = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %14, i32 0, i32 1
  %15 = load i32, i32* %b, align 4, !tbaa !161
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %16 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %c = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %16, i32 0, i32 2
  %17 = load i32, i32* %c, align 4, !tbaa !160
  %cmp7 = icmp eq i32 %17, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %18 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %d = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %18, i32 0, i32 3
  %19 = load i32, i32* %d, align 4, !tbaa !162
  %cmp10 = icmp eq i32 %19, 65536
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %20 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %tx = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %20, i32 0, i32 4
  %21 = load i32, i32* %tx, align 4, !tbaa !135
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %22 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %ty = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %22, i32 0, i32 5
  %23 = load i32, i32* %ty, align 4, !tbaa !137
  %cmp16 = icmp eq i32 %23, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true.6, %land.lhs.true, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i16, i16* %count, align 2, !tbaa !70
  %conv18 = sext i16 %24 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32*, i32** %x, align 8, !tbaa !8
  %26 = load i32, i32* %25, align 4, !tbaa !1
  %27 = load i32*, i32** %y, align 8, !tbaa !8
  %28 = load i32, i32* %27, align 4, !tbaa !1
  %29 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  call void @TransformF26Dot6PointFix(%struct.F26Dot6Point* %p, i32 %26, i32 %28, %struct.FixMatrix* %29) #6
  %x21 = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %p, i32 0, i32 0
  %30 = load i32, i32* %x21, align 4, !tbaa !54
  %31 = load i32*, i32** %x, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr, i32** %x, align 8, !tbaa !8
  store i32 %30, i32* %31, align 4, !tbaa !1
  %y22 = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %p, i32 0, i32 1
  %32 = load i32, i32* %y22, align 4, !tbaa !55
  %33 = load i32*, i32** %y, align 8, !tbaa !8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %incdec.ptr23, i32** %y, align 8, !tbaa !8
  store i32 %32, i32* %33, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i16, i16* %count, align 2, !tbaa !70
  %dec = add i16 %34, -1
  store i16 %dec, i16* %count, align 2, !tbaa !70
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %35 = bitcast %struct.F26Dot6Point* %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i16* %count to i8*
  call void @llvm.lifetime.end(i64 2, i8* %36) #1
  %37 = bitcast i32** %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32** %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
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

declare i32 @Set_CodeRange(%struct._TExecution_Context*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @org_to_cur(i32 %n, %struct._TGlyph_Zone* %zone) #0 {
entry:
  %n.addr = alloca i32, align 4
  %zone.addr = alloca %struct._TGlyph_Zone*, align 8
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !1
  store %struct._TGlyph_Zone* %zone, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !1
  %2 = load i32, i32* %n.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %4, i32 0, i32 2
  %5 = load i32*, i32** %org_x, align 8, !tbaa !87
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %7 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %8, i32 0, i32 4
  %9 = load i32*, i32** %cur_x, align 8, !tbaa !170
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  store i32 %6, i32* %arrayidx2, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %k, align 4, !tbaa !1
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.10, %for.end
  %11 = load i32, i32* %k, align 4, !tbaa !1
  %12 = load i32, i32* %n.addr, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body.5, label %for.end.12

for.body.5:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %14, i32 0, i32 3
  %15 = load i32*, i32** %org_y, align 8, !tbaa !88
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4, !tbaa !1
  %17 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %18, i32 0, i32 5
  %19 = load i32*, i32** %cur_y, align 8, !tbaa !171
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom8
  store i32 %16, i32* %arrayidx9, align 4, !tbaa !1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.5
  %20 = load i32, i32* %k, align 4, !tbaa !1
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* %k, align 4, !tbaa !1
  br label %for.cond.3

for.end.12:                                       ; preds = %for.cond.3
  %21 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret void
}

declare i32 @Context_Run(%struct._TExecution_Context*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @cur_to_org(i32 %n, %struct._TGlyph_Zone* %zone) #0 {
entry:
  %n.addr = alloca i32, align 4
  %zone.addr = alloca %struct._TGlyph_Zone*, align 8
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !1
  store %struct._TGlyph_Zone* %zone, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !1
  %2 = load i32, i32* %n.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %4, i32 0, i32 4
  %5 = load i32*, i32** %cur_x, align 8, !tbaa !170
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %7 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %8, i32 0, i32 2
  %9 = load i32*, i32** %org_x, align 8, !tbaa !87
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  store i32 %6, i32* %arrayidx2, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %k, align 4, !tbaa !1
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.10, %for.end
  %11 = load i32, i32* %k, align 4, !tbaa !1
  %12 = load i32, i32* %n.addr, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body.5, label %for.end.12

for.body.5:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %14, i32 0, i32 5
  %15 = load i32*, i32** %cur_y, align 8, !tbaa !171
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4, !tbaa !1
  %17 = load i32, i32* %k, align 4, !tbaa !1
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !8
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %18, i32 0, i32 3
  %19 = load i32*, i32** %org_y, align 8, !tbaa !88
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom8
  store i32 %16, i32* %arrayidx9, align 4, !tbaa !1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.5
  %20 = load i32, i32* %k, align 4, !tbaa !1
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* %k, align 4, !tbaa !1
  br label %for.cond.3

for.end.12:                                       ; preds = %for.cond.3
  %21 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret void
}

declare void @Unset_CodeRange(%struct._TExecution_Context*) #2

declare i32 @Clear_CodeRange(%struct._TExecution_Context*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @mount_zone(%struct._TGlyph_Zone* %source, %struct._TGlyph_Zone* %target) #0 {
entry:
  %source.addr = alloca %struct._TGlyph_Zone*, align 8
  %target.addr = alloca %struct._TGlyph_Zone*, align 8
  %np = alloca i32, align 4
  %nc = alloca i32, align 4
  store %struct._TGlyph_Zone* %source, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  store %struct._TGlyph_Zone* %target, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %0 = bitcast i32* %np to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %2, i32 0, i32 0
  %3 = load i32, i32* %n_points, align 4, !tbaa !175
  store i32 %3, i32* %np, align 4, !tbaa !1
  %4 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %n_contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %4, i32 0, i32 1
  %5 = load i32, i32* %n_contours, align 4, !tbaa !176
  store i32 %5, i32* %nc, align 4, !tbaa !1
  %6 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %6, i32 0, i32 2
  %7 = load i32*, i32** %org_x, align 8, !tbaa !87
  %8 = load i32, i32* %np, align 4, !tbaa !1
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  %9 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %org_x1 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %9, i32 0, i32 2
  store i32* %add.ptr, i32** %org_x1, align 8, !tbaa !87
  %10 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %10, i32 0, i32 3
  %11 = load i32*, i32** %org_y, align 8, !tbaa !88
  %12 = load i32, i32* %np, align 4, !tbaa !1
  %idx.ext2 = sext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %11, i64 %idx.ext2
  %13 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %org_y4 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %13, i32 0, i32 3
  store i32* %add.ptr3, i32** %org_y4, align 8, !tbaa !88
  %14 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %14, i32 0, i32 4
  %15 = load i32*, i32** %cur_x, align 8, !tbaa !170
  %16 = load i32, i32* %np, align 4, !tbaa !1
  %idx.ext5 = sext i32 %16 to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %15, i64 %idx.ext5
  %17 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %cur_x7 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %17, i32 0, i32 4
  store i32* %add.ptr6, i32** %cur_x7, align 8, !tbaa !170
  %18 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %18, i32 0, i32 5
  %19 = load i32*, i32** %cur_y, align 8, !tbaa !171
  %20 = load i32, i32* %np, align 4, !tbaa !1
  %idx.ext8 = sext i32 %20 to i64
  %add.ptr9 = getelementptr inbounds i32, i32* %19, i64 %idx.ext8
  %21 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %cur_y10 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %21, i32 0, i32 5
  store i32* %add.ptr9, i32** %cur_y10, align 8, !tbaa !171
  %22 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %22, i32 0, i32 6
  %23 = load i8*, i8** %touch, align 8, !tbaa !86
  %24 = load i32, i32* %np, align 4, !tbaa !1
  %idx.ext11 = sext i32 %24 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 %idx.ext11
  %25 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %touch13 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %25, i32 0, i32 6
  store i8* %add.ptr12, i8** %touch13, align 8, !tbaa !86
  %26 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %source.addr, align 8, !tbaa !8
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %26, i32 0, i32 7
  %27 = load i16*, i16** %contours, align 8, !tbaa !84
  %28 = load i32, i32* %nc, align 4, !tbaa !1
  %idx.ext14 = sext i32 %28 to i64
  %add.ptr15 = getelementptr inbounds i16, i16* %27, i64 %idx.ext14
  %29 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %contours16 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %29, i32 0, i32 7
  store i16* %add.ptr15, i16** %contours16, align 8, !tbaa !84
  %30 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %n_points17 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %30, i32 0, i32 0
  store i32 0, i32* %n_points17, align 4, !tbaa !175
  %31 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %target.addr, align 8, !tbaa !8
  %n_contours18 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %31, i32 0, i32 1
  store i32 0, i32* %n_contours18, align 4, !tbaa !176
  %32 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %np to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TransformF26Dot6PointFix(%struct.F26Dot6Point* %pt, i32 %dx, i32 %dy, %struct.FixMatrix* %m) #0 {
entry:
  %pt.addr = alloca %struct.F26Dot6Point*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %m.addr = alloca %struct.FixMatrix*, align 8
  store %struct.F26Dot6Point* %pt, %struct.F26Dot6Point** %pt.addr, align 8, !tbaa !8
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !1
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !1
  store %struct.FixMatrix* %m, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %0 = load i32, i32* %dx.addr, align 4, !tbaa !1
  %1 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %a = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %1, i32 0, i32 0
  %2 = load i32, i32* %a, align 4, !tbaa !163
  %call = call i32 @ttMulDiv(i32 %0, i32 %2, i32 65536) #6
  %3 = load i32, i32* %dy.addr, align 4, !tbaa !1
  %4 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %c = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %4, i32 0, i32 2
  %5 = load i32, i32* %c, align 4, !tbaa !160
  %call1 = call i32 @ttMulDiv(i32 %3, i32 %5, i32 65536) #6
  %add = add nsw i32 %call, %call1
  %6 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %tx = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %6, i32 0, i32 4
  %7 = load i32, i32* %tx, align 4, !tbaa !135
  %shr = ashr i32 %7, 10
  %add2 = add nsw i32 %add, %shr
  %8 = load %struct.F26Dot6Point*, %struct.F26Dot6Point** %pt.addr, align 8, !tbaa !8
  %x = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %8, i32 0, i32 0
  store i32 %add2, i32* %x, align 4, !tbaa !54
  %9 = load i32, i32* %dx.addr, align 4, !tbaa !1
  %10 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %b = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %10, i32 0, i32 1
  %11 = load i32, i32* %b, align 4, !tbaa !161
  %call3 = call i32 @ttMulDiv(i32 %9, i32 %11, i32 65536) #6
  %12 = load i32, i32* %dy.addr, align 4, !tbaa !1
  %13 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %d = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %13, i32 0, i32 3
  %14 = load i32, i32* %d, align 4, !tbaa !162
  %call4 = call i32 @ttMulDiv(i32 %12, i32 %14, i32 65536) #6
  %add5 = add nsw i32 %call3, %call4
  %15 = load %struct.FixMatrix*, %struct.FixMatrix** %m.addr, align 8, !tbaa !8
  %ty = getelementptr inbounds %struct.FixMatrix, %struct.FixMatrix* %15, i32 0, i32 5
  %16 = load i32, i32* %ty, align 4, !tbaa !137
  %shr6 = ashr i32 %16, 10
  %add7 = add nsw i32 %add5, %shr6
  %17 = load %struct.F26Dot6Point*, %struct.F26Dot6Point** %pt.addr, align 8, !tbaa !8
  %y = getelementptr inbounds %struct.F26Dot6Point, %struct.F26Dot6Point* %17, i32 0, i32 1
  store i32 %add7, i32* %y, align 4, !tbaa !55
  ret void
}

declare i32 @ttMulDiv(i32, i32, i32) #2

declare i32 @Context_Save(%struct._TExecution_Context*, %struct._TInstance*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_TT_Instance", !7, i64 0}
!7 = !{!"any pointer", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!10, !12, i64 40}
!10 = !{!"_TInstance", !7, i64 0, !2, i64 8, !11, i64 16, !2, i64 144, !7, i64 152, !2, i64 160, !7, i64 168, !2, i64 176, !3, i64 180, !3, i64 440, !13, i64 488, !13, i64 576, !2, i64 664, !7, i64 672, !2, i64 680, !7, i64 688}
!11 = !{!"_TIns_Metrics", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !2, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !3, i64 104, !2, i64 120, !2, i64 124}
!12 = !{!"long", !3, i64 0}
!13 = !{!"_TGraphicsState", !2, i64 0, !2, i64 4, !2, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !12, i64 24, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !3, i64 64, !2, i64 68, !2, i64 72, !2, i64 76, !2, i64 80, !2, i64 84}
!14 = !{!"_TT_UnitVector", !15, i64 0, !15, i64 2}
!15 = !{!"short", !3, i64 0}
!16 = !{!10, !12, i64 56}
!17 = !{!10, !7, i64 0}
!18 = !{!19, !7, i64 8}
!19 = !{!"_TFace", !7, i64 0, !7, i64 8, !20, i64 16, !2, i64 48, !2, i64 52, !7, i64 56, !2, i64 64, !7, i64 72, !2, i64 80, !7, i64 88, !2, i64 96, !2, i64 100, !2, i64 104, !2, i64 108}
!20 = !{!"_TMaxProfile", !2, i64 0, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30}
!21 = !{!22, !15, i64 96}
!22 = !{!"ttfFont_s", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !15, i64 96, !2, i64 100, !2, i64 104, !2, i64 108, !2, i64 112, !2, i64 116, !2, i64 120, !2, i64 124, !2, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!23 = !{!"", !2, i64 0, !2, i64 4}
!24 = !{!10, !12, i64 48}
!25 = !{!10, !12, i64 64}
!26 = !{!22, !2, i64 100}
!27 = !{!10, !2, i64 28}
!28 = !{!10, !2, i64 32}
!29 = !{!10, !2, i64 16}
!30 = !{!10, !2, i64 8}
!31 = !{!32, !2, i64 24}
!32 = !{!"ttfInterpreter_s", !7, i64 0, !7, i64 8, !2, i64 16, !2, i64 20, !2, i64 24, !7, i64 32}
!33 = !{!34, !7, i64 8}
!34 = !{!"ttfMemory_s", !7, i64 0, !7, i64 8, !7, i64 16}
!35 = !{!32, !7, i64 8}
!36 = !{!32, !2, i64 16}
!37 = !{!32, !7, i64 32}
!38 = !{!32, !7, i64 0}
!39 = !{!34, !7, i64 16}
!40 = !{!22, !7, i64 168}
!41 = !{!22, !7, i64 176}
!42 = !{!22, !7, i64 184}
!43 = !{!22, !7, i64 160}
!44 = !{!22, !7, i64 152}
!45 = !{!22, !7, i64 144}
!46 = !{!22, !7, i64 136}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !3, i64 0}
!49 = !{!22, !2, i64 128}
!50 = !{!51, !7, i64 8}
!51 = !{!"ttfReader_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!52 = !{!51, !7, i64 16}
!53 = !{!3, !3, i64 0}
!54 = !{!23, !2, i64 0}
!55 = !{!23, !2, i64 4}
!56 = !{!22, !2, i64 24}
!57 = !{!22, !2, i64 120}
!58 = !{!22, !2, i64 72}
!59 = !{!22, !2, i64 104}
!60 = !{!22, !2, i64 108}
!61 = !{!22, !2, i64 32}
!62 = !{!22, !2, i64 116}
!63 = !{!22, !2, i64 48}
!64 = !{!22, !2, i64 112}
!65 = !{!34, !7, i64 0}
!66 = !{!19, !7, i64 0}
!67 = !{!51, !7, i64 32}
!68 = !{!19, !2, i64 80}
!69 = !{!19, !7, i64 88}
!70 = !{!15, !15, i64 0}
!71 = !{!10, !7, i64 672}
!72 = !{!12, !12, i64 0}
!73 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 4, !1, i64 12, i64 4, !1, i64 16, i64 4, !1, i64 24, i64 8, !72, i64 32, i64 8, !72, i64 40, i64 8, !72, i64 48, i64 8, !72, i64 56, i64 8, !72, i64 64, i64 8, !72, i64 72, i64 4, !1, i64 80, i64 8, !72, i64 88, i64 8, !72, i64 96, i64 8, !72, i64 104, i64 16, !53, i64 120, i64 4, !1, i64 124, i64 4, !1}
!74 = !{!75, !7, i64 32}
!75 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !76, i64 56, !77, i64 96}
!76 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !23, i64 12, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36}
!77 = !{!"", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40}
!78 = !{!"double", !3, i64 0}
!79 = !{!75, !2, i64 0}
!80 = !{!75, !2, i64 4}
!81 = !{!75, !7, i64 48}
!82 = !{!75, !2, i64 8}
!83 = !{!75, !7, i64 40}
!84 = !{!85, !7, i64 48}
!85 = !{!"_TGlyph_Zone", !2, i64 0, !2, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!86 = !{!85, !7, i64 40}
!87 = !{!85, !7, i64 8}
!88 = !{!85, !7, i64 16}
!89 = !{!76, !2, i64 24}
!90 = !{!76, !2, i64 32}
!91 = !{!76, !2, i64 28}
!92 = !{!76, !2, i64 36}
!93 = !{!76, !2, i64 12}
!94 = !{!76, !2, i64 16}
!95 = !{!75, !78, i64 128}
!96 = !{!97, !78, i64 0}
!97 = !{!"", !78, i64 0, !78, i64 8}
!98 = !{!75, !78, i64 136}
!99 = !{!97, !78, i64 8}
!100 = !{!101, !7, i64 48}
!101 = !{!"ttfExport_s", !2, i64 0, !2, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!102 = !{!76, !2, i64 4}
!103 = !{!101, !2, i64 0}
!104 = !{!101, !7, i64 40}
!105 = !{!101, !2, i64 4}
!106 = !{!75, !2, i64 20}
!107 = !{!75, !2, i64 24}
!108 = !{!101, !7, i64 8}
!109 = !{!101, !7, i64 16}
!110 = !{i64 0, i64 8, !111, i64 8, i64 8, !111}
!111 = !{!78, !78, i64 0}
!112 = !{!101, !7, i64 24}
!113 = !{!101, !7, i64 32}
!114 = !{!77, !78, i64 0}
!115 = !{!77, !78, i64 16}
!116 = !{!77, !78, i64 32}
!117 = !{!77, !78, i64 8}
!118 = !{!77, !78, i64 24}
!119 = !{!77, !78, i64 40}
!120 = !{i64 0, i64 8, !111, i64 8, i64 8, !111, i64 16, i64 8, !111, i64 24, i64 8, !111, i64 32, i64 8, !111, i64 40, i64 8, !111}
!121 = !{!75, !2, i64 60}
!122 = !{!75, !2, i64 64}
!123 = !{!75, !2, i64 56}
!124 = !{!75, !2, i64 12}
!125 = !{!75, !2, i64 16}
!126 = !{!75, !2, i64 72}
!127 = !{!75, !2, i64 68}
!128 = !{!75, !78, i64 96}
!129 = !{!75, !78, i64 104}
!130 = !{!75, !78, i64 112}
!131 = !{!75, !78, i64 120}
!132 = !{!10, !3, i64 552}
!133 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 4, !1, i64 12, i64 2, !70, i64 14, i64 2, !70, i64 16, i64 2, !70, i64 18, i64 2, !70, i64 20, i64 2, !70, i64 22, i64 2, !70, i64 24, i64 8, !72, i64 32, i64 4, !1, i64 36, i64 4, !1, i64 40, i64 4, !1, i64 44, i64 4, !1, i64 48, i64 4, !1, i64 52, i64 4, !1, i64 56, i64 4, !1, i64 60, i64 4, !1, i64 64, i64 1, !53, i64 68, i64 4, !1, i64 72, i64 4, !1, i64 76, i64 4, !1, i64 80, i64 4, !1, i64 84, i64 4, !1}
!134 = !{!32, !2, i64 20}
!135 = !{!136, !2, i64 16}
!136 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20}
!137 = !{!136, !2, i64 20}
!138 = !{!51, !7, i64 56}
!139 = !{!76, !2, i64 20}
!140 = !{!51, !7, i64 40}
!141 = !{!51, !7, i64 0}
!142 = !{!51, !7, i64 48}
!143 = !{!51, !7, i64 24}
!144 = !{!145, !2, i64 24}
!145 = !{!"_TSubglyph_Record", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !12, i64 16, !146, i64 24, !85, i64 40, !2, i64 96, !2, i64 100, !2, i64 104, !147, i64 108, !148, i64 132, !148, i64 140, !2, i64 148, !2, i64 152}
!146 = !{!"_TT_BBox", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12}
!147 = !{!"_TTransform", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20}
!148 = !{!"_TT_Vector", !2, i64 0, !2, i64 4}
!149 = !{!145, !2, i64 28}
!150 = !{!145, !2, i64 32}
!151 = !{!145, !2, i64 36}
!152 = !{!145, !2, i64 148}
!153 = !{!145, !2, i64 152}
!154 = !{!145, !2, i64 132}
!155 = !{!145, !2, i64 136}
!156 = !{!145, !2, i64 140}
!157 = !{!145, !2, i64 144}
!158 = !{!76, !2, i64 8}
!159 = !{!76, !2, i64 0}
!160 = !{!136, !2, i64 8}
!161 = !{!136, !2, i64 4}
!162 = !{!136, !2, i64 12}
!163 = !{!136, !2, i64 0}
!164 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 4, !1, i64 12, i64 4, !1, i64 16, i64 4, !1, i64 20, i64 4, !1}
!165 = !{!166, !2, i64 24}
!166 = !{!"ttfSubGlyphUsage_s", !136, i64 0, !2, i64 24, !2, i64 28, !15, i64 32, !15, i64 34}
!167 = !{!166, !15, i64 32}
!168 = !{!166, !15, i64 34}
!169 = !{!166, !2, i64 28}
!170 = !{!85, !7, i64 24}
!171 = !{!85, !7, i64 32}
!172 = !{!166, !2, i64 16}
!173 = !{!166, !2, i64 20}
!174 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 8, !8, i64 16, i64 8, !8, i64 24, i64 8, !8, i64 32, i64 8, !8, i64 40, i64 8, !8, i64 48, i64 8, !8}
!175 = !{!85, !2, i64 0}
!176 = !{!85, !2, i64 4}
!177 = !{!178, !2, i64 1096}
!178 = !{!"_TExecution_Context", !7, i64 0, !2, i64 8, !2, i64 12, !7, i64 16, !2, i64 24, !2, i64 28, !3, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !7, i64 48, !2, i64 56, !7, i64 64, !2, i64 72, !3, i64 76, !7, i64 336, !2, i64 344, !2, i64 348, !2, i64 352, !7, i64 360, !3, i64 368, !2, i64 416, !7, i64 424, !2, i64 432, !2, i64 436, !7, i64 440, !2, i64 448, !2, i64 452, !2, i64 456, !2, i64 460, !2, i64 464, !11, i64 472, !2, i64 600, !12, i64 608, !12, i64 616, !2, i64 624, !85, i64 632, !85, i64 688, !85, i64 744, !85, i64 800, !85, i64 856, !2, i64 912, !13, i64 920, !13, i64 1008, !2, i64 1096, !2, i64 1100, !7, i64 1104, !12, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !179, i64 1184, !2, i64 1392, !2, i64 1396, !2, i64 1400, !2, i64 1404, !7, i64 1408}
!179 = !{!"", !3, i64 0}
!180 = !{!22, !2, i64 124}
!181 = !{!178, !2, i64 1392}
!182 = !{!178, !2, i64 1396}
!183 = !{!145, !2, i64 0}
!184 = !{!145, !2, i64 4}
!185 = !{!145, !2, i64 8}
!186 = !{!145, !2, i64 44}
!187 = !{!145, !2, i64 40}
!188 = !{!145, !2, i64 96}
!189 = !{!145, !2, i64 100}
!190 = !{!145, !2, i64 104}
!191 = !{!145, !2, i64 12}
!192 = !{!145, !2, i64 108}
!193 = !{!145, !2, i64 112}
!194 = !{!145, !2, i64 116}
!195 = !{!145, !2, i64 120}
!196 = !{!145, !2, i64 124}
!197 = !{!145, !2, i64 128}
