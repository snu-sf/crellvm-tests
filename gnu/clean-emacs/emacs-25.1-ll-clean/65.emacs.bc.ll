; ModuleID = './src/emacs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Lisp_Symbol = type { i16, i64, %union.anon, i64, i64, %struct.Lisp_Symbol* }
%union.anon = type { i64 }
%union.specbinding = type { %struct.anon.7 }
%struct.anon.7 = type { i8, i64, i64, i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type { i64, i64, %struct.interval*, %struct.interval*, %union.anon.21, i8, i64 }
%union.anon.21 = type { %struct.interval* }
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.gl_state_s = type { i64, i64, i64, i8, i64, i64, i64, i64, i64, i8, %struct.interval*, %struct.interval*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.standard_args = type { i8*, i8*, i32, i32 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.1, i16, i16, i8*, i8*, i8* }
%union.anon.1 = type { i64 ()* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.Lisp_Float = type { %union.anon.3 }
%union.anon.3 = type { double }
%struct.Lisp_Process = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, [6 x i32], i64, i64, i32, i32, i8, i32, i32, %struct.gnutls_session_int*, %struct.gnutls_certificate_credentials_st*, %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_x509_crt_int*, i32, i32, i32, i32, i8 }
%struct.gnutls_session_int = type opaque
%struct.gnutls_certificate_credentials_st = type opaque
%struct.gnutls_anon_client_credentials_st = type opaque
%struct.gnutls_x509_crt_int = type opaque
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.13, %union.anon.16 }
%union.anon.13 = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.16 = type { i32 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
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
%struct.XChar2b = type { i8, i8 }
%struct.xwidget = type opaque
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.coding_system = type { i64, i32, i32, %union.anon.20, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.20 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.9, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, %struct.it_slice, i64 }
%struct.composition_it = type { i64, i64, i32, i32, i64, i32, i8, i64, i32, i32, i32, i32, i32 }
%struct.it_slice = type { i64, i64, i64, i64 }
%struct.bidi_it = type { i64, i64, i32, i64, i64, i32, i32, i32, i8, i8, i64, i64, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, i64, i32, i64, i32, i32, i32, i64, i32, i32, [128 x %struct.bidi_stack], %struct.bidi_string_data, %struct.window*, i32, i64, i8 }
%struct.bidi_saved_info = type { i64, i32, i32 }
%struct.bidi_stack = type { i64, i16, i8, i8 }
%struct.bidi_string_data = type { i64, i8*, i64, i64, i8 }
%struct.run = type { i32, i32, i32, i32, i32, i32 }
%struct.draw_fringe_bitmap_params = type { i32, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.face* }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.Lisp_Sub_Char_Table = type { %struct.vectorlike_header, i32, i32, [0 x i64] }
%struct.Lisp_Bool_Vector = type { %struct.vectorlike_header, i64, [0 x i64] }
%struct.Lisp_Buffer_Local_Value = type { i8, %union.Lisp_Fwd*, i64, i64, i64 }
%union.Lisp_Fwd = type { %struct.Lisp_Intfwd }
%struct.Lisp_Intfwd = type { i32, i64* }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Save_Value = type { i32, [4 x %union.anon.2] }
%union.anon.2 = type { i8* }
%union.Lisp_Misc = type { %struct.Lisp_Marker }
%struct.Lisp_Misc_Any = type { i32 }
%struct.Lisp_Finalizer = type { %struct.Lisp_Misc_Any, %struct.Lisp_Finalizer*, %struct.Lisp_Finalizer*, i64 }
%struct.Lisp_Buffer_Objfwd = type { i32, i32, i64 }
%struct.GLYPH = type { i32, i32 }
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
%struct.selection_input_event = type { i16, %struct.x_display_info*, i64, i64, i64, i64, i64 }
%struct.x_display_info = type { %struct.x_display_info*, %struct.terminal*, %struct._XDisplay*, i32, i64, i32, %struct.Screen*, double, double, %struct.Visual*, i64, i32, i32, i64, i64, i64, i64, i64, i64, void (%struct.frame*, i1)*, %struct._GdkCursor*, %struct._XrmHashBucketRec*, i32, i32, %struct._XGC*, %struct.Mouse_HLInfo, i32, i8*, i32, %struct.x_bitmap_record*, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.scroll_bar*, i64, i32, i32, %struct.XRectangle, i64, i64, %struct._XIM*, %struct.XIMStyles*, %struct.xim_inst_t*, %struct.color_name_cache_entry*, %struct.XColor*, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64, i64, i64, i64, i64*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.xcb_connection_t* }
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct._GdkCursor = type { i32, i32 }
%struct._XrmHashBucketRec = type opaque
%struct.x_bitmap_record = type { i64, i8, i64, i8*, i32, i32, i32, i32 }
%struct.scroll_bar = type { %struct.vectorlike_header, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct._XIM = type opaque
%struct.XIMStyles = type { i16, i64* }
%struct.xim_inst_t = type { %struct.x_display_info*, i8* }
%struct.color_name_cache_entry = type { %struct.color_name_cache_entry*, %struct.XColor, i8* }
%struct.XColor = type { i64, i16, i16, i16, i8, i8 }
%struct.xcb_connection_t = type opaque
%struct.font_spec = type { %struct.vectorlike_header, [13 x i64] }
%struct.font_entity = type { %struct.vectorlike_header, [14 x i64] }
%union.buffered_input_event = type { %struct.input_event }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.fd_set = type { [16 x i64] }
%struct.__sigset_t = type { [16 x i64] }
%struct.rlimit = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon.23 }
%union.anon.23 = type { i32 }
%union.Aligned_String = type { %struct.Lisp_String }

@GCTYPEBITS = constant i32 3, align 4
@USE_LSB_TAG = constant i8 1, align 1
@Qnil = constant i64 0, align 8
@QATOM = constant i64 48, align 8
@QCLIPBOARD = constant i64 96, align 8
@QCLIPBOARD_MANAGER = constant i64 144, align 8
@QCOMPOUND_TEXT = constant i64 192, align 8
@QCadstyle = constant i64 240, align 8
@QCadvertised_binding = constant i64 288, align 8
@QCalign_to = constant i64 336, align 8
@QCantialias = constant i64 384, align 8
@QCascent = constant i64 432, align 8
@QCascii_compatible_p = constant i64 480, align 8
@QCautohint = constant i64 528, align 8
@QCavgwidth = constant i64 576, align 8
@QCbackground = constant i64 624, align 8
@QCbold = constant i64 672, align 8
@QCbox = constant i64 720, align 8
@QCbuffer = constant i64 768, align 8
@QCbutton = constant i64 816, align 8
@QCbytesize = constant i64 864, align 8
@QCcategory = constant i64 912, align 8
@QCcoding = constant i64 960, align 8
@QCcolor = constant i64 1008, align 8
@QCcolor_adjustment = constant i64 1056, align 8
@QCcolor_symbols = constant i64 1104, align 8
@QCcombining_capability = constant i64 1152, align 8
@QCcommand = constant i64 1200, align 8
@QCconnection_type = constant i64 1248, align 8
@QCconversion = constant i64 1296, align 8
@QCcrop = constant i64 1344, align 8
@QCdata = constant i64 1392, align 8
@QCdecode_translation_table = constant i64 1440, align 8
@QCdefault_char = constant i64 1488, align 8
@QCdevice = constant i64 1536, align 8
@QCdistant_foreground = constant i64 1584, align 8
@QCdocumentation = constant i64 1632, align 8
@QCdpi = constant i64 1680, align 8
@QCembolden = constant i64 1728, align 8
@QCenable = constant i64 1776, align 8
@QCencode_translation_table = constant i64 1824, align 8
@QCeval = constant i64 1872, align 8
@QCfamily = constant i64 1920, align 8
@QCfile = constant i64 1968, align 8
@QCfilter = constant i64 2016, align 8
@QCflowcontrol = constant i64 2064, align 8
@QCfont = constant i64 2112, align 8
@QCfont_entity = constant i64 2160, align 8
@QCfontset = constant i64 2208, align 8
@QCforeground = constant i64 2256, align 8
@QCfoundry = constant i64 2304, align 8
@QCgnutls_bootprop_crlfiles = constant i64 2352, align 8
@QCgnutls_bootprop_hostname = constant i64 2400, align 8
@QCgnutls_bootprop_keylist = constant i64 2448, align 8
@QCgnutls_bootprop_loglevel = constant i64 2496, align 8
@QCgnutls_bootprop_min_prime_bits = constant i64 2544, align 8
@QCgnutls_bootprop_priority = constant i64 2592, align 8
@QCgnutls_bootprop_trustfiles = constant i64 2640, align 8
@QCgnutls_bootprop_verify_error = constant i64 2688, align 8
@QCgnutls_bootprop_verify_flags = constant i64 2736, align 8
@QCheight = constant i64 2784, align 8
@QChelp = constant i64 2832, align 8
@QCheuristic_mask = constant i64 2880, align 8
@QChinting = constant i64 2928, align 8
@QChintstyle = constant i64 2976, align 8
@QChost = constant i64 3024, align 8
@QCignore_defface = constant i64 3072, align 8
@QCimage = constant i64 3120, align 8
@QCindex = constant i64 3168, align 8
@QCinherit = constant i64 3216, align 8
@QCinverse_video = constant i64 3264, align 8
@QCitalic = constant i64 3312, align 8
@QCkey_sequence = constant i64 3360, align 8
@QCkeys = constant i64 3408, align 8
@QClabel = constant i64 3456, align 8
@QClang = constant i64 3504, align 8
@QClcdfilter = constant i64 3552, align 8
@QCline_width = constant i64 3600, align 8
@QCloader = constant i64 3648, align 8
@QClocal = constant i64 3696, align 8
@QClog = constant i64 3744, align 8
@QCmap = constant i64 3792, align 8
@QCmargin = constant i64 3840, align 8
@QCmask = constant i64 3888, align 8
@QCmatrix = constant i64 3936, align 8
@QCmax_height = constant i64 3984, align 8
@QCmax_width = constant i64 4032, align 8
@QCmnemonic = constant i64 4080, align 8
@QCname = constant i64 4128, align 8
@QCnoquery = constant i64 4176, align 8
@QCnowait = constant i64 4224, align 8
@QCotf = constant i64 4272, align 8
@QCoverline = constant i64 4320, align 8
@QCparity = constant i64 4368, align 8
@QCplist = constant i64 4416, align 8
@QCpointer = constant i64 4464, align 8
@QCport = constant i64 4512, align 8
@QCpost_read_conversion = constant i64 4560, align 8
@QCpre_write_conversion = constant i64 4608, align 8
@QCprocess = constant i64 4656, align 8
@QCpropertize = constant i64 4704, align 8
@QCpt_height = constant i64 4752, align 8
@QCpt_width = constant i64 4800, align 8
@QCradio = constant i64 4848, align 8
@QCregistry = constant i64 4896, align 8
@QCrehash_size = constant i64 4944, align 8
@QCrehash_threshold = constant i64 4992, align 8
@QCrelative_height = constant i64 5040, align 8
@QCrelative_width = constant i64 5088, align 8
@QCrelief = constant i64 5136, align 8
@QCremote = constant i64 5184, align 8
@QCreverse_video = constant i64 5232, align 8
@QCrgba = constant i64 5280, align 8
@QCrotation = constant i64 5328, align 8
@QCrtl = constant i64 5376, align 8
@QCscalable = constant i64 5424, align 8
@QCscript = constant i64 5472, align 8
@QCsentinel = constant i64 5520, align 8
@QCserver = constant i64 5568, align 8
@QCservice = constant i64 5616, align 8
@QCsize = constant i64 5664, align 8
@QCslant = constant i64 5712, align 8
@QCspacing = constant i64 5760, align 8
@QCspeed = constant i64 5808, align 8
@QCstderr = constant i64 5856, align 8
@QCstipple = constant i64 5904, align 8
@QCstop = constant i64 5952, align 8
@QCstopbits = constant i64 6000, align 8
@QCstrike_through = constant i64 6048, align 8
@QCstyle = constant i64 6096, align 8
@QCsummary = constant i64 6144, align 8
@QCtest = constant i64 6192, align 8
@QCtoggle = constant i64 6240, align 8
@QCtype = constant i64 6288, align 8
@QCunderline = constant i64 6336, align 8
@QCuser_spec = constant i64 6384, align 8
@QCvert_only = constant i64 6432, align 8
@QCvisible = constant i64 6480, align 8
@QCvolume = constant i64 6528, align 8
@QCweakness = constant i64 6576, align 8
@QCweight = constant i64 6624, align 8
@QCwidth = constant i64 6672, align 8
@QDELETE = constant i64 6720, align 8
@QEMACS_TMP = constant i64 6768, align 8
@QEmacsFrameResize = constant i64 6816, align 8
@QINCR = constant i64 6864, align 8
@QINTEGER = constant i64 6912, align 8
@QMULTIPLE = constant i64 6960, align 8
@QNULL = constant i64 7008, align 8
@QPRIMARY = constant i64 7056, align 8
@QSAVE_TARGETS = constant i64 7104, align 8
@QSECONDARY = constant i64 7152, align 8
@QSTRING = constant i64 7200, align 8
@QTARGETS = constant i64 7248, align 8
@QTEXT = constant i64 7296, align 8
@QTIMESTAMP = constant i64 7344, align 8
@QUTF8_STRING = constant i64 7392, align 8
@Qabove = constant i64 7440, align 8
@Qabove_handle = constant i64 7488, align 8
@Qaccess = constant i64 7536, align 8
@Qaccess_file = constant i64 7584, align 8
@Qactivate_input_method = constant i64 7632, align 8
@Qactivate_menubar_hook = constant i64 7680, align 8
@Qadd_name_to_file = constant i64 7728, align 8
@Qadjust_frame_size_1 = constant i64 7776, align 8
@Qadjust_frame_size_2 = constant i64 7824, align 8
@Qadjust_frame_size_3 = constant i64 7872, align 8
@Qafter_change_functions = constant i64 7920, align 8
@Qafter_handle = constant i64 7968, align 8
@Qafter_insert_file_set_coding = constant i64 8016, align 8
@Qafter_string = constant i64 8064, align 8
@Qall_events = constant i64 8112, align 8
@Qalpha = constant i64 8160, align 8
@Qalt = constant i64 8208, align 8
@Qand_optional = constant i64 8256, align 8
@Qand_rest = constant i64 8304, align 8
@Qappend = constant i64 8352, align 8
@Qapply = constant i64 8400, align 8
@Qargs = constant i64 8448, align 8
@Qargs_out_of_range = constant i64 8496, align 8
@Qarith_error = constant i64 8544, align 8
@Qarrayp = constant i64 8592, align 8
@Qarrow = constant i64 8640, align 8
@Qascii = constant i64 8688, align 8
@Qascii_0 = constant i64 8736, align 8
@Qascii_character = constant i64 8784, align 8
@Qattrib = constant i64 8832, align 8
@Qauto_composed = constant i64 8880, align 8
@Qauto_fill_chars = constant i64 8928, align 8
@Qauto_hscroll_mode = constant i64 8976, align 8
@Qauto_lower = constant i64 9024, align 8
@Qauto_raise = constant i64 9072, align 8
@Qauto_save_coding = constant i64 9120, align 8
@Qautoload = constant i64 9168, align 8
@Qautomatic_gc = constant i64 9216, align 8
@Qbackground_color = constant i64 9264, align 8
@Qbackground_mode = constant i64 9312, align 8
@Qbackquote = constant i64 9360, align 8
@Qbar = constant i64 9408, align 8
@Qbefore_change_functions = constant i64 9456, align 8
@Qbefore_handle = constant i64 9504, align 8
@Qbefore_string = constant i64 9552, align 8
@Qbeginning_of_buffer = constant i64 9600, align 8
@Qbelow_handle = constant i64 9648, align 8
@Qbig = constant i64 9696, align 8
@Qbig5 = constant i64 9744, align 8
@Qbitmap_spec_p = constant i64 9792, align 8
@Qbold = constant i64 9840, align 8
@Qbool_vector = constant i64 9888, align 8
@Qbool_vector_p = constant i64 9936, align 8
@Qborder = constant i64 9984, align 8
@Qborder_color = constant i64 10032, align 8
@Qborder_width = constant i64 10080, align 8
@Qboth = constant i64 10128, align 8
@Qboth_horiz = constant i64 10176, align 8
@Qbottom = constant i64 10224, align 8
@Qbottom_divider = constant i64 10272, align 8
@Qbottom_divider_width = constant i64 10320, align 8
@Qbottom_margin = constant i64 10368, align 8
@Qboundary = constant i64 10416, align 8
@Qbox = constant i64 10464, align 8
@Qbuffer = constant i64 10512, align 8
@Qbuffer_access_fontify_functions = constant i64 10560, align 8
@Qbuffer_file_coding_system = constant i64 10608, align 8
@Qbuffer_list = constant i64 10656, align 8
@Qbuffer_list_update_hook = constant i64 10704, align 8
@Qbuffer_name_history = constant i64 10752, align 8
@Qbuffer_or_string_p = constant i64 10800, align 8
@Qbuffer_position = constant i64 10848, align 8
@Qbuffer_predicate = constant i64 10896, align 8
@Qbuffer_read_only = constant i64 10944, align 8
@Qbufferp = constant i64 10992, align 8
@Qbuffers = constant i64 11040, align 8
@Qburied_buffer_list = constant i64 11088, align 8
@Qbyte_code_meter = constant i64 11136, align 8
@Qc = constant i64 11184, align 8
@Qcall_process = constant i64 11232, align 8
@Qcall_process_region = constant i64 11280, align 8
@Qcancel_timer = constant i64 11328, align 8
@Qcar_less_than_car = constant i64 11376, align 8
@Qcase_fold_search = constant i64 11424, align 8
@Qcase_table = constant i64 11472, align 8
@Qcase_table_p = constant i64 11520, align 8
@Qcategory = constant i64 11568, align 8
@Qcategory_table = constant i64 11616, align 8
@Qcategory_table_p = constant i64 11664, align 8
@Qcategoryp = constant i64 11712, align 8
@Qcategorysetp = constant i64 11760, align 8
@Qccl = constant i64 11808, align 8
@Qccl_program_idx = constant i64 11856, align 8
@Qcclp = constant i64 11904, align 8
@Qcdr = constant i64 11952, align 8
@Qceiling = constant i64 12000, align 8
@Qcenter = constant i64 12048, align 8
@Qchange_frame_size = constant i64 12096, align 8
@Qchange_major_mode_hook = constant i64 12144, align 8
@Qchar_code_property_table = constant i64 12192, align 8
@Qchar_or_string_p = constant i64 12240, align 8
@Qchar_script_table = constant i64 12288, align 8
@Qchar_table = constant i64 12336, align 8
@Qchar_table_extra_slots = constant i64 12384, align 8
@Qchar_table_p = constant i64 12432, align 8
@Qcharacterp = constant i64 12480, align 8
@Qcharset = constant i64 12528, align 8
@Qcharsetp = constant i64 12576, align 8
@Qchoice = constant i64 12624, align 8
@Qcircle = constant i64 12672, align 8
@Qcircular_list = constant i64 12720, align 8
@Qclone_of = constant i64 12768, align 8
@Qclose = constant i64 12816, align 8
@Qclose_nowrite = constant i64 12864, align 8
@Qclose_write = constant i64 12912, align 8
@Qclosed = constant i64 12960, align 8
@Qclosure = constant i64 13008, align 8
@Qcmajflt = constant i64 13056, align 8
@Qcminflt = constant i64 13104, align 8
@Qcode_conversion_map = constant i64 13152, align 8
@Qcode_conversion_map_id = constant i64 13200, align 8
@Qcodeset = constant i64 13248, align 8
@Qcoding_system_define_form = constant i64 13296, align 8
@Qcoding_system_error = constant i64 13344, align 8
@Qcoding_system_history = constant i64 13392, align 8
@Qcoding_system_p = constant i64 13440, align 8
@Qcomm = constant i64 13488, align 8
@Qcomma = constant i64 13536, align 8
@Qcomma_at = constant i64 13584, align 8
@Qcomma_dot = constant i64 13632, align 8
@Qcommand_execute = constant i64 13680, align 8
@Qcommandp = constant i64 13728, align 8
@Qcomment_end_can_be_escaped = constant i64 13776, align 8
@Qcompiled_function = constant i64 13824, align 8
@Qcompletion_ignore_case = constant i64 13872, align 8
@Qcomposition = constant i64 13920, align 8
@Qcompound_text = constant i64 13968, align 8
@Qconfig_changed_event = constant i64 14016, align 8
@Qconnect = constant i64 14064, align 8
@Qcons = constant i64 14112, align 8
@Qconses = constant i64 14160, align 8
@Qconsp = constant i64 14208, align 8
@Qcontinuation = constant i64 14256, align 8
@Qcopy_directory = constant i64 14304, align 8
@Qcopy_file = constant i64 14352, align 8
@Qcount = constant i64 14400, align 8
@Qcreate = constant i64 14448, align 8
@Qcstime = constant i64 14496, align 8
@Qctime = constant i64 14544, align 8
@Qcurrent_input_method = constant i64 14592, align 8
@Qcurrent_load_list = constant i64 14640, align 8
@Qcursor = constant i64 14688, align 8
@Qcursor_color = constant i64 14736, align 8
@Qcursor_in_echo_area = constant i64 14784, align 8
@Qcursor_type = constant i64 14832, align 8
@Qcustom_variable_p = constant i64 14880, align 8
@Qcutime = constant i64 14928, align 8
@Qcyclic_function_indirection = constant i64 14976, align 8
@Qcyclic_variable_indirection = constant i64 15024, align 8
@Qd = constant i64 15072, align 8
@Qdata = constant i64 15120, align 8
@Qdatagram = constant i64 15168, align 8
@Qdays = constant i64 15216, align 8
@Qdbus_event = constant i64 15264, align 8
@Qdeactivate_mark = constant i64 15312, align 8
@Qdebug = constant i64 15360, align 8
@Qdebug_on_next_call = constant i64 15408, align 8
@Qdecomposed_characters = constant i64 15456, align 8
@Qdefalias_fset_function = constant i64 15504, align 8
@Qdefault = constant i64 15552, align 8
@Qdefault_directory = constant i64 15600, align 8
@Qdeferred_action_function = constant i64 15648, align 8
@Qdefun = constant i64 15696, align 8
@Qdelay = constant i64 15744, align 8
@Qdelayed_warnings_hook = constant i64 15792, align 8
@Qdelete = constant i64 15840, align 8
@Qdelete_by_moving_to_trash = constant i64 15888, align 8
@Qdelete_directory = constant i64 15936, align 8
@Qdelete_file = constant i64 15984, align 8
@Qdelete_frame = constant i64 16032, align 8
@Qdelete_frame_functions = constant i64 16080, align 8
@Qdelete_self = constant i64 16128, align 8
@Qdelete_terminal_functions = constant i64 16176, align 8
@Qdelete_window = constant i64 16224, align 8
@Qdir_ok = constant i64 16272, align 8
@Qdirectory_file_name = constant i64 16320, align 8
@Qdirectory_files = constant i64 16368, align 8
@Qdirectory_files_and_attributes = constant i64 16416, align 8
@Qdisabled = constant i64 16464, align 8
@Qdisplay = constant i64 16512, align 8
@Qdisplay_buffer = constant i64 16560, align 8
@Qdisplay_table = constant i64 16608, align 8
@Qdisplay_type = constant i64 16656, align 8
@Qdo_after_load_evaluation = constant i64 16704, align 8
@Qdomain_error = constant i64 16752, align 8
@Qdont_follow = constant i64 16800, align 8
@Qdos = constant i64 16848, align 8
@Qdown = constant i64 16896, align 8
@Qdrag_n_drop = constant i64 16944, align 8
@Qdragging = constant i64 16992, align 8
@Qecho_area_clear_hook = constant i64 17040, align 8
@Qecho_keystrokes = constant i64 17088, align 8
@Qedge_detection = constant i64 17136, align 8
@Qegid = constant i64 17184, align 8
@Qeight_bit = constant i64 17232, align 8
@Qemacs = constant i64 17280, align 8
@Qemacs_mule = constant i64 17328, align 8
@Qemboss = constant i64 17376, align 8
@Qempty_box = constant i64 17424, align 8
@Qempty_line = constant i64 17472, align 8
@Qenable_recursive_minibuffers = constant i64 17520, align 8
@Qend_of_buffer = constant i64 17568, align 8
@Qend_of_file = constant i64 17616, align 8
@Qend_scroll = constant i64 17664, align 8
@Qeq = constant i64 17712, align 8
@Qeql = constant i64 17760, align 8
@Qequal = constant i64 17808, align 8
@Qerror = constant i64 17856, align 8
@Qerror_conditions = constant i64 17904, align 8
@Qerror_message = constant i64 17952, align 8
@Qescape_glyph = constant i64 18000, align 8
@Qetime = constant i64 18048, align 8
@Qeuid = constant i64 18096, align 8
@Qeval = constant i64 18144, align 8
@Qeval_buffer_list = constant i64 18192, align 8
@Qevaporate = constant i64 18240, align 8
@Qeven = constant i64 18288, align 8
@Qevent_kind = constant i64 18336, align 8
@Qevent_symbol_element_mask = constant i64 18384, align 8
@Qevent_symbol_elements = constant i64 18432, align 8
@Qexcl = constant i64 18480, align 8
@Qexcl_unlink = constant i64 18528, align 8
@Qexit = constant i64 18576, align 8
@Qexpand_abbrev = constant i64 18624, align 8
@Qexpand_file_name = constant i64 18672, align 8
@Qexplicit = constant i64 18720, align 8
@Qexplicit_name = constant i64 18768, align 8
@Qextension_data = constant i64 18816, align 8
@Qexternal_border_size = constant i64 18864, align 8
@Qexternal_debugging_output = constant i64 18912, align 8
@Qextra_bold = constant i64 18960, align 8
@Qextra_light = constant i64 19008, align 8
@Qface = constant i64 19056, align 8
@Qface_alias = constant i64 19104, align 8
@Qface_no_inherit = constant i64 19152, align 8
@Qface_set_after_frame_default = constant i64 19200, align 8
@Qfailed = constant i64 19248, align 8
@Qfboundp = constant i64 19296, align 8
@Qfield = constant i64 19344, align 8
@Qfile_accessible_directory_p = constant i64 19392, align 8
@Qfile_acl = constant i64 19440, align 8
@Qfile_already_exists = constant i64 19488, align 8
@Qfile_attributes = constant i64 19536, align 8
@Qfile_attributes_lessp = constant i64 19584, align 8
@Qfile_date_error = constant i64 19632, align 8
@Qfile_directory_p = constant i64 19680, align 8
@Qfile_error = constant i64 19728, align 8
@Qfile_executable_p = constant i64 19776, align 8
@Qfile_exists_p = constant i64 19824, align 8
@Qfile_modes = constant i64 19872, align 8
@Qfile_name_all_completions = constant i64 19920, align 8
@Qfile_name_as_directory = constant i64 19968, align 8
@Qfile_name_completion = constant i64 20016, align 8
@Qfile_name_directory = constant i64 20064, align 8
@Qfile_name_handler_alist = constant i64 20112, align 8
@Qfile_name_history = constant i64 20160, align 8
@Qfile_name_nondirectory = constant i64 20208, align 8
@Qfile_newer_than_file_p = constant i64 20256, align 8
@Qfile_notify = constant i64 20304, align 8
@Qfile_notify_error = constant i64 20352, align 8
@Qfile_readable_p = constant i64 20400, align 8
@Qfile_regular_p = constant i64 20448, align 8
@Qfile_selinux_context = constant i64 20496, align 8
@Qfile_symlink_p = constant i64 20544, align 8
@Qfile_truename = constant i64 20592, align 8
@Qfile_writable_p = constant i64 20640, align 8
@Qfinalizer = constant i64 20688, align 8
@Qfirst_change_hook = constant i64 20736, align 8
@Qfloat = constant i64 20784, align 8
@Qfloatp = constant i64 20832, align 8
@Qfloats = constant i64 20880, align 8
@Qfloor = constant i64 20928, align 8
@Qfocus_in = constant i64 20976, align 8
@Qfocus_out = constant i64 21024, align 8
@Qfont = constant i64 21072, align 8
@Qfont_backend = constant i64 21120, align 8
@Qfont_entity = constant i64 21168, align 8
@Qfont_name = constant i64 21216, align 8
@Qfont_object = constant i64 21264, align 8
@Qfont_param = constant i64 21312, align 8
@Qfont_render = constant i64 21360, align 8
@Qfont_spec = constant i64 21408, align 8
@Qfontification_functions = constant i64 21456, align 8
@Qfontified = constant i64 21504, align 8
@Qfontset = constant i64 21552, align 8
@Qfontset_info = constant i64 21600, align 8
@Qforeground_color = constant i64 21648, align 8
@Qforeign_selection = constant i64 21696, align 8
@Qformat_annotate_function = constant i64 21744, align 8
@Qformat_decode = constant i64 21792, align 8
@Qfraction = constant i64 21840, align 8
@Qframe = constant i64 21888, align 8
@Qframe_inhibit_resize = constant i64 21936, align 8
@Qframe_live_p = constant i64 21984, align 8
@Qframe_set_background_mode = constant i64 22032, align 8
@Qframe_windows_min_size = constant i64 22080, align 8
@Qframep = constant i64 22128, align 8
@Qframes = constant i64 22176, align 8
@Qfree_frame_menubar_1 = constant i64 22224, align 8
@Qfree_frame_menubar_2 = constant i64 22272, align 8
@Qfree_frame_tool_bar = constant i64 22320, align 8
@Qfreetype = constant i64 22368, align 8
@Qfringe = constant i64 22416, align 8
@Qfront_sticky = constant i64 22464, align 8
@Qftx = constant i64 22512, align 8
@Qfullboth = constant i64 22560, align 8
@Qfullheight = constant i64 22608, align 8
@Qfullscreen = constant i64 22656, align 8
@Qfullwidth = constant i64 22704, align 8
@Qfuncall = constant i64 22752, align 8
@Qfuncall_interactively = constant i64 22800, align 8
@Qfunction = constant i64 22848, align 8
@Qfunction_documentation = constant i64 22896, align 8
@Qfunction_key = constant i64 22944, align 8
@Qfundamental_mode = constant i64 22992, align 8
@Qgc_cons_threshold = constant i64 23040, align 8
@Qgdk_pixbuf = constant i64 23088, align 8
@Qgeometry = constant i64 23136, align 8
@Qget_buffer_window_list = constant i64 23184, align 8
@Qget_emacs_mule_file_char = constant i64 23232, align 8
@Qget_file_buffer = constant i64 23280, align 8
@Qget_file_char = constant i64 23328, align 8
@Qget_mru_window = constant i64 23376, align 8
@Qgif = constant i64 23424, align 8
@Qglib = constant i64 23472, align 8
@Qglyphless_char = constant i64 23520, align 8
@Qglyphless_char_display = constant i64 23568, align 8
@Qgnutls_anon = constant i64 23616, align 8
@Qgnutls_code = constant i64 23664, align 8
@Qgnutls_e_again = constant i64 23712, align 8
@Qgnutls_e_interrupted = constant i64 23760, align 8
@Qgnutls_e_invalid_session = constant i64 23808, align 8
@Qgnutls_e_not_ready_for_handshake = constant i64 23856, align 8
@Qgnutls_x509pki = constant i64 23904, align 8
@Qgobject = constant i64 23952, align 8
@Qgrave = constant i64 24000, align 8
@Qgroup = constant i64 24048, align 8
@Qgrow_only = constant i64 24096, align 8
@Qgui_set_selection = constant i64 24144, align 8
@Qhand = constant i64 24192, align 8
@Qhandle = constant i64 24240, align 8
@Qhandle_select_window = constant i64 24288, align 8
@Qhandle_shift_selection = constant i64 24336, align 8
@Qhandle_switch_frame = constant i64 24384, align 8
@Qhash_table = constant i64 24432, align 8
@Qhash_table_p = constant i64 24480, align 8
@Qhash_table_test = constant i64 24528, align 8
@Qhbar = constant i64 24576, align 8
@Qheader_line = constant i64 24624, align 8
@Qheap = constant i64 24672, align 8
@Qheight = constant i64 24720, align 8
@Qhelp_echo = constant i64 24768, align 8
@Qhelp_form_show = constant i64 24816, align 8
@Qheuristic = constant i64 24864, align 8
@Qhex_code = constant i64 24912, align 8
@Qhistory_length = constant i64 24960, align 8
@Qhollow = constant i64 25008, align 8
@Qhollow_small = constant i64 25056, align 8
@Qhorizontal_handle = constant i64 25104, align 8
@Qhorizontal_scroll_bar = constant i64 25152, align 8
@Qhorizontal_scroll_bars = constant i64 25200, align 8
@Qhw = constant i64 25248, align 8
@Qhyper = constant i64 25296, align 8
@Qicon = constant i64 25344, align 8
@Qicon_left = constant i64 25392, align 8
@Qicon_name = constant i64 25440, align 8
@Qicon_top = constant i64 25488, align 8
@Qicon_type = constant i64 25536, align 8
@Qiconify_frame = constant i64 25584, align 8
@Qidentity = constant i64 25632, align 8
@Qif = constant i64 25680, align 8
@Qignored = constant i64 25728, align 8
@Qimage = constant i64 25776, align 8
@Qimagemagick = constant i64 25824, align 8
@Qinhibit_debugger = constant i64 25872, align 8
@Qinhibit_eval_during_redisplay = constant i64 25920, align 8
@Qinhibit_file_name_operation = constant i64 25968, align 8
@Qinhibit_free_realized_faces = constant i64 26016, align 8
@Qinhibit_menubar_update = constant i64 26064, align 8
@Qinhibit_modification_hooks = constant i64 26112, align 8
@Qinhibit_point_motion_hooks = constant i64 26160, align 8
@Qinhibit_quit = constant i64 26208, align 8
@Qinhibit_read_only = constant i64 26256, align 8
@Qinhibit_redisplay = constant i64 26304, align 8
@Qinner_edges = constant i64 26352, align 8
@Qinput_method_exit_on_first_char = constant i64 26400, align 8
@Qinput_method_use_echo_area = constant i64 26448, align 8
@Qinsert_behind_hooks = constant i64 26496, align 8
@Qinsert_file_contents = constant i64 26544, align 8
@Qinsert_in_front_hooks = constant i64 26592, align 8
@Qinsufficient_source = constant i64 26640, align 8
@Qintangible = constant i64 26688, align 8
@Qinteger = constant i64 26736, align 8
@Qinteger_or_marker_p = constant i64 26784, align 8
@Qintegerp = constant i64 26832, align 8
@Qinteractive = constant i64 26880, align 8
@Qinteractive_form = constant i64 26928, align 8
@Qinternal__syntax_propertize = constant i64 26976, align 8
@Qinternal_border_width = constant i64 27024, align 8
@Qinternal_default_process_filter = constant i64 27072, align 8
@Qinternal_default_process_sentinel = constant i64 27120, align 8
@Qinternal_echo_keystrokes_prefix = constant i64 27168, align 8
@Qinternal_interpreter_environment = constant i64 27216, align 8
@Qinterrupted = constant i64 27264, align 8
@Qintervals = constant i64 27312, align 8
@Qinvalid_function = constant i64 27360, align 8
@Qinvalid_read_syntax = constant i64 27408, align 8
@Qinvalid_regexp = constant i64 27456, align 8
@Qinvalid_source = constant i64 27504, align 8
@Qinvisible = constant i64 27552, align 8
@Qipv4 = constant i64 27600, align 8
@Qipv6 = constant i64 27648, align 8
@Qisdir = constant i64 27696, align 8
@Qiso10646_1 = constant i64 27744, align 8
@Qiso8859_1 = constant i64 27792, align 8
@Qiso_2022 = constant i64 27840, align 8
@Qiso_8859_1 = constant i64 27888, align 8
@Qitalic = constant i64 27936, align 8
@Qja = constant i64 27984, align 8
@Qjpeg = constant i64 28032, align 8
@Qkbd_macro_termination_hook = constant i64 28080, align 8
@Qkey = constant i64 28128, align 8
@Qkey_and_value = constant i64 28176, align 8
@Qkey_or_value = constant i64 28224, align 8
@Qkeymap = constant i64 28272, align 8
@Qkeymap_canonicalize = constant i64 28320, align 8
@Qkeymapp = constant i64 28368, align 8
@Qkill_buffer_hook = constant i64 28416, align 8
@Qkill_buffer_query_functions = constant i64 28464, align 8
@Qkill_emacs = constant i64 28512, align 8
@Qkill_emacs_hook = constant i64 28560, align 8
@Qkill_forward_chars = constant i64 28608, align 8
@Qko = constant i64 28656, align 8
@Qlambda = constant i64 28704, align 8
@Qlandscape = constant i64 28752, align 8
@Qlanguage_change = constant i64 28800, align 8
@Qlaplace = constant i64 28848, align 8
@Qlast_arrow_position = constant i64 28896, align 8
@Qlast_arrow_string = constant i64 28944, align 8
@Qlast_nonmenu_event = constant i64 28992, align 8
@Qlatin = constant i64 29040, align 8
@Qlatin_1 = constant i64 29088, align 8
@Qleft = constant i64 29136, align 8
@Qleft_fringe = constant i64 29184, align 8
@Qleft_margin = constant i64 29232, align 8
@Qleft_to_right = constant i64 29280, align 8
@Qleftmost = constant i64 29328, align 8
@Qlet = constant i64 29376, align 8
@Qletx = constant i64 29424, align 8
@Qlexical_binding = constant i64 29472, align 8
@Qlibgif_version = constant i64 29520, align 8
@Qlibgnutls_version = constant i64 29568, align 8
@Qlibjpeg_version = constant i64 29616, align 8
@Qlibpng_version = constant i64 29664, align 8
@Qlight = constant i64 29712, align 8
@Qline = constant i64 29760, align 8
@Qline_height = constant i64 29808, align 8
@Qline_prefix = constant i64 29856, align 8
@Qline_spacing = constant i64 29904, align 8
@Qlist = constant i64 29952, align 8
@Qlisten = constant i64 30000, align 8
@Qlistp = constant i64 30048, align 8
@Qlittle = constant i64 30096, align 8
@Qload = constant i64 30144, align 8
@Qload_file_name = constant i64 30192, align 8
@Qload_force_doc_strings = constant i64 30240, align 8
@Qload_in_progress = constant i64 30288, align 8
@Qlocal = constant i64 30336, align 8
@Qlocal_map = constant i64 30384, align 8
@Qm = constant i64 30432, align 8
@Qmac = constant i64 30480, align 8
@Qmacro = constant i64 30528, align 8
@Qmajflt = constant i64 30576, align 8
@Qmake_directory = constant i64 30624, align 8
@Qmake_directory_internal = constant i64 30672, align 8
@Qmake_frame_visible = constant i64 30720, align 8
@Qmake_symbolic_link = constant i64 30768, align 8
@Qmany = constant i64 30816, align 8
@Qmargin = constant i64 30864, align 8
@Qmark_inactive = constant i64 30912, align 8
@Qmarker = constant i64 30960, align 8
@Qmarkerp = constant i64 31008, align 8
@Qmask_add = constant i64 31056, align 8
@Qmaximized = constant i64 31104, align 8
@Qmd5 = constant i64 31152, align 8
@Qmenu = constant i64 31200, align 8
@Qmenu_bar = constant i64 31248, align 8
@Qmenu_bar_external = constant i64 31296, align 8
@Qmenu_bar_lines = constant i64 31344, align 8
@Qmenu_bar_size = constant i64 31392, align 8
@Qmenu_bar_update_hook = constant i64 31440, align 8
@Qmenu_enable = constant i64 31488, align 8
@Qmenu_item = constant i64 31536, align 8
@Qmeta = constant i64 31584, align 8
@Qmetadata = constant i64 31632, align 8
@Qminflt = constant i64 31680, align 8
@Qminibuffer = constant i64 31728, align 8
@Qminibuffer_completion_table = constant i64 31776, align 8
@Qminibuffer_default = constant i64 31824, align 8
@Qminibuffer_exit_hook = constant i64 31872, align 8
@Qminibuffer_history = constant i64 31920, align 8
@Qminibuffer_prompt = constant i64 31968, align 8
@Qminibuffer_setup_hook = constant i64 32016, align 8
@Qminus = constant i64 32064, align 8
@Qmiscs = constant i64 32112, align 8
@Qmm_size = constant i64 32160, align 8
@Qmode_class = constant i64 32208, align 8
@Qmode_line = constant i64 32256, align 8
@Qmode_line_default_help_echo = constant i64 32304, align 8
@Qmode_line_inactive = constant i64 32352, align 8
@Qmodeline = constant i64 32400, align 8
@Qmodification_hooks = constant i64 32448, align 8
@Qmodifier_cache = constant i64 32496, align 8
@Qmodifier_value = constant i64 32544, align 8
@Qmodify = constant i64 32592, align 8
@Qmono = constant i64 32640, align 8
@Qmonospace = constant i64 32688, align 8
@Qmonospace_font_name = constant i64 32736, align 8
@Qmonths = constant i64 32784, align 8
@Qmouse = constant i64 32832, align 8
@Qmouse_click = constant i64 32880, align 8
@Qmouse_color = constant i64 32928, align 8
@Qmouse_face = constant i64 32976, align 8
@Qmouse_fixup_help_message = constant i64 33024, align 8
@Qmouse_leave_buffer_hook = constant i64 33072, align 8
@Qmouse_movement = constant i64 33120, align 8
@Qmove = constant i64 33168, align 8
@Qmove_file_to_trash = constant i64 33216, align 8
@Qmove_self = constant i64 33264, align 8
@Qmoved_from = constant i64 33312, align 8
@Qmoved_to = constant i64 33360, align 8
@Qname = constant i64 33408, align 8
@Qnative_edges = constant i64 33456, align 8
@Qnatnump = constant i64 33504, align 8
@Qnetwork = constant i64 33552, align 8
@Qnice = constant i64 33600, align 8
@Qno_catch = constant i64 33648, align 8
@Qno_conversion = constant i64 33696, align 8
@Qnobreak_space = constant i64 33744, align 8
@Qnoelisp = constant i64 33792, align 8
@Qnon_ascii = constant i64 33840, align 8
@Qnone = constant i64 33888, align 8
@Qnormal = constant i64 33936, align 8
@Qns = constant i64 33984, align 8
@Qns_parse_geometry = constant i64 34032, align 8
@Qnumber_or_marker_p = constant i64 34080, align 8
@Qnumberp = constant i64 34128, align 8
@Qobject = constant i64 34176, align 8
@Qoblique = constant i64 34224, align 8
@Qodd = constant i64 34272, align 8
@Qold_style_backquotes = constant i64 34320, align 8
@Qoneshot = constant i64 34368, align 8
@Qonly = constant i64 34416, align 8
@Qonlydir = constant i64 34464, align 8
@Qopen = constant i64 34512, align 8
@Qopen_network_stream = constant i64 34560, align 8
@Qopentype = constant i64 34608, align 8
@Qoperations = constant i64 34656, align 8
@Qorientation = constant i64 34704, align 8
@Qouter_edges = constant i64 34752, align 8
@Qouter_position = constant i64 34800, align 8
@Qouter_size = constant i64 34848, align 8
@Qouter_window_id = constant i64 34896, align 8
@Qoverflow_error = constant i64 34944, align 8
@Qoverlay = constant i64 34992, align 8
@Qoverlay_arrow = constant i64 35040, align 8
@Qoverlay_arrow_bitmap = constant i64 35088, align 8
@Qoverlay_arrow_string = constant i64 35136, align 8
@Qoverlayp = constant i64 35184, align 8
@Qoverriding_local_map = constant i64 35232, align 8
@Qoverriding_terminal_local_map = constant i64 35280, align 8
@Qoverwrite_mode = constant i64 35328, align 8
@Qoverwrite_mode_binary = constant i64 35376, align 8
@Qp = constant i64 35424, align 8
@Qpaper = constant i64 35472, align 8
@Qparagraph_separate = constant i64 35520, align 8
@Qparagraph_start = constant i64 35568, align 8
@Qparent_id = constant i64 35616, align 8
@Qpbm = constant i64 35664, align 8
@Qpc = constant i64 35712, align 8
@Qpcpu = constant i64 35760, align 8
@Qpdf = constant i64 35808, align 8
@Qpermanent_local = constant i64 35856, align 8
@Qpermanent_local_hook = constant i64 35904, align 8
@Qpgrp = constant i64 35952, align 8
@Qpipe = constant i64 36000, align 8
@Qplay_sound_functions = constant i64 36048, align 8
@Qplus = constant i64 36096, align 8
@Qpmem = constant i64 36144, align 8
@Qpng = constant i64 36192, align 8
@Qpoint_entered = constant i64 36240, align 8
@Qpoint_left = constant i64 36288, align 8
@Qpointer = constant i64 36336, align 8
@Qpolling_period = constant i64 36384, align 8
@Qpoly = constant i64 36432, align 8
@Qportrait = constant i64 36480, align 8
@Qposition = constant i64 36528, align 8
@Qpost_command_hook = constant i64 36576, align 8
@Qpost_gc_hook = constant i64 36624, align 8
@Qpost_self_insert_hook = constant i64 36672, align 8
@Qpostscript = constant i64 36720, align 8
@Qppid = constant i64 36768, align 8
@Qpre_command_hook = constant i64 36816, align 8
@Qpressed_button = constant i64 36864, align 8
@Qpri = constant i64 36912, align 8
@Qprint_escape_multibyte = constant i64 36960, align 8
@Qprint_escape_newlines = constant i64 37008, align 8
@Qprint_escape_nonascii = constant i64 37056, align 8
@Qpriority = constant i64 37104, align 8
@Qprocess = constant i64 37152, align 8
@Qprocessp = constant i64 37200, align 8
@Qprofiler_backtrace_equal = constant i64 37248, align 8
@Qprogn = constant i64 37296, align 8
@Qprotected_field = constant i64 37344, align 8
@Qprovide = constant i64 37392, align 8
@Qpty = constant i64 37440, align 8
@Qq_overflow = constant i64 37488, align 8
@Qquit = constant i64 37536, align 8
@Qquote = constant i64 37584, align 8
@Qraise = constant i64 37632, align 8
@Qrange = constant i64 37680, align 8
@Qrange_error = constant i64 37728, align 8
@Qratio = constant i64 37776, align 8
@Qraw_text = constant i64 37824, align 8
@Qread = constant i64 37872, align 8
@Qread_char = constant i64 37920, align 8
@Qread_number = constant i64 37968, align 8
@Qread_only = constant i64 38016, align 8
@Qreal = constant i64 38064, align 8
@Qrear_nonsticky = constant i64 38112, align 8
@Qrecompute_lucid_menubar = constant i64 38160, align 8
@Qrecord_window_buffer = constant i64 38208, align 8
@Qrect = constant i64 38256, align 8
@Qredisplay_dont_pause = constant i64 38304, align 8
@Qredisplay_end_trigger_functions = constant i64 38352, align 8
@Qredisplay_internal = constant i64 38400, align 8
@Qregion_extract_function = constant i64 38448, align 8
@Qrehash_size = constant i64 38496, align 8
@Qrehash_threshold = constant i64 38544, align 8
@Qreleased_button = constant i64 38592, align 8
@Qremap = constant i64 38640, align 8
@Qrename_file = constant i64 38688, align 8
@Qreplace_buffer_in_windows = constant i64 38736, align 8
@Qrequire = constant i64 38784, align 8
@Qreverse_landscape = constant i64 38832, align 8
@Qreverse_portrait = constant i64 38880, align 8
@Qright = constant i64 38928, align 8
@Qright_divider = constant i64 38976, align 8
@Qright_divider_width = constant i64 39024, align 8
@Qright_fringe = constant i64 39072, align 8
@Qright_margin = constant i64 39120, align 8
@Qright_to_left = constant i64 39168, align 8
@Qrightmost = constant i64 39216, align 8
@Qrisky_local_variable = constant i64 39264, align 8
@Qrss = constant i64 39312, align 8
@Qrun = constant i64 39360, align 8
@Qrun_hook_with_args = constant i64 39408, align 8
@Qsafe = constant i64 39456, align 8
@Qsans = constant i64 39504, align 8
@Qsans__serif = constant i64 39552, align 8
@Qsans_serif = constant i64 39600, align 8
@Qsave_excursion = constant i64 39648, align 8
@Qsave_session = constant i64 39696, align 8
@Qscan_error = constant i64 39744, align 8
@Qscreen_gamma = constant i64 39792, align 8
@Qscroll_bar = constant i64 39840, align 8
@Qscroll_bar_background = constant i64 39888, align 8
@Qscroll_bar_foreground = constant i64 39936, align 8
@Qscroll_bar_height = constant i64 39984, align 8
@Qscroll_bar_movement = constant i64 40032, align 8
@Qscroll_bar_width = constant i64 40080, align 8
@Qscroll_command = constant i64 40128, align 8
@Qscroll_down = constant i64 40176, align 8
@Qscroll_up = constant i64 40224, align 8
@Qsearch_failed = constant i64 40272, align 8
@Qselect_window = constant i64 40320, align 8
@Qsemi_bold = constant i64 40368, align 8
@Qsemi_light = constant i64 40416, align 8
@Qseqpacket = constant i64 40464, align 8
@Qsequencep = constant i64 40512, align 8
@Qserial = constant i64 40560, align 8
@Qsess = constant i64 40608, align 8
@Qset_file_acl = constant i64 40656, align 8
@Qset_file_modes = constant i64 40704, align 8
@Qset_file_selinux_context = constant i64 40752, align 8
@Qset_file_times = constant i64 40800, align 8
@Qset_frame_size = constant i64 40848, align 8
@Qset_visited_file_modtime = constant i64 40896, align 8
@Qset_window_configuration = constant i64 40944, align 8
@Qsetq = constant i64 40992, align 8
@Qsetting_constant = constant i64 41040, align 8
@Qsha1 = constant i64 41088, align 8
@Qsha224 = constant i64 41136, align 8
@Qsha256 = constant i64 41184, align 8
@Qsha384 = constant i64 41232, align 8
@Qsha512 = constant i64 41280, align 8
@Qshift_jis = constant i64 41328, align 8
@Qsignal = constant i64 41376, align 8
@Qsingularity_error = constant i64 41424, align 8
@Qsize = constant i64 41472, align 8
@Qslice = constant i64 41520, align 8
@Qsound = constant i64 41568, align 8
@Qsource = constant i64 41616, align 8
@Qspace = constant i64 41664, align 8
@Qspace_width = constant i64 41712, align 8
@Qstandard_input = constant i64 41760, align 8
@Qstandard_output = constant i64 41808, align 8
@Qstart = constant i64 41856, align 8
@Qstart_process = constant i64 41904, align 8
@Qstate = constant i64 41952, align 8
@Qstderr = constant i64 42000, align 8
@Qstdin = constant i64 42048, align 8
@Qstdout = constant i64 42096, align 8
@Qsticky = constant i64 42144, align 8
@Qstime = constant i64 42192, align 8
@Qstop = constant i64 42240, align 8
@Qstraight = constant i64 42288, align 8
@Qstring = constant i64 42336, align 8
@Qstring_bytes = constant i64 42384, align 8
@Qstring_lessp = constant i64 42432, align 8
@Qstringp = constant i64 42480, align 8
@Qstrings = constant i64 42528, align 8
@Qsubfeatures = constant i64 42576, align 8
@Qsubr = constant i64 42624, align 8
@Qsubrp = constant i64 42672, align 8
@Qsubstitute_env_in_file_name = constant i64 42720, align 8
@Qsubstitute_in_file_name = constant i64 42768, align 8
@Qsuper = constant i64 42816, align 8
@Qsvg = constant i64 42864, align 8
@Qsw = constant i64 42912, align 8
@Qswitch_frame = constant i64 42960, align 8
@Qsymbol = constant i64 43008, align 8
@Qsymbolp = constant i64 43056, align 8
@Qsymbols = constant i64 43104, align 8
@Qsyntax_table = constant i64 43152, align 8
@Qsyntax_table_p = constant i64 43200, align 8
@Qt = constant i64 43248, align 8
@Qtarget_idx = constant i64 43296, align 8
@Qtb_size_cb = constant i64 43344, align 8
@Qtemp_buffer_setup_hook = constant i64 43392, align 8
@Qtemp_buffer_show_hook = constant i64 43440, align 8
@Qterminal = constant i64 43488, align 8
@Qterminal_frame = constant i64 43536, align 8
@Qterminal_live_p = constant i64 43584, align 8
@Qtest = constant i64 43632, align 8
@Qtext = constant i64 43680, align 8
@Qtext_image_horiz = constant i64 43728, align 8
@Qtext_pixels = constant i64 43776, align 8
@Qtext_read_only = constant i64 43824, align 8
@Qthcount = constant i64 43872, align 8
@Qthin_space = constant i64 43920, align 8
@Qtiff = constant i64 43968, align 8
@Qtime = constant i64 44016, align 8
@Qtimer_event_handler = constant i64 44064, align 8
@Qtitle = constant i64 44112, align 8
@Qtitle_bar_size = constant i64 44160, align 8
@Qtool_bar = constant i64 44208, align 8
@Qtool_bar_external = constant i64 44256, align 8
@Qtool_bar_lines = constant i64 44304, align 8
@Qtool_bar_position = constant i64 44352, align 8
@Qtool_bar_size = constant i64 44400, align 8
@Qtool_bar_style = constant i64 44448, align 8
@Qtooltip = constant i64 44496, align 8
@Qtop = constant i64 44544, align 8
@Qtop_bottom = constant i64 44592, align 8
@Qtop_level = constant i64 44640, align 8
@Qtop_margin = constant i64 44688, align 8
@Qtpgid = constant i64 44736, align 8
@Qtrailing_whitespace = constant i64 44784, align 8
@Qtranslation_table = constant i64 44832, align 8
@Qtranslation_table_id = constant i64 44880, align 8
@Qtruncation = constant i64 44928, align 8
@Qttname = constant i64 44976, align 8
@Qtty = constant i64 45024, align 8
@Qtty_color_alist = constant i64 45072, align 8
@Qtty_color_by_index = constant i64 45120, align 8
@Qtty_color_desc = constant i64 45168, align 8
@Qtty_color_mode = constant i64 45216, align 8
@Qtty_color_standard_values = constant i64 45264, align 8
@Qtty_menu_exit = constant i64 45312, align 8
@Qtty_menu_ignore = constant i64 45360, align 8
@Qtty_menu_mouse_movement = constant i64 45408, align 8
@Qtty_menu_navigation_map = constant i64 45456, align 8
@Qtty_menu_next_item = constant i64 45504, align 8
@Qtty_menu_next_menu = constant i64 45552, align 8
@Qtty_menu_prev_item = constant i64 45600, align 8
@Qtty_menu_prev_menu = constant i64 45648, align 8
@Qtty_menu_select = constant i64 45696, align 8
@Qtty_mode_reset_strings = constant i64 45744, align 8
@Qtty_mode_set_strings = constant i64 45792, align 8
@Qtty_type = constant i64 45840, align 8
@Qultra_bold = constant i64 45888, align 8
@Qunbound = constant i64 45936, align 8
@Qundecided = constant i64 45984, align 8
@Qundefined = constant i64 46032, align 8
@Qundefined_color = constant i64 46080, align 8
@Qunderflow_error = constant i64 46128, align 8
@Qundo_auto__add_boundary = constant i64 46176, align 8
@Qundo_auto__last_boundary_cause = constant i64 46224, align 8
@Qundo_auto__this_command_amalgamating = constant i64 46272, align 8
@Qundo_auto__undoable_change = constant i64 46320, align 8
@Qundo_auto__undoable_change_no_timer = constant i64 46368, align 8
@Qundo_auto__undoably_changed_buffers = constant i64 46416, align 8
@Qundo_auto_amalgamate = constant i64 46464, align 8
@Qunevalled = constant i64 46512, align 8
@Qunhandled_file_name_directory = constant i64 46560, align 8
@Qunicode = constant i64 46608, align 8
@Qunicode_bmp = constant i64 46656, align 8
@Qunix = constant i64 46704, align 8
@Qunmount = constant i64 46752, align 8
@Qunspecified = constant i64 46800, align 8
@Qunsplittable = constant i64 46848, align 8
@Qup = constant i64 46896, align 8
@Qupdate_frame_menubar = constant i64 46944, align 8
@Qupdate_frame_tool_bar = constant i64 46992, align 8
@Quser = constant i64 47040, align 8
@Quser_error = constant i64 47088, align 8
@Quser_position = constant i64 47136, align 8
@Quser_ptr = constant i64 47184, align 8
@Quser_ptrp = constant i64 47232, align 8
@Quser_size = constant i64 47280, align 8
@Qutf_16 = constant i64 47328, align 8
@Qutf_16le = constant i64 47376, align 8
@Qutf_8 = constant i64 47424, align 8
@Qutf_8_emacs = constant i64 47472, align 8
@Qutime = constant i64 47520, align 8
@Qvalue = constant i64 47568, align 8
@Qvariable_documentation = constant i64 47616, align 8
@Qvector = constant i64 47664, align 8
@Qvector_or_char_table_p = constant i64 47712, align 8
@Qvector_slots = constant i64 47760, align 8
@Qvectorp = constant i64 47808, align 8
@Qvectors = constant i64 47856, align 8
@Qvendor_specific_keysyms = constant i64 47904, align 8
@Qverify_visited_file_modtime = constant i64 47952, align 8
@Qvertical_border = constant i64 48000, align 8
@Qvertical_line = constant i64 48048, align 8
@Qvertical_scroll_bar = constant i64 48096, align 8
@Qvertical_scroll_bars = constant i64 48144, align 8
@Qvisibility = constant i64 48192, align 8
@Qvisible = constant i64 48240, align 8
@Qvoid_function = constant i64 48288, align 8
@Qvoid_variable = constant i64 48336, align 8
@Qvsize = constant i64 48384, align 8
@Qw32 = constant i64 48432, align 8
@Qwait_for_wm = constant i64 48480, align 8
@Qwall = constant i64 48528, align 8
@Qwave = constant i64 48576, align 8
@Qweakness = constant i64 48624, align 8
@Qwhen = constant i64 48672, align 8
@Qwholenump = constant i64 48720, align 8
@Qwidget_type = constant i64 48768, align 8
@Qwidth = constant i64 48816, align 8
@Qwindow = constant i64 48864, align 8
@Qwindow_configuration = constant i64 48912, align 8
@Qwindow_configuration_change_hook = constant i64 48960, align 8
@Qwindow_configuration_p = constant i64 49008, align 8
@Qwindow_deletable_p = constant i64 49056, align 8
@Qwindow_divider = constant i64 49104, align 8
@Qwindow_divider_first_pixel = constant i64 49152, align 8
@Qwindow_divider_last_pixel = constant i64 49200, align 8
@Qwindow_id = constant i64 49248, align 8
@Qwindow_live_p = constant i64 49296, align 8
@Qwindow_pixel_to_total = constant i64 49344, align 8
@Qwindow_point_insertion_type = constant i64 49392, align 8
@Qwindow_resize_root_window = constant i64 49440, align 8
@Qwindow_resize_root_window_vertically = constant i64 49488, align 8
@Qwindow_sanitize_window_sizes = constant i64 49536, align 8
@Qwindow_scroll_functions = constant i64 49584, align 8
@Qwindow_size = constant i64 49632, align 8
@Qwindow_text_change_functions = constant i64 49680, align 8
@Qwindow_valid_p = constant i64 49728, align 8
@Qwindowp = constant i64 49776, align 8
@Qworkarea = constant i64 49824, align 8
@Qwrap_prefix = constant i64 49872, align 8
@Qwrite_region = constant i64 49920, align 8
@Qwrite_region_annotate_functions = constant i64 49968, align 8
@Qwrong_length_argument = constant i64 50016, align 8
@Qwrong_number_of_arguments = constant i64 50064, align 8
@Qwrong_type_argument = constant i64 50112, align 8
@Qx = constant i64 50160, align 8
@Qx_check_fullscreen = constant i64 50208, align 8
@Qx_create_frame_1 = constant i64 50256, align 8
@Qx_create_frame_2 = constant i64 50304, align 8
@Qx_frame_parameter = constant i64 50352, align 8
@Qx_gtk_map_stock = constant i64 50400, align 8
@Qx_handle_net_wm_state = constant i64 50448, align 8
@Qx_lost_selection_functions = constant i64 50496, align 8
@Qx_net_wm_state = constant i64 50544, align 8
@Qx_resource_name = constant i64 50592, align 8
@Qx_sent_selection_functions = constant i64 50640, align 8
@Qx_set_frame_parameters = constant i64 50688, align 8
@Qx_set_fullscreen = constant i64 50736, align 8
@Qx_set_menu_bar_lines = constant i64 50784, align 8
@Qx_set_window_size_1 = constant i64 50832, align 8
@Qx_set_window_size_2 = constant i64 50880, align 8
@Qx_set_window_size_3 = constant i64 50928, align 8
@Qxbm = constant i64 50976, align 8
@Qxft = constant i64 51024, align 8
@Qxg_change_toolbar_position = constant i64 51072, align 8
@Qxg_frame_resized = constant i64 51120, align 8
@Qxg_frame_set_char_size = constant i64 51168, align 8
@Qxg_frame_set_char_size_1 = constant i64 51216, align 8
@Qxg_frame_set_char_size_2 = constant i64 51264, align 8
@Qxg_frame_set_char_size_3 = constant i64 51312, align 8
@Qxpm = constant i64 51360, align 8
@Qxwidget_event = constant i64 51408, align 8
@Qyes_or_no_p_history = constant i64 51456, align 8
@Qzero_width = constant i64 51504, align 8
@ARRAY_MARK_FLAG = constant i64 -9223372036854775808, align 8
@PSEUDOVECTOR_FLAG = constant i64 4611686018427387904, align 8
@VALMASK = constant i64 -8, align 8
@lispsym = external global [1074 x %struct.Lisp_Symbol], align 8
@specpdl_ptr = external global %union.specbinding*, align 8
@specpdl = external global %union.specbinding*, align 8
@chartab_size = external constant [4 x i32], align 16
@initialized = common global i8 0, align 1
@globals = external global %struct.emacs_globals, align 8
@Vascii_canon_table = external global i64, align 8
@consing_since_gc = external global i64, align 8
@gc_relative_threshold = external global i64, align 8
@memory_full_cons_threshold = external global i64, align 8
@composition_table = external global %struct.composition**, align 8
@n_compositions = external global i64, align 8
@current_buffer = external global %struct.buffer*, align 8
@buffer_defaults = external global %struct.buffer, align 8
@interrupt_input_blocked = external global i32, align 4
@frame_garbaged = external global i8, align 1
@Vcharset_hash_table = external global i64, align 8
@gl_state = external global %struct.gl_state_s, align 8
@pure = external global [0 x i64], align 8
@fatal_error_in_progress = common global i8 0, align 1
@stack_base = external global i64*, align 8
@might_dump = common global i8 0, align 1
@my_endbss = external global [0 x i8], align 1
@my_endbss_static = external global i8*, align 8
@heap_bss_diff = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"emacs-version\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"emacs-copyright\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid value of 'emacs-version'\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid value of 'emacs-copyright'\0A\00", align 1
@emacs_version = internal constant [5 x i8] c"25.1\00", align 1
@emacs_copyright = internal constant [50 x i8] c"Copyright (C) 2016 Free Software Foundation, Inc.\00", align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"GNU Emacs\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s comes with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"You may redistribute copies of %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"under the terms of the GNU General Public License.\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"For more information about these matters, \00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"see the file named COPYING.\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"-chdir\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"--chdir\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"%s: Can't chdir to %s: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"bootstrap\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"EMACS_HEAP_EXEC\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"EMACS_HEAP_EXEC=true\00", align 1
@noninteractive = common global i8 0, align 1
@re_max_failures = external global i64, align 8
@stack_bottom = common global i8* null, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@inhibit_window_system = common global i8 0, align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"--terminal\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"%s: %s: not a tty\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Using %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"-nw\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"--no-window-system\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"--no-windows\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"-batch\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"--batch\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"-script\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"--script\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"-scriptload\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION-OR-FILENAME]...\0A\00", align 1
@usage_message = internal constant [12 x i8*] [i8* getelementptr inbounds ([325 x i8], [325 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([511 x i8], [511 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([350 x i8], [350 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([384 x i8], [384 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([425 x i8], [425 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([465 x i8], [465 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([320 x i8], [320 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([403 x i8], [403 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([481 x i8], [481 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str.91, i32 0, i32 0)], align 16
@stdout = external global %struct._IO_FILE*, align 8
@daemon_pipe = common global [2 x i32] zeroinitializer, align 4
@.str.40 = private unnamed_addr constant [8 x i8] c"-daemon\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"--daemon\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Cannot pipe!\0A\00", align 1
@.str.43 = private unnamed_addr constant [260 x i8] c"\0AWarning: due to a long standing Gtk+ bug\0Ahttp://bugzilla.gnome.org/show_bug.cgi?id=85715\0AEmacs might crash when run in daemon mode and the X11 connection is unexpectedly lost.\0AUsing an Emacs configured with --with-x-toolkit=lucid does not have this problem.\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Error reading status from child\0A\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Error: server did not start correctly\0A\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@daemon_name = internal global i8* null, align 8
@running_asynch_code = common global i8 0, align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"-nl\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"--no-loadup\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"-nsl\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"--no-site-lisp\00", align 1
@no_site_lisp = common global i8 0, align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"--display\00", align 1
@display_arg = common global i8 0, align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"-Q\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"--quick\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"-quick\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"--load\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"loadup.el\00", align 1
@waiting_for_input = external global i8, align 1
@Vrun_hooks = external global i64, align 8
@shut_down_emacs.format = internal constant [17 x i8] c"Fatal error %d: \00", align 16
@inhibit_sentinels = external global i8, align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"Dumping Emacs works only in batch mode\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"Emacs can be dumped only once\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"**************************************************\0A\00", align 1
@.str.63 = private unnamed_addr constant [52 x i8] c"Warning: Your system has a gap between BSS and the\0A\00", align 1
@.str.64 = private unnamed_addr constant [56 x i8] c"heap (%lu bytes).  This usually means that exec-shield\0A\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"or something similar is in effect.  The dump may\0A\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"fail because of this.  See the section about\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"exec-shield in etc/PROBLEMS for more information.\0A\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"command-line-processed\00", align 1
@my_edata = external global [0 x i8], align 1
@.str.69 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"safe-magic\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"/:\00", align 1
@.str.72 = private unnamed_addr constant [61 x i8] c"This function can only be called if emacs is run as a daemon\00", align 1
@.str.73 = private unnamed_addr constant [40 x i8] c"The daemon has already been initialized\00", align 1
@.str.74 = private unnamed_addr constant [62 x i8] c"This function can only be called after loading the init files\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"I/O error during daemon initialization\00", align 1
@empty_unibyte_string = common global i64 0, align 8
@empty_multibyte_string = common global i64 0, align 8
@initial_argv = common global i8** null, align 8
@initial_argc = common global i32 0, align 4
@.str.78 = private unnamed_addr constant [31 x i8] c"Write error to standard output\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"\C4\80\00", align 1
@.str.80 = private unnamed_addr constant [325 x i8] c"\0ARun Emacs, the extensible, customizable, self-documenting real-time\0Adisplay editor.  The recommended way to start Emacs for normal editing\0Ais with no options at all.\0A\0ARun M-x info RET m emacs RET m emacs invocation RET inside Emacs to\0Aread the main documentation for these command-line arguments.\0A\0AInitialization options:\0A\0A\00", align 1
@.str.81 = private unnamed_addr constant [302 x i8] c"--batch                     do not do interactive display; implies -q\0A--chdir DIR                 change to directory DIR\0A--daemon                    start a server in the background\0A--debug-init                enable Emacs Lisp debugger for init file\0A--display, -d DISPLAY       use X server DISPLAY\0A\00", align 1
@.str.82 = private unnamed_addr constant [511 x i8] c"--no-desktop                do not load a saved desktop\0A--no-init-file, -q          load neither ~/.emacs nor default.el\0A--no-loadup, -nl            do not load loadup.el into bare Emacs\0A--no-site-file              do not load site-start.el\0A--no-x-resources            do not load X resources\0A--no-site-lisp, -nsl        do not add site-lisp directories to load-path\0A--no-splash                 do not display a splash screen on startup\0A--no-window-system, -nw     do not communicate with X, ignoring $DISPLAY\0A\00", align 1
@.str.83 = private unnamed_addr constant [350 x i8] c"--quick, -Q                 equivalent to:\0A                              -q --no-site-file --no-site-lisp --no-splash\0A                              --no-x-resources\0A--script FILE               run FILE as an Emacs Lisp script\0A--terminal, -t DEVICE       use DEVICE for terminal I/O\0A--user, -u USER             load ~USER/.emacs instead of your own\0A\0A\00", align 1
@.str.84 = private unnamed_addr constant [384 x i8] c"Action options:\0A\0AFILE                    visit FILE using find-file\0A+LINE                   go to line LINE in next FILE\0A+LINE:COLUMN            go to line LINE, column COLUMN, in next FILE\0A--directory, -L DIR     prepend DIR to load-path (with :DIR, append DIR)\0A--eval EXPR             evaluate Emacs Lisp expression EXPR\0A--execute EXPR          evaluate Emacs Lisp expression EXPR\0A\00", align 1
@.str.85 = private unnamed_addr constant [425 x i8] c"--file FILE             visit FILE using find-file\0A--find-file FILE        visit FILE using find-file\0A--funcall, -f FUNC      call Emacs Lisp function FUNC with no arguments\0A--insert FILE           insert contents of FILE into current buffer\0A--kill                  exit without asking for confirmation\0A--load, -l FILE         load Emacs Lisp FILE using the load function\0A--visit FILE            visit FILE using find-file\0A\0A\00", align 1
@.str.86 = private unnamed_addr constant [300 x i8] c"Display options:\0A\0A--background-color, -bg COLOR   window background color\0A--basic-display, -D             disable many display features;\0A                                  used for debugging Emacs\0A--border-color, -bd COLOR       main border color\0A--border-width, -bw WIDTH       width of main border\0A\00", align 1
@.str.87 = private unnamed_addr constant [465 x i8] c"--color, --color=MODE           override color mode for character terminals;\0A                                  MODE defaults to `auto', and\0A                                  can also be `never', `always',\0A                                  or a mode name like `ansi8'\0A--cursor-color, -cr COLOR       color of the Emacs cursor indicating point\0A--font, -fn FONT                default font; must be fixed-width\0A--foreground-color, -fg COLOR   window foreground color\0A\00", align 1
@.str.88 = private unnamed_addr constant [320 x i8] c"--fullheight, -fh               make the first frame high as the screen\0A--fullscreen, -fs               make the first frame fullscreen\0A--fullwidth, -fw                make the first frame wide as the screen\0A--maximized, -mm                make the first frame maximized\0A--geometry, -g GEOMETRY         window geometry\0A\00", align 1
@.str.89 = private unnamed_addr constant [403 x i8] c"--no-bitmap-icon, -nbi          do not use picture of gnu for Emacs icon\0A--iconic                        start Emacs in iconified state\0A--internal-border, -ib WIDTH    width between text and main border\0A--line-spacing, -lsp PIXELS     additional space to put between lines\0A--mouse-color, -ms COLOR        mouse cursor color in Emacs window\0A--name NAME                     title for initial Emacs frame\0A\00", align 1
@.str.90 = private unnamed_addr constant [481 x i8] c"--no-blinking-cursor, -nbc      disable blinking cursor\0A--reverse-video, -r, -rv        switch foreground and background\0A--title, -T TITLE               title for initial Emacs frame\0A--vertical-scroll-bars, -vb     enable vertical scroll bars\0A--xrm XRESOURCES                set additional X resources\0A--parent-id XID                 set parent window\0A--help                          display this help and exit\0A--version                       output version information and exit\0A\0A\00", align 1
@.str.91 = private unnamed_addr constant [402 x i8] c"You can generally also specify long option names with a single -; for\0Aexample, -batch as well as --batch.  You can use any unambiguous\0Aabbreviation for a --option.\0A\0AVarious environment variables and window system resources also affect\0Athe operation of Emacs.  See the main documentation.\0A\0AReport bugs to bug-gnu-emacs@gnu.org.  First, please see the Bugs\0Asection of the Emacs manual or the file BUGS.\0A\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"lib-src\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"etc\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"../lib-src\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"../etc\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@standard_args = internal constant [71 x %struct.standard_args] [%struct.standard_args { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 150, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 130, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 120, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i32 110, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 110, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 100, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 100, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 99, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 90, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 70, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i32 65, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 60, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* null, i32 60, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 55, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* null, i32 55, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i32 0, i32 0), i32 50, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i8* null, i32 50, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0), i32 40, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0), i32 40, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i32 30, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* null, i32 30, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 20, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), i32 15, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i32 12, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.114, i32 0, i32 0), i8* null, i32 12, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.116, i32 0, i32 0), i32 12, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0), i32 10, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i8* null, i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.123, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i8* null, i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.126, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i32 0, i32 0), i8* null, i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i32 10, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0), i32 10, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 10, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), i32 10, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.147, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), i8* null, i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0), i8* null, i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), i32 10, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i32 0, i32 0), i32 5, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0), i8* null, i32 5, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i8* null, i32 5, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.163, i32 0, i32 0), i32 5, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.165, i32 0, i32 0), i32 5, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.167, i32 0, i32 0), i32 5, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.169, i32 0, i32 0), i32 3, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i32 3, i32 0 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.173, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.174, i32 0, i32 0), i8* null, i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.175, i32 0, i32 0), i8* null, i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* null, i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.177, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.178, i32 0, i32 0), i8* null, i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.182, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.184, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.186, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i32 0, i32 0), i32 0, i32 1 }, %struct.standard_args { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.192, i32 0, i32 0), i32 -10, i32 0 }], align 16
@.str.97 = private unnamed_addr constant [34 x i8] c"Option '%s' requires an argument\0A\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"--no-init-file\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"-no-init-file\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"-no-x-resources\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"--no-x-resources\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"-no-site-file\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"--no-site-file\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"--user\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"-user\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"-debug-init\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"--debug-init\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"-iconic\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"--iconic\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"--basic-display\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"-basic-display\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"-nbc\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"--no-blinking-cursor\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"-nbi\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"--no-bitmap-icon\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"-bg\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"--background-color\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"-background\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"-fg\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"--foreground-color\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"-foreground\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"-bd\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"--border-color\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"-bw\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"--border-width\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"-ib\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"--internal-border\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"-ms\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"--mouse-color\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"-cr\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"--cursor-color\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"-fn\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"--font\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"-font\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"-fs\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"--fullscreen\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"-fw\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"--fullwidth\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"-fh\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"--fullheight\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"-mm\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"--maximized\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"--geometry\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"-geometry\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"--title\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"-title\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"-name\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"--name\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"-xrm\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"--xrm\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"-parent-id\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"--parent-id\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"--reverse-video\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"-rv\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"-reverse\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"-hb\00", align 1
@.str.163 = private unnamed_addr constant [25 x i8] c"--horizontal-scroll-bars\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"-vb\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"--vertical-scroll-bars\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"-color\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"--color\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"-no-splash\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"--no-splash\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"-no-desktop\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"--no-desktop\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"--directory\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"-directory\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"-load\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"--funcall\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"-funcall\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"-eval\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"--eval\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"-execute\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"--execute\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"-find-file\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"--find-file\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"-visit\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"--visit\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"-file\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"--file\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"-insert\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"--insert\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"-kill\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"--kill\00", align 1
@Sinvocation_name = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.1 { i64 ()* @Finvocation_name }, i16 0, i16 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.212, i32 0, i32 0), i8* null, i8* null }, align 8
@Sinvocation_directory = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.1 { i64 ()* @Finvocation_directory }, i16 0, i16 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.214, i32 0, i32 0), i8* null, i8* null }, align 8
@Sdaemonp = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.1 { i64 ()* @Fdaemonp }, i16 0, i16 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.240, i32 0, i32 0), i8* null, i8* null }, align 8
@Sdaemon_initialized = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.1 { i64 ()* @Fdaemon_initialized }, i16 0, i16 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.241, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_emacs.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.193 = private unnamed_addr constant [18 x i8] c"command-line-args\00", align 1
@syms_of_emacs.o_fwd.194 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.195 = private unnamed_addr constant [12 x i8] c"system-type\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"gnu/linux\00", align 1
@syms_of_emacs.o_fwd.197 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.198 = private unnamed_addr constant [21 x i8] c"system-configuration\00", align 1
@.str.199 = private unnamed_addr constant [25 x i8] c"x86_64-unknown-linux-gnu\00", align 1
@syms_of_emacs.o_fwd.200 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.201 = private unnamed_addr constant [29 x i8] c"system-configuration-options\00", align 1
@.str.202 = private unnamed_addr constant [164 x i8] c"--without-makeinfo --with-xpm=no --with-jpeg=no --with-gif=no --with-tiff=no CC=/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang CFLAGS=-save-temps\00", align 1
@syms_of_emacs.o_fwd.203 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.204 = private unnamed_addr constant [30 x i8] c"system-configuration-features\00", align 1
@.str.205 = private unnamed_addr constant [81 x i8] c"PNG SOUND GSETTINGS NOTIFY GNUTLS FREETYPE XFT ZLIB TOOLKIT_SCROLL_BARS GTK2 X11\00", align 1
@syms_of_emacs.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.206 = private unnamed_addr constant [15 x i8] c"noninteractive\00", align 1
@syms_of_emacs.o_fwd.207 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.208 = private unnamed_addr constant [16 x i8] c"kill-emacs-hook\00", align 1
@syms_of_emacs.o_fwd.209 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.210 = private unnamed_addr constant [15 x i8] c"path-separator\00", align 1
@syms_of_emacs.o_fwd.211 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.212 = private unnamed_addr constant [16 x i8] c"invocation-name\00", align 1
@syms_of_emacs.o_fwd.213 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.214 = private unnamed_addr constant [21 x i8] c"invocation-directory\00", align 1
@syms_of_emacs.o_fwd.215 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.216 = private unnamed_addr constant [23 x i8] c"installation-directory\00", align 1
@syms_of_emacs.o_fwd.217 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.218 = private unnamed_addr constant [23 x i8] c"system-messages-locale\00", align 1
@syms_of_emacs.o_fwd.219 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.220 = private unnamed_addr constant [32 x i8] c"previous-system-messages-locale\00", align 1
@syms_of_emacs.o_fwd.221 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.222 = private unnamed_addr constant [19 x i8] c"system-time-locale\00", align 1
@syms_of_emacs.o_fwd.223 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.224 = private unnamed_addr constant [28 x i8] c"previous-system-time-locale\00", align 1
@syms_of_emacs.o_fwd.225 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.226 = private unnamed_addr constant [17 x i8] c"before-init-time\00", align 1
@syms_of_emacs.o_fwd.227 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.228 = private unnamed_addr constant [16 x i8] c"after-init-time\00", align 1
@syms_of_emacs.b_fwd.229 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.230 = private unnamed_addr constant [20 x i8] c"inhibit-x-resources\00", align 1
@syms_of_emacs.o_fwd.231 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@syms_of_emacs.o_fwd.232 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@syms_of_emacs.o_fwd.233 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.234 = private unnamed_addr constant [25 x i8] c"report-emacs-bug-address\00", align 1
@emacs_bugreport = internal constant [22 x i8] c"bug-gnu-emacs@gnu.org\00", align 16
@syms_of_emacs.o_fwd.235 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.236 = private unnamed_addr constant [22 x i8] c"dynamic-library-alist\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"dump-emacs\00", align 1
@Sdump_emacs = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fdump_emacs }, i16 2, i16 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.237, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.238 = private unnamed_addr constant [11 x i8] c"kill-emacs\00", align 1
@.str.239 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@Skill_emacs = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fkill_emacs }, i16 0, i16 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.239, i32 0, i32 0), i8* null }, align 8
@.str.240 = private unnamed_addr constant [8 x i8] c"daemonp\00", align 1
@.str.241 = private unnamed_addr constant [19 x i8] c"daemon-initialized\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define i64 @XLI(i64 %o) #0 {
entry:
  %o.addr = alloca i64, align 8
  store i64 %o, i64* %o.addr, align 8
  %0 = load i64, i64* %o.addr, align 8
  ret i64 %0
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XIL(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  ret i64 %0
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @make_number(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XINT(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %shr = ashr i64 %0, 2
  ret i64 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XFASTINT(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %shr = ashr i64 %0, 2
  store i64 %shr, i64* %n, align 8
  %1 = load i64, i64* %n, align 8
  %cmp = icmp sle i64 0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %2 = load i64, i64* %n, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Symbol* @XSYMBOL(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %1 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  ret %struct.Lisp_Symbol* %1
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @XTYPE(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @XUNTAG(i64 %a, i32 %type) #0 {
entry:
  %a.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i32, i32* %type.addr, align 4
  %conv = sext i32 %1 to i64
  %sub = sub nsw i64 %0, %conv
  %2 = inttoptr i64 %sub to i8*
  ret i8* %2
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XUINT(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  store i64 %0, i64* %i, align 8
  %1 = load i64, i64* %i, align 8
  %shr = lshr i64 %1, 2
  ret i64 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XHASH(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call i64 @XUINT(i64 %0)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @make_natnum(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %int0 = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 2, i64* %int0, align 8
  %0 = load i64, i64* %n.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @EQ(i64 %x, i64 %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %1 = load i64, i64* %y.addr, align 8
  %cmp = icmp eq i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @clip_to_bounds(i64 %lower, i64 %num, i64 %upper) #0 {
entry:
  %lower.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %upper.addr = alloca i64, align 8
  store i64 %lower, i64* %lower.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 %upper, i64* %upper.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %1 = load i64, i64* %lower.addr, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %lower.addr, align 8
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %num.addr, align 8
  %4 = load i64, i64* %upper.addr, align 8
  %cmp1 = icmp sle i64 %3, %4
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  %5 = load i64, i64* %num.addr, align 8
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %6 = load i64, i64* %upper.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i64 [ %5, %cond.true.2 ], [ %6, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i64 [ %2, %cond.true ], [ %cond, %cond.end ]
  ret i64 %cond5
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Cons* @XCONS(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  ret %struct.Lisp_Cons* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Vector* @XVECTOR(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Vector*
  ret %struct.Lisp_Vector* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_String* @XSTRING(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 4
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_String*
  ret %struct.Lisp_String* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Float* @XFLOAT(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 7
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Float*
  ret %struct.Lisp_Float* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Process* @XPROCESS(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Process*
  ret %struct.Lisp_Process* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.window* @XWINDOW(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.window*
  ret %struct.window* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.terminal* @XTERMINAL(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.terminal*
  ret %struct.terminal* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Subr* @XSUBR(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Subr*
  ret %struct.Lisp_Subr* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.buffer* @XBUFFER(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.buffer*
  ret %struct.buffer* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Char_Table*
  ret %struct.Lisp_Char_Table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Sub_Char_Table*
  ret %struct.Lisp_Sub_Char_Table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Bool_Vector* @XBOOL_VECTOR(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Bool_Vector*
  ret %struct.Lisp_Bool_Vector* %2
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @make_lisp_ptr(i8* %ptr, i32 %type) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %a = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = load i32, i32* %type.addr, align 4
  %conv = zext i32 %2 to i64
  %add = add nsw i64 %1, %conv
  store i64 %add, i64* %a, align 8
  %3 = load i64, i64* %a, align 8
  ret i64 %3
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @make_lisp_symbol(%struct.Lisp_Symbol* %sym) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  %a = alloca i64, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %1 = bitcast %struct.Lisp_Symbol* %0 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([1074 x %struct.Lisp_Symbol]* @lispsym to i64)
  %add = add nsw i64 %sub.ptr.sub, 0
  store i64 %add, i64* %a, align 8
  %2 = load i64, i64* %a, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @builtin_lisp_symbol(i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* getelementptr inbounds ([1074 x %struct.Lisp_Symbol], [1074 x %struct.Lisp_Symbol]* @lispsym, i32 0, i32 0), i64 %idx.ext
  %call = call i64 @make_lisp_symbol(%struct.Lisp_Symbol* %add.ptr)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @XINTPTR(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 2
  %1 = inttoptr i64 %sub to i8*
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @make_pointer_integer(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %a = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %add = add nsw i64 %1, 2
  store i64 %add, i64* %a, align 8
  %2 = load i64, i64* %a, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_TYPE(i32 %ok, i64 %predicate, i64 %x) #0 {
entry:
  %ok.addr = alloca i32, align 4
  %predicate.addr = alloca i64, align 8
  %x.addr = alloca i64, align 8
  store i32 %ok, i32* %ok.addr, align 4
  store i64 %predicate, i64* %predicate.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i32, i32* %ok.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %predicate.addr, align 8
  %2 = load i64, i64* %x.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %1, i64 %2) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  ret void
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define i64* @xcar_addr(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  ret i64* %car
}

; Function Attrs: inlinehint nounwind uwtable
define i64* @xcdr_addr(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  ret i64* %cdr
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XCAR(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  ret i64 %3
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XCDR(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %3 = load i64, i64* %cdr, align 8
  ret i64 %3
}

; Function Attrs: inlinehint nounwind uwtable
define void @XSETCAR(i64 %c, i64 %n) #0 {
entry:
  %c.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %call = call i64* @xcar_addr(i64 %1)
  store i64 %0, i64* %call, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @XSETCDR(i64 %c, i64 %n) #0 {
entry:
  %c.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %call = call i64* @xcdr_addr(i64 %1)
  store i64 %0, i64* %call, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @CAR(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %c.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %5, %call
  br i1 %cmp2, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %call7 = call i64 @builtin_lisp_symbol(i32 626)
  %6 = load i64, i64* %c.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call7, i64 %6) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true.4
  %cond = phi i64 [ %call5, %cond.true.4 ], [ undef, %8 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ %4, %cond.true ], [ %cond, %cond.end ]
  ret i64 %cond9
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @CDR(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %c.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %5, %call
  br i1 %cmp2, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %call7 = call i64 @builtin_lisp_symbol(i32 626)
  %6 = load i64, i64* %c.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call7, i64 %6) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true.4
  %cond = phi i64 [ %call5, %cond.true.4 ], [ undef, %8 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ %4, %cond.true ], [ %cond, %cond.end ]
  ret i64 %cond9
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @CAR_SAFE(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %call, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @CDR_SAFE(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %call, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @STRING_MULTIBYTE(i64 %str) #0 {
entry:
  %str.addr = alloca i64, align 8
  store i64 %str, i64* %str.addr, align 8
  %0 = load i64, i64* %str.addr, align 8
  %call = call %struct.Lisp_String* @XSTRING(i64 %0)
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call, i32 0, i32 1
  %1 = load i64, i64* %size_byte, align 8
  %cmp = icmp sle i64 0, %1
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @SDATA(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call %struct.Lisp_String* @XSTRING(i64 %0)
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call, i32 0, i32 3
  %1 = load i8*, i8** %data, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @SSDATA(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call i8* @SDATA(i64 %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i8 @SREF(i64 %string, i64 %index) #0 {
entry:
  %string.addr = alloca i64, align 8
  %index.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  %0 = load i64, i64* %index.addr, align 8
  %1 = load i64, i64* %string.addr, align 8
  %call = call i8* @SDATA(i64 %1)
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %0
  %2 = load i8, i8* %arrayidx, align 1
  ret i8 %2
}

; Function Attrs: inlinehint nounwind uwtable
define void @SSET(i64 %string, i64 %index, i8 zeroext %new) #0 {
entry:
  %string.addr = alloca i64, align 8
  %index.addr = alloca i64, align 8
  %new.addr = alloca i8, align 1
  store i64 %string, i64* %string.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  store i8 %new, i8* %new.addr, align 1
  %0 = load i8, i8* %new.addr, align 1
  %1 = load i64, i64* %index.addr, align 8
  %2 = load i64, i64* %string.addr, align 8
  %call = call i8* @SDATA(i64 %2)
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %1
  store i8 %0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SCHARS(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call %struct.Lisp_String* @XSTRING(i64 %0)
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @STRING_BYTES(%struct.Lisp_String* %s) #0 {
entry:
  %s.addr = alloca %struct.Lisp_String*, align 8
  store %struct.Lisp_String* %s, %struct.Lisp_String** %s.addr, align 8
  %0 = load %struct.Lisp_String*, %struct.Lisp_String** %s.addr, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %0, i32 0, i32 1
  %1 = load i64, i64* %size_byte, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.Lisp_String*, %struct.Lisp_String** %s.addr, align 8
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %2, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.Lisp_String*, %struct.Lisp_String** %s.addr, align 8
  %size_byte1 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %4, i32 0, i32 1
  %5 = load i64, i64* %size_byte1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SBYTES(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call %struct.Lisp_String* @XSTRING(i64 %0)
  %call1 = call i64 @STRING_BYTES(%struct.Lisp_String* %call)
  ret i64 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define void @STRING_SET_CHARS(i64 %string, i64 %newsize) #0 {
entry:
  %string.addr = alloca i64, align 8
  %newsize.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %newsize, i64* %newsize.addr, align 8
  %0 = load i64, i64* %newsize.addr, align 8
  %1 = load i64, i64* %string.addr, align 8
  %call = call %struct.Lisp_String* @XSTRING(i64 %1)
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call, i32 0, i32 0
  store i64 %0, i64* %size, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @bool_vector_size(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %struct.Lisp_Bool_Vector* @XBOOL_VECTOR(i64 %0)
  %size1 = getelementptr inbounds %struct.Lisp_Bool_Vector, %struct.Lisp_Bool_Vector* %call, i32 0, i32 1
  %1 = load i64, i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %cmp = icmp sle i64 0, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %3 = load i64, i64* %size, align 8
  ret i64 %3
}

; Function Attrs: inlinehint nounwind uwtable
define i64* @bool_vector_data(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %struct.Lisp_Bool_Vector* @XBOOL_VECTOR(i64 %0)
  %data = getelementptr inbounds %struct.Lisp_Bool_Vector, %struct.Lisp_Bool_Vector* %call, i32 0, i32 2
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %data, i32 0, i32 0
  ret i64* %arraydecay
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @bool_vector_uchar_data(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call i64* @bool_vector_data(i64 %0)
  %1 = bitcast i64* %call to i8*
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @bool_vector_words(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp sle i64 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp sle i64 %1, 9223372036854775744
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %2 = load i64, i64* %size.addr, align 8
  %add = add nsw i64 %2, 64
  %sub = sub nsw i64 %add, 1
  %div = sdiv i64 %sub, 64
  ret i64 %div
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @bool_vector_bytes(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp sle i64 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp sle i64 %1, 9223372036854775744
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %2 = load i64, i64* %size.addr, align 8
  %add = add nsw i64 %2, 8
  %sub = sub nsw i64 %add, 1
  %div = sdiv i64 %sub, 8
  ret i64 %div
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @bool_vector_bitref(i64 %a, i64 %i) #0 {
entry:
  %a.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp sle i64 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load i64, i64* %a.addr, align 8
  %call = call i64 @bool_vector_size(i64 %2)
  %cmp1 = icmp slt i64 %1, %call
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %3 = load i64, i64* %i.addr, align 8
  %div = sdiv i64 %3, 8
  %4 = load i64, i64* %a.addr, align 8
  %call2 = call i8* @bool_vector_uchar_data(i64 %4)
  %arrayidx = getelementptr inbounds i8, i8* %call2, i64 %div
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i64, i64* %i.addr, align 8
  %rem = srem i64 %6, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %conv, %shl
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  ret i1 %lnot3
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @bool_vector_ref(i64 %a, i64 %i) #0 {
entry:
  %a.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %i.addr, align 8
  %call = call zeroext i1 @bool_vector_bitref(i64 %0, i64 %1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define void @bool_vector_set(i64 %a, i64 %i, i1 zeroext %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  %b.addr = alloca i8, align 1
  %addr = alloca i8*, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %frombool = zext i1 %b to i8
  store i8 %frombool, i8* %b.addr, align 1
  %0 = load i64, i64* %i.addr, align 8
  %cmp = icmp sle i64 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %i.addr, align 8
  %2 = load i64, i64* %a.addr, align 8
  %call = call i64 @bool_vector_size(i64 %2)
  %cmp1 = icmp slt i64 %1, %call
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %3 = load i64, i64* %i.addr, align 8
  %div = sdiv i64 %3, 8
  %4 = load i64, i64* %a.addr, align 8
  %call2 = call i8* @bool_vector_uchar_data(i64 %4)
  %arrayidx = getelementptr inbounds i8, i8* %call2, i64 %div
  store i8* %arrayidx, i8** %addr, align 8
  %5 = load i8, i8* %b.addr, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i64, i64* %i.addr, align 8
  %rem = srem i64 %6, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %7 = load i8*, i8** %addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %7, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end
  %9 = load i64, i64* %i.addr, align 8
  %rem4 = srem i64 %9, 8
  %sh_prom5 = trunc i64 %rem4 to i32
  %shl6 = shl i32 1, %sh_prom5
  %neg = xor i32 %shl6, -1
  %10 = load i8*, i8** %addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = zext i8 %11 to i32
  %and = and i32 %conv7, %neg
  %conv8 = trunc i32 %and to i8
  store i8 %conv8, i8* %10, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @AREF(i64 %array, i64 %idx) #0 {
entry:
  %array.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load i64, i64* %idx.addr, align 8
  %1 = load i64, i64* %array.addr, align 8
  %call = call %struct.Lisp_Vector* @XVECTOR(i64 %1)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %0
  %2 = load i64, i64* %arrayidx, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define i64* @aref_addr(i64 %array, i64 %idx) #0 {
entry:
  %array.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load i64, i64* %idx.addr, align 8
  %1 = load i64, i64* %array.addr, align 8
  %call = call %struct.Lisp_Vector* @XVECTOR(i64 %1)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %0
  ret i64* %arrayidx
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @ASIZE(i64 %array) #0 {
entry:
  %array.addr = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  %0 = load i64, i64* %array.addr, align 8
  %call = call %struct.Lisp_Vector* @XVECTOR(i64 %0)
  %header = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call, i32 0, i32 0
  %size1 = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %1 = load i64, i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %cmp = icmp sle i64 0, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %3 = load i64, i64* %size, align 8
  ret i64 %3
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @gc_asize(i64 %array) #0 {
entry:
  %array.addr = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  %0 = load i64, i64* %array.addr, align 8
  %call = call %struct.Lisp_Vector* @XVECTOR(i64 %0)
  %header = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call, i32 0, i32 0
  %size = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  %and = and i64 %1, 9223372036854775807
  ret i64 %and
}

; Function Attrs: inlinehint nounwind uwtable
define void @ASET(i64 %array, i64 %idx, i64 %val) #0 {
entry:
  %array.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %2 = load i64, i64* %array.addr, align 8
  %call = call %struct.Lisp_Vector* @XVECTOR(i64 %2)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %1
  store i64 %0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @gc_aset(i64 %array, i64 %idx, i64 %val) #0 {
entry:
  %array.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %array, i64* %array.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %2 = load i64, i64* %array.addr, align 8
  %call = call %struct.Lisp_Vector* @XVECTOR(i64 %2)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %1
  store i64 %0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @memclear(i8* %p, i64 %nbytes) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %nbytes.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %1, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: inlinehint nounwind uwtable
define i64 @CHAR_TABLE_REF_ASCII(i64 %ct, i64 %idx) #0 {
entry:
  %ct.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %tbl = alloca %struct.Lisp_Char_Table*, align 8
  %val = alloca i64, align 8
  store i64 %ct, i64* %ct.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store %struct.Lisp_Char_Table* null, %struct.Lisp_Char_Table** %tbl, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %tobool = icmp ne %struct.Lisp_Char_Table* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %1 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %parent = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %1, i32 0, i32 2
  %2 = load i64, i64* %parent, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %3 = load i64, i64* %ct.addr, align 8
  %call1 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Lisp_Char_Table* [ %call, %cond.true ], [ %call1, %cond.false ]
  store %struct.Lisp_Char_Table* %cond, %struct.Lisp_Char_Table** %tbl, align 8
  %4 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %4, i32 0, i32 4
  %5 = load i64, i64* %ascii, align 8
  %call2 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %5)
  br i1 %call2, label %cond.false.5, label %cond.true.3

cond.true.3:                                      ; preds = %cond.end
  %6 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %ascii4 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %6, i32 0, i32 4
  %7 = load i64, i64* %ascii4, align 8
  br label %cond.end.8

cond.false.5:                                     ; preds = %cond.end
  %8 = load i64, i64* %idx.addr, align 8
  %9 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %ascii6 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %9, i32 0, i32 4
  %10 = load i64, i64* %ascii6, align 8
  %call7 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %10)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %8
  %11 = load i64, i64* %arrayidx, align 8
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.5, %cond.true.3
  %cond9 = phi i64 [ %7, %cond.true.3 ], [ %11, %cond.false.5 ]
  store i64 %cond9, i64* %val, align 8
  %12 = load i64, i64* %val, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %12, %call10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %13 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %13, i32 0, i32 1
  %14 = load i64, i64* %defalt, align 8
  store i64 %14, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %15 = load i64, i64* %val, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %15, %call11
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %16 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %tbl, align 8
  %parent13 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %16, i32 0, i32 2
  %17 = load i64, i64* %parent13, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %17, %call14
  %lnot = xor i1 %cmp15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %18, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %19 = load i64, i64* %val, align 8
  ret i64 %19
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @SUB_CHAR_TABLE_P(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 16)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @CHAR_TABLE_REF(i64 %ct, i32 %idx) #0 {
entry:
  %ct.addr = alloca i64, align 8
  %idx.addr = alloca i32, align 4
  store i64 %ct, i64* %ct.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, i32* %idx.addr, align 4
  %add = add i32 %0, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %cond.true.4, label %cond.false.6

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %1 to i64
  %add1 = add i64 %conv, 0
  %cmp2 = icmp ult i64 %add1, 128
  br i1 %cmp2, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.false, %cond.true
  %2 = load i64, i64* %ct.addr, align 8
  %3 = load i32, i32* %idx.addr, align 4
  %conv5 = sext i32 %3 to i64
  %call = call i64 @CHAR_TABLE_REF_ASCII(i64 %2, i64 %conv5)
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false, %cond.true
  %4 = load i64, i64* %ct.addr, align 8
  %5 = load i32, i32* %idx.addr, align 4
  %call7 = call i64 @char_table_ref(i64 %4, i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.4
  %cond = phi i64 [ %call, %cond.true.4 ], [ %call7, %cond.false.6 ]
  ret i64 %cond
}

declare i64 @char_table_ref(i64, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define void @CHAR_TABLE_SET(i64 %ct, i32 %idx, i64 %val) #0 {
entry:
  %ct.addr = alloca i64, align 8
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i64 %ct, i64* %ct.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32, i32* %idx.addr, align 4
  %add = add i32 %0, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %land.lhs.true, label %if.else

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %1 to i64
  %add1 = add i64 %conv, 0
  %cmp2 = icmp ult i64 %add1, 128
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %2 = load i64, i64* %ct.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %ascii = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 4
  %3 = load i64, i64* %ascii, align 8
  %call4 = call zeroext i1 @SUB_CHAR_TABLE_P(i64 %3)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, i64* %ct.addr, align 8
  %call6 = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %4)
  %ascii7 = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call6, i32 0, i32 4
  %5 = load i64, i64* %ascii7, align 8
  %6 = load i32, i32* %idx.addr, align 4
  %conv8 = sext i32 %6 to i64
  %7 = load i64, i64* %val.addr, align 8
  call void @set_sub_char_table_contents(i64 %5, i64 %conv8, i64 %7)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.false, %cond.true
  %8 = load i64, i64* %ct.addr, align 8
  %9 = load i32, i32* %idx.addr, align 4
  %10 = load i64, i64* %val.addr, align 8
  call void @char_table_set(i64 %8, i32 %9, i64 %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_sub_char_table_contents(i64 %table, i64 %idx, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %2 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %2)
  %contents = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call, i32 0, i32 3
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i64 %1
  store i64 %0, i64* %arrayidx, align 8
  ret void
}

declare void @char_table_set(i64, i32, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i32 @CHAR_TABLE_EXTRA_SLOTS(%struct.Lisp_Char_Table* %ct) #0 {
entry:
  %ct.addr = alloca %struct.Lisp_Char_Table*, align 8
  store %struct.Lisp_Char_Table* %ct, %struct.Lisp_Char_Table** %ct.addr, align 8
  %0 = load %struct.Lisp_Char_Table*, %struct.Lisp_Char_Table** %ct.addr, align 8
  %header = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %0, i32 0, i32 0
  %size = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  %and = and i64 %1, 4095
  %sub = sub nsw i64 %and, 68
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SYMBOL_VAL(%struct.Lisp_Symbol* %sym) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %0, i32 0, i32 2
  %value = bitcast %union.anon* %val to i64*
  %1 = load i64, i64* %value, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Symbol* @SYMBOL_ALIAS(%struct.Lisp_Symbol* %sym) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %0, i32 0, i32 2
  %alias = bitcast %union.anon* %val to %struct.Lisp_Symbol**
  %1 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %alias, align 8
  ret %struct.Lisp_Symbol* %1
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Buffer_Local_Value* @SYMBOL_BLV(%struct.Lisp_Symbol* %sym) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %0, i32 0, i32 2
  %blv = bitcast %union.anon* %val to %struct.Lisp_Buffer_Local_Value**
  %1 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  ret %struct.Lisp_Buffer_Local_Value* %1
}

; Function Attrs: inlinehint nounwind uwtable
define %union.Lisp_Fwd* @SYMBOL_FWD(%struct.Lisp_Symbol* %sym) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %0, i32 0, i32 2
  %fwd = bitcast %union.anon* %val to %union.Lisp_Fwd**
  %1 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %fwd, align 8
  ret %union.Lisp_Fwd* %1
}

; Function Attrs: inlinehint nounwind uwtable
define void @SET_SYMBOL_VAL(%struct.Lisp_Symbol* %sym, i64 %v) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  %v.addr = alloca i64, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i64, i64* %v.addr, align 8
  %1 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %1, i32 0, i32 2
  %value = bitcast %union.anon* %val to i64*
  store i64 %0, i64* %value, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @SET_SYMBOL_ALIAS(%struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol* %v) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  %v.addr = alloca %struct.Lisp_Symbol*, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  store %struct.Lisp_Symbol* %v, %struct.Lisp_Symbol** %v.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %v.addr, align 8
  %1 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %1, i32 0, i32 2
  %alias = bitcast %union.anon* %val to %struct.Lisp_Symbol**
  store %struct.Lisp_Symbol* %0, %struct.Lisp_Symbol** %alias, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @SET_SYMBOL_BLV(%struct.Lisp_Symbol* %sym, %struct.Lisp_Buffer_Local_Value* %v) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  %v.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  store %struct.Lisp_Buffer_Local_Value* %v, %struct.Lisp_Buffer_Local_Value** %v.addr, align 8
  %0 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %v.addr, align 8
  %1 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %1, i32 0, i32 2
  %blv = bitcast %union.anon* %val to %struct.Lisp_Buffer_Local_Value**
  store %struct.Lisp_Buffer_Local_Value* %0, %struct.Lisp_Buffer_Local_Value** %blv, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @SET_SYMBOL_FWD(%struct.Lisp_Symbol* %sym, %union.Lisp_Fwd* %v) #0 {
entry:
  %sym.addr = alloca %struct.Lisp_Symbol*, align 8
  %v.addr = alloca %union.Lisp_Fwd*, align 8
  store %struct.Lisp_Symbol* %sym, %struct.Lisp_Symbol** %sym.addr, align 8
  store %union.Lisp_Fwd* %v, %union.Lisp_Fwd** %v.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %v.addr, align 8
  %1 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %sym.addr, align 8
  %val = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %1, i32 0, i32 2
  %fwd = bitcast %union.anon* %val to %union.Lisp_Fwd**
  store %union.Lisp_Fwd* %0, %union.Lisp_Fwd** %fwd, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SYMBOL_NAME(i64 %sym) #0 {
entry:
  %sym.addr = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  %0 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %0, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %1 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %name = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %1, i32 0, i32 1
  %2 = load i64, i64* %name, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @SYMBOL_INTERNED_P(i64 %sym) #0 {
entry:
  %sym.addr = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  %0 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %0, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %1 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %2 = bitcast %struct.Lisp_Symbol* %1 to i16*
  %bf.load = load i16, i16* %2, align 8
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp ne i32 %bf.cast, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P(i64 %sym) #0 {
entry:
  %sym.addr = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  %0 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %0, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %1 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %2 = bitcast %struct.Lisp_Symbol* %1 to i16*
  %bf.load = load i16, i16* %2, align 8
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 2
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @SYMBOL_CONSTANT_P(i64 %sym) #0 {
entry:
  %sym.addr = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  %0 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %0, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %1 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %2 = bitcast %struct.Lisp_Symbol* %1 to i16*
  %bf.load = load i16, i16* %2, align 8
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @HASH_TABLE_P(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 7)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @PSEUDOVECTORP(i64 %a, i32 %code) #0 {
entry:
  %retval = alloca i1, align 1
  %a.addr = alloca i64, align 8
  %code.addr = alloca i32, align 4
  %h = alloca %struct.vectorlike_header*, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load i64, i64* %a.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 5
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.vectorlike_header*
  store %struct.vectorlike_header* %3, %struct.vectorlike_header** %h, align 8
  %4 = load %struct.vectorlike_header*, %struct.vectorlike_header** %h, align 8
  %5 = load i32, i32* %code.addr, align 4
  %call = call zeroext i1 @PSEUDOVECTOR_TYPEP(%struct.vectorlike_header* %4, i32 %5)
  store i1 %call, i1* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i1, i1* %retval
  ret i1 %6
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Hash_Table*
  ret %struct.Lisp_Hash_Table* %2
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @HASH_KEY(%struct.Lisp_Hash_Table* %h, i64 %idx) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %idx.addr = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 9
  %1 = load i64, i64* %key_and_value, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %mul = mul nsw i64 2, %2
  %call = call i64 @AREF(i64 %1, i64 %mul)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %h, i64 %idx) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %idx.addr = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 9
  %1 = load i64, i64* %key_and_value, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %mul = mul nsw i64 2, %2
  %add = add nsw i64 %mul, 1
  %call = call i64 @AREF(i64 %1, i64 %add)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @HASH_NEXT(%struct.Lisp_Hash_Table* %h, i64 %idx) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %idx.addr = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %next = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 5
  %1 = load i64, i64* %next, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %call = call i64 @AREF(i64 %1, i64 %2)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @HASH_HASH(%struct.Lisp_Hash_Table* %h, i64 %idx) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %idx.addr = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %hash = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 4
  %1 = load i64, i64* %hash, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %call = call i64 @AREF(i64 %1, i64 %2)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @HASH_INDEX(%struct.Lisp_Hash_Table* %h, i64 %idx) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %idx.addr = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %index = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 7
  %1 = load i64, i64* %index, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %call = call i64 @AREF(i64 %1, i64 %2)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @HASH_TABLE_SIZE(%struct.Lisp_Hash_Table* %h) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %next = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 5
  %1 = load i64, i64* %next, align 8
  %call = call i64 @ASIZE(i64 %1)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @sxhash_combine(i64 %x, i64 %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %shl = shl i64 %0, 4
  %1 = load i64, i64* %x.addr, align 8
  %shr = lshr i64 %1, 60
  %add = add i64 %shl, %shr
  %2 = load i64, i64* %y.addr, align 8
  %add1 = add i64 %add, %2
  ret i64 %add1
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SXHASH_REDUCE(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %1 = load i64, i64* %x.addr, align 8
  %shr = lshr i64 %1, 2
  %xor = xor i64 %0, %shr
  %and = and i64 %xor, 4611686018427387903
  ret i64 %and
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @save_type(%struct.Lisp_Save_Value* %v, i32 %n) #0 {
entry:
  %v.addr = alloca %struct.Lisp_Save_Value*, align 8
  %n.addr = alloca i32, align 4
  store %struct.Lisp_Save_Value* %v, %struct.Lisp_Save_Value** %v.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.Lisp_Save_Value*, %struct.Lisp_Save_Value** %v.addr, align 8
  %1 = bitcast %struct.Lisp_Save_Value* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %2 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 3, %2
  %shr = ashr i32 %bf.lshr, %mul
  %and = and i32 %shr, 7
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @XSAVE_POINTER(i64 %obj, i32 %n) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %obj, i64* %obj.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i64, i64* %obj.addr, align 8
  %call = call %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %1)
  %data = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %union.anon.2], [4 x %union.anon.2]* %data, i32 0, i64 %idxprom
  %pointer = bitcast %union.anon.2* %arrayidx to i8**
  %2 = load i8*, i8** %pointer, align 8
  ret i8* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %union.Lisp_Misc* @XMISC(i64 %0)
  %u_save_value = bitcast %union.Lisp_Misc* %call to %struct.Lisp_Save_Value*
  ret %struct.Lisp_Save_Value* %u_save_value
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_save_pointer(i64 %obj, i32 %n, i8* %val) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  store i64 %obj, i64* %obj.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %val, i8** %val.addr, align 8
  %0 = load i8*, i8** %val.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i64, i64* %obj.addr, align 8
  %call = call %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %2)
  %data = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %union.anon.2], [4 x %union.anon.2]* %data, i32 0, i64 %idxprom
  %pointer = bitcast %union.anon.2* %arrayidx to i8**
  store i8* %0, i8** %pointer, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void ()* @XSAVE_FUNCPOINTER(i64 %obj, i32 %n) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %obj, i64* %obj.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i64, i64* %obj.addr, align 8
  %call = call %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %1)
  %data = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %union.anon.2], [4 x %union.anon.2]* %data, i32 0, i64 %idxprom
  %funcpointer = bitcast %union.anon.2* %arrayidx to void ()**
  %2 = load void ()*, void ()** %funcpointer, align 8
  ret void ()* %2
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XSAVE_INTEGER(i64 %obj, i32 %n) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %obj, i64* %obj.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i64, i64* %obj.addr, align 8
  %call = call %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %1)
  %data = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %union.anon.2], [4 x %union.anon.2]* %data, i32 0, i64 %idxprom
  %integer = bitcast %union.anon.2* %arrayidx to i64*
  %2 = load i64, i64* %integer, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_save_integer(i64 %obj, i32 %n, i64 %val) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i64, i64* %obj.addr, align 8
  %call = call %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %2)
  %data = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %union.anon.2], [4 x %union.anon.2]* %data, i32 0, i64 %idxprom
  %integer = bitcast %union.anon.2* %arrayidx to i64*
  store i64 %0, i64* %integer, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @XSAVE_OBJECT(i64 %obj, i32 %n) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %obj, i64* %obj.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i64, i64* %obj.addr, align 8
  %call = call %struct.Lisp_Save_Value* @XSAVE_VALUE(i64 %1)
  %data = getelementptr inbounds %struct.Lisp_Save_Value, %struct.Lisp_Save_Value* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x %union.anon.2], [4 x %union.anon.2]* %data, i32 0, i64 %idxprom
  %object = bitcast %union.anon.2* %arrayidx to i64*
  %2 = load i64, i64* %object, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define %union.Lisp_Misc* @XMISC(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %sub = sub nsw i64 %0, 1
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %union.Lisp_Misc*
  ret %union.Lisp_Misc* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Misc_Any* @XMISCANY(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %union.Lisp_Misc* @XMISC(i64 %0)
  %u_any = bitcast %union.Lisp_Misc* %call to %struct.Lisp_Misc_Any*
  ret %struct.Lisp_Misc_Any* %u_any
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @XMISCTYPE(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %struct.Lisp_Misc_Any* @XMISCANY(i64 %0)
  %1 = bitcast %struct.Lisp_Misc_Any* %call to i32*
  %bf.load = load i32, i32* %1, align 4
  %bf.clear = and i32 %bf.load, 65535
  ret i32 %bf.clear
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Marker* @XMARKER(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %union.Lisp_Misc* @XMISC(i64 %0)
  %u_marker = bitcast %union.Lisp_Misc* %call to %struct.Lisp_Marker*
  ret %struct.Lisp_Marker* %u_marker
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Overlay* @XOVERLAY(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %union.Lisp_Misc* @XMISC(i64 %0)
  %u_overlay = bitcast %union.Lisp_Misc* %call to %struct.Lisp_Overlay*
  ret %struct.Lisp_Overlay* %u_overlay
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Finalizer* @XFINALIZER(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call %union.Lisp_Misc* @XMISC(i64 %0)
  %u_finalizer = bitcast %union.Lisp_Misc* %call to %struct.Lisp_Finalizer*
  ret %struct.Lisp_Finalizer* %u_finalizer
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @XFWDTYPE(%union.Lisp_Fwd* %a) #0 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %u_intfwd = bitcast %union.Lisp_Fwd* %0 to %struct.Lisp_Intfwd*
  %type = getelementptr inbounds %struct.Lisp_Intfwd, %struct.Lisp_Intfwd* %u_intfwd, i32 0, i32 0
  %1 = load i32, i32* %type, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.Lisp_Buffer_Objfwd* @XBUFFER_OBJFWD(%union.Lisp_Fwd* %a) #0 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %u_buffer_objfwd = bitcast %union.Lisp_Fwd* %0 to %struct.Lisp_Buffer_Objfwd*
  ret %struct.Lisp_Buffer_Objfwd* %u_buffer_objfwd
}

; Function Attrs: inlinehint nounwind uwtable
define double @XFLOAT_DATA(i64 %f) #0 {
entry:
  %f.addr = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  %0 = load i64, i64* %f.addr, align 8
  %call = call %struct.Lisp_Float* @XFLOAT(i64 %0)
  %u = getelementptr inbounds %struct.Lisp_Float, %struct.Lisp_Float* %call, i32 0, i32 0
  %data = bitcast %union.anon.3* %u to double*
  %1 = load double, double* %data, align 8
  ret double %1
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @NILP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @NUMBERP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %and3 = and i64 %1, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @NATNUMP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %1, 2
  %cmp3 = icmp sle i64 0, %shr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @RANGED_INTEGERP(i64 %lo, i64 %x, i64 %hi) #0 {
entry:
  %lo.addr = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %lo.addr, align 8
  %2 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %2, 2
  %cmp3 = icmp sle i64 %1, %shr
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i64, i64* %x.addr, align 8
  %shr5 = ashr i64 %3, 2
  %4 = load i64, i64* %hi.addr, align 8
  %cmp6 = icmp sle i64 %shr5, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  ret i1 %5
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @CONSP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FLOATP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @MISCP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @SYMBOLP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @INTEGERP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @VECTORLIKEP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 5
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @MARKERP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24236
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @STRINGP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 4
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @VECTORP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call i64 @ASIZE(i64 %1)
  %and2 = and i64 %call, 4611686018427387904
  %tobool = icmp ne i64 %and2, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @OVERLAYP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24237
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @SAVE_VALUEP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24238
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FINALIZERP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call i32 @XMISCTYPE(i64 %1)
  %cmp2 = icmp eq i32 %call, 24239
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @AUTOLOADP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 191)
  %1 = load i64, i64* %x.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %cmp2 = icmp eq i64 %call, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %5
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @BUFFER_OBJFWDP(%union.Lisp_Fwd* %a) #0 {
entry:
  %a.addr = alloca %union.Lisp_Fwd*, align 8
  store %union.Lisp_Fwd* %a, %union.Lisp_Fwd** %a.addr, align 8
  %0 = load %union.Lisp_Fwd*, %union.Lisp_Fwd** %a.addr, align 8
  %call = call i32 @XFWDTYPE(%union.Lisp_Fwd* %0)
  %cmp = icmp eq i32 %call, 3
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @PSEUDOVECTOR_TYPEP(%struct.vectorlike_header* %a, i32 %code) #0 {
entry:
  %a.addr = alloca %struct.vectorlike_header*, align 8
  %code.addr = alloca i32, align 4
  store %struct.vectorlike_header* %a, %struct.vectorlike_header** %a.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct.vectorlike_header*, %struct.vectorlike_header** %a.addr, align 8
  %size = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %0, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  %and = and i64 %1, 4611686019484352512
  %2 = load i32, i32* %code.addr, align 4
  %shl = shl i32 %2, 24
  %conv = sext i32 %shl to i64
  %or = or i64 4611686018427387904, %conv
  %cmp = icmp eq i64 %and, %or
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @WINDOW_CONFIGURATIONP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 9)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @PROCESSP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 2)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @WINDOWP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 4)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @TERMINALP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 8)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @SUBRP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 10)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @COMPILEDP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 14)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @BUFFERP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 6)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @CHAR_TABLE_P(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 15)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @BOOL_VECTOR_P(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 5)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FRAMEP(i64 %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 3)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @IMAGEP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %call = call i64 @builtin_lisp_symbol(i32 537)
  %cmp2 = icmp eq i64 %4, %call
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %5
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @ARRAYP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %1)
  br i1 %call1, label %lor.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i64, i64* %x.addr, align 8
  %call3 = call zeroext i1 @CHAR_TABLE_P(i64 %2)
  br i1 %call3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.2
  %3 = load i64, i64* %x.addr, align 8
  %call4 = call zeroext i1 @BOOL_VECTOR_P(i64 %3)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.2, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %call4, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_LIST(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %call4 = call i64 @builtin_lisp_symbol(i32 626)
  %2 = load i64, i64* %x.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call4, i64 %2) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_LIST_CONS(i64 %x, i64 %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 626)
  %1 = load i64, i64* %y.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_SYMBOL(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_NUMBER(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_STRING(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 885)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_STRING_CAR(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  %call = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 885)
  %4 = load i64, i64* %x.addr, align 8
  %sub2 = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub2 to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car3 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car3, align 8
  %8 = call i64 @wrong_type_argument(i64 %call1, i64 %7) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_CONS(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 296)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_VECTOR(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 996)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_BOOL_VECTOR(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @BOOL_VECTOR_P(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 207)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @CHECK_VECTOR_OR_STRING(i64 %x) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @VECTORP(i64 %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %x.addr, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %2)
  br i1 %call2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load i64, i64* %x.addr, align 8
  %call4 = call i64 @SCHARS(i64 %3)
  store i64 %call4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 179)
  %4 = load i64, i64* %x.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call6, i64 %4) #10
  unreachable

return:                                           ; preds = %if.then.3, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_ARRAY(i64 %x, i64 %predicate) #0 {
entry:
  %x.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @ARRAYP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %predicate.addr, align 8
  %2 = load i64, i64* %x.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %1, i64 %2) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_BUFFER(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @BUFFERP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 229)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_WINDOW(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @WINDOWP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 1037)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_PROCESS(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @PROCESSP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 775)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_NATNUM(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @NATNUMP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 1015)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define double @XFLOATINT(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call double @extract_float(i64 %0)
  ret double %call
}

declare double @extract_float(i64) #3

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_NUMBER_OR_FLOAT(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @NUMBERP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 711)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_NUMBER_CAR(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  store i64 %3, i64* %tmp, align 8
  %4 = load i64, i64* %tmp, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %5 = load i64, i64* %tmp, align 8
  %6 = call i64 @wrong_type_argument(i64 %call, i64 %5) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load i64, i64* %x.addr, align 8
  %9 = load i64, i64* %tmp, align 8
  call void @XSETCAR(i64 %8, i64 %9)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_NUMBER_CDR(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %3 = load i64, i64* %cdr, align 8
  store i64 %3, i64* %tmp, align 8
  %4 = load i64, i64* %tmp, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %5 = load i64, i64* %tmp, align 8
  %6 = call i64 @wrong_type_argument(i64 %call, i64 %5) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load i64, i64* %x.addr, align 8
  %9 = load i64, i64* %tmp, align 8
  call void @XSETCDR(i64 %8, i64 %9)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FUNCTIONP(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %call = call zeroext i1 @functionp(i64 %0)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @functionp(i64 %object) #0 {
entry:
  %retval = alloca i1, align 1
  %object.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %car50 = alloca i64, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %object.addr, align 8
  %call = call i64 @Ffboundp(i64 %1)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %call, %call2
  br i1 %cmp3, label %if.end.35, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %object.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 901)
  %call6 = call i64 @Findirect_function(i64 %2, i64 %call5)
  store i64 %call6, i64* %object.addr, align 8
  %3 = load i64, i64* %object.addr, align 8
  %and7 = and i64 %3, 7
  %conv8 = trunc i64 %and7 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %if.then
  %4 = load i64, i64* %object.addr, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 191)
  %cmp13 = icmp eq i64 %7, %call12
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %8 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %8, 4
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i64, i64* %object.addr, align 8
  %and18 = and i64 %9, 7
  %conv19 = trunc i64 %and18 to i32
  %cmp20 = icmp eq i32 %conv19, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp20, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load i64, i64* %object.addr, align 8
  %sub22 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub22 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  store i64 %14, i64* %object.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load i64, i64* %object.addr, align 8
  %and23 = and i64 %16, 7
  %conv24 = trunc i64 %and23 to i32
  %cmp25 = icmp eq i32 %conv24, 3
  br i1 %cmp25, label %land.rhs.27, label %land.end.33

land.rhs.27:                                      ; preds = %for.end
  %17 = load i64, i64* %object.addr, align 8
  %sub28 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub28 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %car29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 0
  %20 = load i64, i64* %car29, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %20, %call30
  %lnot = xor i1 %cmp31, true
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.27, %for.end
  %21 = phi i1 [ false, %for.end ], [ %lnot, %land.rhs.27 ]
  %lnot34 = xor i1 %21, true
  store i1 %lnot34, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.11, %if.then
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %land.lhs.true, %entry
  %22 = load i64, i64* %object.addr, align 8
  %call36 = call zeroext i1 @SUBRP(i64 %22)
  br i1 %call36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.35
  %23 = load i64, i64* %object.addr, align 8
  %call38 = call %struct.Lisp_Subr* @XSUBR(i64 %23)
  %max_args = getelementptr inbounds %struct.Lisp_Subr, %struct.Lisp_Subr* %call38, i32 0, i32 3
  %24 = load i16, i16* %max_args, align 2
  %conv39 = sext i16 %24 to i32
  %cmp40 = icmp ne i32 %conv39, -1
  store i1 %cmp40, i1* %retval
  br label %return

if.else:                                          ; preds = %if.end.35
  %25 = load i64, i64* %object.addr, align 8
  %call42 = call zeroext i1 @COMPILEDP(i64 %25)
  br i1 %call42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else
  store i1 true, i1* %retval
  br label %return

if.else.44:                                       ; preds = %if.else
  %26 = load i64, i64* %object.addr, align 8
  %and45 = and i64 %26, 7
  %conv46 = trunc i64 %and45 to i32
  %cmp47 = icmp eq i32 %conv46, 3
  br i1 %cmp47, label %if.then.49, label %if.else.59

if.then.49:                                       ; preds = %if.else.44
  %27 = load i64, i64* %object.addr, align 8
  %sub51 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub51 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %car52 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 0
  %30 = load i64, i64* %car52, align 8
  store i64 %30, i64* %car50, align 8
  %31 = load i64, i64* %car50, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp54 = icmp eq i64 %31, %call53
  br i1 %cmp54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.49
  %32 = load i64, i64* %car50, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 271)
  %cmp57 = icmp eq i64 %32, %call56
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.49
  %33 = phi i1 [ true, %if.then.49 ], [ %cmp57, %lor.rhs ]
  store i1 %33, i1* %retval
  br label %return

if.else.59:                                       ; preds = %if.else.44
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.else.59, %lor.end, %if.then.43, %if.then.37, %land.end.33
  %34 = load i1, i1* %retval
  ret i1 %34
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SPECPDL_INDEX() #0 {
entry:
  %0 = load %union.specbinding*, %union.specbinding** @specpdl_ptr, align 8
  %1 = load %union.specbinding*, %union.specbinding** @specpdl, align 8
  %sub.ptr.lhs.cast = ptrtoint %union.specbinding* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %union.specbinding* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: inlinehint nounwind uwtable
define void @vcopy(i64 %v, i64 %offset, i64* %args, i64 %count) #0 {
entry:
  %v.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %count.addr = alloca i64, align 8
  store i64 %v, i64* %v.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %v.addr, align 8
  %call = call %struct.Lisp_Vector* @XVECTOR(i64 %0)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  %1 = load i64, i64* %offset.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay, i64 %1
  %2 = bitcast i64* %add.ptr to i8*
  %3 = load i64*, i64** %args.addr, align 8
  %4 = bitcast i64* %3 to i8*
  %5 = load i64, i64* %count.addr, align 8
  %mul = mul i64 %5, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 %mul, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: inlinehint nounwind uwtable
define void @set_hash_key_slot(%struct.Lisp_Hash_Table* %h, i64 %idx, i64 %val) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %idx.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 9
  %1 = load i64, i64* %key_and_value, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %mul = mul nsw i64 2, %2
  %3 = load i64, i64* %val.addr, align 8
  call void @gc_aset(i64 %1, i64 %mul, i64 %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_hash_value_slot(%struct.Lisp_Hash_Table* %h, i64 %idx, i64 %val) #0 {
entry:
  %h.addr = alloca %struct.Lisp_Hash_Table*, align 8
  %idx.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Hash_Table* %h, %struct.Lisp_Hash_Table** %h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load %struct.Lisp_Hash_Table*, %struct.Lisp_Hash_Table** %h.addr, align 8
  %key_and_value = getelementptr inbounds %struct.Lisp_Hash_Table, %struct.Lisp_Hash_Table* %0, i32 0, i32 9
  %1 = load i64, i64* %key_and_value, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %mul = mul nsw i64 2, %2
  %add = add nsw i64 %mul, 1
  %3 = load i64, i64* %val.addr, align 8
  call void @gc_aset(i64 %1, i64 %add, i64 %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_symbol_function(i64 %sym, i64 %function) #0 {
entry:
  %sym.addr = alloca i64, align 8
  %function.addr = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  store i64 %function, i64* %function.addr, align 8
  %0 = load i64, i64* %function.addr, align 8
  %1 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %1, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %2 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %function1 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %2, i32 0, i32 3
  store i64 %0, i64* %function1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_symbol_plist(i64 %sym, i64 %plist) #0 {
entry:
  %sym.addr = alloca i64, align 8
  %plist.addr = alloca i64, align 8
  store i64 %sym, i64* %sym.addr, align 8
  store i64 %plist, i64* %plist.addr, align 8
  %0 = load i64, i64* %plist.addr, align 8
  %1 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %1, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %2 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %plist1 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %2, i32 0, i32 4
  store i64 %0, i64* %plist1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_symbol_next(i64 %sym, %struct.Lisp_Symbol* %next) #0 {
entry:
  %sym.addr = alloca i64, align 8
  %next.addr = alloca %struct.Lisp_Symbol*, align 8
  store i64 %sym, i64* %sym.addr, align 8
  store %struct.Lisp_Symbol* %next, %struct.Lisp_Symbol** %next.addr, align 8
  %0 = load %struct.Lisp_Symbol*, %struct.Lisp_Symbol** %next.addr, align 8
  %1 = load i64, i64* %sym.addr, align 8
  %sub = sub nsw i64 %1, 0
  %add.ptr = getelementptr inbounds i8, i8* bitcast ([1074 x %struct.Lisp_Symbol]* @lispsym to i8*), i64 %sub
  %2 = bitcast i8* %add.ptr to %struct.Lisp_Symbol*
  %next1 = getelementptr inbounds %struct.Lisp_Symbol, %struct.Lisp_Symbol* %2, i32 0, i32 5
  store %struct.Lisp_Symbol* %0, %struct.Lisp_Symbol** %next1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @blv_found(%struct.Lisp_Buffer_Local_Value* %blv) #0 {
entry:
  %blv.addr = alloca %struct.Lisp_Buffer_Local_Value*, align 8
  store %struct.Lisp_Buffer_Local_Value* %blv, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %0 = load %struct.Lisp_Buffer_Local_Value*, %struct.Lisp_Buffer_Local_Value** %blv.addr, align 8
  %1 = bitcast %struct.Lisp_Buffer_Local_Value* %0 to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %conv = zext i1 %bf.cast to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_overlay_plist(i64 %overlay, i64 %plist) #0 {
entry:
  %overlay.addr = alloca i64, align 8
  %plist.addr = alloca i64, align 8
  store i64 %overlay, i64* %overlay.addr, align 8
  store i64 %plist, i64* %plist.addr, align 8
  %0 = load i64, i64* %plist.addr, align 8
  %1 = load i64, i64* %overlay.addr, align 8
  %call = call %struct.Lisp_Overlay* @XOVERLAY(i64 %1)
  %plist1 = getelementptr inbounds %struct.Lisp_Overlay, %struct.Lisp_Overlay* %call, i32 0, i32 4
  store i64 %0, i64* %plist1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.interval* @string_intervals(i64 %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %call = call %struct.Lisp_String* @XSTRING(i64 %0)
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call, i32 0, i32 2
  %1 = load %struct.interval*, %struct.interval** %intervals, align 8
  ret %struct.interval* %1
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_string_intervals(i64 %s, %struct.interval* %i) #0 {
entry:
  %s.addr = alloca i64, align 8
  %i.addr = alloca %struct.interval*, align 8
  store i64 %s, i64* %s.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %1 = load i64, i64* %s.addr, align 8
  %call = call %struct.Lisp_String* @XSTRING(i64 %1)
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call, i32 0, i32 2
  store %struct.interval* %0, %struct.interval** %intervals, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_char_table_defalt(i64 %table, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %defalt = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 1
  store i64 %0, i64* %defalt, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_char_table_purpose(i64 %table, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %1)
  %purpose = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 3
  store i64 %0, i64* %purpose, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_char_table_extras(i64 %table, i64 %idx, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %2 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %extras = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 6
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* %extras, i32 0, i64 %1
  store i64 %0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_char_table_contents(i64 %table, i64 %idx, i64 %val) #0 {
entry:
  %table.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %table, i64* %table.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %2 = load i64, i64* %table.addr, align 8
  %call = call %struct.Lisp_Char_Table* @XCHAR_TABLE(i64 %2)
  %contents = getelementptr inbounds %struct.Lisp_Char_Table, %struct.Lisp_Char_Table* %call, i32 0, i32 5
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %contents, i32 0, i64 %1
  store i64 %0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @list2i(i64 %x, i64 %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  %1 = load i64, i64* %y.addr, align 8
  %shl1 = shl i64 %1, 2
  %add2 = add i64 %shl1, 2
  %call = call i64 @list2(i64 %add, i64 %add2)
  ret i64 %call
}

declare i64 @list2(i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @list3i(i64 %x, i64 %y, i64 %w) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  store i64 %w, i64* %w.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  %1 = load i64, i64* %y.addr, align 8
  %shl1 = shl i64 %1, 2
  %add2 = add i64 %shl1, 2
  %2 = load i64, i64* %w.addr, align 8
  %shl3 = shl i64 %2, 2
  %add4 = add i64 %shl3, 2
  %call = call i64 @list3(i64 %add, i64 %add2, i64 %add4)
  ret i64 %call
}

declare i64 @list3(i64, i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @list4i(i64 %x, i64 %y, i64 %w, i64 %h) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %w.addr = alloca i64, align 8
  %h.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  store i64 %w, i64* %w.addr, align 8
  store i64 %h, i64* %h.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %shl = shl i64 %0, 2
  %add = add i64 %shl, 2
  %1 = load i64, i64* %y.addr, align 8
  %shl1 = shl i64 %1, 2
  %add2 = add i64 %shl1, 2
  %2 = load i64, i64* %w.addr, align 8
  %shl3 = shl i64 %2, 2
  %add4 = add i64 %shl3, 2
  %3 = load i64, i64* %h.addr, align 8
  %shl5 = shl i64 %3, 2
  %add6 = add i64 %shl5, 2
  %call = call i64 @list4(i64 %add, i64 %add2, i64 %add4, i64 %add6)
  ret i64 %call
}

declare i64 @list4(i64, i64, i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @build_unibyte_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #11
  %call1 = call i64 @make_unibyte_string(i8* %0, i64 %call)
  ret i64 %call1
}

declare i64 @make_unibyte_string(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define i64 @build_pure_c_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #11
  %call1 = call i64 @make_pure_c_string(i8* %0, i64 %call)
  ret i64 %call1
}

declare i64 @make_pure_c_string(i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @build_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #11
  %call1 = call i64 @make_string(i8* %0, i64 %call)
  ret i64 %call1
}

declare i64 @make_string(i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @make_uninit_vector(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %v = alloca i64, align 8
  %p = alloca %struct.Lisp_Vector*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call %struct.Lisp_Vector* @allocate_vector(i64 %0)
  store %struct.Lisp_Vector* %call, %struct.Lisp_Vector** %p, align 8
  %1 = load %struct.Lisp_Vector*, %struct.Lisp_Vector** %p, align 8
  %2 = bitcast %struct.Lisp_Vector* %1 to i8*
  %call1 = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call1, i64* %v, align 8
  %3 = load i64, i64* %v, align 8
  ret i64 %3
}

declare %struct.Lisp_Vector* @allocate_vector(i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @make_uninit_sub_char_table(i32 %depth, i32 %min_char) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %min_char.addr = alloca i32, align 4
  %slots = alloca i32, align 4
  %v = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %min_char, i32* %min_char.addr, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @chartab_size, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 1, %1
  store i32 %add, i32* %slots, align 4
  %2 = load i32, i32* %slots, align 4
  %conv = sext i32 %2 to i64
  %call = call i64 @make_uninit_vector(i64 %conv)
  store i64 %call, i64* %v, align 8
  %3 = load i64, i64* %v, align 8
  %call1 = call %struct.Lisp_Vector* @XVECTOR(i64 %3)
  %header = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call1, i32 0, i32 0
  %size = getelementptr inbounds %struct.vectorlike_header, %struct.vectorlike_header* %header, i32 0, i32 0
  %4 = load i64, i64* %size, align 8
  %or = or i64 %4, 4611686018695823360
  store i64 %or, i64* %size, align 8
  %5 = load i32, i32* %depth.addr, align 4
  %6 = load i64, i64* %v, align 8
  %call2 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %6)
  %depth3 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call2, i32 0, i32 1
  store i32 %5, i32* %depth3, align 4
  %7 = load i32, i32* %min_char.addr, align 4
  %8 = load i64, i64* %v, align 8
  %call4 = call %struct.Lisp_Sub_Char_Table* @XSUB_CHAR_TABLE(i64 %8)
  %min_char5 = getelementptr inbounds %struct.Lisp_Sub_Char_Table, %struct.Lisp_Sub_Char_Table* %call4, i32 0, i32 2
  store i32 %7, i32* %min_char5, align 4
  %9 = load i64, i64* %v, align 8
  ret i64 %9
}

; Function Attrs: inlinehint nounwind uwtable
define void @check_cons_list() #0 {
entry:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @LOADHIST_ATTACH(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i8, i8* @initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 49), align 8
  %call = call i64 @Fcons(i64 %1, i64 %2)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 49), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @Fcons(i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @intern(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #11
  %call1 = call i64 @intern_1(i8* %0, i64 %call)
  ret i64 %call1
}

declare i64 @intern_1(i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @intern_c_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #11
  %call1 = call i64 @intern_c_string_1(i8* %0, i64 %call)
  ret i64 %call1
}

declare i64 @intern_c_string_1(i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @fast_string_match(i64 %regexp, i64 %string) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @fast_string_match_internal(i64 %0, i64 %1, i64 %call)
  ret i64 %call1
}

declare i64 @fast_string_match_internal(i64, i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i64 @fast_string_match_ignore_case(i64 %regexp, i64 %string) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %string.addr, align 8
  %2 = load i64, i64* @Vascii_canon_table, align 8
  %call = call i64 @fast_string_match_internal(i64 %0, i64 %1, i64 %2)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @lispstpcpy(i8* %dest, i64 %string) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %string.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call i64 @SBYTES(i64 %0)
  store i64 %call, i64* %len, align 8
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i64, i64* %string.addr, align 8
  %call1 = call i8* @SDATA(i64 %2)
  %3 = load i64, i64* %len, align 8
  %add = add nsw i64 %3, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %call1, i64 %add, i32 1, i1 false)
  %4 = load i8*, i8** %dest.addr, align 8
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  ret i8* %add.ptr
}

; Function Attrs: inlinehint nounwind uwtable
define i8* @egetenv(i8* %var) #0 {
entry:
  %var.addr = alloca i8*, align 8
  store i8* %var, i8** %var.addr, align 8
  %0 = load i8*, i8** %var.addr, align 8
  %1 = load i8*, i8** %var.addr, align 8
  %call = call i64 @strlen(i8* %1) #11
  %call1 = call i8* @egetenv_internal(i8* %0, i64 %call)
  ret i8* %call1
}

declare i8* @egetenv_internal(i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define void @maybe_gc() #0 {
entry:
  %0 = load i64, i64* @consing_since_gc, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 389), align 8
  %cmp = icmp sgt i64 %0, %1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* @consing_since_gc, align 8
  %3 = load i64, i64* @gc_relative_threshold, align 8
  %cmp1 = icmp sgt i64 %2, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 174), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %4, %call
  br i1 %cmp2, label %if.end, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %5 = load i64, i64* @consing_since_gc, align 8
  %6 = load i64, i64* @memory_full_cons_threshold, align 8
  %cmp4 = icmp sgt i64 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %call5 = call i64 @Fgarbage_collect()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %lor.lhs.false
  ret void
}

declare i64 @Fgarbage_collect() #3

declare i64 @Ffboundp(i64) #3

declare i64 @Findirect_function(i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define i32 @sanitize_tab_width(i64 %width) #0 {
entry:
  %width.addr = alloca i64, align 8
  store i64 %width, i64* %width.addr, align 8
  %0 = load i64, i64* %width.addr, align 8
  %cmp = icmp slt i64 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %width.addr, align 8
  %cmp1 = icmp sle i64 %1, 1000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i64, i64* %width.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 8, %cond.false ]
  %conv = trunc i64 %cond to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @sanitize_char_width(i64 %width) #0 {
entry:
  %width.addr = alloca i64, align 8
  store i64 %width, i64* %width.addr, align 8
  %0 = load i64, i64* %width.addr, align 8
  %cmp = icmp sle i64 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %width.addr, align 8
  %cmp1 = icmp sle i64 %1, 1000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i64, i64* %width.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 1000, %cond.false ]
  %conv = trunc i64 %cond to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @char_table_translate(i64 %obj, i32 %ch) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %ch.addr = alloca i32, align 4
  store i64 %obj, i64* %obj.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i64, i64* %obj.addr, align 8
  %1 = load i32, i32* %ch.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %0, i32 %1)
  store i64 %call, i64* %obj.addr, align 8
  %2 = load i64, i64* %obj.addr, align 8
  %call1 = call zeroext i1 @NATNUMP(i64 %2)
  br i1 %call1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %obj.addr, align 8
  %shr = ashr i64 %3, 2
  %cmp = icmp sle i64 %shr, 4194303
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i64, i64* %obj.addr, align 8
  %shr2 = ashr i64 %4, 2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %ch.addr, align 4
  %conv = sext i32 %5 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr2, %cond.true ], [ %conv, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  ret i32 %conv3
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @xstrcasecmp(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call = call i32 @c_strcasecmp(i8* %0, i8* %1) #11
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @c_strcasecmp(i8*, i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define i32 @GLYPH_CHAR(i64 %glyph.coerce) #0 {
entry:
  %glyph = alloca %struct.GLYPH, align 8
  %0 = bitcast %struct.GLYPH* %glyph to i64*
  store i64 %glyph.coerce, i64* %0, align 8
  %ch = getelementptr inbounds %struct.GLYPH, %struct.GLYPH* %glyph, i32 0, i32 0
  %1 = load i32, i32* %ch, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @GLYPH_FACE(i64 %glyph.coerce) #0 {
entry:
  %glyph = alloca %struct.GLYPH, align 8
  %0 = bitcast %struct.GLYPH* %glyph to i64*
  store i64 %glyph.coerce, i64* %0, align 8
  %face_id = getelementptr inbounds %struct.GLYPH, %struct.GLYPH* %glyph, i32 0, i32 1
  %1 = load i32, i32* %face_id, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @GLYPH_CODE_CHAR(i64 %gc) #0 {
entry:
  %gc.addr = alloca i64, align 8
  store i64 %gc, i64* %gc.addr, align 8
  %0 = load i64, i64* %gc.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %gc.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %shr = ashr i64 %4, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %gc.addr, align 8
  %shr2 = ashr i64 %5, 2
  %and3 = and i64 %shr2, 4194303
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ %and3, %cond.false ]
  %conv4 = trunc i64 %cond to i32
  ret i32 %conv4
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @GLYPH_CODE_FACE(i64 %gc) #0 {
entry:
  %gc.addr = alloca i64, align 8
  store i64 %gc, i64* %gc.addr, align 8
  %0 = load i64, i64* %gc.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %gc.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  %shr = ashr i64 %4, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %gc.addr, align 8
  %shr2 = ashr i64 %5, 2
  %shr3 = ashr i64 %shr2, 22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ %shr3, %cond.false ]
  %conv4 = trunc i64 %cond to i32
  ret i32 %conv4
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @face_tty_specified_color(i64 %color) #0 {
entry:
  %color.addr = alloca i64, align 8
  store i64 %color, i64* %color.addr, align 8
  %0 = load i64, i64* %color.addr, align 8
  %cmp = icmp ult i64 %0, -3
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @GLYPH_CHAR_VALID_P(i64 %g.coerce) #0 {
entry:
  %g = alloca %struct.GLYPH, align 8
  %0 = bitcast %struct.GLYPH* %g to i64*
  store i64 %g.coerce, i64* %0, align 8
  %1 = bitcast %struct.GLYPH* %g to i64*
  %2 = load i64, i64* %1, align 4
  %call = call i32 @GLYPH_CHAR(i64 %2)
  %add = add i32 %call, 0
  %cmp = icmp ule i32 %add, 4194303
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @GLYPH_CODE_P(i64 %gc) #0 {
entry:
  %gc.addr = alloca i64, align 8
  store i64 %gc, i64* %gc.addr, align 8
  %0 = load i64, i64* %gc.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %gc.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %call = call zeroext i1 @NATNUMP(i64 %4)
  br i1 %call, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %cond.true
  %5 = load i64, i64* %gc.addr, align 8
  %sub3 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub3 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car4 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car4, align 8
  %shr = ashr i64 %8, 2
  %cmp5 = icmp sle i64 %shr, 4194303
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i64, i64* %gc.addr, align 8
  %sub7 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub7 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %12 = load i64, i64* %cdr, align 8
  %call8 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %12, i64 1048575)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.true
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %cond.true ], [ %call8, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load i64, i64* %gc.addr, align 8
  %call10 = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %14, i64 4398046511103)
  %conv11 = zext i1 %call10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.end
  %cond = phi i32 [ %land.ext, %land.end ], [ %conv11, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: inlinehint nounwind uwtable
define void @reset_mouse_highlight(%struct.Mouse_HLInfo* %hlinfo) #0 {
entry:
  %hlinfo.addr = alloca %struct.Mouse_HLInfo*, align 8
  store %struct.Mouse_HLInfo* %hlinfo, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %0 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_beg_col = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %0, i32 0, i32 1
  store i32 -1, i32* %mouse_face_beg_col, align 4
  %1 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_beg_row = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %1, i32 0, i32 0
  store i32 -1, i32* %mouse_face_beg_row, align 4
  %2 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_end_col = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %2, i32 0, i32 4
  store i32 -1, i32* %mouse_face_end_col, align 4
  %3 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_end_row = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %3, i32 0, i32 3
  store i32 -1, i32* %mouse_face_end_row, align 4
  %4 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_mouse_y = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %4, i32 0, i32 11
  store i32 0, i32* %mouse_face_mouse_y, align 4
  %5 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_mouse_x = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %5, i32 0, i32 10
  store i32 0, i32* %mouse_face_mouse_x, align 4
  %6 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_end_x = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %6, i32 0, i32 5
  store i32 0, i32* %mouse_face_end_x, align 4
  %7 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_beg_x = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %7, i32 0, i32 2
  store i32 0, i32* %mouse_face_beg_x, align 4
  %8 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_face_id = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %8, i32 0, i32 7
  store i32 0, i32* %mouse_face_face_id, align 4
  %9 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_mouse_frame = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %9, i32 0, i32 9
  store %struct.frame* null, %struct.frame** %mouse_face_mouse_frame, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %10 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_window = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %10, i32 0, i32 6
  store i64 %call, i64* %mouse_face_window, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %11 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_overlay = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %11, i32 0, i32 8
  store i64 %call1, i64* %mouse_face_overlay, align 8
  %12 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_past_end = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %12, i32 0, i32 12
  %bf.load = load i8, i8* %mouse_face_past_end, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %mouse_face_past_end, align 8
  %13 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_hidden = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %13, i32 0, i32 12
  %bf.load2 = load i8, i8* %mouse_face_hidden, align 8
  %bf.clear3 = and i8 %bf.load2, -5
  store i8 %bf.clear3, i8* %mouse_face_hidden, align 8
  %14 = load %struct.Mouse_HLInfo*, %struct.Mouse_HLInfo** %hlinfo.addr, align 8
  %mouse_face_defer = getelementptr inbounds %struct.Mouse_HLInfo, %struct.Mouse_HLInfo* %14, i32 0, i32 12
  %bf.load4 = load i8, i8* %mouse_face_defer, align 8
  %bf.clear5 = and i8 %bf.load4, -3
  store i8 %bf.clear5, i8* %mouse_face_defer, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define { i64, i64 } @invalid_timespec() #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %call = call { i64, i64 } @make_timespec(i64 0, i64 -1)
  %0 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call, 1
  store i64 %4, i64* %3, align 8
  %5 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %6 = load { i64, i64 }, { i64, i64 }* %5, align 8
  ret { i64, i64 } %6
}

declare { i64, i64 } @make_timespec(i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @timespec_valid_p(i64 %t.coerce0, i64 %t.coerce1) #0 {
entry:
  %t = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %t to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %t.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %t.coerce1, i64* %2
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %cmp = icmp sge i64 %3, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define { i64, i64 } @current_timespec() #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %r = alloca %struct.timespec, align 8
  call void @gettime(%struct.timespec* %r)
  %0 = bitcast %struct.timespec* %retval to i8*
  %1 = bitcast %struct.timespec* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %3 = load { i64, i64 }, { i64, i64 }* %2, align 8
  ret { i64, i64 } %3
}

declare void @gettime(%struct.timespec*) #3

; Function Attrs: inlinehint nounwind uwtable
define void @tset_charset_list(%struct.terminal* %t, i64 %val) #0 {
entry:
  %t.addr = alloca %struct.terminal*, align 8
  %val.addr = alloca i64, align 8
  store %struct.terminal* %t, %struct.terminal** %t.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %charset_list = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 2
  store i64 %0, i64* %charset_list, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @tset_selection_alist(%struct.terminal* %t, i64 %val) #0 {
entry:
  %t.addr = alloca %struct.terminal*, align 8
  %val.addr = alloca i64, align 8
  store %struct.terminal* %t, %struct.terminal** %t.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.terminal*, %struct.terminal** %t.addr, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 3
  store i64 %0, i64* %Vselection_alist, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define %struct._XDisplay* @SELECTION_EVENT_DISPLAY(%struct.selection_input_event* %ev) #0 {
entry:
  %ev.addr = alloca %struct.selection_input_event*, align 8
  store %struct.selection_input_event* %ev, %struct.selection_input_event** %ev.addr, align 8
  %0 = load %struct.selection_input_event*, %struct.selection_input_event** %ev.addr, align 8
  %dpyinfo = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %0, i32 0, i32 1
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 2
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  ret %struct._XDisplay* %2
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @x_display_pixel_height(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 6
  %1 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %height = getelementptr inbounds %struct.Screen, %struct.Screen* %1, i32 0, i32 4
  %2 = load i32, i32* %height, align 4
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @x_display_pixel_width(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 6
  %1 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %width = getelementptr inbounds %struct.Screen, %struct.Screen* %1, i32 0, i32 3
  %2 = load i32, i32* %width, align 4
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define void @x_display_set_last_user_time(%struct.x_display_info* %dpyinfo, i64 %t) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %t.addr = alloca i64, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i64 %t, i64* %t.addr, align 8
  %0 = load i64, i64* %t.addr, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %last_user_time = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 79
  store i64 %0, i64* %last_user_time, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @x_make_truecolor_pixel(%struct.x_display_info* %dpyinfo, i32 %r, i32 %g, i32 %b) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %pr = alloca i64, align 8
  %pg = alloca i64, align 8
  %pb = alloca i64, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %red_bits = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 91
  %2 = load i32, i32* %red_bits, align 4
  %sub = sub nsw i32 16, %2
  %shr = ashr i32 %0, %sub
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %red_offset = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 94
  %4 = load i32, i32* %red_offset, align 4
  %shl = shl i32 %shr, %4
  %conv = sext i32 %shl to i64
  store i64 %conv, i64* %pr, align 8
  %5 = load i32, i32* %g.addr, align 4
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %green_bits = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 93
  %7 = load i32, i32* %green_bits, align 4
  %sub1 = sub nsw i32 16, %7
  %shr2 = ashr i32 %5, %sub1
  %8 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %green_offset = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %8, i32 0, i32 96
  %9 = load i32, i32* %green_offset, align 4
  %shl3 = shl i32 %shr2, %9
  %conv4 = sext i32 %shl3 to i64
  store i64 %conv4, i64* %pg, align 8
  %10 = load i32, i32* %b.addr, align 4
  %11 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %blue_bits = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %11, i32 0, i32 92
  %12 = load i32, i32* %blue_bits, align 4
  %sub5 = sub nsw i32 16, %12
  %shr6 = ashr i32 %10, %sub5
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %blue_offset = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %13, i32 0, i32 95
  %14 = load i32, i32* %blue_offset, align 4
  %shl7 = shl i32 %shr6, %14
  %conv8 = sext i32 %shl7 to i64
  store i64 %conv8, i64* %pb, align 8
  %15 = load i64, i64* %pr, align 8
  %16 = load i64, i64* %pg, align 8
  %or = or i64 %15, %16
  %17 = load i64, i64* %pb, align 8
  %or9 = or i64 %or, %17
  ret i64 %or9
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @x_mutable_colormap(%struct.Visual* %visual) #0 {
entry:
  %visual.addr = alloca %struct.Visual*, align 8
  %class = alloca i32, align 4
  store %struct.Visual* %visual, %struct.Visual** %visual.addr, align 8
  %0 = load %struct.Visual*, %struct.Visual** %visual.addr, align 8
  %class1 = getelementptr inbounds %struct.Visual, %struct.Visual* %0, i32 0, i32 2
  %1 = load i32, i32* %class1, align 4
  store i32 %1, i32* %class, align 4
  %2 = load i32, i32* %class, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %class, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %class, align 4
  %cmp3 = icmp ne i32 %4, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %5
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FONTP(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @PSEUDOVECTORP(i64 %0, i32 17)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FONT_SPEC_P(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONTP(i64 %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  %and = and i64 %call1, 4095
  %cmp = icmp eq i64 %and, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @GC_FONT_SPEC_P(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONTP(i64 %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @gc_asize(i64 %1)
  %and = and i64 %call1, 4095
  %cmp = icmp eq i64 %and, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FONT_ENTITY_P(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONTP(i64 %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  %and = and i64 %call1, 4095
  %cmp = icmp eq i64 %and, 14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @GC_FONT_ENTITY_P(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONTP(i64 %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @gc_asize(i64 %1)
  %and = and i64 %call1, 4095
  %cmp = icmp eq i64 %and, 14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @FONT_OBJECT_P(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONTP(i64 %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @ASIZE(i64 %1)
  %and = and i64 %call1, 4095
  %cmp = icmp eq i64 %and, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @GC_FONT_OBJECT_P(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONTP(i64 %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @gc_asize(i64 %1)
  %and = and i64 %call1, 4095
  %cmp = icmp eq i64 %and, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_FONT(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONTP(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 439)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_FONT_SPEC(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONT_SPEC_P(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 446)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_FONT_ENTITY(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONT_ENTITY_P(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 441)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_FONT_OBJECT(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call zeroext i1 @FONT_OBJECT_P(i64 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 443)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call1, i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.font_spec* @XFONT_SPEC(i64 %p) #0 {
entry:
  %p.addr = alloca i64, align 8
  store i64 %p, i64* %p.addr, align 8
  %0 = load i64, i64* %p.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.font_spec*
  ret %struct.font_spec* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.font_spec* @GC_XFONT_SPEC(i64 %p) #0 {
entry:
  %p.addr = alloca i64, align 8
  store i64 %p, i64* %p.addr, align 8
  %0 = load i64, i64* %p.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.font_spec*
  ret %struct.font_spec* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.font_entity* @XFONT_ENTITY(i64 %p) #0 {
entry:
  %p.addr = alloca i64, align 8
  store i64 %p, i64* %p.addr, align 8
  %0 = load i64, i64* %p.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.font_entity*
  ret %struct.font_entity* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.font_entity* @GC_XFONT_ENTITY(i64 %p) #0 {
entry:
  %p.addr = alloca i64, align 8
  store i64 %p, i64* %p.addr, align 8
  %0 = load i64, i64* %p.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.font_entity*
  ret %struct.font_entity* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.font* @XFONT_OBJECT(i64 %p) #0 {
entry:
  %p.addr = alloca i64, align 8
  store i64 %p, i64* %p.addr, align 8
  %0 = load i64, i64* %p.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.font*
  ret %struct.font* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.font* @GC_XFONT_OBJECT(i64 %p) #0 {
entry:
  %p.addr = alloca i64, align 8
  store i64 %p, i64* %p.addr, align 8
  %0 = load i64, i64* %p.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.font*
  ret %struct.font* %2
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.font* @CHECK_FONT_GET_OBJECT(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  call void @CHECK_FONT_OBJECT(i64 %0)
  %1 = load i64, i64* %x.addr, align 8
  %call = call %struct.font* @XFONT_OBJECT(i64 %1)
  ret %struct.font* %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @valid_font_driver(%struct.font_driver* %d) #0 {
entry:
  %d.addr = alloca %struct.font_driver*, align 8
  store %struct.font_driver* %d, %struct.font_driver** %d.addr, align 8
  ret i1 true
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @composition_registered_p(i64 %prop) #0 {
entry:
  %prop.addr = alloca i64, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load i64, i64* %prop.addr, align 8
  %sub = sub nsw i64 %0, 3
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %2, i32 0, i32 0
  %3 = load i64, i64* %car, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @composition_method(i64 %prop) #0 {
entry:
  %retval = alloca i32, align 4
  %prop.addr = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load i64, i64* %prop.addr, align 8
  %call = call zeroext i1 @composition_registered_p(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %prop.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %shr = ashr i64 %4, 2
  %5 = load %struct.composition**, %struct.composition*** @composition_table, align 8
  %arrayidx = getelementptr inbounds %struct.composition*, %struct.composition** %5, i64 %shr
  %6 = load %struct.composition*, %struct.composition** %arrayidx, align 8
  %method = getelementptr inbounds %struct.composition, %struct.composition* %6, i32 0, i32 7
  %7 = load i32, i32* %method, align 4
  store i32 %7, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load i64, i64* %prop.addr, align 8
  %sub1 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub1 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car2 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car2, align 8
  %sub3 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub3 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  store i64 %14, i64* %temp, align 8
  %15 = load i64, i64* %temp, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %15, %call4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %16 = load i64, i64* %temp, align 8
  %and = and i64 %16, 7
  %conv = trunc i64 %and to i32
  %and5 = and i32 %conv, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false
  %17 = load i64, i64* %temp, align 8
  %call8 = call zeroext i1 @STRINGP(i64 %17)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %18 = phi i1 [ true, %cond.false ], [ %call8, %lor.rhs ]
  %cond = select i1 %18, i32 2, i32 3
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true
  %cond10 = phi i32 [ 0, %cond.true ], [ %cond, %lor.end ]
  store i32 %cond10, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @composition_valid_p(i64 %start, i64 %end, i64 %prop) #0 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  %0 = load i64, i64* %prop.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %prop.addr, align 8
  %call = call zeroext i1 @composition_registered_p(i64 %1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i64, i64* %prop.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %shr = ashr i64 %5, 2
  %cmp3 = icmp sge i64 %shr, 0
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %cond.true
  %6 = load i64, i64* %prop.addr, align 8
  %sub6 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub6 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car7, align 8
  %shr8 = ashr i64 %9, 2
  %10 = load i64, i64* @n_compositions, align 8
  %cmp9 = icmp sle i64 %shr8, %10
  br i1 %cmp9, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.5
  %11 = load i64, i64* %prop.addr, align 8
  %sub12 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub12 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %and13 = and i64 %14, 7
  %conv14 = trunc i64 %and13 to i32
  %cmp15 = icmp eq i32 %conv14, 3
  br i1 %cmp15, label %land.rhs, label %land.end

cond.false:                                       ; preds = %land.lhs.true
  %15 = load i64, i64* %prop.addr, align 8
  %sub17 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub17 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %car18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 0
  %18 = load i64, i64* %car18, align 8
  %and19 = and i64 %18, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %land.lhs.true.23, label %land.end

land.lhs.true.23:                                 ; preds = %cond.false
  %19 = load i64, i64* %prop.addr, align 8
  %sub24 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub24 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car25, align 8
  %sub26 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub26 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %u27 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 1
  %cdr28 = bitcast %union.anon.0* %u27 to i64*
  %25 = load i64, i64* %cdr28, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %25, %call29
  br i1 %cmp30, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.23
  %26 = load i64, i64* %prop.addr, align 8
  %sub32 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub32 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car33 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car33, align 8
  %sub34 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub34 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %u35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 1
  %cdr36 = bitcast %union.anon.0* %u35 to i64*
  %32 = load i64, i64* %cdr36, align 8
  %call37 = call zeroext i1 @STRINGP(i64 %32)
  br i1 %call37, label %land.rhs, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %33 = load i64, i64* %prop.addr, align 8
  %sub40 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub40 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %car41 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 0
  %36 = load i64, i64* %car41, align 8
  %sub42 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub42 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %u43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 1
  %cdr44 = bitcast %union.anon.0* %u43 to i64*
  %39 = load i64, i64* %cdr44, align 8
  %call45 = call zeroext i1 @VECTORP(i64 %39)
  br i1 %call45, label %land.rhs, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.39
  %40 = load i64, i64* %prop.addr, align 8
  %sub48 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub48 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %car49 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 0
  %43 = load i64, i64* %car49, align 8
  %sub50 = sub nsw i64 %43, 3
  %44 = inttoptr i64 %sub50 to i8*
  %45 = bitcast i8* %44 to %struct.Lisp_Cons*
  %u51 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %45, i32 0, i32 1
  %cdr52 = bitcast %union.anon.0* %u51 to i64*
  %46 = load i64, i64* %cdr52, align 8
  %and53 = and i64 %46, 7
  %conv54 = trunc i64 %and53 to i32
  %and55 = and i32 %conv54, -5
  %cmp56 = icmp eq i32 %and55, 2
  br i1 %cmp56, label %land.rhs, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.47
  %47 = load i64, i64* %prop.addr, align 8
  %sub59 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub59 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %car60 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 0
  %50 = load i64, i64* %car60, align 8
  %sub61 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub61 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u62 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr63 = bitcast %union.anon.0* %u62 to i64*
  %53 = load i64, i64* %cdr63, align 8
  %and64 = and i64 %53, 7
  %conv65 = trunc i64 %and64 to i32
  %cmp66 = icmp eq i32 %conv65, 3
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.58, %lor.lhs.false.47, %lor.lhs.false.39, %lor.lhs.false, %land.lhs.true.23, %land.lhs.true.11
  %54 = load i64, i64* %prop.addr, align 8
  %call68 = call zeroext i1 @composition_registered_p(i64 %54)
  br i1 %call68, label %cond.true.70, label %cond.false.77

cond.true.70:                                     ; preds = %land.rhs
  %55 = load i64, i64* %prop.addr, align 8
  %sub71 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub71 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %u72 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 1
  %cdr73 = bitcast %union.anon.0* %u72 to i64*
  %58 = load i64, i64* %cdr73, align 8
  %sub74 = sub nsw i64 %58, 3
  %59 = inttoptr i64 %sub74 to i8*
  %60 = bitcast i8* %59 to %struct.Lisp_Cons*
  %car75 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %60, i32 0, i32 0
  %61 = load i64, i64* %car75, align 8
  %shr76 = ashr i64 %61, 2
  br label %cond.end

cond.false.77:                                    ; preds = %land.rhs
  %62 = load i64, i64* %prop.addr, align 8
  %sub78 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub78 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %car79 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 0
  %65 = load i64, i64* %car79, align 8
  %sub80 = sub nsw i64 %65, 3
  %66 = inttoptr i64 %sub80 to i8*
  %67 = bitcast i8* %66 to %struct.Lisp_Cons*
  %car81 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %67, i32 0, i32 0
  %68 = load i64, i64* %car81, align 8
  %shr82 = ashr i64 %68, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.77, %cond.true.70
  %cond = phi i64 [ %shr76, %cond.true.70 ], [ %shr82, %cond.false.77 ]
  %69 = load i64, i64* %end.addr, align 8
  %70 = load i64, i64* %start.addr, align 8
  %sub83 = sub nsw i64 %69, %70
  %cmp84 = icmp eq i64 %cond, %sub83
  br label %land.end

land.end:                                         ; preds = %cond.end, %lor.lhs.false.58, %cond.false, %land.lhs.true.11, %land.lhs.true.5, %cond.true, %entry
  %71 = phi i1 [ false, %lor.lhs.false.58 ], [ false, %cond.false ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.5 ], [ false, %cond.true ], [ false, %entry ], [ %cmp84, %cond.end ]
  ret i1 %71
}

; Function Attrs: inlinehint nounwind uwtable
define i64* @lgstring_glyph_addr(i64 %lgs, i64 %idx) #0 {
entry:
  %lgs.addr = alloca i64, align 8
  %idx.addr = alloca i64, align 8
  store i64 %lgs, i64* %lgs.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load i64, i64* %lgs.addr, align 8
  %1 = load i64, i64* %idx.addr, align 8
  %add = add nsw i64 %1, 2
  %call = call i64* @aref_addr(i64 %0, i64 %add)
  ret i64* %call
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_interval_object(%struct.interval* %i, i64 %obj) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %obj.addr = alloca i64, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %up_obj, align 8
  %1 = load i64, i64* %obj.addr, align 8
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 4
  %obj1 = bitcast %union.anon.21* %up to i64*
  store i64 %1, i64* %obj1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_interval_parent(%struct.interval* %i, %struct.interval* %parent) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %parent.addr = alloca %struct.interval*, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store %struct.interval* %parent, %struct.interval** %parent.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up_obj = getelementptr inbounds %struct.interval, %struct.interval* %0, i32 0, i32 5
  %bf.load = load i8, i8* %up_obj, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %up_obj, align 8
  %1 = load %struct.interval*, %struct.interval** %parent.addr, align 8
  %2 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %up = getelementptr inbounds %struct.interval, %struct.interval* %2, i32 0, i32 4
  %interval = bitcast %union.anon.21* %up to %struct.interval**
  store %struct.interval* %1, %struct.interval** %interval, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_interval_plist(%struct.interval* %i, i64 %plist) #0 {
entry:
  %i.addr = alloca %struct.interval*, align 8
  %plist.addr = alloca i64, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  store i64 %plist, i64* %plist.addr, align 8
  %0 = load i64, i64* %plist.addr, align 8
  %1 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %plist1 = getelementptr inbounds %struct.interval, %struct.interval* %1, i32 0, i32 6
  store i64 %0, i64* %plist1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_bidi_paragraph_direction(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %bidi_paragraph_direction_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 31
  store i64 %0, i64* %bidi_paragraph_direction_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_cache_long_scans(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %cache_long_scans_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 43
  store i64 %0, i64* %cache_long_scans_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_case_canon_table(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %case_canon_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 25
  store i64 %0, i64* %case_canon_table_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_case_eqv_table(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %case_eqv_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 26
  store i64 %0, i64* %case_eqv_table_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_directory(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 3
  store i64 %0, i64* %directory_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_display_count(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %display_count_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 52
  store i64 %0, i64* %display_count_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_display_time(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %display_time_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 66
  store i64 %0, i64* %display_time_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_downcase_table(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %downcase_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 23
  store i64 %0, i64* %downcase_table_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_enable_multibyte_characters(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 39
  store i64 %0, i64* %enable_multibyte_characters_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_filename(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %filename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 2
  store i64 %0, i64* %filename_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_keymap(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %keymap_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 14
  store i64 %0, i64* %keymap_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_last_selected_window(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %last_selected_window_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 51
  store i64 %0, i64* %last_selected_window_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_local_var_alist(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %local_var_alist_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 9
  store i64 %0, i64* %local_var_alist_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_mark_active(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %mark_active_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 38
  store i64 %0, i64* %mark_active_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_point_before_scroll(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %point_before_scroll_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 48
  store i64 %0, i64* %point_before_scroll_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_read_only(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %read_only_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 7
  store i64 %0, i64* %read_only_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_truncate_lines(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %truncate_lines_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 27
  store i64 %0, i64* %truncate_lines_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_undo_list(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %undo_list_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 98
  store i64 %0, i64* %undo_list_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_upcase_table(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %upcase_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 24
  store i64 %0, i64* %upcase_table_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @bset_width_table(%struct.buffer* %b, i64 %val) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %val.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %width_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 44
  store i64 %0, i64* %width_table_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.buffer* @decode_buffer(i64 %b) #0 {
entry:
  %b.addr = alloca i64, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %b.addr, align 8
  call void @CHECK_BUFFER(i64 %2)
  %3 = load i64, i64* %b.addr, align 8
  %call1 = call %struct.buffer* @XBUFFER(i64 %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.buffer* [ %1, %cond.true ], [ %call1, %cond.false ]
  ret %struct.buffer* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_buffer_internal(%struct.buffer* %b) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %cmp = icmp ne %struct.buffer* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  call void @set_buffer_internal_1(%struct.buffer* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @set_buffer_internal_1(%struct.buffer*) #3

; Function Attrs: inlinehint nounwind uwtable
define void @record_unwind_current_buffer() #0 {
entry:
  %call = call i64 @Fcurrent_buffer()
  call void @record_unwind_protect(void (i64)* @set_buffer_if_live, i64 %call)
  ret void
}

declare void @record_unwind_protect(void (i64)*, i64) #3

declare void @set_buffer_if_live(i64) #3

declare i64 @Fcurrent_buffer() #3

; Function Attrs: inlinehint nounwind uwtable
define %struct.interval* @buffer_intervals(%struct.buffer* %b) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %intervals = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 15
  %2 = load %struct.interval*, %struct.interval** %intervals, align 8
  ret %struct.interval* %2
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_buffer_intervals(%struct.buffer* %b, %struct.interval* %i) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %i.addr = alloca %struct.interval*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store %struct.interval* %i, %struct.interval** %i.addr, align 8
  %0 = load %struct.interval*, %struct.interval** %i.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 73
  %2 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %intervals = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %2, i32 0, i32 15
  store %struct.interval* %0, %struct.interval** %intervals, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @buffer_has_overlays() #0 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %overlays_before = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 95
  %1 = load %struct.Lisp_Overlay*, %struct.Lisp_Overlay** %overlays_before, align 8
  %tobool = icmp ne %struct.Lisp_Overlay* %1, null
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %overlays_after = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 96
  %3 = load %struct.Lisp_Overlay*, %struct.Lisp_Overlay** %overlays_after, align 8
  %tobool1 = icmp ne %struct.Lisp_Overlay* %3, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @FETCH_MULTIBYTE_CHAR(i64 %pos) #0 {
entry:
  %pos.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 73
  %2 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %2, i32 0, i32 3
  %3 = load i64, i64* %gpt_byte, align 8
  %cmp = icmp sge i64 %0, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 5
  %6 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ 0, %cond.false ]
  %7 = load i64, i64* %pos.addr, align 8
  %add = add nsw i64 %cond, %7
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 73
  %9 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %9, i32 0, i32 0
  %10 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %add
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr3, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false.7, label %cond.true.4

cond.true.4:                                      ; preds = %cond.end
  %13 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %14 to i32
  br label %cond.end.49

cond.false.7:                                     ; preds = %cond.end
  %15 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %16 to i32
  %and10 = and i32 %conv9, 32
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.false.25, label %cond.true.12

cond.true.12:                                     ; preds = %cond.false.7
  %17 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %and15 = and i32 %conv14, 31
  %shl = shl i32 %and15, 6
  %19 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %20 to i32
  %and18 = and i32 %conv17, 63
  %or = or i32 %shl, %and18
  %21 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp slt i32 %conv20, 194
  %cond23 = select i1 %cmp21, i32 4194176, i32 0
  %add24 = add nsw i32 %or, %cond23
  br label %cond.end.47

cond.false.25:                                    ; preds = %cond.false.7
  %23 = load i8*, i8** %p, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %24 to i32
  %and28 = and i32 %conv27, 16
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.false.44, label %cond.true.30

cond.true.30:                                     ; preds = %cond.false.25
  %25 = load i8*, i8** %p, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %26 to i32
  %and33 = and i32 %conv32, 15
  %shl34 = shl i32 %and33, 12
  %27 = load i8*, i8** %p, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %28 to i32
  %and37 = and i32 %conv36, 63
  %shl38 = shl i32 %and37, 6
  %or39 = or i32 %shl34, %shl38
  %29 = load i8*, i8** %p, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %30 to i32
  %and42 = and i32 %conv41, 63
  %or43 = or i32 %or39, %and42
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.false.25
  %31 = load i8*, i8** %p, align 8
  %call = call i32 @string_char(i8* %31, i8** null, i32* null)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.30
  %cond46 = phi i32 [ %or43, %cond.true.30 ], [ %call, %cond.false.44 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.12
  %cond48 = phi i32 [ %add24, %cond.true.12 ], [ %cond46, %cond.end.45 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.4
  %cond50 = phi i32 [ %conv6, %cond.true.4 ], [ %cond48, %cond.end.47 ]
  ret i32 %cond50
}

declare i32 @string_char(i8*, i8**, i32*) #3

; Function Attrs: inlinehint nounwind uwtable
define i32 @BUF_FETCH_MULTIBYTE_CHAR(%struct.buffer* %buf, i64 %pos) #0 {
entry:
  %buf.addr = alloca %struct.buffer*, align 8
  %pos.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %1 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 73
  %2 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %2, i32 0, i32 3
  %3 = load i64, i64* %gpt_byte, align 8
  %cmp = icmp sge i64 %0, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 5
  %6 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ 0, %cond.false ]
  %7 = load i64, i64* %pos.addr, align 8
  %add = add nsw i64 %cond, %7
  %8 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %text2 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 73
  %9 = load %struct.buffer_text*, %struct.buffer_text** %text2, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %9, i32 0, i32 0
  %10 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %add
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr3, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false.7, label %cond.true.4

cond.true.4:                                      ; preds = %cond.end
  %13 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %14 to i32
  br label %cond.end.49

cond.false.7:                                     ; preds = %cond.end
  %15 = load i8*, i8** %p, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %16 to i32
  %and10 = and i32 %conv9, 32
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.false.25, label %cond.true.12

cond.true.12:                                     ; preds = %cond.false.7
  %17 = load i8*, i8** %p, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %and15 = and i32 %conv14, 31
  %shl = shl i32 %and15, 6
  %19 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %20 to i32
  %and18 = and i32 %conv17, 63
  %or = or i32 %shl, %and18
  %21 = load i8*, i8** %p, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp slt i32 %conv20, 194
  %cond23 = select i1 %cmp21, i32 4194176, i32 0
  %add24 = add nsw i32 %or, %cond23
  br label %cond.end.47

cond.false.25:                                    ; preds = %cond.false.7
  %23 = load i8*, i8** %p, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %24 to i32
  %and28 = and i32 %conv27, 16
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.false.44, label %cond.true.30

cond.true.30:                                     ; preds = %cond.false.25
  %25 = load i8*, i8** %p, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %26 to i32
  %and33 = and i32 %conv32, 15
  %shl34 = shl i32 %and33, 12
  %27 = load i8*, i8** %p, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %28 to i32
  %and37 = and i32 %conv36, 63
  %shl38 = shl i32 %and37, 6
  %or39 = or i32 %shl34, %shl38
  %29 = load i8*, i8** %p, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %30 to i32
  %and42 = and i32 %conv41, 63
  %or43 = or i32 %or39, %and42
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.false.25
  %31 = load i8*, i8** %p, align 8
  %call = call i32 @string_char(i8* %31, i8** null, i32* null)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.30
  %cond46 = phi i32 [ %or43, %cond.true.30 ], [ %call, %cond.false.44 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %cond.true.12
  %cond48 = phi i32 [ %add24, %cond.true.12 ], [ %cond46, %cond.end.45 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.4
  %cond50 = phi i32 [ %conv6, %cond.true.4 ], [ %cond48, %cond.end.47 ]
  ret i32 %cond50
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @buffer_window_count(%struct.buffer* %b) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 81
  %1 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %base_buffer1 = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 81
  %3 = load %struct.buffer*, %struct.buffer** %base_buffer1, align 8
  store %struct.buffer* %3, %struct.buffer** %b.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %window_count = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 83
  %5 = load i32, i32* %window_count, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @per_buffer_default(i32 %offset) #0 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_defaults to i8*), i64 %idx.ext
  %1 = bitcast i8* %add.ptr to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_per_buffer_default(i32 %offset, i64 %value) #0 {
entry:
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %1 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%struct.buffer* @buffer_defaults to i8*), i64 %idx.ext
  %2 = bitcast i8* %add.ptr to i64*
  store i64 %0, i64* %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @per_buffer_value(%struct.buffer* %b, i32 %offset) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %offset.addr, align 4
  %1 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %2 = bitcast %struct.buffer* %1 to i8*
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to i64*
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: inlinehint nounwind uwtable
define void @set_per_buffer_value(%struct.buffer* %b, i32 %offset, i64 %value) #0 {
entry:
  %b.addr = alloca %struct.buffer*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  store %struct.buffer* %b, %struct.buffer** %b.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %1 = load i32, i32* %offset.addr, align 4
  %2 = load %struct.buffer*, %struct.buffer** %b.addr, align 8
  %3 = bitcast %struct.buffer* %2 to i8*
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %4 = bitcast i8* %add.ptr to i64*
  store i64 %0, i64* %4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @downcase(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %downcase_table = alloca i64, align 8
  %down = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %downcase_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 23
  %1 = load i64, i64* %downcase_table_, align 8
  store i64 %1, i64* %downcase_table, align 8
  %2 = load i64, i64* %downcase_table, align 8
  %3 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %2, i32 %3)
  store i64 %call, i64* %down, align 8
  %4 = load i64, i64* %down, align 8
  %call1 = call zeroext i1 @NATNUMP(i64 %4)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %down, align 8
  %shr = ashr i64 %5, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %6 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ %conv, %cond.false ]
  %conv2 = trunc i64 %cond to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @uppercasep(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @downcase(i32 %0)
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %call, %1
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @upcase1(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %upcase_table = alloca i64, align 8
  %up = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %upcase_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 24
  %1 = load i64, i64* %upcase_table_, align 8
  store i64 %1, i64* %upcase_table, align 8
  %2 = load i64, i64* %upcase_table, align 8
  %3 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %2, i32 %3)
  store i64 %call, i64* %up, align 8
  %4 = load i64, i64* %up, align 8
  %call1 = call zeroext i1 @NATNUMP(i64 %4)
  br i1 %call1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %up, align 8
  %shr = ashr i64 %5, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %6 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ %conv, %cond.false ]
  %conv2 = trunc i64 %cond to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @lowercasep(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 @uppercasep(i32 %0)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @upcase1(i32 %1)
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %call1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %3
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @upcase(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 @uppercasep(i32 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %call1 = call i32 @upcase1(i32 %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_frame(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 1
  store i64 %0, i64* %frame, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_next(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %next = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 2
  store i64 %0, i64* %next, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_prev(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %prev = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 3
  store i64 %0, i64* %prev, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_redisplay_end_trigger(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %redisplay_end_trigger = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 21
  store i64 %0, i64* %redisplay_end_trigger, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_new_pixel(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %new_pixel = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 9
  store i64 %0, i64* %new_pixel, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_vertical_scroll_bar(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 15
  store i64 %0, i64* %vertical_scroll_bar, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_horizontal_scroll_bar(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %horizontal_scroll_bar = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 17
  store i64 %0, i64* %horizontal_scroll_bar, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_horizontal_scroll_bar_type(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %horizontal_scroll_bar_type = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 18
  store i64 %0, i64* %horizontal_scroll_bar_type, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_prev_buffers(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %prev_buffers = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 26
  store i64 %0, i64* %prev_buffers, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @wset_next_buffers(%struct.window* %w, i64 %val) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %val.addr = alloca i64, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %next_buffers = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 27
  store i64 %0, i64* %next_buffers, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @output_cursor_to(%struct.window* %w, i32 %vpos, i32 %hpos, i32 %y, i32 %x) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %vpos.addr = alloca i32, align 4
  %hpos.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i32 %vpos, i32* %vpos.addr, align 4
  store i32 %hpos, i32* %hpos.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %hpos.addr, align 4
  %1 = load %struct.window*, %struct.window** %w.addr, align 8
  %output_cursor = getelementptr inbounds %struct.window, %struct.window* %1, i32 0, i32 51
  %hpos1 = getelementptr inbounds %struct.cursor_pos, %struct.cursor_pos* %output_cursor, i32 0, i32 2
  store i32 %0, i32* %hpos1, align 4
  %2 = load i32, i32* %vpos.addr, align 4
  %3 = load %struct.window*, %struct.window** %w.addr, align 8
  %output_cursor2 = getelementptr inbounds %struct.window, %struct.window* %3, i32 0, i32 51
  %vpos3 = getelementptr inbounds %struct.cursor_pos, %struct.cursor_pos* %output_cursor2, i32 0, i32 3
  store i32 %2, i32* %vpos3, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct.window*, %struct.window** %w.addr, align 8
  %output_cursor4 = getelementptr inbounds %struct.window, %struct.window* %5, i32 0, i32 51
  %x5 = getelementptr inbounds %struct.cursor_pos, %struct.cursor_pos* %output_cursor4, i32 0, i32 0
  store i32 %4, i32* %x5, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct.window*, %struct.window** %w.addr, align 8
  %output_cursor6 = getelementptr inbounds %struct.window, %struct.window* %7, i32 0, i32 51
  %y7 = getelementptr inbounds %struct.cursor_pos, %struct.cursor_pos* %output_cursor6, i32 0, i32 1
  store i32 %6, i32* %y7, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @syms_of_xwidget() #0 {
entry:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @valid_xwidget_spec_p(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define void @xwidget_view_delete_all_in_window(%struct.window* %w) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @x_draw_xwidget_glyph_string(%struct.glyph_string* %s) #0 {
entry:
  %s.addr = alloca %struct.glyph_string*, align 8
  store %struct.glyph_string* %s, %struct.glyph_string** %s.addr, align 8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define %struct.xwidget* @lookup_xwidget(i64 %obj) #0 {
entry:
  %retval = alloca %struct.xwidget*, align 8
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  unreachable

return:                                           ; No predecessors!
  %0 = load %struct.xwidget*, %struct.xwidget** %retval
  ret %struct.xwidget* %0
}

; Function Attrs: inlinehint nounwind uwtable
define void @xwidget_end_redisplay(%struct.window* %w, %struct.glyph_matrix* %m) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %m.addr = alloca %struct.glyph_matrix*, align 8
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store %struct.glyph_matrix* %m, %struct.glyph_matrix** %m.addr, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kill_buffer_xwidgets(i64 %buf) #0 {
entry:
  %buf.addr = alloca i64, align 8
  store i64 %buf, i64* %buf.addr, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @block_input() #0 {
entry:
  %0 = load volatile i32, i32* @interrupt_input_blocked, align 4
  %inc = add nsw i32 %0, 1
  store volatile i32 %inc, i32* @interrupt_input_blocked, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @input_blocked_p() #0 {
entry:
  %0 = load volatile i32, i32* @interrupt_input_blocked, align 4
  %cmp = icmp sgt i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define void @pset_childp(%struct.Lisp_Process* %p, i64 %val) #0 {
entry:
  %p.addr = alloca %struct.Lisp_Process*, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Process* %p, %struct.Lisp_Process** %p.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %childp = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %1, i32 0, i32 8
  store i64 %0, i64* %childp, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @pset_gnutls_cred_type(%struct.Lisp_Process* %p, i64 %val) #0 {
entry:
  %p.addr = alloca %struct.Lisp_Process*, align 8
  %val.addr = alloca i64, align 8
  store %struct.Lisp_Process* %p, %struct.Lisp_Process** %p.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %gnutls_cred_type = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %1, i32 0, i32 18
  store i64 %0, i64* %gnutls_cred_type, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_buffer_list(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %buffer_list = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 15
  store i64 %0, i64* %buffer_list, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_buried_buffer_list(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %buried_buffer_list = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 16
  store i64 %0, i64* %buried_buffer_list, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_condemned_scroll_bars(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %condemned_scroll_bars = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 10
  store i64 %0, i64* %condemned_scroll_bars, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_face_alist(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %face_alist = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 12
  store i64 %0, i64* %face_alist, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_focus_frame(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %focus_frame = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 4
  store i64 %0, i64* %focus_frame, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_icon_name(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 2
  store i64 %0, i64* %icon_name, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_menu_bar_items(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 11
  store i64 %0, i64* %menu_bar_items, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_menu_bar_vector(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_vector = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 13
  store i64 %0, i64* %menu_bar_vector, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_name(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %name = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 1
  store i64 %0, i64* %name, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_param_alist(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %param_alist = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 8
  store i64 %0, i64* %param_alist, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_root_window(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %root_window = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 5
  store i64 %0, i64* %root_window, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_scroll_bars(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %scroll_bars = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 9
  store i64 %0, i64* %scroll_bars, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_selected_window(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %selected_window = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 6
  store i64 %0, i64* %selected_window, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_title(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %title = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 3
  store i64 %0, i64* %title, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_tool_bar_items(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %tool_bar_items = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 17
  store i64 %0, i64* %tool_bar_items, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fset_tool_bar_position(%struct.frame* %f, i64 %val) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %val.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %tool_bar_position = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 18
  store i64 %0, i64* %tool_bar_position, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define double @default_pixels_per_inch_x() #0 {
entry:
  %v = alloca i64, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 71), align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 71), align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 71), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  store i64 %cond, i64* %v, align 8
  %6 = load i64, i64* %v, align 8
  %call = call zeroext i1 @NUMBERP(i64 %6)
  br i1 %call, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %7 = load i64, i64* %v, align 8
  %call4 = call double @XFLOATINT(i64 %7)
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi double [ %call4, %cond.true.3 ], [ -1.000000e+00, %cond.false.5 ]
  %cmp8 = fcmp ogt double %cond7, 0.000000e+00
  br i1 %cmp8, label %cond.true.10, label %cond.false.18

cond.true.10:                                     ; preds = %cond.end.6
  %8 = load i64, i64* %v, align 8
  %call11 = call zeroext i1 @NUMBERP(i64 %8)
  br i1 %call11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.true.10
  %9 = load i64, i64* %v, align 8
  %call14 = call double @XFLOATINT(i64 %9)
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.true.10
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi double [ %call14, %cond.true.13 ], [ -1.000000e+00, %cond.false.15 ]
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end.6
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.end.16
  %cond20 = phi double [ %cond17, %cond.end.16 ], [ 7.200000e+01, %cond.false.18 ]
  ret double %cond20
}

; Function Attrs: inlinehint nounwind uwtable
define double @default_pixels_per_inch_y() #0 {
entry:
  %v = alloca i64, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 71), align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 71), align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 71), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  store i64 %cond, i64* %v, align 8
  %6 = load i64, i64* %v, align 8
  %call = call zeroext i1 @NUMBERP(i64 %6)
  br i1 %call, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %7 = load i64, i64* %v, align 8
  %call4 = call double @XFLOATINT(i64 %7)
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi double [ %call4, %cond.true.3 ], [ -1.000000e+00, %cond.false.5 ]
  %cmp8 = fcmp ogt double %cond7, 0.000000e+00
  br i1 %cmp8, label %cond.true.10, label %cond.false.18

cond.true.10:                                     ; preds = %cond.end.6
  %8 = load i64, i64* %v, align 8
  %call11 = call zeroext i1 @NUMBERP(i64 %8)
  br i1 %call11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %cond.true.10
  %9 = load i64, i64* %v, align 8
  %call14 = call double @XFLOATINT(i64 %9)
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.true.10
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond17 = phi double [ %call14, %cond.true.13 ], [ -1.000000e+00, %cond.false.15 ]
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end.6
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.end.16
  %cond20 = phi double [ %cond17, %cond.end.16 ], [ 7.200000e+01, %cond.false.18 ]
  ret double %cond20
}

; Function Attrs: inlinehint nounwind uwtable
define void @SET_FRAME_VISIBLE(%struct.frame* %f, i32 %v) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %v.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %v.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 26
  %3 = bitcast i48* %visible to i64*
  %bf.load = load i64, i64* %3, align 8
  %bf.lshr = lshr i64 %bf.load, 10
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp1 = icmp ne i32 %bf.cast, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  call void @redisplay_other_windows()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %garbaged = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 26
  %5 = bitcast i48* %garbaged to i64*
  %bf.load3 = load i64, i64* %5, align 8
  %bf.lshr4 = lshr i64 %bf.load3, 13
  %bf.clear5 = and i64 %bf.lshr4, 1
  %bf.cast6 = trunc i64 %bf.clear5 to i1
  br i1 %bf.cast6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i8 1, i8* @frame_garbaged, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %6 = load i32, i32* %v.addr, align 4
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible10 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 26
  %8 = bitcast i48* %visible10 to i64*
  %9 = zext i32 %6 to i64
  %bf.load11 = load i64, i64* %8, align 8
  %bf.value = and i64 %9, 3
  %bf.shl = shl i64 %bf.value, 10
  %bf.clear12 = and i64 %bf.load11, -3073
  %bf.set = or i64 %bf.clear12, %bf.shl
  store i64 %bf.set, i64* %8, align 8
  %bf.result.cast = trunc i64 %bf.value to i32
  ret void
}

declare void @redisplay_other_windows() #3

; Function Attrs: inlinehint nounwind uwtable
define void @x_set_bitmap_icon(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %obj = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 532)
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %param_alist = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 8
  %1 = load i64, i64* %param_alist, align 8
  %call1 = call i64 @assq_no_quit(i64 %call, i64 %1)
  store i64 %call1, i64* %obj, align 8
  %2 = load i64, i64* %obj, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %obj, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %6 = load i64, i64* %cdr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %6, %call3
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %8 = load i64, i64* %obj, align 8
  %sub6 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub6 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %u7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 1
  %cdr8 = bitcast %union.anon.0* %u7 to i64*
  %11 = load i64, i64* %cdr8, align 8
  %call9 = call zeroext i1 @x_bitmap_icon(%struct.frame* %7, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i64 @assq_no_quit(i64, i64) #3

declare zeroext i1 @x_bitmap_icon(%struct.frame*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define void @flush_frame(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %rif = alloca %struct.redisplay_interface*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 61
  %1 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %rif1 = getelementptr inbounds %struct.terminal, %struct.terminal* %1, i32 0, i32 15
  %2 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif1, align 8
  store %struct.redisplay_interface* %2, %struct.redisplay_interface** %rif, align 8
  %3 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %tobool = icmp ne %struct.redisplay_interface* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %flush_display = getelementptr inbounds %struct.redisplay_interface, %struct.redisplay_interface* %4, i32 0, i32 9
  %5 = load void (%struct.frame*)*, void (%struct.frame*)** %flush_display, align 8
  %tobool2 = icmp ne void (%struct.frame*)* %5, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.redisplay_interface*, %struct.redisplay_interface** %rif, align 8
  %flush_display3 = getelementptr inbounds %struct.redisplay_interface, %struct.redisplay_interface* %6, i32 0, i32 9
  %7 = load void (%struct.frame*)*, void (%struct.frame*)** %flush_display3, align 8
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %7(%struct.frame* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_default_minibuffer_frame(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %Vdefault_minibuffer_frame_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 20
  store i64 %0, i64* %Vdefault_minibuffer_frame_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_defining_kbd_macro(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %defining_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 9
  store i64 %0, i64* %defining_kbd_macro_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_input_decode_map(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %Vinput_decode_map_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 19
  store i64 %0, i64* %Vinput_decode_map_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_last_command(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %Vlast_command_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 2
  store i64 %0, i64* %Vlast_command_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_last_kbd_macro(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %Vlast_kbd_macro_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 14
  store i64 %0, i64* %Vlast_kbd_macro_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_prefix_arg(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %Vprefix_arg_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 6
  store i64 %0, i64* %Vprefix_arg_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_system_key_alist(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %Vsystem_key_alist_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 15
  store i64 %0, i64* %Vsystem_key_alist_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kset_window_system(%struct.kboard* %kb, i64 %val) #0 {
entry:
  %kb.addr = alloca %struct.kboard*, align 8
  %val.addr = alloca i64, align 8
  store %struct.kboard* %kb, %struct.kboard** %kb.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* %val.addr, align 8
  %1 = load %struct.kboard*, %struct.kboard** %kb.addr, align 8
  %Vwindow_system_ = getelementptr inbounds %struct.kboard, %struct.kboard* %1, i32 0, i32 17
  store i64 %0, i64* %Vwindow_system_, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @kbd_buffer_store_event_hold(%struct.input_event* %event, %struct.input_event* %hold_quit) #0 {
entry:
  %event.addr = alloca %struct.input_event*, align 8
  %hold_quit.addr = alloca %struct.input_event*, align 8
  store %struct.input_event* %event, %struct.input_event** %event.addr, align 8
  store %struct.input_event* %hold_quit, %struct.input_event** %hold_quit.addr, align 8
  %0 = load %struct.input_event*, %struct.input_event** %event.addr, align 8
  %1 = bitcast %struct.input_event* %0 to %union.buffered_input_event*
  %2 = load %struct.input_event*, %struct.input_event** %hold_quit.addr, align 8
  call void @kbd_buffer_store_buffered_event(%union.buffered_input_event* %1, %struct.input_event* %2)
  ret void
}

declare void @kbd_buffer_store_buffered_event(%union.buffered_input_event*, %struct.input_event*) #3

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @CATEGORY_MEMBER(i64 %category, i64 %category_set) #0 {
entry:
  %category.addr = alloca i64, align 8
  %category_set.addr = alloca i64, align 8
  store i64 %category, i64* %category.addr, align 8
  store i64 %category_set, i64* %category_set.addr, align 8
  %0 = load i64, i64* %category_set.addr, align 8
  %1 = load i64, i64* %category.addr, align 8
  %call = call zeroext i1 @bool_vector_bitref(i64 %0, i64 %1)
  ret i1 %call
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @CHAR_HAS_CATEGORY(i32 %ch, i32 %category) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %category.addr = alloca i32, align 4
  %category_set = alloca i64, align 8
  store i32 %ch, i32* %ch.addr, align 4
  store i32 %category, i32* %category.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %call = call i64 @char_category_set(i32 %0)
  store i64 %call, i64* %category_set, align 8
  %1 = load i32, i32* %category.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %category_set, align 8
  %call1 = call zeroext i1 @CATEGORY_MEMBER(i64 %conv, i64 %2)
  ret i1 %call1
}

declare i64 @char_category_set(i32) #3

; Function Attrs: inlinehint nounwind uwtable
define void @set_charset_attr(%struct.charset* %charset, i32 %idx, i64 %val) #0 {
entry:
  %charset.addr = alloca %struct.charset*, align 8
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store %struct.charset* %charset, %struct.charset** %charset.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64, i64* @Vcharset_hash_table, align 8
  %call = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %0)
  %1 = load %struct.charset*, %struct.charset** %charset.addr, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %1, i32 0, i32 1
  %2 = load i64, i64* %hash_index, align 8
  %call1 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call, i64 %2)
  %3 = load i32, i32* %idx.addr, align 4
  %conv = zext i32 %3 to i64
  %4 = load i64, i64* %val.addr, align 8
  call void @ASET(i64 %call1, i64 %conv, i64 %4)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @syntax_property_entry(i32 %c, i1 zeroext %via_property) #0 {
entry:
  %retval = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %via_property.addr = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  %frombool = zext i1 %via_property to i8
  store i8 %frombool, i8* %via_property.addr, align 1
  %0 = load i8, i8* %via_property.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 3), align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 4), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 5), align 8
  %4 = load i32, i32* %c.addr, align 4
  %call = call i64 @CHAR_TABLE_REF(i64 %3, i32 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %call, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %syntax_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 16
  %6 = load i64, i64* %syntax_table_, align 8
  %7 = load i32, i32* %c.addr, align 4
  %call2 = call i64 @CHAR_TABLE_REF(i64 %6, i32 %7)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SYNTAX_ENTRY(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i64 @syntax_property_entry(i32 %0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @syntax_property_with_flags(i32 %c, i1 zeroext %via_property) #0 {
entry:
  %c.addr = alloca i32, align 4
  %via_property.addr = alloca i8, align 1
  %ent = alloca i64, align 8
  store i32 %c, i32* %c.addr, align 4
  %frombool = zext i1 %via_property to i8
  store i8 %frombool, i8* %via_property.addr, align 1
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i8, i8* %via_property.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call i64 @syntax_property_entry(i32 %0, i1 zeroext %tobool)
  store i64 %call, i64* %ent, align 8
  %2 = load i64, i64* %ent, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %ent, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %shr = ashr i64 %6, 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ 0, %cond.false ]
  %conv2 = trunc i64 %cond to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @SYNTAX_WITH_FLAGS(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @syntax_property_with_flags(i32 %0, i1 zeroext false)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @syntax_property(i32 %c, i1 zeroext %via_property) #0 {
entry:
  %c.addr = alloca i32, align 4
  %via_property.addr = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  %frombool = zext i1 %via_property to i8
  store i8 %frombool, i8* %via_property.addr, align 1
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i8, i8* %via_property.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call i32 @syntax_property_with_flags(i32 %0, i1 zeroext %tobool)
  %and = and i32 %call, 255
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @SYNTAX(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @syntax_property(i32 %0, i1 zeroext false)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @SYNTAX_TABLE_BYTE_TO_CHAR(i64 %bytepos) #0 {
entry:
  %bytepos.addr = alloca i64, align 8
  store i64 %bytepos, i64* %bytepos.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 480), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end.62

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call = call zeroext i1 @STRINGP(i64 %1)
  br i1 %call, label %cond.true.1, label %cond.false.3

cond.true.1:                                      ; preds = %cond.false
  %2 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %3 = load i64, i64* %bytepos.addr, align 8
  %call2 = call i64 @string_byte_to_char(i64 %2, i64 %3)
  br label %cond.end.60

cond.false.3:                                     ; preds = %cond.false
  %4 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call4 = call zeroext i1 @BUFFERP(i64 %4)
  br i1 %call4, label %cond.true.5, label %cond.false.44

cond.true.5:                                      ; preds = %cond.false.3
  %5 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call6 = call %struct.buffer* @XBUFFER(i64 %5)
  %6 = load i64, i64* %bytepos.addr, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call7 = call %struct.buffer* @XBUFFER(i64 %7)
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp = icmp eq %struct.buffer* %call7, %8
  br i1 %cmp, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.true.5
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 78
  %10 = load i64, i64* %begv_byte, align 8
  br label %cond.end.20

cond.false.9:                                     ; preds = %cond.true.5
  %11 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call10 = call %struct.buffer* @XBUFFER(i64 %11)
  %begv_marker_ = getelementptr inbounds %struct.buffer, %struct.buffer* %call10, i32 0, i32 46
  %12 = load i64, i64* %begv_marker_, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %12, %call11
  br i1 %cmp12, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.false.9
  %13 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call14 = call %struct.buffer* @XBUFFER(i64 %13)
  %begv_byte15 = getelementptr inbounds %struct.buffer, %struct.buffer* %call14, i32 0, i32 78
  %14 = load i64, i64* %begv_byte15, align 8
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false.9
  %15 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call17 = call %struct.buffer* @XBUFFER(i64 %15)
  %begv_marker_18 = getelementptr inbounds %struct.buffer, %struct.buffer* %call17, i32 0, i32 46
  %16 = load i64, i64* %begv_marker_18, align 8
  %call19 = call i64 @marker_byte_position(i64 %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.13
  %cond = phi i64 [ %14, %cond.true.13 ], [ %call19, %cond.false.16 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end, %cond.true.8
  %cond21 = phi i64 [ %10, %cond.true.8 ], [ %cond, %cond.end ]
  %add = add nsw i64 %6, %cond21
  %sub = sub nsw i64 %add, 1
  %call22 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %call6, i64 %sub)
  %17 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call23 = call %struct.buffer* @XBUFFER(i64 %17)
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %cmp24 = icmp eq %struct.buffer* %call23, %18
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.20
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 77
  %20 = load i64, i64* %begv, align 8
  br label %cond.end.40

cond.false.26:                                    ; preds = %cond.end.20
  %21 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call27 = call %struct.buffer* @XBUFFER(i64 %21)
  %begv_marker_28 = getelementptr inbounds %struct.buffer, %struct.buffer* %call27, i32 0, i32 46
  %22 = load i64, i64* %begv_marker_28, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %22, %call29
  br i1 %cmp30, label %cond.true.31, label %cond.false.34

cond.true.31:                                     ; preds = %cond.false.26
  %23 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call32 = call %struct.buffer* @XBUFFER(i64 %23)
  %begv33 = getelementptr inbounds %struct.buffer, %struct.buffer* %call32, i32 0, i32 77
  %24 = load i64, i64* %begv33, align 8
  br label %cond.end.38

cond.false.34:                                    ; preds = %cond.false.26
  %25 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call35 = call %struct.buffer* @XBUFFER(i64 %25)
  %begv_marker_36 = getelementptr inbounds %struct.buffer, %struct.buffer* %call35, i32 0, i32 46
  %26 = load i64, i64* %begv_marker_36, align 8
  %call37 = call i64 @marker_position(i64 %26)
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.34, %cond.true.31
  %cond39 = phi i64 [ %24, %cond.true.31 ], [ %call37, %cond.false.34 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.25
  %cond41 = phi i64 [ %20, %cond.true.25 ], [ %cond39, %cond.end.38 ]
  %sub42 = sub nsw i64 %call22, %cond41
  %add43 = add nsw i64 %sub42, 1
  br label %cond.end.58

cond.false.44:                                    ; preds = %cond.false.3
  %27 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %27, %call45
  br i1 %cmp46, label %cond.true.47, label %cond.false.55

cond.true.47:                                     ; preds = %cond.false.44
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %29 = load i64, i64* %bytepos.addr, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte48 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 78
  %31 = load i64, i64* %begv_byte48, align 8
  %add49 = add nsw i64 %29, %31
  %sub50 = sub nsw i64 %add49, 1
  %call51 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %28, i64 %sub50)
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv52 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 77
  %33 = load i64, i64* %begv52, align 8
  %sub53 = sub nsw i64 %call51, %33
  %add54 = add nsw i64 %sub53, 1
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.false.44
  %34 = load i64, i64* %bytepos.addr, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.47
  %cond57 = phi i64 [ %add54, %cond.true.47 ], [ %34, %cond.false.55 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.end.40
  %cond59 = phi i64 [ %add43, %cond.end.40 ], [ %cond57, %cond.end.56 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %cond.true.1
  %cond61 = phi i64 [ %call2, %cond.true.1 ], [ %cond59, %cond.end.58 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %cond.true
  %cond63 = phi i64 [ 0, %cond.true ], [ %cond61, %cond.end.60 ]
  ret i64 %cond63
}

declare i64 @string_byte_to_char(i64, i64) #3

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #3

declare i64 @marker_byte_position(i64) #3

declare i64 @marker_position(i64) #3

; Function Attrs: inlinehint nounwind uwtable
define void @UPDATE_SYNTAX_TABLE_FORWARD(i64 %charpos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 480), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %charpos.addr, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 8), align 8
  %cmp = icmp sge i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %charpos.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 12), align 8
  %add = add nsw i64 %3, %4
  %5 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  call void @update_syntax_table_forward(i64 %add, i1 zeroext false, i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @update_syntax_table_forward(i64, i1 zeroext, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define void @UPDATE_SYNTAX_TABLE_FORWARD_FAST(i64 %charpos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 480), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %charpos.addr, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 8), align 8
  %cmp = icmp sge i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %charpos.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 12), align 8
  %add = add nsw i64 %3, %4
  %5 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  call void @update_syntax_table(i64 %add, i64 1, i1 zeroext false, i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @update_syntax_table(i64, i64, i1 zeroext, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define void @UPDATE_SYNTAX_TABLE_BACKWARD(i64 %charpos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 480), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %charpos.addr, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 7), align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %charpos.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 12), align 8
  %add = add nsw i64 %3, %4
  %5 = load i64, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 0), align 8
  call void @update_syntax_table(i64 %add, i64 -1, i1 zeroext false, i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @UPDATE_SYNTAX_TABLE(i64 %charpos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load i64, i64* %charpos.addr, align 8
  call void @UPDATE_SYNTAX_TABLE_BACKWARD(i64 %0)
  %1 = load i64, i64* %charpos.addr, align 8
  call void @UPDATE_SYNTAX_TABLE_FORWARD(i64 %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @UPDATE_SYNTAX_TABLE_FAST(i64 %charpos) #0 {
entry:
  %charpos.addr = alloca i64, align 8
  store i64 %charpos, i64* %charpos.addr, align 8
  %0 = load i64, i64* %charpos.addr, align 8
  call void @UPDATE_SYNTAX_TABLE_BACKWARD(i64 %0)
  %1 = load i64, i64* %charpos.addr, align 8
  call void @UPDATE_SYNTAX_TABLE_FORWARD_FAST(i64 %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @SETUP_BUFFER_SYNTAX_TABLE() #0 {
entry:
  store i8 0, i8* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 3), align 1
  store i8 0, i8* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 9), align 1
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %syntax_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 16
  %1 = load i64, i64* %syntax_table_, align 8
  store i64 %1, i64* getelementptr inbounds (%struct.gl_state_s, %struct.gl_state_s* @gl_state, i32 0, i32 5), align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @fd_CLR(i32 %fd, %struct.fd_set* %set) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %set.addr = alloca %struct.fd_set*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.fd_set* %set, %struct.fd_set** %set.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp slt i32 %1, 1024
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %2 = load i32, i32* %fd.addr, align 4
  %rem = srem i32 %2, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %3 = load i32, i32* %fd.addr, align 4
  %div = sdiv i32 %3, 64
  %idxprom = sext i32 %div to i64
  %4 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %and = and i64 %5, %neg
  store i64 %and, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @fd_ISSET(i32 %fd, %struct.fd_set* %set) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %set.addr = alloca %struct.fd_set*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.fd_set* %set, %struct.fd_set** %set.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp slt i32 %1, 1024
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %2 = load i32, i32* %fd.addr, align 4
  %div = sdiv i32 %2, 64
  %idxprom = sext i32 %div to i64
  %3 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i32, i32* %fd.addr, align 4
  %rem = srem i32 %5, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %4, %shl
  %cmp2 = icmp ne i64 %and, 0
  %conv = zext i1 %cmp2 to i32
  %cmp3 = icmp ne i32 %conv, 0
  ret i1 %cmp3
}

; Function Attrs: inlinehint nounwind uwtable
define void @fd_SET(i32 %fd, %struct.fd_set* %set) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %set.addr = alloca %struct.fd_set*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.fd_set* %set, %struct.fd_set** %set.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp slt i32 %1, 1024
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  unreachable

unreachable.cont:                                 ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %2 = load i32, i32* %fd.addr, align 4
  %rem = srem i32 %2, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %3 = load i32, i32* %fd.addr, align 4
  %div = sdiv i32 %3, 64
  %idxprom = sext i32 %div to i64
  %4 = load %struct.fd_set*, %struct.fd_set** %set.addr, align 8
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %or = or i64 %5, %shl
  store i64 %or, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @PURE_P(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %sub = sub i64 %1, ptrtoint ([0 x i64]* @pure to i64)
  %cmp = icmp ule i64 %sub, 3000000
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define void @CHECK_IMPURE(i64 %obj, i8* %ptr) #0 {
entry:
  %obj.addr = alloca i64, align 8
  %ptr.addr = alloca i8*, align 8
  store i64 %obj, i64* %obj.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %call = call zeroext i1 @PURE_P(i8* %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %obj.addr, align 8
  call void @pure_write_error(i64 %1) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  ret void
}

; Function Attrs: noreturn
declare void @pure_write_error(i64) #1

; Function Attrs: noreturn nounwind uwtable
define void @terminate_due_to_signal(i32 %sig, i32 %backtrace_limit) #5 {
entry:
  %sig.addr = alloca i32, align 4
  %backtrace_limit.addr = alloca i32, align 4
  %unblocked = alloca %struct.__sigset_t, align 8
  store i32 %sig, i32* %sig.addr, align 4
  store i32 %backtrace_limit, i32* %backtrace_limit.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %call = call void (i32)* @signal(i32 %0, void (i32)* null) #2
  %1 = load i8, i8* @fatal_error_in_progress, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, i8* @fatal_error_in_progress, align 1
  call void @totally_unblock_input()
  %2 = load i32, i32* %sig.addr, align 4
  %cmp = icmp eq i32 %2, 15
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %sig.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %sig.addr, align 4
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false.2, %lor.lhs.false, %if.then
  %5 = load i32, i32* %sig.addr, align 4
  %conv = sext i32 %5 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %6 = call i64 @Fkill_emacs(i64 %add) #10
  unreachable

if.end:                                           ; preds = %lor.lhs.false.2
  %7 = load i32, i32* %sig.addr, align 4
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  call void @shut_down_emacs(i32 %7, i64 %call5)
  %8 = load i32, i32* %backtrace_limit.addr, align 4
  call void @emacs_backtrace(i32 %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %call7 = call i32 @sigemptyset(%struct.__sigset_t* %unblocked) #2
  %9 = load i32, i32* %sig.addr, align 4
  %call8 = call i32 @sigaddset(%struct.__sigset_t* %unblocked, i32 %9) #2
  %call9 = call i32 @pthread_sigmask(i32 1, %struct.__sigset_t* %unblocked, %struct.__sigset_t* null) #2
  %10 = load i32, i32* %sig.addr, align 4
  %call10 = call i32 @raise(i32 %10) #2
  call void @exit(i32 1) #12
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #6

declare void @totally_unblock_input() #3

; Function Attrs: noreturn nounwind uwtable
define i64 @Fkill_emacs(i64 %arg) #5 {
entry:
  %retval = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %exit_code = alloca i32, align 4
  %listfile = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i8 0, i8* @waiting_for_input, align 1
  %call = call i64 @builtin_lisp_symbol(i32 595)
  call void @run_hook(i64 %call)
  call void @x_clipboard_manager_save_all()
  %0 = load i64, i64* %arg.addr, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call2 = call i32 @feof(%struct._IO_FILE* %1) #2
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i64, i64* %arg.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %call3, %cond.false ]
  call void @shut_down_emacs(i32 0, i64 %cond)
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 10), align 8
  %call4 = call zeroext i1 @STRINGP(i64 %3)
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 10), align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call i64 @Fexpand_file_name(i64 %4, i64 %call5)
  store i64 %call6, i64* %listfile, align 8
  %5 = load i64, i64* %listfile, align 8
  %call7 = call i8* @SSDATA(i64 %5)
  %call8 = call i32 @unlink(i8* %call7) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i64, i64* %arg.addr, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %and9 = and i32 %conv, -5
  %cmp = icmp eq i32 %and9, 2
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %7 = load i64, i64* %arg.addr, align 8
  %shr = ashr i64 %7, 2
  %cmp12 = icmp slt i64 %shr, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.then.11
  %8 = load i64, i64* %arg.addr, align 8
  %shr15 = ashr i64 %8, 2
  %or = or i64 %shr15, -2147483648
  br label %cond.end.19

cond.false.16:                                    ; preds = %if.then.11
  %9 = load i64, i64* %arg.addr, align 8
  %shr17 = ashr i64 %9, 2
  %and18 = and i64 %shr17, 2147483647
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.14
  %cond20 = phi i64 [ %or, %cond.true.14 ], [ %and18, %cond.false.16 ]
  %conv21 = trunc i64 %cond20 to i32
  store i32 %conv21, i32* %exit_code, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end
  store i32 0, i32* %exit_code, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %cond.end.19
  %10 = load i32, i32* %exit_code, align 4
  call void @exit(i32 %10) #12
  unreachable

return:                                           ; No predecessors!
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define void @shut_down_emacs(i32 %sig, i64 %stuff) #7 {
entry:
  %sig.addr = alloca i32, align 4
  %stuff.addr = alloca i64, align 8
  %pgrp = alloca i32, align 4
  %tpgrp = alloca i32, align 4
  %buf = alloca [26 x i8], align 16
  %buflen = alloca i32, align 4
  %sig_desc = alloca i8*, align 8
  store i32 %sig, i32* %sig.addr, align 4
  store i64 %stuff, i64* %stuff.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @Vrun_hooks, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 140), align 8
  %call2 = call i32 @getpgrp() #2
  store i32 %call2, i32* %pgrp, align 4
  %call3 = call i32 @tcgetpgrp(i32 0) #2
  store i32 %call3, i32* %tpgrp, align 4
  %0 = load i32, i32* %tpgrp, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %tpgrp, align 4
  %2 = load i32, i32* %pgrp, align 4
  %cmp4 = icmp eq i32 %1, %2
  br i1 %cmp4, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  call void @reset_all_sys_modes()
  %3 = load i32, i32* %sig.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.then
  %4 = load i32, i32* %sig.addr, align 4
  %cmp6 = icmp ne i32 %4, 15
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true.5
  %arraydecay = getelementptr inbounds [26 x i8], [26 x i8]* %buf, i32 0, i32 0
  %5 = load i32, i32* %sig.addr, align 4
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @shut_down_emacs.format, i32 0, i32 0), i32 %5) #2
  store i32 %call8, i32* %buflen, align 4
  %6 = load i32, i32* %sig.addr, align 4
  %call9 = call i8* @safe_strsignal(i32 %6) #13
  store i8* %call9, i8** %sig_desc, align 8
  %arraydecay10 = getelementptr inbounds [26 x i8], [26 x i8]* %buf, i32 0, i32 0
  %7 = load i32, i32* %buflen, align 4
  %conv = sext i32 %7 to i64
  %call11 = call i64 @emacs_write(i32 2, i8* %arraydecay10, i64 %conv)
  %8 = load i8*, i8** %sig_desc, align 8
  %9 = load i8*, i8** %sig_desc, align 8
  %call12 = call i64 @strlen(i8* %9) #11
  %call13 = call i64 @emacs_write(i32 2, i8* %8, i64 %call12)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true.5, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true, %entry
  %10 = load i64, i64* %stuff.addr, align 8
  call void @stuff_buffered_input(i64 %10)
  store i8 1, i8* @inhibit_sentinels, align 1
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  call void @kill_buffer_processes(i64 %call15)
  %call16 = call i64 @builtin_lisp_symbol(i32 901)
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %call18 = call i64 @Fdo_auto_save(i64 %call16, i64 %call17)
  call void @unlock_all_files()
  call void @unrequest_sigio()
  %11 = load i32, i32* %sig.addr, align 4
  %cmp19 = icmp eq i32 %11, 0
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %12 = load i32, i32* %sig.addr, align 4
  %cmp21 = icmp eq i32 %12, 15
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.14
  call void @check_glyph_memory()
  call void @check_message_stack()
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.lhs.false
  ret void
}

declare void @emacs_backtrace(i32) #3

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #6

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #6

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #6

; Function Attrs: nounwind
declare i32 @raise(i32) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

; Function Attrs: nounwind uwtable
define i64 @Finvocation_name() #7 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %call = call i64 @Fcopy_sequence(i64 %0)
  ret i64 %call
}

declare i64 @Fcopy_sequence(i64) #3

; Function Attrs: nounwind uwtable
define i64 @Finvocation_directory() #7 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call = call i64 @Fcopy_sequence(i64 %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %dummy = alloca i64, align 8
  %stack_bottom_variable = alloca i8, align 1
  %do_initial_setlocale = alloca i8, align 1
  %dumping = alloca i8, align 1
  %skip_args = alloca i32, align 4
  %rlim = alloca %struct.rlimit, align 8
  %no_loadup = alloca i8, align 1
  %junk = alloca i8*, align 8
  %dname_arg = alloca i8*, align 8
  %ch_to_dir = alloca i8*, align 8
  %original_pwd = alloca i8*, align 8
  %heap_start = alloca i8*, align 8
  %version = alloca i8*, align 8
  %copyright = alloca i8*, align 8
  %tem = alloca i64, align 8
  %tem2 = alloca i64, align 8
  %newlim = alloca i64, align 8
  %ratio = alloca i32, align 4
  %lc_all = alloca i8*, align 8
  %term = alloca i8*, align 8
  %result = alloca i32, align 4
  %errstring = alloca i8*, align 8
  %i = alloca i32, align 4
  %f = alloca i32, align 4
  %retval177 = alloca i32, align 4
  %buf = alloca [1 x i8], align 1
  %displayname = alloca i8*, align 8
  %count_before = alloca i32, align 4
  %count_before_this = alloca i32, align 4
  %old_log_max = alloca i64, align 8
  %file = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %skip_args, align 4
  store i8 0, i8* %no_loadup, align 1
  store i8* null, i8** %junk, align 8
  store i8* null, i8** %dname_arg, align 8
  store i8* null, i8** %ch_to_dir, align 8
  store i8* null, i8** %original_pwd, align 8
  store i64* %dummy, i64** @stack_base, align 8
  %0 = load i8, i8* @initialized, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* @might_dump, align 1
  %1 = load i8, i8* @initialized, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @my_heap_start()
  store i8* %call, i8** %heap_start, align 8
  %2 = load i8*, i8** %heap_start, align 8
  %3 = load i8*, i8** @my_endbss_static, align 8
  %cmp = icmp ugt i8* getelementptr inbounds ([0 x i8], [0 x i8]* @my_endbss, i32 0, i32 0), %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load i8*, i8** @my_endbss_static, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([0 x i8], [0 x i8]* @my_endbss, i32 0, i32 0), %cond.true ], [ %4, %cond.false ]
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* @heap_bss_diff, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %call2 = call i32 @atexit(void ()* @close_output_streams) #2
  %5 = load i32, i32* %argc.addr, align 4
  %6 = load i8**, i8*** %argv.addr, align 8
  call void @sort_args(i32 %5, i8** %6)
  store i32 0, i32* %argc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %argc.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %argc.addr, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %argc.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i8**, i8*** %argv.addr, align 8
  %12 = load i32, i32* %argc.addr, align 4
  %call4 = call zeroext i1 @argmatch(i8** %11, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 3, i8** null, i32* %skip_args)
  br i1 %call4, label %if.then.5, label %if.end.31

if.then.5:                                        ; preds = %while.end
  %13 = load i8, i8* @initialized, align 1
  %tobool6 = trunc i8 %13 to i1
  br i1 %tobool6, label %if.then.7, label %if.else.22

if.then.7:                                        ; preds = %if.then.5
  %call8 = call i64 @intern_c_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %call9 = call i64 @Fsymbol_value(i64 %call8)
  store i64 %call9, i64* %tem, align 8
  %call10 = call i64 @intern_c_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  %call11 = call i64 @Fsymbol_value(i64 %call10)
  store i64 %call11, i64* %tem2, align 8
  %14 = load i64, i64* %tem, align 8
  %call12 = call zeroext i1 @STRINGP(i64 %14)
  br i1 %call12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

if.end.15:                                        ; preds = %if.then.7
  %16 = load i64, i64* %tem2, align 8
  %call16 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

if.else:                                          ; preds = %if.end.15
  %18 = load i64, i64* %tem, align 8
  %call19 = call i8* @SSDATA(i64 %18)
  store i8* %call19, i8** %version, align 8
  %19 = load i64, i64* %tem2, align 8
  %call20 = call i8* @SSDATA(i64 %19)
  store i8* %call20, i8** %copyright, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else
  br label %if.end.23

if.else.22:                                       ; preds = %if.then.5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @emacs_version, i32 0, i32 0), i8** %version, align 8
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @emacs_copyright, i32 0, i32 0), i8** %copyright, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.end.21
  %20 = load i8*, i8** %version, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %20)
  %21 = load i8*, i8** %copyright, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %21)
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0))
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0))
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 0) #12
  unreachable

if.end.31:                                        ; preds = %while.end
  %22 = load i8**, i8*** %argv.addr, align 8
  %23 = load i32, i32* %argc.addr, align 4
  %call32 = call zeroext i1 @argmatch(i8** %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 4, i8** %ch_to_dir, i32* %skip_args)
  br i1 %call32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.end.31
  %call34 = call i8* @get_current_dir_name() #2
  store i8* %call34, i8** %original_pwd, align 8
  %24 = load i8*, i8** %ch_to_dir, align 8
  %call35 = call i32 @chdir(i8* %24) #2
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.then.33
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx38, align 8
  %28 = load i8*, i8** %ch_to_dir, align 8
  %call39 = call i32* @__errno_location() #13
  %29 = load i32, i32* %call39, align 4
  %call40 = call i8* @strerror(i32 %29) #2
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i8* %27, i8* %28, i8* %call40)
  call void @exit(i32 1) #12
  unreachable

if.end.42:                                        ; preds = %if.then.33
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.31
  %30 = load i8, i8* @initialized, align 1
  %tobool44 = trunc i8 %30 to i1
  br i1 %tobool44, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.43
  %31 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %31, 1
  %idxprom45 = sext i32 %sub to i64
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %32, i64 %idxprom45
  %33 = load i8*, i8** %arrayidx46, align 8
  %call47 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #11
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %34 = load i32, i32* %argc.addr, align 4
  %sub49 = sub nsw i32 %34, 1
  %idxprom50 = sext i32 %sub49 to i64
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %35, i64 %idxprom50
  %36 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #11
  %cmp53 = icmp eq i32 %call52, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %37 = phi i1 [ true, %land.rhs ], [ %cmp53, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end.43
  %38 = phi i1 [ false, %if.end.43 ], [ %37, %lor.end ]
  %frombool54 = zext i1 %38 to i8
  store i8 %frombool54, i8* %dumping, align 1
  %39 = load i8, i8* %dumping, align 1
  %tobool55 = trunc i8 %39 to i1
  br i1 %tobool55, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %land.end
  %call56 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)) #2
  %tobool57 = icmp ne i8* %call56, null
  br i1 %tobool57, label %if.end.63, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true
  call void @xputenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  %call59 = call i32 @personality(i64 262152) #2
  %40 = load i8**, i8*** %argv.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %40, i64 0
  %41 = load i8*, i8** %arrayidx60, align 8
  %42 = load i8**, i8*** %argv.addr, align 8
  %call61 = call i32 @execvp(i8* %41, i8** %42) #2
  %43 = load i8**, i8*** %argv.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %43, i64 0
  %44 = load i8*, i8** %arrayidx62, align 8
  call void @emacs_perror(i8* %44)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %land.lhs.true, %land.end
  %45 = load i8, i8* @noninteractive, align 1
  %tobool64 = trunc i8 %45 to i1
  br i1 %tobool64, label %lor.lhs.false, label %land.lhs.true.66

lor.lhs.false:                                    ; preds = %if.end.63
  %46 = load i8, i8* @initialized, align 1
  %tobool65 = trunc i8 %46 to i1
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.85

land.lhs.true.66:                                 ; preds = %lor.lhs.false, %if.end.63
  %call67 = call i32 @getrlimit(i32 3, %struct.rlimit* %rlim) #2
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.85, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.66
  store i32 160, i32* %ratio, align 4
  %47 = load i32, i32* %ratio, align 4
  %div = sdiv i32 %47, 3
  %48 = load i32, i32* %ratio, align 4
  %add = add nsw i32 %48, %div
  store i32 %add, i32* %ratio, align 4
  %49 = load i64, i64* @re_max_failures, align 8
  %50 = load i32, i32* %ratio, align 4
  %conv = sext i32 %50 to i64
  %mul = mul i64 %49, %conv
  %add70 = add i64 %mul, 200000
  store i64 %add70, i64* %newlim, align 8
  %51 = load i64, i64* %newlim, align 8
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i32 0, i32 1
  %52 = load i64, i64* %rlim_max, align 8
  %cmp71 = icmp ugt i64 %51, %52
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %if.then.69
  %rlim_max74 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i32 0, i32 1
  %53 = load i64, i64* %rlim_max74, align 8
  store i64 %53, i64* %newlim, align 8
  %54 = load i64, i64* %newlim, align 8
  %sub75 = sub nsw i64 %54, 200000
  %55 = load i32, i32* %ratio, align 4
  %conv76 = sext i32 %55 to i64
  %div77 = sdiv i64 %sub75, %conv76
  store i64 %div77, i64* @re_max_failures, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %if.then.69
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i32 0, i32 0
  %56 = load i64, i64* %rlim_cur, align 8
  %57 = load i64, i64* %newlim, align 8
  %cmp79 = icmp ult i64 %56, %57
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.78
  %58 = load i64, i64* %newlim, align 8
  %rlim_cur82 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i32 0, i32 0
  store i64 %58, i64* %rlim_cur82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.78
  %call84 = call i32 @setrlimit(i32 3, %struct.rlimit* %rlim) #2
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.83, %land.lhs.true.66, %lor.lhs.false
  store i8* %stack_bottom_variable, i8** @stack_bottom, align 8
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @clearerr(%struct._IO_FILE* %59) #2
  call void @emacs_backtrace(i32 -1)
  call void @memory_warnings(i8* null, void (i8*)* @malloc_warning)
  %call86 = call noalias i8* @malloc(i64 4) #2
  %call87 = call i8* @realloc(i8* %call86, i64 4) #2
  call void @free(i8* %call87) #2
  %call88 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #2
  store i8* %call88, i8** %lc_all, align 8
  %60 = load i8*, i8** %lc_all, align 8
  %tobool89 = icmp ne i8* %60, null
  br i1 %tobool89, label %lor.rhs.90, label %lor.end.93

lor.rhs.90:                                       ; preds = %if.end.85
  %61 = load i8*, i8** %lc_all, align 8
  %call91 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #11
  %tobool92 = icmp ne i32 %call91, 0
  br label %lor.end.93

lor.end.93:                                       ; preds = %lor.rhs.90, %if.end.85
  %62 = phi i1 [ true, %if.end.85 ], [ %tobool92, %lor.rhs.90 ]
  %frombool94 = zext i1 %62 to i8
  store i8 %frombool94, i8* %do_initial_setlocale, align 1
  %63 = load i8, i8* %do_initial_setlocale, align 1
  %tobool95 = trunc i8 %63 to i1
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %lor.end.93
  %call97 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)) #2
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %lor.end.93
  %call99 = call zeroext i1 @using_utf8()
  %frombool100 = zext i1 %call99 to i8
  store i8 %frombool100, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 490), align 1
  store i8 0, i8* @inhibit_window_system, align 1
  br label %while.body.102

while.body.102:                                   ; preds = %if.end.98, %if.end.128
  %64 = load i8**, i8*** %argv.addr, align 8
  %65 = load i32, i32* %argc.addr, align 4
  %call103 = call zeroext i1 @argmatch(i8** %64, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 4, i8** %term, i32* %skip_args)
  br i1 %call103, label %if.then.104, label %if.else.127

if.then.104:                                      ; preds = %while.body.102
  %call105 = call i32 @emacs_close(i32 0)
  %call106 = call i32 @emacs_close(i32 1)
  %66 = load i8*, i8** %term, align 8
  %call107 = call i32 @emacs_open(i8* %66, i32 2, i32 0)
  store i32 %call107, i32* %result, align 4
  %67 = load i32, i32* %result, align 4
  %cmp108 = icmp slt i32 %67, 0
  br i1 %cmp108, label %if.then.114, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.then.104
  %call111 = call i32 (i32, i32, ...) @rpl_fcntl(i32 0, i32 1030, i32 1)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %lor.lhs.false.110, %if.then.104
  %call115 = call i32* @__errno_location() #13
  %68 = load i32, i32* %call115, align 4
  %call116 = call i8* @strerror(i32 %68) #2
  store i8* %call116, i8** %errstring, align 8
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = load i8**, i8*** %argv.addr, align 8
  %arrayidx117 = getelementptr inbounds i8*, i8** %70, i64 0
  %71 = load i8*, i8** %arrayidx117, align 8
  %72 = load i8*, i8** %term, align 8
  %73 = load i8*, i8** %errstring, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* %71, i8* %72, i8* %73)
  call void @exit(i32 1) #12
  unreachable

if.end.119:                                       ; preds = %lor.lhs.false.110
  %call120 = call i32 @isatty(i32 0) #2
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.end.125, label %if.then.122

if.then.122:                                      ; preds = %if.end.119
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = load i8**, i8*** %argv.addr, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %75, i64 0
  %76 = load i8*, i8** %arrayidx123, align 8
  %77 = load i8*, i8** %term, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* %76, i8* %77)
  call void @exit(i32 1) #12
  unreachable

if.end.125:                                       ; preds = %if.end.119
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load i8*, i8** %term, align 8
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* %79)
  store i8 1, i8* @inhibit_window_system, align 1
  br label %if.end.128

if.else.127:                                      ; preds = %while.body.102
  br label %while.end.129

if.end.128:                                       ; preds = %if.end.125
  br label %while.body.102

while.end.129:                                    ; preds = %if.else.127
  %80 = load i8**, i8*** %argv.addr, align 8
  %81 = load i32, i32* %argc.addr, align 4
  %call130 = call zeroext i1 @argmatch(i8** %80, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i32 6, i8** null, i32* %skip_args)
  br i1 %call130, label %if.then.135, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %while.end.129
  %82 = load i8**, i8*** %argv.addr, align 8
  %83 = load i32, i32* %argc.addr, align 4
  %call133 = call zeroext i1 @argmatch(i8** %82, i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 6, i8** null, i32* %skip_args)
  br i1 %call133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %lor.lhs.false.132, %while.end.129
  store i8 1, i8* @inhibit_window_system, align 1
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %lor.lhs.false.132
  store i8 0, i8* @noninteractive, align 1
  %84 = load i8**, i8*** %argv.addr, align 8
  %85 = load i32, i32* %argc.addr, align 4
  %call137 = call zeroext i1 @argmatch(i8** %84, i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 5, i8** null, i32* %skip_args)
  br i1 %call137, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.end.136
  store i8 1, i8* @noninteractive, align 1
  %call139 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call139, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 312), align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.end.136
  %86 = load i8**, i8*** %argv.addr, align 8
  %87 = load i32, i32* %argc.addr, align 4
  %call141 = call zeroext i1 @argmatch(i8** %86, i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 3, i8** %junk, i32* %skip_args)
  br i1 %call141, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %if.end.140
  store i8 1, i8* @noninteractive, align 1
  %88 = load i32, i32* %skip_args, align 4
  %sub143 = sub nsw i32 %88, 1
  %idxprom144 = sext i32 %sub143 to i64
  %89 = load i8**, i8*** %argv.addr, align 8
  %arrayidx145 = getelementptr inbounds i8*, i8** %89, i64 %idxprom144
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8** %arrayidx145, align 8
  %90 = load i32, i32* %skip_args, align 4
  %sub146 = sub nsw i32 %90, 2
  store i32 %sub146, i32* %skip_args, align 4
  %91 = load i32, i32* %argc.addr, align 4
  %92 = load i8**, i8*** %argv.addr, align 8
  call void @sort_args(i32 %91, i8** %92)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.142, %if.end.140
  %93 = load i8**, i8*** %argv.addr, align 8
  %94 = load i32, i32* %argc.addr, align 4
  %call148 = call zeroext i1 @argmatch(i8** %93, i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 3, i8** null, i32* %skip_args)
  br i1 %call148, label %if.then.149, label %if.end.159

if.then.149:                                      ; preds = %if.end.147
  %95 = load i8**, i8*** %argv.addr, align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %95, i64 0
  %96 = load i8*, i8** %arrayidx150, align 8
  %call151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0), i8* %96)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.149
  %97 = load i32, i32* %i, align 4
  %conv152 = sext i32 %97 to i64
  %cmp153 = icmp ult i64 %conv152, 12
  br i1 %cmp153, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %98 to i64
  %arrayidx156 = getelementptr inbounds [12 x i8*], [12 x i8*]* @usage_message, i32 0, i64 %idxprom155
  %99 = load i8*, i8** %arrayidx156, align 8
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call157 = call i32 @fputs(i8* %99, %struct._IO_FILE* %100)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %101, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @exit(i32 0) #12
  unreachable

if.end.159:                                       ; preds = %if.end.147
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %102 = load i8**, i8*** %argv.addr, align 8
  %103 = load i32, i32* %argc.addr, align 4
  %call160 = call zeroext i1 @argmatch(i8** %102, i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 5, i8** null, i32* %skip_args)
  br i1 %call160, label %if.then.165, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.end.159
  %104 = load i8**, i8*** %argv.addr, align 8
  %105 = load i32, i32* %argc.addr, align 4
  %call163 = call zeroext i1 @argmatch(i8** %104, i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 5, i8** %dname_arg, i32* %skip_args)
  br i1 %call163, label %if.then.165, label %if.end.211

if.then.165:                                      ; preds = %lor.lhs.false.162, %if.end.159
  %call166 = call i32 @emacs_pipe(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i32 0))
  %cmp167 = icmp ne i32 %call166, 0
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %if.then.165
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

if.end.171:                                       ; preds = %if.then.165
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.43, i32 0, i32 0))
  %call173 = call i32 @fork() #2
  store i32 %call173, i32* %f, align 4
  %108 = load i32, i32* %f, align 4
  %cmp174 = icmp sgt i32 %108, 0
  br i1 %cmp174, label %if.then.176, label %if.end.200

if.then.176:                                      ; preds = %if.end.171
  %109 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %call178 = call i32 @emacs_close(i32 %109)
  br label %do.body

do.body:                                          ; preds = %land.end.187, %if.then.176
  %110 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 0), align 4
  %111 = bitcast [1 x i8]* %buf to i8*
  %call179 = call i64 @read(i32 %110, i8* %111, i64 1)
  %conv180 = trunc i64 %call179 to i32
  store i32 %conv180, i32* %retval177, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %112 = load i32, i32* %retval177, align 4
  %cmp181 = icmp eq i32 %112, -1
  br i1 %cmp181, label %land.rhs.183, label %land.end.187

land.rhs.183:                                     ; preds = %do.cond
  %call184 = call i32* @__errno_location() #13
  %113 = load i32, i32* %call184, align 4
  %cmp185 = icmp eq i32 %113, 4
  br label %land.end.187

land.end.187:                                     ; preds = %land.rhs.183, %do.cond
  %114 = phi i1 [ false, %do.cond ], [ %cmp185, %land.rhs.183 ]
  br i1 %114, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.187
  %115 = load i32, i32* %retval177, align 4
  %cmp188 = icmp slt i32 %115, 0
  br i1 %cmp188, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %do.end
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

if.else.192:                                      ; preds = %do.end
  %117 = load i32, i32* %retval177, align 4
  %cmp193 = icmp eq i32 %117, 0
  br i1 %cmp193, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %if.else.192
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0))
  call void @exit(i32 1) #12
  unreachable

if.end.197:                                       ; preds = %if.else.192
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197
  %119 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 0), align 4
  %call199 = call i32 @emacs_close(i32 %119)
  call void @exit(i32 0) #12
  unreachable

if.end.200:                                       ; preds = %if.end.171
  %120 = load i32, i32* %f, align 4
  %cmp201 = icmp slt i32 %120, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.200
  call void @emacs_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0))
  call void @exit(i32 125) #12
  unreachable

if.end.204:                                       ; preds = %if.end.200
  %121 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 0), align 4
  %call205 = call i32 @emacs_close(i32 %121)
  %call206 = call i32 @setsid() #2
  %122 = load i8*, i8** %dname_arg, align 8
  %tobool207 = icmp ne i8* %122, null
  br i1 %tobool207, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.end.204
  %123 = load i8*, i8** %dname_arg, align 8
  %call209 = call noalias i8* @xstrdup(i8* %123)
  store i8* %call209, i8** @daemon_name, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %if.end.204
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %lor.lhs.false.162
  %124 = load i8, i8* %dumping, align 1
  %tobool212 = trunc i8 %124 to i1
  call void @init_signals(i1 zeroext %tobool212)
  %125 = load i8, i8* @noninteractive, align 1
  %tobool213 = trunc i8 %125 to i1
  %frombool214 = zext i1 %tobool213 to i8
  store i8 %frombool214, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 477), align 1
  %126 = load i8, i8* @initialized, align 1
  %tobool215 = trunc i8 %126 to i1
  br i1 %tobool215, label %if.end.217, label %if.then.216

if.then.216:                                      ; preds = %if.end.211
  call void @init_alloc_once()
  call void @init_obarray()
  call void @init_eval_once()
  call void @init_charset_once()
  call void @init_coding_once()
  call void @init_syntax_once()
  call void @init_category_once()
  call void @init_casetab_once()
  call void @init_buffer_once()
  call void @init_minibuf_once()
  call void @syms_of_xfaces()
  call void @syms_of_keymap()
  call void @syms_of_keyboard()
  call void @syms_of_data()
  call void @syms_of_fns()
  call void @syms_of_fileio()
  call void @syms_of_alloc()
  call void @init_print_once()
  call void @syms_of_charset()
  call void @syms_of_coding()
  call void @init_window_once()
  call void @init_fringe_once()
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %if.end.211
  call void @init_alloc()
  %127 = load i8, i8* %do_initial_setlocale, align 1
  %tobool218 = trunc i8 %127 to i1
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.end.217
  call void @fixup_locale()
  %128 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 226), align 8
  store i64 %128, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 284), align 8
  %129 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 227), align 8
  store i64 %129, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 286), align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %if.end.217
  call void @init_eval()
  call void @init_atimer()
  store i8 0, i8* @running_asynch_code, align 1
  call void @init_random()
  %130 = load i8**, i8*** %argv.addr, align 8
  %131 = load i32, i32* %argc.addr, align 4
  %call221 = call zeroext i1 @argmatch(i8** %130, i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 6, i8** null, i32* %skip_args)
  %frombool222 = zext i1 %call221 to i8
  store i8 %frombool222, i8* %no_loadup, align 1
  %132 = load i8**, i8*** %argv.addr, align 8
  %133 = load i32, i32* %argc.addr, align 4
  %call223 = call zeroext i1 @argmatch(i8** %132, i32 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i32 11, i8** null, i32* %skip_args)
  %frombool224 = zext i1 %call223 to i8
  store i8 %frombool224, i8* @no_site_lisp, align 1
  store i8* null, i8** %displayname, align 8
  %134 = load i32, i32* %skip_args, align 4
  store i32 %134, i32* %count_before, align 4
  br label %while.body.226

while.body.226:                                   ; preds = %if.end.220, %if.end.234
  %135 = load i32, i32* %skip_args, align 4
  store i32 %135, i32* %count_before_this, align 4
  %136 = load i8**, i8*** %argv.addr, align 8
  %137 = load i32, i32* %argc.addr, align 4
  %call227 = call zeroext i1 @argmatch(i8** %136, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 3, i8** %displayname, i32* %skip_args)
  br i1 %call227, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %while.body.226
  store i8 1, i8* @display_arg, align 1
  br label %if.end.234

if.else.229:                                      ; preds = %while.body.226
  %138 = load i8**, i8*** %argv.addr, align 8
  %139 = load i32, i32* %argc.addr, align 4
  %call230 = call zeroext i1 @argmatch(i8** %138, i32 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* null, i32 3, i8** %displayname, i32* %skip_args)
  br i1 %call230, label %if.then.231, label %if.else.232

if.then.231:                                      ; preds = %if.else.229
  store i8 1, i8* @display_arg, align 1
  br label %if.end.233

if.else.232:                                      ; preds = %if.else.229
  br label %while.end.235

if.end.233:                                       ; preds = %if.then.231
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.228
  %140 = load i32, i32* %count_before_this, align 4
  store i32 %140, i32* %count_before, align 4
  br label %while.body.226

while.end.235:                                    ; preds = %if.else.232
  %141 = load i8*, i8** %displayname, align 8
  %tobool236 = icmp ne i8* %141, null
  br i1 %tobool236, label %land.lhs.true.237, label %if.end.261

land.lhs.true.237:                                ; preds = %while.end.235
  %142 = load i32, i32* %count_before, align 4
  %143 = load i32, i32* %skip_args, align 4
  %cmp238 = icmp slt i32 %142, %143
  br i1 %cmp238, label %if.then.240, label %if.end.261

if.then.240:                                      ; preds = %land.lhs.true.237
  %144 = load i32, i32* %skip_args, align 4
  %145 = load i32, i32* %count_before, align 4
  %add241 = add nsw i32 %145, 1
  %cmp242 = icmp eq i32 %144, %add241
  br i1 %cmp242, label %if.then.244, label %if.end.257

if.then.244:                                      ; preds = %if.then.240
  %146 = load i8**, i8*** %argv.addr, align 8
  %147 = load i32, i32* %count_before, align 4
  %idx.ext = sext i32 %147 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %146, i64 %idx.ext
  %add.ptr245 = getelementptr inbounds i8*, i8** %add.ptr, i64 3
  %148 = bitcast i8** %add.ptr245 to i8*
  %149 = load i8**, i8*** %argv.addr, align 8
  %150 = load i32, i32* %count_before, align 4
  %idx.ext246 = sext i32 %150 to i64
  %add.ptr247 = getelementptr inbounds i8*, i8** %149, i64 %idx.ext246
  %add.ptr248 = getelementptr inbounds i8*, i8** %add.ptr247, i64 2
  %151 = bitcast i8** %add.ptr248 to i8*
  %152 = load i32, i32* %argc.addr, align 4
  %153 = load i32, i32* %count_before, align 4
  %add249 = add nsw i32 %153, 2
  %sub250 = sub nsw i32 %152, %add249
  %conv251 = sext i32 %sub250 to i64
  %mul252 = mul i64 %conv251, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %148, i8* %151, i64 %mul252, i32 8, i1 false)
  %154 = load i8*, i8** %displayname, align 8
  %155 = load i32, i32* %count_before, align 4
  %add253 = add nsw i32 %155, 2
  %idxprom254 = sext i32 %add253 to i64
  %156 = load i8**, i8*** %argv.addr, align 8
  %arrayidx255 = getelementptr inbounds i8*, i8** %156, i64 %idxprom254
  store i8* %154, i8** %arrayidx255, align 8
  %157 = load i32, i32* %argc.addr, align 4
  %inc256 = add nsw i32 %157, 1
  store i32 %inc256, i32* %argc.addr, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.244, %if.then.240
  %158 = load i32, i32* %count_before, align 4
  %add258 = add nsw i32 %158, 1
  %idxprom259 = sext i32 %add258 to i64
  %159 = load i8**, i8*** %argv.addr, align 8
  %arrayidx260 = getelementptr inbounds i8*, i8** %159, i64 %idxprom259
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8** %arrayidx260, align 8
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.257, %land.lhs.true.237, %while.end.235
  %160 = load i8, i8* @no_site_lisp, align 1
  %tobool262 = trunc i8 %160 to i1
  br i1 %tobool262, label %if.end.271, label %if.then.263

if.then.263:                                      ; preds = %if.end.261
  %161 = load i8**, i8*** %argv.addr, align 8
  %162 = load i32, i32* %argc.addr, align 4
  %call264 = call zeroext i1 @argmatch(i8** %161, i32 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 3, i8** null, i32* %skip_args)
  br i1 %call264, label %if.then.269, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %if.then.263
  %163 = load i8**, i8*** %argv.addr, align 8
  %164 = load i32, i32* %argc.addr, align 4
  %call267 = call zeroext i1 @argmatch(i8** %163, i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* null, i32 2, i8** null, i32* %skip_args)
  br i1 %call267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %lor.lhs.false.266, %if.then.263
  store i8 1, i8* @no_site_lisp, align 1
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %lor.lhs.false.266
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.261
  %165 = load i32, i32* %count_before, align 4
  store i32 %165, i32* %skip_args, align 4
  %166 = load i8, i8* @initialized, align 1
  %tobool272 = trunc i8 %166 to i1
  br i1 %tobool272, label %if.end.274, label %if.then.273

if.then.273:                                      ; preds = %if.end.271
  call void @syms_of_callproc()
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.273, %if.end.271
  %167 = load i8, i8* %dumping, align 1
  %tobool275 = trunc i8 %167 to i1
  br i1 %tobool275, label %if.end.277, label %if.then.276

if.then.276:                                      ; preds = %if.end.274
  call void @set_initial_environment()
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.276, %if.end.274
  %168 = load i8, i8* @initialized, align 1
  %tobool278 = trunc i8 %168 to i1
  %conv279 = zext i1 %tobool278 to i32
  call void @init_buffer(i32 %conv279)
  call void @init_callproc_1()
  %169 = load i32, i32* %argc.addr, align 4
  %170 = load i8**, i8*** %argv.addr, align 8
  %171 = load i32, i32* %skip_args, align 4
  %172 = load i8*, i8** %original_pwd, align 8
  call void @init_cmdargs(i32 %169, i8** %170, i32 %171, i8* %172)
  %173 = load i8, i8* @initialized, align 1
  %tobool280 = trunc i8 %173 to i1
  br i1 %tobool280, label %if.then.281, label %if.end.283

if.then.281:                                      ; preds = %if.end.277
  %174 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 180), align 8
  store i64 %174, i64* %old_log_max, align 8
  %call282 = call i64 @make_natnum(i64 0)
  store i64 %call282, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 180), align 8
  call void @message_dolog(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i64 0, i1 zeroext true, i1 zeroext false)
  %175 = load i64, i64* %old_log_max, align 8
  store i64 %175, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 180), align 8
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.281, %if.end.277
  call void @init_callproc()
  call void @init_fileio()
  call void @init_lread()
  %176 = load i8, i8* @initialized, align 1
  %tobool284 = trunc i8 %176 to i1
  br i1 %tobool284, label %if.else.286, label %if.then.285

if.then.285:                                      ; preds = %if.end.283
  call void @syms_of_chartab()
  call void @syms_of_lread()
  call void @syms_of_print()
  call void @syms_of_eval()
  call void @syms_of_floatfns()
  call void @syms_of_buffer()
  call void @syms_of_bytecode()
  call void @syms_of_callint()
  call void @syms_of_casefiddle()
  call void @syms_of_casetab()
  call void @syms_of_category()
  call void @syms_of_ccl()
  call void @syms_of_character()
  call void @syms_of_cmds()
  call void @syms_of_dired()
  call void @syms_of_display()
  call void @syms_of_doc()
  call void @syms_of_editfns()
  call void @syms_of_emacs()
  call void @syms_of_filelock()
  call void @syms_of_indent()
  call void @syms_of_insdel()
  call void @syms_of_macros()
  call void @syms_of_marker()
  call void @syms_of_minibuf()
  call void @syms_of_process()
  call void @syms_of_search()
  call void @syms_of_frame()
  call void @syms_of_syntax()
  call void @syms_of_terminal()
  call void @syms_of_term()
  call void @syms_of_undo()
  call void @syms_of_sound()
  call void @syms_of_textprop()
  call void @syms_of_composite()
  call void @syms_of_window()
  call void @syms_of_xdisp()
  call void @syms_of_font()
  call void @syms_of_fringe()
  call void @syms_of_image()
  call void @syms_of_xterm()
  call void @syms_of_xfns()
  call void @syms_of_xmenu()
  call void @syms_of_fontset()
  call void @syms_of_xwidget()
  call void @syms_of_xsettings()
  call void @syms_of_xsmfns()
  call void @syms_of_xselect()
  call void @syms_of_decompress()
  call void @syms_of_menu()
  call void @syms_of_gnutls()
  call void @syms_of_inotify()
  call void @syms_of_profiler()
  call void @keys_of_casefiddle()
  call void @keys_of_cmds()
  call void @keys_of_buffer()
  call void @keys_of_keyboard()
  call void @keys_of_keymap()
  call void @keys_of_window()
  br label %if.end.287

if.else.286:                                      ; preds = %if.end.283
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.286, %if.then.285
  call void @init_charset()
  %177 = load i8, i8* %dumping, align 1
  %tobool288 = trunc i8 %177 to i1
  call void @init_editfns(i1 zeroext %tobool288)
  call void @init_xterm()
  call void @init_process_emacs()
  call void @init_keyboard()
  %178 = load i8, i8* @noninteractive, align 1
  %tobool289 = trunc i8 %178 to i1
  br i1 %tobool289, label %if.end.291, label %if.then.290

if.then.290:                                      ; preds = %if.end.287
  call void @init_display()
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.end.287
  call void @init_xdisp()
  call void @init_fringe()
  call void @init_macros()
  call void @init_window()
  call void @init_font()
  %179 = load i8, i8* @initialized, align 1
  %tobool292 = trunc i8 %179 to i1
  br i1 %tobool292, label %if.end.306, label %if.then.293

if.then.293:                                      ; preds = %if.end.291
  %180 = load i8**, i8*** %argv.addr, align 8
  %181 = load i32, i32* %argc.addr, align 4
  %call294 = call zeroext i1 @argmatch(i8** %180, i32 %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 3, i8** %file, i32* %skip_args)
  br i1 %call294, label %if.then.295, label %if.end.299

if.then.295:                                      ; preds = %if.then.293
  %call296 = call i64 @builtin_lisp_symbol(i32 628)
  %182 = load i8*, i8** %file, align 8
  %call297 = call i64 @build_unibyte_string(i8* %182)
  %call298 = call i64 @list2(i64 %call296, i64 %call297)
  store i64 %call298, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 304), align 8
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.295, %if.then.293
  %183 = load i8, i8* %no_loadup, align 1
  %tobool300 = trunc i8 %183 to i1
  br i1 %tobool300, label %if.end.305, label %if.then.301

if.then.301:                                      ; preds = %if.end.299
  %call302 = call i64 @builtin_lisp_symbol(i32 628)
  %call303 = call i64 @build_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0))
  %call304 = call i64 @list2(i64 %call302, i64 %call303)
  store i64 %call304, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 304), align 8
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.301, %if.end.299
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.end.291
  store i8 1, i8* @initialized, align 1
  %call307 = call i64 @Frecursive_edit()
  ret i32 0
}

declare i8* @my_heap_start() #3

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #6

; Function Attrs: nounwind uwtable
define internal void @close_output_streams() #7 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @close_stream(%struct._IO_FILE* %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i32 0, i32 0))
  call void @_exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @close_stream(%struct._IO_FILE* %1)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @_exit(i32 1) #10
  unreachable

if.end.4:                                         ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_args(i32 %argc, i8** %argv) #7 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %new = alloca i8**, align 8
  %options = alloca i32*, align 8
  %priority = alloca i32*, align 8
  %to = alloca i32, align 4
  %incoming_used = alloca i32, align 4
  %from = alloca i32, align 4
  %i = alloca i32, align 4
  %match = alloca i32, align 4
  %equals = alloca i8*, align 8
  %thislen = alloca i64, align 8
  %best = alloca i32, align 4
  %best_priority = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %new, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call noalias i8* @xnmalloc(i64 %conv1, i64 4)
  %3 = bitcast i8* %call2 to i32*
  store i32* %3, i32** %options, align 8
  %4 = load i32, i32* %argc.addr, align 4
  %conv3 = sext i32 %4 to i64
  %call4 = call noalias i8* @xnmalloc(i64 %conv3, i64 4)
  %5 = bitcast i8* %call4 to i32*
  store i32* %5, i32** %priority, align 8
  store i32 1, i32* %to, align 4
  store i32 1, i32* %incoming_used, align 4
  store i32 1, i32* %from, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.147, %entry
  %6 = load i32, i32* %from, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.149

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %from, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %options, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %10 = load i32, i32* %from, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %priority, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 0, i32* %arrayidx7, align 4
  %12 = load i32, i32* %from, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 %idxprom8
  %14 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 45
  br i1 %cmp12, label %if.then, label %if.end.146

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %from, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %17, i64 %idxprom14
  %18 = load i8*, i8** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %19 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %20 = load i32, i32* %from, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %21, i64 %idxprom20
  %22 = load i8*, i8** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %land.lhs.true
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.then.26
  %24 = load i32, i32* %from, align 4
  %25 = load i32, i32* %argc.addr, align 4
  %cmp28 = icmp slt i32 %24, %25
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %26 = load i32, i32* %from, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i32*, i32** %priority, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %27, i64 %idxprom31
  store i32 -100, i32* %arrayidx32, align 4
  %28 = load i32, i32* %from, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i32*, i32** %options, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %29, i64 %idxprom33
  store i32 -1, i32* %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %30 = load i32, i32* %from, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %from, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.end.149

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.69, %if.end
  %31 = load i32, i32* %i, align 4
  %conv36 = sext i32 %31 to i64
  %cmp37 = icmp ult i64 %conv36, 71
  br i1 %cmp37, label %for.body.39, label %for.end.71

for.body.39:                                      ; preds = %for.cond.35
  %32 = load i32, i32* %from, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %33, i64 %idxprom40
  %34 = load i8*, i8** %arrayidx41, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom42
  %name = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx43, i32 0, i32 0
  %36 = load i8*, i8** %name, align 8
  %call44 = call i32 @strcmp(i8* %34, i8* %36) #11
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %if.end.68, label %if.then.45

if.then.45:                                       ; preds = %for.body.39
  %37 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom46
  %nargs = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx47, i32 0, i32 3
  %38 = load i32, i32* %nargs, align 4
  %39 = load i32, i32* %from, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load i32*, i32** %options, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %40, i64 %idxprom48
  store i32 %38, i32* %arrayidx49, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom50
  %priority52 = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx51, i32 0, i32 2
  %42 = load i32, i32* %priority52, align 4
  %43 = load i32, i32* %from, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load i32*, i32** %priority, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %44, i64 %idxprom53
  store i32 %42, i32* %arrayidx54, align 4
  %45 = load i32, i32* %from, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom55
  %nargs57 = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx56, i32 0, i32 3
  %47 = load i32, i32* %nargs57, align 4
  %add = add nsw i32 %45, %47
  %48 = load i32, i32* %argc.addr, align 4
  %cmp58 = icmp sge i32 %add, %48
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.then.45
  %49 = load i32, i32* %from, align 4
  %idxprom61 = sext i32 %49 to i64
  %50 = load i8**, i8*** %argv.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %50, i64 %idxprom61
  %51 = load i8*, i8** %arrayidx62, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i32 0, i32 0), i8* %51) #10
  unreachable

if.end.63:                                        ; preds = %if.then.45
  %52 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom64
  %nargs66 = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx65, i32 0, i32 3
  %53 = load i32, i32* %nargs66, align 4
  %54 = load i32, i32* %from, align 4
  %add67 = add nsw i32 %54, %53
  store i32 %add67, i32* %from, align 4
  br label %done

if.end.68:                                        ; preds = %for.body.39
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %55 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.35

for.end.71:                                       ; preds = %for.cond.35
  %56 = load i32, i32* %from, align 4
  %idxprom72 = sext i32 %56 to i64
  %57 = load i8**, i8*** %argv.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %57, i64 %idxprom72
  %58 = load i8*, i8** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %59 to i32
  %cmp76 = icmp eq i32 %conv75, 45
  br i1 %cmp76, label %if.then.78, label %if.end.145

if.then.78:                                       ; preds = %for.end.71
  %60 = load i32, i32* %from, align 4
  %idxprom79 = sext i32 %60 to i64
  %61 = load i8**, i8*** %argv.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %61, i64 %idxprom79
  %62 = load i8*, i8** %arrayidx80, align 8
  %call81 = call i8* @strchr(i8* %62, i32 61) #11
  store i8* %call81, i8** %equals, align 8
  %63 = load i8*, i8** %equals, align 8
  %tobool82 = icmp ne i8* %63, null
  br i1 %tobool82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.78
  %64 = load i8*, i8** %equals, align 8
  %65 = load i32, i32* %from, align 4
  %idxprom83 = sext i32 %65 to i64
  %66 = load i8**, i8*** %argv.addr, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %66, i64 %idxprom83
  %67 = load i8*, i8** %arrayidx84, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %if.then.78
  %68 = load i32, i32* %from, align 4
  %idxprom85 = sext i32 %68 to i64
  %69 = load i8**, i8*** %argv.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %69, i64 %idxprom85
  %70 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i64 @strlen(i8* %70) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %call87, %cond.false ]
  store i64 %cond, i64* %thislen, align 8
  store i32 -1, i32* %match, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.110, %cond.end
  %71 = load i32, i32* %i, align 4
  %conv89 = sext i32 %71 to i64
  %cmp90 = icmp ult i64 %conv89, 71
  br i1 %cmp90, label %for.body.92, label %for.end.112

for.body.92:                                      ; preds = %for.cond.88
  %72 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %72 to i64
  %arrayidx94 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom93
  %longname = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx94, i32 0, i32 1
  %73 = load i8*, i8** %longname, align 8
  %tobool95 = icmp ne i8* %73, null
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.109

land.lhs.true.96:                                 ; preds = %for.body.92
  %74 = load i32, i32* %from, align 4
  %idxprom97 = sext i32 %74 to i64
  %75 = load i8**, i8*** %argv.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %75, i64 %idxprom97
  %76 = load i8*, i8** %arrayidx98, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %77 to i64
  %arrayidx100 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom99
  %longname101 = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx100, i32 0, i32 1
  %78 = load i8*, i8** %longname101, align 8
  %79 = load i64, i64* %thislen, align 8
  %call102 = call i32 @strncmp(i8* %76, i8* %78, i64 %79) #11
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.109, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.96
  %80 = load i32, i32* %match, align 4
  %cmp105 = icmp eq i32 %80, -1
  br i1 %cmp105, label %if.then.107, label %if.else

if.then.107:                                      ; preds = %if.then.104
  %81 = load i32, i32* %i, align 4
  store i32 %81, i32* %match, align 4
  br label %if.end.108

if.else:                                          ; preds = %if.then.104
  store i32 -2, i32* %match, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else, %if.then.107
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %land.lhs.true.96, %for.body.92
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %82 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %82, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.88

for.end.112:                                      ; preds = %for.cond.88
  %83 = load i32, i32* %match, align 4
  %cmp113 = icmp sge i32 %83, 0
  br i1 %cmp113, label %if.then.115, label %if.end.144

if.then.115:                                      ; preds = %for.end.112
  %84 = load i32, i32* %match, align 4
  %idxprom116 = sext i32 %84 to i64
  %arrayidx117 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom116
  %nargs118 = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx117, i32 0, i32 3
  %85 = load i32, i32* %nargs118, align 4
  %86 = load i32, i32* %from, align 4
  %idxprom119 = sext i32 %86 to i64
  %87 = load i32*, i32** %options, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %87, i64 %idxprom119
  store i32 %85, i32* %arrayidx120, align 4
  %88 = load i32, i32* %match, align 4
  %idxprom121 = sext i32 %88 to i64
  %arrayidx122 = getelementptr inbounds [71 x %struct.standard_args], [71 x %struct.standard_args]* @standard_args, i32 0, i64 %idxprom121
  %priority123 = getelementptr inbounds %struct.standard_args, %struct.standard_args* %arrayidx122, i32 0, i32 2
  %89 = load i32, i32* %priority123, align 4
  %90 = load i32, i32* %from, align 4
  %idxprom124 = sext i32 %90 to i64
  %91 = load i32*, i32** %priority, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %91, i64 %idxprom124
  store i32 %89, i32* %arrayidx125, align 4
  %92 = load i8*, i8** %equals, align 8
  %cmp126 = icmp ne i8* %92, null
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.then.115
  %93 = load i32, i32* %from, align 4
  %idxprom129 = sext i32 %93 to i64
  %94 = load i32*, i32** %options, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %94, i64 %idxprom129
  store i32 0, i32* %arrayidx130, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.then.115
  %95 = load i32, i32* %from, align 4
  %96 = load i32, i32* %from, align 4
  %idxprom132 = sext i32 %96 to i64
  %97 = load i32*, i32** %options, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %97, i64 %idxprom132
  %98 = load i32, i32* %arrayidx133, align 4
  %add134 = add nsw i32 %95, %98
  %99 = load i32, i32* %argc.addr, align 4
  %cmp135 = icmp sge i32 %add134, %99
  br i1 %cmp135, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.end.131
  %100 = load i32, i32* %from, align 4
  %idxprom138 = sext i32 %100 to i64
  %101 = load i8**, i8*** %argv.addr, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %101, i64 %idxprom138
  %102 = load i8*, i8** %arrayidx139, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i32 0, i32 0), i8* %102) #10
  unreachable

if.end.140:                                       ; preds = %if.end.131
  %103 = load i32, i32* %from, align 4
  %idxprom141 = sext i32 %103 to i64
  %104 = load i32*, i32** %options, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %104, i64 %idxprom141
  %105 = load i32, i32* %arrayidx142, align 4
  %106 = load i32, i32* %from, align 4
  %add143 = add nsw i32 %106, %105
  store i32 %add143, i32* %from, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.140, %for.end.112
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %for.end.71
  br label %done

done:                                             ; preds = %if.end.145, %if.end.63
  br label %if.end.146

if.end.146:                                       ; preds = %done, %for.body
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %107 = load i32, i32* %from, align 4
  %inc148 = add nsw i32 %107, 1
  store i32 %inc148, i32* %from, align 4
  br label %for.cond

for.end.149:                                      ; preds = %for.end, %for.cond
  %108 = load i8**, i8*** %argv.addr, align 8
  %arrayidx150 = getelementptr inbounds i8*, i8** %108, i64 0
  %109 = load i8*, i8** %arrayidx150, align 8
  %110 = load i8**, i8*** %new, align 8
  %arrayidx151 = getelementptr inbounds i8*, i8** %110, i64 0
  store i8* %109, i8** %arrayidx151, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.247, %for.end.149
  %111 = load i32, i32* %incoming_used, align 4
  %112 = load i32, i32* %argc.addr, align 4
  %cmp152 = icmp slt i32 %111, %112
  br i1 %cmp152, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 -1, i32* %best, align 4
  store i32 -9999, i32* %best_priority, align 4
  store i32 1, i32* %from, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.180, %while.body
  %113 = load i32, i32* %from, align 4
  %114 = load i32, i32* %argc.addr, align 4
  %cmp155 = icmp slt i32 %113, %114
  br i1 %cmp155, label %for.body.157, label %for.end.182

for.body.157:                                     ; preds = %for.cond.154
  %115 = load i32, i32* %from, align 4
  %idxprom158 = sext i32 %115 to i64
  %116 = load i8**, i8*** %argv.addr, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %116, i64 %idxprom158
  %117 = load i8*, i8** %arrayidx159, align 8
  %cmp160 = icmp ne i8* %117, null
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.170

land.lhs.true.162:                                ; preds = %for.body.157
  %118 = load i32, i32* %from, align 4
  %idxprom163 = sext i32 %118 to i64
  %119 = load i32*, i32** %priority, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %119, i64 %idxprom163
  %120 = load i32, i32* %arrayidx164, align 4
  %121 = load i32, i32* %best_priority, align 4
  %cmp165 = icmp sgt i32 %120, %121
  br i1 %cmp165, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %land.lhs.true.162
  %122 = load i32, i32* %from, align 4
  %idxprom168 = sext i32 %122 to i64
  %123 = load i32*, i32** %priority, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %123, i64 %idxprom168
  %124 = load i32, i32* %arrayidx169, align 4
  store i32 %124, i32* %best_priority, align 4
  %125 = load i32, i32* %from, align 4
  store i32 %125, i32* %best, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %land.lhs.true.162, %for.body.157
  %126 = load i32, i32* %from, align 4
  %idxprom171 = sext i32 %126 to i64
  %127 = load i32*, i32** %options, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %127, i64 %idxprom171
  %128 = load i32, i32* %arrayidx172, align 4
  %cmp173 = icmp sgt i32 %128, 0
  br i1 %cmp173, label %if.then.175, label %if.end.179

if.then.175:                                      ; preds = %if.end.170
  %129 = load i32, i32* %from, align 4
  %idxprom176 = sext i32 %129 to i64
  %130 = load i32*, i32** %options, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %130, i64 %idxprom176
  %131 = load i32, i32* %arrayidx177, align 4
  %132 = load i32, i32* %from, align 4
  %add178 = add nsw i32 %132, %131
  store i32 %add178, i32* %from, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.175, %if.end.170
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %133 = load i32, i32* %from, align 4
  %inc181 = add nsw i32 %133, 1
  store i32 %inc181, i32* %from, align 4
  br label %for.cond.154

for.end.182:                                      ; preds = %for.cond.154
  %134 = load i32, i32* %best, align 4
  %cmp183 = icmp slt i32 %134, 0
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %for.end.182
  call void @emacs_abort() #10
  unreachable

if.end.186:                                       ; preds = %for.end.182
  %135 = load i32, i32* %best, align 4
  %idxprom187 = sext i32 %135 to i64
  %136 = load i32*, i32** %options, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %136, i64 %idxprom187
  %137 = load i32, i32* %arrayidx188, align 4
  %cmp189 = icmp eq i32 %137, 0
  br i1 %cmp189, label %land.lhs.true.191, label %if.then.198

land.lhs.true.191:                                ; preds = %if.end.186
  %138 = load i32, i32* %to, align 4
  %sub = sub nsw i32 %138, 1
  %idxprom192 = sext i32 %sub to i64
  %139 = load i8**, i8*** %new, align 8
  %arrayidx193 = getelementptr inbounds i8*, i8** %139, i64 %idxprom192
  %140 = load i8*, i8** %arrayidx193, align 8
  %141 = load i32, i32* %best, align 4
  %idxprom194 = sext i32 %141 to i64
  %142 = load i8**, i8*** %argv.addr, align 8
  %arrayidx195 = getelementptr inbounds i8*, i8** %142, i64 %idxprom194
  %143 = load i8*, i8** %arrayidx195, align 8
  %call196 = call i32 @strcmp(i8* %140, i8* %143) #11
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.then.198, label %if.end.220

if.then.198:                                      ; preds = %land.lhs.true.191, %if.end.186
  %144 = load i32, i32* %best, align 4
  %idxprom199 = sext i32 %144 to i64
  %145 = load i8**, i8*** %argv.addr, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %145, i64 %idxprom199
  %146 = load i8*, i8** %arrayidx200, align 8
  %147 = load i32, i32* %to, align 4
  %inc201 = add nsw i32 %147, 1
  store i32 %inc201, i32* %to, align 4
  %idxprom202 = sext i32 %147 to i64
  %148 = load i8**, i8*** %new, align 8
  %arrayidx203 = getelementptr inbounds i8*, i8** %148, i64 %idxprom202
  store i8* %146, i8** %arrayidx203, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.217, %if.then.198
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* %best, align 4
  %idxprom205 = sext i32 %150 to i64
  %151 = load i32*, i32** %options, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %151, i64 %idxprom205
  %152 = load i32, i32* %arrayidx206, align 4
  %cmp207 = icmp slt i32 %149, %152
  br i1 %cmp207, label %for.body.209, label %for.end.219

for.body.209:                                     ; preds = %for.cond.204
  %153 = load i32, i32* %best, align 4
  %154 = load i32, i32* %i, align 4
  %add210 = add nsw i32 %153, %154
  %add211 = add nsw i32 %add210, 1
  %idxprom212 = sext i32 %add211 to i64
  %155 = load i8**, i8*** %argv.addr, align 8
  %arrayidx213 = getelementptr inbounds i8*, i8** %155, i64 %idxprom212
  %156 = load i8*, i8** %arrayidx213, align 8
  %157 = load i32, i32* %to, align 4
  %inc214 = add nsw i32 %157, 1
  store i32 %inc214, i32* %to, align 4
  %idxprom215 = sext i32 %157 to i64
  %158 = load i8**, i8*** %new, align 8
  %arrayidx216 = getelementptr inbounds i8*, i8** %158, i64 %idxprom215
  store i8* %156, i8** %arrayidx216, align 8
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.209
  %159 = load i32, i32* %i, align 4
  %inc218 = add nsw i32 %159, 1
  store i32 %inc218, i32* %i, align 4
  br label %for.cond.204

for.end.219:                                      ; preds = %for.cond.204
  br label %if.end.220

if.end.220:                                       ; preds = %for.end.219, %land.lhs.true.191
  %160 = load i32, i32* %best, align 4
  %idxprom221 = sext i32 %160 to i64
  %161 = load i32*, i32** %options, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %161, i64 %idxprom221
  %162 = load i32, i32* %arrayidx222, align 4
  %cmp223 = icmp sgt i32 %162, 0
  br i1 %cmp223, label %cond.true.225, label %cond.false.228

cond.true.225:                                    ; preds = %if.end.220
  %163 = load i32, i32* %best, align 4
  %idxprom226 = sext i32 %163 to i64
  %164 = load i32*, i32** %options, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %164, i64 %idxprom226
  %165 = load i32, i32* %arrayidx227, align 4
  br label %cond.end.229

cond.false.228:                                   ; preds = %if.end.220
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.228, %cond.true.225
  %cond230 = phi i32 [ %165, %cond.true.225 ], [ 0, %cond.false.228 ]
  %add231 = add nsw i32 1, %cond230
  %166 = load i32, i32* %incoming_used, align 4
  %add232 = add nsw i32 %166, %add231
  store i32 %add232, i32* %incoming_used, align 4
  %167 = load i32, i32* %best, align 4
  %idxprom233 = sext i32 %167 to i64
  %168 = load i8**, i8*** %argv.addr, align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %168, i64 %idxprom233
  store i8* null, i8** %arrayidx234, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.245, %cond.end.229
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %best, align 4
  %idxprom236 = sext i32 %170 to i64
  %171 = load i32*, i32** %options, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %171, i64 %idxprom236
  %172 = load i32, i32* %arrayidx237, align 4
  %cmp238 = icmp slt i32 %169, %172
  br i1 %cmp238, label %for.body.240, label %for.end.247

for.body.240:                                     ; preds = %for.cond.235
  %173 = load i32, i32* %best, align 4
  %174 = load i32, i32* %i, align 4
  %add241 = add nsw i32 %173, %174
  %add242 = add nsw i32 %add241, 1
  %idxprom243 = sext i32 %add242 to i64
  %175 = load i8**, i8*** %argv.addr, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %175, i64 %idxprom243
  store i8* null, i8** %arrayidx244, align 8
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.240
  %176 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %176, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.235

for.end.247:                                      ; preds = %for.cond.235
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.248

while.cond.248:                                   ; preds = %while.body.251, %while.end
  %177 = load i32, i32* %to, align 4
  %178 = load i32, i32* %argc.addr, align 4
  %cmp249 = icmp slt i32 %177, %178
  br i1 %cmp249, label %while.body.251, label %while.end.255

while.body.251:                                   ; preds = %while.cond.248
  %179 = load i32, i32* %to, align 4
  %inc252 = add nsw i32 %179, 1
  store i32 %inc252, i32* %to, align 4
  %idxprom253 = sext i32 %179 to i64
  %180 = load i8**, i8*** %new, align 8
  %arrayidx254 = getelementptr inbounds i8*, i8** %180, i64 %idxprom253
  store i8* null, i8** %arrayidx254, align 8
  br label %while.cond.248

while.end.255:                                    ; preds = %while.cond.248
  %181 = load i8**, i8*** %argv.addr, align 8
  %182 = bitcast i8** %181 to i8*
  %183 = load i8**, i8*** %new, align 8
  %184 = bitcast i8** %183 to i8*
  %185 = load i32, i32* %argc.addr, align 4
  %conv256 = sext i32 %185 to i64
  %mul257 = mul i64 8, %conv256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %184, i64 %mul257, i32 8, i1 false)
  %186 = load i32*, i32** %options, align 8
  %187 = bitcast i32* %186 to i8*
  call void @xfree(i8* %187)
  %188 = load i8**, i8*** %new, align 8
  %189 = bitcast i8** %188 to i8*
  call void @xfree(i8* %189)
  %190 = load i32*, i32** %priority, align 8
  %191 = bitcast i32* %190 to i8*
  call void @xfree(i8* %191)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @argmatch(i8** %argv, i32 %argc, i8* %sstr, i8* %lstr, i32 %minlen, i8** %valptr, i32* %skipptr) #7 {
entry:
  %retval = alloca i1, align 1
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %sstr.addr = alloca i8*, align 8
  %lstr.addr = alloca i8*, align 8
  %minlen.addr = alloca i32, align 4
  %valptr.addr = alloca i8**, align 8
  %skipptr.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %arglen = alloca i64, align 8
  %arg = alloca i8*, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8* %sstr, i8** %sstr.addr, align 8
  store i8* %lstr, i8** %lstr.addr, align 8
  store i32 %minlen, i32* %minlen.addr, align 4
  store i8** %valptr, i8*** %valptr.addr, align 8
  store i32* %skipptr, i32** %skipptr.addr, align 8
  store i8* null, i8** %p, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i32*, i32** %skipptr.addr, align 8
  %2 = load i32, i32* %1, align 4
  %add = add nsw i32 %2, 1
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %skipptr.addr, align 8
  %4 = load i32, i32* %3, align 4
  %add1 = add nsw i32 %4, 1
  %idxprom = sext i32 %add1 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %arg, align 8
  %7 = load i8*, i8** %arg, align 8
  %cmp2 = icmp eq i8* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load i8*, i8** %arg, align 8
  %9 = load i8*, i8** %sstr.addr, align 8
  %call = call i32 @strcmp(i8* %8, i8* %9) #11
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.end.4
  %10 = load i8**, i8*** %valptr.addr, align 8
  %cmp7 = icmp ne i8** %10, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %11 = load i32*, i32** %skipptr.addr, align 8
  %12 = load i32, i32* %11, align 4
  %add9 = add nsw i32 %12, 2
  %idxprom10 = sext i32 %add9 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 %idxprom10
  %14 = load i8*, i8** %arrayidx11, align 8
  %15 = load i8**, i8*** %valptr.addr, align 8
  store i8* %14, i8** %15, align 8
  %16 = load i32*, i32** %skipptr.addr, align 8
  %17 = load i32, i32* %16, align 4
  %add12 = add nsw i32 %17, 2
  store i32 %add12, i32* %16, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then.6
  %18 = load i32*, i32** %skipptr.addr, align 8
  %19 = load i32, i32* %18, align 4
  %add13 = add nsw i32 %19, 1
  store i32 %add13, i32* %18, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.8
  store i1 true, i1* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.4
  %20 = load i8**, i8*** %valptr.addr, align 8
  %cmp16 = icmp ne i8** %20, null
  br i1 %cmp16, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.15
  %21 = load i8*, i8** %arg, align 8
  %call17 = call i8* @strchr(i8* %21, i32 61) #11
  store i8* %call17, i8** %p, align 8
  %cmp18 = icmp ne i8* %call17, null
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %22 = load i8*, i8** %p, align 8
  %23 = load i8*, i8** %arg, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.15
  %24 = load i8*, i8** %arg, align 8
  %call19 = call i64 @strlen(i8* %24) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %call19, %cond.false ]
  store i64 %cond, i64* %arglen, align 8
  %25 = load i8*, i8** %lstr.addr, align 8
  %cmp20 = icmp eq i8* %25, null
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %26 = load i64, i64* %arglen, align 8
  %27 = load i32, i32* %minlen.addr, align 4
  %conv = sext i32 %27 to i64
  %cmp21 = icmp slt i64 %26, %conv
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %28 = load i8*, i8** %arg, align 8
  %29 = load i8*, i8** %lstr.addr, align 8
  %30 = load i64, i64* %arglen, align 8
  %call24 = call i32 @strncmp(i8* %28, i8* %29, i64 %30) #11
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false, %cond.end
  store i1 false, i1* %retval
  br label %return

if.else.28:                                       ; preds = %lor.lhs.false.23
  %31 = load i8**, i8*** %valptr.addr, align 8
  %cmp29 = icmp eq i8** %31, null
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.28
  %32 = load i32*, i32** %skipptr.addr, align 8
  %33 = load i32, i32* %32, align 4
  %add32 = add nsw i32 %33, 1
  store i32 %add32, i32* %32, align 4
  store i1 true, i1* %retval
  br label %return

if.else.33:                                       ; preds = %if.else.28
  %34 = load i8*, i8** %p, align 8
  %cmp34 = icmp ne i8* %34, null
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.else.33
  %35 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8**, i8*** %valptr.addr, align 8
  store i8* %add.ptr, i8** %36, align 8
  %37 = load i32*, i32** %skipptr.addr, align 8
  %38 = load i32, i32* %37, align 4
  %add37 = add nsw i32 %38, 1
  store i32 %add37, i32* %37, align 4
  store i1 true, i1* %retval
  br label %return

if.else.38:                                       ; preds = %if.else.33
  %39 = load i32*, i32** %skipptr.addr, align 8
  %40 = load i32, i32* %39, align 4
  %add39 = add nsw i32 %40, 2
  %idxprom40 = sext i32 %add39 to i64
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %41, i64 %idxprom40
  %42 = load i8*, i8** %arrayidx41, align 8
  %cmp42 = icmp ne i8* %42, null
  br i1 %cmp42, label %if.then.44, label %if.else.49

if.then.44:                                       ; preds = %if.else.38
  %43 = load i32*, i32** %skipptr.addr, align 8
  %44 = load i32, i32* %43, align 4
  %add45 = add nsw i32 %44, 2
  %idxprom46 = sext i32 %add45 to i64
  %45 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %45, i64 %idxprom46
  %46 = load i8*, i8** %arrayidx47, align 8
  %47 = load i8**, i8*** %valptr.addr, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %skipptr.addr, align 8
  %49 = load i32, i32* %48, align 4
  %add48 = add nsw i32 %49, 2
  store i32 %add48, i32* %48, align 4
  store i1 true, i1* %retval
  br label %return

if.else.49:                                       ; preds = %if.else.38
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.else.49, %if.then.44, %if.then.36, %if.then.31, %if.then.27, %if.end.14, %if.then.3, %if.then
  %50 = load i1, i1* %retval
  ret i1 %50
}

declare i64 @Fsymbol_value(i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @get_current_dir_name() #6

; Function Attrs: nounwind
declare i32 @chdir(i8*) #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @getenv(i8*) #6

declare void @xputenv(i8*) #3

; Function Attrs: nounwind
declare i32 @personality(i64) #6

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #6

declare void @emacs_perror(i8*) #3

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) #6

; Function Attrs: nounwind
declare i32 @setrlimit(i32, %struct.rlimit*) #6

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #6

declare void @memory_warnings(i8*, void (i8*)*) #3

declare void @malloc_warning(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @using_utf8() #7 {
entry:
  %wc = alloca i32, align 4
  %mbs = alloca %struct.__mbstate_t, align 4
  %0 = bitcast %struct.__mbstate_t* %mbs to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 8, i32 4, i1 false)
  %call = call i64 @mbrtowc(i32* %wc, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i64 2, %struct.__mbstate_t* %mbs) #2
  %cmp = icmp eq i64 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %wc, align 4
  %cmp1 = icmp eq i32 %1, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2
}

declare i32 @emacs_close(i32) #3

declare i32 @emacs_open(i8*, i32, i32) #3

declare i32 @rpl_fcntl(i32, i32, ...) #3

; Function Attrs: nounwind
declare i32 @isatty(i32) #6

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @emacs_pipe(i32*) #3

; Function Attrs: nounwind
declare i32 @fork() #6

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @setsid() #6

declare noalias i8* @xstrdup(i8*) #3

declare void @init_signals(i1 zeroext) #3

declare void @init_alloc_once() #3

declare void @init_obarray() #3

declare void @init_eval_once() #3

declare void @init_charset_once() #3

declare void @init_coding_once() #3

declare void @init_syntax_once() #3

declare void @init_category_once() #3

declare void @init_casetab_once() #3

declare void @init_buffer_once() #3

declare void @init_minibuf_once() #3

declare void @syms_of_xfaces() #3

declare void @syms_of_keymap() #3

declare void @syms_of_keyboard() #3

declare void @syms_of_data() #3

declare void @syms_of_fns() #3

declare void @syms_of_fileio() #3

declare void @syms_of_alloc() #3

declare void @init_print_once() #3

declare void @syms_of_charset() #3

declare void @syms_of_coding() #3

declare void @init_window_once() #3

declare void @init_fringe_once() #3

declare void @init_alloc() #3

; Function Attrs: nounwind uwtable
define void @fixup_locale() #7 {
entry:
  %call = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #2
  ret void
}

declare void @init_eval() #3

declare void @init_atimer() #3

declare void @init_random() #3

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @syms_of_callproc() #3

declare void @set_initial_environment() #3

declare void @init_buffer(i32) #3

declare void @init_callproc_1() #3

; Function Attrs: nounwind uwtable
define internal void @init_cmdargs(i32 %argc, i8** %argv, i32 %skip_args, i8* %original_pwd) #7 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %skip_args.addr = alloca i32, align 4
  %original_pwd.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %name = alloca i64, align 8
  %dir = alloca i64, align 8
  %handler = alloca i64, align 8
  %count = alloca i64, align 8
  %raw_name = alloca i64, align 8
  %slash_colon = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %found = alloca i64, align 8
  %yes = alloca i32, align 4
  %odir = alloca i64, align 8
  %tem = alloca i64, align 8
  %lib_src_exists = alloca i64, align 8
  %etc_exists = alloca i64, align 8
  %info_exists = alloca i64, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %skip_args, i32* %skip_args.addr, align 4
  store i8* %original_pwd, i8** %original_pwd.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 2, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i8** %data, align 8
  %s1 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %0 = bitcast %struct.Lisp_String* %s1 to i8*
  %call2 = call i64 @make_lisp_ptr(i8* %0, i32 4)
  store i64 %call2, i64* %slash_colon, align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  store i8** %1, i8*** @initial_argv, align 8
  %2 = load i32, i32* %argc.addr, align 4
  store i32 %2, i32* @initial_argc, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %call3 = call i64 @build_unibyte_string(i8* %4)
  store i64 %call3, i64* %raw_name, align 8
  %5 = load i64, i64* %raw_name, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  %call5 = call i64 @Ffind_file_name_handler(i64 %5, i64 %call4)
  store i64 %call5, i64* %handler, align 8
  %6 = load i64, i64* %handler, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %6, %call6
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %slash_colon, align 8
  %8 = load i64, i64* %raw_name, align 8
  %call7 = call i64 @concat2(i64 %7, i64 %8)
  store i64 %call7, i64* %raw_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %raw_name, align 8
  %call8 = call i64 @Ffile_name_nondirectory(i64 %9)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %10 = load i64, i64* %raw_name, align 8
  %call9 = call i64 @Ffile_name_directory(i64 %10)
  store i64 %call9, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %11, %call10
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %if.end
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 85), align 8
  %call13 = call i32 @openp(i64 %12, i64 %13, i64 %14, i64* %found, i64 6, i1 zeroext false)
  store i32 %call13, i32* %yes, align 4
  %15 = load i32, i32* %yes, align 4
  %cmp14 = icmp eq i32 %15, 1
  br i1 %cmp14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.then.12
  %16 = load i64, i64* %found, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 901)
  %call17 = call i64 @Ffind_file_name_handler(i64 %16, i64 %call16)
  store i64 %call17, i64* %handler, align 8
  %17 = load i64, i64* %handler, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %17, %call18
  br i1 %cmp19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.then.15
  %18 = load i64, i64* %slash_colon, align 8
  %19 = load i64, i64* %found, align 8
  %call21 = call i64 @concat2(i64 %18, i64 %19)
  store i64 %call21, i64* %found, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.15
  %20 = load i64, i64* %found, align 8
  %call23 = call i64 @Ffile_name_directory(i64 %20)
  store i64 %call23, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.then.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp27 = icmp eq i64 %21, %call26
  br i1 %cmp27, label %if.end.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.25
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call28 = call i64 @Ffile_name_absolute_p(i64 %22)
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %call28, %call29
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true
  %23 = load i8*, i8** %original_pwd.addr, align 8
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.31
  %24 = load i8*, i8** %original_pwd.addr, align 8
  %call32 = call i64 @build_unibyte_string(i8* %24)
  br label %cond.end

cond.false:                                       ; preds = %if.then.31
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call32, %cond.true ], [ %call33, %cond.false ]
  store i64 %cond, i64* %odir, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %26 = load i64, i64* %odir, align 8
  %call34 = call i64 @Fexpand_file_name(i64 %25, i64 %26)
  store i64 %call34, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  br label %if.end.35

if.end.35:                                        ; preds = %cond.end, %land.lhs.true, %if.end.25
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call36, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %27, %call37
  br i1 %cmp38, label %if.end.87, label %if.then.39

if.then.39:                                       ; preds = %if.end.35
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  store i64 %28, i64* %dir, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  %30 = load i64, i64* %dir, align 8
  %call40 = call i64 @Fexpand_file_name(i64 %29, i64 %30)
  store i64 %call40, i64* %name, align 8
  br label %while.body

while.body:                                       ; preds = %if.then.39, %if.end.86
  %call41 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0))
  %31 = load i64, i64* %dir, align 8
  %call42 = call i64 @Fexpand_file_name(i64 %call41, i64 %31)
  store i64 %call42, i64* %tem, align 8
  %32 = load i64, i64* %tem, align 8
  %call43 = call i64 @Ffile_exists_p(i64 %32)
  store i64 %call43, i64* %lib_src_exists, align 8
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call44, i64* %info_exists, align 8
  %33 = load i64, i64* %lib_src_exists, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %33, %call45
  br i1 %cmp46, label %lor.lhs.false, label %if.then.49

lor.lhs.false:                                    ; preds = %while.body
  %34 = load i64, i64* %info_exists, align 8
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %34, %call47
  br i1 %cmp48, label %if.end.58, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false, %while.body
  %call50 = call i64 @build_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0))
  %35 = load i64, i64* %dir, align 8
  %call51 = call i64 @Fexpand_file_name(i64 %call50, i64 %35)
  store i64 %call51, i64* %tem, align 8
  %36 = load i64, i64* %tem, align 8
  %call52 = call i64 @Ffile_exists_p(i64 %36)
  store i64 %call52, i64* %etc_exists, align 8
  %37 = load i64, i64* %etc_exists, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp54 = icmp eq i64 %37, %call53
  br i1 %cmp54, label %if.end.57, label %if.then.55

if.then.55:                                       ; preds = %if.then.49
  %38 = load i64, i64* %dir, align 8
  %call56 = call i64 @Ffile_name_as_directory(i64 %38)
  store i64 %call56, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  br label %while.end

if.end.57:                                        ; preds = %if.then.49
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %lor.lhs.false
  %call59 = call i64 @build_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0))
  %39 = load i64, i64* %dir, align 8
  %call60 = call i64 @Fexpand_file_name(i64 %call59, i64 %39)
  store i64 %call60, i64* %tem, align 8
  %40 = load i64, i64* %tem, align 8
  %call61 = call i64 @Ffile_exists_p(i64 %40)
  store i64 %call61, i64* %lib_src_exists, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call62, i64* %info_exists, align 8
  %41 = load i64, i64* %lib_src_exists, align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp64 = icmp eq i64 %41, %call63
  br i1 %cmp64, label %lor.lhs.false.65, label %if.then.68

lor.lhs.false.65:                                 ; preds = %if.end.58
  %42 = load i64, i64* %info_exists, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %42, %call66
  br i1 %cmp67, label %if.end.79, label %if.then.68

if.then.68:                                       ; preds = %lor.lhs.false.65, %if.end.58
  %call69 = call i64 @build_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0))
  %43 = load i64, i64* %dir, align 8
  %call70 = call i64 @Fexpand_file_name(i64 %call69, i64 %43)
  store i64 %call70, i64* %tem, align 8
  %44 = load i64, i64* %tem, align 8
  %call71 = call i64 @Ffile_exists_p(i64 %44)
  store i64 %call71, i64* %etc_exists, align 8
  %45 = load i64, i64* %etc_exists, align 8
  %call72 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp73 = icmp eq i64 %45, %call72
  br i1 %cmp73, label %if.end.78, label %if.then.74

if.then.74:                                       ; preds = %if.then.68
  %call75 = call i64 @build_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0))
  %46 = load i64, i64* %dir, align 8
  %call76 = call i64 @Fexpand_file_name(i64 %call75, i64 %46)
  store i64 %call76, i64* %tem, align 8
  %47 = load i64, i64* %tem, align 8
  %call77 = call i64 @Ffile_name_as_directory(i64 %47)
  store i64 %call77, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  br label %while.end

if.end.78:                                        ; preds = %if.then.68
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %lor.lhs.false.65
  %48 = load i64, i64* %name, align 8
  %call80 = call i64 @Ffile_symlink_p(i64 %48)
  store i64 %call80, i64* %tem, align 8
  %49 = load i64, i64* %tem, align 8
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp82 = icmp eq i64 %49, %call81
  br i1 %cmp82, label %if.else, label %if.then.83

if.then.83:                                       ; preds = %if.end.79
  %50 = load i64, i64* %tem, align 8
  %51 = load i64, i64* %dir, align 8
  %call84 = call i64 @Fexpand_file_name(i64 %50, i64 %51)
  store i64 %call84, i64* %name, align 8
  %52 = load i64, i64* %name, align 8
  %call85 = call i64 @Ffile_name_directory(i64 %52)
  store i64 %call85, i64* %dir, align 8
  br label %if.end.86

if.else:                                          ; preds = %if.end.79
  br label %while.end

if.end.86:                                        ; preds = %if.then.83
  br label %while.body

while.end:                                        ; preds = %if.else, %if.then.74, %if.then.55
  br label %if.end.87

if.end.87:                                        ; preds = %while.end, %if.end.35
  %call88 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call88, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 42), align 8
  %53 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %53, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.87
  %54 = load i32, i32* %i, align 4
  %cmp89 = icmp sge i32 %54, 0
  br i1 %cmp89, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %i, align 4
  %cmp90 = icmp eq i32 %55, 0
  br i1 %cmp90, label %if.then.93, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %for.body
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %skip_args.addr, align 4
  %cmp92 = icmp sgt i32 %56, %57
  br i1 %cmp92, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %lor.lhs.false.91, %for.body
  %58 = load i32, i32* %i, align 4
  %idxprom = sext i32 %58 to i64
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %59, i64 %idxprom
  %60 = load i8*, i8** %arrayidx94, align 8
  %call95 = call i64 @build_unibyte_string(i8* %60)
  %61 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 42), align 8
  %call96 = call i64 @Fcons(i64 %call95, i64 %61)
  store i64 %call96, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 42), align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %lor.lhs.false.91
  br label %for.inc

for.inc:                                          ; preds = %if.end.97
  %62 = load i32, i32* %i, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i64, i64* %count, align 8
  %call98 = call i64 @builtin_lisp_symbol(i32 0)
  %call99 = call i64 @unbind_to(i64 %63, i64 %call98)
  ret void
}

declare void @message_dolog(i8*, i64, i1 zeroext, i1 zeroext) #3

declare void @init_callproc() #3

declare void @init_fileio() #3

declare void @init_lread() #3

declare void @syms_of_chartab() #3

declare void @syms_of_lread() #3

declare void @syms_of_print() #3

declare void @syms_of_eval() #3

declare void @syms_of_floatfns() #3

declare void @syms_of_buffer() #3

declare void @syms_of_bytecode() #3

declare void @syms_of_callint() #3

declare void @syms_of_casefiddle() #3

declare void @syms_of_casetab() #3

declare void @syms_of_category() #3

declare void @syms_of_ccl() #3

declare void @syms_of_character() #3

declare void @syms_of_cmds() #3

declare void @syms_of_dired() #3

declare void @syms_of_display() #3

declare void @syms_of_doc() #3

declare void @syms_of_editfns() #3

; Function Attrs: nounwind uwtable
define internal void @syms_of_emacs() #7 {
entry:
  %c = alloca i8, align 1
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdump_emacs to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Skill_emacs to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sinvocation_name)
  call void @defsubr(%struct.Lisp_Subr* @Sinvocation_directory)
  call void @defsubr(%struct.Lisp_Subr* @Sdaemonp)
  call void @defsubr(%struct.Lisp_Subr* @Sdaemon_initialized)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.193, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 42))
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.195, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 287))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %call = call i64 @intern_c_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i32 0, i32 0))
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 287), align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.197, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 281))
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %call5 = call i64 @build_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.199, i32 0, i32 0))
  store i64 %call5, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 281), align 8
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.4
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.200, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.201, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 283))
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  %call8 = call i64 @build_string(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.202, i32 0, i32 0))
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 283), align 8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.7
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.204, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 282))
  br label %do.end.10

