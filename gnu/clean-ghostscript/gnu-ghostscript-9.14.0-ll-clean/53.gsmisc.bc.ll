; ModuleID = './gsmisc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_debug_flag_details = type { i32, [20 x i8], [80 x i8] }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.gs_sincos_s = type { double, double, i32 }

@msg_truncated = internal constant [40 x i8] c"\0A*** Previous line has been truncated.\0A\00", align 16
@gs_debug = global [128 x i8] zeroinitializer, align 16
@gs_debug_flag_implied_by = constant [127 x i8] c"\00c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00ABCD\00F\00HI\00KL\00\00OP\00\00S\00UV\00\00Y\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"%10s(%4d): \00", align 1
@dprintf_file_and_line_format = constant i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%10s(unkn): \00", align 1
@dprintf_file_only_format = constant i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%d.%02d.%d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Returning error %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s(%d): Returning error %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./base/gsmisc.c\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"+ %s:%d: %s(): %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"| %s:%d: %s(): %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"- %s:%d: %s(): %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"  %s:%d: %s(): %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"unknownerror\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"invalidaccess\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"invalidfileaccess\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"invalidfont\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"ioerror\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"limitcheck\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"nocurrentpoint\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"rangecheck\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"typecheck\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"undefinedfilename\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"undefinedresult\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"vmerror\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"unregistered\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"hit_detected\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Fatal\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"0x%lx:\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"[~]sqrt(%g) at %s:%d\0A\00", align 1
@const_90_degrees = global double 9.000000e+01, align 8
@isincos = internal constant [5 x i32] [i32 0, i32 1, i32 0, i32 -1, i32 0], align 16
@gs_debug_flags = constant [127 x %struct.gs_debug_flag_details] [%struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"icc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"ICC profile\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"validate_chunks\00\00\00\00\00", [80 x i8] c"Validate chunks during interpretation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc_disable\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Disable Garbage Collection (completely)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"ps_op_names\00\00\00\00\00\00\00\00\00", [80 x i8] c"Postscript operator names\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"contexts_detail\00\00\00\00\00", [80 x i8] c"Contexts (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"trace_errors\00\00\00\00\00\00\00\00", [80 x i8] c"Turn on tracing of error returns from operators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"memfill_obj\00\00\00\00\00\00\00\00\00", [80 x i8] c"Fill unused parts of object with identifiable garbage values\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"ext_commands\00\00\00\00\00\00\00\00", [80 x i8] c"Externally processed commands\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"contexts\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Contexts (create/destroy)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Image and rasterop parameters\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"min_stack\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Use minimum_size stack blocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"no_path_banding\00\00\00\00\00", [80 x i8] c"Don't use path-based banding\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"small_mem_tables\00\00\00\00", [80 x i8] c"Use small-memory table sizes even on large-memory machines\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"file_line\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Include file/line info on all trace output\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Garbage collection, minimal detail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"type1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Type 1 and type 43 font interpreter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"curve\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Curve subdivider/rasterizer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"curve_detail\00\00\00\00\00\00\00\00", [80 x i8] c"Curve subdivider/rasterizer (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc_strings\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Garbage collector (strings)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc_strings_detail\00\00\00", [80 x i8] c"Garbage collector (strings, detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc_chunks\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Garbage collector (chunks, roots)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc_objects\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Garbage collector (objects)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc_refs\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Garbage collector (refs)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gc_pointers\00\00\00\00\00\00\00\00\00", [80 x i8] c"Garbage collector (pointers)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Command list and allocator time summary\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"validate_pointers\00\00\00", [80 x i8] c"Validate pointers before/during/after garbage collection/save and restore\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"memfill_empty\00\00\00\00\00\00\00", [80 x i8] c"Fill empty storage with a distinctive bit pattern for debugging\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"alloc_detail\00\00\00\00\00\00\00\00", [80 x i8] c"Allocator (all calls)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"bitmap_detail\00\00\00\00\00\00\00", [80 x i8] c"Bitmap images (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"color_detail\00\00\00\00\00\00\00\00", [80 x i8] c"Color mapping (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"dict_detail\00\00\00\00\00\00\00\00\00", [80 x i8] c"Dictionary (every lookup)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"fill_detail\00\00\00\00\00\00\00\00\00", [80 x i8] c"Fill algorithm (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"halftones_detail\00\00\00\00", [80 x i8] c"Halftones (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"interp_detail\00\00\00\00\00\00\00", [80 x i8] c"Interpreter (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"char_cache_detail\00\00\00", [80 x i8] c"Character cache (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"clist_detail\00\00\00\00\00\00\00\00", [80 x i8] c"Command list (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"stroke_detail\00\00\00\00\00\00\00", [80 x i8] c"Stroke (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"paths_detail\00\00\00\00\00\00\00\00", [80 x i8] c"Paths (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"scanner\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Scanner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"undo_detail\00\00\00\00\00\00\00\00\00", [80 x i8] c"Undo saver (for save/restore) (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"compositors_detail\00\00", [80 x i8] c"Compositors (alpha/transparency/overprint/rop) (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"type1_hints_detail\00\00", [80 x i8] c"Type 1 hints (detail)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"ref_counts\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Reference counting\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"high_level\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"High level output\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"no_hl_img_banding\00\00\00", [80 x i8] c"Don't use high_level banded images\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"alloc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Allocator (large blocks)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"bitmap\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Bitmap images\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"color_halftones\00\00\00\00\00", [80 x i8] c"Color mapping\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"dict\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Dictionary (put/undef)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"external_calls\00\00\00\00\00\00", [80 x i8] c"External (OS related) calls\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"fill\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Fill algorithm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"gsave\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"gsave/grestore\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"halftones\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Halftones\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"interp\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Interpreter (names only)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"comp_fonts\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Composite fonts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"char_cache\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Character cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"clist\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Command list (bands)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"makefont\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"makefont and font cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"names\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Name lookup (new names only)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"stroke\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Stroke\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"paths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Paths (band list)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"clipping\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Clipping\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"arcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Arcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"streams\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Streams\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"tiling\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Tiling algorithm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"undo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Undo saver (for save/restore)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"compositors\00\00\00\00\00\00\00\00\00", [80 x i8] c"Compositors (alpha/transparency/overprint/rop)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"compress\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Compression encoder/decoder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"transforms\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Transformations\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"type1_hints\00\00\00\00\00\00\00\00\00", [80 x i8] c"Type 1 hints\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"trapezoid_fill\00\00\00\00\00\00", [80 x i8] c"Trapezoid fill\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details zeroinitializer, %struct.gs_debug_flag_details { i32 1, [20 x i8] c"math\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"Math functions and Functions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 16
@.str.38 = private unnamed_addr constant [48 x i8] c"Warning: debug flags ignored in release builds\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"No debug flags supported in release builds\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @outprintf(%struct.gs_memory_s* %mem, i8* %fmt, ...) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fmt.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %3, %struct.__va_list_tag* %arraydecay3) #7
  store i32 %call, i32* %count, align 4, !tbaa !5
  %4 = load i32, i32* %count, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %cmp = icmp uge i64 %conv, 1024
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call8 = call i32 @outwrite(%struct.gs_memory_s* %6, i8* %arraydecay7, i32 1023) #8
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i32 @outwrite(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @msg_truncated, i32 0, i32 0), i32 39) #8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %call11 = call i32 @outwrite(%struct.gs_memory_s* %8, i8* %arraydecay10, i32 %9) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1213 = bitcast %struct.__va_list_tag* %arraydecay12 to i8*
  call void @llvm.va_end(i8* %arraydecay1213)
  %10 = load i32, i32* %count, align 4, !tbaa !5
  %11 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #1
  %12 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %12) #1
  %13 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

declare i32 @outwrite(%struct.gs_memory_s*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @errprintf_nomem(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %3, %struct.__va_list_tag* %arraydecay3) #7
  store i32 %call, i32* %count, align 4, !tbaa !5
  %4 = load i32, i32* %count, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %cmp = icmp uge i64 %conv, 1024
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call8 = call i32 @errwrite_nomem(i8* %arraydecay7, i32 1023) #8
  %call9 = call i32 @errwrite_nomem(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @msg_truncated, i32 0, i32 0), i32 39) #8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %6 = load i32, i32* %count, align 4, !tbaa !5
  %call11 = call i32 @errwrite_nomem(i8* %arraydecay10, i32 %6) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1213 = bitcast %struct.__va_list_tag* %arraydecay12 to i8*
  call void @llvm.va_end(i8* %arraydecay1213)
  %7 = load i32, i32* %count, align 4, !tbaa !5
  %8 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  %9 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %9) #1
  %10 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %7
}

declare i32 @errwrite_nomem(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @errprintf(%struct.gs_memory_s* %mem, i8* %fmt, ...) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fmt.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %3, %struct.__va_list_tag* %arraydecay3) #7
  store i32 %call, i32* %count, align 4, !tbaa !5
  %4 = load i32, i32* %count, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %cmp = icmp uge i64 %conv, 1024
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call8 = call i32 @errwrite(%struct.gs_memory_s* %6, i8* %arraydecay7, i32 1023) #8
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i32 @errwrite(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @msg_truncated, i32 0, i32 0), i32 39) #8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %9 = load i32, i32* %count, align 4, !tbaa !5
  %call11 = call i32 @errwrite(%struct.gs_memory_s* %8, i8* %arraydecay10, i32 %9) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1213 = bitcast %struct.__va_list_tag* %arraydecay12 to i8*
  call void @llvm.va_end(i8* %arraydecay1213)
  %10 = load i32, i32* %count, align 4, !tbaa !5
  %11 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #1
  %12 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %12) #1
  %13 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %10
}

