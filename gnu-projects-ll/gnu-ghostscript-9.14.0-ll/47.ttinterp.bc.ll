; ModuleID = './ttinterp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, void (%struct._TExecution_Context*, i64*)* }
%struct._TExecution_Context = type { %struct._TFace*, i32, i32, i8*, i32, i32, i8, i32, i32, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], i8*, i32, i32, i32, %struct._TCallRecord*, [3 x %struct._TCodeRange], i32, i64*, i32, i32, i64*, i32, i32, i32, i32, i32, %struct._TIns_Metrics, i32, i64, i64, i32, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, %struct._TGlyph_Zone, i32, %struct._TGraphicsState, %struct._TGraphicsState, i32, i32, i64*, i64, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, i32 (%struct._TExecution_Context*, i32)*, void (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, i32, i32)*, %struct.gsfix_jmp_buf, i32, i32, i32, i32, %struct.ttfMemory_s* }
%struct._TFace = type { %struct.ttfReader_s*, %struct.ttfFont_s*, %struct._TMaxProfile, i32, i32, i8*, i32, i8*, i32, i16*, i32, i32, i32, i32 }
%struct.ttfReader_s = type { i32 (%struct.ttfReader_s*)*, void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* }
%struct.ttfFont_s = type { %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._TFace*, %struct._TInstance*, %struct._TExecution_Context*, %struct.ttfInterpreter_s*, void (%struct.ttfFont_s*)*, i32 (%struct.ttfFont_s*, i8*, ...)*, %struct.gs_memory_s* }
%struct.ttfPtrElem = type { i32, i32 }
%struct._TInstance = type { %struct._TFace*, i32, %struct._TIns_Metrics, i32, %struct._TDefRecord*, i32, %struct._TDefRecord*, i32, [256 x i8], [3 x %struct._TCodeRange], %struct._TGraphicsState, %struct._TGraphicsState, i32, i64*, i32, i64* }
%struct.ttfInterpreter_s = type { %struct._TExecution_Context*, %struct.ttfSubGlyphUsage_s*, i32, i32, i32, %struct.ttfMemory_s* }
%struct.ttfSubGlyphUsage_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct._TMaxProfile = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct._TDefRecord = type { i32, i32, i8, i32 }
%struct._TCallRecord = type { i32, i32, i32, i32 }
%struct._TCodeRange = type { i8*, i32 }
%struct._TIns_Metrics = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, [4 x i32], i32, i32 }
%struct._TGlyph_Zone = type { i32, i32, i32*, i32*, i32*, i32*, i8*, i16* }
%struct._TGraphicsState = type { i32, i32, i32, %struct._TT_UnitVector, %struct._TT_UnitVector, %struct._TT_UnitVector, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32 }
%struct._TT_UnitVector = type { i16, i16 }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.ttfMemory_s = type { i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)* }
%struct.ttfMemoryDescriptor_s = type opaque
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.gsfix_jmp_buf_test = type { i8, [1 x %struct.__jmp_buf_tag] }
%struct._TT_Vector = type { i32, i32 }
%struct.LOC_Ins_IUP = type { i32*, i32* }

@Pop_Push_Count = internal global [512 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\02\00\02\00\02\00\02\00\02\00\02\00\00\02\00\02\00\00\05\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\00\00\00\00\01\00\00\00\01\00\01\00\01\00\01\00\01\02\01\00\00\00\02\02\00\01\01\01\01\00\02\00\00\00\01\00\02\00\01\00\01\00\00\00\01\00\01\00\00\00\00\00\00\00\00\00\01\00\01\00\01\00\01\00\01\00\00\00\02\00\02\00\00\00\00\00\02\00\02\00\00\00\00\00\02\00\01\01\02\00\01\01\01\01\01\01\02\00\02\01\02\01\00\01\00\01\00\00\00\00\01\00\02\01\02\01\02\01\02\01\02\01\02\01\01\01\01\01\01\00\00\00\02\01\02\01\01\01\01\00\01\00\01\00\02\01\02\01\02\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\02\00\02\00\00\00\00\00\00\00\00\00\01\00\01\00\00\00\02\00\02\00\00\00\00\00\01\00\02\00\02\00\01\01\01\00\03\03\02\01\02\01\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00\02\00", align 16
@Instruct_Dispatch = internal global [256 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SVTCA }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SVTCA }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SPVTCA }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SPVTCA }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SFVTCA }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SFVTCA }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SPVTL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SPVTL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SFVTL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SFVTL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SPVFS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SFVFS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_GPV }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_GFV }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SFVTPV }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ISECT }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SRP0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SRP1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SRP2 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SZP0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SZP1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SZP2 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SZPS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SLOOP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_RTG }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_RTHG }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SMD }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ELSE }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_JMPR }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SCVTCI }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SSWCI }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SSW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DUP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_POP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_CLEAR }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SWAP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DEPTH }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_CINDEX }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MINDEX }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ALIGNPTS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UTP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_LOOPCALL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_CALL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_FDEF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ENDF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDAP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDAP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_IUP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_IUP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SHP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SHP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SHC }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SHC }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SHZ }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SHZ }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SHPIX }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_IP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MSIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MSIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ALIGNRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_RTDG }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIAP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIAP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NPUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NPUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_WS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_RS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_WCVTP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_RCVT }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_GC }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_GC }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SCFS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MD }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MD }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MPPEM }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MPS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_FLIPON }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_FLIPOFF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DEBUG }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_LT }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_LTEQ }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_GT }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_GTEQ }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_EQ }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NEQ }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ODD }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_EVEN }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_IF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_EIF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_AND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_OR }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NOT }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DELTAP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SDB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SDS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ADD }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SUB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DIV }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MUL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ABS }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NEG }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_FLOOR }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_CEILING }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_NROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_WCVTF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DELTAP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DELTAP }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DELTAC }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DELTAC }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_DELTAC }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_S45ROUND }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_JROT }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_JROF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ROFF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.123, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_RUTG }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_RDTG }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SANGW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_AA }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_FLIPPT }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_FLIPRGON }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_FLIPRGOFF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SCANCTRL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SDPVTL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SDPVTL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_GETINFO }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_IDEF }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_ROLL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MAX }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIN }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_SCANTYPE }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_INSTCTRL }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.147, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.155, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.161, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.162, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.165, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.168, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.169, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.172, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.173, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.174, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.175, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_UNKNOWN }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.179, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.180, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.181, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.183, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHB }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.185, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.187, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.188, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_PUSHW }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.196, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.201, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.203, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.205, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.207, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.208, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.209, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.211, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.212, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.213, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.214, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.215, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.217, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.219, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.220, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.222, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.223, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MDRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.226, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.227, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.228, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.232, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.233, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.234, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.236, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.237, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.238, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.241, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.242, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.243, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.245, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.246, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.247, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.248, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.249, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.250, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.251, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.253, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.254, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.255, i32 0, i32 0), void (%struct._TExecution_Context*, i64*)* @Ins_MIRP }], align 16
@.str = private unnamed_addr constant [13 x i8] c"  SVTCA  y  \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  SVTCA  x  \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"  SPvTCA y  \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"  SPvTCA x  \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"  SFvTCA y  \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  SFvTCA x  \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"  SPvTL //  \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"  SPvTL +   \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"  SFvTL //  \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"  SFvTL +   \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"  SPvFS     \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"  SFvFS     \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"  GPV       \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"  GFV       \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"  SFvTPv    \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"  ISECT     \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"  SRP0      \00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"  SRP1      \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"  SRP2      \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"  SZP0      \00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"  SZP1      \00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"  SZP2      \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"  SZPS      \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"  SLOOP     \00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"  RTG       \00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"  RTHG      \00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"  SMD       \00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"  ELSE      \00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"  JMPR      \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"  SCvTCi    \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"  SSwCi     \00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"  SSW       \00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"  DUP       \00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"  POP       \00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"  CLEAR     \00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"  SWAP      \00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"  DEPTH     \00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"  CINDEX    \00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"  MINDEX    \00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"  AlignPTS  \00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"  INS_$28   \00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"  UTP       \00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"  LOOPCALL  \00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"  CALL      \00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"  FDEF      \00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"  ENDF      \00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"  MDAP[0]   \00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"  MDAP[1]   \00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"  IUP[0]    \00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"  IUP[1]    \00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"  SHP[0]    \00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"  SHP[1]    \00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"  SHC[0]    \00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"  SHC[1]    \00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"  SHZ[0]    \00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"  SHZ[1]    \00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"  SHPIX     \00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"  IP        \00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"  MSIRP[0]  \00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"  MSIRP[1]  \00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"  AlignRP   \00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"  RTDG      \00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"  MIAP[0]   \00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"  MIAP[1]   \00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"  NPushB    \00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"  NPushW    \00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"  WS        \00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"  RS        \00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"  WCvtP     \00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"  RCvt      \00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"  GC[0]     \00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"  GC[1]     \00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"  SCFS      \00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"  MD[0]     \00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"  MD[1]     \00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"  MPPEM     \00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"  MPS       \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"  FlipON    \00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"  FlipOFF   \00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"  DEBUG     \00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"  LT        \00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"  LTEQ      \00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"  GT        \00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"  GTEQ      \00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"  EQ        \00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"  NEQ       \00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"  ODD       \00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"  EVEN      \00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"  IF        \00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"  EIF       \00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"  AND       \00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"  OR        \00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"  NOT       \00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"  DeltaP1   \00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"  SDB       \00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"  SDS       \00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"  ADD       \00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"  SUB       \00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"  DIV       \00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"  MUL       \00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"  ABS       \00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"  NEG       \00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"  FLOOR     \00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"  CEILING   \00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"  ROUND[0]  \00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"  ROUND[1]  \00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"  ROUND[2]  \00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"  ROUND[3]  \00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"  NROUND[0] \00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"  NROUND[1] \00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"  NROUND[2] \00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"  NROUND[3] \00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"  WCvtF     \00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"  DeltaP2   \00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"  DeltaP3   \00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"  DeltaCn[0] \00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"  DeltaCn[1] \00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"  DeltaCn[2] \00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"  SROUND    \00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"  S45Round  \00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"  JROT      \00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"  JROF      \00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"  ROFF      \00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"  INS_$7B   \00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"  RUTG      \00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"  RDTG      \00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"  SANGW     \00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"  AA        \00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"  FlipPT    \00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"  FlipRgON  \00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"  FlipRgOFF \00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"  INS_$83   \00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"  INS_$84   \00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"  ScanCTRL  \00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"  SDPVTL[0] \00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"  SDPVTL[1] \00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"  GetINFO   \00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"  IDEF      \00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"  ROLL      \00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"  MAX       \00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"  MIN       \00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"  ScanTYPE  \00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"  InstCTRL  \00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"  INS_$8F   \00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"  INS_$90  \00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"  INS_$91  \00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"  INS_$92  \00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"  INS_$93  \00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"  INS_$94  \00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"  INS_$95  \00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"  INS_$96  \00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"  INS_$97  \00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"  INS_$98  \00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"  INS_$99  \00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"  INS_$9A  \00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"  INS_$9B  \00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"  INS_$9C  \00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"  INS_$9D  \00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"  INS_$9E  \00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"  INS_$9F  \00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"  INS_$A0  \00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"  INS_$A1  \00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"  INS_$A2  \00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"  INS_$A3  \00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"  INS_$A4  \00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"  INS_$A5  \00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"  INS_$A6  \00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"  INS_$A7  \00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"  INS_$A8  \00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"  INS_$A9  \00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"  INS_$AA  \00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"  INS_$AB  \00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"  INS_$AC  \00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"  INS_$AD  \00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"  INS_$AE  \00", align 1
@.str.175 = private unnamed_addr constant [12 x i8] c"  INS_$AF  \00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"  PushB[0]  \00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"  PushB[1]  \00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"  PushB[2]  \00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"  PushB[3]  \00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"  PushB[4]  \00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"  PushB[5]  \00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"  PushB[6]  \00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"  PushB[7]  \00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"  PushW[0]  \00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"  PushW[1]  \00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"  PushW[2]  \00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"  PushW[3]  \00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"  PushW[4]  \00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"  PushW[5]  \00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"  PushW[6]  \00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"  PushW[7]  \00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"  MDRP[00]  \00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"  MDRP[01]  \00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"  MDRP[02]  \00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"  MDRP[03]  \00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"  MDRP[04]  \00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"  MDRP[05]  \00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"  MDRP[06]  \00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"  MDRP[07]  \00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"  MDRP[08]  \00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"  MDRP[09]  \00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"  MDRP[10]  \00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"  MDRP[11]  \00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"  MDRP[12]  \00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"  MDRP[13]  \00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"  MDRP[14]  \00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"  MDRP[15]  \00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"  MDRP[16]  \00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"  MDRP[17]  \00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"  MDRP[18]  \00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"  MDRP[19]  \00", align 1
@.str.212 = private unnamed_addr constant [13 x i8] c"  MDRP[20]  \00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"  MDRP[21]  \00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"  MDRP[22]  \00", align 1
@.str.215 = private unnamed_addr constant [13 x i8] c"  MDRP[23]  \00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"  MDRP[24]  \00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"  MDRP[25]  \00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"  MDRP[26]  \00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"  MDRP[27]  \00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"  MDRP[28]  \00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"  MDRP[29]  \00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"  MDRP[30]  \00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"  MDRP[31]  \00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"  MIRP[00]  \00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"  MIRP[01]  \00", align 1
@.str.226 = private unnamed_addr constant [13 x i8] c"  MIRP[02]  \00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"  MIRP[03]  \00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"  MIRP[04]  \00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"  MIRP[05]  \00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"  MIRP[06]  \00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"  MIRP[07]  \00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"  MIRP[08]  \00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"  MIRP[09]  \00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"  MIRP[10]  \00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"  MIRP[11]  \00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"  MIRP[12]  \00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"  MIRP[13]  \00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"  MIRP[14]  \00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"  MIRP[15]  \00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"  MIRP[16]  \00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"  MIRP[17]  \00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"  MIRP[18]  \00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"  MIRP[19]  \00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"  MIRP[20]  \00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"  MIRP[21]  \00", align 1
@.str.246 = private unnamed_addr constant [13 x i8] c"  MIRP[22]  \00", align 1
@.str.247 = private unnamed_addr constant [13 x i8] c"  MIRP[23]  \00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"  MIRP[24]  \00", align 1
@.str.249 = private unnamed_addr constant [13 x i8] c"  MIRP[25]  \00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"  MIRP[26]  \00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"  MIRP[27]  \00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"  MIRP[28]  \00", align 1
@.str.253 = private unnamed_addr constant [13 x i8] c"  MIRP[29]  \00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"  MIRP[30]  \00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"  MIRP[31]  \00", align 1

; Function Attrs: nounwind uwtable
define i32 @RunIns(%struct._TExecution_Context* %exc) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %Result = alloca i32, align 4
  %A = alloca i32, align 4
  %WITH = alloca %struct._TDefRecord*, align 8
  %WITH1 = alloca %struct._TCallRecord*, align 8
  %bFirst = alloca i32, align 4
  %dbg_prt = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %Result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %A to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._TDefRecord** %WITH to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._TCallRecord** %WITH1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %bFirst to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %dbg_prt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %dbg_prt, align 4, !tbaa !5
  %6 = load i32, i32* %dbg_prt, align 4, !tbaa !5
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 31
  %ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 12
  store i64 0, i64* %ratio, align 8, !tbaa !7
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 31
  %x_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics1, i32 0, i32 3
  %9 = load i32, i32* %x_ppem, align 4, !tbaa !16
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 31
  %y_ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics2, i32 0, i32 4
  %11 = load i32, i32* %y_ppem, align 4, !tbaa !17
  %cmp = icmp ne i32 %9, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_read_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 53
  store i32 (%struct._TExecution_Context*, i32)* @Read_CVT_Stretched, i32 (%struct._TExecution_Context*, i32)** %func_read_cvt, align 8, !tbaa !18
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_write_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 54
  store void (%struct._TExecution_Context*, i32, i32)* @Write_CVT_Stretched, void (%struct._TExecution_Context*, i32, i32)** %func_write_cvt, align 8, !tbaa !19
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 55
  store void (%struct._TExecution_Context*, i32, i32)* @Move_CVT_Stretched, void (%struct._TExecution_Context*, i32, i32)** %func_move_cvt, align 8, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_read_cvt3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 53
  store i32 (%struct._TExecution_Context*, i32)* @Read_CVT, i32 (%struct._TExecution_Context*, i32)** %func_read_cvt3, align 8, !tbaa !18
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_write_cvt4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 54
  store void (%struct._TExecution_Context*, i32, i32)* @Write_CVT, void (%struct._TExecution_Context*, i32, i32)** %func_write_cvt4, align 8, !tbaa !19
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move_cvt5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 55
  store void (%struct._TExecution_Context*, i32, i32)* @Move_CVT, void (%struct._TExecution_Context*, i32, i32)** %func_move_cvt5, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %18) #5
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  %21 = load i32, i32* %round_state, align 4, !tbaa !21
  %conv = trunc i32 %21 to i8
  call void @Compute_Round(%struct._TExecution_Context* %19, i8 zeroext %conv) #5
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 56
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %trap, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %23 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %23, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %24 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay6 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %24, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay6) #6
  store i32 %call, i32* %Result, align 4, !tbaa !5
  %25 = load i32, i32* %Result, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %26 = load i32, i32* %Result, align 4, !tbaa !5
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 1
  store i32 %26, i32* %error, align 4, !tbaa !22
  br label %_LExit

if.end.8:                                         ; preds = %if.end
  store i32 1, i32* %bFirst, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.8
  %28 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call9 = call i32 @Calc_Length(%struct._TExecution_Context* %28) #5
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 24
  %30 = load i32, i32* %top, align 4, !tbaa !23
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 6
  %32 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv10 = zext i8 %32 to i32
  %mul = mul nsw i32 %conv10, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* @Pop_Push_Count, i32 0, i64 %idxprom
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv11 = zext i8 %33 to i32
  %sub = sub nsw i32 %30, %conv11
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 26
  store i32 %sub, i32* %args, align 4, !tbaa !26
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 26
  %36 = load i32, i32* %args12, align 4, !tbaa !26
  %cmp13 = icmp slt i32 %36, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.body
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error16 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 1
  store i32 1025, i32* %error16, align 4, !tbaa !22
  br label %_LErrorLabel

if.end.17:                                        ; preds = %do.body
  %38 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args18 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 26
  %39 = load i32, i32* %args18, align 4, !tbaa !26
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode19 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 6
  %41 = load i8, i8* %opcode19, align 1, !tbaa !24
  %conv20 = zext i8 %41 to i32
  %mul21 = mul nsw i32 %conv20, 2
  %add22 = add nsw i32 %mul21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [512 x i8], [512 x i8]* @Pop_Push_Count, i32 0, i64 %idxprom23
  %42 = load i8, i8* %arrayidx24, align 1, !tbaa !25
  %conv25 = zext i8 %42 to i32
  %add26 = add nsw i32 %39, %conv25
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 27
  store i32 %add26, i32* %new_top, align 4, !tbaa !27
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top27 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 27
  %45 = load i32, i32* %new_top27, align 4, !tbaa !27
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stackSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %46, i32 0, i32 23
  %47 = load i32, i32* %stackSize, align 4, !tbaa !28
  %cmp28 = icmp sgt i32 %45, %47
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.17
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error31 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 1
  store i32 1026, i32* %error31, align 4, !tbaa !22
  br label %_LErrorLabel

if.end.32:                                        ; preds = %if.end.17
  %49 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %49, i32 0, i32 8
  store i32 1, i32* %step_ins, align 4, !tbaa !29
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 1
  store i32 0, i32* %error33, align 4, !tbaa !22
  %51 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode34 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %51, i32 0, i32 6
  %52 = load i8, i8* %opcode34, align 1, !tbaa !24
  %idxprom35 = zext i8 %52 to i64
  %arrayidx36 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @Instruct_Dispatch, i32 0, i64 %idxprom35
  %p = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx36, i32 0, i32 1
  %53 = load void (%struct._TExecution_Context*, i64*)*, void (%struct._TExecution_Context*, i64*)** %p, align 8, !tbaa !30
  %54 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %55 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args37 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %55, i32 0, i32 26
  %56 = load i32, i32* %args37, align 4, !tbaa !26
  %idxprom38 = sext i32 %56 to i64
  %57 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %57, i32 0, i32 25
  %58 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx39 = getelementptr inbounds i64, i64* %58, i64 %idxprom38
  call void %53(%struct._TExecution_Context* %54, i64* %arrayidx39) #5
  %59 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %59, i32 0, i32 1
  %60 = load i32, i32* %error40, align 4, !tbaa !22
  %cmp41 = icmp ne i32 %60, 0
  br i1 %cmp41, label %if.then.43, label %if.end.75

if.then.43:                                       ; preds = %if.end.32
  %61 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error44 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %61, i32 0, i32 1
  %62 = load i32, i32* %error44, align 4, !tbaa !22
  switch i32 %62, label %sw.default [
    i32 1024, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.43
  store i32 0, i32* %A, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.else.71, %sw.bb
  %63 = load i32, i32* %A, align 4, !tbaa !5
  %64 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %numIDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %64, i32 0, i32 11
  %65 = load i32, i32* %numIDefs, align 4, !tbaa !33
  %cmp45 = icmp slt i32 %63, %65
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %66 = load i32, i32* %A, align 4, !tbaa !5
  %idxprom47 = sext i32 %66 to i64
  %67 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %67, i32 0, i32 12
  %68 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !34
  %arrayidx48 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %68, i64 %idxprom47
  store %struct._TDefRecord* %arrayidx48, %struct._TDefRecord** %WITH, align 8, !tbaa !1
  %69 = load %struct._TDefRecord*, %struct._TDefRecord** %WITH, align 8, !tbaa !1
  %Active = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %69, i32 0, i32 3
  %70 = load i32, i32* %Active, align 4, !tbaa !35
  %tobool49 = icmp ne i32 %70, 0
  br i1 %tobool49, label %land.lhs.true, label %if.else.71

land.lhs.true:                                    ; preds = %while.body
  %71 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode50 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %71, i32 0, i32 6
  %72 = load i8, i8* %opcode50, align 1, !tbaa !24
  %conv51 = zext i8 %72 to i32
  %73 = load %struct._TDefRecord*, %struct._TDefRecord** %WITH, align 8, !tbaa !1
  %Opc = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %73, i32 0, i32 2
  %74 = load i8, i8* %Opc, align 1, !tbaa !37
  %conv52 = zext i8 %74 to i32
  %cmp53 = icmp eq i32 %conv51, %conv52
  br i1 %cmp53, label %if.then.55, label %if.else.71

if.then.55:                                       ; preds = %land.lhs.true
  %75 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %75, i32 0, i32 17
  %76 = load i32, i32* %callTop, align 4, !tbaa !38
  %77 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %77, i32 0, i32 18
  %78 = load i32, i32* %callSize, align 4, !tbaa !39
  %cmp56 = icmp sge i32 %76, %78
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.55
  %79 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error59 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %79, i32 0, i32 1
  store i32 1032, i32* %error59, align 4, !tbaa !22
  br label %_LErrorLabel

if.end.60:                                        ; preds = %if.then.55
  %80 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop61 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %80, i32 0, i32 17
  %81 = load i32, i32* %callTop61, align 4, !tbaa !38
  %idxprom62 = sext i32 %81 to i64
  %82 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %82, i32 0, i32 19
  %83 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !40
  %arrayidx63 = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %83, i64 %idxprom62
  store %struct._TCallRecord* %arrayidx63, %struct._TCallRecord** %WITH1, align 8, !tbaa !1
  %84 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %84, i32 0, i32 2
  %85 = load i32, i32* %curRange, align 4, !tbaa !41
  %86 = load %struct._TCallRecord*, %struct._TCallRecord** %WITH1, align 8, !tbaa !1
  %Caller_Range = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %86, i32 0, i32 0
  store i32 %85, i32* %Caller_Range, align 4, !tbaa !42
  %87 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %87, i32 0, i32 4
  %88 = load i32, i32* %IP, align 4, !tbaa !44
  %add64 = add nsw i32 %88, 1
  %89 = load %struct._TCallRecord*, %struct._TCallRecord** %WITH1, align 8, !tbaa !1
  %Caller_IP = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %89, i32 0, i32 1
  store i32 %add64, i32* %Caller_IP, align 4, !tbaa !45
  %90 = load %struct._TCallRecord*, %struct._TCallRecord** %WITH1, align 8, !tbaa !1
  %Cur_Count = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %90, i32 0, i32 2
  store i32 1, i32* %Cur_Count, align 4, !tbaa !46
  %91 = load %struct._TDefRecord*, %struct._TDefRecord** %WITH, align 8, !tbaa !1
  %Start = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %91, i32 0, i32 1
  %92 = load i32, i32* %Start, align 4, !tbaa !47
  %93 = load %struct._TCallRecord*, %struct._TCallRecord** %WITH1, align 8, !tbaa !1
  %Cur_Restart = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %93, i32 0, i32 3
  store i32 %92, i32* %Cur_Restart, align 4, !tbaa !48
  %94 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %95 = load %struct._TDefRecord*, %struct._TDefRecord** %WITH, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %95, i32 0, i32 0
  %96 = load i32, i32* %Range, align 4, !tbaa !49
  %97 = load %struct._TDefRecord*, %struct._TDefRecord** %WITH, align 8, !tbaa !1
  %Start65 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %97, i32 0, i32 1
  %98 = load i32, i32* %Start65, align 4, !tbaa !47
  %call66 = call i32 @Ins_Goto_CodeRange(%struct._TExecution_Context* %94, i32 %96, i32 %98) #5
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.60
  br label %_LErrorLabel

if.end.70:                                        ; preds = %if.end.60
  br label %_LSuiteLabel

if.else.71:                                       ; preds = %land.lhs.true, %while.body
  %99 = load i32, i32* %A, align 4, !tbaa !5
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %A, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %100 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error72 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %100, i32 0, i32 1
  store i32 1024, i32* %error72, align 4, !tbaa !22
  br label %_LErrorLabel

sw.default:                                       ; preds = %if.then.43
  %101 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error73 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %101, i32 0, i32 1
  %102 = load i32, i32* %error73, align 4, !tbaa !22
  %103 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error74 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %103, i32 0, i32 1
  store i32 %102, i32* %error74, align 4, !tbaa !22
  br label %_LErrorLabel

if.end.75:                                        ; preds = %if.end.32
  %104 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top76 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %104, i32 0, i32 27
  %105 = load i32, i32* %new_top76, align 4, !tbaa !27
  %106 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top77 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %106, i32 0, i32 24
  store i32 %105, i32* %top77, align 4, !tbaa !23
  %107 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins78 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %107, i32 0, i32 8
  %108 = load i32, i32* %step_ins78, align 4, !tbaa !29
  %tobool79 = icmp ne i32 %108, 0
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.75
  %109 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %109, i32 0, i32 7
  %110 = load i32, i32* %length, align 4, !tbaa !50
  %111 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP81 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %111, i32 0, i32 4
  %112 = load i32, i32* %IP81, align 4, !tbaa !44
  %add82 = add nsw i32 %112, %110
  store i32 %add82, i32* %IP81, align 4, !tbaa !44
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.75
  br label %_LSuiteLabel

_LSuiteLabel:                                     ; preds = %if.end.83, %if.end.70
  %113 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP84 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %113, i32 0, i32 4
  %114 = load i32, i32* %IP84, align 4, !tbaa !44
  %115 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %codeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %115, i32 0, i32 5
  %116 = load i32, i32* %codeSize, align 4, !tbaa !51
  %cmp85 = icmp sge i32 %114, %116
  br i1 %cmp85, label %if.then.87, label %if.end.94

if.then.87:                                       ; preds = %_LSuiteLabel
  %117 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop88 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %117, i32 0, i32 17
  %118 = load i32, i32* %callTop88, align 4, !tbaa !38
  %cmp89 = icmp sgt i32 %118, 0
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.then.87
  %119 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error92 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %119, i32 0, i32 1
  store i32 1027, i32* %error92, align 4, !tbaa !22
  br label %_LErrorLabel

if.else.93:                                       ; preds = %if.then.87
  br label %_LNo_Error

if.end.94:                                        ; preds = %_LSuiteLabel
  br label %do.cond

do.cond:                                          ; preds = %if.end.94
  %120 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %instruction_trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %120, i32 0, i32 41
  %121 = load i32, i32* %instruction_trap, align 4, !tbaa !52
  %tobool95 = icmp ne i32 %121, 0
  %lnot = xor i1 %tobool95, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %_LNo_Error

_LNo_Error:                                       ; preds = %do.end, %if.else.93
  store i32 0, i32* %Result, align 4, !tbaa !5
  br label %_LExit

_LErrorLabel:                                     ; preds = %if.then.91, %sw.default, %while.end, %if.then.69, %if.then.58, %if.then.30, %if.then.15
  %122 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error96 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %122, i32 0, i32 1
  %123 = load i32, i32* %error96, align 4, !tbaa !22
  store i32 %123, i32* %Result, align 4, !tbaa !5
  br label %_LExit

_LExit:                                           ; preds = %_LErrorLabel, %_LNo_Error, %if.then.7
  %124 = load i32, i32* %Result, align 4, !tbaa !5
  %125 = bitcast i32* %dbg_prt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %bFirst to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast %struct._TCallRecord** %WITH1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct._TDefRecord** %WITH to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i32* %A to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %Result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  ret i32 %124
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @Read_CVT_Stretched(%struct._TExecution_Context* %exc, i32 %index) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %index.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 46
  %2 = load i64*, i64** %cvt, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %3 to i32
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i64 @Current_Ratio(%struct._TExecution_Context* %4) #5
  %conv1 = trunc i64 %call to i32
  %call2 = call i32 @MulDiv_Round(i32 %conv, i32 %conv1, i32 65536) #5
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal void @Write_CVT_Stretched(%struct._TExecution_Context* %exc, i32 %index, i32 %value) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %index.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ov = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 46
  %3 = load i64*, i64** %cvt, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %ov, align 4, !tbaa !5
  %5 = load i32, i32* %ov, align 4, !tbaa !5
  %6 = load i32, i32* %value.addr, align 4, !tbaa !5
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i64 @Current_Ratio(%struct._TExecution_Context* %7) #5
  %conv1 = trunc i64 %call to i32
  %call2 = call i32 @MulDiv_Round(i32 %6, i32 65536, i32 %conv1) #5
  %conv3 = sext i32 %call2 to i64
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 46
  %10 = load i64*, i64** %cvt5, align 8, !tbaa !53
  %arrayidx6 = getelementptr inbounds i64, i64* %10, i64 %idxprom4
  store i64 %conv3, i64* %arrayidx6, align 8, !tbaa !54
  %11 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Move_CVT_Stretched(%struct._TExecution_Context* %exc, i32 %index, i32 %value) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %index.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ov = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 46
  %3 = load i64*, i64** %cvt, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %ov, align 4, !tbaa !5
  %5 = load i32, i32* %ov, align 4, !tbaa !5
  %6 = load i32, i32* %value.addr, align 4, !tbaa !5
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i64 @Current_Ratio(%struct._TExecution_Context* %7) #5
  %conv1 = trunc i64 %call to i32
  %call2 = call i32 @MulDiv_Round(i32 %6, i32 65536, i32 %conv1) #5
  %conv3 = sext i32 %call2 to i64
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 46
  %10 = load i64*, i64** %cvt5, align 8, !tbaa !53
  %arrayidx6 = getelementptr inbounds i64, i64* %10, i64 %idxprom4
  %11 = load i64, i64* %arrayidx6, align 8, !tbaa !54
  %add = add nsw i64 %11, %conv3
  store i64 %add, i64* %arrayidx6, align 8, !tbaa !54
  %12 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Read_CVT(%struct._TExecution_Context* %exc, i32 %index) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %index.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 46
  %2 = load i64*, i64** %cvt, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @Write_CVT(%struct._TExecution_Context* %exc, i32 %index, i32 %value) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %index.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ov = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 46
  %3 = load i64*, i64** %cvt, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %ov, align 4, !tbaa !5
  %5 = load i32, i32* %ov, align 4, !tbaa !5
  %6 = load i32, i32* %value.addr, align 4, !tbaa !5
  %conv1 = sext i32 %6 to i64
  %7 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 46
  %9 = load i64*, i64** %cvt3, align 8, !tbaa !53
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 %idxprom2
  store i64 %conv1, i64* %arrayidx4, align 8, !tbaa !54
  %10 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Move_CVT(%struct._TExecution_Context* %exc, i32 %index, i32 %value) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %index.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ov = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 46
  %3 = load i64*, i64** %cvt, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %ov, align 4, !tbaa !5
  %5 = load i32, i32* %ov, align 4, !tbaa !5
  %6 = load i32, i32* %value.addr, align 4, !tbaa !5
  %conv1 = sext i32 %6 to i64
  %7 = load i32, i32* %index.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 46
  %9 = load i64*, i64** %cvt3, align 8, !tbaa !53
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 %idxprom2
  %10 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  %add = add nsw i64 %10, %conv1
  store i64 %add, i64* %arrayidx4, align 8, !tbaa !54
  %11 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Compute_Funcs(%struct._TExecution_Context* %exc) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %1 = load i16, i16* %x, align 2, !tbaa !55
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_freeProj = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 51
  store i32 (%struct._TExecution_Context*, i32, i32)* @Project_x, i32 (%struct._TExecution_Context*, i32, i32)** %func_freeProj, align 8, !tbaa !56
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS2, i32 0, i32 4
  %x3 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector, i32 0, i32 0
  %4 = load i16, i16* %x3, align 2, !tbaa !57
  %conv4 = sext i16 %4 to i64
  %mul = mul nsw i64 %conv4, 65536
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 47
  store i64 %mul, i64* %F_dot_P, align 8, !tbaa !58
  br label %if.end.41

if.else:                                          ; preds = %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 42
  %freeVector6 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS5, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector6, i32 0, i32 1
  %7 = load i16, i16* %y, align 2, !tbaa !59
  %conv7 = sext i16 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 16384
  br i1 %cmp8, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.else
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_freeProj11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 51
  store i32 (%struct._TExecution_Context*, i32, i32)* @Project_y, i32 (%struct._TExecution_Context*, i32, i32)** %func_freeProj11, align 8, !tbaa !56
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %projVector13 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS12, i32 0, i32 4
  %y14 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector13, i32 0, i32 1
  %10 = load i16, i16* %y14, align 2, !tbaa !60
  %conv15 = sext i16 %10 to i64
  %mul16 = mul nsw i64 %conv15, 65536
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P17 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 47
  store i64 %mul16, i64* %F_dot_P17, align 8, !tbaa !58
  br label %if.end

if.else.18:                                       ; preds = %if.else
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 52
  store void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)* @Direct_Move, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_freeProj19 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 51
  store i32 (%struct._TExecution_Context*, i32, i32)* @Free_Project, i32 (%struct._TExecution_Context*, i32, i32)** %func_freeProj19, align 8, !tbaa !56
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS20 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 42
  %projVector21 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS20, i32 0, i32 4
  %x22 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector21, i32 0, i32 0
  %15 = load i16, i16* %x22, align 2, !tbaa !57
  %conv23 = sext i16 %15 to i64
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS24 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 42
  %freeVector25 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS24, i32 0, i32 5
  %x26 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector25, i32 0, i32 0
  %17 = load i16, i16* %x26, align 2, !tbaa !55
  %conv27 = sext i16 %17 to i64
  %mul28 = mul nsw i64 %conv23, %conv27
  %mul29 = mul nsw i64 %mul28, 4
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS30 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 42
  %projVector31 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS30, i32 0, i32 4
  %y32 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector31, i32 0, i32 1
  %19 = load i16, i16* %y32, align 2, !tbaa !60
  %conv33 = sext i16 %19 to i64
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS34 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 42
  %freeVector35 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS34, i32 0, i32 5
  %y36 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector35, i32 0, i32 1
  %21 = load i16, i16* %y36, align 2, !tbaa !59
  %conv37 = sext i16 %21 to i64
  %mul38 = mul nsw i64 %conv33, %conv37
  %mul39 = mul nsw i64 %mul38, 4
  %add = add nsw i64 %mul29, %mul39
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 47
  store i64 %add, i64* %F_dot_P40, align 8, !tbaa !58
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.10
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cached_metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 35
  store i32 0, i32* %cached_metrics, align 4, !tbaa !62
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS42 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 42
  %projVector43 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS42, i32 0, i32 4
  %x44 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector43, i32 0, i32 0
  %25 = load i16, i16* %x44, align 2, !tbaa !57
  %conv45 = sext i16 %25 to i32
  %cmp46 = icmp eq i32 %conv45, 16384
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.41
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 49
  store i32 (%struct._TExecution_Context*, i32, i32)* @Project_x, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  br label %if.end.61

if.else.49:                                       ; preds = %if.end.41
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS50 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 42
  %projVector51 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS50, i32 0, i32 4
  %y52 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector51, i32 0, i32 1
  %28 = load i16, i16* %y52, align 2, !tbaa !60
  %conv53 = sext i16 %28 to i32
  %cmp54 = icmp eq i32 %conv53, 16384
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.else.49
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project57 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 49
  store i32 (%struct._TExecution_Context*, i32, i32)* @Project_y, i32 (%struct._TExecution_Context*, i32, i32)** %func_project57, align 8, !tbaa !63
  br label %if.end.60

if.else.58:                                       ; preds = %if.else.49
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project59 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 49
  store i32 (%struct._TExecution_Context*, i32, i32)* @Project, i32 (%struct._TExecution_Context*, i32, i32)** %func_project59, align 8, !tbaa !63
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.48
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS62 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 42
  %dualVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS62, i32 0, i32 3
  %x63 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %dualVector, i32 0, i32 0
  %32 = load i16, i16* %x63, align 2, !tbaa !64
  %conv64 = sext i16 %32 to i32
  %cmp65 = icmp eq i32 %conv64, 16384
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.end.61
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 50
  store i32 (%struct._TExecution_Context*, i32, i32)* @Project_x, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj, align 8, !tbaa !65
  br label %if.end.80

if.else.68:                                       ; preds = %if.end.61
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS69 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 42
  %dualVector70 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS69, i32 0, i32 3
  %y71 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %dualVector70, i32 0, i32 1
  %35 = load i16, i16* %y71, align 2, !tbaa !66
  %conv72 = sext i16 %35 to i32
  %cmp73 = icmp eq i32 %conv72, 16384
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %if.else.68
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj76 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %36, i32 0, i32 50
  store i32 (%struct._TExecution_Context*, i32, i32)* @Project_y, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj76, align 8, !tbaa !65
  br label %if.end.79

if.else.77:                                       ; preds = %if.else.68
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj78 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 50
  store i32 (%struct._TExecution_Context*, i32, i32)* @Dual_Project, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj78, align 8, !tbaa !65
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.67
  %38 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move81 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 52
  store void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)* @Direct_Move, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move81, align 8, !tbaa !61
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P82 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 47
  %40 = load i64, i64* %F_dot_P82, align 8, !tbaa !58
  %cmp83 = icmp eq i64 %40, 1073741824
  br i1 %cmp83, label %if.then.85, label %if.end.105

if.then.85:                                       ; preds = %if.end.80
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS86 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %41, i32 0, i32 42
  %freeVector87 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS86, i32 0, i32 5
  %x88 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector87, i32 0, i32 0
  %42 = load i16, i16* %x88, align 2, !tbaa !55
  %conv89 = sext i16 %42 to i32
  %cmp90 = icmp eq i32 %conv89, 16384
  br i1 %cmp90, label %if.then.92, label %if.else.94

if.then.92:                                       ; preds = %if.then.85
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move93 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 52
  store void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)* @Direct_Move_X, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move93, align 8, !tbaa !61
  br label %if.end.104

if.else.94:                                       ; preds = %if.then.85
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS95 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 42
  %freeVector96 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS95, i32 0, i32 5
  %y97 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector96, i32 0, i32 1
  %45 = load i16, i16* %y97, align 2, !tbaa !59
  %conv98 = sext i16 %45 to i32
  %cmp99 = icmp eq i32 %conv98, 16384
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.else.94
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move102 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %46, i32 0, i32 52
  store void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)* @Direct_Move_Y, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move102, align 8, !tbaa !61
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.else.94
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.92
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.80
  %47 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P106 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %47, i32 0, i32 47
  %48 = load i64, i64* %F_dot_P106, align 8, !tbaa !58
  %cmp107 = icmp slt i64 %48, 0
  br i1 %cmp107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.105
  %49 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P109 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %49, i32 0, i32 47
  %50 = load i64, i64* %F_dot_P109, align 8, !tbaa !58
  %sub = sub nsw i64 0, %50
  br label %cond.end

cond.false:                                       ; preds = %if.end.105
  %51 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P110 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %51, i32 0, i32 47
  %52 = load i64, i64* %F_dot_P110, align 8, !tbaa !58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %52, %cond.false ]
  %cmp111 = icmp slt i64 %cond, 67108864
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %cond.end
  %53 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P114 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %53, i32 0, i32 47
  store i64 1073741824, i64* %F_dot_P114, align 8, !tbaa !58
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %cond.end
  %54 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %54, i32 0, i32 31
  %ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 12
  store i64 0, i64* %ratio, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Compute_Round(%struct._TExecution_Context* %exc, i8 zeroext %round_mode) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %round_mode.addr = alloca i8, align 1
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i8 %round_mode, i8* %round_mode.addr, align 1, !tbaa !25
  %0 = load i8, i8* %round_mode.addr, align 1, !tbaa !25
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 5, label %sw.bb
    i32 1, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 0, label %sw.bb.7
    i32 2, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_None, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_To_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round2, align 8, !tbaa !67
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Up_To_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round4, align 8, !tbaa !67
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Down_To_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round6, align 8, !tbaa !67
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_To_Half_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round8, align 8, !tbaa !67
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_To_Double_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round10, align 8, !tbaa !67
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Super, i32 (%struct._TExecution_Context*, i32, i32)** %func_round12, align 8, !tbaa !67
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Super_45, i32 (%struct._TExecution_Context*, i32, i32)** %func_round14, align 8, !tbaa !67
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #2

; Function Attrs: nounwind uwtable
define internal i32 @Calc_Length(%struct._TExecution_Context* %exc) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 4
  %1 = load i32, i32* %IP, align 4, !tbaa !44
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 3
  %3 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 6
  store i8 %4, i8* %opcode, align 1, !tbaa !24
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 6
  %7 = load i8, i8* %opcode1, align 1, !tbaa !24
  %conv = zext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 64, label %sw.bb
    i32 65, label %sw.bb.11
    i32 176, label %sw.bb.27
    i32 177, label %sw.bb.27
    i32 178, label %sw.bb.27
    i32 179, label %sw.bb.27
    i32 180, label %sw.bb.27
    i32 181, label %sw.bb.27
    i32 182, label %sw.bb.27
    i32 183, label %sw.bb.27
    i32 184, label %sw.bb.32
    i32 185, label %sw.bb.32
    i32 186, label %sw.bb.32
    i32 187, label %sw.bb.32
    i32 188, label %sw.bb.32
    i32 189, label %sw.bb.32
    i32 190, label %sw.bb.32
    i32 191, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 4
  %9 = load i32, i32* %IP2, align 4, !tbaa !44
  %add = add nsw i32 %9, 1
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %codeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 5
  %11 = load i32, i32* %codeSize, align 4, !tbaa !51
  %cmp = icmp sge i32 %add, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 4
  %13 = load i32, i32* %IP4, align 4, !tbaa !44
  %add5 = add nsw i32 %13, 1
  %idxprom6 = sext i32 %add5 to i64
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 3
  %15 = load i8*, i8** %code7, align 8, !tbaa !68
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %idxprom6
  %16 = load i8, i8* %arrayidx8, align 1, !tbaa !25
  %conv9 = zext i8 %16 to i32
  %add10 = add nsw i32 %conv9, 2
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 7
  store i32 %add10, i32* %length, align 4, !tbaa !50
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 4
  %19 = load i32, i32* %IP12, align 4, !tbaa !44
  %add13 = add nsw i32 %19, 1
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %codeSize14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 5
  %21 = load i32, i32* %codeSize14, align 4, !tbaa !51
  %cmp15 = icmp sge i32 %add13, %21
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.11
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %sw.bb.11
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP19 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 4
  %23 = load i32, i32* %IP19, align 4, !tbaa !44
  %add20 = add nsw i32 %23, 1
  %idxprom21 = sext i32 %add20 to i64
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code22 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 3
  %25 = load i8*, i8** %code22, align 8, !tbaa !68
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  %26 = load i8, i8* %arrayidx23, align 1, !tbaa !25
  %conv24 = zext i8 %26 to i32
  %mul = mul nsw i32 %conv24, 2
  %add25 = add nsw i32 %mul, 2
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length26 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 7
  store i32 %add25, i32* %length26, align 4, !tbaa !50
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %28 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode28 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %28, i32 0, i32 6
  %29 = load i8, i8* %opcode28, align 1, !tbaa !24
  %conv29 = zext i8 %29 to i32
  %sub = sub nsw i32 %conv29, 176
  %add30 = add nsw i32 %sub, 2
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length31 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 7
  store i32 %add30, i32* %length31, align 4, !tbaa !50
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 6
  %32 = load i8, i8* %opcode33, align 1, !tbaa !24
  %conv34 = zext i8 %32 to i32
  %sub35 = sub nsw i32 %conv34, 184
  %mul36 = mul nsw i32 %sub35, 2
  %add37 = add nsw i32 %mul36, 3
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length38 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 7
  store i32 %add37, i32* %length38, align 4, !tbaa !50
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length39 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 7
  store i32 1, i32* %length39, align 4, !tbaa !50
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.32, %sw.bb.27, %if.end.18, %if.end
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 4
  %36 = load i32, i32* %IP40, align 4, !tbaa !44
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length41 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 7
  %38 = load i32, i32* %length41, align 4, !tbaa !50
  %add42 = add nsw i32 %36, %38
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %codeSize43 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 5
  %40 = load i32, i32* %codeSize43, align 4, !tbaa !51
  %cmp44 = icmp sgt i32 %add42, %40
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.epilog
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.46, %if.then.17, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @Ins_Goto_CodeRange(%struct._TExecution_Context* %exc, i32 %aRange, i32 %aIP) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %aRange.addr = alloca i32, align 4
  %aIP.addr = alloca i32, align 4
  %WITH = alloca %struct._TCodeRange*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %aRange, i32* %aRange.addr, align 4, !tbaa !5
  store i32 %aIP, i32* %aIP.addr, align 4, !tbaa !5
  %0 = bitcast %struct._TCodeRange** %WITH to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %aRange.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %aRange.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %2, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 1
  store i32 1028, i32* %error, align 4, !tbaa !22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %aRange.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %codeRangeTable = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 20
  %arrayidx = getelementptr inbounds [3 x %struct._TCodeRange], [3 x %struct._TCodeRange]* %codeRangeTable, i32 0, i64 %idxprom
  store %struct._TCodeRange* %arrayidx, %struct._TCodeRange** %WITH, align 8, !tbaa !1
  %6 = load %struct._TCodeRange*, %struct._TCodeRange** %WITH, align 8, !tbaa !1
  %Base = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %6, i32 0, i32 0
  %7 = load i8*, i8** %Base, align 8, !tbaa !69
  %cmp2 = icmp eq i8* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 1
  store i32 1039, i32* %error4, align 4, !tbaa !22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %9 = load i32, i32* %aIP.addr, align 4, !tbaa !5
  %10 = load %struct._TCodeRange*, %struct._TCodeRange** %WITH, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %10, i32 0, i32 1
  %11 = load i32, i32* %Size, align 4, !tbaa !71
  %cmp6 = icmp sgt i32 %9, %11
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 1
  store i32 1027, i32* %error8, align 4, !tbaa !22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %13 = load %struct._TCodeRange*, %struct._TCodeRange** %WITH, align 8, !tbaa !1
  %Base10 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %13, i32 0, i32 0
  %14 = load i8*, i8** %Base10, align 8, !tbaa !69
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 3
  store i8* %14, i8** %code, align 8, !tbaa !68
  %16 = load %struct._TCodeRange*, %struct._TCodeRange** %WITH, align 8, !tbaa !1
  %Size11 = getelementptr inbounds %struct._TCodeRange, %struct._TCodeRange* %16, i32 0, i32 1
  %17 = load i32, i32* %Size11, align 4, !tbaa !71
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %codeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 5
  store i32 %17, i32* %codeSize, align 4, !tbaa !51
  %19 = load i32, i32* %aIP.addr, align 4, !tbaa !5
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 4
  store i32 %19, i32* %IP, align 4, !tbaa !44
  %21 = load i32, i32* %aRange.addr, align 4, !tbaa !5
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 2
  store i32 %21, i32* %curRange, align 4, !tbaa !41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then.3, %if.then
  %23 = bitcast %struct._TCodeRange** %WITH to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @MulDiv_Round(i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i64 @Current_Ratio(%struct._TExecution_Context* %exc) #0 {
entry:
  %retval = alloca i64, align 8
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %x18 = alloca i64, align 8
  %y19 = alloca i64, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 31
  %ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 12
  %1 = load i64, i64* %ratio, align 8, !tbaa !7
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 31
  %ratio2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics1, i32 0, i32 12
  %3 = load i64, i64* %ratio2, align 8, !tbaa !7
  store i64 %3, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 4
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector, i32 0, i32 1
  %5 = load i16, i16* %y, align 2, !tbaa !60
  %conv = sext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 31
  %x_ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics5, i32 0, i32 9
  %7 = load i64, i64* %x_ratio, align 8, !tbaa !72
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 31
  %ratio7 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics6, i32 0, i32 12
  store i64 %7, i64* %ratio7, align 8, !tbaa !7
  br label %if.end.44

if.else:                                          ; preds = %if.end
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %projVector9 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS8, i32 0, i32 4
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector9, i32 0, i32 0
  %10 = load i16, i16* %x, align 2, !tbaa !57
  %conv10 = sext i16 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.else
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 31
  %y_ratio = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics14, i32 0, i32 10
  %12 = load i64, i64* %y_ratio, align 8, !tbaa !73
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 31
  %ratio16 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics15, i32 0, i32 12
  store i64 %12, i64* %ratio16, align 8, !tbaa !7
  br label %if.end.43

if.else.17:                                       ; preds = %if.else
  %14 = bitcast i64* %x18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %y19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS20 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 42
  %projVector21 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS20, i32 0, i32 4
  %x22 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector21, i32 0, i32 0
  %17 = load i16, i16* %x22, align 2, !tbaa !57
  %conv23 = sext i16 %17 to i32
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics24 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 31
  %x_ratio25 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics24, i32 0, i32 9
  %19 = load i64, i64* %x_ratio25, align 8, !tbaa !72
  %conv26 = trunc i64 %19 to i32
  %call = call i32 @MulDiv_Round(i32 %conv23, i32 %conv26, i32 16384) #5
  %conv27 = sext i32 %call to i64
  store i64 %conv27, i64* %x18, align 8, !tbaa !54
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS28 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 42
  %projVector29 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS28, i32 0, i32 4
  %y30 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector29, i32 0, i32 1
  %21 = load i16, i16* %y30, align 2, !tbaa !60
  %conv31 = sext i16 %21 to i32
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics32 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 31
  %y_ratio33 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics32, i32 0, i32 10
  %23 = load i64, i64* %y_ratio33, align 8, !tbaa !73
  %conv34 = trunc i64 %23 to i32
  %call35 = call i32 @MulDiv_Round(i32 %conv31, i32 %conv34, i32 16384) #5
  %conv36 = sext i32 %call35 to i64
  store i64 %conv36, i64* %y19, align 8, !tbaa !54
  %24 = load i64, i64* %x18, align 8, !tbaa !54
  %conv37 = trunc i64 %24 to i32
  %25 = load i64, i64* %y19, align 8, !tbaa !54
  %conv38 = trunc i64 %25 to i32
  %call39 = call i32 @Norm(i32 %conv37, i32 %conv38) #5
  %conv40 = sext i32 %call39 to i64
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics41 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 31
  %ratio42 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics41, i32 0, i32 12
  store i64 %conv40, i64* %ratio42, align 8, !tbaa !7
  %27 = bitcast i64* %y19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i64* %x18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.17, %if.then.13
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.4
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics45 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 31
  %ratio46 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics45, i32 0, i32 12
  %30 = load i64, i64* %ratio46, align 8, !tbaa !7
  store i64 %30, i64* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then
  %31 = load i64, i64* %retval
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @Norm(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  %T1 = alloca i64, align 8
  %T2 = alloca i64, align 8
  store i32 %X, i32* %X.addr, align 4, !tbaa !5
  store i32 %Y, i32* %Y.addr, align 4, !tbaa !5
  %0 = bitcast i64* %T1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %T2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %X.addr, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* %X.addr, align 4, !tbaa !5
  %conv1 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* %T1, align 8, !tbaa !54
  %4 = load i32, i32* %Y.addr, align 4, !tbaa !5
  %conv2 = sext i32 %4 to i64
  %5 = load i32, i32* %Y.addr, align 4, !tbaa !5
  %conv3 = sext i32 %5 to i64
  %mul4 = mul nsw i64 %conv2, %conv3
  store i64 %mul4, i64* %T2, align 8, !tbaa !54
  %6 = load i64, i64* %T1, align 8, !tbaa !54
  %7 = load i64, i64* %T2, align 8, !tbaa !54
  %add = add nsw i64 %6, %7
  store i64 %add, i64* %T1, align 8, !tbaa !54
  %8 = load i64, i64* %T1, align 8, !tbaa !54
  %call = call i32 @Sqrt64(i64 %8) #5
  %9 = bitcast i64* %T2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast i64* %T1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %call
}

declare i32 @Sqrt64(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @Project_x(%struct._TExecution_Context* %exc, i32 %Vx, i32 %Vy) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %Vx.addr = alloca i32, align 4
  %Vy.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %Vx, i32* %Vx.addr, align 4, !tbaa !5
  store i32 %Vy, i32* %Vy.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %2 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @Project_y(%struct._TExecution_Context* %exc, i32 %Vx, i32 %Vy) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %Vx.addr = alloca i32, align 4
  %Vy.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %Vx, i32* %Vx.addr, align 4, !tbaa !5
  store i32 %Vy, i32* %Vy.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %2 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal void @Direct_Move(%struct._TExecution_Context* %exc, %struct._TGlyph_Zone* %zone, i32 %point, i32 %distance) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %zone.addr = alloca %struct._TGlyph_Zone*, align 8
  %point.addr = alloca i32, align 4
  %distance.addr = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store %struct._TGlyph_Zone* %zone, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  store i32 %point, i32* %point.addr, align 4, !tbaa !5
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %2 = load i16, i16* %x, align 2, !tbaa !55
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %v, align 4, !tbaa !5
  %3 = load i32, i32* %v, align 4, !tbaa !5
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %5 = load i32, i32* %v, align 4, !tbaa !5
  %conv2 = sext i32 %5 to i64
  %mul = mul nsw i64 %conv2, 65536
  %conv3 = trunc i64 %mul to i32
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 47
  %7 = load i64, i64* %F_dot_P, align 8, !tbaa !58
  %conv4 = trunc i64 %7 to i32
  %call = call i32 @MulDiv_Round(i32 %4, i32 %conv3, i32 %conv4) #5
  %8 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %9, i32 0, i32 4
  %10 = load i32*, i32** %cur_x, align 8, !tbaa !74
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %11, %call
  store i32 %add, i32* %arrayidx, align 4, !tbaa !5
  %12 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %13, i32 0, i32 6
  %14 = load i8*, i8** %touch, align 8, !tbaa !75
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %idxprom5
  %15 = load i8, i8* %arrayidx6, align 1, !tbaa !25
  %conv7 = zext i8 %15 to i32
  %or = or i32 %conv7, 2
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %arrayidx6, align 1, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 42
  %freeVector10 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS9, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector10, i32 0, i32 1
  %17 = load i16, i16* %y, align 2, !tbaa !59
  %conv11 = sext i16 %17 to i32
  store i32 %conv11, i32* %v, align 4, !tbaa !5
  %18 = load i32, i32* %v, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %18, 0
  br i1 %cmp12, label %if.then.14, label %if.end.30

if.then.14:                                       ; preds = %if.end
  %19 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %20 = load i32, i32* %v, align 4, !tbaa !5
  %conv15 = sext i32 %20 to i64
  %mul16 = mul nsw i64 %conv15, 65536
  %conv17 = trunc i64 %mul16 to i32
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P18 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 47
  %22 = load i64, i64* %F_dot_P18, align 8, !tbaa !58
  %conv19 = trunc i64 %22 to i32
  %call20 = call i32 @MulDiv_Round(i32 %19, i32 %conv17, i32 %conv19) #5
  %23 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %24, i32 0, i32 5
  %25 = load i32*, i32** %cur_y, align 8, !tbaa !76
  %arrayidx22 = getelementptr inbounds i32, i32* %25, i64 %idxprom21
  %26 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %add23 = add nsw i32 %26, %call20
  store i32 %add23, i32* %arrayidx22, align 4, !tbaa !5
  %27 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %touch25 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %28, i32 0, i32 6
  %29 = load i8*, i8** %touch25, align 8, !tbaa !75
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %idxprom24
  %30 = load i8, i8* %arrayidx26, align 1, !tbaa !25
  %conv27 = zext i8 %30 to i32
  %or28 = or i32 %conv27, 4
  %conv29 = trunc i32 %or28 to i8
  store i8 %conv29, i8* %arrayidx26, align 1, !tbaa !25
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.14, %if.end
  %31 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Free_Project(%struct._TExecution_Context* %exc, i32 %Vx, i32 %Vy) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %Vx.addr = alloca i32, align 4
  %Vy.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %Vx, i32* %Vx.addr, align 4, !tbaa !5
  store i32 %Vy, i32* %Vy.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 56
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %trap, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %1 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %1, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %2 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %2, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay1, i32 32) #7
  unreachable

return:                                           ; No predecessors!
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @Project(%struct._TExecution_Context* %exc, i32 %Vx, i32 %Vy) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %Vx.addr = alloca i32, align 4
  %Vy.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %Vx, i32* %Vx.addr, align 4, !tbaa !5
  store i32 %Vy, i32* %Vy.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 56
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %trap, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %1 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %1, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %2 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %2, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay1, i32 32) #7
  unreachable

return:                                           ; No predecessors!
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @Dual_Project(%struct._TExecution_Context* %exc, i32 %Vx, i32 %Vy) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %Vx.addr = alloca i32, align 4
  %Vy.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %Vx, i32* %Vx.addr, align 4, !tbaa !5
  store i32 %Vy, i32* %Vy.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %trap = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 56
  %stuff = getelementptr inbounds %struct.gsfix_jmp_buf, %struct.gsfix_jmp_buf* %trap, i32 0, i32 0
  %arraydecay = getelementptr inbounds [208 x i8], [208 x i8]* %stuff, i32 0, i32 0
  %1 = ptrtoint i8* %arraydecay to i64
  %add = add i64 %1, ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64)
  %and = and i64 %add, xor (i64 sub (i64 ptrtoint ([1 x %struct.__jmp_buf_tag]* getelementptr inbounds (%struct.gsfix_jmp_buf_test, %struct.gsfix_jmp_buf_test* null, i32 0, i32 1) to i64), i64 1), i64 -1)
  %2 = inttoptr i64 %and to [1 x %struct.__jmp_buf_tag]*
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %2, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %arraydecay1, i32 32) #7
  unreachable

return:                                           ; No predecessors!
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal void @Direct_Move_X(%struct._TExecution_Context* %exc, %struct._TGlyph_Zone* %zone, i32 %point, i32 %distance) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %zone.addr = alloca %struct._TGlyph_Zone*, align 8
  %point.addr = alloca i32, align 4
  %distance.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store %struct._TGlyph_Zone* %zone, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  store i32 %point, i32* %point.addr, align 4, !tbaa !5
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %2 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %3, i32 0, i32 4
  %4 = load i32*, i32** %cur_x, align 8, !tbaa !74
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %5, %1
  store i32 %add, i32* %arrayidx, align 4, !tbaa !5
  %6 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %7, i32 0, i32 6
  %8 = load i8*, i8** %touch, align 8, !tbaa !75
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 %idxprom1
  %9 = load i8, i8* %arrayidx2, align 1, !tbaa !25
  %conv = zext i8 %9 to i32
  %or = or i32 %conv, 2
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %arrayidx2, align 1, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Direct_Move_Y(%struct._TExecution_Context* %exc, %struct._TGlyph_Zone* %zone, i32 %point, i32 %distance) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %zone.addr = alloca %struct._TGlyph_Zone*, align 8
  %point.addr = alloca i32, align 4
  %distance.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store %struct._TGlyph_Zone* %zone, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  store i32 %point, i32* %point.addr, align 4, !tbaa !5
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %2 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %3, i32 0, i32 5
  %4 = load i32*, i32** %cur_y, align 8, !tbaa !76
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %5, %1
  store i32 %add, i32* %arrayidx, align 4, !tbaa !5
  %6 = load i32, i32* %point.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %7, i32 0, i32 6
  %8 = load i8*, i8** %touch, align 8, !tbaa !75
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 %idxprom1
  %9 = load i8, i8* %arrayidx2, align 1, !tbaa !25
  %conv = zext i8 %9 to i32
  %or = or i32 %conv, 4
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %arrayidx2, align 1, !tbaa !25
  ret void
}

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @Round_None(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %4 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %val, align 4, !tbaa !5
  %5 = load i32, i32* %val, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %7 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %val, align 4, !tbaa !5
  %8 = load i32, i32* %val, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %9 = load i32, i32* %val, align 4, !tbaa !5
  %10 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @Round_To_Grid(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %4 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %add1 = add nsw i32 %add, 32
  %and = and i32 %add1, -64
  store i32 %and, i32* %val, align 4, !tbaa !5
  %5 = load i32, i32* %val, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.10

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %7 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  %add4 = add nsw i32 %sub, 32
  %and5 = and i32 %add4, -64
  %sub6 = sub nsw i32 0, %and5
  store i32 %sub6, i32* %val, align 4, !tbaa !5
  %8 = load i32, i32* %val, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %9 = load i32, i32* %val, align 4, !tbaa !5
  %10 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @Round_Up_To_Grid(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %4 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %add1 = add nsw i32 %add, 63
  %and = and i32 %add1, -64
  store i32 %and, i32* %val, align 4, !tbaa !5
  %5 = load i32, i32* %val, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.10

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %7 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  %add4 = add nsw i32 %sub, 63
  %and5 = and i32 %add4, -64
  %sub6 = sub nsw i32 0, %and5
  store i32 %sub6, i32* %val, align 4, !tbaa !5
  %8 = load i32, i32* %val, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %9 = load i32, i32* %val, align 4, !tbaa !5
  %10 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @Round_Down_To_Grid(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %4 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %and = and i32 %add, -64
  store i32 %and, i32* %val, align 4, !tbaa !5
  %5 = load i32, i32* %val, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %7 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  %and3 = and i32 %sub, -64
  %sub4 = sub nsw i32 0, %and3
  store i32 %sub4, i32* %val, align 4, !tbaa !5
  %8 = load i32, i32* %val, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %8, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %9 = load i32, i32* %val, align 4, !tbaa !5
  %10 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @Round_To_Half_Grid(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %4 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %and = and i32 %add, -64
  %add1 = add nsw i32 %and, 32
  store i32 %add1, i32* %val, align 4, !tbaa !5
  %5 = load i32, i32* %val, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.10

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %7 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  %and4 = and i32 %sub, -64
  %add5 = add nsw i32 %and4, 32
  %sub6 = sub nsw i32 0, %add5
  store i32 %sub6, i32* %val, align 4, !tbaa !5
  %8 = load i32, i32* %val, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %9 = load i32, i32* %val, align 4, !tbaa !5
  %10 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @Round_To_Double_Grid(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %4 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %add1 = add nsw i32 %add, 16
  %and = and i32 %add1, -32
  store i32 %and, i32* %val, align 4, !tbaa !5
  %5 = load i32, i32* %val, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.10

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %7 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  %add4 = add nsw i32 %sub, 16
  %and5 = and i32 %add4, -32
  %sub6 = sub nsw i32 0, %and5
  store i32 %sub6, i32* %val, align 4, !tbaa !5
  %8 = load i32, i32* %val, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %9 = load i32, i32* %val, align 4, !tbaa !5
  %10 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @Round_Super(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 29
  %4 = load i32, i32* %phase, align 4, !tbaa !77
  %sub = sub nsw i32 %2, %4
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %threshold = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 30
  %6 = load i32, i32* %threshold, align 4, !tbaa !78
  %add = add nsw i32 %sub, %6
  %7 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %add, %7
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 28
  %9 = load i32, i32* %period, align 4, !tbaa !79
  %sub2 = sub nsw i32 0, %9
  %and = and i32 %add1, %sub2
  store i32 %and, i32* %val, align 4, !tbaa !5
  %10 = load i32, i32* %val, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 29
  %12 = load i32, i32* %phase5, align 4, !tbaa !77
  %13 = load i32, i32* %val, align 4, !tbaa !5
  %add6 = add nsw i32 %13, %12
  store i32 %add6, i32* %val, align 4, !tbaa !5
  br label %if.end.21

if.else:                                          ; preds = %entry
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %threshold7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 30
  %15 = load i32, i32* %threshold7, align 4, !tbaa !78
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 29
  %17 = load i32, i32* %phase8, align 4, !tbaa !77
  %sub9 = sub nsw i32 %15, %17
  %18 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %sub9, %18
  %19 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %sub10, %19
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 28
  %21 = load i32, i32* %period12, align 4, !tbaa !79
  %sub13 = sub nsw i32 0, %21
  %and14 = and i32 %add11, %sub13
  %sub15 = sub nsw i32 0, %and14
  store i32 %sub15, i32* %val, align 4, !tbaa !5
  %22 = load i32, i32* %val, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %22, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase19 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 29
  %24 = load i32, i32* %phase19, align 4, !tbaa !77
  %25 = load i32, i32* %val, align 4, !tbaa !5
  %sub20 = sub nsw i32 %25, %24
  store i32 %sub20, i32* %val, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.18, %if.end
  %26 = load i32, i32* %val, align 4, !tbaa !5
  %27 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @Round_Super_45(%struct._TExecution_Context* %exc, i32 %distance, i32 %compensation) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  %compensation.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  store i32 %compensation, i32* %compensation.addr, align 4, !tbaa !5
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 29
  %4 = load i32, i32* %phase, align 4, !tbaa !77
  %sub = sub nsw i32 %2, %4
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %threshold = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 30
  %6 = load i32, i32* %threshold, align 4, !tbaa !78
  %add = add nsw i32 %sub, %6
  %7 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %add, %7
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 28
  %9 = load i32, i32* %period, align 4, !tbaa !79
  %div = sdiv i32 %add1, %9
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 28
  %11 = load i32, i32* %period2, align 4, !tbaa !79
  %mul = mul nsw i32 %div, %11
  store i32 %mul, i32* %val, align 4, !tbaa !5
  %12 = load i32, i32* %val, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 29
  %14 = load i32, i32* %phase5, align 4, !tbaa !77
  %15 = load i32, i32* %val, align 4, !tbaa !5
  %add6 = add nsw i32 %15, %14
  store i32 %add6, i32* %val, align 4, !tbaa !5
  br label %if.end.22

if.else:                                          ; preds = %entry
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %threshold7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 30
  %17 = load i32, i32* %threshold7, align 4, !tbaa !78
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 29
  %19 = load i32, i32* %phase8, align 4, !tbaa !77
  %sub9 = sub nsw i32 %17, %19
  %20 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %sub9, %20
  %21 = load i32, i32* %compensation.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %sub10, %21
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 28
  %23 = load i32, i32* %period12, align 4, !tbaa !79
  %div13 = sdiv i32 %add11, %23
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 28
  %25 = load i32, i32* %period14, align 4, !tbaa !79
  %mul15 = mul nsw i32 %div13, %25
  %sub16 = sub nsw i32 0, %mul15
  store i32 %sub16, i32* %val, align 4, !tbaa !5
  %26 = load i32, i32* %val, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %26, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else
  store i32 0, i32* %val, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase20 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 29
  %28 = load i32, i32* %phase20, align 4, !tbaa !77
  %29 = load i32, i32* %val, align 4, !tbaa !5
  %sub21 = sub nsw i32 %29, %28
  store i32 %sub21, i32* %val, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end
  %30 = load i32, i32* %val, align 4, !tbaa !5
  %31 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SVTCA(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %A = alloca i16, align 2
  %B = alloca i16, align 2
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i16* %A to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %B to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 6
  %4 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 16384, i16* %A, align 2, !tbaa !80
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 0, i16* %A, align 2, !tbaa !80
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i16, i16* %A, align 2, !tbaa !80
  %conv1 = sext i16 %5 to i32
  %xor = xor i32 %conv1, 16384
  %conv2 = trunc i32 %xor to i16
  store i16 %conv2, i16* %B, align 2, !tbaa !80
  %6 = load i16, i16* %A, align 2, !tbaa !80
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  store i16 %6, i16* %x, align 2, !tbaa !55
  %8 = load i16, i16* %A, align 2, !tbaa !80
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS3, i32 0, i32 4
  %x4 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector, i32 0, i32 0
  store i16 %8, i16* %x4, align 2, !tbaa !57
  %10 = load i16, i16* %A, align 2, !tbaa !80
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 42
  %dualVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS5, i32 0, i32 3
  %x6 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %dualVector, i32 0, i32 0
  store i16 %10, i16* %x6, align 2, !tbaa !64
  %12 = load i16, i16* %B, align 2, !tbaa !80
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %freeVector8 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS7, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector8, i32 0, i32 1
  store i16 %12, i16* %y, align 2, !tbaa !59
  %14 = load i16, i16* %B, align 2, !tbaa !80
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 42
  %projVector10 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS9, i32 0, i32 4
  %y11 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector10, i32 0, i32 1
  store i16 %14, i16* %y11, align 2, !tbaa !60
  %16 = load i16, i16* %B, align 2, !tbaa !80
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 42
  %dualVector13 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS12, i32 0, i32 3
  %y14 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %dualVector13, i32 0, i32 1
  store i16 %16, i16* %y14, align 2, !tbaa !66
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %18) #5
  %19 = bitcast i16* %B to i8*
  call void @llvm.lifetime.end(i64 2, i8* %19) #1
  %20 = bitcast i16* %A to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SPVTCA(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %A = alloca i16, align 2
  %B = alloca i16, align 2
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i16* %A to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %B to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 6
  %4 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 16384, i16* %A, align 2, !tbaa !80
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 0, i16* %A, align 2, !tbaa !80
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i16, i16* %A, align 2, !tbaa !80
  %conv1 = sext i16 %5 to i32
  %xor = xor i32 %conv1, 16384
  %conv2 = trunc i32 %xor to i16
  store i16 %conv2, i16* %B, align 2, !tbaa !80
  %6 = load i16, i16* %A, align 2, !tbaa !80
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 4
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector, i32 0, i32 0
  store i16 %6, i16* %x, align 2, !tbaa !57
  %8 = load i16, i16* %A, align 2, !tbaa !80
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %dualVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS3, i32 0, i32 3
  %x4 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %dualVector, i32 0, i32 0
  store i16 %8, i16* %x4, align 2, !tbaa !64
  %10 = load i16, i16* %B, align 2, !tbaa !80
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 42
  %projVector6 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS5, i32 0, i32 4
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector6, i32 0, i32 1
  store i16 %10, i16* %y, align 2, !tbaa !60
  %12 = load i16, i16* %B, align 2, !tbaa !80
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %dualVector8 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS7, i32 0, i32 3
  %y9 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %dualVector8, i32 0, i32 1
  store i16 %12, i16* %y9, align 2, !tbaa !66
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %14) #5
  %15 = bitcast i16* %B to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #1
  %16 = bitcast i16* %A to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SFVTCA(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %A = alloca i16, align 2
  %B = alloca i16, align 2
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i16* %A to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %B to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 6
  %4 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 16384, i16* %A, align 2, !tbaa !80
  br label %if.end

if.else:                                          ; preds = %entry
  store i16 0, i16* %A, align 2, !tbaa !80
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i16, i16* %A, align 2, !tbaa !80
  %conv1 = sext i16 %5 to i32
  %xor = xor i32 %conv1, 16384
  %conv2 = trunc i32 %xor to i16
  store i16 %conv2, i16* %B, align 2, !tbaa !80
  %6 = load i16, i16* %A, align 2, !tbaa !80
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  store i16 %6, i16* %x, align 2, !tbaa !55
  %8 = load i16, i16* %B, align 2, !tbaa !80
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %freeVector4 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS3, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector4, i32 0, i32 1
  store i16 %8, i16* %y, align 2, !tbaa !59
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %10) #5
  %11 = bitcast i16* %B to i8*
  call void @llvm.lifetime.end(i64 2, i8* %11) #1
  %12 = bitcast i16* %A to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SPVTL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %2 to i32
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv2 = trunc i64 %4 to i32
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 6
  %6 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv3 = zext i8 %6 to i32
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 4
  %call = call i32 @Ins_SxVTL(%struct._TExecution_Context* %0, i32 %conv, i32 %conv2, i32 %conv3, %struct._TT_UnitVector* %projVector) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 42
  %dualVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS5, i32 0, i32 3
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %projVector7 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS6, i32 0, i32 4
  %10 = bitcast %struct._TT_UnitVector* %dualVector to i8*
  %11 = bitcast %struct._TT_UnitVector* %projVector7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 4, i32 2, i1 false), !tbaa.struct !81
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %12) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SFVTL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %2 to i32
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv2 = trunc i64 %4 to i32
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 6
  %6 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv3 = zext i8 %6 to i32
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %call = call i32 @Ins_SxVTL(%struct._TExecution_Context* %0, i32 %conv, i32 %conv2, i32 %conv3, %struct._TT_UnitVector* %freeVector) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %8) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SPVFS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %S = alloca i16, align 2
  %X = alloca i64, align 8
  %Y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i16* %S to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i64* %X to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %Y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i16
  store i16 %conv, i16* %S, align 2, !tbaa !80
  %5 = load i16, i16* %S, align 2, !tbaa !80
  %conv1 = sext i16 %5 to i64
  store i64 %conv1, i64* %Y, align 8, !tbaa !54
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  %conv3 = trunc i64 %7 to i16
  store i16 %conv3, i16* %S, align 2, !tbaa !80
  %8 = load i16, i16* %S, align 2, !tbaa !80
  %conv4 = sext i16 %8 to i64
  store i64 %conv4, i64* %X, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %10 = load i64, i64* %X, align 8, !tbaa !54
  %conv5 = trunc i64 %10 to i32
  %11 = load i64, i64* %Y, align 8, !tbaa !54
  %conv6 = trunc i64 %11 to i32
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 4
  %call = call i32 @Normalize(%struct._TExecution_Context* %9, i32 %conv5, i32 %conv6, %struct._TT_UnitVector* %projVector) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %dualVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS8, i32 0, i32 3
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 42
  %projVector10 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS9, i32 0, i32 4
  %15 = bitcast %struct._TT_UnitVector* %dualVector to i8*
  %16 = bitcast %struct._TT_UnitVector* %projVector10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 4, i32 2, i1 false), !tbaa.struct !81
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %17) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i64* %Y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i64* %X to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i16* %S to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #1
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
define internal void @Ins_SFVFS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %S = alloca i16, align 2
  %X = alloca i64, align 8
  %Y = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i16* %S to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i64* %X to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %Y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i16
  store i16 %conv, i16* %S, align 2, !tbaa !80
  %5 = load i16, i16* %S, align 2, !tbaa !80
  %conv1 = sext i16 %5 to i64
  store i64 %conv1, i64* %Y, align 8, !tbaa !54
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  %conv3 = trunc i64 %7 to i16
  store i16 %conv3, i16* %S, align 2, !tbaa !80
  %8 = load i16, i16* %S, align 2, !tbaa !80
  %conv4 = sext i16 %8 to i64
  store i64 %conv4, i64* %X, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %10 = load i64, i64* %X, align 8, !tbaa !54
  %conv5 = trunc i64 %10 to i32
  %11 = load i64, i64* %Y, align 8, !tbaa !54
  %conv6 = trunc i64 %11 to i32
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %call = call i32 @Normalize(%struct._TExecution_Context* %9, i32 %conv5, i32 %conv6, %struct._TT_UnitVector* %freeVector) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %13) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i64* %Y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i64* %X to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i16* %S to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #1
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
define internal void @Ins_GPV(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 4
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector, i32 0, i32 0
  %1 = load i16, i16* %x, align 2, !tbaa !57
  %conv = sext i16 %1 to i64
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  store i64 %conv, i64* %arrayidx, align 8, !tbaa !54
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 42
  %projVector2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS1, i32 0, i32 4
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %projVector2, i32 0, i32 1
  %4 = load i16, i16* %y, align 2, !tbaa !60
  %conv3 = sext i16 %4 to i64
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %5, i64 1
  store i64 %conv3, i64* %arrayidx4, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_GFV(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %1 = load i16, i16* %x, align 2, !tbaa !55
  %conv = sext i16 %1 to i64
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  store i64 %conv, i64* %arrayidx, align 8, !tbaa !54
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 42
  %freeVector2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS1, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector2, i32 0, i32 1
  %4 = load i16, i16* %y, align 2, !tbaa !59
  %conv3 = sext i16 %4 to i64
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %5, i64 1
  store i64 %conv3, i64* %arrayidx4, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SFVTPV(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS1, i32 0, i32 4
  %3 = bitcast %struct._TT_UnitVector* %freeVector to i8*
  %4 = bitcast %struct._TT_UnitVector* %projVector to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 2, i1 false), !tbaa.struct !81
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ISECT(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %point = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  %b0 = alloca i64, align 8
  %b1 = alloca i64, align 8
  %discriminant = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dax = alloca i32, align 4
  %day = alloca i32, align 4
  %dbx = alloca i32, align 4
  %dby = alloca i32, align 4
  %val = alloca i32, align 4
  %R = alloca %struct._TT_Vector, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %point to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %a0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %a1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %b0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %b1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %discriminant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %dax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %day to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dbx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %dby to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct._TT_Vector* %R to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 0
  %15 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %15, i64* %point, align 8, !tbaa !54
  %16 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %16, i64 1
  %17 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  store i64 %17, i64* %a0, align 8, !tbaa !54
  %18 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %18, i64 2
  %19 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  store i64 %19, i64* %a1, align 8, !tbaa !54
  %20 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %20, i64 3
  %21 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  store i64 %21, i64* %b0, align 8, !tbaa !54
  %22 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %22, i64 4
  %23 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  store i64 %23, i64* %b1, align 8, !tbaa !54
  %24 = load i64, i64* %b0, align 8, !tbaa !54
  %cmp = icmp slt i64 %24, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %25 = load i64, i64* %b0, align 8, !tbaa !54
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 36
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 0
  %27 = load i32, i32* %n_points, align 4, !tbaa !82
  %conv = sext i32 %27 to i64
  %cmp5 = icmp sge i64 %25, %conv
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %28 = load i64, i64* %b1, align 8, !tbaa !54
  %cmp8 = icmp slt i64 %28, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %29 = load i64, i64* %b1, align 8, !tbaa !54
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp011 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 36
  %n_points12 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp011, i32 0, i32 0
  %31 = load i32, i32* %n_points12, align 4, !tbaa !82
  %conv13 = sext i32 %31 to i64
  %cmp14 = icmp sge i64 %29, %conv13
  br i1 %cmp14, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.10
  %32 = load i64, i64* %a0, align 8, !tbaa !54
  %cmp17 = icmp slt i64 %32, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %33 = load i64, i64* %a0, align 8, !tbaa !54
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 37
  %n_points20 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %35 = load i32, i32* %n_points20, align 4, !tbaa !83
  %conv21 = sext i32 %35 to i64
  %cmp22 = icmp sge i64 %33, %conv21
  br i1 %cmp22, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.19
  %36 = load i64, i64* %a1, align 8, !tbaa !54
  %cmp25 = icmp slt i64 %36, 0
  br i1 %cmp25, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %37 = load i64, i64* %a1, align 8, !tbaa !54
  %38 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp128 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 37
  %n_points29 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp128, i32 0, i32 0
  %39 = load i32, i32* %n_points29, align 4, !tbaa !83
  %conv30 = sext i32 %39 to i64
  %cmp31 = icmp sge i64 %37, %conv30
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false, %entry
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.27
  %41 = load i64, i64* %b1, align 8, !tbaa !54
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp033 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 36
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp033, i32 0, i32 4
  %43 = load i32*, i32** %cur_x, align 8, !tbaa !84
  %arrayidx34 = getelementptr inbounds i32, i32* %43, i64 %41
  %44 = load i32, i32* %arrayidx34, align 4, !tbaa !5
  %45 = load i64, i64* %b0, align 8, !tbaa !54
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp035 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %46, i32 0, i32 36
  %cur_x36 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp035, i32 0, i32 4
  %47 = load i32*, i32** %cur_x36, align 8, !tbaa !84
  %arrayidx37 = getelementptr inbounds i32, i32* %47, i64 %45
  %48 = load i32, i32* %arrayidx37, align 4, !tbaa !5
  %sub = sub nsw i32 %44, %48
  store i32 %sub, i32* %dbx, align 4, !tbaa !5
  %49 = load i64, i64* %b1, align 8, !tbaa !54
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp038 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 36
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp038, i32 0, i32 5
  %51 = load i32*, i32** %cur_y, align 8, !tbaa !85
  %arrayidx39 = getelementptr inbounds i32, i32* %51, i64 %49
  %52 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  %53 = load i64, i64* %b0, align 8, !tbaa !54
  %54 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp040 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %54, i32 0, i32 36
  %cur_y41 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp040, i32 0, i32 5
  %55 = load i32*, i32** %cur_y41, align 8, !tbaa !85
  %arrayidx42 = getelementptr inbounds i32, i32* %55, i64 %53
  %56 = load i32, i32* %arrayidx42, align 4, !tbaa !5
  %sub43 = sub nsw i32 %52, %56
  store i32 %sub43, i32* %dby, align 4, !tbaa !5
  %57 = load i64, i64* %a1, align 8, !tbaa !54
  %58 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp144 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %58, i32 0, i32 37
  %cur_x45 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp144, i32 0, i32 4
  %59 = load i32*, i32** %cur_x45, align 8, !tbaa !86
  %arrayidx46 = getelementptr inbounds i32, i32* %59, i64 %57
  %60 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %61 = load i64, i64* %a0, align 8, !tbaa !54
  %62 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp147 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %62, i32 0, i32 37
  %cur_x48 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp147, i32 0, i32 4
  %63 = load i32*, i32** %cur_x48, align 8, !tbaa !86
  %arrayidx49 = getelementptr inbounds i32, i32* %63, i64 %61
  %64 = load i32, i32* %arrayidx49, align 4, !tbaa !5
  %sub50 = sub nsw i32 %60, %64
  store i32 %sub50, i32* %dax, align 4, !tbaa !5
  %65 = load i64, i64* %a1, align 8, !tbaa !54
  %66 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp151 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %66, i32 0, i32 37
  %cur_y52 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp151, i32 0, i32 5
  %67 = load i32*, i32** %cur_y52, align 8, !tbaa !87
  %arrayidx53 = getelementptr inbounds i32, i32* %67, i64 %65
  %68 = load i32, i32* %arrayidx53, align 4, !tbaa !5
  %69 = load i64, i64* %a0, align 8, !tbaa !54
  %70 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp154 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %70, i32 0, i32 37
  %cur_y55 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp154, i32 0, i32 5
  %71 = load i32*, i32** %cur_y55, align 8, !tbaa !87
  %arrayidx56 = getelementptr inbounds i32, i32* %71, i64 %69
  %72 = load i32, i32* %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %68, %72
  store i32 %sub57, i32* %day, align 4, !tbaa !5
  %73 = load i64, i64* %b0, align 8, !tbaa !54
  %74 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp058 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %74, i32 0, i32 36
  %cur_x59 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp058, i32 0, i32 4
  %75 = load i32*, i32** %cur_x59, align 8, !tbaa !84
  %arrayidx60 = getelementptr inbounds i32, i32* %75, i64 %73
  %76 = load i32, i32* %arrayidx60, align 4, !tbaa !5
  %77 = load i64, i64* %a0, align 8, !tbaa !54
  %78 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp161 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %78, i32 0, i32 37
  %cur_x62 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp161, i32 0, i32 4
  %79 = load i32*, i32** %cur_x62, align 8, !tbaa !86
  %arrayidx63 = getelementptr inbounds i32, i32* %79, i64 %77
  %80 = load i32, i32* %arrayidx63, align 4, !tbaa !5
  %sub64 = sub nsw i32 %76, %80
  store i32 %sub64, i32* %dx, align 4, !tbaa !5
  %81 = load i64, i64* %b0, align 8, !tbaa !54
  %82 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp065 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %82, i32 0, i32 36
  %cur_y66 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp065, i32 0, i32 5
  %83 = load i32*, i32** %cur_y66, align 8, !tbaa !85
  %arrayidx67 = getelementptr inbounds i32, i32* %83, i64 %81
  %84 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %85 = load i64, i64* %a0, align 8, !tbaa !54
  %86 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp168 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %86, i32 0, i32 37
  %cur_y69 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp168, i32 0, i32 5
  %87 = load i32*, i32** %cur_y69, align 8, !tbaa !87
  %arrayidx70 = getelementptr inbounds i32, i32* %87, i64 %85
  %88 = load i32, i32* %arrayidx70, align 4, !tbaa !5
  %sub71 = sub nsw i32 %84, %88
  store i32 %sub71, i32* %dy, align 4, !tbaa !5
  %89 = load i64, i64* %point, align 8, !tbaa !54
  %90 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %90, i32 0, i32 38
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 6
  %91 = load i8*, i8** %touch, align 8, !tbaa !88
  %arrayidx72 = getelementptr inbounds i8, i8* %91, i64 %89
  %92 = load i8, i8* %arrayidx72, align 1, !tbaa !25
  %conv73 = zext i8 %92 to i32
  %or = or i32 %conv73, 6
  %conv74 = trunc i32 %or to i8
  store i8 %conv74, i8* %arrayidx72, align 1, !tbaa !25
  %93 = load i32, i32* %dax, align 4, !tbaa !5
  %94 = load i32, i32* %dby, align 4, !tbaa !5
  %sub75 = sub nsw i32 0, %94
  %call = call i32 @MulDiv_Round(i32 %93, i32 %sub75, i32 64) #5
  %95 = load i32, i32* %day, align 4, !tbaa !5
  %96 = load i32, i32* %dbx, align 4, !tbaa !5
  %call76 = call i32 @MulDiv_Round(i32 %95, i32 %96, i32 64) #5
  %add = add nsw i32 %call, %call76
  store i32 %add, i32* %discriminant, align 4, !tbaa !5
  %97 = load i32, i32* %discriminant, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %97, 0
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %98 = load i32, i32* %discriminant, align 4, !tbaa !5
  %sub79 = sub nsw i32 0, %98
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %99 = load i32, i32* %discriminant, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub79, %cond.true ], [ %99, %cond.false ]
  %cmp80 = icmp sge i32 %cond, 64
  br i1 %cmp80, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %cond.end
  %100 = load i32, i32* %dx, align 4, !tbaa !5
  %101 = load i32, i32* %dby, align 4, !tbaa !5
  %sub83 = sub nsw i32 0, %101
  %call84 = call i32 @MulDiv_Round(i32 %100, i32 %sub83, i32 64) #5
  %102 = load i32, i32* %dy, align 4, !tbaa !5
  %103 = load i32, i32* %dbx, align 4, !tbaa !5
  %call85 = call i32 @MulDiv_Round(i32 %102, i32 %103, i32 64) #5
  %add86 = add nsw i32 %call84, %call85
  store i32 %add86, i32* %val, align 4, !tbaa !5
  %104 = load i32, i32* %val, align 4, !tbaa !5
  %105 = load i32, i32* %dax, align 4, !tbaa !5
  %106 = load i32, i32* %discriminant, align 4, !tbaa !5
  %call87 = call i32 @MulDiv_Round(i32 %104, i32 %105, i32 %106) #5
  %x = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %R, i32 0, i32 0
  store i32 %call87, i32* %x, align 4, !tbaa !89
  %107 = load i32, i32* %val, align 4, !tbaa !5
  %108 = load i32, i32* %day, align 4, !tbaa !5
  %109 = load i32, i32* %discriminant, align 4, !tbaa !5
  %call88 = call i32 @MulDiv_Round(i32 %107, i32 %108, i32 %109) #5
  %y = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %R, i32 0, i32 1
  store i32 %call88, i32* %y, align 4, !tbaa !91
  %110 = load i64, i64* %a0, align 8, !tbaa !54
  %111 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp189 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %111, i32 0, i32 37
  %cur_x90 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp189, i32 0, i32 4
  %112 = load i32*, i32** %cur_x90, align 8, !tbaa !86
  %arrayidx91 = getelementptr inbounds i32, i32* %112, i64 %110
  %113 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %x92 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %R, i32 0, i32 0
  %114 = load i32, i32* %x92, align 4, !tbaa !89
  %add93 = add nsw i32 %113, %114
  %115 = load i64, i64* %point, align 8, !tbaa !54
  %116 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp294 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %116, i32 0, i32 38
  %cur_x95 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp294, i32 0, i32 4
  %117 = load i32*, i32** %cur_x95, align 8, !tbaa !92
  %arrayidx96 = getelementptr inbounds i32, i32* %117, i64 %115
  store i32 %add93, i32* %arrayidx96, align 4, !tbaa !5
  %118 = load i64, i64* %a0, align 8, !tbaa !54
  %119 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp197 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %119, i32 0, i32 37
  %cur_y98 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp197, i32 0, i32 5
  %120 = load i32*, i32** %cur_y98, align 8, !tbaa !87
  %arrayidx99 = getelementptr inbounds i32, i32* %120, i64 %118
  %121 = load i32, i32* %arrayidx99, align 4, !tbaa !5
  %y100 = getelementptr inbounds %struct._TT_Vector, %struct._TT_Vector* %R, i32 0, i32 1
  %122 = load i32, i32* %y100, align 4, !tbaa !91
  %add101 = add nsw i32 %121, %122
  %123 = load i64, i64* %point, align 8, !tbaa !54
  %124 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2102 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %124, i32 0, i32 38
  %cur_y103 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2102, i32 0, i32 5
  %125 = load i32*, i32** %cur_y103, align 8, !tbaa !93
  %arrayidx104 = getelementptr inbounds i32, i32* %125, i64 %123
  store i32 %add101, i32* %arrayidx104, align 4, !tbaa !5
  br label %if.end.142

if.else:                                          ; preds = %cond.end
  %126 = load i64, i64* %a0, align 8, !tbaa !54
  %127 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1105 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %127, i32 0, i32 37
  %cur_x106 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1105, i32 0, i32 4
  %128 = load i32*, i32** %cur_x106, align 8, !tbaa !86
  %arrayidx107 = getelementptr inbounds i32, i32* %128, i64 %126
  %129 = load i32, i32* %arrayidx107, align 4, !tbaa !5
  %130 = load i64, i64* %a1, align 8, !tbaa !54
  %131 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1108 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %131, i32 0, i32 37
  %cur_x109 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1108, i32 0, i32 4
  %132 = load i32*, i32** %cur_x109, align 8, !tbaa !86
  %arrayidx110 = getelementptr inbounds i32, i32* %132, i64 %130
  %133 = load i32, i32* %arrayidx110, align 4, !tbaa !5
  %add111 = add nsw i32 %129, %133
  %134 = load i64, i64* %b0, align 8, !tbaa !54
  %135 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0112 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %135, i32 0, i32 36
  %cur_x113 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0112, i32 0, i32 4
  %136 = load i32*, i32** %cur_x113, align 8, !tbaa !84
  %arrayidx114 = getelementptr inbounds i32, i32* %136, i64 %134
  %137 = load i32, i32* %arrayidx114, align 4, !tbaa !5
  %add115 = add nsw i32 %add111, %137
  %138 = load i64, i64* %b1, align 8, !tbaa !54
  %139 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1116 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %139, i32 0, i32 37
  %cur_x117 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1116, i32 0, i32 4
  %140 = load i32*, i32** %cur_x117, align 8, !tbaa !86
  %arrayidx118 = getelementptr inbounds i32, i32* %140, i64 %138
  %141 = load i32, i32* %arrayidx118, align 4, !tbaa !5
  %add119 = add nsw i32 %add115, %141
  %div = sdiv i32 %add119, 4
  %142 = load i64, i64* %point, align 8, !tbaa !54
  %143 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2120 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %143, i32 0, i32 38
  %cur_x121 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2120, i32 0, i32 4
  %144 = load i32*, i32** %cur_x121, align 8, !tbaa !92
  %arrayidx122 = getelementptr inbounds i32, i32* %144, i64 %142
  store i32 %div, i32* %arrayidx122, align 4, !tbaa !5
  %145 = load i64, i64* %a0, align 8, !tbaa !54
  %146 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1123 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %146, i32 0, i32 37
  %cur_y124 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1123, i32 0, i32 5
  %147 = load i32*, i32** %cur_y124, align 8, !tbaa !87
  %arrayidx125 = getelementptr inbounds i32, i32* %147, i64 %145
  %148 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %149 = load i64, i64* %a1, align 8, !tbaa !54
  %150 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1126 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %150, i32 0, i32 37
  %cur_y127 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1126, i32 0, i32 5
  %151 = load i32*, i32** %cur_y127, align 8, !tbaa !87
  %arrayidx128 = getelementptr inbounds i32, i32* %151, i64 %149
  %152 = load i32, i32* %arrayidx128, align 4, !tbaa !5
  %add129 = add nsw i32 %148, %152
  %153 = load i64, i64* %b0, align 8, !tbaa !54
  %154 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0130 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %154, i32 0, i32 36
  %cur_y131 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0130, i32 0, i32 5
  %155 = load i32*, i32** %cur_y131, align 8, !tbaa !85
  %arrayidx132 = getelementptr inbounds i32, i32* %155, i64 %153
  %156 = load i32, i32* %arrayidx132, align 4, !tbaa !5
  %add133 = add nsw i32 %add129, %156
  %157 = load i64, i64* %b1, align 8, !tbaa !54
  %158 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1134 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %158, i32 0, i32 37
  %cur_y135 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1134, i32 0, i32 5
  %159 = load i32*, i32** %cur_y135, align 8, !tbaa !87
  %arrayidx136 = getelementptr inbounds i32, i32* %159, i64 %157
  %160 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %add137 = add nsw i32 %add133, %160
  %div138 = sdiv i32 %add137, 4
  %161 = load i64, i64* %point, align 8, !tbaa !54
  %162 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2139 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %162, i32 0, i32 38
  %cur_y140 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2139, i32 0, i32 5
  %163 = load i32*, i32** %cur_y140, align 8, !tbaa !93
  %arrayidx141 = getelementptr inbounds i32, i32* %163, i64 %161
  store i32 %div138, i32* %arrayidx141, align 4, !tbaa !5
  br label %if.end.142

if.end.142:                                       ; preds = %if.else, %if.then.82
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.142, %if.then
  %164 = bitcast %struct._TT_Vector* %R to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %dby to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %dbx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %day to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %dax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %discriminant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i64* %b1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i64* %b0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i64* %a1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i64* %a0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i64* %point to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
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
define internal void @Ins_SRP0(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %rp0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 0
  store i32 %conv, i32* %rp0, align 4, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SRP1(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 1
  store i32 %conv, i32* %rp1, align 4, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SRP2(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %rp2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 2
  store i32 %conv, i32* %rp2, align 4, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SZP0(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  switch i64 %1, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 36
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 40
  %4 = bitcast %struct._TGlyph_Zone* %zp0 to i8*
  %5 = bitcast %struct._TGlyph_Zone* %twilight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp02 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 36
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 39
  %8 = bitcast %struct._TGlyph_Zone* %zp02 to i8*
  %9 = bitcast %struct._TGlyph_Zone* %pts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %11 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 0
  %12 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %conv = trunc i64 %12 to i32
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %gep0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 18
  store i32 %conv, i32* %gep0, align 4, !tbaa !98
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SZP1(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  switch i64 %1, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 37
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 40
  %4 = bitcast %struct._TGlyph_Zone* %zp1 to i8*
  %5 = bitcast %struct._TGlyph_Zone* %twilight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 37
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 39
  %8 = bitcast %struct._TGlyph_Zone* %zp12 to i8*
  %9 = bitcast %struct._TGlyph_Zone* %pts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %11 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 0
  %12 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %conv = trunc i64 %12 to i32
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %gep1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 19
  store i32 %conv, i32* %gep1, align 4, !tbaa !99
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SZP2(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  switch i64 %1, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 38
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 40
  %4 = bitcast %struct._TGlyph_Zone* %zp2 to i8*
  %5 = bitcast %struct._TGlyph_Zone* %twilight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp22 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 38
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 39
  %8 = bitcast %struct._TGlyph_Zone* %zp22 to i8*
  %9 = bitcast %struct._TGlyph_Zone* %pts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %11 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 0
  %12 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %conv = trunc i64 %12 to i32
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %gep2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 20
  store i32 %conv, i32* %gep2, align 4, !tbaa !100
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SZPS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  switch i64 %1, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 36
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %twilight = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 40
  %4 = bitcast %struct._TGlyph_Zone* %zp0 to i8*
  %5 = bitcast %struct._TGlyph_Zone* %twilight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp02 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 36
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 39
  %8 = bitcast %struct._TGlyph_Zone* %zp02 to i8*
  %9 = bitcast %struct._TGlyph_Zone* %pts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 56, i32 8, i1 false), !tbaa.struct !97
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 37
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp03 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 36
  %13 = bitcast %struct._TGlyph_Zone* %zp1 to i8*
  %14 = bitcast %struct._TGlyph_Zone* %zp03 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 56, i32 8, i1 false), !tbaa.struct !97
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 38
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp04 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 36
  %17 = bitcast %struct._TGlyph_Zone* %zp2 to i8*
  %18 = bitcast %struct._TGlyph_Zone* %zp04 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 56, i32 8, i1 false), !tbaa.struct !97
  %19 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %19, i64 0
  %20 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %conv = trunc i64 %20 to i32
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 42
  %gep0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 18
  store i32 %conv, i32* %gep0, align 4, !tbaa !98
  %22 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i64, i64* %22, i64 0
  %23 = load i64, i64* %arrayidx6, align 8, !tbaa !54
  %conv7 = trunc i64 %23 to i32
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 42
  %gep1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS8, i32 0, i32 19
  store i32 %conv7, i32* %gep1, align 4, !tbaa !99
  %25 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %25, i64 0
  %26 = load i64, i64* %arrayidx9, align 8, !tbaa !54
  %conv10 = trunc i64 %26 to i32
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 42
  %gep2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS11, i32 0, i32 20
  store i32 %conv10, i32* %gep2, align 4, !tbaa !100
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SLOOP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %loop = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 6
  store i64 %1, i64* %loop, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_RTG(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 1, i32* %round_state, align 4, !tbaa !21
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_To_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_RTHG(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 0, i32* %round_state, align 4, !tbaa !21
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_To_Half_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SMD(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %minimum_distance = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 7
  store i32 %conv, i32* %minimum_distance, align 4, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ELSE(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %nIfs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nIfs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  store i32 1, i32* %nIfs, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @SkipCode(%struct._TExecution_Context* %2) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 6
  %4 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %4 to i32
  switch i32 %conv, label %sw.epilog [
    i32 88, label %sw.bb
    i32 89, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load i32, i32* %nIfs, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nIfs, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %6 = load i32, i32* %nIfs, align 4, !tbaa !5
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %nIfs, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.1, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %7 = load i32, i32* %nIfs, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %8 = bitcast i32* %nIfs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
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
define internal void @Ins_JMPR(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 4
  %3 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %3, %conv
  store i32 %add, i32* %IP, align 4, !tbaa !44
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 4
  %6 = load i32, i32* %IP1, align 4, !tbaa !44
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 3
  %8 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx2, align 1, !tbaa !25
  %conv3 = zext i8 %9 to i32
  %cmp = icmp ne i32 %conv3, 45
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 4
  %11 = load i32, i32* %IP5, align 4, !tbaa !44
  %sub = sub nsw i32 %11, 1
  %idxprom6 = sext i32 %sub to i64
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 3
  %13 = load i8*, i8** %code7, align 8, !tbaa !68
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  %14 = load i8, i8* %arrayidx8, align 1, !tbaa !25
  %conv9 = zext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 4
  %16 = load i32, i32* %IP12, align 4, !tbaa !44
  %sub13 = sub nsw i32 %16, 1
  store i32 %sub13, i32* %IP12, align 4, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SCVTCI(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %control_value_cutin = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 10
  store i32 %conv, i32* %control_value_cutin, align 4, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SSWCI(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %single_width_cutin = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 11
  store i32 %conv, i32* %single_width_cutin, align 4, !tbaa !104
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SSW(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %shr = ashr i64 %1, 10
  %conv = trunc i64 %shr to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %single_width_value = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 12
  store i32 %conv, i32* %single_width_value, align 4, !tbaa !105
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_DUP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  store i64 %2, i64* %arrayidx1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_POP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_CLEAR(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 27
  store i32 0, i32* %new_top, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SWAP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i64, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %3, i64* %L, align 8, !tbaa !54
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 1
  %5 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 %5, i64* %arrayidx2, align 8, !tbaa !54
  %7 = load i64, i64* %L, align 8, !tbaa !54
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 %7, i64* %arrayidx3, align 8, !tbaa !54
  %9 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_DEPTH(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 24
  %1 = load i32, i32* %top, align 4, !tbaa !23
  %conv = sext i32 %1 to i64
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  store i64 %conv, i64* %arrayidx, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_CINDEX(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i64, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %2, i64* %L, align 8, !tbaa !54
  %3 = load i64, i64* %L, align 8, !tbaa !54
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %L, align 8, !tbaa !54
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 26
  %6 = load i32, i32* %args1, align 4, !tbaa !26
  %conv = sext i32 %6 to i64
  %cmp2 = icmp sgt i64 %4, %conv
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 26
  %9 = load i32, i32* %args4, align 4, !tbaa !26
  %conv5 = sext i32 %9 to i64
  %10 = load i64, i64* %L, align 8, !tbaa !54
  %sub = sub nsw i64 %conv5, %10
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 25
  %12 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %sub
  %13 = load i64, i64* %arrayidx6, align 8, !tbaa !54
  %14 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 %13, i64* %arrayidx7, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_MINDEX(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i64, align 8
  %K = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %3, i64* %L, align 8, !tbaa !54
  %4 = load i64, i64* %L, align 8, !tbaa !54
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %L, align 8, !tbaa !54
  %cmp1 = icmp slt i64 %5, 0
  br i1 %cmp1, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %L, align 8, !tbaa !54
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 26
  %8 = load i32, i32* %args2, align 4, !tbaa !26
  %conv = sext i32 %8 to i64
  %cmp3 = icmp sgt i64 %6, %conv
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 26
  %11 = load i32, i32* %args7, align 4, !tbaa !26
  %conv8 = sext i32 %11 to i64
  %12 = load i64, i64* %L, align 8, !tbaa !54
  %sub = sub nsw i64 %conv8, %12
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 25
  %14 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx9 = getelementptr inbounds i64, i64* %14, i64 %sub
  %15 = load i64, i64* %arrayidx9, align 8, !tbaa !54
  store i64 %15, i64* %K, align 8, !tbaa !54
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 26
  %17 = load i32, i32* %args10, align 4, !tbaa !26
  %conv11 = sext i32 %17 to i64
  %18 = load i64, i64* %L, align 8, !tbaa !54
  %sub12 = sub nsw i64 %conv11, %18
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack13 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 25
  %20 = load i64*, i64** %stack13, align 8, !tbaa !32
  %arrayidx14 = getelementptr inbounds i64, i64* %20, i64 %sub12
  %21 = bitcast i64* %arrayidx14 to i8*
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 26
  %23 = load i32, i32* %args15, align 4, !tbaa !26
  %conv16 = sext i32 %23 to i64
  %24 = load i64, i64* %L, align 8, !tbaa !54
  %sub17 = sub nsw i64 %conv16, %24
  %add = add nsw i64 %sub17, 1
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack18 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 25
  %26 = load i64*, i64** %stack18, align 8, !tbaa !32
  %arrayidx19 = getelementptr inbounds i64, i64* %26, i64 %add
  %27 = bitcast i64* %arrayidx19 to i8*
  %28 = load i64, i64* %L, align 8, !tbaa !54
  %sub20 = sub nsw i64 %28, 1
  %mul = mul i64 %sub20, 8
  %call = call i8* @memmove(i8* %21, i8* %27, i64 %mul) #6
  %29 = load i64, i64* %K, align 8, !tbaa !54
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args21 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 26
  %31 = load i32, i32* %args21, align 4, !tbaa !26
  %sub22 = sub nsw i32 %31, 1
  %idxprom = sext i32 %sub22 to i64
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 25
  %33 = load i64*, i64** %stack23, align 8, !tbaa !32
  %arrayidx24 = getelementptr inbounds i64, i64* %33, i64 %idxprom
  store i64 %29, i64* %arrayidx24, align 8, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %34 = bitcast i64* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
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
define internal void @Ins_ALIGNPTS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %distance = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %p2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %p1, align 4, !tbaa !5
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 1
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv2 = trunc i64 %6 to i32
  store i32 %conv2, i32* %p2, align 4, !tbaa !5
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 37
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %12 = load i32, i32* %n_points, align 4, !tbaa !83
  %conv6 = sext i32 %12 to i64
  %cmp7 = icmp sge i64 %10, %conv6
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %13 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %13, i64 1
  %14 = load i64, i64* %arrayidx10, align 8, !tbaa !54
  %cmp11 = icmp slt i64 %14, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %15 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %15, i64 1
  %16 = load i64, i64* %arrayidx14, align 8, !tbaa !54
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 36
  %n_points15 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 0
  %18 = load i32, i32* %n_points15, align 4, !tbaa !82
  %conv16 = sext i32 %18 to i64
  %cmp17 = icmp sge i64 %16, %conv16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false, %entry
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.13
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 49
  %21 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %23 = load i32, i32* %p2, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp019 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 36
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp019, i32 0, i32 4
  %25 = load i32*, i32** %cur_x, align 8, !tbaa !84
  %arrayidx20 = getelementptr inbounds i32, i32* %25, i64 %idxprom
  %26 = load i32, i32* %arrayidx20, align 4, !tbaa !5
  %27 = load i32, i32* %p1, align 4, !tbaa !5
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp122 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %28, i32 0, i32 37
  %cur_x23 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp122, i32 0, i32 4
  %29 = load i32*, i32** %cur_x23, align 8, !tbaa !86
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  %30 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %26, %30
  %31 = load i32, i32* %p2, align 4, !tbaa !5
  %idxprom25 = sext i32 %31 to i64
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp026 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 36
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp026, i32 0, i32 5
  %33 = load i32*, i32** %cur_y, align 8, !tbaa !85
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i64 %idxprom25
  %34 = load i32, i32* %arrayidx27, align 4, !tbaa !5
  %35 = load i32, i32* %p1, align 4, !tbaa !5
  %idxprom28 = sext i32 %35 to i64
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp129 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %36, i32 0, i32 37
  %cur_x30 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp129, i32 0, i32 4
  %37 = load i32*, i32** %cur_x30, align 8, !tbaa !86
  %arrayidx31 = getelementptr inbounds i32, i32* %37, i64 %idxprom28
  %38 = load i32, i32* %arrayidx31, align 4, !tbaa !5
  %sub32 = sub nsw i32 %34, %38
  %call = call i32 %21(%struct._TExecution_Context* %22, i32 %sub, i32 %sub32) #5
  %div = sdiv i32 %call, 2
  store i32 %div, i32* %distance, align 4, !tbaa !5
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 52
  %40 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp133 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 37
  %43 = load i32, i32* %p1, align 4, !tbaa !5
  %44 = load i32, i32* %distance, align 4, !tbaa !5
  call void %40(%struct._TExecution_Context* %41, %struct._TGlyph_Zone* %zp133, i32 %43, i32 %44) #5
  %45 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move34 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %45, i32 0, i32 52
  %46 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move34, align 8, !tbaa !61
  %47 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp035 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 36
  %49 = load i32, i32* %p2, align 4, !tbaa !5
  %50 = load i32, i32* %distance, align 4, !tbaa !5
  %sub36 = sub nsw i32 0, %50
  call void %46(%struct._TExecution_Context* %47, %struct._TGlyph_Zone* %zp035, i32 %49, i32 %sub36) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %51 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %p2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
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
define internal void @Ins_UNKNOWN(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %i = alloca i8, align 1
  %def = alloca %struct._TDefRecord*, align 8
  %call = alloca %struct._TCallRecord*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %i) #1
  %0 = bitcast %struct._TDefRecord** %def to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._TCallRecord** %call to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 6
  %3 = load i8, i8* %opcode, align 1, !tbaa !24
  %idxprom = zext i8 %3 to i64
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IDefPtr = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 14
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %IDefPtr, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !25
  store i8 %5, i8* %i, align 1, !tbaa !25
  %6 = load i8, i8* %i, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %numIDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 11
  %8 = load i32, i32* %numIDefs, align 4, !tbaa !33
  %cmp = icmp sge i32 %conv, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 1
  store i32 1024, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i8, i8* %i, align 1, !tbaa !25
  %idxprom2 = zext i8 %10 to i64
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 12
  %12 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !34
  %arrayidx3 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %12, i64 %idxprom2
  store %struct._TDefRecord* %arrayidx3, %struct._TDefRecord** %def, align 8, !tbaa !1
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 17
  %14 = load i32, i32* %callTop, align 4, !tbaa !38
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 18
  %16 = load i32, i32* %callSize, align 4, !tbaa !39
  %cmp4 = icmp sge i32 %14, %16
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 1
  store i32 1026, i32* %error7, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 19
  %19 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !40
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 17
  %21 = load i32, i32* %callTop9, align 4, !tbaa !38
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %callTop9, align 4, !tbaa !38
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %19, i64 %idx.ext
  store %struct._TCallRecord* %add.ptr, %struct._TCallRecord** %call, align 8, !tbaa !1
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 2
  %23 = load i32, i32* %curRange, align 4, !tbaa !41
  %24 = load %struct._TCallRecord*, %struct._TCallRecord** %call, align 8, !tbaa !1
  %Caller_Range = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %24, i32 0, i32 0
  store i32 %23, i32* %Caller_Range, align 4, !tbaa !42
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 4
  %26 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %26, 1
  %27 = load %struct._TCallRecord*, %struct._TCallRecord** %call, align 8, !tbaa !1
  %Caller_IP = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %27, i32 0, i32 1
  store i32 %add, i32* %Caller_IP, align 4, !tbaa !45
  %28 = load %struct._TCallRecord*, %struct._TCallRecord** %call, align 8, !tbaa !1
  %Cur_Count = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %28, i32 0, i32 2
  store i32 1, i32* %Cur_Count, align 4, !tbaa !46
  %29 = load %struct._TDefRecord*, %struct._TDefRecord** %def, align 8, !tbaa !1
  %Start = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %29, i32 0, i32 1
  %30 = load i32, i32* %Start, align 4, !tbaa !47
  %31 = load %struct._TCallRecord*, %struct._TCallRecord** %call, align 8, !tbaa !1
  %Cur_Restart = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %31, i32 0, i32 3
  store i32 %30, i32* %Cur_Restart, align 4, !tbaa !48
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %33 = load %struct._TDefRecord*, %struct._TDefRecord** %def, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %33, i32 0, i32 0
  %34 = load i32, i32* %Range, align 4, !tbaa !49
  %35 = load %struct._TDefRecord*, %struct._TDefRecord** %def, align 8, !tbaa !1
  %Start10 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %35, i32 0, i32 1
  %36 = load i32, i32* %Start10, align 4, !tbaa !47
  %call11 = call i32 @Ins_Goto_CodeRange(%struct._TExecution_Context* %32, i32 %34, i32 %36) #5
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %38 = bitcast %struct._TCallRecord** %call to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct._TDefRecord** %def to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  call void @llvm.lifetime.end(i64 1, i8* %i) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_UTP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %mask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 36
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 0
  %5 = load i32, i32* %n_points, align 4, !tbaa !82
  %conv = sext i32 %5 to i64
  %cmp2 = icmp sge i64 %3, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i8 -1, i8* %mask, align 1, !tbaa !25
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %8 = load i16, i16* %x, align 2, !tbaa !55
  %conv4 = sext i16 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %9 = load i8, i8* %mask, align 1, !tbaa !25
  %conv8 = zext i8 %9 to i32
  %and = and i32 %conv8, -3
  %conv9 = trunc i32 %and to i8
  store i8 %conv9, i8* %mask, align 1, !tbaa !25
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 42
  %freeVector12 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS11, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector12, i32 0, i32 1
  %11 = load i16, i16* %y, align 2, !tbaa !59
  %conv13 = sext i16 %11 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.10
  %12 = load i8, i8* %mask, align 1, !tbaa !25
  %conv17 = zext i8 %12 to i32
  %and18 = and i32 %conv17, -5
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, i8* %mask, align 1, !tbaa !25
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.10
  %13 = load i8, i8* %mask, align 1, !tbaa !25
  %conv21 = zext i8 %13 to i32
  %14 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i64, i64* %14, i64 0
  %15 = load i64, i64* %arrayidx22, align 8, !tbaa !54
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp023 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 36
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp023, i32 0, i32 6
  %17 = load i8*, i8** %touch, align 8, !tbaa !106
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 %15
  %18 = load i8, i8* %arrayidx24, align 1, !tbaa !25
  %conv25 = zext i8 %18 to i32
  %and26 = and i32 %conv25, %conv21
  %conv27 = trunc i32 %and26 to i8
  store i8 %conv27, i8* %arrayidx24, align 1, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
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
define internal void @Ins_LOOPCALL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %pTCR = alloca %struct._TCallRecord*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TCallRecord** %pTCR to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %numFDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 9
  %6 = load i32, i32* %numFDefs, align 4, !tbaa !107
  %conv = sext i32 %6 to i64
  %cmp2 = icmp sge i64 %4, %conv
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %7, i64 1
  %8 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 10
  %10 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !108
  %arrayidx6 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %10, i64 %8
  %Active = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx6, i32 0, i32 3
  %11 = load i32, i32* %Active, align 4, !tbaa !35
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 17
  %14 = load i32, i32* %callTop, align 4, !tbaa !38
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 18
  %16 = load i32, i32* %callSize, align 4, !tbaa !39
  %cmp7 = icmp sge i32 %14, %16
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 1
  store i32 1026, i32* %error10, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %18 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx12, align 8, !tbaa !54
  %cmp13 = icmp sgt i64 %19, 0
  br i1 %cmp13, label %if.then.15, label %if.end.31

if.then.15:                                       ; preds = %if.end.11
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop16 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 17
  %21 = load i32, i32* %callTop16, align 4, !tbaa !38
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 19
  %23 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !40
  %arrayidx17 = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %23, i64 %idxprom
  store %struct._TCallRecord* %arrayidx17, %struct._TCallRecord** %pTCR, align 8, !tbaa !1
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 2
  %25 = load i32, i32* %curRange, align 4, !tbaa !41
  %26 = load %struct._TCallRecord*, %struct._TCallRecord** %pTCR, align 8, !tbaa !1
  %Caller_Range = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %26, i32 0, i32 0
  store i32 %25, i32* %Caller_Range, align 4, !tbaa !42
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 4
  %28 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %28, 1
  %29 = load %struct._TCallRecord*, %struct._TCallRecord** %pTCR, align 8, !tbaa !1
  %Caller_IP = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %29, i32 0, i32 1
  store i32 %add, i32* %Caller_IP, align 4, !tbaa !45
  %30 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i64, i64* %30, i64 0
  %31 = load i64, i64* %arrayidx18, align 8, !tbaa !54
  %conv19 = trunc i64 %31 to i32
  %32 = load %struct._TCallRecord*, %struct._TCallRecord** %pTCR, align 8, !tbaa !1
  %Cur_Count = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %32, i32 0, i32 2
  store i32 %conv19, i32* %Cur_Count, align 4, !tbaa !46
  %33 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i64, i64* %33, i64 1
  %34 = load i64, i64* %arrayidx20, align 8, !tbaa !54
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs21 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 10
  %36 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs21, align 8, !tbaa !108
  %arrayidx22 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %36, i64 %34
  %Start = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx22, i32 0, i32 1
  %37 = load i32, i32* %Start, align 4, !tbaa !47
  %38 = load %struct._TCallRecord*, %struct._TCallRecord** %pTCR, align 8, !tbaa !1
  %Cur_Restart = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %38, i32 0, i32 3
  store i32 %37, i32* %Cur_Restart, align 4, !tbaa !48
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 17
  %40 = load i32, i32* %callTop23, align 4, !tbaa !38
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %callTop23, align 4, !tbaa !38
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %42 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i64, i64* %42, i64 1
  %43 = load i64, i64* %arrayidx24, align 8, !tbaa !54
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs25 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 10
  %45 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs25, align 8, !tbaa !108
  %arrayidx26 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %45, i64 %43
  %Range = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx26, i32 0, i32 0
  %46 = load i32, i32* %Range, align 4, !tbaa !49
  %47 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i64, i64* %47, i64 1
  %48 = load i64, i64* %arrayidx27, align 8, !tbaa !54
  %49 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs28 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %49, i32 0, i32 10
  %50 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs28, align 8, !tbaa !108
  %arrayidx29 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %50, i64 %48
  %Start30 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx29, i32 0, i32 1
  %51 = load i32, i32* %Start30, align 4, !tbaa !47
  %call = call i32 @Ins_Goto_CodeRange(%struct._TExecution_Context* %41, i32 %46, i32 %51) #5
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.15, %if.end.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.9, %if.then
  %53 = bitcast %struct._TCallRecord** %pTCR to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
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
define internal void @Ins_CALL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %pCrec = alloca %struct._TCallRecord*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TCallRecord** %pCrec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %numFDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 9
  %6 = load i32, i32* %numFDefs, align 4, !tbaa !107
  %conv = sext i32 %6 to i64
  %cmp2 = icmp sge i64 %4, %conv
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 10
  %10 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !108
  %arrayidx6 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %10, i64 %8
  %Active = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx6, i32 0, i32 3
  %11 = load i32, i32* %Active, align 4, !tbaa !35
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 17
  %14 = load i32, i32* %callTop, align 4, !tbaa !38
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 18
  %16 = load i32, i32* %callSize, align 4, !tbaa !39
  %cmp7 = icmp sge i32 %14, %16
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 1
  store i32 1026, i32* %error10, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 17
  %19 = load i32, i32* %callTop12, align 4, !tbaa !38
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 19
  %21 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !40
  %arrayidx13 = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %21, i64 %idxprom
  store %struct._TCallRecord* %arrayidx13, %struct._TCallRecord** %pCrec, align 8, !tbaa !1
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 2
  %23 = load i32, i32* %curRange, align 4, !tbaa !41
  %24 = load %struct._TCallRecord*, %struct._TCallRecord** %pCrec, align 8, !tbaa !1
  %Caller_Range = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %24, i32 0, i32 0
  store i32 %23, i32* %Caller_Range, align 4, !tbaa !42
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 4
  %26 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %26, 1
  %27 = load %struct._TCallRecord*, %struct._TCallRecord** %pCrec, align 8, !tbaa !1
  %Caller_IP = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %27, i32 0, i32 1
  store i32 %add, i32* %Caller_IP, align 4, !tbaa !45
  %28 = load %struct._TCallRecord*, %struct._TCallRecord** %pCrec, align 8, !tbaa !1
  %Cur_Count = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %28, i32 0, i32 2
  store i32 1, i32* %Cur_Count, align 4, !tbaa !46
  %29 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %29, i64 0
  %30 = load i64, i64* %arrayidx14, align 8, !tbaa !54
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 10
  %32 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs15, align 8, !tbaa !108
  %arrayidx16 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %32, i64 %30
  %Start = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx16, i32 0, i32 1
  %33 = load i32, i32* %Start, align 4, !tbaa !47
  %34 = load %struct._TCallRecord*, %struct._TCallRecord** %pCrec, align 8, !tbaa !1
  %Cur_Restart = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %34, i32 0, i32 3
  store i32 %33, i32* %Cur_Restart, align 4, !tbaa !48
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop17 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 17
  %36 = load i32, i32* %callTop17, align 4, !tbaa !38
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %callTop17, align 4, !tbaa !38
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %38 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i64, i64* %38, i64 0
  %39 = load i64, i64* %arrayidx18, align 8, !tbaa !54
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs19 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 10
  %41 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs19, align 8, !tbaa !108
  %arrayidx20 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %41, i64 %39
  %Range = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx20, i32 0, i32 0
  %42 = load i32, i32* %Range, align 4, !tbaa !49
  %43 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i64, i64* %43, i64 0
  %44 = load i64, i64* %arrayidx21, align 8, !tbaa !54
  %45 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs22 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %45, i32 0, i32 10
  %46 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs22, align 8, !tbaa !108
  %arrayidx23 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %46, i64 %44
  %Start24 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %arrayidx23, i32 0, i32 1
  %47 = load i32, i32* %Start24, align 4, !tbaa !47
  %call = call i32 @Ins_Goto_CodeRange(%struct._TExecution_Context* %37, i32 %42, i32 %47) #5
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.9, %if.then
  %49 = bitcast %struct._TCallRecord** %pCrec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
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
define internal void @Ins_FDEF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %pRec = alloca %struct._TDefRecord*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TDefRecord** %pRec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %numFDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 9
  %6 = load i32, i32* %numFDefs, align 4, !tbaa !107
  %conv = sext i32 %6 to i64
  %cmp2 = icmp sge i64 %4, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %FDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 10
  %11 = load %struct._TDefRecord*, %struct._TDefRecord** %FDefs, align 8, !tbaa !108
  %arrayidx5 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %11, i64 %9
  store %struct._TDefRecord* %arrayidx5, %struct._TDefRecord** %pRec, align 8, !tbaa !1
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 2
  %13 = load i32, i32* %curRange, align 4, !tbaa !41
  %14 = load %struct._TDefRecord*, %struct._TDefRecord** %pRec, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %14, i32 0, i32 0
  store i32 %13, i32* %Range, align 4, !tbaa !49
  %15 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i64, i64* %15, i64 0
  %16 = load i64, i64* %arrayidx6, align 8, !tbaa !54
  %conv7 = trunc i64 %16 to i8
  %17 = load %struct._TDefRecord*, %struct._TDefRecord** %pRec, align 8, !tbaa !1
  %Opc = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %17, i32 0, i32 2
  store i8 %conv7, i8* %Opc, align 1, !tbaa !37
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 4
  %19 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %19, 1
  %20 = load %struct._TDefRecord*, %struct._TDefRecord** %pRec, align 8, !tbaa !1
  %Start = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %20, i32 0, i32 1
  store i32 %add, i32* %Start, align 4, !tbaa !47
  %21 = load %struct._TDefRecord*, %struct._TDefRecord** %pRec, align 8, !tbaa !1
  %Active = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %21, i32 0, i32 3
  store i32 1, i32* %Active, align 4, !tbaa !35
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @skip_FDEF(%struct._TExecution_Context* %22) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast %struct._TDefRecord** %pRec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
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
define internal void @Ins_ENDF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %pRec = alloca %struct._TCallRecord*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TCallRecord** %pRec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 17
  %3 = load i32, i32* %callTop, align 4, !tbaa !38
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 1
  store i32 1036, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 17
  %6 = load i32, i32* %callTop1, align 4, !tbaa !38
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %callTop1, align 4, !tbaa !38
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 17
  %8 = load i32, i32* %callTop2, align 4, !tbaa !38
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callStack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 19
  %10 = load %struct._TCallRecord*, %struct._TCallRecord** %callStack, align 8, !tbaa !40
  %arrayidx = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %10, i64 %idxprom
  store %struct._TCallRecord* %arrayidx, %struct._TCallRecord** %pRec, align 8, !tbaa !1
  %11 = load %struct._TCallRecord*, %struct._TCallRecord** %pRec, align 8, !tbaa !1
  %Cur_Count = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %11, i32 0, i32 2
  %12 = load i32, i32* %Cur_Count, align 4, !tbaa !46
  %dec3 = add nsw i32 %12, -1
  store i32 %dec3, i32* %Cur_Count, align 4, !tbaa !46
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  %14 = load %struct._TCallRecord*, %struct._TCallRecord** %pRec, align 8, !tbaa !1
  %Cur_Count4 = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %14, i32 0, i32 2
  %15 = load i32, i32* %Cur_Count4, align 4, !tbaa !46
  %cmp5 = icmp sgt i32 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %callTop7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 17
  %17 = load i32, i32* %callTop7, align 4, !tbaa !38
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %callTop7, align 4, !tbaa !38
  %18 = load %struct._TCallRecord*, %struct._TCallRecord** %pRec, align 8, !tbaa !1
  %Cur_Restart = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %18, i32 0, i32 3
  %19 = load i32, i32* %Cur_Restart, align 4, !tbaa !48
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 4
  store i32 %19, i32* %IP, align 4, !tbaa !44
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %22 = load %struct._TCallRecord*, %struct._TCallRecord** %pRec, align 8, !tbaa !1
  %Caller_Range = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %22, i32 0, i32 0
  %23 = load i32, i32* %Caller_Range, align 4, !tbaa !42
  %24 = load %struct._TCallRecord*, %struct._TCallRecord** %pRec, align 8, !tbaa !1
  %Caller_IP = getelementptr inbounds %struct._TCallRecord, %struct._TCallRecord* %24, i32 0, i32 1
  %25 = load i32, i32* %Caller_IP, align 4, !tbaa !45
  %call = call i32 @Ins_Goto_CodeRange(%struct._TExecution_Context* %21, i32 %23, i32 %25) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %26 = bitcast %struct._TCallRecord** %pRec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
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
define internal void @Ins_MDAP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %point = alloca i32, align 4
  %cur_dist = alloca i32, align 4
  %distance = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cur_dist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %point, align 4, !tbaa !5
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 36
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 0
  %10 = load i32, i32* %n_points, align 4, !tbaa !82
  %conv4 = sext i32 %10 to i64
  %cmp5 = icmp sge i64 %8, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 6
  %13 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv7 = zext i8 %13 to i32
  %and = and i32 %conv7, 1
  %cmp8 = icmp ne i32 %and, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 49
  %15 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %17 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp011 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 36
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp011, i32 0, i32 4
  %19 = load i32*, i32** %cur_x, align 8, !tbaa !84
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %21 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp014 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 36
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp014, i32 0, i32 5
  %23 = load i32*, i32** %cur_y, align 8, !tbaa !85
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  %24 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %call = call i32 %15(%struct._TExecution_Context* %16, i32 %20, i32 %24) #5
  store i32 %call, i32* %cur_dist, align 4, !tbaa !5
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 48
  %26 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %28 = load i32, i32* %cur_dist, align 4, !tbaa !5
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 31
  %compensations = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 15
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations, i32 0, i64 0
  %30 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  %call17 = call i32 %26(%struct._TExecution_Context* %27, i32 %28, i32 %30) #5
  %31 = load i32, i32* %cur_dist, align 4, !tbaa !5
  %sub = sub nsw i32 %call17, %31
  store i32 %sub, i32* %distance, align 4, !tbaa !5
  br label %if.end.18

if.else:                                          ; preds = %if.end
  store i32 0, i32* %distance, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.10
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 52
  %33 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp019 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 36
  %36 = load i32, i32* %point, align 4, !tbaa !5
  %37 = load i32, i32* %distance, align 4, !tbaa !5
  call void %33(%struct._TExecution_Context* %34, %struct._TGlyph_Zone* %zp019, i32 %36, i32 %37) #5
  %38 = load i32, i32* %point, align 4, !tbaa !5
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 42
  %rp0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 0
  store i32 %38, i32* %rp0, align 4, !tbaa !94
  %40 = load i32, i32* %point, align 4, !tbaa !5
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS20 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %41, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS20, i32 0, i32 1
  store i32 %40, i32* %rp1, align 4, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then
  %42 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %cur_dist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %point to i8*
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

; Function Attrs: nounwind uwtable
define internal void @Ins_IUP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %V = alloca %struct.LOC_Ins_IUP, align 8
  %mask = alloca i8, align 1
  %first_point = alloca i64, align 8
  %end_point = alloca i64, align 8
  %first_touched = alloca i64, align 8
  %cur_touched = alloca i64, align 8
  %point = alloca i64, align 8
  %contour = alloca i64, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct.LOC_Ins_IUP* %V to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  %1 = bitcast i64* %first_point to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %end_point to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %first_touched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %cur_touched to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %point to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %contour to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 6
  %9 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 2, i8* %mask, align 1, !tbaa !25
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 39
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 2
  %11 = load i32*, i32** %org_x, align 8, !tbaa !109
  %orgs = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %V, i32 0, i32 0
  store i32* %11, i32** %orgs, align 8, !tbaa !110
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 39
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts1, i32 0, i32 4
  %13 = load i32*, i32** %cur_x, align 8, !tbaa !112
  %curs = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %V, i32 0, i32 1
  store i32* %13, i32** %curs, align 8, !tbaa !113
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 4, i8* %mask, align 1, !tbaa !25
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 39
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts2, i32 0, i32 3
  %15 = load i32*, i32** %org_y, align 8, !tbaa !114
  %orgs3 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %V, i32 0, i32 0
  store i32* %15, i32** %orgs3, align 8, !tbaa !110
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 39
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts4, i32 0, i32 5
  %17 = load i32*, i32** %cur_y, align 8, !tbaa !115
  %curs5 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %V, i32 0, i32 1
  store i32* %17, i32** %curs5, align 8, !tbaa !113
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i64 0, i64* %contour, align 8, !tbaa !54
  store i64 0, i64* %point, align 8, !tbaa !54
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %18 = load i64, i64* %contour, align 8, !tbaa !54
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 39
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts6, i32 0, i32 7
  %20 = load i16*, i16** %contours, align 8, !tbaa !116
  %arrayidx = getelementptr inbounds i16, i16* %20, i64 %18
  %21 = load i16, i16* %arrayidx, align 2, !tbaa !80
  %conv7 = sext i16 %21 to i64
  store i64 %conv7, i64* %end_point, align 8, !tbaa !54
  %22 = load i64, i64* %point, align 8, !tbaa !54
  store i64 %22, i64* %first_point, align 8, !tbaa !54
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %23 = load i64, i64* %point, align 8, !tbaa !54
  %24 = load i64, i64* %end_point, align 8, !tbaa !54
  %cmp = icmp sle i64 %23, %24
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load i64, i64* %point, align 8, !tbaa !54
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts9, i32 0, i32 6
  %27 = load i8*, i8** %touch, align 8, !tbaa !117
  %arrayidx10 = getelementptr inbounds i8, i8* %27, i64 %25
  %28 = load i8, i8* %arrayidx10, align 1, !tbaa !25
  %conv11 = zext i8 %28 to i32
  %29 = load i8, i8* %mask, align 1, !tbaa !25
  %conv12 = zext i8 %29 to i32
  %and13 = and i32 %conv11, %conv12
  %cmp14 = icmp eq i32 %and13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %31 = load i64, i64* %point, align 8, !tbaa !54
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %point, align 8, !tbaa !54
  br label %while.cond

while.end:                                        ; preds = %land.end
  %32 = load i64, i64* %point, align 8, !tbaa !54
  %33 = load i64, i64* %end_point, align 8, !tbaa !54
  %cmp16 = icmp sle i64 %32, %33
  br i1 %cmp16, label %if.then.18, label %if.end.58

if.then.18:                                       ; preds = %while.end
  %34 = load i64, i64* %point, align 8, !tbaa !54
  store i64 %34, i64* %first_touched, align 8, !tbaa !54
  %35 = load i64, i64* %point, align 8, !tbaa !54
  store i64 %35, i64* %cur_touched, align 8, !tbaa !54
  %36 = load i64, i64* %point, align 8, !tbaa !54
  %inc19 = add nsw i64 %36, 1
  store i64 %inc19, i64* %point, align 8, !tbaa !54
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.37, %if.then.18
  %37 = load i64, i64* %point, align 8, !tbaa !54
  %38 = load i64, i64* %end_point, align 8, !tbaa !54
  %cmp21 = icmp sle i64 %37, %38
  br i1 %cmp21, label %while.body.23, label %while.end.39

while.body.23:                                    ; preds = %while.cond.20
  %39 = load i64, i64* %point, align 8, !tbaa !54
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts24 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 39
  %touch25 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts24, i32 0, i32 6
  %41 = load i8*, i8** %touch25, align 8, !tbaa !117
  %arrayidx26 = getelementptr inbounds i8, i8* %41, i64 %39
  %42 = load i8, i8* %arrayidx26, align 1, !tbaa !25
  %conv27 = zext i8 %42 to i32
  %43 = load i8, i8* %mask, align 1, !tbaa !25
  %conv28 = zext i8 %43 to i32
  %and29 = and i32 %conv27, %conv28
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %while.body.23
  %44 = load i64, i64* %cur_touched, align 8, !tbaa !54
  %add = add nsw i64 %44, 1
  %conv33 = trunc i64 %add to i32
  %45 = load i64, i64* %point, align 8, !tbaa !54
  %sub = sub nsw i64 %45, 1
  %conv34 = trunc i64 %sub to i32
  %46 = load i64, i64* %cur_touched, align 8, !tbaa !54
  %conv35 = trunc i64 %46 to i32
  %47 = load i64, i64* %point, align 8, !tbaa !54
  %conv36 = trunc i64 %47 to i32
  call void @Interp(i32 %conv33, i32 %conv34, i32 %conv35, i32 %conv36, %struct.LOC_Ins_IUP* %V) #5
  %48 = load i64, i64* %point, align 8, !tbaa !54
  store i64 %48, i64* %cur_touched, align 8, !tbaa !54
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %while.body.23
  %49 = load i64, i64* %point, align 8, !tbaa !54
  %inc38 = add nsw i64 %49, 1
  store i64 %inc38, i64* %point, align 8, !tbaa !54
  br label %while.cond.20

while.end.39:                                     ; preds = %while.cond.20
  %50 = load i64, i64* %cur_touched, align 8, !tbaa !54
  %51 = load i64, i64* %first_touched, align 8, !tbaa !54
  %cmp40 = icmp eq i64 %50, %51
  br i1 %cmp40, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %while.end.39
  %52 = load i64, i64* %first_point, align 8, !tbaa !54
  %conv43 = trunc i64 %52 to i32
  %53 = load i64, i64* %end_point, align 8, !tbaa !54
  %conv44 = trunc i64 %53 to i32
  %54 = load i64, i64* %cur_touched, align 8, !tbaa !54
  %conv45 = trunc i64 %54 to i32
  call void @Shift(i32 %conv43, i32 %conv44, i32 %conv45, %struct.LOC_Ins_IUP* %V) #5
  br label %if.end.57

if.else.46:                                       ; preds = %while.end.39
  %55 = load i64, i64* %cur_touched, align 8, !tbaa !54
  %add47 = add nsw i64 %55, 1
  %conv48 = trunc i64 %add47 to i32
  %56 = load i64, i64* %end_point, align 8, !tbaa !54
  %conv49 = trunc i64 %56 to i32
  %57 = load i64, i64* %cur_touched, align 8, !tbaa !54
  %conv50 = trunc i64 %57 to i32
  %58 = load i64, i64* %first_touched, align 8, !tbaa !54
  %conv51 = trunc i64 %58 to i32
  call void @Interp(i32 %conv48, i32 %conv49, i32 %conv50, i32 %conv51, %struct.LOC_Ins_IUP* %V) #5
  %59 = load i64, i64* %first_point, align 8, !tbaa !54
  %conv52 = trunc i64 %59 to i32
  %60 = load i64, i64* %first_touched, align 8, !tbaa !54
  %sub53 = sub nsw i64 %60, 1
  %conv54 = trunc i64 %sub53 to i32
  %61 = load i64, i64* %cur_touched, align 8, !tbaa !54
  %conv55 = trunc i64 %61 to i32
  %62 = load i64, i64* %first_touched, align 8, !tbaa !54
  %conv56 = trunc i64 %62 to i32
  call void @Interp(i32 %conv52, i32 %conv54, i32 %conv55, i32 %conv56, %struct.LOC_Ins_IUP* %V) #5
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.46, %if.then.42
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %while.end
  %63 = load i64, i64* %contour, align 8, !tbaa !54
  %inc59 = add nsw i64 %63, 1
  store i64 %inc59, i64* %contour, align 8, !tbaa !54
  br label %do.cond

do.cond:                                          ; preds = %if.end.58
  %64 = load i64, i64* %contour, align 8, !tbaa !54
  %65 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts60 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %65, i32 0, i32 39
  %n_contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts60, i32 0, i32 1
  %66 = load i32, i32* %n_contours, align 4, !tbaa !118
  %conv61 = sext i32 %66 to i64
  %cmp62 = icmp slt i64 %64, %conv61
  br i1 %cmp62, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %67 = bitcast i64* %contour to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i64* %point to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i64* %cur_touched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %first_touched to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i64* %end_point to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i64* %first_point to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
  %73 = bitcast %struct.LOC_Ins_IUP* %V to i8*
  call void @llvm.lifetime.end(i64 16, i8* %73) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SHP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %zp = alloca %struct._TGlyph_Zone, align 8
  %refp = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %point = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = bitcast i32* %refp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %point to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 24
  %7 = load i32, i32* %top, align 4, !tbaa !23
  %conv = sext i32 %7 to i64
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 42
  %loop = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 6
  %9 = load i64, i64* %loop, align 8, !tbaa !101
  %cmp = icmp slt i64 %conv, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @Compute_Point_Displacement(%struct._TExecution_Context* %11, i32* %dx, i32* %dy, %struct._TGlyph_Zone* %zp, i32* %refp) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end.3
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 42
  %loop5 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS4, i32 0, i32 6
  %13 = load i64, i64* %loop5, align 8, !tbaa !101
  %cmp6 = icmp sgt i64 %13, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 26
  %15 = load i32, i32* %args8, align 4, !tbaa !26
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %args8, align 4, !tbaa !26
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 26
  %17 = load i32, i32* %args9, align 4, !tbaa !26
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 25
  %19 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds i64, i64* %19, i64 %idxprom
  %20 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %20, i64* %point, align 8, !tbaa !54
  %21 = load i64, i64* %point, align 8, !tbaa !54
  %cmp10 = icmp slt i64 %21, 0
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %22 = load i64, i64* %point, align 8, !tbaa !54
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 38
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %24 = load i32, i32* %n_points, align 4, !tbaa !119
  %conv12 = sext i32 %24 to i64
  %cmp13 = icmp sge i64 %22, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %lor.lhs.false, %while.body
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error16 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 1
  store i32 1032, i32* %error16, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %27 = load i64, i64* %point, align 8, !tbaa !54
  %28 = load i32, i32* %dx, align 4, !tbaa !5
  %29 = load i32, i32* %dy, align 4, !tbaa !5
  call void @Move_Zp2_Point(%struct._TExecution_Context* %26, i64 %27, i32 %28, i32 %29, i32 1) #5
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS18 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 42
  %loop19 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS18, i32 0, i32 6
  %31 = load i64, i64* %loop19, align 8, !tbaa !101
  %dec20 = add nsw i64 %31, -1
  store i64 %dec20, i64* %loop19, align 8, !tbaa !101
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS21 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 42
  %loop22 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS21, i32 0, i32 6
  store i64 1, i64* %loop22, align 8, !tbaa !101
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 26
  %34 = load i32, i32* %args23, align 4, !tbaa !26
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 27
  store i32 %34, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.15, %if.then.2, %if.then
  %36 = bitcast i64* %point to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %refp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.end(i64 56, i8* %40) #1
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
define internal void @Ins_SHC(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %zp = alloca %struct._TGlyph_Zone, align 8
  %refp = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %contour = alloca i64, align 8
  %i = alloca i64, align 8
  %first_point = alloca i32, align 4
  %last_point = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = bitcast i32* %refp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %contour to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %first_point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %last_point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %9, i64* %contour, align 8, !tbaa !54
  %10 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp slt i64 %11, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %12, i64 0
  %13 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 39
  %n_contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 1
  %15 = load i32, i32* %n_contours, align 4, !tbaa !118
  %conv = sext i32 %15 to i64
  %cmp3 = icmp sge i64 %13, %conv
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @Compute_Point_Displacement(%struct._TExecution_Context* %16, i32* %dx, i32* %dy, %struct._TGlyph_Zone* %zp, i32* %refp) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %17 = load i64, i64* %contour, align 8, !tbaa !54
  %cmp7 = icmp eq i64 %17, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  store i32 0, i32* %first_point, align 4, !tbaa !5
  br label %if.end.13

if.else:                                          ; preds = %if.end.6
  %18 = load i64, i64* %contour, align 8, !tbaa !54
  %sub = sub nsw i64 %18, 1
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 39
  %contours = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts10, i32 0, i32 7
  %20 = load i16*, i16** %contours, align 8, !tbaa !116
  %arrayidx11 = getelementptr inbounds i16, i16* %20, i64 %sub
  %21 = load i16, i16* %arrayidx11, align 2, !tbaa !80
  %conv12 = sext i16 %21 to i32
  %add = add nsw i32 %conv12, 1
  store i32 %add, i32* %first_point, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %22 = load i64, i64* %contour, align 8, !tbaa !54
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 39
  %contours15 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts14, i32 0, i32 7
  %24 = load i16*, i16** %contours15, align 8, !tbaa !116
  %arrayidx16 = getelementptr inbounds i16, i16* %24, i64 %22
  %25 = load i16, i16* %arrayidx16, align 2, !tbaa !80
  %conv17 = sext i16 %25 to i32
  store i32 %conv17, i32* %last_point, align 4, !tbaa !5
  %26 = load i32, i32* %first_point, align 4, !tbaa !5
  %conv18 = sext i32 %26 to i64
  store i64 %conv18, i64* %i, align 8, !tbaa !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %27 = load i64, i64* %i, align 8, !tbaa !54
  %28 = load i32, i32* %last_point, align 4, !tbaa !5
  %conv19 = sext i32 %28 to i64
  %cmp20 = icmp sle i64 %27, %conv19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 4
  %29 = load i32*, i32** %cur_x, align 8, !tbaa !74
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 38
  %cur_x22 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 4
  %31 = load i32*, i32** %cur_x22, align 8, !tbaa !92
  %cmp23 = icmp ne i32* %29, %31
  br i1 %cmp23, label %if.then.29, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %for.body
  %32 = load i32, i32* %refp, align 4, !tbaa !5
  %conv26 = sext i32 %32 to i64
  %33 = load i64, i64* %i, align 8, !tbaa !54
  %cmp27 = icmp ne i64 %conv26, %33
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.25, %for.body
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %35 = load i64, i64* %i, align 8, !tbaa !54
  %36 = load i32, i32* %dx, align 4, !tbaa !5
  %37 = load i32, i32* %dy, align 4, !tbaa !5
  call void @Move_Zp2_Point(%struct._TExecution_Context* %34, i64 %35, i32 %36, i32 %37, i32 0) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %lor.lhs.false.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %38 = load i64, i64* %i, align 8, !tbaa !54
  %inc = add nsw i64 %38, 1
  store i64 %inc, i64* %i, align 8, !tbaa !54
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then
  %39 = bitcast i32* %last_point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %first_point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i64* %contour to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %refp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.end(i64 56, i8* %46) #1
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
define internal void @Ins_SHZ(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %zp = alloca %struct._TGlyph_Zone, align 8
  %refp = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %last_point = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = bitcast i32* %refp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %last_point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp2 = icmp sge i64 %9, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @Compute_Point_Displacement(%struct._TExecution_Context* %11, i32* %dx, i32* %dy, %struct._TGlyph_Zone* %zp, i32* %refp) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 0
  %12 = load i32, i32* %n_points, align 4, !tbaa !120
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %last_point, align 4, !tbaa !5
  store i64 0, i64* %i, align 8, !tbaa !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %13 = load i64, i64* %i, align 8, !tbaa !54
  %14 = load i32, i32* %last_point, align 4, !tbaa !5
  %conv = sext i32 %14 to i64
  %cmp5 = icmp sle i64 %13, %conv
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 4
  %15 = load i32*, i32** %cur_x, align 8, !tbaa !74
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 38
  %cur_x7 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 4
  %17 = load i32*, i32** %cur_x7, align 8, !tbaa !92
  %cmp8 = icmp ne i32* %15, %17
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.body
  %18 = load i32, i32* %refp, align 4, !tbaa !5
  %conv11 = sext i32 %18 to i64
  %19 = load i64, i64* %i, align 8, !tbaa !54
  %cmp12 = icmp ne i64 %conv11, %19
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.10, %for.body
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %21 = load i64, i64* %i, align 8, !tbaa !54
  %22 = load i32, i32* %dx, align 4, !tbaa !5
  %23 = load i32, i32* %dy, align 4, !tbaa !5
  call void @Move_Zp2_Point(%struct._TExecution_Context* %20, i64 %21, i32 %22, i32 %23, i32 0) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %lor.lhs.false.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %24 = load i64, i64* %i, align 8, !tbaa !54
  %inc = add nsw i64 %24, 1
  store i64 %inc, i64* %i, align 8, !tbaa !54
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.3, %if.then
  %25 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %last_point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %refp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.end(i64 56, i8* %30) #1
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
define internal void @Ins_SHPIX(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %point = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i64* %point to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 24
  %4 = load i32, i32* %top, align 4, !tbaa !23
  %conv = sext i32 %4 to i64
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 42
  %loop = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 6
  %6 = load i64, i64* %loop, align 8, !tbaa !101
  %cmp = icmp slt i64 %conv, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv2 = trunc i64 %9 to i32
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS3, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %11 = load i16, i16* %x, align 2, !tbaa !55
  %conv4 = sext i16 %11 to i64
  %conv5 = trunc i64 %conv4 to i32
  %call = call i32 @MulDiv_Round(i32 %conv2, i32 %conv5, i32 16384) #5
  store i32 %call, i32* %dx, align 4, !tbaa !5
  %12 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 0
  %13 = load i64, i64* %arrayidx6, align 8, !tbaa !54
  %conv7 = trunc i64 %13 to i32
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 42
  %freeVector9 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS8, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector9, i32 0, i32 1
  %15 = load i16, i16* %y, align 2, !tbaa !59
  %conv10 = sext i16 %15 to i64
  %conv11 = trunc i64 %conv10 to i32
  %call12 = call i32 @MulDiv_Round(i32 %conv7, i32 %conv11, i32 16384) #5
  store i32 %call12, i32* %dy, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.end
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS13 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 42
  %loop14 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS13, i32 0, i32 6
  %17 = load i64, i64* %loop14, align 8, !tbaa !101
  %cmp15 = icmp sgt i64 %17, 0
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args17 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 26
  %19 = load i32, i32* %args17, align 4, !tbaa !26
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %args17, align 4, !tbaa !26
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args18 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 26
  %21 = load i32, i32* %args18, align 4, !tbaa !26
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 25
  %23 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx19 = getelementptr inbounds i64, i64* %23, i64 %idxprom
  %24 = load i64, i64* %arrayidx19, align 8, !tbaa !54
  store i64 %24, i64* %point, align 8, !tbaa !54
  %25 = load i64, i64* %point, align 8, !tbaa !54
  %cmp20 = icmp slt i64 %25, 0
  br i1 %cmp20, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %26 = load i64, i64* %point, align 8, !tbaa !54
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 38
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %28 = load i32, i32* %n_points, align 4, !tbaa !119
  %conv22 = sext i32 %28 to i64
  %cmp23 = icmp sge i64 %26, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %lor.lhs.false, %while.body
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error26 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 1
  store i32 1032, i32* %error26, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %31 = load i64, i64* %point, align 8, !tbaa !54
  %32 = load i32, i32* %dx, align 4, !tbaa !5
  %33 = load i32, i32* %dy, align 4, !tbaa !5
  call void @Move_Zp2_Point(%struct._TExecution_Context* %30, i64 %31, i32 %32, i32 %33, i32 1) #5
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS28 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 42
  %loop29 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS28, i32 0, i32 6
  %35 = load i64, i64* %loop29, align 8, !tbaa !101
  %dec30 = add nsw i64 %35, -1
  store i64 %dec30, i64* %loop29, align 8, !tbaa !101
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS31 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %36, i32 0, i32 42
  %loop32 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS31, i32 0, i32 6
  store i64 1, i64* %loop32, align 8, !tbaa !101
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 26
  %38 = load i32, i32* %args33, align 4, !tbaa !26
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 27
  store i32 %38, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.25, %if.then
  %40 = bitcast i64* %point to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
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
define internal void @Ins_IP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %org_a = alloca i32, align 4
  %org_b = alloca i32, align 4
  %org_x = alloca i32, align 4
  %cur_a = alloca i32, align 4
  %cur_b = alloca i32, align 4
  %cur_x = alloca i32, align 4
  %distance = alloca i32, align 4
  %point = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %org_a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %org_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %org_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %cur_a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cur_b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %cur_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 24
  %10 = load i32, i32* %top, align 4, !tbaa !23
  %conv = sext i32 %10 to i64
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 42
  %loop = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 6
  %12 = load i64, i64* %loop, align 8, !tbaa !101
  %cmp = icmp slt i64 %conv, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 50
  %15 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj, align 8, !tbaa !65
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS2, i32 0, i32 1
  %18 = load i32, i32* %rp1, align 4, !tbaa !95
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 36
  %org_x3 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 2
  %20 = load i32*, i32** %org_x3, align 8, !tbaa !121
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 42
  %rp15 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS4, i32 0, i32 1
  %23 = load i32, i32* %rp15, align 4, !tbaa !95
  %idxprom6 = sext i32 %23 to i64
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp07 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 36
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp07, i32 0, i32 3
  %25 = load i32*, i32** %org_y, align 8, !tbaa !122
  %arrayidx8 = getelementptr inbounds i32, i32* %25, i64 %idxprom6
  %26 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %call = call i32 %15(%struct._TExecution_Context* %16, i32 %21, i32 %26) #5
  store i32 %call, i32* %org_a, align 4, !tbaa !5
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 50
  %28 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj9, align 8, !tbaa !65
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 42
  %rp2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS10, i32 0, i32 2
  %31 = load i32, i32* %rp2, align 4, !tbaa !96
  %idxprom11 = sext i32 %31 to i64
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 37
  %org_x12 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 2
  %33 = load i32*, i32** %org_x12, align 8, !tbaa !123
  %arrayidx13 = getelementptr inbounds i32, i32* %33, i64 %idxprom11
  %34 = load i32, i32* %arrayidx13, align 4, !tbaa !5
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 42
  %rp215 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS14, i32 0, i32 2
  %36 = load i32, i32* %rp215, align 4, !tbaa !96
  %idxprom16 = sext i32 %36 to i64
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp117 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 37
  %org_y18 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp117, i32 0, i32 3
  %38 = load i32*, i32** %org_y18, align 8, !tbaa !124
  %arrayidx19 = getelementptr inbounds i32, i32* %38, i64 %idxprom16
  %39 = load i32, i32* %arrayidx19, align 4, !tbaa !5
  %call20 = call i32 %28(%struct._TExecution_Context* %29, i32 %34, i32 %39) #5
  store i32 %call20, i32* %org_b, align 4, !tbaa !5
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 49
  %41 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS21 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 42
  %rp122 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS21, i32 0, i32 1
  %44 = load i32, i32* %rp122, align 4, !tbaa !95
  %idxprom23 = sext i32 %44 to i64
  %45 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp024 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %45, i32 0, i32 36
  %cur_x25 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp024, i32 0, i32 4
  %46 = load i32*, i32** %cur_x25, align 8, !tbaa !84
  %arrayidx26 = getelementptr inbounds i32, i32* %46, i64 %idxprom23
  %47 = load i32, i32* %arrayidx26, align 4, !tbaa !5
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS27 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 42
  %rp128 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS27, i32 0, i32 1
  %49 = load i32, i32* %rp128, align 4, !tbaa !95
  %idxprom29 = sext i32 %49 to i64
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp030 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 36
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp030, i32 0, i32 5
  %51 = load i32*, i32** %cur_y, align 8, !tbaa !85
  %arrayidx31 = getelementptr inbounds i32, i32* %51, i64 %idxprom29
  %52 = load i32, i32* %arrayidx31, align 4, !tbaa !5
  %call32 = call i32 %41(%struct._TExecution_Context* %42, i32 %47, i32 %52) #5
  store i32 %call32, i32* %cur_a, align 4, !tbaa !5
  %53 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %53, i32 0, i32 49
  %54 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project33, align 8, !tbaa !63
  %55 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %56 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS34 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 42
  %rp235 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS34, i32 0, i32 2
  %57 = load i32, i32* %rp235, align 4, !tbaa !96
  %idxprom36 = sext i32 %57 to i64
  %58 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp137 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %58, i32 0, i32 37
  %cur_x38 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp137, i32 0, i32 4
  %59 = load i32*, i32** %cur_x38, align 8, !tbaa !86
  %arrayidx39 = getelementptr inbounds i32, i32* %59, i64 %idxprom36
  %60 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  %61 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %61, i32 0, i32 42
  %rp241 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS40, i32 0, i32 2
  %62 = load i32, i32* %rp241, align 4, !tbaa !96
  %idxprom42 = sext i32 %62 to i64
  %63 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp143 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %63, i32 0, i32 37
  %cur_y44 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp143, i32 0, i32 5
  %64 = load i32*, i32** %cur_y44, align 8, !tbaa !87
  %arrayidx45 = getelementptr inbounds i32, i32* %64, i64 %idxprom42
  %65 = load i32, i32* %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 %54(%struct._TExecution_Context* %55, i32 %60, i32 %65) #5
  store i32 %call46, i32* %cur_b, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.118, %if.end
  %66 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS47 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %66, i32 0, i32 42
  %loop48 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS47, i32 0, i32 6
  %67 = load i64, i64* %loop48, align 8, !tbaa !101
  %cmp49 = icmp sgt i64 %67, 0
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args51 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %68, i32 0, i32 26
  %69 = load i32, i32* %args51, align 4, !tbaa !26
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* %args51, align 4, !tbaa !26
  %70 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args52 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %70, i32 0, i32 26
  %71 = load i32, i32* %args52, align 4, !tbaa !26
  %idxprom53 = sext i32 %71 to i64
  %72 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %72, i32 0, i32 25
  %73 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx54 = getelementptr inbounds i64, i64* %73, i64 %idxprom53
  %74 = load i64, i64* %arrayidx54, align 8, !tbaa !54
  %conv55 = trunc i64 %74 to i32
  store i32 %conv55, i32* %point, align 4, !tbaa !5
  %75 = load i32, i32* %point, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %75, 0
  br i1 %cmp56, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %76 = load i32, i32* %point, align 4, !tbaa !5
  %77 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %77, i32 0, i32 38
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %78 = load i32, i32* %n_points, align 4, !tbaa !119
  %cmp58 = icmp sge i32 %76, %78
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %lor.lhs.false, %while.body
  %79 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error61 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %79, i32 0, i32 1
  store i32 1032, i32* %error61, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %lor.lhs.false
  %80 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj63 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %80, i32 0, i32 50
  %81 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj63, align 8, !tbaa !65
  %82 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %83 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom64 = sext i32 %83 to i64
  %84 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp265 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %84, i32 0, i32 38
  %org_x66 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp265, i32 0, i32 2
  %85 = load i32*, i32** %org_x66, align 8, !tbaa !125
  %arrayidx67 = getelementptr inbounds i32, i32* %85, i64 %idxprom64
  %86 = load i32, i32* %arrayidx67, align 4, !tbaa !5
  %87 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom68 = sext i32 %87 to i64
  %88 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp269 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %88, i32 0, i32 38
  %org_y70 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp269, i32 0, i32 3
  %89 = load i32*, i32** %org_y70, align 8, !tbaa !126
  %arrayidx71 = getelementptr inbounds i32, i32* %89, i64 %idxprom68
  %90 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %call72 = call i32 %81(%struct._TExecution_Context* %82, i32 %86, i32 %90) #5
  store i32 %call72, i32* %org_x, align 4, !tbaa !5
  %91 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project73 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %91, i32 0, i32 49
  %92 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project73, align 8, !tbaa !63
  %93 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %94 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom74 = sext i32 %94 to i64
  %95 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp275 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %95, i32 0, i32 38
  %cur_x76 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp275, i32 0, i32 4
  %96 = load i32*, i32** %cur_x76, align 8, !tbaa !92
  %arrayidx77 = getelementptr inbounds i32, i32* %96, i64 %idxprom74
  %97 = load i32, i32* %arrayidx77, align 4, !tbaa !5
  %98 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom78 = sext i32 %98 to i64
  %99 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp279 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %99, i32 0, i32 38
  %cur_y80 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp279, i32 0, i32 5
  %100 = load i32*, i32** %cur_y80, align 8, !tbaa !93
  %arrayidx81 = getelementptr inbounds i32, i32* %100, i64 %idxprom78
  %101 = load i32, i32* %arrayidx81, align 4, !tbaa !5
  %call82 = call i32 %92(%struct._TExecution_Context* %93, i32 %97, i32 %101) #5
  store i32 %call82, i32* %cur_x, align 4, !tbaa !5
  %102 = load i32, i32* %org_a, align 4, !tbaa !5
  %103 = load i32, i32* %org_b, align 4, !tbaa !5
  %cmp83 = icmp sle i32 %102, %103
  br i1 %cmp83, label %land.lhs.true, label %lor.lhs.false.87

land.lhs.true:                                    ; preds = %if.end.62
  %104 = load i32, i32* %org_x, align 4, !tbaa !5
  %105 = load i32, i32* %org_a, align 4, !tbaa !5
  %cmp85 = icmp sle i32 %104, %105
  br i1 %cmp85, label %if.then.93, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %land.lhs.true, %if.end.62
  %106 = load i32, i32* %org_a, align 4, !tbaa !5
  %107 = load i32, i32* %org_b, align 4, !tbaa !5
  %cmp88 = icmp sgt i32 %106, %107
  br i1 %cmp88, label %land.lhs.true.90, label %if.else

land.lhs.true.90:                                 ; preds = %lor.lhs.false.87
  %108 = load i32, i32* %org_x, align 4, !tbaa !5
  %109 = load i32, i32* %org_a, align 4, !tbaa !5
  %cmp91 = icmp sge i32 %108, %109
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %land.lhs.true.90, %land.lhs.true
  %110 = load i32, i32* %cur_a, align 4, !tbaa !5
  %111 = load i32, i32* %org_a, align 4, !tbaa !5
  %sub = sub nsw i32 %110, %111
  %112 = load i32, i32* %org_x, align 4, !tbaa !5
  %113 = load i32, i32* %cur_x, align 4, !tbaa !5
  %sub94 = sub nsw i32 %112, %113
  %add = add nsw i32 %sub, %sub94
  store i32 %add, i32* %distance, align 4, !tbaa !5
  br label %if.end.118

if.else:                                          ; preds = %land.lhs.true.90, %lor.lhs.false.87
  %114 = load i32, i32* %org_a, align 4, !tbaa !5
  %115 = load i32, i32* %org_b, align 4, !tbaa !5
  %cmp95 = icmp sle i32 %114, %115
  br i1 %cmp95, label %land.lhs.true.97, label %lor.lhs.false.100

land.lhs.true.97:                                 ; preds = %if.else
  %116 = load i32, i32* %org_x, align 4, !tbaa !5
  %117 = load i32, i32* %org_b, align 4, !tbaa !5
  %cmp98 = icmp sge i32 %116, %117
  br i1 %cmp98, label %if.then.106, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.97, %if.else
  %118 = load i32, i32* %org_a, align 4, !tbaa !5
  %119 = load i32, i32* %org_b, align 4, !tbaa !5
  %cmp101 = icmp sgt i32 %118, %119
  br i1 %cmp101, label %land.lhs.true.103, label %if.else.110

land.lhs.true.103:                                ; preds = %lor.lhs.false.100
  %120 = load i32, i32* %org_x, align 4, !tbaa !5
  %121 = load i32, i32* %org_b, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %120, %121
  br i1 %cmp104, label %if.then.106, label %if.else.110

if.then.106:                                      ; preds = %land.lhs.true.103, %land.lhs.true.97
  %122 = load i32, i32* %cur_b, align 4, !tbaa !5
  %123 = load i32, i32* %org_b, align 4, !tbaa !5
  %sub107 = sub nsw i32 %122, %123
  %124 = load i32, i32* %org_x, align 4, !tbaa !5
  %125 = load i32, i32* %cur_x, align 4, !tbaa !5
  %sub108 = sub nsw i32 %124, %125
  %add109 = add nsw i32 %sub107, %sub108
  store i32 %add109, i32* %distance, align 4, !tbaa !5
  br label %if.end.117

if.else.110:                                      ; preds = %land.lhs.true.103, %lor.lhs.false.100
  %126 = load i32, i32* %cur_b, align 4, !tbaa !5
  %127 = load i32, i32* %cur_a, align 4, !tbaa !5
  %sub111 = sub nsw i32 %126, %127
  %128 = load i32, i32* %org_x, align 4, !tbaa !5
  %129 = load i32, i32* %org_a, align 4, !tbaa !5
  %sub112 = sub nsw i32 %128, %129
  %130 = load i32, i32* %org_b, align 4, !tbaa !5
  %131 = load i32, i32* %org_a, align 4, !tbaa !5
  %sub113 = sub nsw i32 %130, %131
  %call114 = call i32 @MulDiv_Round(i32 %sub111, i32 %sub112, i32 %sub113) #5
  %132 = load i32, i32* %cur_a, align 4, !tbaa !5
  %133 = load i32, i32* %cur_x, align 4, !tbaa !5
  %sub115 = sub nsw i32 %132, %133
  %add116 = add nsw i32 %call114, %sub115
  store i32 %add116, i32* %distance, align 4, !tbaa !5
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.110, %if.then.106
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.93
  %134 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %134, i32 0, i32 52
  %135 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %136 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %137 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2119 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %137, i32 0, i32 38
  %138 = load i32, i32* %point, align 4, !tbaa !5
  %139 = load i32, i32* %distance, align 4, !tbaa !5
  call void %135(%struct._TExecution_Context* %136, %struct._TGlyph_Zone* %zp2119, i32 %138, i32 %139) #5
  %140 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS120 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %140, i32 0, i32 42
  %loop121 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS120, i32 0, i32 6
  %141 = load i64, i64* %loop121, align 8, !tbaa !101
  %dec122 = add nsw i64 %141, -1
  store i64 %dec122, i64* %loop121, align 8, !tbaa !101
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %142 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS123 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %142, i32 0, i32 42
  %loop124 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS123, i32 0, i32 6
  store i64 1, i64* %loop124, align 8, !tbaa !101
  %143 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args125 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %143, i32 0, i32 26
  %144 = load i32, i32* %args125, align 4, !tbaa !26
  %145 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %145, i32 0, i32 27
  store i32 %144, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.60, %if.then
  %146 = bitcast i32* %point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %cur_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %cur_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %cur_a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %org_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %org_b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %org_a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
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
define internal void @Ins_MSIRP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %point = alloca i32, align 4
  %distance = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %point, align 4, !tbaa !5
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 37
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %9 = load i32, i32* %n_points, align 4, !tbaa !83
  %conv4 = sext i32 %9 to i64
  %cmp5 = icmp sge i64 %7, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 42
  %gep0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 18
  %12 = load i32, i32* %gep0, align 4, !tbaa !98
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.then.9, label %if.end.39

if.then.9:                                        ; preds = %if.end
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %rp0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS10, i32 0, i32 0
  %14 = load i32, i32* %rp0, align 4, !tbaa !94
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 36
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 2
  %16 = load i32*, i32** %org_x, align 8, !tbaa !121
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %18 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp113 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 37
  %org_x14 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp113, i32 0, i32 2
  %20 = load i32*, i32** %org_x14, align 8, !tbaa !123
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  store i32 %17, i32* %arrayidx15, align 4, !tbaa !5
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS16 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 42
  %rp017 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS16, i32 0, i32 0
  %22 = load i32, i32* %rp017, align 4, !tbaa !94
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp019 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 36
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp019, i32 0, i32 3
  %24 = load i32*, i32** %org_y, align 8, !tbaa !122
  %arrayidx20 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  %25 = load i32, i32* %arrayidx20, align 4, !tbaa !5
  %26 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp122 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 37
  %org_y23 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp122, i32 0, i32 3
  %28 = load i32*, i32** %org_y23, align 8, !tbaa !124
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  store i32 %25, i32* %arrayidx24, align 4, !tbaa !5
  %29 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom25 = sext i32 %29 to i64
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp126 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 37
  %org_x27 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp126, i32 0, i32 2
  %31 = load i32*, i32** %org_x27, align 8, !tbaa !123
  %arrayidx28 = getelementptr inbounds i32, i32* %31, i64 %idxprom25
  %32 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %33 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp130 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 37
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp130, i32 0, i32 4
  %35 = load i32*, i32** %cur_x, align 8, !tbaa !86
  %arrayidx31 = getelementptr inbounds i32, i32* %35, i64 %idxprom29
  store i32 %32, i32* %arrayidx31, align 4, !tbaa !5
  %36 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom32 = sext i32 %36 to i64
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp133 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 37
  %org_y34 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp133, i32 0, i32 3
  %38 = load i32*, i32** %org_y34, align 8, !tbaa !124
  %arrayidx35 = getelementptr inbounds i32, i32* %38, i64 %idxprom32
  %39 = load i32, i32* %arrayidx35, align 4, !tbaa !5
  %40 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom36 = sext i32 %40 to i64
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp137 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %41, i32 0, i32 37
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp137, i32 0, i32 5
  %42 = load i32*, i32** %cur_y, align 8, !tbaa !87
  %arrayidx38 = getelementptr inbounds i32, i32* %42, i64 %idxprom36
  store i32 %39, i32* %arrayidx38, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.9, %if.end
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 49
  %44 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %45 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %46 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom40 = sext i32 %46 to i64
  %47 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp141 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %47, i32 0, i32 37
  %cur_x42 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp141, i32 0, i32 4
  %48 = load i32*, i32** %cur_x42, align 8, !tbaa !86
  %arrayidx43 = getelementptr inbounds i32, i32* %48, i64 %idxprom40
  %49 = load i32, i32* %arrayidx43, align 4, !tbaa !5
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS44 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 42
  %rp045 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS44, i32 0, i32 0
  %51 = load i32, i32* %rp045, align 4, !tbaa !94
  %idxprom46 = sext i32 %51 to i64
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp047 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 36
  %cur_x48 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp047, i32 0, i32 4
  %53 = load i32*, i32** %cur_x48, align 8, !tbaa !84
  %arrayidx49 = getelementptr inbounds i32, i32* %53, i64 %idxprom46
  %54 = load i32, i32* %arrayidx49, align 4, !tbaa !5
  %sub = sub nsw i32 %49, %54
  %55 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom50 = sext i32 %55 to i64
  %56 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp151 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 37
  %cur_y52 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp151, i32 0, i32 5
  %57 = load i32*, i32** %cur_y52, align 8, !tbaa !87
  %arrayidx53 = getelementptr inbounds i32, i32* %57, i64 %idxprom50
  %58 = load i32, i32* %arrayidx53, align 4, !tbaa !5
  %59 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS54 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %59, i32 0, i32 42
  %rp055 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS54, i32 0, i32 0
  %60 = load i32, i32* %rp055, align 4, !tbaa !94
  %idxprom56 = sext i32 %60 to i64
  %61 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp057 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %61, i32 0, i32 36
  %cur_y58 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp057, i32 0, i32 5
  %62 = load i32*, i32** %cur_y58, align 8, !tbaa !85
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 %idxprom56
  %63 = load i32, i32* %arrayidx59, align 4, !tbaa !5
  %sub60 = sub nsw i32 %58, %63
  %call = call i32 %44(%struct._TExecution_Context* %45, i32 %sub, i32 %sub60) #5
  store i32 %call, i32* %distance, align 4, !tbaa !5
  %64 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %64, i32 0, i32 52
  %65 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %66 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %67 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp161 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %67, i32 0, i32 37
  %68 = load i32, i32* %point, align 4, !tbaa !5
  %69 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i64, i64* %69, i64 1
  %70 = load i64, i64* %arrayidx62, align 8, !tbaa !54
  %71 = load i32, i32* %distance, align 4, !tbaa !5
  %conv63 = sext i32 %71 to i64
  %sub64 = sub nsw i64 %70, %conv63
  %conv65 = trunc i64 %sub64 to i32
  call void %65(%struct._TExecution_Context* %66, %struct._TGlyph_Zone* %zp161, i32 %68, i32 %conv65) #5
  %72 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS66 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %72, i32 0, i32 42
  %rp067 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS66, i32 0, i32 0
  %73 = load i32, i32* %rp067, align 4, !tbaa !94
  %74 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS68 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %74, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS68, i32 0, i32 1
  store i32 %73, i32* %rp1, align 4, !tbaa !95
  %75 = load i32, i32* %point, align 4, !tbaa !5
  %76 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS69 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %76, i32 0, i32 42
  %rp2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS69, i32 0, i32 2
  store i32 %75, i32* %rp2, align 4, !tbaa !96
  %77 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %77, i32 0, i32 6
  %78 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv70 = zext i8 %78 to i32
  %and = and i32 %conv70, 1
  %cmp71 = icmp ne i32 %and, 0
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.39
  %79 = load i32, i32* %point, align 4, !tbaa !5
  %80 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS74 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %80, i32 0, i32 42
  %rp075 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS74, i32 0, i32 0
  store i32 %79, i32* %rp075, align 4, !tbaa !94
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.then
  %81 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
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
define internal void @Ins_ALIGNRP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %point = alloca i32, align 4
  %distance = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 24
  %4 = load i32, i32* %top, align 4, !tbaa !23
  %conv = sext i32 %4 to i64
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 42
  %loop = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 6
  %6 = load i64, i64* %loop, align 8, !tbaa !101
  %cmp = icmp slt i64 %conv, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 42
  %loop3 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS2, i32 0, i32 6
  %9 = load i64, i64* %loop3, align 8, !tbaa !101
  %cmp4 = icmp sgt i64 %9, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 26
  %11 = load i32, i32* %args6, align 4, !tbaa !26
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %args6, align 4, !tbaa !26
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 26
  %13 = load i32, i32* %args7, align 4, !tbaa !26
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 25
  %15 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 %idxprom
  %16 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv8 = trunc i64 %16 to i32
  store i32 %conv8, i32* %point, align 4, !tbaa !5
  %17 = load i32, i32* %point, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %17, 0
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %18 = load i32, i32* %point, align 4, !tbaa !5
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 37
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %20 = load i32, i32* %n_points, align 4, !tbaa !83
  %cmp11 = icmp sge i32 %18, %20
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false, %while.body
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 1
  store i32 1032, i32* %error14, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 49
  %23 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %25 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp117 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 37
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp117, i32 0, i32 4
  %27 = load i32*, i32** %cur_x, align 8, !tbaa !86
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  %28 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS19 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 42
  %rp0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS19, i32 0, i32 0
  %30 = load i32, i32* %rp0, align 4, !tbaa !94
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 36
  %cur_x21 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 4
  %32 = load i32*, i32** %cur_x21, align 8, !tbaa !84
  %arrayidx22 = getelementptr inbounds i32, i32* %32, i64 %idxprom20
  %33 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %33
  %34 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom23 = sext i32 %34 to i64
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp124 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 37
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp124, i32 0, i32 5
  %36 = load i32*, i32** %cur_y, align 8, !tbaa !87
  %arrayidx25 = getelementptr inbounds i32, i32* %36, i64 %idxprom23
  %37 = load i32, i32* %arrayidx25, align 4, !tbaa !5
  %38 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS26 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 42
  %rp027 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS26, i32 0, i32 0
  %39 = load i32, i32* %rp027, align 4, !tbaa !94
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp029 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 36
  %cur_y30 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp029, i32 0, i32 5
  %41 = load i32*, i32** %cur_y30, align 8, !tbaa !85
  %arrayidx31 = getelementptr inbounds i32, i32* %41, i64 %idxprom28
  %42 = load i32, i32* %arrayidx31, align 4, !tbaa !5
  %sub32 = sub nsw i32 %37, %42
  %call = call i32 %23(%struct._TExecution_Context* %24, i32 %sub, i32 %sub32) #5
  store i32 %call, i32* %distance, align 4, !tbaa !5
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 52
  %44 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %45 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp133 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %46, i32 0, i32 37
  %47 = load i32, i32* %point, align 4, !tbaa !5
  %48 = load i32, i32* %distance, align 4, !tbaa !5
  %sub34 = sub nsw i32 0, %48
  call void %44(%struct._TExecution_Context* %45, %struct._TGlyph_Zone* %zp133, i32 %47, i32 %sub34) #5
  %49 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS35 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %49, i32 0, i32 42
  %loop36 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS35, i32 0, i32 6
  %50 = load i64, i64* %loop36, align 8, !tbaa !101
  %dec37 = add nsw i64 %50, -1
  store i64 %dec37, i64* %loop36, align 8, !tbaa !101
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS38 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %51, i32 0, i32 42
  %loop39 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS38, i32 0, i32 6
  store i64 1, i64* %loop39, align 8, !tbaa !101
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 26
  %53 = load i32, i32* %args40, align 4, !tbaa !26
  %54 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %54, i32 0, i32 27
  store i32 %53, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.13, %if.then
  %55 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
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
define internal void @Ins_RTDG(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 2, i32* %round_state, align 4, !tbaa !21
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_To_Double_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_MIAP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %cvtEntry = alloca i32, align 4
  %point = alloca i32, align 4
  %distance = alloca i32, align 4
  %org_dist = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %cvtEntry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %org_dist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 1
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %cvtEntry, align 4, !tbaa !5
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv2 = trunc i64 %7 to i32
  store i32 %conv2, i32* %point, align 4, !tbaa !5
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 36
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 0
  %13 = load i32, i32* %n_points, align 4, !tbaa !82
  %conv6 = sext i32 %13 to i64
  %cmp7 = icmp sge i64 %11, %conv6
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %14 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %14, i64 1
  %15 = load i64, i64* %arrayidx10, align 8, !tbaa !54
  %cmp11 = icmp slt i64 %15, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %16 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %16, i64 1
  %17 = load i64, i64* %arrayidx14, align 8, !tbaa !54
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 45
  %19 = load i32, i32* %cvtSize, align 4, !tbaa !127
  %conv15 = sext i32 %19 to i64
  %cmp16 = icmp sge i64 %17, %conv15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.13
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_read_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 53
  %21 = load i32 (%struct._TExecution_Context*, i32)*, i32 (%struct._TExecution_Context*, i32)** %func_read_cvt, align 8, !tbaa !18
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %23 = load i32, i32* %cvtEntry, align 4, !tbaa !5
  %call = call i32 %21(%struct._TExecution_Context* %22, i32 %23) #5
  store i32 %call, i32* %distance, align 4, !tbaa !5
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 42
  %gep0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 18
  %25 = load i32, i32* %gep0, align 4, !tbaa !98
  %cmp18 = icmp eq i32 %25, 0
  br i1 %cmp18, label %if.then.20, label %if.end.47

if.then.20:                                       ; preds = %if.end
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS21 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS21, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %27 = load i16, i16* %x, align 2, !tbaa !55
  %conv22 = sext i16 %27 to i32
  %28 = load i32, i32* %distance, align 4, !tbaa !5
  %call23 = call i32 @MulDiv_Round(i32 %conv22, i32 %28, i32 16384) #5
  %29 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp024 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 36
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp024, i32 0, i32 2
  %31 = load i32*, i32** %org_x, align 8, !tbaa !121
  %arrayidx25 = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %call23, i32* %arrayidx25, align 4, !tbaa !5
  %32 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp027 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 36
  %org_x28 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp027, i32 0, i32 2
  %34 = load i32*, i32** %org_x28, align 8, !tbaa !121
  %arrayidx29 = getelementptr inbounds i32, i32* %34, i64 %idxprom26
  %35 = load i32, i32* %arrayidx29, align 4, !tbaa !5
  %36 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom30 = sext i32 %36 to i64
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp031 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 36
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp031, i32 0, i32 4
  %38 = load i32*, i32** %cur_x, align 8, !tbaa !84
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 %idxprom30
  store i32 %35, i32* %arrayidx32, align 4, !tbaa !5
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 42
  %freeVector34 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS33, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector34, i32 0, i32 1
  %40 = load i16, i16* %y, align 2, !tbaa !59
  %conv35 = sext i16 %40 to i32
  %41 = load i32, i32* %distance, align 4, !tbaa !5
  %call36 = call i32 @MulDiv_Round(i32 %conv35, i32 %41, i32 16384) #5
  %42 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom37 = sext i32 %42 to i64
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp038 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 36
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp038, i32 0, i32 3
  %44 = load i32*, i32** %org_y, align 8, !tbaa !122
  %arrayidx39 = getelementptr inbounds i32, i32* %44, i64 %idxprom37
  store i32 %call36, i32* %arrayidx39, align 4, !tbaa !5
  %45 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom40 = sext i32 %45 to i64
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp041 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %46, i32 0, i32 36
  %org_y42 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp041, i32 0, i32 3
  %47 = load i32*, i32** %org_y42, align 8, !tbaa !122
  %arrayidx43 = getelementptr inbounds i32, i32* %47, i64 %idxprom40
  %48 = load i32, i32* %arrayidx43, align 4, !tbaa !5
  %49 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom44 = sext i32 %49 to i64
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp045 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 36
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp045, i32 0, i32 5
  %51 = load i32*, i32** %cur_y, align 8, !tbaa !85
  %arrayidx46 = getelementptr inbounds i32, i32* %51, i64 %idxprom44
  store i32 %48, i32* %arrayidx46, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.20, %if.end
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 49
  %53 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %54 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %55 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom48 = sext i32 %55 to i64
  %56 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp049 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 36
  %cur_x50 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp049, i32 0, i32 4
  %57 = load i32*, i32** %cur_x50, align 8, !tbaa !84
  %arrayidx51 = getelementptr inbounds i32, i32* %57, i64 %idxprom48
  %58 = load i32, i32* %arrayidx51, align 4, !tbaa !5
  %59 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom52 = sext i32 %59 to i64
  %60 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp053 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %60, i32 0, i32 36
  %cur_y54 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp053, i32 0, i32 5
  %61 = load i32*, i32** %cur_y54, align 8, !tbaa !85
  %arrayidx55 = getelementptr inbounds i32, i32* %61, i64 %idxprom52
  %62 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %call56 = call i32 %53(%struct._TExecution_Context* %54, i32 %58, i32 %62) #5
  store i32 %call56, i32* %org_dist, align 4, !tbaa !5
  %63 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %63, i32 0, i32 6
  %64 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv57 = zext i8 %64 to i32
  %and = and i32 %conv57, 1
  %cmp58 = icmp ne i32 %and, 0
  br i1 %cmp58, label %if.then.60, label %if.end.73

if.then.60:                                       ; preds = %if.end.47
  %65 = load i32, i32* %distance, align 4, !tbaa !5
  %66 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub = sub nsw i32 %65, %66
  %cmp61 = icmp slt i32 %sub, 0
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.60
  %67 = load i32, i32* %distance, align 4, !tbaa !5
  %68 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub63 = sub nsw i32 %67, %68
  %sub64 = sub nsw i32 0, %sub63
  br label %cond.end

cond.false:                                       ; preds = %if.then.60
  %69 = load i32, i32* %distance, align 4, !tbaa !5
  %70 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub65 = sub nsw i32 %69, %70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub64, %cond.true ], [ %sub65, %cond.false ]
  %71 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS66 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %71, i32 0, i32 42
  %control_value_cutin = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS66, i32 0, i32 10
  %72 = load i32, i32* %control_value_cutin, align 4, !tbaa !103
  %cmp67 = icmp sgt i32 %cond, %72
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %cond.end
  %73 = load i32, i32* %org_dist, align 4, !tbaa !5
  store i32 %73, i32* %distance, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %cond.end
  %74 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %74, i32 0, i32 48
  %75 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  %76 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %77 = load i32, i32* %distance, align 4, !tbaa !5
  %78 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %78, i32 0, i32 31
  %compensations = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 15
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations, i32 0, i64 0
  %79 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %call72 = call i32 %75(%struct._TExecution_Context* %76, i32 %77, i32 %79) #5
  store i32 %call72, i32* %distance, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.70, %if.end.47
  %80 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %80, i32 0, i32 52
  %81 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %82 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %83 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp074 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %83, i32 0, i32 36
  %84 = load i32, i32* %point, align 4, !tbaa !5
  %85 = load i32, i32* %distance, align 4, !tbaa !5
  %86 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub75 = sub nsw i32 %85, %86
  call void %81(%struct._TExecution_Context* %82, %struct._TGlyph_Zone* %zp074, i32 %84, i32 %sub75) #5
  %87 = load i32, i32* %point, align 4, !tbaa !5
  %88 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS76 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %88, i32 0, i32 42
  %rp0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS76, i32 0, i32 0
  store i32 %87, i32* %rp0, align 4, !tbaa !94
  %89 = load i32, i32* %point, align 4, !tbaa !5
  %90 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS77 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %90, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS77, i32 0, i32 1
  store i32 %89, i32* %rp1, align 4, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %if.then
  %91 = bitcast i32* %org_dist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %cvtEntry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
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
define internal void @Ins_NPUSHB(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i32, align 4
  %K = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %L to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %K to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 4
  %3 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 3
  %5 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %L, align 4, !tbaa !5
  %7 = load i32, i32* %L, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %L, align 4, !tbaa !5
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stackSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 23
  %10 = load i32, i32* %stackSize, align 4, !tbaa !28
  %add2 = add nsw i32 %10, 1
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 24
  %12 = load i32, i32* %top, align 4, !tbaa !23
  %sub = sub nsw i32 %add2, %12
  %cmp3 = icmp sge i32 %8, %sub
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 1
  store i32 1026, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %K, align 4, !tbaa !5
  %15 = load i32, i32* %L, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 4
  %17 = load i32, i32* %IP7, align 4, !tbaa !44
  %18 = load i32, i32* %K, align 4, !tbaa !5
  %add8 = add nsw i32 %17, %18
  %add9 = add nsw i32 %add8, 1
  %idxprom10 = sext i32 %add9 to i64
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 3
  %20 = load i8*, i8** %code11, align 8, !tbaa !68
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 %idxprom10
  %21 = load i8, i8* %arrayidx12, align 1, !tbaa !25
  %conv13 = zext i8 %21 to i64
  %22 = load i32, i32* %K, align 4, !tbaa !5
  %sub14 = sub nsw i32 %22, 1
  %idxprom15 = sext i32 %sub14 to i64
  %23 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i64, i64* %23, i64 %idxprom15
  store i64 %conv13, i64* %arrayidx16, align 8, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %K, align 4, !tbaa !5
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %L, align 4, !tbaa !5
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 27
  %27 = load i32, i32* %new_top, align 4, !tbaa !27
  %add17 = add nsw i32 %27, %25
  store i32 %add17, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %28 = bitcast i32* %K to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %L to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
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
define internal void @Ins_NPUSHW(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i32, align 4
  %K = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %L to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %K to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 4
  %3 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 3
  %5 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %L, align 4, !tbaa !5
  %7 = load i32, i32* %L, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %L, align 4, !tbaa !5
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stackSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 23
  %10 = load i32, i32* %stackSize, align 4, !tbaa !28
  %add2 = add nsw i32 %10, 1
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 24
  %12 = load i32, i32* %top, align 4, !tbaa !23
  %sub = sub nsw i32 %add2, %12
  %cmp3 = icmp sge i32 %8, %sub
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 1
  store i32 1026, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 4
  %15 = load i32, i32* %IP5, align 4, !tbaa !44
  %add6 = add nsw i32 %15, 2
  store i32 %add6, i32* %IP5, align 4, !tbaa !44
  store i32 0, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %K, align 4, !tbaa !5
  %17 = load i32, i32* %L, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call signext i16 @GetShortIns(%struct._TExecution_Context* %18) #5
  %conv9 = sext i16 %call to i64
  %19 = load i32, i32* %K, align 4, !tbaa !5
  %idxprom10 = sext i32 %19 to i64
  %20 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i64, i64* %20, i64 %idxprom10
  store i64 %conv9, i64* %arrayidx11, align 8, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %K, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  %23 = load i32, i32* %L, align 4, !tbaa !5
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 27
  %25 = load i32, i32* %new_top, align 4, !tbaa !27
  %add12 = add nsw i32 %25, %23
  store i32 %add12, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %26 = bitcast i32* %K to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %L to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
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
define internal void @Ins_WS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %storeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 21
  %5 = load i32, i32* %storeSize, align 4, !tbaa !128
  %conv = sext i32 %5 to i64
  %cmp2 = icmp sge i64 %3, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %7, i64 1
  %8 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  %9 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 22
  %12 = load i64*, i64** %storage, align 8, !tbaa !129
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %10
  store i64 %8, i64* %arrayidx6, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_RS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %storeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 21
  %5 = load i32, i32* %storeSize, align 4, !tbaa !128
  %conv = sext i32 %5 to i64
  %cmp2 = icmp sge i64 %3, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %storage = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 22
  %10 = load i64*, i64** %storage, align 8, !tbaa !129
  %arrayidx5 = getelementptr inbounds i64, i64* %10, i64 %8
  %11 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %12 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %11, i64* %arrayidx6, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_WCVTP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 45
  %5 = load i32, i32* %cvtSize, align 4, !tbaa !127
  %conv = sext i32 %5 to i64
  %cmp2 = icmp sge i64 %3, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_write_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 54
  %8 = load void (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, i32, i32)** %func_write_cvt, align 8, !tbaa !19
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %10 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  %conv5 = trunc i64 %11 to i32
  %12 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 1
  %13 = load i64, i64* %arrayidx6, align 8, !tbaa !54
  %conv7 = trunc i64 %13 to i32
  call void %8(%struct._TExecution_Context* %9, i32 %conv5, i32 %conv7) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_RCVT(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 45
  %6 = load i32, i32* %cvtSize, align 4, !tbaa !127
  %conv = sext i32 %6 to i64
  %cmp2 = icmp sge i64 %4, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  %conv5 = trunc i64 %9 to i32
  store i32 %conv5, i32* %index, align 4, !tbaa !5
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_read_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 53
  %11 = load i32 (%struct._TExecution_Context*, i32)*, i32 (%struct._TExecution_Context*, i32)** %func_read_cvt, align 8, !tbaa !18
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %13 = load i32, i32* %index, align 4, !tbaa !5
  %call = call i32 %11(%struct._TExecution_Context* %12, i32 %13) #5
  %conv6 = sext i32 %call to i64
  %14 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 %conv6, i64* %arrayidx7, align 8, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
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
define internal void @Ins_GC(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %2, i64* %L, align 8, !tbaa !54
  %3 = load i64, i64* %L, align 8, !tbaa !54
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %L, align 8, !tbaa !54
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 38
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %6 = load i32, i32* %n_points, align 4, !tbaa !119
  %conv = sext i32 %6 to i64
  %cmp1 = icmp sge i64 %4, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 6
  %9 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv3 = zext i8 %9 to i32
  %and = and i32 %conv3, 1
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 49
  %11 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %13 = load i64, i64* %L, align 8, !tbaa !54
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp24 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 38
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp24, i32 0, i32 4
  %15 = load i32*, i32** %cur_x, align 8, !tbaa !92
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 %13
  %16 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  %17 = load i64, i64* %L, align 8, !tbaa !54
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp26 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 38
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp26, i32 0, i32 5
  %19 = load i32*, i32** %cur_y, align 8, !tbaa !93
  %arrayidx7 = getelementptr inbounds i32, i32* %19, i64 %17
  %20 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %call = call i32 %11(%struct._TExecution_Context* %12, i32 %16, i32 %20) #5
  %conv8 = sext i32 %call to i64
  store i64 %conv8, i64* %L, align 8, !tbaa !54
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 50
  %22 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj, align 8, !tbaa !65
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %24 = load i64, i64* %L, align 8, !tbaa !54
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp210 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 38
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp210, i32 0, i32 2
  %26 = load i32*, i32** %org_x, align 8, !tbaa !125
  %arrayidx11 = getelementptr inbounds i32, i32* %26, i64 %24
  %27 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %28 = load i64, i64* %L, align 8, !tbaa !54
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp212 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 38
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp212, i32 0, i32 3
  %30 = load i32*, i32** %org_y, align 8, !tbaa !126
  %arrayidx13 = getelementptr inbounds i32, i32* %30, i64 %28
  %31 = load i32, i32* %arrayidx13, align 4, !tbaa !5
  %call14 = call i32 %22(%struct._TExecution_Context* %23, i32 %27, i32 %31) #5
  %conv15 = sext i32 %call14 to i64
  store i64 %conv15, i64* %L, align 8, !tbaa !54
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.9, %sw.bb
  %32 = load i64, i64* %L, align 8, !tbaa !54
  %33 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %arrayidx16, align 8, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %34 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
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
define internal void @Ins_SCFS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %K = alloca i64, align 8
  %L = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %L to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %L, align 4, !tbaa !5
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 38
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %9 = load i32, i32* %n_points, align 4, !tbaa !119
  %conv4 = sext i32 %9 to i64
  %cmp5 = icmp sge i64 %7, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 49
  %12 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %14 = load i32, i32* %L, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp27 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 38
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp27, i32 0, i32 4
  %16 = load i32*, i32** %cur_x, align 8, !tbaa !92
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %18 = load i32, i32* %L, align 4, !tbaa !5
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp210 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 38
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp210, i32 0, i32 5
  %20 = load i32*, i32** %cur_y, align 8, !tbaa !93
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %21 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %call = call i32 %12(%struct._TExecution_Context* %13, i32 %17, i32 %21) #5
  %conv12 = sext i32 %call to i64
  store i64 %conv12, i64* %K, align 8, !tbaa !54
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 52
  %23 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp213 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 38
  %26 = load i32, i32* %L, align 4, !tbaa !5
  %27 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %27, i64 1
  %28 = load i64, i64* %arrayidx14, align 8, !tbaa !54
  %29 = load i64, i64* %K, align 8, !tbaa !54
  %sub = sub nsw i64 %28, %29
  %conv15 = trunc i64 %sub to i32
  call void %23(%struct._TExecution_Context* %24, %struct._TGlyph_Zone* %zp213, i32 %26, i32 %conv15) #5
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 42
  %gep2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 20
  %31 = load i32, i32* %gep2, align 4, !tbaa !100
  %cmp16 = icmp eq i32 %31, 0
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %if.end
  %32 = load i32, i32* %L, align 4, !tbaa !5
  %idxprom19 = sext i32 %32 to i64
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp220 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 38
  %cur_x21 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp220, i32 0, i32 4
  %34 = load i32*, i32** %cur_x21, align 8, !tbaa !92
  %arrayidx22 = getelementptr inbounds i32, i32* %34, i64 %idxprom19
  %35 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %36 = load i32, i32* %L, align 4, !tbaa !5
  %idxprom23 = sext i32 %36 to i64
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp224 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 38
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp224, i32 0, i32 2
  %38 = load i32*, i32** %org_x, align 8, !tbaa !125
  %arrayidx25 = getelementptr inbounds i32, i32* %38, i64 %idxprom23
  store i32 %35, i32* %arrayidx25, align 4, !tbaa !5
  %39 = load i32, i32* %L, align 4, !tbaa !5
  %idxprom26 = sext i32 %39 to i64
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp227 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 38
  %cur_y28 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp227, i32 0, i32 5
  %41 = load i32*, i32** %cur_y28, align 8, !tbaa !93
  %arrayidx29 = getelementptr inbounds i32, i32* %41, i64 %idxprom26
  %42 = load i32, i32* %arrayidx29, align 4, !tbaa !5
  %43 = load i32, i32* %L, align 4, !tbaa !5
  %idxprom30 = sext i32 %43 to i64
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp231 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 38
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp231, i32 0, i32 3
  %45 = load i32*, i32** %org_y, align 8, !tbaa !126
  %arrayidx32 = getelementptr inbounds i32, i32* %45, i64 %idxprom30
  store i32 %42, i32* %arrayidx32, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.18, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then
  %46 = bitcast i32* %L to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i64* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
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
define internal void @Ins_MD(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %K = alloca i64, align 8
  %L = alloca i64, align 8
  %D = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %D to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %4, i64* %K, align 8, !tbaa !54
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  store i64 %6, i64* %L, align 8, !tbaa !54
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %9, i64 0
  %10 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 38
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %12 = load i32, i32* %n_points, align 4, !tbaa !119
  %conv = sext i32 %12 to i64
  %cmp4 = icmp sge i64 %10, %conv
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %13 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %13, i64 1
  %14 = load i64, i64* %arrayidx7, align 8, !tbaa !54
  %cmp8 = icmp slt i64 %14, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %15 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i64, i64* %15, i64 1
  %16 = load i64, i64* %arrayidx11, align 8, !tbaa !54
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 37
  %n_points12 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %18 = load i32, i32* %n_points12, align 4, !tbaa !83
  %conv13 = sext i32 %18 to i64
  %cmp14 = icmp sge i64 %16, %conv13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %entry
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.10
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 6
  %21 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv16 = zext i8 %21 to i32
  %and = and i32 %conv16, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 49
  %23 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %25 = load i64, i64* %L, align 8, !tbaa !54
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp218 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 38
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp218, i32 0, i32 4
  %27 = load i32*, i32** %cur_x, align 8, !tbaa !92
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 %25
  %28 = load i32, i32* %arrayidx19, align 4, !tbaa !5
  %29 = load i64, i64* %K, align 8, !tbaa !54
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp120 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 37
  %cur_x21 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp120, i32 0, i32 4
  %31 = load i32*, i32** %cur_x21, align 8, !tbaa !86
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 %29
  %32 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %32
  %33 = load i64, i64* %L, align 8, !tbaa !54
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp223 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 38
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp223, i32 0, i32 5
  %35 = load i32*, i32** %cur_y, align 8, !tbaa !93
  %arrayidx24 = getelementptr inbounds i32, i32* %35, i64 %33
  %36 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %37 = load i64, i64* %K, align 8, !tbaa !54
  %38 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp125 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 37
  %cur_y26 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp125, i32 0, i32 5
  %39 = load i32*, i32** %cur_y26, align 8, !tbaa !87
  %arrayidx27 = getelementptr inbounds i32, i32* %39, i64 %37
  %40 = load i32, i32* %arrayidx27, align 4, !tbaa !5
  %sub28 = sub nsw i32 %36, %40
  %call = call i32 %23(%struct._TExecution_Context* %24, i32 %sub, i32 %sub28) #5
  store i32 %call, i32* %D, align 4, !tbaa !5
  br label %if.end.42

if.else:                                          ; preds = %if.end
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %41, i32 0, i32 50
  %42 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj, align 8, !tbaa !65
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %44 = load i64, i64* %L, align 8, !tbaa !54
  %45 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp229 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %45, i32 0, i32 38
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp229, i32 0, i32 2
  %46 = load i32*, i32** %org_x, align 8, !tbaa !125
  %arrayidx30 = getelementptr inbounds i32, i32* %46, i64 %44
  %47 = load i32, i32* %arrayidx30, align 4, !tbaa !5
  %48 = load i64, i64* %K, align 8, !tbaa !54
  %49 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp131 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %49, i32 0, i32 37
  %org_x32 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp131, i32 0, i32 2
  %50 = load i32*, i32** %org_x32, align 8, !tbaa !123
  %arrayidx33 = getelementptr inbounds i32, i32* %50, i64 %48
  %51 = load i32, i32* %arrayidx33, align 4, !tbaa !5
  %sub34 = sub nsw i32 %47, %51
  %52 = load i64, i64* %L, align 8, !tbaa !54
  %53 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp235 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %53, i32 0, i32 38
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp235, i32 0, i32 3
  %54 = load i32*, i32** %org_y, align 8, !tbaa !126
  %arrayidx36 = getelementptr inbounds i32, i32* %54, i64 %52
  %55 = load i32, i32* %arrayidx36, align 4, !tbaa !5
  %56 = load i64, i64* %K, align 8, !tbaa !54
  %57 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp137 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %57, i32 0, i32 37
  %org_y38 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp137, i32 0, i32 3
  %58 = load i32*, i32** %org_y38, align 8, !tbaa !124
  %arrayidx39 = getelementptr inbounds i32, i32* %58, i64 %56
  %59 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  %sub40 = sub nsw i32 %55, %59
  %call41 = call i32 %42(%struct._TExecution_Context* %43, i32 %sub34, i32 %sub40) #5
  store i32 %call41, i32* %D, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.17
  %60 = load i32, i32* %D, align 4, !tbaa !5
  %conv43 = sext i32 %60 to i64
  %61 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %conv43, i64* %arrayidx44, align 8, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then
  %62 = bitcast i32* %D to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i64* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
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
define internal void @Ins_MPPEM(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @Current_Ppem(%struct._TExecution_Context* %0) #5
  %conv = sext i32 %call to i64
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  store i64 %conv, i64* %arrayidx, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_MPS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 31
  %pointSize = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 0
  %1 = load i32, i32* %pointSize, align 4, !tbaa !130
  %conv = sext i32 %1 to i64
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  store i64 %conv, i64* %arrayidx, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_FLIPON(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %auto_flip = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 9
  store i32 1, i32* %auto_flip, align 4, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_FLIPOFF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %auto_flip = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 9
  store i32 0, i32* %auto_flip, align 4, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_DEBUG(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 1
  store i32 1035, i32* %error, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_LT(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_LTEQ(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp sle i64 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_GT(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp sgt i64 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_GTEQ(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp sge i64 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_EQ(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp eq i64 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_NEQ(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp ne i64 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ODD(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 48
  %1 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  %call = call i32 %1(%struct._TExecution_Context* %2, i32 %conv, i32 0) #5
  %and = and i32 %call, 127
  %cmp = icmp eq i32 %and, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_EVEN(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 48
  %1 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  %call = call i32 %1(%struct._TExecution_Context* %2, i32 %conv, i32 0) #5
  %and = and i32 %call, 127
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_IF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %nIfs = alloca i32, align 4
  %Out = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nIfs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %Out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* %nIfs, align 4, !tbaa !5
  store i32 0, i32* %Out, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @SkipCode(%struct._TExecution_Context* %4) #5
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %do.body
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 6
  %6 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %6 to i32
  switch i32 %conv, label %sw.epilog [
    i32 88, label %sw.bb
    i32 27, label %sw.bb.4
    i32 89, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end.3
  %7 = load i32, i32* %nIfs, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %nIfs, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end.3
  %8 = load i32, i32* %nIfs, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %8, 1
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %Out, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end.3
  %9 = load i32, i32* %nIfs, align 4, !tbaa !5
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %nIfs, align 4, !tbaa !5
  %10 = load i32, i32* %nIfs, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %10, 0
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %Out, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.3, %sw.bb.7, %sw.bb.4, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %11 = load i32, i32* %Out, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %12 = bitcast i32* %Out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %nIfs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
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
define internal void @Ins_EIF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_AND(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp2 = icmp ne i64 %4, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx4, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_OR(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp2 = icmp ne i64 %4, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 1, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 0, i64* %arrayidx4, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_NOT(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  store i64 0, i64* %arrayidx1, align 8, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %4, i64 0
  store i64 1, i64* %arrayidx2, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_DELTAP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %k = alloca i32, align 4
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  %nump = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %B to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %nump to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %6, i64* %nump, align 8, !tbaa !54
  store i32 1, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %k, align 4, !tbaa !5
  %conv = sext i32 %7 to i64
  %8 = load i64, i64* %nump, align 8, !tbaa !54
  %cmp = icmp sle i64 %conv, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 26
  %10 = load i32, i32* %args2, align 4, !tbaa !26
  %cmp3 = icmp slt i32 %10, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 1
  store i32 1025, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 26
  %13 = load i32, i32* %args5, align 4, !tbaa !26
  %sub = sub nsw i32 %13, 2
  store i32 %sub, i32* %args5, align 4, !tbaa !26
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 26
  %15 = load i32, i32* %args6, align 4, !tbaa !26
  %add = add nsw i32 %15, 1
  %idxprom = sext i32 %add to i64
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 25
  %17 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx7 = getelementptr inbounds i64, i64* %17, i64 %idxprom
  %18 = load i64, i64* %arrayidx7, align 8, !tbaa !54
  store i64 %18, i64* %A, align 8, !tbaa !54
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 26
  %20 = load i32, i32* %args8, align 4, !tbaa !26
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 25
  %22 = load i64*, i64** %stack10, align 8, !tbaa !32
  %arrayidx11 = getelementptr inbounds i64, i64* %22, i64 %idxprom9
  %23 = load i64, i64* %arrayidx11, align 8, !tbaa !54
  store i64 %23, i64* %B, align 8, !tbaa !54
  %24 = load i64, i64* %A, align 8, !tbaa !54
  %cmp12 = icmp slt i64 %24, 0
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %25 = load i64, i64* %A, align 8, !tbaa !54
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 36
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 0
  %27 = load i32, i32* %n_points, align 4, !tbaa !82
  %add14 = add nsw i32 %27, 2
  %conv15 = sext i32 %add14 to i64
  %cmp16 = icmp sge i64 %25, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %lor.lhs.false
  %28 = load i64, i64* %B, align 8, !tbaa !54
  %and = and i64 %28, 240
  %shr = ashr i64 %and, 4
  store i64 %shr, i64* %C, align 8, !tbaa !54
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 6
  %30 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv20 = zext i8 %30 to i32
  switch i32 %conv20, label %sw.epilog [
    i32 93, label %sw.epilog
    i32 113, label %sw.bb
    i32 114, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end.19
  %31 = load i64, i64* %C, align 8, !tbaa !54
  %add21 = add nsw i64 %31, 16
  store i64 %add21, i64* %C, align 8, !tbaa !54
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.19
  %32 = load i64, i64* %C, align 8, !tbaa !54
  %add23 = add nsw i64 %32, 32
  store i64 %add23, i64* %C, align 8, !tbaa !54
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.19, %sw.bb.22, %sw.bb, %if.end.19
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 42
  %delta_base = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 13
  %34 = load i32, i32* %delta_base, align 4, !tbaa !132
  %conv24 = sext i32 %34 to i64
  %35 = load i64, i64* %C, align 8, !tbaa !54
  %add25 = add nsw i64 %35, %conv24
  store i64 %add25, i64* %C, align 8, !tbaa !54
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @Current_Ppem(%struct._TExecution_Context* %36) #5
  %conv26 = sext i32 %call to i64
  %37 = load i64, i64* %C, align 8, !tbaa !54
  %cmp27 = icmp eq i64 %conv26, %37
  br i1 %cmp27, label %if.then.29, label %if.end.40

if.then.29:                                       ; preds = %sw.epilog
  %38 = load i64, i64* %B, align 8, !tbaa !54
  %and30 = and i64 %38, 15
  %sub31 = sub nsw i64 %and30, 8
  store i64 %sub31, i64* %B, align 8, !tbaa !54
  %39 = load i64, i64* %B, align 8, !tbaa !54
  %cmp32 = icmp sge i64 %39, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %40 = load i64, i64* %B, align 8, !tbaa !54
  %inc = add nsw i64 %40, 1
  store i64 %inc, i64* %B, align 8, !tbaa !54
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.29
  %41 = load i64, i64* %B, align 8, !tbaa !54
  %mul = mul nsw i64 %41, 64
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS36 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 42
  %delta_shift = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS36, i32 0, i32 14
  %43 = load i32, i32* %delta_shift, align 4, !tbaa !133
  %sh_prom = zext i32 %43 to i64
  %shl = shl i64 1, %sh_prom
  %div = sdiv i64 %mul, %shl
  store i64 %div, i64* %B, align 8, !tbaa !54
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 52
  %45 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %47 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp037 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %47, i32 0, i32 36
  %48 = load i64, i64* %A, align 8, !tbaa !54
  %conv38 = trunc i64 %48 to i32
  %49 = load i64, i64* %B, align 8, !tbaa !54
  %conv39 = trunc i64 %49 to i32
  call void %45(%struct._TExecution_Context* %46, %struct._TGlyph_Zone* %zp037, i32 %conv38, i32 %conv39) #5
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.35, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %50 = load i32, i32* %k, align 4, !tbaa !5
  %inc41 = add nsw i32 %50, 1
  store i32 %inc41, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args42 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %51, i32 0, i32 26
  %52 = load i32, i32* %args42, align 4, !tbaa !26
  %53 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %53, i32 0, i32 27
  store i32 %52, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.18, %if.then
  %54 = bitcast i64* %nump to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i64* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i64* %B to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i64* %A to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
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
define internal void @Ins_SDB(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %delta_base = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 13
  store i32 %conv, i32* %delta_base, align 4, !tbaa !132
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SDS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %1 to i32
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 42
  %delta_shift = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 14
  store i32 %conv, i32* %delta_shift, align 4, !tbaa !133
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ADD(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %add = add nsw i64 %4, %2
  store i64 %add, i64* %arrayidx1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SUB(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %sub = sub nsw i64 %4, %2
  store i64 %sub, i64* %arrayidx1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_DIV(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 1
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 1
  store i32 1029, i32* %error, align 4, !tbaa !22
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 1
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  %conv3 = trunc i64 %6 to i32
  %call = call i32 @MulDiv_Round(i32 %conv, i32 64, i32 %conv3) #5
  %conv4 = sext i32 %call to i64
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %conv4, i64* %arrayidx5, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_MUL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %2 to i32
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv2 = trunc i64 %4 to i32
  %call = call i32 @MulDiv_Round(i32 %conv, i32 %conv2, i32 64) #5
  %conv3 = sext i32 %call to i64
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 %conv3, i64* %arrayidx4, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ABS(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %sub = sub nsw i64 0, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %6, %cond.false ]
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %cond, i64* %arrayidx3, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_NEG(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %sub = sub nsw i64 0, %2
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  store i64 %sub, i64* %arrayidx1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_FLOOR(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %and = and i64 %2, -64
  store i64 %and, i64* %arrayidx, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_CEILING(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %add = add nsw i64 %2, 63
  %and = and i64 %add, -64
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  store i64 %and, i64* %arrayidx1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ROUND(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 48
  %1 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 6
  %6 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv1 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv1, 104
  %idxprom = sext i32 %sub to i64
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 31
  %compensations = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 15
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %call = call i32 %1(%struct._TExecution_Context* %2, i32 %conv, i32 %8) #5
  %conv3 = sext i32 %call to i64
  %9 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %conv3, i64* %arrayidx4, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_NROUND(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %2 to i32
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 6
  %4 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv1 = zext i8 %4 to i32
  %sub = sub nsw i32 %conv1, 108
  %idxprom = sext i32 %sub to i64
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 31
  %compensations = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 15
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %call = call i32 @Round_None(%struct._TExecution_Context* %0, i32 %conv, i32 %6) #5
  %conv3 = sext i32 %call to i64
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %conv3, i64* %arrayidx4, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_WCVTF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %ov = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 45
  %6 = load i32, i32* %cvtSize, align 4, !tbaa !127
  %conv = sext i32 %6 to i64
  %cmp2 = icmp sge i64 %4, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx4, align 8, !tbaa !54
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 46
  %11 = load i64*, i64** %cvt, align 8, !tbaa !53
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %9
  %12 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %conv6 = trunc i64 %12 to i32
  store i32 %conv6, i32* %ov, align 4, !tbaa !5
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %14 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %14, i64 1
  %15 = load i64, i64* %arrayidx7, align 8, !tbaa !54
  %conv8 = trunc i64 %15 to i32
  %call = call i32 @FUnits_To_Pixels(%struct._TExecution_Context* %13, i32 %conv8) #5
  %conv9 = sext i32 %call to i64
  %16 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %16, i64 0
  %17 = load i64, i64* %arrayidx10, align 8, !tbaa !54
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvt11 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 46
  %19 = load i64*, i64** %cvt11, align 8, !tbaa !53
  %arrayidx12 = getelementptr inbounds i64, i64* %19, i64 %17
  store i64 %conv9, i64* %arrayidx12, align 8, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast i32* %ov to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
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
define internal void @Ins_DELTAC(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %nump = alloca i64, align 8
  %k = alloca i64, align 8
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %nump to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %B to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %6, i64* %nump, align 8, !tbaa !54
  store i64 1, i64* %k, align 8, !tbaa !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %k, align 8, !tbaa !54
  %8 = load i64, i64* %nump, align 8, !tbaa !54
  %cmp = icmp sle i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 26
  %10 = load i32, i32* %args1, align 4, !tbaa !26
  %cmp2 = icmp slt i32 %10, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 1
  store i32 1025, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 26
  %13 = load i32, i32* %args3, align 4, !tbaa !26
  %sub = sub nsw i32 %13, 2
  store i32 %sub, i32* %args3, align 4, !tbaa !26
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 26
  %15 = load i32, i32* %args4, align 4, !tbaa !26
  %add = add nsw i32 %15, 1
  %idxprom = sext i32 %add to i64
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 25
  %17 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx5 = getelementptr inbounds i64, i64* %17, i64 %idxprom
  %18 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  store i64 %18, i64* %A, align 8, !tbaa !54
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 26
  %20 = load i32, i32* %args6, align 4, !tbaa !26
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 25
  %22 = load i64*, i64** %stack8, align 8, !tbaa !32
  %arrayidx9 = getelementptr inbounds i64, i64* %22, i64 %idxprom7
  %23 = load i64, i64* %arrayidx9, align 8, !tbaa !54
  store i64 %23, i64* %B, align 8, !tbaa !54
  %24 = load i64, i64* %A, align 8, !tbaa !54
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 45
  %26 = load i32, i32* %cvtSize, align 4, !tbaa !127
  %conv = sext i32 %26 to i64
  %cmp10 = icmp sge i64 %24, %conv
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error13 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 1
  store i32 1032, i32* %error13, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %28 = load i64, i64* %B, align 8, !tbaa !54
  %and = and i64 %28, 240
  %shr = lshr i64 %and, 4
  store i64 %shr, i64* %C, align 8, !tbaa !54
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 6
  %30 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv15 = zext i8 %30 to i32
  switch i32 %conv15, label %sw.epilog [
    i32 115, label %sw.epilog
    i32 116, label %sw.bb
    i32 117, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end.14
  %31 = load i64, i64* %C, align 8, !tbaa !54
  %add16 = add nsw i64 %31, 16
  store i64 %add16, i64* %C, align 8, !tbaa !54
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.14
  %32 = load i64, i64* %C, align 8, !tbaa !54
  %add18 = add nsw i64 %32, 32
  store i64 %add18, i64* %C, align 8, !tbaa !54
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %sw.bb.17, %sw.bb, %if.end.14
  %33 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %33, i32 0, i32 42
  %delta_base = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 13
  %34 = load i32, i32* %delta_base, align 4, !tbaa !132
  %conv19 = sext i32 %34 to i64
  %35 = load i64, i64* %C, align 8, !tbaa !54
  %add20 = add nsw i64 %35, %conv19
  store i64 %add20, i64* %C, align 8, !tbaa !54
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @Current_Ppem(%struct._TExecution_Context* %36) #5
  %conv21 = sext i32 %call to i64
  %37 = load i64, i64* %C, align 8, !tbaa !54
  %cmp22 = icmp eq i64 %conv21, %37
  br i1 %cmp22, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %sw.epilog
  %38 = load i64, i64* %B, align 8, !tbaa !54
  %and25 = and i64 %38, 15
  %sub26 = sub nsw i64 %and25, 8
  store i64 %sub26, i64* %B, align 8, !tbaa !54
  %39 = load i64, i64* %B, align 8, !tbaa !54
  %cmp27 = icmp sge i64 %39, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.24
  %40 = load i64, i64* %B, align 8, !tbaa !54
  %inc = add nsw i64 %40, 1
  store i64 %inc, i64* %B, align 8, !tbaa !54
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.24
  %41 = load i64, i64* %B, align 8, !tbaa !54
  %mul = mul nsw i64 %41, 64
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS31 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 42
  %delta_shift = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS31, i32 0, i32 14
  %43 = load i32, i32* %delta_shift, align 4, !tbaa !133
  %sh_prom = zext i32 %43 to i64
  %shl = shl i64 1, %sh_prom
  %div = sdiv i64 %mul, %shl
  store i64 %div, i64* %B, align 8, !tbaa !54
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 55
  %45 = load void (%struct._TExecution_Context*, i32, i32)*, void (%struct._TExecution_Context*, i32, i32)** %func_move_cvt, align 8, !tbaa !20
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %47 = load i64, i64* %A, align 8, !tbaa !54
  %conv32 = trunc i64 %47 to i32
  %48 = load i64, i64* %B, align 8, !tbaa !54
  %conv33 = trunc i64 %48 to i32
  call void %45(%struct._TExecution_Context* %46, i32 %conv32, i32 %conv33) #5
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.30, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %49 = load i64, i64* %k, align 8, !tbaa !54
  %inc35 = add nsw i64 %49, 1
  store i64 %inc35, i64* %k, align 8, !tbaa !54
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args36 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 26
  %51 = load i32, i32* %args36, align 4, !tbaa !26
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 27
  store i32 %51, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.12, %if.then
  %53 = bitcast i64* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i64* %B to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i64* %A to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i64* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i64* %nump to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
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
define internal void @Ins_SROUND(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  call void @SetSuperRound(%struct._TExecution_Context* %0, i32 16384, i64 %2) #5
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 6, i32* %round_state, align 4, !tbaa !21
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Super, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_S45ROUND(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  call void @SetSuperRound(%struct._TExecution_Context* %0, i32 11585, i64 %2) #5
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 7, i32* %round_state, align 4, !tbaa !21
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Super_45, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_JROT(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 1
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv = trunc i64 %3 to i32
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 4
  %5 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %5, %conv
  store i32 %add, i32* %IP, align 4, !tbaa !44
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 4
  %8 = load i32, i32* %IP2, align 4, !tbaa !44
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 3
  %10 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx3, align 1, !tbaa !25
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv4, 45
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 4
  %13 = load i32, i32* %IP7, align 4, !tbaa !44
  %sub = sub nsw i32 %13, 1
  %idxprom8 = sext i32 %sub to i64
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 3
  %15 = load i8*, i8** %code9, align 8, !tbaa !68
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 %idxprom8
  %16 = load i8, i8* %arrayidx10, align 1, !tbaa !25
  %conv11 = zext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv11, 45
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 4
  %18 = load i32, i32* %IP15, align 4, !tbaa !44
  %sub16 = sub nsw i32 %18, 1
  store i32 %sub16, i32* %IP15, align 4, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true, %if.then
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_JROF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 1
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv = trunc i64 %3 to i32
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 4
  %5 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %5, %conv
  store i32 %add, i32* %IP, align 4, !tbaa !44
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 4
  %8 = load i32, i32* %IP2, align 4, !tbaa !44
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 3
  %10 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx3, align 1, !tbaa !25
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp ne i32 %conv4, 45
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 4
  %13 = load i32, i32* %IP7, align 4, !tbaa !44
  %sub = sub nsw i32 %13, 1
  %idxprom8 = sext i32 %sub to i64
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 3
  %15 = load i8*, i8** %code9, align 8, !tbaa !68
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 %idxprom8
  %16 = load i8, i8* %arrayidx10, align 1, !tbaa !25
  %conv11 = zext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv11, 45
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 4
  %18 = load i32, i32* %IP15, align 4, !tbaa !44
  %sub16 = sub nsw i32 %18, 1
  store i32 %sub16, i32* %IP15, align 4, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true, %if.then
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ROFF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 5, i32* %round_state, align 4, !tbaa !21
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_None, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_RUTG(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 4, i32* %round_state, align 4, !tbaa !21
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Up_To_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_RDTG(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 42
  %round_state = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 8
  store i32 3, i32* %round_state, align 4, !tbaa !21
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 48
  store i32 (%struct._TExecution_Context*, i32, i32)* @Round_Down_To_Grid, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SANGW(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_AA(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_FLIPPT(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %point = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %point to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 24
  %3 = load i32, i32* %top, align 4, !tbaa !23
  %conv = sext i32 %3 to i64
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 42
  %loop = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 6
  %5 = load i64, i64* %loop, align 8, !tbaa !101
  %cmp = icmp slt i64 %conv, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 1
  store i32 1025, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 42
  %loop3 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS2, i32 0, i32 6
  %8 = load i64, i64* %loop3, align 8, !tbaa !101
  %cmp4 = icmp sgt i64 %8, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 26
  %10 = load i32, i32* %args6, align 4, !tbaa !26
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %args6, align 4, !tbaa !26
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args7 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 26
  %12 = load i32, i32* %args7, align 4, !tbaa !26
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stack = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 25
  %14 = load i64*, i64** %stack, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 %idxprom
  %15 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %15, i64* %point, align 8, !tbaa !54
  %16 = load i64, i64* %point, align 8, !tbaa !54
  %cmp8 = icmp slt i64 %16, 0
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %17 = load i64, i64* %point, align 8, !tbaa !54
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 39
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 0
  %19 = load i32, i32* %n_points, align 4, !tbaa !134
  %conv10 = sext i32 %19 to i64
  %cmp11 = icmp sge i64 %17, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false, %while.body
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 1
  store i32 1032, i32* %error14, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false
  %21 = load i64, i64* %point, align 8, !tbaa !54
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts16 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts16, i32 0, i32 6
  %23 = load i8*, i8** %touch, align 8, !tbaa !117
  %arrayidx17 = getelementptr inbounds i8, i8* %23, i64 %21
  %24 = load i8, i8* %arrayidx17, align 1, !tbaa !25
  %conv18 = zext i8 %24 to i32
  %xor = xor i32 %conv18, 1
  %conv19 = trunc i32 %xor to i8
  store i8 %conv19, i8* %arrayidx17, align 1, !tbaa !25
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS20 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 42
  %loop21 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS20, i32 0, i32 6
  %26 = load i64, i64* %loop21, align 8, !tbaa !101
  %dec22 = add nsw i64 %26, -1
  store i64 %dec22, i64* %loop21, align 8, !tbaa !101
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 42
  %loop24 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS23, i32 0, i32 6
  store i64 1, i64* %loop24, align 8, !tbaa !101
  %28 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %args25 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %28, i32 0, i32 26
  %29 = load i32, i32* %args25, align 4, !tbaa !26
  %30 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %new_top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %30, i32 0, i32 27
  store i32 %29, i32* %new_top, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.13, %if.then
  %31 = bitcast i64* %point to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
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
define internal void @Ins_FLIPRGON(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %I = alloca i64, align 8
  %K = alloca i64, align 8
  %L = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %4, i64* %K, align 8, !tbaa !54
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  store i64 %6, i64* %L, align 8, !tbaa !54
  %7 = load i64, i64* %K, align 8, !tbaa !54
  %cmp = icmp slt i64 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %K, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 39
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 0
  %10 = load i32, i32* %n_points, align 4, !tbaa !134
  %conv = sext i32 %10 to i64
  %cmp2 = icmp sge i64 %8, %conv
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %11 = load i64, i64* %L, align 8, !tbaa !54
  %cmp5 = icmp slt i64 %11, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %12 = load i64, i64* %L, align 8, !tbaa !54
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 39
  %n_points9 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts8, i32 0, i32 0
  %14 = load i32, i32* %n_points9, align 4, !tbaa !134
  %conv10 = sext i32 %14 to i64
  %cmp11 = icmp sge i64 %12, %conv10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.7
  %16 = load i64, i64* %L, align 8, !tbaa !54
  store i64 %16, i64* %I, align 8, !tbaa !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i64, i64* %I, align 8, !tbaa !54
  %18 = load i64, i64* %K, align 8, !tbaa !54
  %cmp13 = icmp sle i64 %17, %18
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %I, align 8, !tbaa !54
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts15, i32 0, i32 6
  %21 = load i8*, i8** %touch, align 8, !tbaa !117
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 %19
  %22 = load i8, i8* %arrayidx16, align 1, !tbaa !25
  %conv17 = zext i8 %22 to i32
  %or = or i32 %conv17, 1
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, i8* %arrayidx16, align 1, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %I, align 8, !tbaa !54
  %inc = add nsw i64 %23, 1
  store i64 %inc, i64* %I, align 8, !tbaa !54
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %24 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i64* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
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
define internal void @Ins_FLIPRGOFF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %I = alloca i64, align 8
  %K = alloca i64, align 8
  %L = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %4, i64* %K, align 8, !tbaa !54
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  store i64 %6, i64* %L, align 8, !tbaa !54
  %7 = load i64, i64* %K, align 8, !tbaa !54
  %cmp = icmp slt i64 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %K, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 39
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts, i32 0, i32 0
  %10 = load i32, i32* %n_points, align 4, !tbaa !134
  %conv = sext i32 %10 to i64
  %cmp2 = icmp sge i64 %8, %conv
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %11 = load i64, i64* %L, align 8, !tbaa !54
  %cmp5 = icmp slt i64 %11, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %12 = load i64, i64* %L, align 8, !tbaa !54
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts8 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 39
  %n_points9 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts8, i32 0, i32 0
  %14 = load i32, i32* %n_points9, align 4, !tbaa !134
  %conv10 = sext i32 %14 to i64
  %cmp11 = icmp sge i64 %12, %conv10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.7
  %16 = load i64, i64* %L, align 8, !tbaa !54
  store i64 %16, i64* %I, align 8, !tbaa !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i64, i64* %I, align 8, !tbaa !54
  %18 = load i64, i64* %K, align 8, !tbaa !54
  %cmp13 = icmp sle i64 %17, %18
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %I, align 8, !tbaa !54
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %pts15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 39
  %touch = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %pts15, i32 0, i32 6
  %21 = load i8*, i8** %touch, align 8, !tbaa !117
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 %19
  %22 = load i8, i8* %arrayidx16, align 1, !tbaa !25
  %conv17 = zext i8 %22 to i32
  %and = and i32 %conv17, -2
  %conv18 = trunc i32 %and to i8
  store i8 %conv18, i8* %arrayidx16, align 1, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %I, align 8, !tbaa !54
  %inc = add nsw i64 %23, 1
  store i64 %inc, i64* %I, align 8, !tbaa !54
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %24 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i64* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
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
define internal void @Ins_SCANCTRL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %A = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %A to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %and = and i64 %2, 255
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %A, align 4, !tbaa !5
  %3 = load i32, i32* %A, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 42
  %scan_control = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 16
  store i32 1, i32* %scan_control, align 4, !tbaa !135
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %A, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 42
  %scan_control6 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS5, i32 0, i32 16
  store i32 0, i32* %scan_control6, align 4, !tbaa !135
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  %7 = load i32, i32* %A, align 4, !tbaa !5
  %mul = mul nsw i32 %7, 64
  store i32 %mul, i32* %A, align 4, !tbaa !5
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx8, align 8, !tbaa !54
  %and9 = and i64 %9, 256
  %cmp10 = icmp ne i64 %and9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.7
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 31
  %pointSize = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 0
  %11 = load i32, i32* %pointSize, align 4, !tbaa !130
  %12 = load i32, i32* %A, align 4, !tbaa !5
  %cmp12 = icmp sle i32 %11, %12
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %scan_control16 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS15, i32 0, i32 16
  store i32 1, i32* %scan_control16, align 4, !tbaa !135
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.7
  %14 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i64, i64* %14, i64 0
  %15 = load i64, i64* %arrayidx18, align 8, !tbaa !54
  %and19 = and i64 %15, 512
  %cmp20 = icmp ne i64 %and19, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %if.end.17
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 31
  %rotated = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics23, i32 0, i32 16
  %17 = load i32, i32* %rotated, align 4, !tbaa !136
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true.22
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS25 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 42
  %scan_control26 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS25, i32 0, i32 16
  store i32 1, i32* %scan_control26, align 4, !tbaa !135
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.end.17
  %19 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i64, i64* %19, i64 0
  %20 = load i64, i64* %arrayidx28, align 8, !tbaa !54
  %and29 = and i64 %20, 1024
  %cmp30 = icmp ne i64 %and29, 0
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.38

land.lhs.true.32:                                 ; preds = %if.end.27
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 31
  %stretched = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics33, i32 0, i32 17
  %22 = load i32, i32* %stretched, align 4, !tbaa !137
  %tobool34 = icmp ne i32 %22, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %land.lhs.true.32
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS36 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 42
  %scan_control37 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS36, i32 0, i32 16
  store i32 1, i32* %scan_control37, align 4, !tbaa !135
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.end.27
  %24 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i64, i64* %24, i64 0
  %25 = load i64, i64* %arrayidx39, align 8, !tbaa !54
  %and40 = and i64 %25, 2048
  %cmp41 = icmp ne i64 %and40, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.51

land.lhs.true.43:                                 ; preds = %if.end.38
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics44 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 31
  %pointSize45 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics44, i32 0, i32 0
  %27 = load i32, i32* %pointSize45, align 4, !tbaa !130
  %28 = load i32, i32* %A, align 4, !tbaa !5
  %cmp46 = icmp sgt i32 %27, %28
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %land.lhs.true.43
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS49 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 42
  %scan_control50 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS49, i32 0, i32 16
  store i32 0, i32* %scan_control50, align 4, !tbaa !135
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %land.lhs.true.43, %if.end.38
  %30 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i64, i64* %30, i64 0
  %31 = load i64, i64* %arrayidx52, align 8, !tbaa !54
  %and53 = and i64 %31, 4096
  %cmp54 = icmp ne i64 %and53, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.63

land.lhs.true.56:                                 ; preds = %if.end.51
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics57 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 31
  %rotated58 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics57, i32 0, i32 16
  %33 = load i32, i32* %rotated58, align 4, !tbaa !136
  %tobool59 = icmp ne i32 %33, 0
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %land.lhs.true.56
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS61 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 42
  %scan_control62 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS61, i32 0, i32 16
  store i32 0, i32* %scan_control62, align 4, !tbaa !135
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true.56, %if.end.51
  %35 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i64, i64* %35, i64 0
  %36 = load i64, i64* %arrayidx64, align 8, !tbaa !54
  %and65 = and i64 %36, 8192
  %cmp66 = icmp ne i64 %and65, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.75

land.lhs.true.68:                                 ; preds = %if.end.63
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics69 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 31
  %stretched70 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics69, i32 0, i32 17
  %38 = load i32, i32* %stretched70, align 4, !tbaa !137
  %tobool71 = icmp ne i32 %38, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %land.lhs.true.68
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS73 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 42
  %scan_control74 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS73, i32 0, i32 16
  store i32 0, i32* %scan_control74, align 4, !tbaa !135
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %land.lhs.true.68, %if.end.63
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.4, %if.then
  %40 = bitcast i32* %A to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
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
define internal void @Ins_SDPVTL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  %p1 = alloca i64, align 8
  %p2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %B to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 1
  %6 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %6, i64* %p1, align 8, !tbaa !54
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  store i64 %8, i64* %p2, align 8, !tbaa !54
  %9 = load i64, i64* %p2, align 8, !tbaa !54
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i64, i64* %p2, align 8, !tbaa !54
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 37
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %12 = load i32, i32* %n_points, align 4, !tbaa !83
  %conv = sext i32 %12 to i64
  %cmp2 = icmp sge i64 %10, %conv
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %13 = load i64, i64* %p1, align 8, !tbaa !54
  %cmp5 = icmp slt i64 %13, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %14 = load i64, i64* %p1, align 8, !tbaa !54
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 38
  %n_points8 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %16 = load i32, i32* %n_points8, align 4, !tbaa !119
  %conv9 = sext i32 %16 to i64
  %cmp10 = icmp sge i64 %14, %conv9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.7
  %18 = load i64, i64* %p2, align 8, !tbaa !54
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp112 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 37
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp112, i32 0, i32 2
  %20 = load i32*, i32** %org_x, align 8, !tbaa !123
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %18
  %21 = load i32, i32* %arrayidx13, align 4, !tbaa !5
  %22 = load i64, i64* %p1, align 8, !tbaa !54
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp214 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 38
  %org_x15 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp214, i32 0, i32 2
  %24 = load i32*, i32** %org_x15, align 8, !tbaa !125
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 %22
  %25 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  %sub = sub nsw i32 %21, %25
  %conv17 = sext i32 %sub to i64
  store i64 %conv17, i64* %A, align 8, !tbaa !54
  %26 = load i64, i64* %p2, align 8, !tbaa !54
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp118 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 37
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp118, i32 0, i32 3
  %28 = load i32*, i32** %org_y, align 8, !tbaa !124
  %arrayidx19 = getelementptr inbounds i32, i32* %28, i64 %26
  %29 = load i32, i32* %arrayidx19, align 4, !tbaa !5
  %30 = load i64, i64* %p1, align 8, !tbaa !54
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp220 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 38
  %org_y21 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp220, i32 0, i32 3
  %32 = load i32*, i32** %org_y21, align 8, !tbaa !126
  %arrayidx22 = getelementptr inbounds i32, i32* %32, i64 %30
  %33 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %sub23 = sub nsw i32 %29, %33
  %conv24 = sext i32 %sub23 to i64
  store i64 %conv24, i64* %B, align 8, !tbaa !54
  %34 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %34, i32 0, i32 6
  %35 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv25 = zext i8 %35 to i32
  %and = and i32 %conv25, 1
  %cmp26 = icmp ne i32 %and, 0
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end
  %36 = load i64, i64* %B, align 8, !tbaa !54
  store i64 %36, i64* %C, align 8, !tbaa !54
  %37 = load i64, i64* %A, align 8, !tbaa !54
  store i64 %37, i64* %B, align 8, !tbaa !54
  %38 = load i64, i64* %C, align 8, !tbaa !54
  %sub29 = sub nsw i64 0, %38
  store i64 %sub29, i64* %A, align 8, !tbaa !54
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %40 = load i64, i64* %A, align 8, !tbaa !54
  %conv31 = trunc i64 %40 to i32
  %41 = load i64, i64* %B, align 8, !tbaa !54
  %conv32 = trunc i64 %41 to i32
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 42
  %dualVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 3
  %call = call i32 @Normalize(%struct._TExecution_Context* %39, i32 %conv31, i32 %conv32, %struct._TT_UnitVector* %dualVector) #5
  %cmp33 = icmp eq i32 %call, -1
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.30
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.30
  %43 = load i64, i64* %p2, align 8, !tbaa !54
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp137 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 37
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp137, i32 0, i32 4
  %45 = load i32*, i32** %cur_x, align 8, !tbaa !86
  %arrayidx38 = getelementptr inbounds i32, i32* %45, i64 %43
  %46 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  %47 = load i64, i64* %p1, align 8, !tbaa !54
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp239 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 38
  %cur_x40 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp239, i32 0, i32 4
  %49 = load i32*, i32** %cur_x40, align 8, !tbaa !92
  %arrayidx41 = getelementptr inbounds i32, i32* %49, i64 %47
  %50 = load i32, i32* %arrayidx41, align 4, !tbaa !5
  %sub42 = sub nsw i32 %46, %50
  %conv43 = sext i32 %sub42 to i64
  store i64 %conv43, i64* %A, align 8, !tbaa !54
  %51 = load i64, i64* %p2, align 8, !tbaa !54
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp144 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 37
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp144, i32 0, i32 5
  %53 = load i32*, i32** %cur_y, align 8, !tbaa !87
  %arrayidx45 = getelementptr inbounds i32, i32* %53, i64 %51
  %54 = load i32, i32* %arrayidx45, align 4, !tbaa !5
  %55 = load i64, i64* %p1, align 8, !tbaa !54
  %56 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp246 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 38
  %cur_y47 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp246, i32 0, i32 5
  %57 = load i32*, i32** %cur_y47, align 8, !tbaa !93
  %arrayidx48 = getelementptr inbounds i32, i32* %57, i64 %55
  %58 = load i32, i32* %arrayidx48, align 4, !tbaa !5
  %sub49 = sub nsw i32 %54, %58
  %conv50 = sext i32 %sub49 to i64
  store i64 %conv50, i64* %B, align 8, !tbaa !54
  %59 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode51 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %59, i32 0, i32 6
  %60 = load i8, i8* %opcode51, align 1, !tbaa !24
  %conv52 = zext i8 %60 to i32
  %and53 = and i32 %conv52, 1
  %cmp54 = icmp ne i32 %and53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.36
  %61 = load i64, i64* %B, align 8, !tbaa !54
  store i64 %61, i64* %C, align 8, !tbaa !54
  %62 = load i64, i64* %A, align 8, !tbaa !54
  store i64 %62, i64* %B, align 8, !tbaa !54
  %63 = load i64, i64* %C, align 8, !tbaa !54
  %sub57 = sub nsw i64 0, %63
  store i64 %sub57, i64* %A, align 8, !tbaa !54
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.36
  %64 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %65 = load i64, i64* %A, align 8, !tbaa !54
  %conv59 = trunc i64 %65 to i32
  %66 = load i64, i64* %B, align 8, !tbaa !54
  %conv60 = trunc i64 %66 to i32
  %67 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS61 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %67, i32 0, i32 42
  %projVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS61, i32 0, i32 4
  %call62 = call i32 @Normalize(%struct._TExecution_Context* %64, i32 %conv59, i32 %conv60, %struct._TT_UnitVector* %projVector) #5
  %cmp63 = icmp eq i32 %call62, -1
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.58
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.58
  %68 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @Compute_Funcs(%struct._TExecution_Context* %68) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.65, %if.then.35, %if.then
  %69 = bitcast i64* %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i64* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i64* %B to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i64* %A to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
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
define internal void @Ins_GETINFO(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %K = alloca i64, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %K, align 8, !tbaa !54
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %and = and i64 %2, 1
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 3, i64* %K, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 31
  %rotated = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 16
  %4 = load i32, i32* %rotated, align 4, !tbaa !136
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load i64, i64* %K, align 8, !tbaa !54
  %or = or i64 %5, 128
  store i64 %or, i64* %K, align 8, !tbaa !54
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics3 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 31
  %stretched = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics3, i32 0, i32 17
  %7 = load i32, i32* %stretched, align 4, !tbaa !137
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.2
  %8 = load i64, i64* %K, align 8, !tbaa !54
  %or6 = or i64 %8, 256
  store i64 %or6, i64* %K, align 8, !tbaa !54
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.2
  %9 = load i64, i64* %K, align 8, !tbaa !54
  %10 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %9, i64* %arrayidx8, align 8, !tbaa !54
  %11 = bitcast i64* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_IDEF(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %pTDR = alloca %struct._TDefRecord*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %countIDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 13
  %1 = load i32, i32* %countIDefs, align 4, !tbaa !138
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %numIDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 11
  %3 = load i32, i32* %numIDefs, align 4, !tbaa !33
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp1 = icmp sgt i64 %5, 255
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 1
  store i32 1030, i32* %error, align 4, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %7 = bitcast %struct._TDefRecord** %pTDR to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %countIDefs2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 13
  %9 = load i32, i32* %countIDefs2, align 4, !tbaa !138
  %conv = trunc i32 %9 to i8
  %10 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %conv4 = trunc i64 %11 to i8
  %idxprom = zext i8 %conv4 to i64
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IDefPtr = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 14
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %IDefPtr, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx5, align 1, !tbaa !25
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %countIDefs6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 13
  %14 = load i32, i32* %countIDefs6, align 4, !tbaa !138
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %countIDefs6, align 4, !tbaa !138
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IDefs = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 12
  %16 = load %struct._TDefRecord*, %struct._TDefRecord** %IDefs, align 8, !tbaa !34
  %arrayidx8 = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %16, i64 %idxprom7
  store %struct._TDefRecord* %arrayidx8, %struct._TDefRecord** %pTDR, align 8, !tbaa !1
  %17 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i64, i64* %17, i64 0
  %18 = load i64, i64* %arrayidx9, align 8, !tbaa !54
  %conv10 = trunc i64 %18 to i8
  %19 = load %struct._TDefRecord*, %struct._TDefRecord** %pTDR, align 8, !tbaa !1
  %Opc = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %19, i32 0, i32 2
  store i8 %conv10, i8* %Opc, align 1, !tbaa !37
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 4
  %21 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %21, 1
  %22 = load %struct._TDefRecord*, %struct._TDefRecord** %pTDR, align 8, !tbaa !1
  %Start = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %22, i32 0, i32 1
  store i32 %add, i32* %Start, align 4, !tbaa !47
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %curRange = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 2
  %24 = load i32, i32* %curRange, align 4, !tbaa !41
  %25 = load %struct._TDefRecord*, %struct._TDefRecord** %pTDR, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %25, i32 0, i32 0
  store i32 %24, i32* %Range, align 4, !tbaa !49
  %26 = load %struct._TDefRecord*, %struct._TDefRecord** %pTDR, align 8, !tbaa !1
  %Active = getelementptr inbounds %struct._TDefRecord, %struct._TDefRecord* %26, i32 0, i32 3
  store i32 1, i32* %Active, align 4, !tbaa !35
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  call void @skip_FDEF(%struct._TExecution_Context* %27) #5
  %28 = bitcast %struct._TDefRecord** %pTDR to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_ROLL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %B to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 2
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %5, i64* %A, align 8, !tbaa !54
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 1
  %7 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  store i64 %7, i64* %B, align 8, !tbaa !54
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %8, i64 0
  %9 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  store i64 %9, i64* %C, align 8, !tbaa !54
  %10 = load i64, i64* %C, align 8, !tbaa !54
  %11 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 2
  store i64 %10, i64* %arrayidx3, align 8, !tbaa !54
  %12 = load i64, i64* %A, align 8, !tbaa !54
  %13 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %13, i64 1
  store i64 %12, i64* %arrayidx4, align 8, !tbaa !54
  %14 = load i64, i64* %B, align 8, !tbaa !54
  %15 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %arrayidx5, align 8, !tbaa !54
  %16 = bitcast i64* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i64* %B to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i64* %A to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_MAX(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp sgt i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 1
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %6, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_MIN(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %1 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp slt i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i64, i64* %5, i64 1
  %6 = load i64, i64* %arrayidx2, align 8, !tbaa !54
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 0
  store i64 %6, i64* %arrayidx3, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_SCANTYPE(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 0
  %3 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp2 = icmp sle i64 %3, 5
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %cmp4 = icmp eq i64 %5, 3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 2, i64* %arrayidx6, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx7, align 8, !tbaa !54
  %conv = trunc i64 %8 to i32
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %scan_type = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 17
  store i32 %conv, i32* %scan_type, align 4, !tbaa !139
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Ins_INSTCTRL(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %K = alloca i64, align 8
  %L = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i64* %K to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 1
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  store i64 %3, i64* %K, align 8, !tbaa !54
  %4 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 0
  %5 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  store i64 %5, i64* %L, align 8, !tbaa !54
  %6 = load i64, i64* %K, align 8, !tbaa !54
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, i64* %K, align 8, !tbaa !54
  %cmp2 = icmp sgt i64 %7, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 42
  %instruct_control = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 15
  %10 = load i8, i8* %instruct_control, align 1, !tbaa !140
  %conv = zext i8 %10 to i64
  %11 = load i64, i64* %K, align 8, !tbaa !54
  %neg = xor i64 %11, -1
  %and = and i64 %conv, %neg
  %12 = load i64, i64* %L, align 8, !tbaa !54
  %13 = load i64, i64* %K, align 8, !tbaa !54
  %and3 = and i64 %12, %13
  %or = or i64 %and, %and3
  %conv4 = trunc i64 %or to i32
  %conv5 = trunc i32 %conv4 to i8
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 42
  %instruct_control7 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS6, i32 0, i32 15
  store i8 %conv5, i8* %instruct_control7, align 1, !tbaa !140
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i64* %L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i64* %K to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
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
define internal void @Ins_PUSHB(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i32, align 4
  %K = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %L to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %K to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 6
  %3 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, 176
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %L, align 4, !tbaa !5
  %4 = load i32, i32* %L, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %L, align 4, !tbaa !5
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stackSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 23
  %7 = load i32, i32* %stackSize, align 4, !tbaa !28
  %add2 = add nsw i32 %7, 1
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 24
  %9 = load i32, i32* %top, align 4, !tbaa !23
  %sub3 = sub nsw i32 %add2, %9
  %cmp4 = icmp sge i32 %5, %sub3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1026, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %K, align 4, !tbaa !5
  %12 = load i32, i32* %L, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %11, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 4
  %14 = load i32, i32* %IP, align 4, !tbaa !44
  %15 = load i32, i32* %K, align 4, !tbaa !5
  %add8 = add nsw i32 %14, %15
  %idxprom = sext i32 %add8 to i64
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 3
  %17 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv9 = zext i8 %18 to i64
  %19 = load i32, i32* %K, align 4, !tbaa !5
  %sub10 = sub nsw i32 %19, 1
  %idxprom11 = sext i32 %sub10 to i64
  %20 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i64, i64* %20, i64 %idxprom11
  store i64 %conv9, i64* %arrayidx12, align 8, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %K, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast i32* %K to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %L to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
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
define internal void @Ins_PUSHW(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %L = alloca i32, align 4
  %K = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %L to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %K to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 6
  %3 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, 184
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %L, align 4, !tbaa !5
  %4 = load i32, i32* %L, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %L, align 4, !tbaa !5
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %stackSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 23
  %7 = load i32, i32* %stackSize, align 4, !tbaa !28
  %add2 = add nsw i32 %7, 1
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 24
  %9 = load i32, i32* %top, align 4, !tbaa !23
  %sub3 = sub nsw i32 %add2, %9
  %cmp4 = icmp sge i32 %5, %sub3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 1
  store i32 1026, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 4
  %12 = load i32, i32* %IP, align 4, !tbaa !44
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %IP, align 4, !tbaa !44
  store i32 0, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %K, align 4, !tbaa !5
  %14 = load i32, i32* %L, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call signext i16 @GetShortIns(%struct._TExecution_Context* %15) #5
  %conv8 = sext i16 %call to i64
  %16 = load i32, i32* %K, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 %idxprom
  store i64 %conv8, i64* %arrayidx, align 8, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %K, align 4, !tbaa !5
  %inc9 = add nsw i32 %18, 1
  store i32 %inc9, i32* %K, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %step_ins = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %19, i32 0, i32 8
  store i32 0, i32* %step_ins, align 4, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %20 = bitcast i32* %K to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %L to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
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
define internal void @Ins_MDRP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %point = alloca i32, align 4
  %distance = alloca i32, align 4
  %org_dist = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %org_dist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %point, align 4, !tbaa !5
  %5 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 0
  %8 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 37
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %10 = load i32, i32* %n_points, align 4, !tbaa !83
  %conv4 = sext i32 %10 to i64
  %cmp5 = icmp sge i64 %8, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 50
  %12 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj, align 8, !tbaa !65
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %14 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp17 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %15, i32 0, i32 37
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp17, i32 0, i32 2
  %16 = load i32*, i32** %org_x, align 8, !tbaa !123
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 42
  %rp0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 0
  %19 = load i32, i32* %rp0, align 4, !tbaa !94
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 36
  %org_x10 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 2
  %21 = load i32*, i32** %org_x10, align 8, !tbaa !121
  %arrayidx11 = getelementptr inbounds i32, i32* %21, i64 %idxprom9
  %22 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %sub = sub nsw i32 %17, %22
  %23 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp113 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 37
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp113, i32 0, i32 3
  %25 = load i32*, i32** %org_y, align 8, !tbaa !124
  %arrayidx14 = getelementptr inbounds i32, i32* %25, i64 %idxprom12
  %26 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS15 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 42
  %rp016 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS15, i32 0, i32 0
  %28 = load i32, i32* %rp016, align 4, !tbaa !94
  %idxprom17 = sext i32 %28 to i64
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp018 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 36
  %org_y19 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp018, i32 0, i32 3
  %30 = load i32*, i32** %org_y19, align 8, !tbaa !122
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 %idxprom17
  %31 = load i32, i32* %arrayidx20, align 4, !tbaa !5
  %sub21 = sub nsw i32 %26, %31
  %call = call i32 %12(%struct._TExecution_Context* %13, i32 %sub, i32 %sub21) #5
  store i32 %call, i32* %org_dist, align 4, !tbaa !5
  %32 = load i32, i32* %org_dist, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %32, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %33 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub24 = sub nsw i32 0, %33
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %34 = load i32, i32* %org_dist, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub24, %cond.true ], [ %34, %cond.false ]
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS25 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 42
  %single_width_cutin = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS25, i32 0, i32 11
  %36 = load i32, i32* %single_width_cutin, align 4, !tbaa !104
  %cmp26 = icmp slt i32 %cond, %36
  br i1 %cmp26, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %cond.end
  %37 = load i32, i32* %org_dist, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %37, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.28
  %38 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS32 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %38, i32 0, i32 42
  %single_width_value = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS32, i32 0, i32 12
  %39 = load i32, i32* %single_width_value, align 4, !tbaa !105
  store i32 %39, i32* %org_dist, align 4, !tbaa !5
  br label %if.end.36

if.else:                                          ; preds = %if.then.28
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 42
  %single_width_value34 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS33, i32 0, i32 12
  %41 = load i32, i32* %single_width_value34, align 4, !tbaa !105
  %sub35 = sub nsw i32 0, %41
  store i32 %sub35, i32* %org_dist, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %cond.end
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 6
  %43 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv38 = zext i8 %43 to i32
  %and = and i32 %conv38, 4
  %cmp39 = icmp ne i32 %and, 0
  br i1 %cmp39, label %if.then.41, label %if.else.48

if.then.41:                                       ; preds = %if.end.37
  %44 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %44, i32 0, i32 48
  %45 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %47 = load i32, i32* %org_dist, align 4, !tbaa !5
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode42 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 6
  %49 = load i8, i8* %opcode42, align 1, !tbaa !24
  %conv43 = zext i8 %49 to i32
  %and44 = and i32 %conv43, 3
  %idxprom45 = sext i32 %and44 to i64
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 31
  %compensations = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 15
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations, i32 0, i64 %idxprom45
  %51 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %call47 = call i32 %45(%struct._TExecution_Context* %46, i32 %47, i32 %51) #5
  store i32 %call47, i32* %distance, align 4, !tbaa !5
  br label %if.end.57

if.else.48:                                       ; preds = %if.end.37
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %53 = load i32, i32* %org_dist, align 4, !tbaa !5
  %54 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode49 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %54, i32 0, i32 6
  %55 = load i8, i8* %opcode49, align 1, !tbaa !24
  %conv50 = zext i8 %55 to i32
  %and51 = and i32 %conv50, 3
  %idxprom52 = sext i32 %and51 to i64
  %56 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics53 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %56, i32 0, i32 31
  %compensations54 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics53, i32 0, i32 15
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations54, i32 0, i64 %idxprom52
  %57 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %call56 = call i32 @Round_None(%struct._TExecution_Context* %52, i32 %53, i32 %57) #5
  store i32 %call56, i32* %distance, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.48, %if.then.41
  %58 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode58 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %58, i32 0, i32 6
  %59 = load i8, i8* %opcode58, align 1, !tbaa !24
  %conv59 = zext i8 %59 to i32
  %and60 = and i32 %conv59, 8
  %cmp61 = icmp ne i32 %and60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.86

if.then.63:                                       ; preds = %if.end.57
  %60 = load i32, i32* %org_dist, align 4, !tbaa !5
  %cmp64 = icmp sge i32 %60, 0
  br i1 %cmp64, label %if.then.66, label %if.else.74

if.then.66:                                       ; preds = %if.then.63
  %61 = load i32, i32* %distance, align 4, !tbaa !5
  %62 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS67 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %62, i32 0, i32 42
  %minimum_distance = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS67, i32 0, i32 7
  %63 = load i32, i32* %minimum_distance, align 4, !tbaa !102
  %cmp68 = icmp slt i32 %61, %63
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.then.66
  %64 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS71 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %64, i32 0, i32 42
  %minimum_distance72 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS71, i32 0, i32 7
  %65 = load i32, i32* %minimum_distance72, align 4, !tbaa !102
  store i32 %65, i32* %distance, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.then.66
  br label %if.end.85

if.else.74:                                       ; preds = %if.then.63
  %66 = load i32, i32* %distance, align 4, !tbaa !5
  %67 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS75 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %67, i32 0, i32 42
  %minimum_distance76 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS75, i32 0, i32 7
  %68 = load i32, i32* %minimum_distance76, align 4, !tbaa !102
  %sub77 = sub nsw i32 0, %68
  %cmp78 = icmp sgt i32 %66, %sub77
  br i1 %cmp78, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.else.74
  %69 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS81 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %69, i32 0, i32 42
  %minimum_distance82 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS81, i32 0, i32 7
  %70 = load i32, i32* %minimum_distance82, align 4, !tbaa !102
  %sub83 = sub nsw i32 0, %70
  store i32 %sub83, i32* %distance, align 4, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %if.else.74
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.73
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.57
  %71 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %71, i32 0, i32 49
  %72 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %73 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %74 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom87 = sext i32 %74 to i64
  %75 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp188 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %75, i32 0, i32 37
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp188, i32 0, i32 4
  %76 = load i32*, i32** %cur_x, align 8, !tbaa !86
  %arrayidx89 = getelementptr inbounds i32, i32* %76, i64 %idxprom87
  %77 = load i32, i32* %arrayidx89, align 4, !tbaa !5
  %78 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS90 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %78, i32 0, i32 42
  %rp091 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS90, i32 0, i32 0
  %79 = load i32, i32* %rp091, align 4, !tbaa !94
  %idxprom92 = sext i32 %79 to i64
  %80 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp093 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %80, i32 0, i32 36
  %cur_x94 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp093, i32 0, i32 4
  %81 = load i32*, i32** %cur_x94, align 8, !tbaa !84
  %arrayidx95 = getelementptr inbounds i32, i32* %81, i64 %idxprom92
  %82 = load i32, i32* %arrayidx95, align 4, !tbaa !5
  %sub96 = sub nsw i32 %77, %82
  %83 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom97 = sext i32 %83 to i64
  %84 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp198 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %84, i32 0, i32 37
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp198, i32 0, i32 5
  %85 = load i32*, i32** %cur_y, align 8, !tbaa !87
  %arrayidx99 = getelementptr inbounds i32, i32* %85, i64 %idxprom97
  %86 = load i32, i32* %arrayidx99, align 4, !tbaa !5
  %87 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS100 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %87, i32 0, i32 42
  %rp0101 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS100, i32 0, i32 0
  %88 = load i32, i32* %rp0101, align 4, !tbaa !94
  %idxprom102 = sext i32 %88 to i64
  %89 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0103 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %89, i32 0, i32 36
  %cur_y104 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0103, i32 0, i32 5
  %90 = load i32*, i32** %cur_y104, align 8, !tbaa !85
  %arrayidx105 = getelementptr inbounds i32, i32* %90, i64 %idxprom102
  %91 = load i32, i32* %arrayidx105, align 4, !tbaa !5
  %sub106 = sub nsw i32 %86, %91
  %call107 = call i32 %72(%struct._TExecution_Context* %73, i32 %sub96, i32 %sub106) #5
  store i32 %call107, i32* %org_dist, align 4, !tbaa !5
  %92 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %92, i32 0, i32 52
  %93 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %94 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %95 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1108 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %95, i32 0, i32 37
  %96 = load i32, i32* %point, align 4, !tbaa !5
  %97 = load i32, i32* %distance, align 4, !tbaa !5
  %98 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub109 = sub nsw i32 %97, %98
  call void %93(%struct._TExecution_Context* %94, %struct._TGlyph_Zone* %zp1108, i32 %96, i32 %sub109) #5
  %99 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS110 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %99, i32 0, i32 42
  %rp0111 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS110, i32 0, i32 0
  %100 = load i32, i32* %rp0111, align 4, !tbaa !94
  %101 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS112 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %101, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS112, i32 0, i32 1
  store i32 %100, i32* %rp1, align 4, !tbaa !95
  %102 = load i32, i32* %point, align 4, !tbaa !5
  %103 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS113 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %103, i32 0, i32 42
  %rp2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS113, i32 0, i32 2
  store i32 %102, i32* %rp2, align 4, !tbaa !96
  %104 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode114 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %104, i32 0, i32 6
  %105 = load i8, i8* %opcode114, align 1, !tbaa !24
  %conv115 = zext i8 %105 to i32
  %and116 = and i32 %conv115, 16
  %cmp117 = icmp ne i32 %and116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.86
  %106 = load i32, i32* %point, align 4, !tbaa !5
  %107 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS120 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %107, i32 0, i32 42
  %rp0121 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS120, i32 0, i32 0
  store i32 %106, i32* %rp0121, align 4, !tbaa !94
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %if.end.86
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.122, %if.then
  %108 = bitcast i32* %org_dist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
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
define internal void @Ins_MIRP(%struct._TExecution_Context* %exc, i64* %args) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %args.addr = alloca i64*, align 8
  %point = alloca i32, align 4
  %cvtEntry = alloca i32, align 4
  %cvt_dist = alloca i32, align 4
  %distance = alloca i32, align 4
  %cur_dist = alloca i32, align 4
  %org_dist = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64* %args, i64** %args.addr, align 8, !tbaa !1
  %0 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cvtEntry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %cvt_dist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cur_dist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %org_dist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 0
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %point, align 4, !tbaa !5
  %8 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %8, i64 1
  %9 = load i64, i64* %arrayidx1, align 8, !tbaa !54
  %conv2 = trunc i64 %9 to i32
  store i32 %conv2, i32* %cvtEntry, align 4, !tbaa !5
  %10 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %cmp = icmp slt i64 %11, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i64, i64* %12, i64 0
  %13 = load i64, i64* %arrayidx5, align 8, !tbaa !54
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 37
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %15 = load i32, i32* %n_points, align 4, !tbaa !83
  %conv6 = sext i32 %15 to i64
  %cmp7 = icmp sge i64 %13, %conv6
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %16 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i64, i64* %16, i64 1
  %17 = load i64, i64* %arrayidx10, align 8, !tbaa !54
  %add = add nsw i64 %17, 1
  %cmp11 = icmp slt i64 %add, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %18 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %18, i64 1
  %19 = load i64, i64* %arrayidx14, align 8, !tbaa !54
  %add15 = add nsw i64 %19, 1
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %cvtSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 45
  %21 = load i32, i32* %cvtSize, align 4, !tbaa !127
  %add16 = add nsw i32 %21, 1
  %conv17 = sext i32 %add16 to i64
  %cmp18 = icmp sge i64 %add15, %conv17
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false, %entry
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.13
  %23 = load i64*, i64** %args.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i64, i64* %23, i64 1
  %24 = load i64, i64* %arrayidx20, align 8, !tbaa !54
  %cmp21 = icmp slt i64 %24, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  store i32 0, i32* %cvt_dist, align 4, !tbaa !5
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_read_cvt = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 53
  %26 = load i32 (%struct._TExecution_Context*, i32)*, i32 (%struct._TExecution_Context*, i32)** %func_read_cvt, align 8, !tbaa !18
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %28 = load i32, i32* %cvtEntry, align 4, !tbaa !5
  %call = call i32 %26(%struct._TExecution_Context* %27, i32 %28) #5
  store i32 %call, i32* %cvt_dist, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  %29 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %29, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %30 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %sub = sub nsw i32 0, %30
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %31 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %31, %cond.false ]
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %32, i32 0, i32 42
  %single_width_cutin = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 11
  %33 = load i32, i32* %single_width_cutin, align 4, !tbaa !104
  %cmp27 = icmp slt i32 %cond, %33
  br i1 %cmp27, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %cond.end
  %34 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %cmp30 = icmp sge i32 %34, 0
  br i1 %cmp30, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.then.29
  %35 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %35, i32 0, i32 42
  %single_width_value = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS33, i32 0, i32 12
  %36 = load i32, i32* %single_width_value, align 4, !tbaa !105
  store i32 %36, i32* %cvt_dist, align 4, !tbaa !5
  br label %if.end.38

if.else.34:                                       ; preds = %if.then.29
  %37 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS35 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %37, i32 0, i32 42
  %single_width_value36 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS35, i32 0, i32 12
  %38 = load i32, i32* %single_width_value36, align 4, !tbaa !105
  %sub37 = sub nsw i32 0, %38
  store i32 %sub37, i32* %cvt_dist, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.34, %if.then.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %cond.end
  %39 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS40 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %39, i32 0, i32 42
  %gep1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS40, i32 0, i32 19
  %40 = load i32, i32* %gep1, align 4, !tbaa !99
  %cmp41 = icmp eq i32 %40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.82

if.then.43:                                       ; preds = %if.end.39
  %41 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS44 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %41, i32 0, i32 42
  %rp0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS44, i32 0, i32 0
  %42 = load i32, i32* %rp0, align 4, !tbaa !94
  %idxprom = sext i32 %42 to i64
  %43 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %43, i32 0, i32 36
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0, i32 0, i32 2
  %44 = load i32*, i32** %org_x, align 8, !tbaa !121
  %arrayidx45 = getelementptr inbounds i32, i32* %44, i64 %idxprom
  %45 = load i32, i32* %arrayidx45, align 4, !tbaa !5
  %46 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %47 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS46 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %47, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS46, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %48 = load i16, i16* %x, align 2, !tbaa !55
  %conv47 = sext i16 %48 to i32
  %call48 = call i32 @MulDiv_Round(i32 %46, i32 %conv47, i32 16384) #5
  %add49 = add nsw i32 %45, %call48
  %49 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp151 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %50, i32 0, i32 37
  %org_x52 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp151, i32 0, i32 2
  %51 = load i32*, i32** %org_x52, align 8, !tbaa !123
  %arrayidx53 = getelementptr inbounds i32, i32* %51, i64 %idxprom50
  store i32 %add49, i32* %arrayidx53, align 4, !tbaa !5
  %52 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS54 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %52, i32 0, i32 42
  %rp055 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS54, i32 0, i32 0
  %53 = load i32, i32* %rp055, align 4, !tbaa !94
  %idxprom56 = sext i32 %53 to i64
  %54 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp057 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %54, i32 0, i32 36
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp057, i32 0, i32 3
  %55 = load i32*, i32** %org_y, align 8, !tbaa !122
  %arrayidx58 = getelementptr inbounds i32, i32* %55, i64 %idxprom56
  %56 = load i32, i32* %arrayidx58, align 4, !tbaa !5
  %57 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %58 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS59 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %58, i32 0, i32 42
  %freeVector60 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS59, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector60, i32 0, i32 1
  %59 = load i16, i16* %y, align 2, !tbaa !59
  %conv61 = sext i16 %59 to i32
  %call62 = call i32 @MulDiv_Round(i32 %57, i32 %conv61, i32 16384) #5
  %add63 = add nsw i32 %56, %call62
  %60 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom64 = sext i32 %60 to i64
  %61 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp165 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %61, i32 0, i32 37
  %org_y66 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp165, i32 0, i32 3
  %62 = load i32*, i32** %org_y66, align 8, !tbaa !124
  %arrayidx67 = getelementptr inbounds i32, i32* %62, i64 %idxprom64
  store i32 %add63, i32* %arrayidx67, align 4, !tbaa !5
  %63 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp169 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %64, i32 0, i32 37
  %org_x70 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp169, i32 0, i32 2
  %65 = load i32*, i32** %org_x70, align 8, !tbaa !123
  %arrayidx71 = getelementptr inbounds i32, i32* %65, i64 %idxprom68
  %66 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %67 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom72 = sext i32 %67 to i64
  %68 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp173 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %68, i32 0, i32 37
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp173, i32 0, i32 4
  %69 = load i32*, i32** %cur_x, align 8, !tbaa !86
  %arrayidx74 = getelementptr inbounds i32, i32* %69, i64 %idxprom72
  store i32 %66, i32* %arrayidx74, align 4, !tbaa !5
  %70 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom75 = sext i32 %70 to i64
  %71 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp176 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %71, i32 0, i32 37
  %org_y77 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp176, i32 0, i32 3
  %72 = load i32*, i32** %org_y77, align 8, !tbaa !124
  %arrayidx78 = getelementptr inbounds i32, i32* %72, i64 %idxprom75
  %73 = load i32, i32* %arrayidx78, align 4, !tbaa !5
  %74 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom79 = sext i32 %74 to i64
  %75 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp180 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %75, i32 0, i32 37
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp180, i32 0, i32 5
  %76 = load i32*, i32** %cur_y, align 8, !tbaa !87
  %arrayidx81 = getelementptr inbounds i32, i32* %76, i64 %idxprom79
  store i32 %73, i32* %arrayidx81, align 4, !tbaa !5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.43, %if.end.39
  %77 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_dualproj = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %77, i32 0, i32 50
  %78 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_dualproj, align 8, !tbaa !65
  %79 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %80 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom83 = sext i32 %80 to i64
  %81 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp184 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %81, i32 0, i32 37
  %org_x85 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp184, i32 0, i32 2
  %82 = load i32*, i32** %org_x85, align 8, !tbaa !123
  %arrayidx86 = getelementptr inbounds i32, i32* %82, i64 %idxprom83
  %83 = load i32, i32* %arrayidx86, align 4, !tbaa !5
  %84 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS87 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %84, i32 0, i32 42
  %rp088 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS87, i32 0, i32 0
  %85 = load i32, i32* %rp088, align 4, !tbaa !94
  %idxprom89 = sext i32 %85 to i64
  %86 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp090 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %86, i32 0, i32 36
  %org_x91 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp090, i32 0, i32 2
  %87 = load i32*, i32** %org_x91, align 8, !tbaa !121
  %arrayidx92 = getelementptr inbounds i32, i32* %87, i64 %idxprom89
  %88 = load i32, i32* %arrayidx92, align 4, !tbaa !5
  %sub93 = sub nsw i32 %83, %88
  %89 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom94 = sext i32 %89 to i64
  %90 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp195 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %90, i32 0, i32 37
  %org_y96 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp195, i32 0, i32 3
  %91 = load i32*, i32** %org_y96, align 8, !tbaa !124
  %arrayidx97 = getelementptr inbounds i32, i32* %91, i64 %idxprom94
  %92 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %93 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS98 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %93, i32 0, i32 42
  %rp099 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS98, i32 0, i32 0
  %94 = load i32, i32* %rp099, align 4, !tbaa !94
  %idxprom100 = sext i32 %94 to i64
  %95 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0101 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %95, i32 0, i32 36
  %org_y102 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0101, i32 0, i32 3
  %96 = load i32*, i32** %org_y102, align 8, !tbaa !122
  %arrayidx103 = getelementptr inbounds i32, i32* %96, i64 %idxprom100
  %97 = load i32, i32* %arrayidx103, align 4, !tbaa !5
  %sub104 = sub nsw i32 %92, %97
  %call105 = call i32 %78(%struct._TExecution_Context* %79, i32 %sub93, i32 %sub104) #5
  store i32 %call105, i32* %org_dist, align 4, !tbaa !5
  %98 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %98, i32 0, i32 49
  %99 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %100 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %101 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom106 = sext i32 %101 to i64
  %102 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1107 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %102, i32 0, i32 37
  %cur_x108 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1107, i32 0, i32 4
  %103 = load i32*, i32** %cur_x108, align 8, !tbaa !86
  %arrayidx109 = getelementptr inbounds i32, i32* %103, i64 %idxprom106
  %104 = load i32, i32* %arrayidx109, align 4, !tbaa !5
  %105 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS110 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %105, i32 0, i32 42
  %rp0111 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS110, i32 0, i32 0
  %106 = load i32, i32* %rp0111, align 4, !tbaa !94
  %idxprom112 = sext i32 %106 to i64
  %107 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0113 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %107, i32 0, i32 36
  %cur_x114 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0113, i32 0, i32 4
  %108 = load i32*, i32** %cur_x114, align 8, !tbaa !84
  %arrayidx115 = getelementptr inbounds i32, i32* %108, i64 %idxprom112
  %109 = load i32, i32* %arrayidx115, align 4, !tbaa !5
  %sub116 = sub nsw i32 %104, %109
  %110 = load i32, i32* %point, align 4, !tbaa !5
  %idxprom117 = sext i32 %110 to i64
  %111 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1118 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %111, i32 0, i32 37
  %cur_y119 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1118, i32 0, i32 5
  %112 = load i32*, i32** %cur_y119, align 8, !tbaa !87
  %arrayidx120 = getelementptr inbounds i32, i32* %112, i64 %idxprom117
  %113 = load i32, i32* %arrayidx120, align 4, !tbaa !5
  %114 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS121 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %114, i32 0, i32 42
  %rp0122 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS121, i32 0, i32 0
  %115 = load i32, i32* %rp0122, align 4, !tbaa !94
  %idxprom123 = sext i32 %115 to i64
  %116 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0124 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %116, i32 0, i32 36
  %cur_y125 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp0124, i32 0, i32 5
  %117 = load i32*, i32** %cur_y125, align 8, !tbaa !85
  %arrayidx126 = getelementptr inbounds i32, i32* %117, i64 %idxprom123
  %118 = load i32, i32* %arrayidx126, align 4, !tbaa !5
  %sub127 = sub nsw i32 %113, %118
  %call128 = call i32 %99(%struct._TExecution_Context* %100, i32 %sub116, i32 %sub127) #5
  store i32 %call128, i32* %cur_dist, align 4, !tbaa !5
  %119 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS129 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %119, i32 0, i32 42
  %auto_flip = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS129, i32 0, i32 9
  %120 = load i32, i32* %auto_flip, align 4, !tbaa !131
  %tobool = icmp ne i32 %120, 0
  br i1 %tobool, label %if.then.130, label %if.end.136

if.then.130:                                      ; preds = %if.end.82
  %121 = load i32, i32* %org_dist, align 4, !tbaa !5
  %122 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %xor = xor i32 %121, %122
  %cmp131 = icmp slt i32 %xor, 0
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.then.130
  %123 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %sub134 = sub nsw i32 0, %123
  store i32 %sub134, i32* %cvt_dist, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.then.130
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.82
  %124 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %124, i32 0, i32 6
  %125 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv137 = zext i8 %125 to i32
  %and = and i32 %conv137, 4
  %cmp138 = icmp ne i32 %and, 0
  br i1 %cmp138, label %if.then.140, label %if.else.169

if.then.140:                                      ; preds = %if.end.136
  %126 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS141 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %126, i32 0, i32 42
  %gep0 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS141, i32 0, i32 18
  %127 = load i32, i32* %gep0, align 4, !tbaa !98
  %128 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS142 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %128, i32 0, i32 42
  %gep1143 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS142, i32 0, i32 19
  %129 = load i32, i32* %gep1143, align 4, !tbaa !99
  %cmp144 = icmp eq i32 %127, %129
  br i1 %cmp144, label %if.then.146, label %if.end.162

if.then.146:                                      ; preds = %if.then.140
  %130 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %131 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub147 = sub nsw i32 %130, %131
  %cmp148 = icmp slt i32 %sub147, 0
  br i1 %cmp148, label %cond.true.150, label %cond.false.153

cond.true.150:                                    ; preds = %if.then.146
  %132 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %133 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub151 = sub nsw i32 %132, %133
  %sub152 = sub nsw i32 0, %sub151
  br label %cond.end.155

cond.false.153:                                   ; preds = %if.then.146
  %134 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %135 = load i32, i32* %org_dist, align 4, !tbaa !5
  %sub154 = sub nsw i32 %134, %135
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.153, %cond.true.150
  %cond156 = phi i32 [ %sub152, %cond.true.150 ], [ %sub154, %cond.false.153 ]
  %136 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS157 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %136, i32 0, i32 42
  %control_value_cutin = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS157, i32 0, i32 10
  %137 = load i32, i32* %control_value_cutin, align 4, !tbaa !103
  %cmp158 = icmp sge i32 %cond156, %137
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %cond.end.155
  %138 = load i32, i32* %org_dist, align 4, !tbaa !5
  store i32 %138, i32* %cvt_dist, align 4, !tbaa !5
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %cond.end.155
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.140
  %139 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_round = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %139, i32 0, i32 48
  %140 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_round, align 8, !tbaa !67
  %141 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %142 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %143 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode163 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %143, i32 0, i32 6
  %144 = load i8, i8* %opcode163, align 1, !tbaa !24
  %conv164 = zext i8 %144 to i32
  %and165 = and i32 %conv164, 3
  %idxprom166 = sext i32 %and165 to i64
  %145 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %145, i32 0, i32 31
  %compensations = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 15
  %arrayidx167 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations, i32 0, i64 %idxprom166
  %146 = load i32, i32* %arrayidx167, align 4, !tbaa !5
  %call168 = call i32 %140(%struct._TExecution_Context* %141, i32 %142, i32 %146) #5
  store i32 %call168, i32* %distance, align 4, !tbaa !5
  br label %if.end.178

if.else.169:                                      ; preds = %if.end.136
  %147 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %148 = load i32, i32* %cvt_dist, align 4, !tbaa !5
  %149 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode170 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %149, i32 0, i32 6
  %150 = load i8, i8* %opcode170, align 1, !tbaa !24
  %conv171 = zext i8 %150 to i32
  %and172 = and i32 %conv171, 3
  %idxprom173 = sext i32 %and172 to i64
  %151 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics174 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %151, i32 0, i32 31
  %compensations175 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics174, i32 0, i32 15
  %arrayidx176 = getelementptr inbounds [4 x i32], [4 x i32]* %compensations175, i32 0, i64 %idxprom173
  %152 = load i32, i32* %arrayidx176, align 4, !tbaa !5
  %call177 = call i32 @Round_None(%struct._TExecution_Context* %147, i32 %148, i32 %152) #5
  store i32 %call177, i32* %distance, align 4, !tbaa !5
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.169, %if.end.162
  %153 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode179 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %153, i32 0, i32 6
  %154 = load i8, i8* %opcode179, align 1, !tbaa !24
  %conv180 = zext i8 %154 to i32
  %and181 = and i32 %conv180, 8
  %cmp182 = icmp ne i32 %and181, 0
  br i1 %cmp182, label %if.then.184, label %if.end.207

if.then.184:                                      ; preds = %if.end.178
  %155 = load i32, i32* %org_dist, align 4, !tbaa !5
  %cmp185 = icmp sge i32 %155, 0
  br i1 %cmp185, label %if.then.187, label %if.else.195

if.then.187:                                      ; preds = %if.then.184
  %156 = load i32, i32* %distance, align 4, !tbaa !5
  %157 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS188 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %157, i32 0, i32 42
  %minimum_distance = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS188, i32 0, i32 7
  %158 = load i32, i32* %minimum_distance, align 4, !tbaa !102
  %cmp189 = icmp slt i32 %156, %158
  br i1 %cmp189, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %if.then.187
  %159 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS192 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %159, i32 0, i32 42
  %minimum_distance193 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS192, i32 0, i32 7
  %160 = load i32, i32* %minimum_distance193, align 4, !tbaa !102
  store i32 %160, i32* %distance, align 4, !tbaa !5
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %if.then.187
  br label %if.end.206

if.else.195:                                      ; preds = %if.then.184
  %161 = load i32, i32* %distance, align 4, !tbaa !5
  %162 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS196 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %162, i32 0, i32 42
  %minimum_distance197 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS196, i32 0, i32 7
  %163 = load i32, i32* %minimum_distance197, align 4, !tbaa !102
  %sub198 = sub nsw i32 0, %163
  %cmp199 = icmp sgt i32 %161, %sub198
  br i1 %cmp199, label %if.then.201, label %if.end.205

if.then.201:                                      ; preds = %if.else.195
  %164 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS202 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %164, i32 0, i32 42
  %minimum_distance203 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS202, i32 0, i32 7
  %165 = load i32, i32* %minimum_distance203, align 4, !tbaa !102
  %sub204 = sub nsw i32 0, %165
  store i32 %sub204, i32* %distance, align 4, !tbaa !5
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.201, %if.else.195
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.194
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.178
  %166 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_move = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %166, i32 0, i32 52
  %167 = load void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)*, void (%struct._TExecution_Context*, %struct._TGlyph_Zone*, i32, i32)** %func_move, align 8, !tbaa !61
  %168 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %169 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1208 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %169, i32 0, i32 37
  %170 = load i32, i32* %point, align 4, !tbaa !5
  %171 = load i32, i32* %distance, align 4, !tbaa !5
  %172 = load i32, i32* %cur_dist, align 4, !tbaa !5
  %sub209 = sub nsw i32 %171, %172
  call void %167(%struct._TExecution_Context* %168, %struct._TGlyph_Zone* %zp1208, i32 %170, i32 %sub209) #5
  %173 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS210 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %173, i32 0, i32 42
  %rp0211 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS210, i32 0, i32 0
  %174 = load i32, i32* %rp0211, align 4, !tbaa !94
  %175 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS212 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %175, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS212, i32 0, i32 1
  store i32 %174, i32* %rp1, align 4, !tbaa !95
  %176 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode213 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %176, i32 0, i32 6
  %177 = load i8, i8* %opcode213, align 1, !tbaa !24
  %conv214 = zext i8 %177 to i32
  %and215 = and i32 %conv214, 16
  %cmp216 = icmp ne i32 %and215, 0
  br i1 %cmp216, label %if.then.218, label %if.end.221

if.then.218:                                      ; preds = %if.end.207
  %178 = load i32, i32* %point, align 4, !tbaa !5
  %179 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS219 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %179, i32 0, i32 42
  %rp0220 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS219, i32 0, i32 0
  store i32 %178, i32* %rp0220, align 4, !tbaa !94
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.218, %if.end.207
  %180 = load i32, i32* %point, align 4, !tbaa !5
  %181 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS222 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %181, i32 0, i32 42
  %rp2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS222, i32 0, i32 2
  store i32 %180, i32* %rp2, align 4, !tbaa !96
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.221, %if.then
  %182 = bitcast i32* %org_dist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %cur_dist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %distance to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %cvt_dist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %cvtEntry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
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
define internal i32 @Ins_SxVTL(%struct._TExecution_Context* %exc, i32 %aIdx1, i32 %aIdx2, i32 %aOpc, %struct._TT_UnitVector* %Vec) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %aIdx1.addr = alloca i32, align 4
  %aIdx2.addr = alloca i32, align 4
  %aOpc.addr = alloca i32, align 4
  %Vec.addr = alloca %struct._TT_UnitVector*, align 8
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %aIdx1, i32* %aIdx1.addr, align 4, !tbaa !5
  store i32 %aIdx2, i32* %aIdx2.addr, align 4, !tbaa !5
  store i32 %aOpc, i32* %aOpc.addr, align 4, !tbaa !5
  store %struct._TT_UnitVector* %Vec, %struct._TT_UnitVector** %Vec.addr, align 8, !tbaa !1
  %0 = bitcast i64* %A to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %B to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %aIdx1.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %aIdx1.addr, align 4, !tbaa !5
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 38
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 0
  %6 = load i32, i32* %n_points, align 4, !tbaa !119
  %cmp1 = icmp sge i32 %4, %6
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %aIdx2.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %8 = load i32, i32* %aIdx2.addr, align 4, !tbaa !5
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 37
  %n_points5 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp1, i32 0, i32 0
  %10 = load i32, i32* %n_points5, align 4, !tbaa !83
  %cmp6 = icmp sge i32 %8, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 1
  store i32 1032, i32* %error, align 4, !tbaa !22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  %12 = load i32, i32* %aIdx2.addr, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp17 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 37
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp17, i32 0, i32 4
  %14 = load i32*, i32** %cur_x, align 8, !tbaa !86
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %16 = load i32, i32* %aIdx1.addr, align 4, !tbaa !5
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp29 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %17, i32 0, i32 38
  %cur_x10 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp29, i32 0, i32 4
  %18 = load i32*, i32** %cur_x10, align 8, !tbaa !92
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom8
  %19 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %19
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %A, align 8, !tbaa !54
  %20 = load i32, i32* %aIdx2.addr, align 4, !tbaa !5
  %idxprom12 = sext i32 %20 to i64
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp113 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 37
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp113, i32 0, i32 5
  %22 = load i32*, i32** %cur_y, align 8, !tbaa !87
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom12
  %23 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %24 = load i32, i32* %aIdx1.addr, align 4, !tbaa !5
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp216 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %25, i32 0, i32 38
  %cur_y17 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp216, i32 0, i32 5
  %26 = load i32*, i32** %cur_y17, align 8, !tbaa !93
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  %27 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %sub19 = sub nsw i32 %23, %27
  %conv20 = sext i32 %sub19 to i64
  store i64 %conv20, i64* %B, align 8, !tbaa !54
  %28 = load i32, i32* %aOpc.addr, align 4, !tbaa !5
  %and = and i32 %28, 1
  %cmp21 = icmp ne i32 %and, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end
  %29 = load i64, i64* %B, align 8, !tbaa !54
  store i64 %29, i64* %C, align 8, !tbaa !54
  %30 = load i64, i64* %A, align 8, !tbaa !54
  store i64 %30, i64* %B, align 8, !tbaa !54
  %31 = load i64, i64* %C, align 8, !tbaa !54
  %sub24 = sub nsw i64 0, %31
  store i64 %sub24, i64* %A, align 8, !tbaa !54
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end
  %32 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %33 = load i64, i64* %A, align 8, !tbaa !54
  %conv26 = trunc i64 %33 to i32
  %34 = load i64, i64* %B, align 8, !tbaa !54
  %conv27 = trunc i64 %34 to i32
  %35 = load %struct._TT_UnitVector*, %struct._TT_UnitVector** %Vec.addr, align 8, !tbaa !1
  %call = call i32 @Normalize(%struct._TExecution_Context* %32, i32 %conv26, i32 %conv27, %struct._TT_UnitVector* %35) #5
  %cmp28 = icmp eq i32 %call, -1
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.25
  %36 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error31 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %36, i32 0, i32 1
  store i32 0, i32* %error31, align 4, !tbaa !22
  %37 = load %struct._TT_UnitVector*, %struct._TT_UnitVector** %Vec.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %37, i32 0, i32 0
  store i16 16384, i16* %x, align 2, !tbaa !141
  %38 = load %struct._TT_UnitVector*, %struct._TT_UnitVector** %Vec.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %38, i32 0, i32 1
  store i16 0, i16* %y, align 2, !tbaa !142
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then
  %39 = bitcast i64* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i64* %B to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i64* %A to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @Normalize(%struct._TExecution_Context* %exc, i32 %Vx, i32 %Vy, %struct._TT_UnitVector* %R) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %Vx.addr = alloca i32, align 4
  %Vy.addr = alloca i32, align 4
  %R.addr = alloca %struct._TT_UnitVector*, align 8
  %W = alloca i32, align 4
  %S1 = alloca i32, align 4
  %S2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %Vx, i32* %Vx.addr, align 4, !tbaa !5
  store i32 %Vy, i32* %Vy.addr, align 4, !tbaa !5
  store %struct._TT_UnitVector* %R, %struct._TT_UnitVector** %R.addr, align 8, !tbaa !1
  %0 = bitcast i32* %W to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %S1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %S2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %5, %cond.false ]
  %conv = sext i32 %cond to i64
  %cmp1 = icmp slt i64 %conv, 65536
  br i1 %cmp1, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %cond.end
  %6 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %land.lhs.true
  %7 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 0, %7
  br label %cond.end.8

cond.false.7:                                     ; preds = %land.lhs.true
  %8 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i32 [ %sub6, %cond.true.5 ], [ %8, %cond.false.7 ]
  %conv10 = sext i32 %cond9 to i64
  %cmp11 = icmp slt i64 %conv10, 65536
  br i1 %cmp11, label %if.then, label %if.end.21

if.then:                                          ; preds = %cond.end.8
  %9 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %9, 256
  store i32 %mul, i32* %Vx.addr, align 4, !tbaa !5
  %10 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %10, 256
  store i32 %mul13, i32* %Vy.addr, align 4, !tbaa !5
  %11 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %12 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %call = call i32 @Norm(i32 %11, i32 %12) #5
  store i32 %call, i32* %W, align 4, !tbaa !5
  %13 = load i32, i32* %W, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %13, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %15 = load i32, i32* %W, align 4, !tbaa !5
  %call17 = call i32 @MulDiv_Round(i32 %14, i32 16384, i32 %15) #5
  %conv18 = trunc i32 %call17 to i16
  %16 = load %struct._TT_UnitVector*, %struct._TT_UnitVector** %R.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %16, i32 0, i32 0
  store i16 %conv18, i16* %x, align 2, !tbaa !141
  %17 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %18 = load i32, i32* %W, align 4, !tbaa !5
  %call19 = call i32 @MulDiv_Round(i32 %17, i32 16384, i32 %18) #5
  %conv20 = trunc i32 %call19 to i16
  %19 = load %struct._TT_UnitVector*, %struct._TT_UnitVector** %R.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %19, i32 0, i32 1
  store i16 %conv20, i16* %y, align 2, !tbaa !142
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %cond.end.8, %cond.end
  %20 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %21 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %call22 = call i32 @Norm(i32 %20, i32 %21) #5
  store i32 %call22, i32* %W, align 4, !tbaa !5
  %22 = load i32, i32* %W, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %23 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %23, i32 0, i32 1
  store i32 1029, i32* %error, align 4, !tbaa !22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %24 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %25 = load i32, i32* %W, align 4, !tbaa !5
  %call27 = call i32 @MulDiv_Round(i32 %24, i32 16384, i32 %25) #5
  store i32 %call27, i32* %Vx.addr, align 4, !tbaa !5
  %26 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %27 = load i32, i32* %W, align 4, !tbaa !5
  %call28 = call i32 @MulDiv_Round(i32 %26, i32 16384, i32 %27) #5
  store i32 %call28, i32* %Vy.addr, align 4, !tbaa !5
  %28 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %29 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %28, %29
  %30 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %31 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %30, %31
  %add = add nsw i32 %mul29, %mul30
  store i32 %add, i32* %W, align 4, !tbaa !5
  %32 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %32, 0
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.end.26
  %33 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %sub34 = sub nsw i32 0, %33
  store i32 %sub34, i32* %Vx.addr, align 4, !tbaa !5
  store i32 1, i32* %S1, align 4, !tbaa !5
  br label %if.end.35

if.else:                                          ; preds = %if.end.26
  store i32 0, i32* %S1, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.33
  %34 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %34, 0
  br i1 %cmp36, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.end.35
  %35 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %sub39 = sub nsw i32 0, %35
  store i32 %sub39, i32* %Vy.addr, align 4, !tbaa !5
  store i32 1, i32* %S2, align 4, !tbaa !5
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.35
  store i32 0, i32* %S2, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.38
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.end.41
  %36 = load i32, i32* %W, align 4, !tbaa !5
  %conv42 = sext i32 %36 to i64
  %cmp43 = icmp slt i64 %conv42, 268435456
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %38 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %37, %38
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %while.body
  %39 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %Vx.addr, align 4, !tbaa !5
  br label %if.end.50

if.else.48:                                       ; preds = %while.body
  %40 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %inc49 = add nsw i32 %40, 1
  store i32 %inc49, i32* %Vy.addr, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.47
  %41 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %42 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %mul51 = mul nsw i32 %41, %42
  %43 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %44 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %mul52 = mul nsw i32 %43, %44
  %add53 = add nsw i32 %mul51, %mul52
  store i32 %add53, i32* %W, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.54

while.cond.54:                                    ; preds = %if.end.64, %while.end
  %45 = load i32, i32* %W, align 4, !tbaa !5
  %conv55 = sext i32 %45 to i64
  %cmp56 = icmp sge i64 %conv55, 268451840
  br i1 %cmp56, label %while.body.58, label %while.end.68

while.body.58:                                    ; preds = %while.cond.54
  %46 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %47 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %46, %47
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %while.body.58
  %48 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %Vx.addr, align 4, !tbaa !5
  br label %if.end.64

if.else.62:                                       ; preds = %while.body.58
  %49 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %dec63 = add nsw i32 %49, -1
  store i32 %dec63, i32* %Vy.addr, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.61
  %50 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %51 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %mul65 = mul nsw i32 %50, %51
  %52 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %53 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %mul66 = mul nsw i32 %52, %53
  %add67 = add nsw i32 %mul65, %mul66
  store i32 %add67, i32* %W, align 4, !tbaa !5
  br label %while.cond.54

while.end.68:                                     ; preds = %while.cond.54
  %54 = load i32, i32* %S1, align 4, !tbaa !5
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %while.end.68
  %55 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %sub70 = sub nsw i32 0, %55
  store i32 %sub70, i32* %Vx.addr, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %while.end.68
  %56 = load i32, i32* %S2, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %56, 0
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.71
  %57 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %sub74 = sub nsw i32 0, %57
  store i32 %sub74, i32* %Vy.addr, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.71
  %58 = load i32, i32* %Vx.addr, align 4, !tbaa !5
  %conv76 = trunc i32 %58 to i16
  %59 = load %struct._TT_UnitVector*, %struct._TT_UnitVector** %R.addr, align 8, !tbaa !1
  %x77 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %59, i32 0, i32 0
  store i16 %conv76, i16* %x77, align 2, !tbaa !141
  %60 = load i32, i32* %Vy.addr, align 4, !tbaa !5
  %conv78 = trunc i32 %60 to i16
  %61 = load %struct._TT_UnitVector*, %struct._TT_UnitVector** %R.addr, align 8, !tbaa !1
  %y79 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %61, i32 0, i32 1
  store i16 %conv78, i16* %y79, align 2, !tbaa !142
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.25, %if.end, %if.then.16
  %62 = bitcast i32* %S2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %S1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %W to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @SkipCode(%struct._TExecution_Context* %exc) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 7
  %1 = load i32, i32* %length, align 4, !tbaa !50
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 4
  %3 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %3, %1
  store i32 %add, i32* %IP, align 4, !tbaa !44
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 4
  %5 = load i32, i32* %IP1, align 4, !tbaa !44
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %codeSize = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 5
  %7 = load i32, i32* %codeSize, align 4, !tbaa !51
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @Calc_Length(%struct._TExecution_Context* %8) #5
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 1
  store i32 1027, i32* %error, align 4, !tbaa !22
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @skip_FDEF(%struct._TExecution_Context* %exc) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i32 @SkipCode(%struct._TExecution_Context* %0) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 6
  %2 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.epilog [
    i32 137, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 1
  store i32 1038, i32* %error, align 4, !tbaa !22
  br label %while.end

sw.bb.1:                                          ; preds = %while.body
  br label %while.end

sw.epilog:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %sw.bb, %sw.bb.1, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Interp(i32 %p1, i32 %p2, i32 %ref1, i32 %ref2, %struct.LOC_Ins_IUP* %LINK) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %ref1.addr = alloca i32, align 4
  %ref2.addr = alloca i32, align 4
  %LINK.addr = alloca %struct.LOC_Ins_IUP*, align 8
  %i = alloca i64, align 8
  %x = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %p1, i32* %p1.addr, align 4, !tbaa !5
  store i32 %p2, i32* %p2.addr, align 4, !tbaa !5
  store i32 %ref1, i32* %ref1.addr, align 4, !tbaa !5
  store i32 %ref2, i32* %ref2.addr, align 4, !tbaa !5
  store %struct.LOC_Ins_IUP* %LINK, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %d2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %p1.addr, align 4, !tbaa !5
  %7 = load i32, i32* %p2.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ref1.addr, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %9, i32 0, i32 0
  %10 = load i32*, i32** %orgs, align 8, !tbaa !110
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %11, i32* %x1, align 4, !tbaa !5
  %12 = load i32, i32* %ref1.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %12 to i64
  %13 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %13, i32 0, i32 1
  %14 = load i32*, i32** %curs, align 8, !tbaa !113
  %arrayidx2 = getelementptr inbounds i32, i32* %14, i64 %idxprom1
  %15 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %16 = load i32, i32* %ref1.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %16 to i64
  %17 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs4 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %17, i32 0, i32 0
  %18 = load i32*, i32** %orgs4, align 8, !tbaa !110
  %arrayidx5 = getelementptr inbounds i32, i32* %18, i64 %idxprom3
  %19 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %19
  store i32 %sub, i32* %d1, align 4, !tbaa !5
  %20 = load i32, i32* %ref2.addr, align 4, !tbaa !5
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs7 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %21, i32 0, i32 0
  %22 = load i32*, i32** %orgs7, align 8, !tbaa !110
  %arrayidx8 = getelementptr inbounds i32, i32* %22, i64 %idxprom6
  %23 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  store i32 %23, i32* %x2, align 4, !tbaa !5
  %24 = load i32, i32* %ref2.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs10 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %25, i32 0, i32 1
  %26 = load i32*, i32** %curs10, align 8, !tbaa !113
  %arrayidx11 = getelementptr inbounds i32, i32* %26, i64 %idxprom9
  %27 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %28 = load i32, i32* %ref2.addr, align 4, !tbaa !5
  %idxprom12 = sext i32 %28 to i64
  %29 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs13 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %29, i32 0, i32 0
  %30 = load i32*, i32** %orgs13, align 8, !tbaa !110
  %arrayidx14 = getelementptr inbounds i32, i32* %30, i64 %idxprom12
  %31 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %sub15 = sub nsw i32 %27, %31
  store i32 %sub15, i32* %d2, align 4, !tbaa !5
  %32 = load i32, i32* %x1, align 4, !tbaa !5
  %33 = load i32, i32* %x2, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %32, %33
  br i1 %cmp16, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %if.end
  %34 = load i32, i32* %p1.addr, align 4, !tbaa !5
  %conv = sext i32 %34 to i64
  store i64 %conv, i64* %i, align 8, !tbaa !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %35 = load i64, i64* %i, align 8, !tbaa !54
  %36 = load i32, i32* %p2.addr, align 4, !tbaa !5
  %conv18 = sext i32 %36 to i64
  %cmp19 = icmp sle i64 %35, %conv18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i64, i64* %i, align 8, !tbaa !54
  %38 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs21 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %38, i32 0, i32 0
  %39 = load i32*, i32** %orgs21, align 8, !tbaa !110
  %arrayidx22 = getelementptr inbounds i32, i32* %39, i64 %37
  %40 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  store i32 %40, i32* %x, align 4, !tbaa !5
  %41 = load i32, i32* %x, align 4, !tbaa !5
  %42 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %41, %42
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.body
  %43 = load i32, i32* %d1, align 4, !tbaa !5
  %44 = load i32, i32* %x, align 4, !tbaa !5
  %add = add nsw i32 %44, %43
  store i32 %add, i32* %x, align 4, !tbaa !5
  br label %if.end.27

if.else:                                          ; preds = %for.body
  %45 = load i32, i32* %d2, align 4, !tbaa !5
  %46 = load i32, i32* %x, align 4, !tbaa !5
  %add26 = add nsw i32 %46, %45
  store i32 %add26, i32* %x, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  %47 = load i32, i32* %x, align 4, !tbaa !5
  %48 = load i64, i64* %i, align 8, !tbaa !54
  %49 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs28 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %49, i32 0, i32 1
  %50 = load i32*, i32** %curs28, align 8, !tbaa !113
  %arrayidx29 = getelementptr inbounds i32, i32* %50, i64 %48
  store i32 %47, i32* %arrayidx29, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %51 = load i64, i64* %i, align 8, !tbaa !54
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %i, align 8, !tbaa !54
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end
  %52 = load i32, i32* %x1, align 4, !tbaa !5
  %53 = load i32, i32* %x2, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %52, %53
  br i1 %cmp31, label %if.then.33, label %if.end.72

if.then.33:                                       ; preds = %if.end.30
  %54 = load i32, i32* %p1.addr, align 4, !tbaa !5
  %conv34 = sext i32 %54 to i64
  store i64 %conv34, i64* %i, align 8, !tbaa !54
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.69, %if.then.33
  %55 = load i64, i64* %i, align 8, !tbaa !54
  %56 = load i32, i32* %p2.addr, align 4, !tbaa !5
  %conv36 = sext i32 %56 to i64
  %cmp37 = icmp sle i64 %55, %conv36
  br i1 %cmp37, label %for.body.39, label %for.end.71

for.body.39:                                      ; preds = %for.cond.35
  %57 = load i64, i64* %i, align 8, !tbaa !54
  %58 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs40 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %58, i32 0, i32 0
  %59 = load i32*, i32** %orgs40, align 8, !tbaa !110
  %arrayidx41 = getelementptr inbounds i32, i32* %59, i64 %57
  %60 = load i32, i32* %arrayidx41, align 4, !tbaa !5
  store i32 %60, i32* %x, align 4, !tbaa !5
  %61 = load i32, i32* %x, align 4, !tbaa !5
  %62 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp42 = icmp sle i32 %61, %62
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %for.body.39
  %63 = load i32, i32* %d1, align 4, !tbaa !5
  %64 = load i32, i32* %x, align 4, !tbaa !5
  %add45 = add nsw i32 %64, %63
  store i32 %add45, i32* %x, align 4, !tbaa !5
  br label %if.end.66

if.else.46:                                       ; preds = %for.body.39
  %65 = load i32, i32* %x, align 4, !tbaa !5
  %66 = load i32, i32* %x2, align 4, !tbaa !5
  %cmp47 = icmp sge i32 %65, %66
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.46
  %67 = load i32, i32* %d2, align 4, !tbaa !5
  %68 = load i32, i32* %x, align 4, !tbaa !5
  %add50 = add nsw i32 %68, %67
  store i32 %add50, i32* %x, align 4, !tbaa !5
  br label %if.end.65

if.else.51:                                       ; preds = %if.else.46
  %69 = load i32, i32* %ref1.addr, align 4, !tbaa !5
  %idxprom52 = sext i32 %69 to i64
  %70 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs53 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %70, i32 0, i32 1
  %71 = load i32*, i32** %curs53, align 8, !tbaa !113
  %arrayidx54 = getelementptr inbounds i32, i32* %71, i64 %idxprom52
  %72 = load i32, i32* %arrayidx54, align 4, !tbaa !5
  %73 = load i32, i32* %x, align 4, !tbaa !5
  %74 = load i32, i32* %x1, align 4, !tbaa !5
  %sub55 = sub nsw i32 %73, %74
  %75 = load i32, i32* %ref2.addr, align 4, !tbaa !5
  %idxprom56 = sext i32 %75 to i64
  %76 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs57 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %76, i32 0, i32 1
  %77 = load i32*, i32** %curs57, align 8, !tbaa !113
  %arrayidx58 = getelementptr inbounds i32, i32* %77, i64 %idxprom56
  %78 = load i32, i32* %arrayidx58, align 4, !tbaa !5
  %79 = load i32, i32* %ref1.addr, align 4, !tbaa !5
  %idxprom59 = sext i32 %79 to i64
  %80 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs60 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %80, i32 0, i32 1
  %81 = load i32*, i32** %curs60, align 8, !tbaa !113
  %arrayidx61 = getelementptr inbounds i32, i32* %81, i64 %idxprom59
  %82 = load i32, i32* %arrayidx61, align 4, !tbaa !5
  %sub62 = sub nsw i32 %78, %82
  %83 = load i32, i32* %x2, align 4, !tbaa !5
  %84 = load i32, i32* %x1, align 4, !tbaa !5
  %sub63 = sub nsw i32 %83, %84
  %call = call i32 @MulDiv_Round(i32 %sub55, i32 %sub62, i32 %sub63) #5
  %add64 = add nsw i32 %72, %call
  store i32 %add64, i32* %x, align 4, !tbaa !5
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.51, %if.then.49
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.44
  %85 = load i32, i32* %x, align 4, !tbaa !5
  %86 = load i64, i64* %i, align 8, !tbaa !54
  %87 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs67 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %87, i32 0, i32 1
  %88 = load i32*, i32** %curs67, align 8, !tbaa !113
  %arrayidx68 = getelementptr inbounds i32, i32* %88, i64 %86
  store i32 %85, i32* %arrayidx68, align 4, !tbaa !5
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.66
  %89 = load i64, i64* %i, align 8, !tbaa !54
  %inc70 = add nsw i64 %89, 1
  store i64 %inc70, i64* %i, align 8, !tbaa !54
  br label %for.cond.35

for.end.71:                                       ; preds = %for.cond.35
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.30
  %90 = load i32, i32* %p1.addr, align 4, !tbaa !5
  %conv73 = sext i32 %90 to i64
  store i64 %conv73, i64* %i, align 8, !tbaa !54
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.109, %if.end.72
  %91 = load i64, i64* %i, align 8, !tbaa !54
  %92 = load i32, i32* %p2.addr, align 4, !tbaa !5
  %conv75 = sext i32 %92 to i64
  %cmp76 = icmp sle i64 %91, %conv75
  br i1 %cmp76, label %for.body.78, label %for.end.111

for.body.78:                                      ; preds = %for.cond.74
  %93 = load i64, i64* %i, align 8, !tbaa !54
  %94 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs79 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %94, i32 0, i32 0
  %95 = load i32*, i32** %orgs79, align 8, !tbaa !110
  %arrayidx80 = getelementptr inbounds i32, i32* %95, i64 %93
  %96 = load i32, i32* %arrayidx80, align 4, !tbaa !5
  store i32 %96, i32* %x, align 4, !tbaa !5
  %97 = load i32, i32* %x, align 4, !tbaa !5
  %98 = load i32, i32* %x2, align 4, !tbaa !5
  %cmp81 = icmp sle i32 %97, %98
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %for.body.78
  %99 = load i32, i32* %d2, align 4, !tbaa !5
  %100 = load i32, i32* %x, align 4, !tbaa !5
  %add84 = add nsw i32 %100, %99
  store i32 %add84, i32* %x, align 4, !tbaa !5
  br label %if.end.106

if.else.85:                                       ; preds = %for.body.78
  %101 = load i32, i32* %x, align 4, !tbaa !5
  %102 = load i32, i32* %x1, align 4, !tbaa !5
  %cmp86 = icmp sge i32 %101, %102
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.else.85
  %103 = load i32, i32* %d1, align 4, !tbaa !5
  %104 = load i32, i32* %x, align 4, !tbaa !5
  %add89 = add nsw i32 %104, %103
  store i32 %add89, i32* %x, align 4, !tbaa !5
  br label %if.end.105

if.else.90:                                       ; preds = %if.else.85
  %105 = load i32, i32* %ref1.addr, align 4, !tbaa !5
  %idxprom91 = sext i32 %105 to i64
  %106 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs92 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %106, i32 0, i32 1
  %107 = load i32*, i32** %curs92, align 8, !tbaa !113
  %arrayidx93 = getelementptr inbounds i32, i32* %107, i64 %idxprom91
  %108 = load i32, i32* %arrayidx93, align 4, !tbaa !5
  %109 = load i32, i32* %x, align 4, !tbaa !5
  %110 = load i32, i32* %x1, align 4, !tbaa !5
  %sub94 = sub nsw i32 %109, %110
  %111 = load i32, i32* %ref2.addr, align 4, !tbaa !5
  %idxprom95 = sext i32 %111 to i64
  %112 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs96 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %112, i32 0, i32 1
  %113 = load i32*, i32** %curs96, align 8, !tbaa !113
  %arrayidx97 = getelementptr inbounds i32, i32* %113, i64 %idxprom95
  %114 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %115 = load i32, i32* %ref1.addr, align 4, !tbaa !5
  %idxprom98 = sext i32 %115 to i64
  %116 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs99 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %116, i32 0, i32 1
  %117 = load i32*, i32** %curs99, align 8, !tbaa !113
  %arrayidx100 = getelementptr inbounds i32, i32* %117, i64 %idxprom98
  %118 = load i32, i32* %arrayidx100, align 4, !tbaa !5
  %sub101 = sub nsw i32 %114, %118
  %119 = load i32, i32* %x2, align 4, !tbaa !5
  %120 = load i32, i32* %x1, align 4, !tbaa !5
  %sub102 = sub nsw i32 %119, %120
  %call103 = call i32 @MulDiv_Round(i32 %sub94, i32 %sub101, i32 %sub102) #5
  %add104 = add nsw i32 %108, %call103
  store i32 %add104, i32* %x, align 4, !tbaa !5
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.90, %if.then.88
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.83
  %121 = load i32, i32* %x, align 4, !tbaa !5
  %122 = load i64, i64* %i, align 8, !tbaa !54
  %123 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs107 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %123, i32 0, i32 1
  %124 = load i32*, i32** %curs107, align 8, !tbaa !113
  %arrayidx108 = getelementptr inbounds i32, i32* %124, i64 %122
  store i32 %121, i32* %arrayidx108, align 4, !tbaa !5
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.106
  %125 = load i64, i64* %i, align 8, !tbaa !54
  %inc110 = add nsw i64 %125, 1
  store i64 %inc110, i64* %i, align 8, !tbaa !54
  br label %for.cond.74

for.end.111:                                      ; preds = %for.cond.74
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.111, %for.end.71, %for.end, %if.then
  %126 = bitcast i32* %d2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
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
define internal void @Shift(i32 %p1, i32 %p2, i32 %p, %struct.LOC_Ins_IUP* %LINK) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %LINK.addr = alloca %struct.LOC_Ins_IUP*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %p1, i32* %p1.addr, align 4, !tbaa !5
  store i32 %p2, i32* %p2.addr, align 4, !tbaa !5
  store i32 %p, i32* %p.addr, align 4, !tbaa !5
  store %struct.LOC_Ins_IUP* %LINK, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %p.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %3, i32 0, i32 1
  %4 = load i32*, i32** %curs, align 8, !tbaa !113
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %6 = load i32, i32* %p.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %orgs = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %7, i32 0, i32 0
  %8 = load i32*, i32** %orgs, align 8, !tbaa !110
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %9
  store i32 %sub, i32* %x, align 4, !tbaa !5
  %10 = load i32, i32* %p1.addr, align 4, !tbaa !5
  store i32 %10, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load i32, i32* %p.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %x, align 4, !tbaa !5
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %14 to i64
  %15 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs4 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %15, i32 0, i32 1
  %16 = load i32*, i32** %curs4, align 8, !tbaa !113
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 %idxprom3
  %17 = load i32, i32* %arrayidx5, align 4, !tbaa !5
  %add = add nsw i32 %17, %13
  store i32 %add, i32* %arrayidx5, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %p.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %19, 1
  store i32 %add6, i32* %i, align 4, !tbaa !5
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.14, %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %p2.addr, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %20, %21
  br i1 %cmp8, label %for.body.9, label %for.end.16

for.body.9:                                       ; preds = %for.cond.7
  %22 = load i32, i32* %x, align 4, !tbaa !5
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct.LOC_Ins_IUP*, %struct.LOC_Ins_IUP** %LINK.addr, align 8, !tbaa !1
  %curs11 = getelementptr inbounds %struct.LOC_Ins_IUP, %struct.LOC_Ins_IUP* %24, i32 0, i32 1
  %25 = load i32*, i32** %curs11, align 8, !tbaa !113
  %arrayidx12 = getelementptr inbounds i32, i32* %25, i64 %idxprom10
  %26 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %add13 = add nsw i32 %26, %22
  store i32 %add13, i32* %arrayidx12, align 4, !tbaa !5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.9
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc15 = add nsw i32 %27, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !5
  br label %for.cond.7

for.end.16:                                       ; preds = %for.cond.7
  %28 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Compute_Point_Displacement(%struct._TExecution_Context* %exc, i32* %x, i32* %y, %struct._TGlyph_Zone* %zone, i32* %refp) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %zone.addr = alloca %struct._TGlyph_Zone*, align 8
  %refp.addr = alloca i32*, align 8
  %zp = alloca %struct._TGlyph_Zone, align 8
  %p = alloca i32, align 4
  %d = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32* %x, i32** %x.addr, align 8, !tbaa !1
  store i32* %y, i32** %y.addr, align 8, !tbaa !1
  store %struct._TGlyph_Zone* %zone, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  store i32* %refp, i32** %refp.addr, align 8, !tbaa !1
  %0 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %opcode = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 6
  %4 = load i8, i8* %opcode, align 1, !tbaa !24
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp0 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %5, i32 0, i32 36
  %6 = bitcast %struct._TGlyph_Zone* %zp to i8*
  %7 = bitcast %struct._TGlyph_Zone* %zp0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 56, i32 8, i1 false), !tbaa.struct !97
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 42
  %rp1 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 1
  %9 = load i32, i32* %rp1, align 4, !tbaa !95
  store i32 %9, i32* %p, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 37
  %11 = bitcast %struct._TGlyph_Zone* %zp to i8*
  %12 = bitcast %struct._TGlyph_Zone* %zp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 56, i32 8, i1 false), !tbaa.struct !97
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 42
  %rp2 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS1, i32 0, i32 2
  %14 = load i32, i32* %rp2, align 4, !tbaa !96
  store i32 %14, i32* %p, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %p, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i32, i32* %p, align 4, !tbaa !5
  %n_points = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 0
  %17 = load i32, i32* %n_points, align 4, !tbaa !120
  %cmp3 = icmp sge i32 %16, %17
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %18 = load i32*, i32** %refp.addr, align 8, !tbaa !1
  store i32 0, i32* %18, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  %19 = load %struct._TGlyph_Zone*, %struct._TGlyph_Zone** %zone.addr, align 8, !tbaa !1
  %20 = bitcast %struct._TGlyph_Zone* %19 to i8*
  %21 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 56, i32 8, i1 false), !tbaa.struct !97
  %22 = load i32, i32* %p, align 4, !tbaa !5
  %23 = load i32*, i32** %refp.addr, align 8, !tbaa !1
  store i32 %22, i32* %23, align 4, !tbaa !5
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %func_project = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 49
  %25 = load i32 (%struct._TExecution_Context*, i32, i32)*, i32 (%struct._TExecution_Context*, i32, i32)** %func_project, align 8, !tbaa !63
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %27 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 4
  %28 = load i32*, i32** %cur_x, align 8, !tbaa !74
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %30 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom7 = sext i32 %30 to i64
  %org_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 2
  %31 = load i32*, i32** %org_x, align 8, !tbaa !143
  %arrayidx8 = getelementptr inbounds i32, i32* %31, i64 %idxprom7
  %32 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %sub = sub nsw i32 %29, %32
  %33 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom9 = sext i32 %33 to i64
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 5
  %34 = load i32*, i32** %cur_y, align 8, !tbaa !76
  %arrayidx10 = getelementptr inbounds i32, i32* %34, i64 %idxprom9
  %35 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %36 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom11 = sext i32 %36 to i64
  %org_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp, i32 0, i32 3
  %37 = load i32*, i32** %org_y, align 8, !tbaa !144
  %arrayidx12 = getelementptr inbounds i32, i32* %37, i64 %idxprom11
  %38 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %sub13 = sub nsw i32 %35, %38
  %call = call i32 %25(%struct._TExecution_Context* %26, i32 %sub, i32 %sub13) #5
  store i32 %call, i32* %d, align 4, !tbaa !5
  %39 = load i32, i32* %d, align 4, !tbaa !5
  %40 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %40, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS14, i32 0, i32 5
  %x15 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %41 = load i16, i16* %x15, align 2, !tbaa !55
  %conv16 = sext i16 %41 to i64
  %mul = mul nsw i64 %conv16, 65536
  %conv17 = trunc i64 %mul to i32
  %42 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %42, i32 0, i32 47
  %43 = load i64, i64* %F_dot_P, align 8, !tbaa !58
  %conv18 = trunc i64 %43 to i32
  %call19 = call i32 @MulDiv_Round(i32 %39, i32 %conv17, i32 %conv18) #5
  %44 = load i32*, i32** %x.addr, align 8, !tbaa !1
  store i32 %call19, i32* %44, align 4, !tbaa !5
  %45 = load i32, i32* %d, align 4, !tbaa !5
  %46 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS20 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %46, i32 0, i32 42
  %freeVector21 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS20, i32 0, i32 5
  %y22 = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector21, i32 0, i32 1
  %47 = load i16, i16* %y22, align 2, !tbaa !59
  %conv23 = sext i16 %47 to i64
  %mul24 = mul nsw i64 %conv23, 65536
  %conv25 = trunc i64 %mul24 to i32
  %48 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %F_dot_P26 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %48, i32 0, i32 47
  %49 = load i64, i64* %F_dot_P26, align 8, !tbaa !58
  %conv27 = trunc i64 %49 to i32
  %call28 = call i32 @MulDiv_Round(i32 %45, i32 %conv25, i32 %conv27) #5
  %50 = load i32*, i32** %y.addr, align 8, !tbaa !1
  store i32 %call28, i32* %50, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %51 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct._TGlyph_Zone* %zp to i8*
  call void @llvm.lifetime.end(i64 56, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal void @Move_Zp2_Point(%struct._TExecution_Context* %exc, i64 %point, i32 %dx, i32 %dy, i32 %touch) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %point.addr = alloca i64, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %touch.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i64 %point, i64* %point.addr, align 8, !tbaa !54
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !5
  store i32 %touch, i32* %touch.addr, align 4, !tbaa !5
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 42
  %freeVector = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS, i32 0, i32 5
  %x = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector, i32 0, i32 0
  %1 = load i16, i16* %x, align 2, !tbaa !55
  %conv = sext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %3 = load i64, i64* %point.addr, align 8, !tbaa !54
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 38
  %cur_x = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp2, i32 0, i32 4
  %5 = load i32*, i32** %cur_x, align 8, !tbaa !92
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %3
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %6, %2
  store i32 %add, i32* %arrayidx, align 4, !tbaa !5
  %7 = load i32, i32* %touch.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load i64, i64* %point.addr, align 8, !tbaa !54
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 38
  %touch4 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp23, i32 0, i32 6
  %10 = load i8*, i8** %touch4, align 8, !tbaa !88
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %8
  %11 = load i8, i8* %arrayidx5, align 1, !tbaa !25
  %conv6 = zext i8 %11 to i32
  %or = or i32 %conv6, 2
  %conv7 = trunc i32 %or to i8
  store i8 %conv7, i8* %arrayidx5, align 1, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %12 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %GS9 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %12, i32 0, i32 42
  %freeVector10 = getelementptr inbounds %struct._TGraphicsState, %struct._TGraphicsState* %GS9, i32 0, i32 5
  %y = getelementptr inbounds %struct._TT_UnitVector, %struct._TT_UnitVector* %freeVector10, i32 0, i32 1
  %13 = load i16, i16* %y, align 2, !tbaa !59
  %conv11 = sext i16 %13 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.end.8
  %14 = load i32, i32* %dy.addr, align 4, !tbaa !5
  %15 = load i64, i64* %point.addr, align 8, !tbaa !54
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp215 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 38
  %cur_y = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp215, i32 0, i32 5
  %17 = load i32*, i32** %cur_y, align 8, !tbaa !93
  %arrayidx16 = getelementptr inbounds i32, i32* %17, i64 %15
  %18 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %18, %14
  store i32 %add17, i32* %arrayidx16, align 4, !tbaa !5
  %19 = load i32, i32* %touch.addr, align 4, !tbaa !5
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.then.14
  %20 = load i64, i64* %point.addr, align 8, !tbaa !54
  %21 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %zp220 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %21, i32 0, i32 38
  %touch21 = getelementptr inbounds %struct._TGlyph_Zone, %struct._TGlyph_Zone* %zp220, i32 0, i32 6
  %22 = load i8*, i8** %touch21, align 8, !tbaa !88
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 %20
  %23 = load i8, i8* %arrayidx22, align 1, !tbaa !25
  %conv23 = zext i8 %23 to i32
  %or24 = or i32 %conv23, 4
  %conv25 = trunc i32 %or24 to i8
  store i8 %conv25, i8* %arrayidx22, align 1, !tbaa !25
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.19, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i16 @GetShortIns(%struct._TExecution_Context* %exc) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 4
  %1 = load i32, i32* %IP, align 4, !tbaa !44
  %add = add nsw i32 %1, 2
  store i32 %add, i32* %IP, align 4, !tbaa !44
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 4
  %3 = load i32, i32* %IP1, align 4, !tbaa !44
  %sub = sub nsw i32 %3, 2
  %idxprom = sext i32 %sub to i64
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 3
  %5 = load i8*, i8** %code, align 8, !tbaa !68
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  %shl = shl i32 %conv, 8
  %7 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %IP2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %7, i32 0, i32 4
  %8 = load i32, i32* %IP2, align 4, !tbaa !44
  %sub3 = sub nsw i32 %8, 1
  %idxprom4 = sext i32 %sub3 to i64
  %9 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %code5 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %9, i32 0, i32 3
  %10 = load i8*, i8** %code5, align 8, !tbaa !68
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %11 = load i8, i8* %arrayidx6, align 1, !tbaa !25
  %conv7 = zext i8 %11 to i32
  %add8 = add nsw i32 %shl, %conv7
  %conv9 = trunc i32 %add8 to i16
  ret i16 %conv9
}

; Function Attrs: nounwind uwtable
define internal i32 @Current_Ppem(%struct._TExecution_Context* %exc) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %0 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %0, i32 0, i32 31
  %ppem = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 11
  %1 = load i32, i32* %ppem, align 4, !tbaa !145
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %call = call i64 @Current_Ratio(%struct._TExecution_Context* %2) #5
  %conv = trunc i64 %call to i32
  %call1 = call i32 @MulDiv_Round(i32 %1, i32 %conv, i32 65536) #5
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @FUnits_To_Pixels(%struct._TExecution_Context* %exc, i32 %distance) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %distance.addr = alloca i32, align 4
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %distance, i32* %distance.addr, align 4, !tbaa !5
  %0 = load i32, i32* %distance.addr, align 4, !tbaa !5
  %1 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %1, i32 0, i32 31
  %scale1 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics, i32 0, i32 13
  %2 = load i64, i64* %scale1, align 8, !tbaa !146
  %conv = trunc i64 %2 to i32
  %3 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %metrics1 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %3, i32 0, i32 31
  %scale2 = getelementptr inbounds %struct._TIns_Metrics, %struct._TIns_Metrics* %metrics1, i32 0, i32 14
  %4 = load i64, i64* %scale2, align 8, !tbaa !147
  %conv2 = trunc i64 %4 to i32
  %call = call i32 @MulDiv_Round(i32 %0, i32 %conv, i32 %conv2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @SetSuperRound(%struct._TExecution_Context* %exc, i32 %GridPeriod, i64 %selector) #0 {
entry:
  %exc.addr = alloca %struct._TExecution_Context*, align 8
  %GridPeriod.addr = alloca i32, align 4
  %selector.addr = alloca i64, align 8
  store %struct._TExecution_Context* %exc, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  store i32 %GridPeriod, i32* %GridPeriod.addr, align 4, !tbaa !5
  store i64 %selector, i64* %selector.addr, align 8, !tbaa !54
  %0 = load i64, i64* %selector.addr, align 8, !tbaa !54
  %and = and i64 %0, 192
  switch i64 %and, label %sw.epilog [
    i64 0, label %sw.bb
    i64 64, label %sw.bb.1
    i64 128, label %sw.bb.3
    i64 192, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %GridPeriod.addr, align 4, !tbaa !5
  %div = sdiv i32 %1, 2
  %2 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %2, i32 0, i32 28
  store i32 %div, i32* %period, align 4, !tbaa !79
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load i32, i32* %GridPeriod.addr, align 4, !tbaa !5
  %4 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period2 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %4, i32 0, i32 28
  store i32 %3, i32* %period2, align 4, !tbaa !79
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load i32, i32* %GridPeriod.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %5, 2
  %6 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period4 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %6, i32 0, i32 28
  store i32 %mul, i32* %period4, align 4, !tbaa !79
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %7 = load i32, i32* %GridPeriod.addr, align 4, !tbaa !5
  %8 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period6 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %8, i32 0, i32 28
  store i32 %7, i32* %period6, align 4, !tbaa !79
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %9 = load i64, i64* %selector.addr, align 8, !tbaa !54
  %and7 = and i64 %9, 48
  switch i64 %and7, label %sw.epilog.21 [
    i64 0, label %sw.bb.8
    i64 16, label %sw.bb.9
    i64 32, label %sw.bb.13
    i64 48, label %sw.bb.17
  ]

sw.bb.8:                                          ; preds = %sw.epilog
  %10 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %10, i32 0, i32 29
  store i32 0, i32* %phase, align 4, !tbaa !77
  br label %sw.epilog.21

sw.bb.9:                                          ; preds = %sw.epilog
  %11 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period10 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %11, i32 0, i32 28
  %12 = load i32, i32* %period10, align 4, !tbaa !79
  %div11 = sdiv i32 %12, 4
  %13 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase12 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %13, i32 0, i32 29
  store i32 %div11, i32* %phase12, align 4, !tbaa !77
  br label %sw.epilog.21

sw.bb.13:                                         ; preds = %sw.epilog
  %14 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period14 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %14, i32 0, i32 28
  %15 = load i32, i32* %period14, align 4, !tbaa !79
  %div15 = sdiv i32 %15, 2
  %16 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase16 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %16, i32 0, i32 29
  store i32 %div15, i32* %phase16, align 4, !tbaa !77
  br label %sw.epilog.21

sw.bb.17:                                         ; preds = %sw.epilog
  %17 = load i32, i32* %GridPeriod.addr, align 4, !tbaa !5
  %mul18 = mul nsw i32 %17, 3
  %div19 = sdiv i32 %mul18, 4
  %18 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase20 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %18, i32 0, i32 29
  store i32 %div19, i32* %phase20, align 4, !tbaa !77
  br label %sw.epilog.21

sw.epilog.21:                                     ; preds = %sw.epilog, %sw.bb.17, %sw.bb.13, %sw.bb.9, %sw.bb.8
  %19 = load i64, i64* %selector.addr, align 8, !tbaa !54
  %and22 = and i64 %19, 15
  %cmp = icmp eq i64 %and22, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog.21
  %20 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period23 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %20, i32 0, i32 28
  %21 = load i32, i32* %period23, align 4, !tbaa !79
  %sub = sub nsw i32 %21, 1
  %22 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %threshold = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %22, i32 0, i32 30
  store i32 %sub, i32* %threshold, align 4, !tbaa !78
  br label %if.end

if.else:                                          ; preds = %sw.epilog.21
  %23 = load i64, i64* %selector.addr, align 8, !tbaa !54
  %and24 = and i64 %23, 15
  %conv = trunc i64 %and24 to i32
  %conv25 = sext i32 %conv to i64
  %sub26 = sub nsw i64 %conv25, 4
  %24 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period27 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %24, i32 0, i32 28
  %25 = load i32, i32* %period27, align 4, !tbaa !79
  %conv28 = sext i32 %25 to i64
  %mul29 = mul nsw i64 %sub26, %conv28
  %div30 = sdiv i64 %mul29, 8
  %conv31 = trunc i64 %div30 to i32
  %26 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %threshold32 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %26, i32 0, i32 30
  store i32 %conv31, i32* %threshold32, align 4, !tbaa !78
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %period33 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %27, i32 0, i32 28
  %28 = load i32, i32* %period33, align 4, !tbaa !79
  %div34 = sdiv i32 %28, 256
  store i32 %div34, i32* %period33, align 4, !tbaa !79
  %29 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %phase35 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %29, i32 0, i32 29
  %30 = load i32, i32* %phase35, align 4, !tbaa !77
  %div36 = sdiv i32 %30, 256
  store i32 %div36, i32* %phase35, align 4, !tbaa !77
  %31 = load %struct._TExecution_Context*, %struct._TExecution_Context** %exc.addr, align 8, !tbaa !1
  %threshold37 = getelementptr inbounds %struct._TExecution_Context, %struct._TExecution_Context* %31, i32 0, i32 30
  %32 = load i32, i32* %threshold37, align 4, !tbaa !78
  %div38 = sdiv i32 %32, 256
  store i32 %div38, i32* %threshold37, align 4, !tbaa !78
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !10, i64 552}
!8 = !{!"_TExecution_Context", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !6, i64 24, !6, i64 28, !3, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !2, i64 64, !6, i64 72, !3, i64 76, !2, i64 336, !6, i64 344, !6, i64 348, !6, i64 352, !2, i64 360, !3, i64 368, !6, i64 416, !2, i64 424, !6, i64 432, !6, i64 436, !2, i64 440, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !9, i64 472, !6, i64 600, !10, i64 608, !10, i64 616, !6, i64 624, !11, i64 632, !11, i64 688, !11, i64 744, !11, i64 800, !11, i64 856, !6, i64 912, !12, i64 920, !12, i64 1008, !6, i64 1096, !6, i64 1100, !2, i64 1104, !10, i64 1112, !2, i64 1120, !2, i64 1128, !2, i64 1136, !2, i64 1144, !2, i64 1152, !2, i64 1160, !2, i64 1168, !2, i64 1176, !15, i64 1184, !6, i64 1392, !6, i64 1396, !6, i64 1400, !6, i64 1404, !2, i64 1408}
!9 = !{!"_TIns_Metrics", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !3, i64 104, !6, i64 120, !6, i64 124}
!10 = !{!"long", !3, i64 0}
!11 = !{!"_TGlyph_Zone", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!12 = !{!"_TGraphicsState", !6, i64 0, !6, i64 4, !6, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !3, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84}
!13 = !{!"_TT_UnitVector", !14, i64 0, !14, i64 2}
!14 = !{!"short", !3, i64 0}
!15 = !{!"", !3, i64 0}
!16 = !{!8, !6, i64 484}
!17 = !{!8, !6, i64 488}
!18 = !{!8, !2, i64 1160}
!19 = !{!8, !2, i64 1168}
!20 = !{!8, !2, i64 1176}
!21 = !{!8, !6, i64 956}
!22 = !{!8, !6, i64 8}
!23 = !{!8, !6, i64 436}
!24 = !{!8, !3, i64 32}
!25 = !{!3, !3, i64 0}
!26 = !{!8, !6, i64 448}
!27 = !{!8, !6, i64 452}
!28 = !{!8, !6, i64 432}
!29 = !{!8, !6, i64 40}
!30 = !{!31, !2, i64 8}
!31 = !{!"", !2, i64 0, !2, i64 8}
!32 = !{!8, !2, i64 440}
!33 = !{!8, !6, i64 56}
!34 = !{!8, !2, i64 64}
!35 = !{!36, !6, i64 12}
!36 = !{!"_TDefRecord", !6, i64 0, !6, i64 4, !3, i64 8, !6, i64 12}
!37 = !{!36, !3, i64 8}
!38 = !{!8, !6, i64 348}
!39 = !{!8, !6, i64 352}
!40 = !{!8, !2, i64 360}
!41 = !{!8, !6, i64 12}
!42 = !{!43, !6, i64 0}
!43 = !{!"_TCallRecord", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!44 = !{!8, !6, i64 24}
!45 = !{!43, !6, i64 4}
!46 = !{!43, !6, i64 8}
!47 = !{!36, !6, i64 4}
!48 = !{!43, !6, i64 12}
!49 = !{!36, !6, i64 0}
!50 = !{!8, !6, i64 36}
!51 = !{!8, !6, i64 28}
!52 = !{!8, !6, i64 912}
!53 = !{!8, !2, i64 1104}
!54 = !{!10, !10, i64 0}
!55 = !{!8, !14, i64 940}
!56 = !{!8, !2, i64 1144}
!57 = !{!8, !14, i64 936}
!58 = !{!8, !10, i64 1112}
!59 = !{!8, !14, i64 942}
!60 = !{!8, !14, i64 938}
!61 = !{!8, !2, i64 1152}
!62 = !{!8, !6, i64 624}
!63 = !{!8, !2, i64 1128}
!64 = !{!8, !14, i64 932}
!65 = !{!8, !2, i64 1136}
!66 = !{!8, !14, i64 934}
!67 = !{!8, !2, i64 1120}
!68 = !{!8, !2, i64 16}
!69 = !{!70, !2, i64 0}
!70 = !{!"_TCodeRange", !2, i64 0, !6, i64 8}
!71 = !{!70, !6, i64 8}
!72 = !{!8, !10, i64 528}
!73 = !{!8, !10, i64 536}
!74 = !{!11, !2, i64 24}
!75 = !{!11, !2, i64 40}
!76 = !{!11, !2, i64 32}
!77 = !{!8, !6, i64 460}
!78 = !{!8, !6, i64 464}
!79 = !{!8, !6, i64 456}
!80 = !{!14, !14, i64 0}
!81 = !{i64 0, i64 2, !80, i64 2, i64 2, !80}
!82 = !{!8, !6, i64 632}
!83 = !{!8, !6, i64 688}
!84 = !{!8, !2, i64 656}
!85 = !{!8, !2, i64 664}
!86 = !{!8, !2, i64 712}
!87 = !{!8, !2, i64 720}
!88 = !{!8, !2, i64 784}
!89 = !{!90, !6, i64 0}
!90 = !{!"_TT_Vector", !6, i64 0, !6, i64 4}
!91 = !{!90, !6, i64 4}
!92 = !{!8, !2, i64 768}
!93 = !{!8, !2, i64 776}
!94 = !{!8, !6, i64 920}
!95 = !{!8, !6, i64 924}
!96 = !{!8, !6, i64 928}
!97 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!98 = !{!8, !6, i64 996}
!99 = !{!8, !6, i64 1000}
!100 = !{!8, !6, i64 1004}
!101 = !{!8, !10, i64 944}
!102 = !{!8, !6, i64 952}
!103 = !{!8, !6, i64 964}
!104 = !{!8, !6, i64 968}
!105 = !{!8, !6, i64 972}
!106 = !{!8, !2, i64 672}
!107 = !{!8, !6, i64 44}
!108 = !{!8, !2, i64 48}
!109 = !{!8, !2, i64 808}
!110 = !{!111, !2, i64 0}
!111 = !{!"LOC_Ins_IUP", !2, i64 0, !2, i64 8}
!112 = !{!8, !2, i64 824}
!113 = !{!111, !2, i64 8}
!114 = !{!8, !2, i64 816}
!115 = !{!8, !2, i64 832}
!116 = !{!8, !2, i64 848}
!117 = !{!8, !2, i64 840}
!118 = !{!8, !6, i64 804}
!119 = !{!8, !6, i64 744}
!120 = !{!11, !6, i64 0}
!121 = !{!8, !2, i64 640}
!122 = !{!8, !2, i64 648}
!123 = !{!8, !2, i64 696}
!124 = !{!8, !2, i64 704}
!125 = !{!8, !2, i64 752}
!126 = !{!8, !2, i64 760}
!127 = !{!8, !6, i64 1100}
!128 = !{!8, !6, i64 416}
!129 = !{!8, !2, i64 424}
!130 = !{!8, !6, i64 472}
!131 = !{!8, !6, i64 960}
!132 = !{!8, !6, i64 976}
!133 = !{!8, !6, i64 980}
!134 = !{!8, !6, i64 800}
!135 = !{!8, !6, i64 988}
!136 = !{!8, !6, i64 592}
!137 = !{!8, !6, i64 596}
!138 = !{!8, !6, i64 72}
!139 = !{!8, !6, i64 992}
!140 = !{!8, !3, i64 984}
!141 = !{!13, !14, i64 0}
!142 = !{!13, !14, i64 2}
!143 = !{!11, !2, i64 8}
!144 = !{!11, !2, i64 16}
!145 = !{!8, !6, i64 544}
!146 = !{!8, !10, i64 560}
!147 = !{!8, !10, i64 568}