do.end.10:                                        ; preds = %do.body.9
  %call11 = call i64 @build_string(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.205, i32 0, i32 0))
  store i64 %call11, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 282), align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.10
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_emacs.b_fwd, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 477))
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.208, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 153))
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.14
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 153), align 8
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.15
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.210, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 218))
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.17
  store i8 58, i8* %c, align 1
  %call19 = call i64 @make_string(i8* %c, i64 1)
  store i64 %call19, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 218), align 8
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.18
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.212, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149))
  br label %do.end.21

do.end.21:                                        ; preds = %do.body.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.214, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148))
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.216, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145))
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.24
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call26, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.25
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.218, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 284))
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.27
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 284), align 8
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.28
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.220, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 226))
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 226), align 8
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.31
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.221, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.222, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 286))
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.33
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 286), align 8
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.34
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.223, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.224, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 227))
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.36
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call38, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 227), align 8
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.37
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.226, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 14))
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.39
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call41, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 14), align 8
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.40
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.228, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 1))
  br label %do.end.43

do.end.43:                                        ; preds = %do.body.42
  %call44 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call44, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 1), align 8
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.43
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_emacs.b_fwd.229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 461))
  br label %do.end.46

do.end.46:                                        ; preds = %do.body.45
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 461), align 1
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 77))
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.47
  %call49 = call i64 @build_string(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @emacs_copyright, i32 0, i32 0))
  store i64 %call49, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 77), align 8
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.48
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 78))
  br label %do.end.51