declare i32 @errwrite(%struct.gs_memory_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gs_debug_c(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %c.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @gs_debug, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %ret, align 4, !tbaa !5
  %3 = load i32, i32* %c.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [127 x i8], [127 x i8]* @gs_debug_flag_implied_by, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %4 to i32
  store i32 %conv3, i32* %c.addr, align 4, !tbaa !5
  %5 = load i32, i32* %c.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %7 = load i32, i32* %c.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [128 x i8], [128 x i8]* @gs_debug, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %conv7 = sext i8 %8 to i32
  %9 = load i32, i32* %ret, align 4, !tbaa !5
  %or = or i32 %9, %conv7
  store i32 %or, i32* %ret, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, i32* %c.addr, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [127 x i8], [127 x i8]* @gs_debug_flag_implied_by, i32 0, i64 %idxprom8
  %11 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  %conv10 = zext i8 %11 to i32
  store i32 %conv10, i32* %c.addr, align 4, !tbaa !5
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load i32, i32* %ret, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @dflush() #0 {
entry:
  call void @errflush_nomem() #8
  ret void
}

declare void @errflush_nomem() #3

; Function Attrs: nounwind uwtable
define void @dprintf_file_and_line(i8* %file, i32 %line) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  %0 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 47), align 1, !tbaa !7
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @dprintf_file_and_line_format, align 8, !tbaa !1
  %2 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %call = call i8* @dprintf_file_tail(i8* %2) #8
  %3 = load i32, i32* %line.addr, align 4, !tbaa !5
  %call1 = call i32 (i8*, ...) @errprintf_nomem(i8* %1, i8* %call, i32 %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @dprintf_file_tail(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %tail = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  %0 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #9
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  store i8* %add.ptr, i8** %tail, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %tail, align 8, !tbaa !1
  %4 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %cmp = icmp ugt i8* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %tail, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 -1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %6 to i32
  %idxprom = sext i32 %conv to i64
  %call1 = call i16** @__ctype_b_loc() #10
  %7 = load i16*, i16** %call1, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !8
  %conv3 = zext i16 %8 to i32
  %and = and i32 %conv3, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %9 = load i8*, i8** %tail, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 -1
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 46
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %tail, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 -1
  %12 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %13 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp10, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %13, %lor.end ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %tail, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %tail, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %tail, align 8, !tbaa !1
  %17 = bitcast i8** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define void @lprintf_file_and_line(i8* %file, i32 %line) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %1 = load i32, i32* %line.addr, align 4, !tbaa !5
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %0, i32 %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @eprintf_program_ident(i8* %program_name, i64 %revision_number) #0 {
entry:
  %program_name.addr = alloca i8*, align 8
  %revision_number.addr = alloca i64, align 8
  %fpart = alloca i32, align 4
  store i8* %program_name, i8** %program_name.addr, align 8, !tbaa !1
  store i64 %revision_number, i64* %revision_number.addr, align 8, !tbaa !10
  %0 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %tobool1 = icmp ne i64 %1, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)
  %2 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* %cond, i8* %2) #8
  %3 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %tobool2 = icmp ne i64 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %rem = srem i64 %5, 100
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %fpart, align 4, !tbaa !5
  %6 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %div = sdiv i64 %6, 10000
  %rem4 = srem i64 %div, 100
  %conv5 = trunc i64 %rem4 to i32
  %7 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %div6 = sdiv i64 %7, 100
  %rem7 = srem i64 %div6, 100
  %conv8 = trunc i64 %rem7 to i32
  %8 = load i32, i32* %fpart, align 4, !tbaa !5
  %call9 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %conv5, i32 %conv8, i32 %8) #8
  %9 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call10 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @dmprintf_file_and_line(%struct.gs_memory_s* %mem, i8* %file, i32 %line) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  %0 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 47), align 1, !tbaa !7
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** @dprintf_file_and_line_format, align 8, !tbaa !1
  %3 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %call = call i8* @dprintf_file_tail(i8* %3) #8
  %4 = load i32, i32* %line.addr, align 4, !tbaa !5
  %call1 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1, i8* %2, i8* %call, i32 %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @printf_program_ident(%struct.gs_memory_s* %mem, i8* %program_name, i64 %revision_number) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %program_name.addr = alloca i8*, align 8
  %revision_number.addr = alloca i64, align 8
  %fpart = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %program_name, i8** %program_name.addr, align 8, !tbaa !1
  store i64 %revision_number, i64* %revision_number.addr, align 8, !tbaa !10
  %0 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %tobool1 = icmp ne i64 %2, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)
  %3 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %1, i8* %cond, i8* %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %tobool2 = icmp ne i64 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %5 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %rem = srem i64 %6, 100
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %fpart, align 4, !tbaa !5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %div = sdiv i64 %8, 10000
  %rem4 = srem i64 %div, 100
  %conv5 = trunc i64 %rem4 to i32
  %9 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %div6 = sdiv i64 %9, 100
  %rem7 = srem i64 %div6, 100
  %conv8 = trunc i64 %rem7 to i32
  %10 = load i32, i32* %fpart, align 4, !tbaa !5
  %call9 = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %conv5, i32 %conv8, i32 %10) #8
  %11 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @emprintf_program_ident(%struct.gs_memory_s* %mem, i8* %program_name, i64 %revision_number) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %program_name.addr = alloca i8*, align 8
  %revision_number.addr = alloca i64, align 8
  %fpart = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %program_name, i8** %program_name.addr, align 8, !tbaa !1
  store i64 %revision_number, i64* %revision_number.addr, align 8, !tbaa !10
  %0 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %tobool1 = icmp ne i64 %2, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)
  %3 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1, i8* %cond, i8* %3) #8
  %4 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %tobool2 = icmp ne i64 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %rem = srem i64 %6, 100
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %fpart, align 4, !tbaa !5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %div = sdiv i64 %8, 10000
  %rem4 = srem i64 %div, 100
  %conv5 = trunc i64 %rem4 to i32
  %9 = load i64, i64* %revision_number.addr, align 8, !tbaa !10
  %div6 = sdiv i64 %9, 100
  %rem7 = srem i64 %div6, 100
  %conv8 = trunc i64 %rem7 to i32
  %10 = load i32, i32* %fpart, align 4, !tbaa !5
  %call9 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %conv5, i32 %conv8, i32 %10) #8
  %11 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call10 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @mlprintf_file_and_line(%struct.gs_memory_s* %mem, i8* %file, i32 %line) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %2 = load i32, i32* %line.addr, align 4, !tbaa !5
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %1, i32 %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_log_error(i32 %err, i8* %file, i32 %line) #0 {
entry:
  %err.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4, !tbaa !5
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  %0 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 35), align 1, !tbaa !7
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %2 = load i32, i32* %err.addr, align 4, !tbaa !5
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %2) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  %3 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %4 = load i32, i32* %line.addr, align 4, !tbaa !5
  %5 = load i32, i32* %err.addr, align 4, !tbaa !5
  %call2 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* %3, i32 %4, i32 %5) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load i32, i32* %err.addr, align 4, !tbaa !5
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gs_return_check_interrupt(%struct.gs_memory_s* %mem, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code.addr = alloca i32, align 4
  %icode = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = load i32, i32* %code.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code.addr, align 4, !tbaa !5
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %icode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %icode, align 4, !tbaa !5
  %3 = load i32, i32* %icode, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32, i32* %code.addr, align 4, !tbaa !5
  br label %cond.end.5

cond.false:                                       ; preds = %if.end
  %5 = load i32, i32* %icode, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %6 = load i32, i32* %icode, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ -6, %cond.true.3 ], [ %6, %cond.false.4 ]
  %call = call i32 @gs_log_error(i32 %cond, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 294) #8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %4, %cond.true ], [ %call, %cond.end ]
  store i32 %cond6, i32* %retval
  %7 = bitcast i32* %icode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  br label %return

