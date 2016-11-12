; ModuleID = './write_t1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_fapi_font_s = type { i8*, i32, %struct.gs_memory_s*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [10 x %struct.gs_fapi_ttf_cmap_request], i8*, i8*, i8*, i8*, i32, float, i16 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i8*, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)* }
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
%struct.gs_fapi_server_s = type { %struct.gs_fapi_server_instance_s, i8*, i32, %struct.gs_fapi_face_s, %struct.gs_fapi_font_s, i32, i32, i32, %struct.gs_matrix_s, i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i8*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*, i8*)*, i32 (%struct.gs_fapi_server_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)* }
%struct.gs_fapi_server_instance_s = type { %struct.gs_fapi_server_descriptor_s* }
%struct.gs_fapi_server_descriptor_s = type { i8*, i8*, void (%struct.gs_fapi_server_s**)* }
%struct.gs_fapi_face_s = type { i64, %struct.gs_matrix_s, %struct.gs_log2_scale_point_s, i32, [2 x float] }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_fapi_font_scale_s = type { [6 x i32], [2 x i32], [2 x i32], i32 }
%struct.gs_fapi_char_ref = type { i64, [4 x i64], i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_raster = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_metrics_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_path_s = type { i8*, i32, i32, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*)* }
%struct.gs_fapi_ttf_cmap_request = type { i32, i32 }
%struct.gs_font_base_s = type opaque
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_text_enum_s = type opaque
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.WRF_output_ = type { i8*, i64, i64, i32, i16 }

