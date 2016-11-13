; ModuleID = './ttfmemd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
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
%struct.ttfSubGlyphUsage_s = type opaque
%struct._TMaxProfile = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct._TIns_Metrics = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, [4 x i32], i32, i32 }
%struct._TDefRecord = type { i32, i32, i8, i32 }
%struct._TCodeRange = type { i8*, i32 }
%struct._TGraphicsState = type { i32, i32, i32, %struct._TT_UnitVector, %struct._TT_UnitVector, %struct._TT_UnitVector, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32 }
%struct._TT_UnitVector = type { i16, i16 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"TFace\00", align 1
@st_TFace_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 5, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([5 x %struct.gc_ptr_element_s], [5 x %struct.gc_ptr_element_s]* @st_TFace_enum_ptrs, i32 0, i32 0) }, align 8
@st_TFace = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @st_TFace_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"TInstance\00", align 1
@st_TInstance = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 696, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @TInstance_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @TInstance_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"TExecution_Context\00", align 1
@st_TExecution_Context = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @TExecution_Context_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @TExecution_Context_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"ttfFont\00", align 1
@st_ttfFont = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ttfFont_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ttfFont_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"ttfInterpreter\00", align 1
@st_ttfInterpreter_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @st_ttfInterpreter_enum_ptrs, i32 0, i32 0) }, align 8
@st_ttfInterpreter = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @st_ttfInterpreter_reloc_ptrs to i8*) }, align 8
@st_TFace_enum_ptrs = internal constant [5 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 56 }, %struct.gc_ptr_element_s { i16 0, i16 72 }, %struct.gc_ptr_element_s { i16 0, i16 88 }], align 16
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_ttfInterpreter_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @TInstance_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.17
    i32 7, label %sw.bb.19
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TInstance*
  %face = getelementptr inbounds %struct._TInstance, %struct._TInstance* %2, i32 0, i32 0
  %3 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !7
  %4 = bitcast %struct._TFace* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct._TInstance*
  %FDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %7, i32 0, i32 4
  %8 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !16
  %9 = bitcast %struct._TDefRecord* %8 to i8*
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %9, i8** %ptr2, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct._TInstance*
  %IDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %12, i32 0, i32 6
  %13 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !17
  %14 = bitcast %struct._TDefRecord* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr4, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct._TInstance*
  %codeRangeTable = getelementptr inbounds %struct._TInstance, %struct._TInstance* %17, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 0
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %Base, align 8, !tbaa !18
  %19 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %19, i32 0, i32 0
  store i8* %18, i8** %ptr6, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct._TInstance*
  %codeRangeTable8 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %21, i32 0, i32 9
  %arrayidx9 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable8, i32 0, i64 1
  %Base10 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx9, i32 0, i32 0
  %22 = load i8*, i8** %Base10, align 8, !tbaa !18
  %23 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %23, i32 0, i32 0
  store i8* %22, i8** %ptr11, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %24 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to %struct._TInstance*
  %codeRangeTable13 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %25, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable13, i32 0, i64 2
  %Base15 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx14, i32 0, i32 0
  %26 = load i8*, i8** %Base15, align 8, !tbaa !18
  %27 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %27, i32 0, i32 0
  store i8* %26, i8** %ptr16, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %28 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %29 = bitcast i8* %28 to %struct._TInstance*
  %cvt = getelementptr inbounds %struct._TInstance, %struct._TInstance* %29, i32 0, i32 13
  %30 = load i64*, i64** %cvt, align 8, !tbaa !20
  %31 = bitcast i64* %30 to i8*
  %32 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr18, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %33 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %34 = bitcast i8* %33 to %struct._TInstance*
  %storage = getelementptr inbounds %struct._TInstance, %struct._TInstance* %34, i32 0, i32 15
  %35 = load i64*, i64** %storage, align 8, !tbaa !21
  %36 = bitcast i64* %35 to i8*
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %37, i32 0, i32 0
  store i8* %36, i8** %ptr20, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.19, %sw.bb.17, %sw.bb.12, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %38 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %38
}