return:                                           ; preds = %cond.end.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gs_throw_imp(i8* %func, i8* %file, i32 %line, i32 %op, i32 %code, i8* %fmt, ...) #0 {
entry:
  %func.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %msg = alloca [1024 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %func, i8** %func.addr, align 8, !tbaa !1
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast [1024 x i8]* %msg to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i32 0, i32 0
  %2 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %2, %struct.__va_list_tag* %arraydecay3) #7
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i32 0, i64 1023
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %call6 = call i32 @gs_debug_c(i32 35) #8
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %op.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %4 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %5 = load i32, i32* %line.addr, align 4, !tbaa !5
  %6 = load i8*, i8** %func.addr, align 8, !tbaa !1
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i32 0, i32 0
  %call9 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %4, i32 %5, i8* %6, i8* %arraydecay8) #8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %7 = load i32, i32* %op.addr, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %7, 1
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.10
  %8 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %9 = load i32, i32* %line.addr, align 4, !tbaa !5
  %10 = load i8*, i8** %func.addr, align 8, !tbaa !1
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i32 0, i32 0
  %call14 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* %8, i32 %9, i8* %10, i8* %arraydecay13) #8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.10
  %11 = load i32, i32* %op.addr, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %11, 2
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %12 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %13 = load i32, i32* %line.addr, align 4, !tbaa !5
  %14 = load i8*, i8** %func.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i32 0, i32 0
  %call19 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* %12, i32 %13, i8* %14, i8* %arraydecay18) #8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %15 = load i32, i32* %op.addr, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %15, 3
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.20
  %16 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %17 = load i32, i32* %line.addr, align 4, !tbaa !5
  %18 = load i8*, i8** %func.addr, align 8, !tbaa !1
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i32 0, i32 0
  %call24 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* %16, i32 %17, i8* %18, i8* %arraydecay23) #8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.20
  %19 = load i32, i32* %code.addr, align 4, !tbaa !5
  %20 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %20) #1
  %21 = bitcast [1024 x i8]* %msg to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %21) #1
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i8* @gs_errstr(i32 %code) #0 {
entry:
  %retval = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4, !tbaa !5
  %0 = load i32, i32* %code.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 -6, label %sw.bb.1
    i32 -7, label %sw.bb.2
    i32 -9, label %sw.bb.3
    i32 -10, label %sw.bb.4
    i32 -12, label %sw.bb.5
    i32 -13, label %sw.bb.6
    i32 -14, label %sw.bb.7
    i32 -15, label %sw.bb.8
    i32 -20, label %sw.bb.9
    i32 -21, label %sw.bb.10
    i32 -22, label %sw.bb.11
    i32 -23, label %sw.bb.12
    i32 -25, label %sw.bb.13
    i32 -28, label %sw.bb.14
    i32 -99, label %sw.bb.15
    i32 -100, label %sw.bb.16
  ]

sw.default:                                       ; preds = %entry
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %sw.default
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @gs_realloc(i8* %old_ptr, i64 %old_size, i64 %new_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %old_ptr.addr = alloca i8*, align 8
  %old_size.addr = alloca i64, align 8
  %new_size.addr = alloca i64, align 8
  %new_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %old_ptr, i8** %old_ptr.addr, align 8, !tbaa !1
  store i64 %old_size, i64* %old_size.addr, align 8, !tbaa !10
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !10
  %0 = bitcast i8** %new_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %new_size.addr, align 8, !tbaa !10
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %new_size.addr, align 8, !tbaa !10
  %call = call noalias i8* @malloc(i64 %2) #7
  store i8* %call, i8** %new_ptr, align 8, !tbaa !1
  %3 = load i8*, i8** %new_ptr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.else:                                          ; preds = %entry
  store i8* null, i8** %new_ptr, align 8, !tbaa !1
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.end
  %4 = load i8*, i8** %old_ptr.addr, align 8, !tbaa !1
  %cmp3 = icmp ne i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end.2
  %5 = load i8*, i8** %new_ptr, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then.4
  %6 = load i8*, i8** %new_ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %old_ptr.addr, align 8, !tbaa !1
  %8 = load i64, i64* %old_size.addr, align 8, !tbaa !10
  %9 = load i64, i64* %new_size.addr, align 8, !tbaa !10
  %cmp7 = icmp ult i64 %8, %9
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %10 = load i64, i64* %old_size.addr, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %11 = load i64, i64* %new_size.addr, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ]
  %call8 = call i8* @memcpy(i8* %6, i8* %7, i64 %cond) #7
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end, %if.then.4
  %12 = load i8*, i8** %old_ptr.addr, align 8, !tbaa !1
  call void @free(i8* %12) #7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.2
  %13 = load i8*, i8** %new_ptr, align 8, !tbaa !1
  store i8* %13, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.1
  %14 = bitcast i8** %new_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @debug_print_string_hex_nomem(i8* %chrs, i32 %len) #0 {
entry:
  %chrs.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %chrs, i8** %chrs.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %3 to i64
  %4 = load i8*, i8** %chrs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 %conv) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @dflush() #8
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_dump_bytes(%struct.gs_memory_s* %mem, i8* %from, i8* %to, i8* %msg) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %from.addr = alloca i8*, align 8
  %to.addr = alloca i8*, align 8
  %msg.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %from, i8** %from.addr, align 8, !tbaa !1
  store i8* %to, i8** %to.addr, align 8, !tbaa !1
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %from.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  %2 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %7, %8
  br i1 %cmp1, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 16
  %11 = load i8*, i8** %to.addr, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %add.ptr, %11
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %12, i64 16
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %13 = load i8*, i8** %to.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr3, %cond.true ], [ %13, %cond.false ]
  store i8* %cond, i8** %q, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %16 = ptrtoint i8* %15 to i64
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i64 %16) #8
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.7, %cond.end
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp6 = icmp ne i8* %17, %18
  br i1 %cmp6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.5
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %conv = zext i8 %21 to i32
  %call8 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %conv) #8
  br label %while.cond.5

