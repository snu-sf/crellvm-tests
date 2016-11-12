; ModuleID = './src/xmenu.bc'
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
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.12, i16, i16, i8*, i8*, i8* }
%union.anon.12 = type { i64 ()* }
%struct.fd_set = type { [16 x i64] }
%struct.anon.11 = type { %struct._XExtData*, %struct._XPrivate*, i32, i32, i32, i32, i8*, i64, i64, i64, i32, i64 (%struct._XDisplay*)*, i32, i32, i32, i32, i32, %struct.ScreenFormat*, i32, i32, %struct._XPrivate*, %struct._XPrivate*, i32, i64, i64, i8*, i8*, i8*, i8*, i32, %struct._XrmHashBucketRec*, i32 (%struct._XDisplay*)*, i8*, i32, i32, %struct.Screen*, i64, i64, i32, i32, i8*, i8*, i32, i8* }
%struct.ScreenFormat = type { %struct._XExtData*, i32, i32, i32 }
%struct._XPrivate = type opaque
%struct.__sigset_t = type { [16 x i64] }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.x_output = type { i32, i32, i32, i32, i32, i64, %struct._XGC*, %struct._XGC*, %struct._XGC*, i64, i64, i64, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8, %struct._GdkGeometry, i64, %struct._GtkTooltip*, %struct._GtkWidget*, %struct._GtkWindow*, i64, %struct.font*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.XWMHints, %struct.x_display_info*, %union._XEvent*, i8, %struct._XIC*, i64, %struct._XOC*, %struct.relief, %struct.relief, i64, i32, i32, i32 }
%struct._GdkGeometry = type { i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32 }
%struct._GtkTooltip = type opaque
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
%struct._widget_value = type { i64, i8*, i8*, i64, i8*, i64, i8, i8, i8, i32, %struct._widget_value*, i8*, %struct._widget_value* }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }
%struct.XAnyEvent = type { i32, i64, i32, %struct._XDisplay*, i64 }
%struct.xg_menu_item_cb_data_ = type { %struct.xg_list_node_, i64, i64, i8*, %struct.xg_menu_cb_data_* }
%struct.xg_list_node_ = type { %struct.xg_list_node_*, %struct.xg_list_node_* }
%struct.xg_menu_cb_data_ = type { %struct.xg_list_node_, %struct.frame*, i64, i32, void ()*, i32 }
%struct._GtkCheckMenuItem = type { %struct._GtkMenuItem, i8 }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, {}*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.13] }
%union.anon.13 = type { i64 }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkRegion = type opaque
%struct.next_popup_x_y = type { %struct.frame*, i32, i32 }

@menu_items_inuse = external global i64, align 8
@popup_activated_flag = internal global i32 0, align 4
@x_display_list = external global %struct.x_display_info*, align 8
@.str = private unnamed_addr constant [14 x i8] c"activate_item\00", align 1
@globals = external global %struct.emacs_globals, align 8
@current_buffer = external global %struct.buffer*, align 8
@menu_items = external global i64, align 8
@menu_items_allocated = external global i32, align 4
@menu_items_used = external global i32, align 4
@menu_items_n_panes = external global i32, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"menubar\00", align 1
@xg_crazy_callback_abort = internal global i8 0, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Empty menu\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@menu_item_selection = internal global i64* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Smenu_or_popup_active_p = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.12 { i64 ()* @Fmenu_or_popup_active_p }, i16 0, i16 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"accelerate-menu\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"emacs_menuitem\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"popup\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Multiple panes in dialog box\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Submenu in dialog items\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Too many dialog items\00", align 1
@button_names = internal global [10 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str.15 = private unnamed_addr constant [8 x i8] c"button1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"button2\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"button3\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"button4\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"button5\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"button6\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"button7\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"button8\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"button9\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"button10\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"menu-or-popup-active-p\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"x-menu-bar-open-internal\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@Sx_menu_bar_open_internal = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fx_menu_bar_open_internal }, i16 0, i16 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @x_menu_set_in_use(i1 zeroext %in_use) #0 {
entry:
  %in_use.addr = alloca i8, align 1
  %frombool = zext i1 %in_use to i8
  store i8 %frombool, i8* %in_use.addr, align 1
  %0 = load i8, i8* %in_use.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i64 %cond, i64* @menu_items_inuse, align 8
  %1 = load i8, i8* %in_use.addr, align 1
  %tobool2 = trunc i8 %1 to i1
  %conv = zext i1 %tobool2 to i32
  store i32 %conv, i32* @popup_activated_flag, align 4
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define void @x_menu_wait_for_event(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %next_time = alloca %struct.timespec, align 8
  %ntp = alloca %struct.timespec*, align 8
  %read_fds = alloca %struct.fd_set, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %n = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %fd = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %entry
  %call = call i32 @gtk_events_pending()
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call { i64, i64 } @timer_check()
  %0 = bitcast %struct.timespec* %next_time to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = extractvalue { i64, i64 } %call1, 0
  store i64 %2, i64* %1, align 8
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = extractvalue { i64, i64 } %call1, 1
  store i64 %4, i64* %3, align 8
  store i32 0, i32* %n, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %5 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #3, !srcloc !1
  %asmresult = extractvalue { i64, i64* } %5, 0
  %asmresult2 = extractvalue { i64, i64* } %5, 1
  %6 = trunc i64 %asmresult to i32
  store i32 %6, i32* %__d0, align 4
  %7 = ptrtoint i64* %asmresult2 to i64
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %9 = load %struct.x_display_info*, %struct.x_display_info** @x_display_list, align 8
  store %struct.x_display_info* %9, %struct.x_display_info** %dpyinfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %tobool3 = icmp ne %struct.x_display_info* %10, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %11, i32 0, i32 2
  %12 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %13 = bitcast %struct._XDisplay* %12 to %struct.anon.11*
  %fd4 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %13, i32 0, i32 2
  %14 = load i32, i32* %fd4, align 4
  store i32 %14, i32* %fd, align 4
  %15 = load i32, i32* %fd, align 4
  call void @fd_SET(i32 %15, %struct.fd_set* %read_fds)
  %16 = load i32, i32* %fd, align 4
  %17 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %fd, align 4
  store i32 %18, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display5 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 2
  %20 = load %struct._XDisplay*, %struct._XDisplay** %display5, align 8
  %call6 = call i32 @XFlush(%struct._XDisplay* %20)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %next = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %21, i32 0, i32 0
  %22 = load %struct.x_display_info*, %struct.x_display_info** %next, align 8
  store %struct.x_display_info* %22, %struct.x_display_info** %dpyinfo, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast %struct.timespec* %next_time to { i64, i64 }*
  %24 = getelementptr { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 1
  %26 = getelementptr { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 1
  %call7 = call zeroext i1 @timespec_valid_p(i64 %25, i64 %27)
  br i1 %call7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %for.end
  store %struct.timespec* null, %struct.timespec** %ntp, align 8
  br label %if.end.9

if.else:                                          ; preds = %for.end
  store %struct.timespec* %next_time, %struct.timespec** %ntp, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %28 = load i32, i32* %n, align 4
  %add = add nsw i32 %28, 1
  %29 = load %struct.timespec*, %struct.timespec** %ntp, align 8
  %call10 = call i32 @pselect(i32 %add, %struct.fd_set* %read_fds, %struct.fd_set* null, %struct.fd_set* null, %struct.timespec* %29, %struct.__sigset_t* null)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @gtk_events_pending() #1

declare { i64, i64 } @timer_check() #1

declare void @fd_SET(i32, %struct.fd_set*) #1

declare i32 @XFlush(%struct._XDisplay*) #1

declare zeroext i1 @timespec_valid_p(i64, i64) #1

declare i32 @pselect(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timespec*, %struct.__sigset_t*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_menu_bar_open_internal(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %menubar = alloca %struct._GtkWidget*, align 8
  %f = alloca %struct.frame*, align 8
  %children = alloca %struct._GList*, align 8
  store i64 %frame, i64* %frame.addr, align 8
  call void @block_input()
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  %external_menu_bar = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 26
  %2 = bitcast i48* %external_menu_bar to i64*
  %bf.load = load i64, i64* %2, align 8
  %bf.lshr = lshr i64 %bf.load, 9
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  call void @set_frame_menubar(%struct.frame* %3, i1 zeroext false, i1 zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x, align 8
  %menubar_widget = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 16
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget, align 8
  store %struct._GtkWidget* %6, %struct._GtkWidget** %menubar, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call2)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %call4 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %10)
  store %struct._GList* %call4, %struct._GList** %children, align 8
  %11 = load %struct._GList*, %struct._GList** %children, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.1
  %12 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* @popup_activated_flag, align 4
  %14 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  call void @unblock_input()
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call9
}

declare void @block_input() #1

declare %struct.frame* @decode_window_system_frame(i64) #1

; Function Attrs: nounwind uwtable
define void @set_frame_menubar(%struct.frame* %f, i1 zeroext %first_time, i1 zeroext %deep_p) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %first_time.addr = alloca i8, align 1
  %deep_p.addr = alloca i8, align 1
  %menubar_widget = alloca %struct._GtkWidget*, align 8
  %old_widget = alloca %struct._GtkWidget*, align 8
  %items = alloca i64, align 8
  %wv = alloca %struct._widget_value*, align 8
  %first_wv = alloca %struct._widget_value*, align 8
  %prev_wv = alloca %struct._widget_value*, align 8
  %i = alloca i32, align 4
  %submenu_start = alloca i32*, align 8
  %submenu_end = alloca i32*, align 8
  %submenu_top_level_items = alloca i8*, align 8
  %submenu_n_panes = alloca i32*, align 8
  %prev = alloca %struct.buffer*, align 8
  %buffer = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  %previous_menu_items_used = alloca i32, align 4
  %previous_items = alloca i64*, align 8
  %subitems = alloca i32, align 4
  %key = alloca i64, align 8
  %string = alloca i64, align 8
  %maps = alloca i64, align 8
  %string163 = alloca i64, align 8
  %string189 = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %frombool = zext i1 %first_time to i8
  store i8 %frombool, i8* %first_time.addr, align 1
  %frombool1 = zext i1 %deep_p to i8
  store i8 %frombool1, i8* %deep_p.addr, align 1
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %menubar_widget2 = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 16
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget2, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %old_widget, align 8
  store %struct._GtkWidget* %2, %struct._GtkWidget** %menubar_widget, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %4 = bitcast %struct.frame* %3 to i8*
  %call = call i64 @make_lisp_ptr(i8* %4, i32 5)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 179), align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, i8* %deep_p.addr, align 1
  br label %if.end.15

if.else:                                          ; preds = %entry
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data3 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data3 to %struct.x_output**
  %7 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %saved_menu_event = getelementptr inbounds %struct.x_output, %struct.x_output* %7, i32 0, i32 45
  %8 = load %union._XEvent*, %union._XEvent** %saved_menu_event, align 8
  %tobool5 = icmp ne %union._XEvent* %8, null
  br i1 %tobool5, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %9 = load i8, i8* %deep_p.addr, align 1
  %tobool6 = trunc i8 %9 to i1
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  store i8 1, i8* %deep_p.addr, align 1
  %call8 = call noalias i8* @xmalloc(i64 192)
  %10 = bitcast i8* %call8 to %union._XEvent*
  %11 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data9 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 62
  %x10 = bitcast %union.output_data* %output_data9 to %struct.x_output**
  %12 = load %struct.x_output*, %struct.x_output** %x10, align 8
  %saved_menu_event11 = getelementptr inbounds %struct.x_output, %struct.x_output* %12, i32 0, i32 45
  store %union._XEvent* %10, %union._XEvent** %saved_menu_event11, align 8
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data12 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x13 = bitcast %union.output_data* %output_data12 to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x13, align 8
  %saved_menu_event14 = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 45
  %15 = load %union._XEvent*, %union._XEvent** %saved_menu_event14, align 8
  %type = bitcast %union._XEvent* %15 to i32*
  store i32 0, i32* %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %16 = load i8, i8* %deep_p.addr, align 1
  %tobool16 = trunc i8 %16 to i1
  br i1 %tobool16, label %if.then.17, label %if.else.178

if.then.17:                                       ; preds = %if.end.15
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %17, %struct.buffer** %prev, align 8
  %call18 = call i64 @SPECPDL_INDEX()
  store i64 %call18, i64* %specpdl_count, align 8
  %18 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items_used = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 21
  %19 = load i32, i32* %menu_bar_items_used, align 4
  store i32 %19, i32* %previous_menu_items_used, align 4
  %20 = load i32, i32* %previous_menu_items_used, align 4
  %conv = sext i32 %20 to i64
  %mul = mul i64 %conv, 8
  %21 = alloca i8, i64 %mul
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** %previous_items, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget, align 8
  %tobool19 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.17
  store i32 0, i32* %previous_menu_items_used, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.17
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %selected_window = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 6
  %25 = load i64, i64* %selected_window, align 8
  %call22 = call %struct.window* @XWINDOW(i64 %25)
  %contents = getelementptr inbounds %struct.window, %struct.window* %call22, i32 0, i32 10
  %26 = load i64, i64* %contents, align 8
  store i64 %26, i64* %buffer, align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 546)
  %call24 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call23, i64 %call24)
  %call25 = call i64 @builtin_lisp_symbol(i32 321)
  %call26 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call25, i64 %call26)
  call void @record_unwind_save_match_data()
  %27 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 217), align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %27, %call27
  br i1 %cmp, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.21
  %call30 = call i64 @builtin_lisp_symbol(i32 735)
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call30, i64 %call31)
  %call32 = call i64 @builtin_lisp_symbol(i32 734)
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call32, i64 %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end.21
  %28 = load i64, i64* %buffer, align 8
  %call35 = call %struct.buffer* @XBUFFER(i64 %28)
  call void @set_buffer_internal_1(%struct.buffer* %call35)
  %call36 = call i64 @builtin_lisp_symbol(i32 160)
  call void @safe_run_hooks(i64 %call36)
  %29 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 169), align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %29, %call37
  br i1 %cmp38, label %if.end.43, label %if.then.40

