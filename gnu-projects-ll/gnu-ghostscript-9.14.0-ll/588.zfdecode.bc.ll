; ModuleID = './zfdecode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.stream_CF_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.dict_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.0, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.1, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }
%struct.stream_PDiff_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i8, i32, i32, [60 x i32] }
%struct.stream_PNGP_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i8, i32, i8*, i32, i64, [512 x i8] }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.stream_LZW_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { %struct.lzw_decode_s* }
%struct.lzw_decode_s = type opaque
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.stream_CFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Predictor\00", align 1
@s_PDiffD_template = external constant %struct.stream_template_s, align 8
@s_PNGPD_template = external constant %struct.stream_template_s, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"EarlyChange\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"InitialCodeLength\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"FirstBitLowOrder\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"BlockData\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Columns\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"1ASCII85Encode\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"1ASCII85Decode\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"2CCITTFaxDecode\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"1LZWDecode\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"2PixelDifferenceDecode\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"2PixelDifferenceEncode\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"2PNGPredictorDecode\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"2PNGPredictorEncode\00", align 1
@zfdecode_op_defs = constant [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zA85E }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zA85D }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zCFD }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zLZWD }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zPDiffD }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zPDiffE }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zPNGPD }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zPNGPE }, %struct.op_def zeroinitializer], align 16
@s_A85E_template = external constant %struct.stream_template_s, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"PDFRules\00", align 1
@s_A85D_template = external constant %struct.stream_template_s, align 8
@s_CFD_template = external constant %struct.stream_template_s, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"LowBitFirst\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"UnitSize\00", align 1
@s_LZWD_template = external constant %struct.stream_template_s, align 8
@s_PDiffE_template = external constant %struct.stream_template_s, align 8
@s_PNGPE_template = external constant %struct.stream_template_s, align 8