do.end.51:                                        ; preds = %do.body.50
  %call52 = call i64 @build_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @emacs_version, i32 0, i32 0))
  store i64 %call52, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 78), align 8
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.51
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.234, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 254))
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.53
  %call55 = call i64 @build_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @emacs_bugreport, i32 0, i32 0))
  store i64 %call55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 254), align 8
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.54
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_emacs.o_fwd.235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.236, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 75))
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.56
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call58, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 75), align 8
  %call59 = call i64 @intern_c_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.236, i32 0, i32 0))
  %call60 = call i64 @builtin_lisp_symbol(i32 818)
  %call61 = call i64 @builtin_lisp_symbol(i32 901)
  %call62 = call i64 @Fput(i64 %call59, i64 %call60, i64 %call61)
  ret void
}

declare void @syms_of_filelock() #3

declare void @syms_of_indent() #3

declare void @syms_of_insdel() #3

declare void @syms_of_macros() #3

declare void @syms_of_marker() #3

declare void @syms_of_minibuf() #3

declare void @syms_of_process() #3

declare void @syms_of_search() #3

declare void @syms_of_frame() #3

declare void @syms_of_syntax() #3

declare void @syms_of_terminal() #3

declare void @syms_of_term() #3

declare void @syms_of_undo() #3

declare void @syms_of_sound() #3