while.end:                                        ; preds = %while.cond.5
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 10) #8
  %23 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  %24 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_dump_bitmap(%struct.gs_memory_s* %mem, i8* %bits, i32 %raster, i32 %height, i8* %msg) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %bits.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %y = alloca i32, align 4
  %data = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %bits, i8** %bits.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %bits.addr, align 8, !tbaa !1
  store i8* %2, i8** %data, align 8, !tbaa !1
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %y, align 4, !tbaa !5
  %4 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %data, align 8, !tbaa !1
  %7 = load i8*, i8** %data, align 8, !tbaa !1
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = load i32, i32* %y, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i8*, i8** %msg.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ null, %cond.false ]
  call void @debug_dump_bytes(%struct.gs_memory_s* %5, i8* %6, i8* %add.ptr, i8* %cond) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add i32 %11, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %13 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext2 = zext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %13, i64 %idx.ext2
  store i8* %add.ptr3, i8** %data, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_print_string(%struct.gs_memory_s* %mem, i8* %chrs, i32 %len) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %chrs.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %chrs, i8** %chrs.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load i8*, i8** %chrs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %6 to i32
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 %conv) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @errflush(%struct.gs_memory_s* %8) #8
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

declare void @errflush(%struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define void @debug_print_string_hex(%struct.gs_memory_s* %mem, i8* %chrs, i32 %len) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %chrs.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %chrs, i8** %chrs.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load i8*, i8** %chrs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %6 to i32
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 %conv) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @errflush(%struct.gs_memory_s* %8) #8
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @imod(i32 %m, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %m.addr, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %m.addr, align 4, !tbaa !5
  %3 = load i32, i32* %n.addr, align 4, !tbaa !5
  %rem = srem i32 %2, %3
  store i32 %rem, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %m.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %5
  %6 = load i32, i32* %n.addr, align 4, !tbaa !5
  %rem4 = srem i32 %sub, %6
  store i32 %rem4, i32* %r, align 4, !tbaa !5
  %7 = load i32, i32* %r, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %8 = load i32, i32* %n.addr, align 4, !tbaa !5
  %9 = load i32, i32* %r, align 4, !tbaa !5
  %sub6 = sub nsw i32 %8, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub6, %cond.false ]
  store i32 %cond, i32* %retval
  %10 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  br label %return

return:                                           ; preds = %cond.end, %if.then.2, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @igcd(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %1, i32* %c, align 4, !tbaa !5
  %2 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %3, i32* %d, align 4, !tbaa !5
  %4 = load i32, i32* %c, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %c, align 4, !tbaa !5
  %sub = sub nsw i32 0, %5
  store i32 %sub, i32* %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %d, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %d, align 4, !tbaa !5
  %sub3 = sub nsw i32 0, %7
  store i32 %sub3, i32* %d, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end.4
  %8 = load i32, i32* %c, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %8, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %d, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %c, align 4, !tbaa !5
  %12 = load i32, i32* %d, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %11, %12
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %13 = load i32, i32* %d, align 4, !tbaa !5
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %rem = srem i32 %14, %13
  store i32 %rem, i32* %c, align 4, !tbaa !5
  br label %if.end.10

if.else:                                          ; preds = %while.body
  %15 = load i32, i32* %c, align 4, !tbaa !5
  %16 = load i32, i32* %d, align 4, !tbaa !5
  %rem9 = srem i32 %16, %15
  store i32 %rem9, i32* %d, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %d, align 4, !tbaa !5
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %add = add nsw i32 %17, %18
  %19 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @idivmod(i32 %a, i32 %b, i32 %m) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %u1 = alloca i32, align 4
  %u3 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v3 = alloca i32, align 4
  %q = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  store i32 %m, i32* %m.addr, align 4, !tbaa !5
  %0 = bitcast i32* %u1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %u1, align 4, !tbaa !5
  %1 = bitcast i32* %u3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %m.addr, align 4, !tbaa !5
  store i32 %2, i32* %u3, align 4, !tbaa !5
  %3 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %v1, align 4, !tbaa !5
  %4 = bitcast i32* %v3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %a.addr, align 4, !tbaa !5
  store i32 %5, i32* %v3, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i32, i32* %v3, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %u3, align 4, !tbaa !5
  %9 = load i32, i32* %v3, align 4, !tbaa !5
  %div = sdiv i32 %8, %9
  store i32 %div, i32* %q, align 4, !tbaa !5
  %10 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %u1, align 4, !tbaa !5
  %12 = load i32, i32* %v1, align 4, !tbaa !5
  %13 = load i32, i32* %q, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %13
  %sub = sub nsw i32 %11, %mul
  store i32 %sub, i32* %t, align 4, !tbaa !5
  %14 = load i32, i32* %v1, align 4, !tbaa !5
  store i32 %14, i32* %u1, align 4, !tbaa !5
  %15 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %15, i32* %v1, align 4, !tbaa !5
  %16 = load i32, i32* %u3, align 4, !tbaa !5
  %17 = load i32, i32* %v3, align 4, !tbaa !5
  %18 = load i32, i32* %q, align 4, !tbaa !5
  %mul1 = mul nsw i32 %17, %18
  %sub2 = sub nsw i32 %16, %mul1
  store i32 %sub2, i32* %t, align 4, !tbaa !5
  %19 = load i32, i32* %v3, align 4, !tbaa !5
  store i32 %19, i32* %u3, align 4, !tbaa !5
  %20 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %20, i32* %v3, align 4, !tbaa !5
  %21 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %u1, align 4, !tbaa !5
  %24 = load i32, i32* %b.addr, align 4, !tbaa !5
  %mul3 = mul nsw i32 %23, %24
  %25 = load i32, i32* %a.addr, align 4, !tbaa !5
  %26 = load i32, i32* %m.addr, align 4, !tbaa !5
  %call = call i32 @igcd(i32 %25, i32 %26) #8
  %div4 = sdiv i32 %mul3, %call
  %27 = load i32, i32* %m.addr, align 4, !tbaa !5
  %call5 = call i32 @imod(i32 %div4, i32 %27) #8
  %28 = bitcast i32* %v3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %u3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %u1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define i32 @ilog2(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %n.addr, align 4, !tbaa !5
  store i32 %1, i32* %m, align 4, !tbaa !5
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %m, align 4, !tbaa !5
  %cmp = icmp sge i32 %3, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %m, align 4, !tbaa !5
  %shr = ashr i32 %4, 4
  store i32 %shr, i32* %m, align 4, !tbaa !5
  %5 = load i32, i32* %l, align 4, !tbaa !5
  %add = add nsw i32 %5, 4
  store i32 %add, i32* %l, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %m, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %6, 1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %7 = load i32, i32* %l, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %8 = load i32, i32* %m, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @.str.36, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = sext i8 %9 to i32
  %10 = load i32, i32* %l, align 4, !tbaa !5
  %add2 = add nsw i32 %conv, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %add2, %cond.false ]
  %11 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @fixed_mult_quo(i32 %signed_A, i32 %B, i32 %C) #0 {
entry:
  %retval = alloca i32, align 4
  %signed_A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 %signed_A, i32* %signed_A.addr, align 4, !tbaa !5
  store i32 %B, i32* %B.addr, align 4, !tbaa !5
  store i32 %C, i32* %C.addr, align 4, !tbaa !5
  %0 = load i32, i32* %B.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %cmp = icmp slt i64 %conv, 2097152
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %signed_A.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %2 = load i32, i32* %signed_A.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load i32, i32* %signed_A.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %3, %cond.false ]
  %conv4 = sext i32 %cond to i64
  %cmp5 = icmp slt i64 %conv4, 2097152
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end, %entry
  %4 = load i32, i32* %signed_A.addr, align 4, !tbaa !5
  %conv7 = sitofp i32 %4 to double
  %5 = load i32, i32* %B.addr, align 4, !tbaa !5
  %conv8 = sitofp i32 %5 to double
  %mul = fmul double %conv7, %conv8
  %6 = load i32, i32* %C.addr, align 4, !tbaa !5
  %conv9 = sitofp i32 %6 to double
  %div = fdiv double %mul, %conv9
  %call = call double @floor(double %div) #10
  %conv10 = fptosi double %call to i32
  store i32 %conv10, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %7 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %signed_A.addr, align 4, !tbaa !5
  %conv11 = sitofp i32 %8 to double
  %9 = load i32, i32* %B.addr, align 4, !tbaa !5
  %conv12 = sitofp i32 %9 to double
  %mul13 = fmul double %conv11, %conv12
  %add = fadd double %mul13, 2.048000e+03
  %10 = load i32, i32* %C.addr, align 4, !tbaa !5
  %conv14 = sitofp i32 %10 to double
  %div15 = fdiv double %add, %conv14
  %call16 = call double @floor(double %div15) #10
  %conv17 = fptosi double %call16 to i32
  store i32 %conv17, i32* %q, align 4, !tbaa !5
  %11 = load i32, i32* %signed_A.addr, align 4, !tbaa !5
  %12 = load i32, i32* %B.addr, align 4, !tbaa !5
  %mul18 = mul nsw i32 %11, %12
  %13 = load i32, i32* %q, align 4, !tbaa !5
  %14 = load i32, i32* %C.addr, align 4, !tbaa !5
  %mul19 = mul nsw i32 %13, %14
  %sub20 = sub nsw i32 %mul18, %mul19
  %cmp21 = icmp slt i32 %sub20, 0
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else
  %15 = load i32, i32* %q, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %q, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.else
  %16 = load i32, i32* %q, align 4, !tbaa !5
  store i32 %16, i32* %retval
  %17 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind uwtable