if.then.40:                                       ; preds = %if.end.34
  %call41 = call i64 @builtin_lisp_symbol(i32 795)
  %call42 = call i64 @call0(i64 %call41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.34
  %call44 = call i64 @builtin_lisp_symbol(i32 655)
  call void @safe_run_hooks(i64 %call44)
  %30 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %31 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 11
  %32 = load i64, i64* %menu_bar_items, align 8
  %call45 = call i64 @menu_bar_items(i64 %32)
  call void @fset_menu_bar_items(%struct.frame* %30, i64 %call45)
  %33 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items46 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 11
  %34 = load i64, i64* %menu_bar_items46, align 8
  store i64 %34, i64* %items, align 8
  %35 = load i32, i32* %previous_menu_items_used, align 4
  %tobool47 = icmp ne i32 %35, 0
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.43
  %36 = load i64*, i64** %previous_items, align 8
  %37 = bitcast i64* %36 to i8*
  %38 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_vector = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 13
  %39 = load i64, i64* %menu_bar_vector, align 8
  %call49 = call %struct.Lisp_Vector* @XVECTOR(i64 %39)
  %contents50 = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call49, i32 0, i32 1
  %40 = bitcast [0 x i64]* %contents50 to i8*
  %41 = load i32, i32* %previous_menu_items_used, align 4
  %mul51 = mul nsw i32 %41, 8
  %conv52 = sext i32 %mul51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %40, i64 %conv52, i32 8, i1 false)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.end.43
  call void @save_menu_items()
  %42 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_vector54 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 13
  %43 = load i64, i64* %menu_bar_vector54, align 8
  store i64 %43, i64* @menu_items, align 8
  %44 = load i64, i64* @menu_items, align 8
  %call55 = call zeroext i1 @VECTORP(i64 %44)
  br i1 %call55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.53
  %45 = load i64, i64* @menu_items, align 8
  %call57 = call i64 @ASIZE(i64 %45)
  br label %cond.end

cond.false:                                       ; preds = %if.end.53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call57, %cond.true ], [ 0, %cond.false ]
  %conv58 = trunc i64 %cond to i32
  store i32 %conv58, i32* @menu_items_allocated, align 4
  %46 = load i64, i64* %items, align 8
  %call59 = call i64 @ASIZE(i64 %46)
  %div = sdiv i64 %call59, 4
  %conv60 = trunc i64 %div to i32
  store i32 %conv60, i32* %subitems, align 4
  %47 = load i32, i32* %subitems, align 4
  %add = add nsw i32 %47, 1
  %conv61 = sext i32 %add to i64
  %mul62 = mul i64 %conv61, 4
  %48 = alloca i8, i64 %mul62
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %submenu_start, align 8
  %50 = load i32, i32* %subitems, align 4
  %conv63 = sext i32 %50 to i64
  %mul64 = mul i64 %conv63, 4
  %51 = alloca i8, i64 %mul64
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %submenu_end, align 8
  %53 = load i32, i32* %subitems, align 4
  %conv65 = sext i32 %53 to i64
  %mul66 = mul i64 %conv65, 4
  %54 = alloca i8, i64 %mul66
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %submenu_n_panes, align 8
  %56 = load i32, i32* %subitems, align 4
  %conv67 = sext i32 %56 to i64
  %mul68 = mul i64 %conv67, 1
  %57 = alloca i8, i64 %mul68
  store i8* %57, i8** %submenu_top_level_items, align 8
  call void @init_menu_items()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %subitems, align 4
  %cmp69 = icmp slt i32 %58, %59
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i64, i64* %items, align 8
  %61 = load i32, i32* %i, align 4
  %mul71 = mul nsw i32 4, %61
  %conv72 = sext i32 %mul71 to i64
  %call73 = call i64 @AREF(i64 %60, i64 %conv72)
  store i64 %call73, i64* %key, align 8
  %62 = load i64, i64* %items, align 8
  %63 = load i32, i32* %i, align 4
  %mul74 = mul nsw i32 4, %63
  %add75 = add nsw i32 %mul74, 1
  %conv76 = sext i32 %add75 to i64
  %call77 = call i64 @AREF(i64 %62, i64 %conv76)
  store i64 %call77, i64* %string, align 8
  %64 = load i64, i64* %items, align 8
  %65 = load i32, i32* %i, align 4
  %mul78 = mul nsw i32 4, %65
  %add79 = add nsw i32 %mul78, 2
  %conv80 = sext i32 %add79 to i64
  %call81 = call i64 @AREF(i64 %64, i64 %conv80)
  store i64 %call81, i64* %maps, align 8
  %66 = load i64, i64* %string, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp83 = icmp eq i64 %66, %call82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body
  br label %for.end

if.end.86:                                        ; preds = %for.body
  %67 = load i32, i32* @menu_items_used, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom = sext i32 %68 to i64
  %69 = load i32*, i32** %submenu_start, align 8
  %arrayidx = getelementptr inbounds i32, i32* %69, i64 %idxprom
  store i32 %67, i32* %arrayidx, align 4
  store i32 0, i32* @menu_items_n_panes, align 4
  %70 = load i64, i64* %key, align 8
  %71 = load i64, i64* %string, align 8
  %72 = load i64, i64* %maps, align 8
  %call87 = call zeroext i1 @parse_single_submenu(i64 %70, i64 %71, i64 %72)
  %73 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %73 to i64
  %74 = load i8*, i8** %submenu_top_level_items, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %74, i64 %idxprom88
  %frombool90 = zext i1 %call87 to i8
  store i8 %frombool90, i8* %arrayidx89, align 1
  %75 = load i32, i32* @menu_items_n_panes, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %76 to i64
  %77 = load i32*, i32** %submenu_n_panes, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %77, i64 %idxprom91
  store i32 %75, i32* %arrayidx92, align 4
  %78 = load i32, i32* @menu_items_used, align 4
  %79 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %79 to i64
  %80 = load i32*, i32** %submenu_end, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %80, i64 %idxprom93
  store i32 %78, i32* %arrayidx94, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.85, %for.cond
  %82 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %82 to i64
  %83 = load i32*, i32** %submenu_start, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %83, i64 %idxprom95
  store i32 -1, i32* %arrayidx96, align 4
  call void @finish_menu_items() #6
  %call97 = call i64 @builtin_lisp_symbol(i32 0)
  %call98 = call %struct._widget_value* @make_widget_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i1 zeroext true, i64 %call97)
  store %struct._widget_value* %call98, %struct._widget_value** %wv, align 8
  %84 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type = getelementptr inbounds %struct._widget_value, %struct._widget_value* %84, i32 0, i32 9
  store i32 0, i32* %button_type, align 4
  %85 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %85, %struct._widget_value** %first_wv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.121, %for.end
  %86 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %86 to i64
  %87 = load i32*, i32** %submenu_start, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %87, i64 %idxprom100
  %88 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp sge i32 %88, 0
  br i1 %cmp102, label %for.body.104, label %for.end.123

for.body.104:                                     ; preds = %for.cond.99
  %89 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %89 to i64
  %90 = load i32*, i32** %submenu_n_panes, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %90, i64 %idxprom105
  %91 = load i32, i32* %arrayidx106, align 4
  store i32 %91, i32* @menu_items_n_panes, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %92 to i64
  %93 = load i32*, i32** %submenu_start, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %93, i64 %idxprom107
  %94 = load i32, i32* %arrayidx108, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %95 to i64
  %96 = load i32*, i32** %submenu_end, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %96, i64 %idxprom109
  %97 = load i32, i32* %arrayidx110, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %98 to i64
  %99 = load i8*, i8** %submenu_top_level_items, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %99, i64 %idxprom111
  %100 = load i8, i8* %arrayidx112, align 1
  %tobool113 = trunc i8 %100 to i1
  %call114 = call %struct._widget_value* @digest_single_submenu(i32 %94, i32 %97, i1 zeroext %tobool113)
  store %struct._widget_value* %call114, %struct._widget_value** %wv, align 8
  %101 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %tobool115 = icmp ne %struct._widget_value* %101, null
  br i1 %tobool115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %for.body.104
  %102 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %103 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %next = getelementptr inbounds %struct._widget_value, %struct._widget_value* %103, i32 0, i32 12
  store %struct._widget_value* %102, %struct._widget_value** %next, align 8
  br label %if.end.119

if.else.117:                                      ; preds = %for.body.104
  %104 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %105 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents118 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %105, i32 0, i32 10
  store %struct._widget_value* %104, %struct._widget_value** %contents118, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.116
  %106 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %enabled = getelementptr inbounds %struct._widget_value, %struct._widget_value* %106, i32 0, i32 6
  store i8 1, i8* %enabled, align 1
  %107 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type120 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %107, i32 0, i32 9
  store i32 0, i32* %button_type120, align 4
  %108 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %108, %struct._widget_value** %prev_wv, align 8
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.119
  %109 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %109, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.99

for.end.123:                                      ; preds = %for.cond.99
  %110 = load %struct.buffer*, %struct.buffer** %prev, align 8
  call void @set_buffer_internal_1(%struct.buffer* %110)
  store i32 0, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.138, %for.end.123
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %previous_menu_items_used, align 4
  %cmp125 = icmp slt i32 %111, %112
  br i1 %cmp125, label %for.body.127, label %for.end.140

for.body.127:                                     ; preds = %for.cond.124
  %113 = load i32, i32* @menu_items_used, align 4
  %114 = load i32, i32* %i, align 4
  %cmp128 = icmp eq i32 %113, %114
  br i1 %cmp128, label %if.then.136, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.127
  %115 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %115 to i64
  %116 = load i64*, i64** %previous_items, align 8
  %arrayidx131 = getelementptr inbounds i64, i64* %116, i64 %idxprom130
  %117 = load i64, i64* %arrayidx131, align 8
  %118 = load i64, i64* @menu_items, align 8
  %119 = load i32, i32* %i, align 4
  %conv132 = sext i32 %119 to i64
  %call133 = call i64 @AREF(i64 %118, i64 %conv132)
  %cmp134 = icmp eq i64 %117, %call133
  br i1 %cmp134, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %lor.lhs.false, %for.body.127
  br label %for.end.140

if.end.137:                                       ; preds = %lor.lhs.false
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %120 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %120, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond.124

for.end.140:                                      ; preds = %if.then.136, %for.cond.124
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* @menu_items_used, align 4
  %cmp141 = icmp eq i32 %121, %122
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.152

land.lhs.true.143:                                ; preds = %for.end.140
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %previous_menu_items_used, align 4
  %cmp144 = icmp eq i32 %123, %124
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.152

land.lhs.true.146:                                ; preds = %land.lhs.true.143
  %125 = load i32, i32* %i, align 4
  %cmp147 = icmp ne i32 %125, 0
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %land.lhs.true.146
  %126 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  call void @free_menubar_widget_value_tree(%struct._widget_value* %126)
  call void @discard_menu_items()
  %127 = load i64, i64* %specpdl_count, align 8
  %call150 = call i64 @builtin_lisp_symbol(i32 0)
  %call151 = call i64 @unbind_to(i64 %127, i64 %call150)
  br label %return

if.end.152:                                       ; preds = %land.lhs.true.146, %land.lhs.true.143, %for.end.140
  %128 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %129 = load i64, i64* @menu_items, align 8
  call void @fset_menu_bar_vector(%struct.frame* %128, i64 %129)
  %130 = load i32, i32* @menu_items_used, align 4
  %131 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items_used153 = getelementptr inbounds %struct.frame, %struct.frame* %131, i32 0, i32 21
  store i32 %130, i32* %menu_bar_items_used153, align 4
  %132 = load i64, i64* %specpdl_count, align 8
  %call154 = call i64 @builtin_lisp_symbol(i32 0)
  %call155 = call i64 @unbind_to(i64 %132, i64 %call154)
  %133 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents156 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %133, i32 0, i32 10
  %134 = load %struct._widget_value*, %struct._widget_value** %contents156, align 8
  store %struct._widget_value* %134, %struct._widget_value** %wv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.175, %if.end.152
  %135 = load i32, i32* %i, align 4
  %conv158 = sext i32 %135 to i64
  %136 = load i64, i64* %items, align 8
  %call159 = call i64 @ASIZE(i64 %136)
  %cmp160 = icmp slt i64 %conv158, %call159
  br i1 %cmp160, label %for.body.162, label %for.end.177

