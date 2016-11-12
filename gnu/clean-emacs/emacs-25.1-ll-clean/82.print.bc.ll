; ModuleID = './src/print.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon, i8, i64 }
%union.anon = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.Lisp_Sub_Char_Table = type { %struct.vectorlike_header, i32, i32, [0 x i64] }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { double }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.2, i16, i16, i8*, i8*, i8* }
%union.anon.2 = type { i64 ()* }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.kboard = type opaque
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct._XDisplay = type opaque
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.image_type = type { i32, i1 (i64)*, i1 (%struct.frame*, %struct.image*)*, void (%struct.frame*, %struct.image*)*, i1 ()*, %struct.image_type* }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.glyph_string = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame*, %struct.window*, %struct._XDisplay*, i64, %struct.glyph_row*, i32, %struct.XChar2b*, i32, i32, %struct.face*, %struct.font*, %struct.composition*, i64, i32, i32, i8, %struct._XGC*, %struct.glyph*, %struct.image*, %struct.xwidget*, %struct.glyph_slice, %struct.glyph_string*, %struct.glyph_string*, [2 x %struct.XRectangle], i32, i32, i32, %struct.glyph_string*, %struct.glyph_string* }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.XChar2b = type { i8, i8 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.3, %union.anon.5 }
%union.anon.3 = type { %struct.glyph_slice }
%union.anon.5 = type { i32 }
%struct.xwidget = type opaque
%struct.glyph_slice = type { i64 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.coding_system = type { i64, i32, i32, %union.anon.9, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.9 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.10, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, %struct.it_slice, i64 }
%struct.composition_it = type { i64, i64, i32, i32, i64, i32, i8, i64, i32, i32, i32, i32, i32 }
%struct.it_slice = type { i64, i64, i64, i64 }
%struct.bidi_it = type { i64, i64, i32, i64, i64, i32, i32, i32, i8, i8, i64, i64, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, i64, i32, i64, i32, i32, i32, i64, i32, i32, [128 x %struct.bidi_stack], %struct.bidi_string_data, %struct.window*, i32, i64, i8 }
%struct.bidi_saved_info = type { i64, i32, i32 }
%struct.bidi_stack = type { i64, i16, i8, i8 }
%struct.bidi_string_data = type { i64, i8*, i64, i64, i8 }
%struct.run = type { i32, i32, i32, i32, i32, i32 }
%struct.draw_fringe_bitmap_params = type { i32, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.face* }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.Lisp_Save_Value = type { i32, [4 x %union.anon.14] }
%union.anon.14 = type { i8* }
%struct.Lisp_Process = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, [6 x i32], i64, i64, i32, i32, i8, i32, i32, %struct.gnutls_session_int*, %struct.gnutls_certificate_credentials_st*, %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_x509_crt_int*, i32, i32, i32, i32, i8 }
%struct.gnutls_session_int = type opaque
%struct.gnutls_certificate_credentials_st = type opaque
%struct.gnutls_anon_client_credentials_st = type opaque
%struct.gnutls_x509_crt_int = type opaque
%struct.Lisp_Finalizer = type { %struct.Lisp_Misc_Any, %struct.Lisp_Finalizer*, %struct.Lisp_Finalizer*, i64 }
%struct.Lisp_Misc_Any = type { i32 }

@print_output_debug_flag = global i8 1, align 1
@globals = external global %struct.emacs_globals, align 8
@current_buffer = external global %struct.buffer*, align 8
@.str = private unnamed_addr constant [31 x i8] c"Marker does not point anywhere\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Marker is outside the accessible part of the buffer\00", align 1
@print_buffer = internal global i8* null, align 8
@print_buffer_pos = internal global i64 0, align 8
@print_buffer_pos_byte = internal global i64 0, align 8
@print_buffer_size = internal global i64 0, align 8
@noninteractive = external global i8, align 1
@buffer_defaults = external global %struct.buffer, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Unsupported function argument\00", align 1
@printchar_stdout_last = internal global i32 0, align 4
@abort_on_gc = external global i8, align 1
@Vprin1_to_string_buffer = common global i64 0, align 8
@empty_unibyte_string = external global i64, align 8
@stderr = external global %struct._IO_FILE*, align 8
@initial_stderr_stream = internal global %struct._IO_FILE* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Cannot open debugging output stream\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"#<%s_LISP_OBJECT 0x%08lx>\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"SOME\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"peculiar error\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@float_to_string.infinity_string = internal constant [9 x i8] c"1.0e+INF\00", align 1
@float_to_string.minus_infinity_string = internal constant [10 x i8] c"-1.0e+INF\00", align 1
@float_to_string.NaN_string = internal constant [9 x i8] c"0.0e+NaN\00", align 1
@syms_of_print.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"standard-output\00", align 1
@syms_of_print.o_fwd.14 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"float-output-format\00", align 1
@syms_of_print.o_fwd.16 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"print-length\00", align 1
@syms_of_print.o_fwd.18 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"print-level\00", align 1
@syms_of_print.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"print-escape-newlines\00", align 1
@syms_of_print.b_fwd.21 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"print-escape-nonascii\00", align 1
@syms_of_print.b_fwd.23 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [23 x i8] c"print-escape-multibyte\00", align 1
@syms_of_print.b_fwd.25 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"print-quoted\00", align 1
@syms_of_print.o_fwd.27 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [13 x i8] c"print-gensym\00", align 1
@syms_of_print.o_fwd.29 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [13 x i8] c"print-circle\00", align 1
@syms_of_print.o_fwd.31 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.32 = private unnamed_addr constant [27 x i8] c"print-continuous-numbering\00", align 1
@syms_of_print.o_fwd.33 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.34 = private unnamed_addr constant [19 x i8] c"print-number-table\00", align 1
@syms_of_print.o_fwd.35 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [28 x i8] c"print-charset-text-property\00", align 1
@print_prune_charset_plist = internal global i64 0, align 8
@pending_signals = external global i8, align 1
@stdout = external global %struct._IO_FILE*, align 8
@noninteractive_need_newline = external global i8, align 1
@new_backquote_output = internal global i64 0, align 8
@print_number_index = internal global i64 0, align 8
@print_depth = internal global i64 0, align 8
@.str.37 = private unnamed_addr constant [44 x i8] c"Apparently circular structure being printed\00", align 1
@being_printed = internal global [200 x i64] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"#%ld=\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"#%ld#\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\5Cx%04x\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\5C \00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"#:\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"#'\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c" . #%ld\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"#<process \00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"#&%ld\22\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"\5C%o\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"#<subr \00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"#<xwidget \00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"#<window %ld\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c" on \00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"#<terminal %d\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"#s(hash-table size %ld\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c" test \00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c" weakness \00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c" rehash-size \00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c" rehash-threshold \00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c" data \00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"#<killed buffer>\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"#<buffer \00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"#<window-configuration>\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"#<frame \00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"#<dead frame \00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"*INVALID*FRAME*NAME*\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c" %p>\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"#<font-spec\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"#<font-entity\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"#<font-object \00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"#^\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"#<marker \00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"(moves after insertion) \00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"in no buffer\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"at %ld in \00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"#<overlay \00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"from %ld to %ld in \00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"#<finalizer\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c" used\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"#<misc free cell>\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"#<save-value \00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"with %ld objects\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"<some>\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"<unused>\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"<pointer %p>\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"<funcpointer %p>\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"<integer %ld>\00", align 1
@.str.99 = private unnamed_addr constant [31 x i8] c"#<EMACS BUG: INVALID DATATYPE \00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"(MISC 0x%04x)\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"(PVEC 0x%08zx)\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"(0x%02x)\00", align 1
@.str.103 = private unnamed_addr constant [59 x i8] c" Save your buffers immediately and please report this bug>\00", align 1
@print_check_string_result = internal global i32 0, align 4
@Vcharset_hash_table = external global i64, align 8
@charset_table = external global %struct.charset*, align 8
@charset_ascii = external global i32, align 4
@.str.104 = private unnamed_addr constant [26 x i8] c"external-debugging-output\00", align 1
@Sexternal_debugging_output = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fexternal_debugging_output }, i16 1, i16 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.105 = private unnamed_addr constant [6 x i8] c"prin1\00", align 1
@Sprin1 = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fprin1 }, i16 1, i16 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.106 = private unnamed_addr constant [16 x i8] c"prin1-to-string\00", align 1
@Sprin1_to_string = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fprin1_to_string }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.107 = private unnamed_addr constant [21 x i8] c"error-message-string\00", align 1
@Serror_message_string = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ferror_message_string }, i16 1, i16 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.107, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.108 = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@Sprinc = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fprinc }, i16 1, i16 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.109 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@Sprint = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fprint }, i16 1, i16 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.110 = private unnamed_addr constant [7 x i8] c"terpri\00", align 1
@Sterpri = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fterpri }, i16 0, i16 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.111 = private unnamed_addr constant [11 x i8] c"write-char\00", align 1
@Swrite_char = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fwrite_char }, i16 1, i16 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.112 = private unnamed_addr constant [26 x i8] c"redirect-debugging-output\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"FDebug output file: \0AP\00", align 1
@Sredirect_debugging_output = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fredirect_debugging_output }, i16 1, i16 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i32 0, i32 0), i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @Fwrite_char(i64 %character, i64 %printcharfun) #0 {
entry:
  %character.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %old_point = alloca i64, align 8
  %start_point = alloca i64, align 8
  %old_point_byte = alloca i64, align 8
  %start_point_byte = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %free_print_buffer = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %original = alloca i64, align 8
  %marker_pos = alloca i64, align 8
  %string = alloca i64, align 8
  %new_size = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %temp = alloca i8*, align 8
  store i64 %character, i64* %character.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load i64, i64* %printcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  store i64 %1, i64* %printcharfun.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %character.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp2 = icmp eq i32 %and1, 2
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 559)
  %3 = load i64, i64* %character.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call4, i64 %3) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %6, %struct.buffer** %old, align 8
  store i64 -1, i64* %old_point, align 8
  store i64 -1, i64* %start_point, align 8
  store i64 -1, i64* %old_point_byte, align 8
  store i64 -1, i64* %start_point_byte, align 8
  %call5 = call i64 @SPECPDL_INDEX()
  store i64 %call5, i64* %specpdl_count, align 8
  store i8 0, i8* %free_print_buffer, align 1
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 39
  %8 = load i64, i64* %enable_multibyte_characters_, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %8, %call6
  %lnot = xor i1 %cmp7, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  %9 = load i64, i64* %printcharfun.addr, align 8
  store i64 %9, i64* %original, align 8
  %10 = load i64, i64* %printcharfun.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %10, %call9
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %cond.end
  %call13 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call13, i64* %printcharfun.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %cond.end
  %11 = load i64, i64* %printcharfun.addr, align 8
  %call15 = call zeroext i1 @BUFFERP(i64 %11)
  br i1 %call15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.14
  %12 = load i64, i64* %printcharfun.addr, align 8
  %call17 = call %struct.buffer* @XBUFFER(i64 %12)
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp18 = icmp ne %struct.buffer* %call17, %13
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.16
  %14 = load i64, i64* %printcharfun.addr, align 8
  %call21 = call i64 @Fset_buffer(i64 %14)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.16
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* %printcharfun.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.end.14
  %15 = load i64, i64* %printcharfun.addr, align 8
  %and25 = and i64 %15, 7
  %conv26 = trunc i64 %and25 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %if.end.24
  %16 = load i64, i64* %printcharfun.addr, align 8
  %call29 = call i32 @XMISCTYPE(i64 %16)
  %cmp30 = icmp eq i32 %call29, 24236
  br i1 %cmp30, label %if.then.32, label %if.end.58

if.then.32:                                       ; preds = %land.lhs.true
  %17 = load i64, i64* %printcharfun.addr, align 8
  %call33 = call %struct.Lisp_Marker* @XMARKER(i64 %17)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call33, i32 0, i32 1
  %18 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %18, null
  br i1 %tobool, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.35:                                        ; preds = %if.then.32
  %19 = load i64, i64* %printcharfun.addr, align 8
  %call36 = call %struct.Lisp_Marker* @XMARKER(i64 %19)
  %buffer37 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call36, i32 0, i32 1
  %20 = load %struct.buffer*, %struct.buffer** %buffer37, align 8
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp38 = icmp ne %struct.buffer* %20, %21
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.35
  %22 = load i64, i64* %printcharfun.addr, align 8
  %call41 = call %struct.Lisp_Marker* @XMARKER(i64 %22)
  %buffer42 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call41, i32 0, i32 1
  %23 = load %struct.buffer*, %struct.buffer** %buffer42, align 8
  call void @set_buffer_internal(%struct.buffer* %23)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.35
  %24 = load i64, i64* %printcharfun.addr, align 8
  %call44 = call i64 @marker_position(i64 %24)
  store i64 %call44, i64* %marker_pos, align 8
  %25 = load i64, i64* %marker_pos, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 77
  %27 = load i64, i64* %begv, align 8
  %cmp45 = icmp slt i64 %25, %27
  br i1 %cmp45, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %28 = load i64, i64* %marker_pos, align 8
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 79
  %30 = load i64, i64* %zv, align 8
  %cmp47 = icmp sgt i64 %28, %30
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.43
  %31 = load i64, i64* %printcharfun.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i64 %31) #6
  unreachable

if.end.50:                                        ; preds = %lor.lhs.false
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 75
  %33 = load i64, i64* %pt, align 8
  %add = add nsw i64 %33, 0
  store i64 %add, i64* %old_point, align 8
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 76
  %35 = load i64, i64* %pt_byte, align 8
  %add51 = add nsw i64 %35, 0
  store i64 %add51, i64* %old_point_byte, align 8
  %36 = load i64, i64* %marker_pos, align 8
  %37 = load i64, i64* %printcharfun.addr, align 8
  %call52 = call i64 @marker_byte_position(i64 %37)
  call void @set_point_both(i64 %36, i64 %call52)
  %38 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt53 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 75
  %39 = load i64, i64* %pt53, align 8
  %add54 = add nsw i64 %39, 0
  store i64 %add54, i64* %start_point, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte55 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 76
  %41 = load i64, i64* %pt_byte55, align 8
  %add56 = add nsw i64 %41, 0
  store i64 %add56, i64* %start_point_byte, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call57, i64* %printcharfun.addr, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.50, %land.lhs.true, %if.end.24
  %42 = load i64, i64* %printcharfun.addr, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %42, %call59
  br i1 %cmp60, label %if.then.62, label %if.end.91

if.then.62:                                       ; preds = %if.end.58
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_63 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 39
  %44 = load i64, i64* %enable_multibyte_characters_63, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp65 = icmp eq i64 %44, %call64
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.72

land.lhs.true.67:                                 ; preds = %if.then.62
  %45 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool68 = trunc i8 %45 to i1
  br i1 %tobool68, label %if.end.72, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.67
  %call70 = call i64 @builtin_lisp_symbol(i32 770)
  %call71 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call70, i64 %call71)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %land.lhs.true.67, %if.then.62
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_73 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 39
  %47 = load i64, i64* %enable_multibyte_characters_73, align 8
  %call74 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp75 = icmp eq i64 %47, %call74
  br i1 %cmp75, label %if.end.82, label %land.lhs.true.77

land.lhs.true.77:                                 ; preds = %if.end.72
  %48 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool78 = trunc i8 %48 to i1
  br i1 %tobool78, label %if.end.82, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.77
  %call80 = call i64 @builtin_lisp_symbol(i32 772)
  %call81 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call80, i64 %call81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %land.lhs.true.77, %if.end.72
  %49 = load i8*, i8** @print_buffer, align 8
  %cmp83 = icmp ne i8* %49, null
  br i1 %cmp83, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %if.end.82
  %50 = load i8*, i8** @print_buffer, align 8
  %51 = load i64, i64* @print_buffer_pos, align 8
  %52 = load i64, i64* @print_buffer_pos_byte, align 8
  %call86 = call i64 @make_string_from_bytes(i8* %50, i64 %51, i64 %52)
  store i64 %call86, i64* %string, align 8
  %53 = load i64, i64* %string, align 8
  call void @record_unwind_protect(void (i64)* @print_unwind, i64 %53)
  br label %if.end.90

if.else:                                          ; preds = %if.end.82
  store i32 1000, i32* %new_size, align 4
  %54 = load i32, i32* %new_size, align 4
  %conv87 = sext i32 %54 to i64
  %call88 = call noalias i8* @xmalloc(i64 %conv87)
  store i8* %call88, i8** @print_buffer, align 8
  %55 = load i32, i32* %new_size, align 4
  %conv89 = sext i32 %55 to i64
  store i64 %conv89, i64* @print_buffer_size, align 8
  store i8 1, i8* %free_print_buffer, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.then.85
  store i64 0, i64* @print_buffer_pos, align 8
  store i64 0, i64* @print_buffer_pos_byte, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.58
  %56 = load i64, i64* %printcharfun.addr, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp93 = icmp eq i64 %56, %call92
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.99

land.lhs.true.95:                                 ; preds = %if.end.91
  %57 = load i8, i8* @noninteractive, align 1
  %tobool96 = trunc i8 %57 to i1
  br i1 %tobool96, label %if.end.99, label %if.then.97

if.then.97:                                       ; preds = %land.lhs.true.95
  %58 = load i8, i8* %multibyte, align 1
  %tobool98 = trunc i8 %58 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool98)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %land.lhs.true.95, %if.end.91
  %59 = load i64, i64* %character.addr, align 8
  %shr = ashr i64 %59, 2
  %conv100 = trunc i64 %shr to i32
  %60 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %conv100, i64 %60)
  %61 = load i64, i64* %printcharfun.addr, align 8
  %call101 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp102 = icmp eq i64 %61, %call101
  br i1 %cmp102, label %if.then.104, label %if.end.135

if.then.104:                                      ; preds = %if.end.99
  %62 = load i64, i64* @print_buffer_pos, align 8
  %63 = load i64, i64* @print_buffer_pos_byte, align 8
  %cmp105 = icmp ne i64 %62, %63
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.130

land.lhs.true.107:                                ; preds = %if.then.104
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_108 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 39
  %65 = load i64, i64* %enable_multibyte_characters_108, align 8
  %call109 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp110 = icmp eq i64 %65, %call109
  br i1 %cmp110, label %if.then.112, label %if.else.130

if.then.112:                                      ; preds = %land.lhs.true.107
  store i64 16384, i64* %sa_avail, align 8
  %call113 = call i64 @SPECPDL_INDEX()
  store i64 %call113, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %66 = load i64, i64* @print_buffer_pos, align 8
  %add114 = add nsw i64 %66, 1
  %67 = load i64, i64* %sa_avail, align 8
  %cmp115 = icmp sle i64 %add114, %67
  br i1 %cmp115, label %cond.true.117, label %cond.false.120

cond.true.117:                                    ; preds = %if.then.112
  %68 = load i64, i64* @print_buffer_pos, align 8
  %add118 = add nsw i64 %68, 1
  %69 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %69, %add118
  store i64 %sub, i64* %sa_avail, align 8
  %70 = load i64, i64* @print_buffer_pos, align 8
  %add119 = add nsw i64 %70, 1
  %71 = alloca i8, i64 %add119
  br label %cond.end.123

cond.false.120:                                   ; preds = %if.then.112
  store i8 1, i8* %sa_must_free, align 1
  %72 = load i64, i64* @print_buffer_pos, align 8
  %add121 = add nsw i64 %72, 1
  %call122 = call i8* @record_xmalloc(i64 %add121)
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.120, %cond.true.117
  %cond = phi i8* [ %71, %cond.true.117 ], [ %call122, %cond.false.120 ]
  store i8* %cond, i8** %temp, align 8
  %73 = load i8*, i8** @print_buffer, align 8
  %74 = load i8*, i8** %temp, align 8
  %75 = load i64, i64* @print_buffer_pos_byte, align 8
  %call124 = call i64 @copy_text(i8* %73, i8* %74, i64 %75, i1 zeroext true, i1 zeroext false)
  %76 = load i8*, i8** %temp, align 8
  %77 = load i64, i64* @print_buffer_pos, align 8
  %78 = load i64, i64* @print_buffer_pos, align 8
  call void @insert_1_both(i8* %76, i64 %77, i64 %78, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end.123
  %79 = load i8, i8* %sa_must_free, align 1
  %tobool125 = trunc i8 %79 to i1
  br i1 %tobool125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %80 = load i64, i64* %sa_count, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 0)
  %call128 = call i64 @unbind_to(i64 %80, i64 %call127)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.129
  br label %if.end.131

if.else.130:                                      ; preds = %land.lhs.true.107, %if.then.104
  %81 = load i8*, i8** @print_buffer, align 8
  %82 = load i64, i64* @print_buffer_pos, align 8
  %83 = load i64, i64* @print_buffer_pos_byte, align 8
  call void @insert_1_both(i8* %81, i64 %82, i64 %83, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.130, %do.end
  %84 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt132 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 75
  %85 = load i64, i64* %pt132, align 8
  %add133 = add nsw i64 %85, 0
  %86 = load i64, i64* @print_buffer_pos, align 8
  %sub134 = sub nsw i64 %add133, %86
  %87 = load i64, i64* @print_buffer_pos, align 8
  call void @signal_after_change(i64 %sub134, i64 0, i64 %87)
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.131, %if.end.99
  %88 = load i8, i8* %free_print_buffer, align 1
  %tobool136 = trunc i8 %88 to i1
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.135
  %89 = load i8*, i8** @print_buffer, align 8
  call void @xfree(i8* %89)
  store i8* null, i8** @print_buffer, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.135
  %90 = load i64, i64* %specpdl_count, align 8
  %call139 = call i64 @builtin_lisp_symbol(i32 0)
  %call140 = call i64 @unbind_to(i64 %90, i64 %call139)
  %91 = load i64, i64* %original, align 8
  %and141 = and i64 %91, 7
  %conv142 = trunc i64 %and141 to i32
  %cmp143 = icmp eq i32 %conv142, 1
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.156

land.lhs.true.145:                                ; preds = %if.end.138
  %92 = load i64, i64* %original, align 8
  %call146 = call i32 @XMISCTYPE(i64 %92)
  %cmp147 = icmp eq i32 %call146, 24236
  br i1 %cmp147, label %if.then.149, label %if.end.156

if.then.149:                                      ; preds = %land.lhs.true.145
  %93 = load i64, i64* %original, align 8
  %call150 = call i64 @builtin_lisp_symbol(i32 0)
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt151 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 75
  %95 = load i64, i64* %pt151, align 8
  %add152 = add nsw i64 %95, 0
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte153 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 76
  %97 = load i64, i64* %pt_byte153, align 8
  %add154 = add nsw i64 %97, 0
  %call155 = call i64 @set_marker_both(i64 %93, i64 %call150, i64 %add152, i64 %add154)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.149, %land.lhs.true.145, %if.end.138
  %98 = load i64, i64* %old_point, align 8
  %cmp157 = icmp sge i64 %98, 0
  br i1 %cmp157, label %if.then.159, label %if.end.180

if.then.159:                                      ; preds = %if.end.156
  %99 = load i64, i64* %old_point, align 8
  %100 = load i64, i64* %old_point, align 8
  %101 = load i64, i64* %start_point, align 8
  %cmp160 = icmp sge i64 %100, %101
  br i1 %cmp160, label %cond.true.162, label %cond.false.166

cond.true.162:                                    ; preds = %if.then.159
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt163 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 75
  %103 = load i64, i64* %pt163, align 8
  %add164 = add nsw i64 %103, 0
  %104 = load i64, i64* %start_point, align 8
  %sub165 = sub nsw i64 %add164, %104
  br label %cond.end.167

cond.false.166:                                   ; preds = %if.then.159
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.166, %cond.true.162
  %cond168 = phi i64 [ %sub165, %cond.true.162 ], [ 0, %cond.false.166 ]
  %add169 = add nsw i64 %99, %cond168
  %105 = load i64, i64* %old_point_byte, align 8
  %106 = load i64, i64* %old_point_byte, align 8
  %107 = load i64, i64* %start_point_byte, align 8
  %cmp170 = icmp sge i64 %106, %107
  br i1 %cmp170, label %cond.true.172, label %cond.false.176

cond.true.172:                                    ; preds = %cond.end.167
  %108 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte173 = getelementptr inbounds %struct.buffer, %struct.buffer* %108, i32 0, i32 76
  %109 = load i64, i64* %pt_byte173, align 8
  %add174 = add nsw i64 %109, 0
  %110 = load i64, i64* %start_point_byte, align 8
  %sub175 = sub nsw i64 %add174, %110
  br label %cond.end.177

cond.false.176:                                   ; preds = %cond.end.167
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.176, %cond.true.172
  %cond178 = phi i64 [ %sub175, %cond.true.172 ], [ 0, %cond.false.176 ]
  %add179 = add nsw i64 %105, %cond178
  call void @set_point_both(i64 %add169, i64 %add179)
  br label %if.end.180

if.end.180:                                       ; preds = %cond.end.177, %if.end.156
  %111 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %111)
  %112 = load i64, i64* %character.addr, align 8
  ret i64 %112
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare i64 @SPECPDL_INDEX() #1

declare zeroext i1 @BUFFERP(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare i64 @Fset_buffer(i64) #1

declare i32 @XMISCTYPE(i64) #1

declare %struct.Lisp_Marker* @XMARKER(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare void @set_buffer_internal(%struct.buffer*) #1

declare i64 @marker_position(i64) #1

; Function Attrs: noreturn
declare void @signal_error(i8*, i64) #2

declare void @set_point_both(i64, i64) #1

declare i64 @marker_byte_position(i64) #1

declare void @specbind(i64, i64) #1

declare i64 @make_string_from_bytes(i8*, i64, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @print_unwind(i64 %saved_text) #0 {
entry:
  %saved_text.addr = alloca i64, align 8
  store i64 %saved_text, i64* %saved_text.addr, align 8
  %0 = load i8*, i8** @print_buffer, align 8
  %1 = load i64, i64* %saved_text.addr, align 8
  %call = call i8* @SDATA(i64 %1)
  %2 = load i64, i64* %saved_text.addr, align 8
  %call1 = call i64 @SCHARS(i64 %2)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %call, i64 %call1, i32 1, i1 false)
  ret void
}

declare noalias i8* @xmalloc(i64) #1

declare void @setup_echo_area_for_printing(i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @printchar(i32 %ch, i64 %fun) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %fun.addr = alloca i64, align 8
  %str = alloca [5 x i8], align 1
  %len = alloca i32, align 4
  %incr = alloca i64, align 8
  %multibyte_p = alloca i8, align 1
  store i32 %ch, i32* %ch.addr, align 4
  store i64 %fun, i64* %fun.addr, align 8
  %0 = load i64, i64* %fun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %fun.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %fun.addr, align 8
  %3 = load i32, i32* %ch.addr, align 4
  %conv = zext i32 %3 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call3 = call i64 @call1(i64 %2, i64 %add)
  br label %if.end.116

if.else:                                          ; preds = %land.lhs.true, %entry
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %4 = load i32, i32* %ch.addr, align 4
  %add4 = add i32 %4, 0
  %cmp5 = icmp ule i32 %add4, 127
  br i1 %cmp5, label %cond.true.11, label %cond.false.13

cond.false:                                       ; preds = %if.else
  %5 = load i32, i32* %ch.addr, align 4
  %conv7 = zext i32 %5 to i64
  %add8 = add i64 %conv7, 0
  %cmp9 = icmp ule i64 %add8, 127
  br i1 %cmp9, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.false, %cond.true
  %6 = load i32, i32* %ch.addr, align 4
  %conv12 = trunc i32 %6 to i8
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv12, i8* %arrayidx, align 1
  br label %cond.end.57

cond.false.13:                                    ; preds = %cond.false, %cond.true
  br i1 true, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %cond.false.13
  %7 = load i32, i32* %ch.addr, align 4
  %add15 = add i32 %7, 0
  %cmp16 = icmp ule i32 %add15, 2047
  br i1 %cmp16, label %cond.true.23, label %cond.false.29

cond.false.18:                                    ; preds = %cond.false.13
  %8 = load i32, i32* %ch.addr, align 4
  %conv19 = zext i32 %8 to i64
  %add20 = add i64 %conv19, 0
  %cmp21 = icmp ule i64 %add20, 2047
  br i1 %cmp21, label %cond.true.23, label %cond.false.29

cond.true.23:                                     ; preds = %cond.false.18, %cond.true.14
  %9 = load i32, i32* %ch.addr, align 4
  %shr = lshr i32 %9, 6
  %or = or i32 192, %shr
  %conv24 = trunc i32 %or to i8
  %arrayidx25 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv24, i8* %arrayidx25, align 1
  %10 = load i32, i32* %ch.addr, align 4
  %and = and i32 %10, 63
  %or26 = or i32 128, %and
  %conv27 = trunc i32 %or26 to i8
  %arrayidx28 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv27, i8* %arrayidx28, align 1
  br label %cond.end.55

cond.false.29:                                    ; preds = %cond.false.18, %cond.true.14
  br i1 true, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.29
  %11 = load i32, i32* %ch.addr, align 4
  %add31 = add i32 %11, 0
  %cmp32 = icmp ule i32 %add31, 65535
  br i1 %cmp32, label %cond.true.39, label %cond.false.53

cond.false.34:                                    ; preds = %cond.false.29
  %12 = load i32, i32* %ch.addr, align 4
  %conv35 = zext i32 %12 to i64
  %add36 = add i64 %conv35, 0
  %cmp37 = icmp ule i64 %add36, 65535
  br i1 %cmp37, label %cond.true.39, label %cond.false.53

cond.true.39:                                     ; preds = %cond.false.34, %cond.true.30
  %13 = load i32, i32* %ch.addr, align 4
  %shr40 = lshr i32 %13, 12
  %or41 = or i32 224, %shr40
  %conv42 = trunc i32 %or41 to i8
  %arrayidx43 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv42, i8* %arrayidx43, align 1
  %14 = load i32, i32* %ch.addr, align 4
  %shr44 = lshr i32 %14, 6
  %and45 = and i32 %shr44, 63
  %or46 = or i32 128, %and45
  %conv47 = trunc i32 %or46 to i8
  %arrayidx48 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv47, i8* %arrayidx48, align 1
  %15 = load i32, i32* %ch.addr, align 4
  %and49 = and i32 %15, 63
  %or50 = or i32 128, %and49
  %conv51 = trunc i32 %or50 to i8
  %arrayidx52 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 2
  store i8 %conv51, i8* %arrayidx52, align 1
  br label %cond.end

cond.false.53:                                    ; preds = %cond.false.34, %cond.true.30
  %16 = load i32, i32* %ch.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %call54 = call i32 @char_string(i32 %16, i8* %arraydecay)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.53, %cond.true.39
  %cond = phi i32 [ 3, %cond.true.39 ], [ %call54, %cond.false.53 ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end, %cond.true.23
  %cond56 = phi i32 [ 2, %cond.true.23 ], [ %cond, %cond.end ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.55, %cond.true.11
  %cond58 = phi i32 [ 1, %cond.true.11 ], [ %cond56, %cond.end.55 ]
  store i32 %cond58, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end.57
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %17, %call59
  br i1 %cmp60, label %if.else.67, label %land.lhs.true.62

land.lhs.true.62:                                 ; preds = %do.body
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp64 = icmp eq i64 %18, %call63
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  call void @process_quit_flag()
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %do.body
  %19 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %if.else.67
  call void @process_pending_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.68, %if.else.67
  br label %if.end.69

if.end.69:                                        ; preds = %if.end, %if.then.66
  br label %do.end

do.end:                                           ; preds = %if.end.69
  %20 = load i64, i64* %fun.addr, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp71 = icmp eq i64 %20, %call70
  br i1 %cmp71, label %if.then.73, label %if.else.85

if.then.73:                                       ; preds = %do.end
  %21 = load i32, i32* %len, align 4
  %conv74 = sext i32 %21 to i64
  %22 = load i64, i64* @print_buffer_size, align 8
  %23 = load i64, i64* @print_buffer_pos_byte, align 8
  %sub = sub nsw i64 %22, %23
  %sub75 = sub nsw i64 %conv74, %sub
  store i64 %sub75, i64* %incr, align 8
  %24 = load i64, i64* %incr, align 8
  %cmp76 = icmp sgt i64 %24, 0
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.73
  %25 = load i8*, i8** @print_buffer, align 8
  %26 = load i64, i64* %incr, align 8
  %call79 = call i8* @xpalloc(i8* %25, i64* @print_buffer_size, i64 %26, i64 -1, i64 1)
  store i8* %call79, i8** @print_buffer, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.73
  %27 = load i8*, i8** @print_buffer, align 8
  %28 = load i64, i64* @print_buffer_pos_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %28
  %29 = bitcast [5 x i8]* %str to i8*
  %30 = load i32, i32* %len, align 4
  %conv81 = sext i32 %30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %29, i64 %conv81, i32 1, i1 false)
  %31 = load i64, i64* @print_buffer_pos, align 8
  %add82 = add nsw i64 %31, 1
  store i64 %add82, i64* @print_buffer_pos, align 8
  %32 = load i32, i32* %len, align 4
  %conv83 = sext i32 %32 to i64
  %33 = load i64, i64* @print_buffer_pos_byte, align 8
  %add84 = add nsw i64 %33, %conv83
  store i64 %add84, i64* @print_buffer_pos_byte, align 8
  br label %if.end.115

if.else.85:                                       ; preds = %do.end
  %34 = load i8, i8* @noninteractive, align 1
  %tobool86 = trunc i8 %34 to i1
  br i1 %tobool86, label %if.then.87, label %if.else.106

if.then.87:                                       ; preds = %if.else.85
  %35 = load i32, i32* %ch.addr, align 4
  store i32 %35, i32* @printchar_stdout_last, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call88 = call zeroext i1 @CHAR_TABLE_P(i64 %36)
  br i1 %call88, label %land.lhs.true.90, label %if.else.101

land.lhs.true.90:                                 ; preds = %if.then.87
  %37 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call91 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %37)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call91, i32 0, i32 3
  %38 = load i64, i64* %purpose, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 346)
  %cmp93 = icmp eq i64 %38, %call92
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.101

land.lhs.true.95:                                 ; preds = %land.lhs.true.90
  %39 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call96 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %39)
  %call97 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call96)
  %cmp98 = icmp eq i32 %call97, 6
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %land.lhs.true.95
  %40 = load i32, i32* %ch.addr, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @printchar_to_stream(i32 %40, %struct._IO_FILE* %41)
  br label %if.end.105

if.else.101:                                      ; preds = %land.lhs.true.95, %land.lhs.true.90, %if.then.87
  %arraydecay102 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %42 = load i32, i32* %len, align 4
  %conv103 = sext i32 %42 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call104 = call i64 @fwrite(i8* %arraydecay102, i64 1, i64 %conv103, %struct._IO_FILE* %43)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.101, %if.then.100
  store i8 1, i8* @noninteractive_need_newline, align 1
  br label %if.end.114

if.else.106:                                      ; preds = %if.else.85
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 39
  %45 = load i64, i64* %enable_multibyte_characters_, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp108 = icmp eq i64 %45, %call107
  %lnot = xor i1 %cmp108, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte_p, align 1
  %46 = load i8, i8* %multibyte_p, align 1
  %tobool110 = trunc i8 %46 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool110)
  %47 = load i32, i32* %ch.addr, align 4
  call void @insert_char(i32 %47)
  %arraydecay111 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %48 = load i32, i32* %len, align 4
  %conv112 = sext i32 %48 to i64
  %49 = load i8, i8* %multibyte_p, align 1
  %tobool113 = trunc i8 %49 to i1
  call void @message_dolog(i8* %arraydecay111, i64 %conv112, i1 zeroext false, i1 zeroext %tobool113)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.106, %if.end.105
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.80
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then
  ret void
}

declare i8* @record_xmalloc(i64) #1

declare i64 @copy_text(i8*, i8*, i64, i1 zeroext, i1 zeroext) #1

declare void @insert_1_both(i8*, i64, i64, i1 zeroext, i1 zeroext, i1 zeroext) #1

declare i64 @unbind_to(i64, i64) #1

declare void @signal_after_change(i64, i64, i64) #1

declare void @xfree(i8*) #1

declare i64 @set_marker_both(i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @write_string(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  call void @write_string_1(i8* %0, i64 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_string_1(i8* %data, i64 %printcharfun) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %printcharfun.addr = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %old_point = alloca i64, align 8
  %start_point = alloca i64, align 8
  %old_point_byte = alloca i64, align 8
  %start_point_byte = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %free_print_buffer = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %original = alloca i64, align 8
  %marker_pos = alloca i64, align 8
  %string = alloca i64, align 8
  %new_size = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %temp = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %old, align 8
  store i64 -1, i64* %old_point, align 8
  store i64 -1, i64* %start_point, align 8
  store i64 -1, i64* %old_point_byte, align 8
  store i64 -1, i64* %start_point_byte, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %specpdl_count, align 8
  store i8 0, i8* %free_print_buffer, align 1
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 39
  %2 = load i64, i64* %enable_multibyte_characters_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  %3 = load i64, i64* %printcharfun.addr, align 8
  store i64 %3, i64* %original, align 8
  %4 = load i64, i64* %printcharfun.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call4, i64* %printcharfun.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %printcharfun.addr, align 8
  %call5 = call zeroext i1 @BUFFERP(i64 %5)
  br i1 %call5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %6 = load i64, i64* %printcharfun.addr, align 8
  %call7 = call %struct.buffer* @XBUFFER(i64 %6)
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp8 = icmp ne %struct.buffer* %call7, %7
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.6
  %8 = load i64, i64* %printcharfun.addr, align 8
  %call10 = call i64 @Fset_buffer(i64 %8)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.6
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %printcharfun.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.11, %if.end
  %9 = load i64, i64* %printcharfun.addr, align 8
  %and = and i64 %9, 7
  %conv = trunc i64 %and to i32
  %cmp14 = icmp eq i32 %conv, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.13
  %10 = load i64, i64* %printcharfun.addr, align 8
  %call16 = call i32 @XMISCTYPE(i64 %10)
  %cmp17 = icmp eq i32 %call16, 24236
  br i1 %cmp17, label %if.then.19, label %if.end.45

if.then.19:                                       ; preds = %land.lhs.true
  %11 = load i64, i64* %printcharfun.addr, align 8
  %call20 = call %struct.Lisp_Marker* @XMARKER(i64 %11)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call20, i32 0, i32 1
  %12 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %12, null
  br i1 %tobool, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.19
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.22:                                        ; preds = %if.then.19
  %13 = load i64, i64* %printcharfun.addr, align 8
  %call23 = call %struct.Lisp_Marker* @XMARKER(i64 %13)
  %buffer24 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call23, i32 0, i32 1
  %14 = load %struct.buffer*, %struct.buffer** %buffer24, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp25 = icmp ne %struct.buffer* %14, %15
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.22
  %16 = load i64, i64* %printcharfun.addr, align 8
  %call28 = call %struct.Lisp_Marker* @XMARKER(i64 %16)
  %buffer29 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call28, i32 0, i32 1
  %17 = load %struct.buffer*, %struct.buffer** %buffer29, align 8
  call void @set_buffer_internal(%struct.buffer* %17)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.22
  %18 = load i64, i64* %printcharfun.addr, align 8
  %call31 = call i64 @marker_position(i64 %18)
  store i64 %call31, i64* %marker_pos, align 8
  %19 = load i64, i64* %marker_pos, align 8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 77
  %21 = load i64, i64* %begv, align 8
  %cmp32 = icmp slt i64 %19, %21
  br i1 %cmp32, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %22 = load i64, i64* %marker_pos, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 79
  %24 = load i64, i64* %zv, align 8
  %cmp34 = icmp sgt i64 %22, %24
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false, %if.end.30
  %25 = load i64, i64* %printcharfun.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i64 %25) #6
  unreachable

if.end.37:                                        ; preds = %lor.lhs.false
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 75
  %27 = load i64, i64* %pt, align 8
  %add = add nsw i64 %27, 0
  store i64 %add, i64* %old_point, align 8
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 76
  %29 = load i64, i64* %pt_byte, align 8
  %add38 = add nsw i64 %29, 0
  store i64 %add38, i64* %old_point_byte, align 8
  %30 = load i64, i64* %marker_pos, align 8
  %31 = load i64, i64* %printcharfun.addr, align 8
  %call39 = call i64 @marker_byte_position(i64 %31)
  call void @set_point_both(i64 %30, i64 %call39)
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt40 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 75
  %33 = load i64, i64* %pt40, align 8
  %add41 = add nsw i64 %33, 0
  store i64 %add41, i64* %start_point, align 8
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte42 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 76
  %35 = load i64, i64* %pt_byte42, align 8
  %add43 = add nsw i64 %35, 0
  store i64 %add43, i64* %start_point_byte, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call44, i64* %printcharfun.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.37, %land.lhs.true, %if.end.13
  %36 = load i64, i64* %printcharfun.addr, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %36, %call46
  br i1 %cmp47, label %if.then.49, label %if.end.78

if.then.49:                                       ; preds = %if.end.45
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_50 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 39
  %38 = load i64, i64* %enable_multibyte_characters_50, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp52 = icmp eq i64 %38, %call51
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.59

land.lhs.true.54:                                 ; preds = %if.then.49
  %39 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool55 = trunc i8 %39 to i1
  br i1 %tobool55, label %if.end.59, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.54
  %call57 = call i64 @builtin_lisp_symbol(i32 770)
  %call58 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call57, i64 %call58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %land.lhs.true.54, %if.then.49
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_60 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 39
  %41 = load i64, i64* %enable_multibyte_characters_60, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp62 = icmp eq i64 %41, %call61
  br i1 %cmp62, label %if.end.69, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %if.end.59
  %42 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool65 = trunc i8 %42 to i1
  br i1 %tobool65, label %if.end.69, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.64
  %call67 = call i64 @builtin_lisp_symbol(i32 772)
  %call68 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call67, i64 %call68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %land.lhs.true.64, %if.end.59
  %43 = load i8*, i8** @print_buffer, align 8
  %cmp70 = icmp ne i8* %43, null
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.end.69
  %44 = load i8*, i8** @print_buffer, align 8
  %45 = load i64, i64* @print_buffer_pos, align 8
  %46 = load i64, i64* @print_buffer_pos_byte, align 8
  %call73 = call i64 @make_string_from_bytes(i8* %44, i64 %45, i64 %46)
  store i64 %call73, i64* %string, align 8
  %47 = load i64, i64* %string, align 8
  call void @record_unwind_protect(void (i64)* @print_unwind, i64 %47)
  br label %if.end.77

if.else:                                          ; preds = %if.end.69
  store i32 1000, i32* %new_size, align 4
  %48 = load i32, i32* %new_size, align 4
  %conv74 = sext i32 %48 to i64
  %call75 = call noalias i8* @xmalloc(i64 %conv74)
  store i8* %call75, i8** @print_buffer, align 8
  %49 = load i32, i32* %new_size, align 4
  %conv76 = sext i32 %49 to i64
  store i64 %conv76, i64* @print_buffer_size, align 8
  store i8 1, i8* %free_print_buffer, align 1
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.72
  store i64 0, i64* @print_buffer_pos, align 8
  store i64 0, i64* @print_buffer_pos_byte, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.45
  %50 = load i64, i64* %printcharfun.addr, align 8
  %call79 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp80 = icmp eq i64 %50, %call79
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.86

land.lhs.true.82:                                 ; preds = %if.end.78
  %51 = load i8, i8* @noninteractive, align 1
  %tobool83 = trunc i8 %51 to i1
  br i1 %tobool83, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.82
  %52 = load i8, i8* %multibyte, align 1
  %tobool85 = trunc i8 %52 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool85)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %land.lhs.true.82, %if.end.78
  %53 = load i8*, i8** %data.addr, align 8
  %54 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* %53, i64 %54)
  %55 = load i64, i64* %printcharfun.addr, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %55, %call87
  br i1 %cmp88, label %if.then.90, label %if.end.118

if.then.90:                                       ; preds = %if.end.86
  %56 = load i64, i64* @print_buffer_pos, align 8
  %57 = load i64, i64* @print_buffer_pos_byte, align 8
  %cmp91 = icmp ne i64 %56, %57
  br i1 %cmp91, label %land.lhs.true.93, label %if.else.113

land.lhs.true.93:                                 ; preds = %if.then.90
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_94 = getelementptr inbounds %struct.buffer, %struct.buffer* %58, i32 0, i32 39
  %59 = load i64, i64* %enable_multibyte_characters_94, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp96 = icmp eq i64 %59, %call95
  br i1 %cmp96, label %if.then.98, label %if.else.113

if.then.98:                                       ; preds = %land.lhs.true.93
  store i64 16384, i64* %sa_avail, align 8
  %call99 = call i64 @SPECPDL_INDEX()
  store i64 %call99, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %60 = load i64, i64* @print_buffer_pos, align 8
  %add100 = add nsw i64 %60, 1
  %61 = load i64, i64* %sa_avail, align 8
  %cmp101 = icmp sle i64 %add100, %61
  br i1 %cmp101, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.98
  %62 = load i64, i64* @print_buffer_pos, align 8
  %add103 = add nsw i64 %62, 1
  %63 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %63, %add103
  store i64 %sub, i64* %sa_avail, align 8
  %64 = load i64, i64* @print_buffer_pos, align 8
  %add104 = add nsw i64 %64, 1
  %65 = alloca i8, i64 %add104
  br label %cond.end

cond.false:                                       ; preds = %if.then.98
  store i8 1, i8* %sa_must_free, align 1
  %66 = load i64, i64* @print_buffer_pos, align 8
  %add105 = add nsw i64 %66, 1
  %call106 = call i8* @record_xmalloc(i64 %add105)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %65, %cond.true ], [ %call106, %cond.false ]
  store i8* %cond, i8** %temp, align 8
  %67 = load i8*, i8** @print_buffer, align 8
  %68 = load i8*, i8** %temp, align 8
  %69 = load i64, i64* @print_buffer_pos_byte, align 8
  %call107 = call i64 @copy_text(i8* %67, i8* %68, i64 %69, i1 zeroext true, i1 zeroext false)
  %70 = load i8*, i8** %temp, align 8
  %71 = load i64, i64* @print_buffer_pos, align 8
  %72 = load i64, i64* @print_buffer_pos, align 8
  call void @insert_1_both(i8* %70, i64 %71, i64 %72, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %73 = load i8, i8* %sa_must_free, align 1
  %tobool108 = trunc i8 %73 to i1
  br i1 %tobool108, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %74 = load i64, i64* %sa_count, align 8
  %call110 = call i64 @builtin_lisp_symbol(i32 0)
  %call111 = call i64 @unbind_to(i64 %74, i64 %call110)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.112
  br label %if.end.114

if.else.113:                                      ; preds = %land.lhs.true.93, %if.then.90
  %75 = load i8*, i8** @print_buffer, align 8
  %76 = load i64, i64* @print_buffer_pos, align 8
  %77 = load i64, i64* @print_buffer_pos_byte, align 8
  call void @insert_1_both(i8* %75, i64 %76, i64 %77, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.113, %do.end
  %78 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt115 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 75
  %79 = load i64, i64* %pt115, align 8
  %add116 = add nsw i64 %79, 0
  %80 = load i64, i64* @print_buffer_pos, align 8
  %sub117 = sub nsw i64 %add116, %80
  %81 = load i64, i64* @print_buffer_pos, align 8
  call void @signal_after_change(i64 %sub117, i64 0, i64 %81)
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.114, %if.end.86
  %82 = load i8, i8* %free_print_buffer, align 1
  %tobool119 = trunc i8 %82 to i1
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.118
  %83 = load i8*, i8** @print_buffer, align 8
  call void @xfree(i8* %83)
  store i8* null, i8** @print_buffer, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %if.end.118
  %84 = load i64, i64* %specpdl_count, align 8
  %call122 = call i64 @builtin_lisp_symbol(i32 0)
  %call123 = call i64 @unbind_to(i64 %84, i64 %call122)
  %85 = load i64, i64* %original, align 8
  %and124 = and i64 %85, 7
  %conv125 = trunc i64 %and124 to i32
  %cmp126 = icmp eq i32 %conv125, 1
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.139

land.lhs.true.128:                                ; preds = %if.end.121
  %86 = load i64, i64* %original, align 8
  %call129 = call i32 @XMISCTYPE(i64 %86)
  %cmp130 = icmp eq i32 %call129, 24236
  br i1 %cmp130, label %if.then.132, label %if.end.139

if.then.132:                                      ; preds = %land.lhs.true.128
  %87 = load i64, i64* %original, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt134 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 75
  %89 = load i64, i64* %pt134, align 8
  %add135 = add nsw i64 %89, 0
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte136 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 76
  %91 = load i64, i64* %pt_byte136, align 8
  %add137 = add nsw i64 %91, 0
  %call138 = call i64 @set_marker_both(i64 %87, i64 %call133, i64 %add135, i64 %add137)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.132, %land.lhs.true.128, %if.end.121
  %92 = load i64, i64* %old_point, align 8
  %cmp140 = icmp sge i64 %92, 0
  br i1 %cmp140, label %if.then.142, label %if.end.163

if.then.142:                                      ; preds = %if.end.139
  %93 = load i64, i64* %old_point, align 8
  %94 = load i64, i64* %old_point, align 8
  %95 = load i64, i64* %start_point, align 8
  %cmp143 = icmp sge i64 %94, %95
  br i1 %cmp143, label %cond.true.145, label %cond.false.149

cond.true.145:                                    ; preds = %if.then.142
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt146 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 75
  %97 = load i64, i64* %pt146, align 8
  %add147 = add nsw i64 %97, 0
  %98 = load i64, i64* %start_point, align 8
  %sub148 = sub nsw i64 %add147, %98
  br label %cond.end.150

cond.false.149:                                   ; preds = %if.then.142
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.145
  %cond151 = phi i64 [ %sub148, %cond.true.145 ], [ 0, %cond.false.149 ]
  %add152 = add nsw i64 %93, %cond151
  %99 = load i64, i64* %old_point_byte, align 8
  %100 = load i64, i64* %old_point_byte, align 8
  %101 = load i64, i64* %start_point_byte, align 8
  %cmp153 = icmp sge i64 %100, %101
  br i1 %cmp153, label %cond.true.155, label %cond.false.159

cond.true.155:                                    ; preds = %cond.end.150
  %102 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte156 = getelementptr inbounds %struct.buffer, %struct.buffer* %102, i32 0, i32 76
  %103 = load i64, i64* %pt_byte156, align 8
  %add157 = add nsw i64 %103, 0
  %104 = load i64, i64* %start_point_byte, align 8
  %sub158 = sub nsw i64 %add157, %104
  br label %cond.end.160

cond.false.159:                                   ; preds = %cond.end.150
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.155
  %cond161 = phi i64 [ %sub158, %cond.true.155 ], [ 0, %cond.false.159 ]
  %add162 = add nsw i64 %99, %cond161
  call void @set_point_both(i64 %add152, i64 %add162)
  br label %if.end.163

if.end.163:                                       ; preds = %cond.end.160, %if.end.139
  %105 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %105)
  ret void
}

; Function Attrs: nounwind uwtable
define void @temp_output_buffer_setup(i8* %bufname) #0 {
entry:
  %bufname.addr = alloca i8*, align 8
  %count = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %buf = alloca i64, align 8
  store i8* %bufname, i8** %bufname.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %old, align 8
  call void @record_unwind_current_buffer()
  %1 = load i8*, i8** %bufname.addr, align 8
  %call1 = call i64 @build_string(i8* %1)
  %call2 = call i64 @Fget_buffer_create(i64 %call1)
  %call3 = call i64 @Fset_buffer(i64 %call2)
  %call4 = call i64 @Fkill_all_local_variables()
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  call void @delete_all_overlays(%struct.buffer* %2)
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %4 = load %struct.buffer*, %struct.buffer** %old, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 3
  %5 = load i64, i64* %directory_, align 8
  call void @bset_directory(%struct.buffer* %3, i64 %5)
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_read_only(%struct.buffer* %6, i64 %call5)
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_filename(%struct.buffer* %7, i64 %call6)
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  call void @bset_undo_list(%struct.buffer* %8, i64 %call7)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 39), align 8
  call void @bset_enable_multibyte_characters(%struct.buffer* %9, i64 %10)
  %call8 = call i64 @builtin_lisp_symbol(i32 547)
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call8, i64 %call9)
  %call10 = call i64 @builtin_lisp_symbol(i32 544)
  %call11 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call10, i64 %call11)
  %call12 = call i64 @Ferase_buffer()
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %12 = bitcast %struct.buffer* %11 to i8*
  %call13 = call i64 @make_lisp_ptr(i8* %12, i32 5)
  store i64 %call13, i64* %buf, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 904)
  call void @run_hook(i64 %call14)
  %13 = load i64, i64* %count, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %call16 = call i64 @unbind_to(i64 %13, i64 %call15)
  %call17 = call i64 @builtin_lisp_symbol(i32 871)
  %14 = load i64, i64* %buf, align 8
  call void @specbind(i64 %call17, i64 %14)
  ret void
}

declare void @record_unwind_current_buffer() #1

declare i64 @Fget_buffer_create(i64) #1

declare i64 @build_string(i8*) #1

declare i64 @Fkill_all_local_variables() #1

declare void @delete_all_overlays(%struct.buffer*) #1

declare void @bset_directory(%struct.buffer*, i64) #1

declare void @bset_read_only(%struct.buffer*, i64) #1

declare void @bset_filename(%struct.buffer*, i64) #1

declare void @bset_undo_list(%struct.buffer*, i64) #1

declare void @bset_enable_multibyte_characters(%struct.buffer*, i64) #1

declare i64 @Ferase_buffer() #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare void @run_hook(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fterpri(i64 %printcharfun, i64 %ensure) #0 {
entry:
  %printcharfun.addr = alloca i64, align 8
  %ensure.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %old_point = alloca i64, align 8
  %start_point = alloca i64, align 8
  %old_point_byte = alloca i64, align 8
  %start_point_byte = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %free_print_buffer = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %original = alloca i64, align 8
  %marker_pos = alloca i64, align 8
  %string = alloca i64, align 8
  %new_size = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %temp = alloca i8*, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  store i64 %ensure, i64* %ensure.addr, align 8
  %0 = load i64, i64* %printcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  store i64 %1, i64* %printcharfun.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %2, %struct.buffer** %old, align 8
  store i64 -1, i64* %old_point, align 8
  store i64 -1, i64* %start_point, align 8
  store i64 -1, i64* %old_point_byte, align 8
  store i64 -1, i64* %start_point_byte, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %specpdl_count, align 8
  store i8 0, i8* %free_print_buffer, align 1
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 39
  %4 = load i64, i64* %enable_multibyte_characters_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  %lnot = xor i1 %cmp3, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  %5 = load i64, i64* %printcharfun.addr, align 8
  store i64 %5, i64* %original, align 8
  %6 = load i64, i64* %printcharfun.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call7, i64* %printcharfun.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %7 = load i64, i64* %printcharfun.addr, align 8
  %call9 = call zeroext i1 @BUFFERP(i64 %7)
  br i1 %call9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  %8 = load i64, i64* %printcharfun.addr, align 8
  %call11 = call %struct.buffer* @XBUFFER(i64 %8)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp12 = icmp ne %struct.buffer* %call11, %9
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %10 = load i64, i64* %printcharfun.addr, align 8
  %call14 = call i64 @Fset_buffer(i64 %10)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %printcharfun.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end.8
  %11 = load i64, i64* %printcharfun.addr, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.17
  %12 = load i64, i64* %printcharfun.addr, align 8
  %call20 = call i32 @XMISCTYPE(i64 %12)
  %cmp21 = icmp eq i32 %call20, 24236
  br i1 %cmp21, label %if.then.23, label %if.end.49

if.then.23:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %printcharfun.addr, align 8
  %call24 = call %struct.Lisp_Marker* @XMARKER(i64 %13)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call24, i32 0, i32 1
  %14 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %14, null
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.26:                                        ; preds = %if.then.23
  %15 = load i64, i64* %printcharfun.addr, align 8
  %call27 = call %struct.Lisp_Marker* @XMARKER(i64 %15)
  %buffer28 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call27, i32 0, i32 1
  %16 = load %struct.buffer*, %struct.buffer** %buffer28, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp29 = icmp ne %struct.buffer* %16, %17
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.26
  %18 = load i64, i64* %printcharfun.addr, align 8
  %call32 = call %struct.Lisp_Marker* @XMARKER(i64 %18)
  %buffer33 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call32, i32 0, i32 1
  %19 = load %struct.buffer*, %struct.buffer** %buffer33, align 8
  call void @set_buffer_internal(%struct.buffer* %19)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.26
  %20 = load i64, i64* %printcharfun.addr, align 8
  %call35 = call i64 @marker_position(i64 %20)
  store i64 %call35, i64* %marker_pos, align 8
  %21 = load i64, i64* %marker_pos, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 77
  %23 = load i64, i64* %begv, align 8
  %cmp36 = icmp slt i64 %21, %23
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %24 = load i64, i64* %marker_pos, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 79
  %26 = load i64, i64* %zv, align 8
  %cmp38 = icmp sgt i64 %24, %26
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.34
  %27 = load i64, i64* %printcharfun.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i64 %27) #6
  unreachable

if.end.41:                                        ; preds = %lor.lhs.false
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 75
  %29 = load i64, i64* %pt, align 8
  %add = add nsw i64 %29, 0
  store i64 %add, i64* %old_point, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 76
  %31 = load i64, i64* %pt_byte, align 8
  %add42 = add nsw i64 %31, 0
  store i64 %add42, i64* %old_point_byte, align 8
  %32 = load i64, i64* %marker_pos, align 8
  %33 = load i64, i64* %printcharfun.addr, align 8
  %call43 = call i64 @marker_byte_position(i64 %33)
  call void @set_point_both(i64 %32, i64 %call43)
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt44 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 75
  %35 = load i64, i64* %pt44, align 8
  %add45 = add nsw i64 %35, 0
  store i64 %add45, i64* %start_point, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte46 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 76
  %37 = load i64, i64* %pt_byte46, align 8
  %add47 = add nsw i64 %37, 0
  store i64 %add47, i64* %start_point_byte, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call48, i64* %printcharfun.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.41, %land.lhs.true, %if.end.17
  %38 = load i64, i64* %printcharfun.addr, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %38, %call50
  br i1 %cmp51, label %if.then.53, label %if.end.82

if.then.53:                                       ; preds = %if.end.49
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_54 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 39
  %40 = load i64, i64* %enable_multibyte_characters_54, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %40, %call55
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %if.then.53
  %41 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool59 = trunc i8 %41 to i1
  br i1 %tobool59, label %if.end.63, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.58
  %call61 = call i64 @builtin_lisp_symbol(i32 770)
  %call62 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call61, i64 %call62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true.58, %if.then.53
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_64 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 39
  %43 = load i64, i64* %enable_multibyte_characters_64, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %43, %call65
  br i1 %cmp66, label %if.end.73, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %if.end.63
  %44 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool69 = trunc i8 %44 to i1
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %call71 = call i64 @builtin_lisp_symbol(i32 772)
  %call72 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call71, i64 %call72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.end.63
  %45 = load i8*, i8** @print_buffer, align 8
  %cmp74 = icmp ne i8* %45, null
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.73
  %46 = load i8*, i8** @print_buffer, align 8
  %47 = load i64, i64* @print_buffer_pos, align 8
  %48 = load i64, i64* @print_buffer_pos_byte, align 8
  %call77 = call i64 @make_string_from_bytes(i8* %46, i64 %47, i64 %48)
  store i64 %call77, i64* %string, align 8
  %49 = load i64, i64* %string, align 8
  call void @record_unwind_protect(void (i64)* @print_unwind, i64 %49)
  br label %if.end.81

if.else:                                          ; preds = %if.end.73
  store i32 1000, i32* %new_size, align 4
  %50 = load i32, i32* %new_size, align 4
  %conv78 = sext i32 %50 to i64
  %call79 = call noalias i8* @xmalloc(i64 %conv78)
  store i8* %call79, i8** @print_buffer, align 8
  %51 = load i32, i32* %new_size, align 4
  %conv80 = sext i32 %51 to i64
  store i64 %conv80, i64* @print_buffer_size, align 8
  store i8 1, i8* %free_print_buffer, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.76
  store i64 0, i64* @print_buffer_pos, align 8
  store i64 0, i64* @print_buffer_pos_byte, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.49
  %52 = load i64, i64* %printcharfun.addr, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp84 = icmp eq i64 %52, %call83
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.90

land.lhs.true.86:                                 ; preds = %if.end.82
  %53 = load i8, i8* @noninteractive, align 1
  %tobool87 = trunc i8 %53 to i1
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  %54 = load i8, i8* %multibyte, align 1
  %tobool89 = trunc i8 %54 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool89)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %land.lhs.true.86, %if.end.82
  %55 = load i64, i64* %ensure.addr, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp92 = icmp eq i64 %55, %call91
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.end.90
  %call95 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call95, i64* %val, align 8
  br label %if.end.124

if.else.96:                                       ; preds = %if.end.90
  %56 = load i64, i64* %printcharfun.addr, align 8
  %call97 = call zeroext i1 @FUNCTIONP(i64 %56)
  br i1 %call97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.else.96
  %57 = load i64, i64* %printcharfun.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i64 %57) #6
  unreachable

if.else.99:                                       ; preds = %if.else.96
  %58 = load i8, i8* @noninteractive, align 1
  %tobool100 = trunc i8 %58 to i1
  br i1 %tobool100, label %land.lhs.true.102, label %if.else.111

land.lhs.true.102:                                ; preds = %if.else.99
  %59 = load i64, i64* %printcharfun.addr, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp104 = icmp eq i64 %59, %call103
  br i1 %cmp104, label %if.else.111, label %if.then.106

if.then.106:                                      ; preds = %land.lhs.true.102
  %60 = load i32, i32* @printchar_stdout_last, align 4
  %cmp107 = icmp eq i32 %60, 10
  br i1 %cmp107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.106
  %call109 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.then.106
  %call110 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call109, %cond.true ], [ %call110, %cond.false ]
  store i64 %cond, i64* %val, align 8
  br label %if.end.122

if.else.111:                                      ; preds = %land.lhs.true.102, %if.else.99
  %call112 = call i64 @Fbolp()
  %call113 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp114 = icmp eq i64 %call112, %call113
  br i1 %cmp114, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %if.else.111
  %call117 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.120

cond.false.118:                                   ; preds = %if.else.111
  %call119 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.116
  %cond121 = phi i64 [ %call117, %cond.true.116 ], [ %call119, %cond.false.118 ]
  store i64 %cond121, i64* %val, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %cond.end.120, %cond.end
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.94
  %61 = load i64, i64* %val, align 8
  %call125 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp126 = icmp eq i64 %61, %call125
  br i1 %cmp126, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %if.end.124
  %62 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 10, i64 %62)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.124
  %63 = load i64, i64* %printcharfun.addr, align 8
  %call130 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp131 = icmp eq i64 %63, %call130
  br i1 %cmp131, label %if.then.133, label %if.end.165

if.then.133:                                      ; preds = %if.end.129
  %64 = load i64, i64* @print_buffer_pos, align 8
  %65 = load i64, i64* @print_buffer_pos_byte, align 8
  %cmp134 = icmp ne i64 %64, %65
  br i1 %cmp134, label %land.lhs.true.136, label %if.else.160

land.lhs.true.136:                                ; preds = %if.then.133
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_137 = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 39
  %67 = load i64, i64* %enable_multibyte_characters_137, align 8
  %call138 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp139 = icmp eq i64 %67, %call138
  br i1 %cmp139, label %if.then.141, label %if.else.160

if.then.141:                                      ; preds = %land.lhs.true.136
  store i64 16384, i64* %sa_avail, align 8
  %call142 = call i64 @SPECPDL_INDEX()
  store i64 %call142, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %68 = load i64, i64* @print_buffer_pos, align 8
  %add143 = add nsw i64 %68, 1
  %69 = load i64, i64* %sa_avail, align 8
  %cmp144 = icmp sle i64 %add143, %69
  br i1 %cmp144, label %cond.true.146, label %cond.false.149

cond.true.146:                                    ; preds = %if.then.141
  %70 = load i64, i64* @print_buffer_pos, align 8
  %add147 = add nsw i64 %70, 1
  %71 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %71, %add147
  store i64 %sub, i64* %sa_avail, align 8
  %72 = load i64, i64* @print_buffer_pos, align 8
  %add148 = add nsw i64 %72, 1
  %73 = alloca i8, i64 %add148
  br label %cond.end.152

cond.false.149:                                   ; preds = %if.then.141
  store i8 1, i8* %sa_must_free, align 1
  %74 = load i64, i64* @print_buffer_pos, align 8
  %add150 = add nsw i64 %74, 1
  %call151 = call i8* @record_xmalloc(i64 %add150)
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.149, %cond.true.146
  %cond153 = phi i8* [ %73, %cond.true.146 ], [ %call151, %cond.false.149 ]
  store i8* %cond153, i8** %temp, align 8
  %75 = load i8*, i8** @print_buffer, align 8
  %76 = load i8*, i8** %temp, align 8
  %77 = load i64, i64* @print_buffer_pos_byte, align 8
  %call154 = call i64 @copy_text(i8* %75, i8* %76, i64 %77, i1 zeroext true, i1 zeroext false)
  %78 = load i8*, i8** %temp, align 8
  %79 = load i64, i64* @print_buffer_pos, align 8
  %80 = load i64, i64* @print_buffer_pos, align 8
  call void @insert_1_both(i8* %78, i64 %79, i64 %80, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end.152
  %81 = load i8, i8* %sa_must_free, align 1
  %tobool155 = trunc i8 %81 to i1
  br i1 %tobool155, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %82 = load i64, i64* %sa_count, align 8
  %call157 = call i64 @builtin_lisp_symbol(i32 0)
  %call158 = call i64 @unbind_to(i64 %82, i64 %call157)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.159
  br label %if.end.161

if.else.160:                                      ; preds = %land.lhs.true.136, %if.then.133
  %83 = load i8*, i8** @print_buffer, align 8
  %84 = load i64, i64* @print_buffer_pos, align 8
  %85 = load i64, i64* @print_buffer_pos_byte, align 8
  call void @insert_1_both(i8* %83, i64 %84, i64 %85, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.160, %do.end
  %86 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt162 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 75
  %87 = load i64, i64* %pt162, align 8
  %add163 = add nsw i64 %87, 0
  %88 = load i64, i64* @print_buffer_pos, align 8
  %sub164 = sub nsw i64 %add163, %88
  %89 = load i64, i64* @print_buffer_pos, align 8
  call void @signal_after_change(i64 %sub164, i64 0, i64 %89)
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.161, %if.end.129
  %90 = load i8, i8* %free_print_buffer, align 1
  %tobool166 = trunc i8 %90 to i1
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.165
  %91 = load i8*, i8** @print_buffer, align 8
  call void @xfree(i8* %91)
  store i8* null, i8** @print_buffer, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.end.165
  %92 = load i64, i64* %specpdl_count, align 8
  %call169 = call i64 @builtin_lisp_symbol(i32 0)
  %call170 = call i64 @unbind_to(i64 %92, i64 %call169)
  %93 = load i64, i64* %original, align 8
  %and171 = and i64 %93, 7
  %conv172 = trunc i64 %and171 to i32
  %cmp173 = icmp eq i32 %conv172, 1
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.186

land.lhs.true.175:                                ; preds = %if.end.168
  %94 = load i64, i64* %original, align 8
  %call176 = call i32 @XMISCTYPE(i64 %94)
  %cmp177 = icmp eq i32 %call176, 24236
  br i1 %cmp177, label %if.then.179, label %if.end.186

if.then.179:                                      ; preds = %land.lhs.true.175
  %95 = load i64, i64* %original, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt181 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 75
  %97 = load i64, i64* %pt181, align 8
  %add182 = add nsw i64 %97, 0
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte183 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 76
  %99 = load i64, i64* %pt_byte183, align 8
  %add184 = add nsw i64 %99, 0
  %call185 = call i64 @set_marker_both(i64 %95, i64 %call180, i64 %add182, i64 %add184)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.179, %land.lhs.true.175, %if.end.168
  %100 = load i64, i64* %old_point, align 8
  %cmp187 = icmp sge i64 %100, 0
  br i1 %cmp187, label %if.then.189, label %if.end.210

if.then.189:                                      ; preds = %if.end.186
  %101 = load i64, i64* %old_point, align 8
  %102 = load i64, i64* %old_point, align 8
  %103 = load i64, i64* %start_point, align 8
  %cmp190 = icmp sge i64 %102, %103
  br i1 %cmp190, label %cond.true.192, label %cond.false.196

cond.true.192:                                    ; preds = %if.then.189
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt193 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 75
  %105 = load i64, i64* %pt193, align 8
  %add194 = add nsw i64 %105, 0
  %106 = load i64, i64* %start_point, align 8
  %sub195 = sub nsw i64 %add194, %106
  br label %cond.end.197

cond.false.196:                                   ; preds = %if.then.189
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.196, %cond.true.192
  %cond198 = phi i64 [ %sub195, %cond.true.192 ], [ 0, %cond.false.196 ]
  %add199 = add nsw i64 %101, %cond198
  %107 = load i64, i64* %old_point_byte, align 8
  %108 = load i64, i64* %old_point_byte, align 8
  %109 = load i64, i64* %start_point_byte, align 8
  %cmp200 = icmp sge i64 %108, %109
  br i1 %cmp200, label %cond.true.202, label %cond.false.206

cond.true.202:                                    ; preds = %cond.end.197
  %110 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte203 = getelementptr inbounds %struct.buffer, %struct.buffer* %110, i32 0, i32 76
  %111 = load i64, i64* %pt_byte203, align 8
  %add204 = add nsw i64 %111, 0
  %112 = load i64, i64* %start_point_byte, align 8
  %sub205 = sub nsw i64 %add204, %112
  br label %cond.end.207

cond.false.206:                                   ; preds = %cond.end.197
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.206, %cond.true.202
  %cond208 = phi i64 [ %sub205, %cond.true.202 ], [ 0, %cond.false.206 ]
  %add209 = add nsw i64 %107, %cond208
  call void @set_point_both(i64 %add199, i64 %add209)
  br label %if.end.210

if.end.210:                                       ; preds = %cond.end.207, %if.end.186
  %113 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %113)
  %114 = load i64, i64* %val, align 8
  ret i64 %114
}

declare zeroext i1 @FUNCTIONP(i64) #1

declare i64 @Fbolp() #1

; Function Attrs: nounwind uwtable
define i64 @Fprin1(i64 %object, i64 %printcharfun) #0 {
entry:
  %object.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %old_point = alloca i64, align 8
  %start_point = alloca i64, align 8
  %old_point_byte = alloca i64, align 8
  %start_point_byte = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %free_print_buffer = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %original = alloca i64, align 8
  %marker_pos = alloca i64, align 8
  %string = alloca i64, align 8
  %new_size = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %temp = alloca i8*, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load i64, i64* %printcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  store i64 %1, i64* %printcharfun.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %2, %struct.buffer** %old, align 8
  store i64 -1, i64* %old_point, align 8
  store i64 -1, i64* %start_point, align 8
  store i64 -1, i64* %old_point_byte, align 8
  store i64 -1, i64* %start_point_byte, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %specpdl_count, align 8
  store i8 0, i8* %free_print_buffer, align 1
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 39
  %4 = load i64, i64* %enable_multibyte_characters_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  %lnot = xor i1 %cmp3, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  %5 = load i64, i64* %printcharfun.addr, align 8
  store i64 %5, i64* %original, align 8
  %6 = load i64, i64* %printcharfun.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call7, i64* %printcharfun.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %7 = load i64, i64* %printcharfun.addr, align 8
  %call9 = call zeroext i1 @BUFFERP(i64 %7)
  br i1 %call9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  %8 = load i64, i64* %printcharfun.addr, align 8
  %call11 = call %struct.buffer* @XBUFFER(i64 %8)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp12 = icmp ne %struct.buffer* %call11, %9
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %10 = load i64, i64* %printcharfun.addr, align 8
  %call14 = call i64 @Fset_buffer(i64 %10)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %printcharfun.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end.8
  %11 = load i64, i64* %printcharfun.addr, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.17
  %12 = load i64, i64* %printcharfun.addr, align 8
  %call20 = call i32 @XMISCTYPE(i64 %12)
  %cmp21 = icmp eq i32 %call20, 24236
  br i1 %cmp21, label %if.then.23, label %if.end.49

if.then.23:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %printcharfun.addr, align 8
  %call24 = call %struct.Lisp_Marker* @XMARKER(i64 %13)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call24, i32 0, i32 1
  %14 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %14, null
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.26:                                        ; preds = %if.then.23
  %15 = load i64, i64* %printcharfun.addr, align 8
  %call27 = call %struct.Lisp_Marker* @XMARKER(i64 %15)
  %buffer28 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call27, i32 0, i32 1
  %16 = load %struct.buffer*, %struct.buffer** %buffer28, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp29 = icmp ne %struct.buffer* %16, %17
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.26
  %18 = load i64, i64* %printcharfun.addr, align 8
  %call32 = call %struct.Lisp_Marker* @XMARKER(i64 %18)
  %buffer33 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call32, i32 0, i32 1
  %19 = load %struct.buffer*, %struct.buffer** %buffer33, align 8
  call void @set_buffer_internal(%struct.buffer* %19)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.26
  %20 = load i64, i64* %printcharfun.addr, align 8
  %call35 = call i64 @marker_position(i64 %20)
  store i64 %call35, i64* %marker_pos, align 8
  %21 = load i64, i64* %marker_pos, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 77
  %23 = load i64, i64* %begv, align 8
  %cmp36 = icmp slt i64 %21, %23
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %24 = load i64, i64* %marker_pos, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 79
  %26 = load i64, i64* %zv, align 8
  %cmp38 = icmp sgt i64 %24, %26
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.34
  %27 = load i64, i64* %printcharfun.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i64 %27) #6
  unreachable

if.end.41:                                        ; preds = %lor.lhs.false
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 75
  %29 = load i64, i64* %pt, align 8
  %add = add nsw i64 %29, 0
  store i64 %add, i64* %old_point, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 76
  %31 = load i64, i64* %pt_byte, align 8
  %add42 = add nsw i64 %31, 0
  store i64 %add42, i64* %old_point_byte, align 8
  %32 = load i64, i64* %marker_pos, align 8
  %33 = load i64, i64* %printcharfun.addr, align 8
  %call43 = call i64 @marker_byte_position(i64 %33)
  call void @set_point_both(i64 %32, i64 %call43)
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt44 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 75
  %35 = load i64, i64* %pt44, align 8
  %add45 = add nsw i64 %35, 0
  store i64 %add45, i64* %start_point, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte46 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 76
  %37 = load i64, i64* %pt_byte46, align 8
  %add47 = add nsw i64 %37, 0
  store i64 %add47, i64* %start_point_byte, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call48, i64* %printcharfun.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.41, %land.lhs.true, %if.end.17
  %38 = load i64, i64* %printcharfun.addr, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %38, %call50
  br i1 %cmp51, label %if.then.53, label %if.end.82

if.then.53:                                       ; preds = %if.end.49
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_54 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 39
  %40 = load i64, i64* %enable_multibyte_characters_54, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %40, %call55
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %if.then.53
  %41 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool59 = trunc i8 %41 to i1
  br i1 %tobool59, label %if.end.63, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.58
  %call61 = call i64 @builtin_lisp_symbol(i32 770)
  %call62 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call61, i64 %call62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true.58, %if.then.53
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_64 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 39
  %43 = load i64, i64* %enable_multibyte_characters_64, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %43, %call65
  br i1 %cmp66, label %if.end.73, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %if.end.63
  %44 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool69 = trunc i8 %44 to i1
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %call71 = call i64 @builtin_lisp_symbol(i32 772)
  %call72 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call71, i64 %call72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.end.63
  %45 = load i8*, i8** @print_buffer, align 8
  %cmp74 = icmp ne i8* %45, null
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.73
  %46 = load i8*, i8** @print_buffer, align 8
  %47 = load i64, i64* @print_buffer_pos, align 8
  %48 = load i64, i64* @print_buffer_pos_byte, align 8
  %call77 = call i64 @make_string_from_bytes(i8* %46, i64 %47, i64 %48)
  store i64 %call77, i64* %string, align 8
  %49 = load i64, i64* %string, align 8
  call void @record_unwind_protect(void (i64)* @print_unwind, i64 %49)
  br label %if.end.81

if.else:                                          ; preds = %if.end.73
  store i32 1000, i32* %new_size, align 4
  %50 = load i32, i32* %new_size, align 4
  %conv78 = sext i32 %50 to i64
  %call79 = call noalias i8* @xmalloc(i64 %conv78)
  store i8* %call79, i8** @print_buffer, align 8
  %51 = load i32, i32* %new_size, align 4
  %conv80 = sext i32 %51 to i64
  store i64 %conv80, i64* @print_buffer_size, align 8
  store i8 1, i8* %free_print_buffer, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.76
  store i64 0, i64* @print_buffer_pos, align 8
  store i64 0, i64* @print_buffer_pos_byte, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.49
  %52 = load i64, i64* %printcharfun.addr, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp84 = icmp eq i64 %52, %call83
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.90

land.lhs.true.86:                                 ; preds = %if.end.82
  %53 = load i8, i8* @noninteractive, align 1
  %tobool87 = trunc i8 %53 to i1
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  %54 = load i8, i8* %multibyte, align 1
  %tobool89 = trunc i8 %54 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool89)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %land.lhs.true.86, %if.end.82
  %55 = load i64, i64* %object.addr, align 8
  %56 = load i64, i64* %printcharfun.addr, align 8
  call void @print(i64 %55, i64 %56, i1 zeroext true)
  %57 = load i64, i64* %printcharfun.addr, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp92 = icmp eq i64 %57, %call91
  br i1 %cmp92, label %if.then.94, label %if.end.122

if.then.94:                                       ; preds = %if.end.90
  %58 = load i64, i64* @print_buffer_pos, align 8
  %59 = load i64, i64* @print_buffer_pos_byte, align 8
  %cmp95 = icmp ne i64 %58, %59
  br i1 %cmp95, label %land.lhs.true.97, label %if.else.117

land.lhs.true.97:                                 ; preds = %if.then.94
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_98 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 39
  %61 = load i64, i64* %enable_multibyte_characters_98, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp100 = icmp eq i64 %61, %call99
  br i1 %cmp100, label %if.then.102, label %if.else.117

if.then.102:                                      ; preds = %land.lhs.true.97
  store i64 16384, i64* %sa_avail, align 8
  %call103 = call i64 @SPECPDL_INDEX()
  store i64 %call103, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %62 = load i64, i64* @print_buffer_pos, align 8
  %add104 = add nsw i64 %62, 1
  %63 = load i64, i64* %sa_avail, align 8
  %cmp105 = icmp sle i64 %add104, %63
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.102
  %64 = load i64, i64* @print_buffer_pos, align 8
  %add107 = add nsw i64 %64, 1
  %65 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %65, %add107
  store i64 %sub, i64* %sa_avail, align 8
  %66 = load i64, i64* @print_buffer_pos, align 8
  %add108 = add nsw i64 %66, 1
  %67 = alloca i8, i64 %add108
  br label %cond.end

cond.false:                                       ; preds = %if.then.102
  store i8 1, i8* %sa_must_free, align 1
  %68 = load i64, i64* @print_buffer_pos, align 8
  %add109 = add nsw i64 %68, 1
  %call110 = call i8* @record_xmalloc(i64 %add109)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %67, %cond.true ], [ %call110, %cond.false ]
  store i8* %cond, i8** %temp, align 8
  %69 = load i8*, i8** @print_buffer, align 8
  %70 = load i8*, i8** %temp, align 8
  %71 = load i64, i64* @print_buffer_pos_byte, align 8
  %call111 = call i64 @copy_text(i8* %69, i8* %70, i64 %71, i1 zeroext true, i1 zeroext false)
  %72 = load i8*, i8** %temp, align 8
  %73 = load i64, i64* @print_buffer_pos, align 8
  %74 = load i64, i64* @print_buffer_pos, align 8
  call void @insert_1_both(i8* %72, i64 %73, i64 %74, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %75 = load i8, i8* %sa_must_free, align 1
  %tobool112 = trunc i8 %75 to i1
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %76 = load i64, i64* %sa_count, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %call115 = call i64 @unbind_to(i64 %76, i64 %call114)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.116
  br label %if.end.118

if.else.117:                                      ; preds = %land.lhs.true.97, %if.then.94
  %77 = load i8*, i8** @print_buffer, align 8
  %78 = load i64, i64* @print_buffer_pos, align 8
  %79 = load i64, i64* @print_buffer_pos_byte, align 8
  call void @insert_1_both(i8* %77, i64 %78, i64 %79, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %do.end
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt119 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 75
  %81 = load i64, i64* %pt119, align 8
  %add120 = add nsw i64 %81, 0
  %82 = load i64, i64* @print_buffer_pos, align 8
  %sub121 = sub nsw i64 %add120, %82
  %83 = load i64, i64* @print_buffer_pos, align 8
  call void @signal_after_change(i64 %sub121, i64 0, i64 %83)
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.118, %if.end.90
  %84 = load i8, i8* %free_print_buffer, align 1
  %tobool123 = trunc i8 %84 to i1
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.122
  %85 = load i8*, i8** @print_buffer, align 8
  call void @xfree(i8* %85)
  store i8* null, i8** @print_buffer, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.122
  %86 = load i64, i64* %specpdl_count, align 8
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  %call127 = call i64 @unbind_to(i64 %86, i64 %call126)
  %87 = load i64, i64* %original, align 8
  %and128 = and i64 %87, 7
  %conv129 = trunc i64 %and128 to i32
  %cmp130 = icmp eq i32 %conv129, 1
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.143

land.lhs.true.132:                                ; preds = %if.end.125
  %88 = load i64, i64* %original, align 8
  %call133 = call i32 @XMISCTYPE(i64 %88)
  %cmp134 = icmp eq i32 %call133, 24236
  br i1 %cmp134, label %if.then.136, label %if.end.143

if.then.136:                                      ; preds = %land.lhs.true.132
  %89 = load i64, i64* %original, align 8
  %call137 = call i64 @builtin_lisp_symbol(i32 0)
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt138 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 75
  %91 = load i64, i64* %pt138, align 8
  %add139 = add nsw i64 %91, 0
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte140 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 76
  %93 = load i64, i64* %pt_byte140, align 8
  %add141 = add nsw i64 %93, 0
  %call142 = call i64 @set_marker_both(i64 %89, i64 %call137, i64 %add139, i64 %add141)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.136, %land.lhs.true.132, %if.end.125
  %94 = load i64, i64* %old_point, align 8
  %cmp144 = icmp sge i64 %94, 0
  br i1 %cmp144, label %if.then.146, label %if.end.167

if.then.146:                                      ; preds = %if.end.143
  %95 = load i64, i64* %old_point, align 8
  %96 = load i64, i64* %old_point, align 8
  %97 = load i64, i64* %start_point, align 8
  %cmp147 = icmp sge i64 %96, %97
  br i1 %cmp147, label %cond.true.149, label %cond.false.153

cond.true.149:                                    ; preds = %if.then.146
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt150 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 75
  %99 = load i64, i64* %pt150, align 8
  %add151 = add nsw i64 %99, 0
  %100 = load i64, i64* %start_point, align 8
  %sub152 = sub nsw i64 %add151, %100
  br label %cond.end.154

cond.false.153:                                   ; preds = %if.then.146
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.153, %cond.true.149
  %cond155 = phi i64 [ %sub152, %cond.true.149 ], [ 0, %cond.false.153 ]
  %add156 = add nsw i64 %95, %cond155
  %101 = load i64, i64* %old_point_byte, align 8
  %102 = load i64, i64* %old_point_byte, align 8
  %103 = load i64, i64* %start_point_byte, align 8
  %cmp157 = icmp sge i64 %102, %103
  br i1 %cmp157, label %cond.true.159, label %cond.false.163

cond.true.159:                                    ; preds = %cond.end.154
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte160 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 76
  %105 = load i64, i64* %pt_byte160, align 8
  %add161 = add nsw i64 %105, 0
  %106 = load i64, i64* %start_point_byte, align 8
  %sub162 = sub nsw i64 %add161, %106
  br label %cond.end.164

cond.false.163:                                   ; preds = %cond.end.154
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.163, %cond.true.159
  %cond165 = phi i64 [ %sub162, %cond.true.159 ], [ 0, %cond.false.163 ]
  %add166 = add nsw i64 %101, %cond165
  call void @set_point_both(i64 %add156, i64 %add166)
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.164, %if.end.143
  %107 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %107)
  %108 = load i64, i64* %object.addr, align 8
  ret i64 %108
}

; Function Attrs: nounwind uwtable
define internal void @print(i64 %obj, i64 %printcharfun, i1 zeroext %escapeflag) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %escapeflag.addr = alloca i8, align 1
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %i = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %frombool = zext i1 %escapeflag to i8
  store i8 %frombool, i8* %escapeflag.addr, align 1
  store i64 0, i64* @new_backquote_output, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 230), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* @print_number_index, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 231), align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %2, %call4
  br i1 %cmp5, label %lor.lhs.false.6, label %if.then.9

lor.lhs.false.6:                                  ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 229), align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %3, %call7
  br i1 %cmp8, label %if.end.26, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false.6, %if.end
  store i64 0, i64* @print_depth, align 8
  %4 = load i64, i64* %obj.addr, align 8
  call void @print_preprocess(i64 %4)
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call10 = call zeroext i1 @HASH_TABLE_P(i64 %5)
  br i1 %call10, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %if.then.9
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call12 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %6)
  store %struct.Lisp_Hash_Table* %call12, %struct.Lisp_Hash_Table** %h, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %call13 = call i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %8)
  %cmp14 = icmp slt i64 %7, %call13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %10 = load i64, i64* %i, align 8
  %call15 = call i64 @HASH_HASH(%struct.Lisp_Hash_Table* %9, i64 %10)
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %call15, %call16
  br i1 %cmp17, label %if.end.24, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %12 = load i64, i64* %i, align 8
  %call18 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %11, i64 %12)
  %call19 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp20 = icmp eq i64 %call18, %call19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true
  %13 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %14 = load i64, i64* %i, align 8
  %call22 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %13, i64 %14)
  %15 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call23 = call i64 @Fremhash(i64 %call22, i64 %15)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %16 = load i64, i64* %i, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %if.then.9
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false.6
  store i64 0, i64* @print_depth, align 8
  %17 = load i64, i64* %obj.addr, align 8
  %18 = load i64, i64* %printcharfun.addr, align 8
  %19 = load i8, i8* %escapeflag.addr, align 1
  %tobool = trunc i8 %19 to i1
  call void @print_object(i64 %17, i64 %18, i1 zeroext %tobool)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fprin1_to_string(i64 %object, i64 %noescape) #0 {
entry:
  %object.addr = alloca i64, align 8
  %noescape.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %save_deactivate_mark = alloca i64, align 8
  %prev_abort_on_gc = alloca i8, align 1
  %printcharfun = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %old_point = alloca i64, align 8
  %start_point = alloca i64, align 8
  %old_point_byte = alloca i64, align 8
  %start_point_byte = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %free_print_buffer = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %original = alloca i64, align 8
  %marker_pos = alloca i64, align 8
  %string = alloca i64, align 8
  %new_size = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %temp = alloca i8*, align 8
  %previous = alloca %struct.buffer*, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %noescape, i64* %noescape.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 544)
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call1, i64 %call2)
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 52), align 8
  store i64 %0, i64* %save_deactivate_mark, align 8
  %1 = load i8, i8* @abort_on_gc, align 1
  %tobool = trunc i8 %1 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %prev_abort_on_gc, align 1
  store i8 1, i8* @abort_on_gc, align 1
  %2 = load i64, i64* @Vprin1_to_string_buffer, align 8
  store i64 %2, i64* %printcharfun, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %3, %struct.buffer** %old, align 8
  store i64 -1, i64* %old_point, align 8
  store i64 -1, i64* %start_point, align 8
  store i64 -1, i64* %old_point_byte, align 8
  store i64 -1, i64* %start_point_byte, align 8
  %call3 = call i64 @SPECPDL_INDEX()
  store i64 %call3, i64* %specpdl_count, align 8
  store i8 0, i8* %free_print_buffer, align 1
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 39
  %5 = load i64, i64* %enable_multibyte_characters_, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call4
  %lnot = xor i1 %cmp, true
  %frombool5 = zext i1 %lnot to i8
  store i8 %frombool5, i8* %multibyte, align 1
  %6 = load i64, i64* %printcharfun, align 8
  store i64 %6, i64* %original, align 8
  %7 = load i64, i64* %printcharfun, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %7, %call6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call8 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call8, i64* %printcharfun, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %printcharfun, align 8
  %call9 = call zeroext i1 @BUFFERP(i64 %8)
  br i1 %call9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end
  %9 = load i64, i64* %printcharfun, align 8
  %call11 = call %struct.buffer* @XBUFFER(i64 %9)
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp12 = icmp ne %struct.buffer* %call11, %10
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %11 = load i64, i64* %printcharfun, align 8
  %call14 = call i64 @Fset_buffer(i64 %11)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %printcharfun, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end
  %12 = load i64, i64* %printcharfun, align 8
  %and = and i64 %12, 7
  %conv = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.17
  %13 = load i64, i64* %printcharfun, align 8
  %call20 = call i32 @XMISCTYPE(i64 %13)
  %cmp21 = icmp eq i32 %call20, 24236
  br i1 %cmp21, label %if.then.23, label %if.end.50

if.then.23:                                       ; preds = %land.lhs.true
  %14 = load i64, i64* %printcharfun, align 8
  %call24 = call %struct.Lisp_Marker* @XMARKER(i64 %14)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call24, i32 0, i32 1
  %15 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool25 = icmp ne %struct.buffer* %15, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.27:                                        ; preds = %if.then.23
  %16 = load i64, i64* %printcharfun, align 8
  %call28 = call %struct.Lisp_Marker* @XMARKER(i64 %16)
  %buffer29 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call28, i32 0, i32 1
  %17 = load %struct.buffer*, %struct.buffer** %buffer29, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp30 = icmp ne %struct.buffer* %17, %18
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.27
  %19 = load i64, i64* %printcharfun, align 8
  %call33 = call %struct.Lisp_Marker* @XMARKER(i64 %19)
  %buffer34 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call33, i32 0, i32 1
  %20 = load %struct.buffer*, %struct.buffer** %buffer34, align 8
  call void @set_buffer_internal(%struct.buffer* %20)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.27
  %21 = load i64, i64* %printcharfun, align 8
  %call36 = call i64 @marker_position(i64 %21)
  store i64 %call36, i64* %marker_pos, align 8
  %22 = load i64, i64* %marker_pos, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 77
  %24 = load i64, i64* %begv, align 8
  %cmp37 = icmp slt i64 %22, %24
  br i1 %cmp37, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.35
  %25 = load i64, i64* %marker_pos, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 79
  %27 = load i64, i64* %zv, align 8
  %cmp39 = icmp sgt i64 %25, %27
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %if.end.35
  %28 = load i64, i64* %printcharfun, align 8
  call void @signal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i64 %28) #6
  unreachable

if.end.42:                                        ; preds = %lor.lhs.false
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 75
  %30 = load i64, i64* %pt, align 8
  %add = add nsw i64 %30, 0
  store i64 %add, i64* %old_point, align 8
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 76
  %32 = load i64, i64* %pt_byte, align 8
  %add43 = add nsw i64 %32, 0
  store i64 %add43, i64* %old_point_byte, align 8
  %33 = load i64, i64* %marker_pos, align 8
  %34 = load i64, i64* %printcharfun, align 8
  %call44 = call i64 @marker_byte_position(i64 %34)
  call void @set_point_both(i64 %33, i64 %call44)
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt45 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 75
  %36 = load i64, i64* %pt45, align 8
  %add46 = add nsw i64 %36, 0
  store i64 %add46, i64* %start_point, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte47 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 76
  %38 = load i64, i64* %pt_byte47, align 8
  %add48 = add nsw i64 %38, 0
  store i64 %add48, i64* %start_point_byte, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call49, i64* %printcharfun, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.42, %land.lhs.true, %if.end.17
  %39 = load i64, i64* %printcharfun, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp52 = icmp eq i64 %39, %call51
  br i1 %cmp52, label %if.then.54, label %if.end.83

if.then.54:                                       ; preds = %if.end.50
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_55 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 39
  %41 = load i64, i64* %enable_multibyte_characters_55, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %41, %call56
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.64

land.lhs.true.59:                                 ; preds = %if.then.54
  %42 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool60 = trunc i8 %42 to i1
  br i1 %tobool60, label %if.end.64, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.59
  %call62 = call i64 @builtin_lisp_symbol(i32 770)
  %call63 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call62, i64 %call63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %land.lhs.true.59, %if.then.54
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_65 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 39
  %44 = load i64, i64* %enable_multibyte_characters_65, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %44, %call66
  br i1 %cmp67, label %if.end.74, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %if.end.64
  %45 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool70 = trunc i8 %45 to i1
  br i1 %tobool70, label %if.end.74, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.69
  %call72 = call i64 @builtin_lisp_symbol(i32 772)
  %call73 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call72, i64 %call73)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %land.lhs.true.69, %if.end.64
  %46 = load i8*, i8** @print_buffer, align 8
  %cmp75 = icmp ne i8* %46, null
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %if.end.74
  %47 = load i8*, i8** @print_buffer, align 8
  %48 = load i64, i64* @print_buffer_pos, align 8
  %49 = load i64, i64* @print_buffer_pos_byte, align 8
  %call78 = call i64 @make_string_from_bytes(i8* %47, i64 %48, i64 %49)
  store i64 %call78, i64* %string, align 8
  %50 = load i64, i64* %string, align 8
  call void @record_unwind_protect(void (i64)* @print_unwind, i64 %50)
  br label %if.end.82

if.else:                                          ; preds = %if.end.74
  store i32 1000, i32* %new_size, align 4
  %51 = load i32, i32* %new_size, align 4
  %conv79 = sext i32 %51 to i64
  %call80 = call noalias i8* @xmalloc(i64 %conv79)
  store i8* %call80, i8** @print_buffer, align 8
  %52 = load i32, i32* %new_size, align 4
  %conv81 = sext i32 %52 to i64
  store i64 %conv81, i64* @print_buffer_size, align 8
  store i8 1, i8* %free_print_buffer, align 1
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.77
  store i64 0, i64* @print_buffer_pos, align 8
  store i64 0, i64* @print_buffer_pos_byte, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.50
  %53 = load i64, i64* %printcharfun, align 8
  %call84 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp85 = icmp eq i64 %53, %call84
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.91

land.lhs.true.87:                                 ; preds = %if.end.83
  %54 = load i8, i8* @noninteractive, align 1
  %tobool88 = trunc i8 %54 to i1
  br i1 %tobool88, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %land.lhs.true.87
  %55 = load i8, i8* %multibyte, align 1
  %tobool90 = trunc i8 %55 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool90)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %land.lhs.true.87, %if.end.83
  %56 = load i64, i64* %object.addr, align 8
  %57 = load i64, i64* %printcharfun, align 8
  %58 = load i64, i64* %noescape.addr, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp93 = icmp eq i64 %58, %call92
  call void @print(i64 %56, i64 %57, i1 zeroext %cmp93)
  %59 = load i64, i64* %printcharfun, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp96 = icmp eq i64 %59, %call95
  br i1 %cmp96, label %if.then.98, label %if.end.126

if.then.98:                                       ; preds = %if.end.91
  %60 = load i64, i64* @print_buffer_pos, align 8
  %61 = load i64, i64* @print_buffer_pos_byte, align 8
  %cmp99 = icmp ne i64 %60, %61
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.121

land.lhs.true.101:                                ; preds = %if.then.98
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_102 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 39
  %63 = load i64, i64* %enable_multibyte_characters_102, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp104 = icmp eq i64 %63, %call103
  br i1 %cmp104, label %if.then.106, label %if.else.121

if.then.106:                                      ; preds = %land.lhs.true.101
  store i64 16384, i64* %sa_avail, align 8
  %call107 = call i64 @SPECPDL_INDEX()
  store i64 %call107, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %64 = load i64, i64* @print_buffer_pos, align 8
  %add108 = add nsw i64 %64, 1
  %65 = load i64, i64* %sa_avail, align 8
  %cmp109 = icmp sle i64 %add108, %65
  br i1 %cmp109, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.106
  %66 = load i64, i64* @print_buffer_pos, align 8
  %add111 = add nsw i64 %66, 1
  %67 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %67, %add111
  store i64 %sub, i64* %sa_avail, align 8
  %68 = load i64, i64* @print_buffer_pos, align 8
  %add112 = add nsw i64 %68, 1
  %69 = alloca i8, i64 %add112
  br label %cond.end

cond.false:                                       ; preds = %if.then.106
  store i8 1, i8* %sa_must_free, align 1
  %70 = load i64, i64* @print_buffer_pos, align 8
  %add113 = add nsw i64 %70, 1
  %call114 = call i8* @record_xmalloc(i64 %add113)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %69, %cond.true ], [ %call114, %cond.false ]
  store i8* %cond, i8** %temp, align 8
  %71 = load i8*, i8** @print_buffer, align 8
  %72 = load i8*, i8** %temp, align 8
  %73 = load i64, i64* @print_buffer_pos_byte, align 8
  %call115 = call i64 @copy_text(i8* %71, i8* %72, i64 %73, i1 zeroext true, i1 zeroext false)
  %74 = load i8*, i8** %temp, align 8
  %75 = load i64, i64* @print_buffer_pos, align 8
  %76 = load i64, i64* @print_buffer_pos, align 8
  call void @insert_1_both(i8* %74, i64 %75, i64 %76, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %77 = load i8, i8* %sa_must_free, align 1
  %tobool116 = trunc i8 %77 to i1
  br i1 %tobool116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %78 = load i64, i64* %sa_count, align 8
  %call118 = call i64 @builtin_lisp_symbol(i32 0)
  %call119 = call i64 @unbind_to(i64 %78, i64 %call118)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.120
  br label %if.end.122

if.else.121:                                      ; preds = %land.lhs.true.101, %if.then.98
  %79 = load i8*, i8** @print_buffer, align 8
  %80 = load i64, i64* @print_buffer_pos, align 8
  %81 = load i64, i64* @print_buffer_pos_byte, align 8
  call void @insert_1_both(i8* %79, i64 %80, i64 %81, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %do.end
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt123 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 75
  %83 = load i64, i64* %pt123, align 8
  %add124 = add nsw i64 %83, 0
  %84 = load i64, i64* @print_buffer_pos, align 8
  %sub125 = sub nsw i64 %add124, %84
  %85 = load i64, i64* @print_buffer_pos, align 8
  call void @signal_after_change(i64 %sub125, i64 0, i64 %85)
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.122, %if.end.91
  %86 = load i8, i8* %free_print_buffer, align 1
  %tobool127 = trunc i8 %86 to i1
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.126
  %87 = load i8*, i8** @print_buffer, align 8
  call void @xfree(i8* %87)
  store i8* null, i8** @print_buffer, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.126
  %88 = load i64, i64* %specpdl_count, align 8
  %call130 = call i64 @builtin_lisp_symbol(i32 0)
  %call131 = call i64 @unbind_to(i64 %88, i64 %call130)
  %89 = load i64, i64* %original, align 8
  %and132 = and i64 %89, 7
  %conv133 = trunc i64 %and132 to i32
  %cmp134 = icmp eq i32 %conv133, 1
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.147

land.lhs.true.136:                                ; preds = %if.end.129
  %90 = load i64, i64* %original, align 8
  %call137 = call i32 @XMISCTYPE(i64 %90)
  %cmp138 = icmp eq i32 %call137, 24236
  br i1 %cmp138, label %if.then.140, label %if.end.147

if.then.140:                                      ; preds = %land.lhs.true.136
  %91 = load i64, i64* %original, align 8
  %call141 = call i64 @builtin_lisp_symbol(i32 0)
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt142 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 75
  %93 = load i64, i64* %pt142, align 8
  %add143 = add nsw i64 %93, 0
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte144 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 76
  %95 = load i64, i64* %pt_byte144, align 8
  %add145 = add nsw i64 %95, 0
  %call146 = call i64 @set_marker_both(i64 %91, i64 %call141, i64 %add143, i64 %add145)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.140, %land.lhs.true.136, %if.end.129
  %96 = load i64, i64* %old_point, align 8
  %cmp148 = icmp sge i64 %96, 0
  br i1 %cmp148, label %if.then.150, label %if.end.171

if.then.150:                                      ; preds = %if.end.147
  %97 = load i64, i64* %old_point, align 8
  %98 = load i64, i64* %old_point, align 8
  %99 = load i64, i64* %start_point, align 8
  %cmp151 = icmp sge i64 %98, %99
  br i1 %cmp151, label %cond.true.153, label %cond.false.157

cond.true.153:                                    ; preds = %if.then.150
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt154 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 75
  %101 = load i64, i64* %pt154, align 8
  %add155 = add nsw i64 %101, 0
  %102 = load i64, i64* %start_point, align 8
  %sub156 = sub nsw i64 %add155, %102
  br label %cond.end.158

cond.false.157:                                   ; preds = %if.then.150
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.157, %cond.true.153
  %cond159 = phi i64 [ %sub156, %cond.true.153 ], [ 0, %cond.false.157 ]
  %add160 = add nsw i64 %97, %cond159
  %103 = load i64, i64* %old_point_byte, align 8
  %104 = load i64, i64* %old_point_byte, align 8
  %105 = load i64, i64* %start_point_byte, align 8
  %cmp161 = icmp sge i64 %104, %105
  br i1 %cmp161, label %cond.true.163, label %cond.false.167

cond.true.163:                                    ; preds = %cond.end.158
  %106 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte164 = getelementptr inbounds %struct.buffer, %struct.buffer* %106, i32 0, i32 76
  %107 = load i64, i64* %pt_byte164, align 8
  %add165 = add nsw i64 %107, 0
  %108 = load i64, i64* %start_point_byte, align 8
  %sub166 = sub nsw i64 %add165, %108
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.158
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.163
  %cond169 = phi i64 [ %sub166, %cond.true.163 ], [ 0, %cond.false.167 ]
  %add170 = add nsw i64 %103, %cond169
  call void @set_point_both(i64 %add160, i64 %add170)
  br label %if.end.171

if.end.171:                                       ; preds = %cond.end.168, %if.end.147
  %109 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %109)
  %110 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %110, %struct.buffer** %previous, align 8
  %111 = load i64, i64* @Vprin1_to_string_buffer, align 8
  %call172 = call %struct.buffer* @XBUFFER(i64 %111)
  call void @set_buffer_internal(%struct.buffer* %call172)
  %call173 = call i64 @Fbuffer_string()
  store i64 %call173, i64* %object.addr, align 8
  %112 = load i64, i64* %object.addr, align 8
  %call174 = call i64 @SBYTES(i64 %112)
  %113 = load i64, i64* %object.addr, align 8
  %call175 = call i64 @SCHARS(i64 %113)
  %cmp176 = icmp eq i64 %call174, %call175
  br i1 %cmp176, label %if.then.178, label %if.end.188

if.then.178:                                      ; preds = %if.end.171
  br label %do.body.179

do.body.179:                                      ; preds = %if.then.178
  %114 = load i64, i64* %object.addr, align 8
  %call180 = call %struct.Lisp_String* @XSTRING(i64 %114)
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call180, i32 0, i32 0
  %115 = load i64, i64* %size, align 8
  %cmp181 = icmp eq i64 %115, 0
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %do.body.179
  %116 = load i64, i64* @empty_unibyte_string, align 8
  store i64 %116, i64* %object.addr, align 8
  br label %if.end.186

if.else.184:                                      ; preds = %do.body.179
  %117 = load i64, i64* %object.addr, align 8
  %call185 = call %struct.Lisp_String* @XSTRING(i64 %117)
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call185, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %if.then.183
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  br label %if.end.188

if.end.188:                                       ; preds = %do.end.187, %if.end.171
  %call189 = call i64 @Ferase_buffer()
  %118 = load %struct.buffer*, %struct.buffer** %previous, align 8
  call void @set_buffer_internal(%struct.buffer* %118)
  %119 = load i64, i64* %save_deactivate_mark, align 8
  store i64 %119, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 52), align 8
  %120 = load i8, i8* %prev_abort_on_gc, align 1
  %tobool190 = trunc i8 %120 to i1
  %frombool191 = zext i1 %tobool190 to i8
  store i8 %frombool191, i8* @abort_on_gc, align 1
  %121 = load i64, i64* %count, align 8
  %122 = load i64, i64* %object.addr, align 8
  %call192 = call i64 @unbind_to(i64 %121, i64 %122)
  ret i64 %call192
}

declare i64 @Fbuffer_string() #1

declare i64 @SBYTES(i64) #1

declare i64 @SCHARS(i64) #1

declare %struct.Lisp_String* @XSTRING(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fprinc(i64 %object, i64 %printcharfun) #0 {
entry:
  %object.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %old_point = alloca i64, align 8
  %start_point = alloca i64, align 8
  %old_point_byte = alloca i64, align 8
  %start_point_byte = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %free_print_buffer = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %original = alloca i64, align 8
  %marker_pos = alloca i64, align 8
  %string = alloca i64, align 8
  %new_size = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %temp = alloca i8*, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load i64, i64* %printcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  store i64 %1, i64* %printcharfun.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %2, %struct.buffer** %old, align 8
  store i64 -1, i64* %old_point, align 8
  store i64 -1, i64* %start_point, align 8
  store i64 -1, i64* %old_point_byte, align 8
  store i64 -1, i64* %start_point_byte, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %specpdl_count, align 8
  store i8 0, i8* %free_print_buffer, align 1
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 39
  %4 = load i64, i64* %enable_multibyte_characters_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  %lnot = xor i1 %cmp3, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  %5 = load i64, i64* %printcharfun.addr, align 8
  store i64 %5, i64* %original, align 8
  %6 = load i64, i64* %printcharfun.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call7, i64* %printcharfun.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %7 = load i64, i64* %printcharfun.addr, align 8
  %call9 = call zeroext i1 @BUFFERP(i64 %7)
  br i1 %call9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  %8 = load i64, i64* %printcharfun.addr, align 8
  %call11 = call %struct.buffer* @XBUFFER(i64 %8)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp12 = icmp ne %struct.buffer* %call11, %9
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %10 = load i64, i64* %printcharfun.addr, align 8
  %call14 = call i64 @Fset_buffer(i64 %10)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %printcharfun.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end.8
  %11 = load i64, i64* %printcharfun.addr, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.17
  %12 = load i64, i64* %printcharfun.addr, align 8
  %call20 = call i32 @XMISCTYPE(i64 %12)
  %cmp21 = icmp eq i32 %call20, 24236
  br i1 %cmp21, label %if.then.23, label %if.end.49

if.then.23:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %printcharfun.addr, align 8
  %call24 = call %struct.Lisp_Marker* @XMARKER(i64 %13)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call24, i32 0, i32 1
  %14 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %14, null
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.26:                                        ; preds = %if.then.23
  %15 = load i64, i64* %printcharfun.addr, align 8
  %call27 = call %struct.Lisp_Marker* @XMARKER(i64 %15)
  %buffer28 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call27, i32 0, i32 1
  %16 = load %struct.buffer*, %struct.buffer** %buffer28, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp29 = icmp ne %struct.buffer* %16, %17
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.26
  %18 = load i64, i64* %printcharfun.addr, align 8
  %call32 = call %struct.Lisp_Marker* @XMARKER(i64 %18)
  %buffer33 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call32, i32 0, i32 1
  %19 = load %struct.buffer*, %struct.buffer** %buffer33, align 8
  call void @set_buffer_internal(%struct.buffer* %19)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.26
  %20 = load i64, i64* %printcharfun.addr, align 8
  %call35 = call i64 @marker_position(i64 %20)
  store i64 %call35, i64* %marker_pos, align 8
  %21 = load i64, i64* %marker_pos, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 77
  %23 = load i64, i64* %begv, align 8
  %cmp36 = icmp slt i64 %21, %23
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %24 = load i64, i64* %marker_pos, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 79
  %26 = load i64, i64* %zv, align 8
  %cmp38 = icmp sgt i64 %24, %26
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.34
  %27 = load i64, i64* %printcharfun.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i64 %27) #6
  unreachable

if.end.41:                                        ; preds = %lor.lhs.false
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 75
  %29 = load i64, i64* %pt, align 8
  %add = add nsw i64 %29, 0
  store i64 %add, i64* %old_point, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 76
  %31 = load i64, i64* %pt_byte, align 8
  %add42 = add nsw i64 %31, 0
  store i64 %add42, i64* %old_point_byte, align 8
  %32 = load i64, i64* %marker_pos, align 8
  %33 = load i64, i64* %printcharfun.addr, align 8
  %call43 = call i64 @marker_byte_position(i64 %33)
  call void @set_point_both(i64 %32, i64 %call43)
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt44 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 75
  %35 = load i64, i64* %pt44, align 8
  %add45 = add nsw i64 %35, 0
  store i64 %add45, i64* %start_point, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte46 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 76
  %37 = load i64, i64* %pt_byte46, align 8
  %add47 = add nsw i64 %37, 0
  store i64 %add47, i64* %start_point_byte, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call48, i64* %printcharfun.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.41, %land.lhs.true, %if.end.17
  %38 = load i64, i64* %printcharfun.addr, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %38, %call50
  br i1 %cmp51, label %if.then.53, label %if.end.82

if.then.53:                                       ; preds = %if.end.49
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_54 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 39
  %40 = load i64, i64* %enable_multibyte_characters_54, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %40, %call55
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %if.then.53
  %41 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool59 = trunc i8 %41 to i1
  br i1 %tobool59, label %if.end.63, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.58
  %call61 = call i64 @builtin_lisp_symbol(i32 770)
  %call62 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call61, i64 %call62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true.58, %if.then.53
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_64 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 39
  %43 = load i64, i64* %enable_multibyte_characters_64, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %43, %call65
  br i1 %cmp66, label %if.end.73, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %if.end.63
  %44 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool69 = trunc i8 %44 to i1
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %call71 = call i64 @builtin_lisp_symbol(i32 772)
  %call72 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call71, i64 %call72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.end.63
  %45 = load i8*, i8** @print_buffer, align 8
  %cmp74 = icmp ne i8* %45, null
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.73
  %46 = load i8*, i8** @print_buffer, align 8
  %47 = load i64, i64* @print_buffer_pos, align 8
  %48 = load i64, i64* @print_buffer_pos_byte, align 8
  %call77 = call i64 @make_string_from_bytes(i8* %46, i64 %47, i64 %48)
  store i64 %call77, i64* %string, align 8
  %49 = load i64, i64* %string, align 8
  call void @record_unwind_protect(void (i64)* @print_unwind, i64 %49)
  br label %if.end.81

if.else:                                          ; preds = %if.end.73
  store i32 1000, i32* %new_size, align 4
  %50 = load i32, i32* %new_size, align 4
  %conv78 = sext i32 %50 to i64
  %call79 = call noalias i8* @xmalloc(i64 %conv78)
  store i8* %call79, i8** @print_buffer, align 8
  %51 = load i32, i32* %new_size, align 4
  %conv80 = sext i32 %51 to i64
  store i64 %conv80, i64* @print_buffer_size, align 8
  store i8 1, i8* %free_print_buffer, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.76
  store i64 0, i64* @print_buffer_pos, align 8
  store i64 0, i64* @print_buffer_pos_byte, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.49
  %52 = load i64, i64* %printcharfun.addr, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp84 = icmp eq i64 %52, %call83
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.90

land.lhs.true.86:                                 ; preds = %if.end.82
  %53 = load i8, i8* @noninteractive, align 1
  %tobool87 = trunc i8 %53 to i1
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  %54 = load i8, i8* %multibyte, align 1
  %tobool89 = trunc i8 %54 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool89)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %land.lhs.true.86, %if.end.82
  %55 = load i64, i64* %object.addr, align 8
  %56 = load i64, i64* %printcharfun.addr, align 8
  call void @print(i64 %55, i64 %56, i1 zeroext false)
  %57 = load i64, i64* %printcharfun.addr, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp92 = icmp eq i64 %57, %call91
  br i1 %cmp92, label %if.then.94, label %if.end.122

if.then.94:                                       ; preds = %if.end.90
  %58 = load i64, i64* @print_buffer_pos, align 8
  %59 = load i64, i64* @print_buffer_pos_byte, align 8
  %cmp95 = icmp ne i64 %58, %59
  br i1 %cmp95, label %land.lhs.true.97, label %if.else.117

land.lhs.true.97:                                 ; preds = %if.then.94
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_98 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 39
  %61 = load i64, i64* %enable_multibyte_characters_98, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp100 = icmp eq i64 %61, %call99
  br i1 %cmp100, label %if.then.102, label %if.else.117

if.then.102:                                      ; preds = %land.lhs.true.97
  store i64 16384, i64* %sa_avail, align 8
  %call103 = call i64 @SPECPDL_INDEX()
  store i64 %call103, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %62 = load i64, i64* @print_buffer_pos, align 8
  %add104 = add nsw i64 %62, 1
  %63 = load i64, i64* %sa_avail, align 8
  %cmp105 = icmp sle i64 %add104, %63
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.102
  %64 = load i64, i64* @print_buffer_pos, align 8
  %add107 = add nsw i64 %64, 1
  %65 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %65, %add107
  store i64 %sub, i64* %sa_avail, align 8
  %66 = load i64, i64* @print_buffer_pos, align 8
  %add108 = add nsw i64 %66, 1
  %67 = alloca i8, i64 %add108
  br label %cond.end

cond.false:                                       ; preds = %if.then.102
  store i8 1, i8* %sa_must_free, align 1
  %68 = load i64, i64* @print_buffer_pos, align 8
  %add109 = add nsw i64 %68, 1
  %call110 = call i8* @record_xmalloc(i64 %add109)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %67, %cond.true ], [ %call110, %cond.false ]
  store i8* %cond, i8** %temp, align 8
  %69 = load i8*, i8** @print_buffer, align 8
  %70 = load i8*, i8** %temp, align 8
  %71 = load i64, i64* @print_buffer_pos_byte, align 8
  %call111 = call i64 @copy_text(i8* %69, i8* %70, i64 %71, i1 zeroext true, i1 zeroext false)
  %72 = load i8*, i8** %temp, align 8
  %73 = load i64, i64* @print_buffer_pos, align 8
  %74 = load i64, i64* @print_buffer_pos, align 8
  call void @insert_1_both(i8* %72, i64 %73, i64 %74, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %75 = load i8, i8* %sa_must_free, align 1
  %tobool112 = trunc i8 %75 to i1
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %76 = load i64, i64* %sa_count, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %call115 = call i64 @unbind_to(i64 %76, i64 %call114)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.116
  br label %if.end.118

if.else.117:                                      ; preds = %land.lhs.true.97, %if.then.94
  %77 = load i8*, i8** @print_buffer, align 8
  %78 = load i64, i64* @print_buffer_pos, align 8
  %79 = load i64, i64* @print_buffer_pos_byte, align 8
  call void @insert_1_both(i8* %77, i64 %78, i64 %79, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %do.end
  %80 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt119 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 75
  %81 = load i64, i64* %pt119, align 8
  %add120 = add nsw i64 %81, 0
  %82 = load i64, i64* @print_buffer_pos, align 8
  %sub121 = sub nsw i64 %add120, %82
  %83 = load i64, i64* @print_buffer_pos, align 8
  call void @signal_after_change(i64 %sub121, i64 0, i64 %83)
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.118, %if.end.90
  %84 = load i8, i8* %free_print_buffer, align 1
  %tobool123 = trunc i8 %84 to i1
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.122
  %85 = load i8*, i8** @print_buffer, align 8
  call void @xfree(i8* %85)
  store i8* null, i8** @print_buffer, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.122
  %86 = load i64, i64* %specpdl_count, align 8
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  %call127 = call i64 @unbind_to(i64 %86, i64 %call126)
  %87 = load i64, i64* %original, align 8
  %and128 = and i64 %87, 7
  %conv129 = trunc i64 %and128 to i32
  %cmp130 = icmp eq i32 %conv129, 1
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.143

land.lhs.true.132:                                ; preds = %if.end.125
  %88 = load i64, i64* %original, align 8
  %call133 = call i32 @XMISCTYPE(i64 %88)
  %cmp134 = icmp eq i32 %call133, 24236
  br i1 %cmp134, label %if.then.136, label %if.end.143

if.then.136:                                      ; preds = %land.lhs.true.132
  %89 = load i64, i64* %original, align 8
  %call137 = call i64 @builtin_lisp_symbol(i32 0)
  %90 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt138 = getelementptr inbounds %struct.buffer, %struct.buffer* %90, i32 0, i32 75
  %91 = load i64, i64* %pt138, align 8
  %add139 = add nsw i64 %91, 0
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte140 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 76
  %93 = load i64, i64* %pt_byte140, align 8
  %add141 = add nsw i64 %93, 0
  %call142 = call i64 @set_marker_both(i64 %89, i64 %call137, i64 %add139, i64 %add141)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.136, %land.lhs.true.132, %if.end.125
  %94 = load i64, i64* %old_point, align 8
  %cmp144 = icmp sge i64 %94, 0
  br i1 %cmp144, label %if.then.146, label %if.end.167

if.then.146:                                      ; preds = %if.end.143
  %95 = load i64, i64* %old_point, align 8
  %96 = load i64, i64* %old_point, align 8
  %97 = load i64, i64* %start_point, align 8
  %cmp147 = icmp sge i64 %96, %97
  br i1 %cmp147, label %cond.true.149, label %cond.false.153

cond.true.149:                                    ; preds = %if.then.146
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt150 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 75
  %99 = load i64, i64* %pt150, align 8
  %add151 = add nsw i64 %99, 0
  %100 = load i64, i64* %start_point, align 8
  %sub152 = sub nsw i64 %add151, %100
  br label %cond.end.154

cond.false.153:                                   ; preds = %if.then.146
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.153, %cond.true.149
  %cond155 = phi i64 [ %sub152, %cond.true.149 ], [ 0, %cond.false.153 ]
  %add156 = add nsw i64 %95, %cond155
  %101 = load i64, i64* %old_point_byte, align 8
  %102 = load i64, i64* %old_point_byte, align 8
  %103 = load i64, i64* %start_point_byte, align 8
  %cmp157 = icmp sge i64 %102, %103
  br i1 %cmp157, label %cond.true.159, label %cond.false.163

cond.true.159:                                    ; preds = %cond.end.154
  %104 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte160 = getelementptr inbounds %struct.buffer, %struct.buffer* %104, i32 0, i32 76
  %105 = load i64, i64* %pt_byte160, align 8
  %add161 = add nsw i64 %105, 0
  %106 = load i64, i64* %start_point_byte, align 8
  %sub162 = sub nsw i64 %add161, %106
  br label %cond.end.164

cond.false.163:                                   ; preds = %cond.end.154
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.163, %cond.true.159
  %cond165 = phi i64 [ %sub162, %cond.true.159 ], [ 0, %cond.false.163 ]
  %add166 = add nsw i64 %101, %cond165
  call void @set_point_both(i64 %add156, i64 %add166)
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.164, %if.end.143
  %107 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %107)
  %108 = load i64, i64* %object.addr, align 8
  ret i64 %108
}

; Function Attrs: nounwind uwtable
define i64 @Fprint(i64 %object, i64 %printcharfun) #0 {
entry:
  %object.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %old_point = alloca i64, align 8
  %start_point = alloca i64, align 8
  %old_point_byte = alloca i64, align 8
  %start_point_byte = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %free_print_buffer = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %original = alloca i64, align 8
  %marker_pos = alloca i64, align 8
  %string = alloca i64, align 8
  %new_size = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %temp = alloca i8*, align 8
  store i64 %object, i64* %object.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load i64, i64* %printcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  store i64 %1, i64* %printcharfun.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %2, %struct.buffer** %old, align 8
  store i64 -1, i64* %old_point, align 8
  store i64 -1, i64* %start_point, align 8
  store i64 -1, i64* %old_point_byte, align 8
  store i64 -1, i64* %start_point_byte, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %specpdl_count, align 8
  store i8 0, i8* %free_print_buffer, align 1
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 39
  %4 = load i64, i64* %enable_multibyte_characters_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  %lnot = xor i1 %cmp3, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  %5 = load i64, i64* %printcharfun.addr, align 8
  store i64 %5, i64* %original, align 8
  %6 = load i64, i64* %printcharfun.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call7, i64* %printcharfun.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %7 = load i64, i64* %printcharfun.addr, align 8
  %call9 = call zeroext i1 @BUFFERP(i64 %7)
  br i1 %call9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.8
  %8 = load i64, i64* %printcharfun.addr, align 8
  %call11 = call %struct.buffer* @XBUFFER(i64 %8)
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp12 = icmp ne %struct.buffer* %call11, %9
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %10 = load i64, i64* %printcharfun.addr, align 8
  %call14 = call i64 @Fset_buffer(i64 %10)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %printcharfun.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end.8
  %11 = load i64, i64* %printcharfun.addr, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.17
  %12 = load i64, i64* %printcharfun.addr, align 8
  %call20 = call i32 @XMISCTYPE(i64 %12)
  %cmp21 = icmp eq i32 %call20, 24236
  br i1 %cmp21, label %if.then.23, label %if.end.49

if.then.23:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %printcharfun.addr, align 8
  %call24 = call %struct.Lisp_Marker* @XMARKER(i64 %13)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call24, i32 0, i32 1
  %14 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool = icmp ne %struct.buffer* %14, null
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.26:                                        ; preds = %if.then.23
  %15 = load i64, i64* %printcharfun.addr, align 8
  %call27 = call %struct.Lisp_Marker* @XMARKER(i64 %15)
  %buffer28 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call27, i32 0, i32 1
  %16 = load %struct.buffer*, %struct.buffer** %buffer28, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp29 = icmp ne %struct.buffer* %16, %17
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.26
  %18 = load i64, i64* %printcharfun.addr, align 8
  %call32 = call %struct.Lisp_Marker* @XMARKER(i64 %18)
  %buffer33 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call32, i32 0, i32 1
  %19 = load %struct.buffer*, %struct.buffer** %buffer33, align 8
  call void @set_buffer_internal(%struct.buffer* %19)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.26
  %20 = load i64, i64* %printcharfun.addr, align 8
  %call35 = call i64 @marker_position(i64 %20)
  store i64 %call35, i64* %marker_pos, align 8
  %21 = load i64, i64* %marker_pos, align 8
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 77
  %23 = load i64, i64* %begv, align 8
  %cmp36 = icmp slt i64 %21, %23
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %24 = load i64, i64* %marker_pos, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 79
  %26 = load i64, i64* %zv, align 8
  %cmp38 = icmp sgt i64 %24, %26
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.34
  %27 = load i64, i64* %printcharfun.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i64 %27) #6
  unreachable

if.end.41:                                        ; preds = %lor.lhs.false
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 75
  %29 = load i64, i64* %pt, align 8
  %add = add nsw i64 %29, 0
  store i64 %add, i64* %old_point, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 76
  %31 = load i64, i64* %pt_byte, align 8
  %add42 = add nsw i64 %31, 0
  store i64 %add42, i64* %old_point_byte, align 8
  %32 = load i64, i64* %marker_pos, align 8
  %33 = load i64, i64* %printcharfun.addr, align 8
  %call43 = call i64 @marker_byte_position(i64 %33)
  call void @set_point_both(i64 %32, i64 %call43)
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt44 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 75
  %35 = load i64, i64* %pt44, align 8
  %add45 = add nsw i64 %35, 0
  store i64 %add45, i64* %start_point, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte46 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 76
  %37 = load i64, i64* %pt_byte46, align 8
  %add47 = add nsw i64 %37, 0
  store i64 %add47, i64* %start_point_byte, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call48, i64* %printcharfun.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.41, %land.lhs.true, %if.end.17
  %38 = load i64, i64* %printcharfun.addr, align 8
  %call50 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp51 = icmp eq i64 %38, %call50
  br i1 %cmp51, label %if.then.53, label %if.end.82

if.then.53:                                       ; preds = %if.end.49
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_54 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 39
  %40 = load i64, i64* %enable_multibyte_characters_54, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %40, %call55
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %if.then.53
  %41 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool59 = trunc i8 %41 to i1
  br i1 %tobool59, label %if.end.63, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.58
  %call61 = call i64 @builtin_lisp_symbol(i32 770)
  %call62 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call61, i64 %call62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true.58, %if.then.53
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_64 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 39
  %43 = load i64, i64* %enable_multibyte_characters_64, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %43, %call65
  br i1 %cmp66, label %if.end.73, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %if.end.63
  %44 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool69 = trunc i8 %44 to i1
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %call71 = call i64 @builtin_lisp_symbol(i32 772)
  %call72 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call71, i64 %call72)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.end.63
  %45 = load i8*, i8** @print_buffer, align 8
  %cmp74 = icmp ne i8* %45, null
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.73
  %46 = load i8*, i8** @print_buffer, align 8
  %47 = load i64, i64* @print_buffer_pos, align 8
  %48 = load i64, i64* @print_buffer_pos_byte, align 8
  %call77 = call i64 @make_string_from_bytes(i8* %46, i64 %47, i64 %48)
  store i64 %call77, i64* %string, align 8
  %49 = load i64, i64* %string, align 8
  call void @record_unwind_protect(void (i64)* @print_unwind, i64 %49)
  br label %if.end.81

if.else:                                          ; preds = %if.end.73
  store i32 1000, i32* %new_size, align 4
  %50 = load i32, i32* %new_size, align 4
  %conv78 = sext i32 %50 to i64
  %call79 = call noalias i8* @xmalloc(i64 %conv78)
  store i8* %call79, i8** @print_buffer, align 8
  %51 = load i32, i32* %new_size, align 4
  %conv80 = sext i32 %51 to i64
  store i64 %conv80, i64* @print_buffer_size, align 8
  store i8 1, i8* %free_print_buffer, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.76
  store i64 0, i64* @print_buffer_pos, align 8
  store i64 0, i64* @print_buffer_pos_byte, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.49
  %52 = load i64, i64* %printcharfun.addr, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp84 = icmp eq i64 %52, %call83
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.90

land.lhs.true.86:                                 ; preds = %if.end.82
  %53 = load i8, i8* @noninteractive, align 1
  %tobool87 = trunc i8 %53 to i1
  br i1 %tobool87, label %if.end.90, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  %54 = load i8, i8* %multibyte, align 1
  %tobool89 = trunc i8 %54 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool89)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %land.lhs.true.86, %if.end.82
  %55 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 10, i64 %55)
  %56 = load i64, i64* %object.addr, align 8
  %57 = load i64, i64* %printcharfun.addr, align 8
  call void @print(i64 %56, i64 %57, i1 zeroext true)
  %58 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 10, i64 %58)
  %59 = load i64, i64* %printcharfun.addr, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp92 = icmp eq i64 %59, %call91
  br i1 %cmp92, label %if.then.94, label %if.end.122

if.then.94:                                       ; preds = %if.end.90
  %60 = load i64, i64* @print_buffer_pos, align 8
  %61 = load i64, i64* @print_buffer_pos_byte, align 8
  %cmp95 = icmp ne i64 %60, %61
  br i1 %cmp95, label %land.lhs.true.97, label %if.else.117

land.lhs.true.97:                                 ; preds = %if.then.94
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_98 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 39
  %63 = load i64, i64* %enable_multibyte_characters_98, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp100 = icmp eq i64 %63, %call99
  br i1 %cmp100, label %if.then.102, label %if.else.117

if.then.102:                                      ; preds = %land.lhs.true.97
  store i64 16384, i64* %sa_avail, align 8
  %call103 = call i64 @SPECPDL_INDEX()
  store i64 %call103, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %64 = load i64, i64* @print_buffer_pos, align 8
  %add104 = add nsw i64 %64, 1
  %65 = load i64, i64* %sa_avail, align 8
  %cmp105 = icmp sle i64 %add104, %65
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.102
  %66 = load i64, i64* @print_buffer_pos, align 8
  %add107 = add nsw i64 %66, 1
  %67 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %67, %add107
  store i64 %sub, i64* %sa_avail, align 8
  %68 = load i64, i64* @print_buffer_pos, align 8
  %add108 = add nsw i64 %68, 1
  %69 = alloca i8, i64 %add108
  br label %cond.end

cond.false:                                       ; preds = %if.then.102
  store i8 1, i8* %sa_must_free, align 1
  %70 = load i64, i64* @print_buffer_pos, align 8
  %add109 = add nsw i64 %70, 1
  %call110 = call i8* @record_xmalloc(i64 %add109)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %69, %cond.true ], [ %call110, %cond.false ]
  store i8* %cond, i8** %temp, align 8
  %71 = load i8*, i8** @print_buffer, align 8
  %72 = load i8*, i8** %temp, align 8
  %73 = load i64, i64* @print_buffer_pos_byte, align 8
  %call111 = call i64 @copy_text(i8* %71, i8* %72, i64 %73, i1 zeroext true, i1 zeroext false)
  %74 = load i8*, i8** %temp, align 8
  %75 = load i64, i64* @print_buffer_pos, align 8
  %76 = load i64, i64* @print_buffer_pos, align 8
  call void @insert_1_both(i8* %74, i64 %75, i64 %76, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %77 = load i8, i8* %sa_must_free, align 1
  %tobool112 = trunc i8 %77 to i1
  br i1 %tobool112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %78 = load i64, i64* %sa_count, align 8
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %call115 = call i64 @unbind_to(i64 %78, i64 %call114)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.116
  br label %if.end.118

if.else.117:                                      ; preds = %land.lhs.true.97, %if.then.94
  %79 = load i8*, i8** @print_buffer, align 8
  %80 = load i64, i64* @print_buffer_pos, align 8
  %81 = load i64, i64* @print_buffer_pos_byte, align 8
  call void @insert_1_both(i8* %79, i64 %80, i64 %81, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %do.end
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt119 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 75
  %83 = load i64, i64* %pt119, align 8
  %add120 = add nsw i64 %83, 0
  %84 = load i64, i64* @print_buffer_pos, align 8
  %sub121 = sub nsw i64 %add120, %84
  %85 = load i64, i64* @print_buffer_pos, align 8
  call void @signal_after_change(i64 %sub121, i64 0, i64 %85)
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.118, %if.end.90
  %86 = load i8, i8* %free_print_buffer, align 1
  %tobool123 = trunc i8 %86 to i1
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.122
  %87 = load i8*, i8** @print_buffer, align 8
  call void @xfree(i8* %87)
  store i8* null, i8** @print_buffer, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.122
  %88 = load i64, i64* %specpdl_count, align 8
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  %call127 = call i64 @unbind_to(i64 %88, i64 %call126)
  %89 = load i64, i64* %original, align 8
  %and128 = and i64 %89, 7
  %conv129 = trunc i64 %and128 to i32
  %cmp130 = icmp eq i32 %conv129, 1
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.143

land.lhs.true.132:                                ; preds = %if.end.125
  %90 = load i64, i64* %original, align 8
  %call133 = call i32 @XMISCTYPE(i64 %90)
  %cmp134 = icmp eq i32 %call133, 24236
  br i1 %cmp134, label %if.then.136, label %if.end.143

if.then.136:                                      ; preds = %land.lhs.true.132
  %91 = load i64, i64* %original, align 8
  %call137 = call i64 @builtin_lisp_symbol(i32 0)
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt138 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 75
  %93 = load i64, i64* %pt138, align 8
  %add139 = add nsw i64 %93, 0
  %94 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte140 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 76
  %95 = load i64, i64* %pt_byte140, align 8
  %add141 = add nsw i64 %95, 0
  %call142 = call i64 @set_marker_both(i64 %91, i64 %call137, i64 %add139, i64 %add141)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.136, %land.lhs.true.132, %if.end.125
  %96 = load i64, i64* %old_point, align 8
  %cmp144 = icmp sge i64 %96, 0
  br i1 %cmp144, label %if.then.146, label %if.end.167

if.then.146:                                      ; preds = %if.end.143
  %97 = load i64, i64* %old_point, align 8
  %98 = load i64, i64* %old_point, align 8
  %99 = load i64, i64* %start_point, align 8
  %cmp147 = icmp sge i64 %98, %99
  br i1 %cmp147, label %cond.true.149, label %cond.false.153

cond.true.149:                                    ; preds = %if.then.146
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt150 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 75
  %101 = load i64, i64* %pt150, align 8
  %add151 = add nsw i64 %101, 0
  %102 = load i64, i64* %start_point, align 8
  %sub152 = sub nsw i64 %add151, %102
  br label %cond.end.154

cond.false.153:                                   ; preds = %if.then.146
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.153, %cond.true.149
  %cond155 = phi i64 [ %sub152, %cond.true.149 ], [ 0, %cond.false.153 ]
  %add156 = add nsw i64 %97, %cond155
  %103 = load i64, i64* %old_point_byte, align 8
  %104 = load i64, i64* %old_point_byte, align 8
  %105 = load i64, i64* %start_point_byte, align 8
  %cmp157 = icmp sge i64 %104, %105
  br i1 %cmp157, label %cond.true.159, label %cond.false.163

cond.true.159:                                    ; preds = %cond.end.154
  %106 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte160 = getelementptr inbounds %struct.buffer, %struct.buffer* %106, i32 0, i32 76
  %107 = load i64, i64* %pt_byte160, align 8
  %add161 = add nsw i64 %107, 0
  %108 = load i64, i64* %start_point_byte, align 8
  %sub162 = sub nsw i64 %add161, %108
  br label %cond.end.164

cond.false.163:                                   ; preds = %cond.end.154
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.163, %cond.true.159
  %cond165 = phi i64 [ %sub162, %cond.true.159 ], [ 0, %cond.false.163 ]
  %add166 = add nsw i64 %103, %cond165
  call void @set_point_both(i64 %add156, i64 %add166)
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.164, %if.end.143
  %109 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %109)
  %110 = load i64, i64* %object.addr, align 8
  ret i64 %110
}

; Function Attrs: nounwind uwtable
define i64 @Fexternal_debugging_output(i64 %character) #0 {
entry:
  %character.addr = alloca i64, align 8
  store i64 %character, i64* %character.addr, align 8
  %0 = load i64, i64* %character.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %character.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %character.addr, align 8
  %shr = ashr i64 %4, 2
  %conv3 = trunc i64 %shr to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @printchar_to_stream(i32 %conv3, %struct._IO_FILE* %5)
  %6 = load i64, i64* %character.addr, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @printchar_to_stream(i32 %ch, %struct._IO_FILE* %stream) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %dv = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %coding_system = alloca i64, align 8
  %encode_p = alloca i8, align 1
  %mbstr = alloca [5 x i8], align 1
  %len = alloca i32, align 4
  %encoded_ch = alloca i64, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 0, i64* %i, align 8
  store i64 1, i64* %n, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  store i64 %0, i64* %coding_system, align 8
  store i8 0, i8* %encode_p, align 1
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  store i64 %2, i64* %coding_system, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %coding_system, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %3, %call1
  br i1 %cmp2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i8 1, i8* %encode_p, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %4 = load i32, i32* %ch.addr, align 4
  %add = add i32 %4, 0
  %cmp5 = icmp ule i32 %add, 4194303
  br i1 %cmp5, label %land.lhs.true, label %if.end.61

cond.false:                                       ; preds = %if.end.4
  %5 = load i32, i32* %ch.addr, align 4
  %conv = zext i32 %5 to i64
  %add6 = add i64 %conv, 0
  %cmp7 = icmp ule i64 %add6, 4194303
  br i1 %cmp7, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call9 = call zeroext i1 @CHAR_TABLE_P(i64 %6)
  br i1 %call9, label %land.lhs.true.11, label %if.end.61

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call12 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %7)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call12, i32 0, i32 3
  %8 = load i64, i64* %purpose, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 346)
  %cmp14 = icmp eq i64 %8, %call13
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.61

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call17 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %9)
  %call18 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call17)
  %cmp19 = icmp eq i32 %call18, 6
  br i1 %cmp19, label %if.then.21, label %if.end.61

if.then.21:                                       ; preds = %land.lhs.true.16
  br i1 true, label %cond.true.22, label %cond.false.26

cond.true.22:                                     ; preds = %if.then.21
  %10 = load i32, i32* %ch.addr, align 4
  %add23 = add i32 %10, 0
  %cmp24 = icmp ult i32 %add23, 128
  br i1 %cmp24, label %cond.true.31, label %cond.false.52

cond.false.26:                                    ; preds = %if.then.21
  %11 = load i32, i32* %ch.addr, align 4
  %conv27 = zext i32 %11 to i64
  %add28 = add i64 %conv27, 0
  %cmp29 = icmp ult i64 %add28, 128
  br i1 %cmp29, label %cond.true.31, label %cond.false.52

cond.true.31:                                     ; preds = %cond.false.26, %cond.true.22
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call32 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %12)
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call32, i32 0, i32 4
  %13 = load i64, i64* %ascii, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %13, %call33
  br i1 %cmp34, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.true.31
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call37 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %14)
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call37, i32 0, i32 1
  %15 = load i64, i64* %defalt, align 8
  br label %cond.end.50

cond.false.38:                                    ; preds = %cond.true.31
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call39 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %16)
  %ascii40 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call39, i32 0, i32 4
  %17 = load i64, i64* %ascii40, align 8
  %call41 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %17)
  br i1 %call41, label %cond.true.43, label %cond.false.47

cond.true.43:                                     ; preds = %cond.false.38
  %18 = load i32, i32* %ch.addr, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call44 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %19)
  %ascii45 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call44, i32 0, i32 4
  %20 = load i64, i64* %ascii45, align 8
  %call46 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %20)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call46, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %idxprom
  %21 = load i64, i64* %arrayidx, align 8
  br label %cond.end

cond.false.47:                                    ; preds = %cond.false.38
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call48 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %22)
  %ascii49 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call48, i32 0, i32 4
  %23 = load i64, i64* %ascii49, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.47, %cond.true.43
  %cond = phi i64 [ %21, %cond.true.43 ], [ %23, %cond.false.47 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end, %cond.true.36
  %cond51 = phi i64 [ %15, %cond.true.36 ], [ %cond, %cond.end ]
  br label %cond.end.55

cond.false.52:                                    ; preds = %cond.false.26, %cond.true.22
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call53 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %24)
  %25 = load i32, i32* %ch.addr, align 4
  %call54 = call i64 @disp_char_vector(%struct.Lisp_Char_Table* %call53, i32 %25)
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.52, %cond.end.50
  %cond56 = phi i64 [ %cond51, %cond.end.50 ], [ %call54, %cond.false.52 ]
  store i64 %cond56, i64* %dv, align 8
  %26 = load i64, i64* %dv, align 8
  %call57 = call zeroext i1 @VECTORP(i64 %26)
  br i1 %call57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %cond.end.55
  %27 = load i64, i64* %dv, align 8
  %call59 = call i64 @ASIZE(i64 %27)
  store i64 %call59, i64* %n, align 8
  br label %next_char

if.end.60:                                        ; preds = %cond.end.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true, %cond.false, %cond.true
  br label %while.body

while.body:                                       ; preds = %if.end.61, %if.end.159
  br i1 true, label %cond.true.62, label %cond.false.66

cond.true.62:                                     ; preds = %while.body
  %28 = load i32, i32* %ch.addr, align 4
  %add63 = add i32 %28, 0
  %cmp64 = icmp ult i32 %add63, 128
  br i1 %cmp64, label %if.then.71, label %if.else

cond.false.66:                                    ; preds = %while.body
  %29 = load i32, i32* %ch.addr, align 4
  %conv67 = zext i32 %29 to i64
  %add68 = add i64 %conv67, 0
  %cmp69 = icmp ult i64 %add68, 128
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %cond.false.66, %cond.true.62
  %30 = load i32, i32* %ch.addr, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call72 = call i32 @_IO_putc(i32 %30, %struct._IO_FILE* %31)
  br label %if.end.142

if.else:                                          ; preds = %cond.false.66, %cond.true.62
  br i1 true, label %cond.true.73, label %cond.false.77

cond.true.73:                                     ; preds = %if.else
  %32 = load i32, i32* %ch.addr, align 4
  %add74 = add i32 %32, 0
  %cmp75 = icmp ule i32 %add74, 127
  br i1 %cmp75, label %cond.true.82, label %cond.false.85

cond.false.77:                                    ; preds = %if.else
  %33 = load i32, i32* %ch.addr, align 4
  %conv78 = zext i32 %33 to i64
  %add79 = add i64 %conv78, 0
  %cmp80 = icmp ule i64 %add79, 127
  br i1 %cmp80, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %cond.false.77, %cond.true.73
  %34 = load i32, i32* %ch.addr, align 4
  %conv83 = trunc i32 %34 to i8
  %arrayidx84 = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i64 0
  store i8 %conv83, i8* %arrayidx84, align 1
  br label %cond.end.131

cond.false.85:                                    ; preds = %cond.false.77, %cond.true.73
  br i1 true, label %cond.true.86, label %cond.false.90

cond.true.86:                                     ; preds = %cond.false.85
  %35 = load i32, i32* %ch.addr, align 4
  %add87 = add i32 %35, 0
  %cmp88 = icmp ule i32 %add87, 2047
  br i1 %cmp88, label %cond.true.95, label %cond.false.101

cond.false.90:                                    ; preds = %cond.false.85
  %36 = load i32, i32* %ch.addr, align 4
  %conv91 = zext i32 %36 to i64
  %add92 = add i64 %conv91, 0
  %cmp93 = icmp ule i64 %add92, 2047
  br i1 %cmp93, label %cond.true.95, label %cond.false.101

cond.true.95:                                     ; preds = %cond.false.90, %cond.true.86
  %37 = load i32, i32* %ch.addr, align 4
  %shr = lshr i32 %37, 6
  %or = or i32 192, %shr
  %conv96 = trunc i32 %or to i8
  %arrayidx97 = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i64 0
  store i8 %conv96, i8* %arrayidx97, align 1
  %38 = load i32, i32* %ch.addr, align 4
  %and = and i32 %38, 63
  %or98 = or i32 128, %and
  %conv99 = trunc i32 %or98 to i8
  %arrayidx100 = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i64 1
  store i8 %conv99, i8* %arrayidx100, align 1
  br label %cond.end.129

cond.false.101:                                   ; preds = %cond.false.90, %cond.true.86
  br i1 true, label %cond.true.102, label %cond.false.106

cond.true.102:                                    ; preds = %cond.false.101
  %39 = load i32, i32* %ch.addr, align 4
  %add103 = add i32 %39, 0
  %cmp104 = icmp ule i32 %add103, 65535
  br i1 %cmp104, label %cond.true.111, label %cond.false.125

cond.false.106:                                   ; preds = %cond.false.101
  %40 = load i32, i32* %ch.addr, align 4
  %conv107 = zext i32 %40 to i64
  %add108 = add i64 %conv107, 0
  %cmp109 = icmp ule i64 %add108, 65535
  br i1 %cmp109, label %cond.true.111, label %cond.false.125

cond.true.111:                                    ; preds = %cond.false.106, %cond.true.102
  %41 = load i32, i32* %ch.addr, align 4
  %shr112 = lshr i32 %41, 12
  %or113 = or i32 224, %shr112
  %conv114 = trunc i32 %or113 to i8
  %arrayidx115 = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i64 0
  store i8 %conv114, i8* %arrayidx115, align 1
  %42 = load i32, i32* %ch.addr, align 4
  %shr116 = lshr i32 %42, 6
  %and117 = and i32 %shr116, 63
  %or118 = or i32 128, %and117
  %conv119 = trunc i32 %or118 to i8
  %arrayidx120 = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i64 1
  store i8 %conv119, i8* %arrayidx120, align 1
  %43 = load i32, i32* %ch.addr, align 4
  %and121 = and i32 %43, 63
  %or122 = or i32 128, %and121
  %conv123 = trunc i32 %or122 to i8
  %arrayidx124 = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i64 2
  store i8 %conv123, i8* %arrayidx124, align 1
  br label %cond.end.127

cond.false.125:                                   ; preds = %cond.false.106, %cond.true.102
  %44 = load i32, i32* %ch.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i32 0
  %call126 = call i32 @char_string(i32 %44, i8* %arraydecay)
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.125, %cond.true.111
  %cond128 = phi i32 [ 3, %cond.true.111 ], [ %call126, %cond.false.125 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.95
  %cond130 = phi i32 [ 2, %cond.true.95 ], [ %cond128, %cond.end.127 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %cond.true.82
  %cond132 = phi i32 [ 1, %cond.true.82 ], [ %cond130, %cond.end.129 ]
  store i32 %cond132, i32* %len, align 4
  %arraydecay133 = getelementptr inbounds [5 x i8], [5 x i8]* %mbstr, i32 0, i32 0
  %45 = load i32, i32* %len, align 4
  %conv134 = sext i32 %45 to i64
  %call135 = call i64 @make_multibyte_string(i8* %arraydecay133, i64 1, i64 %conv134)
  store i64 %call135, i64* %encoded_ch, align 8
  %46 = load i8, i8* %encode_p, align 1
  %tobool = trunc i8 %46 to i1
  br i1 %tobool, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %cond.end.131
  %47 = load i64, i64* %encoded_ch, align 8
  %48 = load i64, i64* %coding_system, align 8
  %call137 = call i64 @code_convert_string_norecord(i64 %47, i64 %48, i1 zeroext true)
  store i64 %call137, i64* %encoded_ch, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %cond.end.131
  %49 = load i64, i64* %encoded_ch, align 8
  %call139 = call i8* @SSDATA(i64 %49)
  %50 = load i64, i64* %encoded_ch, align 8
  %call140 = call i64 @SBYTES(i64 %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call141 = call i64 @fwrite(i8* %call139, i64 1, i64 %call140, %struct._IO_FILE* %51)
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.138, %if.then.71
  %52 = load i64, i64* %i, align 8
  %inc = add nsw i64 %52, 1
  store i64 %inc, i64* %i, align 8
  br label %next_char

next_char:                                        ; preds = %if.end.142, %if.then.58
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %next_char
  %53 = load i64, i64* %i, align 8
  %54 = load i64, i64* %n, align 8
  %cmp143 = icmp slt i64 %53, %54
  br i1 %cmp143, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i64, i64* %dv, align 8
  %56 = load i64, i64* %i, align 8
  %call145 = call i64 @AREF(i64 %55, i64 %56)
  %call146 = call zeroext i1 @NATNUMP(i64 %call145)
  br i1 %call146, label %land.lhs.true.148, label %if.end.154

land.lhs.true.148:                                ; preds = %for.body
  %57 = load i64, i64* %dv, align 8
  %58 = load i64, i64* %i, align 8
  %call149 = call i64 @AREF(i64 %57, i64 %58)
  %shr150 = ashr i64 %call149, 2
  %cmp151 = icmp sle i64 %shr150, 4194303
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %land.lhs.true.148
  br label %for.end

if.end.154:                                       ; preds = %land.lhs.true.148, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.154
  %59 = load i64, i64* %i, align 8
  %inc155 = add nsw i64 %59, 1
  store i64 %inc155, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.153, %for.cond
  %60 = load i64, i64* %i, align 8
  %61 = load i64, i64* %n, align 8
  %cmp156 = icmp slt i64 %60, %61
  br i1 %cmp156, label %if.end.159, label %if.then.158

if.then.158:                                      ; preds = %for.end
  br label %while.end

if.end.159:                                       ; preds = %for.end
  %62 = load i64, i64* %dv, align 8
  %63 = load i64, i64* %i, align 8
  %call160 = call i64 @AREF(i64 %62, i64 %63)
  %shr161 = ashr i64 %call160, 2
  %conv162 = trunc i64 %shr161 to i32
  store i32 %conv162, i32* %ch.addr, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.158
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_output_compilation_hack(i1 zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  %frombool = zext i1 %x to i8
  store i8 %frombool, i8* %x.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %tobool = trunc i8 %0 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* @print_output_debug_flag, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fredirect_debugging_output(i64 %file, i64 %append) #0 {
entry:
  %file.addr = alloca i64, align 8
  %append.addr = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 %append, i64* %append.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @initial_stderr_stream, align 8
  %cmp = icmp ne %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @block_input()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  call void @unblock_input()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @initial_stderr_stream, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @initial_stderr_stream, align 8
  %3 = load i64, i64* %file.addr, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call1, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.end
  %4 = load i64, i64* %file.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fexpand_file_name(i64 %4, i64 %call3)
  store i64 %call4, i64* %file.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @initial_stderr_stream, align 8
  %6 = load i64, i64* %file.addr, align 8
  %call5 = call i8* @SSDATA(i64 %6)
  %7 = load i64, i64* %append.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %7, %call6
  %cond = select i1 %cmp7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)
  %call8 = call %struct._IO_FILE* @emacs_fopen(i8* %call5, i8* %cond)
  store %struct._IO_FILE* %call8, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @initial_stderr_stream, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @initial_stderr_stream, align 8
  %10 = load i64, i64* %file.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i64 %10) #6
  unreachable

if.end.11:                                        ; preds = %if.then.2
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call13
}

declare void @block_input() #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @unblock_input() #1

declare zeroext i1 @STRINGP(i64) #1

declare i64 @Fexpand_file_name(i64, i64) #1

declare %struct._IO_FILE* @emacs_fopen(i8*, i8*) #1

declare i8* @SSDATA(i64) #1

; Function Attrs: noreturn
declare void @report_file_error(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @debug_print(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 394)
  %call1 = call i64 @Fprin1(i64 %0, i64 %call)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @safe_debug_print(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %valid = alloca i32, align 4
  %n = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call i32 @valid_lisp_object_p(i64 %0)
  store i32 %call, i32* %valid, align 4
  %1 = load i32, i32* %valid, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %arg.addr, align 8
  call void @debug_print(i64 %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %arg.addr, align 8
  store i64 %3, i64* %n, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool, true
  %cond = select i1 %lnot, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)
  %6 = load i64, i64* %n, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %cond, i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @valid_lisp_object_p(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ferror_message_string(i64 %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca i64, align 8
  %old = alloca %struct.buffer*, align 8
  %value = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %0, %struct.buffer** %old, align 8
  %1 = load i64, i64* %obj.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %obj.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %call = call i64 @builtin_lisp_symbol(i32 372)
  %cmp2 = icmp eq i64 %5, %call
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %obj.addr, align 8
  %sub5 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub5 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %and6 = and i64 %9, 7
  %conv7 = trunc i64 %and6 to i32
  %cmp8 = icmp eq i32 %conv7, 3
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.4
  %10 = load i64, i64* %obj.addr, align 8
  %sub11 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub11 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr13 = bitcast %union.anon.0* %u12 to i64*
  %13 = load i64, i64* %cdr13, align 8
  %sub14 = sub nsw i64 %13, 3
  %14 = inttoptr i64 %sub14 to i8*
  %15 = bitcast i8* %14 to %struct.Lisp_Cons*
  %car15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %15, i32 0, i32 0
  %16 = load i64, i64* %car15, align 8
  %call16 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call16, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true.10
  %17 = load i64, i64* %obj.addr, align 8
  %sub19 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub19 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u20 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr21 = bitcast %union.anon.0* %u20 to i64*
  %20 = load i64, i64* %cdr21, align 8
  %sub22 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub22 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr24 = bitcast %union.anon.0* %u23 to i64*
  %23 = load i64, i64* %cdr24, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %23, %call25
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.18
  %24 = load i64, i64* %obj.addr, align 8
  %sub28 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub28 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr30 = bitcast %union.anon.0* %u29 to i64*
  %27 = load i64, i64* %cdr30, align 8
  %sub31 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub31 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car32 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car32, align 8
  store i64 %30, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.18, %land.lhs.true.10, %land.lhs.true.4, %land.lhs.true, %entry
  %31 = load i64, i64* %obj.addr, align 8
  %32 = load i64, i64* @Vprin1_to_string_buffer, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  call void @print_error_message(i64 %31, i64 %32, i8* null, i64 %call33)
  %33 = load i64, i64* @Vprin1_to_string_buffer, align 8
  %call34 = call %struct.buffer* @XBUFFER(i64 %33)
  call void @set_buffer_internal(%struct.buffer* %call34)
  %call35 = call i64 @Fbuffer_string()
  store i64 %call35, i64* %value, align 8
  %call36 = call i64 @Ferase_buffer()
  %34 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal(%struct.buffer* %34)
  %35 = load i64, i64* %value, align 8
  store i64 %35, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load i64, i64* %retval
  ret i64 %36
}

; Function Attrs: nounwind uwtable
define void @print_error_message(i64 %data, i64 %stream, i8* %context, i64 %caller) #0 {
entry:
  %data.addr = alloca i64, align 8
  %stream.addr = alloca i64, align 8
  %context.addr = alloca i8*, align 8
  %caller.addr = alloca i64, align 8
  %errname = alloca i64, align 8
  %errmsg = alloca i64, align 8
  %file_error = alloca i64, align 8
  %tail = alloca i64, align 8
  %cname = alloca i64, align 8
  %cnamelen = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %name = alloca i8*, align 8
  %error_conditions = alloca i64, align 8
  %sep = alloca i8*, align 8
  %obj = alloca i64, align 8
  store i64 %data, i64* %data.addr, align 8
  store i64 %stream, i64* %stream.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i64 %caller, i64* %caller.addr, align 8
  %0 = load i8*, i8** %context.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %context.addr, align 8
  %2 = load i64, i64* %stream.addr, align 8
  call void @write_string_1(i8* %1, i64 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %caller.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1 = icmp eq i64 %3, %call
  br i1 %cmp1, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load i64, i64* %caller.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* %caller.addr, align 8
  %call5 = call i64 @SYMBOL_NAME(i64 %5)
  store i64 %call5, i64* %cname, align 8
  %6 = load i64, i64* %cname, align 8
  %call6 = call i64 @SBYTES(i64 %6)
  store i64 %call6, i64* %cnamelen, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call7 = call i64 @SPECPDL_INDEX()
  store i64 %call7, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %7 = load i64, i64* %cnamelen, align 8
  %8 = load i64, i64* %sa_avail, align 8
  %cmp8 = icmp sle i64 %7, %8
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %9 = load i64, i64* %cnamelen, align 8
  %10 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %10, %9
  store i64 %sub, i64* %sa_avail, align 8
  %11 = load i64, i64* %cnamelen, align 8
  %12 = alloca i8, i64 %11
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  store i8 1, i8* %sa_must_free, align 1
  %13 = load i64, i64* %cnamelen, align 8
  %call10 = call i8* @record_xmalloc(i64 %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call10, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %14 = load i8*, i8** %name, align 8
  %15 = load i64, i64* %cname, align 8
  %call11 = call i8* @SDATA(i64 %15)
  %16 = load i64, i64* %cnamelen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %call11, i64 %16, i32 1, i1 false)
  %17 = load i8*, i8** %name, align 8
  %18 = load i64, i64* %cnamelen, align 8
  %19 = load i64, i64* %cname, align 8
  %call12 = call zeroext i1 @STRING_MULTIBYTE(i64 %19)
  call void @message_dolog(i8* %17, i64 %18, i1 zeroext false, i1 zeroext %call12)
  call void @message_dolog(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 2, i1 zeroext false, i1 zeroext false)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %20 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %20 to i1
  br i1 %tobool, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %21 = load i64, i64* %sa_count, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %call15 = call i64 @unbind_to(i64 %21, i64 %call14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %land.lhs.true, %if.end
  %22 = load i64, i64* %data.addr, align 8
  %call18 = call i64 @Fcar(i64 %22)
  store i64 %call18, i64* %errname, align 8
  %23 = load i64, i64* %errname, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 372)
  %cmp20 = icmp eq i64 %23, %call19
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.17
  %24 = load i64, i64* %data.addr, align 8
  %call23 = call i64 @Fcdr(i64 %24)
  store i64 %call23, i64* %data.addr, align 8
  %25 = load i64, i64* %data.addr, align 8
  %and24 = and i64 %25, 7
  %conv25 = trunc i64 %and24 to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %if.then.22
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* %data.addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.22
  %26 = load i64, i64* %data.addr, align 8
  %call31 = call i64 @Fcar(i64 %26)
  store i64 %call31, i64* %errmsg, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* %file_error, align 8
  br label %if.end.39

if.else:                                          ; preds = %if.end.17
  %27 = load i64, i64* %errname, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 373)
  %call34 = call i64 @Fget(i64 %27, i64 %call33)
  store i64 %call34, i64* %error_conditions, align 8
  %28 = load i64, i64* %errname, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 374)
  %call36 = call i64 @Fget(i64 %28, i64 %call35)
  store i64 %call36, i64* %errmsg, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 411)
  %29 = load i64, i64* %error_conditions, align 8
  %call38 = call i64 @Fmemq(i64 %call37, i64 %29)
  store i64 %call38, i64* %file_error, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.end.30
  %30 = load i64, i64* %data.addr, align 8
  %call40 = call i64 @Fcdr_safe(i64 %30)
  store i64 %call40, i64* %tail, align 8
  %31 = load i64, i64* %file_error, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %31, %call41
  br i1 %cmp42, label %if.end.52, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %if.end.39
  %32 = load i64, i64* %tail, align 8
  %and45 = and i64 %32, 7
  %conv46 = trunc i64 %and45 to i32
  %cmp47 = icmp eq i32 %conv46, 3
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %land.lhs.true.44
  %33 = load i64, i64* %tail, align 8
  %sub50 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub50 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 0
  %36 = load i64, i64* %car, align 8
  store i64 %36, i64* %errmsg, align 8
  %37 = load i64, i64* %tail, align 8
  %sub51 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub51 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %40 = load i64, i64* %cdr, align 8
  store i64 %40, i64* %tail, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %land.lhs.true.44, %if.end.39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %sep, align 8
  %41 = load i64, i64* %errmsg, align 8
  %call53 = call zeroext i1 @STRINGP(i64 %41)
  br i1 %call53, label %if.else.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.52
  %42 = load i64, i64* %stream.addr, align 8
  call void @write_string_1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i64 %42)
  br label %if.end.63

if.else.55:                                       ; preds = %if.end.52
  %43 = load i64, i64* %errmsg, align 8
  %call56 = call i64 @SCHARS(i64 %43)
  %tobool57 = icmp ne i64 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.else.55
  %44 = load i64, i64* %errmsg, align 8
  %call59 = call i64 @Fsubstitute_command_keys(i64 %44)
  %45 = load i64, i64* %stream.addr, align 8
  %call60 = call i64 @Fprinc(i64 %call59, i64 %45)
  br label %if.end.62

if.else.61:                                       ; preds = %if.else.55
  store i8* null, i8** %sep, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %46 = load i64, i64* %tail, align 8
  %and64 = and i64 %46, 7
  %conv65 = trunc i64 %and64 to i32
  %cmp66 = icmp eq i32 %conv65, 3
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i8*, i8** %sep, align 8
  %tobool68 = icmp ne i8* %47, null
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body
  %48 = load i8*, i8** %sep, align 8
  %49 = load i64, i64* %stream.addr, align 8
  call void @write_string_1(i8* %48, i64 %49)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %for.body
  %50 = load i64, i64* %tail, align 8
  %sub71 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub71 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %car72 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 0
  %53 = load i64, i64* %car72, align 8
  store i64 %53, i64* %obj, align 8
  %54 = load i64, i64* %file_error, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp74 = icmp eq i64 %54, %call73
  br i1 %cmp74, label %lor.lhs.false, label %if.then.83

lor.lhs.false:                                    ; preds = %if.end.70
  %55 = load i64, i64* %errname, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 367)
  %cmp77 = icmp eq i64 %55, %call76
  br i1 %cmp77, label %if.then.83, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false
  %56 = load i64, i64* %errname, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 981)
  %cmp81 = icmp eq i64 %56, %call80
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %lor.lhs.false.79, %lor.lhs.false, %if.end.70
  %57 = load i64, i64* %obj, align 8
  %58 = load i64, i64* %stream.addr, align 8
  %call84 = call i64 @Fprinc(i64 %57, i64 %58)
  br label %if.end.87

if.else.85:                                       ; preds = %lor.lhs.false.79
  %59 = load i64, i64* %obj, align 8
  %60 = load i64, i64* %stream.addr, align 8
  %call86 = call i64 @Fprin1(i64 %59, i64 %60)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.83
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %61 = load i64, i64* %tail, align 8
  %sub88 = sub nsw i64 %61, 3
  %62 = inttoptr i64 %sub88 to i8*
  %63 = bitcast i8* %62 to %struct.Lisp_Cons*
  %u89 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %63, i32 0, i32 1
  %cdr90 = bitcast %union.anon.0* %u89 to i64*
  %64 = load i64, i64* %cdr90, align 8
  store i64 %64, i64* %tail, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8** %sep, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @SYMBOL_NAME(i64) #1

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @message_dolog(i8*, i64, i1 zeroext, i1 zeroext) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @Fcar(i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @Fget(i64, i64) #1

declare i64 @Fmemq(i64, i64) #1

declare i64 @Fcdr_safe(i64) #1

declare i64 @Fsubstitute_command_keys(i64) #1

; Function Attrs: nounwind uwtable
define i32 @float_to_string(i8* %buf, double %data) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %data.addr = alloca double, align 8
  %cp = alloca i8*, align 8
  %width = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %u_data = alloca %union.anon.1, align 8
  %u_minus_zero = alloca %union.anon.1, align 8
  %negative = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  store double %data, double* %data.addr, align 8
  %0 = load double, double* %data.addr, align 8
  %1 = load double, double* %data.addr, align 8
  %div = fdiv double %1, 2.000000e+00
  %cmp = fcmp oeq double %0, %div
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load double, double* %data.addr, align 8
  %cmp1 = fcmp ogt double %2, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @float_to_string.infinity_string, i32 0, i32 0)) #3
  store i32 8, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load double, double* %data.addr, align 8
  %5 = load double, double* %data.addr, align 8
  %div2 = fdiv double %5, 2.000000e+00
  %cmp3 = fcmp oeq double %4, %div2
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8

land.lhs.true.4:                                  ; preds = %if.end
  %6 = load double, double* %data.addr, align 8
  %cmp5 = fcmp olt double %6, -1.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %land.lhs.true.4
  %7 = load i8*, i8** %buf.addr, align 8
  %call7 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @float_to_string.minus_infinity_string, i32 0, i32 0)) #3
  store i32 9, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.4, %if.end
  %8 = load double, double* %data.addr, align 8
  %mul = fmul double %8, 0.000000e+00
  %cmp9 = fcmp oge double %mul, 0.000000e+00
  br i1 %cmp9, label %if.end.27, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  store i8 0, i8* %negative, align 1
  %9 = load double, double* %data.addr, align 8
  %d = bitcast %union.anon.1* %u_data to double*
  store double %9, double* %d, align 8
  %d11 = bitcast %union.anon.1* %u_minus_zero to double*
  store double -0.000000e+00, double* %d11, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %10 = load i32, i32* %i, align 4
  %conv = sext i32 %10 to i64
  %cmp12 = icmp ult i64 %conv, 8
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %c = bitcast %union.anon.1* %u_data to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %c, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %12 to i32
  %13 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %13 to i64
  %c16 = bitcast %union.anon.1* %u_minus_zero to [8 x i8]*
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %c16, i32 0, i64 %idxprom15
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %14 to i32
  %and = and i32 %conv14, %conv18
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  %15 = load i8*, i8** %buf.addr, align 8
  store i8 45, i8* %15, align 1
  store i8 1, i8* %negative, align 1
  br label %for.end

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.19, %for.cond
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i8, i8* %negative, align 1
  %tobool21 = trunc i8 %18 to i1
  %conv22 = zext i1 %tobool21 to i32
  %idx.ext = sext i32 %conv22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %call23 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @float_to_string.NaN_string, i32 0, i32 0)) #3
  %19 = load i8, i8* %negative, align 1
  %tobool24 = trunc i8 %19 to i1
  %conv25 = zext i1 %tobool24 to i64
  %add = add i64 %conv25, 9
  %sub = sub i64 %add, 1
  %conv26 = trunc i64 %sub to i32
  store i32 %conv26, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.8
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 98), align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %20, %call28
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 98), align 8
  %call31 = call zeroext i1 @STRINGP(i64 %21)
  br i1 %call31, label %if.else, label %if.then.32

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.27
  br label %lose

lose:                                             ; preds = %if.then.96, %if.then.90, %if.then.76, %if.then.62, %if.then.45, %if.then.39, %if.then.32
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load double, double* %data.addr, align 8
  %call33 = call i32 @dtoastr(i8* %22, i64 348, i32 0, i32 0, double %23)
  store i32 %call33, i32* %len, align 4
  store i32 1, i32* %width, align 4
  br label %if.end.100

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 98), align 8
  %call34 = call i8* @SSDATA(i64 %24)
  store i8* %call34, i8** %cp, align 8
  %25 = load i8*, i8** %cp, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %26 to i32
  %cmp37 = icmp ne i32 %conv36, 37
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  br label %lose

if.end.40:                                        ; preds = %if.else
  %27 = load i8*, i8** %cp, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %28 to i32
  %cmp43 = icmp ne i32 %conv42, 46
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.40
  br label %lose

if.end.46:                                        ; preds = %if.end.40
  %29 = load i8*, i8** %cp, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr47, i8** %cp, align 8
  store i32 -1, i32* %width, align 4
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv48 = sext i8 %31 to i32
  %cmp49 = icmp sle i32 48, %conv48
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.78

land.lhs.true.51:                                 ; preds = %if.end.46
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8, i8* %32, align 1
  %conv52 = sext i8 %33 to i32
  %cmp53 = icmp sle i32 %conv52, 57
  br i1 %cmp53, label %if.then.55, label %if.end.78

if.then.55:                                       ; preds = %land.lhs.true.51
  store i32 0, i32* %width, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.55
  %34 = load i32, i32* %width, align 4
  %mul56 = mul nsw i32 %34, 10
  %35 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %36 = load i8, i8* %35, align 1
  %conv57 = sext i8 %36 to i32
  %sub58 = sub nsw i32 %conv57, 48
  %add59 = add nsw i32 %mul56, %sub58
  store i32 %add59, i32* %width, align 4
  %37 = load i32, i32* %width, align 4
  %cmp60 = icmp slt i32 15, %37
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %do.body
  br label %lose

if.end.63:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.63
  %38 = load i8*, i8** %cp, align 8
  %39 = load i8, i8* %38, align 1
  %conv64 = sext i8 %39 to i32
  %cmp65 = icmp sge i32 %conv64, 48
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %40 = load i8*, i8** %cp, align 8
  %41 = load i8, i8* %40, align 1
  %conv67 = sext i8 %41 to i32
  %cmp68 = icmp sle i32 %conv67, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %42 = phi i1 [ false, %do.cond ], [ %cmp68, %land.rhs ]
  br i1 %42, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %43 = load i32, i32* %width, align 4
  %cmp70 = icmp eq i32 %43, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.77

land.lhs.true.72:                                 ; preds = %do.end
  %44 = load i8*, i8** %cp, align 8
  %45 = load i8, i8* %44, align 1
  %conv73 = sext i8 %45 to i32
  %cmp74 = icmp ne i32 %conv73, 102
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.72
  br label %lose

if.end.77:                                        ; preds = %land.lhs.true.72, %do.end
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true.51, %if.end.46
  %46 = load i8*, i8** %cp, align 8
  %47 = load i8, i8* %46, align 1
  %conv79 = sext i8 %47 to i32
  %cmp80 = icmp ne i32 %conv79, 101
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.91

land.lhs.true.82:                                 ; preds = %if.end.78
  %48 = load i8*, i8** %cp, align 8
  %49 = load i8, i8* %48, align 1
  %conv83 = sext i8 %49 to i32
  %cmp84 = icmp ne i32 %conv83, 102
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.91

land.lhs.true.86:                                 ; preds = %land.lhs.true.82
  %50 = load i8*, i8** %cp, align 8
  %51 = load i8, i8* %50, align 1
  %conv87 = sext i8 %51 to i32
  %cmp88 = icmp ne i32 %conv87, 103
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true.86
  br label %lose

if.end.91:                                        ; preds = %land.lhs.true.86, %land.lhs.true.82, %if.end.78
  %52 = load i8*, i8** %cp, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %53 to i32
  %cmp94 = icmp ne i32 %conv93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.91
  br label %lose

if.end.97:                                        ; preds = %if.end.91
  %54 = load i8*, i8** %buf.addr, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 98), align 8
  %call98 = call i8* @SSDATA(i64 %55)
  %56 = load double, double* %data.addr, align 8
  %call99 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* %call98, double %56) #3
  store i32 %call99, i32* %len, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.97, %lose
  %57 = load i32, i32* %width, align 4
  %cmp101 = icmp ne i32 %57, 0
  br i1 %cmp101, label %if.then.103, label %if.end.146

if.then.103:                                      ; preds = %if.end.100
  %58 = load i8*, i8** %buf.addr, align 8
  store i8* %58, i8** %cp, align 8
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.120, %if.then.103
  %59 = load i8*, i8** %cp, align 8
  %60 = load i8, i8* %59, align 1
  %tobool105 = icmp ne i8 %60, 0
  br i1 %tobool105, label %for.body.106, label %for.end.122

for.body.106:                                     ; preds = %for.cond.104
  %61 = load i8*, i8** %cp, align 8
  %62 = load i8, i8* %61, align 1
  %conv107 = sext i8 %62 to i32
  %cmp108 = icmp slt i32 %conv107, 48
  br i1 %cmp108, label %land.lhs.true.114, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %for.body.106
  %63 = load i8*, i8** %cp, align 8
  %64 = load i8, i8* %63, align 1
  %conv111 = sext i8 %64 to i32
  %cmp112 = icmp sgt i32 %conv111, 57
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.119

land.lhs.true.114:                                ; preds = %lor.lhs.false.110, %for.body.106
  %65 = load i8*, i8** %cp, align 8
  %66 = load i8, i8* %65, align 1
  %conv115 = sext i8 %66 to i32
  %cmp116 = icmp ne i32 %conv115, 45
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %land.lhs.true.114
  br label %for.end.122

if.end.119:                                       ; preds = %land.lhs.true.114, %lor.lhs.false.110
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %67 = load i8*, i8** %cp, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr121, i8** %cp, align 8
  br label %for.cond.104

for.end.122:                                      ; preds = %if.then.118, %for.cond.104
  %68 = load i8*, i8** %cp, align 8
  %69 = load i8, i8* %68, align 1
  %conv123 = sext i8 %69 to i32
  %cmp124 = icmp eq i32 %conv123, 46
  br i1 %cmp124, label %land.lhs.true.126, label %if.else.135

land.lhs.true.126:                                ; preds = %for.end.122
  %70 = load i8*, i8** %cp, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %71 to i32
  %cmp129 = icmp eq i32 %conv128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.135

if.then.131:                                      ; preds = %land.lhs.true.126
  %72 = load i8*, i8** %cp, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 48, i8* %arrayidx132, align 1
  %73 = load i8*, i8** %cp, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 0, i8* %arrayidx133, align 1
  %74 = load i32, i32* %len, align 4
  %inc134 = add nsw i32 %74, 1
  store i32 %inc134, i32* %len, align 4
  br label %if.end.145

if.else.135:                                      ; preds = %land.lhs.true.126, %for.end.122
  %75 = load i8*, i8** %cp, align 8
  %76 = load i8, i8* %75, align 1
  %conv136 = sext i8 %76 to i32
  %cmp137 = icmp eq i32 %conv136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %if.else.135
  %77 = load i8*, i8** %cp, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr140, i8** %cp, align 8
  store i8 46, i8* %77, align 1
  %78 = load i8*, i8** %cp, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr141, i8** %cp, align 8
  store i8 48, i8* %78, align 1
  %79 = load i8*, i8** %cp, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr142, i8** %cp, align 8
  store i8 0, i8* %79, align 1
  %80 = load i32, i32* %len, align 4
  %add143 = add nsw i32 %80, 2
  store i32 %add143, i32* %len, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.139, %if.else.135
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.131
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.100
  %81 = load i32, i32* %len, align 4
  store i32 %81, i32* %retval
  br label %return

return:                                           ; preds = %if.end.146, %for.end, %if.then.6, %if.then
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @dtoastr(i8*, i64, i32, i32, double) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @init_print_once() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sexternal_debugging_output to %struct.Lisp_Subr*))
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: nounwind uwtable
define void @syms_of_print() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 277), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 98))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 98), align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232))
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.5
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 233))
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 233), align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.8
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_print.b_fwd, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 482))
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 482), align 1
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_print.b_fwd.21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483))
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_print.b_fwd.23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481))
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_print.b_fwd.25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 484))
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 484), align 1
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 231))
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 231), align 8
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.19
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 229))
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 229), align 8
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.22
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 230))
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.24
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call26, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 230), align 8
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.25
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234))
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.27
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.28
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_print.o_fwd.35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 228))
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  %call32 = call i64 @builtin_lisp_symbol(i32 324)
  store i64 %call32, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 228), align 8
  call void @staticpro(i64* @Vprin1_to_string_buffer)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprin1 to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprin1_to_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Serror_message_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprinc to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sprint to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sterpri to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Swrite_char to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sredirect_debugging_output to %struct.Lisp_Subr*))
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call33, i64* @print_prune_charset_plist, align 8
  call void @staticpro(i64* @print_prune_charset_plist)
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare void @staticpro(i64*) #1

declare i64 @call1(i64, i64) #1

declare i32 @char_string(i32, i8*) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare %struct.Lisp_Char_Table* @XCHAR_TABLE(i64) #1

declare i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @insert_char(i32) #1

; Function Attrs: nounwind uwtable
define internal void @print_c_string(i8* %string, i64 %printcharfun) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %printcharfun.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  store i64 %call, i64* %len, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %len, align 8
  %3 = load i64, i64* %len, align 8
  %4 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %1, i64 %2, i64 %3, i64 %4)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @strout(i8* %ptr, i64 %size, i64 %size_byte, i64 %printcharfun) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %size_byte.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %incr = alloca i64, align 8
  %len = alloca i32, align 4
  %i = alloca i64, align 8
  %ch = alloca i32, align 4
  %i86 = alloca i32, align 4
  %multibyte_p = alloca i8, align 1
  %len104 = alloca i32, align 4
  %ch110 = alloca i32, align 4
  %i191 = alloca i64, align 8
  %ch197 = alloca i32, align 4
  %len206 = alloca i32, align 4
  %ch207 = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %size_byte, i64* %size_byte.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load i64, i64* %printcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %size_byte.addr, align 8
  %2 = load i64, i64* @print_buffer_size, align 8
  %3 = load i64, i64* @print_buffer_pos_byte, align 8
  %sub = sub nsw i64 %2, %3
  %sub1 = sub nsw i64 %1, %sub
  store i64 %sub1, i64* %incr, align 8
  %4 = load i64, i64* %incr, align 8
  %cmp2 = icmp sgt i64 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i8*, i8** @print_buffer, align 8
  %6 = load i64, i64* %incr, align 8
  %call4 = call i8* @xpalloc(i8* %5, i64* @print_buffer_size, i64 %6, i64 -1, i64 1)
  store i8* %call4, i8** @print_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load i8*, i8** @print_buffer, align 8
  %8 = load i64, i64* @print_buffer_pos_byte, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8*, i8** %ptr.addr, align 8
  %10 = load i64, i64* %size_byte.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %9, i64 %10, i32 1, i1 false)
  %11 = load i64, i64* %size.addr, align 8
  %12 = load i64, i64* @print_buffer_pos, align 8
  %add = add nsw i64 %12, %11
  store i64 %add, i64* @print_buffer_pos, align 8
  %13 = load i64, i64* %size_byte.addr, align 8
  %14 = load i64, i64* @print_buffer_pos_byte, align 8
  %add5 = add nsw i64 %14, %13
  store i64 %add5, i64* @print_buffer_pos_byte, align 8
  br label %if.end.279

if.else:                                          ; preds = %entry
  %15 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else.81

land.lhs.true:                                    ; preds = %if.else
  %16 = load i64, i64* %printcharfun.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp7 = icmp eq i64 %16, %call6
  br i1 %cmp7, label %if.then.8, label %if.else.81

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call9 = call zeroext i1 @CHAR_TABLE_P(i64 %17)
  br i1 %call9, label %land.lhs.true.10, label %if.else.78

land.lhs.true.10:                                 ; preds = %if.then.8
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call11 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %18)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call11, i32 0, i32 3
  %19 = load i64, i64* %purpose, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 346)
  %cmp13 = icmp eq i64 %19, %call12
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.78

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 275), align 8
  %call15 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %20)
  %call16 = call i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %call15)
  %cmp17 = icmp eq i32 %call16, 6
  br i1 %cmp17, label %if.then.18, label %if.else.78

if.then.18:                                       ; preds = %land.lhs.true.14
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %size_byte.addr, align 8
  %cmp19 = icmp slt i64 %21, %22
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %ptr.addr, align 8
  %24 = load i64, i64* %i, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %23, i64 %24
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr20, i64 0
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %and = and i32 %conv, 128
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  store i32 1, i32* %len, align 4
  %26 = load i8*, i8** %ptr.addr, align 8
  %27 = load i64, i64* %i, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %26, i64 %27
  %arrayidx23 = getelementptr inbounds i8, i8* %add.ptr22, i64 0
  %28 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %28 to i32
  br label %cond.end.74

cond.false:                                       ; preds = %for.body
  %29 = load i8*, i8** %ptr.addr, align 8
  %30 = load i64, i64* %i, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %29, i64 %30
  %arrayidx26 = getelementptr inbounds i8, i8* %add.ptr25, i64 0
  %31 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %31 to i32
  %and28 = and i32 %conv27, 32
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.false.45, label %cond.true.30

cond.true.30:                                     ; preds = %cond.false
  store i32 2, i32* %len, align 4
  %32 = load i8*, i8** %ptr.addr, align 8
  %33 = load i64, i64* %i, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %32, i64 %33
  %arrayidx32 = getelementptr inbounds i8, i8* %add.ptr31, i64 0
  %34 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %34 to i32
  %and34 = and i32 %conv33, 31
  %shl = shl i32 %and34, 6
  %35 = load i8*, i8** %ptr.addr, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %35, i64 %36
  %arrayidx36 = getelementptr inbounds i8, i8* %add.ptr35, i64 1
  %37 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %37 to i32
  %and38 = and i32 %conv37, 63
  %or = or i32 %shl, %and38
  %38 = load i8*, i8** %ptr.addr, align 8
  %39 = load i64, i64* %i, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %38, i64 %39
  %arrayidx40 = getelementptr inbounds i8, i8* %add.ptr39, i64 0
  %40 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %40 to i32
  %cmp42 = icmp slt i32 %conv41, 194
  %cond = select i1 %cmp42, i32 4194176, i32 0
  %add44 = add nsw i32 %or, %cond
  br label %cond.end.72

cond.false.45:                                    ; preds = %cond.false
  %41 = load i8*, i8** %ptr.addr, align 8
  %42 = load i64, i64* %i, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %41, i64 %42
  %arrayidx47 = getelementptr inbounds i8, i8* %add.ptr46, i64 0
  %43 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %43 to i32
  %and49 = and i32 %conv48, 16
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %cond.false.68, label %cond.true.51

cond.true.51:                                     ; preds = %cond.false.45
  store i32 3, i32* %len, align 4
  %44 = load i8*, i8** %ptr.addr, align 8
  %45 = load i64, i64* %i, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %44, i64 %45
  %arrayidx53 = getelementptr inbounds i8, i8* %add.ptr52, i64 0
  %46 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %46 to i32
  %and55 = and i32 %conv54, 15
  %shl56 = shl i32 %and55, 12
  %47 = load i8*, i8** %ptr.addr, align 8
  %48 = load i64, i64* %i, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %47, i64 %48
  %arrayidx58 = getelementptr inbounds i8, i8* %add.ptr57, i64 1
  %49 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %49 to i32
  %and60 = and i32 %conv59, 63
  %shl61 = shl i32 %and60, 6
  %or62 = or i32 %shl56, %shl61
  %50 = load i8*, i8** %ptr.addr, align 8
  %51 = load i64, i64* %i, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %50, i64 %51
  %arrayidx64 = getelementptr inbounds i8, i8* %add.ptr63, i64 2
  %52 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %52 to i32
  %and66 = and i32 %conv65, 63
  %or67 = or i32 %or62, %and66
  br label %cond.end

cond.false.68:                                    ; preds = %cond.false.45
  %53 = load i8*, i8** %ptr.addr, align 8
  %54 = load i64, i64* %i, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %53, i64 %54
  %call70 = call i32 @string_char(i8* %add.ptr69, i8** null, i32* %len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.68, %cond.true.51
  %cond71 = phi i32 [ %or67, %cond.true.51 ], [ %call70, %cond.false.68 ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end, %cond.true.30
  %cond73 = phi i32 [ %add44, %cond.true.30 ], [ %cond71, %cond.end ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true
  %cond75 = phi i32 [ %conv24, %cond.true ], [ %cond73, %cond.end.72 ]
  store i32 %cond75, i32* %ch, align 4
  %55 = load i32, i32* %ch, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @printchar_to_stream(i32 %55, %struct._IO_FILE* %56)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.74
  %57 = load i32, i32* %len, align 4
  %conv76 = sext i32 %57 to i64
  %58 = load i64, i64* %i, align 8
  %add77 = add nsw i64 %58, %conv76
  store i64 %add77, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.80

if.else.78:                                       ; preds = %land.lhs.true.14, %land.lhs.true.10, %if.then.8
  %59 = load i8*, i8** %ptr.addr, align 8
  %60 = load i64, i64* %size_byte.addr, align 8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call79 = call i64 @fwrite(i8* %59, i64 1, i64 %60, %struct._IO_FILE* %61)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %for.end
  store i8 1, i8* @noninteractive_need_newline, align 1
  br label %if.end.278

if.else.81:                                       ; preds = %land.lhs.true, %if.else
  %62 = load i64, i64* %printcharfun.addr, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp83 = icmp eq i64 %62, %call82
  br i1 %cmp83, label %if.then.85, label %if.else.190

if.then.85:                                       ; preds = %if.else.81
  %63 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 39
  %64 = load i64, i64* %enable_multibyte_characters_, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %64, %call87
  %lnot = xor i1 %cmp88, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte_p, align 1
  %65 = load i8, i8* %multibyte_p, align 1
  %tobool90 = trunc i8 %65 to i1
  call void @setup_echo_area_for_printing(i1 zeroext %tobool90)
  %66 = load i8*, i8** %ptr.addr, align 8
  %67 = load i64, i64* %size_byte.addr, align 8
  %68 = load i8, i8* %multibyte_p, align 1
  %tobool91 = trunc i8 %68 to i1
  call void @message_dolog(i8* %66, i64 %67, i1 zeroext false, i1 zeroext %tobool91)
  %69 = load i64, i64* %size.addr, align 8
  %70 = load i64, i64* %size_byte.addr, align 8
  %cmp92 = icmp eq i64 %69, %70
  br i1 %cmp92, label %if.then.94, label %if.else.103

if.then.94:                                       ; preds = %if.then.85
  store i32 0, i32* %i86, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.101, %if.then.94
  %71 = load i32, i32* %i86, align 4
  %conv96 = sext i32 %71 to i64
  %72 = load i64, i64* %size.addr, align 8
  %cmp97 = icmp slt i64 %conv96, %72
  br i1 %cmp97, label %for.body.99, label %for.end.102

for.body.99:                                      ; preds = %for.cond.95
  %73 = load i8*, i8** %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr, i8** %ptr.addr, align 8
  %74 = load i8, i8* %73, align 1
  %conv100 = zext i8 %74 to i32
  call void @insert_char(i32 %conv100)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.99
  %75 = load i32, i32* %i86, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i86, align 4
  br label %for.cond.95

for.end.102:                                      ; preds = %for.cond.95
  br label %if.end.189

if.else.103:                                      ; preds = %if.then.85
  store i32 0, i32* %i86, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.186, %if.else.103
  %76 = load i32, i32* %i86, align 4
  %conv106 = sext i32 %76 to i64
  %77 = load i64, i64* %size_byte.addr, align 8
  %cmp107 = icmp slt i64 %conv106, %77
  br i1 %cmp107, label %for.body.109, label %for.end.188

for.body.109:                                     ; preds = %for.cond.105
  %78 = load i8*, i8** %ptr.addr, align 8
  %79 = load i32, i32* %i86, align 4
  %idx.ext = sext i32 %79 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  %arrayidx112 = getelementptr inbounds i8, i8* %add.ptr111, i64 0
  %80 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %80 to i32
  %and114 = and i32 %conv113, 128
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %cond.false.121, label %cond.true.116

cond.true.116:                                    ; preds = %for.body.109
  store i32 1, i32* %len104, align 4
  %81 = load i8*, i8** %ptr.addr, align 8
  %82 = load i32, i32* %i86, align 4
  %idx.ext117 = sext i32 %82 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %81, i64 %idx.ext117
  %arrayidx119 = getelementptr inbounds i8, i8* %add.ptr118, i64 0
  %83 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %83 to i32
  br label %cond.end.184

cond.false.121:                                   ; preds = %for.body.109
  %84 = load i8*, i8** %ptr.addr, align 8
  %85 = load i32, i32* %i86, align 4
  %idx.ext122 = sext i32 %85 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %84, i64 %idx.ext122
  %arrayidx124 = getelementptr inbounds i8, i8* %add.ptr123, i64 0
  %86 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %86 to i32
  %and126 = and i32 %conv125, 32
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %cond.false.149, label %cond.true.128

cond.true.128:                                    ; preds = %cond.false.121
  store i32 2, i32* %len104, align 4
  %87 = load i8*, i8** %ptr.addr, align 8
  %88 = load i32, i32* %i86, align 4
  %idx.ext129 = sext i32 %88 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %87, i64 %idx.ext129
  %arrayidx131 = getelementptr inbounds i8, i8* %add.ptr130, i64 0
  %89 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %89 to i32
  %and133 = and i32 %conv132, 31
  %shl134 = shl i32 %and133, 6
  %90 = load i8*, i8** %ptr.addr, align 8
  %91 = load i32, i32* %i86, align 4
  %idx.ext135 = sext i32 %91 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %90, i64 %idx.ext135
  %arrayidx137 = getelementptr inbounds i8, i8* %add.ptr136, i64 1
  %92 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %92 to i32
  %and139 = and i32 %conv138, 63
  %or140 = or i32 %shl134, %and139
  %93 = load i8*, i8** %ptr.addr, align 8
  %94 = load i32, i32* %i86, align 4
  %idx.ext141 = sext i32 %94 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %93, i64 %idx.ext141
  %arrayidx143 = getelementptr inbounds i8, i8* %add.ptr142, i64 0
  %95 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %95 to i32
  %cmp145 = icmp slt i32 %conv144, 194
  %cond147 = select i1 %cmp145, i32 4194176, i32 0
  %add148 = add nsw i32 %or140, %cond147
  br label %cond.end.182

cond.false.149:                                   ; preds = %cond.false.121
  %96 = load i8*, i8** %ptr.addr, align 8
  %97 = load i32, i32* %i86, align 4
  %idx.ext150 = sext i32 %97 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %96, i64 %idx.ext150
  %arrayidx152 = getelementptr inbounds i8, i8* %add.ptr151, i64 0
  %98 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %98 to i32
  %and154 = and i32 %conv153, 16
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %cond.false.176, label %cond.true.156

cond.true.156:                                    ; preds = %cond.false.149
  store i32 3, i32* %len104, align 4
  %99 = load i8*, i8** %ptr.addr, align 8
  %100 = load i32, i32* %i86, align 4
  %idx.ext157 = sext i32 %100 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %99, i64 %idx.ext157
  %arrayidx159 = getelementptr inbounds i8, i8* %add.ptr158, i64 0
  %101 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %101 to i32
  %and161 = and i32 %conv160, 15
  %shl162 = shl i32 %and161, 12
  %102 = load i8*, i8** %ptr.addr, align 8
  %103 = load i32, i32* %i86, align 4
  %idx.ext163 = sext i32 %103 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %102, i64 %idx.ext163
  %arrayidx165 = getelementptr inbounds i8, i8* %add.ptr164, i64 1
  %104 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %104 to i32
  %and167 = and i32 %conv166, 63
  %shl168 = shl i32 %and167, 6
  %or169 = or i32 %shl162, %shl168
  %105 = load i8*, i8** %ptr.addr, align 8
  %106 = load i32, i32* %i86, align 4
  %idx.ext170 = sext i32 %106 to i64
  %add.ptr171 = getelementptr inbounds i8, i8* %105, i64 %idx.ext170
  %arrayidx172 = getelementptr inbounds i8, i8* %add.ptr171, i64 2
  %107 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %107 to i32
  %and174 = and i32 %conv173, 63
  %or175 = or i32 %or169, %and174
  br label %cond.end.180

cond.false.176:                                   ; preds = %cond.false.149
  %108 = load i8*, i8** %ptr.addr, align 8
  %109 = load i32, i32* %i86, align 4
  %idx.ext177 = sext i32 %109 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %108, i64 %idx.ext177
  %call179 = call i32 @string_char(i8* %add.ptr178, i8** null, i32* %len104)
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.176, %cond.true.156
  %cond181 = phi i32 [ %or175, %cond.true.156 ], [ %call179, %cond.false.176 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %cond.true.128
  %cond183 = phi i32 [ %add148, %cond.true.128 ], [ %cond181, %cond.end.180 ]
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.end.182, %cond.true.116
  %cond185 = phi i32 [ %conv120, %cond.true.116 ], [ %cond183, %cond.end.182 ]
  store i32 %cond185, i32* %ch110, align 4
  %110 = load i32, i32* %ch110, align 4
  call void @insert_char(i32 %110)
  br label %for.inc.186

for.inc.186:                                      ; preds = %cond.end.184
  %111 = load i32, i32* %len104, align 4
  %112 = load i32, i32* %i86, align 4
  %add187 = add nsw i32 %112, %111
  store i32 %add187, i32* %i86, align 4
  br label %for.cond.105

for.end.188:                                      ; preds = %for.cond.105
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %for.end.102
  br label %if.end.277

if.else.190:                                      ; preds = %if.else.81
  store i64 0, i64* %i191, align 8
  %113 = load i64, i64* %size.addr, align 8
  %114 = load i64, i64* %size_byte.addr, align 8
  %cmp192 = icmp eq i64 %113, %114
  br i1 %cmp192, label %if.then.194, label %if.else.201

if.then.194:                                      ; preds = %if.else.190
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.194
  %115 = load i64, i64* %i191, align 8
  %116 = load i64, i64* %size_byte.addr, align 8
  %cmp195 = icmp slt i64 %115, %116
  br i1 %cmp195, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %117 = load i64, i64* %i191, align 8
  %inc198 = add nsw i64 %117, 1
  store i64 %inc198, i64* %i191, align 8
  %118 = load i8*, i8** %ptr.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %118, i64 %117
  %119 = load i8, i8* %arrayidx199, align 1
  %conv200 = sext i8 %119 to i32
  store i32 %conv200, i32* %ch197, align 4
  %120 = load i32, i32* %ch197, align 4
  %121 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %120, i64 %121)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.276

if.else.201:                                      ; preds = %if.else.190
  br label %while.cond.202

while.cond.202:                                   ; preds = %cond.end.271, %if.else.201
  %122 = load i64, i64* %i191, align 8
  %123 = load i64, i64* %size_byte.addr, align 8
  %cmp203 = icmp slt i64 %122, %123
  br i1 %cmp203, label %while.body.205, label %while.end.275

while.body.205:                                   ; preds = %while.cond.202
  %124 = load i8*, i8** %ptr.addr, align 8
  %125 = load i64, i64* %i191, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %124, i64 %125
  %arrayidx209 = getelementptr inbounds i8, i8* %add.ptr208, i64 0
  %126 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %126 to i32
  %and211 = and i32 %conv210, 128
  %tobool212 = icmp ne i32 %and211, 0
  br i1 %tobool212, label %cond.false.217, label %cond.true.213

cond.true.213:                                    ; preds = %while.body.205
  store i32 1, i32* %len206, align 4
  %127 = load i8*, i8** %ptr.addr, align 8
  %128 = load i64, i64* %i191, align 8
  %add.ptr214 = getelementptr inbounds i8, i8* %127, i64 %128
  %arrayidx215 = getelementptr inbounds i8, i8* %add.ptr214, i64 0
  %129 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %129 to i32
  br label %cond.end.271

cond.false.217:                                   ; preds = %while.body.205
  %130 = load i8*, i8** %ptr.addr, align 8
  %131 = load i64, i64* %i191, align 8
  %add.ptr218 = getelementptr inbounds i8, i8* %130, i64 %131
  %arrayidx219 = getelementptr inbounds i8, i8* %add.ptr218, i64 0
  %132 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %132 to i32
  %and221 = and i32 %conv220, 32
  %tobool222 = icmp ne i32 %and221, 0
  br i1 %tobool222, label %cond.false.241, label %cond.true.223

cond.true.223:                                    ; preds = %cond.false.217
  store i32 2, i32* %len206, align 4
  %133 = load i8*, i8** %ptr.addr, align 8
  %134 = load i64, i64* %i191, align 8
  %add.ptr224 = getelementptr inbounds i8, i8* %133, i64 %134
  %arrayidx225 = getelementptr inbounds i8, i8* %add.ptr224, i64 0
  %135 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %135 to i32
  %and227 = and i32 %conv226, 31
  %shl228 = shl i32 %and227, 6
  %136 = load i8*, i8** %ptr.addr, align 8
  %137 = load i64, i64* %i191, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %136, i64 %137
  %arrayidx230 = getelementptr inbounds i8, i8* %add.ptr229, i64 1
  %138 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %138 to i32
  %and232 = and i32 %conv231, 63
  %or233 = or i32 %shl228, %and232
  %139 = load i8*, i8** %ptr.addr, align 8
  %140 = load i64, i64* %i191, align 8
  %add.ptr234 = getelementptr inbounds i8, i8* %139, i64 %140
  %arrayidx235 = getelementptr inbounds i8, i8* %add.ptr234, i64 0
  %141 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %141 to i32
  %cmp237 = icmp slt i32 %conv236, 194
  %cond239 = select i1 %cmp237, i32 4194176, i32 0
  %add240 = add nsw i32 %or233, %cond239
  br label %cond.end.269

cond.false.241:                                   ; preds = %cond.false.217
  %142 = load i8*, i8** %ptr.addr, align 8
  %143 = load i64, i64* %i191, align 8
  %add.ptr242 = getelementptr inbounds i8, i8* %142, i64 %143
  %arrayidx243 = getelementptr inbounds i8, i8* %add.ptr242, i64 0
  %144 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %144 to i32
  %and245 = and i32 %conv244, 16
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %cond.false.264, label %cond.true.247

cond.true.247:                                    ; preds = %cond.false.241
  store i32 3, i32* %len206, align 4
  %145 = load i8*, i8** %ptr.addr, align 8
  %146 = load i64, i64* %i191, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %145, i64 %146
  %arrayidx249 = getelementptr inbounds i8, i8* %add.ptr248, i64 0
  %147 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %147 to i32
  %and251 = and i32 %conv250, 15
  %shl252 = shl i32 %and251, 12
  %148 = load i8*, i8** %ptr.addr, align 8
  %149 = load i64, i64* %i191, align 8
  %add.ptr253 = getelementptr inbounds i8, i8* %148, i64 %149
  %arrayidx254 = getelementptr inbounds i8, i8* %add.ptr253, i64 1
  %150 = load i8, i8* %arrayidx254, align 1
  %conv255 = zext i8 %150 to i32
  %and256 = and i32 %conv255, 63
  %shl257 = shl i32 %and256, 6
  %or258 = or i32 %shl252, %shl257
  %151 = load i8*, i8** %ptr.addr, align 8
  %152 = load i64, i64* %i191, align 8
  %add.ptr259 = getelementptr inbounds i8, i8* %151, i64 %152
  %arrayidx260 = getelementptr inbounds i8, i8* %add.ptr259, i64 2
  %153 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %153 to i32
  %and262 = and i32 %conv261, 63
  %or263 = or i32 %or258, %and262
  br label %cond.end.267

cond.false.264:                                   ; preds = %cond.false.241
  %154 = load i8*, i8** %ptr.addr, align 8
  %155 = load i64, i64* %i191, align 8
  %add.ptr265 = getelementptr inbounds i8, i8* %154, i64 %155
  %call266 = call i32 @string_char(i8* %add.ptr265, i8** null, i32* %len206)
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.264, %cond.true.247
  %cond268 = phi i32 [ %or263, %cond.true.247 ], [ %call266, %cond.false.264 ]
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.end.267, %cond.true.223
  %cond270 = phi i32 [ %add240, %cond.true.223 ], [ %cond268, %cond.end.267 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end.269, %cond.true.213
  %cond272 = phi i32 [ %conv216, %cond.true.213 ], [ %cond270, %cond.end.269 ]
  store i32 %cond272, i32* %ch207, align 4
  %156 = load i32, i32* %ch207, align 4
  %157 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %156, i64 %157)
  %158 = load i32, i32* %len206, align 4
  %conv273 = sext i32 %158 to i64
  %159 = load i64, i64* %i191, align 8
  %add274 = add nsw i64 %159, %conv273
  store i64 %add274, i64* %i191, align 8
  br label %while.cond.202

while.end.275:                                    ; preds = %while.cond.202
  br label %if.end.276

if.end.276:                                       ; preds = %while.end.275, %while.end
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.end.189
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.end.80
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.end
  ret void
}

declare i32 @string_char(i8*, i8**, i32*) #1

declare zeroext i1 @SUB_CHAR_TABLE_P(i64) #1

declare %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64) #1

declare i64 @disp_char_vector(%struct.Lisp_Char_Table*, i32) #1

declare zeroext i1 @VECTORP(i64) #1

declare i64 @ASIZE(i64) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i64 @make_multibyte_string(i8*, i64, i64) #1

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

declare zeroext i1 @NATNUMP(i64) #1

declare i64 @AREF(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @print_preprocess(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  %loop_count = alloca i32, align 4
  %halftail = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %num = alloca i64, align 8
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  store i64 %obj, i64* %obj.addr, align 8
  store i32 0, i32* %loop_count, align 4
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 229), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @print_depth, align 8
  %cmp1 = icmp sge i64 %1, 200
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, i64* @print_depth, align 8
  %cmp3 = icmp slt i64 %conv, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %obj.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [200 x i64], [200 x i64]* @being_printed, i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %cmp5 = icmp eq i64 %4, %6
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %obj.addr, align 8
  %9 = load i64, i64* @print_depth, align 8
  %arrayidx9 = getelementptr inbounds [200 x i64], [200 x i64]* @being_printed, i32 0, i64 %9
  store i64 %8, i64* %arrayidx9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %10 = load i64, i64* @print_depth, align 8
  %inc11 = add nsw i64 %10, 1
  store i64 %inc11, i64* @print_depth, align 8
  %11 = load i64, i64* %obj.addr, align 8
  store i64 %11, i64* %halftail, align 8
  br label %loop

loop:                                             ; preds = %if.end.115, %if.end.10
  %12 = load i64, i64* %obj.addr, align 8
  %call12 = call zeroext i1 @STRINGP(i64 %12)
  br i1 %call12, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %loop
  %13 = load i64, i64* %obj.addr, align 8
  %and = and i64 %13, 7
  %conv14 = trunc i64 %and to i32
  %cmp15 = icmp eq i32 %conv14, 3
  br i1 %cmp15, label %if.then.50, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %14 = load i64, i64* %obj.addr, align 8
  %and18 = and i64 %14, 7
  %conv19 = trunc i64 %and18 to i32
  %cmp20 = icmp eq i32 %conv19, 5
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false.39

land.lhs.true:                                    ; preds = %lor.lhs.false.17
  %15 = load i64, i64* %obj.addr, align 8
  %call22 = call zeroext i1 @VECTORP(i64 %15)
  br i1 %call22, label %if.then.50, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true
  %16 = load i64, i64* %obj.addr, align 8
  %call25 = call zeroext i1 @COMPILEDP(i64 %16)
  br i1 %call25, label %if.then.50, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %17 = load i64, i64* %obj.addr, align 8
  %call28 = call zeroext i1 @CHAR_TABLE_P(i64 %17)
  br i1 %call28, label %if.then.50, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.27
  %18 = load i64, i64* %obj.addr, align 8
  %call31 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %18)
  br i1 %call31, label %if.then.50, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.30
  %19 = load i64, i64* %obj.addr, align 8
  %call34 = call zeroext i1 @HASH_TABLE_P(i64 %19)
  br i1 %call34, label %if.then.50, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.33
  %20 = load i64, i64* %obj.addr, align 8
  %call37 = call zeroext i1 @FONTP(i64 %20)
  br i1 %call37, label %if.then.50, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36, %lor.lhs.false.17
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 231), align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %21, %call40
  br i1 %cmp41, label %if.end.139, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %lor.lhs.false.39
  %22 = load i64, i64* %obj.addr, align 8
  %and44 = and i64 %22, 7
  %conv45 = trunc i64 %and44 to i32
  %cmp46 = icmp eq i32 %conv45, 0
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.139

land.lhs.true.48:                                 ; preds = %land.lhs.true.43
  %23 = load i64, i64* %obj.addr, align 8
  %call49 = call zeroext i1 @SYMBOL_INTERNED_P(i64 %23)
  br i1 %call49, label %if.end.139, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48, %lor.lhs.false.36, %lor.lhs.false.33, %lor.lhs.false.30, %lor.lhs.false.27, %lor.lhs.false.24, %land.lhs.true, %lor.lhs.false, %loop
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call51 = call zeroext i1 @HASH_TABLE_P(i64 %24)
  br i1 %call51, label %if.end.56, label %if.then.52

if.then.52:                                       ; preds = %if.then.50
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call53 = call i64 @builtin_lisp_symbol(i32 129)
  store i64 %call53, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %call54 = call i64 @builtin_lisp_symbol(i32 369)
  store i64 %call54, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call55 = call i64 @Fmake_hash_table(i64 2, i64* %arraydecay)
  store i64 %call55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.then.50
  %25 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 229), align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp58 = icmp eq i64 %25, %call57
  br i1 %cmp58, label %lor.lhs.false.60, label %if.then.65

lor.lhs.false.60:                                 ; preds = %if.end.56
  %26 = load i64, i64* %obj.addr, align 8
  %and61 = and i64 %26, 7
  %conv62 = trunc i64 %and61 to i32
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.95

if.then.65:                                       ; preds = %lor.lhs.false.60, %if.end.56
  %27 = load i64, i64* %obj.addr, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %call67 = call i64 @Fgethash(i64 %27, i64 %28, i64 %call66)
  store i64 %call67, i64* %num, align 8
  %29 = load i64, i64* %num, align 8
  %call68 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp69 = icmp eq i64 %29, %call68
  br i1 %cmp69, label %lor.lhs.false.71, label %if.then.82

lor.lhs.false.71:                                 ; preds = %if.then.65
  %30 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 230), align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp73 = icmp eq i64 %30, %call72
  br i1 %cmp73, label %if.else, label %land.lhs.true.75

land.lhs.true.75:                                 ; preds = %lor.lhs.false.71
  %31 = load i64, i64* %obj.addr, align 8
  %and76 = and i64 %31, 7
  %conv77 = trunc i64 %and76 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.else

land.lhs.true.80:                                 ; preds = %land.lhs.true.75
  %32 = load i64, i64* %obj.addr, align 8
  %call81 = call zeroext i1 @SYMBOL_INTERNED_P(i64 %32)
  br i1 %call81, label %if.else, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.80, %if.then.65
  %33 = load i64, i64* %num, align 8
  %and83 = and i64 %33, 7
  %conv84 = trunc i64 %and83 to i32
  %and85 = and i32 %conv84, -5
  %cmp86 = icmp eq i32 %and85, 2
  br i1 %cmp86, label %if.end.91, label %if.then.88

if.then.88:                                       ; preds = %if.then.82
  %34 = load i64, i64* @print_number_index, align 8
  %inc89 = add nsw i64 %34, 1
  store i64 %inc89, i64* @print_number_index, align 8
  %35 = load i64, i64* %obj.addr, align 8
  %36 = load i64, i64* @print_number_index, align 8
  %sub = sub nsw i64 0, %36
  %shl = shl i64 %sub, 2
  %add = add i64 %shl, 2
  %37 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call90 = call i64 @Fputhash(i64 %35, i64 %add, i64 %37)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.then.82
  %38 = load i64, i64* @print_depth, align 8
  %dec = add nsw i64 %38, -1
  store i64 %dec, i64* @print_depth, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true.80, %land.lhs.true.75, %lor.lhs.false.71
  %39 = load i64, i64* %obj.addr, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 901)
  %40 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call93 = call i64 @Fputhash(i64 %39, i64 %call92, i64 %40)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %lor.lhs.false.60
  %41 = load i64, i64* %obj.addr, align 8
  %and96 = and i64 %41, 7
  %conv97 = trunc i64 %and96 to i32
  switch i32 %conv97, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.100
    i32 5, label %sw.bb.116
  ]

sw.bb:                                            ; preds = %if.end.95
  %42 = load i64, i64* %obj.addr, align 8
  %call98 = call %struct.interval* @string_intervals(i64 %42)
  %call99 = call i64 @builtin_lisp_symbol(i32 0)
  call void @traverse_intervals_noorder(%struct.interval* %call98, void (%struct.interval*, i64)* @print_preprocess_string, i64 %call99)
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.95
  %43 = load i32, i32* %loop_count, align 4
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %land.lhs.true.101, label %if.end.105

land.lhs.true.101:                                ; preds = %sw.bb.100
  %44 = load i64, i64* %obj.addr, align 8
  %45 = load i64, i64* %halftail, align 8
  %cmp102 = icmp eq i64 %44, %45
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true.101
  br label %sw.epilog

if.end.105:                                       ; preds = %land.lhs.true.101, %sw.bb.100
  %46 = load i64, i64* %obj.addr, align 8
  %sub106 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub106 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 0
  %49 = load i64, i64* %car, align 8
  call void @print_preprocess(i64 %49)
  %50 = load i64, i64* %obj.addr, align 8
  %sub107 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub107 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %53 = load i64, i64* %cdr, align 8
  store i64 %53, i64* %obj.addr, align 8
  %54 = load i32, i32* %loop_count, align 4
  %inc108 = add nsw i32 %54, 1
  store i32 %inc108, i32* %loop_count, align 4
  %55 = load i32, i32* %loop_count, align 4
  %and109 = and i32 %55, 1
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.end.115, label %if.then.111

if.then.111:                                      ; preds = %if.end.105
  %56 = load i64, i64* %halftail, align 8
  %sub112 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub112 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %u113 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 1
  %cdr114 = bitcast %union.anon.0* %u113 to i64*
  %59 = load i64, i64* %cdr114, align 8
  store i64 %59, i64* %halftail, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %if.end.105
  br label %loop

sw.bb.116:                                        ; preds = %if.end.95
  %60 = load i64, i64* %obj.addr, align 8
  %call117 = call i64 @ASIZE(i64 %60)
  store i64 %call117, i64* %size, align 8
  %61 = load i64, i64* %size, align 8
  %and118 = and i64 %61, 4611686018427387904
  %tobool119 = icmp ne i64 %and118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %sw.bb.116
  %62 = load i64, i64* %size, align 8
  %and121 = and i64 %62, 4095
  store i64 %and121, i64* %size, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %sw.bb.116
  %63 = load i64, i64* %obj.addr, align 8
  %call123 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %63)
  %cond = select i1 %call123, i32 1, i32 0
  store i32 %cond, i32* %i, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.132, %if.end.122
  %64 = load i32, i32* %i, align 4
  %conv126 = sext i32 %64 to i64
  %65 = load i64, i64* %size, align 8
  %cmp127 = icmp slt i64 %conv126, %65
  br i1 %cmp127, label %for.body.129, label %for.end.134

for.body.129:                                     ; preds = %for.cond.125
  %66 = load i64, i64* %obj.addr, align 8
  %67 = load i32, i32* %i, align 4
  %conv130 = sext i32 %67 to i64
  %call131 = call i64 @AREF(i64 %66, i64 %conv130)
  call void @print_preprocess(i64 %call131)
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.129
  %68 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %68, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.125

for.end.134:                                      ; preds = %for.cond.125
  %69 = load i64, i64* %obj.addr, align 8
  %call135 = call zeroext i1 @HASH_TABLE_P(i64 %69)
  br i1 %call135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %for.end.134
  %70 = load i64, i64* %obj.addr, align 8
  %call137 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %70)
  store %struct.Lisp_Hash_Table* %call137, %struct.Lisp_Hash_Table** %h, align 8
  %71 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %71, i32 0, i32 9
  %72 = load i64, i64* %key_and_value, align 8
  call void @print_preprocess(i64 %72)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %for.end.134
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.95
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.138, %if.then.104, %sw.bb
  br label %if.end.139

if.end.139:                                       ; preds = %sw.epilog, %land.lhs.true.48, %land.lhs.true.43, %lor.lhs.false.39
  %73 = load i64, i64* @print_depth, align 8
  %dec140 = add nsw i64 %73, -1
  store i64 %dec140, i64* @print_depth, align 8
  br label %return

return:                                           ; preds = %if.end.139, %if.end.91, %if.then.7
  ret void
}

declare zeroext i1 @HASH_TABLE_P(i64) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table*) #1

declare i64 @HASH_HASH(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @Fremhash(i64, i64) #1

declare i64 @HASH_KEY(%struct.Lisp_Hash_Table*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @print_object(i64 %obj, i64 %printcharfun, i1 zeroext %escapeflag) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %escapeflag.addr = alloca i8, align 1
  %buf = alloca [54 x i8], align 16
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %num = alloca i64, align 8
  %n = alloca i64, align 8
  %len74 = alloca i32, align 4
  %len83 = alloca i32, align 4
  %len96 = alloca i32, align 4
  %pigbuf = alloca [350 x i8], align 16
  %len104 = alloca i32, align 4
  %i115 = alloca i64, align 8
  %i_byte = alloca i64, align 8
  %size_byte = alloca i64, align 8
  %need_nonhex = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %c = alloca i32, align 4
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  %outbuf = alloca [5 x i8], align 1
  %len249 = alloca i32, align 4
  %outbuf273 = alloca [14 x i8], align 1
  %len274 = alloca i32, align 4
  %confusing = alloca i8, align 1
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %c324 = alloca i32, align 4
  %i325 = alloca i64, align 8
  %i_byte326 = alloca i64, align 8
  %size_byte327 = alloca i64, align 8
  %name = alloca i64, align 8
  %chp407 = alloca i8*, align 8
  %chlen410 = alloca i32, align 4
  %halftail = alloca i64, align 8
  %print_length = alloca i64, align 8
  %i709 = alloca i64, align 8
  %len726 = alloca i32, align 4
  %num737 = alloca i64, align 8
  %i797 = alloca i64, align 8
  %c798 = alloca i8, align 1
  %size = alloca i64, align 8
  %size_in_chars = alloca i64, align 8
  %real_size_in_chars = alloca i64, align 8
  %len801 = alloca i32, align 4
  %len898 = alloca i32, align 4
  %t = alloca %struct.terminal*, align 8
  %len916 = alloca i32, align 4
  %h = alloca %struct.Lisp_Hash_Table*, align 8
  %i931 = alloca i64, align 8
  %real_size = alloca i64, align 8
  %size932 = alloca i64, align 8
  %len933 = alloca i32, align 4
  %len1029 = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %frame_name = alloca i64, align 8
  %i1057 = alloca i32, align 4
  %size1089 = alloca i64, align 8
  %i1118 = alloca i32, align 4
  %idx = alloca i32, align 4
  %tem = alloca i64, align 8
  %real_size1122 = alloca i64, align 8
  %len1185 = alloca i32, align 4
  %len1203 = alloca i32, align 4
  %i1230 = alloca i32, align 4
  %v = alloca %struct.Lisp_Save_Value*, align 8
  %amount = alloca i64, align 8
  %limit = alloca i32, align 4
  %area = alloca i64*, align 8
  %maybe = alloca i64, align 8
  %valid = alloca i32, align 4
  %index = alloca i32, align 4
  %len1326 = alloca i32, align 4
  store i64 %obj, i64* %obj.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %frombool = zext i1 %escapeflag to i8
  store i8 %frombool, i8* %escapeflag.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.4

if.else:                                          ; preds = %land.lhs.true, %do.body
  %2 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 229), align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %3, %call5
  br i1 %cmp6, label %if.then.7, label %if.else.22

if.then.7:                                        ; preds = %do.end
  %4 = load i64, i64* @print_depth, align 8
  %cmp8 = icmp sge i64 %4, 200
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0)) #6
  unreachable

if.end.10:                                        ; preds = %if.then.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, i64* @print_depth, align 8
  %cmp11 = icmp slt i64 %conv, %6
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %obj.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [200 x i64], [200 x i64]* @being_printed, i32 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  %cmp13 = icmp eq i64 %7, %9
  br i1 %cmp13, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %10 = load i32, i32* %i, align 4
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 %10) #3
  store i32 %call16, i32* %len, align 4
  %arraydecay17 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %11 = load i32, i32* %len, align 4
  %conv18 = sext i32 %11 to i64
  %12 = load i32, i32* %len, align 4
  %conv19 = sext i32 %12 to i64
  %13 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay17, i64 %conv18, i64 %conv19, i64 %13)
  br label %return

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %obj.addr, align 8
  %16 = load i64, i64* @print_depth, align 8
  %arrayidx21 = getelementptr inbounds [200 x i64], [200 x i64]* @being_printed, i32 0, i64 %16
  store i64 %15, i64* %arrayidx21, align 8
  br label %if.end.92

if.else.22:                                       ; preds = %do.end
  %17 = load i64, i64* %obj.addr, align 8
  %call23 = call zeroext i1 @STRINGP(i64 %17)
  br i1 %call23, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.22
  %18 = load i64, i64* %obj.addr, align 8
  %and = and i64 %18, 7
  %conv25 = trunc i64 %and to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %if.then.62, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %19 = load i64, i64* %obj.addr, align 8
  %and29 = and i64 %19, 7
  %conv30 = trunc i64 %and29 to i32
  %cmp31 = icmp eq i32 %conv30, 5
  br i1 %cmp31, label %land.lhs.true.33, label %lor.lhs.false.51

land.lhs.true.33:                                 ; preds = %lor.lhs.false.28
  %20 = load i64, i64* %obj.addr, align 8
  %call34 = call zeroext i1 @VECTORP(i64 %20)
  br i1 %call34, label %if.then.62, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.33
  %21 = load i64, i64* %obj.addr, align 8
  %call37 = call zeroext i1 @COMPILEDP(i64 %21)
  br i1 %call37, label %if.then.62, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %22 = load i64, i64* %obj.addr, align 8
  %call40 = call zeroext i1 @CHAR_TABLE_P(i64 %22)
  br i1 %call40, label %if.then.62, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.39
  %23 = load i64, i64* %obj.addr, align 8
  %call43 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %23)
  br i1 %call43, label %if.then.62, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.42
  %24 = load i64, i64* %obj.addr, align 8
  %call46 = call zeroext i1 @HASH_TABLE_P(i64 %24)
  br i1 %call46, label %if.then.62, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.45
  %25 = load i64, i64* %obj.addr, align 8
  %call49 = call zeroext i1 @FONTP(i64 %25)
  br i1 %call49, label %if.then.62, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.48, %lor.lhs.false.28
  %26 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 231), align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp53 = icmp eq i64 %26, %call52
  br i1 %cmp53, label %if.end.91, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %lor.lhs.false.51
  %27 = load i64, i64* %obj.addr, align 8
  %and56 = and i64 %27, 7
  %conv57 = trunc i64 %and56 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.91

land.lhs.true.60:                                 ; preds = %land.lhs.true.55
  %28 = load i64, i64* %obj.addr, align 8
  %call61 = call zeroext i1 @SYMBOL_INTERNED_P(i64 %28)
  br i1 %call61, label %if.end.91, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.60, %lor.lhs.false.48, %lor.lhs.false.45, %lor.lhs.false.42, %lor.lhs.false.39, %lor.lhs.false.36, %land.lhs.true.33, %lor.lhs.false, %if.else.22
  %29 = load i64, i64* %obj.addr, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %call64 = call i64 @Fgethash(i64 %29, i64 %30, i64 %call63)
  store i64 %call64, i64* %num, align 8
  %31 = load i64, i64* %num, align 8
  %and65 = and i64 %31, 7
  %conv66 = trunc i64 %and65 to i32
  %and67 = and i32 %conv66, -5
  %cmp68 = icmp eq i32 %and67, 2
  br i1 %cmp68, label %if.then.70, label %if.end.90

if.then.70:                                       ; preds = %if.then.62
  %32 = load i64, i64* %num, align 8
  %shr = ashr i64 %32, 2
  store i64 %shr, i64* %n, align 8
  %33 = load i64, i64* %n, align 8
  %cmp71 = icmp slt i64 %33, 0
  br i1 %cmp71, label %if.then.73, label %if.else.82

if.then.73:                                       ; preds = %if.then.70
  %arraydecay75 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %34 = load i64, i64* %n, align 8
  %sub = sub nsw i64 0, %34
  %call76 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i64 %sub) #3
  store i32 %call76, i32* %len74, align 4
  %arraydecay77 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %35 = load i32, i32* %len74, align 4
  %conv78 = sext i32 %35 to i64
  %36 = load i32, i32* %len74, align 4
  %conv79 = sext i32 %36 to i64
  %37 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay77, i64 %conv78, i64 %conv79, i64 %37)
  %38 = load i64, i64* %obj.addr, align 8
  %39 = load i64, i64* %n, align 8
  %sub80 = sub nsw i64 0, %39
  %shl = shl i64 %sub80, 2
  %add = add i64 %shl, 2
  %40 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call81 = call i64 @Fputhash(i64 %38, i64 %add, i64 %40)
  br label %if.end.89

if.else.82:                                       ; preds = %if.then.70
  %arraydecay84 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %41 = load i64, i64* %n, align 8
  %call85 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i64 %41) #3
  store i32 %call85, i32* %len83, align 4
  %arraydecay86 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %42 = load i32, i32* %len83, align 4
  %conv87 = sext i32 %42 to i64
  %43 = load i32, i32* %len83, align 4
  %conv88 = sext i32 %43 to i64
  %44 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay86, i64 %conv87, i64 %conv88, i64 %44)
  br label %return

if.end.89:                                        ; preds = %if.then.73
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.62
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true.60, %land.lhs.true.55, %lor.lhs.false.51
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.end
  %45 = load i64, i64* @print_depth, align 8
  %inc93 = add nsw i64 %45, 1
  store i64 %inc93, i64* @print_depth, align 8
  %46 = load i64, i64* %obj.addr, align 8
  %and94 = and i64 %46, 7
  %conv95 = trunc i64 %and94 to i32
  switch i32 %conv95, label %sw.default.1325 [
    i32 2, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb.103
    i32 4, label %sw.bb.111
    i32 0, label %sw.bb.319
    i32 3, label %sw.bb.538
    i32 5, label %sw.bb.783
    i32 1, label %sw.bb.1172
  ]

sw.bb:                                            ; preds = %if.end.92, %if.end.92
  %arraydecay97 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %47 = load i64, i64* %obj.addr, align 8
  %shr98 = ashr i64 %47, 2
  %call99 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i64 %shr98) #3
  store i32 %call99, i32* %len96, align 4
  %arraydecay100 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %48 = load i32, i32* %len96, align 4
  %conv101 = sext i32 %48 to i64
  %49 = load i32, i32* %len96, align 4
  %conv102 = sext i32 %49 to i64
  %50 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay100, i64 %conv101, i64 %conv102, i64 %50)
  br label %sw.epilog.1354

sw.bb.103:                                        ; preds = %if.end.92
  %arraydecay105 = getelementptr inbounds [350 x i8], [350 x i8]* %pigbuf, i32 0, i32 0
  %51 = load i64, i64* %obj.addr, align 8
  %call106 = call double @XFLOAT_DATA(i64 %51)
  %call107 = call i32 @float_to_string(i8* %arraydecay105, double %call106)
  store i32 %call107, i32* %len104, align 4
  %arraydecay108 = getelementptr inbounds [350 x i8], [350 x i8]* %pigbuf, i32 0, i32 0
  %52 = load i32, i32* %len104, align 4
  %conv109 = sext i32 %52 to i64
  %53 = load i32, i32* %len104, align 4
  %conv110 = sext i32 %53 to i64
  %54 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay108, i64 %conv109, i64 %conv110, i64 %54)
  br label %sw.epilog.1354

sw.bb.111:                                        ; preds = %if.end.92
  %55 = load i8, i8* %escapeflag.addr, align 1
  %tobool112 = trunc i8 %55 to i1
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %sw.bb.111
  %56 = load i64, i64* %obj.addr, align 8
  %57 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %56, i64 %57)
  br label %if.end.318

if.else.114:                                      ; preds = %sw.bb.111
  store i8 0, i8* %need_nonhex, align 1
  %58 = load i64, i64* %obj.addr, align 8
  %call116 = call zeroext i1 @STRING_MULTIBYTE(i64 %58)
  %frombool117 = zext i1 %call116 to i8
  store i8 %frombool117, i8* %multibyte, align 1
  %59 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 228), align 8
  %call118 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp119 = icmp eq i64 %59, %call118
  br i1 %cmp119, label %if.end.123, label %if.then.121

if.then.121:                                      ; preds = %if.else.114
  %60 = load i64, i64* %obj.addr, align 8
  %call122 = call i64 @print_prune_string_charset(i64 %60)
  store i64 %call122, i64* %obj.addr, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.else.114
  %61 = load i64, i64* %obj.addr, align 8
  %call124 = call %struct.interval* @string_intervals(i64 %61)
  %tobool125 = icmp ne %struct.interval* %call124, null
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.123
  %62 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i64 %62)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.123
  %63 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 34, i64 %63)
  %64 = load i64, i64* %obj.addr, align 8
  %call128 = call i64 @SBYTES(i64 %64)
  store i64 %call128, i64* %size_byte, align 8
  store i64 0, i64* %i115, align 8
  store i64 0, i64* %i_byte, align 8
  br label %for.cond.129

for.cond.129:                                     ; preds = %if.end.311, %if.end.127
  %65 = load i64, i64* %i_byte, align 8
  %66 = load i64, i64* %size_byte, align 8
  %cmp130 = icmp slt i64 %65, %66
  br i1 %cmp130, label %for.body.132, label %for.end.312

for.body.132:                                     ; preds = %for.cond.129
  br label %do.body.133

do.body.133:                                      ; preds = %for.body.132
  %67 = load i64, i64* %i115, align 8
  %inc134 = add nsw i64 %67, 1
  store i64 %inc134, i64* %i115, align 8
  %68 = load i64, i64* %obj.addr, align 8
  %call135 = call zeroext i1 @STRING_MULTIBYTE(i64 %68)
  br i1 %call135, label %if.then.136, label %if.else.190

if.then.136:                                      ; preds = %do.body.133
  %69 = load i64, i64* %i_byte, align 8
  %70 = load i64, i64* %obj.addr, align 8
  %call137 = call i8* @SDATA(i64 %70)
  %arrayidx138 = getelementptr inbounds i8, i8* %call137, i64 %69
  store i8* %arrayidx138, i8** %chp, align 8
  %71 = load i8*, i8** %chp, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %72 to i32
  %and141 = and i32 %conv140, 128
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.136
  store i32 1, i32* %chlen, align 4
  %73 = load i8*, i8** %chp, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %74 to i32
  br label %cond.end.186

cond.false:                                       ; preds = %if.then.136
  %75 = load i8*, i8** %chp, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %76 to i32
  %and147 = and i32 %conv146, 32
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %cond.false.162, label %cond.true.149

cond.true.149:                                    ; preds = %cond.false
  store i32 2, i32* %chlen, align 4
  %77 = load i8*, i8** %chp, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %78 to i32
  %and152 = and i32 %conv151, 31
  %shl153 = shl i32 %and152, 6
  %79 = load i8*, i8** %chp, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %80 to i32
  %and156 = and i32 %conv155, 63
  %or = or i32 %shl153, %and156
  %81 = load i8*, i8** %chp, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %81, i64 0
  %82 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %82 to i32
  %cmp159 = icmp slt i32 %conv158, 194
  %cond = select i1 %cmp159, i32 4194176, i32 0
  %add161 = add nsw i32 %or, %cond
  br label %cond.end.184

cond.false.162:                                   ; preds = %cond.false
  %83 = load i8*, i8** %chp, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %84 to i32
  %and165 = and i32 %conv164, 16
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %cond.false.181, label %cond.true.167

cond.true.167:                                    ; preds = %cond.false.162
  store i32 3, i32* %chlen, align 4
  %85 = load i8*, i8** %chp, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %86 to i32
  %and170 = and i32 %conv169, 15
  %shl171 = shl i32 %and170, 12
  %87 = load i8*, i8** %chp, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %88 to i32
  %and174 = and i32 %conv173, 63
  %shl175 = shl i32 %and174, 6
  %or176 = or i32 %shl171, %shl175
  %89 = load i8*, i8** %chp, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %89, i64 2
  %90 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %90 to i32
  %and179 = and i32 %conv178, 63
  %or180 = or i32 %or176, %and179
  br label %cond.end

cond.false.181:                                   ; preds = %cond.false.162
  %91 = load i8*, i8** %chp, align 8
  %call182 = call i32 @string_char(i8* %91, i8** null, i32* %chlen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.181, %cond.true.167
  %cond183 = phi i32 [ %or180, %cond.true.167 ], [ %call182, %cond.false.181 ]
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.end, %cond.true.149
  %cond185 = phi i32 [ %add161, %cond.true.149 ], [ %cond183, %cond.end ]
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.end.184, %cond.true
  %cond187 = phi i32 [ %conv144, %cond.true ], [ %cond185, %cond.end.184 ]
  store i32 %cond187, i32* %c, align 4
  %92 = load i32, i32* %chlen, align 4
  %conv188 = sext i32 %92 to i64
  %93 = load i64, i64* %i_byte, align 8
  %add189 = add nsw i64 %93, %conv188
  store i64 %add189, i64* %i_byte, align 8
  br label %if.end.194

if.else.190:                                      ; preds = %do.body.133
  %94 = load i64, i64* %obj.addr, align 8
  %95 = load i64, i64* %i_byte, align 8
  %call191 = call zeroext i8 @SREF(i64 %94, i64 %95)
  %conv192 = zext i8 %call191 to i32
  store i32 %conv192, i32* %c, align 4
  %96 = load i64, i64* %i_byte, align 8
  %inc193 = add nsw i64 %96, 1
  store i64 %inc193, i64* %i_byte, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.190, %cond.end.186
  br label %do.end.195

do.end.195:                                       ; preds = %if.end.194
  br label %do.body.196

do.body.196:                                      ; preds = %do.end.195
  %97 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call197 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp198 = icmp eq i64 %97, %call197
  br i1 %cmp198, label %if.else.205, label %land.lhs.true.200

land.lhs.true.200:                                ; preds = %do.body.196
  %98 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call201 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp202 = icmp eq i64 %98, %call201
  br i1 %cmp202, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %land.lhs.true.200
  call void @process_quit_flag()
  br label %if.end.209

if.else.205:                                      ; preds = %land.lhs.true.200, %do.body.196
  %99 = load volatile i8, i8* @pending_signals, align 1
  %tobool206 = trunc i8 %99 to i1
  br i1 %tobool206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.else.205
  call void @process_pending_signals()
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %if.else.205
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.204
  br label %do.end.210

do.end.210:                                       ; preds = %if.end.209
  %100 = load i8, i8* %multibyte, align 1
  %tobool211 = trunc i8 %100 to i1
  br i1 %tobool211, label %cond.true.213, label %cond.false.225

cond.true.213:                                    ; preds = %do.end.210
  %101 = load i32, i32* %c, align 4
  %cmp214 = icmp sgt i32 %101, 4194175
  br i1 %cmp214, label %land.lhs.true.216, label %if.else.256

land.lhs.true.216:                                ; preds = %cond.true.213
  %102 = load i32, i32* %c, align 4
  %cmp217 = icmp sgt i32 %102, 4194175
  br i1 %cmp217, label %cond.true.219, label %cond.false.221

cond.true.219:                                    ; preds = %land.lhs.true.216
  %103 = load i32, i32* %c, align 4
  %sub220 = sub nsw i32 %103, 4194048
  br label %cond.end.223

cond.false.221:                                   ; preds = %land.lhs.true.216
  %104 = load i32, i32* %c, align 4
  %and222 = and i32 %104, 255
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.221, %cond.true.219
  %cond224 = phi i32 [ %sub220, %cond.true.219 ], [ %and222, %cond.false.221 ]
  store i32 %cond224, i32* %c, align 4
  br i1 true, label %if.then.248, label %if.else.256

cond.false.225:                                   ; preds = %do.end.210
  br i1 true, label %cond.true.226, label %cond.false.230

cond.true.226:                                    ; preds = %cond.false.225
  %105 = load i32, i32* %c, align 4
  %add227 = add i32 %105, 0
  %cmp228 = icmp ult i32 %add227, 256
  br i1 %cmp228, label %land.lhs.true.235, label %if.else.256

cond.false.230:                                   ; preds = %cond.false.225
  %106 = load i32, i32* %c, align 4
  %conv231 = sext i32 %106 to i64
  %add232 = add i64 %conv231, 0
  %cmp233 = icmp ult i64 %add232, 256
  br i1 %cmp233, label %land.lhs.true.235, label %if.else.256

land.lhs.true.235:                                ; preds = %cond.false.230, %cond.true.226
  br i1 true, label %cond.true.236, label %cond.false.240

cond.true.236:                                    ; preds = %land.lhs.true.235
  %107 = load i32, i32* %c, align 4
  %add237 = add i32 %107, 0
  %cmp238 = icmp ult i32 %add237, 128
  br i1 %cmp238, label %if.else.256, label %land.lhs.true.245

cond.false.240:                                   ; preds = %land.lhs.true.235
  %108 = load i32, i32* %c, align 4
  %conv241 = sext i32 %108 to i64
  %add242 = add i64 %conv241, 0
  %cmp243 = icmp ult i64 %add242, 128
  br i1 %cmp243, label %if.else.256, label %land.lhs.true.245

land.lhs.true.245:                                ; preds = %cond.false.240, %cond.true.236
  %109 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool246 = trunc i8 %109 to i1
  br i1 %tobool246, label %if.then.248, label %if.else.256

if.then.248:                                      ; preds = %land.lhs.true.245, %cond.end.223
  %arraydecay250 = getelementptr inbounds [5 x i8], [5 x i8]* %outbuf, i32 0, i32 0
  %110 = load i32, i32* %c, align 4
  %add251 = add i32 %110, 0
  %call252 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %add251) #3
  store i32 %call252, i32* %len249, align 4
  %arraydecay253 = getelementptr inbounds [5 x i8], [5 x i8]* %outbuf, i32 0, i32 0
  %111 = load i32, i32* %len249, align 4
  %conv254 = sext i32 %111 to i64
  %112 = load i32, i32* %len249, align 4
  %conv255 = sext i32 %112 to i64
  %113 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay253, i64 %conv254, i64 %conv255, i64 %113)
  store i8 0, i8* %need_nonhex, align 1
  br label %if.end.311

if.else.256:                                      ; preds = %land.lhs.true.245, %cond.false.240, %cond.true.236, %cond.false.230, %cond.true.226, %cond.end.223, %cond.true.213
  %114 = load i8, i8* %multibyte, align 1
  %tobool257 = trunc i8 %114 to i1
  br i1 %tobool257, label %land.lhs.true.259, label %if.else.281

land.lhs.true.259:                                ; preds = %if.else.256
  br i1 true, label %cond.true.260, label %cond.false.264

cond.true.260:                                    ; preds = %land.lhs.true.259
  %115 = load i32, i32* %c, align 4
  %add261 = add i32 %115, 0
  %cmp262 = icmp ult i32 %add261, 128
  br i1 %cmp262, label %if.else.281, label %land.lhs.true.269

cond.false.264:                                   ; preds = %land.lhs.true.259
  %116 = load i32, i32* %c, align 4
  %conv265 = sext i32 %116 to i64
  %add266 = add i64 %conv265, 0
  %cmp267 = icmp ult i64 %add266, 128
  br i1 %cmp267, label %if.else.281, label %land.lhs.true.269

land.lhs.true.269:                                ; preds = %cond.false.264, %cond.true.260
  %117 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 481), align 1
  %tobool270 = trunc i8 %117 to i1
  br i1 %tobool270, label %if.then.272, label %if.else.281

if.then.272:                                      ; preds = %land.lhs.true.269
  %arraydecay275 = getelementptr inbounds [14 x i8], [14 x i8]* %outbuf273, i32 0, i32 0
  %118 = load i32, i32* %c, align 4
  %add276 = add i32 %118, 0
  %call277 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %add276) #3
  store i32 %call277, i32* %len274, align 4
  %arraydecay278 = getelementptr inbounds [14 x i8], [14 x i8]* %outbuf273, i32 0, i32 0
  %119 = load i32, i32* %len274, align 4
  %conv279 = sext i32 %119 to i64
  %120 = load i32, i32* %len274, align 4
  %conv280 = sext i32 %120 to i64
  %121 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay278, i64 %conv279, i64 %conv280, i64 %121)
  store i8 1, i8* %need_nonhex, align 1
  br label %if.end.310

if.else.281:                                      ; preds = %land.lhs.true.269, %cond.false.264, %cond.true.260, %if.else.256
  %122 = load i8, i8* %need_nonhex, align 1
  %tobool282 = trunc i8 %122 to i1
  br i1 %tobool282, label %land.lhs.true.284, label %if.end.288

land.lhs.true.284:                                ; preds = %if.else.281
  %123 = load i32, i32* %c, align 4
  %call285 = call zeroext i1 @c_isxdigit(i32 %123)
  br i1 %call285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %land.lhs.true.284
  %124 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i64 %124)
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %land.lhs.true.284, %if.else.281
  %125 = load i32, i32* %c, align 4
  %cmp289 = icmp eq i32 %125, 10
  br i1 %cmp289, label %land.lhs.true.291, label %cond.false.295

land.lhs.true.291:                                ; preds = %if.end.288
  %126 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 482), align 1
  %tobool292 = trunc i8 %126 to i1
  br i1 %tobool292, label %cond.true.294, label %cond.false.295

cond.true.294:                                    ; preds = %land.lhs.true.291
  store i32 110, i32* %c, align 4
  br i1 true, label %if.then.308, label %if.end.309

cond.false.295:                                   ; preds = %land.lhs.true.291, %if.end.288
  %127 = load i32, i32* %c, align 4
  %cmp296 = icmp eq i32 %127, 12
  br i1 %cmp296, label %land.lhs.true.298, label %cond.false.302

land.lhs.true.298:                                ; preds = %cond.false.295
  %128 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 482), align 1
  %tobool299 = trunc i8 %128 to i1
  br i1 %tobool299, label %cond.true.301, label %cond.false.302

cond.true.301:                                    ; preds = %land.lhs.true.298
  store i32 102, i32* %c, align 4
  br i1 true, label %if.then.308, label %if.end.309

cond.false.302:                                   ; preds = %land.lhs.true.298, %cond.false.295
  %129 = load i32, i32* %c, align 4
  %cmp303 = icmp eq i32 %129, 34
  br i1 %cmp303, label %if.then.308, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %cond.false.302
  %130 = load i32, i32* %c, align 4
  %cmp306 = icmp eq i32 %130, 92
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %lor.lhs.false.305, %cond.false.302, %cond.true.301, %cond.true.294
  %131 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 92, i64 %131)
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.308, %lor.lhs.false.305, %cond.true.301, %cond.true.294
  %132 = load i32, i32* %c, align 4
  %133 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %132, i64 %133)
  store i8 0, i8* %need_nonhex, align 1
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.272
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.248
  br label %for.cond.129

for.end.312:                                      ; preds = %for.cond.129
  %134 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 34, i64 %134)
  %135 = load i64, i64* %obj.addr, align 8
  %call313 = call %struct.interval* @string_intervals(i64 %135)
  %tobool314 = icmp ne %struct.interval* %call313, null
  br i1 %tobool314, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %for.end.312
  %136 = load i64, i64* %obj.addr, align 8
  %call316 = call %struct.interval* @string_intervals(i64 %136)
  %137 = load i64, i64* %printcharfun.addr, align 8
  call void @traverse_intervals(%struct.interval* %call316, i64 0, void (%struct.interval*, i64)* @print_interval, i64 %137)
  %138 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 41, i64 %138)
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.315, %for.end.312
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.then.113
  br label %sw.epilog.1354

sw.bb.319:                                        ; preds = %if.end.92
  %139 = load i64, i64* %obj.addr, align 8
  %call320 = call i64 @SYMBOL_NAME(i64 %139)
  %call321 = call i8* @SDATA(i64 %call320)
  store i8* %call321, i8** %p, align 8
  %140 = load i8*, i8** %p, align 8
  %141 = load i64, i64* %obj.addr, align 8
  %call322 = call i64 @SYMBOL_NAME(i64 %141)
  %call323 = call i64 @SBYTES(i64 %call322)
  %add.ptr = getelementptr inbounds i8, i8* %140, i64 %call323
  store i8* %add.ptr, i8** %end, align 8
  %142 = load i64, i64* %obj.addr, align 8
  %call328 = call i64 @SYMBOL_NAME(i64 %142)
  store i64 %call328, i64* %name, align 8
  %143 = load i8*, i8** %p, align 8
  %144 = load i8*, i8** %end, align 8
  %cmp329 = icmp ne i8* %143, %144
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.340

land.lhs.true.331:                                ; preds = %sw.bb.319
  %145 = load i8*, i8** %p, align 8
  %146 = load i8, i8* %145, align 1
  %conv332 = zext i8 %146 to i32
  %cmp333 = icmp eq i32 %conv332, 45
  br i1 %cmp333, label %if.then.339, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %land.lhs.true.331
  %147 = load i8*, i8** %p, align 8
  %148 = load i8, i8* %147, align 1
  %conv336 = zext i8 %148 to i32
  %cmp337 = icmp eq i32 %conv336, 43
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %lor.lhs.false.335, %land.lhs.true.331
  %149 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.339, %lor.lhs.false.335, %sw.bb.319
  %150 = load i8*, i8** %p, align 8
  %151 = load i8*, i8** %end, align 8
  %cmp341 = icmp eq i8* %150, %151
  br i1 %cmp341, label %if.then.343, label %if.else.344

if.then.343:                                      ; preds = %if.end.340
  store i8 0, i8* %confusing, align 1
  br label %if.end.385

if.else.344:                                      ; preds = %if.end.340
  %152 = load i8*, i8** %p, align 8
  %153 = load i8, i8* %152, align 1
  %conv345 = zext i8 %153 to i32
  %cmp346 = icmp sge i32 %conv345, 48
  br i1 %cmp346, label %land.lhs.true.348, label %if.else.383

land.lhs.true.348:                                ; preds = %if.else.344
  %154 = load i8*, i8** %p, align 8
  %155 = load i8, i8* %154, align 1
  %conv349 = zext i8 %155 to i32
  %cmp350 = icmp sle i32 %conv349, 57
  br i1 %cmp350, label %land.lhs.true.352, label %if.else.383

land.lhs.true.352:                                ; preds = %land.lhs.true.348
  %156 = load i8*, i8** %end, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %156, i64 -1
  %157 = load i8, i8* %arrayidx353, align 1
  %conv354 = zext i8 %157 to i32
  %cmp355 = icmp sge i32 %conv354, 48
  br i1 %cmp355, label %land.lhs.true.357, label %if.else.383

land.lhs.true.357:                                ; preds = %land.lhs.true.352
  %158 = load i8*, i8** %end, align 8
  %arrayidx358 = getelementptr inbounds i8, i8* %158, i64 -1
  %159 = load i8, i8* %arrayidx358, align 1
  %conv359 = zext i8 %159 to i32
  %cmp360 = icmp sle i32 %conv359, 57
  br i1 %cmp360, label %if.then.362, label %if.else.383

if.then.362:                                      ; preds = %land.lhs.true.357
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.362
  %160 = load i8*, i8** %p, align 8
  %161 = load i8*, i8** %end, align 8
  %cmp363 = icmp ne i8* %160, %161
  br i1 %cmp363, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %162 = load i8*, i8** %p, align 8
  %163 = load i8, i8* %162, align 1
  %conv365 = zext i8 %163 to i32
  %cmp366 = icmp sge i32 %conv365, 48
  br i1 %cmp366, label %land.lhs.true.368, label %lor.lhs.false.372

land.lhs.true.368:                                ; preds = %land.rhs
  %164 = load i8*, i8** %p, align 8
  %165 = load i8, i8* %164, align 1
  %conv369 = zext i8 %165 to i32
  %cmp370 = icmp sle i32 %conv369, 57
  br i1 %cmp370, label %lor.end, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %land.lhs.true.368, %land.rhs
  %166 = load i8*, i8** %p, align 8
  %167 = load i8, i8* %166, align 1
  %conv373 = zext i8 %167 to i32
  %cmp374 = icmp eq i32 %conv373, 101
  br i1 %cmp374, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.372
  %168 = load i8*, i8** %p, align 8
  %169 = load i8, i8* %168, align 1
  %conv376 = zext i8 %169 to i32
  %cmp377 = icmp eq i32 %conv376, 69
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.372, %land.lhs.true.368
  %170 = phi i1 [ true, %lor.lhs.false.372 ], [ true, %land.lhs.true.368 ], [ %cmp377, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %171 = phi i1 [ false, %while.cond ], [ %170, %lor.end ]
  br i1 %171, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %172 = load i8*, i8** %p, align 8
  %incdec.ptr379 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr379, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %173 = load i8*, i8** %end, align 8
  %174 = load i8*, i8** %p, align 8
  %cmp380 = icmp eq i8* %173, %174
  %frombool382 = zext i1 %cmp380 to i8
  store i8 %frombool382, i8* %confusing, align 1
  br label %if.end.384

if.else.383:                                      ; preds = %land.lhs.true.357, %land.lhs.true.352, %land.lhs.true.348, %if.else.344
  store i8 0, i8* %confusing, align 1
  br label %if.end.384

if.end.384:                                       ; preds = %if.else.383, %while.end
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.343
  %175 = load i64, i64* %name, align 8
  %call386 = call i64 @SBYTES(i64 %175)
  store i64 %call386, i64* %size_byte327, align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 231), align 8
  %call387 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp388 = icmp eq i64 %176, %call387
  br i1 %cmp388, label %if.else.393, label %land.lhs.true.390

land.lhs.true.390:                                ; preds = %if.end.385
  %177 = load i64, i64* %obj.addr, align 8
  %call391 = call zeroext i1 @SYMBOL_INTERNED_P(i64 %177)
  br i1 %call391, label %if.else.393, label %if.then.392

if.then.392:                                      ; preds = %land.lhs.true.390
  %178 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i64 %178)
  br label %if.end.398

if.else.393:                                      ; preds = %land.lhs.true.390, %if.end.385
  %179 = load i64, i64* %size_byte327, align 8
  %cmp394 = icmp eq i64 %179, 0
  br i1 %cmp394, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %if.else.393
  %180 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i64 %180)
  br label %sw.epilog.1354

if.end.397:                                       ; preds = %if.else.393
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397, %if.then.392
  store i64 0, i64* %i325, align 8
  store i64 0, i64* %i_byte326, align 8
  br label %for.cond.399

for.cond.399:                                     ; preds = %if.end.536, %if.end.398
  %181 = load i64, i64* %i_byte326, align 8
  %182 = load i64, i64* %size_byte327, align 8
  %cmp400 = icmp slt i64 %181, %182
  br i1 %cmp400, label %for.body.402, label %for.end.537

for.body.402:                                     ; preds = %for.cond.399
  br label %do.body.403

do.body.403:                                      ; preds = %for.body.402
  %183 = load i64, i64* %i325, align 8
  %inc404 = add nsw i64 %183, 1
  store i64 %inc404, i64* %i325, align 8
  %184 = load i64, i64* %name, align 8
  %call405 = call zeroext i1 @STRING_MULTIBYTE(i64 %184)
  br i1 %call405, label %if.then.406, label %if.else.467

if.then.406:                                      ; preds = %do.body.403
  %185 = load i64, i64* %i_byte326, align 8
  %186 = load i64, i64* %name, align 8
  %call408 = call i8* @SDATA(i64 %186)
  %arrayidx409 = getelementptr inbounds i8, i8* %call408, i64 %185
  store i8* %arrayidx409, i8** %chp407, align 8
  %187 = load i8*, i8** %chp407, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %187, i64 0
  %188 = load i8, i8* %arrayidx411, align 1
  %conv412 = zext i8 %188 to i32
  %and413 = and i32 %conv412, 128
  %tobool414 = icmp ne i32 %and413, 0
  br i1 %tobool414, label %cond.false.418, label %cond.true.415

cond.true.415:                                    ; preds = %if.then.406
  store i32 1, i32* %chlen410, align 4
  %189 = load i8*, i8** %chp407, align 8
  %arrayidx416 = getelementptr inbounds i8, i8* %189, i64 0
  %190 = load i8, i8* %arrayidx416, align 1
  %conv417 = zext i8 %190 to i32
  br label %cond.end.463

cond.false.418:                                   ; preds = %if.then.406
  %191 = load i8*, i8** %chp407, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %191, i64 0
  %192 = load i8, i8* %arrayidx419, align 1
  %conv420 = zext i8 %192 to i32
  %and421 = and i32 %conv420, 32
  %tobool422 = icmp ne i32 %and421, 0
  br i1 %tobool422, label %cond.false.438, label %cond.true.423

cond.true.423:                                    ; preds = %cond.false.418
  store i32 2, i32* %chlen410, align 4
  %193 = load i8*, i8** %chp407, align 8
  %arrayidx424 = getelementptr inbounds i8, i8* %193, i64 0
  %194 = load i8, i8* %arrayidx424, align 1
  %conv425 = zext i8 %194 to i32
  %and426 = and i32 %conv425, 31
  %shl427 = shl i32 %and426, 6
  %195 = load i8*, i8** %chp407, align 8
  %arrayidx428 = getelementptr inbounds i8, i8* %195, i64 1
  %196 = load i8, i8* %arrayidx428, align 1
  %conv429 = zext i8 %196 to i32
  %and430 = and i32 %conv429, 63
  %or431 = or i32 %shl427, %and430
  %197 = load i8*, i8** %chp407, align 8
  %arrayidx432 = getelementptr inbounds i8, i8* %197, i64 0
  %198 = load i8, i8* %arrayidx432, align 1
  %conv433 = zext i8 %198 to i32
  %cmp434 = icmp slt i32 %conv433, 194
  %cond436 = select i1 %cmp434, i32 4194176, i32 0
  %add437 = add nsw i32 %or431, %cond436
  br label %cond.end.461

cond.false.438:                                   ; preds = %cond.false.418
  %199 = load i8*, i8** %chp407, align 8
  %arrayidx439 = getelementptr inbounds i8, i8* %199, i64 0
  %200 = load i8, i8* %arrayidx439, align 1
  %conv440 = zext i8 %200 to i32
  %and441 = and i32 %conv440, 16
  %tobool442 = icmp ne i32 %and441, 0
  br i1 %tobool442, label %cond.false.457, label %cond.true.443

cond.true.443:                                    ; preds = %cond.false.438
  store i32 3, i32* %chlen410, align 4
  %201 = load i8*, i8** %chp407, align 8
  %arrayidx444 = getelementptr inbounds i8, i8* %201, i64 0
  %202 = load i8, i8* %arrayidx444, align 1
  %conv445 = zext i8 %202 to i32
  %and446 = and i32 %conv445, 15
  %shl447 = shl i32 %and446, 12
  %203 = load i8*, i8** %chp407, align 8
  %arrayidx448 = getelementptr inbounds i8, i8* %203, i64 1
  %204 = load i8, i8* %arrayidx448, align 1
  %conv449 = zext i8 %204 to i32
  %and450 = and i32 %conv449, 63
  %shl451 = shl i32 %and450, 6
  %or452 = or i32 %shl447, %shl451
  %205 = load i8*, i8** %chp407, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %205, i64 2
  %206 = load i8, i8* %arrayidx453, align 1
  %conv454 = zext i8 %206 to i32
  %and455 = and i32 %conv454, 63
  %or456 = or i32 %or452, %and455
  br label %cond.end.459

cond.false.457:                                   ; preds = %cond.false.438
  %207 = load i8*, i8** %chp407, align 8
  %call458 = call i32 @string_char(i8* %207, i8** null, i32* %chlen410)
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.false.457, %cond.true.443
  %cond460 = phi i32 [ %or456, %cond.true.443 ], [ %call458, %cond.false.457 ]
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.end.459, %cond.true.423
  %cond462 = phi i32 [ %add437, %cond.true.423 ], [ %cond460, %cond.end.459 ]
  br label %cond.end.463

cond.end.463:                                     ; preds = %cond.end.461, %cond.true.415
  %cond464 = phi i32 [ %conv417, %cond.true.415 ], [ %cond462, %cond.end.461 ]
  store i32 %cond464, i32* %c324, align 4
  %208 = load i32, i32* %chlen410, align 4
  %conv465 = sext i32 %208 to i64
  %209 = load i64, i64* %i_byte326, align 8
  %add466 = add nsw i64 %209, %conv465
  store i64 %add466, i64* %i_byte326, align 8
  br label %if.end.471

if.else.467:                                      ; preds = %do.body.403
  %210 = load i64, i64* %name, align 8
  %211 = load i64, i64* %i_byte326, align 8
  %call468 = call zeroext i8 @SREF(i64 %210, i64 %211)
  %conv469 = zext i8 %call468 to i32
  store i32 %conv469, i32* %c324, align 4
  %212 = load i64, i64* %i_byte326, align 8
  %inc470 = add nsw i64 %212, 1
  store i64 %inc470, i64* %i_byte326, align 8
  br label %if.end.471

if.end.471:                                       ; preds = %if.else.467, %cond.end.463
  br label %do.end.472

do.end.472:                                       ; preds = %if.end.471
  br label %do.body.473

do.body.473:                                      ; preds = %do.end.472
  %213 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call474 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp475 = icmp eq i64 %213, %call474
  br i1 %cmp475, label %if.else.482, label %land.lhs.true.477

land.lhs.true.477:                                ; preds = %do.body.473
  %214 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call478 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp479 = icmp eq i64 %214, %call478
  br i1 %cmp479, label %if.then.481, label %if.else.482

if.then.481:                                      ; preds = %land.lhs.true.477
  call void @process_quit_flag()
  br label %if.end.486

if.else.482:                                      ; preds = %land.lhs.true.477, %do.body.473
  %215 = load volatile i8, i8* @pending_signals, align 1
  %tobool483 = trunc i8 %215 to i1
  br i1 %tobool483, label %if.then.484, label %if.end.485

if.then.484:                                      ; preds = %if.else.482
  call void @process_pending_signals()
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.484, %if.else.482
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.then.481
  br label %do.end.487

do.end.487:                                       ; preds = %if.end.486
  %216 = load i8, i8* %escapeflag.addr, align 1
  %tobool488 = trunc i8 %216 to i1
  br i1 %tobool488, label %if.then.489, label %if.end.536

if.then.489:                                      ; preds = %do.end.487
  %217 = load i32, i32* %c324, align 4
  %cmp490 = icmp eq i32 %217, 34
  br i1 %cmp490, label %if.then.534, label %lor.lhs.false.492

lor.lhs.false.492:                                ; preds = %if.then.489
  %218 = load i32, i32* %c324, align 4
  %cmp493 = icmp eq i32 %218, 92
  br i1 %cmp493, label %if.then.534, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %lor.lhs.false.492
  %219 = load i32, i32* %c324, align 4
  %cmp496 = icmp eq i32 %219, 39
  br i1 %cmp496, label %if.then.534, label %lor.lhs.false.498

lor.lhs.false.498:                                ; preds = %lor.lhs.false.495
  %220 = load i32, i32* %c324, align 4
  %cmp499 = icmp eq i32 %220, 59
  br i1 %cmp499, label %if.then.534, label %lor.lhs.false.501

lor.lhs.false.501:                                ; preds = %lor.lhs.false.498
  %221 = load i32, i32* %c324, align 4
  %cmp502 = icmp eq i32 %221, 35
  br i1 %cmp502, label %if.then.534, label %lor.lhs.false.504

lor.lhs.false.504:                                ; preds = %lor.lhs.false.501
  %222 = load i32, i32* %c324, align 4
  %cmp505 = icmp eq i32 %222, 40
  br i1 %cmp505, label %if.then.534, label %lor.lhs.false.507

lor.lhs.false.507:                                ; preds = %lor.lhs.false.504
  %223 = load i32, i32* %c324, align 4
  %cmp508 = icmp eq i32 %223, 41
  br i1 %cmp508, label %if.then.534, label %lor.lhs.false.510

lor.lhs.false.510:                                ; preds = %lor.lhs.false.507
  %224 = load i32, i32* %c324, align 4
  %cmp511 = icmp eq i32 %224, 44
  br i1 %cmp511, label %if.then.534, label %lor.lhs.false.513

lor.lhs.false.513:                                ; preds = %lor.lhs.false.510
  %225 = load i32, i32* %c324, align 4
  %cmp514 = icmp eq i32 %225, 46
  br i1 %cmp514, label %if.then.534, label %lor.lhs.false.516

lor.lhs.false.516:                                ; preds = %lor.lhs.false.513
  %226 = load i32, i32* %c324, align 4
  %cmp517 = icmp eq i32 %226, 96
  br i1 %cmp517, label %if.then.534, label %lor.lhs.false.519

lor.lhs.false.519:                                ; preds = %lor.lhs.false.516
  %227 = load i32, i32* %c324, align 4
  %cmp520 = icmp eq i32 %227, 91
  br i1 %cmp520, label %if.then.534, label %lor.lhs.false.522

lor.lhs.false.522:                                ; preds = %lor.lhs.false.519
  %228 = load i32, i32* %c324, align 4
  %cmp523 = icmp eq i32 %228, 93
  br i1 %cmp523, label %if.then.534, label %lor.lhs.false.525

lor.lhs.false.525:                                ; preds = %lor.lhs.false.522
  %229 = load i32, i32* %c324, align 4
  %cmp526 = icmp eq i32 %229, 63
  br i1 %cmp526, label %if.then.534, label %lor.lhs.false.528

lor.lhs.false.528:                                ; preds = %lor.lhs.false.525
  %230 = load i32, i32* %c324, align 4
  %cmp529 = icmp sle i32 %230, 32
  br i1 %cmp529, label %if.then.534, label %lor.lhs.false.531

lor.lhs.false.531:                                ; preds = %lor.lhs.false.528
  %231 = load i8, i8* %confusing, align 1
  %tobool532 = trunc i8 %231 to i1
  br i1 %tobool532, label %if.then.534, label %if.end.535

if.then.534:                                      ; preds = %lor.lhs.false.531, %lor.lhs.false.528, %lor.lhs.false.525, %lor.lhs.false.522, %lor.lhs.false.519, %lor.lhs.false.516, %lor.lhs.false.513, %lor.lhs.false.510, %lor.lhs.false.507, %lor.lhs.false.504, %lor.lhs.false.501, %lor.lhs.false.498, %lor.lhs.false.495, %lor.lhs.false.492, %if.then.489
  %232 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 92, i64 %232)
  store i8 0, i8* %confusing, align 1
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.534, %lor.lhs.false.531
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %do.end.487
  %233 = load i32, i32* %c324, align 4
  %234 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %233, i64 %234)
  br label %for.cond.399

for.end.537:                                      ; preds = %for.cond.399
  br label %sw.epilog.1354

sw.bb.538:                                        ; preds = %if.end.92
  %235 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 233), align 8
  %and539 = and i64 %235, 7
  %conv540 = trunc i64 %and539 to i32
  %and541 = and i32 %conv540, -5
  %cmp542 = icmp eq i32 %and541, 2
  br i1 %cmp542, label %land.lhs.true.544, label %if.else.549

land.lhs.true.544:                                ; preds = %sw.bb.538
  %236 = load i64, i64* @print_depth, align 8
  %237 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 233), align 8
  %shr545 = ashr i64 %237, 2
  %cmp546 = icmp sgt i64 %236, %shr545
  br i1 %cmp546, label %if.then.548, label %if.else.549

if.then.548:                                      ; preds = %land.lhs.true.544
  %238 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i64 %238)
  br label %if.end.782

if.else.549:                                      ; preds = %land.lhs.true.544, %sw.bb.538
  %239 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 484), align 1
  %tobool550 = trunc i8 %239 to i1
  br i1 %tobool550, label %land.lhs.true.552, label %if.else.580

land.lhs.true.552:                                ; preds = %if.else.549
  %240 = load i64, i64* %obj.addr, align 8
  %sub553 = sub nsw i64 %240, 3
  %241 = inttoptr i64 %sub553 to i8*
  %242 = bitcast i8* %241 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %242, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %243 = load i64, i64* %cdr, align 8
  %and554 = and i64 %243, 7
  %conv555 = trunc i64 %and554 to i32
  %cmp556 = icmp eq i32 %conv555, 3
  br i1 %cmp556, label %land.lhs.true.558, label %if.else.580

land.lhs.true.558:                                ; preds = %land.lhs.true.552
  %244 = load i64, i64* %obj.addr, align 8
  %sub559 = sub nsw i64 %244, 3
  %245 = inttoptr i64 %sub559 to i8*
  %246 = bitcast i8* %245 to %struct.Lisp_Cons*
  %u560 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %246, i32 0, i32 1
  %cdr561 = bitcast %union.anon.0* %u560 to i64*
  %247 = load i64, i64* %cdr561, align 8
  %sub562 = sub nsw i64 %247, 3
  %248 = inttoptr i64 %sub562 to i8*
  %249 = bitcast i8* %248 to %struct.Lisp_Cons*
  %u563 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %249, i32 0, i32 1
  %cdr564 = bitcast %union.anon.0* %u563 to i64*
  %250 = load i64, i64* %cdr564, align 8
  %call565 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp566 = icmp eq i64 %250, %call565
  br i1 %cmp566, label %land.lhs.true.568, label %if.else.580

land.lhs.true.568:                                ; preds = %land.lhs.true.558
  %251 = load i64, i64* %obj.addr, align 8
  %sub569 = sub nsw i64 %251, 3
  %252 = inttoptr i64 %sub569 to i8*
  %253 = bitcast i8* %252 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %253, i32 0, i32 0
  %254 = load i64, i64* %car, align 8
  %call570 = call i64 @builtin_lisp_symbol(i32 783)
  %cmp571 = icmp eq i64 %254, %call570
  br i1 %cmp571, label %if.then.573, label %if.else.580

if.then.573:                                      ; preds = %land.lhs.true.568
  %255 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 39, i64 %255)
  %256 = load i64, i64* %obj.addr, align 8
  %sub574 = sub nsw i64 %256, 3
  %257 = inttoptr i64 %sub574 to i8*
  %258 = bitcast i8* %257 to %struct.Lisp_Cons*
  %u575 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %258, i32 0, i32 1
  %cdr576 = bitcast %union.anon.0* %u575 to i64*
  %259 = load i64, i64* %cdr576, align 8
  %sub577 = sub nsw i64 %259, 3
  %260 = inttoptr i64 %sub577 to i8*
  %261 = bitcast i8* %260 to %struct.Lisp_Cons*
  %car578 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %261, i32 0, i32 0
  %262 = load i64, i64* %car578, align 8
  %263 = load i64, i64* %printcharfun.addr, align 8
  %264 = load i8, i8* %escapeflag.addr, align 1
  %tobool579 = trunc i8 %264 to i1
  call void @print_object(i64 %262, i64 %263, i1 zeroext %tobool579)
  br label %if.end.781

if.else.580:                                      ; preds = %land.lhs.true.568, %land.lhs.true.558, %land.lhs.true.552, %if.else.549
  %265 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 484), align 1
  %tobool581 = trunc i8 %265 to i1
  br i1 %tobool581, label %land.lhs.true.583, label %if.else.614

land.lhs.true.583:                                ; preds = %if.else.580
  %266 = load i64, i64* %obj.addr, align 8
  %sub584 = sub nsw i64 %266, 3
  %267 = inttoptr i64 %sub584 to i8*
  %268 = bitcast i8* %267 to %struct.Lisp_Cons*
  %u585 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %268, i32 0, i32 1
  %cdr586 = bitcast %union.anon.0* %u585 to i64*
  %269 = load i64, i64* %cdr586, align 8
  %and587 = and i64 %269, 7
  %conv588 = trunc i64 %and587 to i32
  %cmp589 = icmp eq i32 %conv588, 3
  br i1 %cmp589, label %land.lhs.true.591, label %if.else.614

land.lhs.true.591:                                ; preds = %land.lhs.true.583
  %270 = load i64, i64* %obj.addr, align 8
  %sub592 = sub nsw i64 %270, 3
  %271 = inttoptr i64 %sub592 to i8*
  %272 = bitcast i8* %271 to %struct.Lisp_Cons*
  %u593 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %272, i32 0, i32 1
  %cdr594 = bitcast %union.anon.0* %u593 to i64*
  %273 = load i64, i64* %cdr594, align 8
  %sub595 = sub nsw i64 %273, 3
  %274 = inttoptr i64 %sub595 to i8*
  %275 = bitcast i8* %274 to %struct.Lisp_Cons*
  %u596 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %275, i32 0, i32 1
  %cdr597 = bitcast %union.anon.0* %u596 to i64*
  %276 = load i64, i64* %cdr597, align 8
  %call598 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp599 = icmp eq i64 %276, %call598
  br i1 %cmp599, label %land.lhs.true.601, label %if.else.614

land.lhs.true.601:                                ; preds = %land.lhs.true.591
  %277 = load i64, i64* %obj.addr, align 8
  %sub602 = sub nsw i64 %277, 3
  %278 = inttoptr i64 %sub602 to i8*
  %279 = bitcast i8* %278 to %struct.Lisp_Cons*
  %car603 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %279, i32 0, i32 0
  %280 = load i64, i64* %car603, align 8
  %call604 = call i64 @builtin_lisp_symbol(i32 476)
  %cmp605 = icmp eq i64 %280, %call604
  br i1 %cmp605, label %if.then.607, label %if.else.614

if.then.607:                                      ; preds = %land.lhs.true.601
  %281 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i64 %281)
  %282 = load i64, i64* %obj.addr, align 8
  %sub608 = sub nsw i64 %282, 3
  %283 = inttoptr i64 %sub608 to i8*
  %284 = bitcast i8* %283 to %struct.Lisp_Cons*
  %u609 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %284, i32 0, i32 1
  %cdr610 = bitcast %union.anon.0* %u609 to i64*
  %285 = load i64, i64* %cdr610, align 8
  %sub611 = sub nsw i64 %285, 3
  %286 = inttoptr i64 %sub611 to i8*
  %287 = bitcast i8* %286 to %struct.Lisp_Cons*
  %car612 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %287, i32 0, i32 0
  %288 = load i64, i64* %car612, align 8
  %289 = load i64, i64* %printcharfun.addr, align 8
  %290 = load i8, i8* %escapeflag.addr, align 1
  %tobool613 = trunc i8 %290 to i1
  call void @print_object(i64 %288, i64 %289, i1 zeroext %tobool613)
  br label %if.end.780

if.else.614:                                      ; preds = %land.lhs.true.601, %land.lhs.true.591, %land.lhs.true.583, %if.else.580
  %291 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 484), align 1
  %tobool615 = trunc i8 %291 to i1
  br i1 %tobool615, label %land.lhs.true.617, label %if.else.649

land.lhs.true.617:                                ; preds = %if.else.614
  %292 = load i64, i64* %obj.addr, align 8
  %sub618 = sub nsw i64 %292, 3
  %293 = inttoptr i64 %sub618 to i8*
  %294 = bitcast i8* %293 to %struct.Lisp_Cons*
  %u619 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %294, i32 0, i32 1
  %cdr620 = bitcast %union.anon.0* %u619 to i64*
  %295 = load i64, i64* %cdr620, align 8
  %and621 = and i64 %295, 7
  %conv622 = trunc i64 %and621 to i32
  %cmp623 = icmp eq i32 %conv622, 3
  br i1 %cmp623, label %land.lhs.true.625, label %if.else.649

land.lhs.true.625:                                ; preds = %land.lhs.true.617
  %296 = load i64, i64* %obj.addr, align 8
  %sub626 = sub nsw i64 %296, 3
  %297 = inttoptr i64 %sub626 to i8*
  %298 = bitcast i8* %297 to %struct.Lisp_Cons*
  %u627 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %298, i32 0, i32 1
  %cdr628 = bitcast %union.anon.0* %u627 to i64*
  %299 = load i64, i64* %cdr628, align 8
  %sub629 = sub nsw i64 %299, 3
  %300 = inttoptr i64 %sub629 to i8*
  %301 = bitcast i8* %300 to %struct.Lisp_Cons*
  %u630 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %301, i32 0, i32 1
  %cdr631 = bitcast %union.anon.0* %u630 to i64*
  %302 = load i64, i64* %cdr631, align 8
  %call632 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp633 = icmp eq i64 %302, %call632
  br i1 %cmp633, label %land.lhs.true.635, label %if.else.649

land.lhs.true.635:                                ; preds = %land.lhs.true.625
  %303 = load i64, i64* %obj.addr, align 8
  %sub636 = sub nsw i64 %303, 3
  %304 = inttoptr i64 %sub636 to i8*
  %305 = bitcast i8* %304 to %struct.Lisp_Cons*
  %car637 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %305, i32 0, i32 0
  %306 = load i64, i64* %car637, align 8
  %call638 = call i64 @builtin_lisp_symbol(i32 195)
  %cmp639 = icmp eq i64 %306, %call638
  br i1 %cmp639, label %if.then.641, label %if.else.649

if.then.641:                                      ; preds = %land.lhs.true.635
  %307 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 96, i64 %307)
  %308 = load i64, i64* @new_backquote_output, align 8
  %inc642 = add nsw i64 %308, 1
  store i64 %inc642, i64* @new_backquote_output, align 8
  %309 = load i64, i64* %obj.addr, align 8
  %sub643 = sub nsw i64 %309, 3
  %310 = inttoptr i64 %sub643 to i8*
  %311 = bitcast i8* %310 to %struct.Lisp_Cons*
  %u644 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %311, i32 0, i32 1
  %cdr645 = bitcast %union.anon.0* %u644 to i64*
  %312 = load i64, i64* %cdr645, align 8
  %sub646 = sub nsw i64 %312, 3
  %313 = inttoptr i64 %sub646 to i8*
  %314 = bitcast i8* %313 to %struct.Lisp_Cons*
  %car647 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %314, i32 0, i32 0
  %315 = load i64, i64* %car647, align 8
  %316 = load i64, i64* %printcharfun.addr, align 8
  %317 = load i8, i8* %escapeflag.addr, align 1
  %tobool648 = trunc i8 %317 to i1
  call void @print_object(i64 %315, i64 %316, i1 zeroext %tobool648)
  %318 = load i64, i64* @new_backquote_output, align 8
  %dec = add nsw i64 %318, -1
  store i64 %dec, i64* @new_backquote_output, align 8
  br label %if.end.779

if.else.649:                                      ; preds = %land.lhs.true.635, %land.lhs.true.625, %land.lhs.true.617, %if.else.614
  %319 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 484), align 1
  %tobool650 = trunc i8 %319 to i1
  br i1 %tobool650, label %land.lhs.true.652, label %if.else.701

land.lhs.true.652:                                ; preds = %if.else.649
  %320 = load i64, i64* %obj.addr, align 8
  %sub653 = sub nsw i64 %320, 3
  %321 = inttoptr i64 %sub653 to i8*
  %322 = bitcast i8* %321 to %struct.Lisp_Cons*
  %u654 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %322, i32 0, i32 1
  %cdr655 = bitcast %union.anon.0* %u654 to i64*
  %323 = load i64, i64* %cdr655, align 8
  %and656 = and i64 %323, 7
  %conv657 = trunc i64 %and656 to i32
  %cmp658 = icmp eq i32 %conv657, 3
  br i1 %cmp658, label %land.lhs.true.660, label %if.else.701

land.lhs.true.660:                                ; preds = %land.lhs.true.652
  %324 = load i64, i64* %obj.addr, align 8
  %sub661 = sub nsw i64 %324, 3
  %325 = inttoptr i64 %sub661 to i8*
  %326 = bitcast i8* %325 to %struct.Lisp_Cons*
  %u662 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %326, i32 0, i32 1
  %cdr663 = bitcast %union.anon.0* %u662 to i64*
  %327 = load i64, i64* %cdr663, align 8
  %sub664 = sub nsw i64 %327, 3
  %328 = inttoptr i64 %sub664 to i8*
  %329 = bitcast i8* %328 to %struct.Lisp_Cons*
  %u665 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %329, i32 0, i32 1
  %cdr666 = bitcast %union.anon.0* %u665 to i64*
  %330 = load i64, i64* %cdr666, align 8
  %call667 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp668 = icmp eq i64 %330, %call667
  br i1 %cmp668, label %land.lhs.true.670, label %if.else.701

land.lhs.true.670:                                ; preds = %land.lhs.true.660
  %331 = load i64, i64* @new_backquote_output, align 8
  %tobool671 = icmp ne i64 %331, 0
  br i1 %tobool671, label %land.lhs.true.672, label %if.else.701

land.lhs.true.672:                                ; preds = %land.lhs.true.670
  %332 = load i64, i64* %obj.addr, align 8
  %sub673 = sub nsw i64 %332, 3
  %333 = inttoptr i64 %sub673 to i8*
  %334 = bitcast i8* %333 to %struct.Lisp_Cons*
  %car674 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %334, i32 0, i32 0
  %335 = load i64, i64* %car674, align 8
  %call675 = call i64 @builtin_lisp_symbol(i32 282)
  %cmp676 = icmp eq i64 %335, %call675
  br i1 %cmp676, label %if.then.690, label %lor.lhs.false.678

lor.lhs.false.678:                                ; preds = %land.lhs.true.672
  %336 = load i64, i64* %obj.addr, align 8
  %sub679 = sub nsw i64 %336, 3
  %337 = inttoptr i64 %sub679 to i8*
  %338 = bitcast i8* %337 to %struct.Lisp_Cons*
  %car680 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %338, i32 0, i32 0
  %339 = load i64, i64* %car680, align 8
  %call681 = call i64 @builtin_lisp_symbol(i32 283)
  %cmp682 = icmp eq i64 %339, %call681
  br i1 %cmp682, label %if.then.690, label %lor.lhs.false.684

lor.lhs.false.684:                                ; preds = %lor.lhs.false.678
  %340 = load i64, i64* %obj.addr, align 8
  %sub685 = sub nsw i64 %340, 3
  %341 = inttoptr i64 %sub685 to i8*
  %342 = bitcast i8* %341 to %struct.Lisp_Cons*
  %car686 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %342, i32 0, i32 0
  %343 = load i64, i64* %car686, align 8
  %call687 = call i64 @builtin_lisp_symbol(i32 284)
  %cmp688 = icmp eq i64 %343, %call687
  br i1 %cmp688, label %if.then.690, label %if.else.701

if.then.690:                                      ; preds = %lor.lhs.false.684, %lor.lhs.false.678, %land.lhs.true.672
  %344 = load i64, i64* %obj.addr, align 8
  %sub691 = sub nsw i64 %344, 3
  %345 = inttoptr i64 %sub691 to i8*
  %346 = bitcast i8* %345 to %struct.Lisp_Cons*
  %car692 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %346, i32 0, i32 0
  %347 = load i64, i64* %car692, align 8
  %348 = load i64, i64* %printcharfun.addr, align 8
  call void @print_object(i64 %347, i64 %348, i1 zeroext false)
  %349 = load i64, i64* @new_backquote_output, align 8
  %dec693 = add nsw i64 %349, -1
  store i64 %dec693, i64* @new_backquote_output, align 8
  %350 = load i64, i64* %obj.addr, align 8
  %sub694 = sub nsw i64 %350, 3
  %351 = inttoptr i64 %sub694 to i8*
  %352 = bitcast i8* %351 to %struct.Lisp_Cons*
  %u695 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %352, i32 0, i32 1
  %cdr696 = bitcast %union.anon.0* %u695 to i64*
  %353 = load i64, i64* %cdr696, align 8
  %sub697 = sub nsw i64 %353, 3
  %354 = inttoptr i64 %sub697 to i8*
  %355 = bitcast i8* %354 to %struct.Lisp_Cons*
  %car698 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %355, i32 0, i32 0
  %356 = load i64, i64* %car698, align 8
  %357 = load i64, i64* %printcharfun.addr, align 8
  %358 = load i8, i8* %escapeflag.addr, align 1
  %tobool699 = trunc i8 %358 to i1
  call void @print_object(i64 %356, i64 %357, i1 zeroext %tobool699)
  %359 = load i64, i64* @new_backquote_output, align 8
  %inc700 = add nsw i64 %359, 1
  store i64 %inc700, i64* @new_backquote_output, align 8
  br label %if.end.778

if.else.701:                                      ; preds = %lor.lhs.false.684, %land.lhs.true.670, %land.lhs.true.660, %land.lhs.true.652, %if.else.649
  %360 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 40, i64 %360)
  %361 = load i64, i64* %obj.addr, align 8
  store i64 %361, i64* %halftail, align 8
  %362 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %call702 = call zeroext i1 @NATNUMP(i64 %362)
  br i1 %call702, label %cond.true.704, label %cond.false.706

cond.true.704:                                    ; preds = %if.else.701
  %363 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %shr705 = ashr i64 %363, 2
  br label %cond.end.707

cond.false.706:                                   ; preds = %if.else.701
  br label %cond.end.707

cond.end.707:                                     ; preds = %cond.false.706, %cond.true.704
  %cond708 = phi i64 [ %shr705, %cond.true.704 ], [ 9223372036854775807, %cond.false.706 ]
  store i64 %cond708, i64* %print_length, align 8
  store i64 0, i64* %i709, align 8
  br label %while.cond.710

while.cond.710:                                   ; preds = %if.end.770, %cond.end.707
  %364 = load i64, i64* %obj.addr, align 8
  %and711 = and i64 %364, 7
  %conv712 = trunc i64 %and711 to i32
  %cmp713 = icmp eq i32 %conv712, 3
  br i1 %cmp713, label %while.body.715, label %while.end.771

while.body.715:                                   ; preds = %while.cond.710
  %365 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 229), align 8
  %call716 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp717 = icmp eq i64 %365, %call716
  br i1 %cmp717, label %if.then.719, label %if.else.733

if.then.719:                                      ; preds = %while.body.715
  %366 = load i64, i64* %i709, align 8
  %cmp720 = icmp ne i64 %366, 0
  br i1 %cmp720, label %land.lhs.true.722, label %if.end.732

land.lhs.true.722:                                ; preds = %if.then.719
  %367 = load i64, i64* %obj.addr, align 8
  %368 = load i64, i64* %halftail, align 8
  %cmp723 = icmp eq i64 %367, %368
  br i1 %cmp723, label %if.then.725, label %if.end.732

if.then.725:                                      ; preds = %land.lhs.true.722
  %arraydecay727 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %369 = load i64, i64* %i709, align 8
  %div = sdiv i64 %369, 2
  %call728 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay727, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i64 %div) #3
  store i32 %call728, i32* %len726, align 4
  %arraydecay729 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %370 = load i32, i32* %len726, align 4
  %conv730 = sext i32 %370 to i64
  %371 = load i32, i32* %len726, align 4
  %conv731 = sext i32 %371 to i64
  %372 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay729, i64 %conv730, i64 %conv731, i64 %372)
  br label %end_of_list

if.end.732:                                       ; preds = %land.lhs.true.722, %if.then.719
  br label %if.end.749

if.else.733:                                      ; preds = %while.body.715
  %373 = load i64, i64* %i709, align 8
  %cmp734 = icmp ne i64 %373, 0
  br i1 %cmp734, label %if.then.736, label %if.end.748

if.then.736:                                      ; preds = %if.else.733
  %374 = load i64, i64* %obj.addr, align 8
  %375 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 234), align 8
  %call738 = call i64 @builtin_lisp_symbol(i32 0)
  %call739 = call i64 @Fgethash(i64 %374, i64 %375, i64 %call738)
  store i64 %call739, i64* %num737, align 8
  %376 = load i64, i64* %num737, align 8
  %and740 = and i64 %376, 7
  %conv741 = trunc i64 %and740 to i32
  %and742 = and i32 %conv741, -5
  %cmp743 = icmp eq i32 %and742, 2
  br i1 %cmp743, label %if.then.745, label %if.end.747

if.then.745:                                      ; preds = %if.then.736
  %377 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i64 %377)
  %378 = load i64, i64* %obj.addr, align 8
  %379 = load i64, i64* %printcharfun.addr, align 8
  %380 = load i8, i8* %escapeflag.addr, align 1
  %tobool746 = trunc i8 %380 to i1
  call void @print_object(i64 %378, i64 %379, i1 zeroext %tobool746)
  br label %end_of_list

if.end.747:                                       ; preds = %if.then.736
  br label %if.end.748

if.end.748:                                       ; preds = %if.end.747, %if.else.733
  br label %if.end.749

if.end.749:                                       ; preds = %if.end.748, %if.end.732
  %381 = load i64, i64* %i709, align 8
  %tobool750 = icmp ne i64 %381, 0
  br i1 %tobool750, label %if.then.751, label %if.end.752

if.then.751:                                      ; preds = %if.end.749
  %382 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %382)
  br label %if.end.752

if.end.752:                                       ; preds = %if.then.751, %if.end.749
  %383 = load i64, i64* %print_length, align 8
  %384 = load i64, i64* %i709, align 8
  %cmp753 = icmp sle i64 %383, %384
  br i1 %cmp753, label %if.then.755, label %if.end.756

if.then.755:                                      ; preds = %if.end.752
  %385 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i64 %385)
  br label %end_of_list

if.end.756:                                       ; preds = %if.end.752
  %386 = load i64, i64* %i709, align 8
  %inc757 = add nsw i64 %386, 1
  store i64 %inc757, i64* %i709, align 8
  %387 = load i64, i64* %obj.addr, align 8
  %sub758 = sub nsw i64 %387, 3
  %388 = inttoptr i64 %sub758 to i8*
  %389 = bitcast i8* %388 to %struct.Lisp_Cons*
  %car759 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %389, i32 0, i32 0
  %390 = load i64, i64* %car759, align 8
  %391 = load i64, i64* %printcharfun.addr, align 8
  %392 = load i8, i8* %escapeflag.addr, align 1
  %tobool760 = trunc i8 %392 to i1
  call void @print_object(i64 %390, i64 %391, i1 zeroext %tobool760)
  %393 = load i64, i64* %obj.addr, align 8
  %sub761 = sub nsw i64 %393, 3
  %394 = inttoptr i64 %sub761 to i8*
  %395 = bitcast i8* %394 to %struct.Lisp_Cons*
  %u762 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %395, i32 0, i32 1
  %cdr763 = bitcast %union.anon.0* %u762 to i64*
  %396 = load i64, i64* %cdr763, align 8
  store i64 %396, i64* %obj.addr, align 8
  %397 = load i64, i64* %i709, align 8
  %and764 = and i64 %397, 1
  %tobool765 = icmp ne i64 %and764, 0
  br i1 %tobool765, label %if.end.770, label %if.then.766

if.then.766:                                      ; preds = %if.end.756
  %398 = load i64, i64* %halftail, align 8
  %sub767 = sub nsw i64 %398, 3
  %399 = inttoptr i64 %sub767 to i8*
  %400 = bitcast i8* %399 to %struct.Lisp_Cons*
  %u768 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %400, i32 0, i32 1
  %cdr769 = bitcast %union.anon.0* %u768 to i64*
  %401 = load i64, i64* %cdr769, align 8
  store i64 %401, i64* %halftail, align 8
  br label %if.end.770

if.end.770:                                       ; preds = %if.then.766, %if.end.756
  br label %while.cond.710

while.end.771:                                    ; preds = %while.cond.710
  %402 = load i64, i64* %obj.addr, align 8
  %call772 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp773 = icmp eq i64 %402, %call772
  br i1 %cmp773, label %if.end.777, label %if.then.775

if.then.775:                                      ; preds = %while.end.771
  %403 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i64 %403)
  %404 = load i64, i64* %obj.addr, align 8
  %405 = load i64, i64* %printcharfun.addr, align 8
  %406 = load i8, i8* %escapeflag.addr, align 1
  %tobool776 = trunc i8 %406 to i1
  call void @print_object(i64 %404, i64 %405, i1 zeroext %tobool776)
  br label %if.end.777

if.end.777:                                       ; preds = %if.then.775, %while.end.771
  br label %end_of_list

end_of_list:                                      ; preds = %if.end.777, %if.then.755, %if.then.745, %if.then.725
  %407 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 41, i64 %407)
  br label %if.end.778

if.end.778:                                       ; preds = %end_of_list, %if.then.690
  br label %if.end.779

if.end.779:                                       ; preds = %if.end.778, %if.then.641
  br label %if.end.780

if.end.780:                                       ; preds = %if.end.779, %if.then.607
  br label %if.end.781

if.end.781:                                       ; preds = %if.end.780, %if.then.573
  br label %if.end.782

if.end.782:                                       ; preds = %if.end.781, %if.then.548
  br label %sw.epilog.1354

sw.bb.783:                                        ; preds = %if.end.92
  %408 = load i64, i64* %obj.addr, align 8
  %call784 = call zeroext i1 @PROCESSP(i64 %408)
  br i1 %call784, label %if.then.785, label %if.else.794

if.then.785:                                      ; preds = %sw.bb.783
  %409 = load i8, i8* %escapeflag.addr, align 1
  %tobool786 = trunc i8 %409 to i1
  br i1 %tobool786, label %if.then.787, label %if.else.790

if.then.787:                                      ; preds = %if.then.785
  %410 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i64 %410)
  %411 = load i64, i64* %obj.addr, align 8
  %call788 = call %struct.Lisp_Process* @XPROCESS(i64 %411)
  %name789 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call788, i32 0, i32 2
  %412 = load i64, i64* %name789, align 8
  %413 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %412, i64 %413)
  %414 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %414)
  br label %if.end.793

if.else.790:                                      ; preds = %if.then.785
  %415 = load i64, i64* %obj.addr, align 8
  %call791 = call %struct.Lisp_Process* @XPROCESS(i64 %415)
  %name792 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call791, i32 0, i32 2
  %416 = load i64, i64* %name792, align 8
  %417 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %416, i64 %417)
  br label %if.end.793

if.end.793:                                       ; preds = %if.else.790, %if.then.787
  br label %if.end.1171

if.else.794:                                      ; preds = %sw.bb.783
  %418 = load i64, i64* %obj.addr, align 8
  %call795 = call zeroext i1 @BOOL_VECTOR_P(i64 %418)
  br i1 %call795, label %if.then.796, label %if.else.884

if.then.796:                                      ; preds = %if.else.794
  %419 = load i64, i64* %obj.addr, align 8
  %call799 = call i64 @bool_vector_size(i64 %419)
  store i64 %call799, i64* %size, align 8
  %420 = load i64, i64* %size, align 8
  %call800 = call i64 @bool_vector_bytes(i64 %420)
  store i64 %call800, i64* %size_in_chars, align 8
  %421 = load i64, i64* %size_in_chars, align 8
  store i64 %421, i64* %real_size_in_chars, align 8
  %arraydecay802 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %422 = load i64, i64* %size, align 8
  %call803 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay802, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i64 %422) #3
  store i32 %call803, i32* %len801, align 4
  %arraydecay804 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %423 = load i32, i32* %len801, align 4
  %conv805 = sext i32 %423 to i64
  %424 = load i32, i32* %len801, align 4
  %conv806 = sext i32 %424 to i64
  %425 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay804, i64 %conv805, i64 %conv806, i64 %425)
  %426 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %call807 = call zeroext i1 @NATNUMP(i64 %426)
  br i1 %call807, label %land.lhs.true.809, label %if.end.815

land.lhs.true.809:                                ; preds = %if.then.796
  %427 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %shr810 = ashr i64 %427, 2
  %428 = load i64, i64* %size_in_chars, align 8
  %cmp811 = icmp slt i64 %shr810, %428
  br i1 %cmp811, label %if.then.813, label %if.end.815

if.then.813:                                      ; preds = %land.lhs.true.809
  %429 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %shr814 = ashr i64 %429, 2
  store i64 %shr814, i64* %size_in_chars, align 8
  br label %if.end.815

if.end.815:                                       ; preds = %if.then.813, %land.lhs.true.809, %if.then.796
  store i64 0, i64* %i797, align 8
  br label %for.cond.816

for.cond.816:                                     ; preds = %for.inc.877, %if.end.815
  %430 = load i64, i64* %i797, align 8
  %431 = load i64, i64* %size_in_chars, align 8
  %cmp817 = icmp slt i64 %430, %431
  br i1 %cmp817, label %for.body.819, label %for.end.879

for.body.819:                                     ; preds = %for.cond.816
  br label %do.body.820

do.body.820:                                      ; preds = %for.body.819
  %432 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call821 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp822 = icmp eq i64 %432, %call821
  br i1 %cmp822, label %if.else.829, label %land.lhs.true.824

land.lhs.true.824:                                ; preds = %do.body.820
  %433 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call825 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp826 = icmp eq i64 %433, %call825
  br i1 %cmp826, label %if.then.828, label %if.else.829

if.then.828:                                      ; preds = %land.lhs.true.824
  call void @process_quit_flag()
  br label %if.end.833

if.else.829:                                      ; preds = %land.lhs.true.824, %do.body.820
  %434 = load volatile i8, i8* @pending_signals, align 1
  %tobool830 = trunc i8 %434 to i1
  br i1 %tobool830, label %if.then.831, label %if.end.832

if.then.831:                                      ; preds = %if.else.829
  call void @process_pending_signals()
  br label %if.end.832

if.end.832:                                       ; preds = %if.then.831, %if.else.829
  br label %if.end.833

if.end.833:                                       ; preds = %if.end.832, %if.then.828
  br label %do.end.834

do.end.834:                                       ; preds = %if.end.833
  %435 = load i64, i64* %i797, align 8
  %436 = load i64, i64* %obj.addr, align 8
  %call835 = call i8* @bool_vector_uchar_data(i64 %436)
  %arrayidx836 = getelementptr inbounds i8, i8* %call835, i64 %435
  %437 = load i8, i8* %arrayidx836, align 1
  store i8 %437, i8* %c798, align 1
  %438 = load i8, i8* %c798, align 1
  %conv837 = zext i8 %438 to i32
  %cmp838 = icmp eq i32 %conv837, 10
  br i1 %cmp838, label %land.lhs.true.840, label %if.else.844

land.lhs.true.840:                                ; preds = %do.end.834
  %439 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 482), align 1
  %tobool841 = trunc i8 %439 to i1
  br i1 %tobool841, label %if.then.843, label %if.else.844

if.then.843:                                      ; preds = %land.lhs.true.840
  %440 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i64 %440)
  br label %if.end.876

if.else.844:                                      ; preds = %land.lhs.true.840, %do.end.834
  %441 = load i8, i8* %c798, align 1
  %conv845 = zext i8 %441 to i32
  %cmp846 = icmp eq i32 %conv845, 12
  br i1 %cmp846, label %land.lhs.true.848, label %if.else.852

land.lhs.true.848:                                ; preds = %if.else.844
  %442 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 482), align 1
  %tobool849 = trunc i8 %442 to i1
  br i1 %tobool849, label %if.then.851, label %if.else.852

if.then.851:                                      ; preds = %land.lhs.true.848
  %443 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i64 %443)
  br label %if.end.875

if.else.852:                                      ; preds = %land.lhs.true.848, %if.else.844
  %444 = load i8, i8* %c798, align 1
  %conv853 = zext i8 %444 to i32
  %cmp854 = icmp sgt i32 %conv853, 127
  br i1 %cmp854, label %if.then.856, label %if.else.863

if.then.856:                                      ; preds = %if.else.852
  %arraydecay857 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %445 = load i8, i8* %c798, align 1
  %conv858 = zext i8 %445 to i32
  %call859 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay857, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 %conv858) #3
  store i32 %call859, i32* %len801, align 4
  %arraydecay860 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %446 = load i32, i32* %len801, align 4
  %conv861 = sext i32 %446 to i64
  %447 = load i32, i32* %len801, align 4
  %conv862 = sext i32 %447 to i64
  %448 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay860, i64 %conv861, i64 %conv862, i64 %448)
  br label %if.end.874

if.else.863:                                      ; preds = %if.else.852
  %449 = load i8, i8* %c798, align 1
  %conv864 = zext i8 %449 to i32
  %cmp865 = icmp eq i32 %conv864, 34
  br i1 %cmp865, label %if.then.871, label %lor.lhs.false.867

lor.lhs.false.867:                                ; preds = %if.else.863
  %450 = load i8, i8* %c798, align 1
  %conv868 = zext i8 %450 to i32
  %cmp869 = icmp eq i32 %conv868, 92
  br i1 %cmp869, label %if.then.871, label %if.end.872

if.then.871:                                      ; preds = %lor.lhs.false.867, %if.else.863
  %451 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 92, i64 %451)
  br label %if.end.872

if.end.872:                                       ; preds = %if.then.871, %lor.lhs.false.867
  %452 = load i8, i8* %c798, align 1
  %conv873 = zext i8 %452 to i32
  %453 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %conv873, i64 %453)
  br label %if.end.874

if.end.874:                                       ; preds = %if.end.872, %if.then.856
  br label %if.end.875

if.end.875:                                       ; preds = %if.end.874, %if.then.851
  br label %if.end.876

if.end.876:                                       ; preds = %if.end.875, %if.then.843
  br label %for.inc.877

for.inc.877:                                      ; preds = %if.end.876
  %454 = load i64, i64* %i797, align 8
  %inc878 = add nsw i64 %454, 1
  store i64 %inc878, i64* %i797, align 8
  br label %for.cond.816

for.end.879:                                      ; preds = %for.cond.816
  %455 = load i64, i64* %size_in_chars, align 8
  %456 = load i64, i64* %real_size_in_chars, align 8
  %cmp880 = icmp slt i64 %455, %456
  br i1 %cmp880, label %if.then.882, label %if.end.883

if.then.882:                                      ; preds = %for.end.879
  %457 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i64 %457)
  br label %if.end.883

if.end.883:                                       ; preds = %if.then.882, %for.end.879
  %458 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 34, i64 %458)
  br label %if.end.1170

if.else.884:                                      ; preds = %if.else.794
  %459 = load i64, i64* %obj.addr, align 8
  %call885 = call zeroext i1 @SUBRP(i64 %459)
  br i1 %call885, label %if.then.886, label %if.else.888

if.then.886:                                      ; preds = %if.else.884
  %460 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i64 %460)
  %461 = load i64, i64* %obj.addr, align 8
  %call887 = call %struct.Lisp_Subr* @XSUBR(i64 %461)
  %symbol_name = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call887, i32 0, i32 4
  %462 = load i8*, i8** %symbol_name, align 8
  %463 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* %462, i64 %463)
  %464 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %464)
  br label %if.end.1169

if.else.888:                                      ; preds = %if.else.884
  %465 = load i64, i64* %obj.addr, align 8
  %call889 = call zeroext i1 @PSEUDOVECTORP(i64 %465, i32 12)
  br i1 %call889, label %if.then.894, label %lor.lhs.false.891

lor.lhs.false.891:                                ; preds = %if.else.888
  %466 = load i64, i64* %obj.addr, align 8
  %call892 = call zeroext i1 @PSEUDOVECTORP(i64 %466, i32 13)
  br i1 %call892, label %if.then.894, label %if.else.895

if.then.894:                                      ; preds = %lor.lhs.false.891, %if.else.888
  %467 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i64 %467)
  %468 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %468)
  br label %if.end.1168

if.else.895:                                      ; preds = %lor.lhs.false.891
  %469 = load i64, i64* %obj.addr, align 8
  %call896 = call zeroext i1 @WINDOWP(i64 %469)
  br i1 %call896, label %if.then.897, label %if.else.912

if.then.897:                                      ; preds = %if.else.895
  %arraydecay899 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %470 = load i64, i64* %obj.addr, align 8
  %call900 = call %struct.window* @XWINDOW(i64 %470)
  %sequence_number = getelementptr inbounds %struct.window, %struct.window* %call900, i32 0, i32 29
  %471 = load i64, i64* %sequence_number, align 8
  %call901 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay899, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i64 %471) #3
  store i32 %call901, i32* %len898, align 4
  %arraydecay902 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %472 = load i32, i32* %len898, align 4
  %conv903 = sext i32 %472 to i64
  %473 = load i32, i32* %len898, align 4
  %conv904 = sext i32 %473 to i64
  %474 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay902, i64 %conv903, i64 %conv904, i64 %474)
  %475 = load i64, i64* %obj.addr, align 8
  %call905 = call %struct.window* @XWINDOW(i64 %475)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call905, i32 0, i32 10
  %476 = load i64, i64* %contents, align 8
  %call906 = call zeroext i1 @BUFFERP(i64 %476)
  br i1 %call906, label %if.then.907, label %if.end.911

if.then.907:                                      ; preds = %if.then.897
  %477 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i64 %477)
  %478 = load i64, i64* %obj.addr, align 8
  %call908 = call %struct.window* @XWINDOW(i64 %478)
  %contents909 = getelementptr inbounds %struct.window, %struct.window* %call908, i32 0, i32 10
  %479 = load i64, i64* %contents909, align 8
  %call910 = call %struct.buffer* @XBUFFER(i64 %479)
  %name_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call910, i32 0, i32 1
  %480 = load i64, i64* %name_, align 8
  %481 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %480, i64 %481)
  br label %if.end.911

if.end.911:                                       ; preds = %if.then.907, %if.then.897
  %482 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %482)
  br label %if.end.1167

if.else.912:                                      ; preds = %if.else.895
  %483 = load i64, i64* %obj.addr, align 8
  %call913 = call zeroext i1 @TERMINALP(i64 %483)
  br i1 %call913, label %if.then.914, label %if.else.927

if.then.914:                                      ; preds = %if.else.912
  %484 = load i64, i64* %obj.addr, align 8
  %call915 = call %struct.terminal* @XTERMINAL(i64 %484)
  store %struct.terminal* %call915, %struct.terminal** %t, align 8
  %arraydecay917 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %485 = load %struct.terminal*, %struct.terminal** %t, align 8
  %id = getelementptr inbounds %struct.terminal, %struct.terminal* %485, i32 0, i32 6
  %486 = load i32, i32* %id, align 4
  %call918 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay917, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i32 %486) #3
  store i32 %call918, i32* %len916, align 4
  %arraydecay919 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %487 = load i32, i32* %len916, align 4
  %conv920 = sext i32 %487 to i64
  %488 = load i32, i32* %len916, align 4
  %conv921 = sext i32 %488 to i64
  %489 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay919, i64 %conv920, i64 %conv921, i64 %489)
  %490 = load %struct.terminal*, %struct.terminal** %t, align 8
  %name922 = getelementptr inbounds %struct.terminal, %struct.terminal* %490, i32 0, i32 9
  %491 = load i8*, i8** %name922, align 8
  %tobool923 = icmp ne i8* %491, null
  br i1 %tobool923, label %if.then.924, label %if.end.926

if.then.924:                                      ; preds = %if.then.914
  %492 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i64 %492)
  %493 = load %struct.terminal*, %struct.terminal** %t, align 8
  %name925 = getelementptr inbounds %struct.terminal, %struct.terminal* %493, i32 0, i32 9
  %494 = load i8*, i8** %name925, align 8
  %495 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* %494, i64 %495)
  br label %if.end.926

if.end.926:                                       ; preds = %if.then.924, %if.then.914
  %496 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %496)
  br label %if.end.1166

if.else.927:                                      ; preds = %if.else.912
  %497 = load i64, i64* %obj.addr, align 8
  %call928 = call zeroext i1 @HASH_TABLE_P(i64 %497)
  br i1 %call928, label %if.then.929, label %if.else.1004

if.then.929:                                      ; preds = %if.else.927
  %498 = load i64, i64* %obj.addr, align 8
  %call930 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %498)
  store %struct.Lisp_Hash_Table* %call930, %struct.Lisp_Hash_Table** %h, align 8
  %arraydecay934 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %499 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %next = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %499, i32 0, i32 5
  %500 = load i64, i64* %next, align 8
  %call935 = call i64 @ASIZE(i64 %500)
  %call936 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay934, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), i64 %call935) #3
  store i32 %call936, i32* %len933, align 4
  %arraydecay937 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %501 = load i32, i32* %len933, align 4
  %conv938 = sext i32 %501 to i64
  %502 = load i32, i32* %len933, align 4
  %conv939 = sext i32 %502 to i64
  %503 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay937, i64 %conv938, i64 %conv939, i64 %503)
  %504 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %test = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %504, i32 0, i32 10
  %name940 = getelementptr inbounds %struct.hash_table_test, %struct.hash_table_test* %test, i32 0, i32 0
  %505 = load i64, i64* %name940, align 8
  %call941 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp942 = icmp eq i64 %505, %call941
  br i1 %cmp942, label %if.end.948, label %if.then.944

if.then.944:                                      ; preds = %if.then.929
  %506 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i64 %506)
  %507 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %test945 = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %507, i32 0, i32 10
  %name946 = getelementptr inbounds %struct.hash_table_test, %struct.hash_table_test* %test945, i32 0, i32 0
  %508 = load i64, i64* %name946, align 8
  %509 = load i64, i64* %printcharfun.addr, align 8
  %510 = load i8, i8* %escapeflag.addr, align 1
  %tobool947 = trunc i8 %510 to i1
  call void @print_object(i64 %508, i64 %509, i1 zeroext %tobool947)
  br label %if.end.948

if.end.948:                                       ; preds = %if.then.944, %if.then.929
  %511 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %weak = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %511, i32 0, i32 1
  %512 = load i64, i64* %weak, align 8
  %call949 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp950 = icmp eq i64 %512, %call949
  br i1 %cmp950, label %if.end.955, label %if.then.952

if.then.952:                                      ; preds = %if.end.948
  %513 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i64 %513)
  %514 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %weak953 = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %514, i32 0, i32 1
  %515 = load i64, i64* %weak953, align 8
  %516 = load i64, i64* %printcharfun.addr, align 8
  %517 = load i8, i8* %escapeflag.addr, align 1
  %tobool954 = trunc i8 %517 to i1
  call void @print_object(i64 %515, i64 %516, i1 zeroext %tobool954)
  br label %if.end.955

if.end.955:                                       ; preds = %if.then.952, %if.end.948
  %518 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %rehash_size = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %518, i32 0, i32 2
  %519 = load i64, i64* %rehash_size, align 8
  %call956 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp957 = icmp eq i64 %519, %call956
  br i1 %cmp957, label %if.end.962, label %if.then.959

if.then.959:                                      ; preds = %if.end.955
  %520 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i64 %520)
  %521 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %rehash_size960 = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %521, i32 0, i32 2
  %522 = load i64, i64* %rehash_size960, align 8
  %523 = load i64, i64* %printcharfun.addr, align 8
  %524 = load i8, i8* %escapeflag.addr, align 1
  %tobool961 = trunc i8 %524 to i1
  call void @print_object(i64 %522, i64 %523, i1 zeroext %tobool961)
  br label %if.end.962

if.end.962:                                       ; preds = %if.then.959, %if.end.955
  %525 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %rehash_threshold = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %525, i32 0, i32 3
  %526 = load i64, i64* %rehash_threshold, align 8
  %call963 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp964 = icmp eq i64 %526, %call963
  br i1 %cmp964, label %if.end.969, label %if.then.966

if.then.966:                                      ; preds = %if.end.962
  %527 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0), i64 %527)
  %528 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %rehash_threshold967 = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %528, i32 0, i32 3
  %529 = load i64, i64* %rehash_threshold967, align 8
  %530 = load i64, i64* %printcharfun.addr, align 8
  %531 = load i8, i8* %escapeflag.addr, align 1
  %tobool968 = trunc i8 %531 to i1
  call void @print_object(i64 %529, i64 %530, i1 zeroext %tobool968)
  br label %if.end.969

if.end.969:                                       ; preds = %if.then.966, %if.end.962
  %532 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i64 %532)
  %533 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %call970 = call i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %533)
  store i64 %call970, i64* %real_size, align 8
  %534 = load i64, i64* %real_size, align 8
  store i64 %534, i64* %size932, align 8
  %535 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %call971 = call zeroext i1 @NATNUMP(i64 %535)
  br i1 %call971, label %land.lhs.true.973, label %if.end.979

land.lhs.true.973:                                ; preds = %if.end.969
  %536 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %shr974 = ashr i64 %536, 2
  %537 = load i64, i64* %size932, align 8
  %cmp975 = icmp slt i64 %shr974, %537
  br i1 %cmp975, label %if.then.977, label %if.end.979

if.then.977:                                      ; preds = %land.lhs.true.973
  %538 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %shr978 = ashr i64 %538, 2
  store i64 %shr978, i64* %size932, align 8
  br label %if.end.979

if.end.979:                                       ; preds = %if.then.977, %land.lhs.true.973, %if.end.969
  %539 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 40, i64 %539)
  store i64 0, i64* %i931, align 8
  br label %for.cond.980

for.cond.980:                                     ; preds = %for.inc.997, %if.end.979
  %540 = load i64, i64* %i931, align 8
  %541 = load i64, i64* %size932, align 8
  %cmp981 = icmp slt i64 %540, %541
  br i1 %cmp981, label %for.body.983, label %for.end.999

for.body.983:                                     ; preds = %for.cond.980
  %542 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %543 = load i64, i64* %i931, align 8
  %call984 = call i64 @HASH_HASH(%struct.Lisp_Hash_Table* %542, i64 %543)
  %call985 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp986 = icmp eq i64 %call984, %call985
  br i1 %cmp986, label %if.end.996, label %if.then.988

if.then.988:                                      ; preds = %for.body.983
  %544 = load i64, i64* %i931, align 8
  %tobool989 = icmp ne i64 %544, 0
  br i1 %tobool989, label %if.then.990, label %if.end.991

if.then.990:                                      ; preds = %if.then.988
  %545 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %545)
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.990, %if.then.988
  %546 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %547 = load i64, i64* %i931, align 8
  %call992 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %546, i64 %547)
  %548 = load i64, i64* %printcharfun.addr, align 8
  %549 = load i8, i8* %escapeflag.addr, align 1
  %tobool993 = trunc i8 %549 to i1
  call void @print_object(i64 %call992, i64 %548, i1 zeroext %tobool993)
  %550 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %550)
  %551 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h, align 8
  %552 = load i64, i64* %i931, align 8
  %call994 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %551, i64 %552)
  %553 = load i64, i64* %printcharfun.addr, align 8
  %554 = load i8, i8* %escapeflag.addr, align 1
  %tobool995 = trunc i8 %554 to i1
  call void @print_object(i64 %call994, i64 %553, i1 zeroext %tobool995)
  br label %if.end.996

if.end.996:                                       ; preds = %if.end.991, %for.body.983
  br label %for.inc.997

for.inc.997:                                      ; preds = %if.end.996
  %555 = load i64, i64* %i931, align 8
  %inc998 = add nsw i64 %555, 1
  store i64 %inc998, i64* %i931, align 8
  br label %for.cond.980

for.end.999:                                      ; preds = %for.cond.980
  %556 = load i64, i64* %size932, align 8
  %557 = load i64, i64* %real_size, align 8
  %cmp1000 = icmp slt i64 %556, %557
  br i1 %cmp1000, label %if.then.1002, label %if.end.1003

if.then.1002:                                     ; preds = %for.end.999
  %558 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i64 %558)
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.then.1002, %for.end.999
  %559 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i64 %559)
  br label %if.end.1165

if.else.1004:                                     ; preds = %if.else.927
  %560 = load i64, i64* %obj.addr, align 8
  %call1005 = call zeroext i1 @BUFFERP(i64 %560)
  br i1 %call1005, label %if.then.1006, label %if.else.1023

if.then.1006:                                     ; preds = %if.else.1004
  %561 = load i64, i64* %obj.addr, align 8
  %call1007 = call %struct.buffer* @XBUFFER(i64 %561)
  %name_1008 = getelementptr inbounds %struct.buffer, %struct.buffer* %call1007, i32 0, i32 1
  %562 = load i64, i64* %name_1008, align 8
  %call1009 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1010 = icmp eq i64 %562, %call1009
  br i1 %cmp1010, label %if.then.1012, label %if.else.1013

if.then.1012:                                     ; preds = %if.then.1006
  %563 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i64 %563)
  br label %if.end.1022

if.else.1013:                                     ; preds = %if.then.1006
  %564 = load i8, i8* %escapeflag.addr, align 1
  %tobool1014 = trunc i8 %564 to i1
  br i1 %tobool1014, label %if.then.1015, label %if.else.1018

if.then.1015:                                     ; preds = %if.else.1013
  %565 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i64 %565)
  %566 = load i64, i64* %obj.addr, align 8
  %call1016 = call %struct.buffer* @XBUFFER(i64 %566)
  %name_1017 = getelementptr inbounds %struct.buffer, %struct.buffer* %call1016, i32 0, i32 1
  %567 = load i64, i64* %name_1017, align 8
  %568 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %567, i64 %568)
  %569 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %569)
  br label %if.end.1021

if.else.1018:                                     ; preds = %if.else.1013
  %570 = load i64, i64* %obj.addr, align 8
  %call1019 = call %struct.buffer* @XBUFFER(i64 %570)
  %name_1020 = getelementptr inbounds %struct.buffer, %struct.buffer* %call1019, i32 0, i32 1
  %571 = load i64, i64* %name_1020, align 8
  %572 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %571, i64 %572)
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.else.1018, %if.then.1015
  br label %if.end.1022

if.end.1022:                                      ; preds = %if.end.1021, %if.then.1012
  br label %if.end.1164

if.else.1023:                                     ; preds = %if.else.1004
  %573 = load i64, i64* %obj.addr, align 8
  %call1024 = call zeroext i1 @WINDOW_CONFIGURATIONP(i64 %573)
  br i1 %call1024, label %if.then.1025, label %if.else.1026

if.then.1025:                                     ; preds = %if.else.1023
  %574 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i32 0, i32 0), i64 %574)
  br label %if.end.1163

if.else.1026:                                     ; preds = %if.else.1023
  %575 = load i64, i64* %obj.addr, align 8
  %call1027 = call zeroext i1 @FRAMEP(i64 %575)
  br i1 %call1027, label %if.then.1028, label %if.else.1054

if.then.1028:                                     ; preds = %if.else.1026
  %576 = load i64, i64* %obj.addr, align 8
  %sub1030 = sub nsw i64 %576, 5
  %577 = inttoptr i64 %sub1030 to i8*
  %578 = bitcast i8* %577 to %struct.frame*
  %579 = bitcast %struct.frame* %578 to i8*
  store i8* %579, i8** %ptr, align 8
  %580 = load i64, i64* %obj.addr, align 8
  %sub1031 = sub nsw i64 %580, 5
  %581 = inttoptr i64 %sub1031 to i8*
  %582 = bitcast i8* %581 to %struct.frame*
  %name1032 = getelementptr inbounds %struct.frame, %struct.frame* %582, i32 0, i32 1
  %583 = load i64, i64* %name1032, align 8
  store i64 %583, i64* %frame_name, align 8
  %584 = load i64, i64* %obj.addr, align 8
  %sub1033 = sub nsw i64 %584, 5
  %585 = inttoptr i64 %sub1033 to i8*
  %586 = bitcast i8* %585 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %586, i32 0, i32 61
  %587 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp1034 = icmp ne %struct.terminal* %587, null
  %cond1036 = select i1 %cmp1034, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0)
  %588 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* %cond1036, i64 %588)
  %589 = load i64, i64* %frame_name, align 8
  %call1037 = call zeroext i1 @STRINGP(i64 %589)
  br i1 %call1037, label %if.end.1048, label %if.then.1038

if.then.1038:                                     ; preds = %if.then.1028
  %590 = load i64, i64* %frame_name, align 8
  %and1039 = and i64 %590, 7
  %conv1040 = trunc i64 %and1039 to i32
  %cmp1041 = icmp eq i32 %conv1040, 0
  br i1 %cmp1041, label %if.then.1043, label %if.else.1045

if.then.1043:                                     ; preds = %if.then.1038
  %591 = load i64, i64* %frame_name, align 8
  %call1044 = call i64 @Fsymbol_name(i64 %591)
  store i64 %call1044, i64* %frame_name, align 8
  br label %if.end.1047

if.else.1045:                                     ; preds = %if.then.1038
  %call1046 = call i64 @build_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0))
  store i64 %call1046, i64* %frame_name, align 8
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.else.1045, %if.then.1043
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.end.1047, %if.then.1028
  %592 = load i64, i64* %frame_name, align 8
  %593 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %592, i64 %593)
  %arraydecay1049 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %594 = load i8*, i8** %ptr, align 8
  %call1050 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1049, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* %594) #3
  store i32 %call1050, i32* %len1029, align 4
  %arraydecay1051 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %595 = load i32, i32* %len1029, align 4
  %conv1052 = sext i32 %595 to i64
  %596 = load i32, i32* %len1029, align 4
  %conv1053 = sext i32 %596 to i64
  %597 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay1051, i64 %conv1052, i64 %conv1053, i64 %597)
  br label %if.end.1162

if.else.1054:                                     ; preds = %if.else.1026
  %598 = load i64, i64* %obj.addr, align 8
  %call1055 = call zeroext i1 @FONTP(i64 %598)
  br i1 %call1055, label %if.then.1056, label %if.else.1088

if.then.1056:                                     ; preds = %if.else.1054
  %599 = load i64, i64* %obj.addr, align 8
  %call1058 = call zeroext i1 @FONT_OBJECT_P(i64 %599)
  br i1 %call1058, label %if.else.1084, label %if.then.1059

if.then.1059:                                     ; preds = %if.then.1056
  %600 = load i64, i64* %obj.addr, align 8
  %call1060 = call zeroext i1 @FONT_SPEC_P(i64 %600)
  br i1 %call1060, label %if.then.1061, label %if.else.1062

if.then.1061:                                     ; preds = %if.then.1059
  %601 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i64 %601)
  br label %if.end.1063

if.else.1062:                                     ; preds = %if.then.1059
  %602 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0), i64 %602)
  br label %if.end.1063

if.end.1063:                                      ; preds = %if.else.1062, %if.then.1061
  store i32 0, i32* %i1057, align 4
  br label %for.cond.1064

for.cond.1064:                                    ; preds = %for.inc.1081, %if.end.1063
  %603 = load i32, i32* %i1057, align 4
  %cmp1065 = icmp slt i32 %603, 13
  br i1 %cmp1065, label %for.body.1067, label %for.end.1083

for.body.1067:                                    ; preds = %for.cond.1064
  %604 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %604)
  %605 = load i32, i32* %i1057, align 4
  %cmp1068 = icmp slt i32 %605, 5
  br i1 %cmp1068, label %if.then.1073, label %lor.lhs.false.1070

lor.lhs.false.1070:                               ; preds = %for.body.1067
  %606 = load i32, i32* %i1057, align 4
  %cmp1071 = icmp sgt i32 %606, 7
  br i1 %cmp1071, label %if.then.1073, label %if.else.1077

if.then.1073:                                     ; preds = %lor.lhs.false.1070, %for.body.1067
  %607 = load i64, i64* %obj.addr, align 8
  %608 = load i32, i32* %i1057, align 4
  %conv1074 = sext i32 %608 to i64
  %call1075 = call i64 @AREF(i64 %607, i64 %conv1074)
  %609 = load i64, i64* %printcharfun.addr, align 8
  %610 = load i8, i8* %escapeflag.addr, align 1
  %tobool1076 = trunc i8 %610 to i1
  call void @print_object(i64 %call1075, i64 %609, i1 zeroext %tobool1076)
  br label %if.end.1080

if.else.1077:                                     ; preds = %lor.lhs.false.1070
  %611 = load i64, i64* %obj.addr, align 8
  %612 = load i32, i32* %i1057, align 4
  %call1078 = call i64 @font_style_symbolic(i64 %611, i32 %612, i1 zeroext false)
  %613 = load i64, i64* %printcharfun.addr, align 8
  %614 = load i8, i8* %escapeflag.addr, align 1
  %tobool1079 = trunc i8 %614 to i1
  call void @print_object(i64 %call1078, i64 %613, i1 zeroext %tobool1079)
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.else.1077, %if.then.1073
  br label %for.inc.1081

for.inc.1081:                                     ; preds = %if.end.1080
  %615 = load i32, i32* %i1057, align 4
  %inc1082 = add nsw i32 %615, 1
  store i32 %inc1082, i32* %i1057, align 4
  br label %for.cond.1064

for.end.1083:                                     ; preds = %for.cond.1064
  br label %if.end.1087

if.else.1084:                                     ; preds = %if.then.1056
  %616 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i64 %616)
  %617 = load i64, i64* %obj.addr, align 8
  %call1085 = call i64 @AREF(i64 %617, i64 14)
  %618 = load i64, i64* %printcharfun.addr, align 8
  %619 = load i8, i8* %escapeflag.addr, align 1
  %tobool1086 = trunc i8 %619 to i1
  call void @print_object(i64 %call1085, i64 %618, i1 zeroext %tobool1086)
  br label %if.end.1087

if.end.1087:                                      ; preds = %if.else.1084, %for.end.1083
  %620 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %620)
  br label %if.end.1161

if.else.1088:                                     ; preds = %if.else.1054
  %621 = load i64, i64* %obj.addr, align 8
  %call1090 = call i64 @ASIZE(i64 %621)
  store i64 %call1090, i64* %size1089, align 8
  %622 = load i64, i64* %obj.addr, align 8
  %call1091 = call zeroext i1 @COMPILEDP(i64 %622)
  br i1 %call1091, label %if.then.1092, label %if.end.1094

if.then.1092:                                     ; preds = %if.else.1088
  %623 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 35, i64 %623)
  %624 = load i64, i64* %size1089, align 8
  %and1093 = and i64 %624, 4095
  store i64 %and1093, i64* %size1089, align 8
  br label %if.end.1094

if.end.1094:                                      ; preds = %if.then.1092, %if.else.1088
  %625 = load i64, i64* %obj.addr, align 8
  %call1095 = call zeroext i1 @CHAR_TABLE_P(i64 %625)
  br i1 %call1095, label %if.then.1100, label %lor.lhs.false.1097

lor.lhs.false.1097:                               ; preds = %if.end.1094
  %626 = load i64, i64* %obj.addr, align 8
  %call1098 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %626)
  br i1 %call1098, label %if.then.1100, label %if.end.1113

if.then.1100:                                     ; preds = %lor.lhs.false.1097, %if.end.1094
  %627 = load i64, i64* %obj.addr, align 8
  %call1101 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %627)
  br i1 %call1101, label %land.lhs.true.1103, label %if.end.1108

land.lhs.true.1103:                               ; preds = %if.then.1100
  %628 = load i64, i64* %obj.addr, align 8
  %call1104 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %628)
  %depth = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call1104, i32 0, i32 1
  %629 = load i32, i32* %depth, align 4
  %cmp1105 = icmp eq i32 %629, 3
  br i1 %cmp1105, label %if.then.1107, label %if.end.1108

if.then.1107:                                     ; preds = %land.lhs.true.1103
  %630 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 10, i64 %630)
  br label %if.end.1108

if.end.1108:                                      ; preds = %if.then.1107, %land.lhs.true.1103, %if.then.1100
  %631 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i64 %631)
  %632 = load i64, i64* %obj.addr, align 8
  %call1109 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %632)
  br i1 %call1109, label %if.then.1110, label %if.end.1111

if.then.1110:                                     ; preds = %if.end.1108
  %633 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 94, i64 %633)
  br label %if.end.1111

if.end.1111:                                      ; preds = %if.then.1110, %if.end.1108
  %634 = load i64, i64* %size1089, align 8
  %and1112 = and i64 %634, 4095
  store i64 %and1112, i64* %size1089, align 8
  br label %if.end.1113

if.end.1113:                                      ; preds = %if.end.1111, %lor.lhs.false.1097
  %635 = load i64, i64* %size1089, align 8
  %and1114 = and i64 %635, 4611686018427387904
  %tobool1115 = icmp ne i64 %and1114, 0
  br i1 %tobool1115, label %if.then.1116, label %if.end.1117

if.then.1116:                                     ; preds = %if.end.1113
  br label %badtype

if.end.1117:                                      ; preds = %if.end.1113
  %636 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 91, i64 %636)
  %637 = load i64, i64* %obj.addr, align 8
  %call1119 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %637)
  %cond1121 = select i1 %call1119, i32 1, i32 0
  store i32 %cond1121, i32* %idx, align 4
  %638 = load i64, i64* %size1089, align 8
  store i64 %638, i64* %real_size1122, align 8
  %639 = load i64, i64* %obj.addr, align 8
  %call1123 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %639)
  br i1 %call1123, label %if.then.1124, label %if.end.1133

if.then.1124:                                     ; preds = %if.end.1117
  %arraydecay1125 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %640 = load i64, i64* %obj.addr, align 8
  %call1126 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %640)
  %depth1127 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call1126, i32 0, i32 1
  %641 = load i32, i32* %depth1127, align 4
  %642 = load i64, i64* %obj.addr, align 8
  %call1128 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %642)
  %min_char = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call1128, i32 0, i32 2
  %643 = load i32, i32* %min_char, align 4
  %call1129 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 %641, i32 %643) #3
  store i32 %call1129, i32* %i1118, align 4
  %arraydecay1130 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %644 = load i32, i32* %i1118, align 4
  %conv1131 = sext i32 %644 to i64
  %645 = load i32, i32* %i1118, align 4
  %conv1132 = sext i32 %645 to i64
  %646 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay1130, i64 %conv1131, i64 %conv1132, i64 %646)
  br label %if.end.1133

if.end.1133:                                      ; preds = %if.then.1124, %if.end.1117
  %647 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %call1134 = call zeroext i1 @NATNUMP(i64 %647)
  br i1 %call1134, label %land.lhs.true.1136, label %if.end.1142

land.lhs.true.1136:                               ; preds = %if.end.1133
  %648 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %shr1137 = ashr i64 %648, 2
  %649 = load i64, i64* %size1089, align 8
  %cmp1138 = icmp slt i64 %shr1137, %649
  br i1 %cmp1138, label %if.then.1140, label %if.end.1142

if.then.1140:                                     ; preds = %land.lhs.true.1136
  %650 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 232), align 8
  %shr1141 = ashr i64 %650, 2
  store i64 %shr1141, i64* %size1089, align 8
  br label %if.end.1142

if.end.1142:                                      ; preds = %if.then.1140, %land.lhs.true.1136, %if.end.1133
  %651 = load i32, i32* %idx, align 4
  store i32 %651, i32* %i1118, align 4
  br label %for.cond.1143

for.cond.1143:                                    ; preds = %for.inc.1154, %if.end.1142
  %652 = load i32, i32* %i1118, align 4
  %conv1144 = sext i32 %652 to i64
  %653 = load i64, i64* %size1089, align 8
  %cmp1145 = icmp slt i64 %conv1144, %653
  br i1 %cmp1145, label %for.body.1147, label %for.end.1156

for.body.1147:                                    ; preds = %for.cond.1143
  %654 = load i32, i32* %i1118, align 4
  %tobool1148 = icmp ne i32 %654, 0
  br i1 %tobool1148, label %if.then.1149, label %if.end.1150

if.then.1149:                                     ; preds = %for.body.1147
  %655 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %655)
  br label %if.end.1150

if.end.1150:                                      ; preds = %if.then.1149, %for.body.1147
  %656 = load i64, i64* %obj.addr, align 8
  %657 = load i32, i32* %i1118, align 4
  %conv1151 = sext i32 %657 to i64
  %call1152 = call i64 @AREF(i64 %656, i64 %conv1151)
  store i64 %call1152, i64* %tem, align 8
  %658 = load i64, i64* %tem, align 8
  %659 = load i64, i64* %printcharfun.addr, align 8
  %660 = load i8, i8* %escapeflag.addr, align 1
  %tobool1153 = trunc i8 %660 to i1
  call void @print_object(i64 %658, i64 %659, i1 zeroext %tobool1153)
  br label %for.inc.1154

for.inc.1154:                                     ; preds = %if.end.1150
  %661 = load i32, i32* %i1118, align 4
  %inc1155 = add nsw i32 %661, 1
  store i32 %inc1155, i32* %i1118, align 4
  br label %for.cond.1143

for.end.1156:                                     ; preds = %for.cond.1143
  %662 = load i64, i64* %size1089, align 8
  %663 = load i64, i64* %real_size1122, align 8
  %cmp1157 = icmp slt i64 %662, %663
  br i1 %cmp1157, label %if.then.1159, label %if.end.1160

if.then.1159:                                     ; preds = %for.end.1156
  %664 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i64 %664)
  br label %if.end.1160

if.end.1160:                                      ; preds = %if.then.1159, %for.end.1156
  %665 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 93, i64 %665)
  br label %if.end.1161

if.end.1161:                                      ; preds = %if.end.1160, %if.end.1087
  br label %if.end.1162

if.end.1162:                                      ; preds = %if.end.1161, %if.end.1048
  br label %if.end.1163

if.end.1163:                                      ; preds = %if.end.1162, %if.then.1025
  br label %if.end.1164

if.end.1164:                                      ; preds = %if.end.1163, %if.end.1022
  br label %if.end.1165

if.end.1165:                                      ; preds = %if.end.1164, %if.end.1003
  br label %if.end.1166

if.end.1166:                                      ; preds = %if.end.1165, %if.end.926
  br label %if.end.1167

if.end.1167:                                      ; preds = %if.end.1166, %if.end.911
  br label %if.end.1168

if.end.1168:                                      ; preds = %if.end.1167, %if.then.894
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.end.1168, %if.then.886
  br label %if.end.1170

if.end.1170:                                      ; preds = %if.end.1169, %if.end.883
  br label %if.end.1171

if.end.1171:                                      ; preds = %if.end.1170, %if.end.793
  br label %sw.epilog.1354

sw.bb.1172:                                       ; preds = %if.end.92
  %666 = load i64, i64* %obj.addr, align 8
  %call1173 = call i32 @XMISCTYPE(i64 %666)
  switch i32 %call1173, label %sw.default.1323 [
    i32 24236, label %sw.bb.1174
    i32 24237, label %sw.bb.1196
    i32 24239, label %sw.bb.1221
    i32 24235, label %sw.bb.1228
    i32 24238, label %sw.bb.1229
  ]

sw.bb.1174:                                       ; preds = %sw.bb.1172
  %667 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i64 %667)
  %668 = load i64, i64* %obj.addr, align 8
  %call1175 = call %struct.Lisp_Marker* @XMARKER(i64 %668)
  %669 = bitcast %struct.Lisp_Marker* %call1175 to i32*
  %bf.load = load i32, i32* %669, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %bf.cast = trunc i32 %bf.lshr to i1
  %conv1176 = zext i1 %bf.cast to i32
  %cmp1177 = icmp ne i32 %conv1176, 0
  br i1 %cmp1177, label %if.then.1179, label %if.end.1180

if.then.1179:                                     ; preds = %sw.bb.1174
  %670 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i32 0, i32 0), i64 %670)
  br label %if.end.1180

if.end.1180:                                      ; preds = %if.then.1179, %sw.bb.1174
  %671 = load i64, i64* %obj.addr, align 8
  %call1181 = call %struct.Lisp_Marker* @XMARKER(i64 %671)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call1181, i32 0, i32 1
  %672 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %tobool1182 = icmp ne %struct.buffer* %672, null
  br i1 %tobool1182, label %if.else.1184, label %if.then.1183

if.then.1183:                                     ; preds = %if.end.1180
  %673 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i64 %673)
  br label %if.end.1195

if.else.1184:                                     ; preds = %if.end.1180
  %arraydecay1186 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %674 = load i64, i64* %obj.addr, align 8
  %call1187 = call i64 @marker_position(i64 %674)
  %call1188 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i64 %call1187) #3
  store i32 %call1188, i32* %len1185, align 4
  %arraydecay1189 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %675 = load i32, i32* %len1185, align 4
  %conv1190 = sext i32 %675 to i64
  %676 = load i32, i32* %len1185, align 4
  %conv1191 = sext i32 %676 to i64
  %677 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay1189, i64 %conv1190, i64 %conv1191, i64 %677)
  %678 = load i64, i64* %obj.addr, align 8
  %call1192 = call %struct.Lisp_Marker* @XMARKER(i64 %678)
  %buffer1193 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call1192, i32 0, i32 1
  %679 = load %struct.buffer*, %struct.buffer** %buffer1193, align 8
  %name_1194 = getelementptr inbounds %struct.buffer, %struct.buffer* %679, i32 0, i32 1
  %680 = load i64, i64* %name_1194, align 8
  %681 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %680, i64 %681)
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.else.1184, %if.then.1183
  %682 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %682)
  br label %sw.epilog.1324

sw.bb.1196:                                       ; preds = %sw.bb.1172
  %683 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i64 %683)
  %684 = load i64, i64* %obj.addr, align 8
  %call1197 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %684)
  %start = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call1197, i32 0, i32 2
  %685 = load i64, i64* %start, align 8
  %call1198 = call %struct.Lisp_Marker* @XMARKER(i64 %685)
  %buffer1199 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call1198, i32 0, i32 1
  %686 = load %struct.buffer*, %struct.buffer** %buffer1199, align 8
  %tobool1200 = icmp ne %struct.buffer* %686, null
  br i1 %tobool1200, label %if.else.1202, label %if.then.1201

if.then.1201:                                     ; preds = %sw.bb.1196
  %687 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i64 %687)
  br label %if.end.1220

if.else.1202:                                     ; preds = %sw.bb.1196
  %arraydecay1204 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %688 = load i64, i64* %obj.addr, align 8
  %call1205 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %688)
  %start1206 = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call1205, i32 0, i32 2
  %689 = load i64, i64* %start1206, align 8
  %call1207 = call i64 @marker_position(i64 %689)
  %690 = load i64, i64* %obj.addr, align 8
  %call1208 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %690)
  %end1209 = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call1208, i32 0, i32 3
  %691 = load i64, i64* %end1209, align 8
  %call1210 = call i64 @marker_position(i64 %691)
  %call1211 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0), i64 %call1207, i64 %call1210) #3
  store i32 %call1211, i32* %len1203, align 4
  %arraydecay1212 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %692 = load i32, i32* %len1203, align 4
  %conv1213 = sext i32 %692 to i64
  %693 = load i32, i32* %len1203, align 4
  %conv1214 = sext i32 %693 to i64
  %694 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay1212, i64 %conv1213, i64 %conv1214, i64 %694)
  %695 = load i64, i64* %obj.addr, align 8
  %call1215 = call %struct.Lisp_Overlay* @XOVERLAY(i64 %695)
  %start1216 = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call1215, i32 0, i32 2
  %696 = load i64, i64* %start1216, align 8
  %call1217 = call %struct.Lisp_Marker* @XMARKER(i64 %696)
  %buffer1218 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call1217, i32 0, i32 1
  %697 = load %struct.buffer*, %struct.buffer** %buffer1218, align 8
  %name_1219 = getelementptr inbounds %struct.buffer, %struct.buffer* %697, i32 0, i32 1
  %698 = load i64, i64* %name_1219, align 8
  %699 = load i64, i64* %printcharfun.addr, align 8
  call void @print_string(i64 %698, i64 %699)
  br label %if.end.1220

if.end.1220:                                      ; preds = %if.else.1202, %if.then.1201
  %700 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %700)
  br label %sw.epilog.1324

sw.bb.1221:                                       ; preds = %sw.bb.1172
  %701 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i64 %701)
  %702 = load i64, i64* %obj.addr, align 8
  %call1222 = call %struct.Lisp_Finalizer* @XFINALIZER(i64 %702)
  %function = getelementptr inbounds %struct.Lisp_Finalizer, %struct.Lisp_Finalizer* %call1222, i32 0, i32 3
  %703 = load i64, i64* %function, align 8
  %call1223 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1224 = icmp eq i64 %703, %call1223
  br i1 %cmp1224, label %if.then.1226, label %if.end.1227

if.then.1226:                                     ; preds = %sw.bb.1221
  %704 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i64 %704)
  br label %if.end.1227

if.end.1227:                                      ; preds = %if.then.1226, %sw.bb.1221
  %705 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %705)
  br label %sw.epilog.1324

sw.bb.1228:                                       ; preds = %sw.bb.1172
  %706 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), i64 %706)
  br label %sw.epilog.1324

sw.bb.1229:                                       ; preds = %sw.bb.1172
  %707 = load i64, i64* %obj.addr, align 8
  %call1231 = call %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %707)
  store %struct.Lisp_Save_Value* %call1231, %struct.Lisp_Save_Value** %v, align 8
  %708 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i64 %708)
  %709 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %710 = bitcast %struct.Lisp_Save_Value* %709 to i32*
  %bf.load1232 = load i32, i32* %710, align 8
  %bf.lshr1233 = lshr i32 %bf.load1232, 19
  %cmp1234 = icmp eq i32 %bf.lshr1233, 4107
  br i1 %cmp1234, label %if.then.1236, label %if.else.1279

if.then.1236:                                     ; preds = %sw.bb.1229
  %711 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %data = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %711, i32 0, i32 1
  %arrayidx1237 = getelementptr inbounds [4 x %union.anon.14], [4 x %union.anon.14]* %data, i32 0, i64 1
  %integer = bitcast %union.anon.14* %arrayidx1237 to i64*
  %712 = load i64, i64* %integer, align 8
  store i64 %712, i64* %amount, align 8
  %713 = load i64, i64* %amount, align 8
  %cmp1238 = icmp slt i64 %713, 8
  br i1 %cmp1238, label %cond.true.1240, label %cond.false.1241

cond.true.1240:                                   ; preds = %if.then.1236
  %714 = load i64, i64* %amount, align 8
  br label %cond.end.1242

cond.false.1241:                                  ; preds = %if.then.1236
  br label %cond.end.1242

cond.end.1242:                                    ; preds = %cond.false.1241, %cond.true.1240
  %cond1243 = phi i64 [ %714, %cond.true.1240 ], [ 8, %cond.false.1241 ]
  %conv1244 = trunc i64 %cond1243 to i32
  store i32 %conv1244, i32* %limit, align 4
  %715 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %data1245 = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %715, i32 0, i32 1
  %arrayidx1246 = getelementptr inbounds [4 x %union.anon.14], [4 x %union.anon.14]* %data1245, i32 0, i64 0
  %pointer = bitcast %union.anon.14* %arrayidx1246 to i8**
  %716 = load i8*, i8** %pointer, align 8
  %717 = bitcast i8* %716 to i64*
  store i64* %717, i64** %area, align 8
  %arraydecay1247 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %718 = load i64, i64* %amount, align 8
  %call1248 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i64 %718) #3
  store i32 %call1248, i32* %i1230, align 4
  %arraydecay1249 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %719 = load i32, i32* %i1230, align 4
  %conv1250 = sext i32 %719 to i64
  %720 = load i32, i32* %i1230, align 4
  %conv1251 = sext i32 %720 to i64
  %721 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay1249, i64 %conv1250, i64 %conv1251, i64 %721)
  store i32 0, i32* %i1230, align 4
  br label %for.cond.1252

for.cond.1252:                                    ; preds = %for.inc.1268, %cond.end.1242
  %722 = load i32, i32* %i1230, align 4
  %723 = load i32, i32* %limit, align 4
  %cmp1253 = icmp slt i32 %722, %723
  br i1 %cmp1253, label %for.body.1255, label %for.end.1270

for.body.1255:                                    ; preds = %for.cond.1252
  %724 = load i32, i32* %i1230, align 4
  %idxprom1256 = sext i32 %724 to i64
  %725 = load i64*, i64** %area, align 8
  %arrayidx1257 = getelementptr inbounds i64, i64* %725, i64 %idxprom1256
  %726 = load i64, i64* %arrayidx1257, align 8
  store i64 %726, i64* %maybe, align 8
  %727 = load i64, i64* %maybe, align 8
  %call1258 = call i32 @valid_lisp_object_p(i64 %727)
  store i32 %call1258, i32* %valid, align 4
  %728 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %728)
  %729 = load i32, i32* %valid, align 4
  %cmp1259 = icmp slt i32 0, %729
  br i1 %cmp1259, label %if.then.1261, label %if.else.1263

if.then.1261:                                     ; preds = %for.body.1255
  %730 = load i64, i64* %maybe, align 8
  %731 = load i64, i64* %printcharfun.addr, align 8
  %732 = load i8, i8* %escapeflag.addr, align 1
  %tobool1262 = trunc i8 %732 to i1
  call void @print_object(i64 %730, i64 %731, i1 zeroext %tobool1262)
  br label %if.end.1267

if.else.1263:                                     ; preds = %for.body.1255
  %733 = load i32, i32* %valid, align 4
  %cmp1264 = icmp slt i32 %733, 0
  %cond1266 = select i1 %cmp1264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0)
  %734 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* %cond1266, i64 %734)
  br label %if.end.1267

if.end.1267:                                      ; preds = %if.else.1263, %if.then.1261
  br label %for.inc.1268

for.inc.1268:                                     ; preds = %if.end.1267
  %735 = load i32, i32* %i1230, align 4
  %inc1269 = add nsw i32 %735, 1
  store i32 %inc1269, i32* %i1230, align 4
  br label %for.cond.1252

for.end.1270:                                     ; preds = %for.cond.1252
  %736 = load i32, i32* %i1230, align 4
  %737 = load i32, i32* %limit, align 4
  %cmp1271 = icmp eq i32 %736, %737
  br i1 %cmp1271, label %land.lhs.true.1273, label %if.end.1278

land.lhs.true.1273:                               ; preds = %for.end.1270
  %738 = load i32, i32* %i1230, align 4
  %conv1274 = sext i32 %738 to i64
  %739 = load i64, i64* %amount, align 8
  %cmp1275 = icmp slt i64 %conv1274, %739
  br i1 %cmp1275, label %if.then.1277, label %if.end.1278

if.then.1277:                                     ; preds = %land.lhs.true.1273
  %740 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i64 %740)
  br label %if.end.1278

if.end.1278:                                      ; preds = %if.then.1277, %land.lhs.true.1273, %for.end.1270
  br label %if.end.1322

if.else.1279:                                     ; preds = %sw.bb.1229
  store i32 0, i32* %index, align 4
  br label %for.cond.1280

for.cond.1280:                                    ; preds = %for.inc.1319, %if.else.1279
  %741 = load i32, i32* %index, align 4
  %cmp1281 = icmp slt i32 %741, 4
  br i1 %cmp1281, label %for.body.1283, label %for.end.1321

for.body.1283:                                    ; preds = %for.cond.1280
  %742 = load i32, i32* %index, align 4
  %tobool1284 = icmp ne i32 %742, 0
  br i1 %tobool1284, label %if.then.1285, label %if.end.1286

if.then.1285:                                     ; preds = %for.body.1283
  %743 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %743)
  br label %if.end.1286

if.end.1286:                                      ; preds = %if.then.1285, %for.body.1283
  %744 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %745 = load i32, i32* %index, align 4
  %call1287 = call i32 @save_type(%struct.Lisp_Save_Value* %744, i32 %745)
  switch i32 %call1287, label %sw.default [
    i32 0, label %sw.bb.1288
    i32 3, label %sw.bb.1291
    i32 2, label %sw.bb.1298
    i32 1, label %sw.bb.1304
    i32 4, label %sw.bb.1311
  ]

sw.bb.1288:                                       ; preds = %if.end.1286
  %arraydecay1289 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %call1290 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0)) #3
  store i32 %call1290, i32* %i1230, align 4
  br label %sw.epilog

sw.bb.1291:                                       ; preds = %if.end.1286
  %arraydecay1292 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %746 = load i32, i32* %index, align 4
  %idxprom1293 = sext i32 %746 to i64
  %747 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %data1294 = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %747, i32 0, i32 1
  %arrayidx1295 = getelementptr inbounds [4 x %union.anon.14], [4 x %union.anon.14]* %data1294, i32 0, i64 %idxprom1293
  %pointer1296 = bitcast %union.anon.14* %arrayidx1295 to i8**
  %748 = load i8*, i8** %pointer1296, align 8
  %call1297 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i8* %748) #3
  store i32 %call1297, i32* %i1230, align 4
  br label %sw.epilog

sw.bb.1298:                                       ; preds = %if.end.1286
  %arraydecay1299 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %749 = load i32, i32* %index, align 4
  %idxprom1300 = sext i32 %749 to i64
  %750 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %data1301 = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %750, i32 0, i32 1
  %arrayidx1302 = getelementptr inbounds [4 x %union.anon.14], [4 x %union.anon.14]* %data1301, i32 0, i64 %idxprom1300
  %funcpointer = bitcast %union.anon.14* %arrayidx1302 to void ()**
  %751 = load void ()*, void ()** %funcpointer, align 8
  %752 = ptrtoint void ()* %751 to i64
  %753 = inttoptr i64 %752 to i8*
  %call1303 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1299, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* %753) #3
  store i32 %call1303, i32* %i1230, align 4
  br label %sw.epilog

sw.bb.1304:                                       ; preds = %if.end.1286
  %arraydecay1305 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %754 = load i32, i32* %index, align 4
  %idxprom1306 = sext i32 %754 to i64
  %755 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %data1307 = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %755, i32 0, i32 1
  %arrayidx1308 = getelementptr inbounds [4 x %union.anon.14], [4 x %union.anon.14]* %data1307, i32 0, i64 %idxprom1306
  %integer1309 = bitcast %union.anon.14* %arrayidx1308 to i64*
  %756 = load i64, i64* %integer1309, align 8
  %call1310 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1305, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i64 %756) #3
  store i32 %call1310, i32* %i1230, align 4
  br label %sw.epilog

sw.bb.1311:                                       ; preds = %if.end.1286
  %757 = load i32, i32* %index, align 4
  %idxprom1312 = sext i32 %757 to i64
  %758 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v, align 8
  %data1313 = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %758, i32 0, i32 1
  %arrayidx1314 = getelementptr inbounds [4 x %union.anon.14], [4 x %union.anon.14]* %data1313, i32 0, i64 %idxprom1312
  %object = bitcast %union.anon.14* %arrayidx1314 to i64*
  %759 = load i64, i64* %object, align 8
  %760 = load i64, i64* %printcharfun.addr, align 8
  %761 = load i8, i8* %escapeflag.addr, align 1
  %tobool1315 = trunc i8 %761 to i1
  call void @print_object(i64 %759, i64 %760, i1 zeroext %tobool1315)
  br label %for.inc.1319

sw.default:                                       ; preds = %if.end.1286
  call void @emacs_abort() #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.1304, %sw.bb.1298, %sw.bb.1291, %sw.bb.1288
  %arraydecay1316 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %762 = load i32, i32* %i1230, align 4
  %conv1317 = sext i32 %762 to i64
  %763 = load i32, i32* %i1230, align 4
  %conv1318 = sext i32 %763 to i64
  %764 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay1316, i64 %conv1317, i64 %conv1318, i64 %764)
  br label %for.inc.1319

for.inc.1319:                                     ; preds = %sw.epilog, %sw.bb.1311
  %765 = load i32, i32* %index, align 4
  %inc1320 = add nsw i32 %765, 1
  store i32 %inc1320, i32* %index, align 4
  br label %for.cond.1280

for.end.1321:                                     ; preds = %for.cond.1280
  br label %if.end.1322

if.end.1322:                                      ; preds = %for.end.1321, %if.end.1278
  %766 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 62, i64 %766)
  br label %sw.epilog.1324

sw.default.1323:                                  ; preds = %sw.bb.1172
  br label %badtype

sw.epilog.1324:                                   ; preds = %if.end.1322, %sw.bb.1228, %if.end.1227, %if.end.1220, %if.end.1195
  br label %sw.epilog.1354

sw.default.1325:                                  ; preds = %if.end.92
  br label %badtype

badtype:                                          ; preds = %sw.default.1325, %sw.default.1323, %if.then.1116
  %767 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.99, i32 0, i32 0), i64 %767)
  %768 = load i64, i64* %obj.addr, align 8
  %and1327 = and i64 %768, 7
  %conv1328 = trunc i64 %and1327 to i32
  %cmp1329 = icmp eq i32 %conv1328, 1
  br i1 %cmp1329, label %if.then.1331, label %if.else.1335

if.then.1331:                                     ; preds = %badtype
  %arraydecay1332 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %769 = load i64, i64* %obj.addr, align 8
  %call1333 = call i32 @XMISCTYPE(i64 %769)
  %call1334 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1332, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i32 %call1333) #3
  store i32 %call1334, i32* %len1326, align 4
  br label %if.end.1350

if.else.1335:                                     ; preds = %badtype
  %770 = load i64, i64* %obj.addr, align 8
  %and1336 = and i64 %770, 7
  %conv1337 = trunc i64 %and1336 to i32
  %cmp1338 = icmp eq i32 %conv1337, 5
  br i1 %cmp1338, label %if.then.1340, label %if.else.1344

if.then.1340:                                     ; preds = %if.else.1335
  %arraydecay1341 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %771 = load i64, i64* %obj.addr, align 8
  %call1342 = call i64 @ASIZE(i64 %771)
  %call1343 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1341, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i64 %call1342) #3
  store i32 %call1343, i32* %len1326, align 4
  br label %if.end.1349

if.else.1344:                                     ; preds = %if.else.1335
  %arraydecay1345 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %772 = load i64, i64* %obj.addr, align 8
  %and1346 = and i64 %772, 7
  %conv1347 = trunc i64 %and1346 to i32
  %call1348 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i32 %conv1347) #3
  store i32 %call1348, i32* %len1326, align 4
  br label %if.end.1349

if.end.1349:                                      ; preds = %if.else.1344, %if.then.1340
  br label %if.end.1350

if.end.1350:                                      ; preds = %if.end.1349, %if.then.1331
  %arraydecay1351 = getelementptr inbounds [54 x i8], [54 x i8]* %buf, i32 0, i32 0
  %773 = load i32, i32* %len1326, align 4
  %conv1352 = sext i32 %773 to i64
  %774 = load i32, i32* %len1326, align 4
  %conv1353 = sext i32 %774 to i64
  %775 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %arraydecay1351, i64 %conv1352, i64 %conv1353, i64 %775)
  %776 = load i64, i64* %printcharfun.addr, align 8
  call void @print_c_string(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.103, i32 0, i32 0), i64 %776)
  br label %sw.epilog.1354

sw.epilog.1354:                                   ; preds = %if.end.1350, %sw.epilog.1324, %if.end.1171, %if.end.782, %for.end.537, %if.then.396, %if.end.318, %sw.bb.103, %sw.bb
  %777 = load i64, i64* @print_depth, align 8
  %dec1355 = add nsw i64 %777, -1
  store i64 %dec1355, i64* @print_depth, align 8
  br label %return

return:                                           ; preds = %sw.epilog.1354, %if.else.82, %if.then.15
  ret void
}

declare zeroext i1 @COMPILEDP(i64) #1

declare zeroext i1 @FONTP(i64) #1

declare zeroext i1 @SYMBOL_INTERNED_P(i64) #1

declare i64 @Fmake_hash_table(i64, i64*) #1

declare i64 @Fgethash(i64, i64, i64) #1

declare i64 @Fputhash(i64, i64, i64) #1

declare void @traverse_intervals_noorder(%struct.interval*, void (%struct.interval*, i64)*, i64) #1

declare %struct.interval* @string_intervals(i64) #1

; Function Attrs: nounwind uwtable
define internal void @print_preprocess_string(%struct.interval* %interval, i64 %arg) #0 {
entry:
  %interval.addr = alloca %struct.interval*, align 8
  %arg.addr = alloca i64, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 6
  %1 = load i64, i64* %plist, align 8
  call void @print_preprocess(i64 %1)
  ret void
}

declare double @XFLOAT_DATA(i64) #1

; Function Attrs: nounwind uwtable
define internal void @print_string(i64 %string, i64 %printcharfun) #0 {
entry:
  %string.addr = alloca i64, align 8
  %printcharfun.addr = alloca i64, align 8
  %chars = alloca i64, align 8
  %newstr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %buffer = alloca i8*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %size_byte = alloca i64, align 8
  %len = alloca i32, align 4
  %ch = alloca i32, align 4
  store i64 %string, i64* %string.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load i64, i64* %printcharfun.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %printcharfun.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.else.50

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i64, i64* %string.addr, align 8
  %call4 = call i64 @string_escape_byte8(i64 %3)
  store i64 %call4, i64* %string.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %4 = load i64, i64* %string.addr, align 8
  %call5 = call zeroext i1 @STRING_MULTIBYTE(i64 %4)
  br i1 %call5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %5 = load i64, i64* %string.addr, align 8
  %call7 = call i64 @SCHARS(i64 %5)
  store i64 %call7, i64* %chars, align 8
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %6 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 483), align 1
  %tobool8 = trunc i8 %6 to i1
  br i1 %tobool8, label %if.else.27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %7 = load i64, i64* %printcharfun.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %8 = load i64, i64* getelementptr inbounds (%struct.buffer, %struct.buffer* @buffer_defaults, i32 0, i32 39), align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %8, %call11
  br i1 %cmp12, label %if.else.27, label %if.then.15

cond.false:                                       ; preds = %land.lhs.true
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 39
  %10 = load i64, i64* %enable_multibyte_characters_, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %10, %call13
  br i1 %cmp14, label %if.else.27, label %if.then.15

if.then.15:                                       ; preds = %cond.false, %cond.true
  %11 = load i64, i64* %string.addr, align 8
  %call16 = call i64 @SBYTES(i64 %11)
  store i64 %call16, i64* %chars, align 8
  %12 = load i64, i64* %string.addr, align 8
  %call17 = call i8* @SDATA(i64 %12)
  %13 = load i64, i64* %chars, align 8
  %call18 = call i64 @count_size_as_multibyte(i8* %call17, i64 %13)
  store i64 %call18, i64* %bytes, align 8
  %14 = load i64, i64* %chars, align 8
  %15 = load i64, i64* %bytes, align 8
  %cmp19 = icmp slt i64 %14, %15
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.then.15
  %16 = load i64, i64* %chars, align 8
  %17 = load i64, i64* %bytes, align 8
  %call21 = call i64 @make_uninit_multibyte_string(i64 %16, i64 %17)
  store i64 %call21, i64* %newstr, align 8
  %18 = load i64, i64* %newstr, align 8
  %call22 = call i8* @SDATA(i64 %18)
  %19 = load i64, i64* %string.addr, align 8
  %call23 = call i8* @SDATA(i64 %19)
  %20 = load i64, i64* %chars, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call22, i8* %call23, i64 %20, i32 1, i1 false)
  %21 = load i64, i64* %newstr, align 8
  %call24 = call i8* @SDATA(i64 %21)
  %22 = load i64, i64* %bytes, align 8
  %23 = load i64, i64* %chars, align 8
  %call25 = call i64 @str_to_multibyte(i8* %call24, i64 %22, i64 %23)
  %24 = load i64, i64* %newstr, align 8
  store i64 %24, i64* %string.addr, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.29

if.else.27:                                       ; preds = %cond.false, %cond.true, %if.else
  %25 = load i64, i64* %string.addr, align 8
  %call28 = call i64 @SBYTES(i64 %25)
  store i64 %call28, i64* %chars, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.end.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.6
  %26 = load i64, i64* %printcharfun.addr, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp32 = icmp eq i64 %26, %call31
  br i1 %cmp32, label %if.then.33, label %if.else.46

if.then.33:                                       ; preds = %if.end.30
  %27 = load i64, i64* %string.addr, align 8
  %call34 = call i64 @SBYTES(i64 %27)
  store i64 %call34, i64* %nbytes, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call35 = call i64 @SPECPDL_INDEX()
  store i64 %call35, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %28 = load i64, i64* %nbytes, align 8
  %29 = load i64, i64* %sa_avail, align 8
  %cmp36 = icmp sle i64 %28, %29
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.then.33
  %30 = load i64, i64* %nbytes, align 8
  %31 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %31, %30
  store i64 %sub, i64* %sa_avail, align 8
  %32 = load i64, i64* %nbytes, align 8
  %33 = alloca i8, i64 %32
  br label %cond.end

cond.false.38:                                    ; preds = %if.then.33
  store i8 1, i8* %sa_must_free, align 1
  %34 = load i64, i64* %nbytes, align 8
  %call39 = call i8* @record_xmalloc(i64 %34)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.38, %cond.true.37
  %cond = phi i8* [ %33, %cond.true.37 ], [ %call39, %cond.false.38 ]
  store i8* %cond, i8** %buffer, align 8
  %35 = load i8*, i8** %buffer, align 8
  %36 = load i64, i64* %string.addr, align 8
  %call40 = call i8* @SDATA(i64 %36)
  %37 = load i64, i64* %nbytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %call40, i64 %37, i32 1, i1 false)
  %38 = load i8*, i8** %buffer, align 8
  %39 = load i64, i64* %chars, align 8
  %40 = load i64, i64* %nbytes, align 8
  %41 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %38, i64 %39, i64 %40, i64 %41)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %42 = load i8, i8* %sa_must_free, align 1
  %tobool41 = trunc i8 %42 to i1
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %43 = load i64, i64* %sa_count, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %call44 = call i64 @unbind_to(i64 %43, i64 %call43)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.45
  br label %if.end.49

if.else.46:                                       ; preds = %if.end.30
  %44 = load i64, i64* %string.addr, align 8
  %call47 = call i8* @SSDATA(i64 %44)
  %45 = load i64, i64* %chars, align 8
  %46 = load i64, i64* %string.addr, align 8
  %call48 = call i64 @SBYTES(i64 %46)
  %47 = load i64, i64* %printcharfun.addr, align 8
  call void @strout(i8* %call47, i64 %45, i64 %call48, i64 %47)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %do.end
  br label %if.end.136

if.else.50:                                       ; preds = %lor.lhs.false
  %48 = load i64, i64* %string.addr, align 8
  %call51 = call i64 @SCHARS(i64 %48)
  store i64 %call51, i64* %size, align 8
  %49 = load i64, i64* %string.addr, align 8
  %call52 = call i64 @SBYTES(i64 %49)
  store i64 %call52, i64* %size_byte, align 8
  %50 = load i64, i64* %size, align 8
  %51 = load i64, i64* %size_byte, align 8
  %cmp53 = icmp eq i64 %50, %51
  br i1 %cmp53, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %if.else.50
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.54
  %52 = load i64, i64* %i, align 8
  %53 = load i64, i64* %size, align 8
  %cmp55 = icmp slt i64 %52, %53
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i64, i64* %string.addr, align 8
  %55 = load i64, i64* %i, align 8
  %call56 = call zeroext i8 @SREF(i64 %54, i64 %55)
  %conv = zext i8 %call56 to i32
  %56 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %conv, i64 %56)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i64, i64* %i, align 8
  %inc = add nsw i64 %57, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.135

if.else.57:                                       ; preds = %if.else.50
  store i64 0, i64* %i, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %cond.end.130, %if.else.57
  %58 = load i64, i64* %i, align 8
  %59 = load i64, i64* %size_byte, align 8
  %cmp59 = icmp slt i64 %58, %59
  br i1 %cmp59, label %for.body.61, label %for.end.134

for.body.61:                                      ; preds = %for.cond.58
  %60 = load i64, i64* %string.addr, align 8
  %call62 = call i8* @SDATA(i64 %60)
  %61 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call62, i64 %61
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %62 = load i8, i8* %arrayidx, align 1
  %conv63 = zext i8 %62 to i32
  %and = and i32 %conv63, 128
  %tobool64 = icmp ne i32 %and, 0
  br i1 %tobool64, label %cond.false.70, label %cond.true.65

cond.true.65:                                     ; preds = %for.body.61
  store i32 1, i32* %len, align 4
  %63 = load i64, i64* %string.addr, align 8
  %call66 = call i8* @SDATA(i64 %63)
  %64 = load i64, i64* %i, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %call66, i64 %64
  %arrayidx68 = getelementptr inbounds i8, i8* %add.ptr67, i64 0
  %65 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %65 to i32
  br label %cond.end.130

cond.false.70:                                    ; preds = %for.body.61
  %66 = load i64, i64* %string.addr, align 8
  %call71 = call i8* @SDATA(i64 %66)
  %67 = load i64, i64* %i, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %call71, i64 %67
  %arrayidx73 = getelementptr inbounds i8, i8* %add.ptr72, i64 0
  %68 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %68 to i32
  %and75 = and i32 %conv74, 32
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %cond.false.95, label %cond.true.77

cond.true.77:                                     ; preds = %cond.false.70
  store i32 2, i32* %len, align 4
  %69 = load i64, i64* %string.addr, align 8
  %call78 = call i8* @SDATA(i64 %69)
  %70 = load i64, i64* %i, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %call78, i64 %70
  %arrayidx80 = getelementptr inbounds i8, i8* %add.ptr79, i64 0
  %71 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %71 to i32
  %and82 = and i32 %conv81, 31
  %shl = shl i32 %and82, 6
  %72 = load i64, i64* %string.addr, align 8
  %call83 = call i8* @SDATA(i64 %72)
  %73 = load i64, i64* %i, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %call83, i64 %73
  %arrayidx85 = getelementptr inbounds i8, i8* %add.ptr84, i64 1
  %74 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %74 to i32
  %and87 = and i32 %conv86, 63
  %or = or i32 %shl, %and87
  %75 = load i64, i64* %string.addr, align 8
  %call88 = call i8* @SDATA(i64 %75)
  %76 = load i64, i64* %i, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %call88, i64 %76
  %arrayidx90 = getelementptr inbounds i8, i8* %add.ptr89, i64 0
  %77 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %77 to i32
  %cmp92 = icmp slt i32 %conv91, 194
  %cond94 = select i1 %cmp92, i32 4194176, i32 0
  %add = add nsw i32 %or, %cond94
  br label %cond.end.128

cond.false.95:                                    ; preds = %cond.false.70
  %78 = load i64, i64* %string.addr, align 8
  %call96 = call i8* @SDATA(i64 %78)
  %79 = load i64, i64* %i, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %call96, i64 %79
  %arrayidx98 = getelementptr inbounds i8, i8* %add.ptr97, i64 0
  %80 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %80 to i32
  %and100 = and i32 %conv99, 16
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %cond.false.122, label %cond.true.102

cond.true.102:                                    ; preds = %cond.false.95
  store i32 3, i32* %len, align 4
  %81 = load i64, i64* %string.addr, align 8
  %call103 = call i8* @SDATA(i64 %81)
  %82 = load i64, i64* %i, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %call103, i64 %82
  %arrayidx105 = getelementptr inbounds i8, i8* %add.ptr104, i64 0
  %83 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %83 to i32
  %and107 = and i32 %conv106, 15
  %shl108 = shl i32 %and107, 12
  %84 = load i64, i64* %string.addr, align 8
  %call109 = call i8* @SDATA(i64 %84)
  %85 = load i64, i64* %i, align 8
  %add.ptr110 = getelementptr inbounds i8, i8* %call109, i64 %85
  %arrayidx111 = getelementptr inbounds i8, i8* %add.ptr110, i64 1
  %86 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %86 to i32
  %and113 = and i32 %conv112, 63
  %shl114 = shl i32 %and113, 6
  %or115 = or i32 %shl108, %shl114
  %87 = load i64, i64* %string.addr, align 8
  %call116 = call i8* @SDATA(i64 %87)
  %88 = load i64, i64* %i, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %call116, i64 %88
  %arrayidx118 = getelementptr inbounds i8, i8* %add.ptr117, i64 2
  %89 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %89 to i32
  %and120 = and i32 %conv119, 63
  %or121 = or i32 %or115, %and120
  br label %cond.end.126

cond.false.122:                                   ; preds = %cond.false.95
  %90 = load i64, i64* %string.addr, align 8
  %call123 = call i8* @SDATA(i64 %90)
  %91 = load i64, i64* %i, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %call123, i64 %91
  %call125 = call i32 @string_char(i8* %add.ptr124, i8** null, i32* %len)
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.122, %cond.true.102
  %cond127 = phi i32 [ %or121, %cond.true.102 ], [ %call125, %cond.false.122 ]
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.end.126, %cond.true.77
  %cond129 = phi i32 [ %add, %cond.true.77 ], [ %cond127, %cond.end.126 ]
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.end.128, %cond.true.65
  %cond131 = phi i32 [ %conv69, %cond.true.65 ], [ %cond129, %cond.end.128 ]
  store i32 %cond131, i32* %ch, align 4
  %92 = load i32, i32* %ch, align 4
  %93 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 %92, i64 %93)
  %94 = load i32, i32* %len, align 4
  %conv132 = sext i32 %94 to i64
  %95 = load i64, i64* %i, align 8
  %add133 = add nsw i64 %95, %conv132
  store i64 %add133, i64* %i, align 8
  br label %for.cond.58

for.end.134:                                      ; preds = %for.cond.58
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.49
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @print_prune_string_charset(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i32 0, i32* @print_check_string_result, align 4
  %0 = load i64, i64* %string.addr, align 8
  %call = call %struct.interval* @string_intervals(i64 %0)
  %1 = load i64, i64* %string.addr, align 8
  call void @traverse_intervals(%struct.interval* %call, i64 0, void (%struct.interval*, i64)* @print_check_string_charset_prop, i64 %1)
  %2 = load i32, i32* @print_check_string_result, align 4
  %and = and i32 %2, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.17, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @Fcopy_sequence(i64 %3)
  store i64 %call1, i64* %string.addr, align 8
  %4 = load i32, i32* @print_check_string_result, align 4
  %and2 = and i32 %4, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load i64, i64* @print_prune_charset_plist, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call5
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  %call7 = call i64 @builtin_lisp_symbol(i32 261)
  %call8 = call i64 @list1(i64 %call7)
  store i64 %call8, i64* @print_prune_charset_plist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  %6 = load i64, i64* %string.addr, align 8
  %call9 = call i64 @SCHARS(i64 %6)
  %shl = shl i64 %call9, 2
  %add = add i64 %shl, 2
  %7 = load i64, i64* @print_prune_charset_plist, align 8
  %8 = load i64, i64* %string.addr, align 8
  %call10 = call i64 @Fremove_text_properties(i64 2, i64 %add, i64 %7, i64 %8)
  br label %if.end.16

if.else:                                          ; preds = %if.then
  %9 = load i64, i64* %string.addr, align 8
  %call11 = call i64 @SCHARS(i64 %9)
  %shl12 = shl i64 %call11, 2
  %add13 = add i64 %shl12, 2
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %10 = load i64, i64* %string.addr, align 8
  %call15 = call i64 @Fset_text_properties(i64 2, i64 %add13, i64 %call14, i64 %10)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %11 = load i64, i64* %string.addr, align 8
  ret i64 %11
}

declare zeroext i8 @SREF(i64, i64) #1

declare zeroext i1 @c_isxdigit(i32) #1

declare void @traverse_intervals(%struct.interval*, i64, void (%struct.interval*, i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @print_interval(%struct.interval* %interval, i64 %printcharfun) #0 {
entry:
  %interval.addr = alloca %struct.interval*, align 8
  %printcharfun.addr = alloca i64, align 8
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i64 %printcharfun, i64* %printcharfun.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 6
  %1 = load i64, i64* %plist, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %2)
  %3 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 1
  %4 = load i64, i64* %position, align 8
  %shl = shl i64 %4, 2
  %add = add i64 %shl, 2
  %5 = load i64, i64* %printcharfun.addr, align 8
  call void @print_object(i64 %add, i64 %5, i1 zeroext true)
  %6 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %6)
  %7 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position1 = getelementptr inbounds %struct.interval, %struct.interval* %7, i32 0, i32 1
  %8 = load i64, i64* %position1, align 8
  %9 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp2 = icmp eq %struct.interval* %9, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.21

cond.false:                                       ; preds = %if.end
  %10 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp3 = icmp eq %struct.interval* %10, null
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %11 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %11, i32 0, i32 0
  %12 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i64 [ 0, %cond.true.4 ], [ %12, %cond.false.5 ]
  %13 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %13, i32 0, i32 3
  %14 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp6 = icmp eq %struct.interval* %14, null
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.8:                                     ; preds = %cond.end
  %15 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right9 = getelementptr inbounds %struct.interval, %struct.interval* %15, i32 0, i32 3
  %16 = load %struct.interval*, %struct.interval** %right9, align 8
  %total_length10 = getelementptr inbounds %struct.interval, %struct.interval* %16, i32 0, i32 0
  %17 = load i64, i64* %total_length10, align 8
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.8, %cond.true.7
  %cond12 = phi i64 [ 0, %cond.true.7 ], [ %17, %cond.false.8 ]
  %sub = sub nsw i64 %cond, %cond12
  %18 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %18, i32 0, i32 2
  %19 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp13 = icmp eq %struct.interval* %19, null
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end.11
  br label %cond.end.18

cond.false.15:                                    ; preds = %cond.end.11
  %20 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left16 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 2
  %21 = load %struct.interval*, %struct.interval** %left16, align 8
  %total_length17 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 0
  %22 = load i64, i64* %total_length17, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.14
  %cond19 = phi i64 [ 0, %cond.true.14 ], [ %22, %cond.false.15 ]
  %sub20 = sub nsw i64 %sub, %cond19
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.18, %cond.true
  %cond22 = phi i64 [ 0, %cond.true ], [ %sub20, %cond.end.18 ]
  %add23 = add nsw i64 %8, %cond22
  %shl24 = shl i64 %add23, 2
  %add25 = add i64 %shl24, 2
  %23 = load i64, i64* %printcharfun.addr, align 8
  call void @print_object(i64 %add25, i64 %23, i1 zeroext true)
  %24 = load i64, i64* %printcharfun.addr, align 8
  call void @printchar(i32 32, i64 %24)
  %25 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist26 = getelementptr inbounds %struct.interval, %struct.interval* %25, i32 0, i32 6
  %26 = load i64, i64* %plist26, align 8
  %27 = load i64, i64* %printcharfun.addr, align 8
  call void @print_object(i64 %26, i64 %27, i1 zeroext true)
  br label %return

return:                                           ; preds = %cond.end.21, %if.then
  ret void
}

declare zeroext i1 @PROCESSP(i64) #1

declare %struct.Lisp_Process* @XPROCESS(i64) #1

declare zeroext i1 @BOOL_VECTOR_P(i64) #1

declare i64 @bool_vector_size(i64) #1

declare i64 @bool_vector_bytes(i64) #1

declare i8* @bool_vector_uchar_data(i64) #1

declare zeroext i1 @SUBRP(i64) #1

declare %struct.Lisp_Subr* @XSUBR(i64) #1

declare zeroext i1 @PSEUDOVECTORP(i64, i32) #1

declare zeroext i1 @WINDOWP(i64) #1

declare %struct.window* @XWINDOW(i64) #1

declare zeroext i1 @TERMINALP(i64) #1

declare %struct.terminal* @XTERMINAL(i64) #1

declare zeroext i1 @WINDOW_CONFIGURATIONP(i64) #1

declare zeroext i1 @FRAMEP(i64) #1

declare i64 @Fsymbol_name(i64) #1

declare zeroext i1 @FONT_OBJECT_P(i64) #1

declare zeroext i1 @FONT_SPEC_P(i64) #1

declare i64 @font_style_symbolic(i64, i32, i1 zeroext) #1

declare %struct.Lisp_Overlay* @XOVERLAY(i64) #1

declare %struct.Lisp_Finalizer* @XFINALIZER(i64) #1

declare %struct.Lisp_Save_Value* @XSAVE_VALUE(i64) #1

declare i32 @save_type(%struct.Lisp_Save_Value*, i32) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare i64 @string_escape_byte8(i64) #1

declare i64 @count_size_as_multibyte(i8*, i64) #1

declare i64 @make_uninit_multibyte_string(i64, i64) #1

declare i64 @str_to_multibyte(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @print_check_string_charset_prop(%struct.interval* %interval, i64 %string) #0 {
entry:
  %interval.addr = alloca %struct.interval*, align 8
  %string.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %charpos = alloca i64, align 8
  %bytepos = alloca i64, align 8
  %charset = alloca i64, align 8
  %chp = alloca i8*, align 8
  %chlen = alloca i32, align 4
  store %struct.interval* %interval, %struct.interval** %interval.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 6
  %1 = load i64, i64* %plist, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @print_check_string_result, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.171

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist2 = getelementptr inbounds %struct.interval, %struct.interval* %3, i32 0, i32 6
  %4 = load i64, i64* %plist2, align 8
  store i64 %4, i64* %val, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %val, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp3 = icmp eq i32 %conv, 3
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 261)
  %cmp6 = icmp eq i64 %9, %call5
  %lnot = xor i1 %cmp6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %val, align 8
  %sub8 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub8 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %sub9 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub9 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr11 = bitcast %union.anon.0* %u10 to i64*
  %17 = load i64, i64* %cdr11, align 8
  store i64 %17, i64* %val, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i64, i64* %val, align 8
  %and12 = and i64 %18, 7
  %conv13 = trunc i64 %and12 to i32
  %cmp14 = icmp eq i32 %conv13, 3
  br i1 %cmp14, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.end
  %19 = load i32, i32* @print_check_string_result, align 4
  %or = or i32 %19, 1
  store i32 %or, i32* @print_check_string_result, align 4
  br label %if.end.171

if.end.17:                                        ; preds = %for.end
  %20 = load i32, i32* @print_check_string_result, align 4
  %and18 = and i32 %20, 1
  %tobool = icmp ne i32 %and18, 0
  br i1 %tobool, label %if.end.37, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %21 = load i64, i64* %val, align 8
  %22 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %plist20 = getelementptr inbounds %struct.interval, %struct.interval* %22, i32 0, i32 6
  %23 = load i64, i64* %plist20, align 8
  %cmp21 = icmp eq i64 %21, %23
  br i1 %cmp21, label %lor.lhs.false.23, label %if.then.34

lor.lhs.false.23:                                 ; preds = %if.then.19
  %24 = load i64, i64* %val, align 8
  %sub24 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub24 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr26 = bitcast %union.anon.0* %u25 to i64*
  %27 = load i64, i64* %cdr26, align 8
  %sub27 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub27 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr29 = bitcast %union.anon.0* %u28 to i64*
  %30 = load i64, i64* %cdr29, align 8
  %and30 = and i64 %30, 7
  %conv31 = trunc i64 %and30 to i32
  %cmp32 = icmp eq i32 %conv31, 3
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %lor.lhs.false.23, %if.then.19
  %31 = load i32, i32* @print_check_string_result, align 4
  %or35 = or i32 %31, 1
  store i32 %or35, i32* @print_check_string_result, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %lor.lhs.false.23
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.17
  %32 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 228), align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %32, %call38
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.37
  %33 = load i32, i32* @print_check_string_result, align 4
  %and42 = and i32 %33, 2
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end.171, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.end.37
  %34 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %position = getelementptr inbounds %struct.interval, %struct.interval* %34, i32 0, i32 1
  %35 = load i64, i64* %position, align 8
  store i64 %35, i64* %charpos, align 8
  %36 = load i64, i64* %string.addr, align 8
  %37 = load i64, i64* %charpos, align 8
  %call45 = call i64 @string_char_to_byte(i64 %36, i64 %37)
  store i64 %call45, i64* %bytepos, align 8
  %38 = load i64, i64* %val, align 8
  %sub46 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub46 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u47 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr48 = bitcast %union.anon.0* %u47 to i64*
  %41 = load i64, i64* %cdr48, align 8
  %sub49 = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub49 to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %car50 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 0
  %44 = load i64, i64* %car50, align 8
  store i64 %44, i64* %charset, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.168, %if.then.44
  %45 = load i32, i32* %i, align 4
  %conv52 = sext i32 %45 to i64
  %46 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp53 = icmp eq %struct.interval* %46, null
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.51
  br label %cond.end.77

cond.false:                                       ; preds = %for.cond.51
  %47 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %cmp55 = icmp eq %struct.interval* %47, null
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false
  br label %cond.end

cond.false.58:                                    ; preds = %cond.false
  %48 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %total_length = getelementptr inbounds %struct.interval, %struct.interval* %48, i32 0, i32 0
  %49 = load i64, i64* %total_length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.58, %cond.true.57
  %cond = phi i64 [ 0, %cond.true.57 ], [ %49, %cond.false.58 ]
  %50 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right = getelementptr inbounds %struct.interval, %struct.interval* %50, i32 0, i32 3
  %51 = load %struct.interval*, %struct.interval** %right, align 8
  %cmp59 = icmp eq %struct.interval* %51, null
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end
  br label %cond.end.65

cond.false.62:                                    ; preds = %cond.end
  %52 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %right63 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 3
  %53 = load %struct.interval*, %struct.interval** %right63, align 8
  %total_length64 = getelementptr inbounds %struct.interval, %struct.interval* %53, i32 0, i32 0
  %54 = load i64, i64* %total_length64, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.61
  %cond66 = phi i64 [ 0, %cond.true.61 ], [ %54, %cond.false.62 ]
  %sub67 = sub nsw i64 %cond, %cond66
  %55 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left = getelementptr inbounds %struct.interval, %struct.interval* %55, i32 0, i32 2
  %56 = load %struct.interval*, %struct.interval** %left, align 8
  %cmp68 = icmp eq %struct.interval* %56, null
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end.65
  br label %cond.end.74

cond.false.71:                                    ; preds = %cond.end.65
  %57 = load %struct.interval*, %struct.interval** %interval.addr, align 8
  %left72 = getelementptr inbounds %struct.interval, %struct.interval* %57, i32 0, i32 2
  %58 = load %struct.interval*, %struct.interval** %left72, align 8
  %total_length73 = getelementptr inbounds %struct.interval, %struct.interval* %58, i32 0, i32 0
  %59 = load i64, i64* %total_length73, align 8
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.71, %cond.true.70
  %cond75 = phi i64 [ 0, %cond.true.70 ], [ %59, %cond.false.71 ]
  %sub76 = sub nsw i64 %sub67, %cond75
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.74, %cond.true
  %cond78 = phi i64 [ 0, %cond.true ], [ %sub76, %cond.end.74 ]
  %cmp79 = icmp slt i64 %conv52, %cond78
  br i1 %cmp79, label %for.body.81, label %for.end.170

for.body.81:                                      ; preds = %cond.end.77
  br label %do.body

do.body:                                          ; preds = %for.body.81
  %60 = load i64, i64* %charpos, align 8
  %inc = add nsw i64 %60, 1
  store i64 %inc, i64* %charpos, align 8
  %61 = load i64, i64* %string.addr, align 8
  %call82 = call zeroext i1 @STRING_MULTIBYTE(i64 %61)
  br i1 %call82, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %do.body
  %62 = load i64, i64* %bytepos, align 8
  %63 = load i64, i64* %string.addr, align 8
  %call84 = call i8* @SDATA(i64 %63)
  %arrayidx = getelementptr inbounds i8, i8* %call84, i64 %62
  store i8* %arrayidx, i8** %chp, align 8
  %64 = load i8*, i8** %chp, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %65 to i32
  %and87 = and i32 %conv86, 128
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %cond.false.92, label %cond.true.89

cond.true.89:                                     ; preds = %if.then.83
  store i32 1, i32* %chlen, align 4
  %66 = load i8*, i8** %chp, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %67 to i32
  br label %cond.end.135

cond.false.92:                                    ; preds = %if.then.83
  %68 = load i8*, i8** %chp, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %69 to i32
  %and95 = and i32 %conv94, 32
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %cond.false.110, label %cond.true.97

cond.true.97:                                     ; preds = %cond.false.92
  store i32 2, i32* %chlen, align 4
  %70 = load i8*, i8** %chp, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %71 to i32
  %and100 = and i32 %conv99, 31
  %shl = shl i32 %and100, 6
  %72 = load i8*, i8** %chp, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %73 to i32
  %and103 = and i32 %conv102, 63
  %or104 = or i32 %shl, %and103
  %74 = load i8*, i8** %chp, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %75 to i32
  %cmp107 = icmp slt i32 %conv106, 194
  %cond109 = select i1 %cmp107, i32 4194176, i32 0
  %add = add nsw i32 %or104, %cond109
  br label %cond.end.133

cond.false.110:                                   ; preds = %cond.false.92
  %76 = load i8*, i8** %chp, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %77 to i32
  %and113 = and i32 %conv112, 16
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %cond.false.129, label %cond.true.115

cond.true.115:                                    ; preds = %cond.false.110
  store i32 3, i32* %chlen, align 4
  %78 = load i8*, i8** %chp, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %79 to i32
  %and118 = and i32 %conv117, 15
  %shl119 = shl i32 %and118, 12
  %80 = load i8*, i8** %chp, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %81 to i32
  %and122 = and i32 %conv121, 63
  %shl123 = shl i32 %and122, 6
  %or124 = or i32 %shl119, %shl123
  %82 = load i8*, i8** %chp, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %82, i64 2
  %83 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %83 to i32
  %and127 = and i32 %conv126, 63
  %or128 = or i32 %or124, %and127
  br label %cond.end.131

cond.false.129:                                   ; preds = %cond.false.110
  %84 = load i8*, i8** %chp, align 8
  %call130 = call i32 @string_char(i8* %84, i8** null, i32* %chlen)
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.129, %cond.true.115
  %cond132 = phi i32 [ %or128, %cond.true.115 ], [ %call130, %cond.false.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.97
  %cond134 = phi i32 [ %add, %cond.true.97 ], [ %cond132, %cond.end.131 ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %cond.true.89
  %cond136 = phi i32 [ %conv91, %cond.true.89 ], [ %cond134, %cond.end.133 ]
  store i32 %cond136, i32* %c, align 4
  %85 = load i32, i32* %chlen, align 4
  %conv137 = sext i32 %85 to i64
  %86 = load i64, i64* %bytepos, align 8
  %add138 = add nsw i64 %86, %conv137
  store i64 %add138, i64* %bytepos, align 8
  br label %if.end.142

if.else:                                          ; preds = %do.body
  %87 = load i64, i64* %string.addr, align 8
  %88 = load i64, i64* %bytepos, align 8
  %call139 = call zeroext i8 @SREF(i64 %87, i64 %88)
  %conv140 = zext i8 %call139 to i32
  store i32 %conv140, i32* %c, align 4
  %89 = load i64, i64* %bytepos, align 8
  %inc141 = add nsw i64 %89, 1
  store i64 %inc141, i64* %bytepos, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.else, %cond.end.135
  br label %do.end

do.end:                                           ; preds = %if.end.142
  br i1 true, label %cond.true.143, label %cond.false.147

cond.true.143:                                    ; preds = %do.end
  %90 = load i32, i32* %c, align 4
  %add144 = add i32 %90, 0
  %cmp145 = icmp ult i32 %add144, 128
  br i1 %cmp145, label %if.end.167, label %land.lhs.true

cond.false.147:                                   ; preds = %do.end
  %91 = load i32, i32* %c, align 4
  %conv148 = sext i32 %91 to i64
  %add149 = add i64 %conv148, 0
  %cmp150 = icmp ult i64 %add149, 128
  br i1 %cmp150, label %if.end.167, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.147, %cond.true.143
  %92 = load i64, i64* @Vcharset_hash_table, align 8
  %call152 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %92)
  %93 = load i32, i32* %c, align 4
  %cmp153 = icmp slt i32 %93, 128
  br i1 %cmp153, label %cond.true.155, label %cond.false.156

cond.true.155:                                    ; preds = %land.lhs.true
  %94 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %95 = load i32, i32* @charset_ascii, align 4
  %idx.ext = sext i32 %95 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %94, i64 %idx.ext
  br label %cond.end.159

cond.false.156:                                   ; preds = %land.lhs.true
  %96 = load i32, i32* %c, align 4
  %call157 = call i64 @builtin_lisp_symbol(i32 0)
  %call158 = call %struct.charset* @char_charset(i32 %96, i64 %call157, i32* null)
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.156, %cond.true.155
  %cond160 = phi %struct.charset* [ %add.ptr, %cond.true.155 ], [ %call158, %cond.false.156 ]
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %cond160, i32 0, i32 1
  %97 = load i64, i64* %hash_index, align 8
  %call161 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call152, i64 %97)
  %call162 = call i64 @AREF(i64 %call161, i64 1)
  %98 = load i64, i64* %charset, align 8
  %cmp163 = icmp eq i64 %call162, %98
  br i1 %cmp163, label %if.end.167, label %if.then.165

if.then.165:                                      ; preds = %cond.end.159
  %99 = load i32, i32* @print_check_string_result, align 4
  %or166 = or i32 %99, 2
  store i32 %or166, i32* @print_check_string_result, align 4
  br label %for.end.170

if.end.167:                                       ; preds = %cond.end.159, %cond.false.147, %cond.true.143
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %100 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %100, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.51

for.end.170:                                      ; preds = %if.then.165, %cond.end.77
  br label %if.end.171

if.end.171:                                       ; preds = %if.then, %if.then.16, %for.end.170, %lor.lhs.false.41
  ret void
}

declare i64 @Fcopy_sequence(i64) #1

declare i64 @list1(i64) #1

declare i64 @Fremove_text_properties(i64, i64, i64, i64) #1

declare i64 @Fset_text_properties(i64, i64, i64, i64) #1

declare i64 @string_char_to_byte(i64, i64) #1

declare %struct.charset* @char_charset(i32, i64, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