define double @gs_sqrt(double %x, i8* %file, i32 %line) #0 {
entry:
  %x.addr = alloca double, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store double %x, double* %x.addr, align 8, !tbaa !12
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  %call = call i32 @gs_debug_c(i32 126) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load double, double* %x.addr, align 8, !tbaa !12
  %1 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %2 = load i32, i32* %line.addr, align 4, !tbaa !5
  %call1 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), double %0, i8* %1, i32 %2) #8
  call void @dflush() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load double, double* %x.addr, align 8, !tbaa !12
  %call2 = call double @orig_sqrt(double %3) #8
  ret double %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @orig_sqrt(double %x) #5 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !12
  %0 = load double, double* %x.addr, align 8, !tbaa !12
  %call = call double @sqrt(double %0) #7
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @gs_sin_degrees(double %ang) #0 {
entry:
  %retval = alloca double, align 8
  %ang.addr = alloca double, align 8
  %quot = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %ang, double* %ang.addr, align 8, !tbaa !12
  %0 = bitcast double* %quot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %ang.addr, align 8, !tbaa !12
  %2 = load double, double* @const_90_degrees, align 8, !tbaa !12
  %div = fdiv double %1, %2
  store double %div, double* %quot, align 8, !tbaa !12
  %3 = load double, double* %quot, align 8, !tbaa !12
  %call = call double @floor(double %3) #10
  %4 = load double, double* %quot, align 8, !tbaa !12
  %cmp = fcmp oeq double %call, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load double, double* %quot, align 8, !tbaa !12
  %call1 = call double @fmod(double %5, double 4.000000e+00) #7
  %conv = fptosi double %call1 to i32
  %and = and i32 %conv, 3
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @isincos, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv2 = sitofp i32 %6 to double
  store double %conv2, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load double, double* %ang.addr, align 8, !tbaa !12
  %mul = fmul double %7, 0x3F91DF46A2529D39
  %call3 = call double @sin(double %mul) #7
  store double %call3, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast double* %quot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load double, double* %retval
  ret double %9
}

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define double @gs_cos_degrees(double %ang) #0 {
entry:
  %retval = alloca double, align 8
  %ang.addr = alloca double, align 8
  %quot = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %ang, double* %ang.addr, align 8, !tbaa !12
  %0 = bitcast double* %quot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %ang.addr, align 8, !tbaa !12
  %2 = load double, double* @const_90_degrees, align 8, !tbaa !12
  %div = fdiv double %1, %2
  store double %div, double* %quot, align 8, !tbaa !12
  %3 = load double, double* %quot, align 8, !tbaa !12
  %call = call double @floor(double %3) #10
  %4 = load double, double* %quot, align 8, !tbaa !12
  %cmp = fcmp oeq double %call, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load double, double* %quot, align 8, !tbaa !12
  %call1 = call double @fmod(double %5, double 4.000000e+00) #7
  %conv = fptosi double %call1 to i32
  %and = and i32 %conv, 3
  %add = add nsw i32 %and, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @isincos, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv2 = sitofp i32 %6 to double
  store double %conv2, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load double, double* %ang.addr, align 8, !tbaa !12
  %mul = fmul double %7, 0x3F91DF46A2529D39
  %call3 = call double @cos(double %mul) #7
  store double %call3, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast double* %quot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load double, double* %retval
  ret double %9
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define void @gs_sincos_degrees(double %ang, %struct.gs_sincos_s* %psincos) #0 {
entry:
  %ang.addr = alloca double, align 8
  %psincos.addr = alloca %struct.gs_sincos_s*, align 8
  %quot = alloca double, align 8
  %quads = alloca i32, align 4
  %arad = alloca double, align 8
  store double %ang, double* %ang.addr, align 8, !tbaa !12
  store %struct.gs_sincos_s* %psincos, %struct.gs_sincos_s** %psincos.addr, align 8, !tbaa !1
  %0 = bitcast double* %quot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %ang.addr, align 8, !tbaa !12
  %2 = load double, double* @const_90_degrees, align 8, !tbaa !12
  %div = fdiv double %1, %2
  store double %div, double* %quot, align 8, !tbaa !12
  %3 = load double, double* %quot, align 8, !tbaa !12
  %call = call double @floor(double %3) #10
  %4 = load double, double* %quot, align 8, !tbaa !12
  %cmp = fcmp oeq double %call, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %quads to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load double, double* %quot, align 8, !tbaa !12
  %call1 = call double @fmod(double %6, double 4.000000e+00) #7
  %conv = fptosi double %call1 to i32
  %and = and i32 %conv, 3
  store i32 %and, i32* %quads, align 4, !tbaa !5
  %7 = load i32, i32* %quads, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @isincos, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv2 = sitofp i32 %8 to double
  %9 = load %struct.gs_sincos_s*, %struct.gs_sincos_s** %psincos.addr, align 8, !tbaa !1
  %sin = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %9, i32 0, i32 0
  store double %conv2, double* %sin, align 8, !tbaa !14
  %10 = load i32, i32* %quads, align 4, !tbaa !5
  %add = add nsw i32 %10, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* @isincos, i32 0, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %conv5 = sitofp i32 %11 to double
  %12 = load %struct.gs_sincos_s*, %struct.gs_sincos_s** %psincos.addr, align 8, !tbaa !1
  %cos = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %12, i32 0, i32 1
  store double %conv5, double* %cos, align 8, !tbaa !16
  %13 = load %struct.gs_sincos_s*, %struct.gs_sincos_s** %psincos.addr, align 8, !tbaa !1
  %orthogonal = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %13, i32 0, i32 2
  store i32 1, i32* %orthogonal, align 4, !tbaa !17
  %14 = bitcast i32* %quads to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = bitcast double* %arad to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load double, double* %ang.addr, align 8, !tbaa !12
  %mul = fmul double %16, 0x3F91DF46A2529D39
  store double %mul, double* %arad, align 8, !tbaa !12
  %17 = load double, double* %arad, align 8, !tbaa !12
  %call6 = call double @sin(double %17) #7
  %18 = load %struct.gs_sincos_s*, %struct.gs_sincos_s** %psincos.addr, align 8, !tbaa !1
  %sin7 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %18, i32 0, i32 0
  store double %call6, double* %sin7, align 8, !tbaa !14
  %19 = load double, double* %arad, align 8, !tbaa !12
  %call8 = call double @cos(double %19) #7
  %20 = load %struct.gs_sincos_s*, %struct.gs_sincos_s** %psincos.addr, align 8, !tbaa !1
  %cos9 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %20, i32 0, i32 1
  store double %call8, double* %cos9, align 8, !tbaa !16
  %21 = load %struct.gs_sincos_s*, %struct.gs_sincos_s** %psincos.addr, align 8, !tbaa !1
  %orthogonal10 = getelementptr inbounds %struct.gs_sincos_s, %struct.gs_sincos_s* %21, i32 0, i32 2
  store i32 0, i32* %orthogonal10, align 4, !tbaa !17
  %22 = bitcast double* %arad to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = bitcast double* %quot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_atan2_degrees(double %y, double %x, double* %pangle) #0 {