@.str = private unnamed_addr constant [18 x i8] c"%!PS-AdobeFont-1\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"5 dict begin\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"/FontType 1 def\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/FontMatrix [\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"/Encoding StandardEncoding def\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"/FontBBox {\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"/FontInfo %d dict dup begin\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"/BlendAxisTypes [\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" /\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"] def\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/BlendDesignPositions [\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"/BlendDesignMap [\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"end readonly def\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"/$Blend {\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"} def\0A\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"/$Blend {0.1 mul exch 0.45 mul add exch 0.17 mul add add} def\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"/WeightVector [\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"currentdict end\0Acurrentfile eexec\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"XXXX\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"dup /Private 8 dict dup begin\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"/MinFeature {16 16} def\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"/password 5839 def\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"/lenIV -1 def\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"BlueFuzz\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"/BlueScale \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c" def\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"BlueShift\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"OtherBlues\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"FamilyBlues\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"FamilyOtherBlues\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"ForceBold\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"StdHW\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"StdVW\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"StemSnapH\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"StemSnapV\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"3 index /Blend get /Private get begin\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"|-\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"/Subrs \00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c" array\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"dup \00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c" RD \00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c" NP\0A\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ND\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"2 index /CharStrings \00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c" dict dup begin\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c" ND\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c" end\00", align 1

; Function Attrs: nounwind uwtable
define i64 @gs_fapi_serialize_type1_font(%struct.gs_fapi_font_s* %a_fapi_font, i8* %a_buffer, i64 %a_buffer_size) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_buffer.addr = alloca i8*, align 8
  %a_buffer_size.addr = alloca i64, align 8
  %output = alloca %struct.WRF_output_, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store i8* %a_buffer, i8** %a_buffer.addr, align 8, !tbaa !1
  store i64 %a_buffer_size, i64* %a_buffer_size.addr, align 8, !tbaa !5
  %0 = bitcast %struct.WRF_output_* %output to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = load i8*, i8** %a_buffer.addr, align 8, !tbaa !1
  %2 = load i64, i64* %a_buffer_size.addr, align 8, !tbaa !5
  call void @WRF_init(%struct.WRF_output_* %output, i8* %1, i64 %2) #3
  call void @WRF_wstring(%struct.WRF_output_* %output, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #3
  %3 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  call void @write_main_dictionary(%struct.gs_fapi_font_s* %3, %struct.WRF_output_* %output, i32 0) #3
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %output, i32 0, i32 2
  %4 = load i64, i64* %m_count, align 8, !tbaa !7
  %5 = bitcast %struct.WRF_output_* %output to i8*
  call void @llvm.lifetime.end(i64 32, i8* %5) #1
  ret i64 %4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @WRF_init(%struct.WRF_output_*, i8*, i64) #2

declare void @WRF_wstring(%struct.WRF_output_*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @write_main_dictionary(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i32 %Write_CharStrings) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %Write_CharStrings.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i16, align 2
  %x18 = alloca i16, align 2
  %x2 = alloca i16, align 2
  %x1 = alloca float, align 4
  %i19 = alloca i32, align 4
  %j = alloca i32, align 4
  %entries = alloca i32, align 4
  %Buffer = alloca [255 x i8], align 16
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i32 %Write_CharStrings, i32* %Write_CharStrings.addr, align 4, !tbaa !11
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #3
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #3
  %3 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #3
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !11
  %cmp = icmp slt i32 %4, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %6 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_float = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %6, i32 0, i32 22
  %7 = load float (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)** %get_float, align 8, !tbaa !12
  %8 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %9 = load i32, i32* %i, align 4, !tbaa !11
  %call = call float %7(%struct.gs_fapi_font_s* %8, i32 0, i32 %9) #3
  %conv = fpext float %call to double
  call void @WRF_wfloat(%struct.WRF_output_* %5, double %conv) #3
  %10 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %11 = load i32, i32* %i, align 4, !tbaa !11
  %cmp1 = icmp eq i32 %11, 5
  %cond = select i1 %cmp1, i32 93, i32 32
  %conv3 = trunc i32 %cond to i8
  call void @WRF_wbyte(%struct.WRF_output_* %10, i8 zeroext %conv3) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %13, i8 zeroext 10) #3
  %14 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #3
  %15 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #3
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !11
  %cmp5 = icmp slt i32 %16, 4
  br i1 %cmp5, label %for.body.7, label %for.end.16

for.body.7:                                       ; preds = %for.cond.4
  %17 = bitcast i16* %x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  %18 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %18, i32 0, i32 20
  %19 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !15
  %20 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !11
  %call8 = call zeroext i16 %19(%struct.gs_fapi_font_s* %20, i32 9, i32 %21) #3
  store i16 %call8, i16* %x, align 2, !tbaa !16
  %22 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %23 = load i16, i16* %x, align 2, !tbaa !16
  %conv9 = sext i16 %23 to i64
  call void @WRF_wint(%struct.WRF_output_* %22, i64 %conv9) #3
  %24 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !11
  %cmp10 = icmp eq i32 %25, 3
  %cond12 = select i1 %cmp10, i32 125, i32 32
  %conv13 = trunc i32 %cond12 to i8
  call void @WRF_wbyte(%struct.WRF_output_* %24, i8 zeroext %conv13) #3
  %26 = bitcast i16* %x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.7
  %27 = load i32, i32* %i, align 4, !tbaa !11
  %inc15 = add nsw i32 %27, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !11
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  %28 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %28, i8 zeroext 10) #3
  %29 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call17 = call i32 @is_MM_font(%struct.gs_fapi_font_s* %29) #3
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then, label %if.end.162

if.then:                                          ; preds = %for.end.16
  %30 = bitcast i16* %x18 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %30) #1
  %31 = bitcast i16* %x2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %31) #1
  %32 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast [255 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 255, i8* %36) #1
  store i32 0, i32* %entries, align 4, !tbaa !11
  %37 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word20 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %37, i32 0, i32 20
  %38 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word20, align 8, !tbaa !15
  %39 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call21 = call zeroext i16 %38(%struct.gs_fapi_font_s* %39, i32 35, i32 0) #3
  store i16 %call21, i16* %x18, align 2, !tbaa !16
  %40 = load i16, i16* %x18, align 2, !tbaa !16
  %tobool22 = icmp ne i16 %40, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %41 = load i32, i32* %entries, align 4, !tbaa !11
  %inc24 = add i32 %41, 1
  store i32 %inc24, i32* %entries, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then
  %42 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word25 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %42, i32 0, i32 20
  %43 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word25, align 8, !tbaa !15
  %44 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call26 = call zeroext i16 %43(%struct.gs_fapi_font_s* %44, i32 41, i32 0) #3
  store i16 %call26, i16* %x18, align 2, !tbaa !16
  %45 = load i16, i16* %x18, align 2, !tbaa !16
  %tobool27 = icmp ne i16 %45, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end
  %46 = load i32, i32* %entries, align 4, !tbaa !11
  %inc29 = add i32 %46, 1
  store i32 %inc29, i32* %entries, align 4, !tbaa !11
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end
  %47 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word31 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %47, i32 0, i32 20
  %48 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word31, align 8, !tbaa !15
  %49 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call32 = call zeroext i16 %48(%struct.gs_fapi_font_s* %49, i32 43, i32 0) #3
  store i16 %call32, i16* %x18, align 2, !tbaa !16
  %50 = load i16, i16* %x18, align 2, !tbaa !16
  %tobool33 = icmp ne i16 %50, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.30
  %51 = load i32, i32* %entries, align 4, !tbaa !11
  %inc35 = add i32 %51, 1
  store i32 %inc35, i32* %entries, align 4, !tbaa !11
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.30
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  %52 = load i32, i32* %entries, align 4, !tbaa !11
  %call37 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 %52) #3
  %53 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay38 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %53, i8* %arraydecay38) #3
  %54 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word39 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %54, i32 0, i32 20
  %55 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word39, align 8, !tbaa !15
  %56 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call40 = call zeroext i16 %55(%struct.gs_fapi_font_s* %56, i32 35, i32 0) #3
  store i16 %call40, i16* %x18, align 2, !tbaa !16
  %57 = load i16, i16* %x18, align 2, !tbaa !16
  %tobool41 = icmp ne i16 %57, 0
  br i1 %tobool41, label %if.then.42, label %if.end.53

if.then.42:                                       ; preds = %if.end.36
  %58 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #3
  store i32 0, i32* %i19, align 4, !tbaa !11
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.50, %if.then.42
  %59 = load i32, i32* %i19, align 4, !tbaa !11
  %60 = load i16, i16* %x18, align 2, !tbaa !16
  %conv44 = sext i16 %60 to i32
  %cmp45 = icmp ult i32 %59, %conv44
  br i1 %cmp45, label %for.body.47, label %for.end.52

for.body.47:                                      ; preds = %for.cond.43
  %61 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #3
  %62 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_name = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %62, i32 0, i32 23
  %63 = load i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)** %get_name, align 8, !tbaa !17
  %64 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %65 = load i32, i32* %i19, align 4, !tbaa !11
  %66 = bitcast [255 x i8]* %Buffer to i8*
  %call48 = call i32 %63(%struct.gs_fapi_font_s* %64, i32 36, i32 %65, i8* %66, i32 255) #3
  %67 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay49 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %67, i8* %arraydecay49) #3
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.47
  %68 = load i32, i32* %i19, align 4, !tbaa !11
  %inc51 = add i32 %68, 1
  store i32 %inc51, i32* %i19, align 4, !tbaa !11
  br label %for.cond.43

