; ModuleID = './src/xselect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_location = type { i32, %struct._XDisplay*, i64, i64, i32, i8, %struct.prop_location* }
%struct._XDisplay = type opaque
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.buffer = type opaque
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
%struct.selection_data = type { i8*, i64, i32, i64, i8, i64, %struct.prop_location*, %struct.selection_data* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Intfwd = type { i32, i64* }
%struct.selection_event_queue = type { %struct.selection_input_event, %struct.selection_event_queue* }
%struct.selection_input_event = type { i16, %struct.x_display_info*, i64, i64, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Lisp_Cons = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
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
%struct.XPropertyEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i32 }
%struct.XSelectionEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i64, i64, i64 }
%struct.Lisp_Process = type opaque
%union.Aligned_String = type { %struct.Lisp_String }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.interval = type opaque
%struct.XClientMessageEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i32, %union.anon.5 }
%union.anon.5 = type { [5 x i64] }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.12, i16, i16, i8*, i8*, i8* }
%union.anon.12 = type { i64 ()* }

@x_queue_selection_requests = internal global i32 0, align 4
@property_change_wait_list = internal global %struct.prop_location* null, align 8
@property_change_reply_object = internal global %struct.prop_location* null, align 8
@property_change_reply = internal global i64 0, align 8
@reading_selection_window = internal global i64 0, align 8
@reading_which_selection = internal global i64 0, align 8
@reading_selection_reply = internal global i64 0, align 8
@selected_frame = external global i64, align 8
@.str = private unnamed_addr constant [39 x i8] c"X selection unavailable for this frame\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"VALUE may not be nil\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Retrieving MULTIPLE selections is currently unimplemented\00", align 1
@globals = external global %struct.emacs_globals, align 8
@x_display_list = external global %struct.x_display_info*, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Saving clipboard to X clipboard manager...\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Wrong type, must be string, number or cons\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Out of 'char' range\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Out of 'short' range\00", align 1
@empty_unibyte_string = external global i64, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"ATOM must be a symbol or a string\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Bad data in VALUES, must be number, cons or string\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"FORMAT must be one of 8, 16 or 32\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"PointerWindow\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"InputFocus\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"DEST as a string must be one of PointerWindow or InputFocus\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"DEST must be a frame, nil, string, number or cons\00", align 1
@prop_location_identifier = internal global i32 0, align 4
@converted_selections = internal global %struct.selection_data* null, align 8
@conversion_fail_tag = internal global i64 0, align 8
@syms_of_xselect.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"selection-converter-alist\00", align 1
@syms_of_xselect.o_fwd.15 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [27 x i8] c"x-lost-selection-functions\00", align 1
@syms_of_xselect.o_fwd.17 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [27 x i8] c"x-sent-selection-functions\00", align 1
@syms_of_xselect.o_fwd.19 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [34 x i8] c"x-select-enable-clipboard-manager\00", align 1
@syms_of_xselect.i_fwd = internal global %struct.Lisp_Intfwd zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"x-selection-timeout\00", align 1
@selection_queue = internal global %struct.selection_event_queue* null, align 8
@x_selection_current_request = internal global %struct.selection_input_event* null, align 8
@selection_request_dpyinfo = internal global %struct.x_display_info* null, align 8
@.str.22 = private unnamed_addr constant [33 x i8] c"Selection owner couldn't convert\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"No selection\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Timed out waiting for property-notify event\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Non-ASCII string must be encoded in advance\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"All elements of selection vector must have same type\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Unrecognized selection data\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Can't set selection: %s\00", align 1
@Vframe_list = external global i64, align 8
@.str.29 = private unnamed_addr constant [55 x i8] c"Invalid data returned by selection-conversion function\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Can't convert selection: %s\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"Timed out waiting for reply from selection owner\00", align 1
@.str.32 = private unnamed_addr constant [72 x i8] c"X clipboard manager error: %s\0AIf the problem persists, set `%s' to nil.\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [80 x i8] c"Error saving to X clipboard manager.\0AIf the problem persists, set '%s' to nil.\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"x-get-selection-internal\00", align 1
@Sx_get_selection_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fx_get_selection_internal }, i16 2, i16 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.35 = private unnamed_addr constant [25 x i8] c"x-own-selection-internal\00", align 1
@Sx_own_selection_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fx_own_selection_internal }, i16 2, i16 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.36 = private unnamed_addr constant [28 x i8] c"x-disown-selection-internal\00", align 1
@Sx_disown_selection_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fx_disown_selection_internal }, i16 1, i16 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.37 = private unnamed_addr constant [20 x i8] c"x-selection-owner-p\00", align 1
@Sx_selection_owner_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_selection_owner_p }, i16 0, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.38 = private unnamed_addr constant [21 x i8] c"x-selection-exists-p\00", align 1
@Sx_selection_exists_p = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_selection_exists_p }, i16 0, i16 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.39 = private unnamed_addr constant [16 x i8] c"x-get-atom-name\00", align 1
@Sx_get_atom_name = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_get_atom_name }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.40 = private unnamed_addr constant [22 x i8] c"x-send-client-message\00", align 1
@Sx_send_client_message = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64, i64)* @Fx_send_client_message }, i16 6, i16 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.41 = private unnamed_addr constant [20 x i8] c"x-register-dnd-atom\00", align 1
@Sx_register_dnd_atom = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fx_register_dnd_atom }, i16 1, i16 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @x_handle_selection_event(%struct.selection_input_event* %event) #0 {
entry:
  %event.addr = alloca %struct.selection_input_event*, align 8
  store %struct.selection_input_event* %event, %struct.selection_input_event** %event.addr, align 8
  %0 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %1 = bitcast %struct.selection_input_event* %0 to i16*
  %bf.load = load i16, i16* %1, align 8
  %bf.cast = zext i16 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  call void @x_handle_selection_clear(%struct.selection_input_event* %2)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @x_queue_selection_requests, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  %4 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  call void @x_queue_event(%struct.selection_input_event* %4)
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  call void @x_handle_selection_request(%struct.selection_input_event* %5)
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_handle_selection_clear(%struct.selection_input_event* %event) #0 {
entry:
  %event.addr = alloca %struct.selection_input_event*, align 8
  %selection = alloca i64, align 8
  %changed_owner_time = alloca i64, align 8
  %selection_symbol = alloca i64, align 8
  %local_selection_data = alloca i64, align 8
  %local_selection_time = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %Vselection_alist = alloca i64, align 8
  %rest = alloca i64, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  store %struct.selection_input_event* %event, %struct.selection_input_event** %event.addr, align 8
  %0 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %selection1 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %0, i32 0, i32 3
  %1 = load i64, i64* %selection1, align 8
  store i64 %1, i64* %selection, align 8
  %2 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %time = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %2, i32 0, i32 6
  %3 = load i64, i64* %time, align 8
  store i64 %3, i64* %changed_owner_time, align 8
  %4 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %dpyinfo2 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %4, i32 0, i32 1
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo2, align 8
  store %struct.x_display_info* %5, %struct.x_display_info** %dpyinfo, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %tobool = icmp ne %struct.x_display_info* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %8 = load i64, i64* %selection, align 8
  %call = call i64 @x_atom_to_symbol(%struct.x_display_info* %7, i64 %8)
  store i64 %call, i64* %selection_symbol, align 8
  %9 = load i64, i64* %selection_symbol, align 8
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 1
  %11 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %Vselection_alist3 = getelementptr inbounds %struct.terminal, %struct.terminal* %11, i32 0, i32 3
  %12 = load i64, i64* %Vselection_alist3, align 8
  %call4 = call i64 @assq_no_quit(i64 %9, i64 %12)
  store i64 %call4, i64* %local_selection_data, align 8
  %13 = load i64, i64* %local_selection_data, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %13, %call5
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %return

if.end.7:                                         ; preds = %if.end
  %14 = load i64, i64* %local_selection_data, align 8
  %sub = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %sub8 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub8 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u9 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr10 = bitcast %union.anon.11* %u9 to i64*
  %20 = load i64, i64* %cdr10, align 8
  %sub11 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub11 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car, align 8
  %call12 = call i64 @cons_to_unsigned(i64 %23, i64 -1)
  store i64 %call12, i64* %local_selection_time, align 8
  %24 = load i64, i64* %changed_owner_time, align 8
  %cmp13 = icmp ne i64 %24, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.7
  %25 = load i64, i64* %local_selection_time, align 8
  %26 = load i64, i64* %changed_owner_time, align 8
  %cmp14 = icmp ugt i64 %25, %26
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.7
  %27 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal17 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %27, i32 0, i32 1
  %28 = load %struct.terminal*, %struct.terminal** %terminal17, align 8
  %Vselection_alist18 = getelementptr inbounds %struct.terminal, %struct.terminal* %28, i32 0, i32 3
  %29 = load i64, i64* %Vselection_alist18, align 8
  store i64 %29, i64* %Vselection_alist, align 8
  %30 = load i64, i64* %local_selection_data, align 8
  %31 = load i64, i64* %Vselection_alist, align 8
  %call19 = call i64 @CAR(i64 %31)
  %cmp20 = icmp eq i64 %30, %call19
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.16
  %32 = load i64, i64* %Vselection_alist, align 8
  %sub22 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub22 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr24 = bitcast %union.anon.11* %u23 to i64*
  %35 = load i64, i64* %cdr24, align 8
  store i64 %35, i64* %Vselection_alist, align 8
  br label %if.end.44

if.else:                                          ; preds = %if.end.16
  %36 = load i64, i64* %Vselection_alist, align 8
  store i64 %36, i64* %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %37 = load i64, i64* %rest, align 8
  %and = and i64 %37, 7
  %conv = trunc i64 %and to i32
  %cmp25 = icmp eq i32 %conv, 3
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %local_selection_data, align 8
  %39 = load i64, i64* %rest, align 8
  %sub27 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub27 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %u28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 1
  %cdr29 = bitcast %union.anon.11* %u28 to i64*
  %42 = load i64, i64* %cdr29, align 8
  %call30 = call i64 @CAR(i64 %42)
  %cmp31 = icmp eq i64 %38, %call30
  br i1 %cmp31, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %for.body
  %43 = load i64, i64* %rest, align 8
  %44 = load i64, i64* %rest, align 8
  %sub34 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub34 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr36 = bitcast %union.anon.11* %u35 to i64*
  %47 = load i64, i64* %cdr36, align 8
  %sub37 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub37 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %u38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 1
  %cdr39 = bitcast %union.anon.11* %u38 to i64*
  %50 = load i64, i64* %cdr39, align 8
  call void @XSETCDR(i64 %43, i64 %50)
  br label %for.end

if.end.40:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %51 = load i64, i64* %rest, align 8
  %sub41 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub41 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %u42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 1
  %cdr43 = bitcast %union.anon.11* %u42 to i64*
  %54 = load i64, i64* %cdr43, align 8
  store i64 %54, i64* %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.33, %for.cond
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.then.21
  %55 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal45 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %55, i32 0, i32 1
  %56 = load %struct.terminal*, %struct.terminal** %terminal45, align 8
  %57 = load i64, i64* %Vselection_alist, align 8
  call void @tset_selection_alist(%struct.terminal* %56, i64 %57)
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call46 = call i64 @builtin_lisp_symbol(i32 1052)
  store i64 %call46, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %58 = load i64, i64* %selection_symbol, align 8
  store i64 %58, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call47 = call i64 @Frun_hook_with_args(i64 2, i64* %arraydecay)
  call void @redisplay_preserve_echo_area(i32 20)
  br label %return

return:                                           ; preds = %if.end.44, %if.then.15, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_queue_event(%struct.selection_input_event* %event) #0 {
entry:
  %event.addr = alloca %struct.selection_input_event*, align 8
  %queue_tmp = alloca %struct.selection_event_queue*, align 8
  store %struct.selection_input_event* %event, %struct.selection_input_event** %event.addr, align 8
  %0 = load %struct.selection_event_queue*, %struct.selection_event_queue** @selection_queue, align 8
  store %struct.selection_event_queue* %0, %struct.selection_event_queue** %queue_tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %tobool = icmp ne %struct.selection_event_queue* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %3 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %event1 = getelementptr inbounds %struct.selection_event_queue, %struct.selection_event_queue* %3, i32 0, i32 0
  %call = call zeroext i1 @selection_input_event_equal(%struct.selection_input_event* %2, %struct.selection_input_event* %event1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  call void @x_decline_selection_request(%struct.selection_input_event* %4)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %next = getelementptr inbounds %struct.selection_event_queue, %struct.selection_event_queue* %5, i32 0, i32 1
  %6 = load %struct.selection_event_queue*, %struct.selection_event_queue** %next, align 8
  store %struct.selection_event_queue* %6, %struct.selection_event_queue** %queue_tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call noalias i8* @xmalloc(i64 64)
  %7 = bitcast i8* %call2 to %struct.selection_event_queue*
  store %struct.selection_event_queue* %7, %struct.selection_event_queue** %queue_tmp, align 8
  %8 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %event3 = getelementptr inbounds %struct.selection_event_queue, %struct.selection_event_queue* %8, i32 0, i32 0
  %9 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %10 = bitcast %struct.selection_input_event* %event3 to i8*
  %11 = bitcast %struct.selection_input_event* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 56, i32 8, i1 false)
  %12 = load %struct.selection_event_queue*, %struct.selection_event_queue** @selection_queue, align 8
  %13 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %next4 = getelementptr inbounds %struct.selection_event_queue, %struct.selection_event_queue* %13, i32 0, i32 1
  store %struct.selection_event_queue* %12, %struct.selection_event_queue** %next4, align 8
  %14 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  store %struct.selection_event_queue* %14, %struct.selection_event_queue** @selection_queue, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_handle_selection_request(%struct.selection_input_event* %event) #0 {
entry:
  %event.addr = alloca %struct.selection_input_event*, align 8
  %local_selection_time = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %selection = alloca i64, align 8
  %selection_symbol = alloca i64, align 8
  %target = alloca i64, align 8
  %target_symbol = alloca i64, align 8
  %property = alloca i64, align 8
  %local_selection_data = alloca i64, align 8
  %success = alloca i8, align 1
  %count = alloca i64, align 8
  %requestor = alloca i64, align 8
  %multprop = alloca i64, align 8
  %j = alloca i64, align 8
  %nselections = alloca i64, align 8
  %subtarget = alloca i64, align 8
  %subproperty = alloca i64, align 8
  %.compoundliteral = alloca [4 x i64], align 8
  store %struct.selection_input_event* %event, %struct.selection_input_event** %event.addr, align 8
  %0 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %dpyinfo1 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %0, i32 0, i32 1
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo1, align 8
  store %struct.x_display_info* %1, %struct.x_display_info** %dpyinfo, align 8
  %2 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %selection2 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %2, i32 0, i32 3
  %3 = load i64, i64* %selection2, align 8
  store i64 %3, i64* %selection, align 8
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %5 = load i64, i64* %selection, align 8
  %call = call i64 @x_atom_to_symbol(%struct.x_display_info* %4, i64 %5)
  store i64 %call, i64* %selection_symbol, align 8
  %6 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %target3 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %6, i32 0, i32 4
  %7 = load i64, i64* %target3, align 8
  store i64 %7, i64* %target, align 8
  %8 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %9 = load i64, i64* %target, align 8
  %call4 = call i64 @x_atom_to_symbol(%struct.x_display_info* %8, i64 %9)
  store i64 %call4, i64* %target_symbol, align 8
  %10 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %property5 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %10, i32 0, i32 5
  %11 = load i64, i64* %property5, align 8
  store i64 %11, i64* %property, align 8
  store i8 0, i8* %success, align 1
  %call6 = call i64 @SPECPDL_INDEX()
  store i64 %call6, i64* %count, align 8
  %12 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %tobool = icmp ne %struct.x_display_info* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %DONE

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %selection_symbol, align 8
  %14 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 1
  %15 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %15, i32 0, i32 3
  %16 = load i64, i64* %Vselection_alist, align 8
  %call7 = call i64 @assq_no_quit(i64 %13, i64 %16)
  store i64 %call7, i64* %local_selection_data, align 8
  %17 = load i64, i64* %local_selection_data, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %17, %call8
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %DONE

if.end.10:                                        ; preds = %if.end
  %18 = load i64, i64* %local_selection_data, align 8
  %sub = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  %sub11 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub11 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr13 = bitcast %union.anon.11* %u12 to i64*
  %24 = load i64, i64* %cdr13, align 8
  %sub14 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub14 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 0
  %27 = load i64, i64* %car, align 8
  %call15 = call i64 @cons_to_unsigned(i64 %27, i64 -1)
  store i64 %call15, i64* %local_selection_time, align 8
  %28 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %time = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %28, i32 0, i32 6
  %29 = load i64, i64* %time, align 8
  %cmp16 = icmp ne i64 %29, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.10
  %30 = load i64, i64* %local_selection_time, align 8
  %31 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %time17 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %31, i32 0, i32 6
  %32 = load i64, i64* %time17, align 8
  %cmp18 = icmp ugt i64 %30, %32
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  br label %DONE

if.end.20:                                        ; preds = %land.lhs.true, %if.end.10
  %33 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  store %struct.selection_input_event* %33, %struct.selection_input_event** @x_selection_current_request, align 8
  %34 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  store %struct.x_display_info* %34, %struct.x_display_info** @selection_request_dpyinfo, align 8
  call void @record_unwind_protect_void(void ()* @x_selection_request_lisp_error)
  call void @x_start_queuing_selection_requests()
  call void @record_unwind_protect_void(void ()* @x_stop_queuing_selection_requests)
  %35 = load i64, i64* %target_symbol, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 145)
  %cmp22 = icmp eq i64 %35, %call21
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %36 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %requestor24 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %36, i32 0, i32 2
  %37 = load i64, i64* %requestor24, align 8
  store i64 %37, i64* %requestor, align 8
  %38 = load i64, i64* %property, align 8
  %cmp25 = icmp eq i64 %38, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  br label %DONE

if.end.27:                                        ; preds = %if.then.23
  %39 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %40 = load i64, i64* %requestor, align 8
  %41 = load i64, i64* %property, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 145)
  %42 = load i64, i64* %selection, align 8
  %call29 = call i64 @x_get_window_property_as_lisp_data(%struct.x_display_info* %39, i64 %40, i64 %41, i64 %call28, i64 %42)
  store i64 %call29, i64* %multprop, align 8
  %43 = load i64, i64* %multprop, align 8
  %call30 = call zeroext i1 @VECTORP(i64 %43)
  br i1 %call30, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %if.end.27
  %44 = load i64, i64* %multprop, align 8
  %call31 = call i64 @ASIZE(i64 %44)
  %rem = srem i64 %call31, 2
  %tobool32 = icmp ne i64 %rem, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.27
  br label %DONE

if.end.34:                                        ; preds = %lor.lhs.false
  %45 = load i64, i64* %multprop, align 8
  %call35 = call i64 @ASIZE(i64 %45)
  %div = sdiv i64 %call35, 2
  store i64 %div, i64* %nselections, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %46 = load i64, i64* %j, align 8
  %47 = load i64, i64* %nselections, align 8
  %cmp36 = icmp slt i64 %46, %47
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i64, i64* %multprop, align 8
  %49 = load i64, i64* %j, align 8
  %mul = mul nsw i64 2, %49
  %call37 = call i64 @AREF(i64 %48, i64 %mul)
  store i64 %call37, i64* %subtarget, align 8
  %50 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %51 = load i64, i64* %multprop, align 8
  %52 = load i64, i64* %j, align 8
  %mul38 = mul nsw i64 2, %52
  %add = add nsw i64 %mul38, 1
  %call39 = call i64 @AREF(i64 %51, i64 %add)
  %call40 = call i64 @symbol_to_x_atom(%struct.x_display_info* %50, i64 %call39)
  store i64 %call40, i64* %subproperty, align 8
  %53 = load i64, i64* %subproperty, align 8
  %cmp41 = icmp ne i64 %53, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.body
  %54 = load i64, i64* %selection_symbol, align 8
  %55 = load i64, i64* %subtarget, align 8
  %56 = load i64, i64* %subproperty, align 8
  %57 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call43 = call zeroext i1 @x_convert_selection(i64 %54, i64 %55, i64 %56, i1 zeroext true, %struct.x_display_info* %57)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %58 = load i64, i64* %j, align 8
  %inc = add nsw i64 %58, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %success, align 1
  br label %if.end.50

if.else:                                          ; preds = %if.end.20
  %59 = load i64, i64* %property, align 8
  %cmp45 = icmp eq i64 %59, 0
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.else
  %60 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %target47 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %60, i32 0, i32 4
  %61 = load i64, i64* %target47, align 8
  store i64 %61, i64* %property, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.else
  %62 = load i64, i64* %selection_symbol, align 8
  %63 = load i64, i64* %target_symbol, align 8
  %64 = load i64, i64* %property, align 8
  %65 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %call49 = call zeroext i1 @x_convert_selection(i64 %62, i64 %63, i64 %64, i1 zeroext false, %struct.x_display_info* %65)
  %frombool = zext i1 %call49 to i8
  store i8 %frombool, i8* %success, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.48, %for.end
  br label %DONE

DONE:                                             ; preds = %if.end.50, %if.then.33, %if.then.26, %if.then.19, %if.then.9, %if.then
  %66 = load i8, i8* %success, align 1
  %tobool51 = trunc i8 %66 to i1
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %DONE
  %67 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %68 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  call void @x_reply_selection_request(%struct.selection_input_event* %67, %struct.x_display_info* %68)
  br label %if.end.54

if.else.53:                                       ; preds = %DONE
  %69 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  call void @x_decline_selection_request(%struct.selection_input_event* %69)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.52
  store %struct.selection_input_event* null, %struct.selection_input_event** @x_selection_current_request, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 360), align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %70, %call55
  br i1 %cmp56, label %if.end.68, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.end.54
  %71 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 360), align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 957)
  %cmp59 = icmp eq i64 %71, %call58
  br i1 %cmp59, label %if.end.68, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.57
  %arrayinit.begin = getelementptr inbounds [4 x i64], [4 x i64]* %.compoundliteral, i64 0, i64 0
  %call61 = call i64 @builtin_lisp_symbol(i32 1055)
  store i64 %call61, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %72 = load i64, i64* %selection_symbol, align 8
  store i64 %72, i64* %arrayinit.element
  %arrayinit.element62 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %73 = load i64, i64* %target_symbol, align 8
  store i64 %73, i64* %arrayinit.element62
  %arrayinit.element63 = getelementptr inbounds i64, i64* %arrayinit.element62, i64 1
  %74 = load i8, i8* %success, align 1
  %tobool64 = trunc i8 %74 to i1
  br i1 %tobool64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.60
  %call65 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.then.60
  %call66 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call65, %cond.true ], [ %call66, %cond.false ]
  store i64 %cond, i64* %arrayinit.element63
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %.compoundliteral, i32 0, i32 0
  %call67 = call i64 @Frun_hook_with_args(i64 4, i64* %arraydecay)
  br label %if.end.68

if.end.68:                                        ; preds = %cond.end, %land.lhs.true.57, %if.end.54
  %75 = load i64, i64* %count, align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 0)
  %call70 = call i64 @unbind_to(i64 %75, i64 %call69)
  ret void
}

; Function Attrs: nounwind uwtable
define void @x_clear_frame_selections(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %frame = alloca i64, align 8
  %rest = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %t = alloca %struct.terminal*, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %.compoundliteral53 = alloca [2 x i64], align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %2, %struct.x_display_info** %dpyinfo, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 1
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  store %struct.terminal* %4, %struct.terminal** %t, align 8
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %6 = bitcast %struct.frame* %5 to i8*
  %call = call i64 @make_lisp_ptr(i8* %6, i32 5)
  store i64 %call, i64* %frame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct.terminal*, %struct.terminal** %t, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %7, i32 0, i32 3
  %8 = load i64, i64* %Vselection_alist, align 8
  %and = and i64 %8, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i64, i64* %frame, align 8
  %10 = load %struct.terminal*, %struct.terminal** %t, align 8
  %Vselection_alist2 = getelementptr inbounds %struct.terminal, %struct.terminal* %10, i32 0, i32 3
  %11 = load i64, i64* %Vselection_alist2, align 8
  %sub = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  %sub3 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub3 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %sub4 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub4 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u5 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr6 = bitcast %union.anon.11* %u5 to i64*
  %20 = load i64, i64* %cdr6, align 8
  %sub7 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub7 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr9 = bitcast %union.anon.11* %u8 to i64*
  %23 = load i64, i64* %cdr9, align 8
  %sub10 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub10 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car11 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car11, align 8
  %cmp12 = icmp eq i64 %9, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call14 = call i64 @builtin_lisp_symbol(i32 1052)
  store i64 %call14, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %28 = load %struct.terminal*, %struct.terminal** %t, align 8
  %Vselection_alist15 = getelementptr inbounds %struct.terminal, %struct.terminal* %28, i32 0, i32 3
  %29 = load i64, i64* %Vselection_alist15, align 8
  %call16 = call i64 @Fcar(i64 %29)
  %call17 = call i64 @Fcar(i64 %call16)
  store i64 %call17, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call18 = call i64 @Frun_hook_with_args(i64 2, i64* %arraydecay)
  %30 = load %struct.terminal*, %struct.terminal** %t, align 8
  %31 = load %struct.terminal*, %struct.terminal** %t, align 8
  %Vselection_alist19 = getelementptr inbounds %struct.terminal, %struct.terminal* %31, i32 0, i32 3
  %32 = load i64, i64* %Vselection_alist19, align 8
  %sub20 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub20 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u21 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr22 = bitcast %union.anon.11* %u21 to i64*
  %35 = load i64, i64* %cdr22, align 8
  call void @tset_selection_alist(%struct.terminal* %30, i64 %35)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load %struct.terminal*, %struct.terminal** %t, align 8
  %Vselection_alist23 = getelementptr inbounds %struct.terminal, %struct.terminal* %36, i32 0, i32 3
  %37 = load i64, i64* %Vselection_alist23, align 8
  store i64 %37, i64* %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %38 = load i64, i64* %rest, align 8
  %and24 = and i64 %38, 7
  %conv25 = trunc i64 %and24 to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i64, i64* %rest, align 8
  %sub28 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub28 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 1
  %cdr30 = bitcast %union.anon.11* %u29 to i64*
  %42 = load i64, i64* %cdr30, align 8
  %and31 = and i64 %42, 7
  %conv32 = trunc i64 %and31 to i32
  %cmp33 = icmp eq i32 %conv32, 3
  br i1 %cmp33, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %43 = load i64, i64* %frame, align 8
  %44 = load i64, i64* %rest, align 8
  %sub35 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub35 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr37 = bitcast %union.anon.11* %u36 to i64*
  %47 = load i64, i64* %cdr37, align 8
  %sub38 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub38 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %car39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 0
  %50 = load i64, i64* %car39, align 8
  %sub40 = sub nsw i64 %50, 3
  %51 = inttoptr i64 %sub40 to i8*
  %52 = bitcast i8* %51 to %struct.Lisp_Cons*
  %u41 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %52, i32 0, i32 1
  %cdr42 = bitcast %union.anon.11* %u41 to i64*
  %53 = load i64, i64* %cdr42, align 8
  %sub43 = sub nsw i64 %53, 3
  %54 = inttoptr i64 %sub43 to i8*
  %55 = bitcast i8* %54 to %struct.Lisp_Cons*
  %u44 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %55, i32 0, i32 1
  %cdr45 = bitcast %union.anon.11* %u44 to i64*
  %56 = load i64, i64* %cdr45, align 8
  %sub46 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub46 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %u47 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 1
  %cdr48 = bitcast %union.anon.11* %u47 to i64*
  %59 = load i64, i64* %cdr48, align 8
  %sub49 = sub nsw i64 %59, 3
  %60 = inttoptr i64 %sub49 to i8*
  %61 = bitcast i8* %60 to %struct.Lisp_Cons*
  %car50 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %61, i32 0, i32 0
  %62 = load i64, i64* %car50, align 8
  %cmp51 = icmp eq i64 %43, %62
  br i1 %cmp51, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arrayinit.begin54 = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral53, i64 0, i64 0
  %call55 = call i64 @builtin_lisp_symbol(i32 1052)
  store i64 %call55, i64* %arrayinit.begin54
  %arrayinit.element56 = getelementptr inbounds i64, i64* %arrayinit.begin54, i64 1
  %63 = load i64, i64* %rest, align 8
  %sub57 = sub nsw i64 %63, 3
  %64 = inttoptr i64 %sub57 to i8*
  %65 = bitcast i8* %64 to %struct.Lisp_Cons*
  %u58 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %65, i32 0, i32 1
  %cdr59 = bitcast %union.anon.11* %u58 to i64*
  %66 = load i64, i64* %cdr59, align 8
  %sub60 = sub nsw i64 %66, 3
  %67 = inttoptr i64 %sub60 to i8*
  %68 = bitcast i8* %67 to %struct.Lisp_Cons*
  %car61 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %68, i32 0, i32 0
  %69 = load i64, i64* %car61, align 8
  %sub62 = sub nsw i64 %69, 3
  %70 = inttoptr i64 %sub62 to i8*
  %71 = bitcast i8* %70 to %struct.Lisp_Cons*
  %car63 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %71, i32 0, i32 0
  %72 = load i64, i64* %car63, align 8
  store i64 %72, i64* %arrayinit.element56
  %arraydecay64 = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral53, i32 0, i32 0
  %call65 = call i64 @Frun_hook_with_args(i64 2, i64* %arraydecay64)
  %73 = load i64, i64* %rest, align 8
  %74 = load i64, i64* %rest, align 8
  %sub66 = sub nsw i64 %74, 3
  %75 = inttoptr i64 %sub66 to i8*
  %76 = bitcast i8* %75 to %struct.Lisp_Cons*
  %u67 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %76, i32 0, i32 1
  %cdr68 = bitcast %union.anon.11* %u67 to i64*
  %77 = load i64, i64* %cdr68, align 8
  %sub69 = sub nsw i64 %77, 3
  %78 = inttoptr i64 %sub69 to i8*
  %79 = bitcast i8* %78 to %struct.Lisp_Cons*
  %u70 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %79, i32 0, i32 1
  %cdr71 = bitcast %union.anon.11* %u70 to i64*
  %80 = load i64, i64* %cdr71, align 8
  call void @XSETCDR(i64 %73, i64 %80)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %81 = load i64, i64* %rest, align 8
  %sub72 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub72 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %u73 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 1
  %cdr74 = bitcast %union.anon.11* %u73 to i64*
  %84 = load i64, i64* %cdr74, align 8
  store i64 %84, i64* %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i64 @Frun_hook_with_args(i64, i64*) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @Fcar(i64) #1

declare void @tset_selection_alist(%struct.terminal*, i64) #1

declare void @XSETCDR(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @x_handle_property_notify(%struct.XPropertyEvent* %event) #0 {
entry:
  %event.addr = alloca %struct.XPropertyEvent*, align 8
  %rest = alloca %struct.prop_location*, align 8
  store %struct.XPropertyEvent* %event, %struct.XPropertyEvent** %event.addr, align 8
  %0 = load %struct.prop_location*, %struct.prop_location** @property_change_wait_list, align 8
  store %struct.prop_location* %0, %struct.prop_location** %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %tobool = icmp ne %struct.prop_location* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %arrived = getelementptr inbounds %struct.prop_location, %struct.prop_location* %2, i32 0, i32 5
  %3 = load i8, i8* %arrived, align 1
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %property = getelementptr inbounds %struct.prop_location, %struct.prop_location* %4, i32 0, i32 3
  %5 = load i64, i64* %property, align 8
  %6 = load %struct.XPropertyEvent*, %struct.XPropertyEvent** %event.addr, align 8
  %atom = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %6, i32 0, i32 5
  %7 = load i64, i64* %atom, align 8
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %land.lhs.true.2, label %if.end.13

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %window = getelementptr inbounds %struct.prop_location, %struct.prop_location* %8, i32 0, i32 2
  %9 = load i64, i64* %window, align 8
  %10 = load %struct.XPropertyEvent*, %struct.XPropertyEvent** %event.addr, align 8
  %window3 = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %10, i32 0, i32 4
  %11 = load i64, i64* %window3, align 8
  %cmp4 = icmp eq i64 %9, %11
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.13

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %12 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %display = getelementptr inbounds %struct.prop_location, %struct.prop_location* %12, i32 0, i32 1
  %13 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %14 = load %struct.XPropertyEvent*, %struct.XPropertyEvent** %event.addr, align 8
  %display6 = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %14, i32 0, i32 3
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display6, align 8
  %cmp7 = icmp eq %struct._XDisplay* %13, %15
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %16 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %desired_state = getelementptr inbounds %struct.prop_location, %struct.prop_location* %16, i32 0, i32 4
  %17 = load i32, i32* %desired_state, align 4
  %18 = load %struct.XPropertyEvent*, %struct.XPropertyEvent** %event.addr, align 8
  %state = getelementptr inbounds %struct.XPropertyEvent, %struct.XPropertyEvent* %18, i32 0, i32 7
  %19 = load i32, i32* %state, align 4
  %cmp9 = icmp eq i32 %17, %19
  br i1 %cmp9, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true.8
  %20 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %arrived10 = getelementptr inbounds %struct.prop_location, %struct.prop_location* %20, i32 0, i32 5
  store i8 1, i8* %arrived10, align 1
  %21 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %22 = load %struct.prop_location*, %struct.prop_location** @property_change_reply_object, align 8
  %cmp11 = icmp eq %struct.prop_location* %21, %22
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %23 = load i64, i64* @property_change_reply, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  call void @XSETCAR(i64 %23, i64 %call)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %for.end

if.end.13:                                        ; preds = %land.lhs.true.8, %land.lhs.true.5, %land.lhs.true.2, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %24 = load %struct.prop_location*, %struct.prop_location** %rest, align 8
  %next = getelementptr inbounds %struct.prop_location, %struct.prop_location* %24, i32 0, i32 6
  %25 = load %struct.prop_location*, %struct.prop_location** %next, align 8
  store %struct.prop_location* %25, %struct.prop_location** %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  ret void
}

declare void @XSETCAR(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @x_handle_selection_notify(%struct.XSelectionEvent* %event) #0 {
entry:
  %event.addr = alloca %struct.XSelectionEvent*, align 8
  store %struct.XSelectionEvent* %event, %struct.XSelectionEvent** %event.addr, align 8
  %0 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %event.addr, align 8
  %requestor = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %0, i32 0, i32 4
  %1 = load i64, i64* %requestor, align 8
  %2 = load i64, i64* @reading_selection_window, align 8
  %cmp = icmp ne i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %event.addr, align 8
  %selection = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %3, i32 0, i32 5
  %4 = load i64, i64* %selection, align 8
  %5 = load i64, i64* @reading_which_selection, align 8
  %cmp1 = icmp ne i64 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* @reading_selection_reply, align 8
  %7 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %event.addr, align 8
  %property = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %7, i32 0, i32 7
  %8 = load i64, i64* %property, align 8
  %cmp4 = icmp ne i64 %8, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  %call = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %call5 = call i64 @builtin_lisp_symbol(i32 598)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call5, %cond.false ]
  call void @XSETCAR(i64 %6, i64 %cond)
  br label %return

return:                                           ; preds = %cond.end, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fx_own_selection_internal(i64 %selection, i64 %value, i64 %frame) #0 {
entry:
  %selection.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  store i64 %selection, i64* %selection.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  store i64 %1, i64* %frame.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %2, 5
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.frame*
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 61
  %5 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp1 = icmp ne %struct.terminal* %5, null
  br i1 %cmp1, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, i64* %frame.addr, align 8
  %sub2 = sub nsw i64 %6, 5
  %7 = inttoptr i64 %sub2 to i8*
  %8 = bitcast i8* %7 to %struct.frame*
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 26
  %9 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %9, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp3 = icmp eq i32 %bf.cast, 2
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

if.end.5:                                         ; preds = %lor.lhs.false
  %10 = load i64, i64* %selection.addr, align 8
  %and = and i64 %10, 7
  %conv = trunc i64 %and to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %call8 = call i64 @builtin_lisp_symbol(i32 897)
  %11 = load i64, i64* %selection.addr, align 8
  %12 = call i64 @wrong_type_argument(i64 %call8, i64 %11) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %13, %cond.true
  %14 = load i64, i64* %value.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %14, %call9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable

if.end.13:                                        ; preds = %cond.end
  %15 = load i64, i64* %selection.addr, align 8
  %16 = load i64, i64* %value.addr, align 8
  %17 = load i64, i64* %frame.addr, align 8
  call void @x_own_selection(i64 %15, i64 %16, i64 %17)
  %18 = load i64, i64* %value.addr, align 8
  ret i64 %18
}

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @x_own_selection(i64 %selection_name, i64 %selection_value, i64 %frame) #0 {
entry:
  %selection_name.addr = alloca i64, align 8
  %selection_value.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %selecting_window = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %display = alloca %struct._XDisplay*, align 8
  %timestamp = alloca i64, align 8
  %selection_atom = alloca i64, align 8
  %selection_data = alloca i64, align 8
  %prev_value = alloca i64, align 8
  %rest = alloca i64, align 8
  store i64 %selection_name, i64* %selection_name.addr, align 8
  store i64 %selection_value, i64* %selection_value.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  store %struct.frame* %2, %struct.frame** %f, align 8
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 9
  %5 = load i64, i64* %window_desc, align 8
  store i64 %5, i64* %selecting_window, align 8
  %6 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %7 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %7, i32 0, i32 44
  %8 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %8, %struct.x_display_info** %dpyinfo, align 8
  %9 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display3 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display3, align 8
  store %struct._XDisplay* %10, %struct._XDisplay** %display, align 8
  %11 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %last_user_time = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %11, i32 0, i32 79
  %12 = load i64, i64* %last_user_time, align 8
  store i64 %12, i64* %timestamp, align 8
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %14 = load i64, i64* %selection_name.addr, align 8
  %call = call i64 @symbol_to_x_atom(%struct.x_display_info* %13, i64 %14)
  store i64 %call, i64* %selection_atom, align 8
  call void @block_input()
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_catch_errors(%struct._XDisplay* %15)
  %16 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %17 = load i64, i64* %selection_atom, align 8
  %18 = load i64, i64* %selecting_window, align 8
  %19 = load i64, i64* %timestamp, align 8
  %call4 = call i32 @XSetSelectionOwner(%struct._XDisplay* %16, i64 %17, i64 %18, i64 %19)
  %20 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_check_errors(%struct._XDisplay* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0))
  call void @x_uncatch_errors_after_check()
  call void @unblock_input()
  %21 = load i64, i64* %selection_name.addr, align 8
  %22 = load i64, i64* %selection_value.addr, align 8
  %23 = load i64, i64* %timestamp, align 8
  %cmp = icmp ule i64 0, %23
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %24 = load i64, i64* %timestamp, align 8
  %cmp5 = icmp ule i64 -2305843009213693952, %24
  br i1 %cmp5, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %25 = load i64, i64* %timestamp, align 8
  %cmp6 = icmp ule i64 %25, 2305843009213693951
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %26 = load i64, i64* %timestamp, align 8
  %shl = shl i64 %26, 2
  %add = add i64 %shl, 2
  br label %cond.end.13

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %27 = load i64, i64* %timestamp, align 8
  %mul = mul i64 0, %27
  %sub7 = sub i64 %mul, 1
  %cmp8 = icmp ult i64 %sub7, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.false
  %28 = load i64, i64* %timestamp, align 8
  %call10 = call i64 @intbig_to_lisp(i64 %28)
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %29 = load i64, i64* %timestamp, align 8
  %call12 = call i64 @uintbig_to_lisp(i64 %29)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.9
  %cond = phi i64 [ %call10, %cond.true.9 ], [ %call12, %cond.false.11 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i64 [ %add, %cond.true ], [ %cond, %cond.end ]
  %30 = load i64, i64* %frame.addr, align 8
  %call15 = call i64 @list4(i64 %21, i64 %22, i64 %cond14, i64 %30)
  store i64 %call15, i64* %selection_data, align 8
  %31 = load i64, i64* %selection_name.addr, align 8
  %32 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %32, i32 0, i32 1
  %33 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %33, i32 0, i32 3
  %34 = load i64, i64* %Vselection_alist, align 8
  %call16 = call i64 @assq_no_quit(i64 %31, i64 %34)
  store i64 %call16, i64* %prev_value, align 8
  %35 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal17 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %35, i32 0, i32 1
  %36 = load %struct.terminal*, %struct.terminal** %terminal17, align 8
  %37 = load i64, i64* %selection_data, align 8
  %38 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal18 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %38, i32 0, i32 1
  %39 = load %struct.terminal*, %struct.terminal** %terminal18, align 8
  %Vselection_alist19 = getelementptr inbounds %struct.terminal, %struct.terminal* %39, i32 0, i32 3
  %40 = load i64, i64* %Vselection_alist19, align 8
  %call20 = call i64 @Fcons(i64 %37, i64 %40)
  call void @tset_selection_alist(%struct.terminal* %36, i64 %call20)
  %41 = load i64, i64* %prev_value, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp22 = icmp eq i64 %41, %call21
  br i1 %cmp22, label %if.end.41, label %if.then

if.then:                                          ; preds = %cond.end.13
  %42 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal23 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %42, i32 0, i32 1
  %43 = load %struct.terminal*, %struct.terminal** %terminal23, align 8
  %Vselection_alist24 = getelementptr inbounds %struct.terminal, %struct.terminal* %43, i32 0, i32 3
  %44 = load i64, i64* %Vselection_alist24, align 8
  store i64 %44, i64* %rest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %45 = load i64, i64* %rest, align 8
  %and = and i64 %45, 7
  %conv = trunc i64 %and to i32
  %cmp25 = icmp eq i32 %conv, 3
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i64, i64* %prev_value, align 8
  %47 = load i64, i64* %rest, align 8
  %sub27 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub27 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %50 = load i64, i64* %cdr, align 8
  %call28 = call i64 @Fcar(i64 %50)
  %cmp29 = icmp eq i64 %46, %call28
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %for.body
  %51 = load i64, i64* %rest, align 8
  %52 = load i64, i64* %rest, align 8
  %sub32 = sub nsw i64 %52, 3
  %53 = inttoptr i64 %sub32 to i8*
  %54 = bitcast i8* %53 to %struct.Lisp_Cons*
  %u33 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %54, i32 0, i32 1
  %cdr34 = bitcast %union.anon.11* %u33 to i64*
  %55 = load i64, i64* %cdr34, align 8
  %sub35 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub35 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %u36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 1
  %cdr37 = bitcast %union.anon.11* %u36 to i64*
  %58 = load i64, i64* %cdr37, align 8
  call void @XSETCDR(i64 %51, i64 %58)
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %59 = load i64, i64* %rest, align 8
  %sub38 = sub nsw i64 %59, 3
  %60 = inttoptr i64 %sub38 to i8*
  %61 = bitcast i8* %60 to %struct.Lisp_Cons*
  %u39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %61, i32 0, i32 1
  %cdr40 = bitcast %union.anon.11* %u39 to i64*
  %62 = load i64, i64* %cdr40, align 8
  store i64 %62, i64* %rest, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.31, %for.cond
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %cond.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fx_get_selection_internal(i64 %selection_symbol, i64 %target_type, i64 %time_stamp, i64 %terminal) #0 {
entry:
  %retval = alloca i64, align 8
  %selection_symbol.addr = alloca i64, align 8
  %target_type.addr = alloca i64, align 8
  %time_stamp.addr = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %frame = alloca i64, align 8
  store i64 %selection_symbol, i64* %selection_symbol.addr, align 8
  store i64 %target_type, i64* %target_type.addr, align 8
  store i64 %time_stamp, i64* %time_stamp.addr, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %val, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call1 = call %struct.frame* @frame_for_x_selection(i64 %0)
  store %struct.frame* %call1, %struct.frame** %f, align 8
  %1 = load i64, i64* %selection_symbol.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 897)
  %2 = load i64, i64* %selection_symbol.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call3, i64 %2) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %target_type.addr, align 8
  %and4 = and i64 %5, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.end
  %call10 = call i64 @builtin_lisp_symbol(i32 897)
  %6 = load i64, i64* %target_type.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call10, i64 %6) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %8, %cond.true.8
  %9 = load i64, i64* %target_type.addr, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 145)
  %cmp13 = icmp eq i64 %9, %call12
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.11
  call void (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end.11
  %10 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool = icmp ne %struct.frame* %10, null
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

if.end.16:                                        ; preds = %if.end
  %11 = load i64, i64* %selection_symbol.addr, align 8
  %12 = load i64, i64* %target_type.addr, align 8
  %13 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %14 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %14, i32 0, i32 44
  %15 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %call17 = call i64 @x_get_local_selection(i64 %11, i64 %12, i1 zeroext true, %struct.x_display_info* %15)
  store i64 %call17, i64* %val, align 8
  %16 = load i64, i64* %val, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %16, %call18
  br i1 %cmp19, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.16
  %17 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal21 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 61
  %18 = load %struct.terminal*, %struct.terminal** %terminal21, align 8
  %cmp22 = icmp ne %struct.terminal* %18, null
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true
  %19 = load %struct.frame*, %struct.frame** %f, align 8
  %20 = bitcast %struct.frame* %19 to i8*
  %call25 = call i64 @make_lisp_ptr(i8* %20, i32 5)
  store i64 %call25, i64* %frame, align 8
  %21 = load i64, i64* %selection_symbol.addr, align 8
  %22 = load i64, i64* %target_type.addr, align 8
  %23 = load i64, i64* %time_stamp.addr, align 8
  %24 = load i64, i64* %frame, align 8
  %call26 = call i64 @x_get_foreign_selection(i64 %21, i64 %22, i64 %23, i64 %24)
  store i64 %call26, i64* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %if.end.16
  %25 = load i64, i64* %val, align 8
  %and28 = and i64 %25, 7
  %conv29 = trunc i64 %and28 to i32
  %cmp30 = icmp eq i32 %conv29, 3
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.54

land.lhs.true.32:                                 ; preds = %if.end.27
  %26 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car, align 8
  %and33 = and i64 %29, 7
  %conv34 = trunc i64 %and33 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.54

if.then.37:                                       ; preds = %land.lhs.true.32
  %30 = load i64, i64* %val, align 8
  %sub38 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub38 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %33 = load i64, i64* %cdr, align 8
  store i64 %33, i64* %val, align 8
  %34 = load i64, i64* %val, align 8
  %and39 = and i64 %34, 7
  %conv40 = trunc i64 %and39 to i32
  %cmp41 = icmp eq i32 %conv40, 3
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.53

land.lhs.true.43:                                 ; preds = %if.then.37
  %35 = load i64, i64* %val, align 8
  %sub44 = sub nsw i64 %35, 3
  %36 = inttoptr i64 %sub44 to i8*
  %37 = bitcast i8* %36 to %struct.Lisp_Cons*
  %u45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %37, i32 0, i32 1
  %cdr46 = bitcast %union.anon.11* %u45 to i64*
  %38 = load i64, i64* %cdr46, align 8
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %38, %call47
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %land.lhs.true.43
  %39 = load i64, i64* %val, align 8
  %sub51 = sub nsw i64 %39, 3
  %40 = inttoptr i64 %sub51 to i8*
  %41 = bitcast i8* %40 to %struct.Lisp_Cons*
  %car52 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %41, i32 0, i32 0
  %42 = load i64, i64* %car52, align 8
  store i64 %42, i64* %val, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %land.lhs.true.43, %if.then.37
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.32, %if.end.27
  %43 = load i64, i64* %val, align 8
  %call55 = call i64 @clean_local_selection_data(i64 %43)
  store i64 %call55, i64* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.24
  %44 = load i64, i64* %retval
  ret i64 %44
}

; Function Attrs: nounwind uwtable
define internal %struct.frame* @frame_for_x_selection(i64 %object) #0 {
entry:
  %retval = alloca %struct.frame*, align 8
  %object.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %frame = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %t = alloca %struct.terminal*, align 8
  store i64 %object, i64* %object.addr, align 8
  %0 = load i64, i64* %object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @selected_frame, align 8
  %sub = sub nsw i64 %1, 5
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.frame*
  store %struct.frame* %3, %struct.frame** %f, align 8
  %4 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 26
  %5 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %5, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp1 = icmp eq i32 %bf.cast, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %6, i32 0, i32 61
  %7 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp2 = icmp ne %struct.terminal* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  store %struct.frame* %8, %struct.frame** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %9 = load i64, i64* @Vframe_list, align 8
  store i64 %9, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %tail, align 8
  %and = and i64 %10, 7
  %conv = trunc i64 %and to i32
  %cmp4 = icmp eq i32 %conv, 3
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i64, i64* %tail, align 8
  %sub6 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub6 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  store i64 %14, i64* %frame, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load i64, i64* %frame, align 8
  %sub7 = sub nsw i64 %16, 5
  %17 = inttoptr i64 %sub7 to i8*
  %18 = bitcast i8* %17 to %struct.frame*
  store %struct.frame* %18, %struct.frame** %f, align 8
  %19 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method8 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 26
  %20 = bitcast i48* %output_method8 to i64*
  %bf.load9 = load i64, i64* %20, align 8
  %bf.lshr10 = lshr i64 %bf.load9, 23
  %bf.clear11 = and i64 %bf.lshr10, 7
  %bf.cast12 = trunc i64 %bf.clear11 to i32
  %cmp13 = icmp eq i32 %bf.cast12, 2
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %for.body
  %21 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal16 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 61
  %22 = load %struct.terminal*, %struct.terminal** %terminal16, align 8
  %cmp17 = icmp ne %struct.terminal* %22, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.15
  %23 = load %struct.frame*, %struct.frame** %f, align 8
  store %struct.frame* %23, %struct.frame** %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %24 = load i64, i64* %tail, align 8
  %sub21 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub21 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %27 = load i64, i64* %cdr, align 8
  store i64 %27, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.73

if.else:                                          ; preds = %entry
  %28 = load i64, i64* %object.addr, align 8
  %call22 = call zeroext i1 @TERMINALP(i64 %28)
  br i1 %call22, label %if.then.23, label %if.else.54

if.then.23:                                       ; preds = %if.else
  %29 = load i64, i64* %object.addr, align 8
  %call24 = call %struct.terminal* @decode_live_terminal(i64 %29)
  store %struct.terminal* %call24, %struct.terminal** %t, align 8
  %30 = load %struct.terminal*, %struct.terminal** %t, align 8
  %type = getelementptr inbounds %struct.terminal, %struct.terminal* %30, i32 0, i32 8
  %31 = load i32, i32* %type, align 4
  %cmp25 = icmp eq i32 %31, 2
  br i1 %cmp25, label %if.then.27, label %if.end.53

if.then.27:                                       ; preds = %if.then.23
  %32 = load i64, i64* @Vframe_list, align 8
  store i64 %32, i64* %tail, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.48, %if.then.27
  %33 = load i64, i64* %tail, align 8
  %and29 = and i64 %33, 7
  %conv30 = trunc i64 %and29 to i32
  %cmp31 = icmp eq i32 %conv30, 3
  br i1 %cmp31, label %land.rhs.33, label %land.end.36

land.rhs.33:                                      ; preds = %for.cond.28
  %34 = load i64, i64* %tail, align 8
  %sub34 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub34 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car35, align 8
  store i64 %37, i64* %frame, align 8
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.33, %for.cond.28
  %38 = phi i1 [ false, %for.cond.28 ], [ true, %land.rhs.33 ]
  br i1 %38, label %for.body.37, label %for.end.52

for.body.37:                                      ; preds = %land.end.36
  %39 = load i64, i64* %frame, align 8
  %sub38 = sub nsw i64 %39, 5
  %40 = inttoptr i64 %sub38 to i8*
  %41 = bitcast i8* %40 to %struct.frame*
  store %struct.frame* %41, %struct.frame** %f, align 8
  %42 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal39 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 61
  %43 = load %struct.terminal*, %struct.terminal** %terminal39, align 8
  %cmp40 = icmp ne %struct.terminal* %43, null
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %for.body.37
  %44 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal43 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 61
  %45 = load %struct.terminal*, %struct.terminal** %terminal43, align 8
  %46 = load %struct.terminal*, %struct.terminal** %t, align 8
  %cmp44 = icmp eq %struct.terminal* %45, %46
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.42
  %47 = load %struct.frame*, %struct.frame** %f, align 8
  store %struct.frame* %47, %struct.frame** %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.42, %for.body.37
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %48 = load i64, i64* %tail, align 8
  %sub49 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub49 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u50 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr51 = bitcast %union.anon.11* %u50 to i64*
  %51 = load i64, i64* %cdr51, align 8
  store i64 %51, i64* %tail, align 8
  br label %for.cond.28

for.end.52:                                       ; preds = %land.end.36
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %if.then.23
  br label %if.end.72

if.else.54:                                       ; preds = %if.else
  %52 = load i64, i64* %object.addr, align 8
  %call55 = call zeroext i1 @FRAMEP(i64 %52)
  br i1 %call55, label %if.then.56, label %if.end.71

if.then.56:                                       ; preds = %if.else.54
  %53 = load i64, i64* %object.addr, align 8
  %sub57 = sub nsw i64 %53, 5
  %54 = inttoptr i64 %sub57 to i8*
  %55 = bitcast i8* %54 to %struct.frame*
  store %struct.frame* %55, %struct.frame** %f, align 8
  %56 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method58 = getelementptr inbounds %struct.frame, %struct.frame* %56, i32 0, i32 26
  %57 = bitcast i48* %output_method58 to i64*
  %bf.load59 = load i64, i64* %57, align 8
  %bf.lshr60 = lshr i64 %bf.load59, 23
  %bf.clear61 = and i64 %bf.lshr60, 7
  %bf.cast62 = trunc i64 %bf.clear61 to i32
  %cmp63 = icmp eq i32 %bf.cast62, 2
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.70

land.lhs.true.65:                                 ; preds = %if.then.56
  %58 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal66 = getelementptr inbounds %struct.frame, %struct.frame* %58, i32 0, i32 61
  %59 = load %struct.terminal*, %struct.terminal** %terminal66, align 8
  %cmp67 = icmp ne %struct.terminal* %59, null
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.65
  %60 = load %struct.frame*, %struct.frame** %f, align 8
  store %struct.frame* %60, %struct.frame** %retval
  br label %return

if.end.70:                                        ; preds = %land.lhs.true.65, %if.then.56
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.else.54
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.53
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %for.end
  store %struct.frame* null, %struct.frame** %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.69, %if.then.46, %if.then.19, %if.then.3
  %61 = load %struct.frame*, %struct.frame** %retval
  ret %struct.frame* %61
}

; Function Attrs: nounwind uwtable
define internal i64 @x_get_local_selection(i64 %selection_symbol, i64 %target_type, i1 zeroext %local_request, %struct.x_display_info* %dpyinfo) #0 {
entry:
  %retval = alloca i64, align 8
  %selection_symbol.addr = alloca i64, align 8
  %target_type.addr = alloca i64, align 8
  %local_request.addr = alloca i8, align 1
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %local_value = alloca i64, align 8
  %handler_fn = alloca i64, align 8
  %value = alloca i64, align 8
  %check = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %selection_symbol, i64* %selection_symbol.addr, align 8
  store i64 %target_type, i64* %target_type.addr, align 8
  %frombool = zext i1 %local_request to i8
  store i8 %frombool, i8* %local_request.addr, align 1
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load i64, i64* %selection_symbol.addr, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 1
  %2 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %2, i32 0, i32 3
  %3 = load i64, i64* %Vselection_alist, align 8
  %call = call i64 @assq_no_quit(i64 %0, i64 %3)
  store i64 %call, i64* %local_value, align 8
  %4 = load i64, i64* %local_value, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %4, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %target_type.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 153)
  %cmp4 = icmp eq i64 %5, %call3
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %handler_fn, align 8
  %6 = load i64, i64* %local_value, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %sub7 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub7 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %u8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 1
  %cdr9 = bitcast %union.anon.11* %u8 to i64*
  %12 = load i64, i64* %cdr9, align 8
  %sub10 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub10 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car, align 8
  store i64 %15, i64* %value, align 8
  br label %if.end.39

if.else:                                          ; preds = %if.end
  %call11 = call i64 @SPECPDL_INDEX()
  store i64 %call11, i64* %count, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 546)
  %call13 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call12, i64 %call13)
  %16 = load i64, i64* %target_type.addr, align 8
  %and = and i64 %16, 7
  %conv = trunc i64 %and to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call16 = call i64 @builtin_lisp_symbol(i32 897)
  %17 = load i64, i64* %target_type.addr, align 8
  %18 = call i64 @wrong_type_argument(i64 %call16, i64 %17) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %19, %cond.true
  %20 = load i64, i64* %target_type.addr, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 265), align 8
  %call17 = call i64 @Fassq(i64 %20, i64 %21)
  %call18 = call i64 @Fcdr(i64 %call17)
  store i64 %call18, i64* %handler_fn, align 8
  %22 = load i64, i64* %handler_fn, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %22, %call19
  br i1 %cmp20, label %if.else.34, label %if.then.22

if.then.22:                                       ; preds = %cond.end
  %23 = load i64, i64* %handler_fn, align 8
  %24 = load i64, i64* %selection_symbol.addr, align 8
  %25 = load i8, i8* %local_request.addr, align 1
  %tobool = trunc i8 %25 to i1
  br i1 %tobool, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %if.then.22
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.27

cond.false.26:                                    ; preds = %if.then.22
  %26 = load i64, i64* %target_type.addr, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.24
  %cond = phi i64 [ %call25, %cond.true.24 ], [ %26, %cond.false.26 ]
  %27 = load i64, i64* %local_value, align 8
  %sub28 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub28 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr30 = bitcast %union.anon.11* %u29 to i64*
  %30 = load i64, i64* %cdr30, align 8
  %sub31 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub31 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %car32 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 0
  %33 = load i64, i64* %car32, align 8
  %call33 = call i64 @call3(i64 %23, i64 %24, i64 %cond, i64 %33)
  store i64 %call33, i64* %value, align 8
  br label %if.end.36

if.else.34:                                       ; preds = %cond.end
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %value, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %cond.end.27
  %34 = load i64, i64* %count, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %call38 = call i64 @unbind_to(i64 %34, i64 %call37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %if.then.5
  %35 = load i64, i64* %value, align 8
  store i64 %35, i64* %check, align 8
  %36 = load i64, i64* %value, align 8
  %and40 = and i64 %36, 7
  %conv41 = trunc i64 %and40 to i32
  %cmp42 = icmp eq i32 %conv41, 3
  br i1 %cmp42, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.39
  %37 = load i64, i64* %value, align 8
  %sub44 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub44 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %car45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 0
  %40 = load i64, i64* %car45, align 8
  %and46 = and i64 %40, 7
  %conv47 = trunc i64 %and46 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %land.lhs.true
  %41 = load i64, i64* %value, align 8
  %sub51 = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub51 to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %u52 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 1
  %cdr53 = bitcast %union.anon.11* %u52 to i64*
  %44 = load i64, i64* %cdr53, align 8
  store i64 %44, i64* %check, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %land.lhs.true, %if.end.39
  %45 = load i64, i64* %check, align 8
  %call55 = call zeroext i1 @STRINGP(i64 %45)
  br i1 %call55, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %46 = load i64, i64* %check, align 8
  %call57 = call zeroext i1 @VECTORP(i64 %46)
  br i1 %call57, label %if.then.74, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false
  %47 = load i64, i64* %check, align 8
  %and60 = and i64 %47, 7
  %conv61 = trunc i64 %and60 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %if.then.74, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.59
  %48 = load i64, i64* %check, align 8
  %and65 = and i64 %48, 7
  %conv66 = trunc i64 %and65 to i32
  %and67 = and i32 %conv66, -5
  %cmp68 = icmp eq i32 %and67, 2
  br i1 %cmp68, label %if.then.74, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.64
  %49 = load i64, i64* %value, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %49, %call71
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %lor.lhs.false.70, %lor.lhs.false.64, %lor.lhs.false.59, %lor.lhs.false, %if.end.54
  %50 = load i64, i64* %value, align 8
  store i64 %50, i64* %retval
  br label %return

if.else.75:                                       ; preds = %lor.lhs.false.70
  %51 = load i64, i64* %check, align 8
  %and76 = and i64 %51, 7
  %conv77 = trunc i64 %and76 to i32
  %cmp78 = icmp eq i32 %conv77, 3
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.127

land.lhs.true.80:                                 ; preds = %if.else.75
  %52 = load i64, i64* %check, align 8
  %sub81 = sub nsw i64 %52, 3
  %53 = inttoptr i64 %sub81 to i8*
  %54 = bitcast i8* %53 to %struct.Lisp_Cons*
  %car82 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %54, i32 0, i32 0
  %55 = load i64, i64* %car82, align 8
  %and83 = and i64 %55, 7
  %conv84 = trunc i64 %and83 to i32
  %and85 = and i32 %conv84, -5
  %cmp86 = icmp eq i32 %and85, 2
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.127

land.lhs.true.88:                                 ; preds = %land.lhs.true.80
  %56 = load i64, i64* %check, align 8
  %sub89 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub89 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %u90 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 1
  %cdr91 = bitcast %union.anon.11* %u90 to i64*
  %59 = load i64, i64* %cdr91, align 8
  %and92 = and i64 %59, 7
  %conv93 = trunc i64 %and92 to i32
  %and94 = and i32 %conv93, -5
  %cmp95 = icmp eq i32 %and94, 2
  br i1 %cmp95, label %if.then.126, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %land.lhs.true.88
  %60 = load i64, i64* %check, align 8
  %sub98 = sub nsw i64 %60, 3
  %61 = inttoptr i64 %sub98 to i8*
  %62 = bitcast i8* %61 to %struct.Lisp_Cons*
  %u99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %62, i32 0, i32 1
  %cdr100 = bitcast %union.anon.11* %u99 to i64*
  %63 = load i64, i64* %cdr100, align 8
  %and101 = and i64 %63, 7
  %conv102 = trunc i64 %and101 to i32
  %cmp103 = icmp eq i32 %conv102, 3
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.127

land.lhs.true.105:                                ; preds = %lor.lhs.false.97
  %64 = load i64, i64* %check, align 8
  %sub106 = sub nsw i64 %64, 3
  %65 = inttoptr i64 %sub106 to i8*
  %66 = bitcast i8* %65 to %struct.Lisp_Cons*
  %u107 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %66, i32 0, i32 1
  %cdr108 = bitcast %union.anon.11* %u107 to i64*
  %67 = load i64, i64* %cdr108, align 8
  %sub109 = sub nsw i64 %67, 3
  %68 = inttoptr i64 %sub109 to i8*
  %69 = bitcast i8* %68 to %struct.Lisp_Cons*
  %car110 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %69, i32 0, i32 0
  %70 = load i64, i64* %car110, align 8
  %and111 = and i64 %70, 7
  %conv112 = trunc i64 %and111 to i32
  %and113 = and i32 %conv112, -5
  %cmp114 = icmp eq i32 %and113, 2
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.127

land.lhs.true.116:                                ; preds = %land.lhs.true.105
  %71 = load i64, i64* %check, align 8
  %sub117 = sub nsw i64 %71, 3
  %72 = inttoptr i64 %sub117 to i8*
  %73 = bitcast i8* %72 to %struct.Lisp_Cons*
  %u118 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %73, i32 0, i32 1
  %cdr119 = bitcast %union.anon.11* %u118 to i64*
  %74 = load i64, i64* %cdr119, align 8
  %sub120 = sub nsw i64 %74, 3
  %75 = inttoptr i64 %sub120 to i8*
  %76 = bitcast i8* %75 to %struct.Lisp_Cons*
  %u121 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %76, i32 0, i32 1
  %cdr122 = bitcast %union.anon.11* %u121 to i64*
  %77 = load i64, i64* %cdr122, align 8
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp124 = icmp eq i64 %77, %call123
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true.116, %land.lhs.true.88
  %78 = load i64, i64* %value, align 8
  store i64 %78, i64* %retval
  br label %return

if.end.127:                                       ; preds = %land.lhs.true.116, %land.lhs.true.105, %lor.lhs.false.97, %land.lhs.true.80, %if.else.75
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  %79 = load i64, i64* %handler_fn, align 8
  %80 = load i64, i64* %value, align 8
  %call129 = call i64 @list2(i64 %79, i64 %80)
  call void @signal_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.29, i32 0, i32 0), i64 %call129) #5
  unreachable

return:                                           ; preds = %if.then.126, %if.then.74, %if.then
  %81 = load i64, i64* %retval
  ret i64 %81
}

; Function Attrs: nounwind uwtable
define internal i64 @x_get_foreign_selection(i64 %selection_symbol, i64 %target_type, i64 %time_stamp, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %selection_symbol.addr = alloca i64, align 8
  %target_type.addr = alloca i64, align 8
  %time_stamp.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %display = alloca %struct._XDisplay*, align 8
  %requestor_window = alloca i64, align 8
  %requestor_time = alloca i64, align 8
  %target_property = alloca i64, align 8
  %selection_atom = alloca i64, align 8
  %type_atom = alloca i64, align 8
  %timeout = alloca i64, align 8
  %secs = alloca i64, align 8
  %nsecs = alloca i32, align 4
  store i64 %selection_symbol, i64* %selection_symbol.addr, align 8
  store i64 %target_type, i64* %target_type.addr, align 8
  store i64 %time_stamp, i64* %time_stamp.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  store %struct.frame* %2, %struct.frame** %f, align 8
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %5, %struct.x_display_info** %dpyinfo, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 2
  %7 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %7, %struct._XDisplay** %display, align 8
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data2 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x3 = bitcast %union.output_data* %output_data2 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x3, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 9
  %10 = load i64, i64* %window_desc, align 8
  store i64 %10, i64* %requestor_window, align 8
  %11 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %last_user_time = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %11, i32 0, i32 79
  %12 = load i64, i64* %last_user_time, align 8
  store i64 %12, i64* %requestor_time, align 8
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_EMACS_TMP = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %13, i32 0, i32 54
  %14 = load i64, i64* %Xatom_EMACS_TMP, align 8
  store i64 %14, i64* %target_property, align 8
  %15 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %16 = load i64, i64* %selection_symbol.addr, align 8
  %call = call i64 @symbol_to_x_atom(%struct.x_display_info* %15, i64 %16)
  store i64 %call, i64* %selection_atom, align 8
  %17 = load i64, i64* %target_type.addr, align 8
  %and = and i64 %17, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %19 = load i64, i64* %target_type.addr, align 8
  %sub5 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub5 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car, align 8
  %call6 = call i64 @symbol_to_x_atom(%struct.x_display_info* %18, i64 %22)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %24 = load i64, i64* %target_type.addr, align 8
  %call7 = call i64 @symbol_to_x_atom(%struct.x_display_info* %23, i64 %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %call7, %cond.false ]
  store i64 %cond, i64* %type_atom, align 8
  %25 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 61
  %26 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp8 = icmp ne %struct.terminal* %26, null
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %27 = load i64, i64* %time_stamp.addr, align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %27, %call11
  br i1 %cmp12, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %28 = load i64, i64* %time_stamp.addr, align 8
  %call15 = call i64 @cons_to_unsigned(i64 %28, i64 -1)
  store i64 %call15, i64* %requestor_time, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  call void @block_input()
  %29 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_catch_errors(%struct._XDisplay* %29)
  %30 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %31 = load i64, i64* %selection_atom, align 8
  %32 = load i64, i64* %type_atom, align 8
  %33 = load i64, i64* %target_property, align 8
  %34 = load i64, i64* %requestor_window, align 8
  %35 = load i64, i64* %requestor_time, align 8
  %call17 = call i32 @XConvertSelection(%struct._XDisplay* %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35)
  %36 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_check_errors(%struct._XDisplay* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0))
  call void @x_uncatch_errors_after_check()
  %37 = load i64, i64* %requestor_window, align 8
  store i64 %37, i64* @reading_selection_window, align 8
  %38 = load i64, i64* %selection_atom, align 8
  store i64 %38, i64* @reading_which_selection, align 8
  %39 = load i64, i64* @reading_selection_reply, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %39, i64 %call18)
  call void @unblock_input()
  %40 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 419), align 8
  %cmp19 = icmp sgt i64 0, %40
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %if.end.16
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.16
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 419), align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i64 [ 0, %cond.true.21 ], [ %41, %cond.false.22 ]
  store i64 %cond24, i64* %timeout, align 8
  %42 = load i64, i64* %timeout, align 8
  %div = sdiv i64 %42, 1000
  store i64 %div, i64* %secs, align 8
  %43 = load i64, i64* %timeout, align 8
  %rem = srem i64 %43, 1000
  %mul = mul nsw i64 %rem, 1000000
  %conv25 = trunc i64 %mul to i32
  store i32 %conv25, i32* %nsecs, align 4
  %44 = load i64, i64* %secs, align 8
  %45 = load i32, i32* %nsecs, align 4
  %46 = load i64, i64* @reading_selection_reply, align 8
  %call26 = call i32 @wait_reading_process_output(i64 %44, i32 %45, i32 0, i1 zeroext false, i64 %46, %struct.Lisp_Process* null, i32 0)
  %47 = load i64, i64* @reading_selection_reply, align 8
  %sub27 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub27 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %car28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 0
  %50 = load i64, i64* %car28, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %50, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.end.23
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0)) #5
  unreachable

if.end.33:                                        ; preds = %cond.end.23
  %51 = load i64, i64* @reading_selection_reply, align 8
  %sub34 = sub nsw i64 %51, 3
  %52 = inttoptr i64 %sub34 to i8*
  %53 = bitcast i8* %52 to %struct.Lisp_Cons*
  %car35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %53, i32 0, i32 0
  %54 = load i64, i64* %car35, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 598)
  %cmp37 = icmp eq i64 %54, %call36
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.33
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call40, i64* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.33
  %55 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %56 = load i64, i64* %requestor_window, align 8
  %57 = load i64, i64* %target_property, align 8
  %58 = load i64, i64* %target_type.addr, align 8
  %59 = load i64, i64* %selection_atom, align 8
  %call42 = call i64 @x_get_window_property_as_lisp_data(%struct.x_display_info* %55, i64 %56, i64 %57, i64 %58, i64 %59)
  store i64 %call42, i64* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.39, %if.then
  %60 = load i64, i64* %retval
  ret i64 %60
}

; Function Attrs: nounwind uwtable
define internal i64 @clean_local_selection_data(i64 %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %copy = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %obj.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  %and2 = and i64 %4, 7
  %conv3 = trunc i64 %and2 to i32
  %and4 = and i32 %conv3, -5
  %cmp5 = icmp eq i32 %and4, 2
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %5 = load i64, i64* %obj.addr, align 8
  %sub8 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub8 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  %and9 = and i64 %8, 7
  %conv10 = trunc i64 %and9 to i32
  %cmp11 = icmp eq i32 %conv10, 3
  br i1 %cmp11, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %9 = load i64, i64* %obj.addr, align 8
  %sub14 = sub nsw i64 %9, 3
  %10 = inttoptr i64 %sub14 to i8*
  %11 = bitcast i8* %10 to %struct.Lisp_Cons*
  %u15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %11, i32 0, i32 1
  %cdr16 = bitcast %union.anon.11* %u15 to i64*
  %12 = load i64, i64* %cdr16, align 8
  %sub17 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub17 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car18 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car18, align 8
  %and19 = and i64 %15, 7
  %conv20 = trunc i64 %and19 to i32
  %and21 = and i32 %conv20, -5
  %cmp22 = icmp eq i32 %and21, 2
  br i1 %cmp22, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.13
  %16 = load i64, i64* %obj.addr, align 8
  %sub25 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub25 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr27 = bitcast %union.anon.11* %u26 to i64*
  %19 = load i64, i64* %cdr27, align 8
  %sub28 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub28 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 1
  %cdr30 = bitcast %union.anon.11* %u29 to i64*
  %22 = load i64, i64* %cdr30, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %22, %call
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.24
  %23 = load i64, i64* %obj.addr, align 8
  %sub33 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub33 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car34 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car34, align 8
  %27 = load i64, i64* %obj.addr, align 8
  %sub35 = sub nsw i64 %27, 3
  %28 = inttoptr i64 %sub35 to i8*
  %29 = bitcast i8* %28 to %struct.Lisp_Cons*
  %u36 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %29, i32 0, i32 1
  %cdr37 = bitcast %union.anon.11* %u36 to i64*
  %30 = load i64, i64* %cdr37, align 8
  %call38 = call i64 @Fcons(i64 %26, i64 %30)
  store i64 %call38, i64* %obj.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.24, %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true, %entry
  %31 = load i64, i64* %obj.addr, align 8
  %and39 = and i64 %31, 7
  %conv40 = trunc i64 %and39 to i32
  %cmp41 = icmp eq i32 %conv40, 3
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.82

land.lhs.true.43:                                 ; preds = %if.end
  %32 = load i64, i64* %obj.addr, align 8
  %sub44 = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub44 to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %car45 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 0
  %35 = load i64, i64* %car45, align 8
  %and46 = and i64 %35, 7
  %conv47 = trunc i64 %and46 to i32
  %and48 = and i32 %conv47, -5
  %cmp49 = icmp eq i32 %and48, 2
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.82

land.lhs.true.51:                                 ; preds = %land.lhs.true.43
  %36 = load i64, i64* %obj.addr, align 8
  %sub52 = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub52 to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %u53 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 1
  %cdr54 = bitcast %union.anon.11* %u53 to i64*
  %39 = load i64, i64* %cdr54, align 8
  %and55 = and i64 %39, 7
  %conv56 = trunc i64 %and55 to i32
  %and57 = and i32 %conv56, -5
  %cmp58 = icmp eq i32 %and57, 2
  br i1 %cmp58, label %if.then.60, label %if.end.82

if.then.60:                                       ; preds = %land.lhs.true.51
  %40 = load i64, i64* %obj.addr, align 8
  %sub61 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub61 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %car62 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 0
  %43 = load i64, i64* %car62, align 8
  %shr = ashr i64 %43, 2
  %cmp63 = icmp eq i64 %shr, 0
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.then.60
  %44 = load i64, i64* %obj.addr, align 8
  %sub66 = sub nsw i64 %44, 3
  %45 = inttoptr i64 %sub66 to i8*
  %46 = bitcast i8* %45 to %struct.Lisp_Cons*
  %u67 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %46, i32 0, i32 1
  %cdr68 = bitcast %union.anon.11* %u67 to i64*
  %47 = load i64, i64* %cdr68, align 8
  store i64 %47, i64* %retval
  br label %return

if.end.69:                                        ; preds = %if.then.60
  %48 = load i64, i64* %obj.addr, align 8
  %sub70 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub70 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %car71 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 0
  %51 = load i64, i64* %car71, align 8
  %shr72 = ashr i64 %51, 2
  %cmp73 = icmp eq i64 %shr72, -1
  br i1 %cmp73, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.end.69
  %52 = load i64, i64* %obj.addr, align 8
  %sub76 = sub nsw i64 %52, 3
  %53 = inttoptr i64 %sub76 to i8*
  %54 = bitcast i8* %53 to %struct.Lisp_Cons*
  %u77 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %54, i32 0, i32 1
  %cdr78 = bitcast %union.anon.11* %u77 to i64*
  %55 = load i64, i64* %cdr78, align 8
  %shr79 = ashr i64 %55, 2
  %sub80 = sub nsw i64 0, %shr79
  %shl = shl i64 %sub80, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.69
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.51, %land.lhs.true.43, %if.end
  %56 = load i64, i64* %obj.addr, align 8
  %call83 = call zeroext i1 @VECTORP(i64 %56)
  br i1 %call83, label %if.then.84, label %if.end.97

if.then.84:                                       ; preds = %if.end.82
  %57 = load i64, i64* %obj.addr, align 8
  %call85 = call i64 @ASIZE(i64 %57)
  store i64 %call85, i64* %size, align 8
  %58 = load i64, i64* %size, align 8
  %cmp86 = icmp eq i64 %58, 1
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.then.84
  %59 = load i64, i64* %obj.addr, align 8
  %call89 = call i64 @AREF(i64 %59, i64 0)
  %call90 = call i64 @clean_local_selection_data(i64 %call89)
  store i64 %call90, i64* %retval
  br label %return

if.end.91:                                        ; preds = %if.then.84
  %60 = load i64, i64* %size, align 8
  %call92 = call i64 @make_uninit_vector(i64 %60)
  store i64 %call92, i64* %copy, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.91
  %61 = load i64, i64* %i, align 8
  %62 = load i64, i64* %size, align 8
  %cmp93 = icmp slt i64 %61, %62
  br i1 %cmp93, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i64, i64* %copy, align 8
  %64 = load i64, i64* %i, align 8
  %65 = load i64, i64* %obj.addr, align 8
  %66 = load i64, i64* %i, align 8
  %call95 = call i64 @AREF(i64 %65, i64 %66)
  %call96 = call i64 @clean_local_selection_data(i64 %call95)
  call void @ASET(i64 %63, i64 %64, i64 %call96)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i64, i64* %i, align 8
  %inc = add nsw i64 %67, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i64, i64* %copy, align 8
  store i64 %68, i64* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.82
  %69 = load i64, i64* %obj.addr, align 8
  store i64 %69, i64* %retval
  br label %return

return:                                           ; preds = %if.end.97, %for.end, %if.then.88, %if.then.75, %if.then.65
  %70 = load i64, i64* %retval
  ret i64 %70
}

; Function Attrs: nounwind uwtable
define i64 @Fx_disown_selection_internal(i64 %selection, i64 %time_object, i64 %terminal) #0 {
entry:
  %retval = alloca i64, align 8
  %selection.addr = alloca i64, align 8
  %time_object.addr = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %timestamp = alloca i64, align 8
  %selection_atom = alloca i64, align 8
  %event = alloca %struct.selection_input_event, align 8
  %f = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %selection, i64* %selection.addr, align 8
  store i64 %time_object, i64* %time_object.addr, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.frame* @frame_for_x_selection(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool = icmp ne %struct.frame* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %3 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %3, i32 0, i32 44
  %4 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %4, %struct.x_display_info** %dpyinfo, align 8
  %5 = load i64, i64* %selection.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call3 = call i64 @builtin_lisp_symbol(i32 897)
  %6 = load i64, i64* %selection.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call3, i64 %6) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load i64, i64* %selection.addr, align 8
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal4 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 1
  %11 = load %struct.terminal*, %struct.terminal** %terminal4, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %11, i32 0, i32 3
  %12 = load i64, i64* %Vselection_alist, align 8
  %call5 = call i64 @assq_no_quit(i64 %9, i64 %12)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %cond.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

if.end.11:                                        ; preds = %cond.end
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %14 = load i64, i64* %selection.addr, align 8
  %call12 = call i64 @symbol_to_x_atom(%struct.x_display_info* %13, i64 %14)
  store i64 %call12, i64* %selection_atom, align 8
  call void @block_input()
  %15 = load i64, i64* %time_object.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %15, %call13
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.11
  %16 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %last_user_time = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %16, i32 0, i32 79
  %17 = load i64, i64* %last_user_time, align 8
  store i64 %17, i64* %timestamp, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end.11
  %18 = load i64, i64* %time_object.addr, align 8
  %call17 = call i64 @cons_to_unsigned(i64 %18, i64 -1)
  store i64 %call17, i64* %timestamp, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %19 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 2
  %20 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %21 = load i64, i64* %selection_atom, align 8
  %22 = load i64, i64* %timestamp, align 8
  %call19 = call i32 @XSetSelectionOwner(%struct._XDisplay* %20, i64 %21, i64 0, i64 %22)
  call void @unblock_input()
  %23 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %dpyinfo20 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %event, i32 0, i32 1
  store %struct.x_display_info* %23, %struct.x_display_info** %dpyinfo20, align 8
  %24 = load i64, i64* %selection_atom, align 8
  %selection21 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %event, i32 0, i32 3
  store i64 %24, i64* %selection21, align 8
  %25 = load i64, i64* %timestamp, align 8
  %time = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %event, i32 0, i32 6
  store i64 %25, i64* %time, align 8
  call void @x_handle_selection_clear(%struct.selection_input_event* %event)
  %call22 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call22, i64* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.9, %if.then
  %26 = load i64, i64* %retval
  ret i64 %26
}

declare i64 @assq_no_quit(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @symbol_to_x_atom(%struct.x_display_info* %dpyinfo, i64 %sym) #0 {
entry:
  %retval = alloca i64, align 8
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %sym.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i64 %sym, i64* %sym.addr, align 8
  %0 = load i64, i64* %sym.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sym.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 147)
  %cmp2 = icmp eq i64 %1, %call1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i64, i64* %sym.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 149)
  %cmp6 = icmp eq i64 %2, %call5
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i64 2, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %3 = load i64, i64* %sym.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 150)
  %cmp10 = icmp eq i64 %3, %call9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i64 31, i64* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %4 = load i64, i64* %sym.addr, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 144)
  %cmp14 = icmp eq i64 %4, %call13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i64 19, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %5 = load i64, i64* %sym.addr, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 1)
  %cmp18 = icmp eq i64 %5, %call17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i64 4, i64* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %6 = load i64, i64* %sym.addr, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 2)
  %cmp22 = icmp eq i64 %6, %call21
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_CLIPBOARD = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 46
  %8 = load i64, i64* %Xatom_CLIPBOARD, align 8
  store i64 %8, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %9 = load i64, i64* %sym.addr, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 153)
  %cmp26 = icmp eq i64 %9, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_TIMESTAMP = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 47
  %11 = load i64, i64* %Xatom_TIMESTAMP, align 8
  store i64 %11, i64* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %12 = load i64, i64* %sym.addr, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 152)
  %cmp30 = icmp eq i64 %12, %call29
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_TEXT = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %13, i32 0, i32 48
  %14 = load i64, i64* %Xatom_TEXT, align 8
  store i64 %14, i64* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %15 = load i64, i64* %sym.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 4)
  %cmp34 = icmp eq i64 %15, %call33
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %16 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_COMPOUND_TEXT = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %16, i32 0, i32 50
  %17 = load i64, i64* %Xatom_COMPOUND_TEXT, align 8
  store i64 %17, i64* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  %18 = load i64, i64* %sym.addr, align 8
  %call37 = call i64 @builtin_lisp_symbol(i32 154)
  %cmp38 = icmp eq i64 %18, %call37
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %19 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_UTF8_STRING = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 51
  %20 = load i64, i64* %Xatom_UTF8_STRING, align 8
  store i64 %20, i64* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %21 = load i64, i64* %sym.addr, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 140)
  %cmp42 = icmp eq i64 %21, %call41
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  %22 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_DELETE = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %22, i32 0, i32 49
  %23 = load i64, i64* %Xatom_DELETE, align 8
  store i64 %23, i64* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %24 = load i64, i64* %sym.addr, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 145)
  %cmp46 = icmp eq i64 %24, %call45
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  %25 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_MULTIPLE = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %25, i32 0, i32 52
  %26 = load i64, i64* %Xatom_MULTIPLE, align 8
  store i64 %26, i64* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %27 = load i64, i64* %sym.addr, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 143)
  %cmp50 = icmp eq i64 %27, %call49
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %28 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_INCR = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %28, i32 0, i32 53
  %29 = load i64, i64* %Xatom_INCR, align 8
  store i64 %29, i64* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  %30 = load i64, i64* %sym.addr, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 141)
  %cmp54 = icmp eq i64 %30, %call53
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  %31 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_EMACS_TMP = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %31, i32 0, i32 54
  %32 = load i64, i64* %Xatom_EMACS_TMP, align 8
  store i64 %32, i64* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  %33 = load i64, i64* %sym.addr, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 151)
  %cmp58 = icmp eq i64 %33, %call57
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  %34 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_TARGETS = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %34, i32 0, i32 55
  %35 = load i64, i64* %Xatom_TARGETS, align 8
  store i64 %35, i64* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.56
  %36 = load i64, i64* %sym.addr, align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 146)
  %cmp62 = icmp eq i64 %36, %call61
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  %37 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_NULL = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %37, i32 0, i32 56
  %38 = load i64, i64* %Xatom_NULL, align 8
  store i64 %38, i64* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  %39 = load i64, i64* %sym.addr, align 8
  %and = and i64 %39, 7
  %conv = trunc i64 %and to i32
  %cmp65 = icmp eq i32 %conv, 0
  br i1 %cmp65, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  call void @emacs_abort() #5
  unreachable

if.end.68:                                        ; preds = %if.end.64
  call void @block_input()
  %40 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %40, i32 0, i32 2
  %41 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %42 = load i64, i64* %sym.addr, align 8
  %call69 = call i64 @SYMBOL_NAME(i64 %42)
  %call70 = call i8* @SSDATA(i64 %call69)
  %call71 = call i64 @XInternAtom(%struct._XDisplay* %41, i8* %call70, i32 0)
  store i64 %call71, i64* %val, align 8
  call void @unblock_input()
  %43 = load i64, i64* %val, align 8
  store i64 %43, i64* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.63, %if.then.59, %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %44 = load i64, i64* %retval
  ret i64 %44
}

declare void @block_input() #1

declare i64 @cons_to_unsigned(i64, i64) #1

declare i32 @XSetSelectionOwner(%struct._XDisplay*, i64, i64, i64) #1

declare void @unblock_input() #1

; Function Attrs: nounwind uwtable
define i64 @Fx_selection_owner_p(i64 %selection, i64 %terminal) #0 {
entry:
  %retval = alloca i64, align 8
  %selection.addr = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  store i64 %selection, i64* %selection.addr, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.frame* @frame_for_x_selection(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load i64, i64* %selection.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 897)
  %2 = load i64, i64* %selection.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call2, i64 %2) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %selection.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %5, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call6 = call i64 @builtin_lisp_symbol(i32 147)
  store i64 %call6, i64* %selection.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i64, i64* %selection.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp8 = icmp eq i64 %6, %call7
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 149)
  store i64 %call11, i64* %selection.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %7 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool = icmp ne %struct.frame* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.12
  %8 = load i64, i64* %selection.addr, align 8
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %10 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %10, i32 0, i32 44
  %11 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %terminal13 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %11, i32 0, i32 1
  %12 = load %struct.terminal*, %struct.terminal** %terminal13, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %12, i32 0, i32 3
  %13 = load i64, i64* %Vselection_alist, align 8
  %call14 = call i64 @assq_no_quit(i64 %8, i64 %13)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %call14, %call15
  br i1 %cmp16, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  %call19 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call19, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.12
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.18
  %14 = load i64, i64* %retval
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define i64 @Fx_selection_exists_p(i64 %selection, i64 %terminal) #0 {
entry:
  %retval = alloca i64, align 8
  %selection.addr = alloca i64, align 8
  %terminal.addr = alloca i64, align 8
  %owner = alloca i64, align 8
  %atom = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %selection, i64* %selection.addr, align 8
  store i64 %terminal, i64* %terminal.addr, align 8
  %0 = load i64, i64* %terminal.addr, align 8
  %call = call %struct.frame* @frame_for_x_selection(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  %1 = load i64, i64* %selection.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 897)
  %2 = load i64, i64* %selection.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call2, i64 %2) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %selection.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %5, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call6 = call i64 @builtin_lisp_symbol(i32 147)
  store i64 %call6, i64* %selection.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i64, i64* %selection.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp8 = icmp eq i64 %6, %call7
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i64 @builtin_lisp_symbol(i32 149)
  store i64 %call11, i64* %selection.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %7 = load %struct.frame*, %struct.frame** %f, align 8
  %tobool = icmp ne %struct.frame* %7, null
  br i1 %tobool, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end.12
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call14, i64* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %10, %struct.x_display_info** %dpyinfo, align 8
  %11 = load i64, i64* %selection.addr, align 8
  %12 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal16 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %12, i32 0, i32 1
  %13 = load %struct.terminal*, %struct.terminal** %terminal16, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %13, i32 0, i32 3
  %14 = load i64, i64* %Vselection_alist, align 8
  %call17 = call i64 @assq_no_quit(i64 %11, i64 %14)
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %call17, %call18
  br i1 %cmp19, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.end.15
  %call22 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %15 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %16 = load i64, i64* %selection.addr, align 8
  %call24 = call i64 @symbol_to_x_atom(%struct.x_display_info* %15, i64 %16)
  store i64 %call24, i64* %atom, align 8
  %17 = load i64, i64* %atom, align 8
  %cmp25 = icmp eq i64 %17, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call28, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  call void @block_input()
  %18 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %18, i32 0, i32 2
  %19 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %20 = load i64, i64* %atom, align 8
  %call30 = call i64 @XGetSelectionOwner(%struct._XDisplay* %19, i64 %20)
  store i64 %call30, i64* %owner, align 8
  call void @unblock_input()
  %21 = load i64, i64* %owner, align 8
  %tobool31 = icmp ne i64 %21, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %if.end.29
  %call33 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.36

cond.false.34:                                    ; preds = %if.end.29
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.32
  %cond = phi i64 [ %call33, %cond.true.32 ], [ %call35, %cond.false.34 ]
  store i64 %cond, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.36, %if.then.27, %if.then.21, %if.then.13
  %22 = load i64, i64* %retval
  ret i64 %22
}

declare i64 @XGetSelectionOwner(%struct._XDisplay*, i64) #1

; Function Attrs: nounwind uwtable
define void @x_clipboard_manager_save_frame(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %local_selection = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 358), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %frame.addr, align 8
  %call1 = call zeroext i1 @FRAMEP(i64 %1)
  br i1 %call1, label %land.lhs.true.2, label %if.end.26

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %2, 5
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.frame*
  store %struct.frame* %4, %struct.frame** %f, align 8
  %5 = load %struct.frame*, %struct.frame** %f, align 8
  %output_method = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 26
  %6 = bitcast i48* %output_method to i64*
  %bf.load = load i64, i64* %6, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 7
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp3 = icmp eq i32 %bf.cast, 2
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.26

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %7 = load %struct.frame*, %struct.frame** %f, align 8
  %terminal = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 61
  %8 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %cmp5 = icmp ne %struct.terminal* %8, null
  br i1 %cmp5, label %if.then, label %if.end.26

if.then:                                          ; preds = %land.lhs.true.4
  %9 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %10 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %10, i32 0, i32 44
  %11 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %11, %struct.x_display_info** %dpyinfo, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 2)
  %12 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal7 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %12, i32 0, i32 1
  %13 = load %struct.terminal*, %struct.terminal** %terminal7, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %13, i32 0, i32 3
  %14 = load i64, i64* %Vselection_alist, align 8
  %call8 = call i64 @assq_no_quit(i64 %call6, i64 %14)
  store i64 %call8, i64* %local_selection, align 8
  %15 = load i64, i64* %local_selection, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %15, %call9
  br i1 %cmp10, label %if.end, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.then
  %16 = load i64, i64* %frame.addr, align 8
  %17 = load i64, i64* %local_selection, align 8
  %sub12 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub12 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %20 = load i64, i64* %cdr, align 8
  %sub13 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub13 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr15 = bitcast %union.anon.11* %u14 to i64*
  %23 = load i64, i64* %cdr15, align 8
  %sub16 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub16 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %u17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 1
  %cdr18 = bitcast %union.anon.11* %u17 to i64*
  %26 = load i64, i64* %cdr18, align 8
  %sub19 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub19 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car, align 8
  %cmp20 = icmp eq i64 %16, %29
  br i1 %cmp20, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true.11
  %30 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %30, i32 0, i32 2
  %31 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %32 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_CLIPBOARD_MANAGER = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %32, i32 0, i32 59
  %33 = load i64, i64* %Xatom_CLIPBOARD_MANAGER, align 8
  %call22 = call i64 @XGetSelectionOwner(%struct._XDisplay* %31, i64 %33)
  %tobool = icmp ne i64 %call22, 0
  br i1 %tobool, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true.21
  %34 = load i64, i64* %frame.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 901)
  %call25 = call i64 @internal_condition_case_1(i64 (i64)* @x_clipboard_manager_save, i64 %34, i64 %call24, i64 (i64)* @x_clipboard_manager_error_1)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %land.lhs.true.21, %land.lhs.true.11, %if.then
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare zeroext i1 @FRAMEP(i64) #1

declare i64 @internal_condition_case_1(i64 (i64)*, i64, i64, i64 (i64)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @x_clipboard_manager_save(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %data = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %sub = sub nsw i64 %0, 5
  %1 = inttoptr i64 %sub to i8*
  %2 = bitcast i8* %1 to %struct.frame*
  store %struct.frame* %2, %struct.frame** %f, align 8
  %3 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %3, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %4 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %4, i32 0, i32 44
  %5 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %5, %struct.x_display_info** %dpyinfo, align 8
  %6 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_UTF8_STRING = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %6, i32 0, i32 51
  %7 = load i64, i64* %Xatom_UTF8_STRING, align 8
  store i64 %7, i64* %data, align 8
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data1 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x2 = bitcast %union.output_data* %output_data1 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x2, align 8
  %display_info3 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info3, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 2
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %12 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data4 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x5 = bitcast %union.output_data* %output_data4 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x5, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 9
  %14 = load i64, i64* %window_desc, align 8
  %15 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_EMACS_TMP = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %15, i32 0, i32 54
  %16 = load i64, i64* %Xatom_EMACS_TMP, align 8
  %17 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_ATOM = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %17, i32 0, i32 57
  %18 = load i64, i64* %Xatom_ATOM, align 8
  %19 = bitcast i64* %data to i8*
  %call = call i32 @XChangeProperty(%struct._XDisplay* %11, i64 %14, i64 %16, i64 %18, i32 32, i32 0, i8* %19, i32 1)
  %call6 = call i64 @builtin_lisp_symbol(i32 3)
  %call7 = call i64 @builtin_lisp_symbol(i32 148)
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %20 = load i64, i64* %frame.addr, align 8
  %call9 = call i64 @x_get_foreign_selection(i64 %call6, i64 %call7, i64 %call8, i64 %20)
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call10
}

; Function Attrs: nounwind uwtable
define internal i64 @x_clipboard_manager_error_1(i64 %err) #0 {
entry:
  %err.addr = alloca i64, align 8
  %format = alloca i64, align 8
  %.compoundliteral = alloca %union.Aligned_String, align 8
  %varname = alloca i64, align 8
  %.compoundliteral2 = alloca %union.Aligned_String, align 8
  %.compoundliteral10 = alloca [3 x i64], align 8
  store i64 %err, i64* %err.addr, align 8
  %s = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 0
  store i64 71, i64* %size, align 8
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  %intervals = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals, align 8
  %data = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s, i32 0, i32 3
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.32, i32 0, i32 0), i8** %data, align 8
  %s1 = bitcast %union.Aligned_String* %.compoundliteral to %struct.Lisp_String*
  %0 = bitcast %struct.Lisp_String* %s1 to i8*
  %call = call i64 @make_lisp_ptr(i8* %0, i32 4)
  store i64 %call, i64* %format, align 8
  %s3 = bitcast %union.Aligned_String* %.compoundliteral2 to %struct.Lisp_String*
  %size4 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 0
  store i64 33, i64* %size4, align 8
  %size_byte5 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 1
  store i64 -1, i64* %size_byte5, align 8
  %intervals6 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 2
  store %struct.interval* null, %struct.interval** %intervals6, align 8
  %data7 = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %s3, i32 0, i32 3
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i8** %data7, align 8
  %s8 = bitcast %union.Aligned_String* %.compoundliteral2 to %struct.Lisp_String*
  %1 = bitcast %struct.Lisp_String* %s8 to i8*
  %call9 = call i64 @make_lisp_ptr(i8* %1, i32 4)
  store i64 %call9, i64* %varname, align 8
  %arrayinit.begin = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral10, i64 0, i64 0
  %2 = load i64, i64* %format, align 8
  store i64 %2, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %3 = load i64, i64* %err.addr, align 8
  %call11 = call i64 @CDR(i64 %3)
  %call12 = call i64 @CAR(i64 %call11)
  store i64 %call12, i64* %arrayinit.element
  %arrayinit.element13 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %4 = load i64, i64* %varname, align 8
  store i64 %4, i64* %arrayinit.element13
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %.compoundliteral10, i32 0, i32 0
  %call14 = call i64 @Fmessage(i64 3, i64* %arraydecay)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call15
}

; Function Attrs: nounwind uwtable
define void @x_clipboard_manager_save_all() #0 {
entry:
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %local_selection = alloca i64, align 8
  %local_frame = alloca i64, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 358), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.x_display_info*, %struct.x_display_info** @x_display_list, align 8
  store %struct.x_display_info* %1, %struct.x_display_info** %dpyinfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %tobool = icmp ne %struct.x_display_info* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i64 @builtin_lisp_symbol(i32 2)
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %terminal = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 1
  %4 = load %struct.terminal*, %struct.terminal** %terminal, align 8
  %Vselection_alist = getelementptr inbounds %struct.terminal, %struct.terminal* %4, i32 0, i32 3
  %5 = load i64, i64* %Vselection_alist, align 8
  %call2 = call i64 @assq_no_quit(i64 %call1, i64 %5)
  store i64 %call2, i64* %local_selection, align 8
  %6 = load i64, i64* %local_selection, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %6, %call3
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 2
  %8 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %9 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_CLIPBOARD_MANAGER = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 59
  %10 = load i64, i64* %Xatom_CLIPBOARD_MANAGER, align 8
  %call5 = call i64 @XGetSelectionOwner(%struct._XDisplay* %8, i64 %10)
  %tobool6 = icmp ne i64 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.8:                                         ; preds = %lor.lhs.false
  %11 = load i64, i64* %local_selection, align 8
  %sub = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %14 = load i64, i64* %cdr, align 8
  %sub9 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub9 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr11 = bitcast %union.anon.11* %u10 to i64*
  %17 = load i64, i64* %cdr11, align 8
  %sub12 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub12 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u13 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr14 = bitcast %union.anon.11* %u13 to i64*
  %20 = load i64, i64* %cdr14, align 8
  %sub15 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub15 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car, align 8
  store i64 %23, i64* %local_frame, align 8
  %24 = load i64, i64* %local_frame, align 8
  %sub16 = sub nsw i64 %24, 5
  %25 = inttoptr i64 %sub16 to i8*
  %26 = bitcast i8* %25 to %struct.frame*
  %terminal17 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 61
  %27 = load %struct.terminal*, %struct.terminal** %terminal17, align 8
  %cmp18 = icmp ne %struct.terminal* %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.8
  call void (i8*, ...) @message(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  %28 = load i64, i64* %local_frame, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 901)
  %call21 = call i64 @internal_condition_case_1(i64 (i64)* @x_clipboard_manager_save, i64 %28, i64 %call20, i64 (i64)* @x_clipboard_manager_error_2)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.22, %if.then.7
  %29 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %next = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %29, i32 0, i32 0
  %30 = load %struct.x_display_info*, %struct.x_display_info** %next, align 8
  store %struct.x_display_info* %30, %struct.x_display_info** %dpyinfo, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @message(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @x_clipboard_manager_error_2(i64 %err) #0 {
entry:
  %err.addr = alloca i64, align 8
  store i64 %err, i64* %err.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0))
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i32 @x_check_property_data(i64 %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i64, align 8
  %iter = alloca i64, align 8
  %size = alloca i32, align 4
  %o = alloca i64, align 8
  store i64 %data, i64* %data.addr, align 8
  store i32 0, i32* %size, align 4
  %0 = load i64, i64* %data.addr, align 8
  store i64 %0, i64* %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %iter, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %iter, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  store i64 %5, i64* %o, align 8
  %6 = load i64, i64* %o, align 8
  %call = call zeroext i1 @NUMBERP(i64 %6)
  br i1 %call, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64, i64* %o, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call2, label %if.else, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load i64, i64* %o, align 8
  %and4 = and i64 %8, 7
  %conv5 = trunc i64 %and4 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %for.body
  %9 = load i64, i64* %o, align 8
  %and8 = and i64 %9, 7
  %conv9 = trunc i64 %and8 to i32
  %cmp10 = icmp eq i32 %conv9, 3
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %if.else
  %10 = load i64, i64* %o, align 8
  %sub13 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub13 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %car14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 0
  %13 = load i64, i64* %car14, align 8
  %call15 = call zeroext i1 @NUMBERP(i64 %13)
  br i1 %call15, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %land.lhs.true.12
  %14 = load i64, i64* %o, align 8
  %sub16 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub16 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %17 = load i64, i64* %cdr, align 8
  %call17 = call zeroext i1 @NUMBERP(i64 %17)
  br i1 %call17, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false, %land.lhs.true.12
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end
  %18 = load i32, i32* %size, align 4
  %cmp20 = icmp eq i32 %18, 2147483647
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %19 = load i32, i32* %size, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %size, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %20 = load i64, i64* %iter, align 8
  %sub24 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub24 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u25 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr26 = bitcast %union.anon.11* %u25 to i64*
  %23 = load i64, i64* %cdr26, align 8
  store i64 %23, i64* %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %size, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.22, %if.then.18, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare zeroext i1 @NUMBERP(i64) #1

declare zeroext i1 @STRINGP(i64) #1

; Function Attrs: nounwind uwtable
define void @x_fill_property_data(%struct._XDisplay* %dpy, i64 %data, i8* %ret, i32 %format) #0 {
entry:
  %dpy.addr = alloca %struct._XDisplay*, align 8
  %data.addr = alloca i64, align 8
  %ret.addr = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %d32 = alloca i64*, align 8
  %d16 = alloca i16*, align 8
  %d08 = alloca i8*, align 8
  %iter = alloca i64, align 8
  %o = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  store %struct._XDisplay* %dpy, %struct._XDisplay** %dpy.addr, align 8
  store i64 %data, i64* %data.addr, align 8
  store i8* %ret, i8** %ret.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  %0 = load i8*, i8** %ret.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %d32, align 8
  %2 = load i8*, i8** %ret.addr, align 8
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %d16, align 8
  %4 = load i8*, i8** %ret.addr, align 8
  store i8* %4, i8** %d08, align 8
  %5 = load i64, i64* %data.addr, align 8
  store i64 %5, i64* %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %iter, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %iter, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car, align 8
  store i64 %10, i64* %o, align 8
  %11 = load i64, i64* %o, align 8
  %call = call zeroext i1 @NUMBERP(i64 %11)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load i64, i64* %o, align 8
  %and3 = and i64 %12, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 3
  br i1 %cmp5, label %if.then, label %if.else.29

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %13 = load i64, i64* %o, align 8
  %and7 = and i64 %13, 7
  %conv8 = trunc i64 %and7 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %14 = load i64, i64* %o, align 8
  %sub11 = sub nsw i64 %14, 3
  %15 = inttoptr i64 %sub11 to i8*
  %16 = bitcast i8* %15 to %struct.Lisp_Cons*
  %car12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %16, i32 0, i32 0
  %17 = load i64, i64* %car12, align 8
  %call13 = call zeroext i1 @RANGED_INTEGERP(i64 -32768, i64 %17, i64 32767)
  br i1 %call13, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %18 = load i64, i64* %o, align 8
  %sub16 = sub nsw i64 %18, 3
  %19 = inttoptr i64 %sub16 to i8*
  %20 = bitcast i8* %19 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %20, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %21 = load i64, i64* %cdr, align 8
  %call17 = call zeroext i1 @RANGED_INTEGERP(i64 -32768, i64 %21, i64 -1)
  br i1 %call17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.15
  %22 = load i64, i64* %o, align 8
  %sub20 = sub nsw i64 %22, 3
  %23 = inttoptr i64 %sub20 to i8*
  %24 = bitcast i8* %23 to %struct.Lisp_Cons*
  %car21 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %24, i32 0, i32 0
  %25 = load i64, i64* %car21, align 8
  %shr = ashr i64 %25, 2
  %and22 = and i64 %shr, 65535
  store i64 %and22, i64* %v1, align 8
  %26 = load i64, i64* %o, align 8
  %sub23 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub23 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %u24 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 1
  %cdr25 = bitcast %union.anon.11* %u24 to i64*
  %29 = load i64, i64* %cdr25, align 8
  %shr26 = ashr i64 %29, 2
  %and27 = and i64 %shr26, 65535
  store i64 %and27, i64* %v2, align 8
  %30 = load i64, i64* %v1, align 8
  %shl = shl i64 %30, 16
  %31 = load i64, i64* %v2, align 8
  %or = or i64 %shl, %31
  store i64 %or, i64* %val, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.15, %land.lhs.true, %if.then
  %32 = load i64, i64* %o, align 8
  %call28 = call i64 @cons_to_x_long(i64 %32)
  store i64 %call28, i64* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  br label %if.end.36

if.else.29:                                       ; preds = %lor.lhs.false
  %33 = load i64, i64* %o, align 8
  %call30 = call zeroext i1 @STRINGP(i64 %33)
  br i1 %call30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else.29
  call void @block_input()
  %34 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8
  %35 = load i64, i64* %o, align 8
  %call32 = call i8* @SSDATA(i64 %35)
  %call33 = call i64 @XInternAtom(%struct._XDisplay* %34, i8* %call32, i32 0)
  store i64 %call33, i64* %val, align 8
  call void @unblock_input()
  br label %if.end.35

if.else.34:                                       ; preds = %if.else.29
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable

if.end.35:                                        ; preds = %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  %36 = load i32, i32* %format.addr, align 4
  %cmp37 = icmp eq i32 %36, 8
  br i1 %cmp37, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %if.end.36
  %37 = load i64, i64* %val, align 8
  %cmp40 = icmp ult i64 256, %37
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %if.then.39
  %38 = load i64, i64* %val, align 8
  %cmp43 = icmp ule i64 %38, 4294967167
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.42
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  unreachable

if.end.46:                                        ; preds = %land.lhs.true.42, %if.then.39
  %39 = load i64, i64* %val, align 8
  %conv47 = trunc i64 %39 to i8
  %40 = load i8*, i8** %d08, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %d08, align 8
  store i8 %conv47, i8* %40, align 1
  br label %if.end.64

if.else.48:                                       ; preds = %if.end.36
  %41 = load i32, i32* %format.addr, align 4
  %cmp49 = icmp eq i32 %41, 16
  br i1 %cmp49, label %if.then.51, label %if.else.61

if.then.51:                                       ; preds = %if.else.48
  %42 = load i64, i64* %val, align 8
  %cmp52 = icmp ult i64 65536, %42
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.58

land.lhs.true.54:                                 ; preds = %if.then.51
  %43 = load i64, i64* %val, align 8
  %cmp55 = icmp ule i64 %43, 4294934527
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.54
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable

if.end.58:                                        ; preds = %land.lhs.true.54, %if.then.51
  %44 = load i64, i64* %val, align 8
  %conv59 = trunc i64 %44 to i16
  %45 = load i16*, i16** %d16, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %incdec.ptr60, i16** %d16, align 8
  store i16 %conv59, i16* %45, align 2
  br label %if.end.63

if.else.61:                                       ; preds = %if.else.48
  %46 = load i64, i64* %val, align 8
  %47 = load i64*, i64** %d32, align 8
  %incdec.ptr62 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %incdec.ptr62, i64** %d32, align 8
  store i64 %46, i64* %47, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.end.58
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %48 = load i64, i64* %iter, align 8
  %sub65 = sub nsw i64 %48, 3
  %49 = inttoptr i64 %sub65 to i8*
  %50 = bitcast i8* %49 to %struct.Lisp_Cons*
  %u66 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %50, i32 0, i32 1
  %cdr67 = bitcast %union.anon.11* %u66 to i64*
  %51 = load i64, i64* %cdr67, align 8
  store i64 %51, i64* %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare zeroext i1 @RANGED_INTEGERP(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @cons_to_x_long(i64 %obj) #0 {
entry:
  %obj.addr = alloca i64, align 8
  store i64 %obj, i64* %obj.addr, align 8
  %0 = load i64, i64* %obj.addr, align 8
  %call = call i64 @cons_to_signed(i64 %0, i64 -2147483648, i64 4294967295)
  ret i64 %call
}

declare i64 @XInternAtom(%struct._XDisplay*, i8*, i32) #1

declare i8* @SSDATA(i64) #1

; Function Attrs: nounwind uwtable
define i64 @x_property_data_to_lisp(%struct.frame* %f, i8* %data, i64 %type, i32 %format, i64 %size) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %data.addr = alloca i8*, align 8
  %type.addr = alloca i64, align 8
  %format.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %format_bytes = alloca i64, align 8
  %data_bytes = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i64 %size, i64* %size.addr, align 8
  %0 = load i32, i32* %format.addr, align 4
  %shr = ashr i32 %0, 3
  %conv = sext i32 %shr to i64
  store i64 %conv, i64* %format_bytes, align 8
  br i1 false, label %cond.true, label %cond.false.624

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true.1, label %cond.false.364

cond.true.1:                                      ; preds = %cond.true
  %1 = load i64, i64* %format_bytes, align 8
  %conv2 = trunc i64 %1 to i8
  %conv3 = sext i8 %conv2 to i32
  %mul = mul nsw i32 0, %conv3
  %2 = load i64, i64* %size.addr, align 8
  %conv4 = trunc i64 %2 to i8
  %conv5 = sext i8 %conv4 to i32
  %add = add nsw i32 %mul, %conv5
  %mul6 = mul nsw i32 0, %add
  %sub = sub nsw i32 %mul6, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true.8, label %cond.false

cond.true.8:                                      ; preds = %cond.true.1
  %3 = load i64, i64* %format_bytes, align 8
  %conv9 = trunc i64 %3 to i8
  %conv10 = sext i8 %conv9 to i32
  %mul11 = mul nsw i32 0, %conv10
  %4 = load i64, i64* %size.addr, align 8
  %conv12 = trunc i64 %4 to i8
  %conv13 = sext i8 %conv12 to i32
  %add14 = add nsw i32 %mul11, %conv13
  %mul15 = mul nsw i32 0, %add14
  %add16 = add nsw i32 %mul15, 0
  %neg = xor i32 %add16, -1
  %cmp17 = icmp eq i32 %neg, -1
  %conv18 = zext i1 %cmp17 to i32
  %sub19 = sub nsw i32 0, %conv18
  %5 = load i64, i64* %format_bytes, align 8
  %conv20 = trunc i64 %5 to i8
  %conv21 = sext i8 %conv20 to i32
  %mul22 = mul nsw i32 0, %conv21
  %6 = load i64, i64* %size.addr, align 8
  %conv23 = trunc i64 %6 to i8
  %conv24 = sext i8 %conv23 to i32
  %add25 = add nsw i32 %mul22, %conv24
  %mul26 = mul nsw i32 0, %add25
  %add27 = add nsw i32 %mul26, 1
  %shl = shl i32 %add27, 30
  %sub28 = sub nsw i32 %shl, 1
  %mul29 = mul nsw i32 %sub28, 2
  %add30 = add nsw i32 %mul29, 1
  %sub31 = sub nsw i32 %sub19, %add30
  br label %cond.end

cond.false:                                       ; preds = %cond.true.1
  %7 = load i64, i64* %format_bytes, align 8
  %conv32 = trunc i64 %7 to i8
  %conv33 = sext i8 %conv32 to i32
  %mul34 = mul nsw i32 0, %conv33
  %8 = load i64, i64* %size.addr, align 8
  %conv35 = trunc i64 %8 to i8
  %conv36 = sext i8 %conv35 to i32
  %add37 = add nsw i32 %mul34, %conv36
  %mul38 = mul nsw i32 0, %add37
  %add39 = add nsw i32 %mul38, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.8
  %cond = phi i32 [ %sub31, %cond.true.8 ], [ %add39, %cond.false ]
  %cmp40 = icmp eq i32 %cond, 0
  br i1 %cmp40, label %land.lhs.true, label %lor.lhs.false.60

land.lhs.true:                                    ; preds = %cond.end
  %9 = load i64, i64* %size.addr, align 8
  %conv42 = trunc i64 %9 to i8
  %conv43 = sext i8 %conv42 to i32
  %cmp44 = icmp slt i32 %conv43, 0
  br i1 %cmp44, label %land.lhs.true.46, label %lor.lhs.false

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %10 = load i64, i64* %format_bytes, align 8
  %conv47 = trunc i64 %10 to i8
  %conv48 = sext i8 %conv47 to i32
  %cmp49 = icmp slt i32 0, %conv48
  br i1 %cmp49, label %cond.true.306, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.46, %land.lhs.true
  %11 = load i64, i64* %format_bytes, align 8
  %conv51 = trunc i64 %11 to i8
  %conv52 = sext i8 %conv51 to i32
  %cmp53 = icmp slt i32 %conv52, 0
  br i1 %cmp53, label %land.lhs.true.55, label %lor.lhs.false.60

land.lhs.true.55:                                 ; preds = %lor.lhs.false
  %12 = load i64, i64* %size.addr, align 8
  %conv56 = trunc i64 %12 to i8
  %conv57 = sext i8 %conv56 to i32
  %cmp58 = icmp slt i32 0, %conv57
  br i1 %cmp58, label %cond.true.306, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.55, %lor.lhs.false, %cond.end
  %13 = load i64, i64* %format_bytes, align 8
  %conv61 = trunc i64 %13 to i8
  %conv62 = sext i8 %conv61 to i32
  %cmp63 = icmp slt i32 %conv62, 0
  br i1 %cmp63, label %cond.true.65, label %cond.false.172

cond.true.65:                                     ; preds = %lor.lhs.false.60
  %14 = load i64, i64* %size.addr, align 8
  %conv66 = trunc i64 %14 to i8
  %conv67 = sext i8 %conv66 to i32
  %cmp68 = icmp slt i32 %conv67, 0
  br i1 %cmp68, label %cond.true.70, label %cond.false.111

cond.true.70:                                     ; preds = %cond.true.65
  %15 = load i64, i64* %size.addr, align 8
  %conv71 = trunc i64 %15 to i8
  %conv72 = sext i8 %conv71 to i32
  %16 = load i64, i64* %format_bytes, align 8
  %conv73 = trunc i64 %16 to i8
  %conv74 = sext i8 %conv73 to i32
  %mul75 = mul nsw i32 0, %conv74
  %17 = load i64, i64* %size.addr, align 8
  %conv76 = trunc i64 %17 to i8
  %conv77 = sext i8 %conv76 to i32
  %add78 = add nsw i32 %mul75, %conv77
  %mul79 = mul nsw i32 0, %add78
  %sub80 = sub nsw i32 %mul79, 1
  %cmp81 = icmp slt i32 %sub80, 0
  br i1 %cmp81, label %cond.true.83, label %cond.false.96

cond.true.83:                                     ; preds = %cond.true.70
  %18 = load i64, i64* %format_bytes, align 8
  %conv84 = trunc i64 %18 to i8
  %conv85 = sext i8 %conv84 to i32
  %mul86 = mul nsw i32 0, %conv85
  %19 = load i64, i64* %size.addr, align 8
  %conv87 = trunc i64 %19 to i8
  %conv88 = sext i8 %conv87 to i32
  %add89 = add nsw i32 %mul86, %conv88
  %mul90 = mul nsw i32 0, %add89
  %add91 = add nsw i32 %mul90, 1
  %shl92 = shl i32 %add91, 30
  %sub93 = sub nsw i32 %shl92, 1
  %mul94 = mul nsw i32 %sub93, 2
  %add95 = add nsw i32 %mul94, 1
  br label %cond.end.105

cond.false.96:                                    ; preds = %cond.true.70
  %20 = load i64, i64* %format_bytes, align 8
  %conv97 = trunc i64 %20 to i8
  %conv98 = sext i8 %conv97 to i32
  %mul99 = mul nsw i32 0, %conv98
  %21 = load i64, i64* %size.addr, align 8
  %conv100 = trunc i64 %21 to i8
  %conv101 = sext i8 %conv100 to i32
  %add102 = add nsw i32 %mul99, %conv101
  %mul103 = mul nsw i32 0, %add102
  %sub104 = sub nsw i32 %mul103, 1
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.96, %cond.true.83
  %cond106 = phi i32 [ %add95, %cond.true.83 ], [ %sub104, %cond.false.96 ]
  %22 = load i64, i64* %format_bytes, align 8
  %conv107 = trunc i64 %22 to i8
  %conv108 = sext i8 %conv107 to i32
  %div = sdiv i32 %cond106, %conv108
  %cmp109 = icmp slt i32 %conv72, %div
  br i1 %cmp109, label %cond.true.306, label %lor.lhs.false.280

cond.false.111:                                   ; preds = %cond.true.65
  %23 = load i64, i64* %format_bytes, align 8
  %conv112 = trunc i64 %23 to i8
  %conv113 = sext i8 %conv112 to i32
  %cmp114 = icmp eq i32 %conv113, -1
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.111
  br i1 false, label %cond.true.306, label %lor.lhs.false.280

cond.false.117:                                   ; preds = %cond.false.111
  %24 = load i64, i64* %format_bytes, align 8
  %conv118 = trunc i64 %24 to i8
  %conv119 = sext i8 %conv118 to i32
  %mul120 = mul nsw i32 0, %conv119
  %25 = load i64, i64* %size.addr, align 8
  %conv121 = trunc i64 %25 to i8
  %conv122 = sext i8 %conv121 to i32
  %add123 = add nsw i32 %mul120, %conv122
  %mul124 = mul nsw i32 0, %add123
  %sub125 = sub nsw i32 %mul124, 1
  %cmp126 = icmp slt i32 %sub125, 0
  br i1 %cmp126, label %cond.true.128, label %cond.false.154

cond.true.128:                                    ; preds = %cond.false.117
  %26 = load i64, i64* %format_bytes, align 8
  %conv129 = trunc i64 %26 to i8
  %conv130 = sext i8 %conv129 to i32
  %mul131 = mul nsw i32 0, %conv130
  %27 = load i64, i64* %size.addr, align 8
  %conv132 = trunc i64 %27 to i8
  %conv133 = sext i8 %conv132 to i32
  %add134 = add nsw i32 %mul131, %conv133
  %mul135 = mul nsw i32 0, %add134
  %add136 = add nsw i32 %mul135, 0
  %neg137 = xor i32 %add136, -1
  %cmp138 = icmp eq i32 %neg137, -1
  %conv139 = zext i1 %cmp138 to i32
  %sub140 = sub nsw i32 0, %conv139
  %28 = load i64, i64* %format_bytes, align 8
  %conv141 = trunc i64 %28 to i8
  %conv142 = sext i8 %conv141 to i32
  %mul143 = mul nsw i32 0, %conv142
  %29 = load i64, i64* %size.addr, align 8
  %conv144 = trunc i64 %29 to i8
  %conv145 = sext i8 %conv144 to i32
  %add146 = add nsw i32 %mul143, %conv145
  %mul147 = mul nsw i32 0, %add146
  %add148 = add nsw i32 %mul147, 1
  %shl149 = shl i32 %add148, 30
  %sub150 = sub nsw i32 %shl149, 1
  %mul151 = mul nsw i32 %sub150, 2
  %add152 = add nsw i32 %mul151, 1
  %sub153 = sub nsw i32 %sub140, %add152
  br label %cond.end.163

cond.false.154:                                   ; preds = %cond.false.117
  %30 = load i64, i64* %format_bytes, align 8
  %conv155 = trunc i64 %30 to i8
  %conv156 = sext i8 %conv155 to i32
  %mul157 = mul nsw i32 0, %conv156
  %31 = load i64, i64* %size.addr, align 8
  %conv158 = trunc i64 %31 to i8
  %conv159 = sext i8 %conv158 to i32
  %add160 = add nsw i32 %mul157, %conv159
  %mul161 = mul nsw i32 0, %add160
  %add162 = add nsw i32 %mul161, 0
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.154, %cond.true.128
  %cond164 = phi i32 [ %sub153, %cond.true.128 ], [ %add162, %cond.false.154 ]
  %32 = load i64, i64* %format_bytes, align 8
  %conv165 = trunc i64 %32 to i8
  %conv166 = sext i8 %conv165 to i32
  %div167 = sdiv i32 %cond164, %conv166
  %33 = load i64, i64* %size.addr, align 8
  %conv168 = trunc i64 %33 to i8
  %conv169 = sext i8 %conv168 to i32
  %cmp170 = icmp slt i32 %div167, %conv169
  br i1 %cmp170, label %cond.true.306, label %lor.lhs.false.280

cond.false.172:                                   ; preds = %lor.lhs.false.60
  %34 = load i64, i64* %format_bytes, align 8
  %conv173 = trunc i64 %34 to i8
  %conv174 = sext i8 %conv173 to i32
  %cmp175 = icmp eq i32 %conv174, 0
  br i1 %cmp175, label %cond.true.177, label %cond.false.178

cond.true.177:                                    ; preds = %cond.false.172
  br i1 false, label %cond.true.306, label %lor.lhs.false.280

cond.false.178:                                   ; preds = %cond.false.172
  %35 = load i64, i64* %size.addr, align 8
  %conv179 = trunc i64 %35 to i8
  %conv180 = sext i8 %conv179 to i32
  %cmp181 = icmp slt i32 %conv180, 0
  br i1 %cmp181, label %cond.true.183, label %cond.false.238

cond.true.183:                                    ; preds = %cond.false.178
  %36 = load i64, i64* %size.addr, align 8
  %conv184 = trunc i64 %36 to i8
  %conv185 = sext i8 %conv184 to i32
  %37 = load i64, i64* %format_bytes, align 8
  %conv186 = trunc i64 %37 to i8
  %conv187 = sext i8 %conv186 to i32
  %mul188 = mul nsw i32 0, %conv187
  %38 = load i64, i64* %size.addr, align 8
  %conv189 = trunc i64 %38 to i8
  %conv190 = sext i8 %conv189 to i32
  %add191 = add nsw i32 %mul188, %conv190
  %mul192 = mul nsw i32 0, %add191
  %sub193 = sub nsw i32 %mul192, 1
  %cmp194 = icmp slt i32 %sub193, 0
  br i1 %cmp194, label %cond.true.196, label %cond.false.222

cond.true.196:                                    ; preds = %cond.true.183
  %39 = load i64, i64* %format_bytes, align 8
  %conv197 = trunc i64 %39 to i8
  %conv198 = sext i8 %conv197 to i32
  %mul199 = mul nsw i32 0, %conv198
  %40 = load i64, i64* %size.addr, align 8
  %conv200 = trunc i64 %40 to i8
  %conv201 = sext i8 %conv200 to i32
  %add202 = add nsw i32 %mul199, %conv201
  %mul203 = mul nsw i32 0, %add202
  %add204 = add nsw i32 %mul203, 0
  %neg205 = xor i32 %add204, -1
  %cmp206 = icmp eq i32 %neg205, -1
  %conv207 = zext i1 %cmp206 to i32
  %sub208 = sub nsw i32 0, %conv207
  %41 = load i64, i64* %format_bytes, align 8
  %conv209 = trunc i64 %41 to i8
  %conv210 = sext i8 %conv209 to i32
  %mul211 = mul nsw i32 0, %conv210
  %42 = load i64, i64* %size.addr, align 8
  %conv212 = trunc i64 %42 to i8
  %conv213 = sext i8 %conv212 to i32
  %add214 = add nsw i32 %mul211, %conv213
  %mul215 = mul nsw i32 0, %add214
  %add216 = add nsw i32 %mul215, 1
  %shl217 = shl i32 %add216, 30
  %sub218 = sub nsw i32 %shl217, 1
  %mul219 = mul nsw i32 %sub218, 2
  %add220 = add nsw i32 %mul219, 1
  %sub221 = sub nsw i32 %sub208, %add220
  br label %cond.end.231

cond.false.222:                                   ; preds = %cond.true.183
  %43 = load i64, i64* %format_bytes, align 8
  %conv223 = trunc i64 %43 to i8
  %conv224 = sext i8 %conv223 to i32
  %mul225 = mul nsw i32 0, %conv224
  %44 = load i64, i64* %size.addr, align 8
  %conv226 = trunc i64 %44 to i8
  %conv227 = sext i8 %conv226 to i32
  %add228 = add nsw i32 %mul225, %conv227
  %mul229 = mul nsw i32 0, %add228
  %add230 = add nsw i32 %mul229, 0
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.222, %cond.true.196
  %cond232 = phi i32 [ %sub221, %cond.true.196 ], [ %add230, %cond.false.222 ]
  %45 = load i64, i64* %format_bytes, align 8
  %conv233 = trunc i64 %45 to i8
  %conv234 = sext i8 %conv233 to i32
  %div235 = sdiv i32 %cond232, %conv234
  %cmp236 = icmp slt i32 %conv185, %div235
  br i1 %cmp236, label %cond.true.306, label %lor.lhs.false.280

cond.false.238:                                   ; preds = %cond.false.178
  %46 = load i64, i64* %format_bytes, align 8
  %conv239 = trunc i64 %46 to i8
  %conv240 = sext i8 %conv239 to i32
  %mul241 = mul nsw i32 0, %conv240
  %47 = load i64, i64* %size.addr, align 8
  %conv242 = trunc i64 %47 to i8
  %conv243 = sext i8 %conv242 to i32
  %add244 = add nsw i32 %mul241, %conv243
  %mul245 = mul nsw i32 0, %add244
  %sub246 = sub nsw i32 %mul245, 1
  %cmp247 = icmp slt i32 %sub246, 0
  br i1 %cmp247, label %cond.true.249, label %cond.false.262

cond.true.249:                                    ; preds = %cond.false.238
  %48 = load i64, i64* %format_bytes, align 8
  %conv250 = trunc i64 %48 to i8
  %conv251 = sext i8 %conv250 to i32
  %mul252 = mul nsw i32 0, %conv251
  %49 = load i64, i64* %size.addr, align 8
  %conv253 = trunc i64 %49 to i8
  %conv254 = sext i8 %conv253 to i32
  %add255 = add nsw i32 %mul252, %conv254
  %mul256 = mul nsw i32 0, %add255
  %add257 = add nsw i32 %mul256, 1
  %shl258 = shl i32 %add257, 30
  %sub259 = sub nsw i32 %shl258, 1
  %mul260 = mul nsw i32 %sub259, 2
  %add261 = add nsw i32 %mul260, 1
  br label %cond.end.271

cond.false.262:                                   ; preds = %cond.false.238
  %50 = load i64, i64* %format_bytes, align 8
  %conv263 = trunc i64 %50 to i8
  %conv264 = sext i8 %conv263 to i32
  %mul265 = mul nsw i32 0, %conv264
  %51 = load i64, i64* %size.addr, align 8
  %conv266 = trunc i64 %51 to i8
  %conv267 = sext i8 %conv266 to i32
  %add268 = add nsw i32 %mul265, %conv267
  %mul269 = mul nsw i32 0, %add268
  %sub270 = sub nsw i32 %mul269, 1
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.262, %cond.true.249
  %cond272 = phi i32 [ %add261, %cond.true.249 ], [ %sub270, %cond.false.262 ]
  %52 = load i64, i64* %format_bytes, align 8
  %conv273 = trunc i64 %52 to i8
  %conv274 = sext i8 %conv273 to i32
  %div275 = sdiv i32 %cond272, %conv274
  %53 = load i64, i64* %size.addr, align 8
  %conv276 = trunc i64 %53 to i8
  %conv277 = sext i8 %conv276 to i32
  %cmp278 = icmp slt i32 %div275, %conv277
  br i1 %cmp278, label %cond.true.306, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %cond.end.271, %cond.end.231, %cond.true.177, %cond.end.163, %cond.true.116, %cond.end.105
  %54 = load i64, i64* %size.addr, align 8
  %conv281 = trunc i64 %54 to i8
  %conv282 = sext i8 %conv281 to i32
  %55 = load i64, i64* %format_bytes, align 8
  %conv283 = trunc i64 %55 to i8
  %conv284 = sext i8 %conv283 to i32
  %mul285 = mul nsw i32 %conv282, %conv284
  %mul286 = mul nsw i32 0, %mul285
  %sub287 = sub nsw i32 %mul286, 1
  %cmp288 = icmp slt i32 %sub287, 0
  br i1 %cmp288, label %land.lhs.true.290, label %lor.lhs.false.298

land.lhs.true.290:                                ; preds = %lor.lhs.false.280
  %56 = load i64, i64* %size.addr, align 8
  %conv291 = trunc i64 %56 to i8
  %conv292 = sext i8 %conv291 to i32
  %57 = load i64, i64* %format_bytes, align 8
  %conv293 = trunc i64 %57 to i8
  %conv294 = sext i8 %conv293 to i32
  %mul295 = mul nsw i32 %conv292, %conv294
  %cmp296 = icmp slt i32 %mul295, -128
  br i1 %cmp296, label %cond.true.306, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %land.lhs.true.290, %lor.lhs.false.280
  %58 = load i64, i64* %size.addr, align 8
  %conv299 = trunc i64 %58 to i8
  %conv300 = sext i8 %conv299 to i32
  %59 = load i64, i64* %format_bytes, align 8
  %conv301 = trunc i64 %59 to i8
  %conv302 = sext i8 %conv301 to i32
  %mul303 = mul nsw i32 %conv300, %conv302
  %cmp304 = icmp slt i32 127, %mul303
  br i1 %cmp304, label %cond.true.306, label %cond.false.335

cond.true.306:                                    ; preds = %lor.lhs.false.298, %land.lhs.true.290, %cond.end.271, %cond.end.231, %cond.true.177, %cond.end.163, %cond.true.116, %cond.end.105, %land.lhs.true.55, %land.lhs.true.46
  %60 = load i64, i64* %size.addr, align 8
  %conv307 = trunc i64 %60 to i8
  %conv308 = zext i8 %conv307 to i32
  %61 = load i64, i64* %format_bytes, align 8
  %conv309 = trunc i64 %61 to i8
  %conv310 = zext i8 %conv309 to i32
  %mul311 = mul nsw i32 %conv308, %conv310
  %cmp312 = icmp sle i32 %mul311, 127
  br i1 %cmp312, label %cond.true.314, label %cond.false.322

cond.true.314:                                    ; preds = %cond.true.306
  %62 = load i64, i64* %size.addr, align 8
  %conv315 = trunc i64 %62 to i8
  %conv316 = zext i8 %conv315 to i32
  %63 = load i64, i64* %format_bytes, align 8
  %conv317 = trunc i64 %63 to i8
  %conv318 = zext i8 %conv317 to i32
  %mul319 = mul nsw i32 %conv316, %conv318
  %conv320 = trunc i32 %mul319 to i8
  %conv321 = sext i8 %conv320 to i32
  br label %cond.end.332

cond.false.322:                                   ; preds = %cond.true.306
  %64 = load i64, i64* %size.addr, align 8
  %conv323 = trunc i64 %64 to i8
  %conv324 = zext i8 %conv323 to i32
  %65 = load i64, i64* %format_bytes, align 8
  %conv325 = trunc i64 %65 to i8
  %conv326 = zext i8 %conv325 to i32
  %mul327 = mul nsw i32 %conv324, %conv326
  %sub328 = sub nsw i32 %mul327, -128
  %conv329 = trunc i32 %sub328 to i8
  %conv330 = sext i8 %conv329 to i32
  %add331 = add nsw i32 %conv330, -128
  br label %cond.end.332

cond.end.332:                                     ; preds = %cond.false.322, %cond.true.314
  %cond333 = phi i32 [ %conv321, %cond.true.314 ], [ %add331, %cond.false.322 ]
  %conv334 = sext i32 %cond333 to i64
  store i64 %conv334, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.335:                                   ; preds = %lor.lhs.false.298
  %66 = load i64, i64* %size.addr, align 8
  %conv336 = trunc i64 %66 to i8
  %conv337 = zext i8 %conv336 to i32
  %67 = load i64, i64* %format_bytes, align 8
  %conv338 = trunc i64 %67 to i8
  %conv339 = zext i8 %conv338 to i32
  %mul340 = mul nsw i32 %conv337, %conv339
  %cmp341 = icmp sle i32 %mul340, 127
  br i1 %cmp341, label %cond.true.343, label %cond.false.351

cond.true.343:                                    ; preds = %cond.false.335
  %68 = load i64, i64* %size.addr, align 8
  %conv344 = trunc i64 %68 to i8
  %conv345 = zext i8 %conv344 to i32
  %69 = load i64, i64* %format_bytes, align 8
  %conv346 = trunc i64 %69 to i8
  %conv347 = zext i8 %conv346 to i32
  %mul348 = mul nsw i32 %conv345, %conv347
  %conv349 = trunc i32 %mul348 to i8
  %conv350 = sext i8 %conv349 to i32
  br label %cond.end.361

cond.false.351:                                   ; preds = %cond.false.335
  %70 = load i64, i64* %size.addr, align 8
  %conv352 = trunc i64 %70 to i8
  %conv353 = zext i8 %conv352 to i32
  %71 = load i64, i64* %format_bytes, align 8
  %conv354 = trunc i64 %71 to i8
  %conv355 = zext i8 %conv354 to i32
  %mul356 = mul nsw i32 %conv353, %conv355
  %sub357 = sub nsw i32 %mul356, -128
  %conv358 = trunc i32 %sub357 to i8
  %conv359 = sext i8 %conv358 to i32
  %add360 = add nsw i32 %conv359, -128
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.351, %cond.true.343
  %cond362 = phi i32 [ %conv350, %cond.true.343 ], [ %add360, %cond.false.351 ]
  %conv363 = sext i32 %cond362 to i64
  store i64 %conv363, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.364:                                   ; preds = %cond.true
  %72 = load i64, i64* %format_bytes, align 8
  %mul365 = mul nsw i64 0, %72
  %73 = load i64, i64* %size.addr, align 8
  %add366 = add i64 %mul365, %73
  %mul367 = mul i64 0, %add366
  %sub368 = sub i64 %mul367, 1
  %cmp369 = icmp ult i64 %sub368, 0
  br i1 %cmp369, label %cond.true.371, label %cond.false.390

cond.true.371:                                    ; preds = %cond.false.364
  %74 = load i64, i64* %format_bytes, align 8
  %mul372 = mul nsw i64 0, %74
  %75 = load i64, i64* %size.addr, align 8
  %add373 = add i64 %mul372, %75
  %mul374 = mul i64 0, %add373
  %add375 = add i64 %mul374, 0
  %neg376 = xor i64 %add375, -1
  %cmp377 = icmp eq i64 %neg376, -1
  %conv378 = zext i1 %cmp377 to i32
  %sub379 = sub nsw i32 0, %conv378
  %conv380 = sext i32 %sub379 to i64
  %76 = load i64, i64* %format_bytes, align 8
  %mul381 = mul nsw i64 0, %76
  %77 = load i64, i64* %size.addr, align 8
  %add382 = add i64 %mul381, %77
  %mul383 = mul i64 0, %add382
  %add384 = add i64 %mul383, 1
  %shl385 = shl i64 %add384, 62
  %sub386 = sub i64 %shl385, 1
  %mul387 = mul i64 %sub386, 2
  %add388 = add i64 %mul387, 1
  %sub389 = sub i64 %conv380, %add388
  br label %cond.end.395

cond.false.390:                                   ; preds = %cond.false.364
  %78 = load i64, i64* %format_bytes, align 8
  %mul391 = mul nsw i64 0, %78
  %79 = load i64, i64* %size.addr, align 8
  %add392 = add i64 %mul391, %79
  %mul393 = mul i64 0, %add392
  %add394 = add i64 %mul393, 0
  br label %cond.end.395

cond.end.395:                                     ; preds = %cond.false.390, %cond.true.371
  %cond396 = phi i64 [ %sub389, %cond.true.371 ], [ %add394, %cond.false.390 ]
  %cmp397 = icmp eq i64 %cond396, 0
  br i1 %cmp397, label %land.lhs.true.399, label %lor.lhs.false.411

land.lhs.true.399:                                ; preds = %cond.end.395
  %80 = load i64, i64* %size.addr, align 8
  %cmp400 = icmp ult i64 %80, 0
  br i1 %cmp400, label %land.lhs.true.402, label %lor.lhs.false.405

land.lhs.true.402:                                ; preds = %land.lhs.true.399
  %81 = load i64, i64* %format_bytes, align 8
  %cmp403 = icmp slt i64 0, %81
  br i1 %cmp403, label %cond.true.566, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %land.lhs.true.402, %land.lhs.true.399
  %82 = load i64, i64* %format_bytes, align 8
  %cmp406 = icmp slt i64 %82, 0
  br i1 %cmp406, label %land.lhs.true.408, label %lor.lhs.false.411

land.lhs.true.408:                                ; preds = %lor.lhs.false.405
  %83 = load i64, i64* %size.addr, align 8
  %cmp409 = icmp ult i64 0, %83
  br i1 %cmp409, label %cond.true.566, label %lor.lhs.false.411

lor.lhs.false.411:                                ; preds = %land.lhs.true.408, %lor.lhs.false.405, %cond.end.395
  %84 = load i64, i64* %format_bytes, align 8
  %cmp412 = icmp slt i64 %84, 0
  br i1 %cmp412, label %cond.true.414, label %cond.false.483

cond.true.414:                                    ; preds = %lor.lhs.false.411
  %85 = load i64, i64* %size.addr, align 8
  %cmp415 = icmp ult i64 %85, 0
  br i1 %cmp415, label %cond.true.417, label %cond.false.443

cond.true.417:                                    ; preds = %cond.true.414
  %86 = load i64, i64* %size.addr, align 8
  %87 = load i64, i64* %format_bytes, align 8
  %mul418 = mul nsw i64 0, %87
  %88 = load i64, i64* %size.addr, align 8
  %add419 = add i64 %mul418, %88
  %mul420 = mul i64 0, %add419
  %sub421 = sub i64 %mul420, 1
  %cmp422 = icmp ult i64 %sub421, 0
  br i1 %cmp422, label %cond.true.424, label %cond.false.433

cond.true.424:                                    ; preds = %cond.true.417
  %89 = load i64, i64* %format_bytes, align 8
  %mul425 = mul nsw i64 0, %89
  %90 = load i64, i64* %size.addr, align 8
  %add426 = add i64 %mul425, %90
  %mul427 = mul i64 0, %add426
  %add428 = add i64 %mul427, 1
  %shl429 = shl i64 %add428, 62
  %sub430 = sub i64 %shl429, 1
  %mul431 = mul i64 %sub430, 2
  %add432 = add i64 %mul431, 1
  br label %cond.end.438

cond.false.433:                                   ; preds = %cond.true.417
  %91 = load i64, i64* %format_bytes, align 8
  %mul434 = mul nsw i64 0, %91
  %92 = load i64, i64* %size.addr, align 8
  %add435 = add i64 %mul434, %92
  %mul436 = mul i64 0, %add435
  %sub437 = sub i64 %mul436, 1
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.false.433, %cond.true.424
  %cond439 = phi i64 [ %add432, %cond.true.424 ], [ %sub437, %cond.false.433 ]
  %93 = load i64, i64* %format_bytes, align 8
  %div440 = udiv i64 %cond439, %93
  %cmp441 = icmp ult i64 %86, %div440
  br i1 %cmp441, label %cond.true.566, label %lor.lhs.false.552

cond.false.443:                                   ; preds = %cond.true.414
  %94 = load i64, i64* %format_bytes, align 8
  %cmp444 = icmp eq i64 %94, -1
  br i1 %cmp444, label %cond.true.446, label %cond.false.447

cond.true.446:                                    ; preds = %cond.false.443
  br i1 false, label %cond.true.566, label %lor.lhs.false.552

cond.false.447:                                   ; preds = %cond.false.443
  %95 = load i64, i64* %format_bytes, align 8
  %mul448 = mul nsw i64 0, %95
  %96 = load i64, i64* %size.addr, align 8
  %add449 = add i64 %mul448, %96
  %mul450 = mul i64 0, %add449
  %sub451 = sub i64 %mul450, 1
  %cmp452 = icmp ult i64 %sub451, 0
  br i1 %cmp452, label %cond.true.454, label %cond.false.473

cond.true.454:                                    ; preds = %cond.false.447
  %97 = load i64, i64* %format_bytes, align 8
  %mul455 = mul nsw i64 0, %97
  %98 = load i64, i64* %size.addr, align 8
  %add456 = add i64 %mul455, %98
  %mul457 = mul i64 0, %add456
  %add458 = add i64 %mul457, 0
  %neg459 = xor i64 %add458, -1
  %cmp460 = icmp eq i64 %neg459, -1
  %conv461 = zext i1 %cmp460 to i32
  %sub462 = sub nsw i32 0, %conv461
  %conv463 = sext i32 %sub462 to i64
  %99 = load i64, i64* %format_bytes, align 8
  %mul464 = mul nsw i64 0, %99
  %100 = load i64, i64* %size.addr, align 8
  %add465 = add i64 %mul464, %100
  %mul466 = mul i64 0, %add465
  %add467 = add i64 %mul466, 1
  %shl468 = shl i64 %add467, 62
  %sub469 = sub i64 %shl468, 1
  %mul470 = mul i64 %sub469, 2
  %add471 = add i64 %mul470, 1
  %sub472 = sub i64 %conv463, %add471
  br label %cond.end.478

cond.false.473:                                   ; preds = %cond.false.447
  %101 = load i64, i64* %format_bytes, align 8
  %mul474 = mul nsw i64 0, %101
  %102 = load i64, i64* %size.addr, align 8
  %add475 = add i64 %mul474, %102
  %mul476 = mul i64 0, %add475
  %add477 = add i64 %mul476, 0
  br label %cond.end.478

cond.end.478:                                     ; preds = %cond.false.473, %cond.true.454
  %cond479 = phi i64 [ %sub472, %cond.true.454 ], [ %add477, %cond.false.473 ]
  %103 = load i64, i64* %format_bytes, align 8
  %div480 = udiv i64 %cond479, %103
  %104 = load i64, i64* %size.addr, align 8
  %cmp481 = icmp ult i64 %div480, %104
  br i1 %cmp481, label %cond.true.566, label %lor.lhs.false.552

cond.false.483:                                   ; preds = %lor.lhs.false.411
  %105 = load i64, i64* %format_bytes, align 8
  %cmp484 = icmp eq i64 %105, 0
  br i1 %cmp484, label %cond.true.486, label %cond.false.487

cond.true.486:                                    ; preds = %cond.false.483
  br i1 false, label %cond.true.566, label %lor.lhs.false.552

cond.false.487:                                   ; preds = %cond.false.483
  %106 = load i64, i64* %size.addr, align 8
  %cmp488 = icmp ult i64 %106, 0
  br i1 %cmp488, label %cond.true.490, label %cond.false.526

cond.true.490:                                    ; preds = %cond.false.487
  %107 = load i64, i64* %size.addr, align 8
  %108 = load i64, i64* %format_bytes, align 8
  %mul491 = mul nsw i64 0, %108
  %109 = load i64, i64* %size.addr, align 8
  %add492 = add i64 %mul491, %109
  %mul493 = mul i64 0, %add492
  %sub494 = sub i64 %mul493, 1
  %cmp495 = icmp ult i64 %sub494, 0
  br i1 %cmp495, label %cond.true.497, label %cond.false.516

cond.true.497:                                    ; preds = %cond.true.490
  %110 = load i64, i64* %format_bytes, align 8
  %mul498 = mul nsw i64 0, %110
  %111 = load i64, i64* %size.addr, align 8
  %add499 = add i64 %mul498, %111
  %mul500 = mul i64 0, %add499
  %add501 = add i64 %mul500, 0
  %neg502 = xor i64 %add501, -1
  %cmp503 = icmp eq i64 %neg502, -1
  %conv504 = zext i1 %cmp503 to i32
  %sub505 = sub nsw i32 0, %conv504
  %conv506 = sext i32 %sub505 to i64
  %112 = load i64, i64* %format_bytes, align 8
  %mul507 = mul nsw i64 0, %112
  %113 = load i64, i64* %size.addr, align 8
  %add508 = add i64 %mul507, %113
  %mul509 = mul i64 0, %add508
  %add510 = add i64 %mul509, 1
  %shl511 = shl i64 %add510, 62
  %sub512 = sub i64 %shl511, 1
  %mul513 = mul i64 %sub512, 2
  %add514 = add i64 %mul513, 1
  %sub515 = sub i64 %conv506, %add514
  br label %cond.end.521

cond.false.516:                                   ; preds = %cond.true.490
  %114 = load i64, i64* %format_bytes, align 8
  %mul517 = mul nsw i64 0, %114
  %115 = load i64, i64* %size.addr, align 8
  %add518 = add i64 %mul517, %115
  %mul519 = mul i64 0, %add518
  %add520 = add i64 %mul519, 0
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.false.516, %cond.true.497
  %cond522 = phi i64 [ %sub515, %cond.true.497 ], [ %add520, %cond.false.516 ]
  %116 = load i64, i64* %format_bytes, align 8
  %div523 = udiv i64 %cond522, %116
  %cmp524 = icmp ult i64 %107, %div523
  br i1 %cmp524, label %cond.true.566, label %lor.lhs.false.552

cond.false.526:                                   ; preds = %cond.false.487
  %117 = load i64, i64* %format_bytes, align 8
  %mul527 = mul nsw i64 0, %117
  %118 = load i64, i64* %size.addr, align 8
  %add528 = add i64 %mul527, %118
  %mul529 = mul i64 0, %add528
  %sub530 = sub i64 %mul529, 1
  %cmp531 = icmp ult i64 %sub530, 0
  br i1 %cmp531, label %cond.true.533, label %cond.false.542

cond.true.533:                                    ; preds = %cond.false.526
  %119 = load i64, i64* %format_bytes, align 8
  %mul534 = mul nsw i64 0, %119
  %120 = load i64, i64* %size.addr, align 8
  %add535 = add i64 %mul534, %120
  %mul536 = mul i64 0, %add535
  %add537 = add i64 %mul536, 1
  %shl538 = shl i64 %add537, 62
  %sub539 = sub i64 %shl538, 1
  %mul540 = mul i64 %sub539, 2
  %add541 = add i64 %mul540, 1
  br label %cond.end.547

cond.false.542:                                   ; preds = %cond.false.526
  %121 = load i64, i64* %format_bytes, align 8
  %mul543 = mul nsw i64 0, %121
  %122 = load i64, i64* %size.addr, align 8
  %add544 = add i64 %mul543, %122
  %mul545 = mul i64 0, %add544
  %sub546 = sub i64 %mul545, 1
  br label %cond.end.547

cond.end.547:                                     ; preds = %cond.false.542, %cond.true.533
  %cond548 = phi i64 [ %add541, %cond.true.533 ], [ %sub546, %cond.false.542 ]
  %123 = load i64, i64* %format_bytes, align 8
  %div549 = udiv i64 %cond548, %123
  %124 = load i64, i64* %size.addr, align 8
  %cmp550 = icmp ult i64 %div549, %124
  br i1 %cmp550, label %cond.true.566, label %lor.lhs.false.552

lor.lhs.false.552:                                ; preds = %cond.end.547, %cond.end.521, %cond.true.486, %cond.end.478, %cond.true.446, %cond.end.438
  %125 = load i64, i64* %size.addr, align 8
  %126 = load i64, i64* %format_bytes, align 8
  %mul553 = mul i64 %125, %126
  %mul554 = mul i64 0, %mul553
  %sub555 = sub i64 %mul554, 1
  %cmp556 = icmp ult i64 %sub555, 0
  br i1 %cmp556, label %land.lhs.true.558, label %lor.lhs.false.562

land.lhs.true.558:                                ; preds = %lor.lhs.false.552
  %127 = load i64, i64* %size.addr, align 8
  %128 = load i64, i64* %format_bytes, align 8
  %mul559 = mul i64 %127, %128
  %cmp560 = icmp ult i64 %mul559, -128
  br i1 %cmp560, label %cond.true.566, label %lor.lhs.false.562

lor.lhs.false.562:                                ; preds = %land.lhs.true.558, %lor.lhs.false.552
  %129 = load i64, i64* %size.addr, align 8
  %130 = load i64, i64* %format_bytes, align 8
  %mul563 = mul i64 %129, %130
  %cmp564 = icmp ult i64 127, %mul563
  br i1 %cmp564, label %cond.true.566, label %cond.false.595

cond.true.566:                                    ; preds = %lor.lhs.false.562, %land.lhs.true.558, %cond.end.547, %cond.end.521, %cond.true.486, %cond.end.478, %cond.true.446, %cond.end.438, %land.lhs.true.408, %land.lhs.true.402
  %131 = load i64, i64* %size.addr, align 8
  %conv567 = trunc i64 %131 to i8
  %conv568 = zext i8 %conv567 to i32
  %132 = load i64, i64* %format_bytes, align 8
  %conv569 = trunc i64 %132 to i8
  %conv570 = zext i8 %conv569 to i32
  %mul571 = mul nsw i32 %conv568, %conv570
  %cmp572 = icmp sle i32 %mul571, 127
  br i1 %cmp572, label %cond.true.574, label %cond.false.582

cond.true.574:                                    ; preds = %cond.true.566
  %133 = load i64, i64* %size.addr, align 8
  %conv575 = trunc i64 %133 to i8
  %conv576 = zext i8 %conv575 to i32
  %134 = load i64, i64* %format_bytes, align 8
  %conv577 = trunc i64 %134 to i8
  %conv578 = zext i8 %conv577 to i32
  %mul579 = mul nsw i32 %conv576, %conv578
  %conv580 = trunc i32 %mul579 to i8
  %conv581 = sext i8 %conv580 to i32
  br label %cond.end.592

cond.false.582:                                   ; preds = %cond.true.566
  %135 = load i64, i64* %size.addr, align 8
  %conv583 = trunc i64 %135 to i8
  %conv584 = zext i8 %conv583 to i32
  %136 = load i64, i64* %format_bytes, align 8
  %conv585 = trunc i64 %136 to i8
  %conv586 = zext i8 %conv585 to i32
  %mul587 = mul nsw i32 %conv584, %conv586
  %sub588 = sub nsw i32 %mul587, -128
  %conv589 = trunc i32 %sub588 to i8
  %conv590 = sext i8 %conv589 to i32
  %add591 = add nsw i32 %conv590, -128
  br label %cond.end.592

cond.end.592:                                     ; preds = %cond.false.582, %cond.true.574
  %cond593 = phi i32 [ %conv581, %cond.true.574 ], [ %add591, %cond.false.582 ]
  %conv594 = sext i32 %cond593 to i64
  store i64 %conv594, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.595:                                   ; preds = %lor.lhs.false.562
  %137 = load i64, i64* %size.addr, align 8
  %conv596 = trunc i64 %137 to i8
  %conv597 = zext i8 %conv596 to i32
  %138 = load i64, i64* %format_bytes, align 8
  %conv598 = trunc i64 %138 to i8
  %conv599 = zext i8 %conv598 to i32
  %mul600 = mul nsw i32 %conv597, %conv599
  %cmp601 = icmp sle i32 %mul600, 127
  br i1 %cmp601, label %cond.true.603, label %cond.false.611

cond.true.603:                                    ; preds = %cond.false.595
  %139 = load i64, i64* %size.addr, align 8
  %conv604 = trunc i64 %139 to i8
  %conv605 = zext i8 %conv604 to i32
  %140 = load i64, i64* %format_bytes, align 8
  %conv606 = trunc i64 %140 to i8
  %conv607 = zext i8 %conv606 to i32
  %mul608 = mul nsw i32 %conv605, %conv607
  %conv609 = trunc i32 %mul608 to i8
  %conv610 = sext i8 %conv609 to i32
  br label %cond.end.621

cond.false.611:                                   ; preds = %cond.false.595
  %141 = load i64, i64* %size.addr, align 8
  %conv612 = trunc i64 %141 to i8
  %conv613 = zext i8 %conv612 to i32
  %142 = load i64, i64* %format_bytes, align 8
  %conv614 = trunc i64 %142 to i8
  %conv615 = zext i8 %conv614 to i32
  %mul616 = mul nsw i32 %conv613, %conv615
  %sub617 = sub nsw i32 %mul616, -128
  %conv618 = trunc i32 %sub617 to i8
  %conv619 = sext i8 %conv618 to i32
  %add620 = add nsw i32 %conv619, -128
  br label %cond.end.621

cond.end.621:                                     ; preds = %cond.false.611, %cond.true.603
  %cond622 = phi i32 [ %conv610, %cond.true.603 ], [ %add620, %cond.false.611 ]
  %conv623 = sext i32 %cond622 to i64
  store i64 %conv623, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.624:                                   ; preds = %entry
  br i1 false, label %cond.true.625, label %cond.false.1261

cond.true.625:                                    ; preds = %cond.false.624
  br i1 false, label %cond.true.626, label %cond.false.1001

cond.true.626:                                    ; preds = %cond.true.625
  %143 = load i64, i64* %format_bytes, align 8
  %conv627 = trunc i64 %143 to i16
  %conv628 = sext i16 %conv627 to i32
  %mul629 = mul nsw i32 0, %conv628
  %144 = load i64, i64* %size.addr, align 8
  %conv630 = trunc i64 %144 to i16
  %conv631 = sext i16 %conv630 to i32
  %add632 = add nsw i32 %mul629, %conv631
  %mul633 = mul nsw i32 0, %add632
  %sub634 = sub nsw i32 %mul633, 1
  %cmp635 = icmp slt i32 %sub634, 0
  br i1 %cmp635, label %cond.true.637, label %cond.false.663

cond.true.637:                                    ; preds = %cond.true.626
  %145 = load i64, i64* %format_bytes, align 8
  %conv638 = trunc i64 %145 to i16
  %conv639 = sext i16 %conv638 to i32
  %mul640 = mul nsw i32 0, %conv639
  %146 = load i64, i64* %size.addr, align 8
  %conv641 = trunc i64 %146 to i16
  %conv642 = sext i16 %conv641 to i32
  %add643 = add nsw i32 %mul640, %conv642
  %mul644 = mul nsw i32 0, %add643
  %add645 = add nsw i32 %mul644, 0
  %neg646 = xor i32 %add645, -1
  %cmp647 = icmp eq i32 %neg646, -1
  %conv648 = zext i1 %cmp647 to i32
  %sub649 = sub nsw i32 0, %conv648
  %147 = load i64, i64* %format_bytes, align 8
  %conv650 = trunc i64 %147 to i16
  %conv651 = sext i16 %conv650 to i32
  %mul652 = mul nsw i32 0, %conv651
  %148 = load i64, i64* %size.addr, align 8
  %conv653 = trunc i64 %148 to i16
  %conv654 = sext i16 %conv653 to i32
  %add655 = add nsw i32 %mul652, %conv654
  %mul656 = mul nsw i32 0, %add655
  %add657 = add nsw i32 %mul656, 1
  %shl658 = shl i32 %add657, 30
  %sub659 = sub nsw i32 %shl658, 1
  %mul660 = mul nsw i32 %sub659, 2
  %add661 = add nsw i32 %mul660, 1
  %sub662 = sub nsw i32 %sub649, %add661
  br label %cond.end.672

cond.false.663:                                   ; preds = %cond.true.626
  %149 = load i64, i64* %format_bytes, align 8
  %conv664 = trunc i64 %149 to i16
  %conv665 = sext i16 %conv664 to i32
  %mul666 = mul nsw i32 0, %conv665
  %150 = load i64, i64* %size.addr, align 8
  %conv667 = trunc i64 %150 to i16
  %conv668 = sext i16 %conv667 to i32
  %add669 = add nsw i32 %mul666, %conv668
  %mul670 = mul nsw i32 0, %add669
  %add671 = add nsw i32 %mul670, 0
  br label %cond.end.672

cond.end.672:                                     ; preds = %cond.false.663, %cond.true.637
  %cond673 = phi i32 [ %sub662, %cond.true.637 ], [ %add671, %cond.false.663 ]
  %cmp674 = icmp eq i32 %cond673, 0
  br i1 %cmp674, label %land.lhs.true.676, label %lor.lhs.false.696

land.lhs.true.676:                                ; preds = %cond.end.672
  %151 = load i64, i64* %size.addr, align 8
  %conv677 = trunc i64 %151 to i16
  %conv678 = sext i16 %conv677 to i32
  %cmp679 = icmp slt i32 %conv678, 0
  br i1 %cmp679, label %land.lhs.true.681, label %lor.lhs.false.686

land.lhs.true.681:                                ; preds = %land.lhs.true.676
  %152 = load i64, i64* %format_bytes, align 8
  %conv682 = trunc i64 %152 to i16
  %conv683 = sext i16 %conv682 to i32
  %cmp684 = icmp slt i32 0, %conv683
  br i1 %cmp684, label %cond.true.943, label %lor.lhs.false.686

lor.lhs.false.686:                                ; preds = %land.lhs.true.681, %land.lhs.true.676
  %153 = load i64, i64* %format_bytes, align 8
  %conv687 = trunc i64 %153 to i16
  %conv688 = sext i16 %conv687 to i32
  %cmp689 = icmp slt i32 %conv688, 0
  br i1 %cmp689, label %land.lhs.true.691, label %lor.lhs.false.696

land.lhs.true.691:                                ; preds = %lor.lhs.false.686
  %154 = load i64, i64* %size.addr, align 8
  %conv692 = trunc i64 %154 to i16
  %conv693 = sext i16 %conv692 to i32
  %cmp694 = icmp slt i32 0, %conv693
  br i1 %cmp694, label %cond.true.943, label %lor.lhs.false.696

lor.lhs.false.696:                                ; preds = %land.lhs.true.691, %lor.lhs.false.686, %cond.end.672
  %155 = load i64, i64* %format_bytes, align 8
  %conv697 = trunc i64 %155 to i16
  %conv698 = sext i16 %conv697 to i32
  %cmp699 = icmp slt i32 %conv698, 0
  br i1 %cmp699, label %cond.true.701, label %cond.false.809

cond.true.701:                                    ; preds = %lor.lhs.false.696
  %156 = load i64, i64* %size.addr, align 8
  %conv702 = trunc i64 %156 to i16
  %conv703 = sext i16 %conv702 to i32
  %cmp704 = icmp slt i32 %conv703, 0
  br i1 %cmp704, label %cond.true.706, label %cond.false.748

cond.true.706:                                    ; preds = %cond.true.701
  %157 = load i64, i64* %size.addr, align 8
  %conv707 = trunc i64 %157 to i16
  %conv708 = sext i16 %conv707 to i32
  %158 = load i64, i64* %format_bytes, align 8
  %conv709 = trunc i64 %158 to i16
  %conv710 = sext i16 %conv709 to i32
  %mul711 = mul nsw i32 0, %conv710
  %159 = load i64, i64* %size.addr, align 8
  %conv712 = trunc i64 %159 to i16
  %conv713 = sext i16 %conv712 to i32
  %add714 = add nsw i32 %mul711, %conv713
  %mul715 = mul nsw i32 0, %add714
  %sub716 = sub nsw i32 %mul715, 1
  %cmp717 = icmp slt i32 %sub716, 0
  br i1 %cmp717, label %cond.true.719, label %cond.false.732

cond.true.719:                                    ; preds = %cond.true.706
  %160 = load i64, i64* %format_bytes, align 8
  %conv720 = trunc i64 %160 to i16
  %conv721 = sext i16 %conv720 to i32
  %mul722 = mul nsw i32 0, %conv721
  %161 = load i64, i64* %size.addr, align 8
  %conv723 = trunc i64 %161 to i16
  %conv724 = sext i16 %conv723 to i32
  %add725 = add nsw i32 %mul722, %conv724
  %mul726 = mul nsw i32 0, %add725
  %add727 = add nsw i32 %mul726, 1
  %shl728 = shl i32 %add727, 30
  %sub729 = sub nsw i32 %shl728, 1
  %mul730 = mul nsw i32 %sub729, 2
  %add731 = add nsw i32 %mul730, 1
  br label %cond.end.741

cond.false.732:                                   ; preds = %cond.true.706
  %162 = load i64, i64* %format_bytes, align 8
  %conv733 = trunc i64 %162 to i16
  %conv734 = sext i16 %conv733 to i32
  %mul735 = mul nsw i32 0, %conv734
  %163 = load i64, i64* %size.addr, align 8
  %conv736 = trunc i64 %163 to i16
  %conv737 = sext i16 %conv736 to i32
  %add738 = add nsw i32 %mul735, %conv737
  %mul739 = mul nsw i32 0, %add738
  %sub740 = sub nsw i32 %mul739, 1
  br label %cond.end.741

cond.end.741:                                     ; preds = %cond.false.732, %cond.true.719
  %cond742 = phi i32 [ %add731, %cond.true.719 ], [ %sub740, %cond.false.732 ]
  %164 = load i64, i64* %format_bytes, align 8
  %conv743 = trunc i64 %164 to i16
  %conv744 = sext i16 %conv743 to i32
  %div745 = sdiv i32 %cond742, %conv744
  %cmp746 = icmp slt i32 %conv708, %div745
  br i1 %cmp746, label %cond.true.943, label %lor.lhs.false.917

cond.false.748:                                   ; preds = %cond.true.701
  %165 = load i64, i64* %format_bytes, align 8
  %conv749 = trunc i64 %165 to i16
  %conv750 = sext i16 %conv749 to i32
  %cmp751 = icmp eq i32 %conv750, -1
  br i1 %cmp751, label %cond.true.753, label %cond.false.754

cond.true.753:                                    ; preds = %cond.false.748
  br i1 false, label %cond.true.943, label %lor.lhs.false.917

cond.false.754:                                   ; preds = %cond.false.748
  %166 = load i64, i64* %format_bytes, align 8
  %conv755 = trunc i64 %166 to i16
  %conv756 = sext i16 %conv755 to i32
  %mul757 = mul nsw i32 0, %conv756
  %167 = load i64, i64* %size.addr, align 8
  %conv758 = trunc i64 %167 to i16
  %conv759 = sext i16 %conv758 to i32
  %add760 = add nsw i32 %mul757, %conv759
  %mul761 = mul nsw i32 0, %add760
  %sub762 = sub nsw i32 %mul761, 1
  %cmp763 = icmp slt i32 %sub762, 0
  br i1 %cmp763, label %cond.true.765, label %cond.false.791

cond.true.765:                                    ; preds = %cond.false.754
  %168 = load i64, i64* %format_bytes, align 8
  %conv766 = trunc i64 %168 to i16
  %conv767 = sext i16 %conv766 to i32
  %mul768 = mul nsw i32 0, %conv767
  %169 = load i64, i64* %size.addr, align 8
  %conv769 = trunc i64 %169 to i16
  %conv770 = sext i16 %conv769 to i32
  %add771 = add nsw i32 %mul768, %conv770
  %mul772 = mul nsw i32 0, %add771
  %add773 = add nsw i32 %mul772, 0
  %neg774 = xor i32 %add773, -1
  %cmp775 = icmp eq i32 %neg774, -1
  %conv776 = zext i1 %cmp775 to i32
  %sub777 = sub nsw i32 0, %conv776
  %170 = load i64, i64* %format_bytes, align 8
  %conv778 = trunc i64 %170 to i16
  %conv779 = sext i16 %conv778 to i32
  %mul780 = mul nsw i32 0, %conv779
  %171 = load i64, i64* %size.addr, align 8
  %conv781 = trunc i64 %171 to i16
  %conv782 = sext i16 %conv781 to i32
  %add783 = add nsw i32 %mul780, %conv782
  %mul784 = mul nsw i32 0, %add783
  %add785 = add nsw i32 %mul784, 1
  %shl786 = shl i32 %add785, 30
  %sub787 = sub nsw i32 %shl786, 1
  %mul788 = mul nsw i32 %sub787, 2
  %add789 = add nsw i32 %mul788, 1
  %sub790 = sub nsw i32 %sub777, %add789
  br label %cond.end.800

cond.false.791:                                   ; preds = %cond.false.754
  %172 = load i64, i64* %format_bytes, align 8
  %conv792 = trunc i64 %172 to i16
  %conv793 = sext i16 %conv792 to i32
  %mul794 = mul nsw i32 0, %conv793
  %173 = load i64, i64* %size.addr, align 8
  %conv795 = trunc i64 %173 to i16
  %conv796 = sext i16 %conv795 to i32
  %add797 = add nsw i32 %mul794, %conv796
  %mul798 = mul nsw i32 0, %add797
  %add799 = add nsw i32 %mul798, 0
  br label %cond.end.800

cond.end.800:                                     ; preds = %cond.false.791, %cond.true.765
  %cond801 = phi i32 [ %sub790, %cond.true.765 ], [ %add799, %cond.false.791 ]
  %174 = load i64, i64* %format_bytes, align 8
  %conv802 = trunc i64 %174 to i16
  %conv803 = sext i16 %conv802 to i32
  %div804 = sdiv i32 %cond801, %conv803
  %175 = load i64, i64* %size.addr, align 8
  %conv805 = trunc i64 %175 to i16
  %conv806 = sext i16 %conv805 to i32
  %cmp807 = icmp slt i32 %div804, %conv806
  br i1 %cmp807, label %cond.true.943, label %lor.lhs.false.917

cond.false.809:                                   ; preds = %lor.lhs.false.696
  %176 = load i64, i64* %format_bytes, align 8
  %conv810 = trunc i64 %176 to i16
  %conv811 = sext i16 %conv810 to i32
  %cmp812 = icmp eq i32 %conv811, 0
  br i1 %cmp812, label %cond.true.814, label %cond.false.815

cond.true.814:                                    ; preds = %cond.false.809
  br i1 false, label %cond.true.943, label %lor.lhs.false.917

cond.false.815:                                   ; preds = %cond.false.809
  %177 = load i64, i64* %size.addr, align 8
  %conv816 = trunc i64 %177 to i16
  %conv817 = sext i16 %conv816 to i32
  %cmp818 = icmp slt i32 %conv817, 0
  br i1 %cmp818, label %cond.true.820, label %cond.false.875

cond.true.820:                                    ; preds = %cond.false.815
  %178 = load i64, i64* %size.addr, align 8
  %conv821 = trunc i64 %178 to i16
  %conv822 = sext i16 %conv821 to i32
  %179 = load i64, i64* %format_bytes, align 8
  %conv823 = trunc i64 %179 to i16
  %conv824 = sext i16 %conv823 to i32
  %mul825 = mul nsw i32 0, %conv824
  %180 = load i64, i64* %size.addr, align 8
  %conv826 = trunc i64 %180 to i16
  %conv827 = sext i16 %conv826 to i32
  %add828 = add nsw i32 %mul825, %conv827
  %mul829 = mul nsw i32 0, %add828
  %sub830 = sub nsw i32 %mul829, 1
  %cmp831 = icmp slt i32 %sub830, 0
  br i1 %cmp831, label %cond.true.833, label %cond.false.859

cond.true.833:                                    ; preds = %cond.true.820
  %181 = load i64, i64* %format_bytes, align 8
  %conv834 = trunc i64 %181 to i16
  %conv835 = sext i16 %conv834 to i32
  %mul836 = mul nsw i32 0, %conv835
  %182 = load i64, i64* %size.addr, align 8
  %conv837 = trunc i64 %182 to i16
  %conv838 = sext i16 %conv837 to i32
  %add839 = add nsw i32 %mul836, %conv838
  %mul840 = mul nsw i32 0, %add839
  %add841 = add nsw i32 %mul840, 0
  %neg842 = xor i32 %add841, -1
  %cmp843 = icmp eq i32 %neg842, -1
  %conv844 = zext i1 %cmp843 to i32
  %sub845 = sub nsw i32 0, %conv844
  %183 = load i64, i64* %format_bytes, align 8
  %conv846 = trunc i64 %183 to i16
  %conv847 = sext i16 %conv846 to i32
  %mul848 = mul nsw i32 0, %conv847
  %184 = load i64, i64* %size.addr, align 8
  %conv849 = trunc i64 %184 to i16
  %conv850 = sext i16 %conv849 to i32
  %add851 = add nsw i32 %mul848, %conv850
  %mul852 = mul nsw i32 0, %add851
  %add853 = add nsw i32 %mul852, 1
  %shl854 = shl i32 %add853, 30
  %sub855 = sub nsw i32 %shl854, 1
  %mul856 = mul nsw i32 %sub855, 2
  %add857 = add nsw i32 %mul856, 1
  %sub858 = sub nsw i32 %sub845, %add857
  br label %cond.end.868

cond.false.859:                                   ; preds = %cond.true.820
  %185 = load i64, i64* %format_bytes, align 8
  %conv860 = trunc i64 %185 to i16
  %conv861 = sext i16 %conv860 to i32
  %mul862 = mul nsw i32 0, %conv861
  %186 = load i64, i64* %size.addr, align 8
  %conv863 = trunc i64 %186 to i16
  %conv864 = sext i16 %conv863 to i32
  %add865 = add nsw i32 %mul862, %conv864
  %mul866 = mul nsw i32 0, %add865
  %add867 = add nsw i32 %mul866, 0
  br label %cond.end.868

cond.end.868:                                     ; preds = %cond.false.859, %cond.true.833
  %cond869 = phi i32 [ %sub858, %cond.true.833 ], [ %add867, %cond.false.859 ]
  %187 = load i64, i64* %format_bytes, align 8
  %conv870 = trunc i64 %187 to i16
  %conv871 = sext i16 %conv870 to i32
  %div872 = sdiv i32 %cond869, %conv871
  %cmp873 = icmp slt i32 %conv822, %div872
  br i1 %cmp873, label %cond.true.943, label %lor.lhs.false.917

cond.false.875:                                   ; preds = %cond.false.815
  %188 = load i64, i64* %format_bytes, align 8
  %conv876 = trunc i64 %188 to i16
  %conv877 = sext i16 %conv876 to i32
  %mul878 = mul nsw i32 0, %conv877
  %189 = load i64, i64* %size.addr, align 8
  %conv879 = trunc i64 %189 to i16
  %conv880 = sext i16 %conv879 to i32
  %add881 = add nsw i32 %mul878, %conv880
  %mul882 = mul nsw i32 0, %add881
  %sub883 = sub nsw i32 %mul882, 1
  %cmp884 = icmp slt i32 %sub883, 0
  br i1 %cmp884, label %cond.true.886, label %cond.false.899

cond.true.886:                                    ; preds = %cond.false.875
  %190 = load i64, i64* %format_bytes, align 8
  %conv887 = trunc i64 %190 to i16
  %conv888 = sext i16 %conv887 to i32
  %mul889 = mul nsw i32 0, %conv888
  %191 = load i64, i64* %size.addr, align 8
  %conv890 = trunc i64 %191 to i16
  %conv891 = sext i16 %conv890 to i32
  %add892 = add nsw i32 %mul889, %conv891
  %mul893 = mul nsw i32 0, %add892
  %add894 = add nsw i32 %mul893, 1
  %shl895 = shl i32 %add894, 30
  %sub896 = sub nsw i32 %shl895, 1
  %mul897 = mul nsw i32 %sub896, 2
  %add898 = add nsw i32 %mul897, 1
  br label %cond.end.908

cond.false.899:                                   ; preds = %cond.false.875
  %192 = load i64, i64* %format_bytes, align 8
  %conv900 = trunc i64 %192 to i16
  %conv901 = sext i16 %conv900 to i32
  %mul902 = mul nsw i32 0, %conv901
  %193 = load i64, i64* %size.addr, align 8
  %conv903 = trunc i64 %193 to i16
  %conv904 = sext i16 %conv903 to i32
  %add905 = add nsw i32 %mul902, %conv904
  %mul906 = mul nsw i32 0, %add905
  %sub907 = sub nsw i32 %mul906, 1
  br label %cond.end.908

cond.end.908:                                     ; preds = %cond.false.899, %cond.true.886
  %cond909 = phi i32 [ %add898, %cond.true.886 ], [ %sub907, %cond.false.899 ]
  %194 = load i64, i64* %format_bytes, align 8
  %conv910 = trunc i64 %194 to i16
  %conv911 = sext i16 %conv910 to i32
  %div912 = sdiv i32 %cond909, %conv911
  %195 = load i64, i64* %size.addr, align 8
  %conv913 = trunc i64 %195 to i16
  %conv914 = sext i16 %conv913 to i32
  %cmp915 = icmp slt i32 %div912, %conv914
  br i1 %cmp915, label %cond.true.943, label %lor.lhs.false.917

lor.lhs.false.917:                                ; preds = %cond.end.908, %cond.end.868, %cond.true.814, %cond.end.800, %cond.true.753, %cond.end.741
  %196 = load i64, i64* %size.addr, align 8
  %conv918 = trunc i64 %196 to i16
  %conv919 = sext i16 %conv918 to i32
  %197 = load i64, i64* %format_bytes, align 8
  %conv920 = trunc i64 %197 to i16
  %conv921 = sext i16 %conv920 to i32
  %mul922 = mul nsw i32 %conv919, %conv921
  %mul923 = mul nsw i32 0, %mul922
  %sub924 = sub nsw i32 %mul923, 1
  %cmp925 = icmp slt i32 %sub924, 0
  br i1 %cmp925, label %land.lhs.true.927, label %lor.lhs.false.935

land.lhs.true.927:                                ; preds = %lor.lhs.false.917
  %198 = load i64, i64* %size.addr, align 8
  %conv928 = trunc i64 %198 to i16
  %conv929 = sext i16 %conv928 to i32
  %199 = load i64, i64* %format_bytes, align 8
  %conv930 = trunc i64 %199 to i16
  %conv931 = sext i16 %conv930 to i32
  %mul932 = mul nsw i32 %conv929, %conv931
  %cmp933 = icmp slt i32 %mul932, -32768
  br i1 %cmp933, label %cond.true.943, label %lor.lhs.false.935

lor.lhs.false.935:                                ; preds = %land.lhs.true.927, %lor.lhs.false.917
  %200 = load i64, i64* %size.addr, align 8
  %conv936 = trunc i64 %200 to i16
  %conv937 = sext i16 %conv936 to i32
  %201 = load i64, i64* %format_bytes, align 8
  %conv938 = trunc i64 %201 to i16
  %conv939 = sext i16 %conv938 to i32
  %mul940 = mul nsw i32 %conv937, %conv939
  %cmp941 = icmp slt i32 32767, %mul940
  br i1 %cmp941, label %cond.true.943, label %cond.false.972

cond.true.943:                                    ; preds = %lor.lhs.false.935, %land.lhs.true.927, %cond.end.908, %cond.end.868, %cond.true.814, %cond.end.800, %cond.true.753, %cond.end.741, %land.lhs.true.691, %land.lhs.true.681
  %202 = load i64, i64* %size.addr, align 8
  %conv944 = trunc i64 %202 to i16
  %conv945 = zext i16 %conv944 to i32
  %203 = load i64, i64* %format_bytes, align 8
  %conv946 = trunc i64 %203 to i16
  %conv947 = zext i16 %conv946 to i32
  %mul948 = mul nsw i32 %conv945, %conv947
  %cmp949 = icmp sle i32 %mul948, 32767
  br i1 %cmp949, label %cond.true.951, label %cond.false.959

cond.true.951:                                    ; preds = %cond.true.943
  %204 = load i64, i64* %size.addr, align 8
  %conv952 = trunc i64 %204 to i16
  %conv953 = zext i16 %conv952 to i32
  %205 = load i64, i64* %format_bytes, align 8
  %conv954 = trunc i64 %205 to i16
  %conv955 = zext i16 %conv954 to i32
  %mul956 = mul nsw i32 %conv953, %conv955
  %conv957 = trunc i32 %mul956 to i16
  %conv958 = sext i16 %conv957 to i32
  br label %cond.end.969

cond.false.959:                                   ; preds = %cond.true.943
  %206 = load i64, i64* %size.addr, align 8
  %conv960 = trunc i64 %206 to i16
  %conv961 = zext i16 %conv960 to i32
  %207 = load i64, i64* %format_bytes, align 8
  %conv962 = trunc i64 %207 to i16
  %conv963 = zext i16 %conv962 to i32
  %mul964 = mul nsw i32 %conv961, %conv963
  %sub965 = sub nsw i32 %mul964, -32768
  %conv966 = trunc i32 %sub965 to i16
  %conv967 = sext i16 %conv966 to i32
  %add968 = add nsw i32 %conv967, -32768
  br label %cond.end.969

cond.end.969:                                     ; preds = %cond.false.959, %cond.true.951
  %cond970 = phi i32 [ %conv958, %cond.true.951 ], [ %add968, %cond.false.959 ]
  %conv971 = sext i32 %cond970 to i64
  store i64 %conv971, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.972:                                   ; preds = %lor.lhs.false.935
  %208 = load i64, i64* %size.addr, align 8
  %conv973 = trunc i64 %208 to i16
  %conv974 = zext i16 %conv973 to i32
  %209 = load i64, i64* %format_bytes, align 8
  %conv975 = trunc i64 %209 to i16
  %conv976 = zext i16 %conv975 to i32
  %mul977 = mul nsw i32 %conv974, %conv976
  %cmp978 = icmp sle i32 %mul977, 32767
  br i1 %cmp978, label %cond.true.980, label %cond.false.988

cond.true.980:                                    ; preds = %cond.false.972
  %210 = load i64, i64* %size.addr, align 8
  %conv981 = trunc i64 %210 to i16
  %conv982 = zext i16 %conv981 to i32
  %211 = load i64, i64* %format_bytes, align 8
  %conv983 = trunc i64 %211 to i16
  %conv984 = zext i16 %conv983 to i32
  %mul985 = mul nsw i32 %conv982, %conv984
  %conv986 = trunc i32 %mul985 to i16
  %conv987 = sext i16 %conv986 to i32
  br label %cond.end.998

cond.false.988:                                   ; preds = %cond.false.972
  %212 = load i64, i64* %size.addr, align 8
  %conv989 = trunc i64 %212 to i16
  %conv990 = zext i16 %conv989 to i32
  %213 = load i64, i64* %format_bytes, align 8
  %conv991 = trunc i64 %213 to i16
  %conv992 = zext i16 %conv991 to i32
  %mul993 = mul nsw i32 %conv990, %conv992
  %sub994 = sub nsw i32 %mul993, -32768
  %conv995 = trunc i32 %sub994 to i16
  %conv996 = sext i16 %conv995 to i32
  %add997 = add nsw i32 %conv996, -32768
  br label %cond.end.998

cond.end.998:                                     ; preds = %cond.false.988, %cond.true.980
  %cond999 = phi i32 [ %conv987, %cond.true.980 ], [ %add997, %cond.false.988 ]
  %conv1000 = sext i32 %cond999 to i64
  store i64 %conv1000, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.1001:                                  ; preds = %cond.true.625
  %214 = load i64, i64* %format_bytes, align 8
  %mul1002 = mul nsw i64 0, %214
  %215 = load i64, i64* %size.addr, align 8
  %add1003 = add i64 %mul1002, %215
  %mul1004 = mul i64 0, %add1003
  %sub1005 = sub i64 %mul1004, 1
  %cmp1006 = icmp ult i64 %sub1005, 0
  br i1 %cmp1006, label %cond.true.1008, label %cond.false.1027

cond.true.1008:                                   ; preds = %cond.false.1001
  %216 = load i64, i64* %format_bytes, align 8
  %mul1009 = mul nsw i64 0, %216
  %217 = load i64, i64* %size.addr, align 8
  %add1010 = add i64 %mul1009, %217
  %mul1011 = mul i64 0, %add1010
  %add1012 = add i64 %mul1011, 0
  %neg1013 = xor i64 %add1012, -1
  %cmp1014 = icmp eq i64 %neg1013, -1
  %conv1015 = zext i1 %cmp1014 to i32
  %sub1016 = sub nsw i32 0, %conv1015
  %conv1017 = sext i32 %sub1016 to i64
  %218 = load i64, i64* %format_bytes, align 8
  %mul1018 = mul nsw i64 0, %218
  %219 = load i64, i64* %size.addr, align 8
  %add1019 = add i64 %mul1018, %219
  %mul1020 = mul i64 0, %add1019
  %add1021 = add i64 %mul1020, 1
  %shl1022 = shl i64 %add1021, 62
  %sub1023 = sub i64 %shl1022, 1
  %mul1024 = mul i64 %sub1023, 2
  %add1025 = add i64 %mul1024, 1
  %sub1026 = sub i64 %conv1017, %add1025
  br label %cond.end.1032

cond.false.1027:                                  ; preds = %cond.false.1001
  %220 = load i64, i64* %format_bytes, align 8
  %mul1028 = mul nsw i64 0, %220
  %221 = load i64, i64* %size.addr, align 8
  %add1029 = add i64 %mul1028, %221
  %mul1030 = mul i64 0, %add1029
  %add1031 = add i64 %mul1030, 0
  br label %cond.end.1032

cond.end.1032:                                    ; preds = %cond.false.1027, %cond.true.1008
  %cond1033 = phi i64 [ %sub1026, %cond.true.1008 ], [ %add1031, %cond.false.1027 ]
  %cmp1034 = icmp eq i64 %cond1033, 0
  br i1 %cmp1034, label %land.lhs.true.1036, label %lor.lhs.false.1048

land.lhs.true.1036:                               ; preds = %cond.end.1032
  %222 = load i64, i64* %size.addr, align 8
  %cmp1037 = icmp ult i64 %222, 0
  br i1 %cmp1037, label %land.lhs.true.1039, label %lor.lhs.false.1042

land.lhs.true.1039:                               ; preds = %land.lhs.true.1036
  %223 = load i64, i64* %format_bytes, align 8
  %cmp1040 = icmp slt i64 0, %223
  br i1 %cmp1040, label %cond.true.1203, label %lor.lhs.false.1042

lor.lhs.false.1042:                               ; preds = %land.lhs.true.1039, %land.lhs.true.1036
  %224 = load i64, i64* %format_bytes, align 8
  %cmp1043 = icmp slt i64 %224, 0
  br i1 %cmp1043, label %land.lhs.true.1045, label %lor.lhs.false.1048

land.lhs.true.1045:                               ; preds = %lor.lhs.false.1042
  %225 = load i64, i64* %size.addr, align 8
  %cmp1046 = icmp ult i64 0, %225
  br i1 %cmp1046, label %cond.true.1203, label %lor.lhs.false.1048

lor.lhs.false.1048:                               ; preds = %land.lhs.true.1045, %lor.lhs.false.1042, %cond.end.1032
  %226 = load i64, i64* %format_bytes, align 8
  %cmp1049 = icmp slt i64 %226, 0
  br i1 %cmp1049, label %cond.true.1051, label %cond.false.1120

cond.true.1051:                                   ; preds = %lor.lhs.false.1048
  %227 = load i64, i64* %size.addr, align 8
  %cmp1052 = icmp ult i64 %227, 0
  br i1 %cmp1052, label %cond.true.1054, label %cond.false.1080

cond.true.1054:                                   ; preds = %cond.true.1051
  %228 = load i64, i64* %size.addr, align 8
  %229 = load i64, i64* %format_bytes, align 8
  %mul1055 = mul nsw i64 0, %229
  %230 = load i64, i64* %size.addr, align 8
  %add1056 = add i64 %mul1055, %230
  %mul1057 = mul i64 0, %add1056
  %sub1058 = sub i64 %mul1057, 1
  %cmp1059 = icmp ult i64 %sub1058, 0
  br i1 %cmp1059, label %cond.true.1061, label %cond.false.1070

cond.true.1061:                                   ; preds = %cond.true.1054
  %231 = load i64, i64* %format_bytes, align 8
  %mul1062 = mul nsw i64 0, %231
  %232 = load i64, i64* %size.addr, align 8
  %add1063 = add i64 %mul1062, %232
  %mul1064 = mul i64 0, %add1063
  %add1065 = add i64 %mul1064, 1
  %shl1066 = shl i64 %add1065, 62
  %sub1067 = sub i64 %shl1066, 1
  %mul1068 = mul i64 %sub1067, 2
  %add1069 = add i64 %mul1068, 1
  br label %cond.end.1075

cond.false.1070:                                  ; preds = %cond.true.1054
  %233 = load i64, i64* %format_bytes, align 8
  %mul1071 = mul nsw i64 0, %233
  %234 = load i64, i64* %size.addr, align 8
  %add1072 = add i64 %mul1071, %234
  %mul1073 = mul i64 0, %add1072
  %sub1074 = sub i64 %mul1073, 1
  br label %cond.end.1075

cond.end.1075:                                    ; preds = %cond.false.1070, %cond.true.1061
  %cond1076 = phi i64 [ %add1069, %cond.true.1061 ], [ %sub1074, %cond.false.1070 ]
  %235 = load i64, i64* %format_bytes, align 8
  %div1077 = udiv i64 %cond1076, %235
  %cmp1078 = icmp ult i64 %228, %div1077
  br i1 %cmp1078, label %cond.true.1203, label %lor.lhs.false.1189

cond.false.1080:                                  ; preds = %cond.true.1051
  %236 = load i64, i64* %format_bytes, align 8
  %cmp1081 = icmp eq i64 %236, -1
  br i1 %cmp1081, label %cond.true.1083, label %cond.false.1084

cond.true.1083:                                   ; preds = %cond.false.1080
  br i1 false, label %cond.true.1203, label %lor.lhs.false.1189

cond.false.1084:                                  ; preds = %cond.false.1080
  %237 = load i64, i64* %format_bytes, align 8
  %mul1085 = mul nsw i64 0, %237
  %238 = load i64, i64* %size.addr, align 8
  %add1086 = add i64 %mul1085, %238
  %mul1087 = mul i64 0, %add1086
  %sub1088 = sub i64 %mul1087, 1
  %cmp1089 = icmp ult i64 %sub1088, 0
  br i1 %cmp1089, label %cond.true.1091, label %cond.false.1110

cond.true.1091:                                   ; preds = %cond.false.1084
  %239 = load i64, i64* %format_bytes, align 8
  %mul1092 = mul nsw i64 0, %239
  %240 = load i64, i64* %size.addr, align 8
  %add1093 = add i64 %mul1092, %240
  %mul1094 = mul i64 0, %add1093
  %add1095 = add i64 %mul1094, 0
  %neg1096 = xor i64 %add1095, -1
  %cmp1097 = icmp eq i64 %neg1096, -1
  %conv1098 = zext i1 %cmp1097 to i32
  %sub1099 = sub nsw i32 0, %conv1098
  %conv1100 = sext i32 %sub1099 to i64
  %241 = load i64, i64* %format_bytes, align 8
  %mul1101 = mul nsw i64 0, %241
  %242 = load i64, i64* %size.addr, align 8
  %add1102 = add i64 %mul1101, %242
  %mul1103 = mul i64 0, %add1102
  %add1104 = add i64 %mul1103, 1
  %shl1105 = shl i64 %add1104, 62
  %sub1106 = sub i64 %shl1105, 1
  %mul1107 = mul i64 %sub1106, 2
  %add1108 = add i64 %mul1107, 1
  %sub1109 = sub i64 %conv1100, %add1108
  br label %cond.end.1115

cond.false.1110:                                  ; preds = %cond.false.1084
  %243 = load i64, i64* %format_bytes, align 8
  %mul1111 = mul nsw i64 0, %243
  %244 = load i64, i64* %size.addr, align 8
  %add1112 = add i64 %mul1111, %244
  %mul1113 = mul i64 0, %add1112
  %add1114 = add i64 %mul1113, 0
  br label %cond.end.1115

cond.end.1115:                                    ; preds = %cond.false.1110, %cond.true.1091
  %cond1116 = phi i64 [ %sub1109, %cond.true.1091 ], [ %add1114, %cond.false.1110 ]
  %245 = load i64, i64* %format_bytes, align 8
  %div1117 = udiv i64 %cond1116, %245
  %246 = load i64, i64* %size.addr, align 8
  %cmp1118 = icmp ult i64 %div1117, %246
  br i1 %cmp1118, label %cond.true.1203, label %lor.lhs.false.1189

cond.false.1120:                                  ; preds = %lor.lhs.false.1048
  %247 = load i64, i64* %format_bytes, align 8
  %cmp1121 = icmp eq i64 %247, 0
  br i1 %cmp1121, label %cond.true.1123, label %cond.false.1124

cond.true.1123:                                   ; preds = %cond.false.1120
  br i1 false, label %cond.true.1203, label %lor.lhs.false.1189

cond.false.1124:                                  ; preds = %cond.false.1120
  %248 = load i64, i64* %size.addr, align 8
  %cmp1125 = icmp ult i64 %248, 0
  br i1 %cmp1125, label %cond.true.1127, label %cond.false.1163

cond.true.1127:                                   ; preds = %cond.false.1124
  %249 = load i64, i64* %size.addr, align 8
  %250 = load i64, i64* %format_bytes, align 8
  %mul1128 = mul nsw i64 0, %250
  %251 = load i64, i64* %size.addr, align 8
  %add1129 = add i64 %mul1128, %251
  %mul1130 = mul i64 0, %add1129
  %sub1131 = sub i64 %mul1130, 1
  %cmp1132 = icmp ult i64 %sub1131, 0
  br i1 %cmp1132, label %cond.true.1134, label %cond.false.1153

cond.true.1134:                                   ; preds = %cond.true.1127
  %252 = load i64, i64* %format_bytes, align 8
  %mul1135 = mul nsw i64 0, %252
  %253 = load i64, i64* %size.addr, align 8
  %add1136 = add i64 %mul1135, %253
  %mul1137 = mul i64 0, %add1136
  %add1138 = add i64 %mul1137, 0
  %neg1139 = xor i64 %add1138, -1
  %cmp1140 = icmp eq i64 %neg1139, -1
  %conv1141 = zext i1 %cmp1140 to i32
  %sub1142 = sub nsw i32 0, %conv1141
  %conv1143 = sext i32 %sub1142 to i64
  %254 = load i64, i64* %format_bytes, align 8
  %mul1144 = mul nsw i64 0, %254
  %255 = load i64, i64* %size.addr, align 8
  %add1145 = add i64 %mul1144, %255
  %mul1146 = mul i64 0, %add1145
  %add1147 = add i64 %mul1146, 1
  %shl1148 = shl i64 %add1147, 62
  %sub1149 = sub i64 %shl1148, 1
  %mul1150 = mul i64 %sub1149, 2
  %add1151 = add i64 %mul1150, 1
  %sub1152 = sub i64 %conv1143, %add1151
  br label %cond.end.1158

cond.false.1153:                                  ; preds = %cond.true.1127
  %256 = load i64, i64* %format_bytes, align 8
  %mul1154 = mul nsw i64 0, %256
  %257 = load i64, i64* %size.addr, align 8
  %add1155 = add i64 %mul1154, %257
  %mul1156 = mul i64 0, %add1155
  %add1157 = add i64 %mul1156, 0
  br label %cond.end.1158

cond.end.1158:                                    ; preds = %cond.false.1153, %cond.true.1134
  %cond1159 = phi i64 [ %sub1152, %cond.true.1134 ], [ %add1157, %cond.false.1153 ]
  %258 = load i64, i64* %format_bytes, align 8
  %div1160 = udiv i64 %cond1159, %258
  %cmp1161 = icmp ult i64 %249, %div1160
  br i1 %cmp1161, label %cond.true.1203, label %lor.lhs.false.1189

cond.false.1163:                                  ; preds = %cond.false.1124
  %259 = load i64, i64* %format_bytes, align 8
  %mul1164 = mul nsw i64 0, %259
  %260 = load i64, i64* %size.addr, align 8
  %add1165 = add i64 %mul1164, %260
  %mul1166 = mul i64 0, %add1165
  %sub1167 = sub i64 %mul1166, 1
  %cmp1168 = icmp ult i64 %sub1167, 0
  br i1 %cmp1168, label %cond.true.1170, label %cond.false.1179

cond.true.1170:                                   ; preds = %cond.false.1163
  %261 = load i64, i64* %format_bytes, align 8
  %mul1171 = mul nsw i64 0, %261
  %262 = load i64, i64* %size.addr, align 8
  %add1172 = add i64 %mul1171, %262
  %mul1173 = mul i64 0, %add1172
  %add1174 = add i64 %mul1173, 1
  %shl1175 = shl i64 %add1174, 62
  %sub1176 = sub i64 %shl1175, 1
  %mul1177 = mul i64 %sub1176, 2
  %add1178 = add i64 %mul1177, 1
  br label %cond.end.1184

cond.false.1179:                                  ; preds = %cond.false.1163
  %263 = load i64, i64* %format_bytes, align 8
  %mul1180 = mul nsw i64 0, %263
  %264 = load i64, i64* %size.addr, align 8
  %add1181 = add i64 %mul1180, %264
  %mul1182 = mul i64 0, %add1181
  %sub1183 = sub i64 %mul1182, 1
  br label %cond.end.1184

cond.end.1184:                                    ; preds = %cond.false.1179, %cond.true.1170
  %cond1185 = phi i64 [ %add1178, %cond.true.1170 ], [ %sub1183, %cond.false.1179 ]
  %265 = load i64, i64* %format_bytes, align 8
  %div1186 = udiv i64 %cond1185, %265
  %266 = load i64, i64* %size.addr, align 8
  %cmp1187 = icmp ult i64 %div1186, %266
  br i1 %cmp1187, label %cond.true.1203, label %lor.lhs.false.1189

lor.lhs.false.1189:                               ; preds = %cond.end.1184, %cond.end.1158, %cond.true.1123, %cond.end.1115, %cond.true.1083, %cond.end.1075
  %267 = load i64, i64* %size.addr, align 8
  %268 = load i64, i64* %format_bytes, align 8
  %mul1190 = mul i64 %267, %268
  %mul1191 = mul i64 0, %mul1190
  %sub1192 = sub i64 %mul1191, 1
  %cmp1193 = icmp ult i64 %sub1192, 0
  br i1 %cmp1193, label %land.lhs.true.1195, label %lor.lhs.false.1199

land.lhs.true.1195:                               ; preds = %lor.lhs.false.1189
  %269 = load i64, i64* %size.addr, align 8
  %270 = load i64, i64* %format_bytes, align 8
  %mul1196 = mul i64 %269, %270
  %cmp1197 = icmp ult i64 %mul1196, -32768
  br i1 %cmp1197, label %cond.true.1203, label %lor.lhs.false.1199

lor.lhs.false.1199:                               ; preds = %land.lhs.true.1195, %lor.lhs.false.1189
  %271 = load i64, i64* %size.addr, align 8
  %272 = load i64, i64* %format_bytes, align 8
  %mul1200 = mul i64 %271, %272
  %cmp1201 = icmp ult i64 32767, %mul1200
  br i1 %cmp1201, label %cond.true.1203, label %cond.false.1232

cond.true.1203:                                   ; preds = %lor.lhs.false.1199, %land.lhs.true.1195, %cond.end.1184, %cond.end.1158, %cond.true.1123, %cond.end.1115, %cond.true.1083, %cond.end.1075, %land.lhs.true.1045, %land.lhs.true.1039
  %273 = load i64, i64* %size.addr, align 8
  %conv1204 = trunc i64 %273 to i16
  %conv1205 = zext i16 %conv1204 to i32
  %274 = load i64, i64* %format_bytes, align 8
  %conv1206 = trunc i64 %274 to i16
  %conv1207 = zext i16 %conv1206 to i32
  %mul1208 = mul nsw i32 %conv1205, %conv1207
  %cmp1209 = icmp sle i32 %mul1208, 32767
  br i1 %cmp1209, label %cond.true.1211, label %cond.false.1219

cond.true.1211:                                   ; preds = %cond.true.1203
  %275 = load i64, i64* %size.addr, align 8
  %conv1212 = trunc i64 %275 to i16
  %conv1213 = zext i16 %conv1212 to i32
  %276 = load i64, i64* %format_bytes, align 8
  %conv1214 = trunc i64 %276 to i16
  %conv1215 = zext i16 %conv1214 to i32
  %mul1216 = mul nsw i32 %conv1213, %conv1215
  %conv1217 = trunc i32 %mul1216 to i16
  %conv1218 = sext i16 %conv1217 to i32
  br label %cond.end.1229

cond.false.1219:                                  ; preds = %cond.true.1203
  %277 = load i64, i64* %size.addr, align 8
  %conv1220 = trunc i64 %277 to i16
  %conv1221 = zext i16 %conv1220 to i32
  %278 = load i64, i64* %format_bytes, align 8
  %conv1222 = trunc i64 %278 to i16
  %conv1223 = zext i16 %conv1222 to i32
  %mul1224 = mul nsw i32 %conv1221, %conv1223
  %sub1225 = sub nsw i32 %mul1224, -32768
  %conv1226 = trunc i32 %sub1225 to i16
  %conv1227 = sext i16 %conv1226 to i32
  %add1228 = add nsw i32 %conv1227, -32768
  br label %cond.end.1229

cond.end.1229:                                    ; preds = %cond.false.1219, %cond.true.1211
  %cond1230 = phi i32 [ %conv1218, %cond.true.1211 ], [ %add1228, %cond.false.1219 ]
  %conv1231 = sext i32 %cond1230 to i64
  store i64 %conv1231, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.1232:                                  ; preds = %lor.lhs.false.1199
  %279 = load i64, i64* %size.addr, align 8
  %conv1233 = trunc i64 %279 to i16
  %conv1234 = zext i16 %conv1233 to i32
  %280 = load i64, i64* %format_bytes, align 8
  %conv1235 = trunc i64 %280 to i16
  %conv1236 = zext i16 %conv1235 to i32
  %mul1237 = mul nsw i32 %conv1234, %conv1236
  %cmp1238 = icmp sle i32 %mul1237, 32767
  br i1 %cmp1238, label %cond.true.1240, label %cond.false.1248

cond.true.1240:                                   ; preds = %cond.false.1232
  %281 = load i64, i64* %size.addr, align 8
  %conv1241 = trunc i64 %281 to i16
  %conv1242 = zext i16 %conv1241 to i32
  %282 = load i64, i64* %format_bytes, align 8
  %conv1243 = trunc i64 %282 to i16
  %conv1244 = zext i16 %conv1243 to i32
  %mul1245 = mul nsw i32 %conv1242, %conv1244
  %conv1246 = trunc i32 %mul1245 to i16
  %conv1247 = sext i16 %conv1246 to i32
  br label %cond.end.1258

cond.false.1248:                                  ; preds = %cond.false.1232
  %283 = load i64, i64* %size.addr, align 8
  %conv1249 = trunc i64 %283 to i16
  %conv1250 = zext i16 %conv1249 to i32
  %284 = load i64, i64* %format_bytes, align 8
  %conv1251 = trunc i64 %284 to i16
  %conv1252 = zext i16 %conv1251 to i32
  %mul1253 = mul nsw i32 %conv1250, %conv1252
  %sub1254 = sub nsw i32 %mul1253, -32768
  %conv1255 = trunc i32 %sub1254 to i16
  %conv1256 = sext i16 %conv1255 to i32
  %add1257 = add nsw i32 %conv1256, -32768
  br label %cond.end.1258

cond.end.1258:                                    ; preds = %cond.false.1248, %cond.true.1240
  %cond1259 = phi i32 [ %conv1247, %cond.true.1240 ], [ %add1257, %cond.false.1248 ]
  %conv1260 = sext i32 %cond1259 to i64
  store i64 %conv1260, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.1261:                                  ; preds = %cond.false.624
  br i1 false, label %cond.true.1262, label %cond.false.1799

cond.true.1262:                                   ; preds = %cond.false.1261
  br i1 false, label %cond.true.1263, label %cond.false.1559

cond.true.1263:                                   ; preds = %cond.true.1262
  %285 = load i64, i64* %format_bytes, align 8
  %conv1264 = trunc i64 %285 to i32
  %mul1265 = mul nsw i32 0, %conv1264
  %286 = load i64, i64* %size.addr, align 8
  %conv1266 = trunc i64 %286 to i32
  %add1267 = add nsw i32 %mul1265, %conv1266
  %mul1268 = mul nsw i32 0, %add1267
  %sub1269 = sub nsw i32 %mul1268, 1
  %cmp1270 = icmp slt i32 %sub1269, 0
  br i1 %cmp1270, label %cond.true.1272, label %cond.false.1294

cond.true.1272:                                   ; preds = %cond.true.1263
  %287 = load i64, i64* %format_bytes, align 8
  %conv1273 = trunc i64 %287 to i32
  %mul1274 = mul nsw i32 0, %conv1273
  %288 = load i64, i64* %size.addr, align 8
  %conv1275 = trunc i64 %288 to i32
  %add1276 = add nsw i32 %mul1274, %conv1275
  %mul1277 = mul nsw i32 0, %add1276
  %add1278 = add nsw i32 %mul1277, 0
  %neg1279 = xor i32 %add1278, -1
  %cmp1280 = icmp eq i32 %neg1279, -1
  %conv1281 = zext i1 %cmp1280 to i32
  %sub1282 = sub nsw i32 0, %conv1281
  %289 = load i64, i64* %format_bytes, align 8
  %conv1283 = trunc i64 %289 to i32
  %mul1284 = mul nsw i32 0, %conv1283
  %290 = load i64, i64* %size.addr, align 8
  %conv1285 = trunc i64 %290 to i32
  %add1286 = add nsw i32 %mul1284, %conv1285
  %mul1287 = mul nsw i32 0, %add1286
  %add1288 = add nsw i32 %mul1287, 1
  %shl1289 = shl i32 %add1288, 30
  %sub1290 = sub nsw i32 %shl1289, 1
  %mul1291 = mul nsw i32 %sub1290, 2
  %add1292 = add nsw i32 %mul1291, 1
  %sub1293 = sub nsw i32 %sub1282, %add1292
  br label %cond.end.1301

cond.false.1294:                                  ; preds = %cond.true.1263
  %291 = load i64, i64* %format_bytes, align 8
  %conv1295 = trunc i64 %291 to i32
  %mul1296 = mul nsw i32 0, %conv1295
  %292 = load i64, i64* %size.addr, align 8
  %conv1297 = trunc i64 %292 to i32
  %add1298 = add nsw i32 %mul1296, %conv1297
  %mul1299 = mul nsw i32 0, %add1298
  %add1300 = add nsw i32 %mul1299, 0
  br label %cond.end.1301

cond.end.1301:                                    ; preds = %cond.false.1294, %cond.true.1272
  %cond1302 = phi i32 [ %sub1293, %cond.true.1272 ], [ %add1300, %cond.false.1294 ]
  %cmp1303 = icmp eq i32 %cond1302, 0
  br i1 %cmp1303, label %land.lhs.true.1305, label %lor.lhs.false.1321

land.lhs.true.1305:                               ; preds = %cond.end.1301
  %293 = load i64, i64* %size.addr, align 8
  %conv1306 = trunc i64 %293 to i32
  %cmp1307 = icmp slt i32 %conv1306, 0
  br i1 %cmp1307, label %land.lhs.true.1309, label %lor.lhs.false.1313

land.lhs.true.1309:                               ; preds = %land.lhs.true.1305
  %294 = load i64, i64* %format_bytes, align 8
  %conv1310 = trunc i64 %294 to i32
  %cmp1311 = icmp slt i32 0, %conv1310
  br i1 %cmp1311, label %cond.true.1521, label %lor.lhs.false.1313

lor.lhs.false.1313:                               ; preds = %land.lhs.true.1309, %land.lhs.true.1305
  %295 = load i64, i64* %format_bytes, align 8
  %conv1314 = trunc i64 %295 to i32
  %cmp1315 = icmp slt i32 %conv1314, 0
  br i1 %cmp1315, label %land.lhs.true.1317, label %lor.lhs.false.1321

land.lhs.true.1317:                               ; preds = %lor.lhs.false.1313
  %296 = load i64, i64* %size.addr, align 8
  %conv1318 = trunc i64 %296 to i32
  %cmp1319 = icmp slt i32 0, %conv1318
  br i1 %cmp1319, label %cond.true.1521, label %lor.lhs.false.1321

lor.lhs.false.1321:                               ; preds = %land.lhs.true.1317, %lor.lhs.false.1313, %cond.end.1301
  %297 = load i64, i64* %format_bytes, align 8
  %conv1322 = trunc i64 %297 to i32
  %cmp1323 = icmp slt i32 %conv1322, 0
  br i1 %cmp1323, label %cond.true.1325, label %cond.false.1413

cond.true.1325:                                   ; preds = %lor.lhs.false.1321
  %298 = load i64, i64* %size.addr, align 8
  %conv1326 = trunc i64 %298 to i32
  %cmp1327 = icmp slt i32 %conv1326, 0
  br i1 %cmp1327, label %cond.true.1329, label %cond.false.1363

cond.true.1329:                                   ; preds = %cond.true.1325
  %299 = load i64, i64* %size.addr, align 8
  %conv1330 = trunc i64 %299 to i32
  %300 = load i64, i64* %format_bytes, align 8
  %conv1331 = trunc i64 %300 to i32
  %mul1332 = mul nsw i32 0, %conv1331
  %301 = load i64, i64* %size.addr, align 8
  %conv1333 = trunc i64 %301 to i32
  %add1334 = add nsw i32 %mul1332, %conv1333
  %mul1335 = mul nsw i32 0, %add1334
  %sub1336 = sub nsw i32 %mul1335, 1
  %cmp1337 = icmp slt i32 %sub1336, 0
  br i1 %cmp1337, label %cond.true.1339, label %cond.false.1350

cond.true.1339:                                   ; preds = %cond.true.1329
  %302 = load i64, i64* %format_bytes, align 8
  %conv1340 = trunc i64 %302 to i32
  %mul1341 = mul nsw i32 0, %conv1340
  %303 = load i64, i64* %size.addr, align 8
  %conv1342 = trunc i64 %303 to i32
  %add1343 = add nsw i32 %mul1341, %conv1342
  %mul1344 = mul nsw i32 0, %add1343
  %add1345 = add nsw i32 %mul1344, 1
  %shl1346 = shl i32 %add1345, 30
  %sub1347 = sub nsw i32 %shl1346, 1
  %mul1348 = mul nsw i32 %sub1347, 2
  %add1349 = add nsw i32 %mul1348, 1
  br label %cond.end.1357

cond.false.1350:                                  ; preds = %cond.true.1329
  %304 = load i64, i64* %format_bytes, align 8
  %conv1351 = trunc i64 %304 to i32
  %mul1352 = mul nsw i32 0, %conv1351
  %305 = load i64, i64* %size.addr, align 8
  %conv1353 = trunc i64 %305 to i32
  %add1354 = add nsw i32 %mul1352, %conv1353
  %mul1355 = mul nsw i32 0, %add1354
  %sub1356 = sub nsw i32 %mul1355, 1
  br label %cond.end.1357

cond.end.1357:                                    ; preds = %cond.false.1350, %cond.true.1339
  %cond1358 = phi i32 [ %add1349, %cond.true.1339 ], [ %sub1356, %cond.false.1350 ]
  %306 = load i64, i64* %format_bytes, align 8
  %conv1359 = trunc i64 %306 to i32
  %div1360 = sdiv i32 %cond1358, %conv1359
  %cmp1361 = icmp slt i32 %conv1330, %div1360
  br i1 %cmp1361, label %cond.true.1521, label %lor.lhs.false.1501

cond.false.1363:                                  ; preds = %cond.true.1325
  %307 = load i64, i64* %format_bytes, align 8
  %conv1364 = trunc i64 %307 to i32
  %cmp1365 = icmp eq i32 %conv1364, -1
  br i1 %cmp1365, label %cond.true.1367, label %cond.false.1368

cond.true.1367:                                   ; preds = %cond.false.1363
  br i1 false, label %cond.true.1521, label %lor.lhs.false.1501

cond.false.1368:                                  ; preds = %cond.false.1363
  %308 = load i64, i64* %format_bytes, align 8
  %conv1369 = trunc i64 %308 to i32
  %mul1370 = mul nsw i32 0, %conv1369
  %309 = load i64, i64* %size.addr, align 8
  %conv1371 = trunc i64 %309 to i32
  %add1372 = add nsw i32 %mul1370, %conv1371
  %mul1373 = mul nsw i32 0, %add1372
  %sub1374 = sub nsw i32 %mul1373, 1
  %cmp1375 = icmp slt i32 %sub1374, 0
  br i1 %cmp1375, label %cond.true.1377, label %cond.false.1399

cond.true.1377:                                   ; preds = %cond.false.1368
  %310 = load i64, i64* %format_bytes, align 8
  %conv1378 = trunc i64 %310 to i32
  %mul1379 = mul nsw i32 0, %conv1378
  %311 = load i64, i64* %size.addr, align 8
  %conv1380 = trunc i64 %311 to i32
  %add1381 = add nsw i32 %mul1379, %conv1380
  %mul1382 = mul nsw i32 0, %add1381
  %add1383 = add nsw i32 %mul1382, 0
  %neg1384 = xor i32 %add1383, -1
  %cmp1385 = icmp eq i32 %neg1384, -1
  %conv1386 = zext i1 %cmp1385 to i32
  %sub1387 = sub nsw i32 0, %conv1386
  %312 = load i64, i64* %format_bytes, align 8
  %conv1388 = trunc i64 %312 to i32
  %mul1389 = mul nsw i32 0, %conv1388
  %313 = load i64, i64* %size.addr, align 8
  %conv1390 = trunc i64 %313 to i32
  %add1391 = add nsw i32 %mul1389, %conv1390
  %mul1392 = mul nsw i32 0, %add1391
  %add1393 = add nsw i32 %mul1392, 1
  %shl1394 = shl i32 %add1393, 30
  %sub1395 = sub nsw i32 %shl1394, 1
  %mul1396 = mul nsw i32 %sub1395, 2
  %add1397 = add nsw i32 %mul1396, 1
  %sub1398 = sub nsw i32 %sub1387, %add1397
  br label %cond.end.1406

cond.false.1399:                                  ; preds = %cond.false.1368
  %314 = load i64, i64* %format_bytes, align 8
  %conv1400 = trunc i64 %314 to i32
  %mul1401 = mul nsw i32 0, %conv1400
  %315 = load i64, i64* %size.addr, align 8
  %conv1402 = trunc i64 %315 to i32
  %add1403 = add nsw i32 %mul1401, %conv1402
  %mul1404 = mul nsw i32 0, %add1403
  %add1405 = add nsw i32 %mul1404, 0
  br label %cond.end.1406

cond.end.1406:                                    ; preds = %cond.false.1399, %cond.true.1377
  %cond1407 = phi i32 [ %sub1398, %cond.true.1377 ], [ %add1405, %cond.false.1399 ]
  %316 = load i64, i64* %format_bytes, align 8
  %conv1408 = trunc i64 %316 to i32
  %div1409 = sdiv i32 %cond1407, %conv1408
  %317 = load i64, i64* %size.addr, align 8
  %conv1410 = trunc i64 %317 to i32
  %cmp1411 = icmp slt i32 %div1409, %conv1410
  br i1 %cmp1411, label %cond.true.1521, label %lor.lhs.false.1501

cond.false.1413:                                  ; preds = %lor.lhs.false.1321
  %318 = load i64, i64* %format_bytes, align 8
  %conv1414 = trunc i64 %318 to i32
  %cmp1415 = icmp eq i32 %conv1414, 0
  br i1 %cmp1415, label %cond.true.1417, label %cond.false.1418

cond.true.1417:                                   ; preds = %cond.false.1413
  br i1 false, label %cond.true.1521, label %lor.lhs.false.1501

cond.false.1418:                                  ; preds = %cond.false.1413
  %319 = load i64, i64* %size.addr, align 8
  %conv1419 = trunc i64 %319 to i32
  %cmp1420 = icmp slt i32 %conv1419, 0
  br i1 %cmp1420, label %cond.true.1422, label %cond.false.1467

cond.true.1422:                                   ; preds = %cond.false.1418
  %320 = load i64, i64* %size.addr, align 8
  %conv1423 = trunc i64 %320 to i32
  %321 = load i64, i64* %format_bytes, align 8
  %conv1424 = trunc i64 %321 to i32
  %mul1425 = mul nsw i32 0, %conv1424
  %322 = load i64, i64* %size.addr, align 8
  %conv1426 = trunc i64 %322 to i32
  %add1427 = add nsw i32 %mul1425, %conv1426
  %mul1428 = mul nsw i32 0, %add1427
  %sub1429 = sub nsw i32 %mul1428, 1
  %cmp1430 = icmp slt i32 %sub1429, 0
  br i1 %cmp1430, label %cond.true.1432, label %cond.false.1454

cond.true.1432:                                   ; preds = %cond.true.1422
  %323 = load i64, i64* %format_bytes, align 8
  %conv1433 = trunc i64 %323 to i32
  %mul1434 = mul nsw i32 0, %conv1433
  %324 = load i64, i64* %size.addr, align 8
  %conv1435 = trunc i64 %324 to i32
  %add1436 = add nsw i32 %mul1434, %conv1435
  %mul1437 = mul nsw i32 0, %add1436
  %add1438 = add nsw i32 %mul1437, 0
  %neg1439 = xor i32 %add1438, -1
  %cmp1440 = icmp eq i32 %neg1439, -1
  %conv1441 = zext i1 %cmp1440 to i32
  %sub1442 = sub nsw i32 0, %conv1441
  %325 = load i64, i64* %format_bytes, align 8
  %conv1443 = trunc i64 %325 to i32
  %mul1444 = mul nsw i32 0, %conv1443
  %326 = load i64, i64* %size.addr, align 8
  %conv1445 = trunc i64 %326 to i32
  %add1446 = add nsw i32 %mul1444, %conv1445
  %mul1447 = mul nsw i32 0, %add1446
  %add1448 = add nsw i32 %mul1447, 1
  %shl1449 = shl i32 %add1448, 30
  %sub1450 = sub nsw i32 %shl1449, 1
  %mul1451 = mul nsw i32 %sub1450, 2
  %add1452 = add nsw i32 %mul1451, 1
  %sub1453 = sub nsw i32 %sub1442, %add1452
  br label %cond.end.1461

cond.false.1454:                                  ; preds = %cond.true.1422
  %327 = load i64, i64* %format_bytes, align 8
  %conv1455 = trunc i64 %327 to i32
  %mul1456 = mul nsw i32 0, %conv1455
  %328 = load i64, i64* %size.addr, align 8
  %conv1457 = trunc i64 %328 to i32
  %add1458 = add nsw i32 %mul1456, %conv1457
  %mul1459 = mul nsw i32 0, %add1458
  %add1460 = add nsw i32 %mul1459, 0
  br label %cond.end.1461

cond.end.1461:                                    ; preds = %cond.false.1454, %cond.true.1432
  %cond1462 = phi i32 [ %sub1453, %cond.true.1432 ], [ %add1460, %cond.false.1454 ]
  %329 = load i64, i64* %format_bytes, align 8
  %conv1463 = trunc i64 %329 to i32
  %div1464 = sdiv i32 %cond1462, %conv1463
  %cmp1465 = icmp slt i32 %conv1423, %div1464
  br i1 %cmp1465, label %cond.true.1521, label %lor.lhs.false.1501

cond.false.1467:                                  ; preds = %cond.false.1418
  %330 = load i64, i64* %format_bytes, align 8
  %conv1468 = trunc i64 %330 to i32
  %mul1469 = mul nsw i32 0, %conv1468
  %331 = load i64, i64* %size.addr, align 8
  %conv1470 = trunc i64 %331 to i32
  %add1471 = add nsw i32 %mul1469, %conv1470
  %mul1472 = mul nsw i32 0, %add1471
  %sub1473 = sub nsw i32 %mul1472, 1
  %cmp1474 = icmp slt i32 %sub1473, 0
  br i1 %cmp1474, label %cond.true.1476, label %cond.false.1487

cond.true.1476:                                   ; preds = %cond.false.1467
  %332 = load i64, i64* %format_bytes, align 8
  %conv1477 = trunc i64 %332 to i32
  %mul1478 = mul nsw i32 0, %conv1477
  %333 = load i64, i64* %size.addr, align 8
  %conv1479 = trunc i64 %333 to i32
  %add1480 = add nsw i32 %mul1478, %conv1479
  %mul1481 = mul nsw i32 0, %add1480
  %add1482 = add nsw i32 %mul1481, 1
  %shl1483 = shl i32 %add1482, 30
  %sub1484 = sub nsw i32 %shl1483, 1
  %mul1485 = mul nsw i32 %sub1484, 2
  %add1486 = add nsw i32 %mul1485, 1
  br label %cond.end.1494

cond.false.1487:                                  ; preds = %cond.false.1467
  %334 = load i64, i64* %format_bytes, align 8
  %conv1488 = trunc i64 %334 to i32
  %mul1489 = mul nsw i32 0, %conv1488
  %335 = load i64, i64* %size.addr, align 8
  %conv1490 = trunc i64 %335 to i32
  %add1491 = add nsw i32 %mul1489, %conv1490
  %mul1492 = mul nsw i32 0, %add1491
  %sub1493 = sub nsw i32 %mul1492, 1
  br label %cond.end.1494

cond.end.1494:                                    ; preds = %cond.false.1487, %cond.true.1476
  %cond1495 = phi i32 [ %add1486, %cond.true.1476 ], [ %sub1493, %cond.false.1487 ]
  %336 = load i64, i64* %format_bytes, align 8
  %conv1496 = trunc i64 %336 to i32
  %div1497 = sdiv i32 %cond1495, %conv1496
  %337 = load i64, i64* %size.addr, align 8
  %conv1498 = trunc i64 %337 to i32
  %cmp1499 = icmp slt i32 %div1497, %conv1498
  br i1 %cmp1499, label %cond.true.1521, label %lor.lhs.false.1501

lor.lhs.false.1501:                               ; preds = %cond.end.1494, %cond.end.1461, %cond.true.1417, %cond.end.1406, %cond.true.1367, %cond.end.1357
  %338 = load i64, i64* %size.addr, align 8
  %conv1502 = trunc i64 %338 to i32
  %339 = load i64, i64* %format_bytes, align 8
  %conv1503 = trunc i64 %339 to i32
  %mul1504 = mul nsw i32 %conv1502, %conv1503
  %mul1505 = mul nsw i32 0, %mul1504
  %sub1506 = sub nsw i32 %mul1505, 1
  %cmp1507 = icmp slt i32 %sub1506, 0
  br i1 %cmp1507, label %land.lhs.true.1509, label %lor.lhs.false.1515

land.lhs.true.1509:                               ; preds = %lor.lhs.false.1501
  %340 = load i64, i64* %size.addr, align 8
  %conv1510 = trunc i64 %340 to i32
  %341 = load i64, i64* %format_bytes, align 8
  %conv1511 = trunc i64 %341 to i32
  %mul1512 = mul nsw i32 %conv1510, %conv1511
  %cmp1513 = icmp slt i32 %mul1512, -2147483648
  br i1 %cmp1513, label %cond.true.1521, label %lor.lhs.false.1515

lor.lhs.false.1515:                               ; preds = %land.lhs.true.1509, %lor.lhs.false.1501
  %342 = load i64, i64* %size.addr, align 8
  %conv1516 = trunc i64 %342 to i32
  %343 = load i64, i64* %format_bytes, align 8
  %conv1517 = trunc i64 %343 to i32
  %mul1518 = mul nsw i32 %conv1516, %conv1517
  %cmp1519 = icmp slt i32 2147483647, %mul1518
  br i1 %cmp1519, label %cond.true.1521, label %cond.false.1540

cond.true.1521:                                   ; preds = %lor.lhs.false.1515, %land.lhs.true.1509, %cond.end.1494, %cond.end.1461, %cond.true.1417, %cond.end.1406, %cond.true.1367, %cond.end.1357, %land.lhs.true.1317, %land.lhs.true.1309
  %344 = load i64, i64* %size.addr, align 8
  %conv1522 = trunc i64 %344 to i32
  %345 = load i64, i64* %format_bytes, align 8
  %conv1523 = trunc i64 %345 to i32
  %mul1524 = mul i32 %conv1522, %conv1523
  %cmp1525 = icmp ule i32 %mul1524, 2147483647
  br i1 %cmp1525, label %cond.true.1527, label %cond.false.1531

cond.true.1527:                                   ; preds = %cond.true.1521
  %346 = load i64, i64* %size.addr, align 8
  %conv1528 = trunc i64 %346 to i32
  %347 = load i64, i64* %format_bytes, align 8
  %conv1529 = trunc i64 %347 to i32
  %mul1530 = mul i32 %conv1528, %conv1529
  br label %cond.end.1537

cond.false.1531:                                  ; preds = %cond.true.1521
  %348 = load i64, i64* %size.addr, align 8
  %conv1532 = trunc i64 %348 to i32
  %349 = load i64, i64* %format_bytes, align 8
  %conv1533 = trunc i64 %349 to i32
  %mul1534 = mul i32 %conv1532, %conv1533
  %sub1535 = sub i32 %mul1534, -2147483648
  %add1536 = add nsw i32 %sub1535, -2147483648
  br label %cond.end.1537

cond.end.1537:                                    ; preds = %cond.false.1531, %cond.true.1527
  %cond1538 = phi i32 [ %mul1530, %cond.true.1527 ], [ %add1536, %cond.false.1531 ]
  %conv1539 = sext i32 %cond1538 to i64
  store i64 %conv1539, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.1540:                                  ; preds = %lor.lhs.false.1515
  %350 = load i64, i64* %size.addr, align 8
  %conv1541 = trunc i64 %350 to i32
  %351 = load i64, i64* %format_bytes, align 8
  %conv1542 = trunc i64 %351 to i32
  %mul1543 = mul i32 %conv1541, %conv1542
  %cmp1544 = icmp ule i32 %mul1543, 2147483647
  br i1 %cmp1544, label %cond.true.1546, label %cond.false.1550

cond.true.1546:                                   ; preds = %cond.false.1540
  %352 = load i64, i64* %size.addr, align 8
  %conv1547 = trunc i64 %352 to i32
  %353 = load i64, i64* %format_bytes, align 8
  %conv1548 = trunc i64 %353 to i32
  %mul1549 = mul i32 %conv1547, %conv1548
  br label %cond.end.1556

cond.false.1550:                                  ; preds = %cond.false.1540
  %354 = load i64, i64* %size.addr, align 8
  %conv1551 = trunc i64 %354 to i32
  %355 = load i64, i64* %format_bytes, align 8
  %conv1552 = trunc i64 %355 to i32
  %mul1553 = mul i32 %conv1551, %conv1552
  %sub1554 = sub i32 %mul1553, -2147483648
  %add1555 = add nsw i32 %sub1554, -2147483648
  br label %cond.end.1556

cond.end.1556:                                    ; preds = %cond.false.1550, %cond.true.1546
  %cond1557 = phi i32 [ %mul1549, %cond.true.1546 ], [ %add1555, %cond.false.1550 ]
  %conv1558 = sext i32 %cond1557 to i64
  store i64 %conv1558, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.1559:                                  ; preds = %cond.true.1262
  %356 = load i64, i64* %format_bytes, align 8
  %mul1560 = mul nsw i64 0, %356
  %357 = load i64, i64* %size.addr, align 8
  %add1561 = add i64 %mul1560, %357
  %mul1562 = mul i64 0, %add1561
  %sub1563 = sub i64 %mul1562, 1
  %cmp1564 = icmp ult i64 %sub1563, 0
  br i1 %cmp1564, label %cond.true.1566, label %cond.false.1585

cond.true.1566:                                   ; preds = %cond.false.1559
  %358 = load i64, i64* %format_bytes, align 8
  %mul1567 = mul nsw i64 0, %358
  %359 = load i64, i64* %size.addr, align 8
  %add1568 = add i64 %mul1567, %359
  %mul1569 = mul i64 0, %add1568
  %add1570 = add i64 %mul1569, 0
  %neg1571 = xor i64 %add1570, -1
  %cmp1572 = icmp eq i64 %neg1571, -1
  %conv1573 = zext i1 %cmp1572 to i32
  %sub1574 = sub nsw i32 0, %conv1573
  %conv1575 = sext i32 %sub1574 to i64
  %360 = load i64, i64* %format_bytes, align 8
  %mul1576 = mul nsw i64 0, %360
  %361 = load i64, i64* %size.addr, align 8
  %add1577 = add i64 %mul1576, %361
  %mul1578 = mul i64 0, %add1577
  %add1579 = add i64 %mul1578, 1
  %shl1580 = shl i64 %add1579, 62
  %sub1581 = sub i64 %shl1580, 1
  %mul1582 = mul i64 %sub1581, 2
  %add1583 = add i64 %mul1582, 1
  %sub1584 = sub i64 %conv1575, %add1583
  br label %cond.end.1590

cond.false.1585:                                  ; preds = %cond.false.1559
  %362 = load i64, i64* %format_bytes, align 8
  %mul1586 = mul nsw i64 0, %362
  %363 = load i64, i64* %size.addr, align 8
  %add1587 = add i64 %mul1586, %363
  %mul1588 = mul i64 0, %add1587
  %add1589 = add i64 %mul1588, 0
  br label %cond.end.1590

cond.end.1590:                                    ; preds = %cond.false.1585, %cond.true.1566
  %cond1591 = phi i64 [ %sub1584, %cond.true.1566 ], [ %add1589, %cond.false.1585 ]
  %cmp1592 = icmp eq i64 %cond1591, 0
  br i1 %cmp1592, label %land.lhs.true.1594, label %lor.lhs.false.1606

land.lhs.true.1594:                               ; preds = %cond.end.1590
  %364 = load i64, i64* %size.addr, align 8
  %cmp1595 = icmp ult i64 %364, 0
  br i1 %cmp1595, label %land.lhs.true.1597, label %lor.lhs.false.1600

land.lhs.true.1597:                               ; preds = %land.lhs.true.1594
  %365 = load i64, i64* %format_bytes, align 8
  %cmp1598 = icmp slt i64 0, %365
  br i1 %cmp1598, label %cond.true.1761, label %lor.lhs.false.1600

lor.lhs.false.1600:                               ; preds = %land.lhs.true.1597, %land.lhs.true.1594
  %366 = load i64, i64* %format_bytes, align 8
  %cmp1601 = icmp slt i64 %366, 0
  br i1 %cmp1601, label %land.lhs.true.1603, label %lor.lhs.false.1606

land.lhs.true.1603:                               ; preds = %lor.lhs.false.1600
  %367 = load i64, i64* %size.addr, align 8
  %cmp1604 = icmp ult i64 0, %367
  br i1 %cmp1604, label %cond.true.1761, label %lor.lhs.false.1606

lor.lhs.false.1606:                               ; preds = %land.lhs.true.1603, %lor.lhs.false.1600, %cond.end.1590
  %368 = load i64, i64* %format_bytes, align 8
  %cmp1607 = icmp slt i64 %368, 0
  br i1 %cmp1607, label %cond.true.1609, label %cond.false.1678

cond.true.1609:                                   ; preds = %lor.lhs.false.1606
  %369 = load i64, i64* %size.addr, align 8
  %cmp1610 = icmp ult i64 %369, 0
  br i1 %cmp1610, label %cond.true.1612, label %cond.false.1638

cond.true.1612:                                   ; preds = %cond.true.1609
  %370 = load i64, i64* %size.addr, align 8
  %371 = load i64, i64* %format_bytes, align 8
  %mul1613 = mul nsw i64 0, %371
  %372 = load i64, i64* %size.addr, align 8
  %add1614 = add i64 %mul1613, %372
  %mul1615 = mul i64 0, %add1614
  %sub1616 = sub i64 %mul1615, 1
  %cmp1617 = icmp ult i64 %sub1616, 0
  br i1 %cmp1617, label %cond.true.1619, label %cond.false.1628

cond.true.1619:                                   ; preds = %cond.true.1612
  %373 = load i64, i64* %format_bytes, align 8
  %mul1620 = mul nsw i64 0, %373
  %374 = load i64, i64* %size.addr, align 8
  %add1621 = add i64 %mul1620, %374
  %mul1622 = mul i64 0, %add1621
  %add1623 = add i64 %mul1622, 1
  %shl1624 = shl i64 %add1623, 62
  %sub1625 = sub i64 %shl1624, 1
  %mul1626 = mul i64 %sub1625, 2
  %add1627 = add i64 %mul1626, 1
  br label %cond.end.1633

cond.false.1628:                                  ; preds = %cond.true.1612
  %375 = load i64, i64* %format_bytes, align 8
  %mul1629 = mul nsw i64 0, %375
  %376 = load i64, i64* %size.addr, align 8
  %add1630 = add i64 %mul1629, %376
  %mul1631 = mul i64 0, %add1630
  %sub1632 = sub i64 %mul1631, 1
  br label %cond.end.1633

cond.end.1633:                                    ; preds = %cond.false.1628, %cond.true.1619
  %cond1634 = phi i64 [ %add1627, %cond.true.1619 ], [ %sub1632, %cond.false.1628 ]
  %377 = load i64, i64* %format_bytes, align 8
  %div1635 = udiv i64 %cond1634, %377
  %cmp1636 = icmp ult i64 %370, %div1635
  br i1 %cmp1636, label %cond.true.1761, label %lor.lhs.false.1747

cond.false.1638:                                  ; preds = %cond.true.1609
  %378 = load i64, i64* %format_bytes, align 8
  %cmp1639 = icmp eq i64 %378, -1
  br i1 %cmp1639, label %cond.true.1641, label %cond.false.1642

cond.true.1641:                                   ; preds = %cond.false.1638
  br i1 false, label %cond.true.1761, label %lor.lhs.false.1747

cond.false.1642:                                  ; preds = %cond.false.1638
  %379 = load i64, i64* %format_bytes, align 8
  %mul1643 = mul nsw i64 0, %379
  %380 = load i64, i64* %size.addr, align 8
  %add1644 = add i64 %mul1643, %380
  %mul1645 = mul i64 0, %add1644
  %sub1646 = sub i64 %mul1645, 1
  %cmp1647 = icmp ult i64 %sub1646, 0
  br i1 %cmp1647, label %cond.true.1649, label %cond.false.1668

cond.true.1649:                                   ; preds = %cond.false.1642
  %381 = load i64, i64* %format_bytes, align 8
  %mul1650 = mul nsw i64 0, %381
  %382 = load i64, i64* %size.addr, align 8
  %add1651 = add i64 %mul1650, %382
  %mul1652 = mul i64 0, %add1651
  %add1653 = add i64 %mul1652, 0
  %neg1654 = xor i64 %add1653, -1
  %cmp1655 = icmp eq i64 %neg1654, -1
  %conv1656 = zext i1 %cmp1655 to i32
  %sub1657 = sub nsw i32 0, %conv1656
  %conv1658 = sext i32 %sub1657 to i64
  %383 = load i64, i64* %format_bytes, align 8
  %mul1659 = mul nsw i64 0, %383
  %384 = load i64, i64* %size.addr, align 8
  %add1660 = add i64 %mul1659, %384
  %mul1661 = mul i64 0, %add1660
  %add1662 = add i64 %mul1661, 1
  %shl1663 = shl i64 %add1662, 62
  %sub1664 = sub i64 %shl1663, 1
  %mul1665 = mul i64 %sub1664, 2
  %add1666 = add i64 %mul1665, 1
  %sub1667 = sub i64 %conv1658, %add1666
  br label %cond.end.1673

cond.false.1668:                                  ; preds = %cond.false.1642
  %385 = load i64, i64* %format_bytes, align 8
  %mul1669 = mul nsw i64 0, %385
  %386 = load i64, i64* %size.addr, align 8
  %add1670 = add i64 %mul1669, %386
  %mul1671 = mul i64 0, %add1670
  %add1672 = add i64 %mul1671, 0
  br label %cond.end.1673

cond.end.1673:                                    ; preds = %cond.false.1668, %cond.true.1649
  %cond1674 = phi i64 [ %sub1667, %cond.true.1649 ], [ %add1672, %cond.false.1668 ]
  %387 = load i64, i64* %format_bytes, align 8
  %div1675 = udiv i64 %cond1674, %387
  %388 = load i64, i64* %size.addr, align 8
  %cmp1676 = icmp ult i64 %div1675, %388
  br i1 %cmp1676, label %cond.true.1761, label %lor.lhs.false.1747

cond.false.1678:                                  ; preds = %lor.lhs.false.1606
  %389 = load i64, i64* %format_bytes, align 8
  %cmp1679 = icmp eq i64 %389, 0
  br i1 %cmp1679, label %cond.true.1681, label %cond.false.1682

cond.true.1681:                                   ; preds = %cond.false.1678
  br i1 false, label %cond.true.1761, label %lor.lhs.false.1747

cond.false.1682:                                  ; preds = %cond.false.1678
  %390 = load i64, i64* %size.addr, align 8
  %cmp1683 = icmp ult i64 %390, 0
  br i1 %cmp1683, label %cond.true.1685, label %cond.false.1721

cond.true.1685:                                   ; preds = %cond.false.1682
  %391 = load i64, i64* %size.addr, align 8
  %392 = load i64, i64* %format_bytes, align 8
  %mul1686 = mul nsw i64 0, %392
  %393 = load i64, i64* %size.addr, align 8
  %add1687 = add i64 %mul1686, %393
  %mul1688 = mul i64 0, %add1687
  %sub1689 = sub i64 %mul1688, 1
  %cmp1690 = icmp ult i64 %sub1689, 0
  br i1 %cmp1690, label %cond.true.1692, label %cond.false.1711

cond.true.1692:                                   ; preds = %cond.true.1685
  %394 = load i64, i64* %format_bytes, align 8
  %mul1693 = mul nsw i64 0, %394
  %395 = load i64, i64* %size.addr, align 8
  %add1694 = add i64 %mul1693, %395
  %mul1695 = mul i64 0, %add1694
  %add1696 = add i64 %mul1695, 0
  %neg1697 = xor i64 %add1696, -1
  %cmp1698 = icmp eq i64 %neg1697, -1
  %conv1699 = zext i1 %cmp1698 to i32
  %sub1700 = sub nsw i32 0, %conv1699
  %conv1701 = sext i32 %sub1700 to i64
  %396 = load i64, i64* %format_bytes, align 8
  %mul1702 = mul nsw i64 0, %396
  %397 = load i64, i64* %size.addr, align 8
  %add1703 = add i64 %mul1702, %397
  %mul1704 = mul i64 0, %add1703
  %add1705 = add i64 %mul1704, 1
  %shl1706 = shl i64 %add1705, 62
  %sub1707 = sub i64 %shl1706, 1
  %mul1708 = mul i64 %sub1707, 2
  %add1709 = add i64 %mul1708, 1
  %sub1710 = sub i64 %conv1701, %add1709
  br label %cond.end.1716

cond.false.1711:                                  ; preds = %cond.true.1685
  %398 = load i64, i64* %format_bytes, align 8
  %mul1712 = mul nsw i64 0, %398
  %399 = load i64, i64* %size.addr, align 8
  %add1713 = add i64 %mul1712, %399
  %mul1714 = mul i64 0, %add1713
  %add1715 = add i64 %mul1714, 0
  br label %cond.end.1716

cond.end.1716:                                    ; preds = %cond.false.1711, %cond.true.1692
  %cond1717 = phi i64 [ %sub1710, %cond.true.1692 ], [ %add1715, %cond.false.1711 ]
  %400 = load i64, i64* %format_bytes, align 8
  %div1718 = udiv i64 %cond1717, %400
  %cmp1719 = icmp ult i64 %391, %div1718
  br i1 %cmp1719, label %cond.true.1761, label %lor.lhs.false.1747

cond.false.1721:                                  ; preds = %cond.false.1682
  %401 = load i64, i64* %format_bytes, align 8
  %mul1722 = mul nsw i64 0, %401
  %402 = load i64, i64* %size.addr, align 8
  %add1723 = add i64 %mul1722, %402
  %mul1724 = mul i64 0, %add1723
  %sub1725 = sub i64 %mul1724, 1
  %cmp1726 = icmp ult i64 %sub1725, 0
  br i1 %cmp1726, label %cond.true.1728, label %cond.false.1737

cond.true.1728:                                   ; preds = %cond.false.1721
  %403 = load i64, i64* %format_bytes, align 8
  %mul1729 = mul nsw i64 0, %403
  %404 = load i64, i64* %size.addr, align 8
  %add1730 = add i64 %mul1729, %404
  %mul1731 = mul i64 0, %add1730
  %add1732 = add i64 %mul1731, 1
  %shl1733 = shl i64 %add1732, 62
  %sub1734 = sub i64 %shl1733, 1
  %mul1735 = mul i64 %sub1734, 2
  %add1736 = add i64 %mul1735, 1
  br label %cond.end.1742

cond.false.1737:                                  ; preds = %cond.false.1721
  %405 = load i64, i64* %format_bytes, align 8
  %mul1738 = mul nsw i64 0, %405
  %406 = load i64, i64* %size.addr, align 8
  %add1739 = add i64 %mul1738, %406
  %mul1740 = mul i64 0, %add1739
  %sub1741 = sub i64 %mul1740, 1
  br label %cond.end.1742

cond.end.1742:                                    ; preds = %cond.false.1737, %cond.true.1728
  %cond1743 = phi i64 [ %add1736, %cond.true.1728 ], [ %sub1741, %cond.false.1737 ]
  %407 = load i64, i64* %format_bytes, align 8
  %div1744 = udiv i64 %cond1743, %407
  %408 = load i64, i64* %size.addr, align 8
  %cmp1745 = icmp ult i64 %div1744, %408
  br i1 %cmp1745, label %cond.true.1761, label %lor.lhs.false.1747

lor.lhs.false.1747:                               ; preds = %cond.end.1742, %cond.end.1716, %cond.true.1681, %cond.end.1673, %cond.true.1641, %cond.end.1633
  %409 = load i64, i64* %size.addr, align 8
  %410 = load i64, i64* %format_bytes, align 8
  %mul1748 = mul i64 %409, %410
  %mul1749 = mul i64 0, %mul1748
  %sub1750 = sub i64 %mul1749, 1
  %cmp1751 = icmp ult i64 %sub1750, 0
  br i1 %cmp1751, label %land.lhs.true.1753, label %lor.lhs.false.1757

land.lhs.true.1753:                               ; preds = %lor.lhs.false.1747
  %411 = load i64, i64* %size.addr, align 8
  %412 = load i64, i64* %format_bytes, align 8
  %mul1754 = mul i64 %411, %412
  %cmp1755 = icmp ult i64 %mul1754, -2147483648
  br i1 %cmp1755, label %cond.true.1761, label %lor.lhs.false.1757

lor.lhs.false.1757:                               ; preds = %land.lhs.true.1753, %lor.lhs.false.1747
  %413 = load i64, i64* %size.addr, align 8
  %414 = load i64, i64* %format_bytes, align 8
  %mul1758 = mul i64 %413, %414
  %cmp1759 = icmp ult i64 2147483647, %mul1758
  br i1 %cmp1759, label %cond.true.1761, label %cond.false.1780

cond.true.1761:                                   ; preds = %lor.lhs.false.1757, %land.lhs.true.1753, %cond.end.1742, %cond.end.1716, %cond.true.1681, %cond.end.1673, %cond.true.1641, %cond.end.1633, %land.lhs.true.1603, %land.lhs.true.1597
  %415 = load i64, i64* %size.addr, align 8
  %conv1762 = trunc i64 %415 to i32
  %416 = load i64, i64* %format_bytes, align 8
  %conv1763 = trunc i64 %416 to i32
  %mul1764 = mul i32 %conv1762, %conv1763
  %cmp1765 = icmp ule i32 %mul1764, 2147483647
  br i1 %cmp1765, label %cond.true.1767, label %cond.false.1771

cond.true.1767:                                   ; preds = %cond.true.1761
  %417 = load i64, i64* %size.addr, align 8
  %conv1768 = trunc i64 %417 to i32
  %418 = load i64, i64* %format_bytes, align 8
  %conv1769 = trunc i64 %418 to i32
  %mul1770 = mul i32 %conv1768, %conv1769
  br label %cond.end.1777

cond.false.1771:                                  ; preds = %cond.true.1761
  %419 = load i64, i64* %size.addr, align 8
  %conv1772 = trunc i64 %419 to i32
  %420 = load i64, i64* %format_bytes, align 8
  %conv1773 = trunc i64 %420 to i32
  %mul1774 = mul i32 %conv1772, %conv1773
  %sub1775 = sub i32 %mul1774, -2147483648
  %add1776 = add nsw i32 %sub1775, -2147483648
  br label %cond.end.1777

cond.end.1777:                                    ; preds = %cond.false.1771, %cond.true.1767
  %cond1778 = phi i32 [ %mul1770, %cond.true.1767 ], [ %add1776, %cond.false.1771 ]
  %conv1779 = sext i32 %cond1778 to i64
  store i64 %conv1779, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.1780:                                  ; preds = %lor.lhs.false.1757
  %421 = load i64, i64* %size.addr, align 8
  %conv1781 = trunc i64 %421 to i32
  %422 = load i64, i64* %format_bytes, align 8
  %conv1782 = trunc i64 %422 to i32
  %mul1783 = mul i32 %conv1781, %conv1782
  %cmp1784 = icmp ule i32 %mul1783, 2147483647
  br i1 %cmp1784, label %cond.true.1786, label %cond.false.1790

cond.true.1786:                                   ; preds = %cond.false.1780
  %423 = load i64, i64* %size.addr, align 8
  %conv1787 = trunc i64 %423 to i32
  %424 = load i64, i64* %format_bytes, align 8
  %conv1788 = trunc i64 %424 to i32
  %mul1789 = mul i32 %conv1787, %conv1788
  br label %cond.end.1796

cond.false.1790:                                  ; preds = %cond.false.1780
  %425 = load i64, i64* %size.addr, align 8
  %conv1791 = trunc i64 %425 to i32
  %426 = load i64, i64* %format_bytes, align 8
  %conv1792 = trunc i64 %426 to i32
  %mul1793 = mul i32 %conv1791, %conv1792
  %sub1794 = sub i32 %mul1793, -2147483648
  %add1795 = add nsw i32 %sub1794, -2147483648
  br label %cond.end.1796

cond.end.1796:                                    ; preds = %cond.false.1790, %cond.true.1786
  %cond1797 = phi i32 [ %mul1789, %cond.true.1786 ], [ %add1795, %cond.false.1790 ]
  %conv1798 = sext i32 %cond1797 to i64
  store i64 %conv1798, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.1799:                                  ; preds = %cond.false.1261
  br i1 true, label %cond.true.1800, label %cond.false.2253

cond.true.1800:                                   ; preds = %cond.false.1799
  br i1 false, label %cond.true.1801, label %cond.false.2027

cond.true.1801:                                   ; preds = %cond.true.1800
  %427 = load i64, i64* %format_bytes, align 8
  %mul1802 = mul nsw i64 0, %427
  %428 = load i64, i64* %size.addr, align 8
  %add1803 = add nsw i64 %mul1802, %428
  %mul1804 = mul nsw i64 0, %add1803
  %sub1805 = sub nsw i64 %mul1804, 1
  %cmp1806 = icmp slt i64 %sub1805, 0
  br i1 %cmp1806, label %cond.true.1808, label %cond.false.1827

cond.true.1808:                                   ; preds = %cond.true.1801
  %429 = load i64, i64* %format_bytes, align 8
  %mul1809 = mul nsw i64 0, %429
  %430 = load i64, i64* %size.addr, align 8
  %add1810 = add nsw i64 %mul1809, %430
  %mul1811 = mul nsw i64 0, %add1810
  %add1812 = add nsw i64 %mul1811, 0
  %neg1813 = xor i64 %add1812, -1
  %cmp1814 = icmp eq i64 %neg1813, -1
  %conv1815 = zext i1 %cmp1814 to i32
  %sub1816 = sub nsw i32 0, %conv1815
  %conv1817 = sext i32 %sub1816 to i64
  %431 = load i64, i64* %format_bytes, align 8
  %mul1818 = mul nsw i64 0, %431
  %432 = load i64, i64* %size.addr, align 8
  %add1819 = add nsw i64 %mul1818, %432
  %mul1820 = mul nsw i64 0, %add1819
  %add1821 = add nsw i64 %mul1820, 1
  %shl1822 = shl i64 %add1821, 62
  %sub1823 = sub nsw i64 %shl1822, 1
  %mul1824 = mul nsw i64 %sub1823, 2
  %add1825 = add nsw i64 %mul1824, 1
  %sub1826 = sub nsw i64 %conv1817, %add1825
  br label %cond.end.1832

cond.false.1827:                                  ; preds = %cond.true.1801
  %433 = load i64, i64* %format_bytes, align 8
  %mul1828 = mul nsw i64 0, %433
  %434 = load i64, i64* %size.addr, align 8
  %add1829 = add nsw i64 %mul1828, %434
  %mul1830 = mul nsw i64 0, %add1829
  %add1831 = add nsw i64 %mul1830, 0
  br label %cond.end.1832

cond.end.1832:                                    ; preds = %cond.false.1827, %cond.true.1808
  %cond1833 = phi i64 [ %sub1826, %cond.true.1808 ], [ %add1831, %cond.false.1827 ]
  %cmp1834 = icmp eq i64 %cond1833, 0
  br i1 %cmp1834, label %land.lhs.true.1836, label %lor.lhs.false.1848

land.lhs.true.1836:                               ; preds = %cond.end.1832
  %435 = load i64, i64* %size.addr, align 8
  %cmp1837 = icmp slt i64 %435, 0
  br i1 %cmp1837, label %land.lhs.true.1839, label %lor.lhs.false.1842

land.lhs.true.1839:                               ; preds = %land.lhs.true.1836
  %436 = load i64, i64* %format_bytes, align 8
  %cmp1840 = icmp slt i64 0, %436
  br i1 %cmp1840, label %cond.true.2003, label %lor.lhs.false.1842

lor.lhs.false.1842:                               ; preds = %land.lhs.true.1839, %land.lhs.true.1836
  %437 = load i64, i64* %format_bytes, align 8
  %cmp1843 = icmp slt i64 %437, 0
  br i1 %cmp1843, label %land.lhs.true.1845, label %lor.lhs.false.1848

land.lhs.true.1845:                               ; preds = %lor.lhs.false.1842
  %438 = load i64, i64* %size.addr, align 8
  %cmp1846 = icmp slt i64 0, %438
  br i1 %cmp1846, label %cond.true.2003, label %lor.lhs.false.1848

lor.lhs.false.1848:                               ; preds = %land.lhs.true.1845, %lor.lhs.false.1842, %cond.end.1832
  %439 = load i64, i64* %format_bytes, align 8
  %cmp1849 = icmp slt i64 %439, 0
  br i1 %cmp1849, label %cond.true.1851, label %cond.false.1920

cond.true.1851:                                   ; preds = %lor.lhs.false.1848
  %440 = load i64, i64* %size.addr, align 8
  %cmp1852 = icmp slt i64 %440, 0
  br i1 %cmp1852, label %cond.true.1854, label %cond.false.1880

cond.true.1854:                                   ; preds = %cond.true.1851
  %441 = load i64, i64* %size.addr, align 8
  %442 = load i64, i64* %format_bytes, align 8
  %mul1855 = mul nsw i64 0, %442
  %443 = load i64, i64* %size.addr, align 8
  %add1856 = add nsw i64 %mul1855, %443
  %mul1857 = mul nsw i64 0, %add1856
  %sub1858 = sub nsw i64 %mul1857, 1
  %cmp1859 = icmp slt i64 %sub1858, 0
  br i1 %cmp1859, label %cond.true.1861, label %cond.false.1870

cond.true.1861:                                   ; preds = %cond.true.1854
  %444 = load i64, i64* %format_bytes, align 8
  %mul1862 = mul nsw i64 0, %444
  %445 = load i64, i64* %size.addr, align 8
  %add1863 = add nsw i64 %mul1862, %445
  %mul1864 = mul nsw i64 0, %add1863
  %add1865 = add nsw i64 %mul1864, 1
  %shl1866 = shl i64 %add1865, 62
  %sub1867 = sub nsw i64 %shl1866, 1
  %mul1868 = mul nsw i64 %sub1867, 2
  %add1869 = add nsw i64 %mul1868, 1
  br label %cond.end.1875

cond.false.1870:                                  ; preds = %cond.true.1854
  %446 = load i64, i64* %format_bytes, align 8
  %mul1871 = mul nsw i64 0, %446
  %447 = load i64, i64* %size.addr, align 8
  %add1872 = add nsw i64 %mul1871, %447
  %mul1873 = mul nsw i64 0, %add1872
  %sub1874 = sub nsw i64 %mul1873, 1
  br label %cond.end.1875

cond.end.1875:                                    ; preds = %cond.false.1870, %cond.true.1861
  %cond1876 = phi i64 [ %add1869, %cond.true.1861 ], [ %sub1874, %cond.false.1870 ]
  %448 = load i64, i64* %format_bytes, align 8
  %div1877 = sdiv i64 %cond1876, %448
  %cmp1878 = icmp slt i64 %441, %div1877
  br i1 %cmp1878, label %cond.true.2003, label %lor.lhs.false.1989

cond.false.1880:                                  ; preds = %cond.true.1851
  %449 = load i64, i64* %format_bytes, align 8
  %cmp1881 = icmp eq i64 %449, -1
  br i1 %cmp1881, label %cond.true.1883, label %cond.false.1884

cond.true.1883:                                   ; preds = %cond.false.1880
  br i1 false, label %cond.true.2003, label %lor.lhs.false.1989

cond.false.1884:                                  ; preds = %cond.false.1880
  %450 = load i64, i64* %format_bytes, align 8
  %mul1885 = mul nsw i64 0, %450
  %451 = load i64, i64* %size.addr, align 8
  %add1886 = add nsw i64 %mul1885, %451
  %mul1887 = mul nsw i64 0, %add1886
  %sub1888 = sub nsw i64 %mul1887, 1
  %cmp1889 = icmp slt i64 %sub1888, 0
  br i1 %cmp1889, label %cond.true.1891, label %cond.false.1910

cond.true.1891:                                   ; preds = %cond.false.1884
  %452 = load i64, i64* %format_bytes, align 8
  %mul1892 = mul nsw i64 0, %452
  %453 = load i64, i64* %size.addr, align 8
  %add1893 = add nsw i64 %mul1892, %453
  %mul1894 = mul nsw i64 0, %add1893
  %add1895 = add nsw i64 %mul1894, 0
  %neg1896 = xor i64 %add1895, -1
  %cmp1897 = icmp eq i64 %neg1896, -1
  %conv1898 = zext i1 %cmp1897 to i32
  %sub1899 = sub nsw i32 0, %conv1898
  %conv1900 = sext i32 %sub1899 to i64
  %454 = load i64, i64* %format_bytes, align 8
  %mul1901 = mul nsw i64 0, %454
  %455 = load i64, i64* %size.addr, align 8
  %add1902 = add nsw i64 %mul1901, %455
  %mul1903 = mul nsw i64 0, %add1902
  %add1904 = add nsw i64 %mul1903, 1
  %shl1905 = shl i64 %add1904, 62
  %sub1906 = sub nsw i64 %shl1905, 1
  %mul1907 = mul nsw i64 %sub1906, 2
  %add1908 = add nsw i64 %mul1907, 1
  %sub1909 = sub nsw i64 %conv1900, %add1908
  br label %cond.end.1915

cond.false.1910:                                  ; preds = %cond.false.1884
  %456 = load i64, i64* %format_bytes, align 8
  %mul1911 = mul nsw i64 0, %456
  %457 = load i64, i64* %size.addr, align 8
  %add1912 = add nsw i64 %mul1911, %457
  %mul1913 = mul nsw i64 0, %add1912
  %add1914 = add nsw i64 %mul1913, 0
  br label %cond.end.1915

cond.end.1915:                                    ; preds = %cond.false.1910, %cond.true.1891
  %cond1916 = phi i64 [ %sub1909, %cond.true.1891 ], [ %add1914, %cond.false.1910 ]
  %458 = load i64, i64* %format_bytes, align 8
  %div1917 = sdiv i64 %cond1916, %458
  %459 = load i64, i64* %size.addr, align 8
  %cmp1918 = icmp slt i64 %div1917, %459
  br i1 %cmp1918, label %cond.true.2003, label %lor.lhs.false.1989

cond.false.1920:                                  ; preds = %lor.lhs.false.1848
  %460 = load i64, i64* %format_bytes, align 8
  %cmp1921 = icmp eq i64 %460, 0
  br i1 %cmp1921, label %cond.true.1923, label %cond.false.1924

cond.true.1923:                                   ; preds = %cond.false.1920
  br i1 false, label %cond.true.2003, label %lor.lhs.false.1989

cond.false.1924:                                  ; preds = %cond.false.1920
  %461 = load i64, i64* %size.addr, align 8
  %cmp1925 = icmp slt i64 %461, 0
  br i1 %cmp1925, label %cond.true.1927, label %cond.false.1963

cond.true.1927:                                   ; preds = %cond.false.1924
  %462 = load i64, i64* %size.addr, align 8
  %463 = load i64, i64* %format_bytes, align 8
  %mul1928 = mul nsw i64 0, %463
  %464 = load i64, i64* %size.addr, align 8
  %add1929 = add nsw i64 %mul1928, %464
  %mul1930 = mul nsw i64 0, %add1929
  %sub1931 = sub nsw i64 %mul1930, 1
  %cmp1932 = icmp slt i64 %sub1931, 0
  br i1 %cmp1932, label %cond.true.1934, label %cond.false.1953

cond.true.1934:                                   ; preds = %cond.true.1927
  %465 = load i64, i64* %format_bytes, align 8
  %mul1935 = mul nsw i64 0, %465
  %466 = load i64, i64* %size.addr, align 8
  %add1936 = add nsw i64 %mul1935, %466
  %mul1937 = mul nsw i64 0, %add1936
  %add1938 = add nsw i64 %mul1937, 0
  %neg1939 = xor i64 %add1938, -1
  %cmp1940 = icmp eq i64 %neg1939, -1
  %conv1941 = zext i1 %cmp1940 to i32
  %sub1942 = sub nsw i32 0, %conv1941
  %conv1943 = sext i32 %sub1942 to i64
  %467 = load i64, i64* %format_bytes, align 8
  %mul1944 = mul nsw i64 0, %467
  %468 = load i64, i64* %size.addr, align 8
  %add1945 = add nsw i64 %mul1944, %468
  %mul1946 = mul nsw i64 0, %add1945
  %add1947 = add nsw i64 %mul1946, 1
  %shl1948 = shl i64 %add1947, 62
  %sub1949 = sub nsw i64 %shl1948, 1
  %mul1950 = mul nsw i64 %sub1949, 2
  %add1951 = add nsw i64 %mul1950, 1
  %sub1952 = sub nsw i64 %conv1943, %add1951
  br label %cond.end.1958

cond.false.1953:                                  ; preds = %cond.true.1927
  %469 = load i64, i64* %format_bytes, align 8
  %mul1954 = mul nsw i64 0, %469
  %470 = load i64, i64* %size.addr, align 8
  %add1955 = add nsw i64 %mul1954, %470
  %mul1956 = mul nsw i64 0, %add1955
  %add1957 = add nsw i64 %mul1956, 0
  br label %cond.end.1958

cond.end.1958:                                    ; preds = %cond.false.1953, %cond.true.1934
  %cond1959 = phi i64 [ %sub1952, %cond.true.1934 ], [ %add1957, %cond.false.1953 ]
  %471 = load i64, i64* %format_bytes, align 8
  %div1960 = sdiv i64 %cond1959, %471
  %cmp1961 = icmp slt i64 %462, %div1960
  br i1 %cmp1961, label %cond.true.2003, label %lor.lhs.false.1989

cond.false.1963:                                  ; preds = %cond.false.1924
  %472 = load i64, i64* %format_bytes, align 8
  %mul1964 = mul nsw i64 0, %472
  %473 = load i64, i64* %size.addr, align 8
  %add1965 = add nsw i64 %mul1964, %473
  %mul1966 = mul nsw i64 0, %add1965
  %sub1967 = sub nsw i64 %mul1966, 1
  %cmp1968 = icmp slt i64 %sub1967, 0
  br i1 %cmp1968, label %cond.true.1970, label %cond.false.1979

cond.true.1970:                                   ; preds = %cond.false.1963
  %474 = load i64, i64* %format_bytes, align 8
  %mul1971 = mul nsw i64 0, %474
  %475 = load i64, i64* %size.addr, align 8
  %add1972 = add nsw i64 %mul1971, %475
  %mul1973 = mul nsw i64 0, %add1972
  %add1974 = add nsw i64 %mul1973, 1
  %shl1975 = shl i64 %add1974, 62
  %sub1976 = sub nsw i64 %shl1975, 1
  %mul1977 = mul nsw i64 %sub1976, 2
  %add1978 = add nsw i64 %mul1977, 1
  br label %cond.end.1984

cond.false.1979:                                  ; preds = %cond.false.1963
  %476 = load i64, i64* %format_bytes, align 8
  %mul1980 = mul nsw i64 0, %476
  %477 = load i64, i64* %size.addr, align 8
  %add1981 = add nsw i64 %mul1980, %477
  %mul1982 = mul nsw i64 0, %add1981
  %sub1983 = sub nsw i64 %mul1982, 1
  br label %cond.end.1984

cond.end.1984:                                    ; preds = %cond.false.1979, %cond.true.1970
  %cond1985 = phi i64 [ %add1978, %cond.true.1970 ], [ %sub1983, %cond.false.1979 ]
  %478 = load i64, i64* %format_bytes, align 8
  %div1986 = sdiv i64 %cond1985, %478
  %479 = load i64, i64* %size.addr, align 8
  %cmp1987 = icmp slt i64 %div1986, %479
  br i1 %cmp1987, label %cond.true.2003, label %lor.lhs.false.1989

lor.lhs.false.1989:                               ; preds = %cond.end.1984, %cond.end.1958, %cond.true.1923, %cond.end.1915, %cond.true.1883, %cond.end.1875
  %480 = load i64, i64* %size.addr, align 8
  %481 = load i64, i64* %format_bytes, align 8
  %mul1990 = mul nsw i64 %480, %481
  %mul1991 = mul nsw i64 0, %mul1990
  %sub1992 = sub nsw i64 %mul1991, 1
  %cmp1993 = icmp slt i64 %sub1992, 0
  br i1 %cmp1993, label %land.lhs.true.1995, label %lor.lhs.false.1999

land.lhs.true.1995:                               ; preds = %lor.lhs.false.1989
  %482 = load i64, i64* %size.addr, align 8
  %483 = load i64, i64* %format_bytes, align 8
  %mul1996 = mul nsw i64 %482, %483
  %cmp1997 = icmp slt i64 %mul1996, -9223372036854775808
  br i1 %cmp1997, label %cond.true.2003, label %lor.lhs.false.1999

lor.lhs.false.1999:                               ; preds = %land.lhs.true.1995, %lor.lhs.false.1989
  %484 = load i64, i64* %size.addr, align 8
  %485 = load i64, i64* %format_bytes, align 8
  %mul2000 = mul nsw i64 %484, %485
  %cmp2001 = icmp slt i64 9223372036854775807, %mul2000
  br i1 %cmp2001, label %cond.true.2003, label %cond.false.2015

cond.true.2003:                                   ; preds = %lor.lhs.false.1999, %land.lhs.true.1995, %cond.end.1984, %cond.end.1958, %cond.true.1923, %cond.end.1915, %cond.true.1883, %cond.end.1875, %land.lhs.true.1845, %land.lhs.true.1839
  %486 = load i64, i64* %size.addr, align 8
  %487 = load i64, i64* %format_bytes, align 8
  %mul2004 = mul i64 %486, %487
  %cmp2005 = icmp ule i64 %mul2004, 9223372036854775807
  br i1 %cmp2005, label %cond.true.2007, label %cond.false.2009

cond.true.2007:                                   ; preds = %cond.true.2003
  %488 = load i64, i64* %size.addr, align 8
  %489 = load i64, i64* %format_bytes, align 8
  %mul2008 = mul i64 %488, %489
  br label %cond.end.2013

cond.false.2009:                                  ; preds = %cond.true.2003
  %490 = load i64, i64* %size.addr, align 8
  %491 = load i64, i64* %format_bytes, align 8
  %mul2010 = mul i64 %490, %491
  %sub2011 = sub i64 %mul2010, -9223372036854775808
  %add2012 = add nsw i64 %sub2011, -9223372036854775808
  br label %cond.end.2013

cond.end.2013:                                    ; preds = %cond.false.2009, %cond.true.2007
  %cond2014 = phi i64 [ %mul2008, %cond.true.2007 ], [ %add2012, %cond.false.2009 ]
  store i64 %cond2014, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.2015:                                  ; preds = %lor.lhs.false.1999
  %492 = load i64, i64* %size.addr, align 8
  %493 = load i64, i64* %format_bytes, align 8
  %mul2016 = mul i64 %492, %493
  %cmp2017 = icmp ule i64 %mul2016, 9223372036854775807
  br i1 %cmp2017, label %cond.true.2019, label %cond.false.2021

cond.true.2019:                                   ; preds = %cond.false.2015
  %494 = load i64, i64* %size.addr, align 8
  %495 = load i64, i64* %format_bytes, align 8
  %mul2020 = mul i64 %494, %495
  br label %cond.end.2025

cond.false.2021:                                  ; preds = %cond.false.2015
  %496 = load i64, i64* %size.addr, align 8
  %497 = load i64, i64* %format_bytes, align 8
  %mul2022 = mul i64 %496, %497
  %sub2023 = sub i64 %mul2022, -9223372036854775808
  %add2024 = add nsw i64 %sub2023, -9223372036854775808
  br label %cond.end.2025

cond.end.2025:                                    ; preds = %cond.false.2021, %cond.true.2019
  %cond2026 = phi i64 [ %mul2020, %cond.true.2019 ], [ %add2024, %cond.false.2021 ]
  store i64 %cond2026, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.2027:                                  ; preds = %cond.true.1800
  %498 = load i64, i64* %format_bytes, align 8
  %mul2028 = mul nsw i64 0, %498
  %499 = load i64, i64* %size.addr, align 8
  %add2029 = add i64 %mul2028, %499
  %mul2030 = mul i64 0, %add2029
  %sub2031 = sub i64 %mul2030, 1
  %cmp2032 = icmp ult i64 %sub2031, 0
  br i1 %cmp2032, label %cond.true.2034, label %cond.false.2053

cond.true.2034:                                   ; preds = %cond.false.2027
  %500 = load i64, i64* %format_bytes, align 8
  %mul2035 = mul nsw i64 0, %500
  %501 = load i64, i64* %size.addr, align 8
  %add2036 = add i64 %mul2035, %501
  %mul2037 = mul i64 0, %add2036
  %add2038 = add i64 %mul2037, 0
  %neg2039 = xor i64 %add2038, -1
  %cmp2040 = icmp eq i64 %neg2039, -1
  %conv2041 = zext i1 %cmp2040 to i32
  %sub2042 = sub nsw i32 0, %conv2041
  %conv2043 = sext i32 %sub2042 to i64
  %502 = load i64, i64* %format_bytes, align 8
  %mul2044 = mul nsw i64 0, %502
  %503 = load i64, i64* %size.addr, align 8
  %add2045 = add i64 %mul2044, %503
  %mul2046 = mul i64 0, %add2045
  %add2047 = add i64 %mul2046, 1
  %shl2048 = shl i64 %add2047, 62
  %sub2049 = sub i64 %shl2048, 1
  %mul2050 = mul i64 %sub2049, 2
  %add2051 = add i64 %mul2050, 1
  %sub2052 = sub i64 %conv2043, %add2051
  br label %cond.end.2058

cond.false.2053:                                  ; preds = %cond.false.2027
  %504 = load i64, i64* %format_bytes, align 8
  %mul2054 = mul nsw i64 0, %504
  %505 = load i64, i64* %size.addr, align 8
  %add2055 = add i64 %mul2054, %505
  %mul2056 = mul i64 0, %add2055
  %add2057 = add i64 %mul2056, 0
  br label %cond.end.2058

cond.end.2058:                                    ; preds = %cond.false.2053, %cond.true.2034
  %cond2059 = phi i64 [ %sub2052, %cond.true.2034 ], [ %add2057, %cond.false.2053 ]
  %cmp2060 = icmp eq i64 %cond2059, 0
  br i1 %cmp2060, label %land.lhs.true.2062, label %lor.lhs.false.2074

land.lhs.true.2062:                               ; preds = %cond.end.2058
  %506 = load i64, i64* %size.addr, align 8
  %cmp2063 = icmp ult i64 %506, 0
  br i1 %cmp2063, label %land.lhs.true.2065, label %lor.lhs.false.2068

land.lhs.true.2065:                               ; preds = %land.lhs.true.2062
  %507 = load i64, i64* %format_bytes, align 8
  %cmp2066 = icmp slt i64 0, %507
  br i1 %cmp2066, label %cond.true.2229, label %lor.lhs.false.2068

lor.lhs.false.2068:                               ; preds = %land.lhs.true.2065, %land.lhs.true.2062
  %508 = load i64, i64* %format_bytes, align 8
  %cmp2069 = icmp slt i64 %508, 0
  br i1 %cmp2069, label %land.lhs.true.2071, label %lor.lhs.false.2074

land.lhs.true.2071:                               ; preds = %lor.lhs.false.2068
  %509 = load i64, i64* %size.addr, align 8
  %cmp2072 = icmp ult i64 0, %509
  br i1 %cmp2072, label %cond.true.2229, label %lor.lhs.false.2074

lor.lhs.false.2074:                               ; preds = %land.lhs.true.2071, %lor.lhs.false.2068, %cond.end.2058
  %510 = load i64, i64* %format_bytes, align 8
  %cmp2075 = icmp slt i64 %510, 0
  br i1 %cmp2075, label %cond.true.2077, label %cond.false.2146

cond.true.2077:                                   ; preds = %lor.lhs.false.2074
  %511 = load i64, i64* %size.addr, align 8
  %cmp2078 = icmp ult i64 %511, 0
  br i1 %cmp2078, label %cond.true.2080, label %cond.false.2106

cond.true.2080:                                   ; preds = %cond.true.2077
  %512 = load i64, i64* %size.addr, align 8
  %513 = load i64, i64* %format_bytes, align 8
  %mul2081 = mul nsw i64 0, %513
  %514 = load i64, i64* %size.addr, align 8
  %add2082 = add i64 %mul2081, %514
  %mul2083 = mul i64 0, %add2082
  %sub2084 = sub i64 %mul2083, 1
  %cmp2085 = icmp ult i64 %sub2084, 0
  br i1 %cmp2085, label %cond.true.2087, label %cond.false.2096

cond.true.2087:                                   ; preds = %cond.true.2080
  %515 = load i64, i64* %format_bytes, align 8
  %mul2088 = mul nsw i64 0, %515
  %516 = load i64, i64* %size.addr, align 8
  %add2089 = add i64 %mul2088, %516
  %mul2090 = mul i64 0, %add2089
  %add2091 = add i64 %mul2090, 1
  %shl2092 = shl i64 %add2091, 62
  %sub2093 = sub i64 %shl2092, 1
  %mul2094 = mul i64 %sub2093, 2
  %add2095 = add i64 %mul2094, 1
  br label %cond.end.2101

cond.false.2096:                                  ; preds = %cond.true.2080
  %517 = load i64, i64* %format_bytes, align 8
  %mul2097 = mul nsw i64 0, %517
  %518 = load i64, i64* %size.addr, align 8
  %add2098 = add i64 %mul2097, %518
  %mul2099 = mul i64 0, %add2098
  %sub2100 = sub i64 %mul2099, 1
  br label %cond.end.2101

cond.end.2101:                                    ; preds = %cond.false.2096, %cond.true.2087
  %cond2102 = phi i64 [ %add2095, %cond.true.2087 ], [ %sub2100, %cond.false.2096 ]
  %519 = load i64, i64* %format_bytes, align 8
  %div2103 = udiv i64 %cond2102, %519
  %cmp2104 = icmp ult i64 %512, %div2103
  br i1 %cmp2104, label %cond.true.2229, label %lor.lhs.false.2215

cond.false.2106:                                  ; preds = %cond.true.2077
  %520 = load i64, i64* %format_bytes, align 8
  %cmp2107 = icmp eq i64 %520, -1
  br i1 %cmp2107, label %cond.true.2109, label %cond.false.2110

cond.true.2109:                                   ; preds = %cond.false.2106
  br i1 false, label %cond.true.2229, label %lor.lhs.false.2215

cond.false.2110:                                  ; preds = %cond.false.2106
  %521 = load i64, i64* %format_bytes, align 8
  %mul2111 = mul nsw i64 0, %521
  %522 = load i64, i64* %size.addr, align 8
  %add2112 = add i64 %mul2111, %522
  %mul2113 = mul i64 0, %add2112
  %sub2114 = sub i64 %mul2113, 1
  %cmp2115 = icmp ult i64 %sub2114, 0
  br i1 %cmp2115, label %cond.true.2117, label %cond.false.2136

cond.true.2117:                                   ; preds = %cond.false.2110
  %523 = load i64, i64* %format_bytes, align 8
  %mul2118 = mul nsw i64 0, %523
  %524 = load i64, i64* %size.addr, align 8
  %add2119 = add i64 %mul2118, %524
  %mul2120 = mul i64 0, %add2119
  %add2121 = add i64 %mul2120, 0
  %neg2122 = xor i64 %add2121, -1
  %cmp2123 = icmp eq i64 %neg2122, -1
  %conv2124 = zext i1 %cmp2123 to i32
  %sub2125 = sub nsw i32 0, %conv2124
  %conv2126 = sext i32 %sub2125 to i64
  %525 = load i64, i64* %format_bytes, align 8
  %mul2127 = mul nsw i64 0, %525
  %526 = load i64, i64* %size.addr, align 8
  %add2128 = add i64 %mul2127, %526
  %mul2129 = mul i64 0, %add2128
  %add2130 = add i64 %mul2129, 1
  %shl2131 = shl i64 %add2130, 62
  %sub2132 = sub i64 %shl2131, 1
  %mul2133 = mul i64 %sub2132, 2
  %add2134 = add i64 %mul2133, 1
  %sub2135 = sub i64 %conv2126, %add2134
  br label %cond.end.2141

cond.false.2136:                                  ; preds = %cond.false.2110
  %527 = load i64, i64* %format_bytes, align 8
  %mul2137 = mul nsw i64 0, %527
  %528 = load i64, i64* %size.addr, align 8
  %add2138 = add i64 %mul2137, %528
  %mul2139 = mul i64 0, %add2138
  %add2140 = add i64 %mul2139, 0
  br label %cond.end.2141

cond.end.2141:                                    ; preds = %cond.false.2136, %cond.true.2117
  %cond2142 = phi i64 [ %sub2135, %cond.true.2117 ], [ %add2140, %cond.false.2136 ]
  %529 = load i64, i64* %format_bytes, align 8
  %div2143 = udiv i64 %cond2142, %529
  %530 = load i64, i64* %size.addr, align 8
  %cmp2144 = icmp ult i64 %div2143, %530
  br i1 %cmp2144, label %cond.true.2229, label %lor.lhs.false.2215

cond.false.2146:                                  ; preds = %lor.lhs.false.2074
  %531 = load i64, i64* %format_bytes, align 8
  %cmp2147 = icmp eq i64 %531, 0
  br i1 %cmp2147, label %cond.true.2149, label %cond.false.2150

cond.true.2149:                                   ; preds = %cond.false.2146
  br i1 false, label %cond.true.2229, label %lor.lhs.false.2215

cond.false.2150:                                  ; preds = %cond.false.2146
  %532 = load i64, i64* %size.addr, align 8
  %cmp2151 = icmp ult i64 %532, 0
  br i1 %cmp2151, label %cond.true.2153, label %cond.false.2189

cond.true.2153:                                   ; preds = %cond.false.2150
  %533 = load i64, i64* %size.addr, align 8
  %534 = load i64, i64* %format_bytes, align 8
  %mul2154 = mul nsw i64 0, %534
  %535 = load i64, i64* %size.addr, align 8
  %add2155 = add i64 %mul2154, %535
  %mul2156 = mul i64 0, %add2155
  %sub2157 = sub i64 %mul2156, 1
  %cmp2158 = icmp ult i64 %sub2157, 0
  br i1 %cmp2158, label %cond.true.2160, label %cond.false.2179

cond.true.2160:                                   ; preds = %cond.true.2153
  %536 = load i64, i64* %format_bytes, align 8
  %mul2161 = mul nsw i64 0, %536
  %537 = load i64, i64* %size.addr, align 8
  %add2162 = add i64 %mul2161, %537
  %mul2163 = mul i64 0, %add2162
  %add2164 = add i64 %mul2163, 0
  %neg2165 = xor i64 %add2164, -1
  %cmp2166 = icmp eq i64 %neg2165, -1
  %conv2167 = zext i1 %cmp2166 to i32
  %sub2168 = sub nsw i32 0, %conv2167
  %conv2169 = sext i32 %sub2168 to i64
  %538 = load i64, i64* %format_bytes, align 8
  %mul2170 = mul nsw i64 0, %538
  %539 = load i64, i64* %size.addr, align 8
  %add2171 = add i64 %mul2170, %539
  %mul2172 = mul i64 0, %add2171
  %add2173 = add i64 %mul2172, 1
  %shl2174 = shl i64 %add2173, 62
  %sub2175 = sub i64 %shl2174, 1
  %mul2176 = mul i64 %sub2175, 2
  %add2177 = add i64 %mul2176, 1
  %sub2178 = sub i64 %conv2169, %add2177
  br label %cond.end.2184

cond.false.2179:                                  ; preds = %cond.true.2153
  %540 = load i64, i64* %format_bytes, align 8
  %mul2180 = mul nsw i64 0, %540
  %541 = load i64, i64* %size.addr, align 8
  %add2181 = add i64 %mul2180, %541
  %mul2182 = mul i64 0, %add2181
  %add2183 = add i64 %mul2182, 0
  br label %cond.end.2184

cond.end.2184:                                    ; preds = %cond.false.2179, %cond.true.2160
  %cond2185 = phi i64 [ %sub2178, %cond.true.2160 ], [ %add2183, %cond.false.2179 ]
  %542 = load i64, i64* %format_bytes, align 8
  %div2186 = udiv i64 %cond2185, %542
  %cmp2187 = icmp ult i64 %533, %div2186
  br i1 %cmp2187, label %cond.true.2229, label %lor.lhs.false.2215

cond.false.2189:                                  ; preds = %cond.false.2150
  %543 = load i64, i64* %format_bytes, align 8
  %mul2190 = mul nsw i64 0, %543
  %544 = load i64, i64* %size.addr, align 8
  %add2191 = add i64 %mul2190, %544
  %mul2192 = mul i64 0, %add2191
  %sub2193 = sub i64 %mul2192, 1
  %cmp2194 = icmp ult i64 %sub2193, 0
  br i1 %cmp2194, label %cond.true.2196, label %cond.false.2205

cond.true.2196:                                   ; preds = %cond.false.2189
  %545 = load i64, i64* %format_bytes, align 8
  %mul2197 = mul nsw i64 0, %545
  %546 = load i64, i64* %size.addr, align 8
  %add2198 = add i64 %mul2197, %546
  %mul2199 = mul i64 0, %add2198
  %add2200 = add i64 %mul2199, 1
  %shl2201 = shl i64 %add2200, 62
  %sub2202 = sub i64 %shl2201, 1
  %mul2203 = mul i64 %sub2202, 2
  %add2204 = add i64 %mul2203, 1
  br label %cond.end.2210

cond.false.2205:                                  ; preds = %cond.false.2189
  %547 = load i64, i64* %format_bytes, align 8
  %mul2206 = mul nsw i64 0, %547
  %548 = load i64, i64* %size.addr, align 8
  %add2207 = add i64 %mul2206, %548
  %mul2208 = mul i64 0, %add2207
  %sub2209 = sub i64 %mul2208, 1
  br label %cond.end.2210

cond.end.2210:                                    ; preds = %cond.false.2205, %cond.true.2196
  %cond2211 = phi i64 [ %add2204, %cond.true.2196 ], [ %sub2209, %cond.false.2205 ]
  %549 = load i64, i64* %format_bytes, align 8
  %div2212 = udiv i64 %cond2211, %549
  %550 = load i64, i64* %size.addr, align 8
  %cmp2213 = icmp ult i64 %div2212, %550
  br i1 %cmp2213, label %cond.true.2229, label %lor.lhs.false.2215

lor.lhs.false.2215:                               ; preds = %cond.end.2210, %cond.end.2184, %cond.true.2149, %cond.end.2141, %cond.true.2109, %cond.end.2101
  %551 = load i64, i64* %size.addr, align 8
  %552 = load i64, i64* %format_bytes, align 8
  %mul2216 = mul i64 %551, %552
  %mul2217 = mul i64 0, %mul2216
  %sub2218 = sub i64 %mul2217, 1
  %cmp2219 = icmp ult i64 %sub2218, 0
  br i1 %cmp2219, label %land.lhs.true.2221, label %lor.lhs.false.2225

land.lhs.true.2221:                               ; preds = %lor.lhs.false.2215
  %553 = load i64, i64* %size.addr, align 8
  %554 = load i64, i64* %format_bytes, align 8
  %mul2222 = mul i64 %553, %554
  %cmp2223 = icmp ult i64 %mul2222, -9223372036854775808
  br i1 %cmp2223, label %cond.true.2229, label %lor.lhs.false.2225

lor.lhs.false.2225:                               ; preds = %land.lhs.true.2221, %lor.lhs.false.2215
  %555 = load i64, i64* %size.addr, align 8
  %556 = load i64, i64* %format_bytes, align 8
  %mul2226 = mul i64 %555, %556
  %cmp2227 = icmp ult i64 9223372036854775807, %mul2226
  br i1 %cmp2227, label %cond.true.2229, label %cond.false.2241

cond.true.2229:                                   ; preds = %lor.lhs.false.2225, %land.lhs.true.2221, %cond.end.2210, %cond.end.2184, %cond.true.2149, %cond.end.2141, %cond.true.2109, %cond.end.2101, %land.lhs.true.2071, %land.lhs.true.2065
  %557 = load i64, i64* %size.addr, align 8
  %558 = load i64, i64* %format_bytes, align 8
  %mul2230 = mul i64 %557, %558
  %cmp2231 = icmp ule i64 %mul2230, 9223372036854775807
  br i1 %cmp2231, label %cond.true.2233, label %cond.false.2235

cond.true.2233:                                   ; preds = %cond.true.2229
  %559 = load i64, i64* %size.addr, align 8
  %560 = load i64, i64* %format_bytes, align 8
  %mul2234 = mul i64 %559, %560
  br label %cond.end.2239

cond.false.2235:                                  ; preds = %cond.true.2229
  %561 = load i64, i64* %size.addr, align 8
  %562 = load i64, i64* %format_bytes, align 8
  %mul2236 = mul i64 %561, %562
  %sub2237 = sub i64 %mul2236, -9223372036854775808
  %add2238 = add nsw i64 %sub2237, -9223372036854775808
  br label %cond.end.2239

cond.end.2239:                                    ; preds = %cond.false.2235, %cond.true.2233
  %cond2240 = phi i64 [ %mul2234, %cond.true.2233 ], [ %add2238, %cond.false.2235 ]
  store i64 %cond2240, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.2241:                                  ; preds = %lor.lhs.false.2225
  %563 = load i64, i64* %size.addr, align 8
  %564 = load i64, i64* %format_bytes, align 8
  %mul2242 = mul i64 %563, %564
  %cmp2243 = icmp ule i64 %mul2242, 9223372036854775807
  br i1 %cmp2243, label %cond.true.2245, label %cond.false.2247

cond.true.2245:                                   ; preds = %cond.false.2241
  %565 = load i64, i64* %size.addr, align 8
  %566 = load i64, i64* %format_bytes, align 8
  %mul2246 = mul i64 %565, %566
  br label %cond.end.2251

cond.false.2247:                                  ; preds = %cond.false.2241
  %567 = load i64, i64* %size.addr, align 8
  %568 = load i64, i64* %format_bytes, align 8
  %mul2248 = mul i64 %567, %568
  %sub2249 = sub i64 %mul2248, -9223372036854775808
  %add2250 = add nsw i64 %sub2249, -9223372036854775808
  br label %cond.end.2251

cond.end.2251:                                    ; preds = %cond.false.2247, %cond.true.2245
  %cond2252 = phi i64 [ %mul2246, %cond.true.2245 ], [ %add2250, %cond.false.2247 ]
  store i64 %cond2252, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.2253:                                  ; preds = %cond.false.1799
  br i1 false, label %cond.true.2254, label %cond.false.2480

cond.true.2254:                                   ; preds = %cond.false.2253
  %569 = load i64, i64* %format_bytes, align 8
  %mul2255 = mul nsw i64 0, %569
  %570 = load i64, i64* %size.addr, align 8
  %add2256 = add nsw i64 %mul2255, %570
  %mul2257 = mul nsw i64 0, %add2256
  %sub2258 = sub nsw i64 %mul2257, 1
  %cmp2259 = icmp slt i64 %sub2258, 0
  br i1 %cmp2259, label %cond.true.2261, label %cond.false.2280

cond.true.2261:                                   ; preds = %cond.true.2254
  %571 = load i64, i64* %format_bytes, align 8
  %mul2262 = mul nsw i64 0, %571
  %572 = load i64, i64* %size.addr, align 8
  %add2263 = add nsw i64 %mul2262, %572
  %mul2264 = mul nsw i64 0, %add2263
  %add2265 = add nsw i64 %mul2264, 0
  %neg2266 = xor i64 %add2265, -1
  %cmp2267 = icmp eq i64 %neg2266, -1
  %conv2268 = zext i1 %cmp2267 to i32
  %sub2269 = sub nsw i32 0, %conv2268
  %conv2270 = sext i32 %sub2269 to i64
  %573 = load i64, i64* %format_bytes, align 8
  %mul2271 = mul nsw i64 0, %573
  %574 = load i64, i64* %size.addr, align 8
  %add2272 = add nsw i64 %mul2271, %574
  %mul2273 = mul nsw i64 0, %add2272
  %add2274 = add nsw i64 %mul2273, 1
  %shl2275 = shl i64 %add2274, 62
  %sub2276 = sub nsw i64 %shl2275, 1
  %mul2277 = mul nsw i64 %sub2276, 2
  %add2278 = add nsw i64 %mul2277, 1
  %sub2279 = sub nsw i64 %conv2270, %add2278
  br label %cond.end.2285

cond.false.2280:                                  ; preds = %cond.true.2254
  %575 = load i64, i64* %format_bytes, align 8
  %mul2281 = mul nsw i64 0, %575
  %576 = load i64, i64* %size.addr, align 8
  %add2282 = add nsw i64 %mul2281, %576
  %mul2283 = mul nsw i64 0, %add2282
  %add2284 = add nsw i64 %mul2283, 0
  br label %cond.end.2285

cond.end.2285:                                    ; preds = %cond.false.2280, %cond.true.2261
  %cond2286 = phi i64 [ %sub2279, %cond.true.2261 ], [ %add2284, %cond.false.2280 ]
  %cmp2287 = icmp eq i64 %cond2286, 0
  br i1 %cmp2287, label %land.lhs.true.2289, label %lor.lhs.false.2301

land.lhs.true.2289:                               ; preds = %cond.end.2285
  %577 = load i64, i64* %size.addr, align 8
  %cmp2290 = icmp slt i64 %577, 0
  br i1 %cmp2290, label %land.lhs.true.2292, label %lor.lhs.false.2295

land.lhs.true.2292:                               ; preds = %land.lhs.true.2289
  %578 = load i64, i64* %format_bytes, align 8
  %cmp2293 = icmp slt i64 0, %578
  br i1 %cmp2293, label %cond.true.2456, label %lor.lhs.false.2295

lor.lhs.false.2295:                               ; preds = %land.lhs.true.2292, %land.lhs.true.2289
  %579 = load i64, i64* %format_bytes, align 8
  %cmp2296 = icmp slt i64 %579, 0
  br i1 %cmp2296, label %land.lhs.true.2298, label %lor.lhs.false.2301

land.lhs.true.2298:                               ; preds = %lor.lhs.false.2295
  %580 = load i64, i64* %size.addr, align 8
  %cmp2299 = icmp slt i64 0, %580
  br i1 %cmp2299, label %cond.true.2456, label %lor.lhs.false.2301

lor.lhs.false.2301:                               ; preds = %land.lhs.true.2298, %lor.lhs.false.2295, %cond.end.2285
  %581 = load i64, i64* %format_bytes, align 8
  %cmp2302 = icmp slt i64 %581, 0
  br i1 %cmp2302, label %cond.true.2304, label %cond.false.2373

cond.true.2304:                                   ; preds = %lor.lhs.false.2301
  %582 = load i64, i64* %size.addr, align 8
  %cmp2305 = icmp slt i64 %582, 0
  br i1 %cmp2305, label %cond.true.2307, label %cond.false.2333

cond.true.2307:                                   ; preds = %cond.true.2304
  %583 = load i64, i64* %size.addr, align 8
  %584 = load i64, i64* %format_bytes, align 8
  %mul2308 = mul nsw i64 0, %584
  %585 = load i64, i64* %size.addr, align 8
  %add2309 = add nsw i64 %mul2308, %585
  %mul2310 = mul nsw i64 0, %add2309
  %sub2311 = sub nsw i64 %mul2310, 1
  %cmp2312 = icmp slt i64 %sub2311, 0
  br i1 %cmp2312, label %cond.true.2314, label %cond.false.2323

cond.true.2314:                                   ; preds = %cond.true.2307
  %586 = load i64, i64* %format_bytes, align 8
  %mul2315 = mul nsw i64 0, %586
  %587 = load i64, i64* %size.addr, align 8
  %add2316 = add nsw i64 %mul2315, %587
  %mul2317 = mul nsw i64 0, %add2316
  %add2318 = add nsw i64 %mul2317, 1
  %shl2319 = shl i64 %add2318, 62
  %sub2320 = sub nsw i64 %shl2319, 1
  %mul2321 = mul nsw i64 %sub2320, 2
  %add2322 = add nsw i64 %mul2321, 1
  br label %cond.end.2328

cond.false.2323:                                  ; preds = %cond.true.2307
  %588 = load i64, i64* %format_bytes, align 8
  %mul2324 = mul nsw i64 0, %588
  %589 = load i64, i64* %size.addr, align 8
  %add2325 = add nsw i64 %mul2324, %589
  %mul2326 = mul nsw i64 0, %add2325
  %sub2327 = sub nsw i64 %mul2326, 1
  br label %cond.end.2328

cond.end.2328:                                    ; preds = %cond.false.2323, %cond.true.2314
  %cond2329 = phi i64 [ %add2322, %cond.true.2314 ], [ %sub2327, %cond.false.2323 ]
  %590 = load i64, i64* %format_bytes, align 8
  %div2330 = sdiv i64 %cond2329, %590
  %cmp2331 = icmp slt i64 %583, %div2330
  br i1 %cmp2331, label %cond.true.2456, label %lor.lhs.false.2442

cond.false.2333:                                  ; preds = %cond.true.2304
  %591 = load i64, i64* %format_bytes, align 8
  %cmp2334 = icmp eq i64 %591, -1
  br i1 %cmp2334, label %cond.true.2336, label %cond.false.2337

cond.true.2336:                                   ; preds = %cond.false.2333
  br i1 false, label %cond.true.2456, label %lor.lhs.false.2442

cond.false.2337:                                  ; preds = %cond.false.2333
  %592 = load i64, i64* %format_bytes, align 8
  %mul2338 = mul nsw i64 0, %592
  %593 = load i64, i64* %size.addr, align 8
  %add2339 = add nsw i64 %mul2338, %593
  %mul2340 = mul nsw i64 0, %add2339
  %sub2341 = sub nsw i64 %mul2340, 1
  %cmp2342 = icmp slt i64 %sub2341, 0
  br i1 %cmp2342, label %cond.true.2344, label %cond.false.2363

cond.true.2344:                                   ; preds = %cond.false.2337
  %594 = load i64, i64* %format_bytes, align 8
  %mul2345 = mul nsw i64 0, %594
  %595 = load i64, i64* %size.addr, align 8
  %add2346 = add nsw i64 %mul2345, %595
  %mul2347 = mul nsw i64 0, %add2346
  %add2348 = add nsw i64 %mul2347, 0
  %neg2349 = xor i64 %add2348, -1
  %cmp2350 = icmp eq i64 %neg2349, -1
  %conv2351 = zext i1 %cmp2350 to i32
  %sub2352 = sub nsw i32 0, %conv2351
  %conv2353 = sext i32 %sub2352 to i64
  %596 = load i64, i64* %format_bytes, align 8
  %mul2354 = mul nsw i64 0, %596
  %597 = load i64, i64* %size.addr, align 8
  %add2355 = add nsw i64 %mul2354, %597
  %mul2356 = mul nsw i64 0, %add2355
  %add2357 = add nsw i64 %mul2356, 1
  %shl2358 = shl i64 %add2357, 62
  %sub2359 = sub nsw i64 %shl2358, 1
  %mul2360 = mul nsw i64 %sub2359, 2
  %add2361 = add nsw i64 %mul2360, 1
  %sub2362 = sub nsw i64 %conv2353, %add2361
  br label %cond.end.2368

cond.false.2363:                                  ; preds = %cond.false.2337
  %598 = load i64, i64* %format_bytes, align 8
  %mul2364 = mul nsw i64 0, %598
  %599 = load i64, i64* %size.addr, align 8
  %add2365 = add nsw i64 %mul2364, %599
  %mul2366 = mul nsw i64 0, %add2365
  %add2367 = add nsw i64 %mul2366, 0
  br label %cond.end.2368

cond.end.2368:                                    ; preds = %cond.false.2363, %cond.true.2344
  %cond2369 = phi i64 [ %sub2362, %cond.true.2344 ], [ %add2367, %cond.false.2363 ]
  %600 = load i64, i64* %format_bytes, align 8
  %div2370 = sdiv i64 %cond2369, %600
  %601 = load i64, i64* %size.addr, align 8
  %cmp2371 = icmp slt i64 %div2370, %601
  br i1 %cmp2371, label %cond.true.2456, label %lor.lhs.false.2442

cond.false.2373:                                  ; preds = %lor.lhs.false.2301
  %602 = load i64, i64* %format_bytes, align 8
  %cmp2374 = icmp eq i64 %602, 0
  br i1 %cmp2374, label %cond.true.2376, label %cond.false.2377

cond.true.2376:                                   ; preds = %cond.false.2373
  br i1 false, label %cond.true.2456, label %lor.lhs.false.2442

cond.false.2377:                                  ; preds = %cond.false.2373
  %603 = load i64, i64* %size.addr, align 8
  %cmp2378 = icmp slt i64 %603, 0
  br i1 %cmp2378, label %cond.true.2380, label %cond.false.2416

cond.true.2380:                                   ; preds = %cond.false.2377
  %604 = load i64, i64* %size.addr, align 8
  %605 = load i64, i64* %format_bytes, align 8
  %mul2381 = mul nsw i64 0, %605
  %606 = load i64, i64* %size.addr, align 8
  %add2382 = add nsw i64 %mul2381, %606
  %mul2383 = mul nsw i64 0, %add2382
  %sub2384 = sub nsw i64 %mul2383, 1
  %cmp2385 = icmp slt i64 %sub2384, 0
  br i1 %cmp2385, label %cond.true.2387, label %cond.false.2406

cond.true.2387:                                   ; preds = %cond.true.2380
  %607 = load i64, i64* %format_bytes, align 8
  %mul2388 = mul nsw i64 0, %607
  %608 = load i64, i64* %size.addr, align 8
  %add2389 = add nsw i64 %mul2388, %608
  %mul2390 = mul nsw i64 0, %add2389
  %add2391 = add nsw i64 %mul2390, 0
  %neg2392 = xor i64 %add2391, -1
  %cmp2393 = icmp eq i64 %neg2392, -1
  %conv2394 = zext i1 %cmp2393 to i32
  %sub2395 = sub nsw i32 0, %conv2394
  %conv2396 = sext i32 %sub2395 to i64
  %609 = load i64, i64* %format_bytes, align 8
  %mul2397 = mul nsw i64 0, %609
  %610 = load i64, i64* %size.addr, align 8
  %add2398 = add nsw i64 %mul2397, %610
  %mul2399 = mul nsw i64 0, %add2398
  %add2400 = add nsw i64 %mul2399, 1
  %shl2401 = shl i64 %add2400, 62
  %sub2402 = sub nsw i64 %shl2401, 1
  %mul2403 = mul nsw i64 %sub2402, 2
  %add2404 = add nsw i64 %mul2403, 1
  %sub2405 = sub nsw i64 %conv2396, %add2404
  br label %cond.end.2411

cond.false.2406:                                  ; preds = %cond.true.2380
  %611 = load i64, i64* %format_bytes, align 8
  %mul2407 = mul nsw i64 0, %611
  %612 = load i64, i64* %size.addr, align 8
  %add2408 = add nsw i64 %mul2407, %612
  %mul2409 = mul nsw i64 0, %add2408
  %add2410 = add nsw i64 %mul2409, 0
  br label %cond.end.2411

cond.end.2411:                                    ; preds = %cond.false.2406, %cond.true.2387
  %cond2412 = phi i64 [ %sub2405, %cond.true.2387 ], [ %add2410, %cond.false.2406 ]
  %613 = load i64, i64* %format_bytes, align 8
  %div2413 = sdiv i64 %cond2412, %613
  %cmp2414 = icmp slt i64 %604, %div2413
  br i1 %cmp2414, label %cond.true.2456, label %lor.lhs.false.2442

cond.false.2416:                                  ; preds = %cond.false.2377
  %614 = load i64, i64* %format_bytes, align 8
  %mul2417 = mul nsw i64 0, %614
  %615 = load i64, i64* %size.addr, align 8
  %add2418 = add nsw i64 %mul2417, %615
  %mul2419 = mul nsw i64 0, %add2418
  %sub2420 = sub nsw i64 %mul2419, 1
  %cmp2421 = icmp slt i64 %sub2420, 0
  br i1 %cmp2421, label %cond.true.2423, label %cond.false.2432

cond.true.2423:                                   ; preds = %cond.false.2416
  %616 = load i64, i64* %format_bytes, align 8
  %mul2424 = mul nsw i64 0, %616
  %617 = load i64, i64* %size.addr, align 8
  %add2425 = add nsw i64 %mul2424, %617
  %mul2426 = mul nsw i64 0, %add2425
  %add2427 = add nsw i64 %mul2426, 1
  %shl2428 = shl i64 %add2427, 62
  %sub2429 = sub nsw i64 %shl2428, 1
  %mul2430 = mul nsw i64 %sub2429, 2
  %add2431 = add nsw i64 %mul2430, 1
  br label %cond.end.2437

cond.false.2432:                                  ; preds = %cond.false.2416
  %618 = load i64, i64* %format_bytes, align 8
  %mul2433 = mul nsw i64 0, %618
  %619 = load i64, i64* %size.addr, align 8
  %add2434 = add nsw i64 %mul2433, %619
  %mul2435 = mul nsw i64 0, %add2434
  %sub2436 = sub nsw i64 %mul2435, 1
  br label %cond.end.2437

cond.end.2437:                                    ; preds = %cond.false.2432, %cond.true.2423
  %cond2438 = phi i64 [ %add2431, %cond.true.2423 ], [ %sub2436, %cond.false.2432 ]
  %620 = load i64, i64* %format_bytes, align 8
  %div2439 = sdiv i64 %cond2438, %620
  %621 = load i64, i64* %size.addr, align 8
  %cmp2440 = icmp slt i64 %div2439, %621
  br i1 %cmp2440, label %cond.true.2456, label %lor.lhs.false.2442

lor.lhs.false.2442:                               ; preds = %cond.end.2437, %cond.end.2411, %cond.true.2376, %cond.end.2368, %cond.true.2336, %cond.end.2328
  %622 = load i64, i64* %size.addr, align 8
  %623 = load i64, i64* %format_bytes, align 8
  %mul2443 = mul nsw i64 %622, %623
  %mul2444 = mul nsw i64 0, %mul2443
  %sub2445 = sub nsw i64 %mul2444, 1
  %cmp2446 = icmp slt i64 %sub2445, 0
  br i1 %cmp2446, label %land.lhs.true.2448, label %lor.lhs.false.2452

land.lhs.true.2448:                               ; preds = %lor.lhs.false.2442
  %624 = load i64, i64* %size.addr, align 8
  %625 = load i64, i64* %format_bytes, align 8
  %mul2449 = mul nsw i64 %624, %625
  %cmp2450 = icmp slt i64 %mul2449, -9223372036854775808
  br i1 %cmp2450, label %cond.true.2456, label %lor.lhs.false.2452

lor.lhs.false.2452:                               ; preds = %land.lhs.true.2448, %lor.lhs.false.2442
  %626 = load i64, i64* %size.addr, align 8
  %627 = load i64, i64* %format_bytes, align 8
  %mul2453 = mul nsw i64 %626, %627
  %cmp2454 = icmp slt i64 9223372036854775807, %mul2453
  br i1 %cmp2454, label %cond.true.2456, label %cond.false.2468

cond.true.2456:                                   ; preds = %lor.lhs.false.2452, %land.lhs.true.2448, %cond.end.2437, %cond.end.2411, %cond.true.2376, %cond.end.2368, %cond.true.2336, %cond.end.2328, %land.lhs.true.2298, %land.lhs.true.2292
  %628 = load i64, i64* %size.addr, align 8
  %629 = load i64, i64* %format_bytes, align 8
  %mul2457 = mul i64 %628, %629
  %cmp2458 = icmp ule i64 %mul2457, 9223372036854775807
  br i1 %cmp2458, label %cond.true.2460, label %cond.false.2462

cond.true.2460:                                   ; preds = %cond.true.2456
  %630 = load i64, i64* %size.addr, align 8
  %631 = load i64, i64* %format_bytes, align 8
  %mul2461 = mul i64 %630, %631
  br label %cond.end.2466

cond.false.2462:                                  ; preds = %cond.true.2456
  %632 = load i64, i64* %size.addr, align 8
  %633 = load i64, i64* %format_bytes, align 8
  %mul2463 = mul i64 %632, %633
  %sub2464 = sub i64 %mul2463, -9223372036854775808
  %add2465 = add nsw i64 %sub2464, -9223372036854775808
  br label %cond.end.2466

cond.end.2466:                                    ; preds = %cond.false.2462, %cond.true.2460
  %cond2467 = phi i64 [ %mul2461, %cond.true.2460 ], [ %add2465, %cond.false.2462 ]
  store i64 %cond2467, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.2468:                                  ; preds = %lor.lhs.false.2452
  %634 = load i64, i64* %size.addr, align 8
  %635 = load i64, i64* %format_bytes, align 8
  %mul2469 = mul i64 %634, %635
  %cmp2470 = icmp ule i64 %mul2469, 9223372036854775807
  br i1 %cmp2470, label %cond.true.2472, label %cond.false.2474

cond.true.2472:                                   ; preds = %cond.false.2468
  %636 = load i64, i64* %size.addr, align 8
  %637 = load i64, i64* %format_bytes, align 8
  %mul2473 = mul i64 %636, %637
  br label %cond.end.2478

cond.false.2474:                                  ; preds = %cond.false.2468
  %638 = load i64, i64* %size.addr, align 8
  %639 = load i64, i64* %format_bytes, align 8
  %mul2475 = mul i64 %638, %639
  %sub2476 = sub i64 %mul2475, -9223372036854775808
  %add2477 = add nsw i64 %sub2476, -9223372036854775808
  br label %cond.end.2478

cond.end.2478:                                    ; preds = %cond.false.2474, %cond.true.2472
  %cond2479 = phi i64 [ %mul2473, %cond.true.2472 ], [ %add2477, %cond.false.2474 ]
  store i64 %cond2479, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

cond.false.2480:                                  ; preds = %cond.false.2253
  %640 = load i64, i64* %format_bytes, align 8
  %mul2481 = mul nsw i64 0, %640
  %641 = load i64, i64* %size.addr, align 8
  %add2482 = add i64 %mul2481, %641
  %mul2483 = mul i64 0, %add2482
  %sub2484 = sub i64 %mul2483, 1
  %cmp2485 = icmp ult i64 %sub2484, 0
  br i1 %cmp2485, label %cond.true.2487, label %cond.false.2506

cond.true.2487:                                   ; preds = %cond.false.2480
  %642 = load i64, i64* %format_bytes, align 8
  %mul2488 = mul nsw i64 0, %642
  %643 = load i64, i64* %size.addr, align 8
  %add2489 = add i64 %mul2488, %643
  %mul2490 = mul i64 0, %add2489
  %add2491 = add i64 %mul2490, 0
  %neg2492 = xor i64 %add2491, -1
  %cmp2493 = icmp eq i64 %neg2492, -1
  %conv2494 = zext i1 %cmp2493 to i32
  %sub2495 = sub nsw i32 0, %conv2494
  %conv2496 = sext i32 %sub2495 to i64
  %644 = load i64, i64* %format_bytes, align 8
  %mul2497 = mul nsw i64 0, %644
  %645 = load i64, i64* %size.addr, align 8
  %add2498 = add i64 %mul2497, %645
  %mul2499 = mul i64 0, %add2498
  %add2500 = add i64 %mul2499, 1
  %shl2501 = shl i64 %add2500, 62
  %sub2502 = sub i64 %shl2501, 1
  %mul2503 = mul i64 %sub2502, 2
  %add2504 = add i64 %mul2503, 1
  %sub2505 = sub i64 %conv2496, %add2504
  br label %cond.end.2511

cond.false.2506:                                  ; preds = %cond.false.2480
  %646 = load i64, i64* %format_bytes, align 8
  %mul2507 = mul nsw i64 0, %646
  %647 = load i64, i64* %size.addr, align 8
  %add2508 = add i64 %mul2507, %647
  %mul2509 = mul i64 0, %add2508
  %add2510 = add i64 %mul2509, 0
  br label %cond.end.2511

cond.end.2511:                                    ; preds = %cond.false.2506, %cond.true.2487
  %cond2512 = phi i64 [ %sub2505, %cond.true.2487 ], [ %add2510, %cond.false.2506 ]
  %cmp2513 = icmp eq i64 %cond2512, 0
  br i1 %cmp2513, label %land.lhs.true.2515, label %lor.lhs.false.2527

land.lhs.true.2515:                               ; preds = %cond.end.2511
  %648 = load i64, i64* %size.addr, align 8
  %cmp2516 = icmp ult i64 %648, 0
  br i1 %cmp2516, label %land.lhs.true.2518, label %lor.lhs.false.2521

land.lhs.true.2518:                               ; preds = %land.lhs.true.2515
  %649 = load i64, i64* %format_bytes, align 8
  %cmp2519 = icmp slt i64 0, %649
  br i1 %cmp2519, label %cond.true.2682, label %lor.lhs.false.2521

lor.lhs.false.2521:                               ; preds = %land.lhs.true.2518, %land.lhs.true.2515
  %650 = load i64, i64* %format_bytes, align 8
  %cmp2522 = icmp slt i64 %650, 0
  br i1 %cmp2522, label %land.lhs.true.2524, label %lor.lhs.false.2527

land.lhs.true.2524:                               ; preds = %lor.lhs.false.2521
  %651 = load i64, i64* %size.addr, align 8
  %cmp2525 = icmp ult i64 0, %651
  br i1 %cmp2525, label %cond.true.2682, label %lor.lhs.false.2527

lor.lhs.false.2527:                               ; preds = %land.lhs.true.2524, %lor.lhs.false.2521, %cond.end.2511
  %652 = load i64, i64* %format_bytes, align 8
  %cmp2528 = icmp slt i64 %652, 0
  br i1 %cmp2528, label %cond.true.2530, label %cond.false.2599

cond.true.2530:                                   ; preds = %lor.lhs.false.2527
  %653 = load i64, i64* %size.addr, align 8
  %cmp2531 = icmp ult i64 %653, 0
  br i1 %cmp2531, label %cond.true.2533, label %cond.false.2559

cond.true.2533:                                   ; preds = %cond.true.2530
  %654 = load i64, i64* %size.addr, align 8
  %655 = load i64, i64* %format_bytes, align 8
  %mul2534 = mul nsw i64 0, %655
  %656 = load i64, i64* %size.addr, align 8
  %add2535 = add i64 %mul2534, %656
  %mul2536 = mul i64 0, %add2535
  %sub2537 = sub i64 %mul2536, 1
  %cmp2538 = icmp ult i64 %sub2537, 0
  br i1 %cmp2538, label %cond.true.2540, label %cond.false.2549

cond.true.2540:                                   ; preds = %cond.true.2533
  %657 = load i64, i64* %format_bytes, align 8
  %mul2541 = mul nsw i64 0, %657
  %658 = load i64, i64* %size.addr, align 8
  %add2542 = add i64 %mul2541, %658
  %mul2543 = mul i64 0, %add2542
  %add2544 = add i64 %mul2543, 1
  %shl2545 = shl i64 %add2544, 62
  %sub2546 = sub i64 %shl2545, 1
  %mul2547 = mul i64 %sub2546, 2
  %add2548 = add i64 %mul2547, 1
  br label %cond.end.2554

cond.false.2549:                                  ; preds = %cond.true.2533
  %659 = load i64, i64* %format_bytes, align 8
  %mul2550 = mul nsw i64 0, %659
  %660 = load i64, i64* %size.addr, align 8
  %add2551 = add i64 %mul2550, %660
  %mul2552 = mul i64 0, %add2551
  %sub2553 = sub i64 %mul2552, 1
  br label %cond.end.2554

cond.end.2554:                                    ; preds = %cond.false.2549, %cond.true.2540
  %cond2555 = phi i64 [ %add2548, %cond.true.2540 ], [ %sub2553, %cond.false.2549 ]
  %661 = load i64, i64* %format_bytes, align 8
  %div2556 = udiv i64 %cond2555, %661
  %cmp2557 = icmp ult i64 %654, %div2556
  br i1 %cmp2557, label %cond.true.2682, label %lor.lhs.false.2668

cond.false.2559:                                  ; preds = %cond.true.2530
  %662 = load i64, i64* %format_bytes, align 8
  %cmp2560 = icmp eq i64 %662, -1
  br i1 %cmp2560, label %cond.true.2562, label %cond.false.2563

cond.true.2562:                                   ; preds = %cond.false.2559
  br i1 false, label %cond.true.2682, label %lor.lhs.false.2668

cond.false.2563:                                  ; preds = %cond.false.2559
  %663 = load i64, i64* %format_bytes, align 8
  %mul2564 = mul nsw i64 0, %663
  %664 = load i64, i64* %size.addr, align 8
  %add2565 = add i64 %mul2564, %664
  %mul2566 = mul i64 0, %add2565
  %sub2567 = sub i64 %mul2566, 1
  %cmp2568 = icmp ult i64 %sub2567, 0
  br i1 %cmp2568, label %cond.true.2570, label %cond.false.2589

cond.true.2570:                                   ; preds = %cond.false.2563
  %665 = load i64, i64* %format_bytes, align 8
  %mul2571 = mul nsw i64 0, %665
  %666 = load i64, i64* %size.addr, align 8
  %add2572 = add i64 %mul2571, %666
  %mul2573 = mul i64 0, %add2572
  %add2574 = add i64 %mul2573, 0
  %neg2575 = xor i64 %add2574, -1
  %cmp2576 = icmp eq i64 %neg2575, -1
  %conv2577 = zext i1 %cmp2576 to i32
  %sub2578 = sub nsw i32 0, %conv2577
  %conv2579 = sext i32 %sub2578 to i64
  %667 = load i64, i64* %format_bytes, align 8
  %mul2580 = mul nsw i64 0, %667
  %668 = load i64, i64* %size.addr, align 8
  %add2581 = add i64 %mul2580, %668
  %mul2582 = mul i64 0, %add2581
  %add2583 = add i64 %mul2582, 1
  %shl2584 = shl i64 %add2583, 62
  %sub2585 = sub i64 %shl2584, 1
  %mul2586 = mul i64 %sub2585, 2
  %add2587 = add i64 %mul2586, 1
  %sub2588 = sub i64 %conv2579, %add2587
  br label %cond.end.2594

cond.false.2589:                                  ; preds = %cond.false.2563
  %669 = load i64, i64* %format_bytes, align 8
  %mul2590 = mul nsw i64 0, %669
  %670 = load i64, i64* %size.addr, align 8
  %add2591 = add i64 %mul2590, %670
  %mul2592 = mul i64 0, %add2591
  %add2593 = add i64 %mul2592, 0
  br label %cond.end.2594

cond.end.2594:                                    ; preds = %cond.false.2589, %cond.true.2570
  %cond2595 = phi i64 [ %sub2588, %cond.true.2570 ], [ %add2593, %cond.false.2589 ]
  %671 = load i64, i64* %format_bytes, align 8
  %div2596 = udiv i64 %cond2595, %671
  %672 = load i64, i64* %size.addr, align 8
  %cmp2597 = icmp ult i64 %div2596, %672
  br i1 %cmp2597, label %cond.true.2682, label %lor.lhs.false.2668

cond.false.2599:                                  ; preds = %lor.lhs.false.2527
  %673 = load i64, i64* %format_bytes, align 8
  %cmp2600 = icmp eq i64 %673, 0
  br i1 %cmp2600, label %cond.true.2602, label %cond.false.2603

cond.true.2602:                                   ; preds = %cond.false.2599
  br i1 false, label %cond.true.2682, label %lor.lhs.false.2668

cond.false.2603:                                  ; preds = %cond.false.2599
  %674 = load i64, i64* %size.addr, align 8
  %cmp2604 = icmp ult i64 %674, 0
  br i1 %cmp2604, label %cond.true.2606, label %cond.false.2642

cond.true.2606:                                   ; preds = %cond.false.2603
  %675 = load i64, i64* %size.addr, align 8
  %676 = load i64, i64* %format_bytes, align 8
  %mul2607 = mul nsw i64 0, %676
  %677 = load i64, i64* %size.addr, align 8
  %add2608 = add i64 %mul2607, %677
  %mul2609 = mul i64 0, %add2608
  %sub2610 = sub i64 %mul2609, 1
  %cmp2611 = icmp ult i64 %sub2610, 0
  br i1 %cmp2611, label %cond.true.2613, label %cond.false.2632

cond.true.2613:                                   ; preds = %cond.true.2606
  %678 = load i64, i64* %format_bytes, align 8
  %mul2614 = mul nsw i64 0, %678
  %679 = load i64, i64* %size.addr, align 8
  %add2615 = add i64 %mul2614, %679
  %mul2616 = mul i64 0, %add2615
  %add2617 = add i64 %mul2616, 0
  %neg2618 = xor i64 %add2617, -1
  %cmp2619 = icmp eq i64 %neg2618, -1
  %conv2620 = zext i1 %cmp2619 to i32
  %sub2621 = sub nsw i32 0, %conv2620
  %conv2622 = sext i32 %sub2621 to i64
  %680 = load i64, i64* %format_bytes, align 8
  %mul2623 = mul nsw i64 0, %680
  %681 = load i64, i64* %size.addr, align 8
  %add2624 = add i64 %mul2623, %681
  %mul2625 = mul i64 0, %add2624
  %add2626 = add i64 %mul2625, 1
  %shl2627 = shl i64 %add2626, 62
  %sub2628 = sub i64 %shl2627, 1
  %mul2629 = mul i64 %sub2628, 2
  %add2630 = add i64 %mul2629, 1
  %sub2631 = sub i64 %conv2622, %add2630
  br label %cond.end.2637

cond.false.2632:                                  ; preds = %cond.true.2606
  %682 = load i64, i64* %format_bytes, align 8
  %mul2633 = mul nsw i64 0, %682
  %683 = load i64, i64* %size.addr, align 8
  %add2634 = add i64 %mul2633, %683
  %mul2635 = mul i64 0, %add2634
  %add2636 = add i64 %mul2635, 0
  br label %cond.end.2637

cond.end.2637:                                    ; preds = %cond.false.2632, %cond.true.2613
  %cond2638 = phi i64 [ %sub2631, %cond.true.2613 ], [ %add2636, %cond.false.2632 ]
  %684 = load i64, i64* %format_bytes, align 8
  %div2639 = udiv i64 %cond2638, %684
  %cmp2640 = icmp ult i64 %675, %div2639
  br i1 %cmp2640, label %cond.true.2682, label %lor.lhs.false.2668

cond.false.2642:                                  ; preds = %cond.false.2603
  %685 = load i64, i64* %format_bytes, align 8
  %mul2643 = mul nsw i64 0, %685
  %686 = load i64, i64* %size.addr, align 8
  %add2644 = add i64 %mul2643, %686
  %mul2645 = mul i64 0, %add2644
  %sub2646 = sub i64 %mul2645, 1
  %cmp2647 = icmp ult i64 %sub2646, 0
  br i1 %cmp2647, label %cond.true.2649, label %cond.false.2658

cond.true.2649:                                   ; preds = %cond.false.2642
  %687 = load i64, i64* %format_bytes, align 8
  %mul2650 = mul nsw i64 0, %687
  %688 = load i64, i64* %size.addr, align 8
  %add2651 = add i64 %mul2650, %688
  %mul2652 = mul i64 0, %add2651
  %add2653 = add i64 %mul2652, 1
  %shl2654 = shl i64 %add2653, 62
  %sub2655 = sub i64 %shl2654, 1
  %mul2656 = mul i64 %sub2655, 2
  %add2657 = add i64 %mul2656, 1
  br label %cond.end.2663

cond.false.2658:                                  ; preds = %cond.false.2642
  %689 = load i64, i64* %format_bytes, align 8
  %mul2659 = mul nsw i64 0, %689
  %690 = load i64, i64* %size.addr, align 8
  %add2660 = add i64 %mul2659, %690
  %mul2661 = mul i64 0, %add2660
  %sub2662 = sub i64 %mul2661, 1
  br label %cond.end.2663

cond.end.2663:                                    ; preds = %cond.false.2658, %cond.true.2649
  %cond2664 = phi i64 [ %add2657, %cond.true.2649 ], [ %sub2662, %cond.false.2658 ]
  %691 = load i64, i64* %format_bytes, align 8
  %div2665 = udiv i64 %cond2664, %691
  %692 = load i64, i64* %size.addr, align 8
  %cmp2666 = icmp ult i64 %div2665, %692
  br i1 %cmp2666, label %cond.true.2682, label %lor.lhs.false.2668

lor.lhs.false.2668:                               ; preds = %cond.end.2663, %cond.end.2637, %cond.true.2602, %cond.end.2594, %cond.true.2562, %cond.end.2554
  %693 = load i64, i64* %size.addr, align 8
  %694 = load i64, i64* %format_bytes, align 8
  %mul2669 = mul i64 %693, %694
  %mul2670 = mul i64 0, %mul2669
  %sub2671 = sub i64 %mul2670, 1
  %cmp2672 = icmp ult i64 %sub2671, 0
  br i1 %cmp2672, label %land.lhs.true.2674, label %lor.lhs.false.2678

land.lhs.true.2674:                               ; preds = %lor.lhs.false.2668
  %695 = load i64, i64* %size.addr, align 8
  %696 = load i64, i64* %format_bytes, align 8
  %mul2675 = mul i64 %695, %696
  %cmp2676 = icmp ult i64 %mul2675, -9223372036854775808
  br i1 %cmp2676, label %cond.true.2682, label %lor.lhs.false.2678

lor.lhs.false.2678:                               ; preds = %land.lhs.true.2674, %lor.lhs.false.2668
  %697 = load i64, i64* %size.addr, align 8
  %698 = load i64, i64* %format_bytes, align 8
  %mul2679 = mul i64 %697, %698
  %cmp2680 = icmp ult i64 9223372036854775807, %mul2679
  br i1 %cmp2680, label %cond.true.2682, label %cond.false.2694

cond.true.2682:                                   ; preds = %lor.lhs.false.2678, %land.lhs.true.2674, %cond.end.2663, %cond.end.2637, %cond.true.2602, %cond.end.2594, %cond.true.2562, %cond.end.2554, %land.lhs.true.2524, %land.lhs.true.2518
  %699 = load i64, i64* %size.addr, align 8
  %700 = load i64, i64* %format_bytes, align 8
  %mul2683 = mul i64 %699, %700
  %cmp2684 = icmp ule i64 %mul2683, 9223372036854775807
  br i1 %cmp2684, label %cond.true.2686, label %cond.false.2688

cond.true.2686:                                   ; preds = %cond.true.2682
  %701 = load i64, i64* %size.addr, align 8
  %702 = load i64, i64* %format_bytes, align 8
  %mul2687 = mul i64 %701, %702
  br label %cond.end.2692

cond.false.2688:                                  ; preds = %cond.true.2682
  %703 = load i64, i64* %size.addr, align 8
  %704 = load i64, i64* %format_bytes, align 8
  %mul2689 = mul i64 %703, %704
  %sub2690 = sub i64 %mul2689, -9223372036854775808
  %add2691 = add nsw i64 %sub2690, -9223372036854775808
  br label %cond.end.2692

cond.end.2692:                                    ; preds = %cond.false.2688, %cond.true.2686
  %cond2693 = phi i64 [ %mul2687, %cond.true.2686 ], [ %add2691, %cond.false.2688 ]
  store i64 %cond2693, i64* %data_bytes, align 8
  br i1 true, label %if.then, label %if.end

cond.false.2694:                                  ; preds = %lor.lhs.false.2678
  %705 = load i64, i64* %size.addr, align 8
  %706 = load i64, i64* %format_bytes, align 8
  %mul2695 = mul i64 %705, %706
  %cmp2696 = icmp ule i64 %mul2695, 9223372036854775807
  br i1 %cmp2696, label %cond.true.2698, label %cond.false.2700

cond.true.2698:                                   ; preds = %cond.false.2694
  %707 = load i64, i64* %size.addr, align 8
  %708 = load i64, i64* %format_bytes, align 8
  %mul2699 = mul i64 %707, %708
  br label %cond.end.2704

cond.false.2700:                                  ; preds = %cond.false.2694
  %709 = load i64, i64* %size.addr, align 8
  %710 = load i64, i64* %format_bytes, align 8
  %mul2701 = mul i64 %709, %710
  %sub2702 = sub i64 %mul2701, -9223372036854775808
  %add2703 = add nsw i64 %sub2702, -9223372036854775808
  br label %cond.end.2704

cond.end.2704:                                    ; preds = %cond.false.2700, %cond.true.2698
  %cond2705 = phi i64 [ %mul2699, %cond.true.2698 ], [ %add2703, %cond.false.2700 ]
  store i64 %cond2705, i64* %data_bytes, align 8
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.2704, %cond.end.2692, %cond.end.2478, %cond.end.2466, %cond.end.2251, %cond.end.2239, %cond.end.2025, %cond.end.2013, %cond.end.1796, %cond.end.1777, %cond.end.1556, %cond.end.1537, %cond.end.1258, %cond.end.1229, %cond.end.998, %cond.end.969, %cond.end.621, %cond.end.592, %cond.end.361, %cond.end.332
  call void @memory_full(i64 -1) #5
  unreachable

if.end:                                           ; preds = %cond.end.2704, %cond.end.2692, %cond.end.2478, %cond.end.2466, %cond.end.2251, %cond.end.2239, %cond.end.2025, %cond.end.2013, %cond.end.1796, %cond.end.1777, %cond.end.1556, %cond.end.1537, %cond.end.1258, %cond.end.1229, %cond.end.998, %cond.end.969, %cond.end.621, %cond.end.592, %cond.end.361, %cond.end.332
  %711 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %711, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %712 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %712, i32 0, i32 44
  %713 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %714 = load i8*, i8** %data.addr, align 8
  %715 = load i64, i64* %data_bytes, align 8
  %716 = load i64, i64* %type.addr, align 8
  %717 = load i32, i32* %format.addr, align 4
  %call = call i64 @selection_data_to_lisp_data(%struct.x_display_info* %713, i8* %714, i64 %715, i64 %716, i32 %717)
  ret i64 %call
}

; Function Attrs: noreturn
declare void @memory_full(i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @selection_data_to_lisp_data(%struct.x_display_info* %dpyinfo, i8* %data, i64 %size, i64 %type, i32 %format) #0 {
entry:
  %retval = alloca i64, align 8
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %format.addr = alloca i32, align 4
  %str = alloca i64, align 8
  %lispy_type = alloca i64, align 8
  %i = alloca i64, align 8
  %idata = alloca i32*, align 8
  %v = alloca i64, align 8
  %i82 = alloca i64, align 8
  %v83 = alloca i64, align 8
  %j = alloca i16, align 2
  %i99 = alloca i64, align 8
  %v100 = alloca i64, align 8
  %j108 = alloca i32, align 4
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  %0 = load i64, i64* %type.addr, align 8
  %1 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_NULL = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %1, i32 0, i32 56
  %2 = load i64, i64* %Xatom_NULL, align 8
  %cmp = icmp eq i64 %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 146)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %format.addr, align 4
  %cmp1 = icmp eq i32 %3, 8
  br i1 %cmp1, label %if.then.2, label %if.else.16

if.then.2:                                        ; preds = %if.else
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %call3 = call i64 @make_unibyte_string(i8* %4, i64 %5)
  store i64 %call3, i64* %str, align 8
  %6 = load i64, i64* %type.addr, align 8
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_COMPOUND_TEXT = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 50
  %8 = load i64, i64* %Xatom_COMPOUND_TEXT, align 8
  %cmp4 = icmp eq i64 %6, %8
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.then.2
  %call6 = call i64 @builtin_lisp_symbol(i32 4)
  store i64 %call6, i64* %lispy_type, align 8
  br label %if.end.13

if.else.7:                                        ; preds = %if.then.2
  %9 = load i64, i64* %type.addr, align 8
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_UTF8_STRING = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 51
  %11 = load i64, i64* %Xatom_UTF8_STRING, align 8
  %cmp8 = icmp eq i64 %9, %11
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %call10 = call i64 @builtin_lisp_symbol(i32 154)
  store i64 %call10, i64* %lispy_type, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else.7
  %call12 = call i64 @builtin_lisp_symbol(i32 150)
  store i64 %call12, i64* %lispy_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.5
  %12 = load i64, i64* %size.addr, align 8
  %shl = shl i64 %12, 2
  %add = add i64 %shl, 2
  %call14 = call i64 @builtin_lisp_symbol(i32 452)
  %13 = load i64, i64* %lispy_type, align 8
  %14 = load i64, i64* %str, align 8
  %call15 = call i64 @Fput_text_property(i64 2, i64 %add, i64 %call14, i64 %13, i64 %14)
  %15 = load i64, i64* %str, align 8
  store i64 %15, i64* %retval
  br label %return

if.else.16:                                       ; preds = %if.else
  %16 = load i64, i64* %type.addr, align 8
  %cmp17 = icmp eq i64 %16, 4
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.16
  %17 = load i64, i64* %type.addr, align 8
  %18 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_ATOM_PAIR = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %18, i32 0, i32 58
  %19 = load i64, i64* %Xatom_ATOM_PAIR, align 8
  %cmp18 = icmp eq i64 %17, %19
  br i1 %cmp18, label %if.then.19, label %if.else.31

if.then.19:                                       ; preds = %lor.lhs.false, %if.else.16
  %20 = load i8*, i8** %data.addr, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %idata, align 8
  %22 = load i64, i64* %size.addr, align 8
  %cmp20 = icmp eq i64 %22, 4
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.then.19
  %23 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %24 = load i32*, i32** %idata, align 8
  %arrayidx = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %25 to i64
  %call22 = call i64 @x_atom_to_symbol(%struct.x_display_info* %23, i64 %conv)
  store i64 %call22, i64* %retval
  br label %return

if.else.23:                                       ; preds = %if.then.19
  %26 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %26, 4
  %call24 = call i64 @make_uninit_vector(i64 %div)
  store i64 %call24, i64* %v, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.23
  %27 = load i64, i64* %i, align 8
  %28 = load i64, i64* %size.addr, align 8
  %div25 = udiv i64 %28, 4
  %cmp26 = icmp ult i64 %27, %div25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, i64* %v, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %32 = load i64, i64* %i, align 8
  %33 = load i32*, i32** %idata, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %33, i64 %32
  %34 = load i32, i32* %arrayidx28, align 4
  %conv29 = sext i32 %34 to i64
  %call30 = call i64 @x_atom_to_symbol(%struct.x_display_info* %31, i64 %conv29)
  call void @ASET(i64 %29, i64 %30, i64 %call30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i64, i64* %i, align 8
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i64, i64* %v, align 8
  store i64 %36, i64* %retval
  br label %return

if.else.31:                                       ; preds = %lor.lhs.false
  %37 = load i32, i32* %format.addr, align 4
  %cmp32 = icmp eq i32 %37, 32
  br i1 %cmp32, label %land.lhs.true, label %if.else.67

land.lhs.true:                                    ; preds = %if.else.31
  %38 = load i64, i64* %size.addr, align 8
  %cmp34 = icmp eq i64 %38, 4
  br i1 %cmp34, label %if.then.36, label %if.else.67

if.then.36:                                       ; preds = %land.lhs.true
  %39 = load i8*, i8** %data.addr, align 8
  %40 = bitcast i8* %39 to i32*
  %arrayidx37 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp sle i32 0, %41
  br i1 %cmp38, label %land.lhs.true.45, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.then.36
  %42 = load i8*, i8** %data.addr, align 8
  %43 = bitcast i8* %42 to i32*
  %arrayidx41 = getelementptr inbounds i32, i32* %43, i64 0
  %44 = load i32, i32* %arrayidx41, align 4
  %conv42 = sext i32 %44 to i64
  %cmp43 = icmp sle i64 -2305843009213693952, %conv42
  br i1 %cmp43, label %land.lhs.true.45, label %cond.false

land.lhs.true.45:                                 ; preds = %lor.lhs.false.40, %if.then.36
  %45 = load i8*, i8** %data.addr, align 8
  %46 = bitcast i8* %45 to i32*
  %arrayidx46 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx46, align 4
  %conv47 = sext i32 %47 to i64
  %cmp48 = icmp sle i64 %conv47, 2305843009213693951
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.45
  %48 = load i8*, i8** %data.addr, align 8
  %49 = bitcast i8* %48 to i32*
  %arrayidx50 = getelementptr inbounds i32, i32* %49, i64 0
  %50 = load i32, i32* %arrayidx50, align 4
  %conv51 = sext i32 %50 to i64
  %shl52 = shl i64 %conv51, 2
  %add53 = add i64 %shl52, 2
  br label %cond.end.65

cond.false:                                       ; preds = %land.lhs.true.45, %lor.lhs.false.40
  %51 = load i8*, i8** %data.addr, align 8
  %52 = bitcast i8* %51 to i32*
  %arrayidx54 = getelementptr inbounds i32, i32* %52, i64 0
  %53 = load i32, i32* %arrayidx54, align 4
  %mul = mul nsw i32 0, %53
  %sub = sub nsw i32 %mul, 1
  %cmp55 = icmp slt i32 %sub, 0
  br i1 %cmp55, label %cond.true.57, label %cond.false.61

cond.true.57:                                     ; preds = %cond.false
  %54 = load i8*, i8** %data.addr, align 8
  %55 = bitcast i8* %54 to i32*
  %arrayidx58 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx58, align 4
  %conv59 = sext i32 %56 to i64
  %call60 = call i64 @intbig_to_lisp(i64 %conv59)
  br label %cond.end

cond.false.61:                                    ; preds = %cond.false
  %57 = load i8*, i8** %data.addr, align 8
  %58 = bitcast i8* %57 to i32*
  %arrayidx62 = getelementptr inbounds i32, i32* %58, i64 0
  %59 = load i32, i32* %arrayidx62, align 4
  %conv63 = sext i32 %59 to i64
  %call64 = call i64 @uintbig_to_lisp(i64 %conv63)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.61, %cond.true.57
  %cond = phi i64 [ %call60, %cond.true.57 ], [ %call64, %cond.false.61 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end, %cond.true
  %cond66 = phi i64 [ %add53, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond66, i64* %retval
  br label %return

if.else.67:                                       ; preds = %land.lhs.true, %if.else.31
  %60 = load i32, i32* %format.addr, align 4
  %cmp68 = icmp eq i32 %60, 16
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.78

land.lhs.true.70:                                 ; preds = %if.else.67
  %61 = load i64, i64* %size.addr, align 8
  %cmp71 = icmp eq i64 %61, 2
  br i1 %cmp71, label %if.then.73, label %if.else.78

if.then.73:                                       ; preds = %land.lhs.true.70
  %62 = load i8*, i8** %data.addr, align 8
  %63 = bitcast i8* %62 to i16*
  %arrayidx74 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %64 to i64
  %shl76 = shl i64 %conv75, 2
  %add77 = add i64 %shl76, 2
  store i64 %add77, i64* %retval
  br label %return

if.else.78:                                       ; preds = %land.lhs.true.70, %if.else.67
  %65 = load i32, i32* %format.addr, align 4
  %cmp79 = icmp eq i32 %65, 16
  br i1 %cmp79, label %if.then.81, label %if.else.98

if.then.81:                                       ; preds = %if.else.78
  %66 = load i64, i64* %size.addr, align 8
  %div84 = sdiv i64 %66, 2
  %call85 = call i64 @make_uninit_vector(i64 %div84)
  store i64 %call85, i64* %v83, align 8
  store i64 0, i64* %i82, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.95, %if.then.81
  %67 = load i64, i64* %i82, align 8
  %68 = load i64, i64* %size.addr, align 8
  %div87 = sdiv i64 %68, 2
  %cmp88 = icmp slt i64 %67, %div87
  br i1 %cmp88, label %for.body.90, label %for.end.97

for.body.90:                                      ; preds = %for.cond.86
  %69 = load i64, i64* %i82, align 8
  %70 = load i8*, i8** %data.addr, align 8
  %71 = bitcast i8* %70 to i16*
  %arrayidx91 = getelementptr inbounds i16, i16* %71, i64 %69
  %72 = load i16, i16* %arrayidx91, align 2
  store i16 %72, i16* %j, align 2
  %73 = load i64, i64* %v83, align 8
  %74 = load i64, i64* %i82, align 8
  %75 = load i16, i16* %j, align 2
  %conv92 = sext i16 %75 to i64
  %shl93 = shl i64 %conv92, 2
  %add94 = add i64 %shl93, 2
  call void @ASET(i64 %73, i64 %74, i64 %add94)
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.90
  %76 = load i64, i64* %i82, align 8
  %inc96 = add nsw i64 %76, 1
  store i64 %inc96, i64* %i82, align 8
  br label %for.cond.86

for.end.97:                                       ; preds = %for.cond.86
  %77 = load i64, i64* %v83, align 8
  store i64 %77, i64* %retval
  br label %return

if.else.98:                                       ; preds = %if.else.78
  %78 = load i64, i64* %size.addr, align 8
  %div101 = sdiv i64 %78, 4
  %call102 = call i64 @make_uninit_vector(i64 %div101)
  store i64 %call102, i64* %v100, align 8
  store i64 0, i64* %i99, align 8
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.139, %if.else.98
  %79 = load i64, i64* %i99, align 8
  %80 = load i64, i64* %size.addr, align 8
  %div104 = sdiv i64 %80, 4
  %cmp105 = icmp slt i64 %79, %div104
  br i1 %cmp105, label %for.body.107, label %for.end.141

for.body.107:                                     ; preds = %for.cond.103
  %81 = load i64, i64* %i99, align 8
  %82 = load i8*, i8** %data.addr, align 8
  %83 = bitcast i8* %82 to i32*
  %arrayidx109 = getelementptr inbounds i32, i32* %83, i64 %81
  %84 = load i32, i32* %arrayidx109, align 4
  store i32 %84, i32* %j108, align 4
  %85 = load i64, i64* %v100, align 8
  %86 = load i64, i64* %i99, align 8
  %87 = load i32, i32* %j108, align 4
  %cmp110 = icmp sle i32 0, %87
  br i1 %cmp110, label %land.lhs.true.116, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %for.body.107
  %88 = load i32, i32* %j108, align 4
  %conv113 = sext i32 %88 to i64
  %cmp114 = icmp sle i64 -2305843009213693952, %conv113
  br i1 %cmp114, label %land.lhs.true.116, label %cond.false.124

land.lhs.true.116:                                ; preds = %lor.lhs.false.112, %for.body.107
  %89 = load i32, i32* %j108, align 4
  %conv117 = sext i32 %89 to i64
  %cmp118 = icmp sle i64 %conv117, 2305843009213693951
  br i1 %cmp118, label %cond.true.120, label %cond.false.124

cond.true.120:                                    ; preds = %land.lhs.true.116
  %90 = load i32, i32* %j108, align 4
  %conv121 = sext i32 %90 to i64
  %shl122 = shl i64 %conv121, 2
  %add123 = add i64 %shl122, 2
  br label %cond.end.137

cond.false.124:                                   ; preds = %land.lhs.true.116, %lor.lhs.false.112
  %91 = load i32, i32* %j108, align 4
  %mul125 = mul nsw i32 0, %91
  %sub126 = sub nsw i32 %mul125, 1
  %cmp127 = icmp slt i32 %sub126, 0
  br i1 %cmp127, label %cond.true.129, label %cond.false.132

cond.true.129:                                    ; preds = %cond.false.124
  %92 = load i32, i32* %j108, align 4
  %conv130 = sext i32 %92 to i64
  %call131 = call i64 @intbig_to_lisp(i64 %conv130)
  br label %cond.end.135

cond.false.132:                                   ; preds = %cond.false.124
  %93 = load i32, i32* %j108, align 4
  %conv133 = sext i32 %93 to i64
  %call134 = call i64 @uintbig_to_lisp(i64 %conv133)
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.132, %cond.true.129
  %cond136 = phi i64 [ %call131, %cond.true.129 ], [ %call134, %cond.false.132 ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.135, %cond.true.120
  %cond138 = phi i64 [ %add123, %cond.true.120 ], [ %cond136, %cond.end.135 ]
  call void @ASET(i64 %85, i64 %86, i64 %cond138)
  br label %for.inc.139

for.inc.139:                                      ; preds = %cond.end.137
  %94 = load i64, i64* %i99, align 8
  %inc140 = add nsw i64 %94, 1
  store i64 %inc140, i64* %i99, align 8
  br label %for.cond.103

for.end.141:                                      ; preds = %for.cond.103
  %95 = load i64, i64* %v100, align 8
  store i64 %95, i64* %retval
  br label %return

return:                                           ; preds = %for.end.141, %for.end.97, %if.then.73, %cond.end.65, %for.end, %if.then.21, %if.end.13, %if.then
  %96 = load i64, i64* %retval
  ret i64 %96
}

; Function Attrs: nounwind uwtable
define i64 @Fx_get_atom_name(i64 %value, i64 %frame) #0 {
entry:
  %value.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %name = alloca i8*, align 8
  %empty = alloca [1 x i8], align 1
  %ret = alloca i64, align 8
  %dpy = alloca %struct._XDisplay*, align 8
  %atom = alloca i64, align 8
  %had_errors_p = alloca i8, align 1
  store i64 %value, i64* %value.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i64, i64* %frame.addr, align 8
  %call = call %struct.frame* @decode_window_system_frame(i64 %0)
  store %struct.frame* %call, %struct.frame** %f, align 8
  store i8* null, i8** %name, align 8
  %1 = bitcast [1 x i8]* %empty to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 1, i32 1, i1 false)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %ret, align 8
  %2 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %3 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %3, i32 0, i32 44
  %4 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 2
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  store %struct._XDisplay* %5, %struct._XDisplay** %dpy, align 8
  %6 = load i64, i64* %value.addr, align 8
  %call2 = call i64 @cons_to_unsigned(i64 %6, i64 -1)
  store i64 %call2, i64* %atom, align 8
  call void @block_input()
  %7 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  call void @x_catch_errors(%struct._XDisplay* %7)
  %8 = load i64, i64* %atom, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %10 = load i64, i64* %atom, align 8
  %call3 = call i8* @XGetAtomName(%struct._XDisplay* %9, i64 %10)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %empty, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %arraydecay, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %11 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8
  %call4 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %11)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %had_errors_p, align 1
  call void @x_uncatch_errors_after_check()
  %12 = load i8, i8* %had_errors_p, align 1
  %tobool5 = trunc i8 %12 to i1
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %13 = load i8*, i8** %name, align 8
  %call6 = call i64 @build_string(i8* %13)
  store i64 %call6, i64* %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load i64, i64* %atom, align 8
  %tobool7 = icmp ne i64 %14, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** %name, align 8
  %tobool8 = icmp ne i8* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %16 = load i8*, i8** %name, align 8
  %call10 = call i32 @XFree(i8* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %17 = load i64, i64* %ret, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %17, %call12
  br i1 %cmp, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %18 = load i64, i64* @empty_unibyte_string, align 8
  store i64 %18, i64* %ret, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  call void @unblock_input()
  %19 = load i64, i64* %ret, align 8
  ret i64 %19
}

declare %struct.frame* @decode_window_system_frame(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @x_catch_errors(%struct._XDisplay*) #1

declare i8* @XGetAtomName(%struct._XDisplay*, i64) #1

declare zeroext i1 @x_had_errors_p(%struct._XDisplay*) #1

declare void @x_uncatch_errors_after_check() #1

declare i64 @build_string(i8*) #1

declare i32 @XFree(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_register_dnd_atom(i64 %atom, i64 %frame) #0 {
entry:
  %retval = alloca i64, align 8
  %atom.addr = alloca i64, align 8
  %frame.addr = alloca i64, align 8
  %x_atom = alloca i64, align 8
  %f = alloca %struct.frame*, align 8
  %i = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %atom, i64* %atom.addr, align 8
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
  store %struct.x_display_info* %3, %struct.x_display_info** %dpyinfo, align 8
  %4 = load i64, i64* %atom.addr, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %6 = load i64, i64* %atom.addr, align 8
  %call2 = call i64 @symbol_to_x_atom(%struct.x_display_info* %5, i64 %6)
  store i64 %call2, i64* %x_atom, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %atom.addr, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call3, label %if.then.4, label %if.else.10

if.then.4:                                        ; preds = %if.else
  call void @block_input()
  %8 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data5 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 62
  %x6 = bitcast %union.output_data* %output_data5 to %struct.x_output**
  %9 = load %struct.x_output*, %struct.x_output** %x6, align 8
  %display_info7 = getelementptr inbounds %struct.x_output, %struct.x_output* %9, i32 0, i32 44
  %10 = load %struct.x_display_info*, %struct.x_display_info** %display_info7, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 2
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %12 = load i64, i64* %atom.addr, align 8
  %call8 = call i8* @SSDATA(i64 %12)
  %call9 = call i64 @XInternAtom(%struct._XDisplay* %11, i8* %call8, i32 0)
  store i64 %call9, i64* %x_atom, align 8
  call void @unblock_input()
  br label %if.end

if.else.10:                                       ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms_length = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 100
  %15 = load i64, i64* %x_dnd_atoms_length, align 8
  %cmp12 = icmp slt i64 %13, %15
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %17, i32 0, i32 98
  %18 = load i64*, i64** %x_dnd_atoms, align 8
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 %16
  %19 = load i64, i64* %arrayidx, align 8
  %20 = load i64, i64* %x_atom, align 8
  %cmp14 = icmp eq i64 %19, %20
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %21 = load i64, i64* %i, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms_length19 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %22, i32 0, i32 100
  %23 = load i64, i64* %x_dnd_atoms_length19, align 8
  %24 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms_size = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %24, i32 0, i32 99
  %25 = load i64, i64* %x_dnd_atoms_size, align 8
  %cmp20 = icmp eq i64 %23, %25
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %for.end
  %26 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms23 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %26, i32 0, i32 98
  %27 = load i64*, i64** %x_dnd_atoms23, align 8
  %28 = bitcast i64* %27 to i8*
  %29 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms_size24 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %29, i32 0, i32 99
  %call25 = call i8* @xpalloc(i8* %28, i64* %x_dnd_atoms_size24, i64 1, i64 -1, i64 8)
  %30 = bitcast i8* %call25 to i64*
  %31 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms26 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %31, i32 0, i32 98
  store i64* %30, i64** %x_dnd_atoms26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %for.end
  %32 = load i64, i64* %x_atom, align 8
  %33 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms_length28 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %33, i32 0, i32 100
  %34 = load i64, i64* %x_dnd_atoms_length28, align 8
  %inc29 = add nsw i64 %34, 1
  store i64 %inc29, i64* %x_dnd_atoms_length28, align 8
  %35 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %x_dnd_atoms30 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %35, i32 0, i32 98
  %36 = load i64*, i64** %x_dnd_atoms30, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %36, i64 %34
  store i64 %32, i64* %arrayidx31, align 8
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.16
  %37 = load i64, i64* %retval
  ret i64 %37
}

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @x_handle_dnd_message(%struct.frame* %f, %struct.XClientMessageEvent* %event, %struct.x_display_info* %dpyinfo, %struct.input_event* %bufp) #0 {
entry:
  %retval = alloca i1, align 1
  %f.addr = alloca %struct.frame*, align 8
  %event.addr = alloca %struct.XClientMessageEvent*, align 8
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %bufp.addr = alloca %struct.input_event*, align 8
  %vec = alloca i64, align 8
  %frame = alloca i64, align 8
  %size = alloca i64, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %data = alloca i8*, align 8
  %idata = alloca [5 x i32], align 16
  %i = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.XClientMessageEvent* %event, %struct.XClientMessageEvent** %event.addr, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store %struct.input_event* %bufp, %struct.input_event** %bufp.addr, align 8
  %0 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %format = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %0, i32 0, i32 6
  %1 = load i32, i32* %format, align 4
  %div = sdiv i32 160, %1
  %conv = sext i32 %div to i64
  store i64 %conv, i64* %size, align 8
  %2 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %data1 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %2, i32 0, i32 7
  %b = bitcast %union.anon.5* %data1 to [20 x i8]*
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %b, i32 0, i32 0
  store i8* %arraydecay, i8** %data, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %x_dnd_atoms_length = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 100
  %5 = load i64, i64* %x_dnd_atoms_length, align 8
  %cmp = icmp slt i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %x_dnd_atoms = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 98
  %8 = load i64*, i64** %x_dnd_atoms, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %6
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %message_type = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %10, i32 0, i32 5
  %11 = load i64, i64* %message_type, align 8
  %cmp3 = icmp eq i64 %9, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %x_dnd_atoms_length5 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 100
  %15 = load i64, i64* %x_dnd_atoms_length5, align 8
  %cmp6 = icmp eq i64 %13, %15
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  store i1 false, i1* %retval
  br label %return

if.end.9:                                         ; preds = %for.end
  %16 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %17 = bitcast %struct.frame* %16 to i8*
  %call = call i64 @make_lisp_ptr(i8* %17, i32 5)
  store i64 %call, i64* %frame, align 8
  %18 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %format10 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %18, i32 0, i32 6
  %19 = load i32, i32* %format10, align 4
  %cmp11 = icmp eq i32 %19, 32
  br i1 %cmp11, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end.9
  store i64 0, i64* %i, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.22, %if.then.13
  %20 = load i64, i64* %i, align 8
  %cmp15 = icmp slt i64 %20, 5
  br i1 %cmp15, label %for.body.17, label %for.end.24

for.body.17:                                      ; preds = %for.cond.14
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %data18 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %22, i32 0, i32 7
  %l = bitcast %union.anon.5* %data18 to [5 x i64]*
  %arrayidx19 = getelementptr inbounds [5 x i64], [5 x i64]* %l, i32 0, i64 %21
  %23 = load i64, i64* %arrayidx19, align 8
  %conv20 = trunc i64 %23 to i32
  %24 = load i64, i64* %i, align 8
  %arrayidx21 = getelementptr inbounds [5 x i32], [5 x i32]* %idata, i32 0, i64 %24
  store i32 %conv20, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.17
  %25 = load i64, i64* %i, align 8
  %inc23 = add nsw i64 %25, 1
  store i64 %inc23, i64* %i, align 8
  br label %for.cond.14

for.end.24:                                       ; preds = %for.cond.14
  %arraydecay25 = getelementptr inbounds [5 x i32], [5 x i32]* %idata, i32 0, i32 0
  %26 = bitcast i32* %arraydecay25 to i8*
  store i8* %26, i8** %data, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.24, %if.end.9
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call i64 @Fmake_vector(i64 18, i64 %call27)
  store i64 %call28, i64* %vec, align 8
  %27 = load i64, i64* %vec, align 8
  %28 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %28, i32 0, i32 62
  %x29 = bitcast %union.output_data* %output_data to %struct.x_output**
  %29 = load %struct.x_output*, %struct.x_output** %x29, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %29, i32 0, i32 44
  %30 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %31 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %message_type30 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %31, i32 0, i32 5
  %32 = load i64, i64* %message_type30, align 8
  %call31 = call i64 @x_atom_to_symbol(%struct.x_display_info* %30, i64 %32)
  %call32 = call i64 @SYMBOL_NAME(i64 %call31)
  call void @ASET(i64 %27, i64 0, i64 %call32)
  %33 = load i64, i64* %vec, align 8
  %34 = load i64, i64* %frame, align 8
  call void @ASET(i64 %33, i64 1, i64 %34)
  %35 = load i64, i64* %vec, align 8
  %36 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %format33 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %36, i32 0, i32 6
  %37 = load i32, i32* %format33, align 4
  %conv34 = sext i32 %37 to i64
  %shl = shl i64 %conv34, 2
  %add = add i64 %shl, 2
  call void @ASET(i64 %35, i64 2, i64 %add)
  %38 = load i64, i64* %vec, align 8
  %39 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %40 = load i8*, i8** %data, align 8
  %41 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %message_type35 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %41, i32 0, i32 5
  %42 = load i64, i64* %message_type35, align 8
  %43 = load %struct.XClientMessageEvent*, %struct.XClientMessageEvent** %event.addr, align 8
  %format36 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %43, i32 0, i32 6
  %44 = load i32, i32* %format36, align 4
  %45 = load i64, i64* %size, align 8
  %call37 = call i64 @x_property_data_to_lisp(%struct.frame* %39, i8* %40, i64 %42, i32 %44, i64 %45)
  call void @ASET(i64 %38, i64 3, i64 %call37)
  %46 = load %struct.frame*, %struct.frame** %f.addr, align 8
  call void @x_relative_mouse_position(%struct.frame* %46, i32* %x, i32* %y)
  %47 = load %struct.input_event*, %struct.input_event** %bufp.addr, align 8
  %48 = bitcast %struct.input_event* %47 to i32*
  %bf.load = load i32, i32* %48, align 8
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, 18
  store i32 %bf.set, i32* %48, align 8
  %49 = load i64, i64* %frame, align 8
  %50 = load %struct.input_event*, %struct.input_event** %bufp.addr, align 8
  %frame_or_window = getelementptr inbounds %struct.input_event, %struct.input_event* %50, i32 0, i32 6
  store i64 %49, i64* %frame_or_window, align 8
  %51 = load %struct.input_event*, %struct.input_event** %bufp.addr, align 8
  %timestamp = getelementptr inbounds %struct.input_event, %struct.input_event* %51, i32 0, i32 5
  store i64 0, i64* %timestamp, align 8
  %52 = load i32, i32* %x, align 4
  %conv38 = sext i32 %52 to i64
  %shl39 = shl i64 %conv38, 2
  %add40 = add i64 %shl39, 2
  %53 = load %struct.input_event*, %struct.input_event** %bufp.addr, align 8
  %x41 = getelementptr inbounds %struct.input_event, %struct.input_event* %53, i32 0, i32 3
  store i64 %add40, i64* %x41, align 8
  %54 = load i32, i32* %y, align 4
  %conv42 = sext i32 %54 to i64
  %shl43 = shl i64 %conv42, 2
  %add44 = add i64 %shl43, 2
  %55 = load %struct.input_event*, %struct.input_event** %bufp.addr, align 8
  %y45 = getelementptr inbounds %struct.input_event, %struct.input_event* %55, i32 0, i32 4
  store i64 %add44, i64* %y45, align 8
  %56 = load i64, i64* %vec, align 8
  %57 = load %struct.input_event*, %struct.input_event** %bufp.addr, align 8
  %arg = getelementptr inbounds %struct.input_event, %struct.input_event* %57, i32 0, i32 7
  store i64 %56, i64* %arg, align 8
  %58 = load %struct.input_event*, %struct.input_event** %bufp.addr, align 8
  %modifiers = getelementptr inbounds %struct.input_event, %struct.input_event* %58, i32 0, i32 2
  store i32 0, i32* %modifiers, align 4
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.8
  %59 = load i1, i1* %retval
  ret i1 %59
}

declare i64 @Fmake_vector(i64, i64) #1

declare void @ASET(i64, i64, i64) #1

declare i64 @SYMBOL_NAME(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @x_atom_to_symbol(%struct.x_display_info* %dpyinfo, i64 %atom) #0 {
entry:
  %retval = alloca i64, align 8
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %atom.addr = alloca i64, align 8
  %str = alloca i8*, align 8
  %val = alloca i64, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i64 %atom, i64* %atom.addr, align 8
  %0 = load i64, i64* %atom.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %atom.addr, align 8
  switch i64 %1, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
    i64 31, label %sw.bb.4
    i64 19, label %sw.bb.6
    i64 4, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = call i64 @builtin_lisp_symbol(i32 147)
  store i64 %call1, i64* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %call3 = call i64 @builtin_lisp_symbol(i32 149)
  store i64 %call3, i64* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 150)
  store i64 %call5, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 144)
  store i64 %call7, i64* %retval
  br label %return

sw.bb.8:                                          ; preds = %if.end
  %call9 = call i64 @builtin_lisp_symbol(i32 1)
  store i64 %call9, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %cmp = icmp eq %struct.x_display_info* %2, null
  br i1 %cmp, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.epilog
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call11, i64* %retval
  br label %return

if.end.12:                                        ; preds = %sw.epilog
  %3 = load i64, i64* %atom.addr, align 8
  %4 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_CLIPBOARD = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 46
  %5 = load i64, i64* %Xatom_CLIPBOARD, align 8
  %cmp13 = icmp eq i64 %3, %5
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %call15 = call i64 @builtin_lisp_symbol(i32 2)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %6 = load i64, i64* %atom.addr, align 8
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_TIMESTAMP = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 47
  %8 = load i64, i64* %Xatom_TIMESTAMP, align 8
  %cmp17 = icmp eq i64 %6, %8
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %call19 = call i64 @builtin_lisp_symbol(i32 153)
  store i64 %call19, i64* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %9 = load i64, i64* %atom.addr, align 8
  %10 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_TEXT = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %10, i32 0, i32 48
  %11 = load i64, i64* %Xatom_TEXT, align 8
  %cmp21 = icmp eq i64 %9, %11
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %call23 = call i64 @builtin_lisp_symbol(i32 152)
  store i64 %call23, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %12 = load i64, i64* %atom.addr, align 8
  %13 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_COMPOUND_TEXT = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %13, i32 0, i32 50
  %14 = load i64, i64* %Xatom_COMPOUND_TEXT, align 8
  %cmp25 = icmp eq i64 %12, %14
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %call27 = call i64 @builtin_lisp_symbol(i32 4)
  store i64 %call27, i64* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %15 = load i64, i64* %atom.addr, align 8
  %16 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_UTF8_STRING = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %16, i32 0, i32 51
  %17 = load i64, i64* %Xatom_UTF8_STRING, align 8
  %cmp29 = icmp eq i64 %15, %17
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %call31 = call i64 @builtin_lisp_symbol(i32 154)
  store i64 %call31, i64* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %18 = load i64, i64* %atom.addr, align 8
  %19 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_DELETE = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %19, i32 0, i32 49
  %20 = load i64, i64* %Xatom_DELETE, align 8
  %cmp33 = icmp eq i64 %18, %20
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.32
  %call35 = call i64 @builtin_lisp_symbol(i32 140)
  store i64 %call35, i64* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  %21 = load i64, i64* %atom.addr, align 8
  %22 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_MULTIPLE = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %22, i32 0, i32 52
  %23 = load i64, i64* %Xatom_MULTIPLE, align 8
  %cmp37 = icmp eq i64 %21, %23
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.36
  %call39 = call i64 @builtin_lisp_symbol(i32 145)
  store i64 %call39, i64* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %24 = load i64, i64* %atom.addr, align 8
  %25 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_INCR = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %25, i32 0, i32 53
  %26 = load i64, i64* %Xatom_INCR, align 8
  %cmp41 = icmp eq i64 %24, %26
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %call43 = call i64 @builtin_lisp_symbol(i32 143)
  store i64 %call43, i64* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %27 = load i64, i64* %atom.addr, align 8
  %28 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_EMACS_TMP = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %28, i32 0, i32 54
  %29 = load i64, i64* %Xatom_EMACS_TMP, align 8
  %cmp45 = icmp eq i64 %27, %29
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.44
  %call47 = call i64 @builtin_lisp_symbol(i32 141)
  store i64 %call47, i64* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %30 = load i64, i64* %atom.addr, align 8
  %31 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_TARGETS = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %31, i32 0, i32 55
  %32 = load i64, i64* %Xatom_TARGETS, align 8
  %cmp49 = icmp eq i64 %30, %32
  br i1 %cmp49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.48
  %call51 = call i64 @builtin_lisp_symbol(i32 151)
  store i64 %call51, i64* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  %33 = load i64, i64* %atom.addr, align 8
  %34 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_NULL = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %34, i32 0, i32 56
  %35 = load i64, i64* %Xatom_NULL, align 8
  %cmp53 = icmp eq i64 %33, %35
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.52
  %call55 = call i64 @builtin_lisp_symbol(i32 146)
  store i64 %call55, i64* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  call void @block_input()
  %36 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %36, i32 0, i32 2
  %37 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %38 = load i64, i64* %atom.addr, align 8
  %call57 = call i8* @XGetAtomName(%struct._XDisplay* %37, i64 %38)
  store i8* %call57, i8** %str, align 8
  call void @unblock_input()
  %39 = load i8*, i8** %str, align 8
  %tobool58 = icmp ne i8* %39, null
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call60, i64* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.56
  %40 = load i8*, i8** %str, align 8
  %call62 = call i64 @intern(i8* %40)
  store i64 %call62, i64* %val, align 8
  call void @block_input()
  %41 = load i8*, i8** %str, align 8
  %call63 = call i32 @XFree(i8* %41)
  call void @unblock_input()
  %42 = load i64, i64* %val, align 8
  store i64 %42, i64* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.59, %if.then.54, %if.then.50, %if.then.46, %if.then.42, %if.then.38, %if.then.34, %if.then.30, %if.then.26, %if.then.22, %if.then.18, %if.then.14, %if.then.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb, %if.then
  %43 = load i64, i64* %retval
  ret i64 %43
}

declare void @x_relative_mouse_position(%struct.frame*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i64 @Fx_send_client_message(i64 %display, i64 %dest, i64 %from, i64 %message_type, i64 %format, i64 %values) #0 {
entry:
  %display.addr = alloca i64, align 8
  %dest.addr = alloca i64, align 8
  %from.addr = alloca i64, align 8
  %message_type.addr = alloca i64, align 8
  %format.addr = alloca i64, align 8
  %values.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store i64 %display, i64* %display.addr, align 8
  store i64 %dest, i64* %dest.addr, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %message_type, i64* %message_type.addr, align 8
  store i64 %format, i64* %format.addr, align 8
  store i64 %values, i64* %values.addr, align 8
  %0 = load i64, i64* %display.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load i64, i64* %message_type.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %display.addr, align 8
  %3 = load i64, i64* %dest.addr, align 8
  %4 = load i64, i64* %from.addr, align 8
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 2
  %6 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  %7 = load i64, i64* %message_type.addr, align 8
  %call2 = call i8* @SSDATA(i64 %7)
  %call3 = call i64 @XInternAtom(%struct._XDisplay* %6, i8* %call2, i32 0)
  %8 = load i64, i64* %format.addr, align 8
  %9 = load i64, i64* %values.addr, align 8
  call void @x_send_client_event(i64 %2, i64 %3, i64 %4, i64 %call3, i64 %8, i64 %9)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call4
}

declare %struct.x_display_info* @check_x_display_info(i64) #1

declare void @CHECK_STRING(i64) #1

; Function Attrs: nounwind uwtable
define void @x_send_client_event(i64 %display, i64 %dest, i64 %from, i64 %message_type, i64 %format, i64 %values) #0 {
entry:
  %display.addr = alloca i64, align 8
  %dest.addr = alloca i64, align 8
  %from.addr = alloca i64, align 8
  %message_type.addr = alloca i64, align 8
  %format.addr = alloca i64, align 8
  %values.addr = alloca i64, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %wdest = alloca i64, align 8
  %event = alloca %union._XEvent, align 8
  %f = alloca %struct.frame*, align 8
  %to_root = alloca i8, align 1
  %fdest = alloca %struct.frame*, align 8
  %propagate = alloca i8, align 1
  %mask = alloca i64, align 8
  store i64 %display, i64* %display.addr, align 8
  store i64 %dest, i64* %dest.addr, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %message_type, i64* %message_type.addr, align 8
  store i64 %format, i64* %format.addr, align 8
  store i64 %values, i64* %values.addr, align 8
  %0 = load i64, i64* %display.addr, align 8
  %call = call %struct.x_display_info* @check_x_display_info(i64 %0)
  store %struct.x_display_info* %call, %struct.x_display_info** %dpyinfo, align 8
  %1 = load i64, i64* %from.addr, align 8
  %call1 = call %struct.frame* @decode_window_system_frame(i64 %1)
  store %struct.frame* %call1, %struct.frame** %f, align 8
  %2 = load i64, i64* %format.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %and2 = and i32 %conv, -5
  %cmp = icmp eq i32 %and2, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 559)
  %3 = load i64, i64* %format.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call4, i64 %3) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %values.addr, align 8
  call void @CHECK_CONS(i64 %6)
  %7 = load i64, i64* %values.addr, align 8
  %call5 = call i32 @x_check_property_data(i64 %7)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end
  %8 = load i64, i64* %format.addr, align 8
  %shr = ashr i64 %8, 2
  %cmp8 = icmp ne i64 %shr, 8
  br i1 %cmp8, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %9 = load i64, i64* %format.addr, align 8
  %shr10 = ashr i64 %9, 2
  %cmp11 = icmp ne i64 %shr10, 16
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.18

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %10 = load i64, i64* %format.addr, align 8
  %shr14 = ashr i64 %10, 2
  %cmp15 = icmp ne i64 %shr14, 32
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.13
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.18:                                        ; preds = %land.lhs.true.13, %land.lhs.true, %if.end
  %xclient = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %type = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient, i32 0, i32 0
  store i32 33, i32* %type, align 4
  %11 = load i64, i64* %format.addr, align 8
  %shr19 = ashr i64 %11, 2
  %conv20 = trunc i64 %shr19 to i32
  %xclient21 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %format22 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient21, i32 0, i32 6
  store i32 %conv20, i32* %format22, align 4
  %12 = load i64, i64* %dest.addr, align 8
  %call23 = call zeroext i1 @FRAMEP(i64 %12)
  br i1 %call23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %13 = load i64, i64* %dest.addr, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %13, %call25
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.18
  %14 = load i64, i64* %dest.addr, align 8
  %call29 = call %struct.frame* @decode_window_system_frame(i64 %14)
  store %struct.frame* %call29, %struct.frame** %fdest, align 8
  %15 = load %struct.frame*, %struct.frame** %fdest, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %16 = load %struct.x_output*, %struct.x_output** %x, align 8
  %widget = getelementptr inbounds %struct.x_output, %struct.x_output* %16, i32 0, i32 12
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool, label %cond.true.30, label %cond.false.49

cond.true.30:                                     ; preds = %if.then.28
  %18 = load %struct.frame*, %struct.frame** %fdest, align 8
  %output_data31 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 62
  %x32 = bitcast %union.output_data* %output_data31 to %struct.x_output**
  %19 = load %struct.x_output*, %struct.x_output** %x32, align 8
  %widget33 = getelementptr inbounds %struct.x_output, %struct.x_output* %19, i32 0, i32 12
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget33, align 8
  %tobool34 = icmp ne %struct._GtkWidget* %20, null
  br i1 %tobool34, label %land.lhs.true.35, label %cond.false.47

land.lhs.true.35:                                 ; preds = %cond.true.30
  %21 = load %struct.frame*, %struct.frame** %fdest, align 8
  %output_data36 = getelementptr inbounds %struct.frame, %struct.frame* %21, i32 0, i32 62
  %x37 = bitcast %union.output_data* %output_data36 to %struct.x_output**
  %22 = load %struct.x_output*, %struct.x_output** %x37, align 8
  %widget38 = getelementptr inbounds %struct.x_output, %struct.x_output* %22, i32 0, i32 12
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget38, align 8
  %call39 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %23)
  %tobool40 = icmp ne %struct._GdkDrawable* %call39, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.47

cond.true.41:                                     ; preds = %land.lhs.true.35
  %24 = load %struct.frame*, %struct.frame** %fdest, align 8
  %output_data42 = getelementptr inbounds %struct.frame, %struct.frame* %24, i32 0, i32 62
  %x43 = bitcast %union.output_data* %output_data42 to %struct.x_output**
  %25 = load %struct.x_output*, %struct.x_output** %x43, align 8
  %widget44 = getelementptr inbounds %struct.x_output, %struct.x_output* %25, i32 0, i32 12
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget44, align 8
  %call45 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %26)
  %call46 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call45)
  br label %cond.end.48

cond.false.47:                                    ; preds = %land.lhs.true.35, %cond.true.30
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.41
  %cond = phi i64 [ %call46, %cond.true.41 ], [ 0, %cond.false.47 ]
  br label %cond.end.52

cond.false.49:                                    ; preds = %if.then.28
  %27 = load %struct.frame*, %struct.frame** %fdest, align 8
  %output_data50 = getelementptr inbounds %struct.frame, %struct.frame* %27, i32 0, i32 62
  %x51 = bitcast %union.output_data* %output_data50 to %struct.x_output**
  %28 = load %struct.x_output*, %struct.x_output** %x51, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %28, i32 0, i32 9
  %29 = load i64, i64* %window_desc, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.end.48
  %cond53 = phi i64 [ %cond, %cond.end.48 ], [ %29, %cond.false.49 ]
  store i64 %cond53, i64* %wdest, align 8
  br label %if.end.83

if.else:                                          ; preds = %lor.lhs.false
  %30 = load i64, i64* %dest.addr, align 8
  %call54 = call zeroext i1 @STRINGP(i64 %30)
  br i1 %call54, label %if.then.55, label %if.else.70

if.then.55:                                       ; preds = %if.else
  %31 = load i64, i64* %dest.addr, align 8
  %call56 = call i8* @SSDATA(i64 %31)
  %call57 = call i32 @strcmp(i8* %call56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)) #6
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.then.55
  store i64 0, i64* %wdest, align 8
  br label %if.end.69

if.else.61:                                       ; preds = %if.then.55
  %32 = load i64, i64* %dest.addr, align 8
  %call62 = call i8* @SSDATA(i64 %32)
  %call63 = call i32 @strcmp(i8* %call62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #6
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.61
  store i64 1, i64* %wdest, align 8
  br label %if.end.68

if.else.67:                                       ; preds = %if.else.61
  call void (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i32 0, i32 0)) #5
  unreachable

if.end.68:                                        ; preds = %if.then.66
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.60
  br label %if.end.82

if.else.70:                                       ; preds = %if.else
  %33 = load i64, i64* %dest.addr, align 8
  %call71 = call zeroext i1 @NUMBERP(i64 %33)
  br i1 %call71, label %if.then.78, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.else.70
  %34 = load i64, i64* %dest.addr, align 8
  %and74 = and i64 %34, 7
  %conv75 = trunc i64 %and74 to i32
  %cmp76 = icmp eq i32 %conv75, 3
  br i1 %cmp76, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %lor.lhs.false.73, %if.else.70
  %35 = load i64, i64* %dest.addr, align 8
  %call79 = call i64 @cons_to_unsigned(i64 %35, i64 -1)
  store i64 %call79, i64* %wdest, align 8
  br label %if.end.81

if.else.80:                                       ; preds = %lor.lhs.false.73
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0)) #5
  unreachable

if.end.81:                                        ; preds = %if.then.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.69
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %cond.end.52
  %36 = load i64, i64* %wdest, align 8
  %cmp84 = icmp eq i64 %36, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  %37 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %root_window = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %37, i32 0, i32 14
  %38 = load i64, i64* %root_window, align 8
  store i64 %38, i64* %wdest, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.83
  %39 = load i64, i64* %wdest, align 8
  %40 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %root_window88 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %40, i32 0, i32 14
  %41 = load i64, i64* %root_window88, align 8
  %cmp89 = icmp eq i64 %39, %41
  %frombool = zext i1 %cmp89 to i8
  store i8 %frombool, i8* %to_root, align 1
  call void @block_input()
  %xclient91 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %send_event = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient91, i32 0, i32 2
  store i32 1, i32* %send_event, align 4
  %xclient92 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %serial = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient92, i32 0, i32 1
  store i64 0, i64* %serial, align 8
  %42 = load i64, i64* %message_type.addr, align 8
  %xclient93 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %message_type94 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient93, i32 0, i32 5
  store i64 %42, i64* %message_type94, align 8
  %43 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display95 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %43, i32 0, i32 2
  %44 = load %struct._XDisplay*, %struct._XDisplay** %display95, align 8
  %xclient96 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %display97 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient96, i32 0, i32 3
  store %struct._XDisplay* %44, %struct._XDisplay** %display97, align 8
  %45 = load i8, i8* %to_root, align 1
  %tobool98 = trunc i8 %45 to i1
  br i1 %tobool98, label %cond.true.100, label %cond.false.131

cond.true.100:                                    ; preds = %if.end.87
  %46 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data101 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 62
  %x102 = bitcast %union.output_data* %output_data101 to %struct.x_output**
  %47 = load %struct.x_output*, %struct.x_output** %x102, align 8
  %widget103 = getelementptr inbounds %struct.x_output, %struct.x_output* %47, i32 0, i32 12
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %widget103, align 8
  %tobool104 = icmp ne %struct._GtkWidget* %48, null
  br i1 %tobool104, label %cond.true.105, label %cond.false.125

cond.true.105:                                    ; preds = %cond.true.100
  %49 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data106 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 62
  %x107 = bitcast %union.output_data* %output_data106 to %struct.x_output**
  %50 = load %struct.x_output*, %struct.x_output** %x107, align 8
  %widget108 = getelementptr inbounds %struct.x_output, %struct.x_output* %50, i32 0, i32 12
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %widget108, align 8
  %tobool109 = icmp ne %struct._GtkWidget* %51, null
  br i1 %tobool109, label %land.lhs.true.110, label %cond.false.122

land.lhs.true.110:                                ; preds = %cond.true.105
  %52 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data111 = getelementptr inbounds %struct.frame, %struct.frame* %52, i32 0, i32 62
  %x112 = bitcast %union.output_data* %output_data111 to %struct.x_output**
  %53 = load %struct.x_output*, %struct.x_output** %x112, align 8
  %widget113 = getelementptr inbounds %struct.x_output, %struct.x_output* %53, i32 0, i32 12
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget113, align 8
  %call114 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %54)
  %tobool115 = icmp ne %struct._GdkDrawable* %call114, null
  br i1 %tobool115, label %cond.true.116, label %cond.false.122

cond.true.116:                                    ; preds = %land.lhs.true.110
  %55 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data117 = getelementptr inbounds %struct.frame, %struct.frame* %55, i32 0, i32 62
  %x118 = bitcast %union.output_data* %output_data117 to %struct.x_output**
  %56 = load %struct.x_output*, %struct.x_output** %x118, align 8
  %widget119 = getelementptr inbounds %struct.x_output, %struct.x_output* %56, i32 0, i32 12
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %widget119, align 8
  %call120 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %57)
  %call121 = call i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable* %call120)
  br label %cond.end.123

cond.false.122:                                   ; preds = %land.lhs.true.110, %cond.true.105
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.116
  %cond124 = phi i64 [ %call121, %cond.true.116 ], [ 0, %cond.false.122 ]
  br label %cond.end.129

cond.false.125:                                   ; preds = %cond.true.100
  %58 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data126 = getelementptr inbounds %struct.frame, %struct.frame* %58, i32 0, i32 62
  %x127 = bitcast %union.output_data* %output_data126 to %struct.x_output**
  %59 = load %struct.x_output*, %struct.x_output** %x127, align 8
  %window_desc128 = getelementptr inbounds %struct.x_output, %struct.x_output* %59, i32 0, i32 9
  %60 = load i64, i64* %window_desc128, align 8
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.125, %cond.end.123
  %cond130 = phi i64 [ %cond124, %cond.end.123 ], [ %60, %cond.false.125 ]
  br label %cond.end.132

cond.false.131:                                   ; preds = %if.end.87
  %61 = load i64, i64* %wdest, align 8
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.end.129
  %cond133 = phi i64 [ %cond130, %cond.end.129 ], [ %61, %cond.false.131 ]
  %xclient134 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %window = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient134, i32 0, i32 4
  store i64 %cond133, i64* %window, align 8
  %xclient135 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %data = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient135, i32 0, i32 7
  %l = bitcast %union.anon.5* %data to [5 x i64]*
  %62 = bitcast [5 x i64]* %l to i8*
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 40, i32 8, i1 false)
  %63 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display136 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %63, i32 0, i32 2
  %64 = load %struct._XDisplay*, %struct._XDisplay** %display136, align 8
  %65 = load i64, i64* %values.addr, align 8
  %xclient137 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %data138 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient137, i32 0, i32 7
  %b = bitcast %union.anon.5* %data138 to [20 x i8]*
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %b, i32 0, i32 0
  %xclient139 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %format140 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient139, i32 0, i32 6
  %66 = load i32, i32* %format140, align 4
  call void @x_fill_property_data(%struct._XDisplay* %64, i64 %65, i8* %arraydecay, i32 %66)
  %67 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display141 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %67, i32 0, i32 2
  %68 = load %struct._XDisplay*, %struct._XDisplay** %display141, align 8
  call void @x_catch_errors(%struct._XDisplay* %68)
  %69 = load i8, i8* %to_root, align 1
  %tobool142 = trunc i8 %69 to i1
  %lnot = xor i1 %tobool142, true
  %frombool143 = zext i1 %lnot to i8
  store i8 %frombool143, i8* %propagate, align 1
  %70 = load i8, i8* %to_root, align 1
  %tobool144 = trunc i8 %70 to i1
  %cond146 = select i1 %tobool144, i32 16777215, i32 0
  %conv147 = sext i32 %cond146 to i64
  store i64 %conv147, i64* %mask, align 8
  %71 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display148 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %71, i32 0, i32 2
  %72 = load %struct._XDisplay*, %struct._XDisplay** %display148, align 8
  %73 = load i64, i64* %wdest, align 8
  %74 = load i8, i8* %propagate, align 1
  %tobool149 = trunc i8 %74 to i1
  %conv150 = zext i1 %tobool149 to i32
  %75 = load i64, i64* %mask, align 8
  %call151 = call i32 @XSendEvent(%struct._XDisplay* %72, i64 %73, i32 %conv150, i64 %75, %union._XEvent* %event)
  %76 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display152 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %76, i32 0, i32 2
  %77 = load %struct._XDisplay*, %struct._XDisplay** %display152, align 8
  %call153 = call i32 @XFlush(%struct._XDisplay* %77)
  call void @x_uncatch_errors()
  call void @unblock_input()
  ret void
}

declare void @CHECK_CONS(i64) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i64 @gdk_x11_drawable_get_xid(%struct._GdkDrawable*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @XSendEvent(%struct._XDisplay*, i64, i32, i64, %union._XEvent*) #1

declare i32 @XFlush(%struct._XDisplay*) #1

declare void @x_uncatch_errors() #1

; Function Attrs: nounwind uwtable
define void @syms_of_xselect() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_get_selection_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_own_selection_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_disown_selection_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_selection_owner_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_selection_exists_p to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_get_atom_name to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_send_client_message to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sx_register_dnd_atom to %struct.Lisp_Subr*))
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fcons(i64 %call, i64 %call1)
  store i64 %call2, i64* @reading_selection_reply, align 8
  call void @staticpro(i64* @reading_selection_reply)
  store i64 0, i64* @reading_selection_window, align 8
  store i64 0, i64* @reading_which_selection, align 8
  store %struct.prop_location* null, %struct.prop_location** @property_change_wait_list, align 8
  store i32 0, i32* @prop_location_identifier, align 4
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call i64 @Fcons(i64 %call3, i64 %call4)
  store i64 %call5, i64* @property_change_reply, align 8
  call void @staticpro(i64* @property_change_reply)
  store %struct.selection_data* null, %struct.selection_data** @converted_selections, align 8
  store i64 0, i64* @conversion_fail_tag, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xselect.o_fwd, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 265))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 265), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xselect.o_fwd.15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 348))
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 348), align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.8
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xselect.o_fwd.17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 360))
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 360), align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.11
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_xselect.o_fwd.19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 358))
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.13
  %call15 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call15, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 358), align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.14
  call void @defvar_int(%struct.Lisp_Intfwd* @syms_of_xselect.i_fwd, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 419))
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.16
  store i64 0, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 419), align 8
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @Fcons(i64, i64) #1

declare void @staticpro(i64*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_int(%struct.Lisp_Intfwd*, i8*, i64*) #1

declare i64 @CAR(i64) #1

declare void @redisplay_preserve_echo_area(i32) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @selection_input_event_equal(%struct.selection_input_event* %a, %struct.selection_input_event* %b) #0 {
entry:
  %a.addr = alloca %struct.selection_input_event*, align 8
  %b.addr = alloca %struct.selection_input_event*, align 8
  store %struct.selection_input_event* %a, %struct.selection_input_event** %a.addr, align 8
  store %struct.selection_input_event* %b, %struct.selection_input_event** %b.addr, align 8
  %0 = load %struct.selection_input_event*, %struct.selection_input_event** %a.addr, align 8
  %1 = bitcast %struct.selection_input_event* %0 to i16*
  %bf.load = load i16, i16* %1, align 8
  %bf.cast = zext i16 %bf.load to i32
  %2 = load %struct.selection_input_event*, %struct.selection_input_event** %b.addr, align 8
  %3 = bitcast %struct.selection_input_event* %2 to i16*
  %bf.load1 = load i16, i16* %3, align 8
  %bf.cast2 = zext i16 %bf.load1 to i32
  %cmp = icmp eq i32 %bf.cast, %bf.cast2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.selection_input_event*, %struct.selection_input_event** %a.addr, align 8
  %dpyinfo = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %4, i32 0, i32 1
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %6 = load %struct.selection_input_event*, %struct.selection_input_event** %b.addr, align 8
  %dpyinfo3 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %6, i32 0, i32 1
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo3, align 8
  %cmp4 = icmp eq %struct.x_display_info* %5, %7
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load %struct.selection_input_event*, %struct.selection_input_event** %a.addr, align 8
  %requestor = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %8, i32 0, i32 2
  %9 = load i64, i64* %requestor, align 8
  %10 = load %struct.selection_input_event*, %struct.selection_input_event** %b.addr, align 8
  %requestor6 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %10, i32 0, i32 2
  %11 = load i64, i64* %requestor6, align 8
  %cmp7 = icmp eq i64 %9, %11
  br i1 %cmp7, label %land.lhs.true.8, label %land.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %12 = load %struct.selection_input_event*, %struct.selection_input_event** %a.addr, align 8
  %selection = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %12, i32 0, i32 3
  %13 = load i64, i64* %selection, align 8
  %14 = load %struct.selection_input_event*, %struct.selection_input_event** %b.addr, align 8
  %selection9 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %14, i32 0, i32 3
  %15 = load i64, i64* %selection9, align 8
  %cmp10 = icmp eq i64 %13, %15
  br i1 %cmp10, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.8
  %16 = load %struct.selection_input_event*, %struct.selection_input_event** %a.addr, align 8
  %target = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %16, i32 0, i32 4
  %17 = load i64, i64* %target, align 8
  %18 = load %struct.selection_input_event*, %struct.selection_input_event** %b.addr, align 8
  %target12 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %18, i32 0, i32 4
  %19 = load i64, i64* %target12, align 8
  %cmp13 = icmp eq i64 %17, %19
  br i1 %cmp13, label %land.lhs.true.14, label %land.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %20 = load %struct.selection_input_event*, %struct.selection_input_event** %a.addr, align 8
  %property = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %20, i32 0, i32 5
  %21 = load i64, i64* %property, align 8
  %22 = load %struct.selection_input_event*, %struct.selection_input_event** %b.addr, align 8
  %property15 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %22, i32 0, i32 5
  %23 = load i64, i64* %property15, align 8
  %cmp16 = icmp eq i64 %21, %23
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.14
  %24 = load %struct.selection_input_event*, %struct.selection_input_event** %a.addr, align 8
  %time = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %24, i32 0, i32 6
  %25 = load i64, i64* %time, align 8
  %26 = load %struct.selection_input_event*, %struct.selection_input_event** %b.addr, align 8
  %time17 = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %26, i32 0, i32 6
  %27 = load i64, i64* %time17, align 8
  %cmp18 = icmp eq i64 %25, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true.8, %land.lhs.true.5, %land.lhs.true, %entry
  %28 = phi i1 [ false, %land.lhs.true.14 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.8 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp18, %land.rhs ]
  ret i1 %28
}

; Function Attrs: nounwind uwtable
define internal void @x_decline_selection_request(%struct.selection_input_event* %event) #0 {
entry:
  %event.addr = alloca %struct.selection_input_event*, align 8
  %reply_base = alloca %union._XEvent, align 8
  %reply = alloca %struct.XSelectionEvent*, align 8
  store %struct.selection_input_event* %event, %struct.selection_input_event** %event.addr, align 8
  %xselection = bitcast %union._XEvent* %reply_base to %struct.XSelectionEvent*
  store %struct.XSelectionEvent* %xselection, %struct.XSelectionEvent** %reply, align 8
  %0 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %type = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %0, i32 0, i32 0
  store i32 31, i32* %type, align 4
  %1 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %call = call %struct._XDisplay* @SELECTION_EVENT_DISPLAY(%struct.selection_input_event* %1)
  %2 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %display = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %2, i32 0, i32 3
  store %struct._XDisplay* %call, %struct._XDisplay** %display, align 8
  %3 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %requestor = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %3, i32 0, i32 2
  %4 = load i64, i64* %requestor, align 8
  %5 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %requestor1 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %5, i32 0, i32 4
  store i64 %4, i64* %requestor1, align 8
  %6 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %selection = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %6, i32 0, i32 3
  %7 = load i64, i64* %selection, align 8
  %8 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %selection2 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %8, i32 0, i32 5
  store i64 %7, i64* %selection2, align 8
  %9 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %time = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %9, i32 0, i32 6
  %10 = load i64, i64* %time, align 8
  %11 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %time3 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %11, i32 0, i32 8
  store i64 %10, i64* %time3, align 8
  %12 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %target = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %12, i32 0, i32 4
  %13 = load i64, i64* %target, align 8
  %14 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %target4 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %14, i32 0, i32 6
  store i64 %13, i64* %target4, align 8
  %15 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %property = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %15, i32 0, i32 7
  store i64 0, i64* %property, align 8
  call void @block_input()
  %16 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %display5 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %16, i32 0, i32 3
  %17 = load %struct._XDisplay*, %struct._XDisplay** %display5, align 8
  call void @x_catch_errors(%struct._XDisplay* %17)
  %18 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %display6 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %18, i32 0, i32 3
  %19 = load %struct._XDisplay*, %struct._XDisplay** %display6, align 8
  %20 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %requestor7 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %20, i32 0, i32 4
  %21 = load i64, i64* %requestor7, align 8
  %call8 = call i32 @XSendEvent(%struct._XDisplay* %19, i64 %21, i32 0, i64 0, %union._XEvent* %reply_base)
  %22 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %display9 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %22, i32 0, i32 3
  %23 = load %struct._XDisplay*, %struct._XDisplay** %display9, align 8
  %call10 = call i32 @XFlush(%struct._XDisplay* %23)
  call void @x_uncatch_errors()
  call void @unblock_input()
  ret void
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct._XDisplay* @SELECTION_EVENT_DISPLAY(%struct.selection_input_event*) #1

declare i64 @SPECPDL_INDEX() #1

declare void @record_unwind_protect_void(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @x_selection_request_lisp_error() #0 {
entry:
  %cs = alloca %struct.selection_data*, align 8
  %next = alloca %struct.selection_data*, align 8
  %0 = load %struct.selection_data*, %struct.selection_data** @converted_selections, align 8
  store %struct.selection_data* %0, %struct.selection_data** %cs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %tobool = icmp ne %struct.selection_data* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %next1 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %2, i32 0, i32 7
  %3 = load %struct.selection_data*, %struct.selection_data** %next1, align 8
  store %struct.selection_data* %3, %struct.selection_data** %next, align 8
  %4 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %nofree = getelementptr inbounds %struct.selection_data, %struct.selection_data* %4, i32 0, i32 4
  %5 = load i8, i8* %nofree, align 1
  %tobool2 = trunc i8 %5 to i1
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data = getelementptr inbounds %struct.selection_data, %struct.selection_data* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data4 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %8, i32 0, i32 0
  %9 = load i8*, i8** %data4, align 8
  call void @xfree(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %10 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %11 = bitcast %struct.selection_data* %10 to i8*
  call void @xfree(i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.selection_data*, %struct.selection_data** %next, align 8
  store %struct.selection_data* %12, %struct.selection_data** %cs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.selection_data* null, %struct.selection_data** @converted_selections, align 8
  %13 = load %struct.selection_input_event*, %struct.selection_input_event** @x_selection_current_request, align 8
  %cmp = icmp ne %struct.selection_input_event* %13, null
  br i1 %cmp, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %for.end
  %14 = load %struct.x_display_info*, %struct.x_display_info** @selection_request_dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %14, i32 0, i32 2
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %tobool6 = icmp ne %struct._XDisplay* %15, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.5
  %16 = load %struct.selection_input_event*, %struct.selection_input_event** @x_selection_current_request, align 8
  call void @x_decline_selection_request(%struct.selection_input_event* %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true.5, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_start_queuing_selection_requests() #0 {
entry:
  %0 = load i32, i32* @x_queue_selection_requests, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @emacs_abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @x_queue_selection_requests, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @x_queue_selection_requests, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_stop_queuing_selection_requests() #0 {
entry:
  %queue_tmp = alloca %struct.selection_event_queue*, align 8
  %0 = load i32, i32* @x_queue_selection_requests, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @x_queue_selection_requests, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.selection_event_queue*, %struct.selection_event_queue** @selection_queue, align 8
  %cmp = icmp ne %struct.selection_event_queue* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.selection_event_queue*, %struct.selection_event_queue** @selection_queue, align 8
  store %struct.selection_event_queue* %2, %struct.selection_event_queue** %queue_tmp, align 8
  %3 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %event = getelementptr inbounds %struct.selection_event_queue, %struct.selection_event_queue* %3, i32 0, i32 0
  call void @kbd_buffer_unget_event(%struct.selection_input_event* %event)
  %4 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %next = getelementptr inbounds %struct.selection_event_queue, %struct.selection_event_queue* %4, i32 0, i32 1
  %5 = load %struct.selection_event_queue*, %struct.selection_event_queue** %next, align 8
  store %struct.selection_event_queue* %5, %struct.selection_event_queue** @selection_queue, align 8
  %6 = load %struct.selection_event_queue*, %struct.selection_event_queue** %queue_tmp, align 8
  %7 = bitcast %struct.selection_event_queue* %6 to i8*
  call void @xfree(i8* %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @x_get_window_property_as_lisp_data(%struct.x_display_info* %dpyinfo, i64 %window, i64 %property, i64 %target_type, i64 %selection_atom) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %window.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %target_type.addr = alloca i64, align 8
  %selection_atom.addr = alloca i64, align 8
  %actual_type = alloca i64, align 8
  %actual_format = alloca i32, align 4
  %actual_size = alloca i64, align 8
  %data = alloca i8*, align 8
  %bytes = alloca i64, align 8
  %val = alloca i64, align 8
  %display = alloca %struct._XDisplay*, align 8
  %there_is_a_selection_owner = alloca i8, align 1
  %min_size_bytes = alloca i32, align 4
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  store i64 %target_type, i64* %target_type.addr, align 8
  store i64 %selection_atom, i64* %selection_atom.addr, align 8
  store i8* null, i8** %data, align 8
  store i64 0, i64* %bytes, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 2
  %1 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %1, %struct._XDisplay** %display, align 8
  %2 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %3 = load i64, i64* %window.addr, align 8
  %4 = load i64, i64* %property.addr, align 8
  call void @x_get_window_property(%struct._XDisplay* %2, i64 %3, i64 %4, i8** %data, i64* %bytes, i64* %actual_type, i32* %actual_format, i64* %actual_size)
  %5 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @block_input()
  %6 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %7 = load i64, i64* %selection_atom.addr, align 8
  %call = call i64 @XGetSelectionOwner(%struct._XDisplay* %6, i64 %7)
  %cmp = icmp ne i64 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %there_is_a_selection_owner, align 1
  call void @unblock_input()
  %8 = load i8, i8* %there_is_a_selection_owner, align 1
  %tobool2 = trunc i8 %8 to i1
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %9 = load i64, i64* %actual_type, align 8
  %tobool4 = icmp ne i64 %9, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %10 = load i64, i64* %target_type.addr, align 8
  %11 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %12 = load i64, i64* %actual_type, align 8
  %call5 = call i64 @x_atom_to_symbol(%struct.x_display_info* %11, i64 %12)
  %call6 = call i64 @list2(i64 %10, i64 %call5)
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %13 = load i64, i64* %target_type.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call6, %cond.true ], [ %13, %cond.false ]
  call void @signal_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i64 %cond) #5
  unreachable

if.else:                                          ; preds = %if.then
  %14 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %15 = load i64, i64* %selection_atom.addr, align 8
  %call7 = call i64 @x_atom_to_symbol(%struct.x_display_info* %14, i64 %15)
  call void @signal_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i64 %call7) #5
  unreachable

if.end:                                           ; preds = %entry
  %16 = load i64, i64* %actual_type, align 8
  %17 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_INCR = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %17, i32 0, i32 53
  %18 = load i64, i64* %Xatom_INCR, align 8
  %cmp8 = icmp eq i64 %16, %18
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %min_size_bytes, align 4
  call void @block_input()
  %22 = load i8*, i8** %data, align 8
  call void @xfree(i8* %22)
  call void @unblock_input()
  %23 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %24 = load i64, i64* %window.addr, align 8
  %25 = load i64, i64* %property.addr, align 8
  %26 = load i64, i64* %target_type.addr, align 8
  %27 = load i32, i32* %min_size_bytes, align 4
  call void @receive_incremental_selection(%struct.x_display_info* %23, i64 %24, i64 %25, i64 %26, i32 %27, i8** %data, i64* %bytes, i64* %actual_type, i32* %actual_format, i64* %actual_size)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  call void @block_input()
  %28 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %29 = load i64, i64* %window.addr, align 8
  %30 = load i64, i64* %property.addr, align 8
  %call11 = call i32 @XDeleteProperty(%struct._XDisplay* %28, i64 %29, i64 %30)
  %31 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call12 = call i32 @XFlush(%struct._XDisplay* %31)
  call void @unblock_input()
  %32 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %33 = load i8*, i8** %data, align 8
  %34 = load i64, i64* %bytes, align 8
  %35 = load i64, i64* %actual_type, align 8
  %36 = load i32, i32* %actual_format, align 4
  %call13 = call i64 @selection_data_to_lisp_data(%struct.x_display_info* %32, i8* %33, i64 %34, i64 %35, i32 %36)
  store i64 %call13, i64* %val, align 8
  %37 = load i8*, i8** %data, align 8
  call void @xfree(i8* %37)
  %38 = load i64, i64* %val, align 8
  ret i64 %38
}

declare zeroext i1 @VECTORP(i64) #1

declare i64 @ASIZE(i64) #1

declare i64 @AREF(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @x_convert_selection(i64 %selection_symbol, i64 %target_symbol, i64 %property, i1 zeroext %for_multiple, %struct.x_display_info* %dpyinfo) #0 {
entry:
  %retval = alloca i1, align 1
  %selection_symbol.addr = alloca i64, align 8
  %target_symbol.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %for_multiple.addr = alloca i8, align 1
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %lisp_selection = alloca i64, align 8
  %cs = alloca %struct.selection_data*, align 8
  store i64 %selection_symbol, i64* %selection_symbol.addr, align 8
  store i64 %target_symbol, i64* %target_symbol.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  %frombool = zext i1 %for_multiple to i8
  store i8 %frombool, i8* %for_multiple.addr, align 1
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %0 = load i64, i64* %selection_symbol.addr, align 8
  %1 = load i64, i64* %target_symbol.addr, align 8
  %2 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %call = call i64 @x_get_local_selection(i64 %0, i64 %1, i1 zeroext false, %struct.x_display_info* %2)
  store i64 %call, i64* %lisp_selection, align 8
  %3 = load i64, i64* %lisp_selection, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %lisp_selection, align 8
  %and = and i64 %4, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i64, i64* %lisp_selection, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %8, %call4
  br i1 %cmp5, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true, %entry
  %9 = load i8, i8* %for_multiple.addr, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %call8 = call noalias i8* @xmalloc(i64 64)
  %10 = bitcast i8* %call8 to %struct.selection_data*
  store %struct.selection_data* %10, %struct.selection_data** %cs, align 8
  %11 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data = getelementptr inbounds %struct.selection_data, %struct.selection_data* %11, i32 0, i32 0
  store i8* bitcast (i64* @conversion_fail_tag to i8*), i8** %data, align 8
  %12 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %size = getelementptr inbounds %struct.selection_data, %struct.selection_data* %12, i32 0, i32 1
  store i64 1, i64* %size, align 8
  %13 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %format = getelementptr inbounds %struct.selection_data, %struct.selection_data* %13, i32 0, i32 2
  store i32 32, i32* %format, align 4
  %14 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %type = getelementptr inbounds %struct.selection_data, %struct.selection_data* %14, i32 0, i32 3
  store i64 4, i64* %type, align 8
  %15 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %nofree = getelementptr inbounds %struct.selection_data, %struct.selection_data* %15, i32 0, i32 4
  store i8 1, i8* %nofree, align 1
  %16 = load i64, i64* %property.addr, align 8
  %17 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property9 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %17, i32 0, i32 5
  store i64 %16, i64* %property9, align 8
  %18 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object = getelementptr inbounds %struct.selection_data, %struct.selection_data* %18, i32 0, i32 6
  store %struct.prop_location* null, %struct.prop_location** %wait_object, align 8
  %19 = load %struct.selection_data*, %struct.selection_data** @converted_selections, align 8
  %20 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %next = getelementptr inbounds %struct.selection_data, %struct.selection_data* %20, i32 0, i32 7
  store %struct.selection_data* %19, %struct.selection_data** %next, align 8
  %21 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  store %struct.selection_data* %21, %struct.selection_data** @converted_selections, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  store i1 false, i1* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %call11 = call noalias i8* @xmalloc(i64 64)
  %22 = bitcast i8* %call11 to %struct.selection_data*
  store %struct.selection_data* %22, %struct.selection_data** %cs, align 8
  %23 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data12 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %23, i32 0, i32 0
  store i8* null, i8** %data12, align 8
  %24 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %nofree13 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %24, i32 0, i32 4
  store i8 1, i8* %nofree13, align 1
  %25 = load i64, i64* %property.addr, align 8
  %26 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property14 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %26, i32 0, i32 5
  store i64 %25, i64* %property14, align 8
  %27 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object15 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %27, i32 0, i32 6
  store %struct.prop_location* null, %struct.prop_location** %wait_object15, align 8
  %28 = load %struct.selection_data*, %struct.selection_data** @converted_selections, align 8
  %29 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %next16 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %29, i32 0, i32 7
  store %struct.selection_data* %28, %struct.selection_data** %next16, align 8
  %30 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  store %struct.selection_data* %30, %struct.selection_data** @converted_selections, align 8
  %31 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %32 = load i64, i64* %lisp_selection, align 8
  %33 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  call void @lisp_data_to_selection_data(%struct.x_display_info* %31, i64 %32, %struct.selection_data* %33)
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end
  %34 = load i1, i1* %retval
  ret i1 %34
}

; Function Attrs: nounwind uwtable
define internal void @x_reply_selection_request(%struct.selection_input_event* %event, %struct.x_display_info* %dpyinfo) #0 {
entry:
  %event.addr = alloca %struct.selection_input_event*, align 8
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %reply_base = alloca %union._XEvent, align 8
  %reply = alloca %struct.XSelectionEvent*, align 8
  %display = alloca %struct._XDisplay*, align 8
  %window = alloca i64, align 8
  %bytes_remaining = alloca i64, align 8
  %max_bytes = alloca i32, align 4
  %count = alloca i64, align 8
  %cs = alloca %struct.selection_data*, align 8
  %value = alloca [1 x i64], align 8
  %format_bytes = alloca i32, align 4
  %had_errors_p = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.selection_input_event* %event, %struct.selection_input_event** %event.addr, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  %xselection = bitcast %union._XEvent* %reply_base to %struct.XSelectionEvent*
  store %struct.XSelectionEvent* %xselection, %struct.XSelectionEvent** %reply, align 8
  %0 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %call = call %struct._XDisplay* @SELECTION_EVENT_DISPLAY(%struct.selection_input_event* %0)
  store %struct._XDisplay* %call, %struct._XDisplay** %display, align 8
  %1 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %requestor = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %1, i32 0, i32 2
  %2 = load i64, i64* %requestor, align 8
  store i64 %2, i64* %window, align 8
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call1 = call i32 @selection_quantum(%struct._XDisplay* %3)
  store i32 %call1, i32* %max_bytes, align 4
  %call2 = call i64 @SPECPDL_INDEX()
  store i64 %call2, i64* %count, align 8
  %4 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %type = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %4, i32 0, i32 0
  store i32 31, i32* %type, align 4
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %6 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %display3 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %6, i32 0, i32 3
  store %struct._XDisplay* %5, %struct._XDisplay** %display3, align 8
  %7 = load i64, i64* %window, align 8
  %8 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %requestor4 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %8, i32 0, i32 4
  store i64 %7, i64* %requestor4, align 8
  %9 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %selection = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %9, i32 0, i32 3
  %10 = load i64, i64* %selection, align 8
  %11 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %selection5 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %11, i32 0, i32 5
  store i64 %10, i64* %selection5, align 8
  %12 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %time = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %12, i32 0, i32 6
  %13 = load i64, i64* %time, align 8
  %14 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %time6 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %14, i32 0, i32 8
  store i64 %13, i64* %time6, align 8
  %15 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %target = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %15, i32 0, i32 4
  %16 = load i64, i64* %target, align 8
  %17 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %target7 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %17, i32 0, i32 6
  store i64 %16, i64* %target7, align 8
  %18 = load %struct.selection_input_event*, %struct.selection_input_event** %event.addr, align 8
  %property = getelementptr inbounds %struct.selection_input_event, %struct.selection_input_event* %18, i32 0, i32 5
  %19 = load i64, i64* %property, align 8
  %20 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %property8 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %20, i32 0, i32 7
  store i64 %19, i64* %property8, align 8
  %21 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %property9 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %21, i32 0, i32 7
  %22 = load i64, i64* %property9, align 8
  %cmp = icmp eq i64 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %target10 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %23, i32 0, i32 6
  %24 = load i64, i64* %target10, align 8
  %25 = load %struct.XSelectionEvent*, %struct.XSelectionEvent** %reply, align 8
  %property11 = getelementptr inbounds %struct.XSelectionEvent, %struct.XSelectionEvent* %25, i32 0, i32 7
  store i64 %24, i64* %property11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @block_input()
  call void @record_unwind_protect_void(void ()* @x_catch_errors_unwind)
  %26 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_catch_errors(%struct._XDisplay* %26)
  %27 = load %struct.selection_data*, %struct.selection_data** @converted_selections, align 8
  store %struct.selection_data* %27, %struct.selection_data** %cs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %tobool = icmp ne %struct.selection_data* %28, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property12 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %29, i32 0, i32 5
  %30 = load i64, i64* %property12, align 8
  %cmp13 = icmp eq i64 %30, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %for.inc

if.end.15:                                        ; preds = %for.body
  %31 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %size = getelementptr inbounds %struct.selection_data, %struct.selection_data* %31, i32 0, i32 1
  %32 = load i64, i64* %size, align 8
  store i64 %32, i64* %bytes_remaining, align 8
  %33 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %format = getelementptr inbounds %struct.selection_data, %struct.selection_data* %33, i32 0, i32 2
  %34 = load i32, i32* %format, align 4
  %shr = ashr i32 %34, 3
  %conv = sext i32 %shr to i64
  %35 = load i64, i64* %bytes_remaining, align 8
  %mul = mul nsw i64 %35, %conv
  store i64 %mul, i64* %bytes_remaining, align 8
  %36 = load i64, i64* %bytes_remaining, align 8
  %37 = load i32, i32* %max_bytes, align 4
  %conv16 = sext i32 %37 to i64
  %cmp17 = icmp sle i64 %36, %conv16
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.15
  %38 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %39 = load i64, i64* %window, align 8
  %40 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property20 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %40, i32 0, i32 5
  %41 = load i64, i64* %property20, align 8
  %42 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %type21 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %42, i32 0, i32 3
  %43 = load i64, i64* %type21, align 8
  %44 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %format22 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %44, i32 0, i32 2
  %45 = load i32, i32* %format22, align 4
  %46 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data = getelementptr inbounds %struct.selection_data, %struct.selection_data* %46, i32 0, i32 0
  %47 = load i8*, i8** %data, align 8
  %48 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %size23 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %48, i32 0, i32 1
  %49 = load i64, i64* %size23, align 8
  %conv24 = trunc i64 %49 to i32
  %call25 = call i32 @XChangeProperty(%struct._XDisplay* %38, i64 %39, i64 %41, i64 %43, i32 %45, i32 0, i8* %47, i32 %conv24)
  br label %if.end.33

if.else:                                          ; preds = %if.end.15
  %50 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %51 = load i64, i64* %window, align 8
  %52 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property26 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %52, i32 0, i32 5
  %53 = load i64, i64* %property26, align 8
  %call27 = call %struct.prop_location* @expect_property_change(%struct._XDisplay* %50, i64 %51, i64 %53, i32 1)
  %54 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object = getelementptr inbounds %struct.selection_data, %struct.selection_data* %54, i32 0, i32 6
  store %struct.prop_location* %call27, %struct.prop_location** %wait_object, align 8
  %55 = load i64, i64* %bytes_remaining, align 8
  %cmp28 = icmp slt i64 %55, 2147483647
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %56 = load i64, i64* %bytes_remaining, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %56, %cond.true ], [ 2147483647, %cond.false ]
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %value, i32 0, i64 0
  store i64 %cond, i64* %arrayidx, align 8
  %57 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %58 = load i64, i64* %window, align 8
  %59 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property30 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %59, i32 0, i32 5
  %60 = load i64, i64* %property30, align 8
  %61 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %Xatom_INCR = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %61, i32 0, i32 53
  %62 = load i64, i64* %Xatom_INCR, align 8
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %value, i32 0, i32 0
  %63 = bitcast i64* %arraydecay to i8*
  %call31 = call i32 @XChangeProperty(%struct._XDisplay* %57, i64 %58, i64 %60, i64 %62, i32 32, i32 0, i8* %63, i32 1)
  %64 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %65 = load i64, i64* %window, align 8
  %call32 = call i32 @XSelectInput(%struct._XDisplay* %64, i64 %65, i64 4194304)
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end, %if.then.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.33, %if.then.14
  %66 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %next = getelementptr inbounds %struct.selection_data, %struct.selection_data* %66, i32 0, i32 7
  %67 = load %struct.selection_data*, %struct.selection_data** %next, align 8
  store %struct.selection_data* %67, %struct.selection_data** %cs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %69 = load i64, i64* %window, align 8
  %call34 = call i32 @XSendEvent(%struct._XDisplay* %68, i64 %69, i32 0, i64 0, %union._XEvent* %reply_base)
  %70 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call35 = call i32 @XFlush(%struct._XDisplay* %70)
  %71 = load %struct.selection_data*, %struct.selection_data** @converted_selections, align 8
  store %struct.selection_data* %71, %struct.selection_data** %cs, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.105, %for.end
  %72 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %tobool37 = icmp ne %struct.selection_data* %72, null
  br i1 %tobool37, label %for.body.38, label %for.end.107

for.body.38:                                      ; preds = %for.cond.36
  %73 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object39 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %73, i32 0, i32 6
  %74 = load %struct.prop_location*, %struct.prop_location** %wait_object39, align 8
  %tobool40 = icmp ne %struct.prop_location* %74, null
  br i1 %tobool40, label %if.then.41, label %if.end.104

if.then.41:                                       ; preds = %for.body.38
  %75 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %format42 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %75, i32 0, i32 2
  %76 = load i32, i32* %format42, align 4
  %div = sdiv i32 %76, 8
  store i32 %div, i32* %format_bytes, align 4
  %77 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call43 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %77)
  %frombool = zext i1 %call43 to i8
  store i8 %frombool, i8* %had_errors_p, align 1
  %78 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object44 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %78, i32 0, i32 6
  %79 = load %struct.prop_location*, %struct.prop_location** %wait_object44, align 8
  call void @set_property_change_object(%struct.prop_location* %79)
  call void @unblock_input()
  %80 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %size45 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %80, i32 0, i32 1
  %81 = load i64, i64* %size45, align 8
  store i64 %81, i64* %bytes_remaining, align 8
  %82 = load i32, i32* %format_bytes, align 4
  %conv46 = sext i32 %82 to i64
  %83 = load i64, i64* %bytes_remaining, align 8
  %mul47 = mul nsw i64 %83, %conv46
  store i64 %mul47, i64* %bytes_remaining, align 8
  %84 = load i8, i8* %had_errors_p, align 1
  %tobool48 = trunc i8 %84 to i1
  br i1 %tobool48, label %if.else.51, label %if.then.49

if.then.49:                                       ; preds = %if.then.41
  %85 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object50 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %85, i32 0, i32 6
  %86 = load %struct.prop_location*, %struct.prop_location** %wait_object50, align 8
  call void @wait_for_property_change(%struct.prop_location* %86)
  br label %if.end.53

if.else.51:                                       ; preds = %if.then.41
  %87 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object52 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %87, i32 0, i32 6
  %88 = load %struct.prop_location*, %struct.prop_location** %wait_object52, align 8
  call void @unexpect_property_change(%struct.prop_location* %88)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.49
  br label %while.cond

while.cond:                                       ; preds = %if.end.93, %if.end.53
  %89 = load i64, i64* %bytes_remaining, align 8
  %tobool54 = icmp ne i64 %89, 0
  br i1 %tobool54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %90 = load i64, i64* %bytes_remaining, align 8
  %91 = load i32, i32* %max_bytes, align 4
  %conv55 = sext i32 %91 to i64
  %cmp56 = icmp slt i64 %90, %conv55
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %while.body
  %92 = load i64, i64* %bytes_remaining, align 8
  br label %cond.end.61

cond.false.59:                                    ; preds = %while.body
  %93 = load i32, i32* %max_bytes, align 4
  %conv60 = sext i32 %93 to i64
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.58
  %cond62 = phi i64 [ %92, %cond.true.58 ], [ %conv60, %cond.false.59 ]
  %94 = load i32, i32* %format_bytes, align 4
  %conv63 = sext i32 %94 to i64
  %div64 = sdiv i64 %cond62, %conv63
  %conv65 = trunc i64 %div64 to i32
  store i32 %conv65, i32* %i, align 4
  call void @block_input()
  %95 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %96 = load i64, i64* %window, align 8
  %97 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property66 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %97, i32 0, i32 5
  %98 = load i64, i64* %property66, align 8
  %call67 = call %struct.prop_location* @expect_property_change(%struct._XDisplay* %95, i64 %96, i64 %98, i32 1)
  %99 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object68 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %99, i32 0, i32 6
  store %struct.prop_location* %call67, %struct.prop_location** %wait_object68, align 8
  %100 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %101 = load i64, i64* %window, align 8
  %102 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property69 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %102, i32 0, i32 5
  %103 = load i64, i64* %property69, align 8
  %104 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %type70 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %104, i32 0, i32 3
  %105 = load i64, i64* %type70, align 8
  %106 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %format71 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %106, i32 0, i32 2
  %107 = load i32, i32* %format71, align 4
  %108 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data72 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %108, i32 0, i32 0
  %109 = load i8*, i8** %data72, align 8
  %110 = load i32, i32* %i, align 4
  %call73 = call i32 @XChangeProperty(%struct._XDisplay* %100, i64 %101, i64 %103, i64 %105, i32 %107, i32 2, i8* %109, i32 %110)
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %format_bytes, align 4
  %mul74 = mul nsw i32 %111, %112
  %conv75 = sext i32 %mul74 to i64
  %113 = load i64, i64* %bytes_remaining, align 8
  %sub = sub nsw i64 %113, %conv75
  store i64 %sub, i64* %bytes_remaining, align 8
  %114 = load i32, i32* %i, align 4
  %conv76 = sext i32 %114 to i64
  %115 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %format77 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %115, i32 0, i32 2
  %116 = load i32, i32* %format77, align 4
  %cmp78 = icmp eq i32 %116, 32
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.end.61
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.end.61
  %117 = load i32, i32* %format_bytes, align 4
  %conv82 = sext i32 %117 to i64
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.80
  %cond84 = phi i64 [ 8, %cond.true.80 ], [ %conv82, %cond.false.81 ]
  %mul85 = mul i64 %conv76, %cond84
  %118 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data86 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %118, i32 0, i32 0
  %119 = load i8*, i8** %data86, align 8
  %add.ptr = getelementptr inbounds i8, i8* %119, i64 %mul85
  store i8* %add.ptr, i8** %data86, align 8
  %120 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call87 = call i32 @XFlush(%struct._XDisplay* %120)
  %121 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call88 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %121)
  %frombool89 = zext i1 %call88 to i8
  store i8 %frombool89, i8* %had_errors_p, align 1
  %122 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object90 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %122, i32 0, i32 6
  %123 = load %struct.prop_location*, %struct.prop_location** %wait_object90, align 8
  call void @set_property_change_object(%struct.prop_location* %123)
  call void @unblock_input()
  %124 = load i8, i8* %had_errors_p, align 1
  %tobool91 = trunc i8 %124 to i1
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %cond.end.83
  br label %while.end

if.end.93:                                        ; preds = %cond.end.83
  %125 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %wait_object94 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %125, i32 0, i32 6
  %126 = load %struct.prop_location*, %struct.prop_location** %wait_object94, align 8
  call void @wait_for_property_change(%struct.prop_location* %126)
  br label %while.cond

while.end:                                        ; preds = %if.then.92, %while.cond
  call void @block_input()
  %127 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %128 = load i64, i64* %window, align 8
  %call95 = call zeroext i1 @waiting_for_other_props_on_window(%struct._XDisplay* %127, i64 %128)
  br i1 %call95, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %while.end
  %129 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %130 = load i64, i64* %window, align 8
  %call97 = call i32 @XSelectInput(%struct._XDisplay* %129, i64 %130, i64 0)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %while.end
  %131 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %132 = load i64, i64* %window, align 8
  %133 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %property99 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %133, i32 0, i32 5
  %134 = load i64, i64* %property99, align 8
  %135 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %type100 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %135, i32 0, i32 3
  %136 = load i64, i64* %type100, align 8
  %137 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %format101 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %137, i32 0, i32 2
  %138 = load i32, i32* %format101, align 4
  %139 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %data102 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %139, i32 0, i32 0
  %140 = load i8*, i8** %data102, align 8
  %call103 = call i32 @XChangeProperty(%struct._XDisplay* %131, i64 %132, i64 %134, i64 %136, i32 %138, i32 0, i8* %140, i32 0)
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.98, %for.body.38
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %141 = load %struct.selection_data*, %struct.selection_data** %cs, align 8
  %next106 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %141, i32 0, i32 7
  %142 = load %struct.selection_data*, %struct.selection_data** %next106, align 8
  store %struct.selection_data* %142, %struct.selection_data** %cs, align 8
  br label %for.cond.36

for.end.107:                                      ; preds = %for.cond.36
  br label %do.body

do.body:                                          ; preds = %for.end.107
  call void @gdk_window_process_all_updates()
  %143 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call108 = call i32 @XSync(%struct._XDisplay* %143, i32 0)
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @unblock_input()
  call void @block_input()
  %144 = load i64, i64* %count, align 8
  %call109 = call i64 @builtin_lisp_symbol(i32 0)
  %call110 = call i64 @unbind_to(i64 %144, i64 %call109)
  call void @unblock_input()
  ret void
}

declare i64 @unbind_to(i64, i64) #1

declare void @xfree(i8*) #1

; Function Attrs: noreturn
declare void @emacs_abort() #2

declare void @kbd_buffer_unget_event(%struct.selection_input_event*) #1

; Function Attrs: nounwind uwtable
define internal void @x_get_window_property(%struct._XDisplay* %display, i64 %window, i64 %property, i8** %data_ret, i64* %bytes_ret, i64* %actual_type_ret, i32* %actual_format_ret, i64* %actual_size_ret) #0 {
entry:
  %display.addr = alloca %struct._XDisplay*, align 8
  %window.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %data_ret.addr = alloca i8**, align 8
  %bytes_ret.addr = alloca i64*, align 8
  %actual_type_ret.addr = alloca i64*, align 8
  %actual_format_ret.addr = alloca i32*, align 8
  %actual_size_ret.addr = alloca i64*, align 8
  %total_size = alloca i64, align 8
  %bytes_remaining = alloca i64, align 8
  %offset = alloca i64, align 8
  %data = alloca i8*, align 8
  %tmp_data = alloca i8*, align 8
  %result = alloca i32, align 4
  %buffer_size = alloca i32, align 4
  %x_long_size = alloca i64, align 8
  %total_size_max = alloca i64, align 8
  %bytes_gotten = alloca i64, align 8
  %bytes_per_item = alloca i32, align 4
  %data1 = alloca i8*, align 8
  %remaining_lim = alloca i64, align 8
  %i = alloca i64, align 8
  %idata = alloca i32*, align 8
  %ldata = alloca i64*, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  store i8** %data_ret, i8*** %data_ret.addr, align 8
  store i64* %bytes_ret, i64** %bytes_ret.addr, align 8
  store i64* %actual_type_ret, i64** %actual_type_ret.addr, align 8
  store i32* %actual_format_ret, i32** %actual_format_ret.addr, align 8
  store i64* %actual_size_ret, i64** %actual_size_ret.addr, align 8
  store i64 0, i64* %offset, align 8
  store i8* null, i8** %data, align 8
  store i8* null, i8** %tmp_data, align 8
  %0 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %call = call i32 @selection_quantum(%struct._XDisplay* %0)
  store i32 %call, i32* %buffer_size, align 4
  store i64 4, i64* %x_long_size, align 8
  %1 = load i64, i64* %x_long_size, align 8
  %div = udiv i64 9223372036854775806, %1
  %cmp = icmp ult i64 %div, 9223372036854775807
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %x_long_size, align 8
  %mul = mul nsw i64 9223372036854775807, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 9223372036854775806, %cond.true ], [ %mul, %cond.false ]
  store i64 %cond, i64* %total_size_max, align 8
  call void @block_input()
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %4 = load i64, i64* %window.addr, align 8
  %5 = load i64, i64* %property.addr, align 8
  %6 = load i64*, i64** %actual_type_ret.addr, align 8
  %7 = load i32*, i32** %actual_format_ret.addr, align 8
  %8 = load i64*, i64** %actual_size_ret.addr, align 8
  %call1 = call i32 @XGetWindowProperty(%struct._XDisplay* %3, i64 %4, i64 %5, i64 0, i64 0, i32 0, i64 0, i64* %6, i32* %7, i64* %8, i64* %bytes_remaining, i8** %tmp_data)
  store i32 %call1, i32* %result, align 4
  %9 = load i32, i32* %result, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %done

if.end:                                           ; preds = %cond.end
  %10 = load i8*, i8** %tmp_data, align 8
  %call3 = call i32 @XFree(i8* %10)
  %11 = load i64*, i64** %actual_type_ret.addr, align 8
  %12 = load i64, i64* %11, align 8
  %cmp4 = icmp eq i64 %12, 0
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i32*, i32** %actual_format_ret.addr, align 8
  %14 = load i32, i32* %13, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  br label %done

if.end.7:                                         ; preds = %lor.lhs.false
  %15 = load i64, i64* %total_size_max, align 8
  %16 = load i64, i64* %bytes_remaining, align 8
  %cmp8 = icmp ult i64 %15, %16
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %size_overflow

if.end.10:                                        ; preds = %if.end.7
  %17 = load i64, i64* %bytes_remaining, align 8
  store i64 %17, i64* %total_size, align 8
  %18 = load i64, i64* %total_size, align 8
  %add = add nsw i64 %18, 1
  %call11 = call noalias i8* @xmalloc(i64 %add)
  store i8* %call11, i8** %data, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.end.10
  %19 = load i64, i64* %bytes_remaining, align 8
  %tobool = icmp ne i64 %19, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %21 = load i64, i64* %window.addr, align 8
  %22 = load i64, i64* %property.addr, align 8
  %23 = load i64, i64* %offset, align 8
  %div12 = sdiv i64 %23, 4
  %24 = load i32, i32* %buffer_size, align 4
  %div13 = sdiv i32 %24, 4
  %conv = sext i32 %div13 to i64
  %25 = load i64*, i64** %actual_type_ret.addr, align 8
  %26 = load i32*, i32** %actual_format_ret.addr, align 8
  %27 = load i64*, i64** %actual_size_ret.addr, align 8
  %call14 = call i32 @XGetWindowProperty(%struct._XDisplay* %20, i64 %21, i64 %22, i64 %div12, i64 %conv, i32 0, i64 0, i64* %25, i32* %26, i64* %27, i64* %bytes_remaining, i8** %tmp_data)
  store i32 %call14, i32* %result, align 4
  %28 = load i32, i32* %result, align 4
  %cmp15 = icmp ne i32 %28, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  br label %while.end

if.end.18:                                        ; preds = %while.body
  %29 = load i32*, i32** %actual_format_ret.addr, align 8
  %30 = load i32, i32* %29, align 4
  %shr = ashr i32 %30, 3
  store i32 %shr, i32* %bytes_per_item, align 4
  %31 = load i64*, i64** %actual_size_ret.addr, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %bytes_gotten, align 8
  %33 = load i32, i32* %bytes_per_item, align 4
  %conv19 = sext i32 %33 to i64
  %34 = load i64, i64* %bytes_gotten, align 8
  %mul20 = mul nsw i64 %34, %conv19
  store i64 %mul20, i64* %bytes_gotten, align 8
  %35 = load i64, i64* %total_size, align 8
  %36 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %35, %36
  %37 = load i64, i64* %bytes_gotten, align 8
  %cmp21 = icmp slt i64 %sub, %37
  br i1 %cmp21, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %if.end.18
  %38 = load i64, i64* %total_size_max, align 8
  %39 = load i64, i64* %offset, align 8
  %sub24 = sub nsw i64 %38, %39
  %40 = load i64, i64* %bytes_gotten, align 8
  %sub25 = sub nsw i64 %sub24, %40
  store i64 %sub25, i64* %remaining_lim, align 8
  %41 = load i64, i64* %remaining_lim, align 8
  %cmp26 = icmp slt i64 %41, 0
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.23
  %42 = load i64, i64* %remaining_lim, align 8
  %43 = load i64, i64* %bytes_remaining, align 8
  %cmp29 = icmp ult i64 %42, %43
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.then.23
  br label %size_overflow

if.end.32:                                        ; preds = %lor.lhs.false.28
  %44 = load i64, i64* %offset, align 8
  %45 = load i64, i64* %bytes_gotten, align 8
  %add33 = add nsw i64 %44, %45
  %46 = load i64, i64* %bytes_remaining, align 8
  %add34 = add i64 %add33, %46
  store i64 %add34, i64* %total_size, align 8
  %47 = load i8*, i8** %data, align 8
  %48 = load i64, i64* %total_size, align 8
  %add35 = add nsw i64 %48, 1
  %call36 = call i8* @xrealloc(i8* %47, i64 %add35)
  store i8* %call36, i8** %data1, align 8
  %49 = load i8*, i8** %data1, align 8
  store i8* %49, i8** %data, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.32, %if.end.18
  %50 = load i32*, i32** %actual_format_ret.addr, align 8
  %51 = load i32, i32* %50, align 4
  %cmp38 = icmp eq i32 %51, 32
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.37
  %52 = load i8*, i8** %data, align 8
  %53 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = bitcast i8* %add.ptr to i32*
  store i32* %54, i32** %idata, align 8
  %55 = load i8*, i8** %tmp_data, align 8
  %56 = bitcast i8* %55 to i64*
  store i64* %56, i64** %ldata, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %57 = load i64, i64* %i, align 8
  %58 = load i64*, i64** %actual_size_ret.addr, align 8
  %59 = load i64, i64* %58, align 8
  %cmp41 = icmp ult i64 %57, %59
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i64, i64* %i, align 8
  %61 = load i64*, i64** %ldata, align 8
  %arrayidx = getelementptr inbounds i64, i64* %61, i64 %60
  %62 = load i64, i64* %arrayidx, align 8
  %conv43 = trunc i64 %62 to i32
  %63 = load i64, i64* %i, align 8
  %64 = load i32*, i32** %idata, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %64, i64 %63
  store i32 %conv43, i32* %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i64, i64* %i, align 8
  %inc = add i64 %65, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.46

if.else:                                          ; preds = %if.end.37
  %66 = load i8*, i8** %data, align 8
  %67 = load i64, i64* %offset, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %66, i64 %67
  %68 = load i8*, i8** %tmp_data, align 8
  %69 = load i64, i64* %bytes_gotten, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr45, i8* %68, i64 %69, i32 1, i1 false)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %for.end
  %70 = load i64, i64* %bytes_gotten, align 8
  %71 = load i64, i64* %offset, align 8
  %add47 = add nsw i64 %71, %70
  store i64 %add47, i64* %offset, align 8
  %72 = load i8*, i8** %tmp_data, align 8
  %call48 = call i32 @XFree(i8* %72)
  br label %while.cond

while.end:                                        ; preds = %if.then.17, %while.cond
  %73 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %call49 = call i32 @XFlush(%struct._XDisplay* %73)
  %74 = load i64, i64* %offset, align 8
  %75 = load i8*, i8** %data, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8 0, i8* %arrayidx50, align 1
  br label %done

done:                                             ; preds = %while.end, %if.then.6, %if.then
  call void @unblock_input()
  %76 = load i8*, i8** %data, align 8
  %77 = load i8**, i8*** %data_ret.addr, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i64, i64* %offset, align 8
  %79 = load i64*, i64** %bytes_ret.addr, align 8
  store i64 %78, i64* %79, align 8
  ret void

size_overflow:                                    ; preds = %if.then.31, %if.then.9
  %80 = load i8*, i8** %data, align 8
  %tobool51 = icmp ne i8* %80, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %size_overflow
  %81 = load i8*, i8** %data, align 8
  call void @xfree(i8* %81)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %size_overflow
  call void @unblock_input()
  call void @memory_full(i64 -1) #5
  unreachable
}

; Function Attrs: noreturn
declare void @signal_error(i8*, i64) #2

declare i64 @list2(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @receive_incremental_selection(%struct.x_display_info* %dpyinfo, i64 %window, i64 %property, i64 %target_type, i32 %min_size_bytes, i8** %data_ret, i64* %size_bytes_ret, i64* %type_ret, i32* %format_ret, i64* %size_ret) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %window.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %target_type.addr = alloca i64, align 8
  %min_size_bytes.addr = alloca i32, align 4
  %data_ret.addr = alloca i8**, align 8
  %size_bytes_ret.addr = alloca i64*, align 8
  %type_ret.addr = alloca i64*, align 8
  %format_ret.addr = alloca i32*, align 8
  %size_ret.addr = alloca i64*, align 8
  %offset = alloca i64, align 8
  %wait_object = alloca %struct.prop_location*, align 8
  %display = alloca %struct._XDisplay*, align 8
  %tmp_data = alloca i8*, align 8
  %tmp_size_bytes = alloca i64, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  store i64 %target_type, i64* %target_type.addr, align 8
  store i32 %min_size_bytes, i32* %min_size_bytes.addr, align 4
  store i8** %data_ret, i8*** %data_ret.addr, align 8
  store i64* %size_bytes_ret, i64** %size_bytes_ret.addr, align 8
  store i64* %type_ret, i64** %type_ret.addr, align 8
  store i32* %format_ret, i32** %format_ret.addr, align 8
  store i64* %size_ret, i64** %size_ret.addr, align 8
  store i64 0, i64* %offset, align 8
  %0 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %0, i32 0, i32 2
  %1 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %1, %struct._XDisplay** %display, align 8
  %2 = load i32, i32* %min_size_bytes.addr, align 4
  %conv = zext i32 %2 to i64
  %cmp = icmp ult i64 9223372036854775807, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @memory_full(i64 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %min_size_bytes.addr, align 4
  %conv3 = zext i32 %3 to i64
  %call = call noalias i8* @xmalloc(i64 %conv3)
  %4 = load i8**, i8*** %data_ret.addr, align 8
  store i8* %call, i8** %4, align 8
  %5 = load i32, i32* %min_size_bytes.addr, align 4
  %conv4 = zext i32 %5 to i64
  %6 = load i64*, i64** %size_bytes_ret.addr, align 8
  store i64 %conv4, i64* %6, align 8
  call void @block_input()
  %7 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %8 = load i64, i64* %window.addr, align 8
  %call5 = call i32 @XSelectInput(%struct._XDisplay* %7, i64 %8, i64 6520957)
  %9 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %10 = load i64, i64* %window.addr, align 8
  %11 = load i64, i64* %property.addr, align 8
  %call6 = call i32 @XDeleteProperty(%struct._XDisplay* %9, i64 %10, i64 %11)
  %12 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %13 = load i64, i64* %window.addr, align 8
  %14 = load i64, i64* %property.addr, align 8
  %call7 = call %struct.prop_location* @expect_property_change(%struct._XDisplay* %12, i64 %13, i64 %14, i32 0)
  store %struct.prop_location* %call7, %struct.prop_location** %wait_object, align 8
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call8 = call i32 @XFlush(%struct._XDisplay* %15)
  %16 = load %struct.prop_location*, %struct.prop_location** %wait_object, align 8
  call void @set_property_change_object(%struct.prop_location* %16)
  call void @unblock_input()
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.26
  %17 = load %struct.prop_location*, %struct.prop_location** %wait_object, align 8
  call void @wait_for_property_change(%struct.prop_location* %17)
  %18 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %19 = load i64, i64* %window.addr, align 8
  %20 = load i64, i64* %property.addr, align 8
  %21 = load i64*, i64** %type_ret.addr, align 8
  %22 = load i32*, i32** %format_ret.addr, align 8
  %23 = load i64*, i64** %size_ret.addr, align 8
  call void @x_get_window_property(%struct._XDisplay* %18, i64 %19, i64 %20, i8** %tmp_data, i64* %tmp_size_bytes, i64* %21, i32* %22, i64* %23)
  %24 = load i64, i64* %tmp_size_bytes, align 8
  %cmp9 = icmp eq i64 %24, 0
  br i1 %cmp9, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %while.body
  %25 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %26 = load i64, i64* %window.addr, align 8
  %call12 = call zeroext i1 @waiting_for_other_props_on_window(%struct._XDisplay* %25, i64 %26)
  br i1 %call12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  %27 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %28 = load i64, i64* %window.addr, align 8
  %call14 = call i32 @XSelectInput(%struct._XDisplay* %27, i64 %28, i64 2326653)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.11
  %29 = load i8*, i8** %tmp_data, align 8
  call void @xfree(i8* %29)
  br label %while.end

if.end.16:                                        ; preds = %while.body
  call void @block_input()
  %30 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %31 = load i64, i64* %window.addr, align 8
  %32 = load i64, i64* %property.addr, align 8
  %call17 = call i32 @XDeleteProperty(%struct._XDisplay* %30, i64 %31, i64 %32)
  %33 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %34 = load i64, i64* %window.addr, align 8
  %35 = load i64, i64* %property.addr, align 8
  %call18 = call %struct.prop_location* @expect_property_change(%struct._XDisplay* %33, i64 %34, i64 %35, i32 0)
  store %struct.prop_location* %call18, %struct.prop_location** %wait_object, align 8
  %36 = load %struct.prop_location*, %struct.prop_location** %wait_object, align 8
  call void @set_property_change_object(%struct.prop_location* %36)
  %37 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call19 = call i32 @XFlush(%struct._XDisplay* %37)
  call void @unblock_input()
  %38 = load i64*, i64** %size_bytes_ret.addr, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %39, %40
  %41 = load i64, i64* %tmp_size_bytes, align 8
  %cmp20 = icmp slt i64 %sub, %41
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.16
  %42 = load i8**, i8*** %data_ret.addr, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i64*, i64** %size_bytes_ret.addr, align 8
  %45 = load i64, i64* %tmp_size_bytes, align 8
  %46 = load i64*, i64** %size_bytes_ret.addr, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %offset, align 8
  %sub23 = sub nsw i64 %47, %48
  %sub24 = sub nsw i64 %45, %sub23
  %call25 = call i8* @xpalloc(i8* %43, i64* %44, i64 %sub24, i64 -1, i64 1)
  %49 = load i8**, i8*** %data_ret.addr, align 8
  store i8* %call25, i8** %49, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.16
  %50 = load i8**, i8*** %data_ret.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %52
  %53 = load i8*, i8** %tmp_data, align 8
  %54 = load i64, i64* %tmp_size_bytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %53, i64 %54, i32 1, i1 false)
  %55 = load i64, i64* %tmp_size_bytes, align 8
  %56 = load i64, i64* %offset, align 8
  %add = add nsw i64 %56, %55
  store i64 %add, i64* %offset, align 8
  %57 = load i8*, i8** %tmp_data, align 8
  call void @xfree(i8* %57)
  br label %while.body

while.end:                                        ; preds = %if.end.15
  ret void
}

declare i32 @XDeleteProperty(%struct._XDisplay*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @selection_quantum(%struct._XDisplay* %display) #0 {
entry:
  %display.addr = alloca %struct._XDisplay*, align 8
  %mrs = alloca i64, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  %0 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %call = call i64 @XMaxRequestSize(%struct._XDisplay* %0)
  store i64 %call, i64* %mrs, align 8
  %1 = load i64, i64* %mrs, align 8
  %cmp = icmp slt i64 %1, 4194328
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %mrs, align 8
  %sub = sub nsw i64 %2, 25
  %mul = mul nsw i64 %sub, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 16777215, %cond.false ]
  %conv = trunc i64 %cond to i32
  ret i32 %conv
}

declare i32 @XGetWindowProperty(%struct._XDisplay*, i64, i64, i64, i64, i32, i64, i64*, i32*, i64*, i64*, i8**) #1

declare i8* @xrealloc(i8*, i64) #1

declare i64 @XMaxRequestSize(%struct._XDisplay*) #1

declare i32 @XSelectInput(%struct._XDisplay*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.prop_location* @expect_property_change(%struct._XDisplay* %display, i64 %window, i64 %property, i32 %state) #0 {
entry:
  %display.addr = alloca %struct._XDisplay*, align 8
  %window.addr = alloca i64, align 8
  %property.addr = alloca i64, align 8
  %state.addr = alloca i32, align 4
  %pl = alloca %struct.prop_location*, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  store i64 %property, i64* %property.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  %call = call noalias i8* @xmalloc(i64 48)
  %0 = bitcast i8* %call to %struct.prop_location*
  store %struct.prop_location* %0, %struct.prop_location** %pl, align 8
  %1 = load i32, i32* @prop_location_identifier, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @prop_location_identifier, align 4
  %2 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  %identifier = getelementptr inbounds %struct.prop_location, %struct.prop_location* %2, i32 0, i32 0
  store i32 %inc, i32* %identifier, align 4
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %4 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  %display1 = getelementptr inbounds %struct.prop_location, %struct.prop_location* %4, i32 0, i32 1
  store %struct._XDisplay* %3, %struct._XDisplay** %display1, align 8
  %5 = load i64, i64* %window.addr, align 8
  %6 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  %window2 = getelementptr inbounds %struct.prop_location, %struct.prop_location* %6, i32 0, i32 2
  store i64 %5, i64* %window2, align 8
  %7 = load i64, i64* %property.addr, align 8
  %8 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  %property3 = getelementptr inbounds %struct.prop_location, %struct.prop_location* %8, i32 0, i32 3
  store i64 %7, i64* %property3, align 8
  %9 = load i32, i32* %state.addr, align 4
  %10 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  %desired_state = getelementptr inbounds %struct.prop_location, %struct.prop_location* %10, i32 0, i32 4
  store i32 %9, i32* %desired_state, align 4
  %11 = load %struct.prop_location*, %struct.prop_location** @property_change_wait_list, align 8
  %12 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  %next = getelementptr inbounds %struct.prop_location, %struct.prop_location* %12, i32 0, i32 6
  store %struct.prop_location* %11, %struct.prop_location** %next, align 8
  %13 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  %arrived = getelementptr inbounds %struct.prop_location, %struct.prop_location* %13, i32 0, i32 5
  store i8 0, i8* %arrived, align 1
  %14 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  store %struct.prop_location* %14, %struct.prop_location** @property_change_wait_list, align 8
  %15 = load %struct.prop_location*, %struct.prop_location** %pl, align 8
  ret %struct.prop_location* %15
}

; Function Attrs: nounwind uwtable
define internal void @set_property_change_object(%struct.prop_location* %location) #0 {
entry:
  %location.addr = alloca %struct.prop_location*, align 8
  store %struct.prop_location* %location, %struct.prop_location** %location.addr, align 8
  %call = call zeroext i1 @input_blocked_p()
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @emacs_abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, i64* @property_change_reply, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %0, i64 %call1)
  %1 = load %struct.prop_location*, %struct.prop_location** %location.addr, align 8
  store %struct.prop_location* %1, %struct.prop_location** @property_change_reply_object, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wait_for_property_change(%struct.prop_location* %location) #0 {
entry:
  %location.addr = alloca %struct.prop_location*, align 8
  %count = alloca i64, align 8
  %timeout = alloca i64, align 8
  %secs = alloca i64, align 8
  %nsecs = alloca i32, align 4
  store %struct.prop_location* %location, %struct.prop_location** %location.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load %struct.prop_location*, %struct.prop_location** %location.addr, align 8
  %1 = bitcast %struct.prop_location* %0 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @wait_for_property_change_unwind, i8* %1)
  %2 = load %struct.prop_location*, %struct.prop_location** %location.addr, align 8
  %arrived = getelementptr inbounds %struct.prop_location, %struct.prop_location* %2, i32 0, i32 5
  %3 = load i8, i8* %arrived, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 419), align 8
  %cmp = icmp sgt i64 0, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 419), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %5, %cond.false ]
  store i64 %cond, i64* %timeout, align 8
  %6 = load i64, i64* %timeout, align 8
  %div = sdiv i64 %6, 1000
  store i64 %div, i64* %secs, align 8
  %7 = load i64, i64* %timeout, align 8
  %rem = srem i64 %7, 1000
  %mul = mul nsw i64 %rem, 1000000
  %conv = trunc i64 %mul to i32
  store i32 %conv, i32* %nsecs, align 4
  %8 = load i64, i64* %secs, align 8
  %9 = load i32, i32* %nsecs, align 4
  %10 = load i64, i64* @property_change_reply, align 8
  %call1 = call i32 @wait_reading_process_output(i64 %8, i32 %9, i32 0, i1 zeroext false, i64 %10, %struct.Lisp_Process* null, i32 0)
  %11 = load i64, i64* @property_change_reply, align 8
  %sub = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %14, %call2
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %15 = load i64, i64* %count, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @unbind_to(i64 %15, i64 %call7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @waiting_for_other_props_on_window(%struct._XDisplay* %display, i64 %window) #0 {
entry:
  %retval = alloca i1, align 1
  %display.addr = alloca %struct._XDisplay*, align 8
  %window.addr = alloca i64, align 8
  %p = alloca %struct.prop_location*, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  store i64 %window, i64* %window.addr, align 8
  %0 = load %struct.prop_location*, %struct.prop_location** @property_change_wait_list, align 8
  store %struct.prop_location* %0, %struct.prop_location** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.prop_location*, %struct.prop_location** %p, align 8
  %tobool = icmp ne %struct.prop_location* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.prop_location*, %struct.prop_location** %p, align 8
  %display1 = getelementptr inbounds %struct.prop_location, %struct.prop_location* %2, i32 0, i32 1
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  %4 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %cmp = icmp eq %struct._XDisplay* %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.prop_location*, %struct.prop_location** %p, align 8
  %window2 = getelementptr inbounds %struct.prop_location, %struct.prop_location* %5, i32 0, i32 2
  %6 = load i64, i64* %window2, align 8
  %7 = load i64, i64* %window.addr, align 8
  %cmp3 = icmp eq i64 %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.prop_location*, %struct.prop_location** %p, align 8
  %next = getelementptr inbounds %struct.prop_location, %struct.prop_location* %8, i32 0, i32 6
  %9 = load %struct.prop_location*, %struct.prop_location** %next, align 8
  store %struct.prop_location* %9, %struct.prop_location** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i1, i1* %retval
  ret i1 %10
}

declare zeroext i1 @input_blocked_p() #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @wait_for_property_change_unwind(i8* %loc) #0 {
entry:
  %loc.addr = alloca i8*, align 8
  %location = alloca %struct.prop_location*, align 8
  store i8* %loc, i8** %loc.addr, align 8
  %0 = load i8*, i8** %loc.addr, align 8
  %1 = bitcast i8* %0 to %struct.prop_location*
  store %struct.prop_location* %1, %struct.prop_location** %location, align 8
  %2 = load %struct.prop_location*, %struct.prop_location** %location, align 8
  call void @unexpect_property_change(%struct.prop_location* %2)
  %3 = load %struct.prop_location*, %struct.prop_location** %location, align 8
  %4 = load %struct.prop_location*, %struct.prop_location** @property_change_reply_object, align 8
  %cmp = icmp eq %struct.prop_location* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.prop_location* null, %struct.prop_location** @property_change_reply_object, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @wait_reading_process_output(i64, i32, i32, i1 zeroext, i64, %struct.Lisp_Process*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @unexpect_property_change(%struct.prop_location* %location) #0 {
entry:
  %location.addr = alloca %struct.prop_location*, align 8
  %prop = alloca %struct.prop_location*, align 8
  %pprev = alloca %struct.prop_location**, align 8
  store %struct.prop_location* %location, %struct.prop_location** %location.addr, align 8
  store %struct.prop_location** @property_change_wait_list, %struct.prop_location*** %pprev, align 8
  %0 = load %struct.prop_location*, %struct.prop_location** @property_change_wait_list, align 8
  store %struct.prop_location* %0, %struct.prop_location** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.prop_location*, %struct.prop_location** %prop, align 8
  %tobool = icmp ne %struct.prop_location* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.prop_location*, %struct.prop_location** %prop, align 8
  %3 = load %struct.prop_location*, %struct.prop_location** %location.addr, align 8
  %cmp = icmp eq %struct.prop_location* %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.prop_location*, %struct.prop_location** %prop, align 8
  %next = getelementptr inbounds %struct.prop_location, %struct.prop_location* %4, i32 0, i32 6
  %5 = load %struct.prop_location*, %struct.prop_location** %next, align 8
  %6 = load %struct.prop_location**, %struct.prop_location*** %pprev, align 8
  store %struct.prop_location* %5, %struct.prop_location** %6, align 8
  %7 = load %struct.prop_location*, %struct.prop_location** %prop, align 8
  %8 = bitcast %struct.prop_location* %7 to i8*
  call void @xfree(i8* %8)
  br label %for.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.prop_location*, %struct.prop_location** %prop, align 8
  %next1 = getelementptr inbounds %struct.prop_location, %struct.prop_location* %9, i32 0, i32 6
  store %struct.prop_location** %next1, %struct.prop_location*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.prop_location**, %struct.prop_location*** %pprev, align 8
  %11 = load %struct.prop_location*, %struct.prop_location** %10, align 8
  store %struct.prop_location* %11, %struct.prop_location** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lisp_data_to_selection_data(%struct.x_display_info* %dpyinfo, i64 %obj, %struct.selection_data* %cs) #0 {
entry:
  %dpyinfo.addr = alloca %struct.x_display_info*, align 8
  %obj.addr = alloca i64, align 8
  %cs.addr = alloca %struct.selection_data*, align 8
  %type = alloca i64, align 8
  %data58 = alloca i8*, align 8
  %x_atom_ptr = alloca i64*, align 8
  %data74 = alloca i8*, align 8
  %short_ptr = alloca i16*, align 8
  %data136 = alloca i8*, align 8
  %x_long_ptr = alloca i64*, align 8
  %i = alloca i64, align 8
  %size153 = alloca i64, align 8
  %data161 = alloca i8*, align 8
  %x_atoms = alloca i64*, align 8
  %format192 = alloca i32, align 4
  %data_size = alloca i32, align 4
  %data193 = alloca i8*, align 8
  %x_atoms194 = alloca i64*, align 8
  %shorts = alloca i16*, align 8
  store %struct.x_display_info* %dpyinfo, %struct.x_display_info** %dpyinfo.addr, align 8
  store i64 %obj, i64* %obj.addr, align 8
  store %struct.selection_data* %cs, %struct.selection_data** %cs.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %type, align 8
  %0 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %nofree = getelementptr inbounds %struct.selection_data, %struct.selection_data* %0, i32 0, i32 4
  store i8 0, i8* %nofree, align 1
  %1 = load i64, i64* %obj.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %obj.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %and2 = and i64 %5, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, i64* %obj.addr, align 8
  %sub6 = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub6 to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car7 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car7, align 8
  store i64 %9, i64* %type, align 8
  %10 = load i64, i64* %obj.addr, align 8
  %sub8 = sub nsw i64 %10, 3
  %11 = inttoptr i64 %sub8 to i8*
  %12 = bitcast i8* %11 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %12, i32 0, i32 1
  %cdr = bitcast %union.anon.11* %u to i64*
  %13 = load i64, i64* %cdr, align 8
  store i64 %13, i64* %obj.addr, align 8
  %14 = load i64, i64* %obj.addr, align 8
  %and9 = and i64 %14, 7
  %conv10 = trunc i64 %and9 to i32
  %cmp11 = icmp eq i32 %conv10, 3
  br i1 %cmp11, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %if.then
  %15 = load i64, i64* %obj.addr, align 8
  %sub14 = sub nsw i64 %15, 3
  %16 = inttoptr i64 %sub14 to i8*
  %17 = bitcast i8* %16 to %struct.Lisp_Cons*
  %u15 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %17, i32 0, i32 1
  %cdr16 = bitcast %union.anon.11* %u15 to i64*
  %18 = load i64, i64* %cdr16, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %18, %call17
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true.13
  %19 = load i64, i64* %obj.addr, align 8
  %sub21 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub21 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car22 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car22, align 8
  store i64 %22, i64* %obj.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true.13, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %land.lhs.true, %entry
  %23 = load i64, i64* %obj.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 146)
  %cmp25 = icmp eq i64 %23, %call24
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %24 = load i64, i64* %type, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 146)
  %cmp28 = icmp eq i64 %24, %call27
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.23
  %25 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %format = getelementptr inbounds %struct.selection_data, %struct.selection_data* %25, i32 0, i32 2
  store i32 32, i32* %format, align 4
  %26 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %size = getelementptr inbounds %struct.selection_data, %struct.selection_data* %26, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %27 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data = getelementptr inbounds %struct.selection_data, %struct.selection_data* %27, i32 0, i32 0
  store i8* null, i8** %data, align 8
  %call31 = call i64 @builtin_lisp_symbol(i32 146)
  store i64 %call31, i64* %type, align 8
  br label %if.end.243

if.else:                                          ; preds = %lor.lhs.false
  %28 = load i64, i64* %obj.addr, align 8
  %call32 = call zeroext i1 @STRINGP(i64 %28)
  br i1 %call32, label %if.then.33, label %if.else.52

if.then.33:                                       ; preds = %if.else
  %29 = load i64, i64* %obj.addr, align 8
  %call34 = call i64 @SCHARS(i64 %29)
  %30 = load i64, i64* %obj.addr, align 8
  %call35 = call i64 @SBYTES(i64 %30)
  %cmp36 = icmp slt i64 %call34, %call35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.33
  %31 = load i64, i64* %obj.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0), i64 %31) #5
  unreachable

if.end.39:                                        ; preds = %if.then.33
  %32 = load i64, i64* %type, align 8
  %call40 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp41 = icmp eq i64 %32, %call40
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.39
  %call44 = call i64 @builtin_lisp_symbol(i32 150)
  store i64 %call44, i64* %type, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.39
  %33 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %format46 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %33, i32 0, i32 2
  store i32 8, i32* %format46, align 4
  %34 = load i64, i64* %obj.addr, align 8
  %call47 = call i64 @SBYTES(i64 %34)
  %35 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %size48 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %35, i32 0, i32 1
  store i64 %call47, i64* %size48, align 8
  %36 = load i64, i64* %obj.addr, align 8
  %call49 = call i8* @SDATA(i64 %36)
  %37 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data50 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %37, i32 0, i32 0
  store i8* %call49, i8** %data50, align 8
  %38 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %nofree51 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %38, i32 0, i32 4
  store i8 1, i8* %nofree51, align 1
  br label %if.end.242

if.else.52:                                       ; preds = %if.else
  %39 = load i64, i64* %obj.addr, align 8
  %and53 = and i64 %39, 7
  %conv54 = trunc i64 %and53 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.else.71

if.then.57:                                       ; preds = %if.else.52
  %call59 = call noalias i8* @xmalloc(i64 9)
  store i8* %call59, i8** %data58, align 8
  %40 = load i8*, i8** %data58, align 8
  %41 = bitcast i8* %40 to i64*
  store i64* %41, i64** %x_atom_ptr, align 8
  %42 = load i8*, i8** %data58, align 8
  %43 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data60 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %43, i32 0, i32 0
  store i8* %42, i8** %data60, align 8
  %44 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %format61 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %44, i32 0, i32 2
  store i32 32, i32* %format61, align 4
  %45 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %size62 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %45, i32 0, i32 1
  store i64 1, i64* %size62, align 8
  %46 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data63 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %46, i32 0, i32 0
  %47 = load i8*, i8** %data63, align 8
  %arrayidx = getelementptr inbounds i8, i8* %47, i64 8
  store i8 0, i8* %arrayidx, align 1
  %48 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %49 = load i64, i64* %obj.addr, align 8
  %call64 = call i64 @symbol_to_x_atom(%struct.x_display_info* %48, i64 %49)
  %50 = load i64*, i64** %x_atom_ptr, align 8
  store i64 %call64, i64* %50, align 8
  %51 = load i64, i64* %type, align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %51, %call65
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.57
  %call69 = call i64 @builtin_lisp_symbol(i32 1)
  store i64 %call69, i64* %type, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.57
  br label %if.end.241

if.else.71:                                       ; preds = %if.else.52
  %52 = load i64, i64* %obj.addr, align 8
  %call72 = call zeroext i1 @RANGED_INTEGERP(i64 -32768, i64 %52, i64 32767)
  br i1 %call72, label %if.then.73, label %if.else.88

if.then.73:                                       ; preds = %if.else.71
  %call75 = call noalias i8* @xmalloc(i64 3)
  store i8* %call75, i8** %data74, align 8
  %53 = load i8*, i8** %data74, align 8
  %54 = bitcast i8* %53 to i16*
  store i16* %54, i16** %short_ptr, align 8
  %55 = load i8*, i8** %data74, align 8
  %56 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data76 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %56, i32 0, i32 0
  store i8* %55, i8** %data76, align 8
  %57 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %format77 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %57, i32 0, i32 2
  store i32 16, i32* %format77, align 4
  %58 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %size78 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %58, i32 0, i32 1
  store i64 1, i64* %size78, align 8
  %59 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data79 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %59, i32 0, i32 0
  %60 = load i8*, i8** %data79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %60, i64 2
  store i8 0, i8* %arrayidx80, align 1
  %61 = load i64, i64* %obj.addr, align 8
  %shr = ashr i64 %61, 2
  %conv81 = trunc i64 %shr to i16
  %62 = load i16*, i16** %short_ptr, align 8
  store i16 %conv81, i16* %62, align 2
  %63 = load i64, i64* %type, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp83 = icmp eq i64 %63, %call82
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.73
  %call86 = call i64 @builtin_lisp_symbol(i32 144)
  store i64 %call86, i64* %type, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.then.73
  br label %if.end.240

if.else.88:                                       ; preds = %if.else.71
  %64 = load i64, i64* %obj.addr, align 8
  %and89 = and i64 %64, 7
  %conv90 = trunc i64 %and89 to i32
  %and91 = and i32 %conv90, -5
  %cmp92 = icmp eq i32 %and91, 2
  br i1 %cmp92, label %if.then.135, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %if.else.88
  %65 = load i64, i64* %obj.addr, align 8
  %and95 = and i64 %65, 7
  %conv96 = trunc i64 %and95 to i32
  %cmp97 = icmp eq i32 %conv96, 3
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.150

land.lhs.true.99:                                 ; preds = %lor.lhs.false.94
  %66 = load i64, i64* %obj.addr, align 8
  %sub100 = sub nsw i64 %66, 3
  %67 = inttoptr i64 %sub100 to i8*
  %68 = bitcast i8* %67 to %struct.Lisp_Cons*
  %car101 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %68, i32 0, i32 0
  %69 = load i64, i64* %car101, align 8
  %and102 = and i64 %69, 7
  %conv103 = trunc i64 %and102 to i32
  %and104 = and i32 %conv103, -5
  %cmp105 = icmp eq i32 %and104, 2
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.150

land.lhs.true.107:                                ; preds = %land.lhs.true.99
  %70 = load i64, i64* %obj.addr, align 8
  %sub108 = sub nsw i64 %70, 3
  %71 = inttoptr i64 %sub108 to i8*
  %72 = bitcast i8* %71 to %struct.Lisp_Cons*
  %u109 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %72, i32 0, i32 1
  %cdr110 = bitcast %union.anon.11* %u109 to i64*
  %73 = load i64, i64* %cdr110, align 8
  %and111 = and i64 %73, 7
  %conv112 = trunc i64 %and111 to i32
  %and113 = and i32 %conv112, -5
  %cmp114 = icmp eq i32 %and113, 2
  br i1 %cmp114, label %if.then.135, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.107
  %74 = load i64, i64* %obj.addr, align 8
  %sub117 = sub nsw i64 %74, 3
  %75 = inttoptr i64 %sub117 to i8*
  %76 = bitcast i8* %75 to %struct.Lisp_Cons*
  %u118 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %76, i32 0, i32 1
  %cdr119 = bitcast %union.anon.11* %u118 to i64*
  %77 = load i64, i64* %cdr119, align 8
  %and120 = and i64 %77, 7
  %conv121 = trunc i64 %and120 to i32
  %cmp122 = icmp eq i32 %conv121, 3
  br i1 %cmp122, label %land.lhs.true.124, label %if.else.150

land.lhs.true.124:                                ; preds = %lor.lhs.false.116
  %78 = load i64, i64* %obj.addr, align 8
  %sub125 = sub nsw i64 %78, 3
  %79 = inttoptr i64 %sub125 to i8*
  %80 = bitcast i8* %79 to %struct.Lisp_Cons*
  %u126 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %80, i32 0, i32 1
  %cdr127 = bitcast %union.anon.11* %u126 to i64*
  %81 = load i64, i64* %cdr127, align 8
  %sub128 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub128 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %car129 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 0
  %84 = load i64, i64* %car129, align 8
  %and130 = and i64 %84, 7
  %conv131 = trunc i64 %and130 to i32
  %and132 = and i32 %conv131, -5
  %cmp133 = icmp eq i32 %and132, 2
  br i1 %cmp133, label %if.then.135, label %if.else.150

if.then.135:                                      ; preds = %land.lhs.true.124, %land.lhs.true.107, %if.else.88
  %call137 = call noalias i8* @xmalloc(i64 9)
  store i8* %call137, i8** %data136, align 8
  %85 = load i8*, i8** %data136, align 8
  %86 = bitcast i8* %85 to i64*
  store i64* %86, i64** %x_long_ptr, align 8
  %87 = load i8*, i8** %data136, align 8
  %88 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data138 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %88, i32 0, i32 0
  store i8* %87, i8** %data138, align 8
  %89 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %format139 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %89, i32 0, i32 2
  store i32 32, i32* %format139, align 4
  %90 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %size140 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %90, i32 0, i32 1
  store i64 1, i64* %size140, align 8
  %91 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data141 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %91, i32 0, i32 0
  %92 = load i8*, i8** %data141, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %92, i64 8
  store i8 0, i8* %arrayidx142, align 1
  %93 = load i64, i64* %obj.addr, align 8
  %call143 = call i64 @cons_to_x_long(i64 %93)
  %94 = load i64*, i64** %x_long_ptr, align 8
  store i64 %call143, i64* %94, align 8
  %95 = load i64, i64* %type, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp145 = icmp eq i64 %95, %call144
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.then.135
  %call148 = call i64 @builtin_lisp_symbol(i32 144)
  store i64 %call148, i64* %type, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.then.135
  br label %if.end.239

if.else.150:                                      ; preds = %land.lhs.true.124, %lor.lhs.false.116, %land.lhs.true.99, %lor.lhs.false.94
  %96 = load i64, i64* %obj.addr, align 8
  %call151 = call zeroext i1 @VECTORP(i64 %96)
  br i1 %call151, label %if.then.152, label %if.else.237

if.then.152:                                      ; preds = %if.else.150
  %97 = load i64, i64* %obj.addr, align 8
  %call154 = call i64 @ASIZE(i64 %97)
  store i64 %call154, i64* %size153, align 8
  %98 = load i64, i64* %obj.addr, align 8
  %call155 = call i64 @AREF(i64 %98, i64 0)
  %and156 = and i64 %call155, 7
  %conv157 = trunc i64 %and156 to i32
  %cmp158 = icmp eq i32 %conv157, 0
  br i1 %cmp158, label %if.then.160, label %if.else.191

if.then.160:                                      ; preds = %if.then.152
  %99 = load i64, i64* %type, align 8
  %call162 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp163 = icmp eq i64 %99, %call162
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %if.then.160
  %call166 = call i64 @builtin_lisp_symbol(i32 1)
  store i64 %call166, i64* %type, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %if.then.160
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.167
  %100 = load i64, i64* %i, align 8
  %101 = load i64, i64* %size153, align 8
  %cmp168 = icmp slt i64 %100, %101
  br i1 %cmp168, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load i64, i64* %obj.addr, align 8
  %103 = load i64, i64* %i, align 8
  %call170 = call i64 @AREF(i64 %102, i64 %103)
  %and171 = and i64 %call170, 7
  %conv172 = trunc i64 %and171 to i32
  %cmp173 = icmp eq i32 %conv172, 0
  br i1 %cmp173, label %if.end.176, label %if.then.175

if.then.175:                                      ; preds = %for.body
  %104 = load i64, i64* %obj.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i32 0, i32 0), i64 %104) #5
  unreachable

if.end.176:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.176
  %105 = load i64, i64* %i, align 8
  %inc = add nsw i64 %105, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load i64, i64* %size153, align 8
  %call177 = call noalias i8* @xnmalloc(i64 %106, i64 8)
  store i8* %call177, i8** %data161, align 8
  %107 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data178 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %107, i32 0, i32 0
  store i8* %call177, i8** %data178, align 8
  %108 = load i8*, i8** %data161, align 8
  %109 = bitcast i8* %108 to i64*
  store i64* %109, i64** %x_atoms, align 8
  %110 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %format179 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %110, i32 0, i32 2
  store i32 32, i32* %format179, align 4
  %111 = load i64, i64* %size153, align 8
  %112 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %size180 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %112, i32 0, i32 1
  store i64 %111, i64* %size180, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.188, %for.end
  %113 = load i64, i64* %i, align 8
  %114 = load i64, i64* %size153, align 8
  %cmp182 = icmp slt i64 %113, %114
  br i1 %cmp182, label %for.body.184, label %for.end.190

for.body.184:                                     ; preds = %for.cond.181
  %115 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %116 = load i64, i64* %obj.addr, align 8
  %117 = load i64, i64* %i, align 8
  %call185 = call i64 @AREF(i64 %116, i64 %117)
  %call186 = call i64 @symbol_to_x_atom(%struct.x_display_info* %115, i64 %call185)
  %118 = load i64, i64* %i, align 8
  %119 = load i64*, i64** %x_atoms, align 8
  %arrayidx187 = getelementptr inbounds i64, i64* %119, i64 %118
  store i64 %call186, i64* %arrayidx187, align 8
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.184
  %120 = load i64, i64* %i, align 8
  %inc189 = add nsw i64 %120, 1
  store i64 %inc189, i64* %i, align 8
  br label %for.cond.181

for.end.190:                                      ; preds = %for.cond.181
  br label %if.end.236

if.else.191:                                      ; preds = %if.then.152
  store i32 16, i32* %format192, align 4
  store i32 2, i32* %data_size, align 4
  %121 = load i64, i64* %type, align 8
  %call195 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp196 = icmp eq i64 %121, %call195
  br i1 %cmp196, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %if.else.191
  %call199 = call i64 @builtin_lisp_symbol(i32 144)
  store i64 %call199, i64* %type, align 8
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %if.else.191
  store i64 0, i64* %i, align 8
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.209, %if.end.200
  %122 = load i64, i64* %i, align 8
  %123 = load i64, i64* %size153, align 8
  %cmp202 = icmp slt i64 %122, %123
  br i1 %cmp202, label %for.body.204, label %for.end.211

for.body.204:                                     ; preds = %for.cond.201
  %124 = load i64, i64* %obj.addr, align 8
  %125 = load i64, i64* %i, align 8
  %call205 = call i64 @AREF(i64 %124, i64 %125)
  %call206 = call zeroext i1 @RANGED_INTEGERP(i64 -32768, i64 %call205, i64 32767)
  br i1 %call206, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %for.body.204
  store i32 8, i32* %data_size, align 4
  store i32 32, i32* %format192, align 4
  br label %for.end.211

if.end.208:                                       ; preds = %for.body.204
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %126 = load i64, i64* %i, align 8
  %inc210 = add nsw i64 %126, 1
  store i64 %inc210, i64* %i, align 8
  br label %for.cond.201

for.end.211:                                      ; preds = %if.then.207, %for.cond.201
  %127 = load i64, i64* %size153, align 8
  %128 = load i32, i32* %data_size, align 4
  %conv212 = sext i32 %128 to i64
  %call213 = call noalias i8* @xnmalloc(i64 %127, i64 %conv212)
  store i8* %call213, i8** %data193, align 8
  %129 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %data214 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %129, i32 0, i32 0
  store i8* %call213, i8** %data214, align 8
  %130 = load i8*, i8** %data193, align 8
  %131 = bitcast i8* %130 to i64*
  store i64* %131, i64** %x_atoms194, align 8
  %132 = load i8*, i8** %data193, align 8
  %133 = bitcast i8* %132 to i16*
  store i16* %133, i16** %shorts, align 8
  %134 = load i32, i32* %format192, align 4
  %135 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %format215 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %135, i32 0, i32 2
  store i32 %134, i32* %format215, align 4
  %136 = load i64, i64* %size153, align 8
  %137 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %size216 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %137, i32 0, i32 1
  store i64 %136, i64* %size216, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.233, %for.end.211
  %138 = load i64, i64* %i, align 8
  %139 = load i64, i64* %size153, align 8
  %cmp218 = icmp slt i64 %138, %139
  br i1 %cmp218, label %for.body.220, label %for.end.235

for.body.220:                                     ; preds = %for.cond.217
  %140 = load i32, i32* %format192, align 4
  %cmp221 = icmp eq i32 %140, 32
  br i1 %cmp221, label %if.then.223, label %if.else.227

if.then.223:                                      ; preds = %for.body.220
  %141 = load i64, i64* %obj.addr, align 8
  %142 = load i64, i64* %i, align 8
  %call224 = call i64 @AREF(i64 %141, i64 %142)
  %call225 = call i64 @cons_to_x_long(i64 %call224)
  %143 = load i64, i64* %i, align 8
  %144 = load i64*, i64** %x_atoms194, align 8
  %arrayidx226 = getelementptr inbounds i64, i64* %144, i64 %143
  store i64 %call225, i64* %arrayidx226, align 8
  br label %if.end.232

if.else.227:                                      ; preds = %for.body.220
  %145 = load i64, i64* %obj.addr, align 8
  %146 = load i64, i64* %i, align 8
  %call228 = call i64 @AREF(i64 %145, i64 %146)
  %shr229 = ashr i64 %call228, 2
  %conv230 = trunc i64 %shr229 to i16
  %147 = load i64, i64* %i, align 8
  %148 = load i16*, i16** %shorts, align 8
  %arrayidx231 = getelementptr inbounds i16, i16* %148, i64 %147
  store i16 %conv230, i16* %arrayidx231, align 2
  br label %if.end.232

if.end.232:                                       ; preds = %if.else.227, %if.then.223
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %149 = load i64, i64* %i, align 8
  %inc234 = add nsw i64 %149, 1
  store i64 %inc234, i64* %i, align 8
  br label %for.cond.217

for.end.235:                                      ; preds = %for.cond.217
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.235, %for.end.190
  br label %if.end.238

if.else.237:                                      ; preds = %if.else.150
  %150 = load i64, i64* %obj.addr, align 8
  call void @signal_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i64 %150) #5
  unreachable

if.end.238:                                       ; preds = %if.end.236
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.end.149
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.87
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.70
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.45
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.30
  %151 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo.addr, align 8
  %152 = load i64, i64* %type, align 8
  %call244 = call i64 @symbol_to_x_atom(%struct.x_display_info* %151, i64 %152)
  %153 = load %struct.selection_data*, %struct.selection_data** %cs.addr, align 8
  %type245 = getelementptr inbounds %struct.selection_data, %struct.selection_data* %153, i32 0, i32 3
  store i64 %call244, i64* %type245, align 8
  ret void
}

declare i64 @SCHARS(i64) #1

declare i64 @SBYTES(i64) #1

declare i8* @SDATA(i64) #1

declare noalias i8* @xnmalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @x_catch_errors_unwind() #0 {
entry:
  call void @block_input()
  call void @x_uncatch_errors()
  call void @unblock_input()
  ret void
}

declare i32 @XChangeProperty(%struct._XDisplay*, i64, i64, i64, i32, i32, i8*, i32) #1

declare void @gdk_window_process_all_updates() #1

declare i32 @XSync(%struct._XDisplay*, i32) #1

declare void @x_check_errors(%struct._XDisplay*, i8*) #1

declare i64 @list4(i64, i64, i64, i64) #1

declare i64 @intbig_to_lisp(i64) #1

declare i64 @uintbig_to_lisp(i64) #1

declare zeroext i1 @TERMINALP(i64) #1

declare %struct.terminal* @decode_live_terminal(i64) #1

declare void @specbind(i64, i64) #1

declare i64 @Fcdr(i64) #1

declare i64 @Fassq(i64, i64) #1

declare i64 @call3(i64, i64, i64, i64) #1

declare i32 @XConvertSelection(%struct._XDisplay*, i64, i64, i64, i64, i64) #1

declare i64 @make_uninit_vector(i64) #1

declare i64 @Fmessage(i64, i64*) #1

declare i64 @CDR(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i64 @cons_to_signed(i64, i64, i64) #1

declare i64 @make_unibyte_string(i8*, i64) #1

declare i64 @Fput_text_property(i64, i64, i64, i64, i64) #1

declare i64 @intern(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