entry:
  %retval = alloca i32, align 4
  %y.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %pangle.addr = alloca double*, align 8
  %result = alloca double, align 8
  store double %y, double* %y.addr, align 8, !tbaa !12
  store double %x, double* %x.addr, align 8, !tbaa !12
  store double* %pangle, double** %pangle.addr, align 8, !tbaa !1
  %0 = load double, double* %y.addr, align 8, !tbaa !12
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 8, !tbaa !12
  %cmp1 = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call i32 @gs_log_error(i32 -23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 1002) #8
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load double, double* %x.addr, align 8, !tbaa !12
  %cmp3 = fcmp olt double %2, 0.000000e+00
  %cond = select i1 %cmp3, i32 180, i32 0
  %conv = sitofp i32 %cond to double
  %3 = load double*, double** %pangle.addr, align 8, !tbaa !1
  store double %conv, double* %3, align 8, !tbaa !12
  br label %if.end.9

if.else:                                          ; preds = %entry
  %4 = bitcast double* %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load double, double* %y.addr, align 8, !tbaa !12
  %6 = load double, double* %x.addr, align 8, !tbaa !12
  %call4 = call double @atan2(double %5, double %6) #7
  %mul = fmul double %call4, 0x404CA5DC1A63C1F8
  store double %mul, double* %result, align 8, !tbaa !12
  %7 = load double, double* %result, align 8, !tbaa !12
  %cmp5 = fcmp olt double %7, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %8 = load double, double* %result, align 8, !tbaa !12
  %add = fadd double %8, 3.600000e+02
  store double %add, double* %result, align 8, !tbaa !12
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.else
  %9 = load double, double* %result, align 8, !tbaa !12
  %10 = load double*, double** %pangle.addr, align 8, !tbaa !1
  store double %9, double* %10, align 8, !tbaa !12
  %11 = bitcast double* %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind uwtable
define i32 @gx_intersect_small_bars(i32 %q0x, i32 %q0y, i32 %q1x, i32 %q1y, i32 %q2x, i32 %q2y, i32 %q3x, i32 %q3y, i32* %ry, i32* %ey) #0 {
entry:
  %retval = alloca i32, align 4
  %q0x.addr = alloca i32, align 4
  %q0y.addr = alloca i32, align 4
  %q1x.addr = alloca i32, align 4
  %q1y.addr = alloca i32, align 4
  %q2x.addr = alloca i32, align 4
  %q2y.addr = alloca i32, align 4
  %q3x.addr = alloca i32, align 4
  %q3y.addr = alloca i32, align 4
  %ry.addr = alloca i32*, align 8
  %ey.addr = alloca i32*, align 8
  %dx1 = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %dx2 = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %dx3 = alloca i32, align 4
  %dy3 = alloca i32, align 4
  %vp2a = alloca i64, align 8
  %vp2b = alloca i64, align 8
  %vp3a = alloca i64, align 8
  %vp3b = alloca i64, align 8
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %d23x = alloca i32, align 4
  %d23y = alloca i32, align 4
  %det = alloca i64, align 8
  %mul112 = alloca i64, align 8
  %num = alloca i64, align 8
  %iiy = alloca i64, align 8
  %iy = alloca i32, align 4
  %pry = alloca i32, align 4
  %pey = alloca i32, align 4
  store i32 %q0x, i32* %q0x.addr, align 4, !tbaa !5
  store i32 %q0y, i32* %q0y.addr, align 4, !tbaa !5
  store i32 %q1x, i32* %q1x.addr, align 4, !tbaa !5
  store i32 %q1y, i32* %q1y.addr, align 4, !tbaa !5
  store i32 %q2x, i32* %q2x.addr, align 4, !tbaa !5
  store i32 %q2y, i32* %q2y.addr, align 4, !tbaa !5
  store i32 %q3x, i32* %q3x.addr, align 4, !tbaa !5
  store i32 %q3y, i32* %q3y.addr, align 4, !tbaa !5
  store i32* %ry, i32** %ry.addr, align 8, !tbaa !1
  store i32* %ey, i32** %ey.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %q1x.addr, align 4, !tbaa !5
  %2 = load i32, i32* %q0x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %dx1, align 4, !tbaa !5
  %3 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %q1y.addr, align 4, !tbaa !5
  %5 = load i32, i32* %q0y.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %4, %5
  store i32 %sub1, i32* %dy1, align 4, !tbaa !5
  %6 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %q2x.addr, align 4, !tbaa !5
  %8 = load i32, i32* %q0x.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %7, %8
  store i32 %sub2, i32* %dx2, align 4, !tbaa !5
  %9 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %q2y.addr, align 4, !tbaa !5
  %11 = load i32, i32* %q0y.addr, align 4, !tbaa !5
  %sub3 = sub nsw i32 %10, %11
  store i32 %sub3, i32* %dy2, align 4, !tbaa !5
  %12 = bitcast i32* %dx3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %q3x.addr, align 4, !tbaa !5
  %14 = load i32, i32* %q0x.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %13, %14
  store i32 %sub4, i32* %dx3, align 4, !tbaa !5
  %15 = bitcast i32* %dy3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %q3y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %q0y.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 %16, %17
  store i32 %sub5, i32* %dy3, align 4, !tbaa !5
  %18 = bitcast i64* %vp2a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i64* %vp2b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i64* %vp3a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i64* %vp3b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %s3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %dx1, align 4, !tbaa !5
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %25 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %25, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end:                                           ; preds = %land.lhs.true, %entry
  %26 = load i32, i32* %dx2, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %26, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.end
  %27 = load i32, i32* %dy2, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %27, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.11:                                        ; preds = %land.lhs.true.8, %if.end
  %28 = load i32, i32* %dx3, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %28, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.16

land.lhs.true.13:                                 ; preds = %if.end.11
  %29 = load i32, i32* %dy3, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %29, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.16:                                        ; preds = %land.lhs.true.13, %if.end.11
  %30 = load i32, i32* %dx2, align 4, !tbaa !5
  %31 = load i32, i32* %dx1, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %30, %31
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %if.end.16
  %32 = load i32, i32* %dy2, align 4, !tbaa !5
  %33 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %32, %33
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.21:                                        ; preds = %land.lhs.true.18, %if.end.16
  %34 = load i32, i32* %dx3, align 4, !tbaa !5
  %35 = load i32, i32* %dx1, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %34, %35
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.26

land.lhs.true.23:                                 ; preds = %if.end.21
  %36 = load i32, i32* %dy3, align 4, !tbaa !5
  %37 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %36, %37
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.26:                                        ; preds = %land.lhs.true.23, %if.end.21
  %38 = load i32, i32* %dx2, align 4, !tbaa !5
  %39 = load i32, i32* %dx3, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %38, %39
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %if.end.26
  %40 = load i32, i32* %dy2, align 4, !tbaa !5
  %41 = load i32, i32* %dy3, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %40, %41
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.31:                                        ; preds = %land.lhs.true.28, %if.end.26
  %42 = load i32, i32* %dx1, align 4, !tbaa !5
  %conv = sext i32 %42 to i64
  %43 = load i32, i32* %dy2, align 4, !tbaa !5
  %conv32 = sext i32 %43 to i64
  %mul = mul nsw i64 %conv, %conv32
  store i64 %mul, i64* %vp2a, align 8, !tbaa !10
  %44 = load i32, i32* %dy1, align 4, !tbaa !5
  %conv33 = sext i32 %44 to i64
  %45 = load i32, i32* %dx2, align 4, !tbaa !5
  %conv34 = sext i32 %45 to i64
  %mul35 = mul nsw i64 %conv33, %conv34
  store i64 %mul35, i64* %vp2b, align 8, !tbaa !10
  %46 = load i64, i64* %vp2a, align 8, !tbaa !10
  %47 = load i64, i64* %vp2b, align 8, !tbaa !10
  %cmp36 = icmp sgt i64 %46, %47
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.31
  store i32 1, i32* %s2, align 4, !tbaa !5
  br label %if.end.44