for.body.162:                                     ; preds = %for.cond.157
  %137 = load i64, i64* %items, align 8
  %138 = load i32, i32* %i, align 4
  %add164 = add nsw i32 %138, 1
  %conv165 = sext i32 %add164 to i64
  %call166 = call i64 @AREF(i64 %137, i64 %conv165)
  store i64 %call166, i64* %string163, align 8
  %139 = load i64, i64* %string163, align 8
  %call167 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp168 = icmp eq i64 %139, %call167
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %for.body.162
  br label %for.end.177

if.end.171:                                       ; preds = %for.body.162
  %140 = load i64, i64* %string163, align 8
  %call172 = call i8* @SSDATA(i64 %140)
  %141 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %name = getelementptr inbounds %struct._widget_value, %struct._widget_value* %141, i32 0, i32 1
  store i8* %call172, i8** %name, align 8
  %142 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %contents173 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %142, i32 0, i32 10
  %143 = load %struct._widget_value*, %struct._widget_value** %contents173, align 8
  call void @update_submenu_strings(%struct._widget_value* %143)
  %144 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %next174 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %144, i32 0, i32 12
  %145 = load %struct._widget_value*, %struct._widget_value** %next174, align 8
  store %struct._widget_value* %145, %struct._widget_value** %wv, align 8
  br label %for.inc.175

for.inc.175:                                      ; preds = %if.end.171
  %146 = load i32, i32* %i, align 4
  %add176 = add nsw i32 %146, 4
  store i32 %add176, i32* %i, align 4
  br label %for.cond.157

for.end.177:                                      ; preds = %if.then.170, %for.cond.157
  br label %if.end.212

if.else.178:                                      ; preds = %if.end.15
  %call179 = call i64 @builtin_lisp_symbol(i32 0)
  %call180 = call %struct._widget_value* @make_widget_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i1 zeroext true, i64 %call179)
  store %struct._widget_value* %call180, %struct._widget_value** %wv, align 8
  %147 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type181 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %147, i32 0, i32 9
  store i32 0, i32* %button_type181, align 4
  %148 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %148, %struct._widget_value** %first_wv, align 8
  %149 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items182 = getelementptr inbounds %struct.frame, %struct.frame* %149, i32 0, i32 11
  %150 = load i64, i64* %menu_bar_items182, align 8
  store i64 %150, i64* %items, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.208, %if.else.178
  %151 = load i32, i32* %i, align 4
  %conv184 = sext i32 %151 to i64
  %152 = load i64, i64* %items, align 8
  %call185 = call i64 @ASIZE(i64 %152)
  %cmp186 = icmp slt i64 %conv184, %call185
  br i1 %cmp186, label %for.body.188, label %for.end.210

for.body.188:                                     ; preds = %for.cond.183
  %153 = load i64, i64* %items, align 8
  %154 = load i32, i32* %i, align 4
  %add190 = add nsw i32 %154, 1
  %conv191 = sext i32 %add190 to i64
  %call192 = call i64 @AREF(i64 %153, i64 %conv191)
  store i64 %call192, i64* %string189, align 8
  %155 = load i64, i64* %string189, align 8
  %call193 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp194 = icmp eq i64 %155, %call193
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %for.body.188
  br label %for.end.210

if.end.197:                                       ; preds = %for.body.188
  %156 = load i64, i64* %string189, align 8
  %call198 = call i8* @SSDATA(i64 %156)
  %call199 = call i64 @builtin_lisp_symbol(i32 0)
  %call200 = call %struct._widget_value* @make_widget_value(i8* %call198, i8* null, i1 zeroext true, i64 %call199)
  store %struct._widget_value* %call200, %struct._widget_value** %wv, align 8
  %157 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type201 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %157, i32 0, i32 9
  store i32 0, i32* %button_type201, align 4
  %158 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %call_data = getelementptr inbounds %struct._widget_value, %struct._widget_value* %158, i32 0, i32 11
  store i8* inttoptr (i64 -1 to i8*), i8** %call_data, align 8
  %159 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %tobool202 = icmp ne %struct._widget_value* %159, null
  br i1 %tobool202, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %if.end.197
  %160 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %161 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %next204 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %161, i32 0, i32 12
  store %struct._widget_value* %160, %struct._widget_value** %next204, align 8
  br label %if.end.207

if.else.205:                                      ; preds = %if.end.197
  %162 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %163 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents206 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %163, i32 0, i32 10
  store %struct._widget_value* %162, %struct._widget_value** %contents206, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.205, %if.then.203
  %164 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %164, %struct._widget_value** %prev_wv, align 8
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.207
  %165 = load i32, i32* %i, align 4
  %add209 = add nsw i32 %165, 4
  store i32 %add209, i32* %i, align 4
  br label %for.cond.183

for.end.210:                                      ; preds = %if.then.196, %for.cond.183
  %166 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items_used211 = getelementptr inbounds %struct.frame, %struct.frame* %166, i32 0, i32 21
  store i32 0, i32* %menu_bar_items_used211, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %for.end.210, %for.end.177
  call void @block_input()
  store i8 1, i8* @xg_crazy_callback_abort, align 1
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget, align 8
  %tobool213 = icmp ne %struct._GtkWidget* %167, null
  br i1 %tobool213, label %if.then.214, label %if.else.216

if.then.214:                                      ; preds = %if.end.212
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget, align 8
  %169 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %170 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %171 = load i8, i8* %deep_p.addr, align 1
  %tobool215 = trunc i8 %171 to i1
  call void @xg_modify_menubar_widgets(%struct._GtkWidget* %168, %struct.frame* %169, %struct._widget_value* %170, i1 zeroext %tobool215, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @menubar_selection_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @popup_deactivate_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @menu_highlight_callback to void ()*))
  br label %if.end.221

if.else.216:                                      ; preds = %if.end.212
  %172 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %173 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %call217 = call %struct._GtkWidget* @xg_create_widget(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.frame* %172, %struct._widget_value* %173, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @menubar_selection_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @popup_deactivate_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @menu_highlight_callback to void ()*))
  store %struct._GtkWidget* %call217, %struct._GtkWidget** %menubar_widget, align 8
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar_widget, align 8
  %175 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data218 = getelementptr inbounds %struct.frame, %struct.frame* %175, i32 0, i32 62
  %x219 = bitcast %union.output_data* %output_data218 to %struct.x_output**
  %176 = load %struct.x_output*, %struct.x_output** %x219, align 8
  %menubar_widget220 = getelementptr inbounds %struct.x_output, %struct.x_output* %176, i32 0, i32 16
  store %struct._GtkWidget* %174, %struct._GtkWidget** %menubar_widget220, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.216, %if.then.214
  %177 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  call void @free_menubar_widget_value_tree(%struct._widget_value* %177)
  %178 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @update_frame_menubar(%struct.frame* %178)
  store i8 0, i8* @xg_crazy_callback_abort, align 1
  call void @unblock_input()
  br label %return

return:                                           ; preds = %if.end.221, %if.then.149
  ret void
}

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @g_signal_emit_by_name(i8*, i8*, ...) #1

declare void @g_list_free(%struct._GList*) #1

declare void @unblock_input() #1

; Function Attrs: nounwind uwtable
define void @x_activate_menubar(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %saved_menu_event = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 45
  %2 = load %union._XEvent*, %union._XEvent** %saved_menu_event, align 8
  %type = bitcast %union._XEvent* %2 to i32*
  %3 = load i32, i32* %type, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %5 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %5, i32 0, i32 44
  %6 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 2
  %7 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %8 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data3 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data3 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %saved_menu_event5 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 45
  %10 = load %union._XEvent*, %union._XEvent** %saved_menu_event5, align 8
  %xany = bitcast %union._XEvent* %10 to %struct.XAnyEvent*
  %window = getelementptr inbounds %struct.XAnyEvent, %struct.XAnyEvent* %xany, i32 0, i32 4
  %11 = load i64, i64* %window, align 8
  %call = call %struct._GtkWidget* @xg_win_to_widget(%struct._XDisplay* %7, i64 %11)
  %tobool6 = icmp ne %struct._GtkWidget* %call, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  br label %return

if.end.8:                                         ; preds = %if.end
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @set_frame_menubar(%struct.frame* %12, i1 zeroext false, i1 zeroext true)
  call void @block_input()
  store i32 1, i32* @popup_activated_flag, align 4
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data9 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x10 = bitcast %union.output_data* %output_data9 to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x10, align 8
  %display_info11 = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 44
  %15 = load %struct.x_display_info*, %struct.x_display_info** %display_info11, align 8
  %display12 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %15, i32 0, i32 2
  %16 = load %struct._XDisplay*, %struct._XDisplay** %display12, align 8
  %17 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data13 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 62
  %x14 = bitcast %union.output_data* %output_data13 to %struct.x_output**
  %18 = load %struct.x_output*, %struct.x_output** %x14, align 8
  %saved_menu_event15 = getelementptr inbounds %struct.x_output, %struct.x_output* %18, i32 0, i32 45
  %19 = load %union._XEvent*, %union._XEvent** %saved_menu_event15, align 8
  %call16 = call i32 @XPutBackEvent(%struct._XDisplay* %16, %union._XEvent* %19)
  call void @unblock_input()
  %20 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data17 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 62
  %x18 = bitcast %union.output_data* %output_data17 to %struct.x_output**
  %21 = load %struct.x_output*, %struct.x_output** %x18, align 8
  %saved_menu_event19 = getelementptr inbounds %struct.x_output, %struct.x_output* %21, i32 0, i32 45
  %22 = load %union._XEvent*, %union._XEvent** %saved_menu_event19, align 8
  %type20 = bitcast %union._XEvent* %22 to i32*
  store i32 0, i32* %type20, align 4
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  ret void
}

declare %struct._GtkWidget* @xg_win_to_widget(%struct._XDisplay*, i64) #1

declare i32 @XPutBackEvent(%struct._XDisplay*, %union._XEvent*) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare noalias i8* @xmalloc(i64) #1

declare i64 @SPECPDL_INDEX() #1

declare %struct.window* @XWINDOW(i64) #1

declare void @specbind(i64, i64) #1

declare void @record_unwind_save_match_data() #1

declare void @set_buffer_internal_1(%struct.buffer*) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @safe_run_hooks(i64) #1

declare i64 @call0(i64) #1

declare void @fset_menu_bar_items(%struct.frame*, i64) #1

declare i64 @menu_bar_items(i64) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @save_menu_items() #1

declare zeroext i1 @VECTORP(i64) #1

declare i64 @ASIZE(i64) #1

declare void @init_menu_items() #1

declare i64 @AREF(i64, i64) #1

declare zeroext i1 @parse_single_submenu(i64, i64, i64) #1

; Function Attrs: nounwind readnone
declare void @finish_menu_items() #2

declare %struct._widget_value* @make_widget_value(i8*, i8*, i1 zeroext, i64) #1

declare %struct._widget_value* @digest_single_submenu(i32, i32, i1 zeroext) #1

declare void @free_menubar_widget_value_tree(%struct._widget_value*) #1

declare void @discard_menu_items() #1

declare i64 @unbind_to(i64, i64) #1

declare void @fset_menu_bar_vector(%struct.frame*, i64) #1

declare i8* @SSDATA(i64) #1

declare void @update_submenu_strings(%struct._widget_value*) #1