declare void @syms_of_textprop() #3

declare void @syms_of_composite() #3

declare void @syms_of_window() #3

declare void @syms_of_xdisp() #3

declare void @syms_of_font() #3

declare void @syms_of_fringe() #3

declare void @syms_of_image() #3

declare void @syms_of_xterm() #3

declare void @syms_of_xfns() #3

declare void @syms_of_xmenu() #3

declare void @syms_of_fontset() #3

declare void @syms_of_xsettings() #3

declare void @syms_of_xsmfns() #3

declare void @syms_of_xselect() #3

declare void @syms_of_decompress() #3

declare void @syms_of_menu() #3

declare void @syms_of_gnutls() #3

declare void @syms_of_inotify() #3

declare void @syms_of_profiler() #3

declare void @keys_of_casefiddle() #3

declare void @keys_of_cmds() #3

declare void @keys_of_buffer() #3

declare void @keys_of_keyboard() #3

declare void @keys_of_keymap() #3

declare void @keys_of_window() #3

declare void @init_charset() #3

declare void @init_editfns(i1 zeroext) #3

declare void @init_xterm() #3

declare void @init_process_emacs() #3

declare void @init_keyboard() #3

declare void @init_display() #3

declare void @init_xdisp() #3

declare void @init_fringe() #3