for.end.52:                                       ; preds = %for.cond.43
  %69 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %if.end.36
  %70 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word54 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %70, i32 0, i32 20
  %71 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word54, align 8, !tbaa !15
  %72 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call55 = call zeroext i16 %71(%struct.gs_fapi_font_s* %72, i32 41, i32 0) #3
  store i16 %call55, i16* %x18, align 2, !tbaa !16
  %73 = load i16, i16* %x18, align 2, !tbaa !16
  %tobool56 = icmp ne i16 %73, 0
  br i1 %tobool56, label %if.then.57, label %if.end.82

if.then.57:                                       ; preds = %if.end.53
  %74 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #3
  %75 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word58 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %75, i32 0, i32 20
  %76 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word58, align 8, !tbaa !15
  %77 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call59 = call zeroext i16 %76(%struct.gs_fapi_font_s* %77, i32 35, i32 0) #3
  store i16 %call59, i16* %x2, align 2, !tbaa !16
  store i32 0, i32* %i19, align 4, !tbaa !11
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.79, %if.then.57
  %78 = load i32, i32* %i19, align 4, !tbaa !11
  %79 = load i16, i16* %x18, align 2, !tbaa !16
  %conv61 = sext i16 %79 to i32
  %cmp62 = icmp ult i32 %78, %conv61
  br i1 %cmp62, label %for.body.64, label %for.end.81

for.body.64:                                      ; preds = %for.cond.60
  %80 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #3
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.76, %for.body.64
  %81 = load i32, i32* %j, align 4, !tbaa !11
  %82 = load i16, i16* %x2, align 2, !tbaa !16
  %conv66 = sext i16 %82 to i32
  %cmp67 = icmp ult i32 %81, %conv66
  br i1 %cmp67, label %for.body.69, label %for.end.78

for.body.69:                                      ; preds = %for.cond.65
  %83 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_float70 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %83, i32 0, i32 22
  %84 = load float (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)** %get_float70, align 8, !tbaa !12
  %85 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %86 = load i32, i32* %i19, align 4, !tbaa !11
  %mul = mul i32 %86, 8
  %87 = load i32, i32* %j, align 4, !tbaa !11
  %add = add i32 %mul, %87
  %call71 = call float %84(%struct.gs_fapi_font_s* %85, i32 42, i32 %add) #3
  store float %call71, float* %x1, align 4, !tbaa !18
  %arraydecay72 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  %88 = load float, float* %x1, align 4, !tbaa !18
  %conv73 = fpext float %88 to double
  %call74 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), double %conv73) #3
  %89 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay75 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %89, i8* %arraydecay75) #3
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.69
  %90 = load i32, i32* %j, align 4, !tbaa !11
  %inc77 = add i32 %90, 1
  store i32 %inc77, i32* %j, align 4, !tbaa !11
  br label %for.cond.65

for.end.78:                                       ; preds = %for.cond.65
  %91 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #3
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %92 = load i32, i32* %i19, align 4, !tbaa !11
  %inc80 = add i32 %92, 1
  store i32 %inc80, i32* %i19, align 4, !tbaa !11
  br label %for.cond.60

for.end.81:                                       ; preds = %for.cond.60
  %93 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %if.end.53
  %94 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word83 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %94, i32 0, i32 20
  %95 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word83, align 8, !tbaa !15
  %96 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call84 = call zeroext i16 %95(%struct.gs_fapi_font_s* %96, i32 43, i32 0) #3
  store i16 %call84, i16* %x18, align 2, !tbaa !16
  %97 = load i16, i16* %x18, align 2, !tbaa !16
  %tobool85 = icmp ne i16 %97, 0
  br i1 %tobool85, label %if.then.86, label %if.end.124

if.then.86:                                       ; preds = %if.end.82
  %98 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)) #3
  store i32 0, i32* %i19, align 4, !tbaa !11
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.121, %if.then.86
  %99 = load i32, i32* %i19, align 4, !tbaa !11
  %100 = load i16, i16* %x18, align 2, !tbaa !16
  %conv88 = sext i16 %100 to i32
  %cmp89 = icmp ult i32 %99, %conv88
  br i1 %cmp89, label %for.body.91, label %for.end.123

for.body.91:                                      ; preds = %for.cond.87
  %101 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word92 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %101, i32 0, i32 20
  %102 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word92, align 8, !tbaa !15
  %103 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %104 = load i32, i32* %i19, align 4, !tbaa !11
  %call93 = call zeroext i16 %102(%struct.gs_fapi_font_s* %103, i32 44, i32 %104) #3
  store i16 %call93, i16* %x2, align 2, !tbaa !16
  %105 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #3
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.118, %for.body.91
  %106 = load i32, i32* %j, align 4, !tbaa !11
  %107 = load i16, i16* %x2, align 2, !tbaa !16
  %conv95 = sext i16 %107 to i32
  %cmp96 = icmp ult i32 %106, %conv95
  br i1 %cmp96, label %for.body.98, label %for.end.120