; Function Attrs: nounwind uwtable
define internal void @TInstance_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct._TInstance*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TInstance** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TInstance*
  store %struct._TInstance* %2, %struct._TInstance** %mptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !22
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct._TInstance*
  %face = getelementptr inbounds %struct._TInstance, %struct._TInstance* %8, i32 0, i32 0
  %9 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !7
  %10 = bitcast %struct._TFace* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #3
  %12 = bitcast i8* %call to %struct._TFace*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct._TInstance*
  %face1 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %14, i32 0, i32 0
  store %struct._TFace* %12, %struct._TFace** %face1, align 8, !tbaa !7
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !22
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct._TInstance*
  %FDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %20, i32 0, i32 4
  %21 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !16
  %22 = bitcast %struct._TDefRecord* %21 to i8*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %18(i8* %22, %struct.gc_state_s* %23) #3
  %24 = bitcast i8* %call3 to %struct._TDefRecord*
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct._TInstance*
  %FDefs4 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %26, i32 0, i32 4
  store %struct._TDefRecord* %24, %struct._TDefRecord** %FDefs4, align 8, !tbaa !16
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gc_state_s* %27 to %struct.gc_procs_common_s**
  %29 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %28, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %29, i32 0, i32 0
  %30 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !22
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct._TInstance*
  %IDefs = getelementptr inbounds %struct._TInstance, %struct._TInstance* %32, i32 0, i32 6
  %33 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !17
  %34 = bitcast %struct._TDefRecord* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %30(i8* %34, %struct.gc_state_s* %35) #3
  %36 = bitcast i8* %call6 to %struct._TDefRecord*
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct._TInstance*
  %IDefs7 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %38, i32 0, i32 6
  store %struct._TDefRecord* %36, %struct._TDefRecord** %IDefs7, align 8, !tbaa !17
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gc_state_s* %39 to %struct.gc_procs_common_s**
  %41 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %40, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %41, i32 0, i32 0
  %42 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !22
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct._TInstance*
  %codeRangeTable = getelementptr inbounds %struct._TInstance, %struct._TInstance* %44, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 0
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx, i32 0, i32 0
  %45 = load i8*, i8** %Base, align 8, !tbaa !18
  %46 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %42(i8* %45, %struct.gc_state_s* %46) #3
  %47 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %48 = bitcast i8* %47 to %struct._TInstance*
  %codeRangeTable10 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %48, i32 0, i32 9
  %arrayidx11 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable10, i32 0, i64 0
  %Base12 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx11, i32 0, i32 0
  store i8* %call9, i8** %Base12, align 8, !tbaa !18
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gc_state_s* %49 to %struct.gc_procs_common_s**
  %51 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %50, align 8, !tbaa !1
  %reloc_struct_ptr13 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %51, i32 0, i32 0
  %52 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr13, align 8, !tbaa !22
  %53 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %54 = bitcast i8* %53 to %struct._TInstance*
  %codeRangeTable14 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %54, i32 0, i32 9
  %arrayidx15 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable14, i32 0, i64 1
  %Base16 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx15, i32 0, i32 0
  %55 = load i8*, i8** %Base16, align 8, !tbaa !18
  %56 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call17 = call i8* %52(i8* %55, %struct.gc_state_s* %56) #3
  %57 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %58 = bitcast i8* %57 to %struct._TInstance*
  %codeRangeTable18 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %58, i32 0, i32 9
  %arrayidx19 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable18, i32 0, i64 1
  %Base20 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx19, i32 0, i32 0
  store i8* %call17, i8** %Base20, align 8, !tbaa !18
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gc_state_s* %59 to %struct.gc_procs_common_s**
  %61 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %60, align 8, !tbaa !1
  %reloc_struct_ptr21 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %61, i32 0, i32 0
  %62 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr21, align 8, !tbaa !22
  %63 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %64 = bitcast i8* %63 to %struct._TInstance*
  %codeRangeTable22 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %64, i32 0, i32 9
  %arrayidx23 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable22, i32 0, i64 2
  %Base24 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx23, i32 0, i32 0
  %65 = load i8*, i8** %Base24, align 8, !tbaa !18
  %66 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call25 = call i8* %62(i8* %65, %struct.gc_state_s* %66) #3
  %67 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %68 = bitcast i8* %67 to %struct._TInstance*
  %codeRangeTable26 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %68, i32 0, i32 9
  %arrayidx27 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable26, i32 0, i64 2
  %Base28 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx27, i32 0, i32 0
  store i8* %call25, i8** %Base28, align 8, !tbaa !18
  %69 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gc_state_s* %69 to %struct.gc_procs_common_s**
  %71 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %70, align 8, !tbaa !1
  %reloc_struct_ptr29 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %71, i32 0, i32 0
  %72 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr29, align 8, !tbaa !22
  %73 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %74 = bitcast i8* %73 to %struct._TInstance*
  %cvt = getelementptr inbounds %struct._TInstance, %struct._TInstance* %74, i32 0, i32 13
  %75 = load i64*, i64** %cvt, align 8, !tbaa !20
  %76 = bitcast i64* %75 to i8*
  %77 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call30 = call i8* %72(i8* %76, %struct.gc_state_s* %77) #3
  %78 = bitcast i8* %call30 to i64*
  %79 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %80 = bitcast i8* %79 to %struct._TInstance*
  %cvt31 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %80, i32 0, i32 13
  store i64* %78, i64** %cvt31, align 8, !tbaa !20
  %81 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %82 = bitcast %struct.gc_state_s* %81 to %struct.gc_procs_common_s**
  %83 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %82, align 8, !tbaa !1
  %reloc_struct_ptr32 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %83, i32 0, i32 0
  %84 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr32, align 8, !tbaa !22
  %85 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %86 = bitcast i8* %85 to %struct._TInstance*
  %storage = getelementptr inbounds %struct._TInstance, %struct._TInstance* %86, i32 0, i32 15
  %87 = load i64*, i64** %storage, align 8, !tbaa !21
  %88 = bitcast i64* %87 to i8*
  %89 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call33 = call i8* %84(i8* %88, %struct.gc_state_s* %89) #3
  %90 = bitcast i8* %call33 to i64*
  %91 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %92 = bitcast i8* %91 to %struct._TInstance*
  %storage34 = getelementptr inbounds %struct._TInstance, %struct._TInstance* %92, i32 0, i32 15
  store i64* %90, i64** %storage34, align 8, !tbaa !21
  %93 = load %struct._TInstance*, %struct._TInstance** %mptr, align 8, !tbaa !1
  %94 = bitcast %struct._TInstance** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @TExecution_Context_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.19
    i32 8, label %sw.bb.21
    i32 9, label %sw.bb.23
    i32 10, label %sw.bb.25
    i32 11, label %sw.bb.28
    i32 12, label %sw.bb.31
    i32 13, label %sw.bb.34
    i32 14, label %sw.bb.37
    i32 15, label %sw.bb.40
    i32 16, label %sw.bb.43
    i32 17, label %sw.bb.47
    i32 18, label %sw.bb.51
    i32 19, label %sw.bb.55
    i32 20, label %sw.bb.59
    i32 21, label %sw.bb.63
    i32 22, label %sw.bb.65
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TExecution_Context*
  %current_face = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 0
  %3 = load %struct._TFace*, %struct._TFace** %current_face, align 8, !tbaa !24
  %4 = bitcast %struct._TFace* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct._TExecution_Context*
  %FDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 10
  %8 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !28
  %9 = bitcast %struct._TDefRecord* %8 to i8*
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %9, i8** %ptr2, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct._TExecution_Context*
  %IDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 12
  %13 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !29
  %14 = bitcast %struct._TDefRecord* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr4, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct._TExecution_Context*
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 19
  %18 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !30
  %19 = bitcast %struct._TCallRecord* %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr6, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct._TExecution_Context*
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 0
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx, i32 0, i32 0
  %23 = load i8*, i8** %Base, align 8, !tbaa !18
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr8, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct._TExecution_Context*
  %codeRangeTable10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 20
  %arrayidx11 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable10, i32 0, i64 1
  %Base12 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx11, i32 0, i32 0
  %27 = load i8*, i8** %Base12, align 8, !tbaa !18
  %28 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %28, i32 0, i32 0
  store i8* %27, i8** %ptr13, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  %29 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %30 = bitcast i8* %29 to %struct._TExecution_Context*
  %codeRangeTable15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 20
  %arrayidx16 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable15, i32 0, i64 2
  %Base17 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx16, i32 0, i32 0
  %31 = load i8*, i8** %Base17, align 8, !tbaa !18
  %32 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr18, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %33 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %34 = bitcast i8* %33 to %struct._TExecution_Context*
  %storage = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 22
  %35 = load i64*, i64** %storage, align 8, !tbaa !31
  %36 = bitcast i64* %35 to i8*
  %37 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %37, i32 0, i32 0
  store i8* %36, i8** %ptr20, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %38 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %39 = bitcast i8* %38 to %struct._TExecution_Context*
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 25
  %40 = load i64*, i64** %stack, align 8, !tbaa !32
  %41 = bitcast i64* %40 to i8*
  %42 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %42, i32 0, i32 0
  store i8* %41, i8** %ptr22, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct._TExecution_Context*
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 39
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 2
  %45 = load i32*, i32** %org_x, align 8, !tbaa !33
  %46 = bitcast i32* %45 to i8*
  %47 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr24 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %47, i32 0, i32 0
  store i8* %46, i8** %ptr24, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %48 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %49 = bitcast i8* %48 to %struct._TExecution_Context*
  %pts26 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %49, i32 0, i32 39
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts26, i32 0, i32 3
  %50 = load i32*, i32** %org_y, align 8, !tbaa !34
  %51 = bitcast i32* %50 to i8*
  %52 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr27 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %52, i32 0, i32 0
  store i8* %51, i8** %ptr27, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.28:                                         ; preds = %entry
  %53 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %54 = bitcast i8* %53 to %struct._TExecution_Context*
  %pts29 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %54, i32 0, i32 39
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts29, i32 0, i32 4
  %55 = load i32*, i32** %cur_x, align 8, !tbaa !35
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr30 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %57, i32 0, i32 0
  store i8* %56, i8** %ptr30, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  %58 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %59 = bitcast i8* %58 to %struct._TExecution_Context*
  %pts32 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %59, i32 0, i32 39
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts32, i32 0, i32 5
  %60 = load i32*, i32** %cur_y, align 8, !tbaa !36
  %61 = bitcast i32* %60 to i8*
  %62 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr33 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %62, i32 0, i32 0
  store i8* %61, i8** %ptr33, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  %63 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %64 = bitcast i8* %63 to %struct._TExecution_Context*
  %pts35 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %64, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts35, i32 0, i32 6
  %65 = load i8*, i8** %touch, align 8, !tbaa !37
  %66 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr36 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %66, i32 0, i32 0
  store i8* %65, i8** %ptr36, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.37:                                         ; preds = %entry
  %67 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %68 = bitcast i8* %67 to %struct._TExecution_Context*
  %pts38 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %68, i32 0, i32 39
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts38, i32 0, i32 7
  %69 = load i16*, i16** %contours, align 8, !tbaa !38
  %70 = bitcast i16* %69 to i8*
  %71 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %71, i32 0, i32 0
  store i8* %70, i8** %ptr39, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.40:                                         ; preds = %entry
  %72 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %73 = bitcast i8* %72 to %struct._TExecution_Context*
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %73, i32 0, i32 40
  %org_x41 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight, i32 0, i32 2
  %74 = load i32*, i32** %org_x41, align 8, !tbaa !39
  %75 = bitcast i32* %74 to i8*
  %76 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr42 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %76, i32 0, i32 0
  store i8* %75, i8** %ptr42, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.43:                                         ; preds = %entry
  %77 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %78 = bitcast i8* %77 to %struct._TExecution_Context*
  %twilight44 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %78, i32 0, i32 40
  %org_y45 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight44, i32 0, i32 3
  %79 = load i32*, i32** %org_y45, align 8, !tbaa !40
  %80 = bitcast i32* %79 to i8*
  %81 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr46 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %81, i32 0, i32 0
  store i8* %80, i8** %ptr46, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.47:                                         ; preds = %entry
  %82 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %83 = bitcast i8* %82 to %struct._TExecution_Context*
  %twilight48 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %83, i32 0, i32 40
  %cur_x49 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight48, i32 0, i32 4
  %84 = load i32*, i32** %cur_x49, align 8, !tbaa !41
  %85 = bitcast i32* %84 to i8*
  %86 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr50 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %86, i32 0, i32 0
  store i8* %85, i8** %ptr50, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.51:                                         ; preds = %entry
  %87 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %88 = bitcast i8* %87 to %struct._TExecution_Context*
  %twilight52 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %88, i32 0, i32 40
  %cur_y53 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight52, i32 0, i32 5
  %89 = load i32*, i32** %cur_y53, align 8, !tbaa !42
  %90 = bitcast i32* %89 to i8*
  %91 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr54 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %91, i32 0, i32 0
  store i8* %90, i8** %ptr54, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.55:                                         ; preds = %entry
  %92 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %93 = bitcast i8* %92 to %struct._TExecution_Context*
  %twilight56 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %93, i32 0, i32 40
  %touch57 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight56, i32 0, i32 6
  %94 = load i8*, i8** %touch57, align 8, !tbaa !43
  %95 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr58 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %95, i32 0, i32 0
  store i8* %94, i8** %ptr58, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.59:                                         ; preds = %entry
  %96 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %97 = bitcast i8* %96 to %struct._TExecution_Context*
  %twilight60 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %97, i32 0, i32 40
  %contours61 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight60, i32 0, i32 7
  %98 = load i16*, i16** %contours61, align 8, !tbaa !44
  %99 = bitcast i16* %98 to i8*
  %100 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr62 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %100, i32 0, i32 0
  store i8* %99, i8** %ptr62, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.63:                                         ; preds = %entry
  %101 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %102 = bitcast i8* %101 to %struct._TExecution_Context*
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %102, i32 0, i32 46
  %103 = load i64*, i64** %cvt, align 8, !tbaa !45
  %104 = bitcast i64* %103 to i8*
  %105 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr64 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %105, i32 0, i32 0
  store i8* %104, i8** %ptr64, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.65:                                         ; preds = %entry
  %106 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %107 = bitcast i8* %106 to %struct._TExecution_Context*
  %memory = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %107, i32 0, i32 61
  %108 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %memory, align 8, !tbaa !46
  %109 = bitcast %struct.ttfMemory_s* %108 to i8*
  %110 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr66 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %110, i32 0, i32 0
  store i8* %109, i8** %ptr66, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.65, %sw.bb.63, %sw.bb.59, %sw.bb.55, %sw.bb.51, %sw.bb.47, %sw.bb.43, %sw.bb.40, %sw.bb.37, %sw.bb.34, %sw.bb.31, %sw.bb.28, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.14, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %111 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %111
}