declare void @init_macros() #3

declare void @init_window() #3

declare void @init_font() #3

declare i64 @Frecursive_edit() #3

declare void @run_hook(i64) #3

declare void @x_clipboard_manager_save_all() #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #6

declare i64 @Fexpand_file_name(i64, i64) #3

; Function Attrs: nounwind
declare i32 @unlink(i8*) #6

; Function Attrs: nounwind
declare i32 @getpgrp() #6

; Function Attrs: nounwind
declare i32 @tcgetpgrp(i32) #6

declare void @reset_all_sys_modes() #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #6

; Function Attrs: nounwind readnone
declare i8* @safe_strsignal(i32) #9

declare i64 @emacs_write(i32, i8*, i64) #3

declare void @stuff_buffered_input(i64) #3

declare void @kill_buffer_processes(i64) #3

declare i64 @Fdo_auto_save(i64, i64) #3

declare void @unlock_all_files() #3

declare void @unrequest_sigio() #3

declare void @check_glyph_memory() #3

declare void @check_message_stack() #3

; Function Attrs: nounwind uwtable
define i64 @Fdump_emacs(i64 %filename, i64 %symfile) #7 {
entry:
  %filename.addr = alloca i64, align 8
  %symfile.addr = alloca i64, align 8
  %tem = alloca i64, align 8
  %symbol = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %symfile, i64* %symfile.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  call void @check_pure_size()
  %0 = load i8, i8* @noninteractive, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @might_dump, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0)) #10
  unreachable