for.body.98:                                      ; preds = %for.cond.94
  %108 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #3
  %109 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_float99 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %109, i32 0, i32 22
  %110 = load float (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)** %get_float99, align 8, !tbaa !12
  %111 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %112 = load i32, i32* %i19, align 4, !tbaa !11
  %mul100 = mul i32 %112, 64
  %113 = load i32, i32* %j, align 4, !tbaa !11
  %mul101 = mul i32 %113, 64
  %add102 = add i32 %mul100, %mul101
  %call103 = call float %110(%struct.gs_fapi_font_s* %111, i32 42, i32 %add102) #3
  store float %call103, float* %x1, align 4, !tbaa !18
  %arraydecay104 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  %114 = load float, float* %x1, align 4, !tbaa !18
  %conv105 = fpext float %114 to double
  %call106 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), double %conv105) #3
  %115 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay107 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %115, i8* %arraydecay107) #3
  %116 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_float108 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %116, i32 0, i32 22
  %117 = load float (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)** %get_float108, align 8, !tbaa !12
  %118 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %119 = load i32, i32* %i19, align 4, !tbaa !11
  %mul109 = mul i32 %119, 64
  %120 = load i32, i32* %j, align 4, !tbaa !11
  %mul110 = mul i32 %120, 64
  %add111 = add i32 %mul109, %mul110
  %add112 = add i32 %add111, 1
  %call113 = call float %117(%struct.gs_fapi_font_s* %118, i32 42, i32 %add112) #3
  store float %call113, float* %x1, align 4, !tbaa !18
  %arraydecay114 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  %121 = load float, float* %x1, align 4, !tbaa !18
  %conv115 = fpext float %121 to double
  %call116 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), double %conv115) #3
  %122 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay117 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %122, i8* %arraydecay117) #3
  %123 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #3
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.98
  %124 = load i32, i32* %j, align 4, !tbaa !11
  %inc119 = add i32 %124, 1
  store i32 %inc119, i32* %j, align 4, !tbaa !11
  br label %for.cond.94

for.end.120:                                      ; preds = %for.cond.94
  %125 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #3
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %126 = load i32, i32* %i19, align 4, !tbaa !11
  %inc122 = add i32 %126, 1
  store i32 %inc122, i32* %i19, align 4, !tbaa !11
  br label %for.cond.87

for.end.123:                                      ; preds = %for.cond.87
  %127 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #3
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %if.end.82
  %128 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)) #3
  %129 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word125 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %129, i32 0, i32 20
  %130 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word125, align 8, !tbaa !15
  %131 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call126 = call zeroext i16 %130(%struct.gs_fapi_font_s* %131, i32 34, i32 0) #3
  store i16 %call126, i16* %x18, align 2, !tbaa !16
  %conv127 = sext i16 %call126 to i32
  %cmp128 = icmp sgt i32 %conv127, 0
  br i1 %cmp128, label %if.then.130, label %if.else

if.then.130:                                      ; preds = %if.end.124
  %132 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #3
  %133 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %133, i32 0, i32 2
  %134 = load i64, i64* %m_count, align 8, !tbaa !7
  %tobool131 = icmp ne i64 %134, 0
  br i1 %tobool131, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %if.then.130
  %135 = load i16, i16* %x18, align 2, !tbaa !16
  %conv133 = sext i16 %135 to i64
  %136 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count134 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %136, i32 0, i32 2
  %137 = load i64, i64* %m_count134, align 8, !tbaa !7
  %add135 = add nsw i64 %137, %conv133
  store i64 %add135, i64* %m_count134, align 8, !tbaa !7
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.132, %if.then.130
  %138 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_proc = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %138, i32 0, i32 24
  %139 = load i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)** %get_proc, align 8, !tbaa !19
  %140 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %141 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %141, i32 0, i32 0
  %142 = load i8*, i8** %m_pos, align 8, !tbaa !20
  %call137 = call i32 %139(%struct.gs_fapi_font_s* %140, i32 33, i32 0, i8* %142) #3
  %conv138 = trunc i32 %call137 to i16
  store i16 %conv138, i16* %x18, align 2, !tbaa !16
  %143 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos139 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %143, i32 0, i32 0
  %144 = load i8*, i8** %m_pos139, align 8, !tbaa !20
  %tobool140 = icmp ne i8* %144, null
  br i1 %tobool140, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %if.end.136
  %145 = load i16, i16* %x18, align 2, !tbaa !16
  %conv142 = sext i16 %145 to i32
  %146 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos143 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %146, i32 0, i32 0
  %147 = load i8*, i8** %m_pos143, align 8, !tbaa !20
  %idx.ext = sext i32 %conv142 to i64
  %add.ptr = getelementptr inbounds i8, i8* %147, i64 %idx.ext
  store i8* %add.ptr, i8** %m_pos143, align 8, !tbaa !20
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %if.end.136
  %148 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  br label %if.end.145

if.else:                                          ; preds = %if.end.124
  %149 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %149, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %if.end.145

if.end.145:                                       ; preds = %if.else, %if.end.144
  %150 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)) #3
  %151 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word146 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %151, i32 0, i32 20
  %152 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word146, align 8, !tbaa !15
  %153 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call147 = call zeroext i16 %152(%struct.gs_fapi_font_s* %153, i32 39, i32 0) #3
  store i16 %call147, i16* %x18, align 2, !tbaa !16
  store i32 0, i32* %i19, align 4, !tbaa !11
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.159, %if.end.145
  %154 = load i32, i32* %i19, align 4, !tbaa !11
  %155 = load i16, i16* %x18, align 2, !tbaa !16
  %conv149 = sext i16 %155 to i32
  %cmp150 = icmp ult i32 %154, %conv149
  br i1 %cmp150, label %for.body.152, label %for.end.161

for.body.152:                                     ; preds = %for.cond.148
  %156 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_float153 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %156, i32 0, i32 22
  %157 = load float (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)** %get_float153, align 8, !tbaa !12
  %158 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %159 = load i32, i32* %i19, align 4, !tbaa !11
  %call154 = call float %157(%struct.gs_fapi_font_s* %158, i32 40, i32 %159) #3
  store float %call154, float* %x1, align 4, !tbaa !18
  %arraydecay155 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  %160 = load float, float* %x1, align 4, !tbaa !18
  %conv156 = fpext float %160 to double
  %call157 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), double %conv156) #3
  %161 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay158 = getelementptr inbounds [255 x i8], [255 x i8]* %Buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %161, i8* %arraydecay158) #3
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.body.152
  %162 = load i32, i32* %i19, align 4, !tbaa !11
  %inc160 = add i32 %162, 1
  store i32 %inc160, i32* %i19, align 4, !tbaa !11
  br label %for.cond.148