declare void @xg_modify_menubar_widgets(%struct._GtkWidget*, %struct.frame*, %struct._widget_value*, i1 zeroext, void ()*, void ()*, void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @menubar_selection_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  %cb_data = alloca %struct.xg_menu_item_cb_data_*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.xg_menu_item_cb_data_*
  store %struct.xg_menu_item_cb_data_* %1, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %2 = load i8, i8* @xg_crazy_callback_abort, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %tobool1 = icmp ne %struct.xg_menu_item_cb_data_* %3, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %cl_data = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %4, i32 0, i32 4
  %5 = load %struct.xg_menu_cb_data_*, %struct.xg_menu_cb_data_** %cl_data, align 8
  %tobool2 = icmp ne %struct.xg_menu_cb_data_* %5, null
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.6

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %cl_data4 = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %6, i32 0, i32 4
  %7 = load %struct.xg_menu_cb_data_*, %struct.xg_menu_cb_data_** %cl_data4, align 8
  %f = getelementptr inbounds %struct.xg_menu_cb_data_, %struct.xg_menu_cb_data_* %7, i32 0, i32 1
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool5 = icmp ne %struct.frame* %8, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false.3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_radio_menu_item_get_type() #6
  store i64 %call, i64* %__t, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end.7
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #7
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %20 = load i32, i32* %__r, align 4
  store i32 %20, i32* %tmp
  %21 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.24

land.lhs.true.18:                                 ; preds = %if.end.16
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_check_menu_item_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkCheckMenuItem*
  %call21 = call i32 @gtk_check_menu_item_get_active(%struct._GtkCheckMenuItem* %24)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.18
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.18, %if.end.16
  call void @block_input()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.24
  %call25 = call i32 @gtk_events_pending()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call27 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @unblock_input()
  %25 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %cl_data28 = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %25, i32 0, i32 4
  %26 = load %struct.xg_menu_cb_data_*, %struct.xg_menu_cb_data_** %cl_data28, align 8
  %f29 = getelementptr inbounds %struct.xg_menu_cb_data_, %struct.xg_menu_cb_data_* %26, i32 0, i32 1
  %27 = load %struct.frame*, %struct.frame** %f29, align 8
  %28 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %cl_data30 = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %28, i32 0, i32 4
  %29 = load %struct.xg_menu_cb_data_*, %struct.xg_menu_cb_data_** %cl_data30, align 8
  %menu_bar_items_used = getelementptr inbounds %struct.xg_menu_cb_data_, %struct.xg_menu_cb_data_* %29, i32 0, i32 3
  %30 = load i32, i32* %menu_bar_items_used, align 4
  %31 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %cl_data31 = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %31, i32 0, i32 4
  %32 = load %struct.xg_menu_cb_data_*, %struct.xg_menu_cb_data_** %cl_data31, align 8
  %menu_bar_vector = getelementptr inbounds %struct.xg_menu_cb_data_, %struct.xg_menu_cb_data_* %32, i32 0, i32 2
  %33 = load i64, i64* %menu_bar_vector, align 8
  %34 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %call_data = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %34, i32 0, i32 3
  %35 = load i8*, i8** %call_data, align 8
  call void @find_and_call_menu_selection(%struct.frame* %27, i32 %30, i64 %33, i8* %35)
  br label %return

return:                                           ; preds = %while.end, %if.then.23, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @popup_deactivate_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  store i32 0, i32* @popup_activated_flag, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @menu_highlight_callback(%struct._GtkWidget* %widget, i8* %call_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %call_data.addr = alloca i8*, align 8
  %cb_data = alloca %struct.xg_menu_item_cb_data_*, align 8
  %help = alloca i64, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %call_data, i8** %call_data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct.xg_menu_item_cb_data_*
  store %struct.xg_menu_item_cb_data_* %3, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %4 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %tobool = icmp ne %struct.xg_menu_item_cb_data_* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %call_data.addr, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %help3 = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %6, i32 0, i32 2
  %7 = load i64, i64* %help3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call4, %cond.false ]
  store i64 %cond, i64* %help, align 8
  %8 = load i32, i32* @popup_activated_flag, align 4
  %cmp = icmp sle i32 %8, 1
  br i1 %cmp, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %9 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %cl_data = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %9, i32 0, i32 4
  %10 = load %struct.xg_menu_cb_data_*, %struct.xg_menu_cb_data_** %cl_data, align 8
  %f = getelementptr inbounds %struct.xg_menu_cb_data_, %struct.xg_menu_cb_data_* %10, i32 0, i32 1
  %11 = load %struct.frame*, %struct.frame** %f, align 8
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi %struct.frame* [ %11, %cond.true.5 ], [ null, %cond.false.6 ]
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = load i64, i64* %help, align 8
  call void @show_help_event(%struct.frame* %cond8, %struct._GtkWidget* %12, i64 %13)
  br label %return

return:                                           ; preds = %cond.end.7, %if.then
  ret void
}

declare %struct._GtkWidget* @xg_create_widget(i8*, i8*, %struct.frame*, %struct._widget_value*, void ()*, void ()*, void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @update_frame_menubar(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @xg_update_frame_menubar(%struct.frame* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @initialize_frame_menubar(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %menu_bar_items = getelementptr inbounds %struct.frame, %struct.frame* %1, i32 0, i32 11
  %2 = load i64, i64* %menu_bar_items, align 8
  %call = call i64 @menu_bar_items(i64 %2)
  call void @fset_menu_bar_items(%struct.frame* %0, i64 %call)
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @set_frame_menubar(%struct.frame* %3, i1 zeroext true, i1 zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @x_menu_show(%struct.frame* %f, i32 %x, i32 %y, i32 %menuflags, i64 %title, i8** %error_name) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %menuflags.addr = alloca i32, align 4
  %title.addr = alloca i64, align 8
  %error_name.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %wv = alloca %struct._widget_value*, align 8
  %save_wv = alloca %struct._widget_value*, align 8
  %first_wv = alloca %struct._widget_value*, align 8
  %prev_wv = alloca %struct._widget_value*, align 8
  %submenu_stack = alloca %struct._widget_value**, align 8
  %subprefix_stack = alloca i64*, align 8
  %submenu_depth = alloca i32, align 4
  %specpdl_count = alloca i64, align 8
  %first_pane = alloca i8, align 1
  %pane_name = alloca i64, align 8
  %prefix = alloca i64, align 8
  %pane_string = alloca i8*, align 8
  %item_name = alloca i64, align 8
  %enable = alloca i64, align 8
  %descrip = alloca i64, align 8
  %def = alloca i64, align 8
  %type = alloca i64, align 8
  %selected = alloca i64, align 8
  %help = alloca i64, align 8
  %wv_title = alloca %struct._widget_value*, align 8
  %wv_sep1 = alloca %struct._widget_value*, align 8
  %wv_sep2 = alloca %struct._widget_value*, align 8
  %prefix238 = alloca i64, align 8
  %entry239 = alloca i64, align 8
  %j = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %menuflags, i32* %menuflags.addr, align 4
  store i64 %title, i64* %title.addr, align 8
  store i8** %error_name, i8*** %error_name.addr, align 8
  store %struct._widget_value* null, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %first_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  %0 = load i32, i32* @menu_items_used, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %1 = alloca i8, i64 %mul
  %2 = bitcast i8* %1 to %struct._widget_value**
  store %struct._widget_value** %2, %struct._widget_value*** %submenu_stack, align 8
  %3 = load i32, i32* @menu_items_used, align 4
  %conv1 = sext i32 %3 to i64
  %mul2 = mul i64 %conv1, 8
  %4 = alloca i8, i64 %mul2
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %subprefix_stack, align 8
  store i32 0, i32* %submenu_depth, align 4
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %specpdl_count, align 8
  %6 = load i8**, i8*** %error_name.addr, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* @menu_items_used, align 4
  %cmp = icmp sle i32 %7, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8**, i8*** %error_name.addr, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @block_input()
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %call6 = call %struct._widget_value* @make_widget_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i1 zeroext true, i64 %call5)
  store %struct._widget_value* %call6, %struct._widget_value** %wv, align 8
  %9 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type = getelementptr inbounds %struct._widget_value, %struct._widget_value* %9, i32 0, i32 9
  store i32 0, i32* %button_type, align 4
  %10 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %10, %struct._widget_value** %first_wv, align 8
  store i8 1, i8* %first_pane, align 1
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.207, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @menu_items_used, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, i64* @menu_items, align 8
  %14 = load i32, i32* %i, align 4
  %conv9 = sext i32 %14 to i64
  %call10 = call i64 @AREF(i64 %13, i64 %conv9)
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %call10, %call11
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.body
  %15 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %16 = load i32, i32* %submenu_depth, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %submenu_depth, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._widget_value**, %struct._widget_value*** %submenu_stack, align 8
  %arrayidx = getelementptr inbounds %struct._widget_value*, %struct._widget_value** %17, i64 %idxprom
  store %struct._widget_value* %15, %struct._widget_value** %arrayidx, align 8
  %18 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  store %struct._widget_value* %18, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  store i8 1, i8* %first_pane, align 1
  %19 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %i, align 4
  br label %if.end.207

if.else:                                          ; preds = %while.body
  %20 = load i64, i64* @menu_items, align 8
  %21 = load i32, i32* %i, align 4
  %conv16 = sext i32 %21 to i64
  %call17 = call i64 @AREF(i64 %20, i64 %conv16)
  %call18 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp19 = icmp eq i64 %call17, %call18
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.else
  %22 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* %22, %struct._widget_value** %prev_wv, align 8
  %23 = load i32, i32* %submenu_depth, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %submenu_depth, align 4
  %idxprom22 = sext i32 %dec to i64
  %24 = load %struct._widget_value**, %struct._widget_value*** %submenu_stack, align 8
  %arrayidx23 = getelementptr inbounds %struct._widget_value*, %struct._widget_value** %24, i64 %idxprom22
  %25 = load %struct._widget_value*, %struct._widget_value** %arrayidx23, align 8
  store %struct._widget_value* %25, %struct._widget_value** %save_wv, align 8
  store i8 0, i8* %first_pane, align 1
  %26 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %i, align 4
  br label %if.end.206

if.else.25:                                       ; preds = %if.else
  %27 = load i64, i64* @menu_items, align 8
  %28 = load i32, i32* %i, align 4
  %conv26 = sext i32 %28 to i64
  %call27 = call i64 @AREF(i64 %27, i64 %conv26)
  %call28 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp29 = icmp eq i64 %call27, %call28
  br i1 %cmp29, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %if.else.25
  %29 = load i32, i32* %submenu_depth, align 4
  %cmp31 = icmp ne i32 %29, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true
  %30 = load i32, i32* %i, align 4
  %add = add nsw i32 %30, 3
  store i32 %add, i32* %i, align 4
  br label %if.end.205

if.else.34:                                       ; preds = %land.lhs.true, %if.else.25
  %31 = load i64, i64* @menu_items, align 8
  %32 = load i32, i32* %i, align 4
  %conv35 = sext i32 %32 to i64
  %call36 = call i64 @AREF(i64 %31, i64 %conv35)
  %call37 = call i64 @builtin_lisp_symbol(i32 783)
  %cmp38 = icmp eq i64 %call36, %call37
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.34
  %33 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %33, 1
  store i32 %add41, i32* %i, align 4
  br label %if.end.204

if.else.42:                                       ; preds = %if.else.34
  %34 = load i64, i64* @menu_items, align 8
  %35 = load i32, i32* %i, align 4
  %conv43 = sext i32 %35 to i64
  %call44 = call i64 @AREF(i64 %34, i64 %conv43)
  %call45 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp46 = icmp eq i64 %call44, %call45
  br i1 %cmp46, label %if.then.48, label %if.else.99

if.then.48:                                       ; preds = %if.else.42
  %36 = load i64, i64* @menu_items, align 8
  %37 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %37, 1
  %conv50 = sext i32 %add49 to i64
  %call51 = call i64 @AREF(i64 %36, i64 %conv50)
  store i64 %call51, i64* %pane_name, align 8
  %38 = load i64, i64* @menu_items, align 8
  %39 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %39, 2
  %conv53 = sext i32 %add52 to i64
  %call54 = call i64 @AREF(i64 %38, i64 %conv53)
  store i64 %call54, i64* %prefix, align 8
  %40 = load i64, i64* %pane_name, align 8
  %call55 = call zeroext i1 @STRINGP(i64 %40)
  br i1 %call55, label %land.lhs.true.57, label %if.end.65

land.lhs.true.57:                                 ; preds = %if.then.48
  %41 = load i64, i64* %pane_name, align 8
  %call58 = call zeroext i1 @STRING_MULTIBYTE(i64 %41)
  br i1 %call58, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %land.lhs.true.57
  %42 = load i64, i64* %pane_name, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 988)
  %call62 = call i64 @code_convert_string_norecord(i64 %42, i64 %call61, i1 zeroext true)
  store i64 %call62, i64* %pane_name, align 8
  %43 = load i64, i64* @menu_items, align 8
  %44 = load i32, i32* %i, align 4
  %add63 = add nsw i32 %44, 1
  %conv64 = sext i32 %add63 to i64
  %45 = load i64, i64* %pane_name, align 8
  call void @ASET(i64 %43, i64 %conv64, i64 %45)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.60, %land.lhs.true.57, %if.then.48
  %46 = load i64, i64* %pane_name, align 8
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp67 = icmp eq i64 %46, %call66
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  %47 = load i64, i64* %pane_name, align 8
  %call69 = call i8* @SSDATA(i64 %47)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.true ], [ %call69, %cond.false ]
  store i8* %cond, i8** %pane_string, align 8
  %48 = load i32, i32* @menu_items_n_panes, align 4
  %cmp70 = icmp eq i32 %48, 1
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %cond.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %pane_string, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %cond.end
  %49 = load i32, i32* %menuflags.addr, align 4
  %and = and i32 %49, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else.93, label %land.lhs.true.74

land.lhs.true.74:                                 ; preds = %if.end.73
  %50 = load i8*, i8** %pane_string, align 8
  %call75 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)) #7
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.93

if.then.77:                                       ; preds = %land.lhs.true.74
  %51 = load i8*, i8** %pane_string, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 0)
  %call79 = call %struct._widget_value* @make_widget_value(i8* %51, i8* null, i1 zeroext true, i64 %call78)
  store %struct._widget_value* %call79, %struct._widget_value** %wv, align 8
  %52 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %tobool80 = icmp ne %struct._widget_value* %52, null
  br i1 %tobool80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.then.77
  %53 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %54 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %next = getelementptr inbounds %struct._widget_value, %struct._widget_value* %54, i32 0, i32 12
  store %struct._widget_value* %53, %struct._widget_value** %next, align 8
  br label %if.end.83

if.else.82:                                       ; preds = %if.then.77
  %55 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %56 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents = getelementptr inbounds %struct._widget_value, %struct._widget_value* %56, i32 0, i32 10
  store %struct._widget_value* %55, %struct._widget_value** %contents, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.81
  %57 = load i32, i32* %menuflags.addr, align 4
  %and84 = and i32 %57, 1
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.91

