; ModuleID = './src/xfns.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x_display_info = type { %struct.x_display_info*, %struct.terminal*, %struct._XDisplay*, i32, i64, i32, %struct.Screen*, double, double, %struct.Visual*, i64, i32, i32, i64, i64, i64, i64, i64, i64, void (%struct.frame*, i1)*, %struct._GdkCursor*, %struct._XrmHashBucketRec*, i32, i32, %struct._XGC*, %struct.Mouse_HLInfo, i32, i8*, i32, %struct.x_bitmap_record*, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.scroll_bar*, i64, i32, i32, %struct.XRectangle, i64, i64, %struct._XIM*, %struct.XIMStyles*, %struct.xim_inst_t*, %struct.color_name_cache_entry*, %struct.XColor*, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64, i64, i64, i64, i64*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.xcb_connection_t* }
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.vectorlike_header = type { i64 }
%struct.kboard = type { %struct.kboard*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i8, i8, i64 }
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
%struct.timespec = type { i64, i64 }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct.image_type = type { i32, i1 (i64)*, i1 (%struct.frame*, %struct.image*)*, void (%struct.frame*, %struct.image*)*, i1 ()*, %struct.image_type* }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.coding_system = type { i64, i32, i32, %union.anon.6, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.6 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon, %union.anon.1 }
%union.anon = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.1 = type { i32 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.7, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i64, %struct.it_slice, i64 }
%struct.composition_it = type { i64, i64, i32, i32, i64, i32, i8, i64, i32, i32, i32, i32, i32 }
%struct.xwidget = type opaque
%struct.it_slice = type { i64, i64, i64, i64 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.text_pos = type { i64, i64 }
%struct.bidi_it = type { i64, i64, i32, i64, i64, i32, i32, i32, i8, i8, i64, i64, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, i64, i32, i64, i32, i32, i32, i64, i32, i32, [128 x %struct.bidi_stack], %struct.bidi_string_data, %struct.window*, i32, i64, i8 }
%struct.bidi_saved_info = type { i64, i32, i32 }
%struct.bidi_stack = type { i64, i16, i8, i8 }
%struct.bidi_string_data = type { i64, i8*, i64, i64, i8 }
%struct.run = type { i32, i32, i32, i32, i32, i32 }
%struct.draw_fringe_bitmap_params = type { i32, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.face* }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.glyph_string = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame*, %struct.window*, %struct._XDisplay*, i64, %struct.glyph_row*, i32, %struct.XChar2b*, i32, i32, %struct.face*, %struct.font*, %struct.composition*, i64, i32, i32, i8, %struct._XGC*, %struct.glyph*, %struct.image*, %struct.xwidget*, %struct.glyph_slice, %struct.glyph_string*, %struct.glyph_string*, [2 x %struct.XRectangle], i32, i32, i32, %struct.glyph_string*, %struct.glyph_string* }
%struct.XChar2b = type { i8, i8 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct._XDisplay = type opaque
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._XrmHashBucketRec = type opaque
%struct._XGC = type opaque
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
%struct.x_bitmap_record = type { i64, i8, i64, i8*, i32, i32, i32, i32 }
%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.scroll_bar = type { %struct.vectorlike_header, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct._XIM = type opaque
%struct.XIMStyles = type { i16, i64* }
%struct.xim_inst_t = type { %struct.x_display_info*, i8* }
%struct.color_name_cache_entry = type { %struct.color_name_cache_entry*, %struct.XColor, i8* }
%struct.XColor = type { i64, i16, i16, i16, i8, i8 }
%struct.xcb_connection_t = type opaque
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.visual_class = type { i8*, i32 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.13, i16, i16, i8*, i8*, i8* }
%union.anon.13 = type { i64 ()* }
%struct.mouse_cursor_types = type { i8*, i64*, i32 }
%struct.x_output = type { i32, i32, i32, i32, i32, i64, %struct._XGC*, %struct._XGC*, %struct._XGC*, i64, i64, i64, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8, %struct._GdkGeometry, i64, %struct._GtkTooltip*, %struct._GtkWidget*, %struct._GtkWindow*, i64, %struct.font*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.XWMHints, %struct.x_display_info*, %union._XEvent*, i8, %struct._XIC*, i64, %struct._XOC*, %struct.relief, %struct.relief, i64, i32, i32, i32 }
%struct._GdkGeometry = type { i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32 }
%struct._GtkTooltip = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type { i32, i32, i32 }
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct.XWMHints = type { i64, i32, i32, i64, i64, i32, i32, i64, i64 }
%union._XEvent = type { [24 x i64] }
%struct._XIC = type opaque
%struct._XOC = type opaque
%struct.relief = type { %struct._XGC*, i64 }
%struct.Lisp_Cons = type { i64, %union.anon.12 }
%union.anon.12 = type { i64 }
%struct.xcb_get_property_cookie_t = type { i32 }
%struct.xcb_get_geometry_cookie_t = type { i32 }
%struct.xcb_query_tree_cookie_t = type { i32 }
%struct.xcb_query_tree_reply_t = type { i8, i8, i16, i32, i32, i32, i16, [14 x i8] }
%struct.xcb_translate_coordinates_cookie_t = type { i32 }
%struct.xcb_translate_coordinates_reply_t = type { i8, i8, i16, i32, i32, i16, i16 }
%struct.xcb_get_geometry_reply_t = type { i8, i8, i16, i32, i32, i16, i16, i16, i16, i16, [2 x i8] }
%struct.xcb_get_property_reply_t = type { i8, i8, i16, i32, i32, i32, i32, [12 x i8] }
%struct.xcb_generic_error_t = type { i8, i8, i16, i32, i16, i8, i8, [5 x i32], i32 }
%struct.anon.11 = type { %struct._XExtData*, %struct._XPrivate*, i32, i32, i32, i32, i8*, i64, i64, i64, i32, i64 (%struct._XDisplay*)*, i32, i32, i32, i32, i32, %struct.ScreenFormat*, i32, i32, %struct._XPrivate*, %struct._XPrivate*, i32, i64, i64, i8*, i8*, i8*, i8*, i32, %struct._XrmHashBucketRec*, i32 (%struct._XDisplay*)*, i8*, i32, i32, %struct.Screen*, i64, i64, i32, i32, i8*, i8*, i32, i8* }
%struct.ScreenFormat = type { %struct._XExtData*, i32, i32, i32 }
%struct._XPrivate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.XPoint = type { i16, i16 }
%union.Aligned_Cons = type { %struct.Lisp_Cons }
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.XSetWindowAttributes = type { i64, i64, i64, i64, i32, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64 }
%struct.XWindowAttributes = type { i32, i32, i32, i32, i32, i32, %struct.Visual*, i64, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32, %struct.Screen* }
%struct.XGCValues = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i8 }
%struct.XTextProperty = type { i8*, i64, i32, i64 }
%struct.XSizeHints = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.14, %struct.anon.14, i32, i32, i32 }
%struct.anon.14 = type { i32, i32 }
%struct.XClassHint = type { i8*, i8* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct.MonitorInfo = type { %struct.XRectangle, %struct.XRectangle, i32, i32, i8* }
%struct.XVisualInfo = type { %struct.Visual*, i64, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct._XkbDesc = type { %struct._XDisplay*, i16, i16, i8, i8, %struct._XkbControls*, %struct._XkbServerMapRec*, %struct._XkbClientMapRec*, %struct._XkbIndicatorRec*, %struct._XkbNamesRec*, %struct._XkbCompatMapRec*, %struct._XkbGeometry* }
%struct._XkbControls = type { i8, i8, i8, %struct._XkbMods, %struct._XkbMods, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [32 x i8] }
%struct._XkbMods = type { i8, i8, i16 }
%struct._XkbServerMapRec = type { i16, i16, %union._XkbAction*, %struct._XkbBehavior*, i16*, i8*, [16 x i8], i16* }
%union._XkbAction = type { %struct._XkbAnyAction }
%struct._XkbAnyAction = type { i8, [7 x i8] }
%struct._XkbBehavior = type { i8, i8 }
%struct._XkbClientMapRec = type { i8, i8, %struct._XkbKeyType*, i16, i16, i64*, %struct._XkbSymMapRec*, i8* }
%struct._XkbKeyType = type { %struct._XkbMods, i8, i8, %struct._XkbKTMapEntry*, %struct._XkbMods*, i64, i64* }
%struct._XkbKTMapEntry = type { i32, i8, %struct._XkbMods }
%struct._XkbSymMapRec = type { [4 x i8], i8, i8, i16 }
%struct._XkbIndicatorRec = type { i64, [32 x %struct._XkbIndicatorMapRec] }
%struct._XkbIndicatorMapRec = type { i8, i8, i8, i8, %struct._XkbMods, i32 }
%struct._XkbNamesRec = type { i64, i64, i64, i64, i64, [16 x i64], [32 x i64], [4 x i64], %struct._XkbKeyNameRec*, %struct._XkbKeyAliasRec*, i64*, i64, i8, i8, i16 }
%struct._XkbKeyNameRec = type { [4 x i8] }
%struct._XkbKeyAliasRec = type { [4 x i8], [4 x i8] }
%struct._XkbCompatMapRec = type { %struct._XkbSymInterpretRec*, [4 x %struct._XkbMods], i16, i16 }
%struct._XkbSymInterpretRec = type { i64, i8, i8, i8, i8, %struct._XkbAnyAction }
%struct._XkbGeometry = type opaque
%struct.mouse_cursor_data = type { i32, i32, [7 x i32], [7 x i64], [7 x i64], i8* }
%struct.XErrorEvent = type { i32, %struct._XDisplay*, i64, i64, i8, i8, i8 }

@selected_frame = external global i64, align 8
@x_display_list = external global %struct.x_display_info*, align 8
@.str = private unnamed_addr constant [44 x i8] c"X windows are not in use or not initialized\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Terminal %d is not an X display\00", align 1
@Vframe_list = external global i64, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"fontSet\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"spotLocation\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"inputStyle\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"clientWindow\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"focusWindow\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"statusAttributes\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"preeditAttributes\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"areaNeeded\00", align 1
@globals = external global %struct.emacs_globals, align 8
@.str.13 = private unnamed_addr constant [52 x i8] c"Terminal is not live, can't create new frames on it\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Invalid frame name--not a string or nil\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"minibuffer\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Minibuffer\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"iconName\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@xftfont_driver = external global %struct.font_driver, align 8
@xfont_driver = external global %struct.font_driver, align 8
@image_cache_refcount = internal global i64 0, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"fontBackend\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"FontBackend\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Invalid frame font\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"borderWidth\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"BorderWidth\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"internalBorder\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"internalBorderWidth\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"verticalScrollBars\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"ScrollBars\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"horizontalScrollBars\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"Foreground\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"pointerColor\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"borderColor\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"BorderColor\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"screenGamma\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"ScreenGamma\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"lineSpacing\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"LineSpacing\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"leftFringe\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"LeftFringe\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"rightFringe\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"RightFringe\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"scrollBarForeground\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"ScrollBarForeground\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"scrollBarBackground\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"ScrollBarBackground\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"bufferPredicate\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"BufferPredicate\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"waitForWM\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"WaitForWM\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"bitmapIcon\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"BitmapIcon\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"autoRaise\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"AutoRaiseLower\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"autoLower\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"cursorType\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"CursorType\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"scrollBarWidth\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"ScrollBarWidth\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"scrollBarHeight\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"ScrollBarHeight\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"Fullscreen\00", align 1
@Vwindow_list = external global i64, align 8
@.str.70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"when-mapped\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"not-useful\00", align 1
@.str.74 = private unnamed_addr constant [51 x i8] c"Strange value for BackingStore parameter of screen\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"static-gray\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"gray-scale\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"static-color\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"pseudo-color\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"true-color\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"direct-color\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"Display has an unknown visual class\00", align 1
@Fx_display_monitor_attributes_list.source = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), align 8
@.str.82 = private unnamed_addr constant [4 x i8] c"Gdk\00", align 1
@tip_frame = common global i64 0, align 8
@.str.83 = private unnamed_addr constant [12 x i8] c"visualClass\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"VisualClass\00", align 1
@visual_classes = internal global [7 x %struct.visual_class] [%struct.visual_class { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), i32 0 }, %struct.visual_class { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i32 1 }, %struct.visual_class { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i32 2 }, %struct.visual_class { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i32 3 }, %struct.visual_class { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i32 4 }, %struct.visual_class { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.155, i32 0, i32 0), i32 5 }, %struct.visual_class zeroinitializer], align 16
@.str.85 = private unnamed_addr constant [34 x i8] c"Invalid visual specification '%s'\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"Can't get proper X visual info\00", align 1
@.str.87 = private unnamed_addr constant [266 x i8] c"Cannot connect to X server %s.\0ACheck the DISPLAY environment variable or use `-d'.\0AAlso use the `xauth' program to verify that you have the proper\0Aauthorization information needed to connect the X server.\0AAn insecure way to solve the problem may be to use `xhost'.\0A\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"Cannot connect to X server %s\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"Display still has frames on it\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"FORMAT must be one of 8, 16 or 32\00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"Bad data in VALUE, must be number, string or cons\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"VALUE too long\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"AnyPropertyType\00", align 1
@windows_or_buffers_changed = external global i32, align 4
@.str.94 = private unnamed_addr constant [2 x i8] c" \00", align 1
@last_show_tip_args = internal global i64 0, align 8
@tip_timer = internal global i64 0, align 8
@.str.95 = private unnamed_addr constant [8 x i8] c"tooltip\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"lightyellow\00", align 1
@current_buffer = external global %struct.buffer*, align 8
@.str.97 = private unnamed_addr constant [12 x i8] c"run-at-time\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"x-hide-tip\00", align 1
@.str.99 = private unnamed_addr constant [46 x i8] c"Trying to use a menu from within a menu-entry\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"DELE\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"BKSP\00", align 1
@x_frame_parm_handlers = global [37 x void (%struct.frame*, i64, i64)*] [void (%struct.frame*, i64, i64)* @x_set_autoraise, void (%struct.frame*, i64, i64)* @x_set_autolower, void (%struct.frame*, i64, i64)* @x_set_background_color, void (%struct.frame*, i64, i64)* @x_set_border_color, void (%struct.frame*, i64, i64)* @x_set_border_width, void (%struct.frame*, i64, i64)* @x_set_cursor_color, void (%struct.frame*, i64, i64)* @x_set_cursor_type, void (%struct.frame*, i64, i64)* @x_set_font, void (%struct.frame*, i64, i64)* @x_set_foreground_color, void (%struct.frame*, i64, i64)* @x_set_icon_name, void (%struct.frame*, i64, i64)* @x_set_icon_type, void (%struct.frame*, i64, i64)* @x_set_internal_border_width, void (%struct.frame*, i64, i64)* @x_set_right_divider_width, void (%struct.frame*, i64, i64)* @x_set_bottom_divider_width, void (%struct.frame*, i64, i64)* @x_set_menu_bar_lines, void (%struct.frame*, i64, i64)* @x_set_mouse_color, void (%struct.frame*, i64, i64)* @x_explicitly_set_name, void (%struct.frame*, i64, i64)* @x_set_scroll_bar_width, void (%struct.frame*, i64, i64)* @x_set_scroll_bar_height, void (%struct.frame*, i64, i64)* @x_set_title, void (%struct.frame*, i64, i64)* @x_set_unsplittable, void (%struct.frame*, i64, i64)* @x_set_vertical_scroll_bars, void (%struct.frame*, i64, i64)* @x_set_horizontal_scroll_bars, void (%struct.frame*, i64, i64)* @x_set_visibility, void (%struct.frame*, i64, i64)* @x_set_tool_bar_lines, void (%struct.frame*, i64, i64)* @x_set_scroll_bar_foreground, void (%struct.frame*, i64, i64)* @x_set_scroll_bar_background, void (%struct.frame*, i64, i64)* @x_set_screen_gamma, void (%struct.frame*, i64, i64)* @x_set_line_spacing, void (%struct.frame*, i64, i64)* @x_set_left_fringe, void (%struct.frame*, i64, i64)* @x_set_right_fringe, void (%struct.frame*, i64, i64)* @x_set_wait_for_wm, void (%struct.frame*, i64, i64)* @x_set_fullscreen, void (%struct.frame*, i64, i64)* @x_set_font_backend, void (%struct.frame*, i64, i64)* @x_set_alpha, void (%struct.frame*, i64, i64)* @x_set_sticky, void (%struct.frame*, i64, i64)* @x_set_tool_bar_position], align 16
@.str.102 = private unnamed_addr constant [16 x i8] c"Undefined color\00", align 1
@syms_of_xfns.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.103 = private unnamed_addr constant [16 x i8] c"x-pointer-shape\00", align 1
@syms_of_xfns.o_fwd.104 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.105 = private unnamed_addr constant [26 x i8] c"x-hourglass-pointer-shape\00", align 1
@syms_of_xfns.o_fwd.106 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.107 = private unnamed_addr constant [31 x i8] c"x-sensitive-text-pointer-shape\00", align 1
@syms_of_xfns.o_fwd.108 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.109 = private unnamed_addr constant [32 x i8] c"x-window-horizontal-drag-cursor\00", align 1
@syms_of_xfns.o_fwd.110 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.111 = private unnamed_addr constant [30 x i8] c"x-window-vertical-drag-cursor\00", align 1
@syms_of_xfns.o_fwd.112 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.113 = private unnamed_addr constant [20 x i8] c"x-cursor-fore-pixel\00", align 1
@syms_of_xfns.o_fwd.114 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.115 = private unnamed_addr constant [19 x i8] c"x-max-tooltip-size\00", align 1
@syms_of_xfns.o_fwd.116 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.117 = private unnamed_addr constant [20 x i8] c"x-no-window-manager\00", align 1
@syms_of_xfns.o_fwd.118 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.119 = private unnamed_addr constant [31 x i8] c"x-pixel-size-width-font-regexp\00", align 1
@syms_of_xfns.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.120 = private unnamed_addr constant [26 x i8] c"x-gtk-use-old-file-dialog\00", align 1
@syms_of_xfns.b_fwd.121 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.122 = private unnamed_addr constant [24 x i8] c"x-gtk-show-hidden-files\00", align 1
@syms_of_xfns.b_fwd.123 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.124 = private unnamed_addr constant [28 x i8] c"x-gtk-file-dialog-help-text\00", align 1
@syms_of_xfns.b_fwd.125 = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.126 = private unnamed_addr constant [26 x i8] c"x-gtk-use-system-tooltips\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"x-toolkit\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"gtk\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"move-toolbar\00", align 1
@syms_of_xfns.o_fwd.130 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.131 = private unnamed_addr constant [19 x i8] c"gtk-version-string\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@Sx_mouse_absolute_pixel_position = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.13 { i64 ()* @Fx_mouse_absolute_pixel_position }, i16 0, i16 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i32 0, i32 0), i8* null, i8* null }, align 8
@Sx_display_list = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.13 { i64 ()* @Fx_display_list }, i16 0, i16 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.196, i32 0, i32 0), i8* null, i8* null }, align 8
@Sx_hide_tip = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.13 { i64 ()* @Fx_hide_tip }, i16 0, i16 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* null, i8* null }, align 8
@Sx_uses_old_gtk_dialog = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.13 { i64 ()* @Fx_uses_old_gtk_dialog }, i16 0, i16 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.200, i32 0, i32 0), i8* null, i8* null }, align 8
@tip_window = common global i64 0, align 8
@update_mode_lines = external global i32, align 4
@supported_xim_styles = internal constant [10 x i64] [i64 260, i64 1028, i64 2052, i64 264, i64 1032, i64 2056, i64 272, i64 1040, i64 2064, i64 0], align 16
@.str.133 = private unnamed_addr constant [35 x i8] c"-*-*-medium-r-normal--%d-*-*-*-*-*\00", align 1
@xic_create_xfontset.sizes = private unnamed_addr constant [13 x i32] [i32 0, i32 8, i32 10, i32 11, i32 12, i32 14, i32 17, i32 18, i32 20, i32 24, i32 26, i32 34, i32 0], align 16
@.str.134 = private unnamed_addr constant [29 x i8] c"-*-*-*-r-normal--*-*-*-*-*-*\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"monospace-10\00", align 1
@.str.138 = private unnamed_addr constant [52 x i8] c"-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-1\00", align 1
@.str.139 = private unnamed_addr constant [54 x i8] c"-misc-fixed-medium-r-normal-*-*-140-*-*-c-*-iso8859-1\00", align 1
@.str.140 = private unnamed_addr constant [47 x i8] c"-*-*-medium-r-normal-*-*-140-*-*-c-*-iso8859-1\00", align 1
@.str.141 = private unnamed_addr constant [40 x i8] c"-*-*-medium-r-*-*-*-*-*-*-c-*-iso8859-1\00", align 1
@.str.142 = private unnamed_addr constant [41 x i8] c"-*-fixed-*-*-*-*-*-140-*-*-c-*-iso8859-1\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@x_default_font_parameter.names = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i8* null], align 16
@.str.144 = private unnamed_addr constant [27 x i8] c"No suitable font was found\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"verticalScrollBar\00", align 1
@empty_unibyte_string = external global i64, align 8
@.str.146 = private unnamed_addr constant [57 x i8] c"Both left and top icon corners of icon must be specified\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"Unable to create window\00", align 1
@use_xim = external global i8, align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"filterEvents\00", align 1
@gray_bits = internal global [2 x i8] c"\01\02", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"_NET_WM_PID\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"StaticGray\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"GrayScale\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"StaticColor\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"PseudoColor\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"TrueColor\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"DirectColor\00", align 1
@face_change = external global i8, align 1
@.str.156 = private unnamed_addr constant [7 x i8] c" *tip*\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"cursorColor\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.160 = private unnamed_addr constant [25 x i8] c"No icon window available\00", align 1
@mouse_cursor_types = internal constant [7 x %struct.mouse_cursor_types] [%struct.mouse_cursor_types { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.emacs_globals* @globals to i8*), i64 2840) to i64*), i32 152 }, %struct.mouse_cursor_types { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.emacs_globals* @globals to i8*), i64 2824) to i64*), i32 68 }, %struct.mouse_cursor_types { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.emacs_globals* @globals to i8*), i64 2760) to i64*), i32 150 }, %struct.mouse_cursor_types { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.166, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.emacs_globals* @globals to i8*), i64 2808) to i64*), i32 152 }, %struct.mouse_cursor_types { i8* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.emacs_globals* @globals to i8*), i64 2872) to i64*), i32 60 }, %struct.mouse_cursor_types { i8* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.emacs_globals* @globals to i8*), i64 2920) to i64*), i32 108 }, %struct.mouse_cursor_types { i8* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.emacs_globals* @globals to i8*), i64 2928) to i64*), i32 116 }], align 16
@.str.161 = private unnamed_addr constant [26 x i8] c"bad %s pointer cursor: %s\00", align 1
@.str.162 = private unnamed_addr constant [27 x i8] c"can't set cursor shape: %s\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"nontext\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"hourglass\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"modeline\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"x-change-window-property\00", align 1
@Sx_change_window_property = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64)* @Fx_change_window_property }, i16 2, i16 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.167, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.168 = private unnamed_addr constant [25 x i8] c"x-delete-window-property\00", align 1
@Sx_delete_window_property = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_delete_window_property }, i16 1, i16 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.169 = private unnamed_addr constant [18 x i8] c"x-window-property\00", align 1
@Sx_window_property = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64)* @Fx_window_property }, i16 1, i16 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.169, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.170 = private unnamed_addr constant [19 x i8] c"xw-display-color-p\00", align 1
@Sxw_display_color_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fxw_display_color_p }, i16 0, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.170, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.171 = private unnamed_addr constant [22 x i8] c"x-display-grayscale-p\00", align 1
@Sx_display_grayscale_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_grayscale_p }, i16 0, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.171, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.172 = private unnamed_addr constant [19 x i8] c"xw-color-defined-p\00", align 1
@Sxw_color_defined_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fxw_color_defined_p }, i16 1, i16 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.172, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.173 = private unnamed_addr constant [16 x i8] c"xw-color-values\00", align 1
@Sxw_color_values = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fxw_color_values }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.173, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.174 = private unnamed_addr constant [26 x i8] c"x-server-max-request-size\00", align 1
@Sx_server_max_request_size = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_server_max_request_size }, i16 0, i16 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.174, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.175 = private unnamed_addr constant [16 x i8] c"x-server-vendor\00", align 1
@Sx_server_vendor = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_server_vendor }, i16 0, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.175, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.176 = private unnamed_addr constant [17 x i8] c"x-server-version\00", align 1
@Sx_server_version = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_server_version }, i16 0, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.176, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.177 = private unnamed_addr constant [22 x i8] c"x-display-pixel-width\00", align 1
@Sx_display_pixel_width = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_pixel_width }, i16 0, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.177, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.178 = private unnamed_addr constant [23 x i8] c"x-display-pixel-height\00", align 1
@Sx_display_pixel_height = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_pixel_height }, i16 0, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.178, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.179 = private unnamed_addr constant [19 x i8] c"x-display-mm-width\00", align 1
@Sx_display_mm_width = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_mm_width }, i16 0, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.179, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.180 = private unnamed_addr constant [20 x i8] c"x-display-mm-height\00", align 1
@Sx_display_mm_height = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_mm_height }, i16 0, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.180, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.181 = private unnamed_addr constant [18 x i8] c"x-display-screens\00", align 1
@Sx_display_screens = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_screens }, i16 0, i16 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.181, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.182 = private unnamed_addr constant [17 x i8] c"x-display-planes\00", align 1
@Sx_display_planes = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_planes }, i16 0, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.182, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.183 = private unnamed_addr constant [22 x i8] c"x-display-color-cells\00", align 1
@Sx_display_color_cells = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_color_cells }, i16 0, i16 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.183, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.184 = private unnamed_addr constant [23 x i8] c"x-display-visual-class\00", align 1
@Sx_display_visual_class = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_visual_class }, i16 0, i16 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.184, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.185 = private unnamed_addr constant [24 x i8] c"x-display-backing-store\00", align 1
@Sx_display_backing_store = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_backing_store }, i16 0, i16 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.185, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.186 = private unnamed_addr constant [21 x i8] c"x-display-save-under\00", align 1
@Sx_display_save_under = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_save_under }, i16 0, i16 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.186, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.187 = private unnamed_addr constant [34 x i8] c"x-display-monitor-attributes-list\00", align 1
@Sx_display_monitor_attributes_list = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_display_monitor_attributes_list }, i16 0, i16 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.187, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.188 = private unnamed_addr constant [17 x i8] c"x-frame-geometry\00", align 1
@Sx_frame_geometry = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_frame_geometry }, i16 0, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.188, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.189 = private unnamed_addr constant [14 x i8] c"x-frame-edges\00", align 1
@Sx_frame_edges = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_frame_edges }, i16 0, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.189, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.190 = private unnamed_addr constant [32 x i8] c"x-mouse-absolute-pixel-position\00", align 1
@.str.191 = private unnamed_addr constant [36 x i8] c"x-set-mouse-absolute-pixel-position\00", align 1
@Sx_set_mouse_absolute_pixel_position = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_set_mouse_absolute_pixel_position }, i16 2, i16 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.191, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.192 = private unnamed_addr constant [19 x i8] c"x-wm-set-size-hint\00", align 1
@Sx_wm_set_size_hint = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_wm_set_size_hint }, i16 0, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.192, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.193 = private unnamed_addr constant [15 x i8] c"x-create-frame\00", align 1
@Sx_create_frame = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_create_frame }, i16 1, i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.193, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.194 = private unnamed_addr constant [18 x i8] c"x-open-connection\00", align 1
@Sx_open_connection = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fx_open_connection }, i16 1, i16 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.194, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.195 = private unnamed_addr constant [19 x i8] c"x-close-connection\00", align 1
@Sx_close_connection = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_close_connection }, i16 1, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.195, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.196 = private unnamed_addr constant [15 x i8] c"x-display-list\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"x-synchronize\00", align 1
@Sx_synchronize = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_synchronize }, i16 1, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.197, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.198 = private unnamed_addr constant [26 x i8] c"x-backspace-delete-keys-p\00", align 1
@Sx_backspace_delete_keys_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_backspace_delete_keys_p }, i16 0, i16 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.198, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.199 = private unnamed_addr constant [11 x i8] c"x-show-tip\00", align 1
@Sx_show_tip = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64)* @Fx_show_tip }, i16 1, i16 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.199, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.200 = private unnamed_addr constant [22 x i8] c"x-uses-old-gtk-dialog\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"x-file-dialog\00", align 1
@Sx_file_dialog = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fx_file_dialog }, i16 2, i16 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.202 = private unnamed_addr constant [14 x i8] c"x-select-font\00", align 1
@Sx_select_font = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_select_font }, i16 0, i16 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.202, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.x_display_info* @check_x_display_info(i64 %object) #0 {
entry:
  %object.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %sf = alloca %struct.frame*, align 8
  %t = alloca %struct.terminal*, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %object, i64* %object.addr, align 8
  store %struct.x_display_info* null, %struct.x_display_info** %dpyinfo, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %sf, align 8
  %4 = load %struct.frame*, %struct.frame** %sf, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 26
  %5 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %5, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp1 = icmp eq i32 %bf.cast, 2
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.frame*, %struct.frame** %sf, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 61
  %7 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp2 = icmp ne %struct.terminal* %7, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.frame*, %struct.frame** %sf, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %10, %struct.x_display_info** %dpyinfo, align 8
  br label %if.end.7

if.else:                                          ; preds = %land.lhs.true, %if.then
  %11 = load %struct.x_display_info*, %struct.x_display_info** @x_display_list, align 8
  %cmp4 = icmp ne %struct.x_display_info* %11, null
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %12 = load %struct.x_display_info*, %struct.x_display_info** @x_display_list, align 8
  store %struct.x_display_info* %12, %struct.x_display_info** %dpyinfo, align 8
  br label %if.end

if.else.6:                                        ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then.5
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.3
  br label %if.end.28

if.else.8:                                        ; preds = %entry
  %13 = load i64, i64* %object.addr, align 8
  %call9 = call zeroext i1 @TERMINALP(i64 %13)
  br i1 %call9, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %if.else.8
  %14 = load i64, i64* %object.addr, align 8
  %call11 = call %struct.terminal* @decode_live_terminal(i64 %14)
  store %struct.terminal* %call11, %struct.terminal** %t, align 8
  %15 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type = getelementptr inbounds %struct.terminal, %struct.terminal* %15, i32 0, i32 8
  %16 = load i32, i32* %type, align 4
  %cmp12 = icmp ne i32 %16, 2
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %17 = load %struct.terminal*, %struct.terminal** %t, align 8
  %id = getelementptr inbounds %struct.terminal, %struct.terminal* %17, i32 0, i32 6
  %18 = load i32, i32* %id, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %18) #7
  unreachable

if.end.14:                                        ; preds = %if.then.10
  %19 = load %struct.terminal*, %struct.terminal** %t, align 8
  %display_info15 = getelementptr inbounds %struct.terminal, %struct.terminal* %19, i32 0, i32 12
  %x16 = bitcast %union.display_info* %display_info15 to %struct.x_display_info**
  %20 = load %struct.x_display_info*, %struct.x_display_info** %x16, align 8
  store %struct.x_display_info* %20, %struct.x_display_info** %dpyinfo, align 8
  br label %if.end.27

if.else.17:                                       ; preds = %if.else.8
  %21 = load i64, i64* %object.addr, align 8
  %call18 = call zeroext i1 @STRINGP(i64 %21)
  br i1 %call18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else.17
  %22 = load i64, i64* %object.addr, align 8
  %call20 = call %struct.x_display_info* @x_display_info_for_name(i64 %22)
  store %struct.x_display_info* %call20, %struct.x_display_info** %dpyinfo, align 8
  br label %if.end.26

if.else.21:                                       ; preds = %if.else.17
  %23 = load i64, i64* %object.addr, align 8
  %call22 = call %struct.frame* @decode_window_system_frame(i64 %23)
  store %struct.frame* %call22, %struct.frame** %f, align 8
  %24 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data23 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x24 = bitcast %union.output_data* %output_data23 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x24, align 8
  %display_info25 = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 44
  %26 = load %struct.x_display_info*, %struct.x_display_info** %display_info25, align 8
  store %struct.x_display_info* %26, %struct.x_display_info** %dpyinfo, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.21, %if.then.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.14
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.7
  %27 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  ret %struct.x_display_info* %27
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare zeroext i1 @TERMINALP(i64) #1

declare %struct.terminal* @decode_live_terminal(i64) #1

declare zeroext i1 @STRINGP(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.x_display_info* @x_display_info_for_name(i64 %name) #0 {
entry:
  %retval = alloca %struct.x_display_info*, align 8
  %name.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load %struct.x_display_info*, %struct.x_display_info** @x_display_list, align 8
  store %struct.x_display_info* %1, %struct.x_display_info** %dpyinfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %tobool = icmp ne %struct.x_display_info* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %name_list_element = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 4
  %4 = load i64, i64* %name_list_element, align 8
  %sub = sub nsw i64 %4, 3
  %5 = inttoptr i64 %sub to i8*
  %6 = bitcast i8* %5 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %6, i32 0, i32 0
  %7 = load i64, i64* %car, align 8
  %8 = load i64, i64* %name.addr, align 8
  %call = call i64 @Fstring_equal(i64 %7, i64 %8)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  store %struct.x_display_info* %9, %struct.x_display_info** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %next = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 0
  %11 = load %struct.x_display_info*, %struct.x_display_info** %next, align 8
  store %struct.x_display_info* %11, %struct.x_display_info** %dpyinfo, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  store i64 %12, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 357), align 8
  call void @validate_x_resource_name()
  %13 = load i64, i64* %name.addr, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 357), align 8
  %call2 = call i8* @SSDATA(i64 %14)
  %call3 = call %struct.x_display_info* @x_term_init(i64 %13, i8* null, i8* %call2)
  store %struct.x_display_info* %call3, %struct.x_display_info** %dpyinfo, align 8
  %15 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %cmp4 = icmp eq %struct.x_display_info* %15, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %for.end
  %16 = load i64, i64* %name.addr, align 8
  %call6 = call i8* @SDATA(i64 %16)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i32 0, i32 0), i8* %call6) #7
  unreachable

if.end.7:                                         ; preds = %for.end
  %call8 = call i64 @make_natnum(i64 11)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 334), align 8
  %17 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  store %struct.x_display_info* %17, %struct.x_display_info** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %18 = load %struct.x_display_info*, %struct.x_display_info** %retval
  ret %struct.x_display_info* %18
}

declare %struct.frame* @decode_window_system_frame(i64) #1

; Function Attrs: nounwind uwtable
define void @x_real_pos_and_offsets(%struct.frame* %f, i32* %left_offset_x, i32* %right_offset_x, i32* %top_offset_y, i32* %bottom_offset_y, i32* %x_pixels_diff, i32* %y_pixels_diff, i32* %xptr, i32* %yptr, i32* %outer_border) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %left_offset_x.addr = alloca i32*, align 8
  %right_offset_x.addr = alloca i32*, align 8
  %top_offset_y.addr = alloca i32*, align 8
  %bottom_offset_y.addr = alloca i32*, align 8
  %x_pixels_diff.addr = alloca i32*, align 8
  %y_pixels_diff.addr = alloca i32*, align 8
  %xptr.addr = alloca i32*, align 8
  %yptr.addr = alloca i32*, align 8
  %outer_border.addr = alloca i32*, align 8
  %win_x = alloca i32, align 4
  %win_y = alloca i32, align 4
  %outer_x = alloca i32, align 4
  %outer_y = alloca i32, align 4
  %real_x = alloca i32, align 4
  %real_y = alloca i32, align 4
  %had_errors = alloca i8, align 1
  %win = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %max_len = alloca i64, align 8
  %target_type = alloca i64, align 8
  %ow = alloca i32, align 4
  %oh = alloca i32, align 4
  %fw = alloca i32, align 4
  %fh = alloca i32, align 4
  %bw = alloca i32, align 4
  %xcb_conn = alloca %struct.xcb_connection_t*, align 8
  %prop_cookie = alloca %struct.xcb_get_property_cookie_t, align 4
  %outer_geom_cookie = alloca %struct.xcb_get_geometry_cookie_t, align 4
  %sent_requests = alloca i8, align 1
  %wm_window = alloca i64, align 8
  %rootw = alloca i64, align 8
  %query_tree_cookie = alloca %struct.xcb_query_tree_cookie_t, align 4
  %query_tree = alloca %struct.xcb_query_tree_reply_t*, align 8
  %coerce = alloca %struct.xcb_query_tree_cookie_t, align 4
  %geom_cookie = alloca %struct.xcb_get_geometry_cookie_t, align 4
  %trans_cookie = alloca %struct.xcb_translate_coordinates_cookie_t, align 4
  %outer_trans_cookie = alloca %struct.xcb_translate_coordinates_cookie_t, align 4
  %trans = alloca %struct.xcb_translate_coordinates_reply_t*, align 8
  %geom = alloca %struct.xcb_get_geometry_reply_t*, align 8
  %coerce70 = alloca %struct.xcb_get_geometry_cookie_t, align 4
  %coerce82 = alloca %struct.xcb_translate_coordinates_cookie_t, align 4
  %coerce157 = alloca %struct.xcb_translate_coordinates_cookie_t, align 4
  %coerce196 = alloca %struct.xcb_get_geometry_cookie_t, align 4
  %coerce211 = alloca %struct.xcb_get_property_cookie_t, align 4
  %outer_trans = alloca %struct.xcb_translate_coordinates_reply_t*, align 8
  %prop = alloca %struct.xcb_get_property_reply_t*, align 8
  %fe = alloca i32*, align 8
  %outer_geom = alloca %struct.xcb_get_geometry_reply_t*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32* %left_offset_x, i32** %left_offset_x.addr, align 8
  store i32* %right_offset_x, i32** %right_offset_x.addr, align 8
  store i32* %top_offset_y, i32** %top_offset_y.addr, align 8
  store i32* %bottom_offset_y, i32** %bottom_offset_y.addr, align 8
  store i32* %x_pixels_diff, i32** %x_pixels_diff.addr, align 8
  store i32* %y_pixels_diff, i32** %y_pixels_diff.addr, align 8
  store i32* %xptr, i32** %xptr.addr, align 8
  store i32* %yptr, i32** %yptr.addr, align 8
  store i32* %outer_border, i32** %outer_border.addr, align 8
  store i32 0, i32* %win_x, align 4
  store i32 0, i32* %win_y, align 4
  store i32 0, i32* %outer_x, align 4
  store i32 0, i32* %outer_y, align 4
  store i32 0, i32* %real_x, align 4
  store i32 0, i32* %real_y, align 4
  store i8 0, i8* %had_errors, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %parent_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 11
  %2 = load i64, i64* %parent_desc, align 8
  store i64 %2, i64* %win, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %5, %struct.x_display_info** %dpyinfo, align 8
  store i64 400, i64* %max_len, align 8
  store i64 6, i64* %target_type, align 8
  store i32 0, i32* %ow, align 4
  store i32 0, i32* %oh, align 4
  store i32 0, i32* %fw, align 4
  store i32 0, i32* %fh, align 4
  store i32 0, i32* %bw, align 4
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %xcb_connection = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 128
  %7 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_connection, align 8
  store %struct.xcb_connection_t* %7, %struct.xcb_connection_t** %xcb_conn, align 8
  store i8 0, i8* %sent_requests, align 1
  %8 = load i32*, i32** %x_pixels_diff.addr, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32*, i32** %x_pixels_diff.addr, align 8
  store i32 0, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32*, i32** %y_pixels_diff.addr, align 8
  %tobool3 = icmp ne i32* %10, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load i32*, i32** %y_pixels_diff.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %12 = load i32*, i32** %left_offset_x.addr, align 8
  %tobool6 = icmp ne i32* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %13 = load i32*, i32** %left_offset_x.addr, align 8
  store i32 0, i32* %13, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %14 = load i32*, i32** %top_offset_y.addr, align 8
  %tobool9 = icmp ne i32* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %15 = load i32*, i32** %top_offset_y.addr, align 8
  store i32 0, i32* %15, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %16 = load i32*, i32** %right_offset_x.addr, align 8
  %tobool12 = icmp ne i32* %16, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %17 = load i32*, i32** %right_offset_x.addr, align 8
  store i32 0, i32* %17, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %18 = load i32*, i32** %bottom_offset_y.addr, align 8
  %tobool15 = icmp ne i32* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %19 = load i32*, i32** %bottom_offset_y.addr, align 8
  store i32 0, i32* %19, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %20 = load i32*, i32** %xptr.addr, align 8
  %tobool18 = icmp ne i32* %20, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %21 = load i32*, i32** %xptr.addr, align 8
  store i32 0, i32* %21, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %22 = load i32*, i32** %yptr.addr, align 8
  %tobool21 = icmp ne i32* %22, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %23 = load i32*, i32** %yptr.addr, align 8
  store i32 0, i32* %23, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %24 = load i32*, i32** %outer_border.addr, align 8
  %tobool24 = icmp ne i32* %24, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %25 = load i32*, i32** %outer_border.addr, align 8
  store i32 0, i32* %25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %26 = load i64, i64* %win, align 8
  %27 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %27, i32 0, i32 14
  %28 = load i64, i64* %root_window, align 8
  %cmp = icmp eq i64 %26, %28
  br i1 %cmp, label %if.then.27, label %if.end.50

if.then.27:                                       ; preds = %if.end.26
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data28 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x29 = bitcast %union.output_data* %output_data28 to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x29, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 12
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool30 = icmp ne %struct._GtkWidget* %31, null
  br i1 %tobool30, label %cond.true, label %cond.false.45

cond.true:                                        ; preds = %if.then.27
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data31 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 62
  %x32 = bitcast %union.output_data* %output_data31 to %struct.x_output**
  %33 = load %struct.x_output*, %struct.x_output** %x32, align 8
  %widget33 = getelementptr inbounds %struct.x_output, %struct.x_output* %33, i32 0, i32 12
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget33, align 8
  %tobool34 = icmp ne %struct._GtkWidget* %34, null
  br i1 %tobool34, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %35 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data35 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 62
  %x36 = bitcast %union.output_data* %output_data35 to %struct.x_output**
  %36 = load %struct.x_output*, %struct.x_output** %x36, align 8
  %widget37 = getelementptr inbounds %struct.x_output, %struct.x_output* %36, i32 0, i32 12
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget37, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %37)
  %tobool38 = icmp ne %struct._GdkDrawable* %call, null
  br i1 %tobool38, label %cond.true.39, label %cond.false

cond.true.39:                                     ; preds = %land.lhs.true
  %38 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data40 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 62
  %x41 = bitcast %union.output_data* %output_data40 to %struct.x_output**
  %39 = load %struct.x_output*, %struct.x_output** %x41, align 8
  %widget42 = getelementptr inbounds %struct.x_output, %struct.x_output* %39, i32 0, i32 12
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget42, align 8
  %call43 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %40)
  %call44 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call43)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.39
  %cond = phi i64 [ %call44, %cond.true.39 ], [ 0, %cond.false ]
  br label %cond.end.48

cond.false.45:                                    ; preds = %if.then.27
  %41 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data46 = getelementptr inbounds %struct.frame, %struct.frame* %41, i32 0, i32 62
  %x47 = bitcast %union.output_data* %output_data46 to %struct.x_output**
  %42 = load %struct.x_output*, %struct.x_output** %x47, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %42, i32 0, i32 9
  %43 = load i64, i64* %window_desc, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.end
  %cond49 = phi i64 [ %cond, %cond.end ], [ %43, %cond.false.45 ]
  store i64 %cond49, i64* %win, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end.48, %if.end.26
  call void @block_input()
  br label %for.cond

for.cond:                                         ; preds = %if.end.65, %if.end.50
  %44 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %45 = load i64, i64* %win, align 8
  %conv = trunc i64 %45 to i32
  %call51 = call i32 @xcb_query_tree(%struct.xcb_connection_t* %44, i32 %conv)
  %coerce.dive = getelementptr %struct.xcb_query_tree_cookie_t, %struct.xcb_query_tree_cookie_t* %coerce, i32 0, i32 0
  store i32 %call51, i32* %coerce.dive, align 4
  %46 = bitcast %struct.xcb_query_tree_cookie_t* %query_tree_cookie to i8*
  %47 = bitcast %struct.xcb_query_tree_cookie_t* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 4, i32 4, i1 false)
  %48 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %coerce.dive52 = getelementptr %struct.xcb_query_tree_cookie_t, %struct.xcb_query_tree_cookie_t* %query_tree_cookie, i32 0, i32 0
  %49 = load i32, i32* %coerce.dive52, align 4
  %call53 = call %struct.xcb_query_tree_reply_t* @xcb_query_tree_reply(%struct.xcb_connection_t* %48, i32 %49, %struct.xcb_generic_error_t** null)
  store %struct.xcb_query_tree_reply_t* %call53, %struct.xcb_query_tree_reply_t** %query_tree, align 8
  %50 = load %struct.xcb_query_tree_reply_t*, %struct.xcb_query_tree_reply_t** %query_tree, align 8
  %cmp54 = icmp eq %struct.xcb_query_tree_reply_t* %50, null
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %for.cond
  store i8 1, i8* %had_errors, align 1
  br label %if.end.59

if.else:                                          ; preds = %for.cond
  %51 = load %struct.xcb_query_tree_reply_t*, %struct.xcb_query_tree_reply_t** %query_tree, align 8
  %parent = getelementptr inbounds %struct.xcb_query_tree_reply_t, %struct.xcb_query_tree_reply_t* %51, i32 0, i32 5
  %52 = load i32, i32* %parent, align 4
  %conv57 = zext i32 %52 to i64
  store i64 %conv57, i64* %wm_window, align 8
  %53 = load %struct.xcb_query_tree_reply_t*, %struct.xcb_query_tree_reply_t** %query_tree, align 8
  %root = getelementptr inbounds %struct.xcb_query_tree_reply_t, %struct.xcb_query_tree_reply_t* %53, i32 0, i32 4
  %54 = load i32, i32* %root, align 4
  %conv58 = zext i32 %54 to i64
  store i64 %conv58, i64* %rootw, align 8
  %55 = load %struct.xcb_query_tree_reply_t*, %struct.xcb_query_tree_reply_t** %query_tree, align 8
  %56 = bitcast %struct.xcb_query_tree_reply_t* %55 to i8*
  call void @free(i8* %56) #3
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.56
  %57 = load i8, i8* %had_errors, align 1
  %tobool60 = trunc i8 %57 to i1
  br i1 %tobool60, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.59
  %58 = load i64, i64* %wm_window, align 8
  %59 = load i64, i64* %rootw, align 8
  %cmp62 = icmp eq i64 %58, %59
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false, %if.end.59
  br label %for.end

if.end.65:                                        ; preds = %lor.lhs.false
  %60 = load i64, i64* %wm_window, align 8
  store i64 %60, i64* %win, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.64
  %61 = load i8, i8* %had_errors, align 1
  %tobool66 = trunc i8 %61 to i1
  br i1 %tobool66, label %if.end.285, label %if.then.67

if.then.67:                                       ; preds = %for.end
  %62 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %63 = load i64, i64* %win, align 8
  %conv68 = trunc i64 %63 to i32
  %call69 = call i32 @xcb_get_geometry(%struct.xcb_connection_t* %62, i32 %conv68)
  %coerce.dive71 = getelementptr %struct.xcb_get_geometry_cookie_t, %struct.xcb_get_geometry_cookie_t* %coerce70, i32 0, i32 0
  store i32 %call69, i32* %coerce.dive71, align 4
  %64 = bitcast %struct.xcb_get_geometry_cookie_t* %geom_cookie to i8*
  %65 = bitcast %struct.xcb_get_geometry_cookie_t* %coerce70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 4, i32 4, i1 false)
  %66 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %67 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data72 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 62
  %x73 = bitcast %union.output_data* %output_data72 to %struct.x_output**
  %68 = load %struct.x_output*, %struct.x_output** %x73, align 8
  %display_info74 = getelementptr inbounds %struct.x_output, %struct.x_output* %68, i32 0, i32 44
  %69 = load %struct.x_display_info*, %struct.x_display_info** %display_info74, align 8
  %root_window75 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %69, i32 0, i32 14
  %70 = load i64, i64* %root_window75, align 8
  %conv76 = trunc i64 %70 to i32
  %71 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data77 = getelementptr inbounds %struct.frame, %struct.frame* %71, i32 0, i32 62
  %x78 = bitcast %union.output_data* %output_data77 to %struct.x_output**
  %72 = load %struct.x_output*, %struct.x_output** %x78, align 8
  %window_desc79 = getelementptr inbounds %struct.x_output, %struct.x_output* %72, i32 0, i32 9
  %73 = load i64, i64* %window_desc79, align 8
  %conv80 = trunc i64 %73 to i32
  %call81 = call i32 @xcb_translate_coordinates(%struct.xcb_connection_t* %66, i32 %conv76, i32 %conv80, i16 signext 0, i16 signext 0)
  %coerce.dive83 = getelementptr %struct.xcb_translate_coordinates_cookie_t, %struct.xcb_translate_coordinates_cookie_t* %coerce82, i32 0, i32 0
  store i32 %call81, i32* %coerce.dive83, align 4
  %74 = bitcast %struct.xcb_translate_coordinates_cookie_t* %trans_cookie to i8*
  %75 = bitcast %struct.xcb_translate_coordinates_cookie_t* %coerce82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 4, i32 4, i1 false)
  %76 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data84 = getelementptr inbounds %struct.frame, %struct.frame* %76, i32 0, i32 62
  %x85 = bitcast %union.output_data* %output_data84 to %struct.x_output**
  %77 = load %struct.x_output*, %struct.x_output** %x85, align 8
  %window_desc86 = getelementptr inbounds %struct.x_output, %struct.x_output* %77, i32 0, i32 9
  %78 = load i64, i64* %window_desc86, align 8
  %79 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data87 = getelementptr inbounds %struct.frame, %struct.frame* %79, i32 0, i32 62
  %x88 = bitcast %union.output_data* %output_data87 to %struct.x_output**
  %80 = load %struct.x_output*, %struct.x_output** %x88, align 8
  %widget89 = getelementptr inbounds %struct.x_output, %struct.x_output* %80, i32 0, i32 12
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %widget89, align 8
  %tobool90 = icmp ne %struct._GtkWidget* %81, null
  br i1 %tobool90, label %cond.true.91, label %cond.false.111

cond.true.91:                                     ; preds = %if.then.67
  %82 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data92 = getelementptr inbounds %struct.frame, %struct.frame* %82, i32 0, i32 62
  %x93 = bitcast %union.output_data* %output_data92 to %struct.x_output**
  %83 = load %struct.x_output*, %struct.x_output** %x93, align 8
  %widget94 = getelementptr inbounds %struct.x_output, %struct.x_output* %83, i32 0, i32 12
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %widget94, align 8
  %tobool95 = icmp ne %struct._GtkWidget* %84, null
  br i1 %tobool95, label %land.lhs.true.96, label %cond.false.108

land.lhs.true.96:                                 ; preds = %cond.true.91
  %85 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data97 = getelementptr inbounds %struct.frame, %struct.frame* %85, i32 0, i32 62
  %x98 = bitcast %union.output_data* %output_data97 to %struct.x_output**
  %86 = load %struct.x_output*, %struct.x_output** %x98, align 8
  %widget99 = getelementptr inbounds %struct.x_output, %struct.x_output* %86, i32 0, i32 12
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %widget99, align 8
  %call100 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %87)
  %tobool101 = icmp ne %struct._GdkDrawable* %call100, null
  br i1 %tobool101, label %cond.true.102, label %cond.false.108

cond.true.102:                                    ; preds = %land.lhs.true.96
  %88 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data103 = getelementptr inbounds %struct.frame, %struct.frame* %88, i32 0, i32 62
  %x104 = bitcast %union.output_data* %output_data103 to %struct.x_output**
  %89 = load %struct.x_output*, %struct.x_output** %x104, align 8
  %widget105 = getelementptr inbounds %struct.x_output, %struct.x_output* %89, i32 0, i32 12
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %widget105, align 8
  %call106 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %90)
  %call107 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call106)
  br label %cond.end.109

cond.false.108:                                   ; preds = %land.lhs.true.96, %cond.true.91
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.102
  %cond110 = phi i64 [ %call107, %cond.true.102 ], [ 0, %cond.false.108 ]
  br label %cond.end.115

cond.false.111:                                   ; preds = %if.then.67
  %91 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data112 = getelementptr inbounds %struct.frame, %struct.frame* %91, i32 0, i32 62
  %x113 = bitcast %union.output_data* %output_data112 to %struct.x_output**
  %92 = load %struct.x_output*, %struct.x_output** %x113, align 8
  %window_desc114 = getelementptr inbounds %struct.x_output, %struct.x_output* %92, i32 0, i32 9
  %93 = load i64, i64* %window_desc114, align 8
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.111, %cond.end.109
  %cond116 = phi i64 [ %cond110, %cond.end.109 ], [ %93, %cond.false.111 ]
  %cmp117 = icmp ne i64 %78, %cond116
  br i1 %cmp117, label %if.then.119, label %if.end.159

if.then.119:                                      ; preds = %cond.end.115
  %94 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %95 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data120 = getelementptr inbounds %struct.frame, %struct.frame* %95, i32 0, i32 62
  %x121 = bitcast %union.output_data* %output_data120 to %struct.x_output**
  %96 = load %struct.x_output*, %struct.x_output** %x121, align 8
  %display_info122 = getelementptr inbounds %struct.x_output, %struct.x_output* %96, i32 0, i32 44
  %97 = load %struct.x_display_info*, %struct.x_display_info** %display_info122, align 8
  %root_window123 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %97, i32 0, i32 14
  %98 = load i64, i64* %root_window123, align 8
  %conv124 = trunc i64 %98 to i32
  %99 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data125 = getelementptr inbounds %struct.frame, %struct.frame* %99, i32 0, i32 62
  %x126 = bitcast %union.output_data* %output_data125 to %struct.x_output**
  %100 = load %struct.x_output*, %struct.x_output** %x126, align 8
  %widget127 = getelementptr inbounds %struct.x_output, %struct.x_output* %100, i32 0, i32 12
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %widget127, align 8
  %tobool128 = icmp ne %struct._GtkWidget* %101, null
  br i1 %tobool128, label %cond.true.129, label %cond.false.149

cond.true.129:                                    ; preds = %if.then.119
  %102 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data130 = getelementptr inbounds %struct.frame, %struct.frame* %102, i32 0, i32 62
  %x131 = bitcast %union.output_data* %output_data130 to %struct.x_output**
  %103 = load %struct.x_output*, %struct.x_output** %x131, align 8
  %widget132 = getelementptr inbounds %struct.x_output, %struct.x_output* %103, i32 0, i32 12
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %widget132, align 8
  %tobool133 = icmp ne %struct._GtkWidget* %104, null
  br i1 %tobool133, label %land.lhs.true.134, label %cond.false.146

land.lhs.true.134:                                ; preds = %cond.true.129
  %105 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data135 = getelementptr inbounds %struct.frame, %struct.frame* %105, i32 0, i32 62
  %x136 = bitcast %union.output_data* %output_data135 to %struct.x_output**
  %106 = load %struct.x_output*, %struct.x_output** %x136, align 8
  %widget137 = getelementptr inbounds %struct.x_output, %struct.x_output* %106, i32 0, i32 12
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %widget137, align 8
  %call138 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %107)
  %tobool139 = icmp ne %struct._GdkDrawable* %call138, null
  br i1 %tobool139, label %cond.true.140, label %cond.false.146

cond.true.140:                                    ; preds = %land.lhs.true.134
  %108 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data141 = getelementptr inbounds %struct.frame, %struct.frame* %108, i32 0, i32 62
  %x142 = bitcast %union.output_data* %output_data141 to %struct.x_output**
  %109 = load %struct.x_output*, %struct.x_output** %x142, align 8
  %widget143 = getelementptr inbounds %struct.x_output, %struct.x_output* %109, i32 0, i32 12
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %widget143, align 8
  %call144 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %110)
  %call145 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call144)
  br label %cond.end.147

cond.false.146:                                   ; preds = %land.lhs.true.134, %cond.true.129
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.140
  %cond148 = phi i64 [ %call145, %cond.true.140 ], [ 0, %cond.false.146 ]
  br label %cond.end.153

cond.false.149:                                   ; preds = %if.then.119
  %111 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data150 = getelementptr inbounds %struct.frame, %struct.frame* %111, i32 0, i32 62
  %x151 = bitcast %union.output_data* %output_data150 to %struct.x_output**
  %112 = load %struct.x_output*, %struct.x_output** %x151, align 8
  %window_desc152 = getelementptr inbounds %struct.x_output, %struct.x_output* %112, i32 0, i32 9
  %113 = load i64, i64* %window_desc152, align 8
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.149, %cond.end.147
  %cond154 = phi i64 [ %cond148, %cond.end.147 ], [ %113, %cond.false.149 ]
  %conv155 = trunc i64 %cond154 to i32
  %call156 = call i32 @xcb_translate_coordinates(%struct.xcb_connection_t* %94, i32 %conv124, i32 %conv155, i16 signext 0, i16 signext 0)
  %coerce.dive158 = getelementptr %struct.xcb_translate_coordinates_cookie_t, %struct.xcb_translate_coordinates_cookie_t* %coerce157, i32 0, i32 0
  store i32 %call156, i32* %coerce.dive158, align 4
  %114 = bitcast %struct.xcb_translate_coordinates_cookie_t* %outer_trans_cookie to i8*
  %115 = bitcast %struct.xcb_translate_coordinates_cookie_t* %coerce157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 4, i32 4, i1 false)
  br label %if.end.159

if.end.159:                                       ; preds = %cond.end.153, %cond.end.115
  %116 = load i32*, i32** %right_offset_x.addr, align 8
  %tobool160 = icmp ne i32* %116, null
  br i1 %tobool160, label %if.then.163, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %if.end.159
  %117 = load i32*, i32** %bottom_offset_y.addr, align 8
  %tobool162 = icmp ne i32* %117, null
  br i1 %tobool162, label %if.then.163, label %if.end.198

if.then.163:                                      ; preds = %lor.lhs.false.161, %if.end.159
  %118 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %119 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data164 = getelementptr inbounds %struct.frame, %struct.frame* %119, i32 0, i32 62
  %x165 = bitcast %union.output_data* %output_data164 to %struct.x_output**
  %120 = load %struct.x_output*, %struct.x_output** %x165, align 8
  %widget166 = getelementptr inbounds %struct.x_output, %struct.x_output* %120, i32 0, i32 12
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %widget166, align 8
  %tobool167 = icmp ne %struct._GtkWidget* %121, null
  br i1 %tobool167, label %cond.true.168, label %cond.false.188

cond.true.168:                                    ; preds = %if.then.163
  %122 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data169 = getelementptr inbounds %struct.frame, %struct.frame* %122, i32 0, i32 62
  %x170 = bitcast %union.output_data* %output_data169 to %struct.x_output**
  %123 = load %struct.x_output*, %struct.x_output** %x170, align 8
  %widget171 = getelementptr inbounds %struct.x_output, %struct.x_output* %123, i32 0, i32 12
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %widget171, align 8
  %tobool172 = icmp ne %struct._GtkWidget* %124, null
  br i1 %tobool172, label %land.lhs.true.173, label %cond.false.185

land.lhs.true.173:                                ; preds = %cond.true.168
  %125 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data174 = getelementptr inbounds %struct.frame, %struct.frame* %125, i32 0, i32 62
  %x175 = bitcast %union.output_data* %output_data174 to %struct.x_output**
  %126 = load %struct.x_output*, %struct.x_output** %x175, align 8
  %widget176 = getelementptr inbounds %struct.x_output, %struct.x_output* %126, i32 0, i32 12
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %widget176, align 8
  %call177 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %127)
  %tobool178 = icmp ne %struct._GdkDrawable* %call177, null
  br i1 %tobool178, label %cond.true.179, label %cond.false.185

cond.true.179:                                    ; preds = %land.lhs.true.173
  %128 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data180 = getelementptr inbounds %struct.frame, %struct.frame* %128, i32 0, i32 62
  %x181 = bitcast %union.output_data* %output_data180 to %struct.x_output**
  %129 = load %struct.x_output*, %struct.x_output** %x181, align 8
  %widget182 = getelementptr inbounds %struct.x_output, %struct.x_output* %129, i32 0, i32 12
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %widget182, align 8
  %call183 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %130)
  %call184 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call183)
  br label %cond.end.186

cond.false.185:                                   ; preds = %land.lhs.true.173, %cond.true.168
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.179
  %cond187 = phi i64 [ %call184, %cond.true.179 ], [ 0, %cond.false.185 ]
  br label %cond.end.192

cond.false.188:                                   ; preds = %if.then.163
  %131 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data189 = getelementptr inbounds %struct.frame, %struct.frame* %131, i32 0, i32 62
  %x190 = bitcast %union.output_data* %output_data189 to %struct.x_output**
  %132 = load %struct.x_output*, %struct.x_output** %x190, align 8
  %window_desc191 = getelementptr inbounds %struct.x_output, %struct.x_output* %132, i32 0, i32 9
  %133 = load i64, i64* %window_desc191, align 8
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.188, %cond.end.186
  %cond193 = phi i64 [ %cond187, %cond.end.186 ], [ %133, %cond.false.188 ]
  %conv194 = trunc i64 %cond193 to i32
  %call195 = call i32 @xcb_get_geometry(%struct.xcb_connection_t* %118, i32 %conv194)
  %coerce.dive197 = getelementptr %struct.xcb_get_geometry_cookie_t, %struct.xcb_get_geometry_cookie_t* %coerce196, i32 0, i32 0
  store i32 %call195, i32* %coerce.dive197, align 4
  %134 = bitcast %struct.xcb_get_geometry_cookie_t* %outer_geom_cookie to i8*
  %135 = bitcast %struct.xcb_get_geometry_cookie_t* %coerce196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 4, i32 4, i1 false)
  br label %if.end.198

if.end.198:                                       ; preds = %cond.end.192, %lor.lhs.false.161
  %136 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %root_window199 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %136, i32 0, i32 14
  %137 = load i64, i64* %root_window199, align 8
  %138 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data200 = getelementptr inbounds %struct.frame, %struct.frame* %138, i32 0, i32 62
  %x201 = bitcast %union.output_data* %output_data200 to %struct.x_output**
  %139 = load %struct.x_output*, %struct.x_output** %x201, align 8
  %parent_desc202 = getelementptr inbounds %struct.x_output, %struct.x_output* %139, i32 0, i32 11
  %140 = load i64, i64* %parent_desc202, align 8
  %cmp203 = icmp eq i64 %137, %140
  br i1 %cmp203, label %if.then.205, label %if.end.213

if.then.205:                                      ; preds = %if.end.198
  %141 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %142 = load i64, i64* %win, align 8
  %conv206 = trunc i64 %142 to i32
  %143 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_net_frame_extents = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %143, i32 0, i32 115
  %144 = load i64, i64* %Xatom_net_frame_extents, align 8
  %conv207 = trunc i64 %144 to i32
  %145 = load i64, i64* %target_type, align 8
  %conv208 = trunc i64 %145 to i32
  %146 = load i64, i64* %max_len, align 8
  %conv209 = trunc i64 %146 to i32
  %call210 = call i32 @xcb_get_property(%struct.xcb_connection_t* %141, i8 zeroext 0, i32 %conv206, i32 %conv207, i32 %conv208, i32 0, i32 %conv209)
  %coerce.dive212 = getelementptr %struct.xcb_get_property_cookie_t, %struct.xcb_get_property_cookie_t* %coerce211, i32 0, i32 0
  store i32 %call210, i32* %coerce.dive212, align 4
  %147 = bitcast %struct.xcb_get_property_cookie_t* %prop_cookie to i8*
  %148 = bitcast %struct.xcb_get_property_cookie_t* %coerce211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 4, i32 4, i1 false)
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.205, %if.end.198
  store i8 1, i8* %sent_requests, align 1
  %149 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %coerce.dive214 = getelementptr %struct.xcb_get_geometry_cookie_t, %struct.xcb_get_geometry_cookie_t* %geom_cookie, i32 0, i32 0
  %150 = load i32, i32* %coerce.dive214, align 4
  %call215 = call %struct.xcb_get_geometry_reply_t* @xcb_get_geometry_reply(%struct.xcb_connection_t* %149, i32 %150, %struct.xcb_generic_error_t** null)
  store %struct.xcb_get_geometry_reply_t* %call215, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %151 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %tobool216 = icmp ne %struct.xcb_get_geometry_reply_t* %151, null
  br i1 %tobool216, label %if.then.217, label %if.else.224

if.then.217:                                      ; preds = %if.end.213
  %152 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %x218 = getelementptr inbounds %struct.xcb_get_geometry_reply_t, %struct.xcb_get_geometry_reply_t* %152, i32 0, i32 5
  %153 = load i16, i16* %x218, align 2
  %conv219 = sext i16 %153 to i32
  store i32 %conv219, i32* %real_x, align 4
  %154 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %y = getelementptr inbounds %struct.xcb_get_geometry_reply_t, %struct.xcb_get_geometry_reply_t* %154, i32 0, i32 6
  %155 = load i16, i16* %y, align 2
  %conv220 = sext i16 %155 to i32
  store i32 %conv220, i32* %real_y, align 4
  %156 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %width = getelementptr inbounds %struct.xcb_get_geometry_reply_t, %struct.xcb_get_geometry_reply_t* %156, i32 0, i32 7
  %157 = load i16, i16* %width, align 2
  %conv221 = zext i16 %157 to i32
  store i32 %conv221, i32* %ow, align 4
  %158 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %height = getelementptr inbounds %struct.xcb_get_geometry_reply_t, %struct.xcb_get_geometry_reply_t* %158, i32 0, i32 8
  %159 = load i16, i16* %height, align 2
  %conv222 = zext i16 %159 to i32
  store i32 %conv222, i32* %oh, align 4
  %160 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %border_width = getelementptr inbounds %struct.xcb_get_geometry_reply_t, %struct.xcb_get_geometry_reply_t* %160, i32 0, i32 9
  %161 = load i16, i16* %border_width, align 2
  %conv223 = zext i16 %161 to i32
  store i32 %conv223, i32* %bw, align 4
  %162 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %geom, align 8
  %163 = bitcast %struct.xcb_get_geometry_reply_t* %162 to i8*
  call void @free(i8* %163) #3
  br label %if.end.225

if.else.224:                                      ; preds = %if.end.213
  store i8 1, i8* %had_errors, align 1
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.224, %if.then.217
  %164 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %coerce.dive226 = getelementptr %struct.xcb_translate_coordinates_cookie_t, %struct.xcb_translate_coordinates_cookie_t* %trans_cookie, i32 0, i32 0
  %165 = load i32, i32* %coerce.dive226, align 4
  %call227 = call %struct.xcb_translate_coordinates_reply_t* @xcb_translate_coordinates_reply(%struct.xcb_connection_t* %164, i32 %165, %struct.xcb_generic_error_t** null)
  store %struct.xcb_translate_coordinates_reply_t* %call227, %struct.xcb_translate_coordinates_reply_t** %trans, align 8
  %166 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %trans, align 8
  %tobool228 = icmp ne %struct.xcb_translate_coordinates_reply_t* %166, null
  br i1 %tobool228, label %if.then.229, label %if.else.232

if.then.229:                                      ; preds = %if.end.225
  %167 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %trans, align 8
  %dst_x = getelementptr inbounds %struct.xcb_translate_coordinates_reply_t, %struct.xcb_translate_coordinates_reply_t* %167, i32 0, i32 5
  %168 = load i16, i16* %dst_x, align 2
  %conv230 = sext i16 %168 to i32
  store i32 %conv230, i32* %win_x, align 4
  %169 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %trans, align 8
  %dst_y = getelementptr inbounds %struct.xcb_translate_coordinates_reply_t, %struct.xcb_translate_coordinates_reply_t* %169, i32 0, i32 6
  %170 = load i16, i16* %dst_y, align 2
  %conv231 = sext i16 %170 to i32
  store i32 %conv231, i32* %win_y, align 4
  %171 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %trans, align 8
  %172 = bitcast %struct.xcb_translate_coordinates_reply_t* %171 to i8*
  call void @free(i8* %172) #3
  br label %if.end.233

if.else.232:                                      ; preds = %if.end.225
  store i8 1, i8* %had_errors, align 1
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.232, %if.then.229
  %173 = load i32, i32* %real_x, align 4
  %174 = load i32, i32* %win_x, align 4
  %add = add nsw i32 %174, %173
  store i32 %add, i32* %win_x, align 4
  %175 = load i32, i32* %real_y, align 4
  %176 = load i32, i32* %win_y, align 4
  %add234 = add nsw i32 %176, %175
  store i32 %add234, i32* %win_y, align 4
  %177 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data235 = getelementptr inbounds %struct.frame, %struct.frame* %177, i32 0, i32 62
  %x236 = bitcast %union.output_data* %output_data235 to %struct.x_output**
  %178 = load %struct.x_output*, %struct.x_output** %x236, align 8
  %window_desc237 = getelementptr inbounds %struct.x_output, %struct.x_output* %178, i32 0, i32 9
  %179 = load i64, i64* %window_desc237, align 8
  %180 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data238 = getelementptr inbounds %struct.frame, %struct.frame* %180, i32 0, i32 62
  %x239 = bitcast %union.output_data* %output_data238 to %struct.x_output**
  %181 = load %struct.x_output*, %struct.x_output** %x239, align 8
  %widget240 = getelementptr inbounds %struct.x_output, %struct.x_output* %181, i32 0, i32 12
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %widget240, align 8
  %tobool241 = icmp ne %struct._GtkWidget* %182, null
  br i1 %tobool241, label %cond.true.242, label %cond.false.262

cond.true.242:                                    ; preds = %if.end.233
  %183 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data243 = getelementptr inbounds %struct.frame, %struct.frame* %183, i32 0, i32 62
  %x244 = bitcast %union.output_data* %output_data243 to %struct.x_output**
  %184 = load %struct.x_output*, %struct.x_output** %x244, align 8
  %widget245 = getelementptr inbounds %struct.x_output, %struct.x_output* %184, i32 0, i32 12
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %widget245, align 8
  %tobool246 = icmp ne %struct._GtkWidget* %185, null
  br i1 %tobool246, label %land.lhs.true.247, label %cond.false.259

land.lhs.true.247:                                ; preds = %cond.true.242
  %186 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data248 = getelementptr inbounds %struct.frame, %struct.frame* %186, i32 0, i32 62
  %x249 = bitcast %union.output_data* %output_data248 to %struct.x_output**
  %187 = load %struct.x_output*, %struct.x_output** %x249, align 8
  %widget250 = getelementptr inbounds %struct.x_output, %struct.x_output* %187, i32 0, i32 12
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %widget250, align 8
  %call251 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %188)
  %tobool252 = icmp ne %struct._GdkDrawable* %call251, null
  br i1 %tobool252, label %cond.true.253, label %cond.false.259

cond.true.253:                                    ; preds = %land.lhs.true.247
  %189 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data254 = getelementptr inbounds %struct.frame, %struct.frame* %189, i32 0, i32 62
  %x255 = bitcast %union.output_data* %output_data254 to %struct.x_output**
  %190 = load %struct.x_output*, %struct.x_output** %x255, align 8
  %widget256 = getelementptr inbounds %struct.x_output, %struct.x_output* %190, i32 0, i32 12
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %widget256, align 8
  %call257 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %191)
  %call258 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call257)
  br label %cond.end.260

cond.false.259:                                   ; preds = %land.lhs.true.247, %cond.true.242
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.259, %cond.true.253
  %cond261 = phi i64 [ %call258, %cond.true.253 ], [ 0, %cond.false.259 ]
  br label %cond.end.266

cond.false.262:                                   ; preds = %if.end.233
  %192 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data263 = getelementptr inbounds %struct.frame, %struct.frame* %192, i32 0, i32 62
  %x264 = bitcast %union.output_data* %output_data263 to %struct.x_output**
  %193 = load %struct.x_output*, %struct.x_output** %x264, align 8
  %window_desc265 = getelementptr inbounds %struct.x_output, %struct.x_output* %193, i32 0, i32 9
  %194 = load i64, i64* %window_desc265, align 8
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.262, %cond.end.260
  %cond267 = phi i64 [ %cond261, %cond.end.260 ], [ %194, %cond.false.262 ]
  %cmp268 = icmp eq i64 %179, %cond267
  br i1 %cmp268, label %if.then.270, label %if.else.271

if.then.270:                                      ; preds = %cond.end.266
  %195 = load i32, i32* %win_x, align 4
  store i32 %195, i32* %outer_x, align 4
  %196 = load i32, i32* %win_y, align 4
  store i32 %196, i32* %outer_y, align 4
  br label %if.end.284

if.else.271:                                      ; preds = %cond.end.266
  %197 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %coerce.dive272 = getelementptr %struct.xcb_translate_coordinates_cookie_t, %struct.xcb_translate_coordinates_cookie_t* %outer_trans_cookie, i32 0, i32 0
  %198 = load i32, i32* %coerce.dive272, align 4
  %call273 = call %struct.xcb_translate_coordinates_reply_t* @xcb_translate_coordinates_reply(%struct.xcb_connection_t* %197, i32 %198, %struct.xcb_generic_error_t** null)
  store %struct.xcb_translate_coordinates_reply_t* %call273, %struct.xcb_translate_coordinates_reply_t** %outer_trans, align 8
  %199 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %outer_trans, align 8
  %tobool274 = icmp ne %struct.xcb_translate_coordinates_reply_t* %199, null
  br i1 %tobool274, label %if.then.275, label %if.else.280

if.then.275:                                      ; preds = %if.else.271
  %200 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %outer_trans, align 8
  %dst_x276 = getelementptr inbounds %struct.xcb_translate_coordinates_reply_t, %struct.xcb_translate_coordinates_reply_t* %200, i32 0, i32 5
  %201 = load i16, i16* %dst_x276, align 2
  %conv277 = sext i16 %201 to i32
  store i32 %conv277, i32* %outer_x, align 4
  %202 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %outer_trans, align 8
  %dst_y278 = getelementptr inbounds %struct.xcb_translate_coordinates_reply_t, %struct.xcb_translate_coordinates_reply_t* %202, i32 0, i32 6
  %203 = load i16, i16* %dst_y278, align 2
  %conv279 = sext i16 %203 to i32
  store i32 %conv279, i32* %outer_y, align 4
  %204 = load %struct.xcb_translate_coordinates_reply_t*, %struct.xcb_translate_coordinates_reply_t** %outer_trans, align 8
  %205 = bitcast %struct.xcb_translate_coordinates_reply_t* %204 to i8*
  call void @free(i8* %205) #3
  br label %if.end.281

if.else.280:                                      ; preds = %if.else.271
  store i8 1, i8* %had_errors, align 1
  br label %if.end.281

if.end.281:                                       ; preds = %if.else.280, %if.then.275
  %206 = load i32, i32* %real_x, align 4
  %207 = load i32, i32* %outer_x, align 4
  %add282 = add nsw i32 %207, %206
  store i32 %add282, i32* %outer_x, align 4
  %208 = load i32, i32* %real_y, align 4
  %209 = load i32, i32* %outer_y, align 4
  %add283 = add nsw i32 %209, %208
  store i32 %add283, i32* %outer_y, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.281, %if.then.270
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %for.end
  %210 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %root_window286 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %210, i32 0, i32 14
  %211 = load i64, i64* %root_window286, align 8
  %212 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data287 = getelementptr inbounds %struct.frame, %struct.frame* %212, i32 0, i32 62
  %x288 = bitcast %union.output_data* %output_data287 to %struct.x_output**
  %213 = load %struct.x_output*, %struct.x_output** %x288, align 8
  %parent_desc289 = getelementptr inbounds %struct.x_output, %struct.x_output* %213, i32 0, i32 11
  %214 = load i64, i64* %parent_desc289, align 8
  %cmp290 = icmp eq i64 %211, %214
  br i1 %cmp290, label %if.then.292, label %if.end.322

if.then.292:                                      ; preds = %if.end.285
  %215 = load i8, i8* %sent_requests, align 1
  %tobool293 = trunc i8 %215 to i1
  br i1 %tobool293, label %if.then.294, label %if.end.321

if.then.294:                                      ; preds = %if.then.292
  %216 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %coerce.dive295 = getelementptr %struct.xcb_get_property_cookie_t, %struct.xcb_get_property_cookie_t* %prop_cookie, i32 0, i32 0
  %217 = load i32, i32* %coerce.dive295, align 4
  %call296 = call %struct.xcb_get_property_reply_t* @xcb_get_property_reply(%struct.xcb_connection_t* %216, i32 %217, %struct.xcb_generic_error_t** null)
  store %struct.xcb_get_property_reply_t* %call296, %struct.xcb_get_property_reply_t** %prop, align 8
  %218 = load %struct.xcb_get_property_reply_t*, %struct.xcb_get_property_reply_t** %prop, align 8
  %tobool297 = icmp ne %struct.xcb_get_property_reply_t* %218, null
  br i1 %tobool297, label %if.then.298, label %if.end.320

if.then.298:                                      ; preds = %if.then.294
  %219 = load %struct.xcb_get_property_reply_t*, %struct.xcb_get_property_reply_t** %prop, align 8
  %type = getelementptr inbounds %struct.xcb_get_property_reply_t, %struct.xcb_get_property_reply_t* %219, i32 0, i32 4
  %220 = load i32, i32* %type, align 4
  %conv299 = zext i32 %220 to i64
  %221 = load i64, i64* %target_type, align 8
  %cmp300 = icmp eq i64 %conv299, %221
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.319

land.lhs.true.302:                                ; preds = %if.then.298
  %222 = load %struct.xcb_get_property_reply_t*, %struct.xcb_get_property_reply_t** %prop, align 8
  %format = getelementptr inbounds %struct.xcb_get_property_reply_t, %struct.xcb_get_property_reply_t* %222, i32 0, i32 1
  %223 = load i8, i8* %format, align 1
  %conv303 = zext i8 %223 to i32
  %cmp304 = icmp eq i32 %conv303, 32
  br i1 %cmp304, label %land.lhs.true.306, label %if.end.319

land.lhs.true.306:                                ; preds = %land.lhs.true.302
  %224 = load %struct.xcb_get_property_reply_t*, %struct.xcb_get_property_reply_t** %prop, align 8
  %call307 = call i32 @xcb_get_property_value_length(%struct.xcb_get_property_reply_t* %224)
  %conv308 = sext i32 %call307 to i64
  %cmp309 = icmp eq i64 %conv308, 16
  br i1 %cmp309, label %if.then.311, label %if.end.319

if.then.311:                                      ; preds = %land.lhs.true.306
  %225 = load %struct.xcb_get_property_reply_t*, %struct.xcb_get_property_reply_t** %prop, align 8
  %call312 = call i8* @xcb_get_property_value(%struct.xcb_get_property_reply_t* %225)
  %226 = bitcast i8* %call312 to i32*
  store i32* %226, i32** %fe, align 8
  %227 = load i32*, i32** %fe, align 8
  %arrayidx = getelementptr inbounds i32, i32* %227, i64 0
  %228 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 0, %228
  store i32 %sub, i32* %outer_x, align 4
  %229 = load i32*, i32** %fe, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %229, i64 2
  %230 = load i32, i32* %arrayidx313, align 4
  %sub314 = sub nsw i32 0, %230
  store i32 %sub314, i32* %outer_y, align 4
  %231 = load i32*, i32** %fe, align 8
  %arrayidx315 = getelementptr inbounds i32, i32* %231, i64 0
  %232 = load i32, i32* %arrayidx315, align 4
  %233 = load i32, i32* %real_x, align 4
  %sub316 = sub nsw i32 %233, %232
  store i32 %sub316, i32* %real_x, align 4
  %234 = load i32*, i32** %fe, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %234, i64 2
  %235 = load i32, i32* %arrayidx317, align 4
  %236 = load i32, i32* %real_y, align 4
  %sub318 = sub nsw i32 %236, %235
  store i32 %sub318, i32* %real_y, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.311, %land.lhs.true.306, %land.lhs.true.302, %if.then.298
  %237 = load %struct.xcb_get_property_reply_t*, %struct.xcb_get_property_reply_t** %prop, align 8
  %238 = bitcast %struct.xcb_get_property_reply_t* %237 to i8*
  call void @free(i8* %238) #3
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.294
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.292
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.285
  %239 = load i32*, i32** %right_offset_x.addr, align 8
  %tobool323 = icmp ne i32* %239, null
  br i1 %tobool323, label %if.then.326, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %if.end.322
  %240 = load i32*, i32** %bottom_offset_y.addr, align 8
  %tobool325 = icmp ne i32* %240, null
  br i1 %tobool325, label %if.then.326, label %if.end.340

if.then.326:                                      ; preds = %lor.lhs.false.324, %if.end.322
  %241 = load i8, i8* %sent_requests, align 1
  %tobool327 = trunc i8 %241 to i1
  br i1 %tobool327, label %if.then.328, label %if.end.339

if.then.328:                                      ; preds = %if.then.326
  %242 = load %struct.xcb_connection_t*, %struct.xcb_connection_t** %xcb_conn, align 8
  %coerce.dive329 = getelementptr %struct.xcb_get_geometry_cookie_t, %struct.xcb_get_geometry_cookie_t* %outer_geom_cookie, i32 0, i32 0
  %243 = load i32, i32* %coerce.dive329, align 4
  %call330 = call %struct.xcb_get_geometry_reply_t* @xcb_get_geometry_reply(%struct.xcb_connection_t* %242, i32 %243, %struct.xcb_generic_error_t** null)
  store %struct.xcb_get_geometry_reply_t* %call330, %struct.xcb_get_geometry_reply_t** %outer_geom, align 8
  %244 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %outer_geom, align 8
  %tobool331 = icmp ne %struct.xcb_get_geometry_reply_t* %244, null
  br i1 %tobool331, label %if.then.332, label %if.else.337

if.then.332:                                      ; preds = %if.then.328
  %245 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %outer_geom, align 8
  %width333 = getelementptr inbounds %struct.xcb_get_geometry_reply_t, %struct.xcb_get_geometry_reply_t* %245, i32 0, i32 7
  %246 = load i16, i16* %width333, align 2
  %conv334 = zext i16 %246 to i32
  store i32 %conv334, i32* %fw, align 4
  %247 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %outer_geom, align 8
  %height335 = getelementptr inbounds %struct.xcb_get_geometry_reply_t, %struct.xcb_get_geometry_reply_t* %247, i32 0, i32 8
  %248 = load i16, i16* %height335, align 2
  %conv336 = zext i16 %248 to i32
  store i32 %conv336, i32* %fh, align 4
  %249 = load %struct.xcb_get_geometry_reply_t*, %struct.xcb_get_geometry_reply_t** %outer_geom, align 8
  %250 = bitcast %struct.xcb_get_geometry_reply_t* %249 to i8*
  call void @free(i8* %250) #3
  br label %if.end.338

if.else.337:                                      ; preds = %if.then.328
  store i8 1, i8* %had_errors, align 1
  br label %if.end.338

if.end.338:                                       ; preds = %if.else.337, %if.then.332
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %if.then.326
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %lor.lhs.false.324
  call void @unblock_input()
  %251 = load i8, i8* %had_errors, align 1
  %tobool341 = trunc i8 %251 to i1
  br i1 %tobool341, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.end.340
  br label %if.end.378

if.end.343:                                       ; preds = %if.end.340
  %252 = load i32*, i32** %x_pixels_diff.addr, align 8
  %tobool344 = icmp ne i32* %252, null
  br i1 %tobool344, label %if.then.345, label %if.end.347

if.then.345:                                      ; preds = %if.end.343
  %253 = load i32, i32* %win_x, align 4
  %sub346 = sub nsw i32 0, %253
  %254 = load i32*, i32** %x_pixels_diff.addr, align 8
  store i32 %sub346, i32* %254, align 4
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.345, %if.end.343
  %255 = load i32*, i32** %y_pixels_diff.addr, align 8
  %tobool348 = icmp ne i32* %255, null
  br i1 %tobool348, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %if.end.347
  %256 = load i32, i32* %win_y, align 4
  %sub350 = sub nsw i32 0, %256
  %257 = load i32*, i32** %y_pixels_diff.addr, align 8
  store i32 %sub350, i32* %257, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %if.end.347
  %258 = load i32*, i32** %left_offset_x.addr, align 8
  %tobool352 = icmp ne i32* %258, null
  br i1 %tobool352, label %if.then.353, label %if.end.355

if.then.353:                                      ; preds = %if.end.351
  %259 = load i32, i32* %outer_x, align 4
  %sub354 = sub nsw i32 0, %259
  %260 = load i32*, i32** %left_offset_x.addr, align 8
  store i32 %sub354, i32* %260, align 4
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.353, %if.end.351
  %261 = load i32*, i32** %top_offset_y.addr, align 8
  %tobool356 = icmp ne i32* %261, null
  br i1 %tobool356, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %if.end.355
  %262 = load i32, i32* %outer_y, align 4
  %sub358 = sub nsw i32 0, %262
  %263 = load i32*, i32** %top_offset_y.addr, align 8
  store i32 %sub358, i32* %263, align 4
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.357, %if.end.355
  %264 = load i32*, i32** %xptr.addr, align 8
  %tobool360 = icmp ne i32* %264, null
  br i1 %tobool360, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %if.end.359
  %265 = load i32, i32* %real_x, align 4
  %266 = load i32*, i32** %xptr.addr, align 8
  store i32 %265, i32* %266, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.361, %if.end.359
  %267 = load i32*, i32** %yptr.addr, align 8
  %tobool363 = icmp ne i32* %267, null
  br i1 %tobool363, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.end.362
  %268 = load i32, i32* %real_y, align 4
  %269 = load i32*, i32** %yptr.addr, align 8
  store i32 %268, i32* %269, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.364, %if.end.362
  %270 = load i32*, i32** %outer_border.addr, align 8
  %tobool366 = icmp ne i32* %270, null
  br i1 %tobool366, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %if.end.365
  %271 = load i32, i32* %bw, align 4
  %272 = load i32*, i32** %outer_border.addr, align 8
  store i32 %271, i32* %272, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.367, %if.end.365
  %273 = load i32*, i32** %right_offset_x.addr, align 8
  %tobool369 = icmp ne i32* %273, null
  br i1 %tobool369, label %if.then.370, label %if.end.373

if.then.370:                                      ; preds = %if.end.368
  %274 = load i32, i32* %ow, align 4
  %275 = load i32, i32* %fw, align 4
  %sub371 = sub i32 %274, %275
  %276 = load i32, i32* %outer_x, align 4
  %add372 = add i32 %sub371, %276
  %277 = load i32*, i32** %right_offset_x.addr, align 8
  store i32 %add372, i32* %277, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.370, %if.end.368
  %278 = load i32*, i32** %bottom_offset_y.addr, align 8
  %tobool374 = icmp ne i32* %278, null
  br i1 %tobool374, label %if.then.375, label %if.end.378

if.then.375:                                      ; preds = %if.end.373
  %279 = load i32, i32* %oh, align 4
  %280 = load i32, i32* %fh, align 4
  %sub376 = sub i32 %279, %280
  %281 = load i32, i32* %outer_y, align 4
  %add377 = add i32 %sub376, %281
  %282 = load i32*, i32** %bottom_offset_y.addr, align 8
  store i32 %add377, i32* %282, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.342, %if.then.375, %if.end.373
  ret void
}

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable*) #1

declare void @block_input() #1

declare i32 @xcb_query_tree(%struct.xcb_connection_t*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct.xcb_query_tree_reply_t* @xcb_query_tree_reply(%struct.xcb_connection_t*, i32, %struct.xcb_generic_error_t**) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @xcb_get_geometry(%struct.xcb_connection_t*, i32) #1

declare i32 @xcb_translate_coordinates(%struct.xcb_connection_t*, i32, i32, i16 signext, i16 signext) #1

declare i32 @xcb_get_property(%struct.xcb_connection_t*, i8 zeroext, i32, i32, i32, i32, i32) #1

declare %struct.xcb_get_geometry_reply_t* @xcb_get_geometry_reply(%struct.xcb_connection_t*, i32, %struct.xcb_generic_error_t**) #1

declare %struct.xcb_translate_coordinates_reply_t* @xcb_translate_coordinates_reply(%struct.xcb_connection_t*, i32, %struct.xcb_generic_error_t**) #1

declare %struct.xcb_get_property_reply_t* @xcb_get_property_reply(%struct.xcb_connection_t*, i32, %struct.xcb_generic_error_t**) #1

declare i32 @xcb_get_property_value_length(%struct.xcb_get_property_reply_t*) #1

declare i8* @xcb_get_property_value(%struct.xcb_get_property_reply_t*) #1

declare void @unblock_input() #1

; Function Attrs: nounwind uwtable
define void @x_real_positions(%struct.frame* %f, i32* %xptr, i32* %yptr) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %xptr.addr = alloca i32*, align 8
  %yptr.addr = alloca i32*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32* %xptr, i32** %xptr.addr, align 8
  store i32* %yptr, i32** %yptr.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i32*, i32** %xptr.addr, align 8
  %2 = load i32*, i32** %yptr.addr, align 8
  call void @x_real_pos_and_offsets(%struct.frame* %0, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %1, i32* %2, i32* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @x_relative_mouse_position(%struct.frame* %f, i32* %x, i32* %y) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %root = alloca i64, align 8
  %dummy_window = alloca i64, align 8
  %dummy = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  call void @block_input()
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x1 = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x1, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info4 = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 44
  %6 = load %struct.x_display_info*, %struct.x_display_info** %display_info4, align 8
  %display5 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 2
  %7 = load %struct._XDisplay*, %struct._XDisplay** %display5, align 8
  %8 = bitcast %struct._XDisplay* %7 to %struct.anon.11*
  %default_screen = getelementptr inbounds %struct.anon.11, %struct.anon.11* %8, i32 0, i32 33
  %9 = load i32, i32* %default_screen, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data6 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 62
  %x7 = bitcast %union.output_data* %output_data6 to %struct.x_output**
  %11 = load %struct.x_output*, %struct.x_output** %x7, align 8
  %display_info8 = getelementptr inbounds %struct.x_output, %struct.x_output* %11, i32 0, i32 44
  %12 = load %struct.x_display_info*, %struct.x_display_info** %display_info8, align 8
  %display9 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %12, i32 0, i32 2
  %13 = load %struct._XDisplay*, %struct._XDisplay** %display9, align 8
  %14 = bitcast %struct._XDisplay* %13 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %14, i32 0, i32 35
  %15 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %15, i64 %idxprom
  %root10 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 2
  %16 = load i64, i64* %root10, align 8
  %17 = load i32*, i32** %x.addr, align 8
  %18 = load i32*, i32** %y.addr, align 8
  %call = call i32 @XQueryPointer(%struct._XDisplay* %3, i64 %16, i64* %root, i64* %dummy_window, i32* %17, i32* %18, i32* %dummy, i32* %dummy, i32* %dummy)
  %19 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %20 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %display_info13 = getelementptr inbounds %struct.x_output, %struct.x_output* %20, i32 0, i32 44
  %21 = load %struct.x_display_info*, %struct.x_display_info** %display_info13, align 8
  %display14 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %21, i32 0, i32 2
  %22 = load %struct._XDisplay*, %struct._XDisplay** %display14, align 8
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data15 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 62
  %x16 = bitcast %union.output_data* %output_data15 to %struct.x_output**
  %24 = load %struct.x_output*, %struct.x_output** %x16, align 8
  %display_info17 = getelementptr inbounds %struct.x_output, %struct.x_output* %24, i32 0, i32 44
  %25 = load %struct.x_display_info*, %struct.x_display_info** %display_info17, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %25, i32 0, i32 14
  %26 = load i64, i64* %root_window, align 8
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data18 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 62
  %x19 = bitcast %union.output_data* %output_data18 to %struct.x_output**
  %28 = load %struct.x_output*, %struct.x_output** %x19, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %28, i32 0, i32 9
  %29 = load i64, i64* %window_desc, align 8
  %30 = load i32*, i32** %x.addr, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %y.addr, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %x.addr, align 8
  %35 = load i32*, i32** %y.addr, align 8
  %call20 = call i32 @XTranslateCoordinates(%struct._XDisplay* %22, i64 %26, i64 %29, i32 %31, i32 %33, i32* %34, i32* %35, i64* %dummy_window)
  call void @unblock_input()
  ret void
}

declare i32 @XQueryPointer(%struct._XDisplay*, i64, i64*, i64*, i32*, i32*, i32*, i32*, i32*) #1

declare i32 @XTranslateCoordinates(%struct._XDisplay*, i64, i64, i32, i32, i32*, i32*, i64*) #1

; Function Attrs: nounwind uwtable
define void @gamma_correct(%struct.frame* %f, %struct.XColor* %color) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %color.addr = alloca %struct.XColor*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.XColor* %color, %struct.XColor** %color.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %gamma = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 75
  %1 = load double, double* %gamma, align 8
  %tobool = fcmp une double %1, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %2, i32 0, i32 1
  %3 = load i16, i16* %red, align 2
  %conv = zext i16 %3 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 6.553500e+04
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %gamma2 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 75
  %5 = load double, double* %gamma2, align 8
  %call = call double @pow(double %div, double %5) #3
  %mul = fmul double %call, 6.553500e+04
  %add = fadd double %mul, 5.000000e-01
  %conv3 = fptoui double %add to i16
  %6 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %red4 = getelementptr inbounds %struct.XColor, %struct.XColor* %6, i32 0, i32 1
  store i16 %conv3, i16* %red4, align 2
  %7 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %7, i32 0, i32 2
  %8 = load i16, i16* %green, align 2
  %conv5 = zext i16 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %div7 = fdiv double %conv6, 6.553500e+04
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %gamma8 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 75
  %10 = load double, double* %gamma8, align 8
  %call9 = call double @pow(double %div7, double %10) #3
  %mul10 = fmul double %call9, 6.553500e+04
  %add11 = fadd double %mul10, 5.000000e-01
  %conv12 = fptoui double %add11 to i16
  %11 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %green13 = getelementptr inbounds %struct.XColor, %struct.XColor* %11, i32 0, i32 2
  store i16 %conv12, i16* %green13, align 2
  %12 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %12, i32 0, i32 3
  %13 = load i16, i16* %blue, align 2
  %conv14 = zext i16 %13 to i32
  %conv15 = sitofp i32 %conv14 to double
  %div16 = fdiv double %conv15, 6.553500e+04
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %gamma17 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 75
  %15 = load double, double* %gamma17, align 8
  %call18 = call double @pow(double %div16, double %15) #3
  %mul19 = fmul double %call18, 6.553500e+04
  %add20 = fadd double %mul19, 5.000000e-01
  %conv21 = fptoui double %add20 to i16
  %16 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %blue22 = getelementptr inbounds %struct.XColor, %struct.XColor* %16, i32 0, i32 3
  store i16 %conv21, i16* %blue22, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @x_defined_color(%struct.frame* %f, i8* %color_name, %struct.XColor* %color, i1 zeroext %alloc_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %color_name.addr = alloca i8*, align 8
  %color.addr = alloca %struct.XColor*, align 8
  %alloc_p.addr = alloca i8, align 1
  %success_p = alloca i8, align 1
  %cmap = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8* %color_name, i8** %color_name.addr, align 8
  store %struct.XColor* %color, %struct.XColor** %color.addr, align 8
  %frombool = zext i1 %alloc_p to i8
  store i8 %frombool, i8* %alloc_p.addr, align 1
  store i8 0, i8* %success_p, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %cmap1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 10
  %3 = load i64, i64* %cmap1, align 8
  store i64 %3, i64* %cmap, align 8
  call void @block_input()
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %5 = load i8*, i8** %color_name.addr, align 8
  %6 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %call = call zeroext i1 @xg_check_special_colors(%struct.frame* %4, i8* %5, %struct.XColor* %6)
  %frombool2 = zext i1 %call to i8
  store i8 %frombool2, i8* %success_p, align 1
  %7 = load i8, i8* %success_p, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load i8*, i8** %color_name.addr, align 8
  %10 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %call3 = call i32 @x_parse_color(%struct.frame* %8, i8* %9, %struct.XColor* %10)
  %cmp = icmp ne i32 %call3, 0
  %frombool4 = zext i1 %cmp to i8
  store i8 %frombool4, i8* %success_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8, i8* %success_p, align 1
  %tobool5 = trunc i8 %11 to i1
  br i1 %tobool5, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %12 = load i8, i8* %alloc_p.addr, align 1
  %tobool6 = trunc i8 %12 to i1
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %14 = load i64, i64* %cmap, align 8
  %15 = load %struct.XColor*, %struct.XColor** %color.addr, align 8
  %call8 = call zeroext i1 @x_alloc_nearest_color(%struct.frame* %13, i64 %14, %struct.XColor* %15)
  %frombool9 = zext i1 %call8 to i8
  store i8 %frombool9, i8* %success_p, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %land.lhs.true, %if.end
  call void @unblock_input()
  %16 = load i8, i8* %success_p, align 1
  %tobool11 = trunc i8 %16 to i1
  ret i1 %tobool11
}

declare zeroext i1 @xg_check_special_colors(%struct.frame*, i8*, %struct.XColor*) #1

declare i32 @x_parse_color(%struct.frame*, i8*, %struct.XColor*) #1

declare zeroext i1 @x_alloc_nearest_color(%struct.frame*, i64, %struct.XColor*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @xg_set_icon(%struct.frame* %f, i64 %file) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %file.addr = alloca i64, align 8
  %result = alloca i8, align 1
  %found = alloca i64, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %err = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %file, i64* %file.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i64, i64* %file.addr, align 8
  %call = call i64 @x_find_image_file(i64 %0)
  store i64 %call, i64* %found, align 8
  %1 = load i64, i64* %found, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %err, align 8
  %2 = load i64, i64* %found, align 8
  %call2 = call i64 @encode_file_name(i64 %2)
  %call3 = call i8* @SSDATA(i64 %call2)
  store i8* %call3, i8** %filename, align 8
  call void @block_input()
  %3 = load i8*, i8** %filename, align 8
  %call4 = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8* %3, %struct._GError** %err)
  store %struct._GdkPixbuf* %call4, %struct._GdkPixbuf** %pixbuf, align 8
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %4, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 12
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gtk_window_set_icon(%struct._GtkWindow* %9, %struct._GdkPixbuf* %10)
  %11 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %12 = bitcast %struct._GdkPixbuf* %11 to i8*
  call void @g_object_unref(i8* %12)
  store i8 1, i8* %result, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._GError*, %struct._GError** %err, align 8
  call void @g_error_free(%struct._GError* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  call void @unblock_input()
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %14 = load i8, i8* %result, align 1
  %tobool9 = trunc i8 %14 to i1
  ret i1 %tobool9
}

declare i64 @x_find_image_file(i64) #1

declare i8* @SSDATA(i64) #1

declare i64 @encode_file_name(i64) #1

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_file(i8*, %struct._GError**) #1

declare void @gtk_window_set_icon(%struct._GtkWindow*, %struct._GdkPixbuf*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #5

declare void @g_object_unref(i8*) #1

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @xg_set_icon_from_xpm_data(%struct.frame* %f, i8** %data) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %data.addr = alloca i8**, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  %0 = load i8**, i8*** %data.addr, align 8
  %call = call %struct._GdkPixbuf* @gdk_pixbuf_new_from_xpm_data(i8** %0)
  store %struct._GdkPixbuf* %call, %struct._GdkPixbuf** %pixbuf, align 8
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %3 = load %struct.x_output*, %struct.x_output** %x, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %3, i32 0, i32 12
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %7 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void @gtk_window_set_icon(%struct._GtkWindow* %6, %struct._GdkPixbuf* %7)
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %9 = bitcast %struct._GdkPixbuf* %8 to i8*
  call void @g_object_unref(i8* %9)
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval
  ret i1 %10
}

declare %struct._GdkPixbuf* @gdk_pixbuf_new_from_xpm_data(i8**) #1

; Function Attrs: nounwind uwtable
define void @x_change_tool_bar_height(%struct.frame* %f, i32 %height) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %height.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %tool_bar_lines = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 27
  store i32 0, i32* %tool_bar_lines, align 4
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %tool_bar_height = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 28
  store i32 0, i32* %tool_bar_height, align 4
  %2 = load i32, i32* %height.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %external_tool_bar = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 26
  %4 = bitcast i48* %external_tool_bar to i64*
  %bf.load = load i64, i64* %4, align 8
  %bf.clear = and i64 %bf.load, -33
  %bf.set = or i64 %bf.clear, 32
  store i64 %bf.set, i64* %4, align 8
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 26
  %6 = bitcast i48* %output_method to i64*
  %bf.load1 = load i64, i64* %6, align 8
  %bf.lshr = lshr i64 %bf.load1, 23
  %bf.clear2 = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear2 to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x, align 8
  %toolbar_widget = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 17
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar_widget, align 8
  %cmp3 = icmp eq %struct._GtkWidget* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %selected_window = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 6
  %11 = load i64, i64* %selected_window, align 8
  %call = call %struct.window* @XWINDOW(i64 %11)
  %update_mode_line = getelementptr inbounds %struct.window, %struct.window* %call, i32 0, i32 67
  %bf.load5 = load i16, i16* %update_mode_line, align 4
  %bf.clear6 = and i16 %bf.load5, -5
  %bf.set7 = or i16 %bf.clear6, 4
  store i16 %bf.set7, i16* %update_mode_line, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @update_frame_tool_bar(%struct.frame* %12)
  br label %if.end.18

if.else:                                          ; preds = %entry
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %external_tool_bar8 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 26
  %14 = bitcast i48* %external_tool_bar8 to i64*
  %bf.load9 = load i64, i64* %14, align 8
  %bf.lshr10 = lshr i64 %bf.load9, 5
  %bf.clear11 = and i64 %bf.lshr10, 1
  %bf.cast12 = trunc i64 %bf.clear11 to i1
  br i1 %bf.cast12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @free_frame_tool_bar(%struct.frame* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %external_tool_bar15 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 26
  %17 = bitcast i48* %external_tool_bar15 to i64*
  %bf.load16 = load i64, i64* %17, align 8
  %bf.clear17 = and i64 %bf.load16, -33
  store i64 %bf.clear17, i64* %17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.14, %if.end
  ret void
}

declare %struct.window* @XWINDOW(i64) #1

declare void @update_frame_tool_bar(%struct.frame*) #1

declare void @free_frame_tool_bar(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define void @x_implicitly_set_name(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i64, i64* %arg.addr, align 8
  call void @x_set_name(%struct.frame* %0, i64 %1, i1 zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_name(%struct.frame* %f, i64 %name, i1 zeroext %explicit) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %name.addr = alloca i64, align 8
  %explicit.addr = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  %frombool = zext i1 %explicit to i8
  store i8 %frombool, i8* %explicit.addr, align 1
  %0 = load i8, i8* %explicit.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %explicit_name = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 26
  %2 = bitcast i48* %explicit_name to i64*
  %bf.load = load i64, i64* %2, align 8
  %bf.lshr = lshr i64 %bf.load, 18
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i1
  br i1 %bf.cast, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load i64, i64* %name.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %land.lhs.true
  store i32 37, i32* @update_mode_lines, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %land.lhs.true, %if.then
  %4 = load i64, i64* %name.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %4, %call2
  %lnot = xor i1 %cmp3, true
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %explicit_name4 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 26
  %6 = bitcast i48* %explicit_name4 to i64*
  %7 = zext i1 %lnot to i64
  %bf.load5 = load i64, i64* %6, align 8
  %bf.shl = shl i64 %7, 18
  %bf.clear6 = and i64 %bf.load5, -262145
  %bf.set = or i64 %bf.clear6, %bf.shl
  store i64 %bf.set, i64* %6, align 8
  %bf.result.cast = trunc i64 %7 to i8
  %tobool7 = trunc i8 %bf.result.cast to i1
  br label %if.end.15

if.else:                                          ; preds = %entry
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %explicit_name8 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 26
  %9 = bitcast i48* %explicit_name8 to i64*
  %bf.load9 = load i64, i64* %9, align 8
  %bf.lshr10 = lshr i64 %bf.load9, 18
  %bf.clear11 = and i64 %bf.lshr10, 1
  %bf.cast12 = trunc i64 %bf.clear11 to i1
  br i1 %bf.cast12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  br label %return

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %10 = load i64, i64* %name.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %10, %call16
  br i1 %cmp17, label %if.then.18, label %if.else.30

if.then.18:                                       ; preds = %if.end.15
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %12 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %12, i32 0, i32 44
  %13 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %x_id_name = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %13, i32 0, i32 27
  %14 = load i8*, i8** %x_id_name, align 8
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %name19 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 1
  %16 = load i64, i64* %name19, align 8
  %call20 = call i8* @SSDATA(i64 %16)
  %call21 = call i32 @strcmp(i8* %14, i8* %call20) #9
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.18
  br label %return

if.end.24:                                        ; preds = %if.then.18
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data25 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 62
  %x26 = bitcast %union.output_data* %output_data25 to %struct.x_output**
  %18 = load %struct.x_output*, %struct.x_output** %x26, align 8
  %display_info27 = getelementptr inbounds %struct.x_output, %struct.x_output* %18, i32 0, i32 44
  %19 = load %struct.x_display_info*, %struct.x_display_info** %display_info27, align 8
  %x_id_name28 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 27
  %20 = load i8*, i8** %x_id_name28, align 8
  %call29 = call i64 @build_string(i8* %20)
  store i64 %call29, i64* %name.addr, align 8
  br label %if.end.31

if.else.30:                                       ; preds = %if.end.15
  %21 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %21)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.end.24
  %22 = load i64, i64* %name.addr, align 8
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %name32 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 1
  %24 = load i64, i64* %name32, align 8
  %call33 = call i64 @Fstring_equal(i64 %22, i64 %24)
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %call33, %call34
  br i1 %cmp35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.31
  br label %return

if.end.37:                                        ; preds = %if.end.31
  %25 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %26 = load i64, i64* %name.addr, align 8
  call void @fset_name(%struct.frame* %25, i64 %26)
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %title = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 3
  %28 = load i64, i64* %title, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %28, %call38
  br i1 %cmp39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %title41 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 3
  %30 = load i64, i64* %title41, align 8
  store i64 %30, i64* %name.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %32 = load i64, i64* %name.addr, align 8
  call void @x_set_name_internal(%struct.frame* %31, i64 %32)
  br label %return

return:                                           ; preds = %if.end.42, %if.then.36, %if.then.23, %if.then.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @x_set_scroll_bar_default_width(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %unit = alloca i32, align 4
  %minw = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %column_width = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 59
  %1 = load i32, i32* %column_width, align 4
  store i32 %1, i32* %unit, align 4
  %call = call i32 @xg_get_default_scrollbar_width()
  store i32 %call, i32* %minw, align 4
  %2 = load i32, i32* %minw, align 4
  %3 = load i32, i32* %unit, align 4
  %add = add nsw i32 %2, %3
  %sub = sub nsw i32 %add, 1
  %4 = load i32, i32* %unit, align 4
  %div = sdiv i32 %sub, %4
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %config_scroll_bar_cols = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 70
  store i32 %div, i32* %config_scroll_bar_cols, align 4
  %6 = load i32, i32* %minw, align 4
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %config_scroll_bar_width = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 69
  store i32 %6, i32* %config_scroll_bar_width, align 4
  ret void
}

declare i32 @xg_get_default_scrollbar_width() #1

; Function Attrs: nounwind uwtable
define void @x_set_scroll_bar_default_height(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %height = alloca i32, align 4
  %min_height = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %line_height = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 60
  %1 = load i32, i32* %line_height, align 4
  store i32 %1, i32* %height, align 4
  %call = call i32 @xg_get_default_scrollbar_height()
  store i32 %call, i32* %min_height, align 4
  %2 = load i32, i32* %min_height, align 4
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %config_scroll_bar_height = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 71
  store i32 %2, i32* %config_scroll_bar_height, align 4
  %4 = load i32, i32* %min_height, align 4
  %5 = load i32, i32* %height, align 4
  %add = add nsw i32 %4, %5
  %sub = sub nsw i32 %add, 1
  %6 = load i32, i32* %height, align 4
  %div = sdiv i32 %sub, %6
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %config_scroll_bar_lines = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 72
  store i32 %div, i32* %config_scroll_bar_lines, align 4
  ret void
}

declare i32 @xg_get_default_scrollbar_height() #1

; Function Attrs: nounwind uwtable
define void @xic_free_xfontset(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %rest = alloca i64, align 8
  %frame = alloca i64, align 8
  %shared_p = alloca i8, align 1
  %cf = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8 0, i8* %shared_p, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %xic_xfs = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 49
  %2 = load %struct._XOC*, %struct._XOC** %xic_xfs, align 8
  %tobool = icmp ne %struct._XOC* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* @Vframe_list, align 8
  store i64 %3, i64* %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, i64* %rest, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i64, i64* %rest, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  store i64 %8, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i64, i64* %frame, align 8
  %sub2 = sub nsw i64 %10, 5
  %11 = inttoptr i64 %sub2 to i8*
  %12 = bitcast i8* %11 to %struct.frame*
  store %struct.frame* %12, %struct.frame** %cf, align 8
  %13 = load %struct.frame*, %struct.frame** %cf, align 8
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %cmp3 = icmp ne %struct.frame* %13, %14
  br i1 %cmp3, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 61
  %16 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp5 = icmp ne %struct.terminal* %16, null
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.28

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %17 = load %struct.frame*, %struct.frame** %cf, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 26
  %18 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %18, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp8 = icmp eq i32 %bf.cast, 2
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.28

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %19 = load %struct.frame*, %struct.frame** %cf, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %20 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %20, i32 0, i32 44
  %21 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %23 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %display_info15 = getelementptr inbounds %struct.x_output, %struct.x_output* %23, i32 0, i32 44
  %24 = load %struct.x_display_info*, %struct.x_display_info** %display_info15, align 8
  %cmp16 = icmp eq %struct.x_display_info* %21, %24
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.28

land.lhs.true.18:                                 ; preds = %land.lhs.true.10
  %25 = load %struct.frame*, %struct.frame** %cf, align 8
  %output_data19 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 62
  %x20 = bitcast %union.output_data* %output_data19 to %struct.x_output**
  %26 = load %struct.x_output*, %struct.x_output** %x20, align 8
  %xic_xfs21 = getelementptr inbounds %struct.x_output, %struct.x_output* %26, i32 0, i32 49
  %27 = load %struct._XOC*, %struct._XOC** %xic_xfs21, align 8
  %28 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data22 = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 62
  %x23 = bitcast %union.output_data* %output_data22 to %struct.x_output**
  %29 = load %struct.x_output*, %struct.x_output** %x23, align 8
  %xic_xfs24 = getelementptr inbounds %struct.x_output, %struct.x_output* %29, i32 0, i32 49
  %30 = load %struct._XOC*, %struct._XOC** %xic_xfs24, align 8
  %cmp25 = icmp eq %struct._XOC* %27, %30
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.18
  store i8 1, i8* %shared_p, align 1
  br label %for.end

if.end.28:                                        ; preds = %land.lhs.true.18, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %31 = load i64, i64* %rest, align 8
  %sub29 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub29 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %34 = load i64, i64* %cdr, align 8
  store i64 %34, i64* %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %land.end
  %35 = load i8, i8* %shared_p, align 1
  %tobool30 = trunc i8 %35 to i1
  br i1 %tobool30, label %if.end.38, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %36 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data32 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 62
  %x33 = bitcast %union.output_data* %output_data32 to %struct.x_output**
  %37 = load %struct.x_output*, %struct.x_output** %x33, align 8
  %display_info34 = getelementptr inbounds %struct.x_output, %struct.x_output* %37, i32 0, i32 44
  %38 = load %struct.x_display_info*, %struct.x_display_info** %display_info34, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %38, i32 0, i32 2
  %39 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %40 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data35 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 62
  %x36 = bitcast %union.output_data* %output_data35 to %struct.x_output**
  %41 = load %struct.x_output*, %struct.x_output** %x36, align 8
  %xic_xfs37 = getelementptr inbounds %struct.x_output, %struct.x_output* %41, i32 0, i32 49
  %42 = load %struct._XOC*, %struct._XOC** %xic_xfs37, align 8
  call void @XFreeFontSet(%struct._XDisplay* %39, %struct._XOC* %42)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %for.end
  %43 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data39 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 62
  %x40 = bitcast %union.output_data* %output_data39 to %struct.x_output**
  %44 = load %struct.x_output*, %struct.x_output** %x40, align 8
  %xic_xfs41 = getelementptr inbounds %struct.x_output, %struct.x_output* %44, i32 0, i32 49
  store %struct._XOC* null, %struct._XOC** %xic_xfs41, align 8
  br label %return

return:                                           ; preds = %if.end.38, %if.then
  ret void
}

declare void @XFreeFontSet(%struct._XDisplay*, %struct._XOC*) #1

; Function Attrs: nounwind uwtable
define void @create_frame_xic(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %xim = alloca %struct._XIM*, align 8
  %xic = alloca %struct._XIC*, align 8
  %xfs = alloca %struct._XOC*, align 8
  %status_attr = alloca i8*, align 8
  %preedit_attr = alloca i8*, align 8
  %s_area = alloca %struct.XRectangle, align 2
  %spot = alloca %struct.XPoint, align 2
  %xic_style = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct._XIC* null, %struct._XIC** %xic, align 8
  store %struct._XOC* null, %struct._XOC** %xfs, align 8
  store i8* null, i8** %status_attr, align 8
  store i8* null, i8** %preedit_attr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %xic1 = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 47
  %2 = load %struct._XIC*, %struct._XIC** %xic1, align 8
  %tobool = icmp ne %struct._XIC* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %xim4 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 85
  %6 = load %struct._XIM*, %struct._XIM** %xim4, align 8
  store %struct._XIM* %6, %struct._XIM** %xim, align 8
  %7 = load %struct._XIM*, %struct._XIM** %xim, align 8
  %tobool5 = icmp ne %struct._XIM* %7, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  br label %out

if.end.7:                                         ; preds = %if.end
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data8 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x9 = bitcast %union.output_data* %output_data8 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x9, align 8
  %display_info10 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info10, align 8
  %xim_styles = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 86
  %11 = load %struct.XIMStyles*, %struct.XIMStyles** %xim_styles, align 8
  %call = call i64 @best_xim_style(%struct.XIMStyles* %11)
  store i64 %call, i64* %xic_style, align 8
  %12 = load i64, i64* %xic_style, align 8
  %and = and i64 %12, 260
  %tobool11 = icmp ne i64 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end.7
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call13 = call %struct._XOC* @xic_create_xfontset(%struct.frame* %13)
  store %struct._XOC* %call13, %struct._XOC** %xfs, align 8
  %14 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %tobool14 = icmp ne %struct._XOC* %14, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  br label %out

if.end.16:                                        ; preds = %if.then.12
  %15 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data17 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 62
  %x18 = bitcast %union.output_data* %output_data17 to %struct.x_output**
  %17 = load %struct.x_output*, %struct.x_output** %x18, align 8
  %xic_xfs = getelementptr inbounds %struct.x_output, %struct.x_output* %17, i32 0, i32 49
  store %struct._XOC* %15, %struct._XOC** %xic_xfs, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %if.end.7
  %18 = load i64, i64* %xic_style, align 8
  %and20 = and i64 %18, 4
  %tobool21 = icmp ne i64 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %if.end.19
  %x23 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %spot, i32 0, i32 0
  store i16 0, i16* %x23, align 2
  %y = getelementptr inbounds %struct.XPoint, %struct.XPoint* %spot, i32 0, i32 1
  store i16 1, i16* %y, align 2
  %19 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 78
  %21 = load i64, i64* %foreground_pixel, align 8
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 77
  %23 = load i64, i64* %background_pixel, align 8
  %24 = load i64, i64* %xic_style, align 8
  %and24 = and i64 %24, 4
  %tobool25 = icmp ne i64 %and24, 0
  %cond = select i1 %tobool25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* null
  %call26 = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._XOC* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 %23, i8* %cond, %struct.XPoint* %spot, i8* null)
  store i8* %call26, i8** %preedit_attr, align 8
  %25 = load i8*, i8** %preedit_attr, align 8
  %tobool27 = icmp ne i8* %25, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.22
  br label %out

if.end.29:                                        ; preds = %if.then.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.19
  %26 = load i64, i64* %xic_style, align 8
  %and31 = and i64 %26, 256
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.end.30
  %x34 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %s_area, i32 0, i32 0
  store i16 0, i16* %x34, align 2
  %y35 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %s_area, i32 0, i32 1
  store i16 0, i16* %y35, align 2
  %width = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %s_area, i32 0, i32 2
  store i16 1, i16* %width, align 2
  %height = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %s_area, i32 0, i32 3
  store i16 1, i16* %height, align 2
  %27 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %28 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel36 = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 78
  %29 = load i64, i64* %foreground_pixel36, align 8
  %30 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel37 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 77
  %31 = load i64, i64* %background_pixel37, align 8
  %call38 = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.XRectangle* %s_area, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._XOC* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 %31, i8* null)
  store i8* %call38, i8** %status_attr, align 8
  %32 = load i8*, i8** %status_attr, align 8
  %tobool39 = icmp ne i8* %32, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.then.33
  br label %out

if.end.41:                                        ; preds = %if.then.33
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.30
  %33 = load i8*, i8** %preedit_attr, align 8
  %tobool43 = icmp ne i8* %33, null
  br i1 %tobool43, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.42
  %34 = load i8*, i8** %status_attr, align 8
  %tobool44 = icmp ne i8* %34, null
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true
  %35 = load %struct._XIM*, %struct._XIM** %xim, align 8
  %36 = load i64, i64* %xic_style, align 8
  %37 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data46 = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 62
  %x47 = bitcast %union.output_data* %output_data46 to %struct.x_output**
  %38 = load %struct.x_output*, %struct.x_output** %x47, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %38, i32 0, i32 9
  %39 = load i64, i64* %window_desc, align 8
  %40 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data48 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 62
  %x49 = bitcast %union.output_data* %output_data48 to %struct.x_output**
  %41 = load %struct.x_output*, %struct.x_output** %x49, align 8
  %window_desc50 = getelementptr inbounds %struct.x_output, %struct.x_output* %41, i32 0, i32 9
  %42 = load i64, i64* %window_desc50, align 8
  %43 = load i8*, i8** %status_attr, align 8
  %44 = load i8*, i8** %preedit_attr, align 8
  %call51 = call %struct._XIC* (%struct._XIM*, ...) @XCreateIC(%struct._XIM* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* %44, i8* null)
  store %struct._XIC* %call51, %struct._XIC** %xic, align 8
  br label %if.end.81

if.else:                                          ; preds = %land.lhs.true, %if.end.42
  %45 = load i8*, i8** %preedit_attr, align 8
  %tobool52 = icmp ne i8* %45, null
  br i1 %tobool52, label %if.then.53, label %if.else.61

if.then.53:                                       ; preds = %if.else
  %46 = load %struct._XIM*, %struct._XIM** %xim, align 8
  %47 = load i64, i64* %xic_style, align 8
  %48 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data54 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 62
  %x55 = bitcast %union.output_data* %output_data54 to %struct.x_output**
  %49 = load %struct.x_output*, %struct.x_output** %x55, align 8
  %window_desc56 = getelementptr inbounds %struct.x_output, %struct.x_output* %49, i32 0, i32 9
  %50 = load i64, i64* %window_desc56, align 8
  %51 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data57 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 62
  %x58 = bitcast %union.output_data* %output_data57 to %struct.x_output**
  %52 = load %struct.x_output*, %struct.x_output** %x58, align 8
  %window_desc59 = getelementptr inbounds %struct.x_output, %struct.x_output* %52, i32 0, i32 9
  %53 = load i64, i64* %window_desc59, align 8
  %54 = load i8*, i8** %preedit_attr, align 8
  %call60 = call %struct._XIC* (%struct._XIM*, ...) @XCreateIC(%struct._XIM* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* %54, i8* null)
  store %struct._XIC* %call60, %struct._XIC** %xic, align 8
  br label %if.end.80

if.else.61:                                       ; preds = %if.else
  %55 = load i8*, i8** %status_attr, align 8
  %tobool62 = icmp ne i8* %55, null
  br i1 %tobool62, label %if.then.63, label %if.else.71

if.then.63:                                       ; preds = %if.else.61
  %56 = load %struct._XIM*, %struct._XIM** %xim, align 8
  %57 = load i64, i64* %xic_style, align 8
  %58 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data64 = getelementptr inbounds %struct.frame, %struct.frame* %58, i32 0, i32 62
  %x65 = bitcast %union.output_data* %output_data64 to %struct.x_output**
  %59 = load %struct.x_output*, %struct.x_output** %x65, align 8
  %window_desc66 = getelementptr inbounds %struct.x_output, %struct.x_output* %59, i32 0, i32 9
  %60 = load i64, i64* %window_desc66, align 8
  %61 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data67 = getelementptr inbounds %struct.frame, %struct.frame* %61, i32 0, i32 62
  %x68 = bitcast %union.output_data* %output_data67 to %struct.x_output**
  %62 = load %struct.x_output*, %struct.x_output** %x68, align 8
  %window_desc69 = getelementptr inbounds %struct.x_output, %struct.x_output* %62, i32 0, i32 9
  %63 = load i64, i64* %window_desc69, align 8
  %64 = load i8*, i8** %status_attr, align 8
  %call70 = call %struct._XIC* (%struct._XIM*, ...) @XCreateIC(%struct._XIM* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %64, i8* null)
  store %struct._XIC* %call70, %struct._XIC** %xic, align 8
  br label %if.end.79

if.else.71:                                       ; preds = %if.else.61
  %65 = load %struct._XIM*, %struct._XIM** %xim, align 8
  %66 = load i64, i64* %xic_style, align 8
  %67 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data72 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 62
  %x73 = bitcast %union.output_data* %output_data72 to %struct.x_output**
  %68 = load %struct.x_output*, %struct.x_output** %x73, align 8
  %window_desc74 = getelementptr inbounds %struct.x_output, %struct.x_output* %68, i32 0, i32 9
  %69 = load i64, i64* %window_desc74, align 8
  %70 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data75 = getelementptr inbounds %struct.frame, %struct.frame* %70, i32 0, i32 62
  %x76 = bitcast %union.output_data* %output_data75 to %struct.x_output**
  %71 = load %struct.x_output*, %struct.x_output** %x76, align 8
  %window_desc77 = getelementptr inbounds %struct.x_output, %struct.x_output* %71, i32 0, i32 9
  %72 = load i64, i64* %window_desc77, align 8
  %call78 = call %struct._XIC* (%struct._XIM*, ...) @XCreateIC(%struct._XIM* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i64 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 %72, i8* null)
  store %struct._XIC* %call78, %struct._XIC** %xic, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.71, %if.then.63
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.53
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.45
  %73 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %tobool82 = icmp ne %struct._XIC* %73, null
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %if.end.81
  br label %out

if.end.84:                                        ; preds = %if.end.81
  %74 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %75 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data85 = getelementptr inbounds %struct.frame, %struct.frame* %75, i32 0, i32 62
  %x86 = bitcast %union.output_data* %output_data85 to %struct.x_output**
  %76 = load %struct.x_output*, %struct.x_output** %x86, align 8
  %xic87 = getelementptr inbounds %struct.x_output, %struct.x_output* %76, i32 0, i32 47
  store %struct._XIC* %74, %struct._XIC** %xic87, align 8
  %77 = load i64, i64* %xic_style, align 8
  %78 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data88 = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 62
  %x89 = bitcast %union.output_data* %output_data88 to %struct.x_output**
  %79 = load %struct.x_output*, %struct.x_output** %x89, align 8
  %xic_style90 = getelementptr inbounds %struct.x_output, %struct.x_output* %79, i32 0, i32 48
  store i64 %77, i64* %xic_style90, align 8
  store %struct._XOC* null, %struct._XOC** %xfs, align 8
  br label %out

out:                                              ; preds = %if.end.84, %if.then.83, %if.then.40, %if.then.28, %if.then.15, %if.then.6, %if.then
  %80 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %tobool91 = icmp ne %struct._XOC* %80, null
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %out
  %81 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @free_frame_xic(%struct.frame* %81)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %out
  %82 = load i8*, i8** %preedit_attr, align 8
  %tobool94 = icmp ne i8* %82, null
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.93
  %83 = load i8*, i8** %preedit_attr, align 8
  %call96 = call i32 @XFree(i8* %83)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.93
  %84 = load i8*, i8** %status_attr, align 8
  %tobool98 = icmp ne i8* %84, null
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.97
  %85 = load i8*, i8** %status_attr, align 8
  %call100 = call i32 @XFree(i8* %85)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.97
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @best_xim_style(%struct.XIMStyles* %xim) #0 {
entry:
  %retval = alloca i64, align 8
  %xim.addr = alloca %struct.XIMStyles*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nr_supported = alloca i32, align 4
  store %struct.XIMStyles* %xim, %struct.XIMStyles** %xim.addr, align 8
  store i32 10, i32* %nr_supported, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nr_supported, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load %struct.XIMStyles*, %struct.XIMStyles** %xim.addr, align 8
  %count_styles = getelementptr inbounds %struct.XIMStyles, %struct.XIMStyles* %3, i32 0, i32 0
  %4 = load i16, i16* %count_styles, align 2
  %conv = zext i16 %4 to i32
  %cmp2 = icmp slt i32 %2, %conv
  br i1 %cmp2, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* @supported_xim_styles, i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.XIMStyles*, %struct.XIMStyles** %xim.addr, align 8
  %supported_styles = getelementptr inbounds %struct.XIMStyles, %struct.XIMStyles* %8, i32 0, i32 1
  %9 = load i64*, i64** %supported_styles, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %9, i64 %idxprom5
  %10 = load i64, i64* %arrayidx6, align 8
  %cmp7 = icmp eq i64 %6, %10
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [10 x i64], [10 x i64]* @supported_xim_styles, i32 0, i64 %idxprom9
  %12 = load i64, i64* %arrayidx10, align 8
  store i64 %12, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i64 1032, i64* %retval
  br label %return

return:                                           ; preds = %for.end.13, %if.then
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define internal %struct._XOC* @xic_create_xfontset(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %xfs = alloca %struct._XOC*, align 8
  %font = alloca %struct.font*, align 8
  %pixel_size = alloca i32, align 4
  %rest = alloca i64, align 8
  %frame = alloca i64, align 8
  %cf = alloca %struct.frame*, align 8
  %buf = alloca [256 x i8], align 16
  %missing_list = alloca i8**, align 8
  %missing_count = alloca i32, align 4
  %def_string = alloca i8*, align 8
  %xlfd_format = alloca i8*, align 8
  %sizes = alloca [13 x i32], align 16
  %smaller = alloca i32*, align 8
  %larger = alloca i32*, align 8
  %this_size = alloca i32, align 4
  %last_resort = alloca i8*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct._XOC* null, %struct._XOC** %xfs, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %font1 = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 25
  %2 = load %struct.font*, %struct.font** %font1, align 8
  store %struct.font* %2, %struct.font** %font, align 8
  %3 = load %struct.font*, %struct.font** %font, align 8
  %pixel_size2 = getelementptr inbounds %struct.font, %struct.font* %3, i32 0, i32 4
  %4 = load i32, i32* %pixel_size2, align 4
  store i32 %4, i32* %pixel_size, align 4
  %5 = load i64, i64* @Vframe_list, align 8
  store i64 %5, i64* %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %rest, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i64, i64* %rest, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  store i64 %10, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %12 = load i64, i64* %frame, align 8
  %sub4 = sub nsw i64 %12, 5
  %13 = inttoptr i64 %sub4 to i8*
  %14 = bitcast i8* %13 to %struct.frame*
  store %struct.frame* %14, %struct.frame** %cf, align 8
  %15 = load %struct.frame*, %struct.frame** %cf, align 8
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %cmp5 = icmp ne %struct.frame* %15, %16
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 61
  %18 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp7 = icmp ne %struct.terminal* %18, null
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %19 = load %struct.frame*, %struct.frame** %cf, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 26
  %20 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %20, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp10 = icmp eq i32 %bf.cast, 2
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %21 = load %struct.frame*, %struct.frame** %cf, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %22 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %22, i32 0, i32 44
  %23 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data15 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x16 = bitcast %union.output_data* %output_data15 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x16, align 8
  %display_info17 = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 44
  %26 = load %struct.x_display_info*, %struct.x_display_info** %display_info17, align 8
  %cmp18 = icmp eq %struct.x_display_info* %23, %26
  br i1 %cmp18, label %land.lhs.true.20, label %if.end

land.lhs.true.20:                                 ; preds = %land.lhs.true.12
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data21 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 62
  %x22 = bitcast %union.output_data* %output_data21 to %struct.x_output**
  %28 = load %struct.x_output*, %struct.x_output** %x22, align 8
  %font23 = getelementptr inbounds %struct.x_output, %struct.x_output* %28, i32 0, i32 25
  %29 = load %struct.font*, %struct.font** %font23, align 8
  %tobool = icmp ne %struct.font* %29, null
  br i1 %tobool, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %30 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data25 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 62
  %x26 = bitcast %union.output_data* %output_data25 to %struct.x_output**
  %31 = load %struct.x_output*, %struct.x_output** %x26, align 8
  %font27 = getelementptr inbounds %struct.x_output, %struct.x_output* %31, i32 0, i32 25
  %32 = load %struct.font*, %struct.font** %font27, align 8
  %pixel_size28 = getelementptr inbounds %struct.font, %struct.font* %32, i32 0, i32 4
  %33 = load i32, i32* %pixel_size28, align 4
  %34 = load i32, i32* %pixel_size, align 4
  %cmp29 = icmp eq i32 %33, %34
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.24
  %35 = load %struct.frame*, %struct.frame** %cf, align 8
  %output_data31 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 62
  %x32 = bitcast %union.output_data* %output_data31 to %struct.x_output**
  %36 = load %struct.x_output*, %struct.x_output** %x32, align 8
  %xic_xfs = getelementptr inbounds %struct.x_output, %struct.x_output* %36, i32 0, i32 49
  %37 = load %struct._XOC*, %struct._XOC** %xic_xfs, align 8
  store %struct._XOC* %37, %struct._XOC** %xfs, align 8
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.24, %land.lhs.true.20, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i64, i64* %rest, align 8
  %sub33 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub33 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %41 = load i64, i64* %cdr, align 8
  store i64 %41, i64* %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %land.end
  %42 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %tobool34 = icmp ne %struct._XOC* %42, null
  br i1 %tobool34, label %if.end.108, label %if.then.35

if.then.35:                                       ; preds = %for.end
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.133, i32 0, i32 0), i8** %xlfd_format, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %43 = load i8*, i8** %xlfd_format, align 8
  %44 = load i32, i32* %pixel_size, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %43, i32 %44) #3
  store i8** null, i8*** %missing_list, align 8
  %45 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data36 = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 62
  %x37 = bitcast %union.output_data* %output_data36 to %struct.x_output**
  %46 = load %struct.x_output*, %struct.x_output** %x37, align 8
  %display_info38 = getelementptr inbounds %struct.x_output, %struct.x_output* %46, i32 0, i32 44
  %47 = load %struct.x_display_info*, %struct.x_display_info** %display_info38, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %47, i32 0, i32 2
  %48 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call40 = call %struct._XOC* @XCreateFontSet(%struct._XDisplay* %48, i8* %arraydecay39, i8*** %missing_list, i32* %missing_count, i8** %def_string)
  store %struct._XOC* %call40, %struct._XOC** %xfs, align 8
  %49 = load i8**, i8*** %missing_list, align 8
  %tobool41 = icmp ne i8** %49, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.35
  %50 = load i8**, i8*** %missing_list, align 8
  call void @XFreeStringList(i8** %50)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.35
  %51 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %tobool44 = icmp ne %struct._XOC* %51, null
  br i1 %tobool44, label %if.end.96, label %if.then.45

if.then.45:                                       ; preds = %if.end.43
  %52 = bitcast [13 x i32]* %sizes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast ([13 x i32]* @xic_create_xfontset.sizes to i8*), i64 52, i32 16, i1 false)
  %arraydecay46 = getelementptr inbounds [13 x i32], [13 x i32]* %sizes, i32 0, i32 0
  store i32* %arraydecay46, i32** %smaller, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.55, %if.then.45
  %53 = load i32*, i32** %smaller, align 8
  %arrayidx = getelementptr inbounds i32, i32* %53, i64 1
  %54 = load i32, i32* %arrayidx, align 4
  %tobool48 = icmp ne i32 %54, 0
  br i1 %tobool48, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.47
  %55 = load i32*, i32** %smaller, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %55, i64 1
  %56 = load i32, i32* %arrayidx50, align 4
  %57 = load i32, i32* %pixel_size, align 4
  %cmp51 = icmp sge i32 %56, %57
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.49
  br label %for.end.56

if.end.54:                                        ; preds = %for.body.49
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %58 = load i32*, i32** %smaller, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %incdec.ptr, i32** %smaller, align 8
  br label %for.cond.47

for.end.56:                                       ; preds = %if.then.53, %for.cond.47
  %59 = load i32*, i32** %smaller, align 8
  %add.ptr = getelementptr inbounds i32, i32* %59, i64 1
  store i32* %add.ptr, i32** %larger, align 8
  %60 = load i32*, i32** %larger, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %pixel_size, align 4
  %cmp57 = icmp eq i32 %61, %62
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %for.end.56
  %63 = load i32*, i32** %larger, align 8
  %incdec.ptr60 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr60, i32** %larger, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %for.end.56
  br label %while.cond

while.cond:                                       ; preds = %if.end.95, %if.end.61
  %64 = load i32*, i32** %smaller, align 8
  %65 = load i32, i32* %64, align 4
  %tobool62 = icmp ne i32 %65, 0
  br i1 %tobool62, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %66 = load i32*, i32** %larger, align 8
  %67 = load i32, i32* %66, align 4
  %tobool63 = icmp ne i32 %67, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %68 = phi i1 [ true, %while.cond ], [ %tobool63, %lor.rhs ]
  br i1 %68, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %69 = load i32*, i32** %larger, align 8
  %70 = load i32, i32* %69, align 4
  %tobool64 = icmp ne i32 %70, 0
  br i1 %tobool64, label %if.else, label %if.then.65

if.then.65:                                       ; preds = %while.body
  %71 = load i32*, i32** %smaller, align 8
  %incdec.ptr66 = getelementptr inbounds i32, i32* %71, i32 -1
  store i32* %incdec.ptr66, i32** %smaller, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %this_size, align 4
  br label %if.end.81

if.else:                                          ; preds = %while.body
  %73 = load i32*, i32** %smaller, align 8
  %74 = load i32, i32* %73, align 4
  %tobool67 = icmp ne i32 %74, 0
  br i1 %tobool67, label %if.else.70, label %if.then.68

if.then.68:                                       ; preds = %if.else
  %75 = load i32*, i32** %larger, align 8
  %incdec.ptr69 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %incdec.ptr69, i32** %larger, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %this_size, align 4
  br label %if.end.80

if.else.70:                                       ; preds = %if.else
  %77 = load i32, i32* %pixel_size, align 4
  %78 = load i32*, i32** %smaller, align 8
  %79 = load i32, i32* %78, align 4
  %sub71 = sub nsw i32 %77, %79
  %80 = load i32*, i32** %larger, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %pixel_size, align 4
  %sub72 = sub nsw i32 %81, %82
  %cmp73 = icmp slt i32 %sub71, %sub72
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %if.else.70
  %83 = load i32*, i32** %smaller, align 8
  %incdec.ptr76 = getelementptr inbounds i32, i32* %83, i32 -1
  store i32* %incdec.ptr76, i32** %smaller, align 8
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %this_size, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %if.else.70
  %85 = load i32*, i32** %larger, align 8
  %incdec.ptr78 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %incdec.ptr78, i32** %larger, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %this_size, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.68
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.65
  %arraydecay82 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %87 = load i8*, i8** %xlfd_format, align 8
  %88 = load i32, i32* %this_size, align 4
  %call83 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay82, i8* %87, i32 %88) #3
  store i8** null, i8*** %missing_list, align 8
  %89 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data84 = getelementptr inbounds %struct.frame, %struct.frame* %89, i32 0, i32 62
  %x85 = bitcast %union.output_data* %output_data84 to %struct.x_output**
  %90 = load %struct.x_output*, %struct.x_output** %x85, align 8
  %display_info86 = getelementptr inbounds %struct.x_output, %struct.x_output* %90, i32 0, i32 44
  %91 = load %struct.x_display_info*, %struct.x_display_info** %display_info86, align 8
  %display87 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %91, i32 0, i32 2
  %92 = load %struct._XDisplay*, %struct._XDisplay** %display87, align 8
  %arraydecay88 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call89 = call %struct._XOC* @XCreateFontSet(%struct._XDisplay* %92, i8* %arraydecay88, i8*** %missing_list, i32* %missing_count, i8** %def_string)
  store %struct._XOC* %call89, %struct._XOC** %xfs, align 8
  %93 = load i8**, i8*** %missing_list, align 8
  %tobool90 = icmp ne i8** %93, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.81
  %94 = load i8**, i8*** %missing_list, align 8
  call void @XFreeStringList(i8** %94)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.81
  %95 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %tobool93 = icmp ne %struct._XOC* %95, null
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.92
  br label %while.end

if.end.95:                                        ; preds = %if.end.92
  br label %while.cond

while.end:                                        ; preds = %if.then.94, %lor.end
  br label %if.end.96

if.end.96:                                        ; preds = %while.end, %if.end.43
  %96 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %tobool97 = icmp ne %struct._XOC* %96, null
  br i1 %tobool97, label %if.end.107, label %if.then.98

if.then.98:                                       ; preds = %if.end.96
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.134, i32 0, i32 0), i8** %last_resort, align 8
  store i8** null, i8*** %missing_list, align 8
  %97 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data99 = getelementptr inbounds %struct.frame, %struct.frame* %97, i32 0, i32 62
  %x100 = bitcast %union.output_data* %output_data99 to %struct.x_output**
  %98 = load %struct.x_output*, %struct.x_output** %x100, align 8
  %display_info101 = getelementptr inbounds %struct.x_output, %struct.x_output* %98, i32 0, i32 44
  %99 = load %struct.x_display_info*, %struct.x_display_info** %display_info101, align 8
  %display102 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %99, i32 0, i32 2
  %100 = load %struct._XDisplay*, %struct._XDisplay** %display102, align 8
  %101 = load i8*, i8** %last_resort, align 8
  %call103 = call %struct._XOC* @XCreateFontSet(%struct._XDisplay* %100, i8* %101, i8*** %missing_list, i32* %missing_count, i8** %def_string)
  store %struct._XOC* %call103, %struct._XOC** %xfs, align 8
  %102 = load i8**, i8*** %missing_list, align 8
  %tobool104 = icmp ne i8** %102, null
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.98
  %103 = load i8**, i8*** %missing_list, align 8
  call void @XFreeStringList(i8** %103)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.then.98
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.96
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %for.end
  %104 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  ret %struct._XOC* %104
}

declare i8* @XVaCreateNestedList(i32, ...) #1

declare %struct._XIC* @XCreateIC(%struct._XIM*, ...) #1

; Function Attrs: nounwind uwtable
define void @free_frame_xic(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %xic = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 47
  %2 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %cmp = icmp eq %struct._XIC* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %xic3 = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 47
  %5 = load %struct._XIC*, %struct._XIC** %xic3, align 8
  call void @XDestroyIC(%struct._XIC* %5)
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @xic_free_xfontset(%struct.frame* %6)
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %xic6 = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 47
  store %struct._XIC* null, %struct._XIC** %xic6, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @XFree(i8*) #1

declare void @XDestroyIC(%struct._XIC*) #1

; Function Attrs: nounwind uwtable
define void @xic_set_preeditarea(%struct.window* %w, i32 %x, i32 %y) #0 {
entry:
  %w.addr = alloca %struct.window*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %f = alloca %struct.frame*, align 8
  %attr = alloca i8*, align 8
  %spot = alloca %struct.XPoint, align 2
  store %struct.window* %w, %struct.window** %w.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame = getelementptr inbounds %struct.window, %struct.window* %0, i32 0, i32 1
  %1 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %f, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame1 = getelementptr inbounds %struct.window, %struct.window* %5, i32 0, i32 1
  %6 = load i64, i64* %frame1, align 8
  %sub2 = sub nsw i64 %6, 5
  %7 = inttoptr i64 %sub2 to i8*
  %8 = bitcast i8* %7 to %struct.frame*
  %internal_border_width = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 51
  %9 = load i32, i32* %internal_border_width, align 4
  %10 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_left = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 30
  %11 = load i32, i32* %pixel_left, align 4
  %12 = load %struct.window*, %struct.window** %w.addr, align 8
  %pseudo_window_p = getelementptr inbounds %struct.window, %struct.window* %12, i32 0, i32 67
  %bf.load = load i16, i16* %pseudo_window_p, align 4
  %bf.lshr = lshr i16 %bf.load, 11
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = trunc i16 %bf.clear to i1
  br i1 %bf.cast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.23

cond.false:                                       ; preds = %entry
  %13 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type = getelementptr inbounds %struct.window, %struct.window* %13, i32 0, i32 16
  %14 = load i64, i64* %vertical_scroll_bar_type, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %14, %call
  br i1 %cmp, label %cond.true.3, label %cond.false.11

cond.true.3:                                      ; preds = %cond.false
  %15 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame4 = getelementptr inbounds %struct.window, %struct.window* %15, i32 0, i32 1
  %16 = load i64, i64* %frame4, align 8
  %sub5 = sub nsw i64 %16, 5
  %17 = inttoptr i64 %sub5 to i8*
  %18 = bitcast i8* %17 to %struct.frame*
  %vertical_scroll_bar_type6 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 26
  %19 = bitcast i48* %vertical_scroll_bar_type6 to i64*
  %bf.load7 = load i64, i64* %19, align 8
  %bf.lshr8 = lshr i64 %bf.load7, 30
  %bf.clear9 = and i64 %bf.lshr8, 3
  %bf.cast10 = trunc i64 %bf.clear9 to i32
  br label %cond.end.21

cond.false.11:                                    ; preds = %cond.false
  %20 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type12 = getelementptr inbounds %struct.window, %struct.window* %20, i32 0, i32 16
  %21 = load i64, i64* %vertical_scroll_bar_type12, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp14 = icmp eq i64 %21, %call13
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.11
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false.11
  %22 = load %struct.window*, %struct.window** %w.addr, align 8
  %vertical_scroll_bar_type17 = getelementptr inbounds %struct.window, %struct.window* %22, i32 0, i32 16
  %23 = load i64, i64* %vertical_scroll_bar_type17, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp19 = icmp eq i64 %23, %call18
  %cond = select i1 %cmp19, i32 2, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond20 = phi i32 [ 1, %cond.true.15 ], [ %cond, %cond.false.16 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end, %cond.true.3
  %cond22 = phi i32 [ %bf.cast10, %cond.true.3 ], [ %cond20, %cond.end ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end.21, %cond.true
  %cond24 = phi i32 [ 0, %cond.true ], [ %cond22, %cond.end.21 ]
  %cmp25 = icmp eq i32 %cond24, 1
  br i1 %cmp25, label %cond.true.26, label %cond.false.35

cond.true.26:                                     ; preds = %cond.end.23
  %24 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_width = getelementptr inbounds %struct.window, %struct.window* %24, i32 0, i32 61
  %25 = load i32, i32* %scroll_bar_width, align 4
  %cmp27 = icmp sge i32 %25, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.true.26
  %26 = load %struct.window*, %struct.window** %w.addr, align 8
  %scroll_bar_width29 = getelementptr inbounds %struct.window, %struct.window* %26, i32 0, i32 61
  %27 = load i32, i32* %scroll_bar_width29, align 4
  br label %cond.end.33

cond.false.30:                                    ; preds = %cond.true.26
  %28 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame31 = getelementptr inbounds %struct.window, %struct.window* %28, i32 0, i32 1
  %29 = load i64, i64* %frame31, align 8
  %sub32 = sub nsw i64 %29, 5
  %30 = inttoptr i64 %sub32 to i8*
  %31 = bitcast i8* %30 to %struct.frame*
  %config_scroll_bar_width = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 69
  %32 = load i32, i32* %config_scroll_bar_width, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.28
  %cond34 = phi i32 [ %27, %cond.true.28 ], [ %32, %cond.false.30 ]
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end.23
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.end.33
  %cond37 = phi i32 [ %cond34, %cond.end.33 ], [ 0, %cond.false.35 ]
  %add = add nsw i32 %11, %cond37
  %add38 = add nsw i32 %9, %add
  %add39 = add nsw i32 %4, %add38
  %33 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width = getelementptr inbounds %struct.window, %struct.window* %33, i32 0, i32 57
  %34 = load i32, i32* %left_fringe_width, align 4
  %cmp40 = icmp sge i32 %34, 0
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.end.36
  %35 = load %struct.window*, %struct.window** %w.addr, align 8
  %left_fringe_width42 = getelementptr inbounds %struct.window, %struct.window* %35, i32 0, i32 57
  %36 = load i32, i32* %left_fringe_width42, align 4
  br label %cond.end.47

cond.false.43:                                    ; preds = %cond.end.36
  %37 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame44 = getelementptr inbounds %struct.window, %struct.window* %37, i32 0, i32 1
  %38 = load i64, i64* %frame44, align 8
  %sub45 = sub nsw i64 %38, 5
  %39 = inttoptr i64 %sub45 to i8*
  %40 = bitcast i8* %39 to %struct.frame*
  %left_fringe_width46 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 54
  %41 = load i32, i32* %left_fringe_width46, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.43, %cond.true.41
  %cond48 = phi i32 [ %36, %cond.true.41 ], [ %41, %cond.false.43 ]
  %add49 = add nsw i32 %add39, %cond48
  %conv = trunc i32 %add49 to i16
  %x50 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %spot, i32 0, i32 0
  store i16 %conv, i16* %x50, align 2
  %42 = load i32, i32* %y.addr, align 4
  %43 = load %struct.window*, %struct.window** %w.addr, align 8
  %frame51 = getelementptr inbounds %struct.window, %struct.window* %43, i32 0, i32 1
  %44 = load i64, i64* %frame51, align 8
  %sub52 = sub nsw i64 %44, 5
  %45 = inttoptr i64 %sub52 to i8*
  %46 = bitcast i8* %45 to %struct.frame*
  %internal_border_width53 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 51
  %47 = load i32, i32* %internal_border_width53, align 4
  %48 = load %struct.window*, %struct.window** %w.addr, align 8
  %pixel_top = getelementptr inbounds %struct.window, %struct.window* %48, i32 0, i32 31
  %49 = load i32, i32* %pixel_top, align 4
  %add54 = add nsw i32 %47, %49
  %add55 = add nsw i32 %42, %add54
  %50 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 62
  %x56 = bitcast %union.output_data* %output_data to %struct.x_output**
  %51 = load %struct.x_output*, %struct.x_output** %x56, align 8
  %font = getelementptr inbounds %struct.x_output, %struct.x_output* %51, i32 0, i32 25
  %52 = load %struct.font*, %struct.font** %font, align 8
  %ascent = getelementptr inbounds %struct.font, %struct.font* %52, i32 0, i32 8
  %53 = load i32, i32* %ascent, align 4
  %add57 = add nsw i32 %add55, %53
  %conv58 = trunc i32 %add57 to i16
  %y59 = getelementptr inbounds %struct.XPoint, %struct.XPoint* %spot, i32 0, i32 1
  store i16 %conv58, i16* %y59, align 2
  %call60 = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct.XPoint* %spot, i8* null)
  store i8* %call60, i8** %attr, align 8
  %54 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data61 = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 62
  %x62 = bitcast %union.output_data* %output_data61 to %struct.x_output**
  %55 = load %struct.x_output*, %struct.x_output** %x62, align 8
  %xic = getelementptr inbounds %struct.x_output, %struct.x_output* %55, i32 0, i32 47
  %56 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %57 = load i8*, i8** %attr, align 8
  %call63 = call i8* (%struct._XIC*, ...) @XSetICValues(%struct._XIC* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* %57, i8* null)
  %58 = load i8*, i8** %attr, align 8
  %call64 = call i32 @XFree(i8* %58)
  ret void
}

declare i8* @XSetICValues(%struct._XIC*, ...) #1

; Function Attrs: nounwind uwtable
define void @xic_set_statusarea(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %xic = alloca %struct._XIC*, align 8
  %attr = alloca i8*, align 8
  %area = alloca %struct.XRectangle, align 2
  %needed = alloca %struct.XRectangle*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %xic1 = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 47
  %2 = load %struct._XIC*, %struct._XIC** %xic1, align 8
  store %struct._XIC* %2, %struct._XIC** %xic, align 8
  %height = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 3
  store i16 0, i16* %height, align 2
  %width = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 2
  store i16 0, i16* %width, align 2
  %y = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 1
  store i16 0, i16* %y, align 2
  %x2 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 0
  store i16 0, i16* %x2, align 2
  %call = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct.XRectangle* %area, i8* null)
  store i8* %call, i8** %attr, align 8
  %3 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %4 = load i8*, i8** %attr, align 8
  %call3 = call i8* (%struct._XIC*, ...) @XSetICValues(%struct._XIC* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %4, i8* null)
  %5 = load i8*, i8** %attr, align 8
  %call4 = call i32 @XFree(i8* %5)
  %call5 = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct.XRectangle** %needed, i8* null)
  store i8* %call5, i8** %attr, align 8
  %6 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %7 = load i8*, i8** %attr, align 8
  %call6 = call i8* (%struct._XIC*, ...) @XGetICValues(%struct._XIC* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %7, i8* null)
  %8 = load i8*, i8** %attr, align 8
  %call7 = call i32 @XFree(i8* %8)
  %9 = load %struct.XRectangle*, %struct.XRectangle** %needed, align 8
  %width8 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %9, i32 0, i32 2
  %10 = load i16, i16* %width8, align 2
  %conv = zext i16 %10 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call10 = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.XRectangle** %needed, i8* null)
  store i8* %call10, i8** %attr, align 8
  %11 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %12 = load i8*, i8** %attr, align 8
  %call11 = call i8* (%struct._XIC*, ...) @XGetICValues(%struct._XIC* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %12, i8* null)
  %13 = load i8*, i8** %attr, align 8
  %call12 = call i32 @XFree(i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.XRectangle*, %struct.XRectangle** %needed, align 8
  %width13 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %14, i32 0, i32 2
  %15 = load i16, i16* %width13, align 2
  %width14 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 2
  store i16 %15, i16* %width14, align 2
  %16 = load %struct.XRectangle*, %struct.XRectangle** %needed, align 8
  %height15 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %16, i32 0, i32 3
  %17 = load i16, i16* %height15, align 2
  %height16 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 3
  store i16 %17, i16* %height16, align 2
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %pixel_width = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 46
  %19 = load i32, i32* %pixel_width, align 4
  %width17 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 2
  %20 = load i16, i16* %width17, align 2
  %conv18 = zext i16 %20 to i32
  %sub = sub nsw i32 %19, %conv18
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %internal_border_width = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 51
  %22 = load i32, i32* %internal_border_width, align 4
  %sub19 = sub nsw i32 %sub, %22
  %conv20 = trunc i32 %sub19 to i16
  %x21 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 0
  store i16 %conv20, i16* %x21, align 2
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %pixel_height = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 47
  %24 = load i32, i32* %pixel_height, align 4
  %height22 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 3
  %25 = load i16, i16* %height22, align 2
  %conv23 = zext i16 %25 to i32
  %sub24 = sub nsw i32 %24, %conv23
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data25 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 62
  %x26 = bitcast %union.output_data* %output_data25 to %struct.x_output**
  %27 = load %struct.x_output*, %struct.x_output** %x26, align 8
  %menubar_height = getelementptr inbounds %struct.x_output, %struct.x_output* %27, i32 0, i32 0
  %28 = load i32, i32* %menubar_height, align 4
  %sub27 = sub nsw i32 %sub24, %28
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data28 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x29 = bitcast %union.output_data* %output_data28 to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x29, align 8
  %toolbar_top_height = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 1
  %31 = load i32, i32* %toolbar_top_height, align 4
  %sub30 = sub nsw i32 %sub27, %31
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %internal_border_width31 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 51
  %33 = load i32, i32* %internal_border_width31, align 4
  %sub32 = sub nsw i32 %sub30, %33
  %conv33 = trunc i32 %sub32 to i16
  %y34 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %area, i32 0, i32 1
  store i16 %conv33, i16* %y34, align 2
  %34 = load %struct.XRectangle*, %struct.XRectangle** %needed, align 8
  %35 = bitcast %struct.XRectangle* %34 to i8*
  %call35 = call i32 @XFree(i8* %35)
  %call36 = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct.XRectangle* %area, i8* null)
  store i8* %call36, i8** %attr, align 8
  %36 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %37 = load i8*, i8** %attr, align 8
  %call37 = call i8* (%struct._XIC*, ...) @XSetICValues(%struct._XIC* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %37, i8* null)
  %38 = load i8*, i8** %attr, align 8
  %call38 = call i32 @XFree(i8* %38)
  ret void
}

declare i8* @XGetICValues(%struct._XIC*, ...) #1

; Function Attrs: nounwind uwtable
define void @xic_set_xfontset(%struct.frame* %f, i8* %base_fontname) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %base_fontname.addr = alloca i8*, align 8
  %attr = alloca i8*, align 8
  %xfs = alloca %struct._XOC*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8* %base_fontname, i8** %base_fontname.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @xic_free_xfontset(%struct.frame* %0)
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call %struct._XOC* @xic_create_xfontset(%struct.frame* %1)
  store %struct._XOC* %call, %struct._XOC** %xfs, align 8
  %2 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %call1 = call i8* (i32, ...) @XVaCreateNestedList(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._XOC* %2, i8* null)
  store i8* %call1, i8** %attr, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %xic_style = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 48
  %5 = load i64, i64* %xic_style, align 8
  %and = and i64 %5, 4
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %7 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %xic = getelementptr inbounds %struct.x_output, %struct.x_output* %7, i32 0, i32 47
  %8 = load %struct._XIC*, %struct._XIC** %xic, align 8
  %9 = load i8*, i8** %attr, align 8
  %call4 = call i8* (%struct._XIC*, ...) @XSetICValues(%struct._XIC* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* %9, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data5 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 62
  %x6 = bitcast %union.output_data* %output_data5 to %struct.x_output**
  %11 = load %struct.x_output*, %struct.x_output** %x6, align 8
  %xic_style7 = getelementptr inbounds %struct.x_output, %struct.x_output* %11, i32 0, i32 48
  %12 = load i64, i64* %xic_style7, align 8
  %and8 = and i64 %12, 256
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %xic13 = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 47
  %15 = load %struct._XIC*, %struct._XIC** %xic13, align 8
  %16 = load i8*, i8** %attr, align 8
  %call14 = call i8* (%struct._XIC*, ...) @XSetICValues(%struct._XIC* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %16, i8* null)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  %17 = load i8*, i8** %attr, align 8
  %call16 = call i32 @XFree(i8* %17)
  %18 = load %struct._XOC*, %struct._XOC** %xfs, align 8
  %19 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data17 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 62
  %x18 = bitcast %union.output_data* %output_data17 to %struct.x_output**
  %20 = load %struct.x_output*, %struct.x_output** %x18, align 8
  %xic_xfs = getelementptr inbounds %struct.x_output, %struct.x_output* %20, i32 0, i32 49
  store %struct._XOC* %18, %struct._XOC** %xic_xfs, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @x_free_gcs(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %3, %struct._XDisplay** %dpy, align 8
  call void @block_input()
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %normal_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 6
  %6 = load %struct._XGC*, %struct._XGC** %normal_gc, align 8
  %tobool = icmp ne %struct._XGC* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data3 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data3 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %normal_gc5 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 6
  %10 = load %struct._XGC*, %struct._XGC** %normal_gc5, align 8
  %call = call i32 @XFreeGC(%struct._XDisplay* %7, %struct._XGC* %10)
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data6 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 62
  %x7 = bitcast %union.output_data* %output_data6 to %struct.x_output**
  %12 = load %struct.x_output*, %struct.x_output** %x7, align 8
  %normal_gc8 = getelementptr inbounds %struct.x_output, %struct.x_output* %12, i32 0, i32 6
  store %struct._XGC* null, %struct._XGC** %normal_gc8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data9 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x10 = bitcast %union.output_data* %output_data9 to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x10, align 8
  %reverse_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 7
  %15 = load %struct._XGC*, %struct._XGC** %reverse_gc, align 8
  %tobool11 = icmp ne %struct._XGC* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end
  %16 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %18 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %reverse_gc15 = getelementptr inbounds %struct.x_output, %struct.x_output* %18, i32 0, i32 7
  %19 = load %struct._XGC*, %struct._XGC** %reverse_gc15, align 8
  %call16 = call i32 @XFreeGC(%struct._XDisplay* %16, %struct._XGC* %19)
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data17 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 62
  %x18 = bitcast %union.output_data* %output_data17 to %struct.x_output**
  %21 = load %struct.x_output*, %struct.x_output** %x18, align 8
  %reverse_gc19 = getelementptr inbounds %struct.x_output, %struct.x_output* %21, i32 0, i32 7
  store %struct._XGC* null, %struct._XGC** %reverse_gc19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %if.end
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data21 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 62
  %x22 = bitcast %union.output_data* %output_data21 to %struct.x_output**
  %23 = load %struct.x_output*, %struct.x_output** %x22, align 8
  %cursor_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %23, i32 0, i32 8
  %24 = load %struct._XGC*, %struct._XGC** %cursor_gc, align 8
  %tobool23 = icmp ne %struct._XGC* %24, null
  br i1 %tobool23, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.end.20
  %25 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data25 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 62
  %x26 = bitcast %union.output_data* %output_data25 to %struct.x_output**
  %27 = load %struct.x_output*, %struct.x_output** %x26, align 8
  %cursor_gc27 = getelementptr inbounds %struct.x_output, %struct.x_output* %27, i32 0, i32 8
  %28 = load %struct._XGC*, %struct._XGC** %cursor_gc27, align 8
  %call28 = call i32 @XFreeGC(%struct._XDisplay* %25, %struct._XGC* %28)
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data29 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x30 = bitcast %union.output_data* %output_data29 to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x30, align 8
  %cursor_gc31 = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 8
  store %struct._XGC* null, %struct._XGC** %cursor_gc31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.24, %if.end.20
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data33 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 62
  %x34 = bitcast %union.output_data* %output_data33 to %struct.x_output**
  %32 = load %struct.x_output*, %struct.x_output** %x34, align 8
  %border_tile = getelementptr inbounds %struct.x_output, %struct.x_output* %32, i32 0, i32 5
  %33 = load i64, i64* %border_tile, align 8
  %tobool35 = icmp ne i64 %33, 0
  br i1 %tobool35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.end.32
  %34 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %35 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data37 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 62
  %x38 = bitcast %union.output_data* %output_data37 to %struct.x_output**
  %36 = load %struct.x_output*, %struct.x_output** %x38, align 8
  %border_tile39 = getelementptr inbounds %struct.x_output, %struct.x_output* %36, i32 0, i32 5
  %37 = load i64, i64* %border_tile39, align 8
  %call40 = call i32 @XFreePixmap(%struct._XDisplay* %34, i64 %37)
  %38 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data41 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 62
  %x42 = bitcast %union.output_data* %output_data41 to %struct.x_output**
  %39 = load %struct.x_output*, %struct.x_output** %x42, align 8
  %border_tile43 = getelementptr inbounds %struct.x_output, %struct.x_output* %39, i32 0, i32 5
  store i64 0, i64* %border_tile43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.36, %if.end.32
  call void @unblock_input()
  ret void
}

declare i32 @XFreeGC(%struct._XDisplay*, %struct._XGC*) #1

declare i32 @XFreePixmap(%struct._XDisplay*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_wm_set_size_hint(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  call void @block_input()
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_wm_set_size_hint(%struct.frame* %1, i64 0, i1 zeroext false)
  call void @unblock_input()
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call1
}

declare void @x_wm_set_size_hint(%struct.frame*, i64, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_create_frame(i64 %parms) #0 {
entry:
  %parms.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %frame = alloca i64, align 8
  %tem = alloca i64, align 8
  %name = alloca i64, align 8
  %minibuffer_only = alloca i8, align 1
  %window_prompting = alloca i64, align 8
  %count = alloca i64, align 8
  %display = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %parent = alloca i64, align 8
  %kb = alloca %struct.kboard*, align 8
  %x_width = alloca i32, align 4
  %x_height = alloca i32, align 4
  %black = alloca i64, align 8
  %value = alloca i64, align 8
  %visibility = alloca i64, align 8
  store i64 %parms, i64* %parms.addr, align 8
  store i8 0, i8* %minibuffer_only, align 1
  store i64 0, i64* %window_prompting, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  store %struct.x_display_info* null, %struct.x_display_info** %dpyinfo, align 8
  store i32 0, i32* %x_width, align 4
  store i32 0, i32* %x_height, align 4
  %0 = load i64, i64* %parms.addr, align 8
  %call1 = call i64 @Fcopy_alist(i64 %0)
  store i64 %call1, i64* %parms.addr, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 149), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 357), align 8
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %3 = load i64, i64* %parms.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 906)
  %call3 = call i64 @x_get_arg(%struct.x_display_info* %2, i64 %3, i64 %call2, i8* null, i8* null, i32 0)
  store i64 %call3, i64* %display, align 8
  %4 = load i64, i64* %display, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %4, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %6 = load i64, i64* %parms.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 344)
  %call6 = call i64 @x_get_arg(%struct.x_display_info* %5, i64 %6, i64 %call5, i8* null, i8* null, i32 3)
  store i64 %call6, i64* %display, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* %display, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp8 = icmp eq i64 %7, %call7
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %display, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %8 = load i64, i64* %display, align 8
  %call12 = call %struct.x_display_info* @check_x_display_info(i64 %8)
  store %struct.x_display_info* %call12, %struct.x_display_info** %dpyinfo, align 8
  %9 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 1
  %10 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %kboard = getelementptr inbounds %struct.terminal, %struct.terminal* %10, i32 0, i32 10
  %11 = load %struct.kboard*, %struct.kboard** %kboard, align 8
  store %struct.kboard* %11, %struct.kboard** %kb, align 8
  %12 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal13 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %12, i32 0, i32 1
  %13 = load %struct.terminal*, %struct.terminal** %terminal13, align 8
  %name14 = getelementptr inbounds %struct.terminal, %struct.terminal* %13, i32 0, i32 9
  %14 = load i8*, i8** %name14, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.11
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0)) #7
  unreachable

if.end.16:                                        ; preds = %if.end.11
  %15 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %16 = load i64, i64* %parms.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 696)
  %call18 = call i64 @x_get_arg(%struct.x_display_info* %15, i64 %16, i64 %call17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 3)
  store i64 %call18, i64* %name, align 8
  %17 = load i64, i64* %name, align 8
  %call19 = call zeroext i1 @STRINGP(i64 %17)
  br i1 %call19, label %if.end.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.16
  %18 = load i64, i64* %name, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp21 = icmp eq i64 %18, %call20
  br i1 %cmp21, label %if.end.26, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %19 = load i64, i64* %name, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %19, %call23
  br i1 %cmp24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.22
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0)) #7
  unreachable

if.end.26:                                        ; preds = %land.lhs.true.22, %land.lhs.true, %if.end.16
  %20 = load i64, i64* %name, align 8
  %call27 = call zeroext i1 @STRINGP(i64 %20)
  br i1 %call27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %21 = load i64, i64* %name, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 357), align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %22 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %23 = load i64, i64* %parms.addr, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 742)
  %call31 = call i64 @x_get_arg(%struct.x_display_info* %22, i64 %23, i64 %call30, i8* null, i8* null, i32 0)
  store i64 %call31, i64* %parent, align 8
  %24 = load i64, i64* %parent, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp33 = icmp eq i64 %24, %call32
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.29
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %parent, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.29
  %25 = load i64, i64* %parent, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %25, %call37
  br i1 %cmp38, label %if.end.44, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %26 = load i64, i64* %parent, align 8
  %and = and i64 %26, 7
  %conv = trunc i64 %and to i32
  %and40 = and i32 %conv, -5
  %cmp41 = icmp eq i32 %and40, 2
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.39
  br label %cond.end

cond.false:                                       ; preds = %if.then.39
  %call43 = call i64 @builtin_lisp_symbol(i32 559)
  %27 = load i64, i64* %parent, align 8
  %28 = call i64 @wrong_type_argument(i64 %call43, i64 %27) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %29, %cond.true
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end, %if.end.36
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call45, i64* %frame, align 8
  %30 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %31 = load i64, i64* %parms.addr, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 661)
  %call47 = call i64 @x_get_arg(%struct.x_display_info* %30, i64 %31, i64 %call46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 4)
  store i64 %call47, i64* %tem, align 8
  %32 = load i64, i64* %tem, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 706)
  %cmp49 = icmp eq i64 %32, %call48
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.44
  %33 = load i64, i64* %tem, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp52 = icmp eq i64 %33, %call51
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.44
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %34 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %35 = load i64, i64* %display, align 8
  %call56 = call %struct.frame* @make_frame_without_minibuffer(i64 %call55, %struct.kboard* %34, i64 %35)
  store %struct.frame* %call56, %struct.frame** %f, align 8
  br label %if.end.70

if.else:                                          ; preds = %lor.lhs.false
  %36 = load i64, i64* %tem, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 717)
  %cmp58 = icmp eq i64 %36, %call57
  br i1 %cmp58, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %if.else
  %call61 = call %struct.frame* @make_minibuffer_frame()
  store %struct.frame* %call61, %struct.frame** %f, align 8
  store i8 1, i8* %minibuffer_only, align 1
  br label %if.end.69

if.else.62:                                       ; preds = %if.else
  %37 = load i64, i64* %tem, align 8
  %call63 = call zeroext i1 @WINDOWP(i64 %37)
  br i1 %call63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.62
  %38 = load i64, i64* %tem, align 8
  %39 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %40 = load i64, i64* %display, align 8
  %call65 = call %struct.frame* @make_frame_without_minibuffer(i64 %38, %struct.kboard* %39, i64 %40)
  store %struct.frame* %call65, %struct.frame** %f, align 8
  br label %if.end.68

if.else.66:                                       ; preds = %if.else.62
  %call67 = call %struct.frame* @make_frame(i1 zeroext true)
  store %struct.frame* %call67, %struct.frame** %f, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.60
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.54
  %41 = load %struct.frame*, %struct.frame** %f, align 8
  %42 = bitcast %struct.frame* %41 to i8*
  %call71 = call i64 @make_lisp_ptr(i8* %42, i32 5)
  store i64 %call71, i64* %frame, align 8
  %43 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal72 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %43, i32 0, i32 1
  %44 = load %struct.terminal*, %struct.terminal** %terminal72, align 8
  %45 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal73 = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 61
  store %struct.terminal* %44, %struct.terminal** %terminal73, align 8
  %46 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 26
  %47 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %47, align 8
  %bf.clear = and i64 %bf.load, -58720257
  %bf.set = or i64 %bf.clear, 16777216
  store i64 %bf.set, i64* %47, align 8
  %call74 = call noalias i8* @xzalloc(i64 528)
  %48 = bitcast i8* %call74 to %struct.x_output*
  %49 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  store %struct.x_output* %48, %struct.x_output** %x, align 8
  %50 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data75 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 62
  %x76 = bitcast %union.output_data* %output_data75 to %struct.x_output**
  %51 = load %struct.x_output*, %struct.x_output** %x76, align 8
  %icon_bitmap = getelementptr inbounds %struct.x_output, %struct.x_output* %51, i32 0, i32 24
  store i64 -1, i64* %icon_bitmap, align 8
  %52 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data77 = getelementptr inbounds %struct.frame, %struct.frame* %52, i32 0, i32 62
  %x78 = bitcast %union.output_data* %output_data77 to %struct.x_output**
  %53 = load %struct.x_output*, %struct.x_output** %x78, align 8
  %fontset = getelementptr inbounds %struct.x_output, %struct.x_output* %53, i32 0, i32 27
  store i32 -1, i32* %fontset, align 4
  %54 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data79 = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 62
  %x80 = bitcast %union.output_data* %output_data79 to %struct.x_output**
  %55 = load %struct.x_output*, %struct.x_output** %x80, align 8
  %scroll_bar_foreground_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %55, i32 0, i32 32
  store i64 -1, i64* %scroll_bar_foreground_pixel, align 8
  %56 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data81 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 62
  %x82 = bitcast %union.output_data* %output_data81 to %struct.x_output**
  %57 = load %struct.x_output*, %struct.x_output** %x82, align 8
  %scroll_bar_background_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %57, i32 0, i32 33
  store i64 -1, i64* %scroll_bar_background_pixel, align 8
  %58 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data83 = getelementptr inbounds %struct.frame, %struct.frame* %58, i32 0, i32 62
  %x84 = bitcast %union.output_data* %output_data83 to %struct.x_output**
  %59 = load %struct.x_output*, %struct.x_output** %x84, align 8
  %white_relief = getelementptr inbounds %struct.x_output, %struct.x_output* %59, i32 0, i32 51
  %pixel = getelementptr inbounds %struct.relief, %struct.relief* %white_relief, i32 0, i32 1
  store i64 -1, i64* %pixel, align 8
  %60 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data85 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 62
  %x86 = bitcast %union.output_data* %output_data85 to %struct.x_output**
  %61 = load %struct.x_output*, %struct.x_output** %x86, align 8
  %black_relief = getelementptr inbounds %struct.x_output, %struct.x_output* %61, i32 0, i32 50
  %pixel87 = getelementptr inbounds %struct.relief, %struct.relief* %black_relief, i32 0, i32 1
  store i64 -1, i64* %pixel87, align 8
  %62 = load %struct.frame*, %struct.frame** %f, align 8
  %63 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %64 = load i64, i64* %parms.addr, align 8
  %call88 = call i64 @builtin_lisp_symbol(i32 530)
  %call89 = call i64 @x_get_arg(%struct.x_display_info* %63, i64 %64, i64 %call88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 3)
  call void @fset_icon_name(%struct.frame* %62, i64 %call89)
  %65 = load %struct.frame*, %struct.frame** %f, align 8
  %icon_name = getelementptr inbounds %struct.frame, %struct.frame* %65, i32 0, i32 2
  %66 = load i64, i64* %icon_name, align 8
  %call90 = call zeroext i1 @STRINGP(i64 %66)
  br i1 %call90, label %if.end.93, label %if.then.91

if.then.91:                                       ; preds = %if.end.70
  %67 = load %struct.frame*, %struct.frame** %f, align 8
  %call92 = call i64 @builtin_lisp_symbol(i32 0)
  call void @fset_icon_name(%struct.frame* %67, i64 %call92)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.end.70
  %68 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %69 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data94 = getelementptr inbounds %struct.frame, %struct.frame* %69, i32 0, i32 62
  %x95 = bitcast %union.output_data* %output_data94 to %struct.x_output**
  %70 = load %struct.x_output*, %struct.x_output** %x95, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %70, i32 0, i32 44
  store %struct.x_display_info* %68, %struct.x_display_info** %display_info, align 8
  %71 = load i64, i64* %frame, align 8
  call void @record_unwind_protect(void (i64)* @do_unwind_create_frame, i64 %71)
  %72 = load %struct.frame*, %struct.frame** %f, align 8
  %foreground_pixel = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 78
  store i64 -1, i64* %foreground_pixel, align 8
  %73 = load %struct.frame*, %struct.frame** %f, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %73, i32 0, i32 77
  store i64 -1, i64* %background_pixel, align 8
  %74 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data96 = getelementptr inbounds %struct.frame, %struct.frame* %74, i32 0, i32 62
  %x97 = bitcast %union.output_data* %output_data96 to %struct.x_output**
  %75 = load %struct.x_output*, %struct.x_output** %x97, align 8
  %cursor_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %75, i32 0, i32 28
  store i64 -1, i64* %cursor_pixel, align 8
  %76 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data98 = getelementptr inbounds %struct.frame, %struct.frame* %76, i32 0, i32 62
  %x99 = bitcast %union.output_data* %output_data98 to %struct.x_output**
  %77 = load %struct.x_output*, %struct.x_output** %x99, align 8
  %cursor_foreground_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %77, i32 0, i32 31
  store i64 -1, i64* %cursor_foreground_pixel, align 8
  %78 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data100 = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 62
  %x101 = bitcast %union.output_data* %output_data100 to %struct.x_output**
  %79 = load %struct.x_output*, %struct.x_output** %x101, align 8
  %border_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %79, i32 0, i32 29
  store i64 -1, i64* %border_pixel, align 8
  %80 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data102 = getelementptr inbounds %struct.frame, %struct.frame* %80, i32 0, i32 62
  %x103 = bitcast %union.output_data* %output_data102 to %struct.x_output**
  %81 = load %struct.x_output*, %struct.x_output** %x103, align 8
  %mouse_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %81, i32 0, i32 30
  store i64 -1, i64* %mouse_pixel, align 8
  %call104 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  store i64 %call104, i64* %black, align 8
  %82 = load %struct.frame*, %struct.frame** %f, align 8
  %83 = load i64, i64* %black, align 8
  %84 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data105 = getelementptr inbounds %struct.frame, %struct.frame* %84, i32 0, i32 62
  %x106 = bitcast %union.output_data* %output_data105 to %struct.x_output**
  %85 = load %struct.x_output*, %struct.x_output** %x106, align 8
  %display_info107 = getelementptr inbounds %struct.x_output, %struct.x_output* %85, i32 0, i32 44
  %86 = load %struct.x_display_info*, %struct.x_display_info** %display_info107, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %86, i32 0, i32 6
  %87 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call108 = call i32 @XScreenNumberOfScreen(%struct.Screen* %87)
  %idxprom = sext i32 %call108 to i64
  %88 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data109 = getelementptr inbounds %struct.frame, %struct.frame* %88, i32 0, i32 62
  %x110 = bitcast %union.output_data* %output_data109 to %struct.x_output**
  %89 = load %struct.x_output*, %struct.x_output** %x110, align 8
  %display_info111 = getelementptr inbounds %struct.x_output, %struct.x_output* %89, i32 0, i32 44
  %90 = load %struct.x_display_info*, %struct.x_display_info** %display_info111, align 8
  %display112 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %90, i32 0, i32 2
  %91 = load %struct._XDisplay*, %struct._XDisplay** %display112, align 8
  %92 = bitcast %struct._XDisplay* %91 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %92, i32 0, i32 35
  %93 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %93, i64 %idxprom
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 14
  %94 = load i64, i64* %black_pixel, align 8
  %conv113 = trunc i64 %94 to i32
  %call114 = call i32 @x_decode_color(%struct.frame* %82, i64 %83, i32 %conv113)
  %conv115 = sext i32 %call114 to i64
  %95 = load %struct.frame*, %struct.frame** %f, align 8
  %foreground_pixel116 = getelementptr inbounds %struct.frame, %struct.frame* %95, i32 0, i32 78
  store i64 %conv115, i64* %foreground_pixel116, align 8
  %96 = load %struct.frame*, %struct.frame** %f, align 8
  %97 = load i64, i64* %black, align 8
  %98 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data117 = getelementptr inbounds %struct.frame, %struct.frame* %98, i32 0, i32 62
  %x118 = bitcast %union.output_data* %output_data117 to %struct.x_output**
  %99 = load %struct.x_output*, %struct.x_output** %x118, align 8
  %display_info119 = getelementptr inbounds %struct.x_output, %struct.x_output* %99, i32 0, i32 44
  %100 = load %struct.x_display_info*, %struct.x_display_info** %display_info119, align 8
  %screen120 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %100, i32 0, i32 6
  %101 = load %struct.Screen*, %struct.Screen** %screen120, align 8
  %call121 = call i32 @XScreenNumberOfScreen(%struct.Screen* %101)
  %idxprom122 = sext i32 %call121 to i64
  %102 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data123 = getelementptr inbounds %struct.frame, %struct.frame* %102, i32 0, i32 62
  %x124 = bitcast %union.output_data* %output_data123 to %struct.x_output**
  %103 = load %struct.x_output*, %struct.x_output** %x124, align 8
  %display_info125 = getelementptr inbounds %struct.x_output, %struct.x_output* %103, i32 0, i32 44
  %104 = load %struct.x_display_info*, %struct.x_display_info** %display_info125, align 8
  %display126 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %104, i32 0, i32 2
  %105 = load %struct._XDisplay*, %struct._XDisplay** %display126, align 8
  %106 = bitcast %struct._XDisplay* %105 to %struct.anon.11*
  %screens127 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %106, i32 0, i32 35
  %107 = load %struct.Screen*, %struct.Screen** %screens127, align 8
  %arrayidx128 = getelementptr inbounds %struct.Screen, %struct.Screen* %107, i64 %idxprom122
  %black_pixel129 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx128, i32 0, i32 14
  %108 = load i64, i64* %black_pixel129, align 8
  %conv130 = trunc i64 %108 to i32
  %call131 = call i32 @x_decode_color(%struct.frame* %96, i64 %97, i32 %conv130)
  %conv132 = sext i32 %call131 to i64
  %109 = load %struct.frame*, %struct.frame** %f, align 8
  %background_pixel133 = getelementptr inbounds %struct.frame, %struct.frame* %109, i32 0, i32 77
  store i64 %conv132, i64* %background_pixel133, align 8
  %110 = load %struct.frame*, %struct.frame** %f, align 8
  %111 = load i64, i64* %black, align 8
  %112 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data134 = getelementptr inbounds %struct.frame, %struct.frame* %112, i32 0, i32 62
  %x135 = bitcast %union.output_data* %output_data134 to %struct.x_output**
  %113 = load %struct.x_output*, %struct.x_output** %x135, align 8
  %display_info136 = getelementptr inbounds %struct.x_output, %struct.x_output* %113, i32 0, i32 44
  %114 = load %struct.x_display_info*, %struct.x_display_info** %display_info136, align 8
  %screen137 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %114, i32 0, i32 6
  %115 = load %struct.Screen*, %struct.Screen** %screen137, align 8
  %call138 = call i32 @XScreenNumberOfScreen(%struct.Screen* %115)
  %idxprom139 = sext i32 %call138 to i64
  %116 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data140 = getelementptr inbounds %struct.frame, %struct.frame* %116, i32 0, i32 62
  %x141 = bitcast %union.output_data* %output_data140 to %struct.x_output**
  %117 = load %struct.x_output*, %struct.x_output** %x141, align 8
  %display_info142 = getelementptr inbounds %struct.x_output, %struct.x_output* %117, i32 0, i32 44
  %118 = load %struct.x_display_info*, %struct.x_display_info** %display_info142, align 8
  %display143 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %118, i32 0, i32 2
  %119 = load %struct._XDisplay*, %struct._XDisplay** %display143, align 8
  %120 = bitcast %struct._XDisplay* %119 to %struct.anon.11*
  %screens144 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %120, i32 0, i32 35
  %121 = load %struct.Screen*, %struct.Screen** %screens144, align 8
  %arrayidx145 = getelementptr inbounds %struct.Screen, %struct.Screen* %121, i64 %idxprom139
  %black_pixel146 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx145, i32 0, i32 14
  %122 = load i64, i64* %black_pixel146, align 8
  %conv147 = trunc i64 %122 to i32
  %call148 = call i32 @x_decode_color(%struct.frame* %110, i64 %111, i32 %conv147)
  %conv149 = sext i32 %call148 to i64
  %123 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data150 = getelementptr inbounds %struct.frame, %struct.frame* %123, i32 0, i32 62
  %x151 = bitcast %union.output_data* %output_data150 to %struct.x_output**
  %124 = load %struct.x_output*, %struct.x_output** %x151, align 8
  %cursor_pixel152 = getelementptr inbounds %struct.x_output, %struct.x_output* %124, i32 0, i32 28
  store i64 %conv149, i64* %cursor_pixel152, align 8
  %125 = load %struct.frame*, %struct.frame** %f, align 8
  %126 = load i64, i64* %black, align 8
  %127 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data153 = getelementptr inbounds %struct.frame, %struct.frame* %127, i32 0, i32 62
  %x154 = bitcast %union.output_data* %output_data153 to %struct.x_output**
  %128 = load %struct.x_output*, %struct.x_output** %x154, align 8
  %display_info155 = getelementptr inbounds %struct.x_output, %struct.x_output* %128, i32 0, i32 44
  %129 = load %struct.x_display_info*, %struct.x_display_info** %display_info155, align 8
  %screen156 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %129, i32 0, i32 6
  %130 = load %struct.Screen*, %struct.Screen** %screen156, align 8
  %call157 = call i32 @XScreenNumberOfScreen(%struct.Screen* %130)
  %idxprom158 = sext i32 %call157 to i64
  %131 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data159 = getelementptr inbounds %struct.frame, %struct.frame* %131, i32 0, i32 62
  %x160 = bitcast %union.output_data* %output_data159 to %struct.x_output**
  %132 = load %struct.x_output*, %struct.x_output** %x160, align 8
  %display_info161 = getelementptr inbounds %struct.x_output, %struct.x_output* %132, i32 0, i32 44
  %133 = load %struct.x_display_info*, %struct.x_display_info** %display_info161, align 8
  %display162 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %133, i32 0, i32 2
  %134 = load %struct._XDisplay*, %struct._XDisplay** %display162, align 8
  %135 = bitcast %struct._XDisplay* %134 to %struct.anon.11*
  %screens163 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %135, i32 0, i32 35
  %136 = load %struct.Screen*, %struct.Screen** %screens163, align 8
  %arrayidx164 = getelementptr inbounds %struct.Screen, %struct.Screen* %136, i64 %idxprom158
  %black_pixel165 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx164, i32 0, i32 14
  %137 = load i64, i64* %black_pixel165, align 8
  %conv166 = trunc i64 %137 to i32
  %call167 = call i32 @x_decode_color(%struct.frame* %125, i64 %126, i32 %conv166)
  %conv168 = sext i32 %call167 to i64
  %138 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data169 = getelementptr inbounds %struct.frame, %struct.frame* %138, i32 0, i32 62
  %x170 = bitcast %union.output_data* %output_data169 to %struct.x_output**
  %139 = load %struct.x_output*, %struct.x_output** %x170, align 8
  %cursor_foreground_pixel171 = getelementptr inbounds %struct.x_output, %struct.x_output* %139, i32 0, i32 31
  store i64 %conv168, i64* %cursor_foreground_pixel171, align 8
  %140 = load %struct.frame*, %struct.frame** %f, align 8
  %141 = load i64, i64* %black, align 8
  %142 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data172 = getelementptr inbounds %struct.frame, %struct.frame* %142, i32 0, i32 62
  %x173 = bitcast %union.output_data* %output_data172 to %struct.x_output**
  %143 = load %struct.x_output*, %struct.x_output** %x173, align 8
  %display_info174 = getelementptr inbounds %struct.x_output, %struct.x_output* %143, i32 0, i32 44
  %144 = load %struct.x_display_info*, %struct.x_display_info** %display_info174, align 8
  %screen175 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %144, i32 0, i32 6
  %145 = load %struct.Screen*, %struct.Screen** %screen175, align 8
  %call176 = call i32 @XScreenNumberOfScreen(%struct.Screen* %145)
  %idxprom177 = sext i32 %call176 to i64
  %146 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data178 = getelementptr inbounds %struct.frame, %struct.frame* %146, i32 0, i32 62
  %x179 = bitcast %union.output_data* %output_data178 to %struct.x_output**
  %147 = load %struct.x_output*, %struct.x_output** %x179, align 8
  %display_info180 = getelementptr inbounds %struct.x_output, %struct.x_output* %147, i32 0, i32 44
  %148 = load %struct.x_display_info*, %struct.x_display_info** %display_info180, align 8
  %display181 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %148, i32 0, i32 2
  %149 = load %struct._XDisplay*, %struct._XDisplay** %display181, align 8
  %150 = bitcast %struct._XDisplay* %149 to %struct.anon.11*
  %screens182 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %150, i32 0, i32 35
  %151 = load %struct.Screen*, %struct.Screen** %screens182, align 8
  %arrayidx183 = getelementptr inbounds %struct.Screen, %struct.Screen* %151, i64 %idxprom177
  %black_pixel184 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx183, i32 0, i32 14
  %152 = load i64, i64* %black_pixel184, align 8
  %conv185 = trunc i64 %152 to i32
  %call186 = call i32 @x_decode_color(%struct.frame* %140, i64 %141, i32 %conv185)
  %conv187 = sext i32 %call186 to i64
  %153 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data188 = getelementptr inbounds %struct.frame, %struct.frame* %153, i32 0, i32 62
  %x189 = bitcast %union.output_data* %output_data188 to %struct.x_output**
  %154 = load %struct.x_output*, %struct.x_output** %x189, align 8
  %border_pixel190 = getelementptr inbounds %struct.x_output, %struct.x_output* %154, i32 0, i32 29
  store i64 %conv187, i64* %border_pixel190, align 8
  %155 = load %struct.frame*, %struct.frame** %f, align 8
  %156 = load i64, i64* %black, align 8
  %157 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data191 = getelementptr inbounds %struct.frame, %struct.frame* %157, i32 0, i32 62
  %x192 = bitcast %union.output_data* %output_data191 to %struct.x_output**
  %158 = load %struct.x_output*, %struct.x_output** %x192, align 8
  %display_info193 = getelementptr inbounds %struct.x_output, %struct.x_output* %158, i32 0, i32 44
  %159 = load %struct.x_display_info*, %struct.x_display_info** %display_info193, align 8
  %screen194 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %159, i32 0, i32 6
  %160 = load %struct.Screen*, %struct.Screen** %screen194, align 8
  %call195 = call i32 @XScreenNumberOfScreen(%struct.Screen* %160)
  %idxprom196 = sext i32 %call195 to i64
  %161 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data197 = getelementptr inbounds %struct.frame, %struct.frame* %161, i32 0, i32 62
  %x198 = bitcast %union.output_data* %output_data197 to %struct.x_output**
  %162 = load %struct.x_output*, %struct.x_output** %x198, align 8
  %display_info199 = getelementptr inbounds %struct.x_output, %struct.x_output* %162, i32 0, i32 44
  %163 = load %struct.x_display_info*, %struct.x_display_info** %display_info199, align 8
  %display200 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %163, i32 0, i32 2
  %164 = load %struct._XDisplay*, %struct._XDisplay** %display200, align 8
  %165 = bitcast %struct._XDisplay* %164 to %struct.anon.11*
  %screens201 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %165, i32 0, i32 35
  %166 = load %struct.Screen*, %struct.Screen** %screens201, align 8
  %arrayidx202 = getelementptr inbounds %struct.Screen, %struct.Screen* %166, i64 %idxprom196
  %black_pixel203 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx202, i32 0, i32 14
  %167 = load i64, i64* %black_pixel203, align 8
  %conv204 = trunc i64 %167 to i32
  %call205 = call i32 @x_decode_color(%struct.frame* %155, i64 %156, i32 %conv204)
  %conv206 = sext i32 %call205 to i64
  %168 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data207 = getelementptr inbounds %struct.frame, %struct.frame* %168, i32 0, i32 62
  %x208 = bitcast %union.output_data* %output_data207 to %struct.x_output**
  %169 = load %struct.x_output*, %struct.x_output** %x208, align 8
  %mouse_pixel209 = getelementptr inbounds %struct.x_output, %struct.x_output* %169, i32 0, i32 30
  store i64 %conv206, i64* %mouse_pixel209, align 8
  %170 = load i64, i64* %parent, align 8
  %call210 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp211 = icmp eq i64 %170, %call210
  br i1 %cmp211, label %if.else.221, label %if.then.213

if.then.213:                                      ; preds = %if.end.93
  %171 = load i64, i64* %parent, align 8
  %shr = ashr i64 %171, 2
  %172 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data214 = getelementptr inbounds %struct.frame, %struct.frame* %172, i32 0, i32 62
  %x215 = bitcast %union.output_data* %output_data214 to %struct.x_output**
  %173 = load %struct.x_output*, %struct.x_output** %x215, align 8
  %parent_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %173, i32 0, i32 11
  store i64 %shr, i64* %parent_desc, align 8
  %174 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data216 = getelementptr inbounds %struct.frame, %struct.frame* %174, i32 0, i32 62
  %x217 = bitcast %union.output_data* %output_data216 to %struct.x_output**
  %175 = load %struct.x_output*, %struct.x_output** %x217, align 8
  %explicit_parent = getelementptr inbounds %struct.x_output, %struct.x_output* %175, i32 0, i32 46
  %bf.load218 = load i8, i8* %explicit_parent, align 8
  %bf.clear219 = and i8 %bf.load218, -3
  %bf.set220 = or i8 %bf.clear219, 2
  store i8 %bf.set220, i8* %explicit_parent, align 8
  br label %if.end.233

if.else.221:                                      ; preds = %if.end.93
  %176 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data222 = getelementptr inbounds %struct.frame, %struct.frame* %176, i32 0, i32 62
  %x223 = bitcast %union.output_data* %output_data222 to %struct.x_output**
  %177 = load %struct.x_output*, %struct.x_output** %x223, align 8
  %display_info224 = getelementptr inbounds %struct.x_output, %struct.x_output* %177, i32 0, i32 44
  %178 = load %struct.x_display_info*, %struct.x_display_info** %display_info224, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %178, i32 0, i32 14
  %179 = load i64, i64* %root_window, align 8
  %180 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data225 = getelementptr inbounds %struct.frame, %struct.frame* %180, i32 0, i32 62
  %x226 = bitcast %union.output_data* %output_data225 to %struct.x_output**
  %181 = load %struct.x_output*, %struct.x_output** %x226, align 8
  %parent_desc227 = getelementptr inbounds %struct.x_output, %struct.x_output* %181, i32 0, i32 11
  store i64 %179, i64* %parent_desc227, align 8
  %182 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data228 = getelementptr inbounds %struct.frame, %struct.frame* %182, i32 0, i32 62
  %x229 = bitcast %union.output_data* %output_data228 to %struct.x_output**
  %183 = load %struct.x_output*, %struct.x_output** %x229, align 8
  %explicit_parent230 = getelementptr inbounds %struct.x_output, %struct.x_output* %183, i32 0, i32 46
  %bf.load231 = load i8, i8* %explicit_parent230, align 8
  %bf.clear232 = and i8 %bf.load231, -3
  store i8 %bf.clear232, i8* %explicit_parent230, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.221, %if.then.213
  %184 = load i64, i64* %name, align 8
  %call234 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp235 = icmp eq i64 %184, %call234
  br i1 %cmp235, label %if.then.241, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %if.end.233
  %185 = load i64, i64* %name, align 8
  %call238 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp239 = icmp eq i64 %185, %call238
  br i1 %cmp239, label %if.then.241, label %if.else.245

if.then.241:                                      ; preds = %lor.lhs.false.237, %if.end.233
  %186 = load %struct.frame*, %struct.frame** %f, align 8
  %187 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_id_name = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %187, i32 0, i32 27
  %188 = load i8*, i8** %x_id_name, align 8
  %call242 = call i64 @build_string(i8* %188)
  call void @fset_name(%struct.frame* %186, i64 %call242)
  %189 = load %struct.frame*, %struct.frame** %f, align 8
  %explicit_name = getelementptr inbounds %struct.frame, %struct.frame* %189, i32 0, i32 26
  %190 = bitcast i48* %explicit_name to i64*
  %bf.load243 = load i64, i64* %190, align 8
  %bf.clear244 = and i64 %bf.load243, -262145
  store i64 %bf.clear244, i64* %190, align 8
  br label %if.end.251

if.else.245:                                      ; preds = %lor.lhs.false.237
  %191 = load %struct.frame*, %struct.frame** %f, align 8
  %192 = load i64, i64* %name, align 8
  call void @fset_name(%struct.frame* %191, i64 %192)
  %193 = load %struct.frame*, %struct.frame** %f, align 8
  %explicit_name246 = getelementptr inbounds %struct.frame, %struct.frame* %193, i32 0, i32 26
  %194 = bitcast i48* %explicit_name246 to i64*
  %bf.load247 = load i64, i64* %194, align 8
  %bf.clear248 = and i64 %bf.load247, -262145
  %bf.set249 = or i64 %bf.clear248, 262144
  store i64 %bf.set249, i64* %194, align 8
  %call250 = call i64 @builtin_lisp_symbol(i32 1054)
  %195 = load i64, i64* %name, align 8
  call void @specbind(i64 %call250, i64 %195)
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.245, %if.then.241
  %196 = load %struct.frame*, %struct.frame** %f, align 8
  call void @register_font_driver(%struct.font_driver* @xftfont_driver, %struct.frame* %196)
  %197 = load %struct.frame*, %struct.frame** %f, align 8
  call void @register_font_driver(%struct.font_driver* @xfont_driver, %struct.frame* %197)
  %198 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal252 = getelementptr inbounds %struct.frame, %struct.frame* %198, i32 0, i32 61
  %199 = load %struct.terminal*, %struct.terminal** %terminal252, align 8
  %image_cache = getelementptr inbounds %struct.terminal, %struct.terminal* %199, i32 0, i32 11
  %200 = load %struct.image_cache*, %struct.image_cache** %image_cache, align 8
  %tobool253 = icmp ne %struct.image_cache* %200, null
  br i1 %tobool253, label %cond.true.254, label %cond.false.257

cond.true.254:                                    ; preds = %if.end.251
  %201 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal255 = getelementptr inbounds %struct.frame, %struct.frame* %201, i32 0, i32 61
  %202 = load %struct.terminal*, %struct.terminal** %terminal255, align 8
  %image_cache256 = getelementptr inbounds %struct.terminal, %struct.terminal* %202, i32 0, i32 11
  %203 = load %struct.image_cache*, %struct.image_cache** %image_cache256, align 8
  %refcount = getelementptr inbounds %struct.image_cache, %struct.image_cache* %203, i32 0, i32 4
  %204 = load i64, i64* %refcount, align 8
  br label %cond.end.258

cond.false.257:                                   ; preds = %if.end.251
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.257, %cond.true.254
  %cond = phi i64 [ %204, %cond.true.254 ], [ 0, %cond.false.257 ]
  store i64 %cond, i64* @image_cache_refcount, align 8
  %205 = load %struct.frame*, %struct.frame** %f, align 8
  %206 = load i64, i64* %parms.addr, align 8
  %call259 = call i64 @builtin_lisp_symbol(i32 440)
  %call260 = call i64 @builtin_lisp_symbol(i32 0)
  %call261 = call i64 @x_default_parameter(%struct.frame* %205, i64 %206, i64 %call259, i64 %call260, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 3)
  %207 = load %struct.frame*, %struct.frame** %f, align 8
  %208 = load i64, i64* %parms.addr, align 8
  call void @x_default_font_parameter(%struct.frame* %207, i64 %208)
  %209 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data262 = getelementptr inbounds %struct.frame, %struct.frame* %209, i32 0, i32 62
  %x263 = bitcast %union.output_data* %output_data262 to %struct.x_output**
  %210 = load %struct.x_output*, %struct.x_output** %x263, align 8
  %font = getelementptr inbounds %struct.x_output, %struct.x_output* %210, i32 0, i32 25
  %211 = load %struct.font*, %struct.font** %font, align 8
  %tobool264 = icmp ne %struct.font* %211, null
  br i1 %tobool264, label %if.end.268, label %if.then.265

if.then.265:                                      ; preds = %cond.end.258
  %212 = load i64, i64* %frame, align 8
  %call266 = call i64 @builtin_lisp_symbol(i32 704)
  %call267 = call i64 @delete_frame(i64 %212, i64 %call266)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #7
  unreachable

if.end.268:                                       ; preds = %cond.end.258
  %213 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data269 = getelementptr inbounds %struct.frame, %struct.frame* %213, i32 0, i32 62
  %x270 = bitcast %union.output_data* %output_data269 to %struct.x_output**
  %214 = load %struct.x_output*, %struct.x_output** %x270, align 8
  %explicit_parent271 = getelementptr inbounds %struct.x_output, %struct.x_output* %214, i32 0, i32 46
  %bf.load272 = load i8, i8* %explicit_parent271, align 8
  %bf.lshr = lshr i8 %bf.load272, 1
  %bf.clear273 = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear273 to i1
  %conv274 = zext i1 %bf.cast to i32
  %cmp275 = icmp ne i32 %conv274, 0
  br i1 %cmp275, label %if.end.280, label %if.then.277

if.then.277:                                      ; preds = %if.end.268
  %215 = load %struct.frame*, %struct.frame** %f, align 8
  %216 = load i64, i64* %parms.addr, align 8
  %call278 = call i64 @builtin_lisp_symbol(i32 210)
  %call279 = call i64 @x_default_parameter(%struct.frame* %215, i64 %216, i64 %call278, i64 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 0)
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.277, %if.end.268
  %call281 = call i64 @builtin_lisp_symbol(i32 563)
  %217 = load i64, i64* %parms.addr, align 8
  %call282 = call i64 @Fassq(i64 %call281, i64 %217)
  %call283 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp284 = icmp eq i64 %call282, %call283
  br i1 %cmp284, label %if.then.286, label %if.end.297

if.then.286:                                      ; preds = %if.end.280
  %218 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %219 = load i64, i64* %parms.addr, align 8
  %call287 = call i64 @builtin_lisp_symbol(i32 563)
  %call288 = call i64 @x_get_arg(%struct.x_display_info* %218, i64 %219, i64 %call287, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 0)
  store i64 %call288, i64* %value, align 8
  %220 = load i64, i64* %value, align 8
  %call289 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp290 = icmp eq i64 %220, %call289
  br i1 %cmp290, label %if.end.296, label %if.then.292

if.then.292:                                      ; preds = %if.then.286
  %call293 = call i64 @builtin_lisp_symbol(i32 563)
  %221 = load i64, i64* %value, align 8
  %call294 = call i64 @Fcons(i64 %call293, i64 %221)
  %222 = load i64, i64* %parms.addr, align 8
  %call295 = call i64 @Fcons(i64 %call294, i64 %222)
  store i64 %call295, i64* %parms.addr, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.292, %if.then.286
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.280
  %223 = load %struct.frame*, %struct.frame** %f, align 8
  %224 = load i64, i64* %parms.addr, align 8
  %call298 = call i64 @builtin_lisp_symbol(i32 563)
  %call299 = call i64 @x_default_parameter(%struct.frame* %223, i64 %224, i64 %call298, i64 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %225 = load %struct.frame*, %struct.frame** %f, align 8
  %226 = load i64, i64* %parms.addr, align 8
  %call300 = call i64 @builtin_lisp_symbol(i32 813)
  %call301 = call i64 @x_default_parameter(%struct.frame* %225, i64 %226, i64 %call300, i64 2, i8* null, i8* null, i32 0)
  %227 = load %struct.frame*, %struct.frame** %f, align 8
  %228 = load i64, i64* %parms.addr, align 8
  %call302 = call i64 @builtin_lisp_symbol(i32 215)
  %call303 = call i64 @x_default_parameter(%struct.frame* %227, i64 %228, i64 %call302, i64 2, i8* null, i8* null, i32 0)
  %229 = load %struct.frame*, %struct.frame** %f, align 8
  %230 = load i64, i64* %parms.addr, align 8
  %call304 = call i64 @builtin_lisp_symbol(i32 1003)
  %call305 = call i64 @builtin_lisp_symbol(i32 811)
  %call306 = call i64 @x_default_parameter(%struct.frame* %229, i64 %230, i64 %call304, i64 %call305, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 4)
  %231 = load %struct.frame*, %struct.frame** %f, align 8
  %232 = load i64, i64* %parms.addr, align 8
  %call307 = call i64 @builtin_lisp_symbol(i32 525)
  %call308 = call i64 @builtin_lisp_symbol(i32 0)
  %call309 = call i64 @x_default_parameter(%struct.frame* %231, i64 %232, i64 %call307, i64 %call308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 4)
  %233 = load %struct.frame*, %struct.frame** %f, align 8
  %234 = load i64, i64* %parms.addr, align 8
  %call310 = call i64 @builtin_lisp_symbol(i32 451)
  %call311 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call312 = call i64 @x_default_parameter(%struct.frame* %233, i64 %234, i64 %call310, i64 %call311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3)
  %235 = load %struct.frame*, %struct.frame** %f, align 8
  %236 = load i64, i64* %parms.addr, align 8
  %call313 = call i64 @builtin_lisp_symbol(i32 193)
  %call314 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0))
  %call315 = call i64 @x_default_parameter(%struct.frame* %235, i64 %236, i64 %call313, i64 %call314, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 3)
  %237 = load %struct.frame*, %struct.frame** %f, align 8
  %238 = load i64, i64* %parms.addr, align 8
  %call316 = call i64 @builtin_lisp_symbol(i32 686)
  %call317 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call318 = call i64 @x_default_parameter(%struct.frame* %237, i64 %238, i64 %call316, i64 %call317, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3)
  %239 = load %struct.frame*, %struct.frame** %f, align 8
  %240 = load i64, i64* %parms.addr, align 8
  %call319 = call i64 @builtin_lisp_symbol(i32 209)
  %call320 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call321 = call i64 @x_default_parameter(%struct.frame* %239, i64 %240, i64 %call319, i64 %call320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 3)
  %241 = load %struct.frame*, %struct.frame** %f, align 8
  %242 = load i64, i64* %parms.addr, align 8
  %call322 = call i64 @builtin_lisp_symbol(i32 829)
  %call323 = call i64 @builtin_lisp_symbol(i32 0)
  %call324 = call i64 @x_default_parameter(%struct.frame* %241, i64 %242, i64 %call322, i64 %call323, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 1)
  %243 = load %struct.frame*, %struct.frame** %f, align 8
  %244 = load i64, i64* %parms.addr, align 8
  %call325 = call i64 @builtin_lisp_symbol(i32 623)
  %call326 = call i64 @builtin_lisp_symbol(i32 0)
  %call327 = call i64 @x_default_parameter(%struct.frame* %243, i64 %244, i64 %call325, i64 %call326, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 0)
  %245 = load %struct.frame*, %struct.frame** %f, align 8
  %246 = load i64, i64* %parms.addr, align 8
  %call328 = call i64 @builtin_lisp_symbol(i32 608)
  %call329 = call i64 @builtin_lisp_symbol(i32 0)
  %call330 = call i64 @x_default_parameter(%struct.frame* %245, i64 %246, i64 %call328, i64 %call329, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 0)
  %247 = load %struct.frame*, %struct.frame** %f, align 8
  %248 = load i64, i64* %parms.addr, align 8
  %call331 = call i64 @builtin_lisp_symbol(i32 814)
  %call332 = call i64 @builtin_lisp_symbol(i32 0)
  %call333 = call i64 @x_default_parameter(%struct.frame* %247, i64 %248, i64 %call331, i64 %call332, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 0)
  %249 = load %struct.frame*, %struct.frame** %f, align 8
  %250 = load i64, i64* %parms.addr, align 8
  %call334 = call i64 @builtin_lisp_symbol(i32 832)
  %call335 = call i64 @x_default_scroll_bar_color_parameter(%struct.frame* %249, i64 %250, i64 %call334, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i1 zeroext true)
  %251 = load %struct.frame*, %struct.frame** %f, align 8
  %252 = load i64, i64* %parms.addr, align 8
  %call336 = call i64 @builtin_lisp_symbol(i32 831)
  %call337 = call i64 @x_default_scroll_bar_color_parameter(%struct.frame* %251, i64 %252, i64 %call336, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i1 zeroext false)
  %253 = load %struct.frame*, %struct.frame** %f, align 8
  call void @init_frame_faces(%struct.frame* %253)
  %254 = load %struct.frame*, %struct.frame** %f, align 8
  %255 = load %struct.frame*, %struct.frame** %f, align 8
  %text_cols = getelementptr inbounds %struct.frame, %struct.frame* %255, i32 0, i32 36
  %256 = load i32, i32* %text_cols, align 4
  %257 = load %struct.frame*, %struct.frame** %f, align 8
  %column_width = getelementptr inbounds %struct.frame, %struct.frame* %257, i32 0, i32 59
  %258 = load i32, i32* %column_width, align 4
  %mul = mul nsw i32 %256, %258
  %259 = load %struct.frame*, %struct.frame** %f, align 8
  %text_lines = getelementptr inbounds %struct.frame, %struct.frame* %259, i32 0, i32 37
  %260 = load i32, i32* %text_lines, align 4
  %261 = load %struct.frame*, %struct.frame** %f, align 8
  %line_height = getelementptr inbounds %struct.frame, %struct.frame* %261, i32 0, i32 60
  %262 = load i32, i32* %line_height, align 4
  %mul338 = mul nsw i32 %260, %262
  %call339 = call i64 @builtin_lisp_symbol(i32 1047)
  call void @adjust_frame_size(%struct.frame* %254, i32 %mul, i32 %mul338, i32 5, i1 zeroext true, i64 %call339)
  %263 = load %struct.frame*, %struct.frame** %f, align 8
  %264 = load i64, i64* %parms.addr, align 8
  %call340 = call i64 @builtin_lisp_symbol(i32 653)
  %265 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 177), align 8
  %call341 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp342 = icmp eq i64 %265, %call341
  %cond344 = select i1 %cmp342, i64 2, i64 6
  %call345 = call i64 @x_default_parameter(%struct.frame* %263, i64 %264, i64 %call340, i64 %cond344, i8* null, i8* null, i32 0)
  %266 = load %struct.frame*, %struct.frame** %f, align 8
  %267 = load i64, i64* %parms.addr, align 8
  %call346 = call i64 @builtin_lisp_symbol(i32 923)
  %268 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 301), align 8
  %call347 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp348 = icmp eq i64 %268, %call347
  %cond350 = select i1 %cmp348, i64 2, i64 6
  %call351 = call i64 @x_default_parameter(%struct.frame* %266, i64 %267, i64 %call346, i64 %cond350, i8* null, i8* null, i32 0)
  %269 = load %struct.frame*, %struct.frame** %f, align 8
  %270 = load i64, i64* %parms.addr, align 8
  %call352 = call i64 @builtin_lisp_symbol(i32 227)
  %call353 = call i64 @builtin_lisp_symbol(i32 0)
  %call354 = call i64 @x_default_parameter(%struct.frame* %269, i64 %270, i64 %call352, i64 %call353, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 4)
  %271 = load %struct.frame*, %struct.frame** %f, align 8
  %272 = load i64, i64* %parms.addr, align 8
  %call355 = call i64 @builtin_lisp_symbol(i32 919)
  %call356 = call i64 @builtin_lisp_symbol(i32 0)
  %call357 = call i64 @x_default_parameter(%struct.frame* %271, i64 %272, i64 %call355, i64 %call356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 3)
  %273 = load %struct.frame*, %struct.frame** %f, align 8
  %274 = load i64, i64* %parms.addr, align 8
  %call358 = call i64 @builtin_lisp_symbol(i32 1010)
  %call359 = call i64 @builtin_lisp_symbol(i32 901)
  %call360 = call i64 @x_default_parameter(%struct.frame* %273, i64 %274, i64 %call358, i64 %call359, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 2)
  %275 = load %struct.frame*, %struct.frame** %f, align 8
  %276 = load i64, i64* %parms.addr, align 8
  %call361 = call i64 @builtin_lisp_symbol(i32 924)
  %277 = load %struct.frame*, %struct.frame** %f, align 8
  %tool_bar_position = getelementptr inbounds %struct.frame, %struct.frame* %277, i32 0, i32 18
  %278 = load i64, i64* %tool_bar_position, align 8
  %call362 = call i64 @x_default_parameter(%struct.frame* %275, i64 %276, i64 %call361, i64 %278, i8* null, i8* null, i32 4)
  %279 = load %struct.frame*, %struct.frame** %f, align 8
  %280 = load i64, i64* %parms.addr, align 8
  %call363 = call i64 @x_figure_window_size(%struct.frame* %279, i64 %280, i1 zeroext true, i32* %x_width, i32* %x_height)
  store i64 %call363, i64* %window_prompting, align 8
  %281 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %282 = load i64, i64* %parms.addr, align 8
  %call364 = call i64 @builtin_lisp_symbol(i32 976)
  %call365 = call i64 @x_get_arg(%struct.x_display_info* %281, i64 %282, i64 %call364, i8* null, i8* null, i32 2)
  store i64 %call365, i64* %tem, align 8
  %283 = load i8, i8* %minibuffer_only, align 1
  %tobool366 = trunc i8 %283 to i1
  br i1 %tobool366, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.297
  %284 = load i64, i64* %tem, align 8
  %call368 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp369 = icmp eq i64 %284, %call368
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.297
  %285 = phi i1 [ true, %if.end.297 ], [ %cmp369, %lor.rhs ]
  %286 = load %struct.frame*, %struct.frame** %f, align 8
  %no_split = getelementptr inbounds %struct.frame, %struct.frame* %286, i32 0, i32 26
  %287 = bitcast i48* %no_split to i64*
  %288 = zext i1 %285 to i64
  %bf.load371 = load i64, i64* %287, align 8
  %bf.shl = shl i64 %288, 17
  %bf.clear372 = and i64 %bf.load371, -131073
  %bf.set373 = or i64 %bf.clear372, %bf.shl
  store i64 %bf.set373, i64* %287, align 8
  %bf.result.cast = trunc i64 %288 to i8
  %tobool374 = trunc i8 %bf.result.cast to i1
  %289 = load %struct.frame*, %struct.frame** %f, align 8
  %290 = load i64, i64* %parms.addr, align 8
  call void @x_icon_verify(%struct.frame* %289, i64 %290)
  %291 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_window(%struct.frame* %291)
  %292 = load %struct.frame*, %struct.frame** %f, align 8
  %293 = load i64, i64* %parms.addr, align 8
  call void @x_icon(%struct.frame* %292, i64 %293)
  %294 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_make_gc(%struct.frame* %294)
  %295 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal375 = getelementptr inbounds %struct.frame, %struct.frame* %295, i32 0, i32 61
  %296 = load %struct.terminal*, %struct.terminal** %terminal375, align 8
  %reference_count = getelementptr inbounds %struct.terminal, %struct.terminal* %296, i32 0, i32 7
  %297 = load i32, i32* %reference_count, align 4
  %inc = add nsw i32 %297, 1
  store i32 %inc, i32* %reference_count, align 4
  %298 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data376 = getelementptr inbounds %struct.frame, %struct.frame* %298, i32 0, i32 62
  %x377 = bitcast %union.output_data* %output_data376 to %struct.x_output**
  %299 = load %struct.x_output*, %struct.x_output** %x377, align 8
  %display_info378 = getelementptr inbounds %struct.x_output, %struct.x_output* %299, i32 0, i32 44
  %300 = load %struct.x_display_info*, %struct.x_display_info** %display_info378, align 8
  %reference_count379 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %300, i32 0, i32 5
  %301 = load i32, i32* %reference_count379, align 4
  %inc380 = add nsw i32 %301, 1
  store i32 %inc380, i32* %reference_count379, align 4
  %302 = load i64, i64* %frame, align 8
  %303 = load i64, i64* @Vframe_list, align 8
  %call381 = call i64 @Fcons(i64 %302, i64 %303)
  store i64 %call381, i64* @Vframe_list, align 8
  %304 = load %struct.frame*, %struct.frame** %f, align 8
  %305 = load i64, i64* %parms.addr, align 8
  %call382 = call i64 @builtin_lisp_symbol(i32 532)
  %call383 = call i64 @builtin_lisp_symbol(i32 901)
  %call384 = call i64 @x_default_parameter(%struct.frame* %304, i64 %305, i64 %call382, i64 %call383, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 2)
  %306 = load %struct.frame*, %struct.frame** %f, align 8
  %307 = load i64, i64* %parms.addr, align 8
  %call385 = call i64 @builtin_lisp_symbol(i32 189)
  %call386 = call i64 @builtin_lisp_symbol(i32 0)
  %call387 = call i64 @x_default_parameter(%struct.frame* %306, i64 %307, i64 %call385, i64 %call386, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 2)
  %308 = load %struct.frame*, %struct.frame** %f, align 8
  %309 = load i64, i64* %parms.addr, align 8
  %call388 = call i64 @builtin_lisp_symbol(i32 188)
  %call389 = call i64 @builtin_lisp_symbol(i32 0)
  %call390 = call i64 @x_default_parameter(%struct.frame* %308, i64 %309, i64 %call388, i64 %call389, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 2)
  %310 = load %struct.frame*, %struct.frame** %f, align 8
  %311 = load i64, i64* %parms.addr, align 8
  %call391 = call i64 @builtin_lisp_symbol(i32 309)
  %call392 = call i64 @builtin_lisp_symbol(i32 218)
  %call393 = call i64 @x_default_parameter(%struct.frame* %310, i64 %311, i64 %call391, i64 %call392, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i32 4)
  %312 = load %struct.frame*, %struct.frame** %f, align 8
  %313 = load i64, i64* %parms.addr, align 8
  %call394 = call i64 @builtin_lisp_symbol(i32 835)
  %call395 = call i64 @builtin_lisp_symbol(i32 0)
  %call396 = call i64 @x_default_parameter(%struct.frame* %312, i64 %313, i64 %call394, i64 %call395, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i32 0)
  %314 = load %struct.frame*, %struct.frame** %f, align 8
  %315 = load i64, i64* %parms.addr, align 8
  %call397 = call i64 @builtin_lisp_symbol(i32 833)
  %call398 = call i64 @builtin_lisp_symbol(i32 0)
  %call399 = call i64 @x_default_parameter(%struct.frame* %314, i64 %315, i64 %call397, i64 %call398, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 0)
  %316 = load %struct.frame*, %struct.frame** %f, align 8
  %317 = load i64, i64* %parms.addr, align 8
  %call400 = call i64 @builtin_lisp_symbol(i32 170)
  %call401 = call i64 @builtin_lisp_symbol(i32 0)
  %call402 = call i64 @x_default_parameter(%struct.frame* %316, i64 %317, i64 %call400, i64 %call401, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 0)
  %318 = load i8, i8* %minibuffer_only, align 1
  %tobool403 = trunc i8 %318 to i1
  br i1 %tobool403, label %if.end.411, label %land.lhs.true.404

land.lhs.true.404:                                ; preds = %lor.end
  %319 = load %struct.frame*, %struct.frame** %f, align 8
  %external_menu_bar = getelementptr inbounds %struct.frame, %struct.frame* %319, i32 0, i32 26
  %320 = bitcast i48* %external_menu_bar to i64*
  %bf.load405 = load i64, i64* %320, align 8
  %bf.lshr406 = lshr i64 %bf.load405, 9
  %bf.clear407 = and i64 %bf.lshr406, 1
  %bf.cast408 = trunc i64 %bf.clear407 to i1
  br i1 %bf.cast408, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %land.lhs.true.404
  %321 = load %struct.frame*, %struct.frame** %f, align 8
  call void @initialize_frame_menubar(%struct.frame* %321)
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.410, %land.lhs.true.404, %lor.end
  %322 = load %struct.frame*, %struct.frame** %f, align 8
  %can_x_set_window_size = getelementptr inbounds %struct.frame, %struct.frame* %322, i32 0, i32 26
  %323 = bitcast i48* %can_x_set_window_size to i64*
  %bf.load412 = load i64, i64* %323, align 8
  %bf.clear413 = and i64 %bf.load412, -17179869185
  %bf.set414 = or i64 %bf.clear413, 17179869184
  store i64 %bf.set414, i64* %323, align 8
  %324 = load i32, i32* %x_width, align 4
  %cmp415 = icmp sgt i32 %324, 0
  br i1 %cmp415, label %if.then.417, label %if.end.432

if.then.417:                                      ; preds = %if.end.411
  %325 = load i32, i32* %x_width, align 4
  %326 = load %struct.frame*, %struct.frame** %f, align 8
  %text_width = getelementptr inbounds %struct.frame, %struct.frame* %326, i32 0, i32 40
  store i32 %325, i32* %text_width, align 4
  %327 = load i32, i32* %x_width, align 4
  %328 = load %struct.frame*, %struct.frame** %f, align 8
  %vertical_scroll_bar_type = getelementptr inbounds %struct.frame, %struct.frame* %328, i32 0, i32 26
  %329 = bitcast i48* %vertical_scroll_bar_type to i64*
  %bf.load418 = load i64, i64* %329, align 8
  %bf.lshr419 = lshr i64 %bf.load418, 30
  %bf.clear420 = and i64 %bf.lshr419, 3
  %bf.cast421 = trunc i64 %bf.clear420 to i32
  %cmp422 = icmp ne i32 %bf.cast421, 0
  br i1 %cmp422, label %cond.true.424, label %cond.false.425

cond.true.424:                                    ; preds = %if.then.417
  %330 = load %struct.frame*, %struct.frame** %f, align 8
  %config_scroll_bar_width = getelementptr inbounds %struct.frame, %struct.frame* %330, i32 0, i32 69
  %331 = load i32, i32* %config_scroll_bar_width, align 4
  br label %cond.end.426

cond.false.425:                                   ; preds = %if.then.417
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.false.425, %cond.true.424
  %cond427 = phi i32 [ %331, %cond.true.424 ], [ 0, %cond.false.425 ]
  %add = add nsw i32 %327, %cond427
  %332 = load %struct.frame*, %struct.frame** %f, align 8
  %left_fringe_width = getelementptr inbounds %struct.frame, %struct.frame* %332, i32 0, i32 54
  %333 = load i32, i32* %left_fringe_width, align 4
  %334 = load %struct.frame*, %struct.frame** %f, align 8
  %right_fringe_width = getelementptr inbounds %struct.frame, %struct.frame* %334, i32 0, i32 55
  %335 = load i32, i32* %right_fringe_width, align 4
  %add428 = add nsw i32 %333, %335
  %add429 = add nsw i32 %add, %add428
  %336 = load %struct.frame*, %struct.frame** %f, align 8
  %internal_border_width = getelementptr inbounds %struct.frame, %struct.frame* %336, i32 0, i32 51
  %337 = load i32, i32* %internal_border_width, align 4
  %mul430 = mul nsw i32 2, %337
  %add431 = add nsw i32 %add429, %mul430
  %338 = load %struct.frame*, %struct.frame** %f, align 8
  %pixel_width = getelementptr inbounds %struct.frame, %struct.frame* %338, i32 0, i32 46
  store i32 %add431, i32* %pixel_width, align 4
  br label %if.end.432

if.end.432:                                       ; preds = %cond.end.426, %if.end.411
  %339 = load i32, i32* %x_height, align 4
  %cmp433 = icmp sgt i32 %339, 0
  br i1 %cmp433, label %if.then.435, label %if.end.451

if.then.435:                                      ; preds = %if.end.432
  %340 = load i32, i32* %x_height, align 4
  %341 = load %struct.frame*, %struct.frame** %f, align 8
  %text_height = getelementptr inbounds %struct.frame, %struct.frame* %341, i32 0, i32 41
  store i32 %340, i32* %text_height, align 4
  %342 = load i32, i32* %x_height, align 4
  %343 = load %struct.frame*, %struct.frame** %f, align 8
  %menu_bar_height = getelementptr inbounds %struct.frame, %struct.frame* %343, i32 0, i32 58
  %344 = load i32, i32* %menu_bar_height, align 4
  %345 = load %struct.frame*, %struct.frame** %f, align 8
  %tool_bar_height = getelementptr inbounds %struct.frame, %struct.frame* %345, i32 0, i32 28
  %346 = load i32, i32* %tool_bar_height, align 4
  %add436 = add nsw i32 %344, %346
  %add437 = add nsw i32 %342, %add436
  %347 = load %struct.frame*, %struct.frame** %f, align 8
  %horizontal_scroll_bars = getelementptr inbounds %struct.frame, %struct.frame* %347, i32 0, i32 26
  %348 = bitcast i48* %horizontal_scroll_bars to i64*
  %bf.load438 = load i64, i64* %348, align 8
  %bf.lshr439 = lshr i64 %bf.load438, 32
  %bf.clear440 = and i64 %bf.lshr439, 1
  %bf.cast441 = trunc i64 %bf.clear440 to i1
  br i1 %bf.cast441, label %cond.true.443, label %cond.false.444

cond.true.443:                                    ; preds = %if.then.435
  %349 = load %struct.frame*, %struct.frame** %f, align 8
  %config_scroll_bar_height = getelementptr inbounds %struct.frame, %struct.frame* %349, i32 0, i32 71
  %350 = load i32, i32* %config_scroll_bar_height, align 4
  br label %cond.end.445

cond.false.444:                                   ; preds = %if.then.435
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.false.444, %cond.true.443
  %cond446 = phi i32 [ %350, %cond.true.443 ], [ 0, %cond.false.444 ]
  %add447 = add nsw i32 %add437, %cond446
  %351 = load %struct.frame*, %struct.frame** %f, align 8
  %internal_border_width448 = getelementptr inbounds %struct.frame, %struct.frame* %351, i32 0, i32 51
  %352 = load i32, i32* %internal_border_width448, align 4
  %mul449 = mul nsw i32 2, %352
  %add450 = add nsw i32 %add447, %mul449
  %353 = load %struct.frame*, %struct.frame** %f, align 8
  %pixel_height = getelementptr inbounds %struct.frame, %struct.frame* %353, i32 0, i32 47
  store i32 %add450, i32* %pixel_height, align 4
  br label %if.end.451

if.end.451:                                       ; preds = %cond.end.445, %if.end.432
  call void @block_input()
  %354 = load %struct.frame*, %struct.frame** %f, align 8
  %355 = load i64, i64* %window_prompting, align 8
  call void @x_wm_set_size_hint(%struct.frame* %354, i64 %355, i1 zeroext false)
  call void @unblock_input()
  %356 = load %struct.frame*, %struct.frame** %f, align 8
  %357 = load %struct.frame*, %struct.frame** %f, align 8
  %text_width452 = getelementptr inbounds %struct.frame, %struct.frame* %357, i32 0, i32 40
  %358 = load i32, i32* %text_width452, align 4
  %359 = load %struct.frame*, %struct.frame** %f, align 8
  %text_height453 = getelementptr inbounds %struct.frame, %struct.frame* %359, i32 0, i32 41
  %360 = load i32, i32* %text_height453, align 4
  %call454 = call i64 @builtin_lisp_symbol(i32 1048)
  call void @adjust_frame_size(%struct.frame* %356, i32 %358, i32 %360, i32 0, i1 zeroext true, i64 %call454)
  %361 = load %struct.frame*, %struct.frame** %f, align 8
  %362 = load i64, i64* %parms.addr, align 8
  %call455 = call i64 @builtin_lisp_symbol(i32 472)
  %call456 = call i64 @builtin_lisp_symbol(i32 0)
  %call457 = call i64 @x_default_parameter(%struct.frame* %361, i64 %362, i64 %call455, i64 %call456, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i32 4)
  %363 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data458 = getelementptr inbounds %struct.frame, %struct.frame* %363, i32 0, i32 62
  %x459 = bitcast %union.output_data* %output_data458 to %struct.x_output**
  %364 = load %struct.x_output*, %struct.x_output** %x459, align 8
  %explicit_parent460 = getelementptr inbounds %struct.x_output, %struct.x_output* %364, i32 0, i32 46
  %bf.load461 = load i8, i8* %explicit_parent460, align 8
  %bf.lshr462 = lshr i8 %bf.load461, 1
  %bf.clear463 = and i8 %bf.lshr462, 1
  %bf.cast464 = trunc i8 %bf.clear463 to i1
  br i1 %bf.cast464, label %if.end.486, label %if.then.465

if.then.465:                                      ; preds = %if.end.451
  %365 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %366 = load i64, i64* %parms.addr, align 8
  %call466 = call i64 @builtin_lisp_symbol(i32 1004)
  %call467 = call i64 @x_get_arg(%struct.x_display_info* %365, i64 %366, i64 %call466, i8* null, i8* null, i32 4)
  store i64 %call467, i64* %visibility, align 8
  %367 = load i64, i64* %visibility, align 8
  %call468 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp469 = icmp eq i64 %367, %call468
  br i1 %cmp469, label %if.then.471, label %if.end.473

if.then.471:                                      ; preds = %if.then.465
  %call472 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call472, i64* %visibility, align 8
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.471, %if.then.465
  %368 = load i64, i64* %visibility, align 8
  %call474 = call i64 @builtin_lisp_symbol(i32 528)
  %cmp475 = icmp eq i64 %368, %call474
  br i1 %cmp475, label %if.then.477, label %if.else.478

if.then.477:                                      ; preds = %if.end.473
  %369 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_iconify_frame(%struct.frame* %369)
  br label %if.end.485

if.else.478:                                      ; preds = %if.end.473
  %370 = load i64, i64* %visibility, align 8
  %call479 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp480 = icmp eq i64 %370, %call479
  br i1 %cmp480, label %if.else.483, label %if.then.482

if.then.482:                                      ; preds = %if.else.478
  %371 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_make_frame_visible(%struct.frame* %371)
  br label %if.end.484

if.else.483:                                      ; preds = %if.else.478
  br label %if.end.484

if.end.484:                                       ; preds = %if.else.483, %if.then.482
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.then.477
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.end.451
  call void @block_input()
  %372 = load %struct.frame*, %struct.frame** %f, align 8
  call void @set_machine_and_pid_properties(%struct.frame* %372)
  %373 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %client_leader_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %373, i32 0, i32 15
  %374 = load i64, i64* %client_leader_window, align 8
  %cmp487 = icmp ne i64 %374, 0
  br i1 %cmp487, label %if.then.489, label %if.end.524

if.then.489:                                      ; preds = %if.end.486
  %375 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data490 = getelementptr inbounds %struct.frame, %struct.frame* %375, i32 0, i32 62
  %x491 = bitcast %union.output_data* %output_data490 to %struct.x_output**
  %376 = load %struct.x_output*, %struct.x_output** %x491, align 8
  %display_info492 = getelementptr inbounds %struct.x_output, %struct.x_output* %376, i32 0, i32 44
  %377 = load %struct.x_display_info*, %struct.x_display_info** %display_info492, align 8
  %display493 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %377, i32 0, i32 2
  %378 = load %struct._XDisplay*, %struct._XDisplay** %display493, align 8
  %379 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data494 = getelementptr inbounds %struct.frame, %struct.frame* %379, i32 0, i32 62
  %x495 = bitcast %union.output_data* %output_data494 to %struct.x_output**
  %380 = load %struct.x_output*, %struct.x_output** %x495, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %380, i32 0, i32 12
  %381 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool496 = icmp ne %struct._GtkWidget* %381, null
  br i1 %tobool496, label %cond.true.497, label %cond.false.517

cond.true.497:                                    ; preds = %if.then.489
  %382 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data498 = getelementptr inbounds %struct.frame, %struct.frame* %382, i32 0, i32 62
  %x499 = bitcast %union.output_data* %output_data498 to %struct.x_output**
  %383 = load %struct.x_output*, %struct.x_output** %x499, align 8
  %widget500 = getelementptr inbounds %struct.x_output, %struct.x_output* %383, i32 0, i32 12
  %384 = load %struct._GtkWidget*, %struct._GtkWidget** %widget500, align 8
  %tobool501 = icmp ne %struct._GtkWidget* %384, null
  br i1 %tobool501, label %land.lhs.true.502, label %cond.false.514

land.lhs.true.502:                                ; preds = %cond.true.497
  %385 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data503 = getelementptr inbounds %struct.frame, %struct.frame* %385, i32 0, i32 62
  %x504 = bitcast %union.output_data* %output_data503 to %struct.x_output**
  %386 = load %struct.x_output*, %struct.x_output** %x504, align 8
  %widget505 = getelementptr inbounds %struct.x_output, %struct.x_output* %386, i32 0, i32 12
  %387 = load %struct._GtkWidget*, %struct._GtkWidget** %widget505, align 8
  %call506 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %387)
  %tobool507 = icmp ne %struct._GdkDrawable* %call506, null
  br i1 %tobool507, label %cond.true.508, label %cond.false.514

cond.true.508:                                    ; preds = %land.lhs.true.502
  %388 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data509 = getelementptr inbounds %struct.frame, %struct.frame* %388, i32 0, i32 62
  %x510 = bitcast %union.output_data* %output_data509 to %struct.x_output**
  %389 = load %struct.x_output*, %struct.x_output** %x510, align 8
  %widget511 = getelementptr inbounds %struct.x_output, %struct.x_output* %389, i32 0, i32 12
  %390 = load %struct._GtkWidget*, %struct._GtkWidget** %widget511, align 8
  %call512 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %390)
  %call513 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call512)
  br label %cond.end.515

cond.false.514:                                   ; preds = %land.lhs.true.502, %cond.true.497
  br label %cond.end.515

cond.end.515:                                     ; preds = %cond.false.514, %cond.true.508
  %cond516 = phi i64 [ %call513, %cond.true.508 ], [ 0, %cond.false.514 ]
  br label %cond.end.520

cond.false.517:                                   ; preds = %if.then.489
  %391 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data518 = getelementptr inbounds %struct.frame, %struct.frame* %391, i32 0, i32 62
  %x519 = bitcast %union.output_data* %output_data518 to %struct.x_output**
  %392 = load %struct.x_output*, %struct.x_output** %x519, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %392, i32 0, i32 9
  %393 = load i64, i64* %window_desc, align 8
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.517, %cond.end.515
  %cond521 = phi i64 [ %cond516, %cond.end.515 ], [ %393, %cond.false.517 ]
  %394 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_wm_client_leader = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %394, i32 0, i32 44
  %395 = load i64, i64* %Xatom_wm_client_leader, align 8
  %396 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %client_leader_window522 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %396, i32 0, i32 15
  %397 = bitcast i64* %client_leader_window522 to i8*
  %call523 = call i32 @XChangeProperty(%struct._XDisplay* %378, i64 %cond521, i64 %395, i64 33, i32 32, i32 0, i8* %397, i32 1)
  br label %if.end.524

if.end.524:                                       ; preds = %cond.end.520, %if.end.486
  call void @unblock_input()
  %398 = load %struct.frame*, %struct.frame** %f, align 8
  %minibuffer_window = getelementptr inbounds %struct.frame, %struct.frame* %398, i32 0, i32 7
  %399 = load i64, i64* %minibuffer_window, align 8
  %call525 = call zeroext i1 @WINDOWP(i64 %399)
  br i1 %call525, label %land.lhs.true.527, label %if.end.542

land.lhs.true.527:                                ; preds = %if.end.524
  %400 = load %struct.frame*, %struct.frame** %f, align 8
  %minibuffer_window528 = getelementptr inbounds %struct.frame, %struct.frame* %400, i32 0, i32 7
  %401 = load i64, i64* %minibuffer_window528, align 8
  %call529 = call %struct.window* @XWINDOW(i64 %401)
  %frame530 = getelementptr inbounds %struct.window, %struct.window* %call529, i32 0, i32 1
  %402 = load i64, i64* %frame530, align 8
  %sub = sub nsw i64 %402, 5
  %403 = inttoptr i64 %sub to i8*
  %404 = bitcast i8* %403 to %struct.frame*
  %405 = load %struct.frame*, %struct.frame** %f, align 8
  %cmp531 = icmp eq %struct.frame* %404, %405
  br i1 %cmp531, label %land.lhs.true.533, label %if.end.542

land.lhs.true.533:                                ; preds = %land.lhs.true.527
  %406 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %Vdefault_minibuffer_frame_ = getelementptr inbounds %struct.kboard, %struct.kboard* %406, i32 0, i32 20
  %407 = load i64, i64* %Vdefault_minibuffer_frame_, align 8
  %call534 = call zeroext i1 @FRAMEP(i64 %407)
  br i1 %call534, label %lor.lhs.false.535, label %if.then.541

lor.lhs.false.535:                                ; preds = %land.lhs.true.533
  %408 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %Vdefault_minibuffer_frame_536 = getelementptr inbounds %struct.kboard, %struct.kboard* %408, i32 0, i32 20
  %409 = load i64, i64* %Vdefault_minibuffer_frame_536, align 8
  %sub537 = sub nsw i64 %409, 5
  %410 = inttoptr i64 %sub537 to i8*
  %411 = bitcast i8* %410 to %struct.frame*
  %terminal538 = getelementptr inbounds %struct.frame, %struct.frame* %411, i32 0, i32 61
  %412 = load %struct.terminal*, %struct.terminal** %terminal538, align 8
  %cmp539 = icmp ne %struct.terminal* %412, null
  br i1 %cmp539, label %if.end.542, label %if.then.541

if.then.541:                                      ; preds = %lor.lhs.false.535, %land.lhs.true.533
  %413 = load %struct.kboard*, %struct.kboard** %kb, align 8
  %414 = load i64, i64* %frame, align 8
  call void @kset_default_minibuffer_frame(%struct.kboard* %413, i64 %414)
  br label %if.end.542

if.end.542:                                       ; preds = %if.then.541, %lor.lhs.false.535, %land.lhs.true.527, %if.end.524
  %415 = load i64, i64* %parms.addr, align 8
  store i64 %415, i64* %tem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.542
  %416 = load i64, i64* %tem, align 8
  %and543 = and i64 %416, 7
  %conv544 = trunc i64 %and543 to i32
  %cmp545 = icmp eq i32 %conv544, 3
  br i1 %cmp545, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %417 = load i64, i64* %tem, align 8
  %sub547 = sub nsw i64 %417, 3
  %418 = inttoptr i64 %sub547 to i8*
  %419 = bitcast i8* %418 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %419, i32 0, i32 0
  %420 = load i64, i64* %car, align 8
  %and548 = and i64 %420, 7
  %conv549 = trunc i64 %and548 to i32
  %cmp550 = icmp eq i32 %conv549, 3
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.564

land.lhs.true.552:                                ; preds = %for.body
  %421 = load i64, i64* %tem, align 8
  %sub553 = sub nsw i64 %421, 3
  %422 = inttoptr i64 %sub553 to i8*
  %423 = bitcast i8* %422 to %struct.Lisp_Cons*
  %car554 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %423, i32 0, i32 0
  %424 = load i64, i64* %car554, align 8
  %sub555 = sub nsw i64 %424, 3
  %425 = inttoptr i64 %sub555 to i8*
  %426 = bitcast i8* %425 to %struct.Lisp_Cons*
  %car556 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %426, i32 0, i32 0
  %427 = load i64, i64* %car556, align 8
  %call557 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp558 = icmp eq i64 %427, %call557
  br i1 %cmp558, label %if.end.564, label %if.then.560

if.then.560:                                      ; preds = %land.lhs.true.552
  %428 = load %struct.frame*, %struct.frame** %f, align 8
  %429 = load i64, i64* %tem, align 8
  %sub561 = sub nsw i64 %429, 3
  %430 = inttoptr i64 %sub561 to i8*
  %431 = bitcast i8* %430 to %struct.Lisp_Cons*
  %car562 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %431, i32 0, i32 0
  %432 = load i64, i64* %car562, align 8
  %433 = load %struct.frame*, %struct.frame** %f, align 8
  %param_alist = getelementptr inbounds %struct.frame, %struct.frame* %433, i32 0, i32 8
  %434 = load i64, i64* %param_alist, align 8
  %call563 = call i64 @Fcons(i64 %432, i64 %434)
  call void @fset_param_alist(%struct.frame* %428, i64 %call563)
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.560, %land.lhs.true.552, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.564
  %435 = load i64, i64* %tem, align 8
  %sub565 = sub nsw i64 %435, 3
  %436 = inttoptr i64 %sub565 to i8*
  %437 = bitcast i8* %436 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %437, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %438 = load i64, i64* %cdr, align 8
  store i64 %438, i64* %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call566 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call566, i64* @Vwindow_list, align 8
  %439 = load i64, i64* %count, align 8
  %440 = load i64, i64* %frame, align 8
  %call567 = call i64 @unbind_to(i64 %439, i64 %440)
  ret i64 %call567
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @Fcopy_alist(i64) #1

declare i64 @x_get_arg(%struct.x_display_info*, i64, i64, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

declare %struct.frame* @make_frame_without_minibuffer(i64, %struct.kboard*, i64) #1

declare %struct.frame* @make_minibuffer_frame() #1

declare zeroext i1 @WINDOWP(i64) #1

declare %struct.frame* @make_frame(i1 zeroext) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare noalias i8* @xzalloc(i64) #1

declare void @fset_icon_name(%struct.frame*, i64) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @do_unwind_create_frame(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @unwind_create_frame(i64 %0)
  ret void
}

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @x_decode_color(%struct.frame* %f, i64 %color_name, i32 %mono_color) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.frame*, align 8
  %color_name.addr = alloca i64, align 8
  %mono_color.addr = alloca i32, align 4
  %cdef = alloca %struct.XColor, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %color_name, i64* %color_name.addr, align 8
  store i32 %mono_color, i32* %mono_color.addr, align 4
  %0 = load i64, i64* %color_name.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %2 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %2, i32 0, i32 44
  %3 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %n_planes = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 11
  %4 = load i32, i32* %n_planes, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %mono_color.addr, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i64, i64* %color_name.addr, align 8
  %call = call i8* @SSDATA(i64 %7)
  %call1 = call zeroext i1 @x_defined_color(%struct.frame* %6, i8* %call, %struct.XColor* %cdef, i1 zeroext true)
  br i1 %call1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %pixel = getelementptr inbounds %struct.XColor, %struct.XColor* %cdef, i32 0, i32 0
  %8 = load i64, i64* %pixel, align 8
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load i64, i64* %color_name.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0), i64 %9) #7
  unreachable

return:                                           ; preds = %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @XScreenNumberOfScreen(%struct.Screen*) #1

declare void @fset_name(%struct.frame*, i64) #1

declare void @specbind(i64, i64) #1

declare void @register_font_driver(%struct.font_driver*, %struct.frame*) #1

declare i64 @x_default_parameter(%struct.frame*, i64, i64, i64, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @x_default_font_parameter(%struct.frame* %f, i64 %parms) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %parms.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %font_param = alloca i64, align 8
  %font = alloca i64, align 8
  %system_font = alloca i8*, align 8
  %names = alloca [8 x i8*], align 16
  %i = alloca i32, align 4
  %arg = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_Cons, align 8
  %.compoundliteral41 = alloca %union.Aligned_Cons, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %parms, i64* %parms.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %2, %struct.x_display_info** %dpyinfo, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %4 = load i64, i64* %parms.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 439)
  %call1 = call i64 @x_get_arg(%struct.x_display_info* %3, i64 %4, i64 %call, i8* null, i8* null, i32 3)
  store i64 %call1, i64* %font_param, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %font, align 8
  %5 = load i64, i64* %font_param, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %5, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %font_param, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %font_param, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %6, %call5
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end
  %call8 = call i8* @xsettings_get_system_font()
  store i8* %call8, i8** %system_font, align 8
  %7 = load i8*, i8** %system_font, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.7
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load i8*, i8** %system_font, align 8
  %call10 = call i64 @build_unibyte_string(i8* %9)
  %call11 = call i64 @font_open_by_name(%struct.frame* %8, i64 %call10)
  store i64 %call11, i64* %font, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %10 = load i64, i64* %font, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %10, %call14
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %11 = load i64, i64* %font_param, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %11, %call17
  br i1 %cmp18, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.16
  %12 = load i64, i64* %font_param, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %14 = load i64, i64* %parms.addr, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 439)
  %call20 = call i64 @x_get_arg(%struct.x_display_info* %13, i64 %14, i64 %call19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), i32 3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %call20, %cond.false ]
  store i64 %cond, i64* %font, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %cond.end, %if.end.13
  %15 = load i64, i64* %font, align 8
  %call22 = call zeroext i1 @FONTP(i64 %15)
  br i1 %call22, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.21
  %16 = load i64, i64* %font, align 8
  %call23 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %17 = bitcast [8 x i8*]* %names to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([8 x i8*]* @x_default_font_parameter.names to i8*), i64 64, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* %names, i32 0, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8
  %tobool25 = icmp ne i8* %19, null
  br i1 %tobool25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [8 x i8*], [8 x i8*]* %names, i32 0, i64 %idxprom26
  %22 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i64 @build_unibyte_string(i8* %22)
  %call29 = call i64 @font_open_by_name(%struct.frame* %20, i64 %call28)
  store i64 %call29, i64* %font, align 8
  %23 = load i64, i64* %font, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %23, %call30
  br i1 %cmp31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %for.body
  br label %for.end

if.end.33:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.32, %for.cond
  %25 = load i64, i64* %font, align 8
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp35 = icmp eq i64 %25, %call34
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.144, i32 0, i32 0)) #7
  unreachable

if.end.37:                                        ; preds = %for.end
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true, %if.end.21
  %26 = load i64, i64* %font_param, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %26, %call38
  br i1 %cmp39, label %if.end.52, label %if.then.40

if.then.40:                                       ; preds = %if.else
  %s = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 0
  %s42 = bitcast %union.Aligned_Cons* %.compoundliteral41 to %struct.Lisp_Cons*
  %car43 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s42, i32 0, i32 0
  %call44 = call i64 @builtin_lisp_symbol(i32 444)
  store i64 %call44, i64* %car43, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s42, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %27 = load i64, i64* %font_param, align 8
  store i64 %27, i64* %cdr, align 8
  %s45 = bitcast %union.Aligned_Cons* %.compoundliteral41 to %struct.Lisp_Cons*
  %28 = bitcast %struct.Lisp_Cons* %s45 to i8*
  %call46 = call i64 @make_lisp_ptr(i8* %28, i32 3)
  store i64 %call46, i64* %car, align 8
  %u47 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s, i32 0, i32 1
  %cdr48 = bitcast %union.anon.12* %u47 to i64*
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call49, i64* %cdr48, align 8
  %s50 = bitcast %union.Aligned_Cons* %.compoundliteral to %struct.Lisp_Cons*
  %29 = bitcast %struct.Lisp_Cons* %s50 to i8*
  %call51 = call i64 @make_lisp_ptr(i8* %29, i32 3)
  store i64 %call51, i64* %arg, align 8
  %30 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %31 = load i64, i64* %arg, align 8
  call void @x_set_frame_parameters(%struct.frame* %30, i64 %31)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.40, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.37
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %33 = load i64, i64* %parms.addr, align 8
  %call54 = call i64 @builtin_lisp_symbol(i32 439)
  %34 = load i64, i64* %font, align 8
  %call55 = call i64 @x_default_parameter(%struct.frame* %32, i64 %33, i64 %call54, i64 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), i32 3)
  ret void
}

declare i64 @delete_frame(i64, i64) #1

declare i64 @Fassq(i64, i64) #1

declare i64 @Fcons(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @x_default_scroll_bar_color_parameter(%struct.frame* %f, i64 %alist, i64 %prop, i8* %xprop, i8* %xclass, i1 zeroext %foreground_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %alist.addr = alloca i64, align 8
  %prop.addr = alloca i64, align 8
  %xprop.addr = alloca i8*, align 8
  %xclass.addr = alloca i8*, align 8
  %foreground_p.addr = alloca i8, align 1
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %tem = alloca i64, align 8
  %foreground = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %background = alloca i64, align 8
  %.compoundliteral4 = alloca %union.Aligned_String, align 8
  %verticalScrollBar = alloca i64, align 8
  %.compoundliteral12 = alloca %union.Aligned_String, align 8
  %arg = alloca i64, align 8
  %.compoundliteral25 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral27 = alloca %union.Aligned_Cons, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %alist, i64* %alist.addr, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i8* %xprop, i8** %xprop.addr, align 8
  store i8* %xclass, i8** %xclass.addr, align 8
  %frombool = zext i1 %foreground_p to i8
  store i8 %frombool, i8* %foreground_p.addr, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %2, %struct.x_display_info** %dpyinfo, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %4 = load i64, i64* %alist.addr, align 8
  %5 = load i64, i64* %prop.addr, align 8
  %6 = load i8*, i8** %xprop.addr, align 8
  %7 = load i8*, i8** %xclass.addr, align 8
  %call = call i64 @x_get_arg(%struct.x_display_info* %3, i64 %4, i64 %5, i8* %6, i8* %7, i32 3)
  store i64 %call, i64* %tem, align 8
  %8 = load i64, i64* %tem, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %8, %call1
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 10, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %data, align 8
  %s2 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %9 = bitcast %struct.Lisp_String* %s2 to i8*
  %call3 = call i64 @make_lisp_ptr(i8* %9, i32 4)
  store i64 %call3, i64* %foreground, align 8
  %s5 = bitcast %union.Aligned_String* %.compoundliteral4 to %struct.Lisp_String*
  %size6 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 0
  store i64 10, i64* %size6, align 8
  %size_byte7 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 1
  store i64 -1, i64* %size_byte7, align 8
  %intervals8 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals8, align 8
  %data9 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s5, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %data9, align 8
  %s10 = bitcast %union.Aligned_String* %.compoundliteral4 to %struct.Lisp_String*
  %10 = bitcast %struct.Lisp_String* %s10 to i8*
  %call11 = call i64 @make_lisp_ptr(i8* %10, i32 4)
  store i64 %call11, i64* %background, align 8
  %s13 = bitcast %union.Aligned_String* %.compoundliteral12 to %struct.Lisp_String*
  %size14 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s13, i32 0, i32 0
  store i64 17, i64* %size14, align 8
  %size_byte15 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s13, i32 0, i32 1
  store i64 -1, i64* %size_byte15, align 8
  %intervals16 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s13, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals16, align 8
  %data17 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s13, i32 0, i32 3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.145, i32 0, i32 0), i8** %data17, align 8
  %s18 = bitcast %union.Aligned_String* %.compoundliteral12 to %struct.Lisp_String*
  %11 = bitcast %struct.Lisp_String* %s18 to i8*
  %call19 = call i64 @make_lisp_ptr(i8* %11, i32 4)
  store i64 %call19, i64* %verticalScrollBar, align 8
  %12 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %13 = load i8, i8* %foreground_p.addr, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i64, i64* %foreground, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load i64, i64* %background, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %15, %cond.false ]
  %16 = load i64, i64* @empty_unibyte_string, align 8
  %17 = load i64, i64* %verticalScrollBar, align 8
  %18 = load i64, i64* @empty_unibyte_string, align 8
  %call20 = call i64 @display_x_get_resource(%struct.x_display_info* %12, i64 %cond, i64 %16, i64 %17, i64 %18)
  store i64 %call20, i64* %tem, align 8
  %19 = load i64, i64* %tem, align 8
  %call21 = call zeroext i1 @STRINGP(i64 %19)
  br i1 %call21, label %if.end, label %if.then.22

if.then.22:                                       ; preds = %cond.end
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* %tem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.22, %cond.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %entry
  %s26 = bitcast %union.Aligned_Cons* %.compoundliteral25 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s26, i32 0, i32 0
  %s28 = bitcast %union.Aligned_Cons* %.compoundliteral27 to %struct.Lisp_Cons*
  %car29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s28, i32 0, i32 0
  %20 = load i64, i64* %prop.addr, align 8
  store i64 %20, i64* %car29, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s28, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %21 = load i64, i64* %tem, align 8
  store i64 %21, i64* %cdr, align 8
  %s30 = bitcast %union.Aligned_Cons* %.compoundliteral27 to %struct.Lisp_Cons*
  %22 = bitcast %struct.Lisp_Cons* %s30 to i8*
  %call31 = call i64 @make_lisp_ptr(i8* %22, i32 3)
  store i64 %call31, i64* %car, align 8
  %u32 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s26, i32 0, i32 1
  %cdr33 = bitcast %union.anon.12* %u32 to i64*
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call34, i64* %cdr33, align 8
  %s35 = bitcast %union.Aligned_Cons* %.compoundliteral25 to %struct.Lisp_Cons*
  %23 = bitcast %struct.Lisp_Cons* %s35 to i8*
  %call36 = call i64 @make_lisp_ptr(i8* %23, i32 3)
  store i64 %call36, i64* %arg, align 8
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %25 = load i64, i64* %arg, align 8
  call void @x_set_frame_parameters(%struct.frame* %24, i64 %25)
  %26 = load i64, i64* %tem, align 8
  ret i64 %26
}

declare void @init_frame_faces(%struct.frame*) #1

declare void @adjust_frame_size(%struct.frame*, i32, i32, i32, i1 zeroext, i64) #1

declare i64 @x_figure_window_size(%struct.frame*, i64, i1 zeroext, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @x_icon_verify(%struct.frame* %f, i64 %parms) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %parms.addr = alloca i64, align 8
  %icon_x = alloca i64, align 8
  %icon_y = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %parms, i64* %parms.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i64, i64* %parms.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 529)
  %call1 = call i64 @x_frame_get_and_record_arg(%struct.frame* %0, i64 %1, i64 %call, i8* null, i8* null, i32 0)
  store i64 %call1, i64* %icon_x, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load i64, i64* %parms.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 531)
  %call3 = call i64 @x_frame_get_and_record_arg(%struct.frame* %2, i64 %3, i64 %call2, i8* null, i8* null, i32 0)
  store i64 %call3, i64* %icon_y, align 8
  %4 = load i64, i64* %icon_x, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %4, %call4
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %icon_y, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp6 = icmp eq i64 %5, %call5
  br i1 %cmp6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, i64* %icon_x, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %and7 = and i32 %conv, -5
  %cmp8 = icmp eq i32 %and7, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call10 = call i64 @builtin_lisp_symbol(i32 559)
  %7 = load i64, i64* %icon_x, align 8
  %8 = call i64 @wrong_type_argument(i64 %call10, i64 %7) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load i64, i64* %icon_y, align 8
  %and11 = and i64 %10, 7
  %conv12 = trunc i64 %and11 to i32
  %and13 = and i32 %conv12, -5
  %cmp14 = icmp eq i32 %and13, 2
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  %call18 = call i64 @builtin_lisp_symbol(i32 559)
  %11 = load i64, i64* %icon_y, align 8
  %12 = call i64 @wrong_type_argument(i64 %call18, i64 %11) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.19

cond.end.19:                                      ; preds = %13, %cond.true.16
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, i64* %icon_x, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp21 = icmp eq i64 %14, %call20
  br i1 %cmp21, label %lor.lhs.false, label %if.then.26

lor.lhs.false:                                    ; preds = %if.else
  %15 = load i64, i64* %icon_y, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp24 = icmp eq i64 %15, %call23
  br i1 %cmp24, label %if.end, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false, %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.146, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %cond.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_window(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %fevent = alloca i64, align 8
  %attributes = alloca %struct.XSetWindowAttributes, align 8
  %wattr = alloca %struct.XWindowAttributes, align 8
  %attribute_mask = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call = call zeroext i1 @xg_create_frame_widgets(%struct.frame* %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.147, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %2 = load %struct.x_output*, %struct.x_output** %x, align 8
  %xic = getelementptr inbounds %struct.x_output, %struct.x_output* %2, i32 0, i32 47
  store %struct._XIC* null, %struct._XIC** %xic, align 8
  %3 = load i8, i8* @use_xim, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then.1, label %if.end.27

if.then.1:                                        ; preds = %if.end
  call void @block_input()
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @create_frame_xic(%struct.frame* %4)
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %xic4 = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 47
  %7 = load %struct._XIC*, %struct._XIC** %xic4, align 8
  %tobool5 = icmp ne %struct._XIC* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.26

if.then.6:                                        ; preds = %if.then.1
  store i64 0, i64* %fevent, align 8
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %xic9 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 47
  %10 = load %struct._XIC*, %struct._XIC** %xic9, align 8
  %call10 = call i8* (%struct._XIC*, ...) @XGetICValues(%struct._XIC* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i64* %fevent, i8* null)
  %11 = load i64, i64* %fevent, align 8
  %cmp = icmp ne i64 %11, 0
  br i1 %cmp, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %if.then.6
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data12 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x13 = bitcast %union.output_data* %output_data12 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x13, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 44
  %14 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 2
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data14 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 62
  %x15 = bitcast %union.output_data* %output_data14 to %struct.x_output**
  %17 = load %struct.x_output*, %struct.x_output** %x15, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %17, i32 0, i32 9
  %18 = load i64, i64* %window_desc, align 8
  %call16 = call i32 @XGetWindowAttributes(%struct._XDisplay* %15, i64 %18, %struct.XWindowAttributes* %wattr)
  %your_event_mask = getelementptr inbounds %struct.XWindowAttributes, %struct.XWindowAttributes* %wattr, i32 0, i32 19
  %19 = load i64, i64* %your_event_mask, align 8
  %20 = load i64, i64* %fevent, align 8
  %or = or i64 %19, %20
  %event_mask = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %attributes, i32 0, i32 10
  store i64 %or, i64* %event_mask, align 8
  store i64 2048, i64* %attribute_mask, align 8
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data17 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 62
  %x18 = bitcast %union.output_data* %output_data17 to %struct.x_output**
  %22 = load %struct.x_output*, %struct.x_output** %x18, align 8
  %display_info19 = getelementptr inbounds %struct.x_output, %struct.x_output* %22, i32 0, i32 44
  %23 = load %struct.x_display_info*, %struct.x_display_info** %display_info19, align 8
  %display20 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %23, i32 0, i32 2
  %24 = load %struct._XDisplay*, %struct._XDisplay** %display20, align 8
  %25 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data21 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 62
  %x22 = bitcast %union.output_data* %output_data21 to %struct.x_output**
  %26 = load %struct.x_output*, %struct.x_output** %x22, align 8
  %window_desc23 = getelementptr inbounds %struct.x_output, %struct.x_output* %26, i32 0, i32 9
  %27 = load i64, i64* %window_desc23, align 8
  %28 = load i64, i64* %attribute_mask, align 8
  %call24 = call i32 @XChangeWindowAttributes(%struct._XDisplay* %24, i64 %27, i64 %28, %struct.XSetWindowAttributes* %attributes)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.11, %if.then.6
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.1
  call void @unblock_input()
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_icon(%struct.frame* %f, i64 %parms) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %parms.addr = alloca i64, align 8
  %icon_x = alloca i64, align 8
  %icon_y = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %parms, i64* %parms.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i64, i64* %parms.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 529)
  %call1 = call i64 @x_frame_get_and_record_arg(%struct.frame* %0, i64 %1, i64 %call, i8* null, i8* null, i32 0)
  store i64 %call1, i64* %icon_x, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load i64, i64* %parms.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 531)
  %call3 = call i64 @x_frame_get_and_record_arg(%struct.frame* %2, i64 %3, i64 %call2, i8* null, i8* null, i32 0)
  store i64 %call3, i64* %icon_y, align 8
  %4 = load i64, i64* %icon_x, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %4, %call4
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %icon_y, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp6 = icmp eq i64 %5, %call5
  br i1 %cmp6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.body.7

do.body.7:                                        ; preds = %do.body
  %6 = load i64, i64* %icon_x, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %and8 = and i32 %conv, -5
  %cmp9 = icmp eq i32 %and8, 2
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.7
  br label %cond.end

cond.false:                                       ; preds = %do.body.7
  %call11 = call i64 @builtin_lisp_symbol(i32 559)
  %7 = load i64, i64* %icon_x, align 8
  %8 = call i64 @wrong_type_argument(i64 %call11, i64 %7) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load i64, i64* %icon_x, align 8
  %shr = ashr i64 %10, 2
  %cmp12 = icmp sle i64 -2147483648, %shr
  br i1 %cmp12, label %land.lhs.true.14, label %if.then.18

land.lhs.true.14:                                 ; preds = %cond.end
  %11 = load i64, i64* %icon_x, align 8
  %shr15 = ashr i64 %11, 2
  %cmp16 = icmp sle i64 %shr15, 2147483647
  br i1 %cmp16, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.14, %cond.end
  %12 = load i64, i64* %icon_x, align 8
  call void @args_out_of_range_3(i64 %12, i64 -8589934590, i64 8589934590) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true.14
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.end.19

do.end.19:                                        ; preds = %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.body.20
  %13 = load i64, i64* %icon_y, align 8
  %and22 = and i64 %13, 7
  %conv23 = trunc i64 %and22 to i32
  %and24 = and i32 %conv23, -5
  %cmp25 = icmp eq i32 %and24, 2
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %do.body.21
  br label %cond.end.30

cond.false.28:                                    ; preds = %do.body.21
  %call29 = call i64 @builtin_lisp_symbol(i32 559)
  %14 = load i64, i64* %icon_y, align 8
  %15 = call i64 @wrong_type_argument(i64 %call29, i64 %14) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.30

cond.end.30:                                      ; preds = %16, %cond.true.27
  %17 = load i64, i64* %icon_y, align 8
  %shr31 = ashr i64 %17, 2
  %cmp32 = icmp sle i64 -2147483648, %shr31
  br i1 %cmp32, label %land.lhs.true.34, label %if.then.38

land.lhs.true.34:                                 ; preds = %cond.end.30
  %18 = load i64, i64* %icon_y, align 8
  %shr35 = ashr i64 %18, 2
  %cmp36 = icmp sle i64 %shr35, 2147483647
  br i1 %cmp36, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.34, %cond.end.30
  %19 = load i64, i64* %icon_y, align 8
  call void @args_out_of_range_3(i64 %19, i64 -8589934590, i64 8589934590) #7
  unreachable

if.end.39:                                        ; preds = %land.lhs.true.34
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.end.40
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true, %entry
  %20 = load i64, i64* %icon_x, align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp43 = icmp eq i64 %20, %call42
  br i1 %cmp43, label %lor.lhs.false, label %if.then.48

lor.lhs.false:                                    ; preds = %if.else
  %21 = load i64, i64* %icon_y, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp46 = icmp eq i64 %21, %call45
  br i1 %cmp46, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %lor.lhs.false, %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.146, i32 0, i32 0)) #7
  unreachable

if.end.49:                                        ; preds = %lor.lhs.false
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %do.end.41
  call void @block_input()
  %22 = load i64, i64* %icon_x, align 8
  %call51 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp52 = icmp eq i64 %22, %call51
  br i1 %cmp52, label %if.end.59, label %if.then.54

if.then.54:                                       ; preds = %if.end.50
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %24 = load i64, i64* %icon_x, align 8
  %shr55 = ashr i64 %24, 2
  %conv56 = trunc i64 %shr55 to i32
  %25 = load i64, i64* %icon_y, align 8
  %shr57 = ashr i64 %25, 2
  %conv58 = trunc i64 %shr57 to i32
  call void @x_wm_set_icon_position(%struct.frame* %23, i32 %conv56, i32 %conv58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.end.50
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 2
  %28 = load i64, i64* %icon_name, align 8
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %28, %call60
  br i1 %cmp61, label %cond.false.65, label %cond.true.63

cond.true.63:                                     ; preds = %if.end.59
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name64 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 2
  %30 = load i64, i64* %icon_name64, align 8
  br label %cond.end.66

cond.false.65:                                    ; preds = %if.end.59
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %name = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 1
  %32 = load i64, i64* %name, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.63
  %cond = phi i64 [ %30, %cond.true.63 ], [ %32, %cond.false.65 ]
  %call67 = call i8* @SSDATA(i64 %cond)
  %call68 = call zeroext i1 @x_text_icon(%struct.frame* %26, i8* %call67)
  call void @unblock_input()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_make_gc(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %gc_values = alloca %struct.XGCValues, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  call void @block_input()
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 78
  %1 = load i64, i64* %foreground_pixel, align 8
  %foreground = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 2
  store i64 %1, i64* %foreground, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 77
  %3 = load i64, i64* %background_pixel, align 8
  %background = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 3
  store i64 %3, i64* %background, align 8
  %line_width = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 4
  store i32 0, i32* %line_width, align 4
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 44
  %6 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 2
  %7 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 9
  %10 = load i64, i64* %window_desc, align 8
  %call = call %struct._XGC* @XCreateGC(%struct._XDisplay* %7, i64 %10, i64 28, %struct.XGCValues* %gc_values)
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data3 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data3 to %struct.x_output**
  %12 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %normal_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %12, i32 0, i32 6
  store %struct._XGC* %call, %struct._XGC** %normal_gc, align 8
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel5 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 77
  %14 = load i64, i64* %background_pixel5, align 8
  %foreground6 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 2
  store i64 %14, i64* %foreground6, align 8
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel7 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 78
  %16 = load i64, i64* %foreground_pixel7, align 8
  %background8 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 3
  store i64 %16, i64* %background8, align 8
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data9 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 62
  %x10 = bitcast %union.output_data* %output_data9 to %struct.x_output**
  %18 = load %struct.x_output*, %struct.x_output** %x10, align 8
  %display_info11 = getelementptr inbounds %struct.x_output, %struct.x_output* %18, i32 0, i32 44
  %19 = load %struct.x_display_info*, %struct.x_display_info** %display_info11, align 8
  %display12 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 2
  %20 = load %struct._XDisplay*, %struct._XDisplay** %display12, align 8
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %22 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %window_desc15 = getelementptr inbounds %struct.x_output, %struct.x_output* %22, i32 0, i32 9
  %23 = load i64, i64* %window_desc15, align 8
  %call16 = call %struct._XGC* @XCreateGC(%struct._XDisplay* %20, i64 %23, i64 28, %struct.XGCValues* %gc_values)
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data17 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x18 = bitcast %union.output_data* %output_data17 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x18, align 8
  %reverse_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 7
  store %struct._XGC* %call16, %struct._XGC** %reverse_gc, align 8
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel19 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 77
  %27 = load i64, i64* %background_pixel19, align 8
  %foreground20 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 2
  store i64 %27, i64* %foreground20, align 8
  %28 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data21 = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 62
  %x22 = bitcast %union.output_data* %output_data21 to %struct.x_output**
  %29 = load %struct.x_output*, %struct.x_output** %x22, align 8
  %cursor_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %29, i32 0, i32 28
  %30 = load i64, i64* %cursor_pixel, align 8
  %background23 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 3
  store i64 %30, i64* %background23, align 8
  %fill_style = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gc_values, i32 0, i32 8
  store i32 3, i32* %fill_style, align 4
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data24 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 62
  %x25 = bitcast %union.output_data* %output_data24 to %struct.x_output**
  %32 = load %struct.x_output*, %struct.x_output** %x25, align 8
  %display_info26 = getelementptr inbounds %struct.x_output, %struct.x_output* %32, i32 0, i32 44
  %33 = load %struct.x_display_info*, %struct.x_display_info** %display_info26, align 8
  %display27 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %33, i32 0, i32 2
  %34 = load %struct._XDisplay*, %struct._XDisplay** %display27, align 8
  %35 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data28 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 62
  %x29 = bitcast %union.output_data* %output_data28 to %struct.x_output**
  %36 = load %struct.x_output*, %struct.x_output** %x29, align 8
  %window_desc30 = getelementptr inbounds %struct.x_output, %struct.x_output* %36, i32 0, i32 9
  %37 = load i64, i64* %window_desc30, align 8
  %call31 = call %struct._XGC* @XCreateGC(%struct._XDisplay* %34, i64 %37, i64 284, %struct.XGCValues* %gc_values)
  %38 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data32 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 62
  %x33 = bitcast %union.output_data* %output_data32 to %struct.x_output**
  %39 = load %struct.x_output*, %struct.x_output** %x33, align 8
  %cursor_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %39, i32 0, i32 8
  store %struct._XGC* %call31, %struct._XGC** %cursor_gc, align 8
  %40 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data34 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 62
  %x35 = bitcast %union.output_data* %output_data34 to %struct.x_output**
  %41 = load %struct.x_output*, %struct.x_output** %x35, align 8
  %display_info36 = getelementptr inbounds %struct.x_output, %struct.x_output* %41, i32 0, i32 44
  %42 = load %struct.x_display_info*, %struct.x_display_info** %display_info36, align 8
  %display37 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %42, i32 0, i32 2
  %43 = load %struct._XDisplay*, %struct._XDisplay** %display37, align 8
  %44 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data38 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 62
  %x39 = bitcast %union.output_data* %output_data38 to %struct.x_output**
  %45 = load %struct.x_output*, %struct.x_output** %x39, align 8
  %display_info40 = getelementptr inbounds %struct.x_output, %struct.x_output* %45, i32 0, i32 44
  %46 = load %struct.x_display_info*, %struct.x_display_info** %display_info40, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %46, i32 0, i32 14
  %47 = load i64, i64* %root_window, align 8
  %48 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel41 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 78
  %49 = load i64, i64* %foreground_pixel41, align 8
  %50 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel42 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 77
  %51 = load i64, i64* %background_pixel42, align 8
  %52 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data43 = getelementptr inbounds %struct.frame, %struct.frame* %52, i32 0, i32 62
  %x44 = bitcast %union.output_data* %output_data43 to %struct.x_output**
  %53 = load %struct.x_output*, %struct.x_output** %x44, align 8
  %display_info45 = getelementptr inbounds %struct.x_output, %struct.x_output* %53, i32 0, i32 44
  %54 = load %struct.x_display_info*, %struct.x_display_info** %display_info45, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %54, i32 0, i32 6
  %55 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call46 = call i32 @XScreenNumberOfScreen(%struct.Screen* %55)
  %idxprom = sext i32 %call46 to i64
  %56 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data47 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 62
  %x48 = bitcast %union.output_data* %output_data47 to %struct.x_output**
  %57 = load %struct.x_output*, %struct.x_output** %x48, align 8
  %display_info49 = getelementptr inbounds %struct.x_output, %struct.x_output* %57, i32 0, i32 44
  %58 = load %struct.x_display_info*, %struct.x_display_info** %display_info49, align 8
  %display50 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %58, i32 0, i32 2
  %59 = load %struct._XDisplay*, %struct._XDisplay** %display50, align 8
  %60 = bitcast %struct._XDisplay* %59 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %60, i32 0, i32 35
  %61 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %61, i64 %idxprom
  %root_depth = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 9
  %62 = load i32, i32* %root_depth, align 4
  %call51 = call i64 @XCreatePixmapFromBitmapData(%struct._XDisplay* %43, i64 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @gray_bits, i32 0, i32 0), i32 2, i32 2, i64 %49, i64 %51, i32 %62)
  %63 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data52 = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 62
  %x53 = bitcast %union.output_data* %output_data52 to %struct.x_output**
  %64 = load %struct.x_output*, %struct.x_output** %x53, align 8
  %border_tile = getelementptr inbounds %struct.x_output, %struct.x_output* %64, i32 0, i32 5
  store i64 %call51, i64* %border_tile, align 8
  call void @unblock_input()
  ret void
}

declare void @initialize_frame_menubar(%struct.frame*) #1

declare void @x_iconify_frame(%struct.frame*) #1

declare void @x_make_frame_visible(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define internal void @set_machine_and_pid_properties(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %pid = alloca i32, align 4
  %xpid = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 12
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %cond.true, label %cond.false.17

cond.true:                                        ; preds = %entry
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data3 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data3 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %widget5 = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 12
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget5, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %11 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %widget9 = getelementptr inbounds %struct.x_output, %struct.x_output* %11, i32 0, i32 12
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget9, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %12)
  %tobool10 = icmp ne %struct._GdkDrawable* %call, null
  br i1 %tobool10, label %cond.true.11, label %cond.false

cond.true.11:                                     ; preds = %land.lhs.true
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data12 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x13 = bitcast %union.output_data* %output_data12 to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x13, align 8
  %widget14 = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 12
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget14, align 8
  %call15 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %15)
  %call16 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call15)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.11
  %cond = phi i64 [ %call16, %cond.true.11 ], [ 0, %cond.false ]
  br label %cond.end.20

cond.false.17:                                    ; preds = %entry
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data18 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 62
  %x19 = bitcast %union.output_data* %output_data18 to %struct.x_output**
  %17 = load %struct.x_output*, %struct.x_output** %x19, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %17, i32 0, i32 9
  %18 = load i64, i64* %window_desc, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.end
  %cond21 = phi i64 [ %cond, %cond.end ], [ %18, %cond.false.17 ]
  call void @XSetWMProperties(%struct._XDisplay* %3, i64 %cond21, %struct.XTextProperty* null, %struct.XTextProperty* null, i8** null, i32 0, %struct.XSizeHints* null, %struct.XWMHints* null, %struct.XClassHint* null)
  %call22 = call i32 @getpid() #3
  store i32 %call22, i32* %pid, align 4
  %19 = load i32, i32* %pid, align 4
  %cmp = icmp ule i32 %19, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.20
  %20 = load i32, i32* %pid, align 4
  %conv = sext i32 %20 to i64
  store i64 %conv, i64* %xpid, align 8
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data23 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 62
  %x24 = bitcast %union.output_data* %output_data23 to %struct.x_output**
  %22 = load %struct.x_output*, %struct.x_output** %x24, align 8
  %display_info25 = getelementptr inbounds %struct.x_output, %struct.x_output* %22, i32 0, i32 44
  %23 = load %struct.x_display_info*, %struct.x_display_info** %display_info25, align 8
  %display26 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %23, i32 0, i32 2
  %24 = load %struct._XDisplay*, %struct._XDisplay** %display26, align 8
  %25 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data27 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 62
  %x28 = bitcast %union.output_data* %output_data27 to %struct.x_output**
  %26 = load %struct.x_output*, %struct.x_output** %x28, align 8
  %widget29 = getelementptr inbounds %struct.x_output, %struct.x_output* %26, i32 0, i32 12
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget29, align 8
  %tobool30 = icmp ne %struct._GtkWidget* %27, null
  br i1 %tobool30, label %cond.true.31, label %cond.false.51

cond.true.31:                                     ; preds = %if.then
  %28 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data32 = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 62
  %x33 = bitcast %union.output_data* %output_data32 to %struct.x_output**
  %29 = load %struct.x_output*, %struct.x_output** %x33, align 8
  %widget34 = getelementptr inbounds %struct.x_output, %struct.x_output* %29, i32 0, i32 12
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget34, align 8
  %tobool35 = icmp ne %struct._GtkWidget* %30, null
  br i1 %tobool35, label %land.lhs.true.36, label %cond.false.48

land.lhs.true.36:                                 ; preds = %cond.true.31
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data37 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 62
  %x38 = bitcast %union.output_data* %output_data37 to %struct.x_output**
  %32 = load %struct.x_output*, %struct.x_output** %x38, align 8
  %widget39 = getelementptr inbounds %struct.x_output, %struct.x_output* %32, i32 0, i32 12
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget39, align 8
  %call40 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %33)
  %tobool41 = icmp ne %struct._GdkDrawable* %call40, null
  br i1 %tobool41, label %cond.true.42, label %cond.false.48

cond.true.42:                                     ; preds = %land.lhs.true.36
  %34 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data43 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 62
  %x44 = bitcast %union.output_data* %output_data43 to %struct.x_output**
  %35 = load %struct.x_output*, %struct.x_output** %x44, align 8
  %widget45 = getelementptr inbounds %struct.x_output, %struct.x_output* %35, i32 0, i32 12
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget45, align 8
  %call46 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %36)
  %call47 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call46)
  br label %cond.end.49

cond.false.48:                                    ; preds = %land.lhs.true.36, %cond.true.31
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.42
  %cond50 = phi i64 [ %call47, %cond.true.42 ], [ 0, %cond.false.48 ]
  br label %cond.end.55

cond.false.51:                                    ; preds = %if.then
  %37 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data52 = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 62
  %x53 = bitcast %union.output_data* %output_data52 to %struct.x_output**
  %38 = load %struct.x_output*, %struct.x_output** %x53, align 8
  %window_desc54 = getelementptr inbounds %struct.x_output, %struct.x_output* %38, i32 0, i32 9
  %39 = load i64, i64* %window_desc54, align 8
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.51, %cond.end.49
  %cond56 = phi i64 [ %cond50, %cond.end.49 ], [ %39, %cond.false.51 ]
  %40 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data57 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 62
  %x58 = bitcast %union.output_data* %output_data57 to %struct.x_output**
  %41 = load %struct.x_output*, %struct.x_output** %x58, align 8
  %display_info59 = getelementptr inbounds %struct.x_output, %struct.x_output* %41, i32 0, i32 44
  %42 = load %struct.x_display_info*, %struct.x_display_info** %display_info59, align 8
  %display60 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %42, i32 0, i32 2
  %43 = load %struct._XDisplay*, %struct._XDisplay** %display60, align 8
  %call61 = call i64 @XInternAtom(%struct._XDisplay* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0), i32 0)
  %44 = bitcast i64* %xpid to i8*
  %call62 = call i32 @XChangeProperty(%struct._XDisplay* %24, i64 %cond56, i64 %call61, i64 6, i32 32, i32 0, i8* %44, i32 1)
  br label %if.end

if.end:                                           ; preds = %cond.end.55, %cond.end.20
  ret void
}

declare i32 @XChangeProperty(%struct._XDisplay*, i64, i64, i64, i32, i32, i8*, i32) #1

declare zeroext i1 @FRAMEP(i64) #1

declare void @kset_default_minibuffer_frame(%struct.kboard*, i64) #1

declare void @fset_param_alist(%struct.frame*, i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @x_get_focus_frame(%struct.frame* %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %xfocus = alloca i64, align 8
  store %struct.frame* %frame, %struct.frame** %frame.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %frame.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %2, %struct.x_display_info** %dpyinfo, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_focus_frame = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 71
  %4 = load %struct.frame*, %struct.frame** %x_focus_frame, align 8
  %tobool = icmp ne %struct.frame* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_focus_frame1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 71
  %6 = load %struct.frame*, %struct.frame** %x_focus_frame1, align 8
  %7 = bitcast %struct.frame* %6 to i8*
  %call2 = call i64 @make_lisp_ptr(i8* %7, i32 5)
  store i64 %call2, i64* %xfocus, align 8
  %8 = load i64, i64* %xfocus, align 8
  store i64 %8, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, i64* %retval
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define void @x_focus_frame(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %3, %struct._XDisplay** %dpy, align 8
  call void @block_input()
  %4 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  call void @x_catch_errors(%struct._XDisplay* %4)
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %explicit_parent = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 46
  %bf.load = load i8, i8* %explicit_parent, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %conv = zext i1 %bf.cast to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @xembed_request_focus(%struct.frame* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %display_info6 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info6, align 8
  %display7 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 2
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display7, align 8
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data8 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x9 = bitcast %union.output_data* %output_data8 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x9, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 9
  %14 = load i64, i64* %window_desc, align 8
  %call = call i32 @XSetInputFocus(%struct._XDisplay* %11, i64 %14, i32 2, i64 0)
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_ewmh_activate_frame(%struct.frame* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @x_uncatch_errors()
  call void @unblock_input()
  ret void
}

declare void @x_catch_errors(%struct._XDisplay*) #1

declare void @xembed_request_focus(%struct.frame*) #1

declare i32 @XSetInputFocus(%struct._XDisplay*, i64, i32, i64) #1

declare void @x_ewmh_activate_frame(%struct.frame*) #1

declare void @x_uncatch_errors() #1

; Function Attrs: nounwind uwtable
define i64 @Fxw_color_defined_p(i64 %color, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %foo = alloca %struct.XColor, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %color, i64* %color.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load i64, i64* %color.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %3 = load i64, i64* %color.addr, align 8
  %call1 = call i8* @SSDATA(i64 %3)
  %call2 = call zeroext i1 @x_defined_color(%struct.frame* %2, i8* %call1, %struct.XColor* %foo, i1 zeroext false)
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call3, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %retval
  ret i64 %4
}

declare void @CHECK_STRING(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fxw_color_values(i64 %color, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %foo = alloca %struct.XColor, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %color, i64* %color.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load i64, i64* %color.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %3 = load i64, i64* %color.addr, align 8
  %call1 = call i8* @SSDATA(i64 %3)
  %call2 = call zeroext i1 @x_defined_color(%struct.frame* %2, i8* %call1, %struct.XColor* %foo, i1 zeroext false)
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %red = getelementptr inbounds %struct.XColor, %struct.XColor* %foo, i32 0, i32 1
  %4 = load i16, i16* %red, align 2
  %conv = zext i16 %4 to i64
  %green = getelementptr inbounds %struct.XColor, %struct.XColor* %foo, i32 0, i32 2
  %5 = load i16, i16* %green, align 2
  %conv3 = zext i16 %5 to i64
  %blue = getelementptr inbounds %struct.XColor, %struct.XColor* %foo, i32 0, i32 3
  %6 = load i16, i16* %blue, align 2
  %conv4 = zext i16 %6 to i64
  %call5 = call i64 @list3i(i64 %conv, i64 %conv3, i64 %conv4)
  store i64 %call5, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* %retval
  ret i64 %7
}

declare i64 @list3i(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fxw_display_color_p(i64 %terminal) #0 {
entry:
  %retval = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %n_planes = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 11
  %2 = load i32, i32* %n_planes, align 4
  %cmp = icmp sle i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %visual = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 9
  %4 = load %struct.Visual*, %struct.Visual** %visual, align 8
  %class = getelementptr inbounds %struct.Visual, %struct.Visual* %4, i32 0, i32 2
  %5 = load i32, i32* %class, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_grayscale_p(i64 %terminal) #0 {
entry:
  %retval = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %n_planes = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 11
  %2 = load i32, i32* %n_planes, align 4
  %cmp = icmp sle i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %visual = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 9
  %4 = load %struct.Visual*, %struct.Visual** %visual, align 8
  %class = getelementptr inbounds %struct.Visual, %struct.Visual* %4, i32 0, i32 2
  %5 = load i32, i32* %class, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_pixel_width(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call1 = call i32 @x_display_pixel_width(%struct.x_display_info* %1)
  %conv = sext i32 %call1 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

declare i32 @x_display_pixel_width(%struct.x_display_info*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_display_pixel_height(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call1 = call i32 @x_display_pixel_height(%struct.x_display_info* %1)
  %conv = sext i32 %call1 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

declare i32 @x_display_pixel_height(%struct.x_display_info*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_display_planes(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %n_planes = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 11
  %2 = load i32, i32* %n_planes, align 4
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_color_cells(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %nr_planes = alloca i32, align 4
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 6
  %2 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call1 = call i32 @XScreenNumberOfScreen(%struct.Screen* %2)
  %idxprom = sext i32 %call1 to i64
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 2
  %4 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %5 = bitcast %struct._XDisplay* %4 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %5, i32 0, i32 35
  %6 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %6, i64 %idxprom
  %root_depth = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 9
  %7 = load i32, i32* %root_depth, align 4
  store i32 %7, i32* %nr_planes, align 4
  %8 = load i32, i32* %nr_planes, align 4
  %cmp = icmp sgt i32 %8, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 24, i32* %nr_planes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %nr_planes, align 4
  %shl = shl i32 1, %9
  %conv = sext i32 %shl to i64
  %shl2 = shl i64 %conv, 2
  %add = add i64 %shl2, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fx_server_max_request_size(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 2
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call1 = call i64 @XMaxRequestSize(%struct._XDisplay* %2)
  %shl = shl i64 %call1, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

declare i64 @XMaxRequestSize(%struct._XDisplay*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_server_vendor(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %vendor = alloca i8*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 2
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %3 = bitcast %struct._XDisplay* %2 to %struct.anon.11*
  %vendor1 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %3, i32 0, i32 6
  %4 = load i8*, i8** %vendor1, align 8
  store i8* %4, i8** %vendor, align 8
  %5 = load i8*, i8** %vendor, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.70, i32 0, i32 0), i8** %vendor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %vendor, align 8
  %call2 = call i64 @build_string(i8* %6)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define i64 @Fx_server_version(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 2
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %2, %struct._XDisplay** %dpy, align 8
  %3 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %4 = bitcast %struct._XDisplay* %3 to %struct.anon.11*
  %proto_major_version = getelementptr inbounds %struct.anon.11, %struct.anon.11* %4, i32 0, i32 4
  %5 = load i32, i32* %proto_major_version, align 4
  %conv = sext i32 %5 to i64
  %6 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %7 = bitcast %struct._XDisplay* %6 to %struct.anon.11*
  %proto_minor_version = getelementptr inbounds %struct.anon.11, %struct.anon.11* %7, i32 0, i32 5
  %8 = load i32, i32* %proto_minor_version, align 4
  %conv1 = sext i32 %8 to i64
  %9 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %10 = bitcast %struct._XDisplay* %9 to %struct.anon.11*
  %release = getelementptr inbounds %struct.anon.11, %struct.anon.11* %10, i32 0, i32 19
  %11 = load i32, i32* %release, align 4
  %conv2 = sext i32 %11 to i64
  %call3 = call i64 @list3i(i64 %conv, i64 %conv1, i64 %conv2)
  ret i64 %call3
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_screens(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 2
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %3 = bitcast %struct._XDisplay* %2 to %struct.anon.11*
  %nscreens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %3, i32 0, i32 34
  %4 = load i32, i32* %nscreens, align 4
  %conv = sext i32 %4 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_mm_height(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 6
  %2 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %mheight = getelementptr inbounds %struct.Screen, %struct.Screen* %2, i32 0, i32 6
  %3 = load i32, i32* %mheight, align 4
  %conv = sext i32 %3 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_mm_width(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 6
  %2 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %mwidth = getelementptr inbounds %struct.Screen, %struct.Screen* %2, i32 0, i32 5
  %3 = load i32, i32* %mwidth, align 4
  %conv = sext i32 %3 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_backing_store(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %result = alloca i64, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 6
  %2 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %backing_store = getelementptr inbounds %struct.Screen, %struct.Screen* %2, i32 0, i32 17
  %3 = load i32, i32* %backing_store, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.2
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call i64 @intern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0))
  store i64 %call1, i64* %result, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %call3 = call i64 @intern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0))
  store i64 %call3, i64* %result, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %call5 = call i64 @intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0))
  store i64 %call5, i64* %result, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb.2, %sw.bb
  %4 = load i64, i64* %result, align 8
  ret i64 %4
}

declare i64 @intern(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_display_visual_class(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %result = alloca i64, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %visual = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 9
  %2 = load %struct.Visual*, %struct.Visual** %visual, align 8
  %class = getelementptr inbounds %struct.Visual, %struct.Visual* %2, i32 0, i32 2
  %3 = load i32, i32* %class, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call i64 @intern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0))
  store i64 %call1, i64* %result, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %call3 = call i64 @intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0))
  store i64 %call3, i64* %result, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %call5 = call i64 @intern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0))
  store i64 %call5, i64* %result, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %call7 = call i64 @intern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0))
  store i64 %call7, i64* %result, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %call9 = call i64 @intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0))
  store i64 %call9, i64* %result, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %call11 = call i64 @intern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0))
  store i64 %call11, i64* %result, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.81, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  %4 = load i64, i64* %result, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_save_under(i64 %terminal) #0 {
entry:
  %retval = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 6
  %2 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %save_unders = getelementptr inbounds %struct.Screen, %struct.Screen* %2, i32 0, i32 18
  %3 = load i32, i32* %save_unders, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %retval
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @Fx_display_monitor_attributes_list(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %attributes_list = alloca i64, align 8
  %mm_width_per_pixel = alloca double, align 8
  %mm_height_per_pixel = alloca double, align 8
  %gdpy = alloca %struct._GdkDisplay*, align 8
  %gscreen = alloca %struct._GdkScreen*, align 8
  %primary_monitor = alloca i32, align 4
  %n_monitors = alloca i32, align 4
  %i = alloca i32, align 4
  %monitor_frames = alloca i64, align 8
  %rest = alloca i64, align 8
  %frame = alloca i64, align 8
  %monitors = alloca %struct.MonitorInfo*, align 8
  %f = alloca %struct.frame*, align 8
  %gwin = alloca %struct._GdkDrawable*, align 8
  %width_mm = alloca i32, align 4
  %height_mm = alloca i32, align 4
  %rec = alloca %struct._GdkRectangle, align 4
  %work = alloca %struct._GdkRectangle, align 4
  %mi = alloca %struct.MonitorInfo*, align 8
  %workarea_r = alloca %struct.XRectangle, align 2
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %attributes_list, align 8
  store i32 0, i32* %primary_monitor, align 4
  call void @block_input()
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 6
  %2 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %mwidth = getelementptr inbounds %struct.Screen, %struct.Screen* %2, i32 0, i32 5
  %3 = load i32, i32* %mwidth, align 4
  %conv = sitofp i32 %3 to double
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call2 = call i32 @x_display_pixel_width(%struct.x_display_info* %4)
  %conv3 = sitofp i32 %call2 to double
  %div = fdiv double %conv, %conv3
  store double %div, double* %mm_width_per_pixel, align 8
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %screen4 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 6
  %6 = load %struct.Screen*, %struct.Screen** %screen4, align 8
  %mheight = getelementptr inbounds %struct.Screen, %struct.Screen* %6, i32 0, i32 6
  %7 = load i32, i32* %mheight, align 4
  %conv5 = sitofp i32 %7 to double
  %8 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call6 = call i32 @x_display_pixel_height(%struct.x_display_info* %8)
  %conv7 = sitofp i32 %call6 to double
  %div8 = fdiv double %conv5, %conv7
  store double %div8, double* %mm_height_per_pixel, align 8
  %9 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call9 = call %struct._GdkDisplay* @gdk_x11_lookup_xdisplay(%struct._XDisplay* %10)
  store %struct._GdkDisplay* %call9, %struct._GdkDisplay** %gdpy, align 8
  %11 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdpy, align 8
  %call10 = call %struct._GdkScreen* @gdk_display_get_default_screen(%struct._GdkDisplay* %11)
  store %struct._GdkScreen* %call10, %struct._GdkScreen** %gscreen, align 8
  %12 = load %struct._GdkScreen*, %struct._GdkScreen** %gscreen, align 8
  %call11 = call i32 @gdk_screen_get_primary_monitor(%struct._GdkScreen* %12)
  store i32 %call11, i32* %primary_monitor, align 4
  %13 = load %struct._GdkScreen*, %struct._GdkScreen** %gscreen, align 8
  %call12 = call i32 @gdk_screen_get_n_monitors(%struct._GdkScreen* %13)
  store i32 %call12, i32* %n_monitors, align 4
  %14 = load i32, i32* %n_monitors, align 4
  %conv13 = sext i32 %14 to i64
  %shl = shl i64 %conv13, 2
  %add = add i64 %shl, 2
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %call15 = call i64 @Fmake_vector(i64 %add, i64 %call14)
  store i64 %call15, i64* %monitor_frames, align 8
  %15 = load i32, i32* %n_monitors, align 4
  %conv16 = sext i32 %15 to i64
  %mul = mul i64 %conv16, 32
  %call17 = call noalias i8* @xzalloc(i64 %mul)
  %16 = bitcast i8* %call17 to %struct.MonitorInfo*
  store %struct.MonitorInfo* %16, %struct.MonitorInfo** %monitors, align 8
  %17 = load i64, i64* @Vframe_list, align 8
  store i64 %17, i64* %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i64, i64* %rest, align 8
  %and = and i64 %18, 7
  %conv18 = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv18, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i64, i64* %rest, align 8
  %sub = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car, align 8
  store i64 %22, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %24 = load i64, i64* %frame, align 8
  %sub20 = sub nsw i64 %24, 5
  %25 = inttoptr i64 %sub20 to i8*
  %26 = bitcast i8* %25 to %struct.frame*
  store %struct.frame* %26, %struct.frame** %f, align 8
  %27 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 26
  %28 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %28, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp21 = icmp eq i32 %bf.cast, 2
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %29 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 44
  %31 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %32 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %cmp23 = icmp eq %struct.x_display_info* %31, %32
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %33 = load i64, i64* %frame, align 8
  %34 = load i64, i64* @tip_frame, align 8
  %cmp26 = icmp eq i64 %33, %34
  br i1 %cmp26, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.25
  %35 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data28 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 62
  %x29 = bitcast %union.output_data* %output_data28 to %struct.x_output**
  %36 = load %struct.x_output*, %struct.x_output** %x29, align 8
  %edit_widget = getelementptr inbounds %struct.x_output, %struct.x_output* %36, i32 0, i32 13
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_widget, align 8
  %call30 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %37)
  store %struct._GdkDrawable* %call30, %struct._GdkDrawable** %gwin, align 8
  %38 = load %struct._GdkScreen*, %struct._GdkScreen** %gscreen, align 8
  %39 = load %struct._GdkDrawable*, %struct._GdkDrawable** %gwin, align 8
  %call31 = call i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen* %38, %struct._GdkDrawable* %39)
  store i32 %call31, i32* %i, align 4
  %40 = load i64, i64* %monitor_frames, align 8
  %41 = load i32, i32* %i, align 4
  %conv32 = sext i32 %41 to i64
  %42 = load i64, i64* %frame, align 8
  %43 = load i64, i64* %monitor_frames, align 8
  %44 = load i32, i32* %i, align 4
  %conv33 = sext i32 %44 to i64
  %call34 = call i64 @AREF(i64 %43, i64 %conv33)
  %call35 = call i64 @Fcons(i64 %42, i64 %call34)
  call void @ASET(i64 %40, i64 %conv32, i64 %call35)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.25, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %45 = load i64, i64* %rest, align 8
  %sub36 = sub nsw i64 %45, 3
  %46 = inttoptr i64 %sub36 to i8*
  %47 = bitcast i8* %46 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %47, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %48 = load i64, i64* %cdr, align 8
  store i64 %48, i64* %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.112, %for.end
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %n_monitors, align 4
  %cmp38 = icmp slt i32 %49, %50
  br i1 %cmp38, label %for.body.40, label %for.end.113

for.body.40:                                      ; preds = %for.cond.37
  store i32 -1, i32* %width_mm, align 4
  store i32 -1, i32* %height_mm, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom = sext i32 %51 to i64
  %52 = load %struct.MonitorInfo*, %struct.MonitorInfo** %monitors, align 8
  %arrayidx = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %52, i64 %idxprom
  store %struct.MonitorInfo* %arrayidx, %struct.MonitorInfo** %mi, align 8
  %53 = load %struct._GdkScreen*, %struct._GdkScreen** %gscreen, align 8
  %54 = load i32, i32* %i, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %53, i32 %54, %struct._GdkRectangle* %rec)
  %55 = load %struct._GdkScreen*, %struct._GdkScreen** %gscreen, align 8
  %56 = load i32, i32* %i, align 4
  %call41 = call i32 @gdk_screen_get_monitor_width_mm(%struct._GdkScreen* %55, i32 %56)
  store i32 %call41, i32* %width_mm, align 4
  %57 = load %struct._GdkScreen*, %struct._GdkScreen** %gscreen, align 8
  %58 = load i32, i32* %i, align 4
  %call42 = call i32 @gdk_screen_get_monitor_height_mm(%struct._GdkScreen* %57, i32 %58)
  store i32 %call42, i32* %height_mm, align 4
  %59 = load i32, i32* %width_mm, align 4
  %cmp43 = icmp slt i32 %59, 0
  br i1 %cmp43, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %for.body.40
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rec, i32 0, i32 2
  %60 = load i32, i32* %width, align 4
  %conv46 = sitofp i32 %60 to double
  %61 = load double, double* %mm_width_per_pixel, align 8
  %mul47 = fmul double %conv46, %61
  %add48 = fadd double %mul47, 5.000000e-01
  %conv49 = fptosi double %add48 to i32
  store i32 %conv49, i32* %width_mm, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %for.body.40
  %62 = load i32, i32* %height_mm, align 4
  %cmp51 = icmp slt i32 %62, 0
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.50
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rec, i32 0, i32 3
  %63 = load i32, i32* %height, align 4
  %conv54 = sitofp i32 %63 to double
  %64 = load double, double* %mm_height_per_pixel, align 8
  %mul55 = fmul double %conv54, %64
  %add56 = fadd double %mul55, 5.000000e-01
  %conv57 = fptosi double %add56 to i32
  store i32 %conv57, i32* %height_mm, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.end.50
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %primary_monitor, align 4
  %cmp59 = icmp eq i32 %65, %66
  br i1 %cmp59, label %land.lhs.true.61, label %if.else

land.lhs.true.61:                                 ; preds = %if.end.58
  %67 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call62 = call zeroext i1 @x_get_net_workarea(%struct.x_display_info* %67, %struct.XRectangle* %workarea_r)
  br i1 %call62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %land.lhs.true.61
  %x65 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %workarea_r, i32 0, i32 0
  %68 = load i16, i16* %x65, align 2
  %conv66 = sext i16 %68 to i32
  %x67 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 0
  store i32 %conv66, i32* %x67, align 4
  %y = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %workarea_r, i32 0, i32 1
  %69 = load i16, i16* %y, align 2
  %conv68 = sext i16 %69 to i32
  %y69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 1
  store i32 %conv68, i32* %y69, align 4
  %width70 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %workarea_r, i32 0, i32 2
  %70 = load i16, i16* %width70, align 2
  %conv71 = zext i16 %70 to i32
  %width72 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 2
  store i32 %conv71, i32* %width72, align 4
  %height73 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %workarea_r, i32 0, i32 3
  %71 = load i16, i16* %height73, align 2
  %conv74 = zext i16 %71 to i32
  %height75 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 3
  store i32 %conv74, i32* %height75, align 4
  %call76 = call i32 @gdk_rectangle_intersect(%struct._GdkRectangle* %rec, %struct._GdkRectangle* %work, %struct._GdkRectangle* %work)
  %tobool = icmp ne i32 %call76, 0
  br i1 %tobool, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.then.64
  %72 = bitcast %struct._GdkRectangle* %work to i8*
  %73 = bitcast %struct._GdkRectangle* %rec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 16, i32 4, i1 false)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.then.64
  br label %if.end.79

if.else:                                          ; preds = %land.lhs.true.61, %if.end.58
  %74 = bitcast %struct._GdkRectangle* %work to i8*
  %75 = bitcast %struct._GdkRectangle* %rec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 4, i1 false)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %if.end.78
  %x80 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rec, i32 0, i32 0
  %76 = load i32, i32* %x80, align 4
  %conv81 = trunc i32 %76 to i16
  %77 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %geom = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %77, i32 0, i32 0
  %x82 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %geom, i32 0, i32 0
  store i16 %conv81, i16* %x82, align 2
  %y83 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rec, i32 0, i32 1
  %78 = load i32, i32* %y83, align 4
  %conv84 = trunc i32 %78 to i16
  %79 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %geom85 = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %79, i32 0, i32 0
  %y86 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %geom85, i32 0, i32 1
  store i16 %conv84, i16* %y86, align 2
  %width87 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rec, i32 0, i32 2
  %80 = load i32, i32* %width87, align 4
  %conv88 = trunc i32 %80 to i16
  %81 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %geom89 = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %81, i32 0, i32 0
  %width90 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %geom89, i32 0, i32 2
  store i16 %conv88, i16* %width90, align 2
  %height91 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rec, i32 0, i32 3
  %82 = load i32, i32* %height91, align 4
  %conv92 = trunc i32 %82 to i16
  %83 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %geom93 = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %83, i32 0, i32 0
  %height94 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %geom93, i32 0, i32 3
  store i16 %conv92, i16* %height94, align 2
  %x95 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 0
  %84 = load i32, i32* %x95, align 4
  %conv96 = trunc i32 %84 to i16
  %85 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %work97 = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %85, i32 0, i32 1
  %x98 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %work97, i32 0, i32 0
  store i16 %conv96, i16* %x98, align 2
  %y99 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 1
  %86 = load i32, i32* %y99, align 4
  %conv100 = trunc i32 %86 to i16
  %87 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %work101 = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %87, i32 0, i32 1
  %y102 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %work101, i32 0, i32 1
  store i16 %conv100, i16* %y102, align 2
  %width103 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 2
  %88 = load i32, i32* %width103, align 4
  %conv104 = trunc i32 %88 to i16
  %89 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %work105 = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %89, i32 0, i32 1
  %width106 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %work105, i32 0, i32 2
  store i16 %conv104, i16* %width106, align 2
  %height107 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %work, i32 0, i32 3
  %90 = load i32, i32* %height107, align 4
  %conv108 = trunc i32 %90 to i16
  %91 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %work109 = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %91, i32 0, i32 1
  %height110 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %work109, i32 0, i32 3
  store i16 %conv108, i16* %height110, align 2
  %92 = load i32, i32* %width_mm, align 4
  %93 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %mm_width = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %93, i32 0, i32 2
  store i32 %92, i32* %mm_width, align 4
  %94 = load i32, i32* %height_mm, align 4
  %95 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %mm_height = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %95, i32 0, i32 3
  store i32 %94, i32* %mm_height, align 4
  %96 = load %struct._GdkScreen*, %struct._GdkScreen** %gscreen, align 8
  %97 = load i32, i32* %i, align 4
  %call111 = call i8* @gdk_screen_get_monitor_plug_name(%struct._GdkScreen* %96, i32 %97)
  %98 = load %struct.MonitorInfo*, %struct.MonitorInfo** %mi, align 8
  %name = getelementptr inbounds %struct.MonitorInfo, %struct.MonitorInfo* %98, i32 0, i32 4
  store i8* %call111, i8** %name, align 8
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.79
  %99 = load i32, i32* %i, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.37

for.end.113:                                      ; preds = %for.cond.37
  %100 = load %struct.MonitorInfo*, %struct.MonitorInfo** %monitors, align 8
  %101 = load i32, i32* %n_monitors, align 4
  %102 = load i32, i32* %primary_monitor, align 4
  %103 = load i64, i64* %monitor_frames, align 8
  %104 = load i8*, i8** @Fx_display_monitor_attributes_list.source, align 8
  %call114 = call i64 @make_monitor_attribute_list(%struct.MonitorInfo* %100, i32 %101, i32 %102, i64 %103, i8* %104)
  store i64 %call114, i64* %attributes_list, align 8
  call void @unblock_input()
  %105 = load i64, i64* %attributes_list, align 8
  ret i64 %105
}

declare %struct._GdkDisplay* @gdk_x11_lookup_xdisplay(%struct._XDisplay*) #1

declare %struct._GdkScreen* @gdk_display_get_default_screen(%struct._GdkDisplay*) #1

declare i32 @gdk_screen_get_primary_monitor(%struct._GdkScreen*) #1

declare i32 @gdk_screen_get_n_monitors(%struct._GdkScreen*) #1

declare i64 @Fmake_vector(i64, i64) #1

declare i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen*, %struct._GdkDrawable*) #1

declare void @ASET(i64, i64, i64) #1

declare i64 @AREF(i64, i64) #1

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #1

declare i32 @gdk_screen_get_monitor_width_mm(%struct._GdkScreen*, i32) #1

declare i32 @gdk_screen_get_monitor_height_mm(%struct._GdkScreen*, i32) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @x_get_net_workarea(%struct.x_display_info* %dpyinfo, %struct.XRectangle* %rect) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %rect.addr = alloca %struct.XRectangle*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  %offset = alloca i64, align 8
  %max_len = alloca i64, align 8
  %target_type = alloca i64, align 8
  %actual_type = alloca i64, align 8
  %actual_size = alloca i64, align 8
  %bytes_remaining = alloca i64, align 8
  %rc = alloca i32, align 4
  %actual_format = alloca i32, align 4
  %tmp_data = alloca i8*, align 8
  %result = alloca i8, align 1
  %current_desktop = alloca i64, align 8
  %values = alloca i64*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store %struct.XRectangle* %rect, %struct.XRectangle** %rect.addr, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 2
  %1 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %1, %struct._XDisplay** %dpy, align 8
  store i8* null, i8** %tmp_data, align 8
  store i8 0, i8* %result, align 1
  %2 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  call void @x_catch_errors(%struct._XDisplay* %2)
  store i64 0, i64* %offset, align 8
  store i64 1, i64* %max_len, align 8
  store i64 6, i64* %target_type, align 8
  %3 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 14
  %5 = load i64, i64* %root_window, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_net_current_desktop = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 116
  %7 = load i64, i64* %Xatom_net_current_desktop, align 8
  %8 = load i64, i64* %offset, align 8
  %9 = load i64, i64* %max_len, align 8
  %10 = load i64, i64* %target_type, align 8
  %call = call i32 @XGetWindowProperty(%struct._XDisplay* %3, i64 %5, i64 %7, i64 %8, i64 %9, i32 0, i64 %10, i64* %actual_type, i32* %actual_format, i64* %actual_size, i64* %bytes_remaining, i8** %tmp_data)
  store i32 %call, i32* %rc, align 4
  %11 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %entry
  %12 = load i64, i64* %actual_type, align 8
  %13 = load i64, i64* %target_type, align 8
  %cmp1 = icmp eq i64 %12, %13
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.29

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %14 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call3 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %14)
  br i1 %call3, label %if.end.29, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %15 = load i32, i32* %actual_format, align 4
  %cmp5 = icmp eq i32 %15, 32
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.29

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %16 = load i64, i64* %actual_size, align 8
  %17 = load i64, i64* %max_len, align 8
  %cmp7 = icmp eq i64 %16, %17
  br i1 %cmp7, label %if.then, label %if.end.29

if.then:                                          ; preds = %land.lhs.true.6
  %18 = load i8*, i8** %tmp_data, align 8
  %19 = bitcast i8* %18 to i64*
  %arrayidx = getelementptr inbounds i64, i64* %19, i64 0
  %20 = load i64, i64* %arrayidx, align 8
  store i64 %20, i64* %current_desktop, align 8
  %21 = load i8*, i8** %tmp_data, align 8
  %call8 = call i32 @XFree(i8* %21)
  store i8* null, i8** %tmp_data, align 8
  %22 = load i64, i64* %current_desktop, align 8
  %mul = mul nsw i64 4, %22
  store i64 %mul, i64* %offset, align 8
  store i64 4, i64* %max_len, align 8
  %23 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %24 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %root_window9 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %24, i32 0, i32 14
  %25 = load i64, i64* %root_window9, align 8
  %26 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_net_workarea = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %26, i32 0, i32 117
  %27 = load i64, i64* %Xatom_net_workarea, align 8
  %28 = load i64, i64* %offset, align 8
  %29 = load i64, i64* %max_len, align 8
  %30 = load i64, i64* %target_type, align 8
  %call10 = call i32 @XGetWindowProperty(%struct._XDisplay* %23, i64 %25, i64 %27, i64 %28, i64 %29, i32 0, i64 %30, i64* %actual_type, i32* %actual_format, i64* %actual_size, i64* %bytes_remaining, i8** %tmp_data)
  store i32 %call10, i32* %rc, align 4
  %31 = load i32, i32* %rc, align 4
  %cmp11 = icmp eq i32 %31, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %if.then
  %32 = load i64, i64* %actual_type, align 8
  %33 = load i64, i64* %target_type, align 8
  %cmp13 = icmp eq i64 %32, %33
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %34 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call15 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %34)
  br i1 %call15, label %if.end, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %35 = load i32, i32* %actual_format, align 4
  %cmp17 = icmp eq i32 %35, 32
  br i1 %cmp17, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %36 = load i64, i64* %actual_size, align 8
  %37 = load i64, i64* %max_len, align 8
  %cmp19 = icmp eq i64 %36, %37
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true.18
  %38 = load i8*, i8** %tmp_data, align 8
  %39 = bitcast i8* %38 to i64*
  store i64* %39, i64** %values, align 8
  %40 = load i64*, i64** %values, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %40, i64 0
  %41 = load i64, i64* %arrayidx21, align 8
  %conv = trunc i64 %41 to i16
  %42 = load %struct.XRectangle*, %struct.XRectangle** %rect.addr, align 8
  %x = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %42, i32 0, i32 0
  store i16 %conv, i16* %x, align 2
  %43 = load i64*, i64** %values, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %43, i64 1
  %44 = load i64, i64* %arrayidx22, align 8
  %conv23 = trunc i64 %44 to i16
  %45 = load %struct.XRectangle*, %struct.XRectangle** %rect.addr, align 8
  %y = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %45, i32 0, i32 1
  store i16 %conv23, i16* %y, align 2
  %46 = load i64*, i64** %values, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %46, i64 2
  %47 = load i64, i64* %arrayidx24, align 8
  %conv25 = trunc i64 %47 to i16
  %48 = load %struct.XRectangle*, %struct.XRectangle** %rect.addr, align 8
  %width = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %48, i32 0, i32 2
  store i16 %conv25, i16* %width, align 2
  %49 = load i64*, i64** %values, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %49, i64 3
  %50 = load i64, i64* %arrayidx26, align 8
  %conv27 = trunc i64 %50 to i16
  %51 = load %struct.XRectangle*, %struct.XRectangle** %rect.addr, align 8
  %height = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %51, i32 0, i32 3
  store i16 %conv27, i16* %height, align 2
  %52 = load i8*, i8** %tmp_data, align 8
  %call28 = call i32 @XFree(i8* %52)
  store i8* null, i8** %tmp_data, align 8
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true.12, %if.then
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %land.lhs.true.6, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %53 = load i8*, i8** %tmp_data, align 8
  %tobool = icmp ne i8* %53, null
  br i1 %tobool, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.29
  %54 = load i8*, i8** %tmp_data, align 8
  %call31 = call i32 @XFree(i8* %54)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.29
  call void @x_uncatch_errors()
  %55 = load i8, i8* %result, align 1
  %tobool33 = trunc i8 %55 to i1
  ret i1 %tobool33
}

declare i32 @gdk_rectangle_intersect(%struct._GdkRectangle*, %struct._GdkRectangle*, %struct._GdkRectangle*) #1

declare i8* @gdk_screen_get_monitor_plug_name(%struct._GdkScreen*, i32) #1

declare i64 @make_monitor_attribute_list(%struct.MonitorInfo*, i32, i32, i64, i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_frame_geometry(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @frame_geometry(i64 %0, i64 %call)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @frame_geometry(i64 %frame, i64 %attribute) #0 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %attribute.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %rootw = alloca i64, align 8
  %ign = alloca i32, align 4
  %native_width = alloca i32, align 4
  %native_height = alloca i32, align 4
  %xy_ign = alloca i32, align 4
  %xptr = alloca i32, align 4
  %yptr = alloca i32, align 4
  %left_off = alloca i32, align 4
  %right_off = alloca i32, align 4
  %top_off = alloca i32, align 4
  %bottom_off = alloca i32, align 4
  %outer_left = alloca i32, align 4
  %outer_top = alloca i32, align 4
  %outer_right = alloca i32, align 4
  %outer_bottom = alloca i32, align 4
  %native_left = alloca i32, align 4
  %native_top = alloca i32, align 4
  %native_right = alloca i32, align 4
  %native_bottom = alloca i32, align 4
  %inner_left = alloca i32, align 4
  %inner_top = alloca i32, align 4
  %inner_right = alloca i32, align 4
  %inner_bottom = alloca i32, align 4
  %internal_border_width = alloca i32, align 4
  %menu_bar_external = alloca i8, align 1
  %tool_bar_external = alloca i8, align 1
  %menu_bar_height = alloca i32, align 4
  %menu_bar_width = alloca i32, align 4
  %tool_bar_height = alloca i32, align 4
  %tool_bar_width = alloca i32, align 4
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %attribute, i64* %attribute.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_live_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  store i8 0, i8* %menu_bar_external, align 1
  store i8 0, i8* %tool_bar_external, align 1
  store i32 0, i32* %menu_bar_height, align 4
  store i32 0, i32* %menu_bar_width, align 4
  store i32 0, i32* %tool_bar_height, align 4
  store i32 0, i32* %tool_bar_width, align 4
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 26
  %2 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %2, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method1 = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 26
  %4 = bitcast i48* %output_method1 to i64*
  %bf.load2 = load i64, i64* %4, align 8
  %bf.lshr3 = lshr i64 %bf.load2, 23
  %bf.clear4 = and i64 %bf.lshr3, 7
  %bf.cast5 = trunc i64 %bf.clear4 to i32
  %cmp6 = icmp eq i32 %bf.cast5, 2
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @block_input()
  %5 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 44
  %7 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 2
  %8 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data8 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 62
  %x9 = bitcast %union.output_data* %output_data8 to %struct.x_output**
  %10 = load %struct.x_output*, %struct.x_output** %x9, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %10, i32 0, i32 12
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool, label %cond.true, label %cond.false.25

cond.true:                                        ; preds = %if.end
  %12 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data10 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x11 = bitcast %union.output_data* %output_data10 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x11, align 8
  %widget12 = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 12
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget12, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool13, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %15 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data14 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 62
  %x15 = bitcast %union.output_data* %output_data14 to %struct.x_output**
  %16 = load %struct.x_output*, %struct.x_output** %x15, align 8
  %widget16 = getelementptr inbounds %struct.x_output, %struct.x_output* %16, i32 0, i32 12
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget16, align 8
  %call17 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %17)
  %tobool18 = icmp ne %struct._GdkDrawable* %call17, null
  br i1 %tobool18, label %cond.true.19, label %cond.false

cond.true.19:                                     ; preds = %land.lhs.true
  %18 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data20 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 62
  %x21 = bitcast %union.output_data* %output_data20 to %struct.x_output**
  %19 = load %struct.x_output*, %struct.x_output** %x21, align 8
  %widget22 = getelementptr inbounds %struct.x_output, %struct.x_output* %19, i32 0, i32 12
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget22, align 8
  %call23 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %20)
  %call24 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call23)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.19
  %cond = phi i64 [ %call24, %cond.true.19 ], [ 0, %cond.false ]
  br label %cond.end.28

cond.false.25:                                    ; preds = %if.end
  %21 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data26 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 62
  %x27 = bitcast %union.output_data* %output_data26 to %struct.x_output**
  %22 = load %struct.x_output*, %struct.x_output** %x27, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %22, i32 0, i32 9
  %23 = load i64, i64* %window_desc, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.25, %cond.end
  %cond29 = phi i64 [ %cond, %cond.end ], [ %23, %cond.false.25 ]
  %call30 = call i32 @XGetGeometry(%struct._XDisplay* %8, i64 %cond29, i64* %rootw, i32* %xy_ign, i32* %xy_ign, i32* %native_width, i32* %native_height, i32* %ign, i32* %ign)
  %24 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_real_pos_and_offsets(%struct.frame* %24, i32* %left_off, i32* %right_off, i32* %top_off, i32* %bottom_off, i32* null, i32* null, i32* %xptr, i32* %yptr, i32* null)
  call void @unblock_input()
  %25 = load i32, i32* %xptr, align 4
  store i32 %25, i32* %outer_left, align 4
  %26 = load i32, i32* %yptr, align 4
  store i32 %26, i32* %outer_top, align 4
  %27 = load i32, i32* %outer_left, align 4
  %28 = load i32, i32* %left_off, align 4
  %add = add nsw i32 %27, %28
  %29 = load i32, i32* %native_width, align 4
  %add31 = add i32 %add, %29
  %30 = load i32, i32* %right_off, align 4
  %add32 = add i32 %add31, %30
  store i32 %add32, i32* %outer_right, align 4
  %31 = load i32, i32* %outer_top, align 4
  %32 = load i32, i32* %top_off, align 4
  %add33 = add nsw i32 %31, %32
  %33 = load i32, i32* %native_height, align 4
  %add34 = add i32 %add33, %33
  %34 = load i32, i32* %bottom_off, align 4
  %add35 = add i32 %add34, %34
  store i32 %add35, i32* %outer_bottom, align 4
  %35 = load i32, i32* %outer_left, align 4
  %36 = load i32, i32* %left_off, align 4
  %add36 = add nsw i32 %35, %36
  store i32 %add36, i32* %native_left, align 4
  %37 = load i32, i32* %outer_top, align 4
  %38 = load i32, i32* %top_off, align 4
  %add37 = add nsw i32 %37, %38
  store i32 %add37, i32* %native_top, align 4
  %39 = load i32, i32* %native_left, align 4
  %40 = load i32, i32* %native_width, align 4
  %add38 = add i32 %39, %40
  store i32 %add38, i32* %native_right, align 4
  %41 = load i32, i32* %native_top, align 4
  %42 = load i32, i32* %native_height, align 4
  %add39 = add i32 %41, %42
  store i32 %add39, i32* %native_bottom, align 4
  %43 = load %struct.frame*, %struct.frame** %f, align 8
  %internal_border_width40 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 51
  %44 = load i32, i32* %internal_border_width40, align 4
  store i32 %44, i32* %internal_border_width, align 4
  %45 = load i32, i32* %native_left, align 4
  %46 = load i32, i32* %internal_border_width, align 4
  %add41 = add nsw i32 %45, %46
  store i32 %add41, i32* %inner_left, align 4
  %47 = load i32, i32* %native_top, align 4
  %48 = load i32, i32* %internal_border_width, align 4
  %add42 = add nsw i32 %47, %48
  store i32 %add42, i32* %inner_top, align 4
  %49 = load i32, i32* %native_right, align 4
  %50 = load i32, i32* %internal_border_width, align 4
  %sub = sub nsw i32 %49, %50
  store i32 %sub, i32* %inner_right, align 4
  %51 = load i32, i32* %native_bottom, align 4
  %52 = load i32, i32* %internal_border_width, align 4
  %sub43 = sub nsw i32 %51, %52
  store i32 %sub43, i32* %inner_bottom, align 4
  store i8 1, i8* %menu_bar_external, align 1
  %53 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data44 = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 62
  %x45 = bitcast %union.output_data* %output_data44 to %struct.x_output**
  %54 = load %struct.x_output*, %struct.x_output** %x45, align 8
  %menubar_height = getelementptr inbounds %struct.x_output, %struct.x_output* %54, i32 0, i32 0
  %55 = load i32, i32* %menubar_height, align 4
  store i32 %55, i32* %menu_bar_height, align 4
  %56 = load i32, i32* %menu_bar_height, align 4
  %57 = load i32, i32* %native_top, align 4
  %add46 = add nsw i32 %57, %56
  store i32 %add46, i32* %native_top, align 4
  %58 = load i32, i32* %menu_bar_height, align 4
  %59 = load i32, i32* %inner_top, align 4
  %add47 = add nsw i32 %59, %58
  store i32 %add47, i32* %inner_top, align 4
  %60 = load i32, i32* %menu_bar_height, align 4
  %tobool48 = icmp ne i32 %60, 0
  br i1 %tobool48, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end.28
  %61 = load i32, i32* %native_width, align 4
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.end.28
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.49
  %cond52 = phi i32 [ %61, %cond.true.49 ], [ 0, %cond.false.50 ]
  store i32 %cond52, i32* %menu_bar_width, align 4
  store i8 1, i8* %tool_bar_external, align 1
  %62 = load %struct.frame*, %struct.frame** %f, align 8
  %tool_bar_position = getelementptr inbounds %struct.frame, %struct.frame* %62, i32 0, i32 18
  %63 = load i64, i64* %tool_bar_position, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 607)
  %cmp54 = icmp eq i64 %63, %call53
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %cond.end.51
  %64 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data56 = getelementptr inbounds %struct.frame, %struct.frame* %64, i32 0, i32 62
  %x57 = bitcast %union.output_data* %output_data56 to %struct.x_output**
  %65 = load %struct.x_output*, %struct.x_output** %x57, align 8
  %toolbar_left_width = getelementptr inbounds %struct.x_output, %struct.x_output* %65, i32 0, i32 3
  %66 = load i32, i32* %toolbar_left_width, align 4
  %67 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data58 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 62
  %x59 = bitcast %union.output_data* %output_data58 to %struct.x_output**
  %68 = load %struct.x_output*, %struct.x_output** %x59, align 8
  %toolbar_right_width = getelementptr inbounds %struct.x_output, %struct.x_output* %68, i32 0, i32 4
  %69 = load i32, i32* %toolbar_right_width, align 4
  %add60 = add nsw i32 %66, %69
  store i32 %add60, i32* %tool_bar_width, align 4
  %70 = load i32, i32* %tool_bar_width, align 4
  %71 = load i32, i32* %native_left, align 4
  %add61 = add nsw i32 %71, %70
  store i32 %add61, i32* %native_left, align 4
  %72 = load i32, i32* %tool_bar_width, align 4
  %73 = load i32, i32* %inner_left, align 4
  %add62 = add nsw i32 %73, %72
  store i32 %add62, i32* %inner_left, align 4
  %74 = load i32, i32* %tool_bar_width, align 4
  %tobool63 = icmp ne i32 %74, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %if.then.55
  %75 = load i32, i32* %native_height, align 4
  %76 = load i32, i32* %menu_bar_height, align 4
  %sub65 = sub i32 %75, %76
  br label %cond.end.67

cond.false.66:                                    ; preds = %if.then.55
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.64
  %cond68 = phi i32 [ %sub65, %cond.true.64 ], [ 0, %cond.false.66 ]
  store i32 %cond68, i32* %tool_bar_height, align 4
  br label %if.end.122

if.else:                                          ; preds = %cond.end.51
  %77 = load %struct.frame*, %struct.frame** %f, align 8
  %tool_bar_position69 = getelementptr inbounds %struct.frame, %struct.frame* %77, i32 0, i32 18
  %78 = load i64, i64* %tool_bar_position69, align 8
  %call70 = call i64 @builtin_lisp_symbol(i32 928)
  %cmp71 = icmp eq i64 %78, %call70
  br i1 %cmp71, label %if.then.72, label %if.else.85

if.then.72:                                       ; preds = %if.else
  %79 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data73 = getelementptr inbounds %struct.frame, %struct.frame* %79, i32 0, i32 62
  %x74 = bitcast %union.output_data* %output_data73 to %struct.x_output**
  %80 = load %struct.x_output*, %struct.x_output** %x74, align 8
  %toolbar_top_height = getelementptr inbounds %struct.x_output, %struct.x_output* %80, i32 0, i32 1
  %81 = load i32, i32* %toolbar_top_height, align 4
  %82 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data75 = getelementptr inbounds %struct.frame, %struct.frame* %82, i32 0, i32 62
  %x76 = bitcast %union.output_data* %output_data75 to %struct.x_output**
  %83 = load %struct.x_output*, %struct.x_output** %x76, align 8
  %toolbar_bottom_height = getelementptr inbounds %struct.x_output, %struct.x_output* %83, i32 0, i32 2
  %84 = load i32, i32* %toolbar_bottom_height, align 4
  %add77 = add nsw i32 %81, %84
  store i32 %add77, i32* %tool_bar_height, align 4
  %85 = load i32, i32* %tool_bar_height, align 4
  %86 = load i32, i32* %native_top, align 4
  %add78 = add nsw i32 %86, %85
  store i32 %add78, i32* %native_top, align 4
  %87 = load i32, i32* %tool_bar_height, align 4
  %88 = load i32, i32* %inner_top, align 4
  %add79 = add nsw i32 %88, %87
  store i32 %add79, i32* %inner_top, align 4
  %89 = load i32, i32* %tool_bar_height, align 4
  %tobool80 = icmp ne i32 %89, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %if.then.72
  %90 = load i32, i32* %native_width, align 4
  br label %cond.end.83

cond.false.82:                                    ; preds = %if.then.72
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.81
  %cond84 = phi i32 [ %90, %cond.true.81 ], [ 0, %cond.false.82 ]
  store i32 %cond84, i32* %tool_bar_width, align 4
  br label %if.end.121

if.else.85:                                       ; preds = %if.else
  %91 = load %struct.frame*, %struct.frame** %f, align 8
  %tool_bar_position86 = getelementptr inbounds %struct.frame, %struct.frame* %91, i32 0, i32 18
  %92 = load i64, i64* %tool_bar_position86, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 811)
  %cmp88 = icmp eq i64 %92, %call87
  br i1 %cmp88, label %if.then.89, label %if.else.105

if.then.89:                                       ; preds = %if.else.85
  %93 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data90 = getelementptr inbounds %struct.frame, %struct.frame* %93, i32 0, i32 62
  %x91 = bitcast %union.output_data* %output_data90 to %struct.x_output**
  %94 = load %struct.x_output*, %struct.x_output** %x91, align 8
  %toolbar_left_width92 = getelementptr inbounds %struct.x_output, %struct.x_output* %94, i32 0, i32 3
  %95 = load i32, i32* %toolbar_left_width92, align 4
  %96 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data93 = getelementptr inbounds %struct.frame, %struct.frame* %96, i32 0, i32 62
  %x94 = bitcast %union.output_data* %output_data93 to %struct.x_output**
  %97 = load %struct.x_output*, %struct.x_output** %x94, align 8
  %toolbar_right_width95 = getelementptr inbounds %struct.x_output, %struct.x_output* %97, i32 0, i32 4
  %98 = load i32, i32* %toolbar_right_width95, align 4
  %add96 = add nsw i32 %95, %98
  store i32 %add96, i32* %tool_bar_width, align 4
  %99 = load i32, i32* %tool_bar_width, align 4
  %100 = load i32, i32* %native_right, align 4
  %sub97 = sub nsw i32 %100, %99
  store i32 %sub97, i32* %native_right, align 4
  %101 = load i32, i32* %tool_bar_width, align 4
  %102 = load i32, i32* %inner_right, align 4
  %sub98 = sub nsw i32 %102, %101
  store i32 %sub98, i32* %inner_right, align 4
  %103 = load i32, i32* %tool_bar_width, align 4
  %tobool99 = icmp ne i32 %103, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %if.then.89
  %104 = load i32, i32* %native_height, align 4
  %105 = load i32, i32* %menu_bar_height, align 4
  %sub101 = sub i32 %104, %105
  br label %cond.end.103

cond.false.102:                                   ; preds = %if.then.89
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.102, %cond.true.100
  %cond104 = phi i32 [ %sub101, %cond.true.100 ], [ 0, %cond.false.102 ]
  store i32 %cond104, i32* %tool_bar_height, align 4
  br label %if.end.120

if.else.105:                                      ; preds = %if.else.85
  %106 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data106 = getelementptr inbounds %struct.frame, %struct.frame* %106, i32 0, i32 62
  %x107 = bitcast %union.output_data* %output_data106 to %struct.x_output**
  %107 = load %struct.x_output*, %struct.x_output** %x107, align 8
  %toolbar_top_height108 = getelementptr inbounds %struct.x_output, %struct.x_output* %107, i32 0, i32 1
  %108 = load i32, i32* %toolbar_top_height108, align 4
  %109 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data109 = getelementptr inbounds %struct.frame, %struct.frame* %109, i32 0, i32 62
  %x110 = bitcast %union.output_data* %output_data109 to %struct.x_output**
  %110 = load %struct.x_output*, %struct.x_output** %x110, align 8
  %toolbar_bottom_height111 = getelementptr inbounds %struct.x_output, %struct.x_output* %110, i32 0, i32 2
  %111 = load i32, i32* %toolbar_bottom_height111, align 4
  %add112 = add nsw i32 %108, %111
  store i32 %add112, i32* %tool_bar_height, align 4
  %112 = load i32, i32* %tool_bar_height, align 4
  %113 = load i32, i32* %native_bottom, align 4
  %sub113 = sub nsw i32 %113, %112
  store i32 %sub113, i32* %native_bottom, align 4
  %114 = load i32, i32* %tool_bar_height, align 4
  %115 = load i32, i32* %inner_bottom, align 4
  %sub114 = sub nsw i32 %115, %114
  store i32 %sub114, i32* %inner_bottom, align 4
  %116 = load i32, i32* %tool_bar_height, align 4
  %tobool115 = icmp ne i32 %116, 0
  br i1 %tobool115, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %if.else.105
  %117 = load i32, i32* %native_width, align 4
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.else.105
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %cond119 = phi i32 [ %117, %cond.true.116 ], [ 0, %cond.false.117 ]
  store i32 %cond119, i32* %tool_bar_width, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.118, %cond.end.103
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %cond.end.83
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %cond.end.67
  %118 = load i64, i64* %attribute.addr, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 724)
  %cmp124 = icmp eq i64 %118, %call123
  br i1 %cmp124, label %if.then.125, label %if.else.137

if.then.125:                                      ; preds = %if.end.122
  %119 = load i32, i32* %outer_left, align 4
  %conv = sext i32 %119 to i64
  %shl = shl i64 %conv, 2
  %add126 = add i64 %shl, 2
  %120 = load i32, i32* %outer_top, align 4
  %conv127 = sext i32 %120 to i64
  %shl128 = shl i64 %conv127, 2
  %add129 = add i64 %shl128, 2
  %121 = load i32, i32* %outer_right, align 4
  %conv130 = sext i32 %121 to i64
  %shl131 = shl i64 %conv130, 2
  %add132 = add i64 %shl131, 2
  %122 = load i32, i32* %outer_bottom, align 4
  %conv133 = sext i32 %122 to i64
  %shl134 = shl i64 %conv133, 2
  %add135 = add i64 %shl134, 2
  %call136 = call i64 @list4(i64 %add126, i64 %add129, i64 %add132, i64 %add135)
  store i64 %call136, i64* %retval
  br label %return

if.else.137:                                      ; preds = %if.end.122
  %123 = load i64, i64* %attribute.addr, align 8
  %call138 = call i64 @builtin_lisp_symbol(i32 697)
  %cmp139 = icmp eq i64 %123, %call138
  br i1 %cmp139, label %if.then.141, label %if.else.155

if.then.141:                                      ; preds = %if.else.137
  %124 = load i32, i32* %native_left, align 4
  %conv142 = sext i32 %124 to i64
  %shl143 = shl i64 %conv142, 2
  %add144 = add i64 %shl143, 2
  %125 = load i32, i32* %native_top, align 4
  %conv145 = sext i32 %125 to i64
  %shl146 = shl i64 %conv145, 2
  %add147 = add i64 %shl146, 2
  %126 = load i32, i32* %native_right, align 4
  %conv148 = sext i32 %126 to i64
  %shl149 = shl i64 %conv148, 2
  %add150 = add i64 %shl149, 2
  %127 = load i32, i32* %native_bottom, align 4
  %conv151 = sext i32 %127 to i64
  %shl152 = shl i64 %conv151, 2
  %add153 = add i64 %shl152, 2
  %call154 = call i64 @list4(i64 %add144, i64 %add147, i64 %add150, i64 %add153)
  store i64 %call154, i64* %retval
  br label %return

if.else.155:                                      ; preds = %if.else.137
  %128 = load i64, i64* %attribute.addr, align 8
  %call156 = call i64 @builtin_lisp_symbol(i32 549)
  %cmp157 = icmp eq i64 %128, %call156
  br i1 %cmp157, label %if.then.159, label %if.else.173

if.then.159:                                      ; preds = %if.else.155
  %129 = load i32, i32* %inner_left, align 4
  %conv160 = sext i32 %129 to i64
  %shl161 = shl i64 %conv160, 2
  %add162 = add i64 %shl161, 2
  %130 = load i32, i32* %inner_top, align 4
  %conv163 = sext i32 %130 to i64
  %shl164 = shl i64 %conv163, 2
  %add165 = add i64 %shl164, 2
  %131 = load i32, i32* %inner_right, align 4
  %conv166 = sext i32 %131 to i64
  %shl167 = shl i64 %conv166, 2
  %add168 = add i64 %shl167, 2
  %132 = load i32, i32* %inner_bottom, align 4
  %conv169 = sext i32 %132 to i64
  %shl170 = shl i64 %conv169, 2
  %add171 = add i64 %shl170, 2
  %call172 = call i64 @list4(i64 %add162, i64 %add165, i64 %add168, i64 %add171)
  store i64 %call172, i64* %retval
  br label %return

if.else.173:                                      ; preds = %if.else.155
  %call174 = call i64 @builtin_lisp_symbol(i32 725)
  %133 = load i32, i32* %outer_left, align 4
  %conv175 = sext i32 %133 to i64
  %shl176 = shl i64 %conv175, 2
  %add177 = add i64 %shl176, 2
  %134 = load i32, i32* %outer_top, align 4
  %conv178 = sext i32 %134 to i64
  %shl179 = shl i64 %conv178, 2
  %add180 = add i64 %shl179, 2
  %call181 = call i64 @Fcons(i64 %add177, i64 %add180)
  %call182 = call i64 @Fcons(i64 %call174, i64 %call181)
  %call183 = call i64 @builtin_lisp_symbol(i32 726)
  %135 = load i32, i32* %outer_right, align 4
  %136 = load i32, i32* %outer_left, align 4
  %sub184 = sub nsw i32 %135, %136
  %conv185 = sext i32 %sub184 to i64
  %shl186 = shl i64 %conv185, 2
  %add187 = add i64 %shl186, 2
  %137 = load i32, i32* %outer_bottom, align 4
  %138 = load i32, i32* %outer_top, align 4
  %sub188 = sub nsw i32 %137, %138
  %conv189 = sext i32 %sub188 to i64
  %shl190 = shl i64 %conv189, 2
  %add191 = add i64 %shl190, 2
  %call192 = call i64 @Fcons(i64 %add187, i64 %add191)
  %call193 = call i64 @Fcons(i64 %call183, i64 %call192)
  %call194 = call i64 @builtin_lisp_symbol(i32 393)
  %139 = load i32, i32* %right_off, align 4
  %conv195 = sext i32 %139 to i64
  %shl196 = shl i64 %conv195, 2
  %add197 = add i64 %shl196, 2
  %140 = load i32, i32* %bottom_off, align 4
  %conv198 = sext i32 %140 to i64
  %shl199 = shl i64 %conv198, 2
  %add200 = add i64 %shl199, 2
  %call201 = call i64 @Fcons(i64 %add197, i64 %add200)
  %call202 = call i64 @Fcons(i64 %call194, i64 %call201)
  %call203 = call i64 @builtin_lisp_symbol(i32 920)
  %141 = load i32, i32* %top_off, align 4
  %142 = load i32, i32* %bottom_off, align 4
  %sub204 = sub nsw i32 %141, %142
  %conv205 = sext i32 %sub204 to i64
  %shl206 = shl i64 %conv205, 2
  %add207 = add i64 %shl206, 2
  %call208 = call i64 @Fcons(i64 2, i64 %add207)
  %call209 = call i64 @Fcons(i64 %call203, i64 %call208)
  %call210 = call i64 @builtin_lisp_symbol(i32 652)
  %143 = load i8, i8* %menu_bar_external, align 1
  %tobool211 = trunc i8 %143 to i1
  br i1 %tobool211, label %cond.true.213, label %cond.false.215

cond.true.213:                                    ; preds = %if.else.173
  %call214 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.217

cond.false.215:                                   ; preds = %if.else.173
  %call216 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.215, %cond.true.213
  %cond218 = phi i64 [ %call214, %cond.true.213 ], [ %call216, %cond.false.215 ]
  %call219 = call i64 @Fcons(i64 %call210, i64 %cond218)
  %call220 = call i64 @builtin_lisp_symbol(i32 654)
  %144 = load i32, i32* %menu_bar_width, align 4
  %conv221 = sext i32 %144 to i64
  %shl222 = shl i64 %conv221, 2
  %add223 = add i64 %shl222, 2
  %145 = load i32, i32* %menu_bar_height, align 4
  %conv224 = sext i32 %145 to i64
  %shl225 = shl i64 %conv224, 2
  %add226 = add i64 %shl225, 2
  %call227 = call i64 @Fcons(i64 %add223, i64 %add226)
  %call228 = call i64 @Fcons(i64 %call220, i64 %call227)
  %call229 = call i64 @builtin_lisp_symbol(i32 922)
  %146 = load i8, i8* %tool_bar_external, align 1
  %tobool230 = trunc i8 %146 to i1
  br i1 %tobool230, label %cond.true.232, label %cond.false.234

cond.true.232:                                    ; preds = %cond.end.217
  %call233 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.236

cond.false.234:                                   ; preds = %cond.end.217
  %call235 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.234, %cond.true.232
  %cond237 = phi i64 [ %call233, %cond.true.232 ], [ %call235, %cond.false.234 ]
  %call238 = call i64 @Fcons(i64 %call229, i64 %cond237)
  %call239 = call i64 @builtin_lisp_symbol(i32 924)
  %147 = load %struct.frame*, %struct.frame** %f, align 8
  %tool_bar_position240 = getelementptr inbounds %struct.frame, %struct.frame* %147, i32 0, i32 18
  %148 = load i64, i64* %tool_bar_position240, align 8
  %call241 = call i64 @Fcons(i64 %call239, i64 %148)
  %call242 = call i64 @builtin_lisp_symbol(i32 925)
  %149 = load i32, i32* %tool_bar_width, align 4
  %conv243 = sext i32 %149 to i64
  %shl244 = shl i64 %conv243, 2
  %add245 = add i64 %shl244, 2
  %150 = load i32, i32* %tool_bar_height, align 4
  %conv246 = sext i32 %150 to i64
  %shl247 = shl i64 %conv246, 2
  %add248 = add i64 %shl247, 2
  %call249 = call i64 @Fcons(i64 %add245, i64 %add248)
  %call250 = call i64 @Fcons(i64 %call242, i64 %call249)
  %call251 = call i64 @builtin_lisp_symbol(i32 563)
  %151 = load i32, i32* %internal_border_width, align 4
  %conv252 = sext i32 %151 to i64
  %shl253 = shl i64 %conv252, 2
  %add254 = add i64 %shl253, 2
  %call255 = call i64 @Fcons(i64 %call251, i64 %add254)
  %call256 = call i64 (i32, i64, i64, ...) @listn(i32 0, i64 10, i64 %call182, i64 %call193, i64 %call202, i64 %call209, i64 %call219, i64 %call228, i64 %call238, i64 %call241, i64 %call250, i64 %call255)
  store i64 %call256, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.236, %if.then.159, %if.then.141, %if.then.125, %if.then
  %152 = load i64, i64* %retval
  ret i64 %152
}

; Function Attrs: nounwind uwtable
define i64 @Fx_frame_edges(i64 %frame, i64 %type) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %1 = load i64, i64* %type.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 724)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %type.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 549)
  %cmp2 = icmp eq i64 %2, %call1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %3 = load i64, i64* %type.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i64 @builtin_lisp_symbol(i32 697)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %call3, %cond.false ]
  %call4 = call i64 @frame_geometry(i64 %0, i64 %cond)
  ret i64 %call4
}

; Function Attrs: nounwind uwtable
define i64 @Fx_mouse_absolute_pixel_position() #0 {
entry:
  %retval = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %root = alloca i64, align 8
  %dummy_window = alloca i64, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dummy = alloca i32, align 4
  %0 = load i64, i64* @selected_frame, align 8
  %call = call zeroext i1 @FRAMEP(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* @selected_frame, align 8
  %sub1 = sub nsw i64 %5, 5
  %6 = inttoptr i64 %sub1 to i8*
  %7 = bitcast i8* %6 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %cond = phi %struct.frame* [ %7, %cond.true ], [ null, %8 ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 26
  %10 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %10, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp2 = icmp eq i32 %bf.cast, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method3 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 26
  %12 = bitcast i48* %output_method3 to i64*
  %bf.load4 = load i64, i64* %12, align 8
  %bf.lshr5 = lshr i64 %bf.load4, 23
  %bf.clear6 = and i64 %bf.lshr5, 7
  %bf.cast7 = trunc i64 %bf.clear6 to i32
  %cmp8 = icmp eq i32 %bf.cast7, 2
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @block_input()
  %13 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x10 = bitcast %union.output_data* %output_data to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x10, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 44
  %15 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %15, i32 0, i32 2
  %16 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %17 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %18 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %display_info13 = getelementptr inbounds %struct.x_output, %struct.x_output* %18, i32 0, i32 44
  %19 = load %struct.x_display_info*, %struct.x_display_info** %display_info13, align 8
  %display14 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 2
  %20 = load %struct._XDisplay*, %struct._XDisplay** %display14, align 8
  %21 = bitcast %struct._XDisplay* %20 to %struct.anon.11*
  %default_screen = getelementptr inbounds %struct.anon.11, %struct.anon.11* %21, i32 0, i32 33
  %22 = load i32, i32* %default_screen, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data15 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 62
  %x16 = bitcast %union.output_data* %output_data15 to %struct.x_output**
  %24 = load %struct.x_output*, %struct.x_output** %x16, align 8
  %display_info17 = getelementptr inbounds %struct.x_output, %struct.x_output* %24, i32 0, i32 44
  %25 = load %struct.x_display_info*, %struct.x_display_info** %display_info17, align 8
  %display18 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %25, i32 0, i32 2
  %26 = load %struct._XDisplay*, %struct._XDisplay** %display18, align 8
  %27 = bitcast %struct._XDisplay* %26 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %27, i32 0, i32 35
  %28 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %28, i64 %idxprom
  %root19 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 2
  %29 = load i64, i64* %root19, align 8
  %call20 = call i32 @XQueryPointer(%struct._XDisplay* %16, i64 %29, i64* %root, i64* %dummy_window, i32* %x, i32* %y, i32* %dummy, i32* %dummy, i32* %dummy)
  call void @unblock_input()
  %30 = load i32, i32* %x, align 4
  %conv = sext i32 %30 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %31 = load i32, i32* %y, align 4
  %conv21 = sext i32 %31 to i64
  %shl22 = shl i64 %conv21, 2
  %add23 = add i64 %shl22, 2
  %call24 = call i64 @Fcons(i64 %add, i64 %add23)
  store i64 %call24, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %32 = load i64, i64* %retval
  ret i64 %32
}

; Function Attrs: noreturn
declare void @emacs_abort() #2

; Function Attrs: nounwind uwtable
define i64 @Fx_set_mouse_absolute_pixel_position(i64 %x, i64 %y) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* @selected_frame, align 8
  %call = call zeroext i1 @FRAMEP(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* @selected_frame, align 8
  %sub1 = sub nsw i64 %5, 5
  %6 = inttoptr i64 %sub1 to i8*
  %7 = bitcast i8* %6 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %cond = phi %struct.frame* [ %7, %cond.true ], [ null, %8 ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 26
  %10 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %10, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp2 = icmp eq i32 %bf.cast, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method3 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 26
  %12 = bitcast i48* %output_method3 to i64*
  %bf.load4 = load i64, i64* %12, align 8
  %bf.lshr5 = lshr i64 %bf.load4, 23
  %bf.clear6 = and i64 %bf.lshr5, 7
  %bf.cast7 = trunc i64 %bf.clear6 to i32
  %cmp8 = icmp eq i32 %bf.cast7, 2
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.10

do.body.10:                                       ; preds = %do.body
  %13 = load i64, i64* %x.addr, align 8
  %and = and i64 %13, 7
  %conv = trunc i64 %and to i32
  %and11 = and i32 %conv, -5
  %cmp12 = icmp eq i32 %and11, 2
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %do.body.10
  br label %cond.end.17

cond.false.15:                                    ; preds = %do.body.10
  %call16 = call i64 @builtin_lisp_symbol(i32 559)
  %14 = load i64, i64* %x.addr, align 8
  %15 = call i64 @wrong_type_argument(i64 %call16, i64 %14) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.17

cond.end.17:                                      ; preds = %16, %cond.true.14
  %17 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %17, 2
  %cmp18 = icmp sle i64 -2147483648, %shr
  br i1 %cmp18, label %land.lhs.true.20, label %if.then.24

land.lhs.true.20:                                 ; preds = %cond.end.17
  %18 = load i64, i64* %x.addr, align 8
  %shr21 = ashr i64 %18, 2
  %cmp22 = icmp sle i64 %shr21, 2147483647
  br i1 %cmp22, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.20, %cond.end.17
  %19 = load i64, i64* %x.addr, align 8
  call void @args_out_of_range_3(i64 %19, i64 -8589934590, i64 8589934590) #7
  unreachable

if.end.25:                                        ; preds = %land.lhs.true.20
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %do.end.26

do.end.26:                                        ; preds = %do.end
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.27
  %20 = load i64, i64* %y.addr, align 8
  %and29 = and i64 %20, 7
  %conv30 = trunc i64 %and29 to i32
  %and31 = and i32 %conv30, -5
  %cmp32 = icmp eq i32 %and31, 2
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %do.body.28
  br label %cond.end.37

cond.false.35:                                    ; preds = %do.body.28
  %call36 = call i64 @builtin_lisp_symbol(i32 559)
  %21 = load i64, i64* %y.addr, align 8
  %22 = call i64 @wrong_type_argument(i64 %call36, i64 %21) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.37

cond.end.37:                                      ; preds = %23, %cond.true.34
  %24 = load i64, i64* %y.addr, align 8
  %shr38 = ashr i64 %24, 2
  %cmp39 = icmp sle i64 -2147483648, %shr38
  br i1 %cmp39, label %land.lhs.true.41, label %if.then.45

land.lhs.true.41:                                 ; preds = %cond.end.37
  %25 = load i64, i64* %y.addr, align 8
  %shr42 = ashr i64 %25, 2
  %cmp43 = icmp sle i64 %shr42, 2147483647
  br i1 %cmp43, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.41, %cond.end.37
  %26 = load i64, i64* %y.addr, align 8
  call void @args_out_of_range_3(i64 %26, i64 -8589934590, i64 8589934590) #7
  unreachable

if.end.46:                                        ; preds = %land.lhs.true.41
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.end.47
  call void @block_input()
  %27 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 62
  %x49 = bitcast %union.output_data* %output_data to %struct.x_output**
  %28 = load %struct.x_output*, %struct.x_output** %x49, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %28, i32 0, i32 44
  %29 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %29, i32 0, i32 2
  %30 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %31 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data50 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 62
  %x51 = bitcast %union.output_data* %output_data50 to %struct.x_output**
  %32 = load %struct.x_output*, %struct.x_output** %x51, align 8
  %display_info52 = getelementptr inbounds %struct.x_output, %struct.x_output* %32, i32 0, i32 44
  %33 = load %struct.x_display_info*, %struct.x_display_info** %display_info52, align 8
  %display53 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %33, i32 0, i32 2
  %34 = load %struct._XDisplay*, %struct._XDisplay** %display53, align 8
  %35 = bitcast %struct._XDisplay* %34 to %struct.anon.11*
  %default_screen = getelementptr inbounds %struct.anon.11, %struct.anon.11* %35, i32 0, i32 33
  %36 = load i32, i32* %default_screen, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data54 = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 62
  %x55 = bitcast %union.output_data* %output_data54 to %struct.x_output**
  %38 = load %struct.x_output*, %struct.x_output** %x55, align 8
  %display_info56 = getelementptr inbounds %struct.x_output, %struct.x_output* %38, i32 0, i32 44
  %39 = load %struct.x_display_info*, %struct.x_display_info** %display_info56, align 8
  %display57 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %39, i32 0, i32 2
  %40 = load %struct._XDisplay*, %struct._XDisplay** %display57, align 8
  %41 = bitcast %struct._XDisplay* %40 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %41, i32 0, i32 35
  %42 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %42, i64 %idxprom
  %root = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 2
  %43 = load i64, i64* %root, align 8
  %44 = load i64, i64* %x.addr, align 8
  %shr58 = ashr i64 %44, 2
  %conv59 = trunc i64 %shr58 to i32
  %45 = load i64, i64* %y.addr, align 8
  %shr60 = ashr i64 %45, 2
  %conv61 = trunc i64 %shr60 to i32
  %call62 = call i32 @XWarpPointer(%struct._XDisplay* %30, i64 0, i64 %43, i32 0, i32 0, i32 0, i32 0, i32 %conv59, i32 %conv61)
  call void @unblock_input()
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call63, i64* %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.then
  %46 = load i64, i64* %retval
  ret i64 %46
}

; Function Attrs: noreturn
declare void @args_out_of_range_3(i64, i64, i64) #2

declare i32 @XWarpPointer(%struct._XDisplay*, i64, i64, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @select_visual(%struct.x_display_info* %dpyinfo) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  %screen = alloca %struct.Screen*, align 8
  %visualClass = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %VisualClass = alloca i64, align 8
  %.compoundliteral3 = alloca %union.Aligned_String, align 8
  %value = alloca i64, align 8
  %s15 = alloca i8*, align 8
  %dash = alloca i8*, align 8
  %i = alloca i32, align 4
  %class = alloca i32, align 4
  %vinfo = alloca %struct.XVisualInfo, align 8
  %n_visuals = alloca i32, align 4
  %vinfo45 = alloca %struct.XVisualInfo*, align 8
  %vinfo_template = alloca %struct.XVisualInfo, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 2
  %1 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %1, %struct._XDisplay** %dpy, align 8
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %screen1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 6
  %3 = load %struct.Screen*, %struct.Screen** %screen1, align 8
  store %struct.Screen* %3, %struct.Screen** %screen, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 11, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i8** %data, align 8
  %s2 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %4 = bitcast %struct.Lisp_String* %s2 to i8*
  %call = call i64 @make_lisp_ptr(i8* %4, i32 4)
  store i64 %call, i64* %visualClass, align 8
  %s4 = bitcast %union.Aligned_String* %.compoundliteral3 to %struct.Lisp_String*
  %size5 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 0
  store i64 11, i64* %size5, align 8
  %size_byte6 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 1
  store i64 -1, i64* %size_byte6, align 8
  %intervals7 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals7, align 8
  %data8 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s4, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i8** %data8, align 8
  %s9 = bitcast %union.Aligned_String* %.compoundliteral3 to %struct.Lisp_String*
  %5 = bitcast %struct.Lisp_String* %s9 to i8*
  %call10 = call i64 @make_lisp_ptr(i8* %5, i32 4)
  store i64 %call10, i64* %VisualClass, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %7 = load i64, i64* %visualClass, align 8
  %8 = load i64, i64* %VisualClass, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %call13 = call i64 @display_x_get_resource(%struct.x_display_info* %6, i64 %7, i64 %8, i64 %call11, i64 %call12)
  store i64 %call13, i64* %value, align 8
  %9 = load i64, i64* %value, align 8
  %call14 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call14, label %if.then, label %if.else.44

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %value, align 8
  %call16 = call i64 @SBYTES(i64 %10)
  %add = add nsw i64 %call16, 1
  %11 = alloca i8, i64 %add
  store i8* %11, i8** %s15, align 8
  store i32 -1, i32* %class, align 4
  %12 = load i8*, i8** %s15, align 8
  %13 = load i64, i64* %value, align 8
  %call17 = call i8* @lispstpcpy(i8* %12, i64 %13)
  %14 = load i8*, i8** %s15, align 8
  %call18 = call i8* @strchr(i8* %14, i32 45) #9
  store i8* %call18, i8** %dash, align 8
  %15 = load i8*, i8** %dash, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then
  %16 = load i8*, i8** %dash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %call20 = call i32 @atoi(i8* %add.ptr) #9
  %17 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %n_planes = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %17, i32 0, i32 11
  store i32 %call20, i32* %n_planes, align 4
  %18 = load i8*, i8** %dash, align 8
  store i8 0, i8* %18, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %n_planes21 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 11
  store i32 0, i32* %n_planes21, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.visual_class], [7 x %struct.visual_class]* @visual_classes, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.visual_class, %struct.visual_class* %arrayidx, i32 0, i32 0
  %21 = load i8*, i8** %name, align 8
  %tobool22 = icmp ne i8* %21, null
  br i1 %tobool22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %s15, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [7 x %struct.visual_class], [7 x %struct.visual_class]* @visual_classes, i32 0, i64 %idxprom23
  %name25 = getelementptr inbounds %struct.visual_class, %struct.visual_class* %arrayidx24, i32 0, i32 0
  %24 = load i8*, i8** %name25, align 8
  %call26 = call i32 @xstrcasecmp(i8* %22, i8* %24)
  %cmp = icmp eq i32 %call26, 0
  br i1 %cmp, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [7 x %struct.visual_class], [7 x %struct.visual_class]* @visual_classes, i32 0, i64 %idxprom28
  %class30 = getelementptr inbounds %struct.visual_class, %struct.visual_class* %arrayidx29, i32 0, i32 1
  %26 = load i32, i32* %class30, align 4
  store i32 %26, i32* %class, align 4
  br label %for.end

if.end.31:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  %28 = load i32, i32* %class, align 4
  %cmp32 = icmp eq i32 %28, -1
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %29 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %30 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call33 = call i32 @XScreenNumberOfScreen(%struct.Screen* %30)
  %31 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %n_planes34 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %31, i32 0, i32 11
  %32 = load i32, i32* %n_planes34, align 4
  %33 = load i32, i32* %class, align 4
  %call35 = call i32 @XMatchVisualInfo(%struct._XDisplay* %29, i32 %call33, i32 %32, i32 %33, %struct.XVisualInfo* %vinfo)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.42, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false, %for.end
  %34 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %34, %call38
  br i1 %cmp39, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.37
  %35 = load i64, i64* %value, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call40 = call i64 @code_convert_string_norecord(i64 %35, i64 %36, i1 zeroext true)
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  %37 = load i64, i64* %value, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call40, %cond.true ], [ %37, %cond.false ]
  %call41 = call i8* @SSDATA(i64 %cond)
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.85, i32 0, i32 0), i8* %call41) #7
  unreachable

if.end.42:                                        ; preds = %lor.lhs.false
  %visual = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %vinfo, i32 0, i32 0
  %38 = load %struct.Visual*, %struct.Visual** %visual, align 8
  %39 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %visual43 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %39, i32 0, i32 9
  store %struct.Visual* %38, %struct.Visual** %visual43, align 8
  br label %if.end.57

if.else.44:                                       ; preds = %entry
  %40 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %root_visual = getelementptr inbounds %struct.Screen, %struct.Screen* %40, i32 0, i32 10
  %41 = load %struct.Visual*, %struct.Visual** %root_visual, align 8
  %42 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %visual46 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %42, i32 0, i32 9
  store %struct.Visual* %41, %struct.Visual** %visual46, align 8
  %43 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %visual47 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %43, i32 0, i32 9
  %44 = load %struct.Visual*, %struct.Visual** %visual47, align 8
  %call48 = call i64 @XVisualIDFromVisual(%struct.Visual* %44)
  %visualid = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %vinfo_template, i32 0, i32 1
  store i64 %call48, i64* %visualid, align 8
  %45 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call49 = call i32 @XScreenNumberOfScreen(%struct.Screen* %45)
  %screen50 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %vinfo_template, i32 0, i32 2
  store i32 %call49, i32* %screen50, align 4
  %46 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call51 = call %struct.XVisualInfo* @XGetVisualInfo(%struct._XDisplay* %46, i64 3, %struct.XVisualInfo* %vinfo_template, i32* %n_visuals)
  store %struct.XVisualInfo* %call51, %struct.XVisualInfo** %vinfo45, align 8
  %47 = load i32, i32* %n_visuals, align 4
  %cmp52 = icmp sle i32 %47, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.44
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.86, i32 0, i32 0)) #7
  unreachable

if.end.54:                                        ; preds = %if.else.44
  %48 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo45, align 8
  %depth = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %48, i32 0, i32 3
  %49 = load i32, i32* %depth, align 4
  %50 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %n_planes55 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %50, i32 0, i32 11
  store i32 %49, i32* %n_planes55, align 4
  %51 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo45, align 8
  %52 = bitcast %struct.XVisualInfo* %51 to i8*
  %call56 = call i32 @XFree(i8* %52)
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.54, %if.end.42
  ret void
}

declare i64 @display_x_get_resource(%struct.x_display_info*, i64, i64, i64, i64) #1

declare i64 @SBYTES(i64) #1

declare i8* @lispstpcpy(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare i32 @xstrcasecmp(i8*, i8*) #1

declare i32 @XMatchVisualInfo(%struct._XDisplay*, i32, i32, i32, %struct.XVisualInfo*) #1

; Function Attrs: noreturn
declare void @fatal(i8*, ...) #2

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

declare i64 @XVisualIDFromVisual(%struct.Visual*) #1

declare %struct.XVisualInfo* @XGetVisualInfo(%struct._XDisplay*, i64, %struct.XVisualInfo*, i32*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_open_connection(i64 %display, i64 %xrm_string, i64 %must_succeed) #0 {
entry:
  %display.addr = alloca i64, align 8
  %xrm_string.addr = alloca i64, align 8
  %must_succeed.addr = alloca i64, align 8
  %xrm_option = alloca i8*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %display, i64* %display.addr, align 8
  store i64 %xrm_string, i64* %xrm_string.addr, align 8
  store i64 %must_succeed, i64* %must_succeed.addr, align 8
  %0 = load i64, i64* %display.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %xrm_string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %xrm_string.addr, align 8
  call void @CHECK_STRING(i64 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %xrm_string.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %3, %call1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i64, i64* %xrm_string.addr, align 8
  %call3 = call i8* @SSDATA(i64 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call3, %cond.false ]
  store i8* %cond, i8** %xrm_option, align 8
  call void @validate_x_resource_name()
  %5 = load i64, i64* %display.addr, align 8
  %6 = load i8*, i8** %xrm_option, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 357), align 8
  %call4 = call i8* @SSDATA(i64 %7)
  %call5 = call %struct.x_display_info* @x_term_init(i64 %5, i8* %6, i8* %call4)
  store %struct.x_display_info* %call5, %struct.x_display_info** %dpyinfo, align 8
  %8 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %cmp6 = icmp eq %struct.x_display_info* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %cond.end
  %9 = load i64, i64* %must_succeed.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %9, %call8
  br i1 %cmp9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %10 = load i64, i64* %display.addr, align 8
  %call11 = call i8* @SDATA(i64 %10)
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.87, i32 0, i32 0), i8* %call11) #7
  unreachable

if.else:                                          ; preds = %if.then.7
  %11 = load i64, i64* %display.addr, align 8
  %call12 = call i8* @SDATA(i64 %11)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i32 0, i32 0), i8* %call12) #7
  unreachable

if.end.13:                                        ; preds = %cond.end
  %call14 = call i64 @make_natnum(i64 11)
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 334), align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call15
}

declare void @validate_x_resource_name() #1

declare %struct.x_display_info* @x_term_init(i64, i8*, i8*) #1

declare i8* @SDATA(i64) #1

declare i64 @make_natnum(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_close_connection(i64 %terminal) #0 {
entry:
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %reference_count = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 5
  %2 = load i32, i32* %reference_count, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 1
  %4 = load %struct.terminal*, %struct.terminal** %terminal1, align 8
  call void @x_delete_terminal(%struct.terminal* %4)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call2
}

declare void @x_delete_terminal(%struct.terminal*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_display_list() #0 {
entry:
  %result = alloca i64, align 8
  %xdi = alloca %struct.x_display_info*, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %result, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** @x_display_list, align 8
  store %struct.x_display_info* %0, %struct.x_display_info** %xdi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.x_display_info*, %struct.x_display_info** %xdi, align 8
  %tobool = icmp ne %struct.x_display_info* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.x_display_info*, %struct.x_display_info** %xdi, align 8
  %name_list_element = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 4
  %3 = load i64, i64* %name_list_element, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %7 = load i64, i64* %result, align 8
  %call1 = call i64 @Fcons(i64 %6, i64 %7)
  store i64 %call1, i64* %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.x_display_info*, %struct.x_display_info** %xdi, align 8
  %next = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %8, i32 0, i32 0
  %9 = load %struct.x_display_info*, %struct.x_display_info** %next, align 8
  store %struct.x_display_info* %9, %struct.x_display_info** %xdi, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %result, align 8
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @Fx_synchronize(i64 %on, i64 %terminal) #0 {
entry:
  %on.addr = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %on, i64* %on.addr, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 2
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %3 = load i64, i64* %on.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %call2 = call i32 (%struct._XDisplay*)* @XSynchronize(%struct._XDisplay* %2, i32 %lnot.ext)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call3
}

declare i32 (%struct._XDisplay*)* @XSynchronize(%struct._XDisplay*, i32) #1

; Function Attrs: nounwind uwtable
define void @x_sync(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  call void @block_input()
  br label %do.body

do.body:                                          ; preds = %entry
  call void @gdk_window_process_all_updates()
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call = call i32 @XSync(%struct._XDisplay* %3, i32 0)
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @unblock_input()
  ret void
}

declare void @gdk_window_process_all_updates() #1

declare i32 @XSync(%struct._XDisplay*, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_change_window_property(i64 %prop, i64 %value, i64 %frame, i64 %type, i64 %format, i64 %outer_p) #0 {
entry:
  %prop.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %format.addr = alloca i64, align 8
  %outer_p.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %prop_atom = alloca i64, align 8
  %target_type = alloca i64, align 8
  %element_format = alloca i32, align 4
  %data = alloca i8*, align 8
  %nelements = alloca i32, align 4
  %w = alloca i64, align 8
  %elsize = alloca i64, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i64 %format, i64* %format.addr, align 8
  store i64 %outer_p, i64* %outer_p.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  store i64 31, i64* %target_type, align 8
  store i32 8, i32* %element_format, align 4
  %1 = load i64, i64* %prop.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %format.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call1
  br i1 %cmp, label %if.end.18, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %format.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call5 = call i64 @builtin_lisp_symbol(i32 559)
  %4 = load i64, i64* %format.addr, align 8
  %5 = call i64 @wrong_type_argument(i64 %call5, i64 %4) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load i64, i64* %format.addr, align 8
  %shr = ashr i64 %7, 2
  %cmp6 = icmp ne i64 %shr, 8
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i64, i64* %format.addr, align 8
  %shr8 = ashr i64 %8, 2
  %cmp9 = icmp ne i64 %shr8, 16
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %9 = load i64, i64* %format.addr, align 8
  %shr12 = ashr i64 %9, 2
  %cmp13 = icmp ne i64 %shr12, 32
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.11
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.90, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true.11, %land.lhs.true, %cond.end
  %10 = load i64, i64* %format.addr, align 8
  %shr16 = ashr i64 %10, 2
  %conv17 = trunc i64 %shr16 to i32
  store i32 %conv17, i32* %element_format, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  %11 = load i64, i64* %value.addr, align 8
  %and19 = and i64 %11, 7
  %conv20 = trunc i64 %and19 to i32
  %cmp21 = icmp eq i32 %conv20, 3
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.18
  %12 = load i64, i64* %value.addr, align 8
  %call24 = call i32 @x_check_property_data(i64 %12)
  store i32 %call24, i32* %nelements, align 4
  %13 = load i32, i32* %nelements, align 4
  %cmp25 = icmp eq i32 %13, -1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.91, i32 0, i32 0)) #7
  unreachable

if.end.28:                                        ; preds = %if.then.23
  %14 = load i32, i32* %element_format, align 4
  %cmp29 = icmp eq i32 %14, 32
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.end.28
  br label %cond.end.35

cond.false.32:                                    ; preds = %if.end.28
  %15 = load i32, i32* %element_format, align 4
  %shr33 = ashr i32 %15, 3
  %conv34 = sext i32 %shr33 to i64
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.31
  %cond = phi i64 [ 8, %cond.true.31 ], [ %conv34, %cond.false.32 ]
  store i64 %cond, i64* %elsize, align 8
  %16 = load i32, i32* %nelements, align 4
  %conv36 = sext i32 %16 to i64
  %17 = load i64, i64* %elsize, align 8
  %call37 = call noalias i8* @xnmalloc(i64 %conv36, i64 %17)
  store i8* %call37, i8** %data, align 8
  %18 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %19 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %19, i32 0, i32 44
  %20 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %20, i32 0, i32 2
  %21 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %22 = load i64, i64* %value.addr, align 8
  %23 = load i8*, i8** %data, align 8
  %24 = load i32, i32* %element_format, align 4
  call void @x_fill_property_data(%struct._XDisplay* %21, i64 %22, i8* %23, i32 %24)
  br label %if.end.46

if.else:                                          ; preds = %if.end.18
  %25 = load i64, i64* %value.addr, align 8
  call void @CHECK_STRING(i64 %25)
  %26 = load i64, i64* %value.addr, align 8
  %call38 = call i8* @SDATA(i64 %26)
  store i8* %call38, i8** %data, align 8
  %27 = load i64, i64* %value.addr, align 8
  %call39 = call i64 @SBYTES(i64 %27)
  %cmp40 = icmp slt i64 2147483647, %call39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0)) #7
  unreachable

if.end.43:                                        ; preds = %if.else
  %28 = load i64, i64* %value.addr, align 8
  %call44 = call i64 @SBYTES(i64 %28)
  %conv45 = trunc i64 %call44 to i32
  store i32 %conv45, i32* %nelements, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.43, %cond.end.35
  call void @block_input()
  %29 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data47 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x48 = bitcast %union.output_data* %output_data47 to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x48, align 8
  %display_info49 = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 44
  %31 = load %struct.x_display_info*, %struct.x_display_info** %display_info49, align 8
  %display50 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %31, i32 0, i32 2
  %32 = load %struct._XDisplay*, %struct._XDisplay** %display50, align 8
  %33 = load i64, i64* %prop.addr, align 8
  %call51 = call i8* @SSDATA(i64 %33)
  %call52 = call i64 @XInternAtom(%struct._XDisplay* %32, i8* %call51, i32 0)
  store i64 %call52, i64* %prop_atom, align 8
  %34 = load i64, i64* %type.addr, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp54 = icmp eq i64 %34, %call53
  br i1 %cmp54, label %if.end.63, label %if.then.56

if.then.56:                                       ; preds = %if.end.46
  %35 = load i64, i64* %type.addr, align 8
  call void @CHECK_STRING(i64 %35)
  %36 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data57 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 62
  %x58 = bitcast %union.output_data* %output_data57 to %struct.x_output**
  %37 = load %struct.x_output*, %struct.x_output** %x58, align 8
  %display_info59 = getelementptr inbounds %struct.x_output, %struct.x_output* %37, i32 0, i32 44
  %38 = load %struct.x_display_info*, %struct.x_display_info** %display_info59, align 8
  %display60 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %38, i32 0, i32 2
  %39 = load %struct._XDisplay*, %struct._XDisplay** %display60, align 8
  %40 = load i64, i64* %type.addr, align 8
  %call61 = call i8* @SSDATA(i64 %40)
  %call62 = call i64 @XInternAtom(%struct._XDisplay* %39, i8* %call61, i32 0)
  store i64 %call62, i64* %target_type, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.56, %if.end.46
  %41 = load i64, i64* %outer_p.addr, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp65 = icmp eq i64 %41, %call64
  br i1 %cmp65, label %if.else.95, label %if.then.67

if.then.67:                                       ; preds = %if.end.63
  %42 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data68 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 62
  %x69 = bitcast %union.output_data* %output_data68 to %struct.x_output**
  %43 = load %struct.x_output*, %struct.x_output** %x69, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %43, i32 0, i32 12
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %44, null
  br i1 %tobool, label %cond.true.70, label %cond.false.90

cond.true.70:                                     ; preds = %if.then.67
  %45 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data71 = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 62
  %x72 = bitcast %union.output_data* %output_data71 to %struct.x_output**
  %46 = load %struct.x_output*, %struct.x_output** %x72, align 8
  %widget73 = getelementptr inbounds %struct.x_output, %struct.x_output* %46, i32 0, i32 12
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %widget73, align 8
  %tobool74 = icmp ne %struct._GtkWidget* %47, null
  br i1 %tobool74, label %land.lhs.true.75, label %cond.false.87

land.lhs.true.75:                                 ; preds = %cond.true.70
  %48 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data76 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 62
  %x77 = bitcast %union.output_data* %output_data76 to %struct.x_output**
  %49 = load %struct.x_output*, %struct.x_output** %x77, align 8
  %widget78 = getelementptr inbounds %struct.x_output, %struct.x_output* %49, i32 0, i32 12
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget78, align 8
  %call79 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %50)
  %tobool80 = icmp ne %struct._GdkDrawable* %call79, null
  br i1 %tobool80, label %cond.true.81, label %cond.false.87

cond.true.81:                                     ; preds = %land.lhs.true.75
  %51 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data82 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 62
  %x83 = bitcast %union.output_data* %output_data82 to %struct.x_output**
  %52 = load %struct.x_output*, %struct.x_output** %x83, align 8
  %widget84 = getelementptr inbounds %struct.x_output, %struct.x_output* %52, i32 0, i32 12
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %widget84, align 8
  %call85 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %53)
  %call86 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call85)
  br label %cond.end.88

cond.false.87:                                    ; preds = %land.lhs.true.75, %cond.true.70
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.81
  %cond89 = phi i64 [ %call86, %cond.true.81 ], [ 0, %cond.false.87 ]
  br label %cond.end.93

cond.false.90:                                    ; preds = %if.then.67
  %54 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data91 = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 62
  %x92 = bitcast %union.output_data* %output_data91 to %struct.x_output**
  %55 = load %struct.x_output*, %struct.x_output** %x92, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %55, i32 0, i32 9
  %56 = load i64, i64* %window_desc, align 8
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.90, %cond.end.88
  %cond94 = phi i64 [ %cond89, %cond.end.88 ], [ %56, %cond.false.90 ]
  store i64 %cond94, i64* %w, align 8
  br label %if.end.99

if.else.95:                                       ; preds = %if.end.63
  %57 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data96 = getelementptr inbounds %struct.frame, %struct.frame* %57, i32 0, i32 62
  %x97 = bitcast %union.output_data* %output_data96 to %struct.x_output**
  %58 = load %struct.x_output*, %struct.x_output** %x97, align 8
  %window_desc98 = getelementptr inbounds %struct.x_output, %struct.x_output* %58, i32 0, i32 9
  %59 = load i64, i64* %window_desc98, align 8
  store i64 %59, i64* %w, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.95, %cond.end.93
  %60 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data100 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 62
  %x101 = bitcast %union.output_data* %output_data100 to %struct.x_output**
  %61 = load %struct.x_output*, %struct.x_output** %x101, align 8
  %display_info102 = getelementptr inbounds %struct.x_output, %struct.x_output* %61, i32 0, i32 44
  %62 = load %struct.x_display_info*, %struct.x_display_info** %display_info102, align 8
  %display103 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %62, i32 0, i32 2
  %63 = load %struct._XDisplay*, %struct._XDisplay** %display103, align 8
  %64 = load i64, i64* %w, align 8
  %65 = load i64, i64* %prop_atom, align 8
  %66 = load i64, i64* %target_type, align 8
  %67 = load i32, i32* %element_format, align 4
  %68 = load i8*, i8** %data, align 8
  %69 = load i32, i32* %nelements, align 4
  %call104 = call i32 @XChangeProperty(%struct._XDisplay* %63, i64 %64, i64 %65, i64 %66, i32 %67, i32 0, i8* %68, i32 %69)
  %70 = load i64, i64* %value.addr, align 8
  %and105 = and i64 %70, 7
  %conv106 = trunc i64 %and105 to i32
  %cmp107 = icmp eq i32 %conv106, 3
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.99
  %71 = load i8*, i8** %data, align 8
  call void @xfree(i8* %71)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.99
  %72 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data111 = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 62
  %x112 = bitcast %union.output_data* %output_data111 to %struct.x_output**
  %73 = load %struct.x_output*, %struct.x_output** %x112, align 8
  %display_info113 = getelementptr inbounds %struct.x_output, %struct.x_output* %73, i32 0, i32 44
  %74 = load %struct.x_display_info*, %struct.x_display_info** %display_info113, align 8
  %display114 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %74, i32 0, i32 2
  %75 = load %struct._XDisplay*, %struct._XDisplay** %display114, align 8
  %call115 = call i32 @XFlush(%struct._XDisplay* %75)
  call void @unblock_input()
  %76 = load i64, i64* %value.addr, align 8
  ret i64 %76
}

declare i32 @x_check_property_data(i64) #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @x_fill_property_data(%struct._XDisplay*, i64, i8*, i32) #1

declare i64 @XInternAtom(%struct._XDisplay*, i8*, i32) #1

declare void @xfree(i8*) #1

declare i32 @XFlush(%struct._XDisplay*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_delete_window_property(i64 %prop, i64 %frame) #0 {
entry:
  %prop.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %prop_atom = alloca i64, align 8
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load i64, i64* %prop.addr, align 8
  call void @CHECK_STRING(i64 %1)
  call void @block_input()
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %3 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %3, i32 0, i32 44
  %4 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 2
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %6 = load i64, i64* %prop.addr, align 8
  %call1 = call i8* @SSDATA(i64 %6)
  %call2 = call i64 @XInternAtom(%struct._XDisplay* %5, i8* %call1, i32 0)
  store i64 %call2, i64* %prop_atom, align 8
  %7 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data3 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data3 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %display_info5 = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 44
  %9 = load %struct.x_display_info*, %struct.x_display_info** %display_info5, align 8
  %display6 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display6, align 8
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %12 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %12, i32 0, i32 9
  %13 = load i64, i64* %window_desc, align 8
  %14 = load i64, i64* %prop_atom, align 8
  %call9 = call i32 @XDeleteProperty(%struct._XDisplay* %10, i64 %13, i64 %14)
  %15 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data10 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 62
  %x11 = bitcast %union.output_data* %output_data10 to %struct.x_output**
  %16 = load %struct.x_output*, %struct.x_output** %x11, align 8
  %display_info12 = getelementptr inbounds %struct.x_output, %struct.x_output* %16, i32 0, i32 44
  %17 = load %struct.x_display_info*, %struct.x_display_info** %display_info12, align 8
  %display13 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %17, i32 0, i32 2
  %18 = load %struct._XDisplay*, %struct._XDisplay** %display13, align 8
  %call14 = call i32 @XFlush(%struct._XDisplay* %18)
  call void @unblock_input()
  %19 = load i64, i64* %prop.addr, align 8
  ret i64 %19
}

declare i32 @XDeleteProperty(%struct._XDisplay*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_window_property(i64 %prop, i64 %frame, i64 %type, i64 %source, i64 %delete_p, i64 %vector_ret_p) #0 {
entry:
  %prop.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %source.addr = alloca i64, align 8
  %delete_p.addr = alloca i64, align 8
  %vector_ret_p.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %prop_atom = alloca i64, align 8
  %prop_value = alloca i64, align 8
  %target_type = alloca i64, align 8
  %target_window = alloca i64, align 8
  %found = alloca i8, align 1
  store i64 %prop, i64* %prop.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i64 %source, i64* %source.addr, align 8
  store i64 %delete_p, i64* %delete_p.addr, align 8
  store i64 %vector_ret_p, i64* %vector_ret_p.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %prop_value, align 8
  store i64 31, i64* %target_type, align 8
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %2 = load %struct.x_output*, %struct.x_output** %x, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %2, i32 0, i32 9
  %3 = load i64, i64* %window_desc, align 8
  store i64 %3, i64* %target_window, align 8
  %4 = load i64, i64* %prop.addr, align 8
  call void @CHECK_STRING(i64 %4)
  %5 = load i64, i64* %source.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call2
  br i1 %cmp, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %source.addr, align 8
  %call3 = call i64 @cons_to_unsigned(i64 %6, i64 -1)
  store i64 %call3, i64* %target_window, align 8
  %7 = load i64, i64* %target_window, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data5 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x6 = bitcast %union.output_data* %output_data5 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x6, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 14
  %11 = load i64, i64* %root_window, align 8
  store i64 %11, i64* %target_window, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  call void @block_input()
  %12 = load i64, i64* %type.addr, align 8
  %call8 = call zeroext i1 @STRINGP(i64 %12)
  br i1 %call8, label %if.then.9, label %if.end.20

if.then.9:                                        ; preds = %if.end.7
  %13 = load i64, i64* %type.addr, align 8
  %call10 = call i8* @SSDATA(i64 %13)
  %call11 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i32 0, i32 0), i8* %call10) #9
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  store i64 0, i64* %target_type, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.then.9
  %14 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data14 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 62
  %x15 = bitcast %union.output_data* %output_data14 to %struct.x_output**
  %15 = load %struct.x_output*, %struct.x_output** %x15, align 8
  %display_info16 = getelementptr inbounds %struct.x_output, %struct.x_output* %15, i32 0, i32 44
  %16 = load %struct.x_display_info*, %struct.x_display_info** %display_info16, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %16, i32 0, i32 2
  %17 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %18 = load i64, i64* %type.addr, align 8
  %call17 = call i8* @SSDATA(i64 %18)
  %call18 = call i64 @XInternAtom(%struct._XDisplay* %17, i8* %call17, i32 0)
  store i64 %call18, i64* %target_type, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.7
  %19 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data21 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 62
  %x22 = bitcast %union.output_data* %output_data21 to %struct.x_output**
  %20 = load %struct.x_output*, %struct.x_output** %x22, align 8
  %display_info23 = getelementptr inbounds %struct.x_output, %struct.x_output* %20, i32 0, i32 44
  %21 = load %struct.x_display_info*, %struct.x_display_info** %display_info23, align 8
  %display24 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %21, i32 0, i32 2
  %22 = load %struct._XDisplay*, %struct._XDisplay** %display24, align 8
  %23 = load i64, i64* %prop.addr, align 8
  %call25 = call i8* @SSDATA(i64 %23)
  %call26 = call i64 @XInternAtom(%struct._XDisplay* %22, i8* %call25, i32 0)
  store i64 %call26, i64* %prop_atom, align 8
  %24 = load %struct.frame*, %struct.frame** %f, align 8
  %25 = load i64, i64* %target_window, align 8
  %26 = load i64, i64* %prop_atom, align 8
  %27 = load i64, i64* %target_type, align 8
  %28 = load i64, i64* %delete_p.addr, align 8
  %29 = load i64, i64* %vector_ret_p.addr, align 8
  %call27 = call i64 @x_window_property_intern(%struct.frame* %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i8* %found)
  store i64 %call27, i64* %prop_value, align 8
  %30 = load i64, i64* %prop_value, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %30, %call28
  br i1 %cmp29, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %if.end.20
  %31 = load i8, i8* %found, align 1
  %tobool30 = trunc i8 %31 to i1
  br i1 %tobool30, label %if.end.93, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %32 = load i64, i64* %source.addr, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp33 = icmp eq i64 %32, %call32
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.93

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %33 = load i64, i64* %target_window, align 8
  %34 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data35 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 62
  %x36 = bitcast %union.output_data* %output_data35 to %struct.x_output**
  %35 = load %struct.x_output*, %struct.x_output** %x36, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %35, i32 0, i32 12
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool37 = icmp ne %struct._GtkWidget* %36, null
  br i1 %tobool37, label %cond.true, label %cond.false.54

cond.true:                                        ; preds = %land.lhs.true.34
  %37 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data38 = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 62
  %x39 = bitcast %union.output_data* %output_data38 to %struct.x_output**
  %38 = load %struct.x_output*, %struct.x_output** %x39, align 8
  %widget40 = getelementptr inbounds %struct.x_output, %struct.x_output* %38, i32 0, i32 12
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %widget40, align 8
  %tobool41 = icmp ne %struct._GtkWidget* %39, null
  br i1 %tobool41, label %land.lhs.true.42, label %cond.false

land.lhs.true.42:                                 ; preds = %cond.true
  %40 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data43 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 62
  %x44 = bitcast %union.output_data* %output_data43 to %struct.x_output**
  %41 = load %struct.x_output*, %struct.x_output** %x44, align 8
  %widget45 = getelementptr inbounds %struct.x_output, %struct.x_output* %41, i32 0, i32 12
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget45, align 8
  %call46 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %42)
  %tobool47 = icmp ne %struct._GdkDrawable* %call46, null
  br i1 %tobool47, label %cond.true.48, label %cond.false

cond.true.48:                                     ; preds = %land.lhs.true.42
  %43 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data49 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 62
  %x50 = bitcast %union.output_data* %output_data49 to %struct.x_output**
  %44 = load %struct.x_output*, %struct.x_output** %x50, align 8
  %widget51 = getelementptr inbounds %struct.x_output, %struct.x_output* %44, i32 0, i32 12
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %widget51, align 8
  %call52 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %45)
  %call53 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call52)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.42, %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.48
  %cond = phi i64 [ %call53, %cond.true.48 ], [ 0, %cond.false ]
  br label %cond.end.58

cond.false.54:                                    ; preds = %land.lhs.true.34
  %46 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data55 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 62
  %x56 = bitcast %union.output_data* %output_data55 to %struct.x_output**
  %47 = load %struct.x_output*, %struct.x_output** %x56, align 8
  %window_desc57 = getelementptr inbounds %struct.x_output, %struct.x_output* %47, i32 0, i32 9
  %48 = load i64, i64* %window_desc57, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.54, %cond.end
  %cond59 = phi i64 [ %cond, %cond.end ], [ %48, %cond.false.54 ]
  %cmp60 = icmp ne i64 %33, %cond59
  br i1 %cmp60, label %if.then.61, label %if.end.93

if.then.61:                                       ; preds = %cond.end.58
  %49 = load %struct.frame*, %struct.frame** %f, align 8
  %50 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data62 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 62
  %x63 = bitcast %union.output_data* %output_data62 to %struct.x_output**
  %51 = load %struct.x_output*, %struct.x_output** %x63, align 8
  %widget64 = getelementptr inbounds %struct.x_output, %struct.x_output* %51, i32 0, i32 12
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget64, align 8
  %tobool65 = icmp ne %struct._GtkWidget* %52, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.86

cond.true.66:                                     ; preds = %if.then.61
  %53 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data67 = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 62
  %x68 = bitcast %union.output_data* %output_data67 to %struct.x_output**
  %54 = load %struct.x_output*, %struct.x_output** %x68, align 8
  %widget69 = getelementptr inbounds %struct.x_output, %struct.x_output* %54, i32 0, i32 12
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget69, align 8
  %tobool70 = icmp ne %struct._GtkWidget* %55, null
  br i1 %tobool70, label %land.lhs.true.71, label %cond.false.83

land.lhs.true.71:                                 ; preds = %cond.true.66
  %56 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data72 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 62
  %x73 = bitcast %union.output_data* %output_data72 to %struct.x_output**
  %57 = load %struct.x_output*, %struct.x_output** %x73, align 8
  %widget74 = getelementptr inbounds %struct.x_output, %struct.x_output* %57, i32 0, i32 12
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %widget74, align 8
  %call75 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %58)
  %tobool76 = icmp ne %struct._GdkDrawable* %call75, null
  br i1 %tobool76, label %cond.true.77, label %cond.false.83

cond.true.77:                                     ; preds = %land.lhs.true.71
  %59 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data78 = getelementptr inbounds %struct.frame, %struct.frame* %59, i32 0, i32 62
  %x79 = bitcast %union.output_data* %output_data78 to %struct.x_output**
  %60 = load %struct.x_output*, %struct.x_output** %x79, align 8
  %widget80 = getelementptr inbounds %struct.x_output, %struct.x_output* %60, i32 0, i32 12
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %widget80, align 8
  %call81 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %61)
  %call82 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call81)
  br label %cond.end.84

cond.false.83:                                    ; preds = %land.lhs.true.71, %cond.true.66
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.77
  %cond85 = phi i64 [ %call82, %cond.true.77 ], [ 0, %cond.false.83 ]
  br label %cond.end.90

cond.false.86:                                    ; preds = %if.then.61
  %62 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data87 = getelementptr inbounds %struct.frame, %struct.frame* %62, i32 0, i32 62
  %x88 = bitcast %union.output_data* %output_data87 to %struct.x_output**
  %63 = load %struct.x_output*, %struct.x_output** %x88, align 8
  %window_desc89 = getelementptr inbounds %struct.x_output, %struct.x_output* %63, i32 0, i32 9
  %64 = load i64, i64* %window_desc89, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.86, %cond.end.84
  %cond91 = phi i64 [ %cond85, %cond.end.84 ], [ %64, %cond.false.86 ]
  %65 = load i64, i64* %prop_atom, align 8
  %66 = load i64, i64* %target_type, align 8
  %67 = load i64, i64* %delete_p.addr, align 8
  %68 = load i64, i64* %vector_ret_p.addr, align 8
  %call92 = call i64 @x_window_property_intern(%struct.frame* %49, i64 %cond91, i64 %65, i64 %66, i64 %67, i64 %68, i8* %found)
  store i64 %call92, i64* %prop_value, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %cond.end.90, %cond.end.58, %land.lhs.true.31, %land.lhs.true, %if.end.20
  call void @unblock_input()
  %69 = load i64, i64* %prop_value, align 8
  ret i64 %69
}

declare i64 @cons_to_unsigned(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define internal i64 @x_window_property_intern(%struct.frame* %f, i64 %target_window, i64 %prop_atom, i64 %target_type, i64 %delete_p, i64 %vector_ret_p, i8* %found) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %target_window.addr = alloca i64, align 8
  %prop_atom.addr = alloca i64, align 8
  %target_type.addr = alloca i64, align 8
  %delete_p.addr = alloca i64, align 8
  %vector_ret_p.addr = alloca i64, align 8
  %found.addr = alloca i8*, align 8
  %tmp_data = alloca i8*, align 8
  %prop_value = alloca i64, align 8
  %actual_type = alloca i64, align 8
  %actual_format = alloca i32, align 4
  %actual_size = alloca i64, align 8
  %bytes_remaining = alloca i64, align 8
  %rc = alloca i32, align 4
  %i = alloca i64, align 8
  %idata = alloca i32*, align 8
  %ldata = alloca i64*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %target_window, i64* %target_window.addr, align 8
  store i64 %prop_atom, i64* %prop_atom.addr, align 8
  store i64 %target_type, i64* %target_type.addr, align 8
  store i64 %delete_p, i64* %delete_p.addr, align 8
  store i64 %vector_ret_p, i64* %vector_ret_p.addr, align 8
  store i8* %found, i8** %found.addr, align 8
  store i8* null, i8** %tmp_data, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %prop_value, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load i64, i64* %target_window.addr, align 8
  %5 = load i64, i64* %prop_atom.addr, align 8
  %6 = load i64, i64* %target_type.addr, align 8
  %call1 = call i32 @XGetWindowProperty(%struct._XDisplay* %3, i64 %4, i64 %5, i64 0, i64 0, i32 0, i64 %6, i64* %actual_type, i32* %actual_format, i64* %actual_size, i64* %bytes_remaining, i8** %tmp_data)
  store i32 %call1, i32* %rc, align 4
  %7 = load i32, i32* %actual_format, align 4
  %cmp = icmp ne i32 %7, 0
  %8 = load i8*, i8** %found.addr, align 8
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %8, align 1
  %9 = load i32, i32* %rc, align 4
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %entry
  %10 = load i8*, i8** %found.addr, align 8
  %11 = load i8, i8* %10, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %land.lhs.true
  %12 = load i8*, i8** %tmp_data, align 8
  %call3 = call i32 @XFree(i8* %12)
  store i8* null, i8** %tmp_data, align 8
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %display_info6 = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 44
  %15 = load %struct.x_display_info*, %struct.x_display_info** %display_info6, align 8
  %display7 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %15, i32 0, i32 2
  %16 = load %struct._XDisplay*, %struct._XDisplay** %display7, align 8
  %17 = load i64, i64* %target_window.addr, align 8
  %18 = load i64, i64* %prop_atom.addr, align 8
  %19 = load i64, i64* %bytes_remaining, align 8
  %20 = load i64, i64* %delete_p.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %20, %call8
  %lnot = xor i1 %cmp9, true
  %lnot.ext = zext i1 %lnot to i32
  %21 = load i64, i64* %target_type.addr, align 8
  %call10 = call i32 @XGetWindowProperty(%struct._XDisplay* %16, i64 %17, i64 %18, i64 0, i64 %19, i32 %lnot.ext, i64 %21, i64* %actual_type, i32* %actual_format, i64* %actual_size, i64* %bytes_remaining, i8** %tmp_data)
  store i32 %call10, i32* %rc, align 4
  %22 = load i32, i32* %rc, align 4
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.26

land.lhs.true.12:                                 ; preds = %if.then
  %23 = load i8*, i8** %tmp_data, align 8
  %tobool13 = icmp ne i8* %23, null
  br i1 %tobool13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %land.lhs.true.12
  %24 = load i32, i32* %actual_format, align 4
  %cmp15 = icmp eq i32 %24, 32
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.14
  %25 = load i8*, i8** %tmp_data, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %idata, align 8
  %27 = load i8*, i8** %tmp_data, align 8
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %ldata, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %actual_size, align 8
  %cmp17 = icmp ult i64 %29, %30
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, i64* %i, align 8
  %32 = load i64*, i64** %ldata, align 8
  %arrayidx = getelementptr inbounds i64, i64* %32, i64 %31
  %33 = load i64, i64* %arrayidx, align 8
  %conv = trunc i64 %33 to i32
  %34 = load i64, i64* %i, align 8
  %35 = load i32*, i32** %idata, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %35, i64 %34
  store i32 %conv, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i64, i64* %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.14
  %37 = load i64, i64* %vector_ret_p.addr, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %37, %call19
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end
  %38 = load i8*, i8** %tmp_data, align 8
  %39 = load i64, i64* %actual_size, align 8
  %call23 = call i64 @make_string(i8* %38, i64 %39)
  store i64 %call23, i64* %prop_value, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %40 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %41 = load i8*, i8** %tmp_data, align 8
  %42 = load i64, i64* %actual_type, align 8
  %43 = load i32, i32* %actual_format, align 4
  %44 = load i64, i64* %actual_size, align 8
  %call24 = call i64 @x_property_data_to_lisp(%struct.frame* %40, i8* %41, i64 %42, i32 %43, i64 %44)
  store i64 %call24, i64* %prop_value, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true.12, %if.then
  %45 = load i8*, i8** %tmp_data, align 8
  %tobool27 = icmp ne i8* %45, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %46 = load i8*, i8** %tmp_data, align 8
  %call29 = call i32 @XFree(i8* %46)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %entry
  %47 = load i64, i64* %prop_value, align 8
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @Fx_show_tip(i64 %string, i64 %frame, i64 %parms, i64 %timeout, i64 %dx, i64 %dy) #0 {
entry:
  %string.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %parms.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %dx.addr = alloca i64, align 8
  %dy.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %w = alloca %struct.window*, align 8
  %root_x = alloca i32, align 4
  %root_y = alloca i32, align 4
  %old_buffer = alloca %struct.buffer*, align 8
  %pos = alloca %struct.text_pos, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %seen_reversed_p = alloca i8, align 1
  %old_windows_or_buffers_changed = alloca i32, align 4
  %count = alloca i64, align 8
  %ok = alloca i8, align 1
  %last_string = alloca i64, align 8
  %last_frame = alloca i64, align 8
  %last_parms = alloca i64, align 8
  %tip_f = alloca %struct.frame*, align 8
  %timer = alloca i64, align 8
  %row = alloca %struct.glyph_row*, align 8
  %last = alloca %struct.glyph*, align 8
  %row_width = alloca i32, align 4
  %g = alloca %struct.glyph*, align 8
  %row300 = alloca %struct.glyph_row*, align 8
  %last305 = alloca %struct.glyph*, align 8
  %row_width306 = alloca i32, align 4
  store i64 %string, i64* %string.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %parms, i64* %parms.addr, align 8
  store i64 %timeout, i64* %timeout.addr, align 8
  store i64 %dx, i64* %dx.addr, align 8
  store i64 %dy, i64* %dy.addr, align 8
  %0 = load i32, i32* @windows_or_buffers_changed, align 4
  store i32 %0, i32* %old_windows_or_buffers_changed, align 4
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 548)
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call1, i64 %call2)
  %1 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %string.addr, align 8
  %call3 = call i64 @SCHARS(i64 %2)
  %cmp = icmp eq i64 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i64 @make_unibyte_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i64 1)
  store i64 %call4, i64* %string.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %frame.addr, align 8
  %call5 = call %struct.frame* @decode_window_system_frame(i64 %3)
  store %struct.frame* %call5, %struct.frame** %f, align 8
  %4 = load i64, i64* %timeout.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %4, %call6
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  store i64 22, i64* %timeout.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* %timeout.addr, align 8
  call void @CHECK_NATNUM(i64 %5)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %6 = load i64, i64* %dx.addr, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %6, %call10
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.9
  store i64 22, i64* %dx.addr, align 8
  br label %if.end.18

if.else.13:                                       ; preds = %if.end.9
  %7 = load i64, i64* %dx.addr, align 8
  %and = and i64 %7, 7
  %conv = trunc i64 %and to i32
  %and14 = and i32 %conv, -5
  %cmp15 = icmp eq i32 %and14, 2
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.13
  br label %cond.end

cond.false:                                       ; preds = %if.else.13
  %call17 = call i64 @builtin_lisp_symbol(i32 559)
  %8 = load i64, i64* %dx.addr, align 8
  %9 = call i64 @wrong_type_argument(i64 %call17, i64 %8) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  br label %if.end.18

if.end.18:                                        ; preds = %cond.end, %if.then.12
  %11 = load i64, i64* %dy.addr, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %11, %call19
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.end.18
  store i64 -38, i64* %dy.addr, align 8
  br label %if.end.33

if.else.23:                                       ; preds = %if.end.18
  %12 = load i64, i64* %dy.addr, align 8
  %and24 = and i64 %12, 7
  %conv25 = trunc i64 %and24 to i32
  %and26 = and i32 %conv25, -5
  %cmp27 = icmp eq i32 %and26, 2
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %if.else.23
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.else.23
  %call31 = call i64 @builtin_lisp_symbol(i32 559)
  %13 = load i64, i64* %dy.addr, align 8
  %14 = call i64 @wrong_type_argument(i64 %call31, i64 %13) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.32

cond.end.32:                                      ; preds = %15, %cond.true.29
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.32, %if.then.22
  %16 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 505), align 1
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.then.34, label %if.end.44

if.then.34:                                       ; preds = %if.end.33
  %call35 = call i64 @Fx_hide_tip()
  call void @block_input()
  %17 = load %struct.frame*, %struct.frame** %f, align 8
  %18 = load i64, i64* %string.addr, align 8
  %call36 = call zeroext i1 @xg_prepare_tooltip(%struct.frame* %17, i64 %18, i32* %width, i32* %height)
  %frombool = zext i1 %call36 to i8
  store i8 %frombool, i8* %ok, align 1
  %19 = load i8, i8* %ok, align 1
  %tobool37 = trunc i8 %19 to i1
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.34
  %20 = load %struct.frame*, %struct.frame** %f, align 8
  %21 = load i64, i64* %parms.addr, align 8
  %22 = load i64, i64* %dx.addr, align 8
  %23 = load i64, i64* %dy.addr, align 8
  %24 = load i32, i32* %width, align 4
  %25 = load i32, i32* %height, align 4
  call void @compute_tip_xy(%struct.frame* %20, i64 %21, i64 %22, i64 %23, i32 %24, i32 %25, i32* %root_x, i32* %root_y)
  %26 = load %struct.frame*, %struct.frame** %f, align 8
  %27 = load i32, i32* %root_x, align 4
  %28 = load i32, i32* %root_y, align 4
  call void @xg_show_tooltip(%struct.frame* %26, i32 %27, i32 %28)
  %29 = load %struct.frame*, %struct.frame** %f, align 8
  %30 = bitcast %struct.frame* %29 to i8*
  %call39 = call i64 @make_lisp_ptr(i8* %30, i32 5)
  store i64 %call39, i64* @tip_frame, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.34
  call void @unblock_input()
  %31 = load i8, i8* %ok, align 1
  %tobool41 = trunc i8 %31 to i1
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  br label %start_timer

if.end.43:                                        ; preds = %if.end.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.33
  %32 = load i64, i64* @last_show_tip_args, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %32, %call45
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.44
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %call50 = call i64 @Fmake_vector(i64 14, i64 %call49)
  store i64 %call50, i64* @last_show_tip_args, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.44
  %33 = load i64, i64* @tip_frame, align 8
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp53 = icmp eq i64 %33, %call52
  br i1 %cmp53, label %if.end.83, label %if.then.55

if.then.55:                                       ; preds = %if.end.51
  %34 = load i64, i64* @last_show_tip_args, align 8
  %call56 = call i64 @AREF(i64 %34, i64 0)
  store i64 %call56, i64* %last_string, align 8
  %35 = load i64, i64* @last_show_tip_args, align 8
  %call57 = call i64 @AREF(i64 %35, i64 1)
  store i64 %call57, i64* %last_frame, align 8
  %36 = load i64, i64* @last_show_tip_args, align 8
  %call58 = call i64 @AREF(i64 %36, i64 2)
  store i64 %call58, i64* %last_parms, align 8
  %37 = load i64, i64* %frame.addr, align 8
  %38 = load i64, i64* %last_frame, align 8
  %cmp59 = icmp eq i64 %37, %38
  br i1 %cmp59, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %if.then.55
  %39 = load i64, i64* %last_string, align 8
  %40 = load i64, i64* %string.addr, align 8
  %call61 = call i64 @Fequal(i64 %39, i64 %40)
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %call61, %call62
  br i1 %cmp63, label %if.end.82, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %land.lhs.true
  %41 = load i64, i64* %last_parms, align 8
  %42 = load i64, i64* %parms.addr, align 8
  %call66 = call i64 @Fequal(i64 %41, i64 %42)
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %call66, %call67
  br i1 %cmp68, label %if.end.82, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.65
  %43 = load i64, i64* @tip_frame, align 8
  %sub = sub nsw i64 %43, 5
  %44 = inttoptr i64 %sub to i8*
  %45 = bitcast i8* %44 to %struct.frame*
  store %struct.frame* %45, %struct.frame** %tip_f, align 8
  %46 = load i64, i64* @tip_timer, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %46, %call71
  br i1 %cmp72, label %if.end.78, label %if.then.74

if.then.74:                                       ; preds = %if.then.70
  %47 = load i64, i64* @tip_timer, align 8
  store i64 %47, i64* %timer, align 8
  %call75 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call75, i64* @tip_timer, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 236)
  %48 = load i64, i64* %timer, align 8
  %call77 = call i64 @call1(i64 %call76, i64 %48)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.then.70
  call void @block_input()
  %49 = load %struct.frame*, %struct.frame** %tip_f, align 8
  %50 = load i64, i64* %parms.addr, align 8
  %51 = load i64, i64* %dx.addr, align 8
  %52 = load i64, i64* %dy.addr, align 8
  %53 = load %struct.frame*, %struct.frame** %tip_f, align 8
  %pixel_width = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 46
  %54 = load i32, i32* %pixel_width, align 4
  %55 = load %struct.frame*, %struct.frame** %tip_f, align 8
  %pixel_height = getelementptr inbounds %struct.frame, %struct.frame* %55, i32 0, i32 47
  %56 = load i32, i32* %pixel_height, align 4
  call void @compute_tip_xy(%struct.frame* %49, i64 %50, i64 %51, i64 %52, i32 %54, i32 %56, i32* %root_x, i32* %root_y)
  %57 = load %struct.frame*, %struct.frame** %tip_f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %57, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %58 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %58, i32 0, i32 44
  %59 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %59, i32 0, i32 2
  %60 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %61 = load %struct.frame*, %struct.frame** %tip_f, align 8
  %output_data79 = getelementptr inbounds %struct.frame, %struct.frame* %61, i32 0, i32 62
  %x80 = bitcast %union.output_data* %output_data79 to %struct.x_output**
  %62 = load %struct.x_output*, %struct.x_output** %x80, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %62, i32 0, i32 9
  %63 = load i64, i64* %window_desc, align 8
  %64 = load i32, i32* %root_x, align 4
  %65 = load i32, i32* %root_y, align 4
  %call81 = call i32 @XMoveWindow(%struct._XDisplay* %60, i64 %63, i32 %64, i32 %65)
  call void @unblock_input()
  br label %start_timer

if.end.82:                                        ; preds = %land.lhs.true.65, %land.lhs.true, %if.then.55
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.51
  %call84 = call i64 @Fx_hide_tip()
  %66 = load i64, i64* @last_show_tip_args, align 8
  %67 = load i64, i64* %string.addr, align 8
  call void @ASET(i64 %66, i64 0, i64 %67)
  %68 = load i64, i64* @last_show_tip_args, align 8
  %69 = load i64, i64* %frame.addr, align 8
  call void @ASET(i64 %68, i64 1, i64 %69)
  %70 = load i64, i64* @last_show_tip_args, align 8
  %71 = load i64, i64* %parms.addr, align 8
  call void @ASET(i64 %70, i64 2, i64 %71)
  %call85 = call i64 @builtin_lisp_symbol(i32 696)
  %72 = load i64, i64* %parms.addr, align 8
  %call86 = call i64 @Fassq(i64 %call85, i64 %72)
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %call86, %call87
  br i1 %cmp88, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %if.end.83
  %call91 = call i64 @builtin_lisp_symbol(i32 696)
  %call92 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0))
  %call93 = call i64 @Fcons(i64 %call91, i64 %call92)
  %73 = load i64, i64* %parms.addr, align 8
  %call94 = call i64 @Fcons(i64 %call93, i64 %73)
  store i64 %call94, i64* %parms.addr, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.90, %if.end.83
  %call96 = call i64 @builtin_lisp_symbol(i32 563)
  %74 = load i64, i64* %parms.addr, align 8
  %call97 = call i64 @Fassq(i64 %call96, i64 %74)
  %call98 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp99 = icmp eq i64 %call97, %call98
  br i1 %cmp99, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %if.end.95
  %call102 = call i64 @builtin_lisp_symbol(i32 563)
  %call103 = call i64 @Fcons(i64 %call102, i64 14)
  %75 = load i64, i64* %parms.addr, align 8
  %call104 = call i64 @Fcons(i64 %call103, i64 %75)
  store i64 %call104, i64* %parms.addr, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %if.end.95
  %call106 = call i64 @builtin_lisp_symbol(i32 210)
  %76 = load i64, i64* %parms.addr, align 8
  %call107 = call i64 @Fassq(i64 %call106, i64 %76)
  %call108 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp109 = icmp eq i64 %call107, %call108
  br i1 %cmp109, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %if.end.105
  %call112 = call i64 @builtin_lisp_symbol(i32 210)
  %call113 = call i64 @Fcons(i64 %call112, i64 6)
  %77 = load i64, i64* %parms.addr, align 8
  %call114 = call i64 @Fcons(i64 %call113, i64 %77)
  store i64 %call114, i64* %parms.addr, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %if.end.105
  %call116 = call i64 @builtin_lisp_symbol(i32 215)
  %78 = load i64, i64* %parms.addr, align 8
  %call117 = call i64 @Fassq(i64 %call116, i64 %78)
  %call118 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp119 = icmp eq i64 %call117, %call118
  br i1 %cmp119, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %if.end.115
  %call122 = call i64 @builtin_lisp_symbol(i32 215)
  %call123 = call i64 @Fcons(i64 %call122, i64 2)
  %79 = load i64, i64* %parms.addr, align 8
  %call124 = call i64 @Fcons(i64 %call123, i64 %79)
  store i64 %call124, i64* %parms.addr, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %if.end.115
  %call126 = call i64 @builtin_lisp_symbol(i32 813)
  %80 = load i64, i64* %parms.addr, align 8
  %call127 = call i64 @Fassq(i64 %call126, i64 %80)
  %call128 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp129 = icmp eq i64 %call127, %call128
  br i1 %cmp129, label %if.then.131, label %if.end.135

if.then.131:                                      ; preds = %if.end.125
  %call132 = call i64 @builtin_lisp_symbol(i32 813)
  %call133 = call i64 @Fcons(i64 %call132, i64 2)
  %81 = load i64, i64* %parms.addr, align 8
  %call134 = call i64 @Fcons(i64 %call133, i64 %81)
  store i64 %call134, i64* %parms.addr, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.131, %if.end.125
  %call136 = call i64 @builtin_lisp_symbol(i32 209)
  %82 = load i64, i64* %parms.addr, align 8
  %call137 = call i64 @Fassq(i64 %call136, i64 %82)
  %call138 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp139 = icmp eq i64 %call137, %call138
  br i1 %cmp139, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %if.end.135
  %call142 = call i64 @builtin_lisp_symbol(i32 209)
  %call143 = call i64 @build_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0))
  %call144 = call i64 @Fcons(i64 %call142, i64 %call143)
  %83 = load i64, i64* %parms.addr, align 8
  %call145 = call i64 @Fcons(i64 %call144, i64 %83)
  store i64 %call145, i64* %parms.addr, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.141, %if.end.135
  %call147 = call i64 @builtin_lisp_symbol(i32 193)
  %84 = load i64, i64* %parms.addr, align 8
  %call148 = call i64 @Fassq(i64 %call147, i64 %84)
  %call149 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp150 = icmp eq i64 %call148, %call149
  br i1 %cmp150, label %if.then.152, label %if.end.157

if.then.152:                                      ; preds = %if.end.146
  %call153 = call i64 @builtin_lisp_symbol(i32 193)
  %call154 = call i64 @build_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0))
  %call155 = call i64 @Fcons(i64 %call153, i64 %call154)
  %85 = load i64, i64* %parms.addr, align 8
  %call156 = call i64 @Fcons(i64 %call155, i64 %85)
  store i64 %call156, i64* %parms.addr, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.152, %if.end.146
  %86 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data158 = getelementptr inbounds %struct.frame, %struct.frame* %86, i32 0, i32 62
  %x159 = bitcast %union.output_data* %output_data158 to %struct.x_output**
  %87 = load %struct.x_output*, %struct.x_output** %x159, align 8
  %display_info160 = getelementptr inbounds %struct.x_output, %struct.x_output* %87, i32 0, i32 44
  %88 = load %struct.x_display_info*, %struct.x_display_info** %display_info160, align 8
  %89 = load i64, i64* %parms.addr, align 8
  %90 = load i64, i64* %string.addr, align 8
  %call161 = call i64 @x_create_tip_frame(%struct.x_display_info* %88, i64 %89, i64 %90)
  store i64 %call161, i64* %frame.addr, align 8
  %91 = load i64, i64* %frame.addr, align 8
  %sub162 = sub nsw i64 %91, 5
  %92 = inttoptr i64 %sub162 to i8*
  %93 = bitcast i8* %92 to %struct.frame*
  store %struct.frame* %93, %struct.frame** %f, align 8
  %94 = load %struct.frame*, %struct.frame** %f, align 8
  %root_window = getelementptr inbounds %struct.frame, %struct.frame* %94, i32 0, i32 5
  %95 = load i64, i64* %root_window, align 8
  %call163 = call %struct.window* @XWINDOW(i64 %95)
  store %struct.window* %call163, %struct.window** %w, align 8
  %96 = load %struct.window*, %struct.window** %w, align 8
  %left_col = getelementptr inbounds %struct.window, %struct.window* %96, i32 0, i32 32
  store i32 0, i32* %left_col, align 4
  %97 = load %struct.window*, %struct.window** %w, align 8
  %top_line = getelementptr inbounds %struct.window, %struct.window* %97, i32 0, i32 33
  store i32 0, i32* %top_line, align 4
  %98 = load %struct.window*, %struct.window** %w, align 8
  %pixel_left = getelementptr inbounds %struct.window, %struct.window* %98, i32 0, i32 30
  store i32 0, i32* %pixel_left, align 4
  %99 = load %struct.window*, %struct.window** %w, align 8
  %pixel_top = getelementptr inbounds %struct.window, %struct.window* %99, i32 0, i32 31
  store i32 0, i32* %pixel_top, align 4
  %100 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 349), align 8
  %and164 = and i64 %100, 7
  %conv165 = trunc i64 %and164 to i32
  %cmp166 = icmp eq i32 %conv165, 3
  br i1 %cmp166, label %land.lhs.true.168, label %if.else.185

land.lhs.true.168:                                ; preds = %if.end.157
  %101 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 349), align 8
  %sub169 = sub nsw i64 %101, 3
  %102 = inttoptr i64 %sub169 to i8*
  %103 = bitcast i8* %102 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %103, i32 0, i32 0
  %104 = load i64, i64* %car, align 8
  %call170 = call zeroext i1 @RANGED_INTEGERP(i64 1, i64 %104, i64 2147483647)
  br i1 %call170, label %land.lhs.true.172, label %if.else.185

land.lhs.true.172:                                ; preds = %land.lhs.true.168
  %105 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 349), align 8
  %sub173 = sub nsw i64 %105, 3
  %106 = inttoptr i64 %sub173 to i8*
  %107 = bitcast i8* %106 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %107, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %108 = load i64, i64* %cdr, align 8
  %call174 = call zeroext i1 @RANGED_INTEGERP(i64 1, i64 %108, i64 2147483647)
  br i1 %call174, label %if.then.176, label %if.else.185

if.then.176:                                      ; preds = %land.lhs.true.172
  %109 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 349), align 8
  %sub177 = sub nsw i64 %109, 3
  %110 = inttoptr i64 %sub177 to i8*
  %111 = bitcast i8* %110 to %struct.Lisp_Cons*
  %car178 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %111, i32 0, i32 0
  %112 = load i64, i64* %car178, align 8
  %shr = ashr i64 %112, 2
  %conv179 = trunc i64 %shr to i32
  %113 = load %struct.window*, %struct.window** %w, align 8
  %total_cols = getelementptr inbounds %struct.window, %struct.window* %113, i32 0, i32 36
  store i32 %conv179, i32* %total_cols, align 4
  %114 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 349), align 8
  %sub180 = sub nsw i64 %114, 3
  %115 = inttoptr i64 %sub180 to i8*
  %116 = bitcast i8* %115 to %struct.Lisp_Cons*
  %u181 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %116, i32 0, i32 1
  %cdr182 = bitcast %union.anon.12* %u181 to i64*
  %117 = load i64, i64* %cdr182, align 8
  %shr183 = ashr i64 %117, 2
  %conv184 = trunc i64 %shr183 to i32
  %118 = load %struct.window*, %struct.window** %w, align 8
  %total_lines = getelementptr inbounds %struct.window, %struct.window* %118, i32 0, i32 37
  store i32 %conv184, i32* %total_lines, align 4
  br label %if.end.188

if.else.185:                                      ; preds = %land.lhs.true.172, %land.lhs.true.168, %if.end.157
  %119 = load %struct.window*, %struct.window** %w, align 8
  %total_cols186 = getelementptr inbounds %struct.window, %struct.window* %119, i32 0, i32 36
  store i32 80, i32* %total_cols186, align 4
  %120 = load %struct.window*, %struct.window** %w, align 8
  %total_lines187 = getelementptr inbounds %struct.window, %struct.window* %120, i32 0, i32 37
  store i32 40, i32* %total_lines187, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.176
  %121 = load %struct.window*, %struct.window** %w, align 8
  %total_cols189 = getelementptr inbounds %struct.window, %struct.window* %121, i32 0, i32 36
  %122 = load i32, i32* %total_cols189, align 4
  %123 = load %struct.frame*, %struct.frame** %f, align 8
  %column_width = getelementptr inbounds %struct.frame, %struct.frame* %123, i32 0, i32 59
  %124 = load i32, i32* %column_width, align 4
  %mul = mul nsw i32 %122, %124
  %125 = load %struct.window*, %struct.window** %w, align 8
  %pixel_width190 = getelementptr inbounds %struct.window, %struct.window* %125, i32 0, i32 34
  store i32 %mul, i32* %pixel_width190, align 4
  %126 = load %struct.window*, %struct.window** %w, align 8
  %total_lines191 = getelementptr inbounds %struct.window, %struct.window* %126, i32 0, i32 37
  %127 = load i32, i32* %total_lines191, align 4
  %128 = load %struct.frame*, %struct.frame** %f, align 8
  %line_height = getelementptr inbounds %struct.frame, %struct.frame* %128, i32 0, i32 60
  %129 = load i32, i32* %line_height, align 4
  %mul192 = mul nsw i32 %127, %129
  %130 = load %struct.window*, %struct.window** %w, align 8
  %pixel_height193 = getelementptr inbounds %struct.window, %struct.window* %130, i32 0, i32 35
  store i32 %mul192, i32* %pixel_height193, align 4
  %131 = load %struct.window*, %struct.window** %w, align 8
  %total_cols194 = getelementptr inbounds %struct.window, %struct.window* %131, i32 0, i32 36
  %132 = load i32, i32* %total_cols194, align 4
  %133 = load %struct.frame*, %struct.frame** %f, align 8
  %total_cols195 = getelementptr inbounds %struct.frame, %struct.frame* %133, i32 0, i32 38
  store i32 %132, i32* %total_cols195, align 4
  %134 = load %struct.frame*, %struct.frame** %f, align 8
  call void @adjust_frame_glyphs(%struct.frame* %134)
  %135 = load %struct.window*, %struct.window** %w, align 8
  %pseudo_window_p = getelementptr inbounds %struct.window, %struct.window* %135, i32 0, i32 67
  %bf.load = load i16, i16* %pseudo_window_p, align 4
  %bf.clear = and i16 %bf.load, -2049
  %bf.set = or i16 %bf.clear, 2048
  store i16 %bf.set, i16* %pseudo_window_p, align 4
  %136 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %136, %struct.buffer** %old_buffer, align 8
  %137 = load %struct.frame*, %struct.frame** %f, align 8
  %root_window196 = getelementptr inbounds %struct.frame, %struct.frame* %137, i32 0, i32 5
  %138 = load i64, i64* %root_window196, align 8
  %call197 = call %struct.window* @XWINDOW(i64 %138)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call197, i32 0, i32 10
  %139 = load i64, i64* %contents, align 8
  %call198 = call %struct.buffer* @XBUFFER(i64 %139)
  call void @set_buffer_internal_1(%struct.buffer* %call198)
  %140 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call199 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_truncate_lines(%struct.buffer* %140, i64 %call199)
  %141 = load %struct.window*, %struct.window** %w, align 8
  %desired_matrix = getelementptr inbounds %struct.window, %struct.window* %141, i32 0, i32 25
  %142 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix, align 8
  call void @clear_glyph_matrix(%struct.glyph_matrix* %142)
  %143 = load %struct.window*, %struct.window** %w, align 8
  %current_matrix = getelementptr inbounds %struct.window, %struct.window* %143, i32 0, i32 24
  %144 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix, align 8
  call void @clear_glyph_matrix(%struct.glyph_matrix* %144)
  %145 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %145, i32 0, i32 77
  %146 = load i64, i64* %begv, align 8
  %charpos = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos, i32 0, i32 0
  store i64 %146, i64* %charpos, align 8
  %147 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %147, i32 0, i32 78
  %148 = load i64, i64* %begv_byte, align 8
  %bytepos = getelementptr inbounds %struct.text_pos, %struct.text_pos* %pos, i32 0, i32 1
  store i64 %148, i64* %bytepos, align 8
  %149 = load %struct.frame*, %struct.frame** %f, align 8
  %root_window200 = getelementptr inbounds %struct.frame, %struct.frame* %149, i32 0, i32 5
  %150 = load i64, i64* %root_window200, align 8
  %151 = bitcast %struct.text_pos* %pos to { i64, i64 }*
  %152 = getelementptr { i64, i64 }, { i64, i64 }* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 1
  %154 = getelementptr { i64, i64 }, { i64, i64 }* %151, i32 0, i32 1
  %155 = load i64, i64* %154, align 1
  %call201 = call i32 @try_window(i64 %150, i64 %153, i64 %155, i32 2)
  store i32 0, i32* %height, align 4
  store i32 0, i32* %width, align 4
  store i8 0, i8* %seen_reversed_p, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.188
  %156 = load i32, i32* %i, align 4
  %157 = load %struct.window*, %struct.window** %w, align 8
  %desired_matrix202 = getelementptr inbounds %struct.window, %struct.window* %157, i32 0, i32 25
  %158 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix202, align 8
  %nrows = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %158, i32 0, i32 3
  %159 = load i32, i32* %nrows, align 4
  %cmp203 = icmp slt i32 %156, %159
  br i1 %cmp203, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %160 = load i32, i32* %i, align 4
  %idxprom = sext i32 %160 to i64
  %161 = load %struct.window*, %struct.window** %w, align 8
  %desired_matrix205 = getelementptr inbounds %struct.window, %struct.window* %161, i32 0, i32 25
  %162 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix205, align 8
  %rows = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %162, i32 0, i32 1
  %163 = load %struct.glyph_row*, %struct.glyph_row** %rows, align 8
  %arrayidx = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %163, i64 %idxprom
  store %struct.glyph_row* %arrayidx, %struct.glyph_row** %row, align 8
  %164 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %enabled_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %164, i32 0, i32 22
  %165 = bitcast i40* %enabled_p to i64*
  %bf.load206 = load i64, i64* %165, align 4
  %bf.lshr = lshr i64 %bf.load206, 10
  %bf.clear207 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear207 to i1
  br i1 %bf.cast, label %lor.lhs.false, label %if.then.212

lor.lhs.false:                                    ; preds = %for.body
  %166 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %displays_text_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %166, i32 0, i32 22
  %167 = bitcast i40* %displays_text_p to i64*
  %bf.load208 = load i64, i64* %167, align 4
  %bf.lshr209 = lshr i64 %bf.load208, 14
  %bf.clear210 = and i64 %bf.lshr209, 1
  %bf.cast211 = trunc i64 %bf.clear210 to i1
  br i1 %bf.cast211, label %if.end.213, label %if.then.212

if.then.212:                                      ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end.213:                                       ; preds = %lor.lhs.false
  %168 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %full_width_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %168, i32 0, i32 22
  %169 = bitcast i40* %full_width_p to i64*
  %bf.load214 = load i64, i64* %169, align 4
  %bf.clear215 = and i64 %bf.load214, -524289
  %bf.set216 = or i64 %bf.clear215, 524288
  store i64 %bf.set216, i64* %169, align 4
  %170 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %pixel_width217 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %170, i32 0, i32 5
  %171 = load i32, i32* %pixel_width217, align 4
  store i32 %171, i32* %row_width, align 4
  %172 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %used = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %172, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [4 x i16], [4 x i16]* %used, i32 0, i64 1
  %173 = load i16, i16* %arrayidx218, align 2
  %tobool219 = icmp ne i16 %173, 0
  br i1 %tobool219, label %if.then.220, label %if.end.259

if.then.220:                                      ; preds = %if.end.213
  %174 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %reversed_p = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %174, i32 0, i32 22
  %175 = bitcast i40* %reversed_p to i64*
  %bf.load221 = load i64, i64* %175, align 4
  %bf.lshr222 = lshr i64 %bf.load221, 34
  %bf.clear223 = and i64 %bf.lshr222, 1
  %bf.cast224 = trunc i64 %bf.clear223 to i1
  br i1 %bf.cast224, label %if.else.241, label %if.then.225

if.then.225:                                      ; preds = %if.then.220
  %176 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %used226 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %176, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [4 x i16], [4 x i16]* %used226, i32 0, i64 1
  %177 = load i16, i16* %arrayidx227, align 2
  %conv228 = sext i16 %177 to i32
  %sub229 = sub nsw i32 %conv228, 1
  %idxprom230 = sext i32 %sub229 to i64
  %178 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %glyphs = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %178, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [4 x %struct.glyph*], [4 x %struct.glyph*]* %glyphs, i32 0, i64 1
  %179 = load %struct.glyph*, %struct.glyph** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds %struct.glyph, %struct.glyph* %179, i64 %idxprom230
  store %struct.glyph* %arrayidx232, %struct.glyph** %last, align 8
  %180 = load %struct.glyph*, %struct.glyph** %last, align 8
  %object = getelementptr inbounds %struct.glyph, %struct.glyph* %180, i32 0, i32 1
  %181 = load i64, i64* %object, align 8
  %call233 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp234 = icmp eq i64 %181, %call233
  br i1 %cmp234, label %if.then.236, label %if.end.240

if.then.236:                                      ; preds = %if.then.225
  %182 = load %struct.glyph*, %struct.glyph** %last, align 8
  %pixel_width237 = getelementptr inbounds %struct.glyph, %struct.glyph* %182, i32 0, i32 2
  %183 = load i16, i16* %pixel_width237, align 2
  %conv238 = sext i16 %183 to i32
  %184 = load i32, i32* %row_width, align 4
  %sub239 = sub nsw i32 %184, %conv238
  store i32 %sub239, i32* %row_width, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.236, %if.then.225
  br label %if.end.258

if.else.241:                                      ; preds = %if.then.220
  %185 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %glyphs242 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %185, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [4 x %struct.glyph*], [4 x %struct.glyph*]* %glyphs242, i32 0, i64 1
  %186 = load %struct.glyph*, %struct.glyph** %arrayidx243, align 8
  store %struct.glyph* %186, %struct.glyph** %g, align 8
  %187 = load %struct.glyph*, %struct.glyph** %g, align 8
  %type = getelementptr inbounds %struct.glyph, %struct.glyph* %187, i32 0, i32 6
  %188 = bitcast i24* %type to i32*
  %bf.load244 = load i32, i32* %188, align 8
  %bf.clear245 = and i32 %bf.load244, 7
  %cmp246 = icmp eq i32 %bf.clear245, 4
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.257

land.lhs.true.248:                                ; preds = %if.else.241
  %189 = load %struct.glyph*, %struct.glyph** %g, align 8
  %object249 = getelementptr inbounds %struct.glyph, %struct.glyph* %189, i32 0, i32 1
  %190 = load i64, i64* %object249, align 8
  %call250 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp251 = icmp eq i64 %190, %call250
  br i1 %cmp251, label %if.then.253, label %if.end.257

if.then.253:                                      ; preds = %land.lhs.true.248
  %191 = load %struct.glyph*, %struct.glyph** %g, align 8
  %pixel_width254 = getelementptr inbounds %struct.glyph, %struct.glyph* %191, i32 0, i32 2
  %192 = load i16, i16* %pixel_width254, align 2
  %conv255 = sext i16 %192 to i32
  %193 = load i32, i32* %row_width, align 4
  %sub256 = sub nsw i32 %193, %conv255
  store i32 %sub256, i32* %row_width, align 4
  store i8 1, i8* %seen_reversed_p, align 1
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.253, %land.lhs.true.248, %if.else.241
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.240
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.end.213
  %194 = load %struct.glyph_row*, %struct.glyph_row** %row, align 8
  %height260 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %194, i32 0, i32 7
  %195 = load i32, i32* %height260, align 4
  %196 = load i32, i32* %height, align 4
  %add = add nsw i32 %196, %195
  store i32 %add, i32* %height, align 4
  %197 = load i32, i32* %width, align 4
  %198 = load i32, i32* %row_width, align 4
  %cmp261 = icmp sgt i32 %197, %198
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %if.end.259
  %199 = load i32, i32* %width, align 4
  br label %cond.end.265

cond.false.264:                                   ; preds = %if.end.259
  %200 = load i32, i32* %row_width, align 4
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.263
  %cond = phi i32 [ %199, %cond.true.263 ], [ %200, %cond.false.264 ]
  store i32 %cond, i32* %width, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.265
  %201 = load i32, i32* %i, align 4
  %inc = add nsw i32 %201, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.212, %for.cond
  %202 = load i8, i8* %seen_reversed_p, align 1
  %tobool266 = trunc i8 %202 to i1
  br i1 %tobool266, label %if.then.267, label %if.end.365

if.then.267:                                      ; preds = %for.end
  %203 = load i32, i32* %width, align 4
  %204 = load %struct.window*, %struct.window** %w, align 8
  %pixel_width268 = getelementptr inbounds %struct.window, %struct.window* %204, i32 0, i32 34
  store i32 %203, i32* %pixel_width268, align 4
  %205 = load %struct.window*, %struct.window** %w, align 8
  %frame269 = getelementptr inbounds %struct.window, %struct.window* %205, i32 0, i32 1
  %206 = load i64, i64* %frame269, align 8
  %sub270 = sub nsw i64 %206, 5
  %207 = inttoptr i64 %sub270 to i8*
  %208 = bitcast i8* %207 to %struct.frame*
  %column_width271 = getelementptr inbounds %struct.frame, %struct.frame* %208, i32 0, i32 59
  %209 = load i32, i32* %column_width271, align 4
  %210 = load i32, i32* %width, align 4
  %div = sdiv i32 %210, %209
  store i32 %div, i32* %width, align 4
  %211 = load i32, i32* %width, align 4
  %212 = load %struct.window*, %struct.window** %w, align 8
  %total_cols272 = getelementptr inbounds %struct.window, %struct.window* %212, i32 0, i32 36
  store i32 %211, i32* %total_cols272, align 4
  %213 = load i32, i32* %width, align 4
  %214 = load %struct.frame*, %struct.frame** %f, align 8
  %total_cols273 = getelementptr inbounds %struct.frame, %struct.frame* %214, i32 0, i32 38
  store i32 %213, i32* %total_cols273, align 4
  %215 = load i32, i32* %width, align 4
  %216 = load %struct.frame*, %struct.frame** %f, align 8
  %text_width = getelementptr inbounds %struct.frame, %struct.frame* %216, i32 0, i32 40
  store i32 %215, i32* %text_width, align 4
  %217 = load i32, i32* %width, align 4
  %218 = load %struct.frame*, %struct.frame** %f, align 8
  %vertical_scroll_bar_type = getelementptr inbounds %struct.frame, %struct.frame* %218, i32 0, i32 26
  %219 = bitcast i48* %vertical_scroll_bar_type to i64*
  %bf.load274 = load i64, i64* %219, align 8
  %bf.lshr275 = lshr i64 %bf.load274, 30
  %bf.clear276 = and i64 %bf.lshr275, 3
  %bf.cast277 = trunc i64 %bf.clear276 to i32
  %cmp278 = icmp ne i32 %bf.cast277, 0
  br i1 %cmp278, label %cond.true.280, label %cond.false.281

cond.true.280:                                    ; preds = %if.then.267
  %220 = load %struct.frame*, %struct.frame** %f, align 8
  %config_scroll_bar_width = getelementptr inbounds %struct.frame, %struct.frame* %220, i32 0, i32 69
  %221 = load i32, i32* %config_scroll_bar_width, align 4
  br label %cond.end.282

cond.false.281:                                   ; preds = %if.then.267
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.281, %cond.true.280
  %cond283 = phi i32 [ %221, %cond.true.280 ], [ 0, %cond.false.281 ]
  %add284 = add nsw i32 %217, %cond283
  %222 = load %struct.frame*, %struct.frame** %f, align 8
  %left_fringe_width = getelementptr inbounds %struct.frame, %struct.frame* %222, i32 0, i32 54
  %223 = load i32, i32* %left_fringe_width, align 4
  %224 = load %struct.frame*, %struct.frame** %f, align 8
  %right_fringe_width = getelementptr inbounds %struct.frame, %struct.frame* %224, i32 0, i32 55
  %225 = load i32, i32* %right_fringe_width, align 4
  %add285 = add nsw i32 %223, %225
  %add286 = add nsw i32 %add284, %add285
  %226 = load %struct.frame*, %struct.frame** %f, align 8
  %internal_border_width = getelementptr inbounds %struct.frame, %struct.frame* %226, i32 0, i32 51
  %227 = load i32, i32* %internal_border_width, align 4
  %mul287 = mul nsw i32 2, %227
  %add288 = add nsw i32 %add286, %mul287
  %228 = load %struct.frame*, %struct.frame** %f, align 8
  %pixel_width289 = getelementptr inbounds %struct.frame, %struct.frame* %228, i32 0, i32 46
  store i32 %add288, i32* %pixel_width289, align 4
  %229 = load %struct.frame*, %struct.frame** %f, align 8
  call void @adjust_frame_glyphs(%struct.frame* %229)
  %230 = load %struct.window*, %struct.window** %w, align 8
  %desired_matrix290 = getelementptr inbounds %struct.window, %struct.window* %230, i32 0, i32 25
  %231 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix290, align 8
  call void @clear_glyph_matrix(%struct.glyph_matrix* %231)
  %232 = load %struct.window*, %struct.window** %w, align 8
  %current_matrix291 = getelementptr inbounds %struct.window, %struct.window* %232, i32 0, i32 24
  %233 = load %struct.glyph_matrix*, %struct.glyph_matrix** %current_matrix291, align 8
  call void @clear_glyph_matrix(%struct.glyph_matrix* %233)
  %234 = load %struct.frame*, %struct.frame** %f, align 8
  %root_window292 = getelementptr inbounds %struct.frame, %struct.frame* %234, i32 0, i32 5
  %235 = load i64, i64* %root_window292, align 8
  %236 = bitcast %struct.text_pos* %pos to { i64, i64 }*
  %237 = getelementptr { i64, i64 }, { i64, i64 }* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 1
  %239 = getelementptr { i64, i64 }, { i64, i64 }* %236, i32 0, i32 1
  %240 = load i64, i64* %239, align 1
  %call293 = call i32 @try_window(i64 %235, i64 %238, i64 %240, i32 0)
  store i32 0, i32* %height, align 4
  store i32 0, i32* %width, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.362, %cond.end.282
  %241 = load i32, i32* %i, align 4
  %242 = load %struct.window*, %struct.window** %w, align 8
  %desired_matrix295 = getelementptr inbounds %struct.window, %struct.window* %242, i32 0, i32 25
  %243 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix295, align 8
  %nrows296 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %243, i32 0, i32 3
  %244 = load i32, i32* %nrows296, align 4
  %cmp297 = icmp slt i32 %241, %244
  br i1 %cmp297, label %for.body.299, label %for.end.364

for.body.299:                                     ; preds = %for.cond.294
  %245 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %245 to i64
  %246 = load %struct.window*, %struct.window** %w, align 8
  %desired_matrix302 = getelementptr inbounds %struct.window, %struct.window* %246, i32 0, i32 25
  %247 = load %struct.glyph_matrix*, %struct.glyph_matrix** %desired_matrix302, align 8
  %rows303 = getelementptr inbounds %struct.glyph_matrix, %struct.glyph_matrix* %247, i32 0, i32 1
  %248 = load %struct.glyph_row*, %struct.glyph_row** %rows303, align 8
  %arrayidx304 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %248, i64 %idxprom301
  store %struct.glyph_row* %arrayidx304, %struct.glyph_row** %row300, align 8
  %249 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %enabled_p307 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %249, i32 0, i32 22
  %250 = bitcast i40* %enabled_p307 to i64*
  %bf.load308 = load i64, i64* %250, align 4
  %bf.lshr309 = lshr i64 %bf.load308, 10
  %bf.clear310 = and i64 %bf.lshr309, 1
  %bf.cast311 = trunc i64 %bf.clear310 to i1
  br i1 %bf.cast311, label %lor.lhs.false.312, label %if.then.318

lor.lhs.false.312:                                ; preds = %for.body.299
  %251 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %displays_text_p313 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %251, i32 0, i32 22
  %252 = bitcast i40* %displays_text_p313 to i64*
  %bf.load314 = load i64, i64* %252, align 4
  %bf.lshr315 = lshr i64 %bf.load314, 14
  %bf.clear316 = and i64 %bf.lshr315, 1
  %bf.cast317 = trunc i64 %bf.clear316 to i1
  br i1 %bf.cast317, label %if.end.319, label %if.then.318

if.then.318:                                      ; preds = %lor.lhs.false.312, %for.body.299
  br label %for.end.364

if.end.319:                                       ; preds = %lor.lhs.false.312
  %253 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %full_width_p320 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %253, i32 0, i32 22
  %254 = bitcast i40* %full_width_p320 to i64*
  %bf.load321 = load i64, i64* %254, align 4
  %bf.clear322 = and i64 %bf.load321, -524289
  %bf.set323 = or i64 %bf.clear322, 524288
  store i64 %bf.set323, i64* %254, align 4
  %255 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %pixel_width324 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %255, i32 0, i32 5
  %256 = load i32, i32* %pixel_width324, align 4
  store i32 %256, i32* %row_width306, align 4
  %257 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %used325 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %257, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [4 x i16], [4 x i16]* %used325, i32 0, i64 1
  %258 = load i16, i16* %arrayidx326, align 2
  %conv327 = sext i16 %258 to i32
  %tobool328 = icmp ne i32 %conv327, 0
  br i1 %tobool328, label %land.lhs.true.329, label %if.end.353

land.lhs.true.329:                                ; preds = %if.end.319
  %259 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %reversed_p330 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %259, i32 0, i32 22
  %260 = bitcast i40* %reversed_p330 to i64*
  %bf.load331 = load i64, i64* %260, align 4
  %bf.lshr332 = lshr i64 %bf.load331, 34
  %bf.clear333 = and i64 %bf.lshr332, 1
  %bf.cast334 = trunc i64 %bf.clear333 to i1
  br i1 %bf.cast334, label %if.end.353, label %if.then.335

if.then.335:                                      ; preds = %land.lhs.true.329
  %261 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %used336 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %261, i32 0, i32 1
  %arrayidx337 = getelementptr inbounds [4 x i16], [4 x i16]* %used336, i32 0, i64 1
  %262 = load i16, i16* %arrayidx337, align 2
  %conv338 = sext i16 %262 to i32
  %sub339 = sub nsw i32 %conv338, 1
  %idxprom340 = sext i32 %sub339 to i64
  %263 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %glyphs341 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %263, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [4 x %struct.glyph*], [4 x %struct.glyph*]* %glyphs341, i32 0, i64 1
  %264 = load %struct.glyph*, %struct.glyph** %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds %struct.glyph, %struct.glyph* %264, i64 %idxprom340
  store %struct.glyph* %arrayidx343, %struct.glyph** %last305, align 8
  %265 = load %struct.glyph*, %struct.glyph** %last305, align 8
  %object344 = getelementptr inbounds %struct.glyph, %struct.glyph* %265, i32 0, i32 1
  %266 = load i64, i64* %object344, align 8
  %call345 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp346 = icmp eq i64 %266, %call345
  br i1 %cmp346, label %if.then.348, label %if.end.352

if.then.348:                                      ; preds = %if.then.335
  %267 = load %struct.glyph*, %struct.glyph** %last305, align 8
  %pixel_width349 = getelementptr inbounds %struct.glyph, %struct.glyph* %267, i32 0, i32 2
  %268 = load i16, i16* %pixel_width349, align 2
  %conv350 = sext i16 %268 to i32
  %269 = load i32, i32* %row_width306, align 4
  %sub351 = sub nsw i32 %269, %conv350
  store i32 %sub351, i32* %row_width306, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.348, %if.then.335
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %land.lhs.true.329, %if.end.319
  %270 = load %struct.glyph_row*, %struct.glyph_row** %row300, align 8
  %height354 = getelementptr inbounds %struct.glyph_row, %struct.glyph_row* %270, i32 0, i32 7
  %271 = load i32, i32* %height354, align 4
  %272 = load i32, i32* %height, align 4
  %add355 = add nsw i32 %272, %271
  store i32 %add355, i32* %height, align 4
  %273 = load i32, i32* %width, align 4
  %274 = load i32, i32* %row_width306, align 4
  %cmp356 = icmp sgt i32 %273, %274
  br i1 %cmp356, label %cond.true.358, label %cond.false.359

cond.true.358:                                    ; preds = %if.end.353
  %275 = load i32, i32* %width, align 4
  br label %cond.end.360

cond.false.359:                                   ; preds = %if.end.353
  %276 = load i32, i32* %row_width306, align 4
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.359, %cond.true.358
  %cond361 = phi i32 [ %275, %cond.true.358 ], [ %276, %cond.false.359 ]
  store i32 %cond361, i32* %width, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %cond.end.360
  %277 = load i32, i32* %i, align 4
  %inc363 = add nsw i32 %277, 1
  store i32 %inc363, i32* %i, align 4
  br label %for.cond.294

for.end.364:                                      ; preds = %if.then.318, %for.cond.294
  br label %if.end.365

if.end.365:                                       ; preds = %for.end.364, %for.end
  %278 = load %struct.frame*, %struct.frame** %f, align 8
  %internal_border_width366 = getelementptr inbounds %struct.frame, %struct.frame* %278, i32 0, i32 51
  %279 = load i32, i32* %internal_border_width366, align 4
  %mul367 = mul nsw i32 2, %279
  %280 = load i32, i32* %height, align 4
  %add368 = add nsw i32 %280, %mul367
  store i32 %add368, i32* %height, align 4
  %281 = load %struct.frame*, %struct.frame** %f, align 8
  %internal_border_width369 = getelementptr inbounds %struct.frame, %struct.frame* %281, i32 0, i32 51
  %282 = load i32, i32* %internal_border_width369, align 4
  %mul370 = mul nsw i32 2, %282
  %283 = load i32, i32* %width, align 4
  %add371 = add nsw i32 %283, %mul370
  store i32 %add371, i32* %width, align 4
  %284 = load %struct.frame*, %struct.frame** %f, align 8
  %285 = load i64, i64* %parms.addr, align 8
  %286 = load i64, i64* %dx.addr, align 8
  %287 = load i64, i64* %dy.addr, align 8
  %288 = load i32, i32* %width, align 4
  %289 = load i32, i32* %height, align 4
  call void @compute_tip_xy(%struct.frame* %284, i64 %285, i64 %286, i64 %287, i32 %288, i32 %289, i32* %root_x, i32* %root_y)
  call void @block_input()
  %290 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data372 = getelementptr inbounds %struct.frame, %struct.frame* %290, i32 0, i32 62
  %x373 = bitcast %union.output_data* %output_data372 to %struct.x_output**
  %291 = load %struct.x_output*, %struct.x_output** %x373, align 8
  %display_info374 = getelementptr inbounds %struct.x_output, %struct.x_output* %291, i32 0, i32 44
  %292 = load %struct.x_display_info*, %struct.x_display_info** %display_info374, align 8
  %display375 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %292, i32 0, i32 2
  %293 = load %struct._XDisplay*, %struct._XDisplay** %display375, align 8
  %294 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data376 = getelementptr inbounds %struct.frame, %struct.frame* %294, i32 0, i32 62
  %x377 = bitcast %union.output_data* %output_data376 to %struct.x_output**
  %295 = load %struct.x_output*, %struct.x_output** %x377, align 8
  %window_desc378 = getelementptr inbounds %struct.x_output, %struct.x_output* %295, i32 0, i32 9
  %296 = load i64, i64* %window_desc378, align 8
  %297 = load i32, i32* %root_x, align 4
  %298 = load i32, i32* %root_y, align 4
  %299 = load i32, i32* %width, align 4
  %300 = load i32, i32* %height, align 4
  %call379 = call i32 @XMoveResizeWindow(%struct._XDisplay* %293, i64 %296, i32 %297, i32 %298, i32 %299, i32 %300)
  %301 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data380 = getelementptr inbounds %struct.frame, %struct.frame* %301, i32 0, i32 62
  %x381 = bitcast %union.output_data* %output_data380 to %struct.x_output**
  %302 = load %struct.x_output*, %struct.x_output** %x381, align 8
  %display_info382 = getelementptr inbounds %struct.x_output, %struct.x_output* %302, i32 0, i32 44
  %303 = load %struct.x_display_info*, %struct.x_display_info** %display_info382, align 8
  %display383 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %303, i32 0, i32 2
  %304 = load %struct._XDisplay*, %struct._XDisplay** %display383, align 8
  %305 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data384 = getelementptr inbounds %struct.frame, %struct.frame* %305, i32 0, i32 62
  %x385 = bitcast %union.output_data* %output_data384 to %struct.x_output**
  %306 = load %struct.x_output*, %struct.x_output** %x385, align 8
  %window_desc386 = getelementptr inbounds %struct.x_output, %struct.x_output* %306, i32 0, i32 9
  %307 = load i64, i64* %window_desc386, align 8
  %call387 = call i32 @XMapRaised(%struct._XDisplay* %304, i64 %307)
  call void @unblock_input()
  %308 = load %struct.window*, %struct.window** %w, align 8
  %must_be_updated_p = getelementptr inbounds %struct.window, %struct.window* %308, i32 0, i32 67
  %bf.load388 = load i16, i16* %must_be_updated_p, align 4
  %bf.clear389 = and i16 %bf.load388, -1025
  %bf.set390 = or i16 %bf.clear389, 1024
  store i16 %bf.set390, i16* %must_be_updated_p, align 4
  %309 = load %struct.window*, %struct.window** %w, align 8
  call void @update_single_window(%struct.window* %309)
  %310 = load %struct.buffer*, %struct.buffer** %old_buffer, align 8
  call void @set_buffer_internal_1(%struct.buffer* %310)
  %311 = load i32, i32* %old_windows_or_buffers_changed, align 4
  store i32 %311, i32* @windows_or_buffers_changed, align 4
  br label %start_timer

start_timer:                                      ; preds = %if.end.365, %if.end.78, %if.then.42
  %call391 = call i64 @intern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0))
  %312 = load i64, i64* %timeout.addr, align 8
  %call392 = call i64 @builtin_lisp_symbol(i32 0)
  %call393 = call i64 @intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0))
  %call394 = call i64 @call3(i64 %call391, i64 %312, i64 %call392, i64 %call393)
  store i64 %call394, i64* @tip_timer, align 8
  %313 = load i64, i64* %count, align 8
  %call395 = call i64 @builtin_lisp_symbol(i32 0)
  %call396 = call i64 @unbind_to(i64 %313, i64 %call395)
  ret i64 %call396
}

declare i64 @SCHARS(i64) #1

declare i64 @make_unibyte_string(i8*, i64) #1

declare void @CHECK_NATNUM(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_hide_tip() #0 {
entry:
  %retval = alloca i64, align 8
  %count = alloca i64, align 8
  %deleted = alloca i64, align 8
  %frame = alloca i64, align 8
  %timer = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %0 = load i64, i64* @tip_timer, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @tip_frame, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* @tip_frame, align 8
  store i64 %2, i64* %frame, align 8
  %3 = load i64, i64* @tip_timer, align 8
  store i64 %3, i64* %timer, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %deleted, align 8
  store i64 %call4, i64* @tip_timer, align 8
  store i64 %call4, i64* @tip_frame, align 8
  %call5 = call i64 @SPECPDL_INDEX()
  store i64 %call5, i64* %count, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 548)
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call6, i64 %call7)
  %call8 = call i64 @builtin_lisp_symbol(i32 546)
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call8, i64 %call9)
  %4 = load i64, i64* %timer, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %4, %call10
  br i1 %cmp11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %call13 = call i64 @builtin_lisp_symbol(i32 236)
  %5 = load i64, i64* %timer, align 8
  %call14 = call i64 @call1(i64 %call13, i64 %5)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %6 = load i64, i64* %frame, align 8
  %sub = sub nsw i64 %6, 5
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.frame*
  store %struct.frame* %8, %struct.frame** %f, align 8
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 61
  %10 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp16 = icmp ne %struct.terminal* %10, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %if.end.15
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %call18 = call zeroext i1 @xg_hide_tooltip(%struct.frame* %11)
  br i1 %call18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true.17
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %frame, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true.17, %if.end.15
  %12 = load i64, i64* %frame, align 8
  %call22 = call zeroext i1 @FRAMEP(i64 %12)
  br i1 %call22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.21
  %13 = load i64, i64* %frame, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %call25 = call i64 @delete_frame(i64 %13, i64 %call24)
  %call26 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call26, i64* %deleted, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.21
  %14 = load i64, i64* %count, align 8
  %15 = load i64, i64* %deleted, align 8
  %call28 = call i64 @unbind_to(i64 %14, i64 %15)
  store i64 %call28, i64* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare zeroext i1 @xg_prepare_tooltip(%struct.frame*, i64, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @compute_tip_xy(%struct.frame* %f, i64 %parms, i64 %dx, i64 %dy, i32 %width, i32 %height, i32* %root_x, i32* %root_y) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %parms.addr = alloca i64, align 8
  %dx.addr = alloca i64, align 8
  %dy.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %root_x.addr = alloca i32*, align 8
  %root_y.addr = alloca i32*, align 8
  %left = alloca i64, align 8
  %top = alloca i64, align 8
  %right = alloca i64, align 8
  %bottom = alloca i64, align 8
  %win_x = alloca i32, align 4
  %win_y = alloca i32, align 4
  %root = alloca i64, align 8
  %child = alloca i64, align 8
  %pmask = alloca i32, align 4
  %min_x = alloca i32, align 4
  %min_y = alloca i32, align 4
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  %frame = alloca i64, align 8
  %attributes = alloca i64, align 8
  %monitor = alloca i64, align 8
  %geometry = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %parms, i64* %parms.addr, align 8
  store i64 %dx, i64* %dx.addr, align 8
  store i64 %dy, i64* %dy.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32* %root_x, i32** %root_x.addr, align 8
  store i32* %root_y, i32** %root_y.addr, align 8
  store i32 -1, i32* %max_y, align 4
  %call = call i64 @builtin_lisp_symbol(i32 607)
  %0 = load i64, i64* %parms.addr, align 8
  %call1 = call i64 @Fassq(i64 %call, i64 %0)
  %call2 = call i64 @Fcdr(i64 %call1)
  store i64 %call2, i64* %left, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 928)
  %1 = load i64, i64* %parms.addr, align 8
  %call4 = call i64 @Fassq(i64 %call3, i64 %1)
  %call5 = call i64 @Fcdr(i64 %call4)
  store i64 %call5, i64* %top, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 811)
  %2 = load i64, i64* %parms.addr, align 8
  %call7 = call i64 @Fassq(i64 %call6, i64 %2)
  %call8 = call i64 @Fcdr(i64 %call7)
  store i64 %call8, i64* %right, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 213)
  %3 = load i64, i64* %parms.addr, align 8
  %call10 = call i64 @Fassq(i64 %call9, i64 %3)
  %call11 = call i64 @Fcdr(i64 %call10)
  store i64 %call11, i64* %bottom, align 8
  %4 = load i64, i64* %left, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %and12 = and i32 %conv, -5
  %cmp = icmp eq i32 %and12, 2
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %right, align 8
  %and14 = and i64 %5, 7
  %conv15 = trunc i64 %and14 to i32
  %and16 = and i32 %conv15, -5
  %cmp17 = icmp eq i32 %and16, 2
  br i1 %cmp17, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %top, align 8
  %and19 = and i64 %6, 7
  %conv20 = trunc i64 %and19 to i32
  %and21 = and i32 %conv20, -5
  %cmp22 = icmp eq i32 %and21, 2
  br i1 %cmp22, label %if.end.75, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %lor.lhs.false
  %7 = load i64, i64* %bottom, align 8
  %and25 = and i64 %7, 7
  %conv26 = trunc i64 %and25 to i32
  %and27 = and i32 %conv26, -5
  %cmp28 = icmp eq i32 %and27, 2
  br i1 %cmp28, label %if.end.75, label %if.then

if.then:                                          ; preds = %land.lhs.true.24, %land.lhs.true
  call void @block_input()
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 2
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data30 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x31 = bitcast %union.output_data* %output_data30 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x31, align 8
  %display_info32 = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 44
  %14 = load %struct.x_display_info*, %struct.x_display_info** %display_info32, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 14
  %15 = load i64, i64* %root_window, align 8
  %16 = load i32*, i32** %root_x.addr, align 8
  %17 = load i32*, i32** %root_y.addr, align 8
  %call33 = call i32 @XQueryPointer(%struct._XDisplay* %11, i64 %15, i64* %root, i64* %child, i32* %16, i32* %17, i32* %win_x, i32* %win_y, i32* %pmask)
  call void @unblock_input()
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %19 = bitcast %struct.frame* %18 to i8*
  %call34 = call i64 @make_lisp_ptr(i8* %19, i32 5)
  store i64 %call34, i64* %frame, align 8
  %20 = load i64, i64* %frame, align 8
  %call35 = call i64 @Fx_display_monitor_attributes_list(i64 %20)
  store i64 %call35, i64* %attributes, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.73, %if.then
  %21 = load i64, i64* %attributes, align 8
  %and36 = and i64 %21, 7
  %conv37 = trunc i64 %and36 to i32
  %cmp38 = icmp eq i32 %conv37, 3
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i64, i64* %attributes, align 8
  %sub = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 0
  %25 = load i64, i64* %car, align 8
  store i64 %25, i64* %monitor, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 482)
  %26 = load i64, i64* %monitor, align 8
  %call41 = call i64 @Fassq(i64 %call40, i64 %26)
  store i64 %call41, i64* %geometry, align 8
  %27 = load i64, i64* %geometry, align 8
  %and42 = and i64 %27, 7
  %conv43 = trunc i64 %and42 to i32
  %cmp44 = icmp eq i32 %conv43, 3
  br i1 %cmp44, label %if.then.46, label %if.end.73

if.then.46:                                       ; preds = %while.body
  %28 = load i64, i64* %geometry, align 8
  %call47 = call i64 @Fnth(i64 6, i64 %28)
  %shr = ashr i64 %call47, 2
  %conv48 = trunc i64 %shr to i32
  store i32 %conv48, i32* %min_x, align 4
  %29 = load i64, i64* %geometry, align 8
  %call49 = call i64 @Fnth(i64 10, i64 %29)
  %shr50 = ashr i64 %call49, 2
  %conv51 = trunc i64 %shr50 to i32
  store i32 %conv51, i32* %min_y, align 4
  %30 = load i32, i32* %min_x, align 4
  %conv52 = sext i32 %30 to i64
  %31 = load i64, i64* %geometry, align 8
  %call53 = call i64 @Fnth(i64 14, i64 %31)
  %shr54 = ashr i64 %call53, 2
  %add = add nsw i64 %conv52, %shr54
  %conv55 = trunc i64 %add to i32
  store i32 %conv55, i32* %max_x, align 4
  %32 = load i32, i32* %min_y, align 4
  %conv56 = sext i32 %32 to i64
  %33 = load i64, i64* %geometry, align 8
  %call57 = call i64 @Fnth(i64 18, i64 %33)
  %shr58 = ashr i64 %call57, 2
  %add59 = add nsw i64 %conv56, %shr58
  %conv60 = trunc i64 %add59 to i32
  store i32 %conv60, i32* %max_y, align 4
  %34 = load i32, i32* %min_x, align 4
  %35 = load i32*, i32** %root_x.addr, align 8
  %36 = load i32, i32* %35, align 4
  %cmp61 = icmp sle i32 %34, %36
  br i1 %cmp61, label %land.lhs.true.63, label %if.end

land.lhs.true.63:                                 ; preds = %if.then.46
  %37 = load i32*, i32** %root_x.addr, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %max_x, align 4
  %cmp64 = icmp slt i32 %38, %39
  br i1 %cmp64, label %land.lhs.true.66, label %if.end

land.lhs.true.66:                                 ; preds = %land.lhs.true.63
  %40 = load i32, i32* %min_y, align 4
  %41 = load i32*, i32** %root_y.addr, align 8
  %42 = load i32, i32* %41, align 4
  %cmp67 = icmp sle i32 %40, %42
  br i1 %cmp67, label %land.lhs.true.69, label %if.end

land.lhs.true.69:                                 ; preds = %land.lhs.true.66
  %43 = load i32*, i32** %root_y.addr, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %max_y, align 4
  %cmp70 = icmp slt i32 %44, %45
  br i1 %cmp70, label %if.then.72, label %if.end

if.then.72:                                       ; preds = %land.lhs.true.69
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.69, %land.lhs.true.66, %land.lhs.true.63, %if.then.46
  store i32 -1, i32* %max_y, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.end, %while.body
  %46 = load i64, i64* %attributes, align 8
  %sub74 = sub nsw i64 %46, 3
  %47 = inttoptr i64 %sub74 to i8*
  %48 = bitcast i8* %47 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %48, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %49 = load i64, i64* %cdr, align 8
  store i64 %49, i64* %attributes, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.72, %while.cond
  br label %if.end.75

if.end.75:                                        ; preds = %while.end, %land.lhs.true.24, %lor.lhs.false
  %50 = load i32, i32* %max_y, align 4
  %cmp76 = icmp slt i32 %50, 0
  br i1 %cmp76, label %if.then.78, label %if.end.87

if.then.78:                                       ; preds = %if.end.75
  store i32 0, i32* %min_x, align 4
  store i32 0, i32* %min_y, align 4
  %51 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data79 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 62
  %x80 = bitcast %union.output_data* %output_data79 to %struct.x_output**
  %52 = load %struct.x_output*, %struct.x_output** %x80, align 8
  %display_info81 = getelementptr inbounds %struct.x_output, %struct.x_output* %52, i32 0, i32 44
  %53 = load %struct.x_display_info*, %struct.x_display_info** %display_info81, align 8
  %call82 = call i32 @x_display_pixel_width(%struct.x_display_info* %53)
  store i32 %call82, i32* %max_x, align 4
  %54 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data83 = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 62
  %x84 = bitcast %union.output_data* %output_data83 to %struct.x_output**
  %55 = load %struct.x_output*, %struct.x_output** %x84, align 8
  %display_info85 = getelementptr inbounds %struct.x_output, %struct.x_output* %55, i32 0, i32 44
  %56 = load %struct.x_display_info*, %struct.x_display_info** %display_info85, align 8
  %call86 = call i32 @x_display_pixel_height(%struct.x_display_info* %56)
  store i32 %call86, i32* %max_y, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.78, %if.end.75
  %57 = load i64, i64* %top, align 8
  %and88 = and i64 %57, 7
  %conv89 = trunc i64 %and88 to i32
  %and90 = and i32 %conv89, -5
  %cmp91 = icmp eq i32 %and90, 2
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.end.87
  %58 = load i64, i64* %top, align 8
  %shr94 = ashr i64 %58, 2
  %conv95 = trunc i64 %shr94 to i32
  %59 = load i32*, i32** %root_y.addr, align 8
  store i32 %conv95, i32* %59, align 4
  br label %if.end.149

if.else:                                          ; preds = %if.end.87
  %60 = load i64, i64* %bottom, align 8
  %and96 = and i64 %60, 7
  %conv97 = trunc i64 %and96 to i32
  %and98 = and i32 %conv97, -5
  %cmp99 = icmp eq i32 %and98, 2
  br i1 %cmp99, label %if.then.101, label %if.else.106

if.then.101:                                      ; preds = %if.else
  %61 = load i64, i64* %bottom, align 8
  %shr102 = ashr i64 %61, 2
  %62 = load i32, i32* %height.addr, align 4
  %conv103 = sext i32 %62 to i64
  %sub104 = sub nsw i64 %shr102, %conv103
  %conv105 = trunc i64 %sub104 to i32
  %63 = load i32*, i32** %root_y.addr, align 8
  store i32 %conv105, i32* %63, align 4
  br label %if.end.148

if.else.106:                                      ; preds = %if.else
  %64 = load i32*, i32** %root_y.addr, align 8
  %65 = load i32, i32* %64, align 4
  %conv107 = sext i32 %65 to i64
  %66 = load i64, i64* %dy.addr, align 8
  %shr108 = ashr i64 %66, 2
  %add109 = add nsw i64 %conv107, %shr108
  %67 = load i32, i32* %min_y, align 4
  %conv110 = sext i32 %67 to i64
  %cmp111 = icmp sle i64 %add109, %conv110
  br i1 %cmp111, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %if.else.106
  %68 = load i32, i32* %min_y, align 4
  %69 = load i32*, i32** %root_y.addr, align 8
  store i32 %68, i32* %69, align 4
  br label %if.end.147

if.else.114:                                      ; preds = %if.else.106
  %70 = load i32*, i32** %root_y.addr, align 8
  %71 = load i32, i32* %70, align 4
  %conv115 = sext i32 %71 to i64
  %72 = load i64, i64* %dy.addr, align 8
  %shr116 = ashr i64 %72, 2
  %add117 = add nsw i64 %conv115, %shr116
  %73 = load i32, i32* %height.addr, align 4
  %conv118 = sext i32 %73 to i64
  %add119 = add nsw i64 %add117, %conv118
  %74 = load i32, i32* %max_y, align 4
  %conv120 = sext i32 %74 to i64
  %cmp121 = icmp sle i64 %add119, %conv120
  br i1 %cmp121, label %if.then.123, label %if.else.128

if.then.123:                                      ; preds = %if.else.114
  %75 = load i64, i64* %dy.addr, align 8
  %shr124 = ashr i64 %75, 2
  %76 = load i32*, i32** %root_y.addr, align 8
  %77 = load i32, i32* %76, align 4
  %conv125 = sext i32 %77 to i64
  %add126 = add nsw i64 %conv125, %shr124
  %conv127 = trunc i64 %add126 to i32
  store i32 %conv127, i32* %76, align 4
  br label %if.end.146

if.else.128:                                      ; preds = %if.else.114
  %78 = load i32, i32* %height.addr, align 4
  %conv129 = sext i32 %78 to i64
  %79 = load i64, i64* %dy.addr, align 8
  %shr130 = ashr i64 %79, 2
  %add131 = add nsw i64 %conv129, %shr130
  %80 = load i32, i32* %min_y, align 4
  %conv132 = sext i32 %80 to i64
  %add133 = add nsw i64 %add131, %conv132
  %81 = load i32*, i32** %root_y.addr, align 8
  %82 = load i32, i32* %81, align 4
  %conv134 = sext i32 %82 to i64
  %cmp135 = icmp sle i64 %add133, %conv134
  br i1 %cmp135, label %if.then.137, label %if.else.144

if.then.137:                                      ; preds = %if.else.128
  %83 = load i32, i32* %height.addr, align 4
  %conv138 = sext i32 %83 to i64
  %84 = load i64, i64* %dy.addr, align 8
  %shr139 = ashr i64 %84, 2
  %add140 = add nsw i64 %conv138, %shr139
  %85 = load i32*, i32** %root_y.addr, align 8
  %86 = load i32, i32* %85, align 4
  %conv141 = sext i32 %86 to i64
  %sub142 = sub nsw i64 %conv141, %add140
  %conv143 = trunc i64 %sub142 to i32
  store i32 %conv143, i32* %85, align 4
  br label %if.end.145

if.else.144:                                      ; preds = %if.else.128
  %87 = load i32, i32* %min_y, align 4
  %88 = load i32*, i32** %root_y.addr, align 8
  store i32 %87, i32* %88, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.144, %if.then.137
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.123
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.113
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.101
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.93
  %89 = load i64, i64* %left, align 8
  %and150 = and i64 %89, 7
  %conv151 = trunc i64 %and150 to i32
  %and152 = and i32 %conv151, -5
  %cmp153 = icmp eq i32 %and152, 2
  br i1 %cmp153, label %if.then.155, label %if.else.158

if.then.155:                                      ; preds = %if.end.149
  %90 = load i64, i64* %left, align 8
  %shr156 = ashr i64 %90, 2
  %conv157 = trunc i64 %shr156 to i32
  %91 = load i32*, i32** %root_x.addr, align 8
  store i32 %conv157, i32* %91, align 4
  br label %if.end.212

if.else.158:                                      ; preds = %if.end.149
  %92 = load i64, i64* %right, align 8
  %and159 = and i64 %92, 7
  %conv160 = trunc i64 %and159 to i32
  %and161 = and i32 %conv160, -5
  %cmp162 = icmp eq i32 %and161, 2
  br i1 %cmp162, label %if.then.164, label %if.else.169

if.then.164:                                      ; preds = %if.else.158
  %93 = load i64, i64* %right, align 8
  %shr165 = ashr i64 %93, 2
  %94 = load i32, i32* %width.addr, align 4
  %conv166 = sext i32 %94 to i64
  %sub167 = sub nsw i64 %shr165, %conv166
  %conv168 = trunc i64 %sub167 to i32
  %95 = load i32*, i32** %root_x.addr, align 8
  store i32 %conv168, i32* %95, align 4
  br label %if.end.211

if.else.169:                                      ; preds = %if.else.158
  %96 = load i32*, i32** %root_x.addr, align 8
  %97 = load i32, i32* %96, align 4
  %conv170 = sext i32 %97 to i64
  %98 = load i64, i64* %dx.addr, align 8
  %shr171 = ashr i64 %98, 2
  %add172 = add nsw i64 %conv170, %shr171
  %99 = load i32, i32* %min_x, align 4
  %conv173 = sext i32 %99 to i64
  %cmp174 = icmp sle i64 %add172, %conv173
  br i1 %cmp174, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.else.169
  %100 = load i32*, i32** %root_x.addr, align 8
  store i32 0, i32* %100, align 4
  br label %if.end.210

if.else.177:                                      ; preds = %if.else.169
  %101 = load i32*, i32** %root_x.addr, align 8
  %102 = load i32, i32* %101, align 4
  %conv178 = sext i32 %102 to i64
  %103 = load i64, i64* %dx.addr, align 8
  %shr179 = ashr i64 %103, 2
  %add180 = add nsw i64 %conv178, %shr179
  %104 = load i32, i32* %width.addr, align 4
  %conv181 = sext i32 %104 to i64
  %add182 = add nsw i64 %add180, %conv181
  %105 = load i32, i32* %max_x, align 4
  %conv183 = sext i32 %105 to i64
  %cmp184 = icmp sle i64 %add182, %conv183
  br i1 %cmp184, label %if.then.186, label %if.else.191

if.then.186:                                      ; preds = %if.else.177
  %106 = load i64, i64* %dx.addr, align 8
  %shr187 = ashr i64 %106, 2
  %107 = load i32*, i32** %root_x.addr, align 8
  %108 = load i32, i32* %107, align 4
  %conv188 = sext i32 %108 to i64
  %add189 = add nsw i64 %conv188, %shr187
  %conv190 = trunc i64 %add189 to i32
  store i32 %conv190, i32* %107, align 4
  br label %if.end.209

if.else.191:                                      ; preds = %if.else.177
  %109 = load i32, i32* %width.addr, align 4
  %conv192 = sext i32 %109 to i64
  %110 = load i64, i64* %dx.addr, align 8
  %shr193 = ashr i64 %110, 2
  %add194 = add nsw i64 %conv192, %shr193
  %111 = load i32, i32* %min_x, align 4
  %conv195 = sext i32 %111 to i64
  %add196 = add nsw i64 %add194, %conv195
  %112 = load i32*, i32** %root_x.addr, align 8
  %113 = load i32, i32* %112, align 4
  %conv197 = sext i32 %113 to i64
  %cmp198 = icmp sle i64 %add196, %conv197
  br i1 %cmp198, label %if.then.200, label %if.else.207

if.then.200:                                      ; preds = %if.else.191
  %114 = load i32, i32* %width.addr, align 4
  %conv201 = sext i32 %114 to i64
  %115 = load i64, i64* %dx.addr, align 8
  %shr202 = ashr i64 %115, 2
  %add203 = add nsw i64 %conv201, %shr202
  %116 = load i32*, i32** %root_x.addr, align 8
  %117 = load i32, i32* %116, align 4
  %conv204 = sext i32 %117 to i64
  %sub205 = sub nsw i64 %conv204, %add203
  %conv206 = trunc i64 %sub205 to i32
  store i32 %conv206, i32* %116, align 4
  br label %if.end.208

if.else.207:                                      ; preds = %if.else.191
  %118 = load i32, i32* %min_x, align 4
  %119 = load i32*, i32** %root_x.addr, align 8
  store i32 %118, i32* %119, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.207, %if.then.200
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.186
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.176
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.164
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.155
  ret void
}

declare void @xg_show_tooltip(%struct.frame*, i32, i32) #1

declare i64 @Fequal(i64, i64) #1

declare i64 @call1(i64, i64) #1

declare i32 @XMoveWindow(%struct._XDisplay*, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @x_create_tip_frame(%struct.x_display_info* %dpyinfo, i64 %parms, i64 %text) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %parms.addr = alloca i64, align 8
  %text.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %frame = alloca i64, align 8
  %name = alloca i64, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %count = alloca i64, align 8
  %face_change_before = alloca i8, align 1
  %buffer = alloca i64, align 8
  %old_buffer = alloca %struct.buffer*, align 8
  %x_width = alloca i32, align 4
  %x_height = alloca i32, align 4
  %tip = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %black = alloca i64, align 8
  %value = alloca i64, align 8
  %attrs = alloca %struct.XSetWindowAttributes, align 8
  %mask = alloca i64, align 8
  %type = alloca i64, align 8
  %arg = alloca i64, align 8
  %.compoundliteral312 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral314 = alloca %union.Aligned_Cons, align 8
  %disptype = alloca i64, align 8
  %arg361 = alloca i64, align 8
  %.compoundliteral362 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral365 = alloca %union.Aligned_Cons, align 8
  %bg = alloca i64, align 8
  %arg390 = alloca i64, align 8
  %.compoundliteral391 = alloca %union.Aligned_Cons, align 8
  %.compoundliteral394 = alloca %union.Aligned_Cons, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i64 %parms, i64* %parms.addr, align 8
  store i64 %text, i64* %text.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i8, i8* @face_change, align 1
  %tobool = trunc i8 %0 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %face_change_before, align 1
  store i32 0, i32* %x_width, align 4
  store i32 0, i32* %x_height, align 4
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 1
  %2 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %name1 = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 9
  %3 = load i8*, i8** %name1, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %parms.addr, align 8
  %call3 = call i64 @Fcopy_alist(i64 %4)
  store i64 %call3, i64* %parms.addr, align 8
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %6 = load i64, i64* %parms.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 696)
  %call5 = call i64 @x_get_arg(%struct.x_display_info* %5, i64 %6, i64 %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 3)
  store i64 %call5, i64* %name, align 8
  %7 = load i64, i64* %name, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call6, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %name, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp = icmp eq i64 %8, %call7
  br i1 %cmp, label %if.end.12, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load i64, i64* %name, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %9, %call9
  br i1 %cmp10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0)) #7
  unreachable

if.end.12:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %if.end
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %frame, align 8
  %call14 = call %struct.frame* @make_frame(i1 zeroext true)
  store %struct.frame* %call14, %struct.frame** %f, align 8
  %10 = load %struct.frame*, %struct.frame** %f, align 8
  %11 = bitcast %struct.frame* %10 to i8*
  %call15 = call i64 @make_lisp_ptr(i8* %11, i32 5)
  store i64 %call15, i64* %frame, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 6, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.156, i32 0, i32 0), i8** %data, align 8
  %s16 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %12 = bitcast %struct.Lisp_String* %s16 to i8*
  %call17 = call i64 @make_lisp_ptr(i8* %12, i32 4)
  store i64 %call17, i64* %tip, align 8
  %13 = load i64, i64* %tip, align 8
  %call18 = call i64 @Fget_buffer_create(i64 %13)
  store i64 %call18, i64* %buffer, align 8
  %14 = load %struct.frame*, %struct.frame** %f, align 8
  %root_window = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 5
  %15 = load i64, i64* %root_window, align 8
  %16 = load i64, i64* %buffer, align 8
  call void @set_window_buffer(i64 %15, i64 %16, i1 zeroext false, i1 zeroext false)
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %17, %struct.buffer** %old_buffer, align 8
  %18 = load i64, i64* %buffer, align 8
  %call19 = call %struct.buffer* @XBUFFER(i64 %18)
  call void @set_buffer_internal_1(%struct.buffer* %call19)
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  call void @bset_truncate_lines(%struct.buffer* %19, i64 %call20)
  %call21 = call i64 @builtin_lisp_symbol(i32 547)
  %call22 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call21, i64 %call22)
  %call23 = call i64 @builtin_lisp_symbol(i32 544)
  %call24 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call23, i64 %call24)
  %call25 = call i64 @Ferase_buffer()
  %call26 = call i64 @Finsert(i64 1, i64* %text.addr)
  %20 = load %struct.buffer*, %struct.buffer** %old_buffer, align 8
  call void @set_buffer_internal_1(%struct.buffer* %20)
  %21 = load i64, i64* %frame, align 8
  call void @record_unwind_protect(void (i64)* @unwind_create_tip_frame, i64 %21)
  %22 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %terminal27 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %22, i32 0, i32 1
  %23 = load %struct.terminal*, %struct.terminal** %terminal27, align 8
  %24 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal28 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 61
  store %struct.terminal* %23, %struct.terminal** %terminal28, align 8
  %25 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 26
  %26 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %26, align 8
  %bf.clear = and i64 %bf.load, -58720257
  %bf.set = or i64 %bf.clear, 16777216
  store i64 %bf.set, i64* %26, align 8
  %call29 = call noalias i8* @xzalloc(i64 528)
  %27 = bitcast i8* %call29 to %struct.x_output*
  %28 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  store %struct.x_output* %27, %struct.x_output** %x, align 8
  %29 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data30 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x31 = bitcast %union.output_data* %output_data30 to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x31, align 8
  %icon_bitmap = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 24
  store i64 -1, i64* %icon_bitmap, align 8
  %31 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data32 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 62
  %x33 = bitcast %union.output_data* %output_data32 to %struct.x_output**
  %32 = load %struct.x_output*, %struct.x_output** %x33, align 8
  %fontset = getelementptr inbounds %struct.x_output, %struct.x_output* %32, i32 0, i32 27
  store i32 -1, i32* %fontset, align 4
  %33 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data34 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 62
  %x35 = bitcast %union.output_data* %output_data34 to %struct.x_output**
  %34 = load %struct.x_output*, %struct.x_output** %x35, align 8
  %scroll_bar_foreground_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %34, i32 0, i32 32
  store i64 -1, i64* %scroll_bar_foreground_pixel, align 8
  %35 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data36 = getelementptr inbounds %struct.frame, %struct.frame* %35, i32 0, i32 62
  %x37 = bitcast %union.output_data* %output_data36 to %struct.x_output**
  %36 = load %struct.x_output*, %struct.x_output** %x37, align 8
  %scroll_bar_background_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %36, i32 0, i32 33
  store i64 -1, i64* %scroll_bar_background_pixel, align 8
  %37 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data38 = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 62
  %x39 = bitcast %union.output_data* %output_data38 to %struct.x_output**
  %38 = load %struct.x_output*, %struct.x_output** %x39, align 8
  %white_relief = getelementptr inbounds %struct.x_output, %struct.x_output* %38, i32 0, i32 51
  %pixel = getelementptr inbounds %struct.relief, %struct.relief* %white_relief, i32 0, i32 1
  store i64 -1, i64* %pixel, align 8
  %39 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data40 = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 62
  %x41 = bitcast %union.output_data* %output_data40 to %struct.x_output**
  %40 = load %struct.x_output*, %struct.x_output** %x41, align 8
  %black_relief = getelementptr inbounds %struct.x_output, %struct.x_output* %40, i32 0, i32 50
  %pixel42 = getelementptr inbounds %struct.relief, %struct.relief* %black_relief, i32 0, i32 1
  store i64 -1, i64* %pixel42, align 8
  %41 = load %struct.frame*, %struct.frame** %f, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  call void @fset_icon_name(%struct.frame* %41, i64 %call43)
  %42 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %43 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data44 = getelementptr inbounds %struct.frame, %struct.frame* %43, i32 0, i32 62
  %x45 = bitcast %union.output_data* %output_data44 to %struct.x_output**
  %44 = load %struct.x_output*, %struct.x_output** %x45, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %44, i32 0, i32 44
  store %struct.x_display_info* %42, %struct.x_display_info** %display_info, align 8
  %45 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data46 = getelementptr inbounds %struct.frame, %struct.frame* %45, i32 0, i32 62
  %x47 = bitcast %union.output_data* %output_data46 to %struct.x_output**
  %46 = load %struct.x_output*, %struct.x_output** %x47, align 8
  %display_info48 = getelementptr inbounds %struct.x_output, %struct.x_output* %46, i32 0, i32 44
  %47 = load %struct.x_display_info*, %struct.x_display_info** %display_info48, align 8
  %root_window49 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %47, i32 0, i32 14
  %48 = load i64, i64* %root_window49, align 8
  %49 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data50 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 62
  %x51 = bitcast %union.output_data* %output_data50 to %struct.x_output**
  %50 = load %struct.x_output*, %struct.x_output** %x51, align 8
  %parent_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %50, i32 0, i32 11
  store i64 %48, i64* %parent_desc, align 8
  %51 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data52 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 62
  %x53 = bitcast %union.output_data* %output_data52 to %struct.x_output**
  %52 = load %struct.x_output*, %struct.x_output** %x53, align 8
  %explicit_parent = getelementptr inbounds %struct.x_output, %struct.x_output* %52, i32 0, i32 46
  %bf.load54 = load i8, i8* %explicit_parent, align 8
  %bf.clear55 = and i8 %bf.load54, -3
  store i8 %bf.clear55, i8* %explicit_parent, align 8
  %53 = load %struct.frame*, %struct.frame** %f, align 8
  %foreground_pixel = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 78
  store i64 -1, i64* %foreground_pixel, align 8
  %54 = load %struct.frame*, %struct.frame** %f, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 77
  store i64 -1, i64* %background_pixel, align 8
  %55 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data56 = getelementptr inbounds %struct.frame, %struct.frame* %55, i32 0, i32 62
  %x57 = bitcast %union.output_data* %output_data56 to %struct.x_output**
  %56 = load %struct.x_output*, %struct.x_output** %x57, align 8
  %cursor_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %56, i32 0, i32 28
  store i64 -1, i64* %cursor_pixel, align 8
  %57 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data58 = getelementptr inbounds %struct.frame, %struct.frame* %57, i32 0, i32 62
  %x59 = bitcast %union.output_data* %output_data58 to %struct.x_output**
  %58 = load %struct.x_output*, %struct.x_output** %x59, align 8
  %cursor_foreground_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %58, i32 0, i32 31
  store i64 -1, i64* %cursor_foreground_pixel, align 8
  %59 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data60 = getelementptr inbounds %struct.frame, %struct.frame* %59, i32 0, i32 62
  %x61 = bitcast %union.output_data* %output_data60 to %struct.x_output**
  %60 = load %struct.x_output*, %struct.x_output** %x61, align 8
  %border_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %60, i32 0, i32 29
  store i64 -1, i64* %border_pixel, align 8
  %61 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data62 = getelementptr inbounds %struct.frame, %struct.frame* %61, i32 0, i32 62
  %x63 = bitcast %union.output_data* %output_data62 to %struct.x_output**
  %62 = load %struct.x_output*, %struct.x_output** %x63, align 8
  %mouse_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %62, i32 0, i32 30
  store i64 -1, i64* %mouse_pixel, align 8
  %call64 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  store i64 %call64, i64* %black, align 8
  %63 = load %struct.frame*, %struct.frame** %f, align 8
  %64 = load i64, i64* %black, align 8
  %65 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data65 = getelementptr inbounds %struct.frame, %struct.frame* %65, i32 0, i32 62
  %x66 = bitcast %union.output_data* %output_data65 to %struct.x_output**
  %66 = load %struct.x_output*, %struct.x_output** %x66, align 8
  %display_info67 = getelementptr inbounds %struct.x_output, %struct.x_output* %66, i32 0, i32 44
  %67 = load %struct.x_display_info*, %struct.x_display_info** %display_info67, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %67, i32 0, i32 6
  %68 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call68 = call i32 @XScreenNumberOfScreen(%struct.Screen* %68)
  %idxprom = sext i32 %call68 to i64
  %69 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data69 = getelementptr inbounds %struct.frame, %struct.frame* %69, i32 0, i32 62
  %x70 = bitcast %union.output_data* %output_data69 to %struct.x_output**
  %70 = load %struct.x_output*, %struct.x_output** %x70, align 8
  %display_info71 = getelementptr inbounds %struct.x_output, %struct.x_output* %70, i32 0, i32 44
  %71 = load %struct.x_display_info*, %struct.x_display_info** %display_info71, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %71, i32 0, i32 2
  %72 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %73 = bitcast %struct._XDisplay* %72 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %73, i32 0, i32 35
  %74 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %74, i64 %idxprom
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 14
  %75 = load i64, i64* %black_pixel, align 8
  %conv = trunc i64 %75 to i32
  %call72 = call i32 @x_decode_color(%struct.frame* %63, i64 %64, i32 %conv)
  %conv73 = sext i32 %call72 to i64
  %76 = load %struct.frame*, %struct.frame** %f, align 8
  %foreground_pixel74 = getelementptr inbounds %struct.frame, %struct.frame* %76, i32 0, i32 78
  store i64 %conv73, i64* %foreground_pixel74, align 8
  %77 = load %struct.frame*, %struct.frame** %f, align 8
  %78 = load i64, i64* %black, align 8
  %79 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data75 = getelementptr inbounds %struct.frame, %struct.frame* %79, i32 0, i32 62
  %x76 = bitcast %union.output_data* %output_data75 to %struct.x_output**
  %80 = load %struct.x_output*, %struct.x_output** %x76, align 8
  %display_info77 = getelementptr inbounds %struct.x_output, %struct.x_output* %80, i32 0, i32 44
  %81 = load %struct.x_display_info*, %struct.x_display_info** %display_info77, align 8
  %screen78 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %81, i32 0, i32 6
  %82 = load %struct.Screen*, %struct.Screen** %screen78, align 8
  %call79 = call i32 @XScreenNumberOfScreen(%struct.Screen* %82)
  %idxprom80 = sext i32 %call79 to i64
  %83 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data81 = getelementptr inbounds %struct.frame, %struct.frame* %83, i32 0, i32 62
  %x82 = bitcast %union.output_data* %output_data81 to %struct.x_output**
  %84 = load %struct.x_output*, %struct.x_output** %x82, align 8
  %display_info83 = getelementptr inbounds %struct.x_output, %struct.x_output* %84, i32 0, i32 44
  %85 = load %struct.x_display_info*, %struct.x_display_info** %display_info83, align 8
  %display84 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %85, i32 0, i32 2
  %86 = load %struct._XDisplay*, %struct._XDisplay** %display84, align 8
  %87 = bitcast %struct._XDisplay* %86 to %struct.anon.11*
  %screens85 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %87, i32 0, i32 35
  %88 = load %struct.Screen*, %struct.Screen** %screens85, align 8
  %arrayidx86 = getelementptr inbounds %struct.Screen, %struct.Screen* %88, i64 %idxprom80
  %black_pixel87 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx86, i32 0, i32 14
  %89 = load i64, i64* %black_pixel87, align 8
  %conv88 = trunc i64 %89 to i32
  %call89 = call i32 @x_decode_color(%struct.frame* %77, i64 %78, i32 %conv88)
  %conv90 = sext i32 %call89 to i64
  %90 = load %struct.frame*, %struct.frame** %f, align 8
  %background_pixel91 = getelementptr inbounds %struct.frame, %struct.frame* %90, i32 0, i32 77
  store i64 %conv90, i64* %background_pixel91, align 8
  %91 = load %struct.frame*, %struct.frame** %f, align 8
  %92 = load i64, i64* %black, align 8
  %93 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data92 = getelementptr inbounds %struct.frame, %struct.frame* %93, i32 0, i32 62
  %x93 = bitcast %union.output_data* %output_data92 to %struct.x_output**
  %94 = load %struct.x_output*, %struct.x_output** %x93, align 8
  %display_info94 = getelementptr inbounds %struct.x_output, %struct.x_output* %94, i32 0, i32 44
  %95 = load %struct.x_display_info*, %struct.x_display_info** %display_info94, align 8
  %screen95 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %95, i32 0, i32 6
  %96 = load %struct.Screen*, %struct.Screen** %screen95, align 8
  %call96 = call i32 @XScreenNumberOfScreen(%struct.Screen* %96)
  %idxprom97 = sext i32 %call96 to i64
  %97 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data98 = getelementptr inbounds %struct.frame, %struct.frame* %97, i32 0, i32 62
  %x99 = bitcast %union.output_data* %output_data98 to %struct.x_output**
  %98 = load %struct.x_output*, %struct.x_output** %x99, align 8
  %display_info100 = getelementptr inbounds %struct.x_output, %struct.x_output* %98, i32 0, i32 44
  %99 = load %struct.x_display_info*, %struct.x_display_info** %display_info100, align 8
  %display101 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %99, i32 0, i32 2
  %100 = load %struct._XDisplay*, %struct._XDisplay** %display101, align 8
  %101 = bitcast %struct._XDisplay* %100 to %struct.anon.11*
  %screens102 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %101, i32 0, i32 35
  %102 = load %struct.Screen*, %struct.Screen** %screens102, align 8
  %arrayidx103 = getelementptr inbounds %struct.Screen, %struct.Screen* %102, i64 %idxprom97
  %black_pixel104 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx103, i32 0, i32 14
  %103 = load i64, i64* %black_pixel104, align 8
  %conv105 = trunc i64 %103 to i32
  %call106 = call i32 @x_decode_color(%struct.frame* %91, i64 %92, i32 %conv105)
  %conv107 = sext i32 %call106 to i64
  %104 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data108 = getelementptr inbounds %struct.frame, %struct.frame* %104, i32 0, i32 62
  %x109 = bitcast %union.output_data* %output_data108 to %struct.x_output**
  %105 = load %struct.x_output*, %struct.x_output** %x109, align 8
  %cursor_pixel110 = getelementptr inbounds %struct.x_output, %struct.x_output* %105, i32 0, i32 28
  store i64 %conv107, i64* %cursor_pixel110, align 8
  %106 = load %struct.frame*, %struct.frame** %f, align 8
  %107 = load i64, i64* %black, align 8
  %108 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data111 = getelementptr inbounds %struct.frame, %struct.frame* %108, i32 0, i32 62
  %x112 = bitcast %union.output_data* %output_data111 to %struct.x_output**
  %109 = load %struct.x_output*, %struct.x_output** %x112, align 8
  %display_info113 = getelementptr inbounds %struct.x_output, %struct.x_output* %109, i32 0, i32 44
  %110 = load %struct.x_display_info*, %struct.x_display_info** %display_info113, align 8
  %screen114 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %110, i32 0, i32 6
  %111 = load %struct.Screen*, %struct.Screen** %screen114, align 8
  %call115 = call i32 @XScreenNumberOfScreen(%struct.Screen* %111)
  %idxprom116 = sext i32 %call115 to i64
  %112 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data117 = getelementptr inbounds %struct.frame, %struct.frame* %112, i32 0, i32 62
  %x118 = bitcast %union.output_data* %output_data117 to %struct.x_output**
  %113 = load %struct.x_output*, %struct.x_output** %x118, align 8
  %display_info119 = getelementptr inbounds %struct.x_output, %struct.x_output* %113, i32 0, i32 44
  %114 = load %struct.x_display_info*, %struct.x_display_info** %display_info119, align 8
  %display120 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %114, i32 0, i32 2
  %115 = load %struct._XDisplay*, %struct._XDisplay** %display120, align 8
  %116 = bitcast %struct._XDisplay* %115 to %struct.anon.11*
  %screens121 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %116, i32 0, i32 35
  %117 = load %struct.Screen*, %struct.Screen** %screens121, align 8
  %arrayidx122 = getelementptr inbounds %struct.Screen, %struct.Screen* %117, i64 %idxprom116
  %black_pixel123 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx122, i32 0, i32 14
  %118 = load i64, i64* %black_pixel123, align 8
  %conv124 = trunc i64 %118 to i32
  %call125 = call i32 @x_decode_color(%struct.frame* %106, i64 %107, i32 %conv124)
  %conv126 = sext i32 %call125 to i64
  %119 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data127 = getelementptr inbounds %struct.frame, %struct.frame* %119, i32 0, i32 62
  %x128 = bitcast %union.output_data* %output_data127 to %struct.x_output**
  %120 = load %struct.x_output*, %struct.x_output** %x128, align 8
  %cursor_foreground_pixel129 = getelementptr inbounds %struct.x_output, %struct.x_output* %120, i32 0, i32 31
  store i64 %conv126, i64* %cursor_foreground_pixel129, align 8
  %121 = load %struct.frame*, %struct.frame** %f, align 8
  %122 = load i64, i64* %black, align 8
  %123 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data130 = getelementptr inbounds %struct.frame, %struct.frame* %123, i32 0, i32 62
  %x131 = bitcast %union.output_data* %output_data130 to %struct.x_output**
  %124 = load %struct.x_output*, %struct.x_output** %x131, align 8
  %display_info132 = getelementptr inbounds %struct.x_output, %struct.x_output* %124, i32 0, i32 44
  %125 = load %struct.x_display_info*, %struct.x_display_info** %display_info132, align 8
  %screen133 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %125, i32 0, i32 6
  %126 = load %struct.Screen*, %struct.Screen** %screen133, align 8
  %call134 = call i32 @XScreenNumberOfScreen(%struct.Screen* %126)
  %idxprom135 = sext i32 %call134 to i64
  %127 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data136 = getelementptr inbounds %struct.frame, %struct.frame* %127, i32 0, i32 62
  %x137 = bitcast %union.output_data* %output_data136 to %struct.x_output**
  %128 = load %struct.x_output*, %struct.x_output** %x137, align 8
  %display_info138 = getelementptr inbounds %struct.x_output, %struct.x_output* %128, i32 0, i32 44
  %129 = load %struct.x_display_info*, %struct.x_display_info** %display_info138, align 8
  %display139 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %129, i32 0, i32 2
  %130 = load %struct._XDisplay*, %struct._XDisplay** %display139, align 8
  %131 = bitcast %struct._XDisplay* %130 to %struct.anon.11*
  %screens140 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %131, i32 0, i32 35
  %132 = load %struct.Screen*, %struct.Screen** %screens140, align 8
  %arrayidx141 = getelementptr inbounds %struct.Screen, %struct.Screen* %132, i64 %idxprom135
  %black_pixel142 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx141, i32 0, i32 14
  %133 = load i64, i64* %black_pixel142, align 8
  %conv143 = trunc i64 %133 to i32
  %call144 = call i32 @x_decode_color(%struct.frame* %121, i64 %122, i32 %conv143)
  %conv145 = sext i32 %call144 to i64
  %134 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data146 = getelementptr inbounds %struct.frame, %struct.frame* %134, i32 0, i32 62
  %x147 = bitcast %union.output_data* %output_data146 to %struct.x_output**
  %135 = load %struct.x_output*, %struct.x_output** %x147, align 8
  %border_pixel148 = getelementptr inbounds %struct.x_output, %struct.x_output* %135, i32 0, i32 29
  store i64 %conv145, i64* %border_pixel148, align 8
  %136 = load %struct.frame*, %struct.frame** %f, align 8
  %137 = load i64, i64* %black, align 8
  %138 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data149 = getelementptr inbounds %struct.frame, %struct.frame* %138, i32 0, i32 62
  %x150 = bitcast %union.output_data* %output_data149 to %struct.x_output**
  %139 = load %struct.x_output*, %struct.x_output** %x150, align 8
  %display_info151 = getelementptr inbounds %struct.x_output, %struct.x_output* %139, i32 0, i32 44
  %140 = load %struct.x_display_info*, %struct.x_display_info** %display_info151, align 8
  %screen152 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %140, i32 0, i32 6
  %141 = load %struct.Screen*, %struct.Screen** %screen152, align 8
  %call153 = call i32 @XScreenNumberOfScreen(%struct.Screen* %141)
  %idxprom154 = sext i32 %call153 to i64
  %142 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data155 = getelementptr inbounds %struct.frame, %struct.frame* %142, i32 0, i32 62
  %x156 = bitcast %union.output_data* %output_data155 to %struct.x_output**
  %143 = load %struct.x_output*, %struct.x_output** %x156, align 8
  %display_info157 = getelementptr inbounds %struct.x_output, %struct.x_output* %143, i32 0, i32 44
  %144 = load %struct.x_display_info*, %struct.x_display_info** %display_info157, align 8
  %display158 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %144, i32 0, i32 2
  %145 = load %struct._XDisplay*, %struct._XDisplay** %display158, align 8
  %146 = bitcast %struct._XDisplay* %145 to %struct.anon.11*
  %screens159 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %146, i32 0, i32 35
  %147 = load %struct.Screen*, %struct.Screen** %screens159, align 8
  %arrayidx160 = getelementptr inbounds %struct.Screen, %struct.Screen* %147, i64 %idxprom154
  %black_pixel161 = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx160, i32 0, i32 14
  %148 = load i64, i64* %black_pixel161, align 8
  %conv162 = trunc i64 %148 to i32
  %call163 = call i32 @x_decode_color(%struct.frame* %136, i64 %137, i32 %conv162)
  %conv164 = sext i32 %call163 to i64
  %149 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data165 = getelementptr inbounds %struct.frame, %struct.frame* %149, i32 0, i32 62
  %x166 = bitcast %union.output_data* %output_data165 to %struct.x_output**
  %150 = load %struct.x_output*, %struct.x_output** %x166, align 8
  %mouse_pixel167 = getelementptr inbounds %struct.x_output, %struct.x_output* %150, i32 0, i32 30
  store i64 %conv164, i64* %mouse_pixel167, align 8
  %151 = load i64, i64* %name, align 8
  %call168 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp169 = icmp eq i64 %151, %call168
  br i1 %cmp169, label %if.then.174, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %152 = load i64, i64* %name, align 8
  %call171 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp172 = icmp eq i64 %152, %call171
  br i1 %cmp172, label %if.then.174, label %if.else

if.then.174:                                      ; preds = %lor.lhs.false, %if.end.12
  %153 = load %struct.frame*, %struct.frame** %f, align 8
  %154 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %x_id_name = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %154, i32 0, i32 27
  %155 = load i8*, i8** %x_id_name, align 8
  %call175 = call i64 @build_string(i8* %155)
  call void @fset_name(%struct.frame* %153, i64 %call175)
  %156 = load %struct.frame*, %struct.frame** %f, align 8
  %explicit_name = getelementptr inbounds %struct.frame, %struct.frame* %156, i32 0, i32 26
  %157 = bitcast i48* %explicit_name to i64*
  %bf.load176 = load i64, i64* %157, align 8
  %bf.clear177 = and i64 %bf.load176, -262145
  store i64 %bf.clear177, i64* %157, align 8
  br label %if.end.183

if.else:                                          ; preds = %lor.lhs.false
  %158 = load %struct.frame*, %struct.frame** %f, align 8
  %159 = load i64, i64* %name, align 8
  call void @fset_name(%struct.frame* %158, i64 %159)
  %160 = load %struct.frame*, %struct.frame** %f, align 8
  %explicit_name178 = getelementptr inbounds %struct.frame, %struct.frame* %160, i32 0, i32 26
  %161 = bitcast i48* %explicit_name178 to i64*
  %bf.load179 = load i64, i64* %161, align 8
  %bf.clear180 = and i64 %bf.load179, -262145
  %bf.set181 = or i64 %bf.clear180, 262144
  store i64 %bf.set181, i64* %161, align 8
  %call182 = call i64 @builtin_lisp_symbol(i32 1054)
  %162 = load i64, i64* %name, align 8
  call void @specbind(i64 %call182, i64 %162)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else, %if.then.174
  %163 = load %struct.frame*, %struct.frame** %f, align 8
  call void @register_font_driver(%struct.font_driver* @xfont_driver, %struct.frame* %163)
  %164 = load %struct.frame*, %struct.frame** %f, align 8
  call void @register_font_driver(%struct.font_driver* @xftfont_driver, %struct.frame* %164)
  %165 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal184 = getelementptr inbounds %struct.frame, %struct.frame* %165, i32 0, i32 61
  %166 = load %struct.terminal*, %struct.terminal** %terminal184, align 8
  %image_cache = getelementptr inbounds %struct.terminal, %struct.terminal* %166, i32 0, i32 11
  %167 = load %struct.image_cache*, %struct.image_cache** %image_cache, align 8
  %tobool185 = icmp ne %struct.image_cache* %167, null
  br i1 %tobool185, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.183
  %168 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal186 = getelementptr inbounds %struct.frame, %struct.frame* %168, i32 0, i32 61
  %169 = load %struct.terminal*, %struct.terminal** %terminal186, align 8
  %image_cache187 = getelementptr inbounds %struct.terminal, %struct.terminal* %169, i32 0, i32 11
  %170 = load %struct.image_cache*, %struct.image_cache** %image_cache187, align 8
  %refcount = getelementptr inbounds %struct.image_cache, %struct.image_cache* %170, i32 0, i32 4
  %171 = load i64, i64* %refcount, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.183
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %171, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* @image_cache_refcount, align 8
  %172 = load %struct.frame*, %struct.frame** %f, align 8
  %173 = load i64, i64* %parms.addr, align 8
  %call188 = call i64 @builtin_lisp_symbol(i32 440)
  %call189 = call i64 @builtin_lisp_symbol(i32 0)
  %call190 = call i64 @x_default_parameter(%struct.frame* %172, i64 %173, i64 %call188, i64 %call189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 3)
  %174 = load %struct.frame*, %struct.frame** %f, align 8
  %175 = load i64, i64* %parms.addr, align 8
  call void @x_default_font_parameter(%struct.frame* %174, i64 %175)
  %176 = load %struct.frame*, %struct.frame** %f, align 8
  %177 = load i64, i64* %parms.addr, align 8
  %call191 = call i64 @builtin_lisp_symbol(i32 210)
  %call192 = call i64 @x_default_parameter(%struct.frame* %176, i64 %177, i64 %call191, i64 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 0)
  %call193 = call i64 @builtin_lisp_symbol(i32 563)
  %178 = load i64, i64* %parms.addr, align 8
  %call194 = call i64 @Fassq(i64 %call193, i64 %178)
  %call195 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp196 = icmp eq i64 %call194, %call195
  br i1 %cmp196, label %if.then.198, label %if.end.209

if.then.198:                                      ; preds = %cond.end
  %179 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %180 = load i64, i64* %parms.addr, align 8
  %call199 = call i64 @builtin_lisp_symbol(i32 563)
  %call200 = call i64 @x_get_arg(%struct.x_display_info* %179, i64 %180, i64 %call199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 0)
  store i64 %call200, i64* %value, align 8
  %181 = load i64, i64* %value, align 8
  %call201 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp202 = icmp eq i64 %181, %call201
  br i1 %cmp202, label %if.end.208, label %if.then.204

if.then.204:                                      ; preds = %if.then.198
  %call205 = call i64 @builtin_lisp_symbol(i32 563)
  %182 = load i64, i64* %value, align 8
  %call206 = call i64 @Fcons(i64 %call205, i64 %182)
  %183 = load i64, i64* %parms.addr, align 8
  %call207 = call i64 @Fcons(i64 %call206, i64 %183)
  store i64 %call207, i64* %parms.addr, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.204, %if.then.198
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %cond.end
  %184 = load %struct.frame*, %struct.frame** %f, align 8
  %185 = load i64, i64* %parms.addr, align 8
  %call210 = call i64 @builtin_lisp_symbol(i32 563)
  %call211 = call i64 @x_default_parameter(%struct.frame* %184, i64 %185, i64 %call210, i64 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %186 = load %struct.frame*, %struct.frame** %f, align 8
  %187 = load i64, i64* %parms.addr, align 8
  %call212 = call i64 @builtin_lisp_symbol(i32 813)
  %call213 = call i64 @x_default_parameter(%struct.frame* %186, i64 %187, i64 %call212, i64 2, i8* null, i8* null, i32 0)
  %188 = load %struct.frame*, %struct.frame** %f, align 8
  %189 = load i64, i64* %parms.addr, align 8
  %call214 = call i64 @builtin_lisp_symbol(i32 215)
  %call215 = call i64 @x_default_parameter(%struct.frame* %188, i64 %189, i64 %call214, i64 2, i8* null, i8* null, i32 0)
  %190 = load %struct.frame*, %struct.frame** %f, align 8
  %191 = load i64, i64* %parms.addr, align 8
  %call216 = call i64 @builtin_lisp_symbol(i32 451)
  %call217 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call218 = call i64 @x_default_parameter(%struct.frame* %190, i64 %191, i64 %call216, i64 %call217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3)
  %192 = load %struct.frame*, %struct.frame** %f, align 8
  %193 = load i64, i64* %parms.addr, align 8
  %call219 = call i64 @builtin_lisp_symbol(i32 193)
  %call220 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0))
  %call221 = call i64 @x_default_parameter(%struct.frame* %192, i64 %193, i64 %call219, i64 %call220, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 3)
  %194 = load %struct.frame*, %struct.frame** %f, align 8
  %195 = load i64, i64* %parms.addr, align 8
  %call222 = call i64 @builtin_lisp_symbol(i32 686)
  %call223 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call224 = call i64 @x_default_parameter(%struct.frame* %194, i64 %195, i64 %call222, i64 %call223, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3)
  %196 = load %struct.frame*, %struct.frame** %f, align 8
  %197 = load i64, i64* %parms.addr, align 8
  %call225 = call i64 @builtin_lisp_symbol(i32 307)
  %call226 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call227 = call i64 @x_default_parameter(%struct.frame* %196, i64 %197, i64 %call225, i64 %call226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3)
  %198 = load %struct.frame*, %struct.frame** %f, align 8
  %199 = load i64, i64* %parms.addr, align 8
  %call228 = call i64 @builtin_lisp_symbol(i32 209)
  %call229 = call i64 @build_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call230 = call i64 @x_default_parameter(%struct.frame* %198, i64 %199, i64 %call228, i64 %call229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 3)
  %200 = load %struct.frame*, %struct.frame** %f, align 8
  call void @init_frame_faces(%struct.frame* %200)
  %201 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data231 = getelementptr inbounds %struct.frame, %struct.frame* %201, i32 0, i32 62
  %x232 = bitcast %union.output_data* %output_data231 to %struct.x_output**
  %202 = load %struct.x_output*, %struct.x_output** %x232, align 8
  %display_info233 = getelementptr inbounds %struct.x_output, %struct.x_output* %202, i32 0, i32 44
  %203 = load %struct.x_display_info*, %struct.x_display_info** %display_info233, align 8
  %root_window234 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %203, i32 0, i32 14
  %204 = load i64, i64* %root_window234, align 8
  %205 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data235 = getelementptr inbounds %struct.frame, %struct.frame* %205, i32 0, i32 62
  %x236 = bitcast %union.output_data* %output_data235 to %struct.x_output**
  %206 = load %struct.x_output*, %struct.x_output** %x236, align 8
  %parent_desc237 = getelementptr inbounds %struct.x_output, %struct.x_output* %206, i32 0, i32 11
  store i64 %204, i64* %parent_desc237, align 8
  %207 = load %struct.frame*, %struct.frame** %f, align 8
  %208 = load i64, i64* %parms.addr, align 8
  %call238 = call i64 @x_figure_window_size(%struct.frame* %207, i64 %208, i1 zeroext false, i32* %x_width, i32* %x_height)
  %209 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data239 = getelementptr inbounds %struct.frame, %struct.frame* %209, i32 0, i32 62
  %x240 = bitcast %union.output_data* %output_data239 to %struct.x_output**
  %210 = load %struct.x_output*, %struct.x_output** %x240, align 8
  %display_info241 = getelementptr inbounds %struct.x_output, %struct.x_output* %210, i32 0, i32 44
  %211 = load %struct.x_display_info*, %struct.x_display_info** %display_info241, align 8
  %Xatom_net_window_type_tooltip = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %211, i32 0, i32 107
  %212 = load i64, i64* %Xatom_net_window_type_tooltip, align 8
  store i64 %212, i64* %type, align 8
  call void @block_input()
  store i64 18946, i64* %mask, align 8
  %213 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %screen242 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %213, i32 0, i32 6
  %214 = load %struct.Screen*, %struct.Screen** %screen242, align 8
  %save_unders = getelementptr inbounds %struct.Screen, %struct.Screen* %214, i32 0, i32 18
  %215 = load i32, i32* %save_unders, align 4
  %tobool243 = icmp ne i32 %215, 0
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.209
  %216 = load i64, i64* %mask, align 8
  %or = or i64 %216, 1024
  store i64 %or, i64* %mask, align 8
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %if.end.209
  %override_redirect = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %attrs, i32 0, i32 12
  store i32 1, i32* %override_redirect, align 4
  %save_under = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %attrs, i32 0, i32 9
  store i32 1, i32* %save_under, align 4
  %217 = load %struct.frame*, %struct.frame** %f, align 8
  %background_pixel246 = getelementptr inbounds %struct.frame, %struct.frame* %217, i32 0, i32 77
  %218 = load i64, i64* %background_pixel246, align 8
  %background_pixel247 = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %attrs, i32 0, i32 1
  store i64 %218, i64* %background_pixel247, align 8
  %219 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data248 = getelementptr inbounds %struct.frame, %struct.frame* %219, i32 0, i32 62
  %x249 = bitcast %union.output_data* %output_data248 to %struct.x_output**
  %220 = load %struct.x_output*, %struct.x_output** %x249, align 8
  %text_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %220, i32 0, i32 34
  %221 = load i64, i64* %text_cursor, align 8
  %222 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data250 = getelementptr inbounds %struct.frame, %struct.frame* %222, i32 0, i32 62
  %x251 = bitcast %union.output_data* %output_data250 to %struct.x_output**
  %223 = load %struct.x_output*, %struct.x_output** %x251, align 8
  %current_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %223, i32 0, i32 41
  store i64 %221, i64* %current_cursor, align 8
  %cursor = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %attrs, i32 0, i32 14
  store i64 %221, i64* %cursor, align 8
  %event_mask = getelementptr inbounds %struct.XSetWindowAttributes, %struct.XSetWindowAttributes* %attrs, i32 0, i32 10
  store i64 131072, i64* %event_mask, align 8
  %224 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data252 = getelementptr inbounds %struct.frame, %struct.frame* %224, i32 0, i32 62
  %x253 = bitcast %union.output_data* %output_data252 to %struct.x_output**
  %225 = load %struct.x_output*, %struct.x_output** %x253, align 8
  %display_info254 = getelementptr inbounds %struct.x_output, %struct.x_output* %225, i32 0, i32 44
  %226 = load %struct.x_display_info*, %struct.x_display_info** %display_info254, align 8
  %display255 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %226, i32 0, i32 2
  %227 = load %struct._XDisplay*, %struct._XDisplay** %display255, align 8
  %228 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data256 = getelementptr inbounds %struct.frame, %struct.frame* %228, i32 0, i32 62
  %x257 = bitcast %union.output_data* %output_data256 to %struct.x_output**
  %229 = load %struct.x_output*, %struct.x_output** %x257, align 8
  %display_info258 = getelementptr inbounds %struct.x_output, %struct.x_output* %229, i32 0, i32 44
  %230 = load %struct.x_display_info*, %struct.x_display_info** %display_info258, align 8
  %root_window259 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %230, i32 0, i32 14
  %231 = load i64, i64* %root_window259, align 8
  %232 = load %struct.frame*, %struct.frame** %f, align 8
  %border_width = getelementptr inbounds %struct.frame, %struct.frame* %232, i32 0, i32 50
  %233 = load i32, i32* %border_width, align 4
  %234 = load i64, i64* %mask, align 8
  %call260 = call i64 @XCreateWindow(%struct._XDisplay* %227, i64 %231, i32 0, i32 0, i32 1, i32 1, i32 %233, i32 0, i32 1, %struct.Visual* null, i64 %234, %struct.XSetWindowAttributes* %attrs)
  %235 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data261 = getelementptr inbounds %struct.frame, %struct.frame* %235, i32 0, i32 62
  %x262 = bitcast %union.output_data* %output_data261 to %struct.x_output**
  %236 = load %struct.x_output*, %struct.x_output** %x262, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %236, i32 0, i32 9
  store i64 %call260, i64* %window_desc, align 8
  store i64 %call260, i64* @tip_window, align 8
  %237 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data263 = getelementptr inbounds %struct.frame, %struct.frame* %237, i32 0, i32 62
  %x264 = bitcast %union.output_data* %output_data263 to %struct.x_output**
  %238 = load %struct.x_output*, %struct.x_output** %x264, align 8
  %display_info265 = getelementptr inbounds %struct.x_output, %struct.x_output* %238, i32 0, i32 44
  %239 = load %struct.x_display_info*, %struct.x_display_info** %display_info265, align 8
  %display266 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %239, i32 0, i32 2
  %240 = load %struct._XDisplay*, %struct._XDisplay** %display266, align 8
  %241 = load i64, i64* @tip_window, align 8
  %242 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data267 = getelementptr inbounds %struct.frame, %struct.frame* %242, i32 0, i32 62
  %x268 = bitcast %union.output_data* %output_data267 to %struct.x_output**
  %243 = load %struct.x_output*, %struct.x_output** %x268, align 8
  %display_info269 = getelementptr inbounds %struct.x_output, %struct.x_output* %243, i32 0, i32 44
  %244 = load %struct.x_display_info*, %struct.x_display_info** %display_info269, align 8
  %Xatom_net_window_type = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %244, i32 0, i32 106
  %245 = load i64, i64* %Xatom_net_window_type, align 8
  %246 = bitcast i64* %type to i8*
  %call270 = call i32 @XChangeProperty(%struct._XDisplay* %240, i64 %241, i64 %245, i64 4, i32 32, i32 0, i8* %246, i32 1)
  call void @unblock_input()
  %247 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_make_gc(%struct.frame* %247)
  %248 = load %struct.frame*, %struct.frame** %f, align 8
  %249 = load i64, i64* %parms.addr, align 8
  %call271 = call i64 @builtin_lisp_symbol(i32 189)
  %call272 = call i64 @builtin_lisp_symbol(i32 0)
  %call273 = call i64 @x_default_parameter(%struct.frame* %248, i64 %249, i64 %call271, i64 %call272, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 2)
  %250 = load %struct.frame*, %struct.frame** %f, align 8
  %251 = load i64, i64* %parms.addr, align 8
  %call274 = call i64 @builtin_lisp_symbol(i32 188)
  %call275 = call i64 @builtin_lisp_symbol(i32 0)
  %call276 = call i64 @x_default_parameter(%struct.frame* %250, i64 %251, i64 %call274, i64 %call275, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 2)
  %252 = load %struct.frame*, %struct.frame** %f, align 8
  %253 = load i64, i64* %parms.addr, align 8
  %call277 = call i64 @builtin_lisp_symbol(i32 309)
  %call278 = call i64 @builtin_lisp_symbol(i32 218)
  %call279 = call i64 @x_default_parameter(%struct.frame* %252, i64 %253, i64 %call277, i64 %call278, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i32 4)
  %254 = load %struct.frame*, %struct.frame** %f, align 8
  %255 = load i64, i64* %parms.addr, align 8
  %call280 = call i64 @builtin_lisp_symbol(i32 170)
  %call281 = call i64 @builtin_lisp_symbol(i32 0)
  %call282 = call i64 @x_default_parameter(%struct.frame* %254, i64 %255, i64 %call280, i64 %call281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 0)
  %256 = load %struct.frame*, %struct.frame** %f, align 8
  %text_cols = getelementptr inbounds %struct.frame, %struct.frame* %256, i32 0, i32 36
  %257 = load i32, i32* %text_cols, align 4
  store i32 %257, i32* %width, align 4
  %258 = load %struct.frame*, %struct.frame** %f, align 8
  %text_lines = getelementptr inbounds %struct.frame, %struct.frame* %258, i32 0, i32 37
  %259 = load i32, i32* %text_lines, align 4
  store i32 %259, i32* %height, align 4
  %260 = load %struct.frame*, %struct.frame** %f, align 8
  %text_cols283 = getelementptr inbounds %struct.frame, %struct.frame* %260, i32 0, i32 36
  store i32 0, i32* %text_cols283, align 4
  %261 = load %struct.frame*, %struct.frame** %f, align 8
  %vertical_scroll_bar_type = getelementptr inbounds %struct.frame, %struct.frame* %261, i32 0, i32 26
  %262 = bitcast i48* %vertical_scroll_bar_type to i64*
  %bf.load284 = load i64, i64* %262, align 8
  %bf.lshr = lshr i64 %bf.load284, 30
  %bf.clear285 = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear285 to i32
  %cmp286 = icmp ne i32 %bf.cast, 0
  br i1 %cmp286, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %if.end.245
  %263 = load %struct.frame*, %struct.frame** %f, align 8
  %config_scroll_bar_cols = getelementptr inbounds %struct.frame, %struct.frame* %263, i32 0, i32 70
  %264 = load i32, i32* %config_scroll_bar_cols, align 4
  br label %cond.end.290

cond.false.289:                                   ; preds = %if.end.245
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.288
  %cond291 = phi i32 [ %264, %cond.true.288 ], [ 0, %cond.false.289 ]
  %add = add nsw i32 0, %cond291
  %265 = load %struct.frame*, %struct.frame** %f, align 8
  %fringe_cols = getelementptr inbounds %struct.frame, %struct.frame* %265, i32 0, i32 56
  %266 = load i32, i32* %fringe_cols, align 4
  %add292 = add nsw i32 %add, %266
  %267 = load %struct.frame*, %struct.frame** %f, align 8
  %total_cols = getelementptr inbounds %struct.frame, %struct.frame* %267, i32 0, i32 38
  store i32 %add292, i32* %total_cols, align 4
  %268 = load %struct.frame*, %struct.frame** %f, align 8
  %text_lines293 = getelementptr inbounds %struct.frame, %struct.frame* %268, i32 0, i32 37
  store i32 0, i32* %text_lines293, align 4
  %269 = load %struct.frame*, %struct.frame** %f, align 8
  %menu_bar_lines = getelementptr inbounds %struct.frame, %struct.frame* %269, i32 0, i32 57
  %270 = load i32, i32* %menu_bar_lines, align 4
  %271 = load %struct.frame*, %struct.frame** %f, align 8
  %tool_bar_lines = getelementptr inbounds %struct.frame, %struct.frame* %271, i32 0, i32 27
  %272 = load i32, i32* %tool_bar_lines, align 4
  %add294 = add nsw i32 %270, %272
  %add295 = add nsw i32 0, %add294
  %273 = load %struct.frame*, %struct.frame** %f, align 8
  %horizontal_scroll_bars = getelementptr inbounds %struct.frame, %struct.frame* %273, i32 0, i32 26
  %274 = bitcast i48* %horizontal_scroll_bars to i64*
  %bf.load296 = load i64, i64* %274, align 8
  %bf.lshr297 = lshr i64 %bf.load296, 32
  %bf.clear298 = and i64 %bf.lshr297, 1
  %bf.cast299 = trunc i64 %bf.clear298 to i1
  br i1 %bf.cast299, label %cond.true.301, label %cond.false.302

cond.true.301:                                    ; preds = %cond.end.290
  %275 = load %struct.frame*, %struct.frame** %f, align 8
  %config_scroll_bar_lines = getelementptr inbounds %struct.frame, %struct.frame* %275, i32 0, i32 72
  %276 = load i32, i32* %config_scroll_bar_lines, align 4
  br label %cond.end.303

cond.false.302:                                   ; preds = %cond.end.290
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.302, %cond.true.301
  %cond304 = phi i32 [ %276, %cond.true.301 ], [ 0, %cond.false.302 ]
  %add305 = add nsw i32 %add295, %cond304
  %277 = load %struct.frame*, %struct.frame** %f, align 8
  %total_lines = getelementptr inbounds %struct.frame, %struct.frame* %277, i32 0, i32 39
  store i32 %add305, i32* %total_lines, align 4
  %278 = load %struct.frame*, %struct.frame** %f, align 8
  %279 = load i32, i32* %width, align 4
  %280 = load i32, i32* %height, align 4
  call void @change_frame_size(%struct.frame* %278, i32 %279, i32 %280, i1 zeroext true, i1 zeroext false, i1 zeroext false, i1 zeroext false)
  %281 = load i64, i64* %frame, align 8
  %call306 = call i64 @builtin_lisp_symbol(i32 927)
  %call307 = call i64 @Fframe_parameter(i64 %281, i64 %call306)
  %call308 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp309 = icmp eq i64 %call307, %call308
  br i1 %cmp309, label %if.then.311, label %if.end.327

if.then.311:                                      ; preds = %cond.end.303
  %s313 = bitcast %union.Aligned_Cons* %.compoundliteral312 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s313, i32 0, i32 0
  %s315 = bitcast %union.Aligned_Cons* %.compoundliteral314 to %struct.Lisp_Cons*
  %car316 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s315, i32 0, i32 0
  %call317 = call i64 @builtin_lisp_symbol(i32 927)
  store i64 %call317, i64* %car316, align 8
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s315, i32 0, i32 1
  %cdr = bitcast %union.anon.12* %u to i64*
  %call318 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call318, i64* %cdr, align 8
  %s319 = bitcast %union.Aligned_Cons* %.compoundliteral314 to %struct.Lisp_Cons*
  %282 = bitcast %struct.Lisp_Cons* %s319 to i8*
  %call320 = call i64 @make_lisp_ptr(i8* %282, i32 3)
  store i64 %call320, i64* %car, align 8
  %u321 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s313, i32 0, i32 1
  %cdr322 = bitcast %union.anon.12* %u321 to i64*
  %call323 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call323, i64* %cdr322, align 8
  %s324 = bitcast %union.Aligned_Cons* %.compoundliteral312 to %struct.Lisp_Cons*
  %283 = bitcast %struct.Lisp_Cons* %s324 to i8*
  %call325 = call i64 @make_lisp_ptr(i8* %283, i32 3)
  store i64 %call325, i64* %arg, align 8
  %284 = load i64, i64* %frame, align 8
  %285 = load i64, i64* %arg, align 8
  %call326 = call i64 @Fmodify_frame_parameters(i64 %284, i64 %285)
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.311, %cond.end.303
  %286 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data328 = getelementptr inbounds %struct.frame, %struct.frame* %286, i32 0, i32 62
  %x329 = bitcast %union.output_data* %output_data328 to %struct.x_output**
  %287 = load %struct.x_output*, %struct.x_output** %x329, align 8
  %display_info330 = getelementptr inbounds %struct.x_output, %struct.x_output* %287, i32 0, i32 44
  %288 = load %struct.x_display_info*, %struct.x_display_info** %display_info330, align 8
  %n_planes = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %288, i32 0, i32 11
  %289 = load i32, i32* %n_planes, align 4
  %cmp331 = icmp eq i32 %289, 1
  br i1 %cmp331, label %if.then.333, label %if.else.335

if.then.333:                                      ; preds = %if.end.327
  %call334 = call i64 @builtin_lisp_symbol(i32 680)
  store i64 %call334, i64* %disptype, align 8
  br label %if.end.354

if.else.335:                                      ; preds = %if.end.327
  %290 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data336 = getelementptr inbounds %struct.frame, %struct.frame* %290, i32 0, i32 62
  %x337 = bitcast %union.output_data* %output_data336 to %struct.x_output**
  %291 = load %struct.x_output*, %struct.x_output** %x337, align 8
  %display_info338 = getelementptr inbounds %struct.x_output, %struct.x_output* %291, i32 0, i32 44
  %292 = load %struct.x_display_info*, %struct.x_display_info** %display_info338, align 8
  %visual = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %292, i32 0, i32 9
  %293 = load %struct.Visual*, %struct.Visual** %visual, align 8
  %class = getelementptr inbounds %struct.Visual, %struct.Visual* %293, i32 0, i32 2
  %294 = load i32, i32* %class, align 4
  %cmp339 = icmp eq i32 %294, 1
  br i1 %cmp339, label %if.then.349, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %if.else.335
  %295 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data342 = getelementptr inbounds %struct.frame, %struct.frame* %295, i32 0, i32 62
  %x343 = bitcast %union.output_data* %output_data342 to %struct.x_output**
  %296 = load %struct.x_output*, %struct.x_output** %x343, align 8
  %display_info344 = getelementptr inbounds %struct.x_output, %struct.x_output* %296, i32 0, i32 44
  %297 = load %struct.x_display_info*, %struct.x_display_info** %display_info344, align 8
  %visual345 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %297, i32 0, i32 9
  %298 = load %struct.Visual*, %struct.Visual** %visual345, align 8
  %class346 = getelementptr inbounds %struct.Visual, %struct.Visual* %298, i32 0, i32 2
  %299 = load i32, i32* %class346, align 4
  %cmp347 = icmp eq i32 %299, 0
  br i1 %cmp347, label %if.then.349, label %if.else.351

if.then.349:                                      ; preds = %lor.lhs.false.341, %if.else.335
  %call350 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.158, i32 0, i32 0))
  store i64 %call350, i64* %disptype, align 8
  br label %if.end.353

if.else.351:                                      ; preds = %lor.lhs.false.341
  %call352 = call i64 @intern(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0))
  store i64 %call352, i64* %disptype, align 8
  br label %if.end.353

if.end.353:                                       ; preds = %if.else.351, %if.then.349
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.then.333
  %300 = load i64, i64* %frame, align 8
  %call355 = call i64 @builtin_lisp_symbol(i32 347)
  %call356 = call i64 @Fframe_parameter(i64 %300, i64 %call355)
  %call357 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp358 = icmp eq i64 %call356, %call357
  br i1 %cmp358, label %if.then.360, label %if.end.379

if.then.360:                                      ; preds = %if.end.354
  %s363 = bitcast %union.Aligned_Cons* %.compoundliteral362 to %struct.Lisp_Cons*
  %car364 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s363, i32 0, i32 0
  %s366 = bitcast %union.Aligned_Cons* %.compoundliteral365 to %struct.Lisp_Cons*
  %car367 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s366, i32 0, i32 0
  %call368 = call i64 @builtin_lisp_symbol(i32 347)
  store i64 %call368, i64* %car367, align 8
  %u369 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s366, i32 0, i32 1
  %cdr370 = bitcast %union.anon.12* %u369 to i64*
  %301 = load i64, i64* %disptype, align 8
  store i64 %301, i64* %cdr370, align 8
  %s371 = bitcast %union.Aligned_Cons* %.compoundliteral365 to %struct.Lisp_Cons*
  %302 = bitcast %struct.Lisp_Cons* %s371 to i8*
  %call372 = call i64 @make_lisp_ptr(i8* %302, i32 3)
  store i64 %call372, i64* %car364, align 8
  %u373 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s363, i32 0, i32 1
  %cdr374 = bitcast %union.anon.12* %u373 to i64*
  %call375 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call375, i64* %cdr374, align 8
  %s376 = bitcast %union.Aligned_Cons* %.compoundliteral362 to %struct.Lisp_Cons*
  %303 = bitcast %struct.Lisp_Cons* %s376 to i8*
  %call377 = call i64 @make_lisp_ptr(i8* %303, i32 3)
  store i64 %call377, i64* %arg361, align 8
  %304 = load i64, i64* %frame, align 8
  %305 = load i64, i64* %arg361, align 8
  %call378 = call i64 @Fmodify_frame_parameters(i64 %304, i64 %305)
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.360, %if.end.354
  %306 = load i64, i64* %frame, align 8
  %call380 = call i64 @builtin_lisp_symbol(i32 193)
  %call381 = call i64 @Fframe_parameter(i64 %306, i64 %call380)
  store i64 %call381, i64* %bg, align 8
  %307 = load i64, i64* %frame, align 8
  store i64 %307, i64* @tip_frame, align 8
  %call382 = call i64 @builtin_lisp_symbol(i32 400)
  %308 = load i64, i64* %frame, align 8
  %call383 = call i64 @builtin_lisp_symbol(i32 0)
  %call384 = call i64 @call2(i64 %call382, i64 %308, i64 %call383)
  %309 = load i64, i64* %bg, align 8
  %310 = load i64, i64* %frame, align 8
  %call385 = call i64 @builtin_lisp_symbol(i32 193)
  %call386 = call i64 @Fframe_parameter(i64 %310, i64 %call385)
  %cmp387 = icmp eq i64 %309, %call386
  br i1 %cmp387, label %if.end.408, label %if.then.389

if.then.389:                                      ; preds = %if.end.379
  %s392 = bitcast %union.Aligned_Cons* %.compoundliteral391 to %struct.Lisp_Cons*
  %car393 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s392, i32 0, i32 0
  %s395 = bitcast %union.Aligned_Cons* %.compoundliteral394 to %struct.Lisp_Cons*
  %car396 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s395, i32 0, i32 0
  %call397 = call i64 @builtin_lisp_symbol(i32 193)
  store i64 %call397, i64* %car396, align 8
  %u398 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s395, i32 0, i32 1
  %cdr399 = bitcast %union.anon.12* %u398 to i64*
  %311 = load i64, i64* %bg, align 8
  store i64 %311, i64* %cdr399, align 8
  %s400 = bitcast %union.Aligned_Cons* %.compoundliteral394 to %struct.Lisp_Cons*
  %312 = bitcast %struct.Lisp_Cons* %s400 to i8*
  %call401 = call i64 @make_lisp_ptr(i8* %312, i32 3)
  store i64 %call401, i64* %car393, align 8
  %u402 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %s392, i32 0, i32 1
  %cdr403 = bitcast %union.anon.12* %u402 to i64*
  %call404 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call404, i64* %cdr403, align 8
  %s405 = bitcast %union.Aligned_Cons* %.compoundliteral391 to %struct.Lisp_Cons*
  %313 = bitcast %struct.Lisp_Cons* %s405 to i8*
  %call406 = call i64 @make_lisp_ptr(i8* %313, i32 3)
  store i64 %call406, i64* %arg390, align 8
  %314 = load i64, i64* %frame, align 8
  %315 = load i64, i64* %arg390, align 8
  %call407 = call i64 @Fmodify_frame_parameters(i64 %314, i64 %315)
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.389, %if.end.379
  %316 = load %struct.frame*, %struct.frame** %f, align 8
  %no_split = getelementptr inbounds %struct.frame, %struct.frame* %316, i32 0, i32 26
  %317 = bitcast i48* %no_split to i64*
  %bf.load409 = load i64, i64* %317, align 8
  %bf.clear410 = and i64 %bf.load409, -131073
  %bf.set411 = or i64 %bf.clear410, 131072
  store i64 %bf.set411, i64* %317, align 8
  %318 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data412 = getelementptr inbounds %struct.frame, %struct.frame* %318, i32 0, i32 62
  %x413 = bitcast %union.output_data* %output_data412 to %struct.x_output**
  %319 = load %struct.x_output*, %struct.x_output** %x413, align 8
  %display_info414 = getelementptr inbounds %struct.x_output, %struct.x_output* %319, i32 0, i32 44
  %320 = load %struct.x_display_info*, %struct.x_display_info** %display_info414, align 8
  %reference_count = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %320, i32 0, i32 5
  %321 = load i32, i32* %reference_count, align 4
  %inc = add nsw i32 %321, 1
  store i32 %inc, i32* %reference_count, align 4
  %322 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal415 = getelementptr inbounds %struct.frame, %struct.frame* %322, i32 0, i32 61
  %323 = load %struct.terminal*, %struct.terminal** %terminal415, align 8
  %reference_count416 = getelementptr inbounds %struct.terminal, %struct.terminal* %323, i32 0, i32 7
  %324 = load i32, i32* %reference_count416, align 4
  %inc417 = add nsw i32 %324, 1
  store i32 %inc417, i32* %reference_count416, align 4
  %325 = load i64, i64* %frame, align 8
  %326 = load i64, i64* @Vframe_list, align 8
  %call418 = call i64 @Fcons(i64 %325, i64 %326)
  store i64 %call418, i64* @Vframe_list, align 8
  %327 = load %struct.frame*, %struct.frame** %f, align 8
  %can_x_set_window_size = getelementptr inbounds %struct.frame, %struct.frame* %327, i32 0, i32 26
  %328 = bitcast i48* %can_x_set_window_size to i64*
  %bf.load419 = load i64, i64* %328, align 8
  %bf.clear420 = and i64 %bf.load419, -17179869185
  %bf.set421 = or i64 %bf.clear420, 17179869184
  store i64 %bf.set421, i64* %328, align 8
  %329 = load i8, i8* %face_change_before, align 1
  %tobool422 = trunc i8 %329 to i1
  %frombool423 = zext i1 %tobool422 to i8
  store i8 %frombool423, i8* @face_change, align 1
  %330 = load i64, i64* %count, align 8
  %331 = load i64, i64* %frame, align 8
  %call424 = call i64 @unbind_to(i64 %330, i64 %331)
  ret i64 %call424
}

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

declare void @adjust_frame_glyphs(%struct.frame*) #1

declare void @set_buffer_internal_1(%struct.buffer*) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @bset_truncate_lines(%struct.buffer*, i64) #1

declare void @clear_glyph_matrix(%struct.glyph_matrix*) #1

declare i32 @try_window(i64, i64, i64, i32) #1

declare i32 @XMoveResizeWindow(%struct._XDisplay*, i64, i32, i32, i32, i32) #1

declare i32 @XMapRaised(%struct._XDisplay*, i64) #1

declare void @update_single_window(%struct.window*) #1

declare i64 @call3(i64, i64, i64, i64) #1

declare zeroext i1 @xg_hide_tooltip(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_uses_old_gtk_dialog() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 493), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 494), align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i64, i64* @selected_frame, align 8
  %call = call zeroext i1 @FRAMEP(i64 %2)
  br i1 %call, label %land.lhs.true.3, label %cond.false

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %3 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %3, 5
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 61
  %6 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  %7 = load i64, i64* @selected_frame, align 8
  %sub4 = sub nsw i64 %7, 5
  %8 = inttoptr i64 %sub4 to i8*
  %9 = bitcast i8* %8 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.3, %land.lhs.true.2
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %cond = phi %struct.frame* [ %9, %cond.true ], [ null, %10 ]
  %call5 = call zeroext i1 @window_system_available(%struct.frame* %cond)
  br i1 %call5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %cond.end
  %call7 = call zeroext i1 @xg_uses_old_file_dialog()
  br i1 %call7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %call8 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call8, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %cond.end, %land.lhs.true, %entry
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval
  ret i64 %11
}

declare zeroext i1 @window_system_available(%struct.frame*) #1

declare zeroext i1 @xg_uses_old_file_dialog() #1

; Function Attrs: nounwind uwtable
define i64 @Fx_file_dialog(i64 %prompt, i64 %dir, i64 %default_filename, i64 %mustmatch, i64 %only_dir_p) #0 {
entry:
  %prompt.addr = alloca i64, align 8
  %dir.addr = alloca i64, align 8
  %default_filename.addr = alloca i64, align 8
  %mustmatch.addr = alloca i64, align 8
  %only_dir_p.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %fn = alloca i8*, align 8
  %file = alloca i64, align 8
  %decoded_file = alloca i64, align 8
  %count = alloca i64, align 8
  %cdef_file = alloca i8*, align 8
  store i64 %prompt, i64* %prompt.addr, align 8
  store i64 %dir, i64* %dir.addr, align 8
  store i64 %default_filename, i64* %default_filename.addr, align 8
  store i64 %mustmatch, i64* %mustmatch.addr, align 8
  store i64 %only_dir_p, i64* %only_dir_p.addr, align 8
  %0 = load i64, i64* @selected_frame, align 8
  %call = call zeroext i1 @FRAMEP(i64 %0)
  br i1 %call, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* @selected_frame, align 8
  %sub1 = sub nsw i64 %5, 5
  %6 = inttoptr i64 %sub1 to i8*
  %7 = bitcast i8* %6 to %struct.frame*
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @emacs_abort() #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %cond = phi %struct.frame* [ %7, %cond.true ], [ null, %8 ]
  store %struct.frame* %cond, %struct.frame** %f, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %file, align 8
  %call3 = call i64 @SPECPDL_INDEX()
  store i64 %call3, i64* %count, align 8
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  call void @check_window_system(%struct.frame* %9)
  %call4 = call i32 @popup_activated()
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.99, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %cond.end
  %10 = load i64, i64* %prompt.addr, align 8
  call void @CHECK_STRING(i64 %10)
  %11 = load i64, i64* %dir.addr, align 8
  call void @CHECK_STRING(i64 %11)
  %call5 = call i64 @builtin_lisp_symbol(i32 548)
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call5, i64 %call6)
  call void @record_unwind_protect_void(void ()* @clean_up_dialog)
  call void @block_input()
  %12 = load i64, i64* %default_filename.addr, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %12)
  br i1 %call7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %13 = load i64, i64* %default_filename.addr, align 8
  %call9 = call i8* @SSDATA(i64 %13)
  store i8* %call9, i8** %cdef_file, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %14 = load i64, i64* %dir.addr, align 8
  %call10 = call i8* @SSDATA(i64 %14)
  store i8* %call10, i8** %cdef_file, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %15 = load %struct.frame*, %struct.frame** %f, align 8
  %16 = load i64, i64* %prompt.addr, align 8
  %call12 = call i8* @SSDATA(i64 %16)
  %17 = load i8*, i8** %cdef_file, align 8
  %18 = load i64, i64* %mustmatch.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %18, %call13
  %lnot = xor i1 %cmp14, true
  %19 = load i64, i64* %only_dir_p.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %19, %call15
  %lnot17 = xor i1 %cmp16, true
  %call18 = call i8* @xg_get_file_name(%struct.frame* %15, i8* %call12, i8* %17, i1 zeroext %lnot, i1 zeroext %lnot17)
  store i8* %call18, i8** %fn, align 8
  %20 = load i8*, i8** %fn, align 8
  %tobool19 = icmp ne i8* %20, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.11
  %21 = load i8*, i8** %fn, align 8
  %call21 = call i64 @build_string(i8* %21)
  store i64 %call21, i64* %file, align 8
  %22 = load i8*, i8** %fn, align 8
  call void @xfree(i8* %22)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.11
  call void @unblock_input()
  %23 = load i64, i64* %file, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %23, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.22
  %call26 = call i64 @builtin_lisp_symbol(i32 782)
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call i64 @Fsignal(i64 %call26, i64 %call27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.22
  %24 = load i64, i64* %file, align 8
  %call30 = call i64 @decode_file_name(i64 %24)
  store i64 %call30, i64* %decoded_file, align 8
  %25 = load i64, i64* %count, align 8
  %26 = load i64, i64* %decoded_file, align 8
  %call31 = call i64 @unbind_to(i64 %25, i64 %26)
  ret i64 %call31
}

declare void @check_window_system(%struct.frame*) #1

declare i32 @popup_activated() #1

declare void @record_unwind_protect_void(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @clean_up_dialog() #0 {
entry:
  call void @x_menu_set_in_use(i1 zeroext false)
  ret void
}

declare i8* @xg_get_file_name(%struct.frame*, i8*, i8*, i1 zeroext, i1 zeroext) #1

declare i64 @Fsignal(i64, i64) #1

declare i64 @decode_file_name(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_select_font(i64 %frame, i64 %ignored) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %ignored.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %font = alloca i64, align 8
  %font_param = alloca i64, align 8
  %default_name = alloca i8*, align 8
  %count = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  store i64 %ignored, i64* %ignored.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  store i8* null, i8** %default_name, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %count, align 8
  %call2 = call i32 @popup_activated()
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.99, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 548)
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call3, i64 %call4)
  call void @record_unwind_protect_void(void ()* @clean_up_dialog)
  call void @block_input()
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %2 = load %struct.x_output*, %struct.x_output** %x, align 8
  %font5 = getelementptr inbounds %struct.x_output, %struct.x_output* %2, i32 0, i32 25
  %3 = load %struct.font*, %struct.font** %font5, align 8
  %4 = bitcast %struct.font* %3 to i8*
  %call6 = call i64 @make_lisp_ptr(i8* %4, i32 5)
  store i64 %call6, i64* %font, align 8
  %5 = load i64, i64* %font, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 86)
  %call8 = call i64 @Ffont_get(i64 %5, i64 %call7)
  store i64 %call8, i64* %font_param, align 8
  %6 = load i64, i64* %font_param, align 8
  %call9 = call zeroext i1 @STRINGP(i64 %6)
  br i1 %call9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %7 = load i64, i64* %font_param, align 8
  %call11 = call noalias i8* @xlispstrdup(i64 %7)
  store i8* %call11, i8** %default_name, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %frame.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 444)
  %call13 = call i64 @Fframe_parameter(i64 %8, i64 %call12)
  store i64 %call13, i64* %font_param, align 8
  %9 = load i64, i64* %font_param, align 8
  %call14 = call zeroext i1 @STRINGP(i64 %9)
  br i1 %call14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else
  %10 = load i64, i64* %font_param, align 8
  %call16 = call noalias i8* @xlispstrdup(i64 %10)
  store i8* %call16, i8** %default_name, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  %12 = load i8*, i8** %default_name, align 8
  %call19 = call i64 @xg_get_font(%struct.frame* %11, i8* %12)
  store i64 %call19, i64* %font, align 8
  %13 = load i8*, i8** %default_name, align 8
  call void @xfree(i8* %13)
  call void @unblock_input()
  %14 = load i64, i64* %font, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %14, %call20
  br i1 %cmp, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.18
  %call22 = call i64 @builtin_lisp_symbol(i32 782)
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %call24 = call i64 @Fsignal(i64 %call22, i64 %call23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.18
  %15 = load i64, i64* %count, align 8
  %16 = load i64, i64* %font, align 8
  %call26 = call i64 @unbind_to(i64 %15, i64 %16)
  ret i64 %call26
}

declare i64 @Ffont_get(i64, i64) #1

declare noalias i8* @xlispstrdup(i64) #1

declare i64 @Fframe_parameter(i64, i64) #1

declare i64 @xg_get_font(%struct.frame*, i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_backspace_delete_keys_p(i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %kb = alloca %struct._XkbDesc*, align 8
  %f = alloca %struct.frame*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  %have_keys = alloca i64, align 8
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %op = alloca i32, align 4
  %event = alloca i32, align 4
  %error_code = alloca i32, align 4
  %delete_keycode = alloca i32, align 4
  %backspace_keycode = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %2 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %2, i32 0, i32 44
  %3 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 2
  %4 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %4, %struct._XDisplay** %dpy, align 8
  call void @block_input()
  store i32 1, i32* %major, align 4
  store i32 0, i32* %minor, align 4
  %call1 = call i32 @XkbLibraryVersion(i32* %major, i32* %minor)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @unblock_input()
  %call2 = call i64 @builtin_lisp_symbol(i32 598)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %major, align 4
  store i32 0, i32* %minor, align 4
  %5 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call3 = call i32 @XkbQueryExtension(%struct._XDisplay* %5, i32* %op, i32* %event, i32* %error_code, i32* %major, i32* %minor)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @unblock_input()
  %call6 = call i64 @builtin_lisp_symbol(i32 598)
  store i64 %call6, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call8, i64* %have_keys, align 8
  %6 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call9 = call %struct._XkbDesc* @XkbGetMap(%struct._XDisplay* %6, i32 255, i32 256)
  store %struct._XkbDesc* %call9, %struct._XkbDesc** %kb, align 8
  %7 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  %tobool10 = icmp ne %struct._XkbDesc* %7, null
  br i1 %tobool10, label %if.then.11, label %if.end.53

if.then.11:                                       ; preds = %if.end.7
  store i32 0, i32* %delete_keycode, align 4
  store i32 0, i32* %backspace_keycode, align 4
  %8 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %9 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  %call12 = call i32 @XkbGetNames(%struct._XDisplay* %8, i32 16383, %struct._XkbDesc* %9)
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %if.then.13, label %if.end.37

if.then.13:                                       ; preds = %if.then.11
  %10 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  %min_key_code = getelementptr inbounds %struct._XkbDesc, %struct._XkbDesc* %10, i32 0, i32 3
  %11 = load i8, i8* %min_key_code, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %12 = load i32, i32* %i, align 4
  %13 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  %max_key_code = getelementptr inbounds %struct._XkbDesc, %struct._XkbDesc* %13, i32 0, i32 4
  %14 = load i8, i8* %max_key_code, align 1
  %conv14 = zext i8 %14 to i32
  %cmp15 = icmp slt i32 %12, %conv14
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i32, i32* %delete_keycode, align 4
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %16 = load i32, i32* %backspace_keycode, align 4
  %cmp19 = icmp eq i32 %16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %17 = phi i1 [ true, %land.rhs ], [ %cmp19, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %17, %lor.end ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  %names = getelementptr inbounds %struct._XkbDesc, %struct._XkbDesc* %20, i32 0, i32 9
  %21 = load %struct._XkbNamesRec*, %struct._XkbNamesRec** %names, align 8
  %keys = getelementptr inbounds %struct._XkbNamesRec, %struct._XkbNamesRec* %21, i32 0, i32 8
  %22 = load %struct._XkbKeyNameRec*, %struct._XkbKeyNameRec** %keys, align 8
  %arrayidx = getelementptr inbounds %struct._XkbKeyNameRec, %struct._XkbKeyNameRec* %22, i64 %idxprom
  %name = getelementptr inbounds %struct._XkbKeyNameRec, %struct._XkbKeyNameRec* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %name, i32 0, i32 0
  %call21 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* %arraydecay, i64 4) #9
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* %delete_keycode, align 4
  br label %if.end.36

if.else:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  %names26 = getelementptr inbounds %struct._XkbDesc, %struct._XkbDesc* %25, i32 0, i32 9
  %26 = load %struct._XkbNamesRec*, %struct._XkbNamesRec** %names26, align 8
  %keys27 = getelementptr inbounds %struct._XkbNamesRec, %struct._XkbNamesRec* %26, i32 0, i32 8
  %27 = load %struct._XkbKeyNameRec*, %struct._XkbKeyNameRec** %keys27, align 8
  %arrayidx28 = getelementptr inbounds %struct._XkbKeyNameRec, %struct._XkbKeyNameRec* %27, i64 %idxprom25
  %name29 = getelementptr inbounds %struct._XkbKeyNameRec, %struct._XkbKeyNameRec* %arrayidx28, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [4 x i8], [4 x i8]* %name29, i32 0, i32 0
  %call31 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i8* %arraydecay30, i64 4) #9
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %backspace_keycode, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %30 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  call void @XkbFreeNames(%struct._XkbDesc* %30, i32 0, i32 1)
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %if.then.11
  %31 = load %struct._XkbDesc*, %struct._XkbDesc** %kb, align 8
  call void @XkbFreeKeyboard(%struct._XkbDesc* %31, i32 255, i32 1)
  %32 = load i32, i32* %delete_keycode, align 4
  %tobool38 = icmp ne i32 %32, 0
  br i1 %tobool38, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end.37
  %33 = load i32, i32* %backspace_keycode, align 4
  %tobool39 = icmp ne i32 %33, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.52

land.lhs.true.40:                                 ; preds = %land.lhs.true
  %34 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call41 = call zeroext i8 @XKeysymToKeycode(%struct._XDisplay* %34, i64 65535)
  %conv42 = zext i8 %call41 to i32
  %35 = load i32, i32* %delete_keycode, align 4
  %cmp43 = icmp eq i32 %conv42, %35
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.52

land.lhs.true.45:                                 ; preds = %land.lhs.true.40
  %36 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call46 = call zeroext i8 @XKeysymToKeycode(%struct._XDisplay* %36, i64 65288)
  %conv47 = zext i8 %call46 to i32
  %37 = load i32, i32* %backspace_keycode, align 4
  %cmp48 = icmp eq i32 %conv47, %37
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %land.lhs.true.45
  %call51 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call51, i64* %have_keys, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %land.lhs.true.45, %land.lhs.true.40, %land.lhs.true, %if.end.37
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.7
  call void @unblock_input()
  %38 = load i64, i64* %have_keys, align 8
  store i64 %38, i64* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.5, %if.then
  %39 = load i64, i64* %retval
  ret i64 %39
}

declare i32 @XkbLibraryVersion(i32*, i32*) #1

declare i32 @XkbQueryExtension(%struct._XDisplay*, i32*, i32*, i32*, i32*, i32*) #1

declare %struct._XkbDesc* @XkbGetMap(%struct._XDisplay*, i32, i32) #1

declare i32 @XkbGetNames(%struct._XDisplay*, i32, %struct._XkbDesc*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

declare void @XkbFreeNames(%struct._XkbDesc*, i32, i32) #1

declare void @XkbFreeKeyboard(%struct._XkbDesc*, i32, i32) #1

declare zeroext i8 @XKeysymToKeycode(%struct._XDisplay*, i64) #1

declare void @x_set_autoraise(%struct.frame*, i64, i64) #1

declare void @x_set_autolower(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_background_color(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %x = alloca %struct.x_output*, align 8
  %bg = alloca i64, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x1 = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x1, align 8
  store %struct.x_output* %1, %struct.x_output** %x, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load i64, i64* %arg.addr, align 8
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 44
  %6 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 6
  %7 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call = call i32 @XScreenNumberOfScreen(%struct.Screen* %7)
  %idxprom = sext i32 %call to i64
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %display_info6 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info6, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 2
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %12 = bitcast %struct._XDisplay* %11 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %12, i32 0, i32 35
  %13 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %13, i64 %idxprom
  %white_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 13
  %14 = load i64, i64* %white_pixel, align 8
  %conv = trunc i64 %14 to i32
  %call7 = call i32 @x_decode_color(%struct.frame* %2, i64 %3, i32 %conv)
  %conv8 = sext i32 %call7 to i64
  store i64 %conv8, i64* %bg, align 8
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 77
  %17 = load i64, i64* %background_pixel, align 8
  call void @unload_color(%struct.frame* %15, i64 %17)
  %18 = load i64, i64* %bg, align 8
  %19 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel9 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 77
  store i64 %18, i64* %background_pixel9, align 8
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data10 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 62
  %x11 = bitcast %union.output_data* %output_data10 to %struct.x_output**
  %21 = load %struct.x_output*, %struct.x_output** %x11, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %21, i32 0, i32 9
  %22 = load i64, i64* %window_desc, align 8
  %cmp = icmp ne i64 %22, 0
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %24 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %display_info15 = getelementptr inbounds %struct.x_output, %struct.x_output* %24, i32 0, i32 44
  %25 = load %struct.x_display_info*, %struct.x_display_info** %display_info15, align 8
  %display16 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %25, i32 0, i32 2
  %26 = load %struct._XDisplay*, %struct._XDisplay** %display16, align 8
  store %struct._XDisplay* %26, %struct._XDisplay** %dpy, align 8
  call void @block_input()
  %27 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %28 = load %struct.x_output*, %struct.x_output** %x, align 8
  %normal_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %28, i32 0, i32 6
  %29 = load %struct._XGC*, %struct._XGC** %normal_gc, align 8
  %30 = load i64, i64* %bg, align 8
  %call17 = call i32 @XSetBackground(%struct._XDisplay* %27, %struct._XGC* %29, i64 %30)
  %31 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %32 = load %struct.x_output*, %struct.x_output** %x, align 8
  %reverse_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %32, i32 0, i32 7
  %33 = load %struct._XGC*, %struct._XGC** %reverse_gc, align 8
  %34 = load i64, i64* %bg, align 8
  %call18 = call i32 @XSetForeground(%struct._XDisplay* %31, %struct._XGC* %33, i64 %34)
  %35 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %36 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data19 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 62
  %x20 = bitcast %union.output_data* %output_data19 to %struct.x_output**
  %37 = load %struct.x_output*, %struct.x_output** %x20, align 8
  %window_desc21 = getelementptr inbounds %struct.x_output, %struct.x_output* %37, i32 0, i32 9
  %38 = load i64, i64* %window_desc21, align 8
  %39 = load i64, i64* %bg, align 8
  %call22 = call i32 @XSetWindowBackground(%struct._XDisplay* %35, i64 %38, i64 %39)
  %40 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %41 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %41, i32 0, i32 8
  %42 = load %struct._XGC*, %struct._XGC** %cursor_gc, align 8
  %43 = load i64, i64* %bg, align 8
  %call23 = call i32 @XSetForeground(%struct._XDisplay* %40, %struct._XGC* %42, i64 %43)
  %44 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %45 = load i64, i64* %bg, align 8
  call void @xg_set_background_color(%struct.frame* %44, i64 %45)
  call void @unblock_input()
  %46 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 193)
  %47 = load i64, i64* %arg.addr, align 8
  call void @update_face_from_frame_parameter(%struct.frame* %46, i64 %call24, i64 %47)
  %48 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 26
  %49 = bitcast i48* %visible to i64*
  %bf.load = load i64, i64* %49, align 8
  %bf.lshr = lshr i64 %bf.load, 10
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then
  %50 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @redraw_frame(%struct.frame* %50)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_border_color(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %pix = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load i64, i64* %arg.addr, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 6
  %6 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call = call i32 @XScreenNumberOfScreen(%struct.Screen* %6)
  %idxprom = sext i32 %call to i64
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %display_info3 = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 44
  %9 = load %struct.x_display_info*, %struct.x_display_info** %display_info3, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %11 = bitcast %struct._XDisplay* %10 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %11, i32 0, i32 35
  %12 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %12, i64 %idxprom
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 14
  %13 = load i64, i64* %black_pixel, align 8
  %conv = trunc i64 %13 to i32
  %call4 = call i32 @x_decode_color(%struct.frame* %1, i64 %2, i32 %conv)
  store i32 %call4, i32* %pix, align 4
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %15 = load i32, i32* %pix, align 4
  call void @x_set_border_pixel(%struct.frame* %14, i32 %15)
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 209)
  %17 = load i64, i64* %arg.addr, align 8
  call void @update_face_from_frame_parameter(%struct.frame* %16, i64 %call5, i64 %17)
  ret void
}

declare void @x_set_border_width(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_cursor_color(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %fore_pixel = alloca i64, align 8
  %pixel = alloca i64, align 8
  %fore_pixel_allocated_p = alloca i8, align 1
  %pixel_allocated_p = alloca i8, align 1
  %x = alloca %struct.x_output*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  store i8 0, i8* %fore_pixel_allocated_p, align 1
  store i8 0, i8* %pixel_allocated_p, align 1
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x1 = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x1, align 8
  store %struct.x_output* %1, %struct.x_output** %x, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 344), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 344), align 8
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 44
  %7 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 6
  %8 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call4 = call i32 @XScreenNumberOfScreen(%struct.Screen* %8)
  %idxprom = sext i32 %call4 to i64
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data5 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 62
  %x6 = bitcast %union.output_data* %output_data5 to %struct.x_output**
  %10 = load %struct.x_output*, %struct.x_output** %x6, align 8
  %display_info7 = getelementptr inbounds %struct.x_output, %struct.x_output* %10, i32 0, i32 44
  %11 = load %struct.x_display_info*, %struct.x_display_info** %display_info7, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %11, i32 0, i32 2
  %12 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %13 = bitcast %struct._XDisplay* %12 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %13, i32 0, i32 35
  %14 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %14, i64 %idxprom
  %white_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 13
  %15 = load i64, i64* %white_pixel, align 8
  %conv = trunc i64 %15 to i32
  %call8 = call i32 @x_decode_color(%struct.frame* %3, i64 %4, i32 %conv)
  %conv9 = sext i32 %call8 to i64
  store i64 %conv9, i64* %fore_pixel, align 8
  store i8 1, i8* %fore_pixel_allocated_p, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 77
  %17 = load i64, i64* %background_pixel, align 8
  store i64 %17, i64* %fore_pixel, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %19 = load i64, i64* %arg.addr, align 8
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data10 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 62
  %x11 = bitcast %union.output_data* %output_data10 to %struct.x_output**
  %21 = load %struct.x_output*, %struct.x_output** %x11, align 8
  %display_info12 = getelementptr inbounds %struct.x_output, %struct.x_output* %21, i32 0, i32 44
  %22 = load %struct.x_display_info*, %struct.x_display_info** %display_info12, align 8
  %screen13 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %22, i32 0, i32 6
  %23 = load %struct.Screen*, %struct.Screen** %screen13, align 8
  %call14 = call i32 @XScreenNumberOfScreen(%struct.Screen* %23)
  %idxprom15 = sext i32 %call14 to i64
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data16 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x17 = bitcast %union.output_data* %output_data16 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x17, align 8
  %display_info18 = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 44
  %26 = load %struct.x_display_info*, %struct.x_display_info** %display_info18, align 8
  %display19 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %26, i32 0, i32 2
  %27 = load %struct._XDisplay*, %struct._XDisplay** %display19, align 8
  %28 = bitcast %struct._XDisplay* %27 to %struct.anon.11*
  %screens20 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %28, i32 0, i32 35
  %29 = load %struct.Screen*, %struct.Screen** %screens20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Screen, %struct.Screen* %29, i64 %idxprom15
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx21, i32 0, i32 14
  %30 = load i64, i64* %black_pixel, align 8
  %conv22 = trunc i64 %30 to i32
  %call23 = call i32 @x_decode_color(%struct.frame* %18, i64 %19, i32 %conv22)
  %conv24 = sext i32 %call23 to i64
  store i64 %conv24, i64* %pixel, align 8
  store i8 1, i8* %pixel_allocated_p, align 1
  %31 = load i64, i64* %pixel, align 8
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel25 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 77
  %33 = load i64, i64* %background_pixel25, align 8
  %cmp26 = icmp eq i64 %31, %33
  br i1 %cmp26, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %if.end
  %34 = load i8, i8* %pixel_allocated_p, align 1
  %tobool = trunc i8 %34 to i1
  br i1 %tobool, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.28
  %35 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_free_colors(%struct.frame* %35, i64* %pixel, i32 1)
  store i8 0, i8* %pixel_allocated_p, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.28
  %36 = load %struct.x_output*, %struct.x_output** %x, align 8
  %mouse_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %36, i32 0, i32 30
  %37 = load i64, i64* %mouse_pixel, align 8
  store i64 %37, i64* %pixel, align 8
  %38 = load i64, i64* %pixel, align 8
  %39 = load i64, i64* %fore_pixel, align 8
  %cmp31 = icmp eq i64 %38, %39
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.30
  %40 = load i8, i8* %fore_pixel_allocated_p, align 1
  %tobool34 = trunc i8 %40 to i1
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.33
  %41 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_free_colors(%struct.frame* %41, i64* %fore_pixel, i32 1)
  store i8 0, i8* %fore_pixel_allocated_p, align 1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.33
  %42 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel37 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 77
  %43 = load i64, i64* %background_pixel37, align 8
  store i64 %43, i64* %fore_pixel, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.36, %if.end.30
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  %44 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %45 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_foreground_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %45, i32 0, i32 31
  %46 = load i64, i64* %cursor_foreground_pixel, align 8
  call void @unload_color(%struct.frame* %44, i64 %46)
  %47 = load i8, i8* %fore_pixel_allocated_p, align 1
  %tobool40 = trunc i8 %47 to i1
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.end.39
  %48 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %49 = load i64, i64* %fore_pixel, align 8
  %call42 = call i64 @x_copy_color(%struct.frame* %48, i64 %49)
  store i64 %call42, i64* %fore_pixel, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.39
  %50 = load i64, i64* %fore_pixel, align 8
  %51 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_foreground_pixel44 = getelementptr inbounds %struct.x_output, %struct.x_output* %51, i32 0, i32 31
  store i64 %50, i64* %cursor_foreground_pixel44, align 8
  %52 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %53 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %53, i32 0, i32 28
  %54 = load i64, i64* %cursor_pixel, align 8
  call void @unload_color(%struct.frame* %52, i64 %54)
  %55 = load i8, i8* %pixel_allocated_p, align 1
  %tobool45 = trunc i8 %55 to i1
  br i1 %tobool45, label %if.end.48, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %56 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %57 = load i64, i64* %pixel, align 8
  %call47 = call i64 @x_copy_color(%struct.frame* %56, i64 %57)
  store i64 %call47, i64* %pixel, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.43
  %58 = load i64, i64* %pixel, align 8
  %59 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_pixel49 = getelementptr inbounds %struct.x_output, %struct.x_output* %59, i32 0, i32 28
  store i64 %58, i64* %cursor_pixel49, align 8
  %60 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data50 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 62
  %x51 = bitcast %union.output_data* %output_data50 to %struct.x_output**
  %61 = load %struct.x_output*, %struct.x_output** %x51, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %61, i32 0, i32 9
  %62 = load i64, i64* %window_desc, align 8
  %cmp52 = icmp ne i64 %62, 0
  br i1 %cmp52, label %if.then.54, label %if.end.70

if.then.54:                                       ; preds = %if.end.48
  call void @block_input()
  %63 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data55 = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 62
  %x56 = bitcast %union.output_data* %output_data55 to %struct.x_output**
  %64 = load %struct.x_output*, %struct.x_output** %x56, align 8
  %display_info57 = getelementptr inbounds %struct.x_output, %struct.x_output* %64, i32 0, i32 44
  %65 = load %struct.x_display_info*, %struct.x_display_info** %display_info57, align 8
  %display58 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %65, i32 0, i32 2
  %66 = load %struct._XDisplay*, %struct._XDisplay** %display58, align 8
  %67 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %67, i32 0, i32 8
  %68 = load %struct._XGC*, %struct._XGC** %cursor_gc, align 8
  %69 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_pixel59 = getelementptr inbounds %struct.x_output, %struct.x_output* %69, i32 0, i32 28
  %70 = load i64, i64* %cursor_pixel59, align 8
  %call60 = call i32 @XSetBackground(%struct._XDisplay* %66, %struct._XGC* %68, i64 %70)
  %71 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data61 = getelementptr inbounds %struct.frame, %struct.frame* %71, i32 0, i32 62
  %x62 = bitcast %union.output_data* %output_data61 to %struct.x_output**
  %72 = load %struct.x_output*, %struct.x_output** %x62, align 8
  %display_info63 = getelementptr inbounds %struct.x_output, %struct.x_output* %72, i32 0, i32 44
  %73 = load %struct.x_display_info*, %struct.x_display_info** %display_info63, align 8
  %display64 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %73, i32 0, i32 2
  %74 = load %struct._XDisplay*, %struct._XDisplay** %display64, align 8
  %75 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_gc65 = getelementptr inbounds %struct.x_output, %struct.x_output* %75, i32 0, i32 8
  %76 = load %struct._XGC*, %struct._XGC** %cursor_gc65, align 8
  %77 = load i64, i64* %fore_pixel, align 8
  %call66 = call i32 @XSetForeground(%struct._XDisplay* %74, %struct._XGC* %76, i64 %77)
  call void @unblock_input()
  %78 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 26
  %79 = bitcast i48* %visible to i64*
  %bf.load = load i64, i64* %79, align 8
  %bf.lshr = lshr i64 %bf.load, 10
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool67 = icmp ne i32 %bf.cast, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.54
  %80 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_update_cursor(%struct.frame* %80, i1 zeroext false)
  %81 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_update_cursor(%struct.frame* %81, i1 zeroext true)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.then.54
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.48
  %82 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 307)
  %83 = load i64, i64* %arg.addr, align 8
  call void @update_face_from_frame_parameter(%struct.frame* %82, i64 %call71, i64 %83)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_cursor_type(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i64, i64* %arg.addr, align 8
  call void @set_frame_cursor_types(%struct.frame* %0, i64 %1)
  ret void
}

declare void @x_set_font(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_foreground_color(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %x = alloca %struct.x_output*, align 8
  %fg = alloca i64, align 8
  %old_fg = alloca i64, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x1 = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x1, align 8
  store %struct.x_output* %1, %struct.x_output** %x, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load i64, i64* %arg.addr, align 8
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 44
  %6 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 6
  %7 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call = call i32 @XScreenNumberOfScreen(%struct.Screen* %7)
  %idxprom = sext i32 %call to i64
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %display_info6 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info6, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 2
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %12 = bitcast %struct._XDisplay* %11 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %12, i32 0, i32 35
  %13 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %13, i64 %idxprom
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 14
  %14 = load i64, i64* %black_pixel, align 8
  %conv = trunc i64 %14 to i32
  %call7 = call i32 @x_decode_color(%struct.frame* %2, i64 %3, i32 %conv)
  %conv8 = sext i32 %call7 to i64
  store i64 %conv8, i64* %fg, align 8
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 78
  %16 = load i64, i64* %foreground_pixel, align 8
  store i64 %16, i64* %old_fg, align 8
  %17 = load i64, i64* %fg, align 8
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel9 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 78
  store i64 %17, i64* %foreground_pixel9, align 8
  %19 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data10 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 62
  %x11 = bitcast %union.output_data* %output_data10 to %struct.x_output**
  %20 = load %struct.x_output*, %struct.x_output** %x11, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %20, i32 0, i32 9
  %21 = load i64, i64* %window_desc, align 8
  %cmp = icmp ne i64 %21, 0
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %23 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %display_info15 = getelementptr inbounds %struct.x_output, %struct.x_output* %23, i32 0, i32 44
  %24 = load %struct.x_display_info*, %struct.x_display_info** %display_info15, align 8
  %display16 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %24, i32 0, i32 2
  %25 = load %struct._XDisplay*, %struct._XDisplay** %display16, align 8
  store %struct._XDisplay* %25, %struct._XDisplay** %dpy, align 8
  call void @block_input()
  %26 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %27 = load %struct.x_output*, %struct.x_output** %x, align 8
  %normal_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %27, i32 0, i32 6
  %28 = load %struct._XGC*, %struct._XGC** %normal_gc, align 8
  %29 = load i64, i64* %fg, align 8
  %call17 = call i32 @XSetForeground(%struct._XDisplay* %26, %struct._XGC* %28, i64 %29)
  %30 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %31 = load %struct.x_output*, %struct.x_output** %x, align 8
  %reverse_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %31, i32 0, i32 7
  %32 = load %struct._XGC*, %struct._XGC** %reverse_gc, align 8
  %33 = load i64, i64* %fg, align 8
  %call18 = call i32 @XSetBackground(%struct._XDisplay* %30, %struct._XGC* %32, i64 %33)
  %34 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %34, i32 0, i32 28
  %35 = load i64, i64* %cursor_pixel, align 8
  %36 = load i64, i64* %old_fg, align 8
  %cmp19 = icmp eq i64 %35, %36
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %37 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %38 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_pixel22 = getelementptr inbounds %struct.x_output, %struct.x_output* %38, i32 0, i32 28
  %39 = load i64, i64* %cursor_pixel22, align 8
  call void @unload_color(%struct.frame* %37, i64 %39)
  %40 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %41 = load i64, i64* %fg, align 8
  %call23 = call i64 @x_copy_color(%struct.frame* %40, i64 %41)
  %42 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_pixel24 = getelementptr inbounds %struct.x_output, %struct.x_output* %42, i32 0, i32 28
  store i64 %call23, i64* %cursor_pixel24, align 8
  %43 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %44 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_gc = getelementptr inbounds %struct.x_output, %struct.x_output* %44, i32 0, i32 8
  %45 = load %struct._XGC*, %struct._XGC** %cursor_gc, align 8
  %46 = load %struct.x_output*, %struct.x_output** %x, align 8
  %cursor_pixel25 = getelementptr inbounds %struct.x_output, %struct.x_output* %46, i32 0, i32 28
  %47 = load i64, i64* %cursor_pixel25, align 8
  %call26 = call i32 @XSetBackground(%struct._XDisplay* %43, %struct._XGC* %45, i64 %47)
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  call void @unblock_input()
  %48 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 451)
  %49 = load i64, i64* %arg.addr, align 8
  call void @update_face_from_frame_parameter(%struct.frame* %48, i64 %call27, i64 %49)
  %50 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 26
  %51 = bitcast i48* %visible to i64*
  %bf.load = load i64, i64* %51, align 8
  %bf.lshr = lshr i64 %bf.load, 10
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end
  %52 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @redraw_frame(%struct.frame* %52)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  %53 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %54 = load i64, i64* %old_fg, align 8
  call void @unload_color(%struct.frame* %53, i64 %54)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_icon_name(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %result = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %oldval.addr, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %1)
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, i64* %oldval.addr, align 8
  %3 = load i64, i64* %arg.addr, align 8
  %call2 = call i64 @Fstring_equal(i64 %2, i64 %3)
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %call2, %call3
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %arg.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %4, %call5
  br i1 %cmp6, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %if.else
  %5 = load i64, i64* %oldval.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %5, %call7
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i64, i64* %arg.addr, align 8
  call void @fset_icon_name(%struct.frame* %6, i64 %7)
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x, align 8
  %icon_bitmap = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 24
  %10 = load i64, i64* %icon_bitmap, align 8
  %cmp12 = icmp ne i64 %10, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %return

if.end.14:                                        ; preds = %if.end.11
  call void @block_input()
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 2
  %13 = load i64, i64* %icon_name, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %13, %call15
  br i1 %cmp16, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.14
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name17 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 2
  %15 = load i64, i64* %icon_name17, align 8
  br label %cond.end.23

cond.false:                                       ; preds = %if.end.14
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %title = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 3
  %17 = load i64, i64* %title, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %17, %call18
  br i1 %cmp19, label %cond.false.22, label %cond.true.20

cond.true.20:                                     ; preds = %cond.false
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %title21 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 3
  %19 = load i64, i64* %title21, align 8
  br label %cond.end

cond.false.22:                                    ; preds = %cond.false
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %name = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 1
  %21 = load i64, i64* %name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.22, %cond.true.20
  %cond = phi i64 [ %19, %cond.true.20 ], [ %21, %cond.false.22 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end, %cond.true
  %cond24 = phi i64 [ %15, %cond.true ], [ %cond, %cond.end ]
  %call25 = call i8* @SSDATA(i64 %cond24)
  %call26 = call zeroext i1 @x_text_icon(%struct.frame* %11, i8* %call25)
  %frombool = zext i1 %call26 to i8
  store i8 %frombool, i8* %result, align 1
  %22 = load i8, i8* %result, align 1
  %tobool = trunc i8 %22 to i1
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end.23
  call void @unblock_input()
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.160, i32 0, i32 0)) #7
  unreachable

if.end.28:                                        ; preds = %cond.end.23
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data29 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 62
  %x30 = bitcast %union.output_data* %output_data29 to %struct.x_output**
  %24 = load %struct.x_output*, %struct.x_output** %x30, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %24, i32 0, i32 44
  %25 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %25, i32 0, i32 2
  %26 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call31 = call i32 @XFlush(%struct._XDisplay* %26)
  call void @unblock_input()
  br label %return

return:                                           ; preds = %if.end.28, %if.then.13, %if.then.9, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_icon_type(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %result = alloca i8, align 1
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %oldval.addr, align 8
  %call1 = call zeroext i1 @STRINGP(i64 %1)
  br i1 %call1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, i64* %oldval.addr, align 8
  %3 = load i64, i64* %arg.addr, align 8
  %call2 = call i64 @Fstring_equal(i64 %2, i64 %3)
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %call2, %call3
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.16

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %oldval.addr, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call5, label %if.end.15, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.else
  %5 = load i64, i64* %oldval.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %5, %call7
  %conv = zext i1 %cmp8 to i32
  %6 = load i64, i64* %arg.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %6, %call9
  %conv11 = zext i1 %cmp10 to i32
  %cmp12 = icmp eq i32 %conv, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.6
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.6, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  call void @block_input()
  %7 = load i64, i64* %arg.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %7, %call17
  br i1 %cmp18, label %if.then.20, label %if.else.27

if.then.20:                                       ; preds = %if.end.16
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 2
  %10 = load i64, i64* %icon_name, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %10, %call21
  br i1 %cmp22, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.20
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name24 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 2
  %12 = load i64, i64* %icon_name24, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %name = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 1
  %14 = load i64, i64* %name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %14, %cond.false ]
  %call25 = call i8* @SSDATA(i64 %cond)
  %call26 = call zeroext i1 @x_text_icon(%struct.frame* %8, i8* %call25)
  %frombool = zext i1 %call26 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end.30

if.else.27:                                       ; preds = %if.end.16
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %16 = load i64, i64* %arg.addr, align 8
  %call28 = call zeroext i1 @x_bitmap_icon(%struct.frame* %15, i64 %16)
  %frombool29 = zext i1 %call28 to i8
  store i8 %frombool29, i8* %result, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %cond.end
  %17 = load i8, i8* %result, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.30
  call void @unblock_input()
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.160, i32 0, i32 0)) #7
  unreachable

if.end.32:                                        ; preds = %if.end.30
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %19 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %19, i32 0, i32 44
  %20 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %20, i32 0, i32 2
  %21 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call33 = call i32 @XFlush(%struct._XDisplay* %21)
  call void @unblock_input()
  br label %return

return:                                           ; preds = %if.end.32, %if.then.14, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_internal_border_width(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %border = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i64, i64* %arg.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp = icmp eq i32 %and2, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.1
  br label %cond.end

cond.false:                                       ; preds = %do.body.1
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %arg.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %arg.addr, align 8
  %shr = ashr i64 %4, 2
  %cmp4 = icmp sle i64 -2147483648, %shr
  br i1 %cmp4, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %5 = load i64, i64* %arg.addr, align 8
  %shr6 = ashr i64 %5, 2
  %cmp7 = icmp sle i64 %shr6, 2147483647
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %6 = load i64, i64* %arg.addr, align 8
  call void @args_out_of_range_3(i64 %6, i64 -8589934590, i64 8589934590) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.end
  %7 = load i64, i64* %arg.addr, align 8
  %shr10 = ashr i64 %7, 2
  %cmp11 = icmp sgt i64 %shr10, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %do.end.9
  %8 = load i64, i64* %arg.addr, align 8
  %shr14 = ashr i64 %8, 2
  br label %cond.end.16

cond.false.15:                                    ; preds = %do.end.9
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.13
  %cond = phi i64 [ %shr14, %cond.true.13 ], [ 0, %cond.false.15 ]
  %conv17 = trunc i64 %cond to i32
  store i32 %conv17, i32* %border, align 4
  %9 = load i32, i32* %border, align 4
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %internal_border_width = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 51
  %11 = load i32, i32* %internal_border_width, align 4
  %cmp18 = icmp ne i32 %9, %11
  br i1 %cmp18, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %cond.end.16
  %12 = load i32, i32* %border, align 4
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %internal_border_width21 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 51
  store i32 %12, i32* %internal_border_width21, align 4
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %15 = load %struct.x_output*, %struct.x_output** %x, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %15, i32 0, i32 9
  %16 = load i64, i64* %window_desc, align 8
  %cmp22 = icmp ne i64 %16, 0
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.20
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 563)
  call void @adjust_frame_size(%struct.frame* %17, i32 -1, i32 -1, i32 3, i1 zeroext false, i64 %call25)
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @xg_clear_under_internal_border(%struct.frame* %18)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %cond.end.16
  ret void
}

declare void @x_set_right_divider_width(%struct.frame*, i64, i64) #1

declare void @x_set_bottom_divider_width(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_menu_bar_lines(%struct.frame* %f, i64 %value, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %value.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %nlines = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %root_window = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 5
  %1 = load i64, i64* %root_window, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %minibuffer_window = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 7
  %3 = load i64, i64* %minibuffer_window, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %value.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp2 = icmp eq i32 %and1, 2
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  br i1 false, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i64, i64* %value.addr, align 8
  %shr = ashr i64 %5, 2
  %cmp4 = icmp sle i64 -2147483648, %shr
  br i1 %cmp4, label %land.lhs.true.9, label %if.else

cond.false:                                       ; preds = %land.lhs.true
  %6 = load i64, i64* %value.addr, align 8
  %shr6 = ashr i64 %6, 2
  %cmp7 = icmp sle i64 0, %shr6
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %cond.false, %cond.true
  %7 = load i64, i64* %value.addr, align 8
  %shr10 = ashr i64 %7, 2
  %cmp11 = icmp sle i64 %shr10, 2147483647
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.9
  %8 = load i64, i64* %value.addr, align 8
  %shr14 = ashr i64 %8, 2
  %conv15 = trunc i64 %shr14 to i32
  store i32 %conv15, i32* %nlines, align 4
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true.9, %cond.false, %cond.true, %if.end
  store i32 0, i32* %nlines, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.13
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @fset_redisplay(%struct.frame* %9)
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_lines = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 57
  store i32 0, i32* %menu_bar_lines, align 4
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_height = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 58
  store i32 0, i32* %menu_bar_height, align 4
  %12 = load i32, i32* %nlines, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.17, label %if.else.30

if.then.17:                                       ; preds = %if.end.16
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %external_menu_bar = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 26
  %14 = bitcast i48* %external_menu_bar to i64*
  %bf.load = load i64, i64* %14, align 8
  %bf.clear = and i64 %bf.load, -513
  %bf.set = or i64 %bf.clear, 512
  store i64 %bf.set, i64* %14, align 8
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 26
  %16 = bitcast i48* %output_method to i64*
  %bf.load18 = load i64, i64* %16, align 8
  %bf.lshr = lshr i64 %bf.load18, 23
  %bf.clear19 = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear19 to i32
  %cmp20 = icmp eq i32 %bf.cast, 2
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.29

land.lhs.true.22:                                 ; preds = %if.then.17
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %18 = load %struct.x_output*, %struct.x_output** %x, align 8
  %menubar_widget = getelementptr inbounds %struct.x_output, %struct.x_output* %18, i32 0, i32 16
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget, align 8
  %cmp23 = icmp eq %struct._GtkWidget* %19, null
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %land.lhs.true.22
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %selected_window = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 6
  %21 = load i64, i64* %selected_window, align 8
  %call = call %struct.window* @XWINDOW(i64 %21)
  %update_mode_line = getelementptr inbounds %struct.window, %struct.window* %call, i32 0, i32 67
  %bf.load26 = load i16, i16* %update_mode_line, align 4
  %bf.clear27 = and i16 %bf.load26, -5
  %bf.set28 = or i16 %bf.clear27, 4
  store i16 %bf.set28, i16* %update_mode_line, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %land.lhs.true.22, %if.then.17
  br label %if.end.56

if.else.30:                                       ; preds = %if.end.16
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %external_menu_bar31 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 26
  %23 = bitcast i48* %external_menu_bar31 to i64*
  %bf.load32 = load i64, i64* %23, align 8
  %bf.lshr33 = lshr i64 %bf.load32, 9
  %bf.clear34 = and i64 %bf.lshr33, 1
  %bf.cast35 = trunc i64 %bf.clear34 to i1
  %conv36 = zext i1 %bf.cast35 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else.30
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @free_frame_menubar(%struct.frame* %24)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.else.30
  %25 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %external_menu_bar41 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 26
  %26 = bitcast i48* %external_menu_bar41 to i64*
  %bf.load42 = load i64, i64* %26, align 8
  %bf.clear43 = and i64 %bf.load42, -513
  store i64 %bf.clear43, i64* %26, align 8
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_method44 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 26
  %28 = bitcast i48* %output_method44 to i64*
  %bf.load45 = load i64, i64* %28, align 8
  %bf.lshr46 = lshr i64 %bf.load45, 23
  %bf.clear47 = and i64 %bf.lshr46, 7
  %bf.cast48 = trunc i64 %bf.clear47 to i32
  %cmp49 = icmp eq i32 %bf.cast48, 2
  br i1 %cmp49, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.40
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data52 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 62
  %x53 = bitcast %union.output_data* %output_data52 to %struct.x_output**
  %30 = load %struct.x_output*, %struct.x_output** %x53, align 8
  %menubar_widget54 = getelementptr inbounds %struct.x_output, %struct.x_output* %30, i32 0, i32 16
  store %struct._GtkWidget* null, %struct._GtkWidget** %menubar_widget54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.end.40
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.29
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @adjust_frame_glyphs(%struct.frame* %31)
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @run_window_configuration_change_hook(%struct.frame* %32)
  br label %return

return:                                           ; preds = %if.end.56, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_mouse_color(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %x = alloca %struct.x_output*, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  %cursor_data = alloca %struct.mouse_cursor_data, align 8
  %pixel = alloca i64, align 8
  %mask_color = alloca i64, align 8
  %i = alloca i32, align 4
  %shape_var = alloca i64, align 8
  %bad_cursor_name = alloca i8*, align 8
  %message_length = alloca i64, align 8
  %xmessage = alloca i8*, align 8
  %colors = alloca [2 x %struct.XColor], align 16
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x1 = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x1, align 8
  store %struct.x_output* %1, %struct.x_output** %x, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %3 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %3, i32 0, i32 44
  %4 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 2
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %5, %struct._XDisplay** %dpy, align 8
  %6 = bitcast %struct.mouse_cursor_data* %cursor_data to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 160, i32 8, i1 false)
  %7 = bitcast i8* %6 to %struct.mouse_cursor_data*
  %8 = getelementptr %struct.mouse_cursor_data, %struct.mouse_cursor_data* %7, i32 0, i32 0
  store i32 -1, i32* %8
  %9 = getelementptr %struct.mouse_cursor_data, %struct.mouse_cursor_data* %7, i32 0, i32 1
  store i32 -1, i32* %9
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %11 = load i64, i64* %arg.addr, align 8
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %display_info6 = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 44
  %14 = load %struct.x_display_info*, %struct.x_display_info** %display_info6, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 6
  %15 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call = call i32 @XScreenNumberOfScreen(%struct.Screen* %15)
  %idxprom = sext i32 %call to i64
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %17 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %display_info9 = getelementptr inbounds %struct.x_output, %struct.x_output* %17, i32 0, i32 44
  %18 = load %struct.x_display_info*, %struct.x_display_info** %display_info9, align 8
  %display10 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %18, i32 0, i32 2
  %19 = load %struct._XDisplay*, %struct._XDisplay** %display10, align 8
  %20 = bitcast %struct._XDisplay* %19 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %20, i32 0, i32 35
  %21 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %21, i64 %idxprom
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 14
  %22 = load i64, i64* %black_pixel, align 8
  %conv = trunc i64 %22 to i32
  %call11 = call i32 @x_decode_color(%struct.frame* %10, i64 %11, i32 %conv)
  %conv12 = sext i32 %call11 to i64
  store i64 %conv12, i64* %pixel, align 8
  %23 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %background_pixel = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 77
  %24 = load i64, i64* %background_pixel, align 8
  store i64 %24, i64* %mask_color, align 8
  %25 = load i64, i64* %mask_color, align 8
  %26 = load i64, i64* %pixel, align 8
  %cmp = icmp eq i64 %25, %26
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_free_colors(%struct.frame* %27, i64* %pixel, i32 1)
  %28 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %foreground_pixel = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 78
  %30 = load i64, i64* %foreground_pixel, align 8
  %call14 = call i64 @x_copy_color(%struct.frame* %28, i64 %30)
  store i64 %call14, i64* %pixel, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %32 = load %struct.x_output*, %struct.x_output** %x, align 8
  %mouse_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %32, i32 0, i32 30
  %33 = load i64, i64* %mouse_pixel, align 8
  call void @unload_color(%struct.frame* %31, i64 %33)
  %34 = load i64, i64* %pixel, align 8
  %35 = load %struct.x_output*, %struct.x_output** %x, align 8
  %mouse_pixel15 = getelementptr inbounds %struct.x_output, %struct.x_output* %35, i32 0, i32 30
  store i64 %34, i64* %mouse_pixel15, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %36 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %36, 7
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %37 to i64
  %arrayidx19 = getelementptr inbounds [7 x %struct.mouse_cursor_types], [7 x %struct.mouse_cursor_types]* @mouse_cursor_types, i32 0, i64 %idxprom18
  %shape_var_ptr = getelementptr inbounds %struct.mouse_cursor_types, %struct.mouse_cursor_types* %arrayidx19, i32 0, i32 1
  %38 = load i64*, i64** %shape_var_ptr, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %shape_var, align 8
  %40 = load i64, i64* %shape_var, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp21 = icmp eq i64 %40, %call20
  br i1 %cmp21, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.23
  br label %do.body.24

do.body.24:                                       ; preds = %do.body
  %41 = load i64, i64* %shape_var, align 8
  %and = and i64 %41, 7
  %conv25 = trunc i64 %and to i32
  %and26 = and i32 %conv25, -5
  %cmp27 = icmp eq i32 %and26, 2
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.24
  br label %cond.end

cond.false:                                       ; preds = %do.body.24
  %call29 = call i64 @builtin_lisp_symbol(i32 559)
  %42 = load i64, i64* %shape_var, align 8
  %43 = call i64 @wrong_type_argument(i64 %call29, i64 %42) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %44, %cond.true
  %45 = load i64, i64* %shape_var, align 8
  %shr = ashr i64 %45, 2
  %cmp30 = icmp sle i64 0, %shr
  br i1 %cmp30, label %land.lhs.true, label %if.then.35

land.lhs.true:                                    ; preds = %cond.end
  %46 = load i64, i64* %shape_var, align 8
  %shr32 = ashr i64 %46, 2
  %cmp33 = icmp sle i64 %shr32, 4294967295
  br i1 %cmp33, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true, %cond.end
  %47 = load i64, i64* %shape_var, align 8
  call void @args_out_of_range_3(i64 %47, i64 2, i64 17179869182) #7
  unreachable

if.end.36:                                        ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %do.end.37

do.end.37:                                        ; preds = %do.end
  %48 = load i64, i64* %shape_var, align 8
  %shr38 = ashr i64 %48, 2
  %conv39 = trunc i64 %shr38 to i32
  %49 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %49 to i64
  %cursor_num = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [7 x i32], [7 x i32]* %cursor_num, i32 0, i64 %idxprom40
  store i32 %conv39, i32* %arrayidx41, align 4
  br label %if.end.47

if.else:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %50 to i64
  %arrayidx43 = getelementptr inbounds [7 x %struct.mouse_cursor_types], [7 x %struct.mouse_cursor_types]* @mouse_cursor_types, i32 0, i64 %idxprom42
  %default_shape = getelementptr inbounds %struct.mouse_cursor_types, %struct.mouse_cursor_types* %arrayidx43, i32 0, i32 2
  %51 = load i32, i32* %default_shape, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %52 to i64
  %cursor_num45 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [7 x i32], [7 x i32]* %cursor_num45, i32 0, i64 %idxprom44
  store i32 %51, i32* %arrayidx46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %do.end.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @block_input()
  %54 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %55 = bitcast %struct.mouse_cursor_data* %cursor_data to i8*
  call void @x_catch_errors_with_handler(%struct._XDisplay* %54, void (%struct._XDisplay*, %struct.XErrorEvent*, i8*, i8*)* @x_set_mouse_color_handler, i8* %55)
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.61, %for.end
  %56 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %56, 7
  br i1 %cmp49, label %for.body.51, label %for.end.63

for.body.51:                                      ; preds = %for.cond.48
  %57 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call52 = call i64 @XNextRequest(%struct._XDisplay* %57)
  %58 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %58 to i64
  %x_request_serial = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 4
  %arrayidx54 = getelementptr inbounds [7 x i64], [7 x i64]* %x_request_serial, i32 0, i64 %idxprom53
  store i64 %call52, i64* %arrayidx54, align 8
  %59 = load i32, i32* %i, align 4
  %last_cursor_create_request = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 0
  store i32 %59, i32* %last_cursor_create_request, align 4
  %60 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %61 to i64
  %cursor_num56 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [7 x i32], [7 x i32]* %cursor_num56, i32 0, i64 %idxprom55
  %62 = load i32, i32* %arrayidx57, align 4
  %call58 = call i64 @XCreateFontCursor(%struct._XDisplay* %60, i32 %62)
  %63 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %63 to i64
  %cursor = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor, i32 0, i64 %idxprom59
  store i64 %call58, i64* %arrayidx60, align 8
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.51
  %64 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %64, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.48

for.end.63:                                       ; preds = %for.cond.48
  %65 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call64 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %65)
  br i1 %call64, label %if.then.65, label %if.end.95

if.then.65:                                       ; preds = %for.end.63
  store i8* null, i8** %bad_cursor_name, align 8
  %error_string = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 5
  %66 = load i8*, i8** %error_string, align 8
  %call66 = call i64 @strlen(i8* %66) #9
  store i64 %call66, i64* %message_length, align 8
  %67 = load i64, i64* %message_length, align 8
  %add = add i64 1, %67
  %68 = alloca i8, i64 %add
  store i8* %68, i8** %xmessage, align 8
  %69 = load i8*, i8** %xmessage, align 8
  %error_string67 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 5
  %70 = load i8*, i8** %error_string67, align 8
  %71 = load i64, i64* %message_length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 %71, i32 1, i1 false)
  call void @x_uncatch_errors()
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.83, %if.then.65
  %72 = load i32, i32* %i, align 4
  %cmp69 = icmp slt i32 %72, 7
  br i1 %cmp69, label %for.body.71, label %for.end.85

for.body.71:                                      ; preds = %for.cond.68
  %73 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %73 to i64
  %cursor73 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor73, i32 0, i64 %idxprom72
  %74 = load i64, i64* %arrayidx74, align 8
  %cmp75 = icmp ne i64 %74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %for.body.71
  %75 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %76 to i64
  %cursor79 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx80 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor79, i32 0, i64 %idxprom78
  %77 = load i64, i64* %arrayidx80, align 8
  %call81 = call i32 @XFreeCursor(%struct._XDisplay* %75, i64 %77)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %for.body.71
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %78 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %78, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.68

for.end.85:                                       ; preds = %for.cond.68
  %error_cursor = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 1
  %79 = load i32, i32* %error_cursor, align 4
  %cmp86 = icmp sge i32 %79, 0
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %for.end.85
  %error_cursor89 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 1
  %80 = load i32, i32* %error_cursor89, align 4
  %idxprom90 = sext i32 %80 to i64
  %arrayidx91 = getelementptr inbounds [7 x %struct.mouse_cursor_types], [7 x %struct.mouse_cursor_types]* @mouse_cursor_types, i32 0, i64 %idxprom90
  %name = getelementptr inbounds %struct.mouse_cursor_types, %struct.mouse_cursor_types* %arrayidx91, i32 0, i32 0
  %81 = load i8*, i8** %name, align 8
  store i8* %81, i8** %bad_cursor_name, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %for.end.85
  %82 = load i8*, i8** %bad_cursor_name, align 8
  %tobool = icmp ne i8* %82, null
  br i1 %tobool, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.end.92
  %83 = load i8*, i8** %bad_cursor_name, align 8
  %84 = load i8*, i8** %xmessage, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.161, i32 0, i32 0), i8* %83, i8* %84) #7
  unreachable

if.else.94:                                       ; preds = %if.end.92
  %85 = load i8*, i8** %xmessage, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.162, i32 0, i32 0), i8* %85) #7
  unreachable

if.end.95:                                        ; preds = %for.end.63
  call void @x_uncatch_errors_after_check()
  %86 = load %struct.x_output*, %struct.x_output** %x, align 8
  %mouse_pixel96 = getelementptr inbounds %struct.x_output, %struct.x_output* %86, i32 0, i32 30
  %87 = load i64, i64* %mouse_pixel96, align 8
  %arrayidx97 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 0
  %pixel98 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx97, i32 0, i32 0
  store i64 %87, i64* %pixel98, align 8
  %88 = load i64, i64* %mask_color, align 8
  %arrayidx99 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 1
  %pixel100 = getelementptr inbounds %struct.XColor, %struct.XColor* %arrayidx99, i32 0, i32 0
  store i64 %88, i64* %pixel100, align 8
  %89 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i32 0
  call void @x_query_colors(%struct.frame* %89, %struct.XColor* %arraydecay, i32 2)
  store i32 0, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.111, %if.end.95
  %90 = load i32, i32* %i, align 4
  %cmp102 = icmp slt i32 %90, 7
  br i1 %cmp102, label %for.body.104, label %for.end.113

for.body.104:                                     ; preds = %for.cond.101
  %91 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %92 to i64
  %cursor106 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx107 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor106, i32 0, i64 %idxprom105
  %93 = load i64, i64* %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.XColor], [2 x %struct.XColor]* %colors, i32 0, i64 1
  %call110 = call i32 @XRecolorCursor(%struct._XDisplay* %91, i64 %93, %struct.XColor* %arrayidx108, %struct.XColor* %arrayidx109)
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.104
  %94 = load i32, i32* %i, align 4
  %inc112 = add nsw i32 %94, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.101

for.end.113:                                      ; preds = %for.cond.101
  %95 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data114 = getelementptr inbounds %struct.frame, %struct.frame* %95, i32 0, i32 62
  %x115 = bitcast %union.output_data* %output_data114 to %struct.x_output**
  %96 = load %struct.x_output*, %struct.x_output** %x115, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %96, i32 0, i32 9
  %97 = load i64, i64* %window_desc, align 8
  %cmp116 = icmp ne i64 %97, 0
  br i1 %cmp116, label %if.then.118, label %if.end.130

if.then.118:                                      ; preds = %for.end.113
  %cursor119 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor119, i32 0, i64 0
  %98 = load i64, i64* %arrayidx120, align 8
  %99 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data121 = getelementptr inbounds %struct.frame, %struct.frame* %99, i32 0, i32 62
  %x122 = bitcast %union.output_data* %output_data121 to %struct.x_output**
  %100 = load %struct.x_output*, %struct.x_output** %x122, align 8
  %current_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %100, i32 0, i32 41
  store i64 %98, i64* %current_cursor, align 8
  %101 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %102 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data123 = getelementptr inbounds %struct.frame, %struct.frame* %102, i32 0, i32 62
  %x124 = bitcast %union.output_data* %output_data123 to %struct.x_output**
  %103 = load %struct.x_output*, %struct.x_output** %x124, align 8
  %window_desc125 = getelementptr inbounds %struct.x_output, %struct.x_output* %103, i32 0, i32 9
  %104 = load i64, i64* %window_desc125, align 8
  %105 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data126 = getelementptr inbounds %struct.frame, %struct.frame* %105, i32 0, i32 62
  %x127 = bitcast %union.output_data* %output_data126 to %struct.x_output**
  %106 = load %struct.x_output*, %struct.x_output** %x127, align 8
  %current_cursor128 = getelementptr inbounds %struct.x_output, %struct.x_output* %106, i32 0, i32 41
  %107 = load i64, i64* %current_cursor128, align 8
  %call129 = call i32 @XDefineCursor(%struct._XDisplay* %101, i64 %104, i64 %107)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.118, %for.end.113
  %108 = load %struct.x_output*, %struct.x_output** %x, align 8
  %text_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %108, i32 0, i32 34
  %109 = load i64, i64* %text_cursor, align 8
  %cmp131 = icmp ne i64 %109, 0
  br i1 %cmp131, label %if.then.133, label %if.end.136

if.then.133:                                      ; preds = %if.end.130
  %110 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %111 = load %struct.x_output*, %struct.x_output** %x, align 8
  %text_cursor134 = getelementptr inbounds %struct.x_output, %struct.x_output* %111, i32 0, i32 34
  %112 = load i64, i64* %text_cursor134, align 8
  %call135 = call i32 @XFreeCursor(%struct._XDisplay* %110, i64 %112)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.133, %if.end.130
  %cursor137 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx138 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor137, i32 0, i64 0
  %113 = load i64, i64* %arrayidx138, align 8
  %114 = load %struct.x_output*, %struct.x_output** %x, align 8
  %text_cursor139 = getelementptr inbounds %struct.x_output, %struct.x_output* %114, i32 0, i32 34
  store i64 %113, i64* %text_cursor139, align 8
  %115 = load %struct.x_output*, %struct.x_output** %x, align 8
  %nontext_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %115, i32 0, i32 35
  %116 = load i64, i64* %nontext_cursor, align 8
  %cmp140 = icmp ne i64 %116, 0
  br i1 %cmp140, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %if.end.136
  %117 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %118 = load %struct.x_output*, %struct.x_output** %x, align 8
  %nontext_cursor143 = getelementptr inbounds %struct.x_output, %struct.x_output* %118, i32 0, i32 35
  %119 = load i64, i64* %nontext_cursor143, align 8
  %call144 = call i32 @XFreeCursor(%struct._XDisplay* %117, i64 %119)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %if.end.136
  %cursor146 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx147 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor146, i32 0, i64 1
  %120 = load i64, i64* %arrayidx147, align 8
  %121 = load %struct.x_output*, %struct.x_output** %x, align 8
  %nontext_cursor148 = getelementptr inbounds %struct.x_output, %struct.x_output* %121, i32 0, i32 35
  store i64 %120, i64* %nontext_cursor148, align 8
  %122 = load %struct.x_output*, %struct.x_output** %x, align 8
  %hourglass_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %122, i32 0, i32 38
  %123 = load i64, i64* %hourglass_cursor, align 8
  %cmp149 = icmp ne i64 %123, 0
  br i1 %cmp149, label %if.then.151, label %if.end.154

if.then.151:                                      ; preds = %if.end.145
  %124 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %125 = load %struct.x_output*, %struct.x_output** %x, align 8
  %hourglass_cursor152 = getelementptr inbounds %struct.x_output, %struct.x_output* %125, i32 0, i32 38
  %126 = load i64, i64* %hourglass_cursor152, align 8
  %call153 = call i32 @XFreeCursor(%struct._XDisplay* %124, i64 %126)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.151, %if.end.145
  %cursor155 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx156 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor155, i32 0, i64 2
  %127 = load i64, i64* %arrayidx156, align 8
  %128 = load %struct.x_output*, %struct.x_output** %x, align 8
  %hourglass_cursor157 = getelementptr inbounds %struct.x_output, %struct.x_output* %128, i32 0, i32 38
  store i64 %127, i64* %hourglass_cursor157, align 8
  %129 = load %struct.x_output*, %struct.x_output** %x, align 8
  %modeline_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %129, i32 0, i32 36
  %130 = load i64, i64* %modeline_cursor, align 8
  %cmp158 = icmp ne i64 %130, 0
  br i1 %cmp158, label %if.then.160, label %if.end.163

if.then.160:                                      ; preds = %if.end.154
  %131 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %132 = load %struct.x_output*, %struct.x_output** %x, align 8
  %modeline_cursor161 = getelementptr inbounds %struct.x_output, %struct.x_output* %132, i32 0, i32 36
  %133 = load i64, i64* %modeline_cursor161, align 8
  %call162 = call i32 @XFreeCursor(%struct._XDisplay* %131, i64 %133)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %if.end.154
  %cursor164 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx165 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor164, i32 0, i64 3
  %134 = load i64, i64* %arrayidx165, align 8
  %135 = load %struct.x_output*, %struct.x_output** %x, align 8
  %modeline_cursor166 = getelementptr inbounds %struct.x_output, %struct.x_output* %135, i32 0, i32 36
  store i64 %134, i64* %modeline_cursor166, align 8
  %136 = load %struct.x_output*, %struct.x_output** %x, align 8
  %hand_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %136, i32 0, i32 37
  %137 = load i64, i64* %hand_cursor, align 8
  %cmp167 = icmp ne i64 %137, 0
  br i1 %cmp167, label %if.then.169, label %if.end.172

if.then.169:                                      ; preds = %if.end.163
  %138 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %139 = load %struct.x_output*, %struct.x_output** %x, align 8
  %hand_cursor170 = getelementptr inbounds %struct.x_output, %struct.x_output* %139, i32 0, i32 37
  %140 = load i64, i64* %hand_cursor170, align 8
  %call171 = call i32 @XFreeCursor(%struct._XDisplay* %138, i64 %140)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.169, %if.end.163
  %cursor173 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx174 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor173, i32 0, i64 4
  %141 = load i64, i64* %arrayidx174, align 8
  %142 = load %struct.x_output*, %struct.x_output** %x, align 8
  %hand_cursor175 = getelementptr inbounds %struct.x_output, %struct.x_output* %142, i32 0, i32 37
  store i64 %141, i64* %hand_cursor175, align 8
  %143 = load %struct.x_output*, %struct.x_output** %x, align 8
  %horizontal_drag_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %143, i32 0, i32 39
  %144 = load i64, i64* %horizontal_drag_cursor, align 8
  %cmp176 = icmp ne i64 %144, 0
  br i1 %cmp176, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %if.end.172
  %145 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %146 = load %struct.x_output*, %struct.x_output** %x, align 8
  %horizontal_drag_cursor179 = getelementptr inbounds %struct.x_output, %struct.x_output* %146, i32 0, i32 39
  %147 = load i64, i64* %horizontal_drag_cursor179, align 8
  %call180 = call i32 @XFreeCursor(%struct._XDisplay* %145, i64 %147)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.178, %if.end.172
  %cursor182 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx183 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor182, i32 0, i64 5
  %148 = load i64, i64* %arrayidx183, align 8
  %149 = load %struct.x_output*, %struct.x_output** %x, align 8
  %horizontal_drag_cursor184 = getelementptr inbounds %struct.x_output, %struct.x_output* %149, i32 0, i32 39
  store i64 %148, i64* %horizontal_drag_cursor184, align 8
  %150 = load %struct.x_output*, %struct.x_output** %x, align 8
  %vertical_drag_cursor = getelementptr inbounds %struct.x_output, %struct.x_output* %150, i32 0, i32 40
  %151 = load i64, i64* %vertical_drag_cursor, align 8
  %cmp185 = icmp ne i64 %151, 0
  br i1 %cmp185, label %if.then.187, label %if.end.190

if.then.187:                                      ; preds = %if.end.181
  %152 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %153 = load %struct.x_output*, %struct.x_output** %x, align 8
  %vertical_drag_cursor188 = getelementptr inbounds %struct.x_output, %struct.x_output* %153, i32 0, i32 40
  %154 = load i64, i64* %vertical_drag_cursor188, align 8
  %call189 = call i32 @XFreeCursor(%struct._XDisplay* %152, i64 %154)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.187, %if.end.181
  %cursor191 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %cursor_data, i32 0, i32 3
  %arrayidx192 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor191, i32 0, i64 6
  %155 = load i64, i64* %arrayidx192, align 8
  %156 = load %struct.x_output*, %struct.x_output** %x, align 8
  %vertical_drag_cursor193 = getelementptr inbounds %struct.x_output, %struct.x_output* %156, i32 0, i32 40
  store i64 %155, i64* %vertical_drag_cursor193, align 8
  %157 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call194 = call i32 @XFlush(%struct._XDisplay* %157)
  call void @unblock_input()
  %158 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call195 = call i64 @builtin_lisp_symbol(i32 686)
  %159 = load i64, i64* %arg.addr, align 8
  call void @update_face_from_frame_parameter(%struct.frame* %158, i64 %call195, i64 %159)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_explicitly_set_name(%struct.frame* %f, i64 %arg, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %arg.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load i64, i64* %arg.addr, align 8
  call void @x_set_name(%struct.frame* %0, i64 %1, i1 zeroext true)
  ret void
}

declare void @x_set_scroll_bar_width(%struct.frame*, i64, i64) #1

declare void @x_set_scroll_bar_height(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_title(%struct.frame* %f, i64 %name, i64 %old_name) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %name.addr = alloca i64, align 8
  %old_name.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  store i64 %old_name, i64* %old_name.addr, align 8
  %0 = load i64, i64* %name.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %title = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 3
  %2 = load i64, i64* %title, align 8
  %cmp = icmp eq i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 38, i32* @update_mode_lines, align 4
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %4 = load i64, i64* %name.addr, align 8
  call void @fset_title(%struct.frame* %3, i64 %4)
  %5 = load i64, i64* %name.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1 = icmp eq i64 %5, %call
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %name3 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 1
  %7 = load i64, i64* %name3, align 8
  store i64 %7, i64* %name.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %name.addr, align 8
  call void @CHECK_STRING(i64 %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %9 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %10 = load i64, i64* %name.addr, align 8
  call void @x_set_name_internal(%struct.frame* %9, i64 %10)
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

declare void @x_set_unsplittable(%struct.frame*, i64, i64) #1

declare void @x_set_vertical_scroll_bars(%struct.frame*, i64, i64) #1

declare void @x_set_horizontal_scroll_bars(%struct.frame*, i64, i64) #1

declare void @x_set_visibility(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_tool_bar_lines(%struct.frame* %f, i64 %value, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %value.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %nlines = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %root_window = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 5
  %1 = load i64, i64* %root_window, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %minibuffer_window = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 7
  %3 = load i64, i64* %minibuffer_window, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %value.addr, align 8
  %call = call zeroext i1 @RANGED_INTEGERP(i64 0, i64 %4, i64 2147483647)
  br i1 %call, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load i64, i64* %value.addr, align 8
  %shr = ashr i64 %5, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %nlines, align 4
  br label %if.end.2

if.else:                                          ; preds = %if.end
  store i32 0, i32* %nlines, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i32, i32* %nlines, align 4
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %line_height = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 60
  %9 = load i32, i32* %line_height, align 4
  %mul = mul nsw i32 %7, %9
  call void @x_change_tool_bar_height(%struct.frame* %6, i32 %mul)
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_scroll_bar_foreground(%struct.frame* %f, i64 %value, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %value.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %pixel = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load i64, i64* %value.addr, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 6
  %6 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call1 = call i32 @XScreenNumberOfScreen(%struct.Screen* %6)
  %idxprom = sext i32 %call1 to i64
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info4 = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 44
  %9 = load %struct.x_display_info*, %struct.x_display_info** %display_info4, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %11 = bitcast %struct._XDisplay* %10 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %11, i32 0, i32 35
  %12 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %12, i64 %idxprom
  %black_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 14
  %13 = load i64, i64* %black_pixel, align 8
  %conv = trunc i64 %13 to i32
  %call5 = call i32 @x_decode_color(%struct.frame* %1, i64 %2, i32 %conv)
  %conv6 = sext i32 %call5 to i64
  store i64 %conv6, i64* %pixel, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 -1, i64* %pixel, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %15 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %scroll_bar_foreground_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %15, i32 0, i32 32
  %16 = load i64, i64* %scroll_bar_foreground_pixel, align 8
  %cmp = icmp ne i64 %16, -1
  br i1 %cmp, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %19 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %scroll_bar_foreground_pixel13 = getelementptr inbounds %struct.x_output, %struct.x_output* %19, i32 0, i32 32
  %20 = load i64, i64* %scroll_bar_foreground_pixel13, align 8
  call void @unload_color(%struct.frame* %17, i64 %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  %21 = load i64, i64* %pixel, align 8
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data15 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 62
  %x16 = bitcast %union.output_data* %output_data15 to %struct.x_output**
  %23 = load %struct.x_output*, %struct.x_output** %x16, align 8
  %scroll_bar_foreground_pixel17 = getelementptr inbounds %struct.x_output, %struct.x_output* %23, i32 0, i32 32
  store i64 %21, i64* %scroll_bar_foreground_pixel17, align 8
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data18 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x19 = bitcast %union.output_data* %output_data18 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x19, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 9
  %26 = load i64, i64* %window_desc, align 8
  %tobool = icmp ne i64 %26, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.14
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 26
  %28 = bitcast i48* %visible to i64*
  %bf.load = load i64, i64* %28, align 8
  %bf.lshr = lshr i64 %bf.load, 10
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool20 = icmp ne i32 %bf.cast, 0
  br i1 %tobool20, label %if.then.21, label %if.end.34

if.then.21:                                       ; preds = %land.lhs.true
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 61
  %30 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %condemn_scroll_bars_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %30, i32 0, i32 40
  %31 = load void (%struct.frame*)*, void (%struct.frame*)** %condemn_scroll_bars_hook, align 8
  %tobool22 = icmp ne void (%struct.frame*)* %31, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.21
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal24 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 61
  %33 = load %struct.terminal*, %struct.terminal** %terminal24, align 8
  %condemn_scroll_bars_hook25 = getelementptr inbounds %struct.terminal, %struct.terminal* %33, i32 0, i32 40
  %34 = load void (%struct.frame*)*, void (%struct.frame*)** %condemn_scroll_bars_hook25, align 8
  %35 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %34(%struct.frame* %35)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.then.21
  %36 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal27 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 61
  %37 = load %struct.terminal*, %struct.terminal** %terminal27, align 8
  %judge_scroll_bars_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %37, i32 0, i32 42
  %38 = load void (%struct.frame*)*, void (%struct.frame*)** %judge_scroll_bars_hook, align 8
  %tobool28 = icmp ne void (%struct.frame*)* %38, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %39 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal30 = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 61
  %40 = load %struct.terminal*, %struct.terminal** %terminal30, align 8
  %judge_scroll_bars_hook31 = getelementptr inbounds %struct.terminal, %struct.terminal* %40, i32 0, i32 42
  %41 = load void (%struct.frame*)*, void (%struct.frame*)** %judge_scroll_bars_hook31, align 8
  %42 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %41(%struct.frame* %42)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %43 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 832)
  %44 = load i64, i64* %value.addr, align 8
  call void @update_face_from_frame_parameter(%struct.frame* %43, i64 %call33, i64 %44)
  %45 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @redraw_frame(%struct.frame* %45)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %land.lhs.true, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_set_scroll_bar_background(%struct.frame* %f, i64 %value, i64 %oldval) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %value.addr = alloca i64, align 8
  %oldval.addr = alloca i64, align 8
  %pixel = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %oldval, i64* %oldval.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = load i64, i64* %value.addr, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %screen = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 6
  %6 = load %struct.Screen*, %struct.Screen** %screen, align 8
  %call1 = call i32 @XScreenNumberOfScreen(%struct.Screen* %6)
  %idxprom = sext i32 %call1 to i64
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %display_info4 = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 44
  %9 = load %struct.x_display_info*, %struct.x_display_info** %display_info4, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %11 = bitcast %struct._XDisplay* %10 to %struct.anon.11*
  %screens = getelementptr inbounds %struct.anon.11, %struct.anon.11* %11, i32 0, i32 35
  %12 = load %struct.Screen*, %struct.Screen** %screens, align 8
  %arrayidx = getelementptr inbounds %struct.Screen, %struct.Screen* %12, i64 %idxprom
  %white_pixel = getelementptr inbounds %struct.Screen, %struct.Screen* %arrayidx, i32 0, i32 13
  %13 = load i64, i64* %white_pixel, align 8
  %conv = trunc i64 %13 to i32
  %call5 = call i32 @x_decode_color(%struct.frame* %1, i64 %2, i32 %conv)
  %conv6 = sext i32 %call5 to i64
  store i64 %conv6, i64* %pixel, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 -1, i64* %pixel, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %14, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %15 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %scroll_bar_background_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %15, i32 0, i32 33
  %16 = load i64, i64* %scroll_bar_background_pixel, align 8
  %cmp = icmp ne i64 %16, -1
  br i1 %cmp, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %19 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %scroll_bar_background_pixel13 = getelementptr inbounds %struct.x_output, %struct.x_output* %19, i32 0, i32 33
  %20 = load i64, i64* %scroll_bar_background_pixel13, align 8
  call void @unload_color(%struct.frame* %17, i64 %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  %21 = load i64, i64* %pixel, align 8
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data15 = getelementptr inbounds %struct.frame, %struct.frame* %22, i32 0, i32 62
  %x16 = bitcast %union.output_data* %output_data15 to %struct.x_output**
  %23 = load %struct.x_output*, %struct.x_output** %x16, align 8
  %scroll_bar_background_pixel17 = getelementptr inbounds %struct.x_output, %struct.x_output* %23, i32 0, i32 33
  store i64 %21, i64* %scroll_bar_background_pixel17, align 8
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data18 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x19 = bitcast %union.output_data* %output_data18 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x19, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 9
  %26 = load i64, i64* %window_desc, align 8
  %tobool = icmp ne i64 %26, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.14
  %27 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 26
  %28 = bitcast i48* %visible to i64*
  %bf.load = load i64, i64* %28, align 8
  %bf.lshr = lshr i64 %bf.load, 10
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool20 = icmp ne i32 %bf.cast, 0
  br i1 %tobool20, label %if.then.21, label %if.end.34

if.then.21:                                       ; preds = %land.lhs.true
  %29 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 61
  %30 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %condemn_scroll_bars_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %30, i32 0, i32 40
  %31 = load void (%struct.frame*)*, void (%struct.frame*)** %condemn_scroll_bars_hook, align 8
  %tobool22 = icmp ne void (%struct.frame*)* %31, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.21
  %32 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal24 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 61
  %33 = load %struct.terminal*, %struct.terminal** %terminal24, align 8
  %condemn_scroll_bars_hook25 = getelementptr inbounds %struct.terminal, %struct.terminal* %33, i32 0, i32 40
  %34 = load void (%struct.frame*)*, void (%struct.frame*)** %condemn_scroll_bars_hook25, align 8
  %35 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %34(%struct.frame* %35)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.then.21
  %36 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal27 = getelementptr inbounds %struct.frame, %struct.frame* %36, i32 0, i32 61
  %37 = load %struct.terminal*, %struct.terminal** %terminal27, align 8
  %judge_scroll_bars_hook = getelementptr inbounds %struct.terminal, %struct.terminal* %37, i32 0, i32 42
  %38 = load void (%struct.frame*)*, void (%struct.frame*)** %judge_scroll_bars_hook, align 8
  %tobool28 = icmp ne void (%struct.frame*)* %38, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %39 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %terminal30 = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 61
  %40 = load %struct.terminal*, %struct.terminal** %terminal30, align 8
  %judge_scroll_bars_hook31 = getelementptr inbounds %struct.terminal, %struct.terminal* %40, i32 0, i32 42
  %41 = load void (%struct.frame*)*, void (%struct.frame*)** %judge_scroll_bars_hook31, align 8
  %42 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void %41(%struct.frame* %42)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %43 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 831)
  %44 = load i64, i64* %value.addr, align 8
  call void @update_face_from_frame_parameter(%struct.frame* %43, i64 %call33, i64 %44)
  %45 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @redraw_frame(%struct.frame* %45)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %land.lhs.true, %if.end.14
  ret void
}

declare void @x_set_screen_gamma(%struct.frame*, i64, i64) #1

declare void @x_set_line_spacing(%struct.frame*, i64, i64) #1

declare void @x_set_left_fringe(%struct.frame*, i64, i64) #1

declare void @x_set_right_fringe(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_wait_for_wm(%struct.frame* %f, i64 %new_value, i64 %old_value) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %new_value.addr = alloca i64, align 8
  %old_value.addr = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %new_value, i64* %new_value.addr, align 8
  store i64 %old_value, i64* %old_value.addr, align 8
  %0 = load i64, i64* %new_value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  %lnot = xor i1 %cmp, true
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %2 = load %struct.x_output*, %struct.x_output** %x, align 8
  %wait_for_wm = getelementptr inbounds %struct.x_output, %struct.x_output* %2, i32 0, i32 46
  %3 = zext i1 %lnot to i8
  %bf.load = load i8, i8* %wait_for_wm, align 8
  %bf.shl = shl i8 %3, 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %wait_for_wm, align 8
  %tobool = trunc i8 %3 to i1
  ret void
}

declare void @x_set_fullscreen(%struct.frame*, i64, i64) #1

declare void @x_set_font_backend(%struct.frame*, i64, i64) #1

declare void @x_set_alpha(%struct.frame*, i64, i64) #1

declare void @x_set_sticky(%struct.frame*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_tool_bar_position(%struct.frame* %f, i64 %new_value, i64 %old_value) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %new_value.addr = alloca i64, align 8
  %old_value.addr = alloca i64, align 8
  %choice = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %new_value, i64* %new_value.addr, align 8
  store i64 %old_value, i64* %old_value.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 607)
  %call1 = call i64 @builtin_lisp_symbol(i32 811)
  %call2 = call i64 @builtin_lisp_symbol(i32 928)
  %call3 = call i64 @builtin_lisp_symbol(i32 213)
  %call4 = call i64 @list4(i64 %call, i64 %call1, i64 %call2, i64 %call3)
  store i64 %call4, i64* %choice, align 8
  %0 = load i64, i64* %new_value.addr, align 8
  %1 = load i64, i64* %choice, align 8
  %call5 = call i64 @Fmemq(i64 %0, i64 %1)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call5, %call6
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %new_value.addr, align 8
  %3 = load i64, i64* %old_value.addr, align 8
  %cmp7 = icmp eq i64 %2, %3
  br i1 %cmp7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %5 = load i64, i64* %new_value.addr, align 8
  call void @xg_change_toolbar_position(%struct.frame* %4, i64 %5)
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i64, i64* %new_value.addr, align 8
  call void @fset_tool_bar_position(%struct.frame* %6, i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %8 = load i64, i64* %choice, align 8
  %9 = load i64, i64* %new_value.addr, align 8
  call void @wrong_choice(i64 %8, i64 %9) #7
  unreachable

if.end.9:                                         ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @syms_of_xfns() #0 {
entry:
  %gtk_version = alloca [36 x i8], align 16
  %len = alloca i32, align 4
  %call = call i64 @builtin_lisp_symbol(i32 960)
  %call1 = call i64 @builtin_lisp_symbol(i32 373)
  %call2 = call i64 @builtin_lisp_symbol(i32 960)
  %call3 = call i64 @builtin_lisp_symbol(i32 372)
  %call4 = call i64 (i32, i64, i64, ...) @listn(i32 1, i64 2, i64 %call2, i64 %call3)
  %call5 = call i64 @Fput(i64 %call, i64 %call1, i64 %call4)
  %call6 = call i64 @builtin_lisp_symbol(i32 960)
  %call7 = call i64 @builtin_lisp_symbol(i32 374)
  %call8 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0))
  %call9 = call i64 @Fput(i64 %call6, i64 %call7, i64 %call8)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 355))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 355), align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 353), align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.105, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 345))
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 345), align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 351), align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.13
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.107, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 359))
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call18, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 359), align 8
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.17
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.109, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 365))
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.19
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call21, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 365), align 8
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.20
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.111, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 366))
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.22
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call24, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 366), align 8
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.23
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.113, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 344))
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.25
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call27, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 344), align 8
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.26
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 349))
  br label %do.end.29

do.end.29:                                        ; preds = %do.body.28
  %call30 = call i64 @Fcons(i64 322, i64 162)
  store i64 %call30, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 349), align 8
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.29
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.117, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 352))
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.31
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call33, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 352), align 8
  br label %do.body.34

do.body.34:                                       ; preds = %do.end.32
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.119, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 354))
  br label %do.end.35

do.end.35:                                        ; preds = %do.body.34
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call36, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 354), align 8
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.35
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_xfns.b_fwd, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 504))
  br label %do.end.38

do.end.38:                                        ; preds = %do.body.37
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 504), align 1
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_xfns.b_fwd.121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 503))
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.39
  store i8 0, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 503), align 1
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_xfns.b_fwd.123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 502))
  br label %do.end.42

do.end.42:                                        ; preds = %do.body.41
  store i8 1, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 502), align 1
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_xfns.b_fwd.125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 505))
  br label %do.end.44

do.end.44:                                        ; preds = %do.body.43
  store i8 1, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 505), align 1
  %call45 = call i64 @builtin_lisp_symbol(i32 1045)
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %call47 = call i64 @Fprovide(i64 %call45, i64 %call46)
  %call48 = call i64 @intern_c_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0))
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %call50 = call i64 @Fprovide(i64 %call48, i64 %call49)
  %call51 = call i64 @intern_c_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0))
  %call52 = call i64 @builtin_lisp_symbol(i32 0)
  %call53 = call i64 @Fprovide(i64 %call51, i64 %call52)
  %call54 = call i64 @intern_c_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0))
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %call56 = call i64 @Fprovide(i64 %call54, i64 %call55)
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.44
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xfns.o_fwd.130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 120))
  br label %do.end.58

do.end.58:                                        ; preds = %do.body.57
  %arraydecay = getelementptr inbounds [36 x i8], [36 x i8]* %gtk_version, i32 0, i32 0
  %call59 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i32 2, i32 24, i32 28) #3
  store i32 %call59, i32* %len, align 4
  %arraydecay60 = getelementptr inbounds [36 x i8], [36 x i8]* %gtk_version, i32 0, i32 0
  %0 = load i32, i32* %len, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %len, align 4
  %conv61 = sext i32 %1 to i64
  %call62 = call i64 @make_pure_string(i8* %arraydecay60, i64 %conv, i64 %conv61, i1 zeroext false)
  store i64 %call62, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 120), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_change_window_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_delete_window_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_window_property to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sxw_display_color_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_grayscale_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sxw_color_defined_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sxw_color_values to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_server_max_request_size to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_server_vendor to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_server_version to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_pixel_width to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_pixel_height to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_mm_width to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_mm_height to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_screens to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_planes to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_color_cells to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_visual_class to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_backing_store to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_save_under to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_display_monitor_attributes_list to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_frame_geometry to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_frame_edges to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sx_mouse_absolute_pixel_position)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_set_mouse_absolute_pixel_position to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_wm_set_size_hint to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_create_frame to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_open_connection to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_close_connection to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sx_display_list)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_synchronize to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_backspace_delete_keys_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_show_tip to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Sx_hide_tip)
  %call63 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call63, i64* @tip_timer, align 8
  call void @staticpro(i64* @tip_timer)
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call64, i64* @tip_frame, align 8
  call void @staticpro(i64* @tip_frame)
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call65, i64* @last_show_tip_args, align 8
  call void @staticpro(i64* @last_show_tip_args)
  call void @defsubr(%struct.Lisp_Subr* @Sx_uses_old_gtk_dialog)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_file_dialog to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_select_font to %struct.Lisp_Subr*))
  ret void
}

declare i64 @Fput(i64, i64, i64) #1

declare i64 @listn(i32, i64, i64, ...) #1

declare i64 @build_pure_c_string(i8*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare i64 @Fprovide(i64, i64) #1

declare i64 @intern_c_string(i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i64 @make_pure_string(i8*, i64, i64, i1 zeroext) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @staticpro(i64*) #1

declare i64 @Fstring_equal(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_name_internal(%struct.frame* %f, i64 %name) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %name.addr = alloca i64, align 8
  %text = alloca %struct.XTextProperty, align 8
  %icon = alloca %struct.XTextProperty, align 8
  %bytes = alloca i64, align 8
  %stringp = alloca i8, align 1
  %do_free_icon_value = alloca i8, align 1
  %do_free_text_value = alloca i8, align 1
  %coding_system = alloca i64, align 8
  %encoded_name = alloca i64, align 8
  %encoded_icon_name = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 9
  %2 = load i64, i64* %window_desc, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end.115

if.then:                                          ; preds = %entry
  call void @block_input()
  store i8 0, i8* %do_free_icon_value, align 1
  store i8 0, i8* %do_free_text_value, align 1
  %3 = load i64, i64* %name.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 988)
  %call1 = call i64 @code_convert_string_norecord(i64 %3, i64 %call, i1 zeroext true)
  store i64 %call1, i64* %encoded_name, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 291)
  store i64 %call2, i64* %coding_system, align 8
  %4 = load i64, i64* %name.addr, align 8
  %5 = load i64, i64* %coding_system, align 8
  %call3 = call i8* @x_encode_text(i64 %4, i64 %5, i64* %bytes, i8* %stringp, i8* %do_free_text_value)
  %value = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %text, i32 0, i32 0
  store i8* %call3, i8** %value, align 8
  %6 = load i8, i8* %stringp, align 1
  %tobool4 = trunc i8 %6 to i1
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data5 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x6 = bitcast %union.output_data* %output_data5 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x6, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 44
  %9 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %Xatom_COMPOUND_TEXT = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 50
  %10 = load i64, i64* %Xatom_COMPOUND_TEXT, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 31, %cond.true ], [ %10, %cond.false ]
  %encoding = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %text, i32 0, i32 1
  store i64 %cond, i64* %encoding, align 8
  %format = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %text, i32 0, i32 2
  store i32 8, i32* %format, align 4
  %11 = load i64, i64* %bytes, align 8
  %nitems = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %text, i32 0, i32 3
  store i64 %11, i64* %nitems, align 8
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 2
  %13 = load i64, i64* %icon_name, align 8
  %call7 = call zeroext i1 @STRINGP(i64 %13)
  br i1 %call7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %cond.end
  %14 = bitcast %struct.XTextProperty* %icon to i8*
  %15 = bitcast %struct.XTextProperty* %text to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  %16 = load i64, i64* %encoded_name, align 8
  store i64 %16, i64* %encoded_icon_name, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name9 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 2
  %18 = load i64, i64* %icon_name9, align 8
  %19 = load i64, i64* %coding_system, align 8
  %call10 = call i8* @x_encode_text(i64 %18, i64 %19, i64* %bytes, i8* %stringp, i8* %do_free_icon_value)
  %value11 = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %icon, i32 0, i32 0
  store i8* %call10, i8** %value11, align 8
  %20 = load i8, i8* %stringp, align 1
  %tobool12 = trunc i8 %20 to i1
  br i1 %tobool12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.else
  br label %cond.end.19

cond.false.14:                                    ; preds = %if.else
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data15 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 62
  %x16 = bitcast %union.output_data* %output_data15 to %struct.x_output**
  %22 = load %struct.x_output*, %struct.x_output** %x16, align 8
  %display_info17 = getelementptr inbounds %struct.x_output, %struct.x_output* %22, i32 0, i32 44
  %23 = load %struct.x_display_info*, %struct.x_display_info** %display_info17, align 8
  %Xatom_COMPOUND_TEXT18 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %23, i32 0, i32 50
  %24 = load i64, i64* %Xatom_COMPOUND_TEXT18, align 8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.14, %cond.true.13
  %cond20 = phi i64 [ 31, %cond.true.13 ], [ %24, %cond.false.14 ]
  %encoding21 = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %icon, i32 0, i32 1
  store i64 %cond20, i64* %encoding21, align 8
  %format22 = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %icon, i32 0, i32 2
  store i32 8, i32* %format22, align 4
  %25 = load i64, i64* %bytes, align 8
  %nitems23 = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %icon, i32 0, i32 3
  store i64 %25, i64* %nitems23, align 8
  %26 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %icon_name24 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 2
  %27 = load i64, i64* %icon_name24, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 988)
  %call26 = call i64 @code_convert_string_norecord(i64 %27, i64 %call25, i1 zeroext true)
  store i64 %call26, i64* %encoded_icon_name, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.19, %if.then.8
  %28 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data27 = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 62
  %x28 = bitcast %union.output_data* %output_data27 to %struct.x_output**
  %29 = load %struct.x_output*, %struct.x_output** %x28, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %29, i32 0, i32 12
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_window_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call29)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWindow*
  %33 = load i64, i64* %encoded_name, align 8
  %call31 = call i8* @SSDATA(i64 %33)
  call void @gtk_window_set_title(%struct._GtkWindow* %32, i8* %call31)
  %34 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data32 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 62
  %x33 = bitcast %union.output_data* %output_data32 to %struct.x_output**
  %35 = load %struct.x_output*, %struct.x_output** %x33, align 8
  %display_info34 = getelementptr inbounds %struct.x_output, %struct.x_output* %35, i32 0, i32 44
  %36 = load %struct.x_display_info*, %struct.x_display_info** %display_info34, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %36, i32 0, i32 2
  %37 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %38 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data35 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 62
  %x36 = bitcast %union.output_data* %output_data35 to %struct.x_output**
  %39 = load %struct.x_output*, %struct.x_output** %x36, align 8
  %widget37 = getelementptr inbounds %struct.x_output, %struct.x_output* %39, i32 0, i32 12
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget37, align 8
  %tobool38 = icmp ne %struct._GtkWidget* %40, null
  br i1 %tobool38, label %cond.true.39, label %cond.false.58

cond.true.39:                                     ; preds = %if.end
  %41 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data40 = getelementptr inbounds %struct.frame, %struct.frame* %41, i32 0, i32 62
  %x41 = bitcast %union.output_data* %output_data40 to %struct.x_output**
  %42 = load %struct.x_output*, %struct.x_output** %x41, align 8
  %widget42 = getelementptr inbounds %struct.x_output, %struct.x_output* %42, i32 0, i32 12
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %widget42, align 8
  %tobool43 = icmp ne %struct._GtkWidget* %43, null
  br i1 %tobool43, label %land.lhs.true, label %cond.false.55

land.lhs.true:                                    ; preds = %cond.true.39
  %44 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data44 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 62
  %x45 = bitcast %union.output_data* %output_data44 to %struct.x_output**
  %45 = load %struct.x_output*, %struct.x_output** %x45, align 8
  %widget46 = getelementptr inbounds %struct.x_output, %struct.x_output* %45, i32 0, i32 12
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget46, align 8
  %call47 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %46)
  %tobool48 = icmp ne %struct._GdkDrawable* %call47, null
  br i1 %tobool48, label %cond.true.49, label %cond.false.55

cond.true.49:                                     ; preds = %land.lhs.true
  %47 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data50 = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 62
  %x51 = bitcast %union.output_data* %output_data50 to %struct.x_output**
  %48 = load %struct.x_output*, %struct.x_output** %x51, align 8
  %widget52 = getelementptr inbounds %struct.x_output, %struct.x_output* %48, i32 0, i32 12
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget52, align 8
  %call53 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %49)
  %call54 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call53)
  br label %cond.end.56

cond.false.55:                                    ; preds = %land.lhs.true, %cond.true.39
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.49
  %cond57 = phi i64 [ %call54, %cond.true.49 ], [ 0, %cond.false.55 ]
  br label %cond.end.62

cond.false.58:                                    ; preds = %if.end
  %50 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data59 = getelementptr inbounds %struct.frame, %struct.frame* %50, i32 0, i32 62
  %x60 = bitcast %union.output_data* %output_data59 to %struct.x_output**
  %51 = load %struct.x_output*, %struct.x_output** %x60, align 8
  %window_desc61 = getelementptr inbounds %struct.x_output, %struct.x_output* %51, i32 0, i32 9
  %52 = load i64, i64* %window_desc61, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.58, %cond.end.56
  %cond63 = phi i64 [ %cond57, %cond.end.56 ], [ %52, %cond.false.58 ]
  call void @XSetWMIconName(%struct._XDisplay* %37, i64 %cond63, %struct.XTextProperty* %icon)
  %53 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data64 = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 62
  %x65 = bitcast %union.output_data* %output_data64 to %struct.x_output**
  %54 = load %struct.x_output*, %struct.x_output** %x65, align 8
  %display_info66 = getelementptr inbounds %struct.x_output, %struct.x_output* %54, i32 0, i32 44
  %55 = load %struct.x_display_info*, %struct.x_display_info** %display_info66, align 8
  %display67 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %55, i32 0, i32 2
  %56 = load %struct._XDisplay*, %struct._XDisplay** %display67, align 8
  %57 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data68 = getelementptr inbounds %struct.frame, %struct.frame* %57, i32 0, i32 62
  %x69 = bitcast %union.output_data* %output_data68 to %struct.x_output**
  %58 = load %struct.x_output*, %struct.x_output** %x69, align 8
  %widget70 = getelementptr inbounds %struct.x_output, %struct.x_output* %58, i32 0, i32 12
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %widget70, align 8
  %tobool71 = icmp ne %struct._GtkWidget* %59, null
  br i1 %tobool71, label %cond.true.72, label %cond.false.92

cond.true.72:                                     ; preds = %cond.end.62
  %60 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data73 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 62
  %x74 = bitcast %union.output_data* %output_data73 to %struct.x_output**
  %61 = load %struct.x_output*, %struct.x_output** %x74, align 8
  %widget75 = getelementptr inbounds %struct.x_output, %struct.x_output* %61, i32 0, i32 12
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %widget75, align 8
  %tobool76 = icmp ne %struct._GtkWidget* %62, null
  br i1 %tobool76, label %land.lhs.true.77, label %cond.false.89

land.lhs.true.77:                                 ; preds = %cond.true.72
  %63 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data78 = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 62
  %x79 = bitcast %union.output_data* %output_data78 to %struct.x_output**
  %64 = load %struct.x_output*, %struct.x_output** %x79, align 8
  %widget80 = getelementptr inbounds %struct.x_output, %struct.x_output* %64, i32 0, i32 12
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %widget80, align 8
  %call81 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %65)
  %tobool82 = icmp ne %struct._GdkDrawable* %call81, null
  br i1 %tobool82, label %cond.true.83, label %cond.false.89

cond.true.83:                                     ; preds = %land.lhs.true.77
  %66 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data84 = getelementptr inbounds %struct.frame, %struct.frame* %66, i32 0, i32 62
  %x85 = bitcast %union.output_data* %output_data84 to %struct.x_output**
  %67 = load %struct.x_output*, %struct.x_output** %x85, align 8
  %widget86 = getelementptr inbounds %struct.x_output, %struct.x_output* %67, i32 0, i32 12
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %widget86, align 8
  %call87 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %68)
  %call88 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call87)
  br label %cond.end.90

cond.false.89:                                    ; preds = %land.lhs.true.77, %cond.true.72
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.83
  %cond91 = phi i64 [ %call88, %cond.true.83 ], [ 0, %cond.false.89 ]
  br label %cond.end.96

cond.false.92:                                    ; preds = %cond.end.62
  %69 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data93 = getelementptr inbounds %struct.frame, %struct.frame* %69, i32 0, i32 62
  %x94 = bitcast %union.output_data* %output_data93 to %struct.x_output**
  %70 = load %struct.x_output*, %struct.x_output** %x94, align 8
  %window_desc95 = getelementptr inbounds %struct.x_output, %struct.x_output* %70, i32 0, i32 9
  %71 = load i64, i64* %window_desc95, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.92, %cond.end.90
  %cond97 = phi i64 [ %cond91, %cond.end.90 ], [ %71, %cond.false.92 ]
  %72 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data98 = getelementptr inbounds %struct.frame, %struct.frame* %72, i32 0, i32 62
  %x99 = bitcast %union.output_data* %output_data98 to %struct.x_output**
  %73 = load %struct.x_output*, %struct.x_output** %x99, align 8
  %display_info100 = getelementptr inbounds %struct.x_output, %struct.x_output* %73, i32 0, i32 44
  %74 = load %struct.x_display_info*, %struct.x_display_info** %display_info100, align 8
  %Xatom_net_wm_icon_name = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %74, i32 0, i32 123
  %75 = load i64, i64* %Xatom_net_wm_icon_name, align 8
  %76 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data101 = getelementptr inbounds %struct.frame, %struct.frame* %76, i32 0, i32 62
  %x102 = bitcast %union.output_data* %output_data101 to %struct.x_output**
  %77 = load %struct.x_output*, %struct.x_output** %x102, align 8
  %display_info103 = getelementptr inbounds %struct.x_output, %struct.x_output* %77, i32 0, i32 44
  %78 = load %struct.x_display_info*, %struct.x_display_info** %display_info103, align 8
  %Xatom_UTF8_STRING = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %78, i32 0, i32 51
  %79 = load i64, i64* %Xatom_UTF8_STRING, align 8
  %80 = load i64, i64* %encoded_icon_name, align 8
  %call104 = call i8* @SDATA(i64 %80)
  %81 = load i64, i64* %encoded_icon_name, align 8
  %call105 = call i64 @SBYTES(i64 %81)
  %conv = trunc i64 %call105 to i32
  %call106 = call i32 @XChangeProperty(%struct._XDisplay* %56, i64 %cond97, i64 %75, i64 %79, i32 8, i32 0, i8* %call104, i32 %conv)
  %82 = load i8, i8* %do_free_icon_value, align 1
  %tobool107 = trunc i8 %82 to i1
  br i1 %tobool107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %cond.end.96
  %value109 = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %icon, i32 0, i32 0
  %83 = load i8*, i8** %value109, align 8
  call void @xfree(i8* %83)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %cond.end.96
  %84 = load i8, i8* %do_free_text_value, align 1
  %tobool111 = trunc i8 %84 to i1
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.110
  %value113 = getelementptr inbounds %struct.XTextProperty, %struct.XTextProperty* %text, i32 0, i32 0
  %85 = load i8*, i8** %value113, align 8
  call void @xfree(i8* %85)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.110
  call void @unblock_input()
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @x_encode_text(i64 %string, i64 %coding_system, i64* %text_bytes, i8* %stringp, i8* %freep) #0 {
entry:
  %retval = alloca i8*, align 8
  %string.addr = alloca i64, align 8
  %coding_system.addr = alloca i64, align 8
  %text_bytes.addr = alloca i64*, align 8
  %stringp.addr = alloca i8*, align 8
  %freep.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %coding = alloca %struct.coding_system, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %coding_system, i64* %coding_system.addr, align 8
  store i64* %text_bytes, i64** %text_bytes.addr, align 8
  store i8* %stringp, i8** %stringp.addr, align 8
  store i8* %freep, i8** %freep.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call i32 @string_xstring_p(i64 %0)
  store i32 %call, i32* %result, align 4
  %1 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @SBYTES(i64 %2)
  %3 = load i64*, i64** %text_bytes.addr, align 8
  store i64 %call1, i64* %3, align 8
  %4 = load i8*, i8** %stringp.addr, align 8
  store i8 1, i8* %4, align 1
  %5 = load i8*, i8** %freep.addr, align 8
  store i8 0, i8* %5, align 1
  %6 = load i64, i64* %string.addr, align 8
  %call2 = call i8* @SDATA(i64 %6)
  store i8* %call2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %coding_system.addr, align 8
  call void @setup_coding_system(i64 %7, %struct.coding_system* %coding)
  %mode = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load = load i32, i32* %mode, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 31
  %or = or i32 %bf.clear, 17
  %bf.load3 = load i32, i32* %mode, align 8
  %bf.value = and i32 %or, 31
  %bf.shl = shl i32 %bf.value, 14
  %bf.clear4 = and i32 %bf.load3, -507905
  %bf.set = or i32 %bf.clear4, %bf.shl
  store i32 %bf.set, i32* %mode, align 8
  %common_flags = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 1
  %bf.load5 = load i32, i32* %common_flags, align 8
  %bf.clear6 = and i32 %bf.load5, 16383
  %and = and i32 %bf.clear6, -256
  %bf.load7 = load i32, i32* %common_flags, align 8
  %bf.value8 = and i32 %and, 16383
  %bf.clear9 = and i32 %bf.load7, -16384
  %bf.set10 = or i32 %bf.clear9, %bf.value8
  store i32 %bf.set10, i32* %common_flags, align 8
  %8 = load i64, i64* %string.addr, align 8
  %call11 = call i64 @SCHARS(i64 %8)
  %call12 = call noalias i8* @xnmalloc(i64 %call11, i64 2)
  %destination = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 22
  store i8* %call12, i8** %destination, align 8
  %9 = load i64, i64* %string.addr, align 8
  %call13 = call i64 @SCHARS(i64 %9)
  %mul = mul nsw i64 %call13, 2
  %dst_bytes = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 20
  store i64 %mul, i64* %dst_bytes, align 8
  %10 = load i64, i64* %string.addr, align 8
  %11 = load i64, i64* %string.addr, align 8
  %call14 = call i64 @SCHARS(i64 %11)
  %12 = load i64, i64* %string.addr, align 8
  %call15 = call i64 @SBYTES(i64 %12)
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  call void @encode_coding_object(%struct.coding_system* %coding, i64 %10, i64 0, i64 0, i64 %call14, i64 %call15, i64 %call16)
  %produced = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 8
  %13 = load i64, i64* %produced, align 8
  %14 = load i64*, i64** %text_bytes.addr, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* %result, align 4
  %cmp17 = icmp eq i32 %15, 1
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %16 = load i64, i64* %coding_system.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 291)
  %cmp19 = icmp eq i64 %16, %call18
  %lnot = xor i1 %cmp19, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %17 = phi i1 [ true, %if.end ], [ %lnot, %lor.rhs ]
  %18 = load i8*, i8** %stringp.addr, align 8
  %frombool = zext i1 %17 to i8
  store i8 %frombool, i8* %18, align 1
  %19 = load i8*, i8** %freep.addr, align 8
  store i8 1, i8* %19, align 1
  %destination20 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %coding, i32 0, i32 22
  %20 = load i8*, i8** %destination20, align 8
  store i8* %20, i8** %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

declare void @XSetWMIconName(%struct._XDisplay*, i64, %struct.XTextProperty*) #1

declare i32 @string_xstring_p(i64) #1

declare void @setup_coding_system(i64, %struct.coding_system*) #1

declare void @encode_coding_object(%struct.coding_system*, i64, i64, i64, i64, i64, i64) #1

declare %struct._XOC* @XCreateFontSet(%struct._XDisplay*, i8*, i8***, i32*, i8**) #1

declare void @XFreeStringList(i8**) #1

; Function Attrs: nounwind uwtable
define internal i64 @unwind_create_frame(i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  store %struct.frame* %2, %struct.frame** %f, align 8
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 61
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp = icmp ne %struct.terminal* %4, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %frame.addr, align 8
  %6 = load i64, i64* @Vframe_list, align 8
  %call1 = call i64 @Fmemq(i64 %5, i64 %6)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %call1, %call2
  br i1 %cmp3, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal5 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 61
  %8 = load %struct.terminal*, %struct.terminal** %terminal5, align 8
  %image_cache = getelementptr inbounds %struct.terminal, %struct.terminal* %8, i32 0, i32 11
  %9 = load %struct.image_cache*, %struct.image_cache** %image_cache, align 8
  %cmp6 = icmp ne %struct.image_cache* %9, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.then.4
  %10 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal7 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 61
  %11 = load %struct.terminal*, %struct.terminal** %terminal7, align 8
  %image_cache8 = getelementptr inbounds %struct.terminal, %struct.terminal* %11, i32 0, i32 11
  %12 = load %struct.image_cache*, %struct.image_cache** %image_cache8, align 8
  %refcount = getelementptr inbounds %struct.image_cache, %struct.image_cache* %12, i32 0, i32 4
  %13 = load i64, i64* %refcount, align 8
  %14 = load i64, i64* @image_cache_refcount, align 8
  %cmp9 = icmp eq i64 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %land.lhs.true
  %15 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal11 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 61
  %16 = load %struct.terminal*, %struct.terminal** %terminal11, align 8
  %image_cache12 = getelementptr inbounds %struct.terminal, %struct.terminal* %16, i32 0, i32 11
  %17 = load %struct.image_cache*, %struct.image_cache** %image_cache12, align 8
  %refcount13 = getelementptr inbounds %struct.image_cache, %struct.image_cache* %17, i32 0, i32 4
  %18 = load i64, i64* %refcount13, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, i64* %refcount13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %land.lhs.true, %if.then.4
  %19 = load %struct.frame*, %struct.frame** %f, align 8
  call void @x_free_frame_resources(%struct.frame* %19)
  %20 = load %struct.frame*, %struct.frame** %f, align 8
  call void @free_glyphs(%struct.frame* %20)
  %call15 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.end.14, %if.then
  %21 = load i64, i64* %retval
  ret i64 %21
}

declare i64 @Fmemq(i64, i64) #1

declare void @x_free_frame_resources(%struct.frame*) #1

declare void @free_glyphs(%struct.frame*) #1

; Function Attrs: noreturn
declare void @signal_error(i8*, i64) #2

declare i8* @xsettings_get_system_font() #1

declare i64 @font_open_by_name(%struct.frame*, i64) #1

declare i64 @build_unibyte_string(i8*) #1

declare zeroext i1 @FONTP(i64) #1

declare void @x_set_frame_parameters(%struct.frame*, i64) #1

declare i64 @x_frame_get_and_record_arg(%struct.frame*, i64, i64, i8*, i8*, i32) #1

declare zeroext i1 @xg_create_frame_widgets(%struct.frame*) #1

declare i32 @XGetWindowAttributes(%struct._XDisplay*, i64, %struct.XWindowAttributes*) #1

declare i32 @XChangeWindowAttributes(%struct._XDisplay*, i64, i64, %struct.XSetWindowAttributes*) #1

declare void @x_wm_set_icon_position(%struct.frame*, i32, i32) #1

declare zeroext i1 @x_text_icon(%struct.frame*, i8*) #1

declare %struct._XGC* @XCreateGC(%struct._XDisplay*, i64, i64, %struct.XGCValues*) #1

declare i64 @XCreatePixmapFromBitmapData(%struct._XDisplay*, i64, i8*, i32, i32, i64, i64, i32) #1

declare void @XSetWMProperties(%struct._XDisplay*, i64, %struct.XTextProperty*, %struct.XTextProperty*, i8**, i32, %struct.XSizeHints*, %struct.XWMHints*, %struct.XClassHint*) #1

; Function Attrs: nounwind
declare i32 @getpid() #4

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #1

declare zeroext i1 @x_had_errors_p(%struct._XDisplay*) #1

declare %struct.frame* @decode_live_frame(i64) #1

declare i32 @XGetGeometry(%struct._XDisplay*, i64, i64*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare i64 @list4(i64, i64, i64, i64) #1

declare i64 @make_string(i8*, i64) #1

declare i64 @x_property_data_to_lisp(%struct.frame*, i8*, i64, i32, i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @Fnth(i64, i64) #1

declare i64 @Fget_buffer_create(i64) #1

declare void @set_window_buffer(i64, i64, i1 zeroext, i1 zeroext) #1

declare i64 @Ferase_buffer() #1

declare i64 @Finsert(i64, i64*) #1

; Function Attrs: nounwind uwtable
define internal void @unwind_create_tip_frame(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %deleted = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @unwind_create_frame(i64 %0)
  store i64 %call, i64* %deleted, align 8
  %1 = load i64, i64* %deleted, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* @tip_window, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* @tip_frame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @XCreateWindow(%struct._XDisplay*, i64, i32, i32, i32, i32, i32, i32, i32, %struct.Visual*, i64, %struct.XSetWindowAttributes*) #1

declare void @change_frame_size(%struct.frame*, i32, i32, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) #1

declare i64 @Fmodify_frame_parameters(i64, i64) #1

declare i64 @call2(i64, i64, i64) #1

declare void @x_menu_set_in_use(i1 zeroext) #1

declare void @unload_color(%struct.frame*, i64) #1

declare i32 @XSetBackground(%struct._XDisplay*, %struct._XGC*, i64) #1

declare i32 @XSetForeground(%struct._XDisplay*, %struct._XGC*, i64) #1

declare i32 @XSetWindowBackground(%struct._XDisplay*, i64, i64) #1

declare void @xg_set_background_color(%struct.frame*, i64) #1

declare void @update_face_from_frame_parameter(%struct.frame*, i64, i64) #1

declare void @redraw_frame(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_border_pixel(%struct.frame* %f, i32 %pix) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %pix.addr = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %pix, i32* %pix.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %2 = load %struct.x_output*, %struct.x_output** %x, align 8
  %border_pixel = getelementptr inbounds %struct.x_output, %struct.x_output* %2, i32 0, i32 29
  %3 = load i64, i64* %border_pixel, align 8
  call void @unload_color(%struct.frame* %0, i64 %3)
  %4 = load i32, i32* %pix.addr, align 4
  %conv = sext i32 %4 to i64
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %6 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %border_pixel3 = getelementptr inbounds %struct.x_output, %struct.x_output* %6, i32 0, i32 29
  store i64 %conv, i64* %border_pixel3, align 8
  %7 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %8 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %8, i32 0, i32 9
  %9 = load i64, i64* %window_desc, align 8
  %cmp = icmp ne i64 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %border_width = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 50
  %11 = load i32, i32* %border_width, align 4
  %cmp7 = icmp sgt i32 %11, 0
  br i1 %cmp7, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  call void @block_input()
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data9 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x10 = bitcast %union.output_data* %output_data9 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x10, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 44
  %14 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 2
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data11 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 62
  %x12 = bitcast %union.output_data* %output_data11 to %struct.x_output**
  %17 = load %struct.x_output*, %struct.x_output** %x12, align 8
  %window_desc13 = getelementptr inbounds %struct.x_output, %struct.x_output* %17, i32 0, i32 9
  %18 = load i64, i64* %window_desc13, align 8
  %19 = load i32, i32* %pix.addr, align 4
  %conv14 = sext i32 %19 to i64
  %call = call i32 @XSetWindowBorder(%struct._XDisplay* %15, i64 %18, i64 %conv14)
  call void @unblock_input()
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %visible = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 26
  %21 = bitcast i48* %visible to i64*
  %bf.load = load i64, i64* %21, align 8
  %bf.lshr = lshr i64 %bf.load, 10
  %bf.clear = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %22 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @redraw_frame(%struct.frame* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare i32 @XSetWindowBorder(%struct._XDisplay*, i64, i64) #1

declare void @x_free_colors(%struct.frame*, i64*, i32) #1

declare i64 @x_copy_color(%struct.frame*, i64) #1

declare void @x_update_cursor(%struct.frame*, i1 zeroext) #1

declare void @set_frame_cursor_types(%struct.frame*, i64) #1

declare zeroext i1 @x_bitmap_icon(%struct.frame*, i64) #1

declare void @xg_clear_under_internal_border(%struct.frame*) #1

declare void @fset_redisplay(%struct.frame*) #1

declare void @free_frame_menubar(%struct.frame*) #1

declare void @run_window_configuration_change_hook(%struct.frame*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @x_catch_errors_with_handler(%struct._XDisplay*, void (%struct._XDisplay*, %struct.XErrorEvent*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @x_set_mouse_color_handler(%struct._XDisplay* %dpy, %struct.XErrorEvent* %event, i8* %error_string, i8* %data) #0 {
entry:
  %dpy.addr = alloca %struct._XDisplay*, align 8
  %event.addr = alloca %struct.XErrorEvent*, align 8
  %error_string.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %cursor_data = alloca %struct.mouse_cursor_data*, align 8
  %i = alloca i32, align 4
  store %struct._XDisplay* %dpy, %struct._XDisplay** %dpy.addr, align 8
  store %struct.XErrorEvent* %event, %struct.XErrorEvent** %event.addr, align 8
  store i8* %error_string, i8** %error_string.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mouse_cursor_data*
  store %struct.mouse_cursor_data* %1, %struct.mouse_cursor_data** %cursor_data, align 8
  %2 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %error_cursor = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %2, i32 0, i32 1
  store i32 -1, i32* %error_cursor, align 4
  %3 = load i8*, i8** %error_string.addr, align 8
  %4 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %error_string1 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %4, i32 0, i32 5
  store i8* %3, i8** %error_string1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %last_cursor_create_request = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %6, i32 0, i32 0
  %7 = load i32, i32* %last_cursor_create_request, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.XErrorEvent*, %struct.XErrorEvent** %event.addr, align 8
  %serial = getelementptr inbounds %struct.XErrorEvent, %struct.XErrorEvent* %8, i32 0, i32 3
  %9 = load i64, i64* %serial, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %x_request_serial = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %11, i32 0, i32 4
  %arrayidx = getelementptr inbounds [7 x i64], [7 x i64]* %x_request_serial, i32 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx, align 8
  %cmp2 = icmp uge i64 %9, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %error_cursor3 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %14, i32 0, i32 1
  store i32 %13, i32* %error_cursor3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %error_cursor4 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %16, i32 0, i32 1
  %17 = load i32, i32* %error_cursor4, align 4
  %cmp5 = icmp sge i32 %17, 0
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %for.end
  %18 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %error_cursor7 = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %18, i32 0, i32 1
  %19 = load i32, i32* %error_cursor7, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.mouse_cursor_data*, %struct.mouse_cursor_data** %cursor_data, align 8
  %cursor = getelementptr inbounds %struct.mouse_cursor_data, %struct.mouse_cursor_data* %20, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [7 x i64], [7 x i64]* %cursor, i32 0, i64 %idxprom8
  store i64 0, i64* %arrayidx9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %for.end
  ret void
}

declare i64 @XNextRequest(%struct._XDisplay*) #1

declare i64 @XCreateFontCursor(%struct._XDisplay*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i32 @XFreeCursor(%struct._XDisplay*, i64) #1

declare void @x_uncatch_errors_after_check() #1

declare void @x_query_colors(%struct.frame*, %struct.XColor*, i32) #1

declare i32 @XRecolorCursor(%struct._XDisplay*, i64, %struct.XColor*, %struct.XColor*) #1

declare i32 @XDefineCursor(%struct._XDisplay*, i64, i64) #1

declare void @fset_title(%struct.frame*, i64) #1

declare void @xg_change_toolbar_position(%struct.frame*, i64) #1

declare void @fset_tool_bar_position(%struct.frame*, i64) #1

; Function Attrs: noreturn
declare void @wrong_choice(i64, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