for.end.161:                                      ; preds = %for.cond.148
  %163 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)) #3
  %164 = bitcast [255 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 255, i8* %164) #1
  %165 = bitcast i32* %entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast float* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i16* %x2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %169) #1
  %170 = bitcast i16* %x18 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %170) #1
  br label %if.end.162

if.end.162:                                       ; preds = %for.end.161, %for.end.16
  %171 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0)) #3
  %172 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %173 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %174 = load i32, i32* %Write_CharStrings.addr, align 4, !tbaa !11
  call void @write_private_dictionary(%struct.gs_fapi_font_s* %172, %struct.WRF_output_* %173, i32 %174) #3
  %175 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call163 = call i32 @is_MM_font(%struct.gs_fapi_font_s* %175) #3
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.162
  %176 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %177 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_blend_dictionary(%struct.gs_fapi_font_s* %176, %struct.WRF_output_* %177) #3
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.162
  %178 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @gs_fapi_serialize_type1_font_complete(%struct.gs_fapi_font_s* %a_fapi_font, i8* %a_buffer, i64 %a_buffer_size) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_buffer.addr = alloca i8*, align 8
  %a_buffer_size.addr = alloca i64, align 8
  %output = alloca %struct.WRF_output_, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store i8* %a_buffer, i8** %a_buffer.addr, align 8, !tbaa !1
  store i64 %a_buffer_size, i64* %a_buffer_size.addr, align 8, !tbaa !5
  %0 = bitcast %struct.WRF_output_* %output to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = load i8*, i8** %a_buffer.addr, align 8, !tbaa !1
  %2 = load i64, i64* %a_buffer_size.addr, align 8, !tbaa !5
  call void @WRF_init(%struct.WRF_output_* %output, i8* %1, i64 %2) #3
  call void @WRF_wstring(%struct.WRF_output_* %output, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #3
  %3 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  call void @write_main_dictionary(%struct.gs_fapi_font_s* %3, %struct.WRF_output_* %output, i32 1) #3
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %output, i32 0, i32 2
  %4 = load i64, i64* %m_count, align 8, !tbaa !7
  %5 = bitcast %struct.WRF_output_* %output to i8*
  call void @llvm.lifetime.end(i64 32, i8* %5) #1
  ret i64 %4
}

declare void @WRF_wfloat(%struct.WRF_output_*, double) #2

declare void @WRF_wbyte(%struct.WRF_output_*, i8 zeroext) #2