land.lhs.true.86:                                 ; preds = %if.end.83
  %58 = load i64, i64* %prefix, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %58, %call87
  br i1 %cmp88, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %land.lhs.true.86
  %59 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %name = getelementptr inbounds %struct._widget_value, %struct._widget_value* %59, i32 0, i32 1
  %60 = load i8*, i8** %name, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr, i8** %name, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %land.lhs.true.86, %if.end.83
  %61 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type92 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %61, i32 0, i32 9
  store i32 0, i32* %button_type92, align 4
  %62 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %62, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  br label %if.end.97

if.else.93:                                       ; preds = %land.lhs.true.74, %if.end.73
  %63 = load i8, i8* %first_pane, align 1
  %tobool94 = trunc i8 %63 to i1
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else.93
  %64 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %64, %struct._widget_value** %save_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.else.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.91
  store i8 0, i8* %first_pane, align 1
  %65 = load i32, i32* %i, align 4
  %add98 = add nsw i32 %65, 3
  store i32 %add98, i32* %i, align 4
  br label %if.end.203

if.else.99:                                       ; preds = %if.else.42
  %66 = load i64, i64* @menu_items, align 8
  %67 = load i32, i32* %i, align 4
  %add100 = add nsw i32 %67, 0
  %conv101 = sext i32 %add100 to i64
  %call102 = call i64 @AREF(i64 %66, i64 %conv101)
  store i64 %call102, i64* %item_name, align 8
  %68 = load i64, i64* @menu_items, align 8
  %69 = load i32, i32* %i, align 4
  %add103 = add nsw i32 %69, 1
  %conv104 = sext i32 %add103 to i64
  %call105 = call i64 @AREF(i64 %68, i64 %conv104)
  store i64 %call105, i64* %enable, align 8
  %70 = load i64, i64* @menu_items, align 8
  %71 = load i32, i32* %i, align 4
  %add106 = add nsw i32 %71, 3
  %conv107 = sext i32 %add106 to i64
  %call108 = call i64 @AREF(i64 %70, i64 %conv107)
  store i64 %call108, i64* %descrip, align 8
  %72 = load i64, i64* @menu_items, align 8
  %73 = load i32, i32* %i, align 4
  %add109 = add nsw i32 %73, 4
  %conv110 = sext i32 %add109 to i64
  %call111 = call i64 @AREF(i64 %72, i64 %conv110)
  store i64 %call111, i64* %def, align 8
  %74 = load i64, i64* @menu_items, align 8
  %75 = load i32, i32* %i, align 4
  %add112 = add nsw i32 %75, 5
  %conv113 = sext i32 %add112 to i64
  %call114 = call i64 @AREF(i64 %74, i64 %conv113)
  store i64 %call114, i64* %type, align 8
  %76 = load i64, i64* @menu_items, align 8
  %77 = load i32, i32* %i, align 4
  %add115 = add nsw i32 %77, 6
  %conv116 = sext i32 %add115 to i64
  %call117 = call i64 @AREF(i64 %76, i64 %conv116)
  store i64 %call117, i64* %selected, align 8
  %78 = load i64, i64* @menu_items, align 8
  %79 = load i32, i32* %i, align 4
  %add118 = add nsw i32 %79, 7
  %conv119 = sext i32 %add118 to i64
  %call120 = call i64 @AREF(i64 %78, i64 %conv119)
  store i64 %call120, i64* %help, align 8
  %80 = load i64, i64* %item_name, align 8
  %call121 = call zeroext i1 @STRINGP(i64 %80)
  br i1 %call121, label %land.lhs.true.123, label %if.end.131

land.lhs.true.123:                                ; preds = %if.else.99
  %81 = load i64, i64* %item_name, align 8
  %call124 = call zeroext i1 @STRING_MULTIBYTE(i64 %81)
  br i1 %call124, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %land.lhs.true.123
  %82 = load i64, i64* %item_name, align 8
  %call127 = call i64 @builtin_lisp_symbol(i32 988)
  %call128 = call i64 @code_convert_string_norecord(i64 %82, i64 %call127, i1 zeroext true)
  store i64 %call128, i64* %item_name, align 8
  %83 = load i64, i64* @menu_items, align 8
  %84 = load i32, i32* %i, align 4
  %add129 = add nsw i32 %84, 0
  %conv130 = sext i32 %add129 to i64
  %85 = load i64, i64* %item_name, align 8
  call void @ASET(i64 %83, i64 %conv130, i64 %85)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %land.lhs.true.123, %if.else.99
  %86 = load i64, i64* %descrip, align 8
  %call132 = call zeroext i1 @STRINGP(i64 %86)
  br i1 %call132, label %land.lhs.true.134, label %if.end.142

land.lhs.true.134:                                ; preds = %if.end.131
  %87 = load i64, i64* %descrip, align 8
  %call135 = call zeroext i1 @STRING_MULTIBYTE(i64 %87)
  br i1 %call135, label %if.then.137, label %if.end.142

if.then.137:                                      ; preds = %land.lhs.true.134
  %88 = load i64, i64* %descrip, align 8
  %call138 = call i64 @builtin_lisp_symbol(i32 988)
  %call139 = call i64 @code_convert_string_norecord(i64 %88, i64 %call138, i1 zeroext true)
  store i64 %call139, i64* %descrip, align 8
  %89 = load i64, i64* @menu_items, align 8
  %90 = load i32, i32* %i, align 4
  %add140 = add nsw i32 %90, 3
  %conv141 = sext i32 %add140 to i64
  %91 = load i64, i64* %descrip, align 8
  call void @ASET(i64 %89, i64 %conv141, i64 %91)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.137, %land.lhs.true.134, %if.end.131
  %92 = load i64, i64* %item_name, align 8
  %call143 = call i8* @SSDATA(i64 %92)
  %93 = load i64, i64* %enable, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp145 = icmp eq i64 %93, %call144
  %lnot = xor i1 %cmp145, true
  %94 = load i64, i64* %help, align 8
  %call147 = call zeroext i1 @STRINGP(i64 %94)
  br i1 %call147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %if.end.142
  %95 = load i64, i64* %help, align 8
  br label %cond.end.152

cond.false.150:                                   ; preds = %if.end.142
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.149
  %cond153 = phi i64 [ %95, %cond.true.149 ], [ %call151, %cond.false.150 ]
  %call154 = call %struct._widget_value* @make_widget_value(i8* %call143, i8* null, i1 zeroext %lnot, i64 %cond153)
  store %struct._widget_value* %call154, %struct._widget_value** %wv, align 8
  %96 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %tobool155 = icmp ne %struct._widget_value* %96, null
  br i1 %tobool155, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %cond.end.152
  %97 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %98 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %next157 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %98, i32 0, i32 12
  store %struct._widget_value* %97, %struct._widget_value** %next157, align 8
  br label %if.end.160

if.else.158:                                      ; preds = %cond.end.152
  %99 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %100 = load %struct._widget_value*, %struct._widget_value** %save_wv, align 8
  %contents159 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %100, i32 0, i32 10
  store %struct._widget_value* %99, %struct._widget_value** %contents159, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.158, %if.then.156
  %101 = load i64, i64* %descrip, align 8
  %call161 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp162 = icmp eq i64 %101, %call161
  br i1 %cmp162, label %if.end.166, label %if.then.164

if.then.164:                                      ; preds = %if.end.160
  %102 = load i64, i64* %descrip, align 8
  %call165 = call i8* @SSDATA(i64 %102)
  %103 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %key = getelementptr inbounds %struct._widget_value, %struct._widget_value* %103, i32 0, i32 4
  store i8* %call165, i8** %key, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.end.160
  %104 = load i64, i64* %def, align 8
  %call167 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp168 = icmp eq i64 %104, %call167
  br i1 %cmp168, label %cond.false.173, label %cond.true.170

cond.true.170:                                    ; preds = %if.end.166
  %105 = load i64, i64* @menu_items, align 8
  %106 = load i32, i32* %i, align 4
  %conv171 = sext i32 %106 to i64
  %call172 = call i64* @aref_addr(i64 %105, i64 %conv171)
  br label %cond.end.174

cond.false.173:                                   ; preds = %if.end.166
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.173, %cond.true.170
  %cond175 = phi i64* [ %call172, %cond.true.170 ], [ null, %cond.false.173 ]
  %107 = bitcast i64* %cond175 to i8*
  %108 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %call_data = getelementptr inbounds %struct._widget_value, %struct._widget_value* %108, i32 0, i32 11
  store i8* %107, i8** %call_data, align 8
  %109 = load i64, i64* %type, align 8
  %call176 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp177 = icmp eq i64 %109, %call176
  br i1 %cmp177, label %if.then.179, label %if.else.181

if.then.179:                                      ; preds = %cond.end.174
  %110 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type180 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %110, i32 0, i32 9
  store i32 0, i32* %button_type180, align 4
  br label %if.end.196

if.else.181:                                      ; preds = %cond.end.174
  %111 = load i64, i64* %type, align 8
  %call182 = call i64 @builtin_lisp_symbol(i32 130)
  %cmp183 = icmp eq i64 %111, %call182
  br i1 %cmp183, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %if.else.181
  %112 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type186 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %112, i32 0, i32 9
  store i32 1, i32* %button_type186, align 4
  br label %if.end.195

if.else.187:                                      ; preds = %if.else.181
  %113 = load i64, i64* %type, align 8
  %call188 = call i64 @builtin_lisp_symbol(i32 101)
  %cmp189 = icmp eq i64 %113, %call188
  br i1 %cmp189, label %if.then.191, label %if.else.193

if.then.191:                                      ; preds = %if.else.187
  %114 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %button_type192 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %114, i32 0, i32 9
  store i32 2, i32* %button_type192, align 4
  br label %if.end.194

if.else.193:                                      ; preds = %if.else.187
  call void @emacs_abort() #8
  unreachable

if.end.194:                                       ; preds = %if.then.191
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.185
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.179
  %115 = load i64, i64* %selected, align 8
  %call197 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp198 = icmp eq i64 %115, %call197
  %lnot200 = xor i1 %cmp198, true
  %116 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %selected201 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %116, i32 0, i32 7
  %frombool = zext i1 %lnot200 to i8
  store i8 %frombool, i8* %selected201, align 1
  %117 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %117, %struct._widget_value** %prev_wv, align 8
  %118 = load i32, i32* %i, align 4
  %add202 = add nsw i32 %118, 8
  store i32 %add202, i32* %i, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.196, %if.end.97
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.40
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.then.33
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.21
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %119 = load i64, i64* %title.addr, align 8
  %call208 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp209 = icmp eq i64 %119, %call208
  br i1 %cmp209, label %if.end.230, label %if.then.211

if.then.211:                                      ; preds = %while.end
  %call212 = call i64 @builtin_lisp_symbol(i32 0)
  %call213 = call %struct._widget_value* @make_widget_value(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* null, i1 zeroext false, i64 %call212)
  store %struct._widget_value* %call213, %struct._widget_value** %wv_sep1, align 8
  %call214 = call i64 @builtin_lisp_symbol(i32 0)
  %call215 = call %struct._widget_value* @make_widget_value(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* null, i1 zeroext false, i64 %call214)
  store %struct._widget_value* %call215, %struct._widget_value** %wv_sep2, align 8
  %120 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents216 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %120, i32 0, i32 10
  %121 = load %struct._widget_value*, %struct._widget_value** %contents216, align 8
  %122 = load %struct._widget_value*, %struct._widget_value** %wv_sep2, align 8
  %next217 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %122, i32 0, i32 12
  store %struct._widget_value* %121, %struct._widget_value** %next217, align 8
  %123 = load %struct._widget_value*, %struct._widget_value** %wv_sep2, align 8
  %124 = load %struct._widget_value*, %struct._widget_value** %wv_sep1, align 8
  %next218 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %124, i32 0, i32 12
  store %struct._widget_value* %123, %struct._widget_value** %next218, align 8
  %125 = load i64, i64* %title.addr, align 8
  %call219 = call zeroext i1 @STRING_MULTIBYTE(i64 %125)
  br i1 %call219, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %if.then.211
  %126 = load i64, i64* %title.addr, align 8
  %call221 = call i64 @builtin_lisp_symbol(i32 988)
  %call222 = call i64 @code_convert_string_norecord(i64 %126, i64 %call221, i1 zeroext true)
  store i64 %call222, i64* %title.addr, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %if.then.211
  %127 = load i64, i64* %title.addr, align 8
  %call224 = call i8* @SSDATA(i64 %127)
  %call225 = call i64 @builtin_lisp_symbol(i32 0)
  %call226 = call %struct._widget_value* @make_widget_value(i8* %call224, i8* null, i1 zeroext true, i64 %call225)
  store %struct._widget_value* %call226, %struct._widget_value** %wv_title, align 8
  %128 = load %struct._widget_value*, %struct._widget_value** %wv_title, align 8
  %button_type227 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %128, i32 0, i32 9
  store i32 0, i32* %button_type227, align 4
  %129 = load %struct._widget_value*, %struct._widget_value** %wv_sep1, align 8
  %130 = load %struct._widget_value*, %struct._widget_value** %wv_title, align 8
  %next228 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %130, i32 0, i32 12
  store %struct._widget_value* %129, %struct._widget_value** %next228, align 8
  %131 = load %struct._widget_value*, %struct._widget_value** %wv_title, align 8
  %132 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %contents229 = getelementptr inbounds %struct._widget_value, %struct._widget_value* %132, i32 0, i32 10
  store %struct._widget_value* %131, %struct._widget_value** %contents229, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.223, %while.end
  store volatile i64* null, i64** @menu_item_selection, align 8
  %133 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %134 = bitcast %struct._widget_value* %133 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @cleanup_widget_value_tree, i8* %134)
  %135 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %136 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %137 = load i32, i32* %x.addr, align 4
  %138 = load i32, i32* %y.addr, align 4
  %139 = load i32, i32* %menuflags.addr, align 4
  %and231 = and i32 %139, 2
  %tobool232 = icmp ne i32 %and231, 0
  call void @create_and_show_popup_menu(%struct.frame* %135, %struct._widget_value* %136, i32 %137, i32 %138, i1 zeroext %tobool232)
  %140 = load i64, i64* %specpdl_count, align 8
  %call233 = call i64 @builtin_lisp_symbol(i32 0)
  %call234 = call i64 @unbind_to(i64 %140, i64 %call233)
  %141 = load volatile i64*, i64** @menu_item_selection, align 8
  %cmp235 = icmp ne i64* %141, null
  br i1 %cmp235, label %if.then.237, label %if.else.325