if.else:                                          ; preds = %if.end.31
  %48 = load i64, i64* %vp2a, align 8, !tbaa !10
  %49 = load i64, i64* %vp2b, align 8, !tbaa !10
  %cmp39 = icmp slt i64 %48, %49
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.else
  store i32 -1, i32* %s2, align 4, !tbaa !5
  br label %if.end.43

if.else.42:                                       ; preds = %if.else
  store i32 0, i32* %s2, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.38
  %50 = load i32, i32* %dx1, align 4, !tbaa !5
  %conv45 = sext i32 %50 to i64
  %51 = load i32, i32* %dy3, align 4, !tbaa !5
  %conv46 = sext i32 %51 to i64
  %mul47 = mul nsw i64 %conv45, %conv46
  store i64 %mul47, i64* %vp3a, align 8, !tbaa !10
  %52 = load i32, i32* %dy1, align 4, !tbaa !5
  %conv48 = sext i32 %52 to i64
  %53 = load i32, i32* %dx3, align 4, !tbaa !5
  %conv49 = sext i32 %53 to i64
  %mul50 = mul nsw i64 %conv48, %conv49
  store i64 %mul50, i64* %vp3b, align 8, !tbaa !10
  %54 = load i64, i64* %vp3a, align 8, !tbaa !10
  %55 = load i64, i64* %vp3b, align 8, !tbaa !10
  %cmp51 = icmp sgt i64 %54, %55
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.end.44
  store i32 1, i32* %s3, align 4, !tbaa !5
  br label %if.end.60

if.else.54:                                       ; preds = %if.end.44
  %56 = load i64, i64* %vp3a, align 8, !tbaa !10
  %57 = load i64, i64* %vp3b, align 8, !tbaa !10
  %cmp55 = icmp slt i64 %56, %57
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.54
  store i32 -1, i32* %s3, align 4, !tbaa !5
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.54
  store i32 0, i32* %s3, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.53
  %58 = load i32, i32* %s2, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %58, 0
  br i1 %cmp61, label %if.then.63, label %if.else.81

if.then.63:                                       ; preds = %if.end.60
  %59 = load i32, i32* %s3, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %59, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.67:                                        ; preds = %if.then.63
  %60 = load i32, i32* %dx2, align 4, !tbaa !5
  %cmp68 = icmp sle i32 0, %60
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.80

land.lhs.true.70:                                 ; preds = %if.end.67
  %61 = load i32, i32* %dx2, align 4, !tbaa !5
  %62 = load i32, i32* %dx1, align 4, !tbaa !5
  %cmp71 = icmp sle i32 %61, %62
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.80

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %63 = load i32, i32* %dy2, align 4, !tbaa !5
  %cmp74 = icmp sle i32 0, %63
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.80

land.lhs.true.76:                                 ; preds = %land.lhs.true.73
  %64 = load i32, i32* %dy2, align 4, !tbaa !5
  %65 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp77 = icmp sle i32 %64, %65
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %land.lhs.true.76
  %66 = load i32, i32* %q2y.addr, align 4, !tbaa !5
  %67 = load i32*, i32** %ry.addr, align 8, !tbaa !1
  store i32 %66, i32* %67, align 4, !tbaa !5
  %68 = load i32*, i32** %ey.addr, align 8, !tbaa !1
  store i32 0, i32* %68, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.80:                                        ; preds = %land.lhs.true.76, %land.lhs.true.73, %land.lhs.true.70, %if.end.67
  br label %if.end.191

if.else.81:                                       ; preds = %if.end.60
  %69 = load i32, i32* %s3, align 4, !tbaa !5
  %cmp82 = icmp eq i32 %69, 0
  br i1 %cmp82, label %if.then.84, label %if.else.98

if.then.84:                                       ; preds = %if.else.81
  %70 = load i32, i32* %dx3, align 4, !tbaa !5
  %cmp85 = icmp sle i32 0, %70
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.97

land.lhs.true.87:                                 ; preds = %if.then.84
  %71 = load i32, i32* %dx3, align 4, !tbaa !5
  %72 = load i32, i32* %dx1, align 4, !tbaa !5
  %cmp88 = icmp sle i32 %71, %72
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.97

land.lhs.true.90:                                 ; preds = %land.lhs.true.87
  %73 = load i32, i32* %dy3, align 4, !tbaa !5
  %cmp91 = icmp sle i32 0, %73
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.97

land.lhs.true.93:                                 ; preds = %land.lhs.true.90
  %74 = load i32, i32* %dy3, align 4, !tbaa !5
  %75 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp94 = icmp sle i32 %74, %75
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.93
  %76 = load i32, i32* %q3y.addr, align 4, !tbaa !5
  %77 = load i32*, i32** %ry.addr, align 8, !tbaa !1
  store i32 %76, i32* %77, align 4, !tbaa !5
  %78 = load i32*, i32** %ey.addr, align 8, !tbaa !1
  store i32 0, i32* %78, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

if.end.97:                                        ; preds = %land.lhs.true.93, %land.lhs.true.90, %land.lhs.true.87, %if.then.84
  br label %if.end.190

if.else.98:                                       ; preds = %if.else.81
  %79 = load i32, i32* %s2, align 4, !tbaa !5
  %80 = load i32, i32* %s3, align 4, !tbaa !5
  %mul99 = mul nsw i32 %79, %80
  %cmp100 = icmp slt i32 %mul99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.189

if.then.102:                                      ; preds = %if.else.98
  %81 = bitcast i32* %d23x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load i32, i32* %dx3, align 4, !tbaa !5
  %83 = load i32, i32* %dx2, align 4, !tbaa !5
  %sub103 = sub nsw i32 %82, %83
  store i32 %sub103, i32* %d23x, align 4, !tbaa !5
  %84 = bitcast i32* %d23y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load i32, i32* %dy3, align 4, !tbaa !5
  %86 = load i32, i32* %dy2, align 4, !tbaa !5
  %sub104 = sub nsw i32 %85, %86
  store i32 %sub104, i32* %d23y, align 4, !tbaa !5
  %87 = bitcast i64* %det to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load i32, i32* %dx1, align 4, !tbaa !5
  %conv105 = sext i32 %88 to i64
  %89 = load i32, i32* %d23y, align 4, !tbaa !5
  %conv106 = sext i32 %89 to i64
  %mul107 = mul nsw i64 %conv105, %conv106
  %90 = load i32, i32* %dy1, align 4, !tbaa !5
  %conv108 = sext i32 %90 to i64
  %91 = load i32, i32* %d23x, align 4, !tbaa !5
  %conv109 = sext i32 %91 to i64
  %mul110 = mul nsw i64 %conv108, %conv109
  %sub111 = sub nsw i64 %mul107, %mul110
  store i64 %sub111, i64* %det, align 8, !tbaa !10
  %92 = bitcast i64* %mul112 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = load i32, i32* %dx2, align 4, !tbaa !5
  %conv113 = sext i32 %93 to i64
  %94 = load i32, i32* %d23y, align 4, !tbaa !5
  %conv114 = sext i32 %94 to i64
  %mul115 = mul nsw i64 %conv113, %conv114
  %95 = load i32, i32* %dy2, align 4, !tbaa !5
  %conv116 = sext i32 %95 to i64
  %96 = load i32, i32* %d23x, align 4, !tbaa !5
  %conv117 = sext i32 %96 to i64
  %mul118 = mul nsw i64 %conv116, %conv117
  %sub119 = sub nsw i64 %mul115, %mul118
  store i64 %sub119, i64* %mul112, align 8, !tbaa !10
  %97 = bitcast i64* %num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = load i32, i32* %dy1, align 4, !tbaa !5
  %conv120 = sext i32 %98 to i64
  %99 = load i64, i64* %mul112, align 8, !tbaa !10
  %mul121 = mul nsw i64 %conv120, %99
  store i64 %mul121, i64* %num, align 8, !tbaa !10
  %100 = bitcast i64* %iiy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  %101 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = bitcast i32* %pry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = bitcast i32* %pey to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load i64, i64* %det, align 8, !tbaa !10
  %cmp122 = icmp slt i64 %104, 0
  br i1 %cmp122, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %if.then.102
  %105 = load i64, i64* %num, align 8, !tbaa !10
  %sub125 = sub nsw i64 0, %105
  store i64 %sub125, i64* %num, align 8, !tbaa !10
  %106 = load i64, i64* %det, align 8, !tbaa !10
  %sub126 = sub nsw i64 0, %106
  store i64 %sub126, i64* %det, align 8, !tbaa !10
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %if.then.102
  %107 = load i64, i64* %num, align 8, !tbaa !10
  %cmp128 = icmp sge i64 %107, 0
  br i1 %cmp128, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.127
  %108 = load i64, i64* %num, align 8, !tbaa !10
  %109 = load i64, i64* %det, align 8, !tbaa !10
  %div = sdiv i64 %108, %109
  br label %cond.end