declare void @WRF_wint(%struct.WRF_output_*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_MM_font(%struct.gs_fapi_font_s* %a_fapi_font) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %0, i32 0, i32 20
  %1 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !15
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call = call zeroext i16 %1(%struct.gs_fapi_font_s* %2, i32 33, i32 0) #3
  %conv = zext i16 %call to i32
  ret i32 %conv
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @write_private_dictionary(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i32 %Write_CharStrings) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %Write_CharStrings.addr = alloca i32, align 4
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i32 %Write_CharStrings, i32* %Write_CharStrings.addr, align 4, !tbaa !11
  %0 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_encrypt = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %0, i32 0, i32 3
  store i32 1, i32* %m_encrypt, align 4, !tbaa !21
  %1 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #3
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0)) #3
  %3 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0)) #3
  %4 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #3
  %5 = load i32, i32* %Write_CharStrings.addr, align 4, !tbaa !11
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %6, %struct.WRF_output_* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 28, i32 1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %10 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %9, %struct.WRF_output_* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 19, i32 16) #3
  %11 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #3
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %13 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_long = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %13, i32 0, i32 21
  %14 = load i64 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)** %get_long, align 8, !tbaa !22
  %15 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call = call i64 %14(%struct.gs_fapi_font_s* %15, i32 2, i32 0) #3
  %conv = uitofp i64 %call to double
  %div = fdiv double %conv, 6.553600e+04
  call void @WRF_wfloat(%struct.WRF_output_* %12, double %div) #3
  %16 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #3
  %17 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %18 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %17, %struct.WRF_output_* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 18, i32 16) #3
  %19 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %20 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry(%struct.gs_fapi_font_s* %19, %struct.WRF_output_* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 11, i32 16) #3
  %21 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %22 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry(%struct.gs_fapi_font_s* %21, %struct.WRF_output_* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 13, i32 16) #3
  %23 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %24 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry(%struct.gs_fapi_font_s* %23, %struct.WRF_output_* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 15, i32 16) #3
  %25 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %26 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry(%struct.gs_fapi_font_s* %25, %struct.WRF_output_* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i32 17, i32 16) #3
  %27 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %28 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_word_entry(%struct.gs_fapi_font_s* %27, %struct.WRF_output_* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 26, i32 1) #3
  %29 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %30 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry_with_count(%struct.gs_fapi_font_s* %29, %struct.WRF_output_* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 20, i32 1, i32 16) #3
  %31 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %32 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry_with_count(%struct.gs_fapi_font_s* %31, %struct.WRF_output_* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 21, i32 1, i32 16) #3
  %33 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %34 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry(%struct.gs_fapi_font_s* %33, %struct.WRF_output_* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 23, i32 16) #3
  %35 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %36 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_array_entry(%struct.gs_fapi_font_s* %35, %struct.WRF_output_* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 25, i32 16) #3
  %37 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call1 = call i32 @is_MM_font(%struct.gs_fapi_font_s* %37) #3
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %38 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0)) #3
  %39 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0)) #3
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %40 = load i32, i32* %Write_CharStrings.addr, align 4, !tbaa !11
  %tobool5 = icmp ne i32 %40, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  %41 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %42 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_subrs(%struct.gs_fapi_font_s* %41, %struct.WRF_output_* %42, i32 1) #3
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  %43 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %44 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_subrs(%struct.gs_fapi_font_s* %43, %struct.WRF_output_* %44, i32 0) #3
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %45 = load i32, i32* %Write_CharStrings.addr, align 4, !tbaa !11
  %tobool9 = icmp ne i32 %45, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %46 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %47 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @write_charstrings(%struct.gs_fapi_font_s* %46, %struct.WRF_output_* %47) #3
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_blend_dictionary(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_word_entry(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i8* %a_name, i32 %a_index, i32 %a_divisor) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_name.addr = alloca i8*, align 8
  %a_index.addr = alloca i32, align 4
  %a_divisor.addr = alloca i32, align 4
  %x = alloca i16, align 2
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_name, i8** %a_name.addr, align 8, !tbaa !1
  store i32 %a_index, i32* %a_index.addr, align 4, !tbaa !11
  store i32 %a_divisor, i32* %a_divisor.addr, align 4, !tbaa !11
  %0 = bitcast i16* %x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %1, i8 zeroext 47) #3
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %a_name.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %2, i8* %3) #3
  %4 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %4, i8 zeroext 32) #3
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %5, i32 0, i32 20
  %6 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !15
  %7 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %8 = load i32, i32* %a_index.addr, align 4, !tbaa !11
  %call = call zeroext i16 %6(%struct.gs_fapi_font_s* %7, i32 %8, i32 0) #3
  store i16 %call, i16* %x, align 2, !tbaa !16
  %9 = load i16, i16* %x, align 2, !tbaa !16
  %conv = sext i16 %9 to i32
  %10 = load i32, i32* %a_divisor.addr, align 4, !tbaa !11
  %div = sdiv i32 %conv, %10
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, i16* %x, align 2, !tbaa !16
  %11 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %12 = load i16, i16* %x, align 2, !tbaa !16
  %conv2 = sext i16 %12 to i64
  call void @WRF_wint(%struct.WRF_output_* %11, i64 %conv2) #3
  %13 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #3
  %14 = bitcast i16* %x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_array_entry(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i8* %a_name, i32 %a_index, i32 %a_divisor) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_name.addr = alloca i8*, align 8
  %a_index.addr = alloca i32, align 4
  %a_divisor.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_name, i8** %a_name.addr, align 8, !tbaa !1
  store i32 %a_index, i32* %a_index.addr, align 4, !tbaa !11
  store i32 %a_divisor, i32* %a_divisor.addr, align 4, !tbaa !11
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 20
  %2 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !15
  %3 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %4 = load i32, i32* %a_index.addr, align 4, !tbaa !11
  %sub = sub nsw i32 %4, 1
  %call = call zeroext i16 %2(%struct.gs_fapi_font_s* %3, i32 %sub, i32 0) #3
  %conv = zext i16 %call to i32
  store i32 %conv, i32* %count, align 4, !tbaa !11
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %6 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %a_name.addr, align 8, !tbaa !1
  %8 = load i32, i32* %a_index.addr, align 4, !tbaa !11
  %9 = load i32, i32* %count, align 4, !tbaa !11
  %10 = load i32, i32* %a_divisor.addr, align 4, !tbaa !11
  call void @write_array_entry_with_count(%struct.gs_fapi_font_s* %5, %struct.WRF_output_* %6, i8* %7, i32 %8, i32 %9, i32 %10) #3
  %11 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_array_entry_with_count(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i8* %a_name, i32 %a_index, i32 %a_count, i32 %a_divisor) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_name.addr = alloca i8*, align 8
  %a_index.addr = alloca i32, align 4
  %a_count.addr = alloca i32, align 4
  %a_divisor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %x = alloca i16, align 2
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_name, i8** %a_name.addr, align 8, !tbaa !1
  store i32 %a_index, i32* %a_index.addr, align 4, !tbaa !11
  store i32 %a_count, i32* %a_count.addr, align 4, !tbaa !11
  store i32 %a_divisor, i32* %a_divisor.addr, align 4, !tbaa !11
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %a_count.addr, align 4, !tbaa !11
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %2, i8 zeroext 47) #3
  %3 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %a_name.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %3, i8* %4) #3
  %5 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0)) #3
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !11
  %7 = load i32, i32* %a_count.addr, align 4, !tbaa !11
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast i16* %x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  %9 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %9, i32 0, i32 20
  %10 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !15
  %11 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %12 = load i32, i32* %a_index.addr, align 4, !tbaa !11
  %13 = load i32, i32* %i, align 4, !tbaa !11
  %call = call zeroext i16 %10(%struct.gs_fapi_font_s* %11, i32 %12, i32 %13) #3
  store i16 %call, i16* %x, align 2, !tbaa !16
  %14 = load i16, i16* %x, align 2, !tbaa !16
  %conv = sext i16 %14 to i32
  %15 = load i32, i32* %a_divisor.addr, align 4, !tbaa !11
  %div = sdiv i32 %conv, %15
  %conv2 = trunc i32 %div to i16
  store i16 %conv2, i16* %x, align 2, !tbaa !16
  %16 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %17 = load i16, i16* %x, align 2, !tbaa !16
  %conv3 = sext i16 %17 to i64
  call void @WRF_wint(%struct.WRF_output_* %16, i64 %conv3) #3
  %18 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %19 = load i32, i32* %i, align 4, !tbaa !11
  %20 = load i32, i32* %a_count.addr, align 4, !tbaa !11
  %sub = sub nsw i32 %20, 1
  %cmp4 = icmp eq i32 %19, %sub
  %cond = select i1 %cmp4, i32 93, i32 32
  %conv6 = trunc i32 %cond to i8
  call void @WRF_wbyte(%struct.WRF_output_* %18, i8 zeroext %conv6) #3
  %21 = bitcast i16* %x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %21) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
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
define internal void @write_subrs(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output, i32 %raw) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %raw.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %length = alloca i64, align 8
  %buffer_size = alloca i64, align 8
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i32 %raw, i32* %raw.addr, align 4, !tbaa !11
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %2, i32 0, i32 20
  %3 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !15
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call = call zeroext i16 %3(%struct.gs_fapi_font_s* %4, i32 30, i32 0) #3
  %conv = zext i16 %call to i32
  store i32 %conv, i32* %count, align 4, !tbaa !11
  %5 = load i32, i32* %count, align 4, !tbaa !11
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0)) #3
  %7 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %8 = load i32, i32* %count, align 4, !tbaa !11
  %conv2 = sext i32 %8 to i64
  call void @WRF_wint(%struct.WRF_output_* %7, i64 %conv2) #3
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #3
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !11
  %11 = load i32, i32* %count, align 4, !tbaa !11
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %raw.addr, align 4, !tbaa !11
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %15 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_raw_subr = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %15, i32 0, i32 27
  %16 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_raw_subr, align 8, !tbaa !23
  %17 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !11
  %call6 = call zeroext i16 %16(%struct.gs_fapi_font_s* %17, i32 %18, i8* null, i16 zeroext 0) #3
  %conv7 = zext i16 %call6 to i64
  store i64 %conv7, i64* %length, align 8, !tbaa !5
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %19 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_subr = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %19, i32 0, i32 26
  %20 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_subr, align 8, !tbaa !24
  %21 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %22 = load i32, i32* %i, align 4, !tbaa !11
  %call8 = call zeroext i16 %20(%struct.gs_fapi_font_s* %21, i32 %22, i8* null, i16 zeroext 0) #3
  %conv9 = zext i16 %call8 to i64
  store i64 %conv9, i64* %length, align 8, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.5
  %23 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #3
  %24 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !11
  %conv11 = sext i32 %25 to i64
  call void @WRF_wint(%struct.WRF_output_* %24, i64 %conv11) #3
  %26 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %26, i8 zeroext 32) #3
  %27 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %28 = load i64, i64* %length, align 8, !tbaa !5
  call void @WRF_wint(%struct.WRF_output_* %27, i64 %28) #3
  %29 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0)) #3
  %30 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_limit = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %30, i32 0, i32 1
  %31 = load i64, i64* %m_limit, align 8, !tbaa !25
  %32 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %32, i32 0, i32 2
  %33 = load i64, i64* %m_count, align 8, !tbaa !7
  %sub = sub nsw i64 %31, %33
  store i64 %sub, i64* %buffer_size, align 8, !tbaa !5
  %34 = load i64, i64* %buffer_size, align 8, !tbaa !5
  %35 = load i64, i64* %length, align 8, !tbaa !5
  %cmp12 = icmp sge i64 %34, %35
  br i1 %cmp12, label %if.then.14, label %if.else.27