if.then.237:                                      ; preds = %if.end.230
  %call240 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call240, i64* %entry239, align 8
  store i64 %call240, i64* %prefix238, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond.241

while.cond.241:                                   ; preds = %if.end.323, %if.then.237
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* @menu_items_used, align 4
  %cmp242 = icmp slt i32 %142, %143
  br i1 %cmp242, label %while.body.244, label %while.end.324

while.body.244:                                   ; preds = %while.cond.241
  %144 = load i64, i64* @menu_items, align 8
  %145 = load i32, i32* %i, align 4
  %conv245 = sext i32 %145 to i64
  %call246 = call i64 @AREF(i64 %144, i64 %conv245)
  %call247 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp248 = icmp eq i64 %call246, %call247
  br i1 %cmp248, label %if.then.250, label %if.else.255

if.then.250:                                      ; preds = %while.body.244
  %146 = load i64, i64* %prefix238, align 8
  %147 = load i32, i32* %submenu_depth, align 4
  %inc251 = add nsw i32 %147, 1
  store i32 %inc251, i32* %submenu_depth, align 4
  %idxprom252 = sext i32 %147 to i64
  %148 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx253 = getelementptr inbounds i64, i64* %148, i64 %idxprom252
  store i64 %146, i64* %arrayidx253, align 8
  %149 = load i64, i64* %entry239, align 8
  store i64 %149, i64* %prefix238, align 8
  %150 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %150, 1
  store i32 %inc254, i32* %i, align 4
  br label %if.end.323

if.else.255:                                      ; preds = %while.body.244
  %151 = load i64, i64* @menu_items, align 8
  %152 = load i32, i32* %i, align 4
  %conv256 = sext i32 %152 to i64
  %call257 = call i64 @AREF(i64 %151, i64 %conv256)
  %call258 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp259 = icmp eq i64 %call257, %call258
  br i1 %cmp259, label %if.then.261, label %if.else.266

if.then.261:                                      ; preds = %if.else.255
  %153 = load i32, i32* %submenu_depth, align 4
  %dec262 = add nsw i32 %153, -1
  store i32 %dec262, i32* %submenu_depth, align 4
  %idxprom263 = sext i32 %dec262 to i64
  %154 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx264 = getelementptr inbounds i64, i64* %154, i64 %idxprom263
  %155 = load i64, i64* %arrayidx264, align 8
  store i64 %155, i64* %prefix238, align 8
  %156 = load i32, i32* %i, align 4
  %inc265 = add nsw i32 %156, 1
  store i32 %inc265, i32* %i, align 4
  br label %if.end.322

if.else.266:                                      ; preds = %if.else.255
  %157 = load i64, i64* @menu_items, align 8
  %158 = load i32, i32* %i, align 4
  %conv267 = sext i32 %158 to i64
  %call268 = call i64 @AREF(i64 %157, i64 %conv267)
  %call269 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp270 = icmp eq i64 %call268, %call269
  br i1 %cmp270, label %if.then.272, label %if.else.277

if.then.272:                                      ; preds = %if.else.266
  %159 = load i64, i64* @menu_items, align 8
  %160 = load i32, i32* %i, align 4
  %add273 = add nsw i32 %160, 2
  %conv274 = sext i32 %add273 to i64
  %call275 = call i64 @AREF(i64 %159, i64 %conv274)
  store i64 %call275, i64* %prefix238, align 8
  %161 = load i32, i32* %i, align 4
  %add276 = add nsw i32 %161, 3
  store i32 %add276, i32* %i, align 4
  br label %if.end.321

if.else.277:                                      ; preds = %if.else.266
  %162 = load i64, i64* @menu_items, align 8
  %163 = load i32, i32* %i, align 4
  %conv278 = sext i32 %163 to i64
  %call279 = call i64 @AREF(i64 %162, i64 %conv278)
  %call280 = call i64 @builtin_lisp_symbol(i32 783)
  %cmp281 = icmp eq i64 %call279, %call280
  br i1 %cmp281, label %if.then.283, label %if.else.285

if.then.283:                                      ; preds = %if.else.277
  %164 = load i32, i32* %i, align 4
  %add284 = add nsw i32 %164, 1
  store i32 %add284, i32* %i, align 4
  br label %if.end.320

if.else.285:                                      ; preds = %if.else.277
  %165 = load i64, i64* @menu_items, align 8
  %166 = load i32, i32* %i, align 4
  %add286 = add nsw i32 %166, 2
  %conv287 = sext i32 %add286 to i64
  %call288 = call i64 @AREF(i64 %165, i64 %conv287)
  store i64 %call288, i64* %entry239, align 8
  %167 = load volatile i64*, i64** @menu_item_selection, align 8
  %168 = load i64, i64* @menu_items, align 8
  %169 = load i32, i32* %i, align 4
  %conv289 = sext i32 %169 to i64
  %call290 = call i64* @aref_addr(i64 %168, i64 %conv289)
  %cmp291 = icmp eq i64* %167, %call290
  br i1 %cmp291, label %if.then.293, label %if.end.318

if.then.293:                                      ; preds = %if.else.285
  %170 = load i32, i32* %menuflags.addr, align 4
  %and294 = and i32 %170, 1
  %tobool295 = icmp ne i32 %and294, 0
  br i1 %tobool295, label %if.then.296, label %if.end.317

if.then.296:                                      ; preds = %if.then.293
  %171 = load i64, i64* %entry239, align 8
  %call297 = call i64 @list1(i64 %171)
  store i64 %call297, i64* %entry239, align 8
  %172 = load i64, i64* %prefix238, align 8
  %call298 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp299 = icmp eq i64 %172, %call298
  br i1 %cmp299, label %if.end.303, label %if.then.301

if.then.301:                                      ; preds = %if.then.296
  %173 = load i64, i64* %prefix238, align 8
  %174 = load i64, i64* %entry239, align 8
  %call302 = call i64 @Fcons(i64 %173, i64 %174)
  store i64 %call302, i64* %entry239, align 8
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.301, %if.then.296
  %175 = load i32, i32* %submenu_depth, align 4
  %sub = sub nsw i32 %175, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.303
  %176 = load i32, i32* %j, align 4
  %cmp304 = icmp sge i32 %176, 0
  br i1 %cmp304, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %177 = load i32, i32* %j, align 4
  %idxprom306 = sext i32 %177 to i64
  %178 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx307 = getelementptr inbounds i64, i64* %178, i64 %idxprom306
  %179 = load i64, i64* %arrayidx307, align 8
  %call308 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp309 = icmp eq i64 %179, %call308
  br i1 %cmp309, label %if.end.315, label %if.then.311

if.then.311:                                      ; preds = %for.body
  %180 = load i32, i32* %j, align 4
  %idxprom312 = sext i32 %180 to i64
  %181 = load i64*, i64** %subprefix_stack, align 8
  %arrayidx313 = getelementptr inbounds i64, i64* %181, i64 %idxprom312
  %182 = load i64, i64* %arrayidx313, align 8
  %183 = load i64, i64* %entry239, align 8
  %call314 = call i64 @Fcons(i64 %182, i64 %183)
  store i64 %call314, i64* %entry239, align 8
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.311, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.315
  %184 = load i32, i32* %j, align 4
  %dec316 = add nsw i32 %184, -1
  store i32 %dec316, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.317

if.end.317:                                       ; preds = %for.end, %if.then.293
  call void @unblock_input()
  %185 = load i64, i64* %entry239, align 8
  store i64 %185, i64* %retval
  br label %return

if.end.318:                                       ; preds = %if.else.285
  %186 = load i32, i32* %i, align 4
  %add319 = add nsw i32 %186, 8
  store i32 %add319, i32* %i, align 4
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.318, %if.then.283
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.272
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.then.261
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.then.250
  br label %while.cond.241

while.end.324:                                    ; preds = %while.cond.241
  br label %if.end.333

if.else.325:                                      ; preds = %if.end.230
  %187 = load i32, i32* %menuflags.addr, align 4
  %and326 = and i32 %187, 2
  %tobool327 = icmp ne i32 %and326, 0
  br i1 %tobool327, label %if.end.332, label %if.then.328

if.then.328:                                      ; preds = %if.else.325
  call void @unblock_input()
  %call329 = call i64 @builtin_lisp_symbol(i32 782)
  %call330 = call i64 @builtin_lisp_symbol(i32 0)
  %call331 = call i64 @Fsignal(i64 %call329, i64 %call330)
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.328, %if.else.325
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %while.end.324
  call void @unblock_input()
  %call334 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call334, i64* %retval
  br label %return

return:                                           ; preds = %if.end.333, %if.end.317, %if.then
  %188 = load i64, i64* %retval
  ret i64 %188
}

declare zeroext i1 @STRINGP(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

declare void @ASET(i64, i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i64* @aref_addr(i64, i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #5

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cleanup_widget_value_tree(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct._widget_value*
  call void @free_menubar_widget_value_tree(%struct._widget_value* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_and_show_popup_menu(%struct.frame* %f, %struct._widget_value* %first_wv, i32 %x, i32 %y, i1 zeroext %for_click) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %first_wv.addr = alloca %struct._widget_value*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %for_click.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %pos_func = alloca void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, align 8
  %popup_x_y = alloca %struct.next_popup_x_y, align 8
  %specpdl_count = alloca i64, align 8
  %use_pos_func = alloca i8, align 1
  %dummy_window = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct._widget_value* %first_wv, %struct._widget_value** %first_wv.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %frombool = zext i1 %for_click to i8
  store i8 %frombool, i8* %for_click.addr, align 1
  store void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)** %pos_func, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %specpdl_count, align 8
  %0 = load i8, i8* %for_click.addr, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  %frombool1 = zext i1 %lnot to i8
  store i8 %frombool1, i8* %use_pos_func, align 1
  store i8 1, i8* @xg_crazy_callback_abort, align 1
  %1 = load %struct._widget_value*, %struct._widget_value** %first_wv.addr, align 8
  %name = getelementptr inbounds %struct._widget_value, %struct._widget_value* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %4 = load %struct._widget_value*, %struct._widget_value** %first_wv.addr, align 8
  %call2 = call %struct._GtkWidget* @xg_create_widget(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %2, %struct.frame* %3, %struct._widget_value* %4, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @popup_selection_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @popup_deactivate_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @menu_highlight_callback to void ()*))
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %menu, align 8
  store i8 0, i8* @xg_crazy_callback_abort, align 1
  %5 = load i8, i8* %use_pos_func, align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* @menu_position_func, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)** %pos_func, align 8
  call void @block_input()
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 62
  %x4 = bitcast %union.output_data* %output_data to %struct.x_output**
  %7 = load %struct.x_output*, %struct.x_output** %x4, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %7, i32 0, i32 44
  %8 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %8, i32 0, i32 2
  %9 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %10 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data5 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 62
  %x6 = bitcast %union.output_data* %output_data5 to %struct.x_output**
  %11 = load %struct.x_output*, %struct.x_output** %x6, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %11, i32 0, i32 9
  %12 = load i64, i64* %window_desc, align 8
  %13 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data7 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x8 = bitcast %union.output_data* %output_data7 to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x8, align 8
  %display_info9 = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 44
  %15 = load %struct.x_display_info*, %struct.x_display_info** %display_info9, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %15, i32 0, i32 14
  %16 = load i64, i64* %root_window, align 8
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %call10 = call i32 @XTranslateCoordinates(%struct._XDisplay* %9, i64 %12, i64 %16, i32 %17, i32 %18, i32* %x.addr, i32* %y.addr, i64* %dummy_window)
  call void @unblock_input()
  %19 = load i32, i32* %x.addr, align 4
  %x11 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %popup_x_y, i32 0, i32 1
  store i32 %19, i32* %x11, align 4
  %20 = load i32, i32* %y.addr, align 4
  %y12 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %popup_x_y, i32 0, i32 2
  store i32 %20, i32* %y12, align 4
  %21 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %f13 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %popup_x_y, i32 0, i32 0
  store %struct.frame* %21, %struct.frame** %f13, align 8
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i8, i8* %for_click.addr, align 1
  %tobool14 = trunc i8 %22 to i1
  br i1 %tobool14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %23 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %23, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data16 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x17 = bitcast %union.output_data* %output_data16 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x17, align 8
  %display_info18 = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 44
  %26 = load %struct.x_display_info*, %struct.x_display_info** %display_info18, align 8
  %grabbed = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %26, i32 0, i32 12
  %27 = load i32, i32* %grabbed, align 4
  %28 = load i32, i32* %i, align 4
  %shl = shl i32 1, %28
  %and = and i32 %27, %shl
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body
  br label %for.end

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.20, %for.cond
  %30 = load i32, i32* %i, align 4
  %cmp22 = icmp eq i32 %30, 5
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %for.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_menu_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call26)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkMenu*
  %35 = load void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)** %pos_func, align 8
  %36 = bitcast %struct.next_popup_x_y* %popup_x_y to i8*
  %37 = load i32, i32* %i, align 4
  %38 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data28 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 62
  %x29 = bitcast %union.output_data* %output_data28 to %struct.x_output**
  %39 = load %struct.x_output*, %struct.x_output** %x29, align 8
  %display_info30 = getelementptr inbounds %struct.x_output, %struct.x_output* %39, i32 0, i32 44
  %40 = load %struct.x_display_info*, %struct.x_display_info** %display_info30, align 8
  %last_user_time = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %40, i32 0, i32 79
  %41 = load i64, i64* %last_user_time, align 8
  %conv = trunc i64 %41 to i32
  call void @gtk_menu_popup(%struct._GtkMenu* %34, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* %35, i8* %36, i32 %37, i32 %conv)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @pop_down_menu, i8* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %call31 = call i32 @gtk_widget_get_mapped(%struct._GtkWidget* %44)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.25
  store i32 1, i32* @popup_activated_flag, align 4
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @popup_widget_loop(i1 zeroext true, %struct._GtkWidget* %45)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.25
  %46 = load i64, i64* %specpdl_count, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %call36 = call i64 @unbind_to(i64 %46, i64 %call35)
  %47 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data37 = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 62
  %x38 = bitcast %union.output_data* %output_data37 to %struct.x_output**
  %48 = load %struct.x_output*, %struct.x_output** %x38, align 8
  %display_info39 = getelementptr inbounds %struct.x_output, %struct.x_output* %48, i32 0, i32 44
  %49 = load %struct.x_display_info*, %struct.x_display_info** %display_info39, align 8
  %grabbed40 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %49, i32 0, i32 12
  store i32 0, i32* %grabbed40, align 4
  ret void
}