; Function Attrs: nounwind uwtable
define internal void @TExecution_Context_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct._TExecution_Context*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TExecution_Context** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._TExecution_Context*
  store %struct._TExecution_Context* %2, %struct._TExecution_Context** %mptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !22
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct._TExecution_Context*
  %current_face = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 0
  %9 = load %struct._TFace*, %struct._TFace** %current_face, align 8, !tbaa !24
  %10 = bitcast %struct._TFace* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #3
  %12 = bitcast i8* %call to %struct._TFace*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct._TExecution_Context*
  %current_face1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 0
  store %struct._TFace* %12, %struct._TFace** %current_face1, align 8, !tbaa !24
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !22
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct._TExecution_Context*
  %FDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 10
  %21 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !28
  %22 = bitcast %struct._TDefRecord* %21 to i8*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %18(i8* %22, %struct.gc_state_s* %23) #3
  %24 = bitcast i8* %call3 to %struct._TDefRecord*
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct._TExecution_Context*
  %FDefs4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 10
  store %struct._TDefRecord* %24, %struct._TDefRecord** %FDefs4, align 8, !tbaa !28
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gc_state_s* %27 to %struct.gc_procs_common_s**
  %29 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %28, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %29, i32 0, i32 0
  %30 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !22
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct._TExecution_Context*
  %IDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 12
  %33 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !29
  %34 = bitcast %struct._TDefRecord* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %30(i8* %34, %struct.gc_state_s* %35) #3
  %36 = bitcast i8* %call6 to %struct._TDefRecord*
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct._TExecution_Context*
  %IDefs7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 12
  store %struct._TDefRecord* %36, %struct._TDefRecord** %IDefs7, align 8, !tbaa !29
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gc_state_s* %39 to %struct.gc_procs_common_s**
  %41 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %40, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %41, i32 0, i32 0
  %42 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !22
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct._TExecution_Context*
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 19
  %45 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !30
  %46 = bitcast %struct._TCallRecord* %45 to i8*
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %42(i8* %46, %struct.gc_state_s* %47) #3
  %48 = bitcast i8* %call9 to %struct._TCallRecord*
  %49 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %50 = bitcast i8* %49 to %struct._TExecution_Context*
  %callStack10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 19
  store %struct._TCallRecord* %48, %struct._TCallRecord** %callStack10, align 8, !tbaa !30
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gc_state_s* %51 to %struct.gc_procs_common_s**
  %53 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %52, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %53, i32 0, i32 0
  %54 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !22
  %55 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %56 = bitcast i8* %55 to %struct._TExecution_Context*
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 0
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx, i32 0, i32 0
  %57 = load i8*, i8** %Base, align 8, !tbaa !18
  %58 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %54(i8* %57, %struct.gc_state_s* %58) #3
  %59 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %60 = bitcast i8* %59 to %struct._TExecution_Context*
  %codeRangeTable13 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %60, i32 0, i32 20
  %arrayidx14 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable13, i32 0, i64 0
  %Base15 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx14, i32 0, i32 0
  store i8* %call12, i8** %Base15, align 8, !tbaa !18
  %61 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gc_state_s* %61 to %struct.gc_procs_common_s**
  %63 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %62, align 8, !tbaa !1
  %reloc_struct_ptr16 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %63, i32 0, i32 0
  %64 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr16, align 8, !tbaa !22
  %65 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %66 = bitcast i8* %65 to %struct._TExecution_Context*
  %codeRangeTable17 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %66, i32 0, i32 20
  %arrayidx18 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable17, i32 0, i64 1
  %Base19 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx18, i32 0, i32 0
  %67 = load i8*, i8** %Base19, align 8, !tbaa !18
  %68 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call20 = call i8* %64(i8* %67, %struct.gc_state_s* %68) #3
  %69 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %70 = bitcast i8* %69 to %struct._TExecution_Context*
  %codeRangeTable21 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %70, i32 0, i32 20
  %arrayidx22 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable21, i32 0, i64 1
  %Base23 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx22, i32 0, i32 0
  store i8* %call20, i8** %Base23, align 8, !tbaa !18
  %71 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gc_state_s* %71 to %struct.gc_procs_common_s**
  %73 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %72, align 8, !tbaa !1
  %reloc_struct_ptr24 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %73, i32 0, i32 0
  %74 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr24, align 8, !tbaa !22
  %75 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %76 = bitcast i8* %75 to %struct._TExecution_Context*
  %codeRangeTable25 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %76, i32 0, i32 20
  %arrayidx26 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable25, i32 0, i64 2
  %Base27 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx26, i32 0, i32 0
  %77 = load i8*, i8** %Base27, align 8, !tbaa !18
  %78 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call28 = call i8* %74(i8* %77, %struct.gc_state_s* %78) #3
  %79 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %80 = bitcast i8* %79 to %struct._TExecution_Context*
  %codeRangeTable29 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %80, i32 0, i32 20
  %arrayidx30 = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable29, i32 0, i64 2
  %Base31 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %arrayidx30, i32 0, i32 0
  store i8* %call28, i8** %Base31, align 8, !tbaa !18
  %81 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %82 = bitcast %struct.gc_state_s* %81 to %struct.gc_procs_common_s**
  %83 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %82, align 8, !tbaa !1
  %reloc_struct_ptr32 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %83, i32 0, i32 0
  %84 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr32, align 8, !tbaa !22
  %85 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %86 = bitcast i8* %85 to %struct._TExecution_Context*
  %storage = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %86, i32 0, i32 22
  %87 = load i64*, i64** %storage, align 8, !tbaa !31
  %88 = bitcast i64* %87 to i8*
  %89 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call33 = call i8* %84(i8* %88, %struct.gc_state_s* %89) #3
  %90 = bitcast i8* %call33 to i64*
  %91 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %92 = bitcast i8* %91 to %struct._TExecution_Context*
  %storage34 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %92, i32 0, i32 22
  store i64* %90, i64** %storage34, align 8, !tbaa !31
  %93 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %94 = bitcast %struct.gc_state_s* %93 to %struct.gc_procs_common_s**
  %95 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %94, align 8, !tbaa !1
  %reloc_struct_ptr35 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %95, i32 0, i32 0
  %96 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr35, align 8, !tbaa !22
  %97 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %98 = bitcast i8* %97 to %struct._TExecution_Context*
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %98, i32 0, i32 25
  %99 = load i64*, i64** %stack, align 8, !tbaa !32
  %100 = bitcast i64* %99 to i8*
  %101 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call36 = call i8* %96(i8* %100, %struct.gc_state_s* %101) #3
  %102 = bitcast i8* %call36 to i64*
  %103 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %104 = bitcast i8* %103 to %struct._TExecution_Context*
  %stack37 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %104, i32 0, i32 25
  store i64* %102, i64** %stack37, align 8, !tbaa !32
  %105 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %106 = bitcast %struct.gc_state_s* %105 to %struct.gc_procs_common_s**
  %107 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %106, align 8, !tbaa !1
  %reloc_struct_ptr38 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %107, i32 0, i32 0
  %108 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr38, align 8, !tbaa !22
  %109 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %110 = bitcast i8* %109 to %struct._TExecution_Context*
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %110, i32 0, i32 39
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 2
  %111 = load i32*, i32** %org_x, align 8, !tbaa !33
  %112 = bitcast i32* %111 to i8*
  %113 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call39 = call i8* %108(i8* %112, %struct.gc_state_s* %113) #3
  %114 = bitcast i8* %call39 to i32*
  %115 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %116 = bitcast i8* %115 to %struct._TExecution_Context*
  %pts40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %116, i32 0, i32 39
  %org_x41 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts40, i32 0, i32 2
  store i32* %114, i32** %org_x41, align 8, !tbaa !33
  %117 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %118 = bitcast %struct.gc_state_s* %117 to %struct.gc_procs_common_s**
  %119 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %118, align 8, !tbaa !1
  %reloc_struct_ptr42 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %119, i32 0, i32 0
  %120 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr42, align 8, !tbaa !22
  %121 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %122 = bitcast i8* %121 to %struct._TExecution_Context*
  %pts43 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %122, i32 0, i32 39
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts43, i32 0, i32 3
  %123 = load i32*, i32** %org_y, align 8, !tbaa !34
  %124 = bitcast i32* %123 to i8*
  %125 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call44 = call i8* %120(i8* %124, %struct.gc_state_s* %125) #3
  %126 = bitcast i8* %call44 to i32*
  %127 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %128 = bitcast i8* %127 to %struct._TExecution_Context*
  %pts45 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %128, i32 0, i32 39
  %org_y46 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts45, i32 0, i32 3
  store i32* %126, i32** %org_y46, align 8, !tbaa !34
  %129 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %130 = bitcast %struct.gc_state_s* %129 to %struct.gc_procs_common_s**
  %131 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %130, align 8, !tbaa !1
  %reloc_struct_ptr47 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %131, i32 0, i32 0
  %132 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr47, align 8, !tbaa !22
  %133 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %134 = bitcast i8* %133 to %struct._TExecution_Context*
  %pts48 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %134, i32 0, i32 39
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts48, i32 0, i32 4
  %135 = load i32*, i32** %cur_x, align 8, !tbaa !35
  %136 = bitcast i32* %135 to i8*
  %137 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call49 = call i8* %132(i8* %136, %struct.gc_state_s* %137) #3
  %138 = bitcast i8* %call49 to i32*
  %139 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %140 = bitcast i8* %139 to %struct._TExecution_Context*
  %pts50 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %140, i32 0, i32 39
  %cur_x51 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts50, i32 0, i32 4
  store i32* %138, i32** %cur_x51, align 8, !tbaa !35
  %141 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %142 = bitcast %struct.gc_state_s* %141 to %struct.gc_procs_common_s**
  %143 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %142, align 8, !tbaa !1
  %reloc_struct_ptr52 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %143, i32 0, i32 0
  %144 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr52, align 8, !tbaa !22
  %145 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %146 = bitcast i8* %145 to %struct._TExecution_Context*
  %pts53 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %146, i32 0, i32 39
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts53, i32 0, i32 5
  %147 = load i32*, i32** %cur_y, align 8, !tbaa !36
  %148 = bitcast i32* %147 to i8*
  %149 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call54 = call i8* %144(i8* %148, %struct.gc_state_s* %149) #3
  %150 = bitcast i8* %call54 to i32*
  %151 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %152 = bitcast i8* %151 to %struct._TExecution_Context*
  %pts55 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %152, i32 0, i32 39
  %cur_y56 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts55, i32 0, i32 5
  store i32* %150, i32** %cur_y56, align 8, !tbaa !36
  %153 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %154 = bitcast %struct.gc_state_s* %153 to %struct.gc_procs_common_s**
  %155 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %154, align 8, !tbaa !1
  %reloc_struct_ptr57 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %155, i32 0, i32 0
  %156 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr57, align 8, !tbaa !22
  %157 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %158 = bitcast i8* %157 to %struct._TExecution_Context*
  %pts58 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %158, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts58, i32 0, i32 6
  %159 = load i8*, i8** %touch, align 8, !tbaa !37
  %160 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call59 = call i8* %156(i8* %159, %struct.gc_state_s* %160) #3
  %161 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %162 = bitcast i8* %161 to %struct._TExecution_Context*
  %pts60 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %162, i32 0, i32 39
  %touch61 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts60, i32 0, i32 6
  store i8* %call59, i8** %touch61, align 8, !tbaa !37
  %163 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %164 = bitcast %struct.gc_state_s* %163 to %struct.gc_procs_common_s**
  %165 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %164, align 8, !tbaa !1
  %reloc_struct_ptr62 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %165, i32 0, i32 0
  %166 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr62, align 8, !tbaa !22
  %167 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %168 = bitcast i8* %167 to %struct._TExecution_Context*
  %pts63 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %168, i32 0, i32 39
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts63, i32 0, i32 7
  %169 = load i16*, i16** %contours, align 8, !tbaa !38
  %170 = bitcast i16* %169 to i8*
  %171 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call64 = call i8* %166(i8* %170, %struct.gc_state_s* %171) #3
  %172 = bitcast i8* %call64 to i16*
  %173 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %174 = bitcast i8* %173 to %struct._TExecution_Context*
  %pts65 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %174, i32 0, i32 39
  %contours66 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts65, i32 0, i32 7
  store i16* %172, i16** %contours66, align 8, !tbaa !38
  %175 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %176 = bitcast %struct.gc_state_s* %175 to %struct.gc_procs_common_s**
  %177 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %176, align 8, !tbaa !1
  %reloc_struct_ptr67 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %177, i32 0, i32 0
  %178 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr67, align 8, !tbaa !22
  %179 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %180 = bitcast i8* %179 to %struct._TExecution_Context*
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %180, i32 0, i32 40
  %org_x68 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight, i32 0, i32 2
  %181 = load i32*, i32** %org_x68, align 8, !tbaa !39
  %182 = bitcast i32* %181 to i8*
  %183 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call69 = call i8* %178(i8* %182, %struct.gc_state_s* %183) #3
  %184 = bitcast i8* %call69 to i32*
  %185 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %186 = bitcast i8* %185 to %struct._TExecution_Context*
  %twilight70 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %186, i32 0, i32 40
  %org_x71 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight70, i32 0, i32 2
  store i32* %184, i32** %org_x71, align 8, !tbaa !39
  %187 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %188 = bitcast %struct.gc_state_s* %187 to %struct.gc_procs_common_s**
  %189 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %188, align 8, !tbaa !1
  %reloc_struct_ptr72 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %189, i32 0, i32 0
  %190 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr72, align 8, !tbaa !22
  %191 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %192 = bitcast i8* %191 to %struct._TExecution_Context*
  %twilight73 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %192, i32 0, i32 40
  %org_y74 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight73, i32 0, i32 3
  %193 = load i32*, i32** %org_y74, align 8, !tbaa !40
  %194 = bitcast i32* %193 to i8*
  %195 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call75 = call i8* %190(i8* %194, %struct.gc_state_s* %195) #3
  %196 = bitcast i8* %call75 to i32*
  %197 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %198 = bitcast i8* %197 to %struct._TExecution_Context*
  %twilight76 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %198, i32 0, i32 40
  %org_y77 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight76, i32 0, i32 3
  store i32* %196, i32** %org_y77, align 8, !tbaa !40
  %199 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %200 = bitcast %struct.gc_state_s* %199 to %struct.gc_procs_common_s**
  %201 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %200, align 8, !tbaa !1
  %reloc_struct_ptr78 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %201, i32 0, i32 0
  %202 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr78, align 8, !tbaa !22
  %203 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %204 = bitcast i8* %203 to %struct._TExecution_Context*
  %twilight79 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %204, i32 0, i32 40
  %cur_x80 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight79, i32 0, i32 4
  %205 = load i32*, i32** %cur_x80, align 8, !tbaa !41
  %206 = bitcast i32* %205 to i8*
  %207 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call81 = call i8* %202(i8* %206, %struct.gc_state_s* %207) #3
  %208 = bitcast i8* %call81 to i32*
  %209 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %210 = bitcast i8* %209 to %struct._TExecution_Context*
  %twilight82 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %210, i32 0, i32 40
  %cur_x83 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight82, i32 0, i32 4
  store i32* %208, i32** %cur_x83, align 8, !tbaa !41
  %211 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %212 = bitcast %struct.gc_state_s* %211 to %struct.gc_procs_common_s**
  %213 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %212, align 8, !tbaa !1
  %reloc_struct_ptr84 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %213, i32 0, i32 0
  %214 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr84, align 8, !tbaa !22
  %215 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %216 = bitcast i8* %215 to %struct._TExecution_Context*
  %twilight85 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %216, i32 0, i32 40
  %cur_y86 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight85, i32 0, i32 5
  %217 = load i32*, i32** %cur_y86, align 8, !tbaa !42
  %218 = bitcast i32* %217 to i8*
  %219 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call87 = call i8* %214(i8* %218, %struct.gc_state_s* %219) #3
  %220 = bitcast i8* %call87 to i32*
  %221 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %222 = bitcast i8* %221 to %struct._TExecution_Context*
  %twilight88 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %222, i32 0, i32 40
  %cur_y89 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight88, i32 0, i32 5
  store i32* %220, i32** %cur_y89, align 8, !tbaa !42
  %223 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %224 = bitcast %struct.gc_state_s* %223 to %struct.gc_procs_common_s**
  %225 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %224, align 8, !tbaa !1
  %reloc_struct_ptr90 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %225, i32 0, i32 0
  %226 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr90, align 8, !tbaa !22
  %227 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %228 = bitcast i8* %227 to %struct._TExecution_Context*
  %twilight91 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %228, i32 0, i32 40
  %touch92 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight91, i32 0, i32 6
  %229 = load i8*, i8** %touch92, align 8, !tbaa !43
  %230 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call93 = call i8* %226(i8* %229, %struct.gc_state_s* %230) #3
  %231 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %232 = bitcast i8* %231 to %struct._TExecution_Context*
  %twilight94 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %232, i32 0, i32 40
  %touch95 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight94, i32 0, i32 6
  store i8* %call93, i8** %touch95, align 8, !tbaa !43
  %233 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %234 = bitcast %struct.gc_state_s* %233 to %struct.gc_procs_common_s**
  %235 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %234, align 8, !tbaa !1
  %reloc_struct_ptr96 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %235, i32 0, i32 0
  %236 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr96, align 8, !tbaa !22
  %237 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %238 = bitcast i8* %237 to %struct._TExecution_Context*
  %twilight97 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %238, i32 0, i32 40
  %contours98 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight97, i32 0, i32 7
  %239 = load i16*, i16** %contours98, align 8, !tbaa !44
  %240 = bitcast i16* %239 to i8*
  %241 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call99 = call i8* %236(i8* %240, %struct.gc_state_s* %241) #3
  %242 = bitcast i8* %call99 to i16*
  %243 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %244 = bitcast i8* %243 to %struct._TExecution_Context*
  %twilight100 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %244, i32 0, i32 40
  %contours101 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %twilight100, i32 0, i32 7
  store i16* %242, i16** %contours101, align 8, !tbaa !44
  %245 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %246 = bitcast %struct.gc_state_s* %245 to %struct.gc_procs_common_s**
  %247 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %246, align 8, !tbaa !1
  %reloc_struct_ptr102 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %247, i32 0, i32 0
  %248 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr102, align 8, !tbaa !22
  %249 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %250 = bitcast i8* %249 to %struct._TExecution_Context*
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %250, i32 0, i32 46
  %251 = load i64*, i64** %cvt, align 8, !tbaa !45
  %252 = bitcast i64* %251 to i8*
  %253 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call103 = call i8* %248(i8* %252, %struct.gc_state_s* %253) #3
  %254 = bitcast i8* %call103 to i64*
  %255 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %256 = bitcast i8* %255 to %struct._TExecution_Context*
  %cvt104 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %256, i32 0, i32 46
  store i64* %254, i64** %cvt104, align 8, !tbaa !45
  %257 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %258 = bitcast %struct.gc_state_s* %257 to %struct.gc_procs_common_s**
  %259 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %258, align 8, !tbaa !1
  %reloc_struct_ptr105 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %259, i32 0, i32 0
  %260 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr105, align 8, !tbaa !22
  %261 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %262 = bitcast i8* %261 to %struct._TExecution_Context*
  %memory = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %262, i32 0, i32 61
  %263 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %memory, align 8, !tbaa !46
  %264 = bitcast %struct.ttfMemory_s* %263 to i8*
  %265 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call106 = call i8* %260(i8* %264, %struct.gc_state_s* %265) #3
  %266 = bitcast i8* %call106 to %struct.ttfMemory_s*
  %267 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %268 = bitcast i8* %267 to %struct._TExecution_Context*
  %memory107 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %268, i32 0, i32 61
  store %struct.ttfMemory_s* %266, %struct.ttfMemory_s** %memory107, align 8, !tbaa !46
  %269 = load %struct._TExecution_Context*, %struct._TExecution_Context** %mptr, align 8, !tbaa !1
  %270 = bitcast %struct._TExecution_Context** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ttfFont_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ttfFont_s*
  %face = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %2, i32 0, i32 21
  %3 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !47
  %4 = bitcast %struct._TFace* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.ttfFont_s*
  %inst = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %7, i32 0, i32 22
  %8 = load %struct._TInstance*, %struct._TInstance** %inst, align 8, !tbaa !50
  %9 = bitcast %struct._TInstance* %8 to i8*
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %9, i8** %ptr2, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.ttfFont_s*
  %exec = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %12, i32 0, i32 23
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !51
  %14 = bitcast %struct._TExecution_Context* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr4, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.ttfFont_s*
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %17, i32 0, i32 24
  %18 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !52
  %19 = bitcast %struct.ttfInterpreter_s* %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr6, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %21 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %21
}