if.then.14:                                       ; preds = %if.end.10
  %36 = load i32, i32* %raw.addr, align 4, !tbaa !11
  %tobool15 = icmp ne i32 %36, 0
  br i1 %tobool15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %if.then.14
  %37 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_raw_subr17 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %37, i32 0, i32 27
  %38 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_raw_subr17, align 8, !tbaa !23
  %39 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %40 = load i32, i32* %i, align 4, !tbaa !11
  %41 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %41, i32 0, i32 0
  %42 = load i8*, i8** %m_pos, align 8, !tbaa !20
  %43 = load i64, i64* %length, align 8, !tbaa !5
  %conv18 = trunc i64 %43 to i16
  %call19 = call zeroext i16 %38(%struct.gs_fapi_font_s* %39, i32 %40, i8* %42, i16 zeroext %conv18) #3
  br label %if.end.25

if.else.20:                                       ; preds = %if.then.14
  %44 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_subr21 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %44, i32 0, i32 26
  %45 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_subr21, align 8, !tbaa !24
  %46 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !11
  %48 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos22 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %48, i32 0, i32 0
  %49 = load i8*, i8** %m_pos22, align 8, !tbaa !20
  %50 = load i64, i64* %length, align 8, !tbaa !5
  %conv23 = trunc i64 %50 to i16
  %call24 = call zeroext i16 %45(%struct.gs_fapi_font_s* %46, i32 %47, i8* %49, i16 zeroext %conv23) #3
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.20, %if.then.16
  %51 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %52 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos26 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %52, i32 0, i32 0
  %53 = load i8*, i8** %m_pos26, align 8, !tbaa !20
  %54 = load i64, i64* %length, align 8, !tbaa !5
  call void @WRF_wtext(%struct.WRF_output_* %51, i8* %53, i64 %54) #3
  br label %if.end.29