; Function Attrs: nounwind uwtable
define i32 @zcf_setup(%struct.ref_s* %op, %struct.stream_CF_state_s* %pcfs, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pcfs.addr = alloca %struct.stream_CF_state_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %list = alloca %struct.dict_param_list_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.stream_CF_state_s* %pcfs, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @dict_param_list_read(%struct.dict_param_list_s* %list, %struct.ref_s* %2, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %Uncompressed = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %6, i32 0, i32 8
  store i32 0, i32* %Uncompressed, align 4, !tbaa !7
  %7 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %7, i32 0, i32 9
  store i32 0, i32* %K, align 4, !tbaa !9
  %8 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %EndOfLine = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %8, i32 0, i32 10
  store i32 0, i32* %EndOfLine, align 4, !tbaa !10
  %9 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %EncodedByteAlign = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %9, i32 0, i32 11
  store i32 0, i32* %EncodedByteAlign, align 4, !tbaa !11
  %10 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %10, i32 0, i32 12
  store i32 1728, i32* %Columns, align 4, !tbaa !12
  %11 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %11, i32 0, i32 13
  store i32 0, i32* %Rows, align 4, !tbaa !13
  %12 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %12, i32 0, i32 14
  store i32 1, i32* %EndOfBlock, align 4, !tbaa !14
  %13 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %13, i32 0, i32 15
  store i32 0, i32* %BlackIs1, align 4, !tbaa !15
  %14 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %DamagedRowsBeforeError = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %14, i32 0, i32 16
  store i32 0, i32* %DamagedRowsBeforeError, align 4, !tbaa !16
  %15 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %15, i32 0, i32 5
  store i32 0, i32* %FirstBitLowOrder, align 4, !tbaa !17
  %16 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %16, i32 0, i32 17
  store i32 1, i32* %DecodedByteAlign, align 4, !tbaa !18
  %17 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %17, i32 0, i32 19
  store i8* null, i8** %lbuf, align 8, !tbaa !19
  %18 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %18, i32 0, i32 20
  store i8* null, i8** %lprev, align 8, !tbaa !20
  %19 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %error_string = getelementptr inbounds %struct.stream_CF_state_s, %struct.stream_CF_state_s* %19, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !21
  %20 = bitcast %struct.dict_param_list_s* %list to %struct.gs_param_list_s*
  %21 = load %struct.stream_CF_state_s*, %struct.stream_CF_state_s** %pcfs.addr, align 8, !tbaa !1
  %call1 = call i32 @s_CF_put_params(%struct.gs_param_list_s* %20, %struct.stream_CF_state_s* %21) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %memory = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %memory2 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !22
  %results = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 6
  %25 = load i32*, i32** %results, align 8, !tbaa !30
  %26 = bitcast i32* %25 to i8*
  call void %23(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #3
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_param_list_read(%struct.dict_param_list_s*, %struct.ref_s*, %struct.ref_s*, i32, %struct.gs_ref_memory_s*) #2

declare i32 @s_CF_put_params(%struct.gs_param_list_s*, %struct.stream_CF_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @filter_read_predictor(%struct.gs_context_state_s* %i_ctx_p, i32 %npop, %struct.stream_template_s* %templat, %struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %npop.addr = alloca i32, align 4
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %st.addr = alloca %struct.stream_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %predictor = alloca i32, align 4
  %code = alloca i32, align 4
  %pds = alloca %struct.stream_PDiff_state_s, align 8
  %pps = alloca %struct.stream_PNGP_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %rsource = alloca %struct.ref_s, align 8
  %rdict = alloca %struct.ref_s, align 8
  %code19 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %npop, i32* %npop.addr, align 4, !tbaa !5
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.start(i64 376, i8* %5) #1
  %6 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.start(i64 672, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_int_param(%struct.ref_s* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 15, i32 1, i32* %predictor) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %predictor, align 4, !tbaa !5
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
    i32 2, label %sw.bb.5
    i32 10, label %sw.bb.7
    i32 11, label %sw.bb.7
    i32 12, label %sw.bb.7
    i32 13, label %sw.bb.7
    i32 14, label %sw.bb.7
    i32 15, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %predictor, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @zpd_setup(%struct.ref_s* %13, %struct.stream_PDiff_state_s* %pds) #3
  store i32 %call6, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call8 = call i32 @zpp_setup(%struct.ref_s* %14, %struct.stream_PNGP_state_s* %pps) #3
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

sw.epilog:                                        ; preds = %sw.bb.7, %sw.bb.5, %sw.bb, %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %15, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.epilog
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.12:                                        ; preds = %sw.epilog
  br label %if.end.13

if.else:                                          ; preds = %entry
  store i32 1, i32* %predictor, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.end.12
  %17 = load i32, i32* %predictor, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %17, 1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load i32, i32* %npop.addr, align 4, !tbaa !5
  %20 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %21 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call17 = call i32 @filter_read(%struct.gs_context_state_s* %18, i32 %19, %struct.stream_template_s* %20, %struct.stream_state_s* %21, i32 0) #3
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.18:                                        ; preds = %if.end.13
  %22 = bitcast %struct.ref_s* %rsource to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = bitcast i32* %code19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %26 = bitcast %struct.ref_s* %rsource to i8*
  %27 = bitcast %struct.ref_s* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false), !tbaa.struct !41
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %29 = bitcast %struct.ref_s* %rdict to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !41
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %32 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %33 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call20 = call i32 @filter_read(%struct.gs_context_state_s* %31, i32 1, %struct.stream_template_s* %32, %struct.stream_state_s* %33, i32 0) #3
  store i32 %call20, i32* %code19, align 4, !tbaa !5
  %34 = load i32, i32* %code19, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %34, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %35 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.18
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !31
  store %struct.ref_s* %37, %struct.ref_s** %op, align 8, !tbaa !1
  %38 = load i32, i32* %predictor, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %38, 2
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %40 = bitcast %struct.stream_PDiff_state_s* %pds to %struct.stream_state_s*
  %call30 = call i32 @filter_read(%struct.gs_context_state_s* %39, i32 0, %struct.stream_template_s* @s_PDiffD_template, %struct.stream_state_s* %40, i32 0) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %42 = bitcast %struct.stream_PNGP_state_s* %pps to %struct.stream_state_s*
  %call31 = call i32 @filter_read(%struct.gs_context_state_s* %41, i32 0, %struct.stream_template_s* @s_PNGPD_template, %struct.stream_state_s* %42, i32 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call30, %cond.true ], [ %call31, %cond.false ]
  store i32 %cond, i32* %code19, align 4, !tbaa !5
  %43 = load i32, i32* %code19, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %43, 0
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %cond.end
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack36 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p37, align 8, !tbaa !31
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %47 = bitcast %struct.ref_s* %add.ptr38 to i8*
  %48 = bitcast %struct.ref_s* %rsource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false), !tbaa.struct !41
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %50 = bitcast %struct.ref_s* %49 to i8*
  %51 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false), !tbaa.struct !41
  %52 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %cond.end
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @filter_mark_strm_temp(%struct.ref_s* %53, i32 2) #3
  %54 = load i32, i32* %code19, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.34, %if.then.23
  %55 = bitcast i32* %code19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.ref_s* %rdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %57 = bitcast %struct.ref_s* %rsource to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #1
  br label %cleanup.42

cleanup.42:                                       ; preds = %cleanup, %if.then.16, %if.then.11, %sw.default, %if.then.4
  %58 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.end(i64 672, i8* %58) #1
  %59 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.end(i64 376, i8* %59) #1
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @zpd_setup(%struct.ref_s* %op, %struct.stream_PDiff_state_s* %ppds) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %ppds.addr = alloca %struct.stream_PDiff_state_s*, align 8
  %code = alloca i32, align 4
  %bpc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.stream_PDiff_state_s* %ppds, %struct.stream_PDiff_state_s** %ppds.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %5) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %7, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = load i16, i16* %type_attrs3, align 2, !tbaa !46
  %conv4 = zext i16 %8 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %10 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ppds.addr, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %10, i32 0, i32 5
  %call7 = call i32 @dict_int_param(%struct.ref_s* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 60, i32 1, i32* %Colors) #3
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call10 = call i32 @dict_int_param(%struct.ref_s* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 1, i32 16, i32 8, i32* %bpc) #3
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.21, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %bpc, align 4, !tbaa !5
  %13 = load i32, i32* %bpc, align 4, !tbaa !5
  %sub = sub nsw i32 %13, 1
  %and14 = and i32 %12, %sub
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %15 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ppds.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %15, i32 0, i32 7
  %call18 = call i32 @dict_int_param(%struct.ref_s* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 2147483647, i32 1, i32* %Columns) #3
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false, %do.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %17 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false.17
  %18 = load i32, i32* %bpc, align 4, !tbaa !5
  %19 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ppds.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %19, i32 0, i32 6
  store i32 %18, i32* %BitsPerComponent, align 4, !tbaa !47
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %cond.end, %if.then.5, %if.then
  %20 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @zpp_setup(%struct.ref_s* %op, %struct.stream_PNGP_state_s* %ppps) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %ppps.addr = alloca %struct.stream_PNGP_state_s*, align 8
  %code = alloca i32, align 4
  %bpc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.stream_PNGP_state_s* %ppps, %struct.stream_PNGP_state_s** %ppps.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %5) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %7, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = load i16, i16* %type_attrs3, align 2, !tbaa !46
  %conv4 = zext i16 %8 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %10 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ppps.addr, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %10, i32 0, i32 5
  %call7 = call i32 @dict_int_param(%struct.ref_s* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 256, i32 1, i32* %Colors) #3
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call10 = call i32 @dict_int_param(%struct.ref_s* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 1, i32 16, i32 8, i32* %bpc) #3
  store i32 %call10, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.25, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %bpc, align 4, !tbaa !5
  %13 = load i32, i32* %bpc, align 4, !tbaa !5
  %sub = sub nsw i32 %13, 1
  %and14 = and i32 %12, %sub
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then.25, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %15 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ppps.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %15, i32 0, i32 7
  %call18 = call i32 @dict_uint_param(%struct.ref_s* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 -1, i32 1, i32* %Columns) #3
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %17 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ppps.addr, align 8, !tbaa !1
  %Predictor = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %17, i32 0, i32 8
  %call22 = call i32 @dict_int_param(%struct.ref_s* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 10, i32 15, i32 15, i32* %Predictor) #3
  store i32 %call22, i32* %code, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false, %do.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %18, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %19 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %lor.lhs.false.21
  %20 = load i32, i32* %bpc, align 4, !tbaa !5
  %21 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ppps.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %21, i32 0, i32 6
  store i32 %20, i32* %BitsPerComponent, align 4, !tbaa !49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %cond.end, %if.then.5, %if.then
  %22 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @filter_read(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @filter_mark_strm_temp(%struct.ref_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @zlz_setup(%struct.ref_s* %op, %struct.stream_LZW_state_s* %plzs) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %plzs.addr = alloca %struct.stream_LZW_state_s*, align 8
  %code = alloca i32, align 4
  %dop = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.stream_LZW_state_s* %plzs, %struct.stream_LZW_state_s** %plzs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %6 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %6, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = load i16, i16* %type_attrs3, align 2, !tbaa !46
  %conv4 = zext i16 %7 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.ref_s* %8, %struct.ref_s** %dop, align 8, !tbaa !1
  br label %if.end.6

if.else:                                          ; preds = %entry
  store %struct.ref_s* null, %struct.ref_s** %dop, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %do.end
  %9 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %10 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %plzs.addr, align 8, !tbaa !1
  %EarlyChange = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %10, i32 0, i32 8
  %call = call i32 @dict_int_param(%struct.ref_s* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 1, i32 1, i32* %EarlyChange) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %11 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %12 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %plzs.addr, align 8, !tbaa !1
  %InitialCodeLength = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %12, i32 0, i32 5
  %call9 = call i32 @dict_int_param(%struct.ref_s* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 11, i32 8, i32* %InitialCodeLength) #3
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.20, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %13 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %14 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %plzs.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %14, i32 0, i32 6
  %call13 = call i32 @dict_bool_param(%struct.ref_s* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 0, i32* %FirstBitLowOrder) #3
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %15 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %16 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %plzs.addr, align 8, !tbaa !1
  %BlockData = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %16, i32 0, i32 7
  %call17 = call i32 @dict_bool_param(%struct.ref_s* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 0, i32* %BlockData) #3
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false, %if.end.6
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20, %if.then.5
  %18 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_uint_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zA85E(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @filter_write_simple(%struct.gs_context_state_s* %0, %struct.stream_template_s* @s_A85E_template) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zA85D(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ss = alloca %struct.stream_A85D_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_A85D_state_s* %ss to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %9 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %10 = load i16, i16* %type_attrs3, align 2, !tbaa !46
  %conv4 = zext i16 %10 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %pdf_rules = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %ss, i32 0, i32 7
  %call = call i32 @dict_bool_param(%struct.ref_s* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* %pdf_rules) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %do.end
  br label %if.end.11

if.else:                                          ; preds = %entry
  %pdf_rules10 = getelementptr inbounds %struct.stream_A85D_state_s, %struct.stream_A85D_state_s* %ss, i32 0, i32 7
  store i32 0, i32* %pdf_rules10, align 4, !tbaa !51
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end.9
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = bitcast %struct.stream_A85D_state_s* %ss to %struct.stream_state_s*
  %call12 = call i32 @filter_read(%struct.gs_context_state_s* %13, i32 0, %struct.stream_template_s* @s_A85D_template, %struct.stream_state_s* %14, i32 0) #3
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.8, %if.then.5
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.stream_A85D_state_s* %ss to i8*
  call void @llvm.lifetime.end(i64 128, i8* %16) #1
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zCFD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %dop = alloca %struct.ref_s*, align 8
  %cfs = alloca %struct.stream_CFD_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.stream_CFD_state_s* %cfs to i8*
  call void @llvm.lifetime.start(i64 240, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %10 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %10, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %11 = load i16, i16* %type_attrs3, align 2, !tbaa !46
  %conv4 = zext i16 %11 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %12, %struct.ref_s** %dop, align 8, !tbaa !1
  br label %if.end.6

if.else:                                          ; preds = %entry
  store %struct.ref_s* null, %struct.ref_s** %dop, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %do.end
  %13 = load %struct.ref_s*, %struct.ref_s** %dop, align 8, !tbaa !1
  %14 = bitcast %struct.stream_CFD_state_s* %cfs to %struct.stream_CF_state_s*
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !53
  %call = call i32 @zcf_setup(%struct.ref_s* %13, %struct.stream_CF_state_s* %14, %struct.gs_ref_memory_s* %16) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %20 = bitcast %struct.stream_CFD_state_s* %cfs to %struct.stream_state_s*
  %call11 = call i32 @filter_read(%struct.gs_context_state_s* %19, i32 0, %struct.stream_template_s* @s_CFD_template, %struct.stream_state_s* %20, i32 0) #3
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.5
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.stream_CFD_state_s* %cfs to i8*
  call void @llvm.lifetime.end(i64 240, i8* %22) #1
  %23 = bitcast %struct.ref_s** %dop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zLZWD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %lzs = alloca %struct.stream_LZW_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %unit_size = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_LZW_state_s* %lzs to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zlz_setup(%struct.ref_s* %5, %struct.stream_LZW_state_s* %lzs) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %language_level = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 2
  %9 = load i32, i32* %language_level, align 4, !tbaa !54
  %cmp1 = icmp sge i32 %9, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %12 to i32
  %cmp2 = icmp eq i32 %conv, 2
  br i1 %cmp2, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %land.lhs.true
  %13 = bitcast i32* %unit_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %lzs, i32 0, i32 6
  %15 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !55
  %FirstBitLowOrder5 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %lzs, i32 0, i32 6
  %call6 = call i32 @dict_bool_param(%struct.ref_s* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %15, i32* %FirstBitLowOrder5) #3
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call9 = call i32 @dict_int_param(%struct.ref_s* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 3, i32 8, i32 8, i32* %unit_size) #3
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.then.4
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %19 = load i32, i32* %unit_size, align 4, !tbaa !5
  %add = add nsw i32 %19, 1
  %InitialCodeLength = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %lzs, i32 0, i32 5
  store i32 %add, i32* %InitialCodeLength, align 4, !tbaa !57
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.12
  %20 = bitcast i32* %unit_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.20 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %22 = bitcast %struct.stream_LZW_state_s* %lzs to %struct.stream_state_s*
  %call19 = call i32 @filter_read_predictor(%struct.gs_context_state_s* %21, i32 0, %struct.stream_template_s* @s_LZWD_template, %struct.stream_state_s* %22) #3
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

cleanup.20:                                       ; preds = %if.end.18, %cleanup, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.stream_LZW_state_s* %lzs to i8*
  call void @llvm.lifetime.end(i64 176, i8* %24) #1
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zPDiffD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pds = alloca %struct.stream_PDiff_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.start(i64 376, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zpd_setup(%struct.ref_s* %5, %struct.stream_PDiff_state_s* %pds) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.stream_PDiff_state_s* %pds to %struct.stream_state_s*
  %call1 = call i32 @filter_read(%struct.gs_context_state_s* %8, i32 0, %struct.stream_template_s* @s_PDiffD_template, %struct.stream_state_s* %9, i32 0) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.end(i64 376, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zPDiffE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pds = alloca %struct.stream_PDiff_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.start(i64 376, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zpd_setup(%struct.ref_s* %5, %struct.stream_PDiff_state_s* %pds) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.stream_PDiff_state_s* %pds to %struct.stream_state_s*
  %call1 = call i32 @filter_write(%struct.gs_context_state_s* %8, i32 0, %struct.stream_template_s* @s_PDiffE_template, %struct.stream_state_s* %9, i32 0) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.stream_PDiff_state_s* %pds to i8*
  call void @llvm.lifetime.end(i64 376, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zPNGPD(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pps = alloca %struct.stream_PNGP_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.start(i64 672, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zpp_setup(%struct.ref_s* %5, %struct.stream_PNGP_state_s* %pps) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.stream_PNGP_state_s* %pps to %struct.stream_state_s*
  %call1 = call i32 @filter_read(%struct.gs_context_state_s* %8, i32 0, %struct.stream_template_s* @s_PNGPD_template, %struct.stream_state_s* %9, i32 0) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.end(i64 672, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zPNGPE(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pps = alloca %struct.stream_PNGP_state_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.start(i64 672, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @zpp_setup(%struct.ref_s* %5, %struct.stream_PNGP_state_s* %pps) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = bitcast %struct.stream_PNGP_state_s* %pps to %struct.stream_state_s*
  %call1 = call i32 @filter_write(%struct.gs_context_state_s* %8, i32 0, %struct.stream_template_s* @s_PNGPE_template, %struct.stream_state_s* %9, i32 0) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.stream_PNGP_state_s* %pps to i8*
  call void @llvm.lifetime.end(i64 672, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @filter_write_simple(%struct.gs_context_state_s*, %struct.stream_template_s*) #2

declare i32 @filter_write(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 120}
!8 = !{!"stream_CF_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !2, i64 168, !2, i64 176, !6, i64 184}
!9 = !{!8, !6, i64 124}
!10 = !{!8, !6, i64 128}
!11 = !{!8, !6, i64 132}
!12 = !{!8, !6, i64 136}
!13 = !{!8, !6, i64 140}
!14 = !{!8, !6, i64 144}
!15 = !{!8, !6, i64 148}
!16 = !{!8, !6, i64 152}
!17 = !{!8, !6, i64 108}
!18 = !{!8, !6, i64 156}
!19 = !{!8, !2, i64 168}
!20 = !{!8, !2, i64 176}
!21 = !{!3, !3, i64 0}
!22 = !{!23, !2, i64 8}
!23 = !{!"dict_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !6, i64 80, !6, i64 84, !24, i64 88}
!24 = !{!"ref_s", !25, i64 0, !3, i64 8}
!25 = !{!"tas_s", !26, i64 0, !26, i64 2, !6, i64 4}
!26 = !{!"short", !3, i64 0}
!27 = !{!28, !2, i64 24}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!23, !2, i64 72}
!31 = !{!32, !2, i64 624}
!32 = !{!"gs_context_state_s", !2, i64 0, !33, i64 8, !6, i64 80, !24, i64 88, !24, i64 104, !35, i64 120, !35, i64 128, !35, i64 136, !6, i64 144, !6, i64 148, !24, i64 152, !24, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !36, i64 264, !36, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !37, i64 368, !39, i64 520, !40, i64 624, !2, i64 720}
!33 = !{!"gs_dual_memory_s", !2, i64 0, !34, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!34 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!35 = !{!"long", !3, i64 0}
!36 = !{!"op_array_table_s", !24, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!37 = !{!"dict_stack_s", !38, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !24, i64 136}
!38 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !24, i64 24, !6, i64 40, !6, i64 44, !24, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!39 = !{!"exec_stack_s", !38, i64 0, !2, i64 96}
!40 = !{!"op_stack_s", !38, i64 0}
!41 = !{i64 0, i64 2, !42, i64 2, i64 2, !42, i64 4, i64 4, !5, i64 8, i64 8, !43, i64 8, i64 2, !42, i64 8, i64 4, !44, i64 8, i64 8, !43, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !43}
!42 = !{!26, !26, i64 0}
!43 = !{!35, !35, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !3, i64 0}
!46 = !{!24, !26, i64 0}
!47 = !{!48, !6, i64 112}
!48 = !{!"stream_PDiff_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !3, i64 124, !6, i64 128, !6, i64 132, !3, i64 136}
!49 = !{!50, !6, i64 112}
!50 = !{!"stream_PNGP_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !3, i64 128, !6, i64 132, !2, i64 136, !6, i64 144, !35, i64 152, !3, i64 160}
!51 = !{!52, !6, i64 120}
!52 = !{!"stream_A85D_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !35, i64 112, !6, i64 120, !6, i64 124}
!53 = !{!32, !2, i64 8}
!54 = !{!32, !6, i64 80}
!55 = !{!56, !6, i64 112}
!56 = !{!"stream_LZW_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !3, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172}
!57 = !{!56, !6, i64 108}