; Function Attrs: nounwind uwtable
define internal void @ttfFont_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.ttfFont_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ttfFont_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ttfFont_s*
  store %struct.ttfFont_s* %2, %struct.ttfFont_s** %mptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !22
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.ttfFont_s*
  %face = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %8, i32 0, i32 21
  %9 = load %struct._TFace*, %struct._TFace** %face, align 8, !tbaa !47
  %10 = bitcast %struct._TFace* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #3
  %12 = bitcast i8* %call to %struct._TFace*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.ttfFont_s*
  %face1 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %14, i32 0, i32 21
  store %struct._TFace* %12, %struct._TFace** %face1, align 8, !tbaa !47
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !22
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.ttfFont_s*
  %inst = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %20, i32 0, i32 22
  %21 = load %struct._TInstance*, %struct._TInstance** %inst, align 8, !tbaa !50
  %22 = bitcast %struct._TInstance* %21 to i8*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %18(i8* %22, %struct.gc_state_s* %23) #3
  %24 = bitcast i8* %call3 to %struct._TInstance*
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.ttfFont_s*
  %inst4 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %26, i32 0, i32 22
  store %struct._TInstance* %24, %struct._TInstance** %inst4, align 8, !tbaa !50
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gc_state_s* %27 to %struct.gc_procs_common_s**
  %29 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %28, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %29, i32 0, i32 0
  %30 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !22
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.ttfFont_s*
  %exec = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %32, i32 0, i32 23
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exec, align 8, !tbaa !51
  %34 = bitcast %struct._TExecution_Context* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %30(i8* %34, %struct.gc_state_s* %35) #3
  %36 = bitcast i8* %call6 to %struct._TExecution_Context*
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct.ttfFont_s*
  %exec7 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %38, i32 0, i32 23
  store %struct._TExecution_Context* %36, %struct._TExecution_Context** %exec7, align 8, !tbaa !51
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gc_state_s* %39 to %struct.gc_procs_common_s**
  %41 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %40, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %41, i32 0, i32 0
  %42 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !22
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct.ttfFont_s*
  %tti = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %44, i32 0, i32 24
  %45 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti, align 8, !tbaa !52
  %46 = bitcast %struct.ttfInterpreter_s* %45 to i8*
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %42(i8* %46, %struct.gc_state_s* %47) #3
  %48 = bitcast i8* %call9 to %struct.ttfInterpreter_s*
  %49 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %50 = bitcast i8* %49 to %struct.ttfFont_s*
  %tti10 = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %50, i32 0, i32 24
  store %struct.ttfInterpreter_s* %48, %struct.ttfInterpreter_s** %tti10, align 8, !tbaa !52
  %51 = load %struct.ttfFont_s*, %struct.ttfFont_s** %mptr, align 8, !tbaa !1
  %52 = bitcast %struct.ttfFont_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_TInstance", !2, i64 0, !6, i64 8, !9, i64 16, !6, i64 144, !2, i64 152, !6, i64 160, !2, i64 168, !6, i64 176, !3, i64 180, !3, i64 440, !11, i64 488, !11, i64 576, !6, i64 664, !2, i64 672, !6, i64 680, !2, i64 688}