if.else.27:                                       ; preds = %if.end.10
  %55 = load i64, i64* %length, align 8, !tbaa !5
  %56 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count28 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %56, i32 0, i32 2
  %57 = load i64, i64* %m_count28, align 8, !tbaa !7
  %add = add nsw i64 %57, %55
  store i64 %add, i64* %m_count28, align 8, !tbaa !7
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.end.25
  %58 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)) #3
  %59 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %61 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0)) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %63 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
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
define internal void @write_charstrings(%struct.gs_fapi_font_s* %a_fapi_font, %struct.WRF_output_* %a_output) #0 {
entry:
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %length = alloca i64, align 8
  %buffer_size = alloca i64, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %NameBuf = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %4, i32 0, i32 20
  %5 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !15
  %6 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call = call zeroext i16 %5(%struct.gs_fapi_font_s* %6, i32 46, i32 0) #3
  %conv = zext i16 %call to i32
  store i32 %conv, i32* %count, align 4, !tbaa !11
  %7 = bitcast [256 x i8]* %NameBuf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %7) #1
  %8 = load i32, i32* %count, align 4, !tbaa !11
  %cmp = icmp sle i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0)) #3
  %10 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %11 = load i32, i32* %count, align 4, !tbaa !11
  %conv2 = sext i32 %11 to i64
  call void @WRF_wint(%struct.WRF_output_* %10, i64 %conv2) #3
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0)) #3
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !11
  %14 = load i32, i32* %count, align 4, !tbaa !11
  %cmp3 = icmp slt i32 %13, %14
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_charstring_name = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %15, i32 0, i32 31
  %16 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_charstring_name, align 8, !tbaa !26
  %17 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !11
  %19 = bitcast [256 x i8]* %NameBuf to i8*
  %call5 = call zeroext i16 %16(%struct.gs_fapi_font_s* %17, i32 %18, i8* %19, i16 zeroext 256) #3
  %conv6 = zext i16 %call5 to i64
  store i64 %conv6, i64* %length, align 8, !tbaa !5
  %20 = load i64, i64* %length, align 8, !tbaa !5
  %cmp7 = icmp sgt i64 %20, 0
  br i1 %cmp7, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %for.body
  %21 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_charstring = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %21, i32 0, i32 30
  %22 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_charstring, align 8, !tbaa !27
  %23 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !11
  %call10 = call zeroext i16 %22(%struct.gs_fapi_font_s* %23, i32 %24, i8* null, i16 zeroext 0) #3
  %conv11 = zext i16 %call10 to i64
  store i64 %conv11, i64* %length, align 8, !tbaa !5
  %25 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %25, i8 zeroext 47) #3
  %26 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %27 = bitcast [256 x i8]* %NameBuf to i8*
  call void @WRF_wstring(%struct.WRF_output_* %26, i8* %27) #3
  %28 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wbyte(%struct.WRF_output_* %28, i8 zeroext 32) #3
  %29 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %30 = load i64, i64* %length, align 8, !tbaa !5
  call void @WRF_wint(%struct.WRF_output_* %29, i64 %30) #3
  %31 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0)) #3
  %32 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_limit = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %32, i32 0, i32 1
  %33 = load i64, i64* %m_limit, align 8, !tbaa !25
  %34 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %34, i32 0, i32 2
  %35 = load i64, i64* %m_count, align 8, !tbaa !7
  %sub = sub nsw i64 %33, %35
  store i64 %sub, i64* %buffer_size, align 8, !tbaa !5
  %36 = load i64, i64* %buffer_size, align 8, !tbaa !5
  %37 = load i64, i64* %length, align 8, !tbaa !5
  %cmp12 = icmp sge i64 %36, %37
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.9
  %38 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %get_charstring15 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %38, i32 0, i32 30
  %39 = load i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_charstring15, align 8, !tbaa !27
  %40 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %41 = load i32, i32* %i, align 4, !tbaa !11
  %42 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %42, i32 0, i32 0
  %43 = load i8*, i8** %m_pos, align 8, !tbaa !20
  %44 = load i64, i64* %length, align 8, !tbaa !5
  %conv16 = trunc i64 %44 to i16
  %call17 = call zeroext i16 %39(%struct.gs_fapi_font_s* %40, i32 %41, i8* %43, i16 zeroext %conv16) #3
  %45 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %46 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos18 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %46, i32 0, i32 0
  %47 = load i8*, i8** %m_pos18, align 8, !tbaa !20
  %48 = load i64, i64* %length, align 8, !tbaa !5
  call void @WRF_wtext(%struct.WRF_output_* %45, i8* %47, i64 %48) #3
  br label %if.end.20

if.else:                                          ; preds = %if.then.9
  %49 = load i64, i64* %length, align 8, !tbaa !5
  %50 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count19 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %50, i32 0, i32 2
  %51 = load i64, i64* %m_count19, align 8, !tbaa !7
  %add = add nsw i64 %51, %49
  store i64 %add, i64* %m_count19, align 8, !tbaa !7
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.14
  %52 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #3
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %53 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  call void @WRF_wstring(%struct.WRF_output_* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0)) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %55 = bitcast [256 x i8]* %NameBuf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %55) #1
  %56 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i64* %buffer_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
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

declare void @WRF_wtext(%struct.WRF_output_*, i8*, i64) #2

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
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !6, i64 16}
!8 = !{!"WRF_output_", !2, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !10, i64 28}
!9 = !{!"int", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !2, i64 208}
!13 = !{!"gs_fapi_font_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !3, i64 72, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !9, i64 184, !14, i64 188, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312}
!14 = !{!"float", !3, i64 0}
!15 = !{!13, !2, i64 192}
!16 = !{!10, !10, i64 0}
!17 = !{!13, !2, i64 216}
!18 = !{!14, !14, i64 0}
!19 = !{!13, !2, i64 224}
!20 = !{!8, !2, i64 0}
!21 = !{!8, !9, i64 24}
!22 = !{!13, !2, i64 200}
!23 = !{!13, !2, i64 248}
!24 = !{!13, !2, i64 240}
!25 = !{!8, !6, i64 8}
!26 = !{!13, !2, i64 280}
!27 = !{!13, !2, i64 272}