if.end.3:                                         ; preds = %if.end
  %2 = load i64, i64* @heap_bss_diff, align 8
  %cmp = icmp ugt i64 %2, 1048576
  br i1 %cmp, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end.3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.63, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i64, i64* @heap_bss_diff, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i32 0, i32 0), i64 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.65, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.66, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.4, %if.end.3
  %call13 = call i64 @intern(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0))
  store i64 %call13, i64* %symbol, align 8
  %11 = load i64, i64* %symbol, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %11, i64 %call14)
  %12 = load i64, i64* %filename.addr, align 8
  call void @CHECK_STRING(i64 %12)
  %13 = load i64, i64* %filename.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %call16 = call i64 @Fexpand_file_name(i64 %13, i64 %call15)
  store i64 %call16, i64* %filename.addr, align 8
  %14 = load i64, i64* %filename.addr, align 8
  %call17 = call i64 @encode_file_name(i64 %14)
  store i64 %call17, i64* %filename.addr, align 8
  %15 = load i64, i64* %symfile.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %15, %call18
  br i1 %cmp19, label %if.end.28, label %if.then.20

if.then.20:                                       ; preds = %if.end.12
  %16 = load i64, i64* %symfile.addr, align 8
  call void @CHECK_STRING(i64 %16)
  %17 = load i64, i64* %symfile.addr, align 8
  %call21 = call i64 @SCHARS(i64 %17)
  %tobool22 = icmp ne i64 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.then.20
  %18 = load i64, i64* %symfile.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %call25 = call i64 @Fexpand_file_name(i64 %18, i64 %call24)
  store i64 %call25, i64* %symfile.addr, align 8
  %19 = load i64, i64* %symfile.addr, align 8
  %call26 = call i64 @encode_file_name(i64 %19)
  store i64 %call26, i64* %symfile.addr, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.then.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.12
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  store i64 %20, i64* %tem, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fflush(%struct._IO_FILE* %21)
  call void @memory_warnings(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @my_edata, i32 0, i32 0), void (i8*)* @malloc_warning)
  call void @alloc_unexec_pre()
  %22 = load i64, i64* %filename.addr, align 8
  %call31 = call i8* @SSDATA(i64 %22)
  %23 = load i64, i64* %symfile.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %23, %call32
  br i1 %cmp33, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.28
  %24 = load i64, i64* %symfile.addr, align 8
  %call34 = call i8* @SSDATA(i64 %24)
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call34, %cond.true ], [ null, %cond.false ]
  call void @unexec(i8* %call31, i8* %cond)
  call void @alloc_unexec_post()
  call void @reset_image_types()
  %25 = load i64, i64* %tem, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %26 = load i64, i64* %count, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %call36 = call i64 @unbind_to(i64 %26, i64 %call35)
  ret i64 %call36
}