cond.false:                                       ; preds = %if.end.127
  %110 = load i64, i64* %num, align 8, !tbaa !10
  %111 = load i64, i64* %det, align 8, !tbaa !10
  %sub130 = sub nsw i64 %110, %111
  %add = add nsw i64 %sub130, 1
  %112 = load i64, i64* %det, align 8, !tbaa !10
  %div131 = sdiv i64 %add, %112
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ %div131, %cond.false ]
  store i64 %cond, i64* %iiy, align 8, !tbaa !10
  %113 = load i64, i64* %iiy, align 8, !tbaa !10
  %conv132 = trunc i64 %113 to i32
  store i32 %conv132, i32* %iy, align 4, !tbaa !5
  %114 = load i32, i32* %iy, align 4, !tbaa !5
  %conv133 = sext i32 %114 to i64
  %115 = load i64, i64* %iiy, align 8, !tbaa !10
  %cmp134 = icmp ne i64 %conv133, %115
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %cond.end
  %116 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp138 = icmp sgt i32 %116, 0
  br i1 %cmp138, label %if.then.140, label %if.else.147

if.then.140:                                      ; preds = %if.end.137
  %117 = load i32, i32* %iy, align 4, !tbaa !5
  %cmp141 = icmp slt i32 %117, 0
  br i1 %cmp141, label %if.then.145, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.140
  %118 = load i32, i32* %iy, align 4, !tbaa !5
  %119 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp143 = icmp sge i32 %118, %119
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %lor.lhs.false, %if.then.140
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %lor.lhs.false
  br label %if.end.155

if.else.147:                                      ; preds = %if.end.137
  %120 = load i32, i32* %iy, align 4, !tbaa !5
  %cmp148 = icmp sgt i32 %120, 0
  br i1 %cmp148, label %if.then.153, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.else.147
  %121 = load i32, i32* %iy, align 4, !tbaa !5
  %122 = load i32, i32* %dy1, align 4, !tbaa !5
  %cmp151 = icmp sle i32 %121, %122
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %lor.lhs.false.150, %if.else.147
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.154:                                       ; preds = %lor.lhs.false.150
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.146
  %123 = load i32, i32* %dy2, align 4, !tbaa !5
  %124 = load i32, i32* %dy3, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %123, %124
  br i1 %cmp156, label %if.then.158, label %if.else.166

if.then.158:                                      ; preds = %if.end.155
  %125 = load i32, i32* %iy, align 4, !tbaa !5
  %126 = load i32, i32* %dy2, align 4, !tbaa !5
  %cmp159 = icmp sle i32 %125, %126
  br i1 %cmp159, label %if.then.164, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %if.then.158
  %127 = load i32, i32* %iy, align 4, !tbaa !5
  %128 = load i32, i32* %dy3, align 4, !tbaa !5
  %cmp162 = icmp sge i32 %127, %128
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %lor.lhs.false.161, %if.then.158
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.165:                                       ; preds = %lor.lhs.false.161
  br label %if.end.174

if.else.166:                                      ; preds = %if.end.155
  %129 = load i32, i32* %iy, align 4, !tbaa !5
  %130 = load i32, i32* %dy2, align 4, !tbaa !5
  %cmp167 = icmp sge i32 %129, %130
  br i1 %cmp167, label %if.then.172, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %if.else.166
  %131 = load i32, i32* %iy, align 4, !tbaa !5
  %132 = load i32, i32* %dy3, align 4, !tbaa !5
  %cmp170 = icmp sle i32 %131, %132
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %lor.lhs.false.169, %if.else.166
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.173:                                       ; preds = %lor.lhs.false.169
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.165
  %133 = load i32, i32* %q0y.addr, align 4, !tbaa !5
  %134 = load i32, i32* %iy, align 4, !tbaa !5
  %add175 = add nsw i32 %133, %134
  store i32 %add175, i32* %pry, align 4, !tbaa !5
  %135 = load i32, i32* %iy, align 4, !tbaa !5
  %conv176 = sext i32 %135 to i64
  %136 = load i64, i64* %det, align 8, !tbaa !10
  %mul177 = mul nsw i64 %conv176, %136
  %137 = load i64, i64* %num, align 8, !tbaa !10
  %cmp178 = icmp slt i64 %mul177, %137
  %cond180 = select i1 %cmp178, i32 1, i32 0
  store i32 %cond180, i32* %pey, align 4, !tbaa !5
  %138 = load i32, i32* %pry, align 4, !tbaa !5
  %139 = load i32*, i32** %ry.addr, align 8, !tbaa !1
  store i32 %138, i32* %139, align 4, !tbaa !5
  %140 = load i32, i32* %pey, align 4, !tbaa !5
  %141 = load i32*, i32** %ey.addr, align 8, !tbaa !1
  store i32 %140, i32* %141, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.174, %if.then.172, %if.then.164, %if.then.153, %if.then.145, %if.then.136
  %142 = bitcast i32* %pey to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %pry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i64* %iiy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i64* %num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.185 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %cleanup.cont, %cleanup
  %147 = bitcast i64* %mul112 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i64* %det to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %d23y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %d23x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  br label %cleanup.192

if.end.189:                                       ; preds = %if.else.98
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.97
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.80
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.192

cleanup.192:                                      ; preds = %if.end.191, %cleanup.185, %if.then.96, %if.then.79, %if.then.66, %if.then.30, %if.then.25, %if.then.20, %if.then.15, %if.then.10, %if.then
  %151 = bitcast i32* %s3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i64* %vp3b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i64* %vp3a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i64* %vp2b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i64* %vp2a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i32* %dy3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %dx3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = load i32, i32* %retval
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define i32 @gs_debug_flags_parse(%struct.gs_memory_s* %heap, i8* %arg) #0 {
entry:
  %heap.addr = alloca %struct.gs_memory_s*, align 8
  %arg.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %heap, %struct.gs_memory_s** %heap.addr, align 8, !tbaa !1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i32 0, i32 0)) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gs_debug_flags_list(%struct.gs_memory_s* %heap) #0 {
entry:
  %heap.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %heap, %struct.gs_memory_s** %heap.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %heap.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @outprintf(%struct.gs_memory_s* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0)) #8
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare double @sqrt(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !3, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"gs_sincos_s", !13, i64 0, !13, i64 8, !6, i64 16}
!16 = !{!15, !13, i64 8}
!17 = !{!15, !6, i64 16}