declare i64 @list1(i64) #1

declare i64 @Fcons(i64, i64) #1

declare i64 @Fsignal(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @xw_popup_dialog(%struct.frame* %f, i64 %header, i64 %contents) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %header.addr = alloca i64, align 8
  %contents.addr = alloca i64, align 8
  %title = alloca i64, align 8
  %error_name = alloca i8*, align 8
  %selection = alloca i64, align 8
  %specpdl_count = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %header, i64* %header.addr, align 8
  store i64 %contents, i64* %contents.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %specpdl_count, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @check_window_system(%struct.frame* %0)
  %1 = load i64, i64* %contents.addr, align 8
  %call1 = call i64 @Fcar(i64 %1)
  store i64 %call1, i64* %title, align 8
  %2 = load i64, i64* %title, align 8
  call void @CHECK_STRING(i64 %2)
  call void @record_unwind_protect_void(void ()* @unuse_menu_items)
  %3 = load i64, i64* %contents.addr, align 8
  %call2 = call i64 @Fcdr(i64 %3)
  %call3 = call i64 @Fcar(i64 %call2)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %call3, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %title, align 8
  %call5 = call i64 @build_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  %call7 = call i64 @Fcons(i64 %call5, i64 %call6)
  %call8 = call i64 @list2(i64 %4, i64 %call7)
  store i64 %call8, i64* %contents.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %contents.addr, align 8
  %call9 = call i64 @list1(i64 %5)
  call void @list_of_panes(i64 %call9)
  call void @block_input()
  %6 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %7 = load i64, i64* %title, align 8
  %8 = load i64, i64* %header.addr, align 8
  %call10 = call i64 @x_dialog_show(%struct.frame* %6, i64 %7, i64 %8, i8** %error_name)
  store i64 %call10, i64* %selection, align 8
  call void @unblock_input()
  %9 = load i64, i64* %specpdl_count, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %call12 = call i64 @unbind_to(i64 %9, i64 %call11)
  call void @discard_menu_items()
  %10 = load i8*, i8** %error_name, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %11 = load i8*, i8** %error_name, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %11) #8
  unreachable

if.end.14:                                        ; preds = %if.end
  %12 = load i64, i64* %selection, align 8
  ret i64 %12
}

declare void @check_window_system(%struct.frame*) #1

declare i64 @Fcar(i64) #1

declare void @CHECK_STRING(i64) #1

declare void @record_unwind_protect_void(void ()*) #1

declare void @unuse_menu_items() #1

declare i64 @Fcdr(i64) #1

declare i64 @list2(i64, i64) #1

declare i64 @build_string(i8*) #1

declare void @list_of_panes(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @x_dialog_show(%struct.frame* %f, i64 %title, i64 %header, i8** %error_name) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %title.addr = alloca i64, align 8
  %header.addr = alloca i64, align 8
  %error_name.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %nb_buttons = alloca i32, align 4
  %dialog_name = alloca [6 x i8], align 1
  %wv = alloca %struct._widget_value*, align 8
  %first_wv = alloca %struct._widget_value*, align 8
  %prev_wv = alloca %struct._widget_value*, align 8
  %left_count = alloca i32, align 4
  %boundary_seen = alloca i8, align 1
  %specpdl_count = alloca i64, align 8
  %pane_name = alloca i64, align 8
  %pane_string = alloca i8*, align 8
  %item_name = alloca i64, align 8
  %enable = alloca i64, align 8
  %descrip = alloca i64, align 8
  %entry82 = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %title, i64* %title.addr, align 8
  store i64 %header, i64* %header.addr, align 8
  store i8** %error_name, i8*** %error_name.addr, align 8
  store i32 0, i32* %nb_buttons, align 4
  store %struct._widget_value* null, %struct._widget_value** %first_wv, align 8
  store %struct._widget_value* null, %struct._widget_value** %prev_wv, align 8
  store i32 0, i32* %left_count, align 4
  store i8 0, i8* %boundary_seen, align 1
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %specpdl_count, align 8
  %0 = load i8**, i8*** %error_name.addr, align 8
  store i8* null, i8** %0, align 8
  %1 = load i32, i32* @menu_items_n_panes, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %error_name.addr, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8** %2, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* @menu_items, align 8
  %call2 = call i64 @AREF(i64 %3, i64 1)
  store i64 %call2, i64* %pane_name, align 8
  %4 = load i64, i64* %pane_name, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %4, %call3
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i64, i64* %pane_name, align 8
  %call5 = call i8* @SSDATA(i64 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %cond.true ], [ %call5, %cond.false ]
  store i8* %cond, i8** %pane_string, align 8
  %6 = load i8*, i8** %pane_string, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %call7 = call %struct._widget_value* @make_widget_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %6, i1 zeroext true, i64 %call6)
  store %struct._widget_value* %call7, %struct._widget_value** %prev_wv, align 8
  %7 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  store %struct._widget_value* %7, %struct._widget_value** %first_wv, align 8
  store i32 3, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.then.25, %cond.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @menu_items_used, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* @menu_items, align 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 0
  %conv = sext i32 %add to i64
  %call9 = call i64 @AREF(i64 %10, i64 %conv)
  store i64 %call9, i64* %item_name, align 8
  %12 = load i64, i64* @menu_items, align 8
  %13 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %13, 1
  %conv11 = sext i32 %add10 to i64
  %call12 = call i64 @AREF(i64 %12, i64 %conv11)
  store i64 %call12, i64* %enable, align 8
  %14 = load i64, i64* @menu_items, align 8
  %15 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %15, 3
  %conv14 = sext i32 %add13 to i64
  %call15 = call i64 @AREF(i64 %14, i64 %conv14)
  store i64 %call15, i64* %descrip, align 8
  %16 = load i64, i64* %item_name, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %16, %call16
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %while.body
  %17 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  call void @free_menubar_widget_value_tree(%struct._widget_value* %17)
  %18 = load i8**, i8*** %error_name.addr, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8** %18, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %retval
  br label %return

if.end.21:                                        ; preds = %while.body
  %19 = load i64, i64* %item_name, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 783)
  %cmp23 = icmp eq i64 %19, %call22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i8 1, i8* %boundary_seen, align 1
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

if.end.26:                                        ; preds = %if.end.21
  %21 = load i32, i32* %nb_buttons, align 4
  %cmp27 = icmp sge i32 %21, 9
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %22 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  call void @free_menubar_widget_value_tree(%struct._widget_value* %22)
  %23 = load i8**, i8*** %error_name.addr, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i8** %23, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call30, i64* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.26
  %24 = load i32, i32* %nb_buttons, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @button_names, i32 0, i64 %idxprom
  %25 = load i8*, i8** %arrayidx, align 8
  %26 = load i64, i64* %item_name, align 8
  %call32 = call i8* @SSDATA(i64 %26)
  %27 = load i64, i64* %enable, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %27, %call33
  %lnot = xor i1 %cmp34, true
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %call37 = call %struct._widget_value* @make_widget_value(i8* %25, i8* %call32, i1 zeroext %lnot, i64 %call36)
  store %struct._widget_value* %call37, %struct._widget_value** %wv, align 8
  %28 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %29 = load %struct._widget_value*, %struct._widget_value** %prev_wv, align 8
  %next = getelementptr inbounds %struct._widget_value, %struct._widget_value* %29, i32 0, i32 12
  store %struct._widget_value* %28, %struct._widget_value** %next, align 8
  %30 = load i64, i64* %descrip, align 8
  %call38 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp39 = icmp eq i64 %30, %call38
  br i1 %cmp39, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.end.31
  %31 = load i64, i64* %descrip, align 8
  %call42 = call i8* @SSDATA(i64 %31)
  %32 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %key = getelementptr inbounds %struct._widget_value, %struct._widget_value* %32, i32 0, i32 4
  store i8* %call42, i8** %key, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.31
  %33 = load i64, i64* @menu_items, align 8
  %34 = load i32, i32* %i, align 4
  %conv44 = sext i32 %34 to i64
  %call45 = call i64* @aref_addr(i64 %33, i64 %conv44)
  %35 = bitcast i64* %call45 to i8*
  %36 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %call_data = getelementptr inbounds %struct._widget_value, %struct._widget_value* %36, i32 0, i32 11
  store i8* %35, i8** %call_data, align 8
  %37 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %37, %struct._widget_value** %prev_wv, align 8
  %38 = load i8, i8* %boundary_seen, align 1
  %tobool = trunc i8 %38 to i1
  br i1 %tobool, label %if.end.48, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %39 = load i32, i32* %left_count, align 4
  %inc47 = add nsw i32 %39, 1
  store i32 %inc47, i32* %left_count, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.43
  %40 = load i32, i32* %nb_buttons, align 4
  %inc49 = add nsw i32 %40, 1
  store i32 %inc49, i32* %nb_buttons, align 4
  %41 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %41, 8
  store i32 %add50, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i8, i8* %boundary_seen, align 1
  %tobool51 = trunc i8 %42 to i1
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %while.end
  %43 = load i32, i32* %nb_buttons, align 4
  %44 = load i32, i32* %nb_buttons, align 4
  %div = sdiv i32 %44, 2
  %sub = sub nsw i32 %43, %div
  store i32 %sub, i32* %left_count, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %while.end
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i32 0
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  %call55 = call %struct._widget_value* @make_widget_value(i8* %arraydecay, i8* null, i1 zeroext false, i64 %call54)
  store %struct._widget_value* %call55, %struct._widget_value** %wv, align 8
  %45 = load i64, i64* %header.addr, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp57 = icmp eq i64 %45, %call56
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.end.53
  %arrayidx60 = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i64 0
  store i8 81, i8* %arrayidx60, align 1
  br label %if.end.62

if.else:                                          ; preds = %if.end.53
  %arrayidx61 = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i64 0
  store i8 73, i8* %arrayidx61, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.59
  %46 = load i32, i32* %nb_buttons, align 4
  %add63 = add nsw i32 48, %46
  %conv64 = trunc i32 %add63 to i8
  %arrayidx65 = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i64 1
  store i8 %conv64, i8* %arrayidx65, align 1
  %arrayidx66 = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i64 2
  store i8 66, i8* %arrayidx66, align 1
  %arrayidx67 = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i64 3
  store i8 82, i8* %arrayidx67, align 1
  %47 = load i32, i32* %nb_buttons, align 4
  %add68 = add nsw i32 48, %47
  %48 = load i32, i32* %left_count, align 4
  %sub69 = sub nsw i32 %add68, %48
  %conv70 = trunc i32 %sub69 to i8
  %arrayidx71 = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i64 4
  store i8 %conv70, i8* %arrayidx71, align 1
  %arrayidx72 = getelementptr inbounds [6 x i8], [6 x i8]* %dialog_name, i32 0, i64 5
  store i8 0, i8* %arrayidx72, align 1
  %49 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %50 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  %contents = getelementptr inbounds %struct._widget_value, %struct._widget_value* %50, i32 0, i32 10
  store %struct._widget_value* %49, %struct._widget_value** %contents, align 8
  %51 = load %struct._widget_value*, %struct._widget_value** %wv, align 8
  store %struct._widget_value* %51, %struct._widget_value** %first_wv, align 8
  store volatile i64* null, i64** @menu_item_selection, align 8
  %52 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  %53 = bitcast %struct._widget_value* %52 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @cleanup_widget_value_tree, i8* %53)
  %54 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %55 = load %struct._widget_value*, %struct._widget_value** %first_wv, align 8
  call void @create_and_show_dialog(%struct.frame* %54, %struct._widget_value* %55)
  %56 = load i64, i64* %specpdl_count, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %call74 = call i64 @unbind_to(i64 %56, i64 %call73)
  %57 = load volatile i64*, i64** @menu_item_selection, align 8
  %cmp75 = icmp ne i64* %57, null
  br i1 %cmp75, label %if.then.77, label %if.else.112