declare void @check_pure_size() #3

; Function Attrs: noreturn
declare void @error(i8*, ...) #1

declare void @specbind(i64, i64) #3

declare i64 @encode_file_name(i64) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare void @alloc_unexec_pre() #3

declare void @unexec(i8*, i8*) #3

declare void @alloc_unexec_post() #3

declare void @reset_image_types() #3

declare i64 @unbind_to(i64, i64) #3

; Function Attrs: nounwind uwtable
define void @synchronize_system_time_locale() #7 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 286), align 8
  call void @synchronize_locale(i32 2, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 227), i64 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @synchronize_locale(i32 %category, i64* %plocale, i64 %desired_locale) #7 {
entry:
  %category.addr = alloca i32, align 4
  %plocale.addr = alloca i64*, align 8
  %desired_locale.addr = alloca i64, align 8
  store i32 %category, i32* %category.addr, align 4
  store i64* %plocale, i64** %plocale.addr, align 8
  store i64 %desired_locale, i64* %desired_locale.addr, align 8
  %0 = load i64*, i64** %plocale.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64, i64* %desired_locale.addr, align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %desired_locale.addr, align 8
  %4 = load i64*, i64** %plocale.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i32, i32* %category.addr, align 4
  %6 = load i64, i64* %desired_locale.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i64, i64* %desired_locale.addr, align 8
  %call1 = call i8* @SSDATA(i64 %7)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), %cond.false ]
  %call2 = call i8* @setlocale(i32 %5, i8* %cond) #2
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @synchronize_system_messages_locale() #7 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 284), align 8
  call void @synchronize_locale(i32 5, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 226), i64 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @decode_env_path(i8* %evarname, i8* %defalt, i1 zeroext %empty) #7 {