!9 = !{!"_TIns_Metrics", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !3, i64 104, !6, i64 120, !6, i64 124}
!10 = !{!"long", !3, i64 0}
!11 = !{!"_TGraphicsState", !6, i64 0, !6, i64 4, !6, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !3, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84}
!12 = !{!"_TT_UnitVector", !13, i64 0, !13, i64 2}
!13 = !{!"short", !3, i64 0}
!14 = !{!15, !2, i64 0}
!15 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!16 = !{!8, !2, i64 152}
!17 = !{!8, !2, i64 168}
!18 = !{!19, !2, i64 0}
!19 = !{!"_TCodeRange", !2, i64 0, !6, i64 8}
!20 = !{!8, !2, i64 672}
!21 = !{!8, !2, i64 688}
!22 = !{!23, !2, i64 0}
!23 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!25, !2, i64 0}
!25 = !{!"_TExecution_Context", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !6, i64 72, !3, i64 76, !2, i64 336, !6, i64 344, !6, i64 348, !6, i64 352, !2, i64 360, !3, i64 368, !6, i64 416, !2, i64 424, !6, i64 432, !6, i64 436, !2, i64 440, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !9, i64 472, !6, i64 600, !10, i64 608, !10, i64 616, !6, i64 624, !26, i64 632, !26, i64 688, !26, i64 744, !26, i64 800, !26, i64 856, !6, i64 912, !11, i64 920, !11, i64 1008, !6, i64 1096, !6, i64 1100, !2, i64 1104, !10, i64 1112, !2, i64 1120, !2, i64 1128, !2, i64 1136, !2, i64 1144, !2, i64 1152, !2, i64 1160, !2, i64 1168, !2, i64 1176, !27, i64 1184, !6, i64 1392, !6, i64 1396, !6, i64 1400, !6, i64 1404, !2, i64 1408}
!26 = !{!"_TGlyph_Zone", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!27 = !{!"", !3, i64 0}
!28 = !{!25, !2, i64 48}
!29 = !{!25, !2, i64 64}
!30 = !{!25, !2, i64 360}
!31 = !{!25, !2, i64 424}
!32 = !{!25, !2, i64 440}
!33 = !{!25, !2, i64 808}
!34 = !{!25, !2, i64 816}
!35 = !{!25, !2, i64 824}
!36 = !{!25, !2, i64 832}
!37 = !{!25, !2, i64 840}
!38 = !{!25, !2, i64 848}
!39 = !{!25, !2, i64 864}
!40 = !{!25, !2, i64 872}
!41 = !{!25, !2, i64 880}
!42 = !{!25, !2, i64 888}
!43 = !{!25, !2, i64 896}
!44 = !{!25, !2, i64 904}
!45 = !{!25, !2, i64 1104}
!46 = !{!25, !2, i64 1408}
!47 = !{!48, !2, i64 136}
!48 = !{!"ttfFont_s", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !13, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!49 = !{!"", !6, i64 0, !6, i64 4}
!50 = !{!48, !2, i64 144}
!51 = !{!48, !2, i64 152}
!52 = !{!48, !2, i64 160}