if.then.77:                                       ; preds = %if.end.62
  store i32 0, i32* %i, align 4
  br label %while.cond.78

while.cond.78:                                    ; preds = %if.end.110, %if.then.77
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* @menu_items_used, align 4
  %cmp79 = icmp slt i32 %58, %59
  br i1 %cmp79, label %while.body.81, label %while.end.111

while.body.81:                                    ; preds = %while.cond.78
  %60 = load i64, i64* @menu_items, align 8
  %61 = load i32, i32* %i, align 4
  %conv83 = sext i32 %61 to i64
  %call84 = call i64 @AREF(i64 %60, i64 %conv83)
  %call85 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp86 = icmp eq i64 %call84, %call85
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %while.body.81
  %62 = load i32, i32* %i, align 4
  %add89 = add nsw i32 %62, 3
  store i32 %add89, i32* %i, align 4
  br label %if.end.110

if.else.90:                                       ; preds = %while.body.81
  %63 = load i64, i64* @menu_items, align 8
  %64 = load i32, i32* %i, align 4
  %conv91 = sext i32 %64 to i64
  %call92 = call i64 @AREF(i64 %63, i64 %conv91)
  %call93 = call i64 @builtin_lisp_symbol(i32 783)
  %cmp94 = icmp eq i64 %call92, %call93
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %if.else.90
  %65 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %65, 1
  store i32 %inc97, i32* %i, align 4
  br label %if.end.109

if.else.98:                                       ; preds = %if.else.90
  %66 = load i64, i64* @menu_items, align 8
  %67 = load i32, i32* %i, align 4
  %add99 = add nsw i32 %67, 2
  %conv100 = sext i32 %add99 to i64
  %call101 = call i64 @AREF(i64 %66, i64 %conv100)
  store i64 %call101, i64* %entry82, align 8
  %68 = load volatile i64*, i64** @menu_item_selection, align 8
  %69 = load i64, i64* @menu_items, align 8
  %70 = load i32, i32* %i, align 4
  %conv102 = sext i32 %70 to i64
  %call103 = call i64* @aref_addr(i64 %69, i64 %conv102)
  %cmp104 = icmp eq i64* %68, %call103
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.else.98
  %71 = load i64, i64* %entry82, align 8
  store i64 %71, i64* %retval
  br label %return

if.end.107:                                       ; preds = %if.else.98
  %72 = load i32, i32* %i, align 4
  %add108 = add nsw i32 %72, 8
  store i32 %add108, i32* %i, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.107, %if.then.96
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.88
  br label %while.cond.78

while.end.111:                                    ; preds = %while.cond.78
  br label %if.end.116

if.else.112:                                      ; preds = %if.end.62
  %call113 = call i64 @builtin_lisp_symbol(i32 782)
  %call114 = call i64 @builtin_lisp_symbol(i32 0)
  %call115 = call i64 @Fsignal(i64 %call113, i64 %call114)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.112, %while.end.111
  %call117 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call117, i64* %retval
  br label %return

return:                                           ; preds = %if.end.116, %if.then.106, %if.then.29, %if.then.19, %if.then
  %73 = load i64, i64* %retval
  ret i64 %73
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #5

; Function Attrs: nounwind uwtable
define i32 @popup_activated() #0 {
entry:
  %0 = load i32, i32* @popup_activated_flag, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i64 @Fmenu_or_popup_active_p() #0 {
entry:
  %call = call i32 @popup_activated()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

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

; Function Attrs: nounwind uwtable
define void @syms_of_xmenu() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* @Smenu_or_popup_active_p)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_menu_bar_open_internal to %struct.Lisp_Subr*))
  %call = call i64 @intern_c_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  %0 = load i8*, i8** getelementptr inbounds (%struct.Lisp_Subr, %struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_menu_bar_open_internal to %struct.Lisp_Subr*), i32 0, i32 4), align 8
  %call1 = call i64 @intern_c_string(i8* %0)
  %call2 = call i64 @Ffset(i64 %call, i64 %call1)
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @Ffset(i64, i64) #1

declare i64 @intern_c_string(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_menu_item_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i32 @gtk_check_menu_item_get_active(%struct._GtkCheckMenuItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_check_menu_item_get_type() #2

declare i32 @gtk_main_iteration() #1

declare void @find_and_call_menu_selection(%struct.frame*, i32, i64, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @show_help_event(%struct.frame* %f, %struct._GtkWidget* %widget, i64 %help) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %help.addr = alloca i64, align 8
  %frame = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i64 %help, i64* %help.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %tobool = icmp ne %struct.frame* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %2 = bitcast %struct.frame* %1 to i8*
  %call = call i64 @make_lisp_ptr(i8* %2, i32 5)
  store i64 %call, i64* %frame, align 8
  %3 = load i64, i64* %frame, align 8
  %4 = load i64, i64* %help.addr, align 8
  call void @kbd_buffer_store_help_event(i64 %3, i64 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %help.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  call void @show_help_echo(i64 %5, i64 %call1, i64 %call2, i64 %call3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @kbd_buffer_store_help_event(i64, i64) #1

declare void @show_help_echo(i64, i64, i64, i64) #1

declare void @xg_update_frame_menubar(%struct.frame*) #1

; Function Attrs: nounwind uwtable
define internal void @popup_selection_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  %cb_data = alloca %struct.xg_menu_item_cb_data_*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.xg_menu_item_cb_data_*
  store %struct.xg_menu_item_cb_data_* %1, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %2 = load i8, i8* @xg_crazy_callback_abort, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.3

if.end:                                           ; preds = %entry
  %3 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %tobool1 = icmp ne %struct.xg_menu_item_cb_data_* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.xg_menu_item_cb_data_*, %struct.xg_menu_item_cb_data_** %cb_data, align 8
  %call_data = getelementptr inbounds %struct.xg_menu_item_cb_data_, %struct.xg_menu_item_cb_data_* %4, i32 0, i32 3
  %5 = load i8*, i8** %call_data, align 8
  %6 = bitcast i8* %5 to i64*
  store volatile i64* %6, i64** @menu_item_selection, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @menu_position_func(%struct._GtkMenu* %menu, i32* %x, i32* %y, i32* %push_in, i8* %user_data) #0 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %push_in.addr = alloca i32*, align 8
  %user_data.addr = alloca i8*, align 8
  %data = alloca %struct.next_popup_x_y*, align 8
  %req = alloca %struct._GtkRequisition, align 4
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %disp_width = alloca i32, align 4
  %disp_height = alloca i32, align 4
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %push_in, i32** %push_in.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.next_popup_x_y*
  store %struct.next_popup_x_y* %1, %struct.next_popup_x_y** %data, align 8
  %2 = load %struct.next_popup_x_y*, %struct.next_popup_x_y** %data, align 8
  %f = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %2, i32 0, i32 0
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x1 = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x1, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %5, %struct.x_display_info** %dpyinfo, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call = call i32 @x_display_pixel_width(%struct.x_display_info* %6)
  store i32 %call, i32* %disp_width, align 4
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call2 = call i32 @x_display_pixel_height(%struct.x_display_info* %7)
  store i32 %call2, i32* %disp_height, align 4
  %8 = load %struct.next_popup_x_y*, %struct.next_popup_x_y** %data, align 8
  %x3 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %8, i32 0, i32 1
  %9 = load i32, i32* %x3, align 4
  %10 = load i32*, i32** %x.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.next_popup_x_y*, %struct.next_popup_x_y** %data, align 8
  %y4 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %11, i32 0, i32 2
  %12 = load i32, i32* %y4, align 4
  %13 = load i32*, i32** %y.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %15 = bitcast %struct._GtkMenu* %14 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call5)
  %16 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_size_request(%struct._GtkWidget* %16, %struct._GtkRequisition* %req)
  %17 = load %struct.next_popup_x_y*, %struct.next_popup_x_y** %data, align 8
  %x7 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %17, i32 0, i32 1
  %18 = load i32, i32* %x7, align 4
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %req, i32 0, i32 0
  %19 = load i32, i32* %width, align 4
  %add = add nsw i32 %18, %19
  %20 = load i32, i32* %disp_width, align 4
  %cmp = icmp sgt i32 %add, %20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.next_popup_x_y*, %struct.next_popup_x_y** %data, align 8
  %x8 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %21, i32 0, i32 1
  %22 = load i32, i32* %x8, align 4
  %width9 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %req, i32 0, i32 0
  %23 = load i32, i32* %width9, align 4
  %add10 = add nsw i32 %22, %23
  %24 = load i32, i32* %disp_width, align 4
  %sub = sub nsw i32 %add10, %24
  %25 = load i32*, i32** %x.addr, align 8
  %26 = load i32, i32* %25, align 4
  %sub11 = sub nsw i32 %26, %sub
  store i32 %sub11, i32* %25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct.next_popup_x_y*, %struct.next_popup_x_y** %data, align 8
  %y12 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %27, i32 0, i32 2
  %28 = load i32, i32* %y12, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %req, i32 0, i32 1
  %29 = load i32, i32* %height, align 4
  %add13 = add nsw i32 %28, %29
  %30 = load i32, i32* %disp_height, align 4
  %cmp14 = icmp sgt i32 %add13, %30
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end
  %31 = load %struct.next_popup_x_y*, %struct.next_popup_x_y** %data, align 8
  %y16 = getelementptr inbounds %struct.next_popup_x_y, %struct.next_popup_x_y* %31, i32 0, i32 2
  %32 = load i32, i32* %y16, align 4
  %height17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %req, i32 0, i32 1
  %33 = load i32, i32* %height17, align 4
  %add18 = add nsw i32 %32, %33
  %34 = load i32, i32* %disp_height, align 4
  %sub19 = sub nsw i32 %add18, %34
  %35 = load i32*, i32** %y.addr, align 8
  %36 = load i32, i32* %35, align 4
  %sub20 = sub nsw i32 %36, %sub19
  store i32 %sub20, i32* %35, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.end
  ret void
}

declare i32 @XTranslateCoordinates(%struct._XDisplay*, i64, i64, i32, i32, i32*, i32*, i64*) #1

declare void @gtk_widget_show_all(%struct._GtkWidget*) #1

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @pop_down_menu(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* @popup_activated_flag, align 4
  call void @block_input()
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  call void @unblock_input()
  ret void
}

declare i32 @gtk_widget_get_mapped(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @popup_widget_loop(i1 zeroext %do_timers, %struct._GtkWidget* %widget) #0 {
entry:
  %do_timers.addr = alloca i8, align 1
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %frombool = zext i1 %do_timers to i8
  store i8 %frombool, i8* %do_timers.addr, align 1
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i32, i32* @popup_activated_flag, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @popup_activated_flag, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* @popup_activated_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %do_timers.addr, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @x_menu_wait_for_event(i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @x_display_pixel_width(%struct.x_display_info*) #1

declare i32 @x_display_pixel_height(%struct.x_display_info*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @create_and_show_dialog(%struct.frame* %f, %struct._widget_value* %first_wv) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %first_wv.addr = alloca %struct._widget_value*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %specpdl_count = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct._widget_value* %first_wv, %struct._widget_value** %first_wv.addr, align 8
  %0 = load %struct._widget_value*, %struct._widget_value** %first_wv.addr, align 8
  %name = getelementptr inbounds %struct._widget_value, %struct._widget_value* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %3 = load %struct._widget_value*, %struct._widget_value** %first_wv.addr, align 8
  %call = call %struct._GtkWidget* @xg_create_widget(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* %1, %struct.frame* %2, %struct._widget_value* %3, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dialog_selection_callback to void ()*), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @popup_deactivate_callback to void ()*), void ()* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %menu, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %specpdl_count, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @pop_down_menu, i8* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show_all(%struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @popup_widget_loop(i1 zeroext true, %struct._GtkWidget* %8)
  %9 = load i64, i64* %specpdl_count, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @unbind_to(i64 %9, i64 %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dialog_selection_callback(%struct._GtkWidget* %widget, i8* %client_data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %client_data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %client_data, i8** %client_data.addr, align 8
  %0 = load i8*, i8** %client_data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %client_data.addr, align 8
  %3 = bitcast i8* %2 to i64*
  store volatile i64* %3, i64** @menu_item_selection, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @popup_activated_flag, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 2448993}