entry:
  %evarname.addr = alloca i8*, align 8
  %defalt.addr = alloca i8*, align 8
  %empty.addr = alloca i8, align 1
  %path = alloca i8*, align 8
  %p = alloca i8*, align 8
  %lpath = alloca i64, align 8
  %element = alloca i64, align 8
  %tem = alloca i64, align 8
  %empty_element = alloca i64, align 8
  %prop = alloca i64, align 8
  %slash_colon = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  store i8* %evarname, i8** %evarname.addr, align 8
  store i8* %defalt, i8** %defalt.addr, align 8
  %frombool = zext i1 %empty to i8
  store i8 %frombool, i8* %empty.addr, align 1
  %0 = load i8, i8* %empty.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @build_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i64 %cond, i64* %empty_element, align 8
  %1 = load i8*, i8** %evarname.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %2 = load i8*, i8** %evarname.addr, align 8
  %call2 = call i8* @getenv(i8* %2) #2
  store i8* %call2, i8** %path, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i8* null, i8** %path, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %path, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %4 = load i8*, i8** %defalt.addr, align 8
  store i8* %4, i8** %path, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %lpath, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.5, %if.end.52
  %5 = load i8*, i8** %path, align 8
  %call7 = call i8* @strchr(i8* %5, i32 58) #11
  store i8* %call7, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %tobool8 = icmp ne i8* %6, null
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %while.body
  %7 = load i8*, i8** %path, align 8
  %8 = load i8*, i8** %path, align 8
  %call10 = call i64 @strlen(i8* %8) #11
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %call10
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %while.body
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %path, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool12 = icmp ne i64 %sub.ptr.sub, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.18

cond.true.13:                                     ; preds = %if.end.11
  %11 = load i8*, i8** %path, align 8
  %12 = load i8*, i8** %p, align 8
  %13 = load i8*, i8** %path, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %13 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %call17 = call i64 @make_unibyte_string(i8* %11, i64 %sub.ptr.sub16)
  br label %cond.end.19

cond.false.18:                                    ; preds = %if.end.11
  %14 = load i64, i64* %empty_element, align 8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.13
  %cond20 = phi i64 [ %call17, %cond.true.13 ], [ %14, %cond.false.18 ]
  store i64 %cond20, i64* %element, align 8
  %15 = load i64, i64* %element, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %15, %call21
  br i1 %cmp22, label %if.end.46, label %if.then.23

if.then.23:                                       ; preds = %cond.end.19
  %16 = load i64, i64* %element, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 901)
  %call25 = call i64 @Ffind_file_name_handler(i64 %16, i64 %call24)
  store i64 %call25, i64* %tem, align 8
  %17 = load i64, i64* %tem, align 8
  %and = and i64 %17, 7
  %conv = trunc i64 %and to i32
  %cmp26 = icmp eq i32 %conv, 0
  br i1 %cmp26, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %if.then.23
  %18 = load i64, i64* %tem, align 8
  %call29 = call i64 @intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0))
  %call30 = call i64 @Fget(i64 %18, i64 %call29)
  store i64 %call30, i64* %prop, align 8
  %19 = load i64, i64* %prop, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp32 = icmp eq i64 %19, %call31
  br i1 %cmp32, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %if.then.28
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %tem, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.23
  %20 = load i64, i64* %tem, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %20, %call38
  br i1 %cmp39, label %if.end.45, label %if.then.41

if.then.41:                                       ; preds = %if.end.37
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 2, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), i8** %data, align 8
  %s42 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %21 = bitcast %struct.Lisp_String* %s42 to i8*
  %call43 = call i64 @make_lisp_ptr(i8* %21, i32 4)
  store i64 %call43, i64* %slash_colon, align 8
  %22 = load i64, i64* %slash_colon, align 8
  %23 = load i64, i64* %element, align 8
  %call44 = call i64 @concat2(i64 %22, i64 %23)
  store i64 %call44, i64* %element, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %cond.end.19
  %24 = load i64, i64* %element, align 8
  %25 = load i64, i64* %lpath, align 8
  %call47 = call i64 @Fcons(i64 %24, i64 %25)
  store i64 %call47, i64* %lpath, align 8
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %tobool48 = icmp ne i8 %27, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.end.46
  %28 = load i8*, i8** %p, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %add.ptr50, i8** %path, align 8
  br label %if.end.52

if.else.51:                                       ; preds = %if.end.46
  br label %while.end

if.end.52:                                        ; preds = %if.then.49
  br label %while.body

while.end:                                        ; preds = %if.else.51
  %29 = load i64, i64* %lpath, align 8
  %call53 = call i64 @Fnreverse(i64 %29)
  ret i64 %call53
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i64 @Ffind_file_name_handler(i64, i64) #3

declare i64 @Fget(i64, i64) #3

declare i64 @concat2(i64, i64) #3

declare i64 @Fnreverse(i64) #3

; Function Attrs: nounwind uwtable
define i64 @Fdaemonp() #7 {
entry:
  %retval = alloca i64, align 8
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @daemon_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** @daemon_name, align 8
  %call = call i64 @build_string(i8* %2)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

if.else.3:                                        ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.else, %if.then.1
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @Fdaemon_initialized() #7 {
entry:
  %err = alloca i8, align 1
  %nfd = alloca i32, align 4
  store i8 0, i8* %err, align 1
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.72, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.73, i32 0, i32 0)) #10
  unreachable

if.end.3:                                         ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 1), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %2, %call
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  call void (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.74, i32 0, i32 0)) #10
  unreachable

if.end.6:                                         ; preds = %if.end.3
  %call7 = call i32 @emacs_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 2, i32 0)
  store i32 %call7, i32* %nfd, align 4
  %3 = load i32, i32* %nfd, align 4
  %cmp8 = icmp slt i32 %3, 0
  %conv = zext i1 %cmp8 to i32
  %4 = load i8, i8* %err, align 1
  %tobool = trunc i8 %4 to i1
  %conv9 = zext i1 %tobool to i32
  %or = or i32 %conv9, %conv
  %tobool10 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool10 to i8
  store i8 %frombool, i8* %err, align 1
  %5 = load i32, i32* %nfd, align 4
  %call11 = call i32 @dup2(i32 %5, i32 0) #2
  %cmp12 = icmp slt i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %6 = load i8, i8* %err, align 1
  %tobool14 = trunc i8 %6 to i1
  %conv15 = zext i1 %tobool14 to i32
  %or16 = or i32 %conv15, %conv13
  %tobool17 = icmp ne i32 %or16, 0
  %frombool18 = zext i1 %tobool17 to i8
  store i8 %frombool18, i8* %err, align 1
  %7 = load i32, i32* %nfd, align 4
  %call19 = call i32 @dup2(i32 %7, i32 1) #2
  %cmp20 = icmp slt i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %8 = load i8, i8* %err, align 1
  %tobool22 = trunc i8 %8 to i1
  %conv23 = zext i1 %tobool22 to i32
  %or24 = or i32 %conv23, %conv21
  %tobool25 = icmp ne i32 %or24, 0
  %frombool26 = zext i1 %tobool25 to i8
  store i8 %frombool26, i8* %err, align 1
  %9 = load i32, i32* %nfd, align 4
  %call27 = call i32 @dup2(i32 %9, i32 2) #2
  %cmp28 = icmp slt i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %10 = load i8, i8* %err, align 1
  %tobool30 = trunc i8 %10 to i1
  %conv31 = zext i1 %tobool30 to i32
  %or32 = or i32 %conv31, %conv29
  %tobool33 = icmp ne i32 %or32, 0
  %frombool34 = zext i1 %tobool33 to i8
  store i8 %frombool34, i8* %err, align 1
  %11 = load i32, i32* %nfd, align 4
  %call35 = call i32 @emacs_close(i32 %11)
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %12 = load i8, i8* %err, align 1
  %tobool38 = trunc i8 %12 to i1
  %conv39 = zext i1 %tobool38 to i32
  %or40 = or i32 %conv39, %conv37
  %tobool41 = icmp ne i32 %or40, 0
  %frombool42 = zext i1 %tobool41 to i8
  store i8 %frombool42, i8* %err, align 1
  %13 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %call43 = call i64 @write(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i64 1)
  %cmp44 = icmp slt i64 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %14 = load i8, i8* %err, align 1
  %tobool46 = trunc i8 %14 to i1
  %conv47 = zext i1 %tobool46 to i32
  %or48 = or i32 %conv47, %conv45
  %tobool49 = icmp ne i32 %or48, 0
  %frombool50 = zext i1 %tobool49 to i8
  store i8 %frombool50, i8* %err, align 1
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %call51 = call i32 @emacs_close(i32 %15)
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %16 = load i8, i8* %err, align 1
  %tobool54 = trunc i8 %16 to i1
  %conv55 = zext i1 %tobool54 to i32
  %or56 = or i32 %conv55, %conv53
  %tobool57 = icmp ne i32 %or56, 0
  %frombool58 = zext i1 %tobool57 to i8
  store i8 %frombool58, i8* %err, align 1
  store i32 -1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @daemon_pipe, i32 0, i64 1), align 4
  %17 = load i8, i8* %err, align 1
  %tobool59 = trunc i8 %17 to i1
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.6
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.77, i32 0, i32 0)) #10
  unreachable

if.end.61:                                        ; preds = %if.end.6
  %call62 = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call62
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #6

declare i64 @write(i32, i8*, i64) #3

declare i32 @close_stream(%struct._IO_FILE*) #3

; Function Attrs: noreturn
declare void @_exit(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #6

declare i64 @Ffile_name_nondirectory(i64) #3

declare i64 @Ffile_name_directory(i64) #3

declare i32 @openp(i64, i64, i64, i64*, i64, i1 zeroext) #3

declare i64 @Ffile_name_absolute_p(i64) #3

declare i64 @Ffile_exists_p(i64) #3

declare i64 @Ffile_name_as_directory(i64) #3

declare i64 @Ffile_symlink_p(i64) #3

declare noalias i8* @xmalloc(i64) #3

declare noalias i8* @xnmalloc(i64, i64) #3

; Function Attrs: noreturn
declare void @fatal(i8*, ...) #1

; Function Attrs: noreturn
declare void @emacs_abort() #1

declare void @xfree(i8*) #3

declare void @defsubr(%struct.Lisp_Subr*) #3

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #3

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #3

declare i64 @Fput(i64, i64, i64) #3

attributes #0 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
