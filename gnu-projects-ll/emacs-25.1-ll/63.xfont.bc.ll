; ModuleID = './src/xfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.face_cache*, i32, %struct.glyph_pool*, %struct.glyph_pool*, %struct.glyph_matrix*, %struct.glyph_matrix*, i48, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.terminal*, %union.output_data, %struct.font_driver_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x double], double, i32, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.face_cache = type { %struct.face**, %struct.frame*, %struct.face**, i64, i32, i8 }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.font_driver = type { i64, i8, {}*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, {}*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.glyph_pool = type { %struct.glyph*, i64, i32, i32 }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon, %union.anon.1 }
%union.anon = type { %struct.glyph_slice }
%struct.glyph_slice = type { i64 }
%union.anon.1 = type { i32 }
%struct.glyph_matrix = type { %struct.glyph_pool*, %struct.glyph_row*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.buffer*, i64, i64 }
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.buffer = type opaque
%struct.terminal = type { %struct.vectorlike_header, i64, i64, i64, i64, %struct.terminal*, i32, i32, i32, i8*, %struct.kboard*, %struct.image_cache*, %union.display_info, %struct.coding_system*, %struct.coding_system*, %struct.redisplay_interface*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame*, i32, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, %struct.glyph*, i32)*, void (%struct.frame*, i32)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.terminal*)*, void (%struct.terminal*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.frame*, i32)*, void (%struct.frame**, i32, i64*, i32*, i64*, i64*, i64*)*, void (%struct.frame*)*, void (%struct.frame*, i1)*, void (%struct.frame*)*, i64 (%struct.frame*, i32, i32, i32, i64, i8**)*, i64 (%struct.frame*, i64, i64)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.frame*)*, i32 (%struct.terminal*, %struct.input_event*)*, void (%struct.frame*)*, void (%struct.frame*)*, void (%struct.terminal*)* }
%struct.kboard = type opaque
%struct.image_cache = type { %struct.image**, %struct.image**, i64, i64, i64 }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
%struct.timespec = type { i64, i64 }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct._XDisplay = type opaque
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.image_type = type { i32, i1 (i64)*, i1 (%struct.frame*, %struct.image*)*, void (%struct.frame*, %struct.image*)*, i1 ()*, %struct.image_type* }
%union.display_info = type { %struct.tty_display_info* }
%struct.tty_display_info = type opaque
%struct.coding_system = type opaque
%struct.redisplay_interface = type { void (%struct.frame*, i64, i64)**, void (%struct.it*)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.glyph*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.run*)*, void (%struct.window*, %struct.glyph_row*)*, void (%struct.window*)*, void (%struct.window*, i1, i1)*, void (%struct.frame*)*, void (%struct.window*)*, void (%struct.glyph*, %struct.frame*, i32*, i32*)*, void (%struct.window*, %struct.glyph_row*, i32, i32)*, void (%struct.window*, %struct.glyph_row*, %struct.draw_fringe_bitmap_params*)*, void (i32, i16*, i32, i32)*, void (i32)*, void (%struct.glyph_string*)*, void (%struct.glyph_string*)*, void (%struct.frame*, i64)*, void (%struct.frame*, i32, i32, i32, i32)*, void (%struct.window*, %struct.glyph_row*, i32, i32, i32, i32, i1, i1)*, void (%struct.window*, i32, i32, i32)*, void (%struct.window*, i32, i32, i32, i32)*, void (%struct.frame*, i32, i32, i32, i32, i32)*, void (%struct.frame*)*, void (%struct.frame*)* }
%struct.it = type { i64, %struct.window*, %struct.frame*, i32, i64, i64, i64, i64, i8*, i64, i64, i8, %struct.Lisp_Char_Table*, i64*, i64*, i32, i32, i32, [16 x i64], %struct.display_pos, %struct.display_pos, i64, i64, [16 x i64], [16 x i64], i64, i64, [5 x %struct.iterator_stack_entry], i32, i64, i32, i32, i16, i32, i32, i32, i32, %struct.composition_it, i32, i32, i64, %struct.xwidget*, %struct.it_slice, i64, i16, i16, i64, i64, %struct.text_pos, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.glyph_row*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.text_pos, i32, i32, i32, i32, i56, i24, %struct.bidi_it, i32 }
%struct.window = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.glyph_matrix*, %struct.glyph_matrix*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cursor_pos, %struct.cursor_pos, %struct.cursor_pos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i64 }
%struct.cursor_pos = type { i32, i32, i32, i32 }
%struct.Lisp_Char_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, [64 x i64], [0 x i64] }
%struct.iterator_stack_entry = type { i64, i32, i64, i64, i64, i64, %struct.composition_it, i32, %union.anon.5, %struct.text_pos, %struct.display_pos, i64, i32, i32, i32, i8, i32, i16, i64, i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i64, %struct.it_slice, i64 }
%struct.composition_it = type { i64, i64, i32, i32, i64, i32, i8, i64, i32, i32, i32, i32, i32 }
%struct.xwidget = type opaque
%struct.it_slice = type { i64, i64, i64, i64 }
%struct.bidi_it = type { i64, i64, i32, i64, i64, i32, i32, i32, i8, i8, i64, i64, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, %struct.bidi_saved_info, i64, i32, i64, i32, i32, i32, i64, i32, i32, [128 x %struct.bidi_stack], %struct.bidi_string_data, %struct.window*, i32, i64, i8 }
%struct.bidi_saved_info = type { i64, i32, i32 }
%struct.bidi_stack = type { i64, i16, i8, i8 }
%struct.bidi_string_data = type { i64, i8*, i64, i64, i8 }
%struct.run = type { i32, i32, i32, i32, i32, i32 }
%struct.draw_fringe_bitmap_params = type { i32, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.face* }
%struct.glyph_string = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame*, %struct.window*, %struct._XDisplay*, i64, %struct.glyph_row*, i32, %struct.XChar2b*, i32, i32, %struct.face*, %struct.font*, %struct.composition*, i64, i32, i32, i8, %struct._XGC*, %struct.glyph*, %struct.image*, %struct.xwidget*, %struct.glyph_slice, %struct.glyph_string*, %struct.glyph_string*, [2 x %struct.XRectangle], i32, i32, i32, %struct.glyph_string*, %struct.glyph_string* }
%struct.XChar2b = type { i8, i8 }
%struct.composition = type opaque
%struct.input_event = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%union.output_data = type { %struct.tty_output* }
%struct.tty_output = type opaque
%struct.font_driver_list = type { i8, %struct.font_driver*, %struct.font_driver_list* }
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.XCharStruct = type { i16, i16, i16, i16, i16, i16 }
%struct.x_display_info = type { %struct.x_display_info*, %struct.terminal*, %struct._XDisplay*, i32, i64, i32, %struct.Screen*, double, double, %struct.Visual*, i64, i32, i32, i64, i64, i64, i64, i64, i64, void (%struct.frame*, i1)*, %struct._GdkCursor*, %struct._XrmHashBucketRec*, i32, i32, %struct._XGC*, %struct.Mouse_HLInfo, i32, i8*, i32, %struct.x_bitmap_record*, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.frame*, %struct.scroll_bar*, i64, i32, i32, %struct.XRectangle, i64, i64, %struct._XIM*, %struct.XIMStyles*, %struct.xim_inst_t*, %struct.color_name_cache_entry*, %struct.XColor*, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64, i64, i64, i64, i64*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.xcb_connection_t* }
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct._GdkCursor = type { i32, i32 }
%struct._XrmHashBucketRec = type opaque
%struct.Mouse_HLInfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.frame*, i32, i32, i8 }
%struct.x_bitmap_record = type { i64, i8, i64, i8*, i32, i32, i32, i32 }
%struct.scroll_bar = type { %struct.vectorlike_header, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct._XIM = type opaque
%struct.XIMStyles = type { i16, i64* }
%struct.xim_inst_t = type { %struct.x_display_info*, i8* }
%struct.color_name_cache_entry = type { %struct.color_name_cache_entry*, %struct.XColor, i8* }
%struct.XColor = type { i64, i16, i16, i16, i8, i8 }
%struct.xcb_connection_t = type opaque
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
%struct.Lisp_Cons = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.XFontStruct = type { %struct._XExtData*, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.XFontProp*, %struct.XCharStruct, %struct.XCharStruct, %struct.XCharStruct*, i32, i32 }
%struct.XFontProp = type { i64, i64 }
%struct.xfont_info = type { %struct.font, %struct._XDisplay*, %struct.XFontStruct*, i32 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Vector = type { %struct.vectorlike_header, [0 x i64] }

@xfont_driver = global { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* } { i64 0, i8 0, i64 (%struct.frame*)* @xfont_get_cache, i64 (%struct.frame*, i64)* @xfont_list, i64 (%struct.frame*, i64)* @xfont_match, i64 (%struct.frame*)* @xfont_list_family, void (i64)* null, i64 (%struct.frame*, i64, i32)* @xfont_open, void (%struct.font*)* @xfont_close, void (%struct.frame*, %struct.face*)* @xfont_prepare_face, void (%struct.frame*, %struct.face*)* null, i32 (i64, i32)* @xfont_has_char, i32 (%struct.font*, i32)* @xfont_encode_char, void (%struct.font*, i32*, i32, %struct.font_metrics*)* @xfont_text_extents, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)* @xfont_draw, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)* null, void (%struct.font*, %struct.font_bitmap*)* null, i32 (%struct.font*, i32, i32, i32*, i32*)* null, i64 (%struct.font*)* null, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)* null, i32 (%struct.frame*)* null, i32 (%struct.frame*)* null, i64 (i64)* null, i32 (%struct.frame*, %struct.font*)* @xfont_check, i32 (%struct.font*, i32, i32*)* null, void (i64, i64)* null, i1 (%struct.frame*, i64, i64)* null, i64 (%struct.font*)* null }, align 8
@xfont_scripts_cache = internal global i64 0, align 8
@xfont_scratch_props = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"iso10646-1\00", align 1
@Vface_alternative_font_registry_alist = external global i64, align 8
@globals = external global %struct.emacs_globals, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"xfont-list\00", align 1
@Vcharset_hash_table = external global i64, align 8
@charset_work = external global i64, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"kana\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"han\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hangul\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"xfont-match\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"-*-*-*-*-*-*-*-*-*-*-*-*-*-*\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  x:unknown registry\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"  x:unparse failed\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"  x:open failed\00", align 1
@charset_table = external global %struct.charset*, align 8
@charset_unicode = external global i32, align 4
@charset_jisx0208 = external global i32, align 4
@charset_ksc5601 = external global i32, align 4
@xfont_text_extents.pcm = internal global %struct.XCharStruct* null, align 8

; Function Attrs: nounwind uwtable
define internal i64 @xfont_get_cache(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %2, %struct.x_display_info** %dpyinfo, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %name_list_element = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 4
  %4 = load i64, i64* %name_list_element, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal i64 @xfont_list(%struct.frame* %f, i64 %spec) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %spec.addr = alloca i64, align 8
  %display = alloca %struct._XDisplay*, align 8
  %registry = alloca i64, align 8
  %list = alloca i64, align 8
  %val = alloca i64, align 8
  %extra = alloca i64, align 8
  %script = alloca i64, align 8
  %len = alloca i32, align 4
  %name = alloca [512 x i8], align 16
  %r = alloca i8*, align 8
  %alter = alloca i64, align 8
  %r70 = alloca i8*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %spec, i64* %spec.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %3, %struct._XDisplay** %display, align 8
  %4 = load i64, i64* %spec.addr, align 8
  %call = call i64 @AREF(i64 %4, i64 12)
  store i64 %call, i64* %extra, align 8
  %5 = load i64, i64* %extra, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 89)
  %6 = load i64, i64* %extra, align 8
  %call4 = call i64 @assq_no_quit(i64 %call3, i64 %6)
  store i64 %call4, i64* %val, align 8
  %7 = load i64, i64* %val, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %7, %call5
  br i1 %cmp6, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call10 = call i64 @builtin_lisp_symbol(i32 73)
  %8 = load i64, i64* %extra, align 8
  %call11 = call i64 @assq_no_quit(i64 %call10, i64 %8)
  store i64 %call11, i64* %val, align 8
  %9 = load i64, i64* %val, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %9, %call12
  br i1 %cmp13, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call16, i64* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %10 = load i64, i64* %spec.addr, align 8
  %call19 = call i64 @AREF(i64 %10, i64 4)
  store i64 %call19, i64* %registry, align 8
  %11 = load i64, i64* %spec.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call20 = call i64 @font_unparse_xlfd(i64 %11, i32 0, i8* %arraydecay, i32 512)
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, i32* %len, align 4
  %12 = load i32, i32* %len, align 4
  %cmp22 = icmp slt i32 %12, 0
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call25 = call i32 @xfont_encode_coding_xlfd(i8* %arraydecay24)
  store i32 %call25, i32* %len, align 4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.18
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %call31 = call i64 @builtin_lisp_symbol(i32 114)
  %13 = load i64, i64* %extra, align 8
  %call32 = call i64 @assq_no_quit(i64 %call31, i64 %13)
  store i64 %call32, i64* %val, align 8
  %14 = load i64, i64* %val, align 8
  %call33 = call i64 @CDR(i64 %14)
  store i64 %call33, i64* %script, align 8
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay34 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %16 = load i64, i64* %registry, align 8
  %17 = load i64, i64* %script, align 8
  %call35 = call i64 @xfont_list_pattern(%struct._XDisplay* %15, i8* %arraydecay34, i64 %16, i64 %17)
  store i64 %call35, i64* %list, align 8
  %18 = load i64, i64* %list, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp37 = icmp eq i64 %18, %call36
  br i1 %cmp37, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.30
  %19 = load i64, i64* %registry, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp40 = icmp eq i64 %19, %call39
  br i1 %cmp40, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %land.lhs.true
  %arraydecay43 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %20 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay43, i64 %idx.ext
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr, i64 -9
  store i8* %add.ptr44, i8** %r, align 8
  %21 = load i8*, i8** %r, align 8
  %arraydecay45 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 10
  %cmp46 = icmp slt i64 %add, 256
  br i1 %cmp46, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.then.42
  %22 = load i8*, i8** %r, align 8
  %call49 = call i8* @strcpy(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #3
  %23 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay50 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call51 = call i64 @builtin_lisp_symbol(i32 578)
  %24 = load i64, i64* %script, align 8
  %call52 = call i64 @xfont_list_pattern(%struct._XDisplay* %23, i8* %arraydecay50, i64 %call51, i64 %24)
  store i64 %call52, i64* %list, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.then.42
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true, %if.end.30
  %25 = load i64, i64* %list, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %25, %call55
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.111

land.lhs.true.58:                                 ; preds = %if.end.54
  %26 = load i64, i64* %registry, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %26, %call59
  br i1 %cmp60, label %if.end.111, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.58
  %27 = load i64, i64* %registry, align 8
  %call63 = call i64 @SYMBOL_NAME(i64 %27)
  %28 = load i64, i64* @Vface_alternative_font_registry_alist, align 8
  %call64 = call i64 @Fassoc(i64 %call63, i64 %28)
  store i64 %call64, i64* %alter, align 8
  %29 = load i64, i64* %alter, align 8
  %and65 = and i64 %29, 7
  %conv66 = trunc i64 %and65 to i32
  %cmp67 = icmp eq i32 %conv66, 3
  br i1 %cmp67, label %if.then.69, label %if.end.110

if.then.69:                                       ; preds = %if.then.62
  %arraydecay71 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %30 = load i32, i32* %len, align 4
  %idx.ext72 = sext i32 %30 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay71, i64 %idx.ext72
  %31 = load i64, i64* %registry, align 8
  %call74 = call i64 @SYMBOL_NAME(i64 %31)
  %call75 = call i64 @SBYTES(i64 %call74)
  %idx.neg = sub i64 0, %call75
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr73, i64 %idx.neg
  store i8* %add.ptr76, i8** %r70, align 8
  %32 = load i64, i64* %alter, align 8
  %sub = sub nsw i64 %32, 3
  %33 = inttoptr i64 %sub to i8*
  %34 = bitcast i8* %33 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %34, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %35 = load i64, i64* %cdr, align 8
  store i64 %35, i64* %alter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.69
  %36 = load i64, i64* %alter, align 8
  %and77 = and i64 %36, 7
  %conv78 = trunc i64 %and77 to i32
  %cmp79 = icmp eq i32 %conv78, 3
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i64, i64* %alter, align 8
  %sub81 = sub nsw i64 %37, 3
  %38 = inttoptr i64 %sub81 to i8*
  %39 = bitcast i8* %38 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %39, i32 0, i32 0
  %40 = load i64, i64* %car, align 8
  %call82 = call zeroext i1 @STRINGP(i64 %40)
  br i1 %call82, label %land.lhs.true.84, label %if.end.106

land.lhs.true.84:                                 ; preds = %for.body
  %41 = load i8*, i8** %r70, align 8
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %sub.ptr.lhs.cast86 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast87 = ptrtoint i8* %arraydecay85 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %42 = load i64, i64* %alter, align 8
  %sub89 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub89 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %car90 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 0
  %45 = load i64, i64* %car90, align 8
  %call91 = call i64 @SBYTES(i64 %45)
  %add92 = add nsw i64 %sub.ptr.sub88, %call91
  %cmp93 = icmp slt i64 %add92, 256
  br i1 %cmp93, label %if.then.95, label %if.end.106

if.then.95:                                       ; preds = %land.lhs.true.84
  %46 = load i8*, i8** %r70, align 8
  %47 = load i64, i64* %alter, align 8
  %sub96 = sub nsw i64 %47, 3
  %48 = inttoptr i64 %sub96 to i8*
  %49 = bitcast i8* %48 to %struct.Lisp_Cons*
  %car97 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %49, i32 0, i32 0
  %50 = load i64, i64* %car97, align 8
  %call98 = call i8* @lispstpcpy(i8* %46, i64 %50)
  %51 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay99 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %52 = load i64, i64* %registry, align 8
  %53 = load i64, i64* %script, align 8
  %call100 = call i64 @xfont_list_pattern(%struct._XDisplay* %51, i8* %arraydecay99, i64 %52, i64 %53)
  store i64 %call100, i64* %list, align 8
  %54 = load i64, i64* %list, align 8
  %call101 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp102 = icmp eq i64 %54, %call101
  br i1 %cmp102, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %if.then.95
  br label %for.end

if.end.105:                                       ; preds = %if.then.95
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %land.lhs.true.84, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %55 = load i64, i64* %alter, align 8
  %sub107 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub107 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %u108 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 1
  %cdr109 = bitcast %union.anon.10* %u108 to i64*
  %58 = load i64, i64* %cdr109, align 8
  store i64 %58, i64* %alter, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.104, %for.cond
  br label %if.end.110

if.end.110:                                       ; preds = %for.end, %if.then.62
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %land.lhs.true.58, %if.end.54
  %59 = load i64, i64* %list, align 8
  %call112 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp113 = icmp eq i64 %59, %call112
  br i1 %cmp113, label %if.then.115, label %if.end.156

if.then.115:                                      ; preds = %if.end.111
  %call116 = call i64 @builtin_lisp_symbol(i32 86)
  %60 = load i64, i64* %spec.addr, align 8
  %call117 = call i64 @AREF(i64 %60, i64 12)
  %call118 = call i64 @assq_no_quit(i64 %call116, i64 %call117)
  store i64 %call118, i64* %val, align 8
  %61 = load i64, i64* %val, align 8
  %and119 = and i64 %61, 7
  %conv120 = trunc i64 %and119 to i32
  %cmp121 = icmp eq i32 %conv120, 3
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.155

land.lhs.true.123:                                ; preds = %if.then.115
  %62 = load i64, i64* %val, align 8
  %sub124 = sub nsw i64 %62, 3
  %63 = inttoptr i64 %sub124 to i8*
  %64 = bitcast i8* %63 to %struct.Lisp_Cons*
  %u125 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %64, i32 0, i32 1
  %cdr126 = bitcast %union.anon.10* %u125 to i64*
  %65 = load i64, i64* %cdr126, align 8
  %call127 = call zeroext i1 @STRINGP(i64 %65)
  br i1 %call127, label %land.lhs.true.129, label %if.end.155

land.lhs.true.129:                                ; preds = %land.lhs.true.123
  %66 = load i64, i64* %val, align 8
  %sub130 = sub nsw i64 %66, 3
  %67 = inttoptr i64 %sub130 to i8*
  %68 = bitcast i8* %67 to %struct.Lisp_Cons*
  %u131 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %68, i32 0, i32 1
  %cdr132 = bitcast %union.anon.10* %u131 to i64*
  %69 = load i64, i64* %cdr132, align 8
  %call133 = call i64 @SBYTES(i64 %69)
  %cmp134 = icmp slt i64 %call133, 512
  br i1 %cmp134, label %if.then.136, label %if.end.155

if.then.136:                                      ; preds = %land.lhs.true.129
  %70 = bitcast [512 x i8]* %name to i8*
  %71 = load i64, i64* %val, align 8
  %sub137 = sub nsw i64 %71, 3
  %72 = inttoptr i64 %sub137 to i8*
  %73 = bitcast i8* %72 to %struct.Lisp_Cons*
  %u138 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %73, i32 0, i32 1
  %cdr139 = bitcast %union.anon.10* %u138 to i64*
  %74 = load i64, i64* %cdr139, align 8
  %call140 = call i8* @SDATA(i64 %74)
  %75 = load i64, i64* %val, align 8
  %sub141 = sub nsw i64 %75, 3
  %76 = inttoptr i64 %sub141 to i8*
  %77 = bitcast i8* %76 to %struct.Lisp_Cons*
  %u142 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %77, i32 0, i32 1
  %cdr143 = bitcast %union.anon.10* %u142 to i64*
  %78 = load i64, i64* %cdr143, align 8
  %call144 = call i64 @SBYTES(i64 %78)
  %add145 = add nsw i64 %call144, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %call140, i64 %add145, i32 1, i1 false)
  %arraydecay146 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call147 = call i32 @xfont_encode_coding_xlfd(i8* %arraydecay146)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.then.136
  %call151 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call151, i64* %retval
  br label %return

if.end.152:                                       ; preds = %if.then.136
  %79 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay153 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %80 = load i64, i64* %registry, align 8
  %81 = load i64, i64* %script, align 8
  %call154 = call i64 @xfont_list_pattern(%struct._XDisplay* %79, i8* %arraydecay153, i64 %80, i64 %81)
  store i64 %call154, i64* %list, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.152, %land.lhs.true.129, %land.lhs.true.123, %if.then.115
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.111
  %82 = load i64, i64* %list, align 8
  store i64 %82, i64* %retval
  br label %return

return:                                           ; preds = %if.end.156, %if.then.150, %if.then.28, %if.then.15, %if.then.8
  %83 = load i64, i64* %retval
  ret i64 %83
}

; Function Attrs: nounwind uwtable
define internal i64 @xfont_match(%struct.frame* %f, i64 %spec) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %spec.addr = alloca i64, align 8
  %display = alloca %struct._XDisplay*, align 8
  %extra = alloca i64, align 8
  %val = alloca i64, align 8
  %entity = alloca i64, align 8
  %name = alloca [512 x i8], align 16
  %xfont = alloca %struct.XFontStruct*, align 8
  %value = alloca i64, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %spec, i64* %spec.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %3, %struct._XDisplay** %display, align 8
  %4 = load i64, i64* %spec.addr, align 8
  %call = call i64 @AREF(i64 %4, i64 12)
  store i64 %call, i64* %extra, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 86)
  %5 = load i64, i64* %extra, align 8
  %call3 = call i64 @assq_no_quit(i64 %call2, i64 %5)
  store i64 %call3, i64* %val, align 8
  %6 = load i64, i64* %val, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  %call5 = call zeroext i1 @STRINGP(i64 %10)
  br i1 %call5, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i64, i64* %spec.addr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call6 = call i64 @font_unparse_xlfd(i64 %11, i32 0, i8* %arraydecay, i32 512)
  %cmp7 = icmp slt i64 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i64, i64* %val, align 8
  %sub11 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub11 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u12 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr13 = bitcast %union.anon.10* %u12 to i64*
  %15 = load i64, i64* %cdr13, align 8
  %call14 = call i64 @SBYTES(i64 %15)
  %cmp15 = icmp slt i64 %call14, 512
  br i1 %cmp15, label %if.then.17, label %if.else.26

if.then.17:                                       ; preds = %if.else
  %16 = bitcast [512 x i8]* %name to i8*
  %17 = load i64, i64* %val, align 8
  %sub18 = sub nsw i64 %17, 3
  %18 = inttoptr i64 %sub18 to i8*
  %19 = bitcast i8* %18 to %struct.Lisp_Cons*
  %u19 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %19, i32 0, i32 1
  %cdr20 = bitcast %union.anon.10* %u19 to i64*
  %20 = load i64, i64* %cdr20, align 8
  %call21 = call i8* @SDATA(i64 %20)
  %21 = load i64, i64* %val, align 8
  %sub22 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub22 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u23 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr24 = bitcast %union.anon.10* %u23 to i64*
  %24 = load i64, i64* %cdr24, align 8
  %call25 = call i64 @SBYTES(i64 %24)
  %add = add nsw i64 %call25, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %call21, i64 %add, i32 1, i1 false)
  br label %if.end.28

if.else.26:                                       ; preds = %if.else
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call27, i64* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.17
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  %arraydecay30 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call31 = call i32 @xfont_encode_coding_xlfd(i8* %arraydecay30)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.29
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.29
  call void @block_input()
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call37, i64* %entity, align 8
  %25 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call39 = call %struct.XFontStruct* @XLoadQueryFont(%struct._XDisplay* %25, i8* %arraydecay38)
  store %struct.XFontStruct* %call39, %struct.XFontStruct** %xfont, align 8
  %26 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %tobool = icmp ne %struct.XFontStruct* %26, null
  br i1 %tobool, label %if.then.40, label %if.end.62

if.then.40:                                       ; preds = %if.end.36
  %27 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call41 = call i32 @XGetFontProperty(%struct.XFontStruct* %27, i64 18, i64* %value)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.60

if.then.43:                                       ; preds = %if.then.40
  %28 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %29 = load i64, i64* %value, align 8
  %call44 = call i8* @XGetAtomName(%struct._XDisplay* %28, i64 %29)
  store i8* %call44, i8** %s, align 8
  %30 = load i8*, i8** %s, align 8
  %31 = load i8, i8* %30, align 1
  %tobool45 = icmp ne i8 %31, 0
  br i1 %tobool45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %if.then.43
  %call47 = call i64 @font_make_entity()
  store i64 %call47, i64* %entity, align 8
  %32 = load i64, i64* %entity, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 1045)
  call void @ASET(i64 %32, i64 0, i64 %call48)
  %33 = load i8*, i8** %s, align 8
  %arraydecay49 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call50 = call i64 @xfont_decode_coding_xlfd(i8* %33, i32 -1, i8* %arraydecay49)
  store i64 %call50, i64* %len, align 8
  %arraydecay51 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %34 = load i64, i64* %len, align 8
  %35 = load i64, i64* %entity, align 8
  %call52 = call i32 @font_parse_xlfd(i8* %arraydecay51, i64 %34, i64 %35)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.46
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call56, i64* %entity, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.46
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.43
  %36 = load i8*, i8** %s, align 8
  %call59 = call i32 @XFree(i8* %36)
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.58, %if.then.40
  %37 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %38 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call61 = call i32 @XFreeFont(%struct._XDisplay* %37, %struct.XFontStruct* %38)
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.60, %if.end.36
  call void @unblock_input()
  br label %do.body

do.body:                                          ; preds = %if.end.62
  %39 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call63 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp64 = icmp eq i64 %39, %call63
  br i1 %cmp64, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %do.body
  %40 = load i64, i64* %spec.addr, align 8
  %41 = load i64, i64* %entity, align 8
  call void @font_add_log(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 %40, i64 %41)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.67
  %42 = load i64, i64* %entity, align 8
  store i64 %42, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.34, %if.else.26, %if.then.9
  %43 = load i64, i64* %retval
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define internal i64 @xfont_list_family(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %names = alloca i8**, align 8
  %num_fonts = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca i64, align 8
  %last_family = alloca i8*, align 8
  %last_len = alloca i32, align 4
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %family = alloca i64, align 8
  %decoded_len = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %2, %struct.x_display_info** %dpyinfo, align 8
  call void @block_input()
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 2
  %4 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_catch_errors(%struct._XDisplay* %4)
  %5 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %5, i32 0, i32 2
  %6 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  %call = call i8** @XListFonts(%struct._XDisplay* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 32768, i32* %num_fonts)
  store i8** %call, i8*** %names, align 8
  %7 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display2 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %7, i32 0, i32 2
  %8 = load %struct._XDisplay*, %struct._XDisplay** %display2, align 8
  %call3 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %8)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display4 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %9, i32 0, i32 2
  %10 = load %struct._XDisplay*, %struct._XDisplay** %display4, align 8
  call void @x_clear_errors(%struct._XDisplay* %10)
  store i32 0, i32* %num_fonts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %list, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %last_len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %num_fonts, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8
  store i8* %15, i8** %p0, align 8
  %16 = load i8*, i8** %p0, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p0, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %17 = load i8*, i8** %p0, align 8
  %18 = load i8, i8* %17, align 1
  %conv = sext i8 %18 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load i8*, i8** %p0, align 8
  %20 = load i8, i8* %19, align 1
  %conv6 = sext i8 %20 to i32
  %cmp7 = icmp ne i32 %conv6, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load i8*, i8** %p0, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr9, i8** %p0, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load i8*, i8** %p0, align 8
  %24 = load i8, i8* %23, align 1
  %tobool10 = icmp ne i8 %24, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %while.end
  br label %for.inc

if.end.12:                                        ; preds = %while.end
  %25 = load i8*, i8** %p0, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr13, i8** %p0, align 8
  store i8* %incdec.ptr13, i8** %p1, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.22, %if.end.12
  %26 = load i8*, i8** %p1, align 8
  %27 = load i8, i8* %26, align 1
  %conv15 = sext i8 %27 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %land.rhs.17, label %land.end.21

land.rhs.17:                                      ; preds = %while.cond.14
  %28 = load i8*, i8** %p1, align 8
  %29 = load i8, i8* %28, align 1
  %conv18 = sext i8 %29 to i32
  %cmp19 = icmp ne i32 %conv18, 45
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.17, %while.cond.14
  %30 = phi i1 [ false, %while.cond.14 ], [ %cmp19, %land.rhs.17 ]
  br i1 %30, label %while.body.22, label %while.end.24

while.body.22:                                    ; preds = %land.end.21
  %31 = load i8*, i8** %p1, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr23, i8** %p1, align 8
  br label %while.cond.14

while.end.24:                                     ; preds = %land.end.21
  %32 = load i8*, i8** %p1, align 8
  %33 = load i8, i8* %32, align 1
  %tobool25 = icmp ne i8 %33, 0
  br i1 %tobool25, label %lor.lhs.false, label %if.then.28

lor.lhs.false:                                    ; preds = %while.end.24
  %34 = load i8*, i8** %p1, align 8
  %35 = load i8*, i8** %p0, align 8
  %cmp26 = icmp eq i8* %34, %35
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %while.end.24
  br label %for.inc

if.end.29:                                        ; preds = %lor.lhs.false
  %36 = load i32, i32* %last_len, align 4
  %conv30 = sext i32 %36 to i64
  %37 = load i8*, i8** %p1, align 8
  %38 = load i8*, i8** %p0, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp31 = icmp eq i64 %conv30, %sub.ptr.sub
  br i1 %cmp31, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end.29
  %39 = load i8*, i8** %last_family, align 8
  %40 = load i8*, i8** %p0, align 8
  %41 = load i32, i32* %last_len, align 4
  %conv33 = sext i32 %41 to i64
  %call34 = call i32 @memcmp(i8* %39, i8* %40, i64 %conv33) #5
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.38:                                        ; preds = %land.lhs.true, %if.end.29
  %42 = load i8*, i8** %p1, align 8
  %43 = load i8*, i8** %p0, align 8
  %sub.ptr.lhs.cast39 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %43 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %conv42 = trunc i64 %sub.ptr.sub41 to i32
  store i32 %conv42, i32* %last_len, align 4
  %44 = load i8*, i8** %p0, align 8
  store i8* %44, i8** %last_family, align 8
  %45 = load i8*, i8** %p0, align 8
  %46 = load i32, i32* %last_len, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call43 = call i64 @xfont_decode_coding_xlfd(i8* %45, i32 %46, i8* %arraydecay)
  %conv44 = trunc i64 %call43 to i32
  store i32 %conv44, i32* %decoded_len, align 4
  %47 = load i8*, i8** %p0, align 8
  %48 = load i32, i32* %decoded_len, align 4
  %conv45 = sext i32 %48 to i64
  %call46 = call i64 @font_intern_prop(i8* %47, i64 %conv45, i1 zeroext true)
  store i64 %call46, i64* %family, align 8
  %49 = load i64, i64* %family, align 8
  %50 = load i64, i64* %list, align 8
  %call47 = call i64 @assq_no_quit(i64 %49, i64 %50)
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %call47, %call48
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.38
  %51 = load i64, i64* %family, align 8
  %52 = load i64, i64* %list, align 8
  %call52 = call i64 @Fcons(i64 %51, i64 %52)
  store i64 %call52, i64* %list, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.53, %if.then.37, %if.then.28, %if.then.11
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i8**, i8*** %names, align 8
  %call54 = call i32 @XFreeFontNames(i8** %54)
  call void @x_uncatch_errors()
  call void @unblock_input()
  %55 = load i64, i64* %list, align 8
  ret i64 %55
}

; Function Attrs: nounwind uwtable
define internal i64 @xfont_open(%struct.frame* %f, i64 %entity, i32 %pixel_size) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %entity.addr = alloca i64, align 8
  %pixel_size.addr = alloca i32, align 4
  %dpyinfo = alloca %struct.x_display_info*, align 8
  %display = alloca %struct._XDisplay*, align 8
  %name = alloca [512 x i8], align 16
  %len = alloca i32, align 4
  %value = alloca i64, align 8
  %registry = alloca i64, align 8
  %encoding = alloca %struct.charset*, align 8
  %repertory = alloca %struct.charset*, align 8
  %font_object = alloca i64, align 8
  %fullname = alloca i64, align 8
  %font = alloca %struct.font*, align 8
  %xfont = alloca %struct.XFontStruct*, align 8
  %temp = alloca i64, align 8
  %p0 = alloca i8*, align 8
  %p = alloca i8*, align 8
  %dashes = alloca i32, align 4
  %buf = alloca [512 x i8], align 16
  %pcm = alloca %struct.XCharStruct*, align 8
  %char2b = alloca %struct.XChar2b, align 1
  %val = alloca i64, align 8
  %width210 = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %entity, i64* %entity.addr, align 8
  store i32 %pixel_size, i32* %pixel_size.addr, align 4
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  store %struct.x_display_info* %2, %struct.x_display_info** %dpyinfo, align 8
  %3 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %display1 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %3, i32 0, i32 2
  %4 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  store %struct._XDisplay* %4, %struct._XDisplay** %display, align 8
  %5 = load i64, i64* %entity.addr, align 8
  %call = call i64 @AREF(i64 %5, i64 4)
  store i64 %call, i64* %registry, align 8
  %6 = load i64, i64* %registry, align 8
  %call2 = call i32 @font_registry_charsets(i64 %6, %struct.charset** %encoding, %struct.charset** %repertory)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp4 = icmp eq i64 %7, %call3
  br i1 %cmp4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %do.body
  %8 = load i64, i64* %registry, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_add_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i64 %8, i64 %call6)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %retval
  br label %return

if.end.8:                                         ; preds = %entry
  %9 = load i64, i64* %entity.addr, align 8
  %call9 = call i64 @AREF(i64 %9, i64 8)
  %shr = ashr i64 %call9, 2
  %cmp10 = icmp ne i64 %shr, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.8
  %10 = load i64, i64* %entity.addr, align 8
  %call12 = call i64 @AREF(i64 %10, i64 8)
  %shr13 = ashr i64 %call12, 2
  %conv = trunc i64 %shr13 to i32
  store i32 %conv, i32* %pixel_size.addr, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end.8
  %11 = load i32, i32* %pixel_size.addr, align 4
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.else
  %12 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data17 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 62
  %x18 = bitcast %union.output_data* %output_data17 to %struct.x_output**
  %13 = load %struct.x_output*, %struct.x_output** %x18, align 8
  %font19 = getelementptr inbounds %struct.x_output, %struct.x_output* %13, i32 0, i32 25
  %14 = load %struct.font*, %struct.font** %font19, align 8
  %tobool = icmp ne %struct.font* %14, null
  br i1 %tobool, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %if.then.16
  %15 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data21 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 62
  %x22 = bitcast %union.output_data* %output_data21 to %struct.x_output**
  %16 = load %struct.x_output*, %struct.x_output** %x22, align 8
  %font23 = getelementptr inbounds %struct.x_output, %struct.x_output* %16, i32 0, i32 25
  %17 = load %struct.font*, %struct.font** %font23, align 8
  %pixel_size24 = getelementptr inbounds %struct.font, %struct.font* %17, i32 0, i32 4
  %18 = load i32, i32* %pixel_size24, align 4
  store i32 %18, i32* %pixel_size.addr, align 4
  br label %if.end.26

if.else.25:                                       ; preds = %if.then.16
  store i32 14, i32* %pixel_size.addr, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.11
  %19 = load i64, i64* %entity.addr, align 8
  %20 = load i32, i32* %pixel_size.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call29 = call i64 @font_unparse_xlfd(i64 %19, i32 %20, i8* %arraydecay, i32 512)
  %conv30 = trunc i64 %call29 to i32
  store i32 %conv30, i32* %len, align 4
  %21 = load i32, i32* %len, align 4
  %cmp31 = icmp sle i32 %21, 0
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %arraydecay33 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call34 = call i32 @xfont_encode_coding_xlfd(i8* %arraydecay33)
  store i32 %call34, i32* %len, align 4
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.28
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp40 = icmp eq i64 %22, %call39
  br i1 %cmp40, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %do.body.38
  %23 = load i64, i64* %entity.addr, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_add_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i64 %23, i64 %call43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %do.body.38
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call46, i64* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false
  call void @block_input()
  %24 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_catch_errors(%struct._XDisplay* %24)
  %25 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay48 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call49 = call %struct.XFontStruct* @XLoadQueryFont(%struct._XDisplay* %25, i8* %arraydecay48)
  store %struct.XFontStruct* %call49, %struct.XFontStruct** %xfont, align 8
  %26 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call50 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %26)
  br i1 %call50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.end.47
  %27 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_clear_errors(%struct._XDisplay* %27)
  store %struct.XFontStruct* null, %struct.XFontStruct** %xfont, align 8
  br label %if.end.84

if.else.52:                                       ; preds = %if.end.47
  %28 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %tobool53 = icmp ne %struct.XFontStruct* %28, null
  br i1 %tobool53, label %if.end.83, label %if.then.54

if.then.54:                                       ; preds = %if.else.52
  %29 = load i64, i64* %entity.addr, align 8
  %call55 = call i64 @copy_font_spec(i64 %29)
  store i64 %call55, i64* %temp, align 8
  %30 = load i64, i64* %temp, align 8
  %call56 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %30, i64 9, i64 %call56)
  %31 = load i64, i64* %temp, align 8
  %32 = load i32, i32* %pixel_size.addr, align 4
  %arraydecay57 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call58 = call i64 @font_unparse_xlfd(i64 %31, i32 %32, i8* %arraydecay57, i32 512)
  %conv59 = trunc i64 %call58 to i32
  store i32 %conv59, i32* %len, align 4
  %33 = load i32, i32* %len, align 4
  %cmp60 = icmp sle i32 %33, 0
  br i1 %cmp60, label %if.then.67, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.then.54
  %arraydecay63 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call64 = call i32 @xfont_encode_coding_xlfd(i8* %arraydecay63)
  store i32 %call64, i32* %len, align 4
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.77

if.then.67:                                       ; preds = %lor.lhs.false.62, %if.then.54
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %34 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call69 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp70 = icmp eq i64 %34, %call69
  br i1 %cmp70, label %if.end.74, label %if.then.72

if.then.72:                                       ; preds = %do.body.68
  %35 = load i64, i64* %temp, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_add_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i64 %35, i64 %call73)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %do.body.68
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call76, i64* %retval
  br label %return

if.end.77:                                        ; preds = %lor.lhs.false.62
  %36 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %arraydecay78 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call79 = call %struct.XFontStruct* @XLoadQueryFont(%struct._XDisplay* %36, i8* %arraydecay78)
  store %struct.XFontStruct* %call79, %struct.XFontStruct** %xfont, align 8
  %37 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call80 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %37)
  br i1 %call80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.77
  %38 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  call void @x_clear_errors(%struct._XDisplay* %38)
  store %struct.XFontStruct* null, %struct.XFontStruct** %xfont, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.end.77
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.else.52
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.51
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call85, i64* %fullname, align 8
  %39 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %tobool86 = icmp ne %struct.XFontStruct* %39, null
  br i1 %tobool86, label %land.lhs.true, label %if.end.113

land.lhs.true:                                    ; preds = %if.end.84
  %40 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call87 = call i32 @XGetFontProperty(%struct.XFontStruct* %40, i64 18, i64* %value)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.113

if.then.89:                                       ; preds = %land.lhs.true
  store i32 0, i32* %dashes, align 4
  %41 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data90 = getelementptr inbounds %struct.frame, %struct.frame* %41, i32 0, i32 62
  %x91 = bitcast %union.output_data* %output_data90 to %struct.x_output**
  %42 = load %struct.x_output*, %struct.x_output** %x91, align 8
  %display_info92 = getelementptr inbounds %struct.x_output, %struct.x_output* %42, i32 0, i32 44
  %43 = load %struct.x_display_info*, %struct.x_display_info** %display_info92, align 8
  %display93 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %43, i32 0, i32 2
  %44 = load %struct._XDisplay*, %struct._XDisplay** %display93, align 8
  %45 = load i64, i64* %value, align 8
  %call94 = call i8* @XGetAtomName(%struct._XDisplay* %44, i64 %45)
  store i8* %call94, i8** %p, align 8
  store i8* %call94, i8** %p0, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.100, %if.then.89
  %46 = load i8*, i8** %p, align 8
  %47 = load i8, i8* %46, align 1
  %tobool95 = icmp ne i8 %47, 0
  br i1 %tobool95, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load i8*, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %conv96 = sext i8 %49 to i32
  %cmp97 = icmp eq i32 %conv96, 45
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %while.body
  %50 = load i32, i32* %dashes, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %dashes, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %while.body
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load i32, i32* %dashes, align 4
  %cmp101 = icmp sge i32 %52, 13
  br i1 %cmp101, label %if.then.103, label %if.end.111

if.then.103:                                      ; preds = %while.end
  %53 = load i8*, i8** %p0, align 8
  %arraydecay104 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call105 = call i64 @xfont_decode_coding_xlfd(i8* %53, i32 -1, i8* %arraydecay104)
  %conv106 = trunc i64 %call105 to i32
  store i32 %conv106, i32* %len, align 4
  %arraydecay107 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %54 = load i32, i32* %len, align 4
  %conv108 = sext i32 %54 to i64
  %call109 = call i64 @make_string(i8* %arraydecay107, i64 %conv108)
  %call110 = call i64 @Fdowncase(i64 %call109)
  store i64 %call110, i64* %fullname, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.103, %while.end
  %55 = load i8*, i8** %p0, align 8
  %call112 = call i32 @XFree(i8* %55)
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.111, %land.lhs.true, %if.end.84
  call void @x_uncatch_errors()
  call void @unblock_input()
  %56 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %tobool114 = icmp ne %struct.XFontStruct* %56, null
  br i1 %tobool114, label %if.end.127, label %if.then.115

if.then.115:                                      ; preds = %if.end.113
  br label %do.body.116

do.body.116:                                      ; preds = %if.then.115
  %57 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call117 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp118 = icmp eq i64 %57, %call117
  br i1 %cmp118, label %if.end.124, label %if.then.120

if.then.120:                                      ; preds = %do.body.116
  %arraydecay121 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %call122 = call i64 @build_string(i8* %arraydecay121)
  %call123 = call i64 @builtin_lisp_symbol(i32 0)
  call void @font_add_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i64 %call122, i64 %call123)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.120, %do.body.116
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  %call126 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call126, i64* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.113
  %58 = load i64, i64* %entity.addr, align 8
  %59 = load i32, i32* %pixel_size.addr, align 4
  %call128 = call i64 @font_make_object(i32 29, i64 %58, i32 %59)
  store i64 %call128, i64* %font_object, align 8
  %60 = load i64, i64* %font_object, align 8
  %call129 = call i64 @builtin_lisp_symbol(i32 1045)
  call void @ASET(i64 %60, i64 0, i64 %call129)
  %61 = load i64, i64* %fullname, align 8
  %call130 = call zeroext i1 @STRINGP(i64 %61)
  br i1 %call130, label %if.then.131, label %if.else.135

if.then.131:                                      ; preds = %if.end.127
  %62 = load i64, i64* %fullname, align 8
  %call132 = call i8* @SSDATA(i64 %62)
  %63 = load i64, i64* %fullname, align 8
  %call133 = call i64 @SBYTES(i64 %63)
  %64 = load i64, i64* %font_object, align 8
  %call134 = call i32 @font_parse_xlfd(i8* %call132, i64 %call133, i64 %64)
  %65 = load i64, i64* %font_object, align 8
  %66 = load i64, i64* %fullname, align 8
  call void @ASET(i64 %65, i64 14, i64 %66)
  br label %if.end.143

if.else.135:                                      ; preds = %if.end.127
  %arraydecay136 = getelementptr inbounds [512 x i8], [512 x i8]* %name, i32 0, i32 0
  %arraydecay137 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call138 = call i64 @xfont_decode_coding_xlfd(i8* %arraydecay136, i32 -1, i8* %arraydecay137)
  %conv139 = trunc i64 %call138 to i32
  store i32 %conv139, i32* %len, align 4
  %67 = load i64, i64* %font_object, align 8
  %arraydecay140 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %68 = load i32, i32* %len, align 4
  %conv141 = sext i32 %68 to i64
  %call142 = call i64 @make_string(i8* %arraydecay140, i64 %conv141)
  call void @ASET(i64 %67, i64 14, i64 %call142)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.135, %if.then.131
  %69 = load i64, i64* %font_object, align 8
  %70 = load i64, i64* %fullname, align 8
  call void @ASET(i64 %69, i64 15, i64 %70)
  %71 = load i64, i64* %font_object, align 8
  %call144 = call %struct.font* @XFONT_OBJECT(i64 %71)
  store %struct.font* %call144, %struct.font** %font, align 8
  %72 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %73 = load %struct.font*, %struct.font** %font, align 8
  %74 = bitcast %struct.font* %73 to %struct.xfont_info*
  %xfont145 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %74, i32 0, i32 2
  store %struct.XFontStruct* %72, %struct.XFontStruct** %xfont145, align 8
  %75 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data146 = getelementptr inbounds %struct.frame, %struct.frame* %75, i32 0, i32 62
  %x147 = bitcast %union.output_data* %output_data146 to %struct.x_output**
  %76 = load %struct.x_output*, %struct.x_output** %x147, align 8
  %display_info148 = getelementptr inbounds %struct.x_output, %struct.x_output* %76, i32 0, i32 44
  %77 = load %struct.x_display_info*, %struct.x_display_info** %display_info148, align 8
  %display149 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %77, i32 0, i32 2
  %78 = load %struct._XDisplay*, %struct._XDisplay** %display149, align 8
  %79 = load %struct.font*, %struct.font** %font, align 8
  %80 = bitcast %struct.font* %79 to %struct.xfont_info*
  %display150 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %80, i32 0, i32 1
  store %struct._XDisplay* %78, %struct._XDisplay** %display150, align 8
  %81 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data151 = getelementptr inbounds %struct.frame, %struct.frame* %81, i32 0, i32 62
  %x152 = bitcast %union.output_data* %output_data151 to %struct.x_output**
  %82 = load %struct.x_output*, %struct.x_output** %x152, align 8
  %display_info153 = getelementptr inbounds %struct.x_output, %struct.x_output* %82, i32 0, i32 44
  %83 = load %struct.x_display_info*, %struct.x_display_info** %display_info153, align 8
  %x_id = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %83, i32 0, i32 26
  %84 = load i32, i32* %x_id, align 4
  %85 = load %struct.font*, %struct.font** %font, align 8
  %86 = bitcast %struct.font* %85 to %struct.xfont_info*
  %x_display_id = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %86, i32 0, i32 3
  store i32 %84, i32* %x_display_id, align 4
  %87 = load i32, i32* %pixel_size.addr, align 4
  %88 = load %struct.font*, %struct.font** %font, align 8
  %pixel_size154 = getelementptr inbounds %struct.font, %struct.font* %88, i32 0, i32 4
  store i32 %87, i32* %pixel_size154, align 4
  %89 = load %struct.font*, %struct.font** %font, align 8
  %driver = getelementptr inbounds %struct.font, %struct.font* %89, i32 0, i32 18
  store %struct.font_driver* bitcast ({ i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }* @xfont_driver to %struct.font_driver*), %struct.font_driver** %driver, align 8
  %90 = load %struct.charset*, %struct.charset** %encoding, align 8
  %id = getelementptr inbounds %struct.charset, %struct.charset* %90, i32 0, i32 0
  %91 = load i32, i32* %id, align 4
  %92 = load %struct.font*, %struct.font** %font, align 8
  %encoding_charset = getelementptr inbounds %struct.font, %struct.font* %92, i32 0, i32 16
  store i32 %91, i32* %encoding_charset, align 4
  %93 = load %struct.charset*, %struct.charset** %repertory, align 8
  %tobool155 = icmp ne %struct.charset* %93, null
  br i1 %tobool155, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.143
  %94 = load %struct.charset*, %struct.charset** %repertory, align 8
  %id156 = getelementptr inbounds %struct.charset, %struct.charset* %94, i32 0, i32 0
  %95 = load i32, i32* %id156, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.143
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %95, %cond.true ], [ -1, %cond.false ]
  %96 = load %struct.font*, %struct.font** %font, align 8
  %repertory_charset = getelementptr inbounds %struct.font, %struct.font* %96, i32 0, i32 17
  store i32 %cond, i32* %repertory_charset, align 4
  %97 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %ascent = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %97, i32 0, i32 14
  %98 = load i32, i32* %ascent, align 4
  %99 = load %struct.font*, %struct.font** %font, align 8
  %ascent157 = getelementptr inbounds %struct.font, %struct.font* %99, i32 0, i32 8
  store i32 %98, i32* %ascent157, align 4
  %100 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %descent = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %100, i32 0, i32 15
  %101 = load i32, i32* %descent, align 4
  %102 = load %struct.font*, %struct.font** %font, align 8
  %descent158 = getelementptr inbounds %struct.font, %struct.font* %102, i32 0, i32 9
  store i32 %101, i32* %descent158, align 4
  %103 = load %struct.font*, %struct.font** %font, align 8
  %ascent159 = getelementptr inbounds %struct.font, %struct.font* %103, i32 0, i32 8
  %104 = load i32, i32* %ascent159, align 4
  %105 = load %struct.font*, %struct.font** %font, align 8
  %descent160 = getelementptr inbounds %struct.font, %struct.font* %105, i32 0, i32 9
  %106 = load i32, i32* %descent160, align 4
  %add = add nsw i32 %104, %106
  %107 = load %struct.font*, %struct.font** %font, align 8
  %height = getelementptr inbounds %struct.font, %struct.font* %107, i32 0, i32 5
  store i32 %add, i32* %height, align 4
  %108 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %min_bounds = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %108, i32 0, i32 11
  %width = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %min_bounds, i32 0, i32 2
  %109 = load i16, i16* %width, align 2
  %conv161 = sext i16 %109 to i32
  %110 = load %struct.font*, %struct.font** %font, align 8
  %min_width = getelementptr inbounds %struct.font, %struct.font* %110, i32 0, i32 2
  store i32 %conv161, i32* %min_width, align 4
  %111 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %max_bounds = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %111, i32 0, i32 12
  %width162 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %max_bounds, i32 0, i32 2
  %112 = load i16, i16* %width162, align 2
  %conv163 = sext i16 %112 to i32
  %113 = load %struct.font*, %struct.font** %font, align 8
  %max_width = getelementptr inbounds %struct.font, %struct.font* %113, i32 0, i32 3
  store i32 %conv163, i32* %max_width, align 4
  %114 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %min_bounds164 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %114, i32 0, i32 11
  %width165 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %min_bounds164, i32 0, i32 2
  %115 = load i16, i16* %width165, align 2
  %conv166 = sext i16 %115 to i32
  %116 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %max_bounds167 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %116, i32 0, i32 12
  %width168 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %max_bounds167, i32 0, i32 2
  %117 = load i16, i16* %width168, align 2
  %conv169 = sext i16 %117 to i32
  %cmp170 = icmp eq i32 %conv166, %conv169
  br i1 %cmp170, label %if.then.172, label %if.else.176

if.then.172:                                      ; preds = %cond.end
  %118 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %min_bounds173 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %118, i32 0, i32 11
  %width174 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %min_bounds173, i32 0, i32 2
  %119 = load i16, i16* %width174, align 2
  %conv175 = sext i16 %119 to i32
  %120 = load %struct.font*, %struct.font** %font, align 8
  %space_width = getelementptr inbounds %struct.font, %struct.font* %120, i32 0, i32 6
  store i32 %conv175, i32* %space_width, align 4
  %121 = load %struct.font*, %struct.font** %font, align 8
  %average_width = getelementptr inbounds %struct.font, %struct.font* %121, i32 0, i32 7
  store i32 %conv175, i32* %average_width, align 4
  br label %if.end.252

if.else.176:                                      ; preds = %cond.end
  %byte1 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 0
  store i8 0, i8* %byte1, align 1
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 1
  store i8 32, i8* %byte2, align 1
  %122 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call177 = call %struct.XCharStruct* @xfont_get_pcm(%struct.XFontStruct* %122, %struct.XChar2b* %char2b)
  store %struct.XCharStruct* %call177, %struct.XCharStruct** %pcm, align 8
  %123 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %tobool178 = icmp ne %struct.XCharStruct* %123, null
  br i1 %tobool178, label %if.then.179, label %if.else.183

if.then.179:                                      ; preds = %if.else.176
  %124 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %width180 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %124, i32 0, i32 2
  %125 = load i16, i16* %width180, align 2
  %conv181 = sext i16 %125 to i32
  %126 = load %struct.font*, %struct.font** %font, align 8
  %space_width182 = getelementptr inbounds %struct.font, %struct.font* %126, i32 0, i32 6
  store i32 %conv181, i32* %space_width182, align 4
  br label %if.end.185

if.else.183:                                      ; preds = %if.else.176
  %127 = load %struct.font*, %struct.font** %font, align 8
  %space_width184 = getelementptr inbounds %struct.font, %struct.font* %127, i32 0, i32 6
  store i32 0, i32* %space_width184, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.183, %if.then.179
  %128 = load i64, i64* %font_object, align 8
  %call186 = call i64 @builtin_lisp_symbol(i32 12)
  %call187 = call i64 @Ffont_get(i64 %128, i64 %call186)
  store i64 %call187, i64* %val, align 8
  %129 = load i64, i64* %val, align 8
  %and = and i64 %129, 7
  %conv188 = trunc i64 %and to i32
  %and189 = and i32 %conv188, -5
  %cmp190 = icmp eq i32 %and189, 2
  br i1 %cmp190, label %if.then.192, label %if.end.196

if.then.192:                                      ; preds = %if.end.185
  %130 = load i64, i64* %val, align 8
  %shr193 = ashr i64 %130, 2
  %div = sdiv i64 %shr193, 10
  %conv194 = trunc i64 %div to i32
  %131 = load %struct.font*, %struct.font** %font, align 8
  %average_width195 = getelementptr inbounds %struct.font, %struct.font* %131, i32 0, i32 7
  store i32 %conv194, i32* %average_width195, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.192, %if.end.185
  %132 = load %struct.font*, %struct.font** %font, align 8
  %average_width197 = getelementptr inbounds %struct.font, %struct.font* %132, i32 0, i32 7
  %133 = load i32, i32* %average_width197, align 4
  %cmp198 = icmp slt i32 %133, 0
  br i1 %cmp198, label %if.then.200, label %if.else.203

if.then.200:                                      ; preds = %if.end.196
  %134 = load %struct.font*, %struct.font** %font, align 8
  %average_width201 = getelementptr inbounds %struct.font, %struct.font* %134, i32 0, i32 7
  %135 = load i32, i32* %average_width201, align 4
  %sub = sub nsw i32 0, %135
  %136 = load %struct.font*, %struct.font** %font, align 8
  %average_width202 = getelementptr inbounds %struct.font, %struct.font* %136, i32 0, i32 7
  store i32 %sub, i32* %average_width202, align 4
  br label %if.end.251

if.else.203:                                      ; preds = %if.end.196
  %137 = load %struct.font*, %struct.font** %font, align 8
  %average_width204 = getelementptr inbounds %struct.font, %struct.font* %137, i32 0, i32 7
  %138 = load i32, i32* %average_width204, align 4
  %cmp205 = icmp eq i32 %138, 0
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.236

land.lhs.true.207:                                ; preds = %if.else.203
  %139 = load %struct.charset*, %struct.charset** %encoding, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %139, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.209, label %if.end.236

if.then.209:                                      ; preds = %land.lhs.true.207
  %140 = load %struct.font*, %struct.font** %font, align 8
  %space_width211 = getelementptr inbounds %struct.font, %struct.font* %140, i32 0, i32 6
  %141 = load i32, i32* %space_width211, align 4
  store i32 %141, i32* %width210, align 4
  %142 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %cmp212 = icmp ne %struct.XCharStruct* %142, null
  %conv213 = zext i1 %cmp212 to i32
  store i32 %conv213, i32* %n, align 4
  %byte2214 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 1
  store i8 33, i8* %byte2214, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.209
  %byte2215 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 1
  %143 = load i8, i8* %byte2215, align 1
  %conv216 = zext i8 %143 to i32
  %cmp217 = icmp sle i32 %conv216, 126
  br i1 %cmp217, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %144 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call219 = call %struct.XCharStruct* @xfont_get_pcm(%struct.XFontStruct* %144, %struct.XChar2b* %char2b)
  store %struct.XCharStruct* %call219, %struct.XCharStruct** %pcm, align 8
  %cmp220 = icmp ne %struct.XCharStruct* %call219, null
  br i1 %cmp220, label %if.then.222, label %if.end.227

if.then.222:                                      ; preds = %for.body
  %145 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %width223 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %145, i32 0, i32 2
  %146 = load i16, i16* %width223, align 2
  %conv224 = sext i16 %146 to i32
  %147 = load i32, i32* %width210, align 4
  %add225 = add nsw i32 %147, %conv224
  store i32 %add225, i32* %width210, align 4
  %148 = load i32, i32* %n, align 4
  %inc226 = add nsw i32 %148, 1
  store i32 %inc226, i32* %n, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.222, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.227
  %byte2228 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 1
  %149 = load i8, i8* %byte2228, align 1
  %inc229 = add i8 %149, 1
  store i8 %inc229, i8* %byte2228, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %150 = load i32, i32* %n, align 4
  %cmp230 = icmp sgt i32 %150, 0
  br i1 %cmp230, label %if.then.232, label %if.end.235

if.then.232:                                      ; preds = %for.end
  %151 = load i32, i32* %width210, align 4
  %152 = load i32, i32* %n, align 4
  %div233 = sdiv i32 %151, %152
  %153 = load %struct.font*, %struct.font** %font, align 8
  %average_width234 = getelementptr inbounds %struct.font, %struct.font* %153, i32 0, i32 7
  store i32 %div233, i32* %average_width234, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.232, %for.end
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %land.lhs.true.207, %if.else.203
  %154 = load %struct.font*, %struct.font** %font, align 8
  %average_width237 = getelementptr inbounds %struct.font, %struct.font* %154, i32 0, i32 7
  %155 = load i32, i32* %average_width237, align 4
  %cmp238 = icmp eq i32 %155, 0
  br i1 %cmp238, label %if.then.240, label %if.end.250

if.then.240:                                      ; preds = %if.end.236
  %156 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %min_bounds241 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %156, i32 0, i32 11
  %width242 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %min_bounds241, i32 0, i32 2
  %157 = load i16, i16* %width242, align 2
  %conv243 = sext i16 %157 to i32
  %158 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %max_bounds244 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %158, i32 0, i32 12
  %width245 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %max_bounds244, i32 0, i32 2
  %159 = load i16, i16* %width245, align 2
  %conv246 = sext i16 %159 to i32
  %add247 = add nsw i32 %conv243, %conv246
  %div248 = sdiv i32 %add247, 2
  %160 = load %struct.font*, %struct.font** %font, align 8
  %average_width249 = getelementptr inbounds %struct.font, %struct.font* %160, i32 0, i32 7
  store i32 %div248, i32* %average_width249, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.240, %if.end.236
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.200
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.then.172
  call void @block_input()
  %161 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call253 = call i32 @XGetFontProperty(%struct.XFontStruct* %161, i64 52, i64* %value)
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %cond.true.255, label %cond.false.256

cond.true.255:                                    ; preds = %if.end.252
  %162 = load i64, i64* %value, align 8
  br label %cond.end.257

cond.false.256:                                   ; preds = %if.end.252
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.256, %cond.true.255
  %cond258 = phi i64 [ %162, %cond.true.255 ], [ 0, %cond.false.256 ]
  %conv259 = trunc i64 %cond258 to i32
  %163 = load %struct.font*, %struct.font** %font, align 8
  %underline_thickness = getelementptr inbounds %struct.font, %struct.font* %163, i32 0, i32 10
  store i32 %conv259, i32* %underline_thickness, align 4
  %164 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call260 = call i32 @XGetFontProperty(%struct.XFontStruct* %164, i64 51, i64* %value)
  %tobool261 = icmp ne i32 %call260, 0
  br i1 %tobool261, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %cond.end.257
  %165 = load i64, i64* %value, align 8
  br label %cond.end.264

cond.false.263:                                   ; preds = %cond.end.257
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.263, %cond.true.262
  %cond265 = phi i64 [ %165, %cond.true.262 ], [ -1, %cond.false.263 ]
  %conv266 = trunc i64 %cond265 to i32
  %166 = load %struct.font*, %struct.font** %font, align 8
  %underline_position = getelementptr inbounds %struct.font, %struct.font* %166, i32 0, i32 11
  store i32 %conv266, i32* %underline_position, align 4
  %167 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %168 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_MULE_BASELINE_OFFSET = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %168, i32 0, i32 62
  %169 = load i64, i64* %Xatom_MULE_BASELINE_OFFSET, align 8
  %call267 = call i32 @XGetFontProperty(%struct.XFontStruct* %167, i64 %169, i64* %value)
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %cond.true.269, label %cond.false.270

cond.true.269:                                    ; preds = %cond.end.264
  %170 = load i64, i64* %value, align 8
  br label %cond.end.271

cond.false.270:                                   ; preds = %cond.end.264
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.269
  %cond272 = phi i64 [ %170, %cond.true.269 ], [ 0, %cond.false.270 ]
  %conv273 = trunc i64 %cond272 to i32
  %171 = load %struct.font*, %struct.font** %font, align 8
  %baseline_offset = getelementptr inbounds %struct.font, %struct.font* %171, i32 0, i32 13
  store i32 %conv273, i32* %baseline_offset, align 4
  %172 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %173 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_MULE_RELATIVE_COMPOSE = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %173, i32 0, i32 63
  %174 = load i64, i64* %Xatom_MULE_RELATIVE_COMPOSE, align 8
  %call274 = call i32 @XGetFontProperty(%struct.XFontStruct* %172, i64 %174, i64* %value)
  %tobool275 = icmp ne i32 %call274, 0
  br i1 %tobool275, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %cond.end.271
  %175 = load i64, i64* %value, align 8
  br label %cond.end.278

cond.false.277:                                   ; preds = %cond.end.271
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.277, %cond.true.276
  %cond279 = phi i64 [ %175, %cond.true.276 ], [ 0, %cond.false.277 ]
  %conv280 = trunc i64 %cond279 to i32
  %176 = load %struct.font*, %struct.font** %font, align 8
  %relative_compose = getelementptr inbounds %struct.font, %struct.font* %176, i32 0, i32 14
  store i32 %conv280, i32* %relative_compose, align 4
  %177 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %178 = load %struct.x_display_info*, %struct.x_display_info** %dpyinfo, align 8
  %Xatom_MULE_DEFAULT_ASCENT = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %178, i32 0, i32 64
  %179 = load i64, i64* %Xatom_MULE_DEFAULT_ASCENT, align 8
  %call281 = call i32 @XGetFontProperty(%struct.XFontStruct* %177, i64 %179, i64* %value)
  %tobool282 = icmp ne i32 %call281, 0
  br i1 %tobool282, label %cond.true.283, label %cond.false.284

cond.true.283:                                    ; preds = %cond.end.278
  %180 = load i64, i64* %value, align 8
  br label %cond.end.285

cond.false.284:                                   ; preds = %cond.end.278
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.284, %cond.true.283
  %cond286 = phi i64 [ %180, %cond.true.283 ], [ 0, %cond.false.284 ]
  %conv287 = trunc i64 %cond286 to i32
  %181 = load %struct.font*, %struct.font** %font, align 8
  %default_ascent = getelementptr inbounds %struct.font, %struct.font* %181, i32 0, i32 15
  store i32 %conv287, i32* %default_ascent, align 4
  call void @unblock_input()
  %182 = load i64, i64* %fullname, align 8
  %call288 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp289 = icmp eq i64 %182, %call288
  br i1 %cmp289, label %if.then.291, label %if.end.293

if.then.291:                                      ; preds = %cond.end.285
  %183 = load i64, i64* %font_object, align 8
  %call292 = call i64 @AREF(i64 %183, i64 14)
  store i64 %call292, i64* %fullname, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %cond.end.285
  %184 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 324), align 8
  %call294 = call zeroext i1 @STRINGP(i64 %184)
  br i1 %call294, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.293
  %185 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 324), align 8
  %186 = load i64, i64* %fullname, align 8
  %call296 = call i64 @fast_string_match_ignore_case(i64 %185, i64 %186)
  %cmp297 = icmp sge i64 %call296, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.293
  %187 = phi i1 [ false, %if.end.293 ], [ %cmp297, %land.rhs ]
  %188 = load %struct.font*, %struct.font** %font, align 8
  %vertical_centering = getelementptr inbounds %struct.font, %struct.font* %188, i32 0, i32 12
  %frombool = zext i1 %187 to i8
  store i8 %frombool, i8* %vertical_centering, align 1
  %189 = load i64, i64* %font_object, align 8
  store i64 %189, i64* %retval
  br label %return

return:                                           ; preds = %land.end, %do.end.125, %do.end.75, %do.end.45, %do.end
  %190 = load i64, i64* %retval
  ret i64 %190
}

; Function Attrs: nounwind uwtable
define internal void @xfont_close(%struct.font* %font) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %xdi = alloca %struct.x_display_info*, align 8
  %xfi = alloca %struct.xfont_info*, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.xfont_info*
  store %struct.xfont_info* %1, %struct.xfont_info** %xfi, align 8
  %2 = load %struct.xfont_info*, %struct.xfont_info** %xfi, align 8
  %xfont = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %2, i32 0, i32 2
  %3 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %tobool = icmp ne %struct.XFontStruct* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.xfont_info*, %struct.xfont_info** %xfi, align 8
  %display = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %4, i32 0, i32 1
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %call = call %struct.x_display_info* @x_display_info_for_display(%struct._XDisplay* %5)
  store %struct.x_display_info* %call, %struct.x_display_info** %xdi, align 8
  %tobool1 = icmp ne %struct.x_display_info* %call, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.xfont_info*, %struct.xfont_info** %xfi, align 8
  %x_display_id = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %6, i32 0, i32 3
  %7 = load i32, i32* %x_display_id, align 4
  %8 = load %struct.x_display_info*, %struct.x_display_info** %xdi, align 8
  %x_id = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %8, i32 0, i32 26
  %9 = load i32, i32* %x_id, align 4
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  call void @block_input()
  %10 = load %struct.xfont_info*, %struct.xfont_info** %xfi, align 8
  %display3 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %10, i32 0, i32 1
  %11 = load %struct._XDisplay*, %struct._XDisplay** %display3, align 8
  %12 = load %struct.xfont_info*, %struct.xfont_info** %xfi, align 8
  %xfont4 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %12, i32 0, i32 2
  %13 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont4, align 8
  %call5 = call i32 @XFreeFont(%struct._XDisplay* %11, %struct.XFontStruct* %13)
  call void @unblock_input()
  %14 = load %struct.xfont_info*, %struct.xfont_info** %xfi, align 8
  %xfont6 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %14, i32 0, i32 2
  store %struct.XFontStruct* null, %struct.XFontStruct** %xfont6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xfont_prepare_face(%struct.frame* %f, %struct.face* %face) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %face.addr = alloca %struct.face*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.face* %face, %struct.face** %face.addr, align 8
  call void @block_input()
  %0 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %0, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %1 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %1, i32 0, i32 44
  %2 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %2, i32 0, i32 2
  %3 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %4 = load %struct.face*, %struct.face** %face.addr, align 8
  %gc = getelementptr inbounds %struct.face, %struct.face* %4, i32 0, i32 2
  %5 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %6 = load %struct.face*, %struct.face** %face.addr, align 8
  %font = getelementptr inbounds %struct.face, %struct.face* %6, i32 0, i32 10
  %7 = load %struct.font*, %struct.font** %font, align 8
  %8 = bitcast %struct.font* %7 to %struct.xfont_info*
  %xfont = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %8, i32 0, i32 2
  %9 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %fid = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %9, i32 0, i32 1
  %10 = load i64, i64* %fid, align 8
  %call = call i32 @XSetFont(%struct._XDisplay* %3, %struct._XGC* %5, i64 %10)
  call void @unblock_input()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xfont_has_char(i64 %font, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %registry = alloca i64, align 8
  %encoding = alloca %struct.charset*, align 8
  %repertory = alloca %struct.charset*, align 8
  store i64 %font, i64* %font.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i64, i64* %font.addr, align 8
  %call = call i64 @AREF(i64 %0, i64 4)
  store i64 %call, i64* %registry, align 8
  store %struct.charset* null, %struct.charset** %repertory, align 8
  %1 = load i64, i64* %registry, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 578)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %2 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %3 = load i32, i32* @charset_unicode, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %2, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %encoding, align 8
  %4 = load i64, i64* %font.addr, align 8
  %call2 = call i64 @AREF(i64 %4, i64 3)
  %call3 = call i64 @builtin_lisp_symbol(i32 583)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* @charset_jisx0208, align 4
  %cmp5 = icmp sge i32 %5, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %6 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %7 = load i32, i32* @charset_jisx0208, align 4
  %idx.ext7 = sext i32 %7 to i64
  %add.ptr8 = getelementptr inbounds %struct.charset, %struct.charset* %6, i64 %idx.ext7
  store %struct.charset* %add.ptr8, %struct.charset** %repertory, align 8
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load i64, i64* %font.addr, align 8
  %call9 = call i64 @AREF(i64 %8, i64 3)
  %call10 = call i64 @builtin_lisp_symbol(i32 597)
  %cmp11 = icmp eq i64 %call9, %call10
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %if.else
  %9 = load i32, i32* @charset_ksc5601, align 4
  %cmp13 = icmp sge i32 %9, 0
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true.12
  %10 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %11 = load i32, i32* @charset_ksc5601, align 4
  %idx.ext15 = sext i32 %11 to i64
  %add.ptr16 = getelementptr inbounds %struct.charset, %struct.charset* %10, i64 %idx.ext15
  store %struct.charset* %add.ptr16, %struct.charset** %repertory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true.12, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.6
  br label %if.end.23

if.else.18:                                       ; preds = %entry
  %12 = load i64, i64* %registry, align 8
  %call19 = call i32 @font_registry_charsets(i64 %12, %struct.charset** %encoding, %struct.charset** %repertory)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.else.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.17
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %13 = load i32, i32* %c.addr, align 4
  %add = add i32 %13, 0
  %cmp24 = icmp ult i32 %add, 128
  br i1 %cmp24, label %land.lhs.true.28, label %if.end.31

cond.false:                                       ; preds = %if.end.23
  %14 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %14 to i64
  %add25 = add i64 %conv, 0
  %cmp26 = icmp ult i64 %add25, 128
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %cond.false, %cond.true
  %15 = load %struct.charset*, %struct.charset** %encoding, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %15, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.28, %cond.false, %cond.true
  %16 = load %struct.charset*, %struct.charset** %repertory, align 8
  %tobool = icmp ne %struct.charset* %16, null
  br i1 %tobool, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.31
  store i32 -1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.31
  br i1 true, label %cond.true.34, label %cond.false.38

cond.true.34:                                     ; preds = %if.end.33
  %17 = load i32, i32* %c.addr, align 4
  %add35 = add i32 %17, 0
  %cmp36 = icmp ult i32 %add35, 128
  br i1 %cmp36, label %land.lhs.true.43, label %cond.false.51

cond.false.38:                                    ; preds = %if.end.33
  %18 = load i32, i32* %c.addr, align 4
  %conv39 = sext i32 %18 to i64
  %add40 = add i64 %conv39, 0
  %cmp41 = icmp ult i64 %add40, 128
  br i1 %cmp41, label %land.lhs.true.43, label %cond.false.51

land.lhs.true.43:                                 ; preds = %cond.false.38, %cond.true.34
  %19 = load %struct.charset*, %struct.charset** %repertory, align 8
  %ascii_compatible_p44 = getelementptr inbounds %struct.charset, %struct.charset* %19, i32 0, i32 5
  %bf.load45 = load i8, i8* %ascii_compatible_p44, align 8
  %bf.lshr46 = lshr i8 %bf.load45, 2
  %bf.clear47 = and i8 %bf.lshr46, 1
  %bf.cast48 = trunc i8 %bf.clear47 to i1
  br i1 %bf.cast48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %land.lhs.true.43
  %20 = load i32, i32* %c.addr, align 4
  br label %cond.end.130

cond.false.51:                                    ; preds = %land.lhs.true.43, %cond.false.38, %cond.true.34
  %21 = load %struct.charset*, %struct.charset** %repertory, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %21, i32 0, i32 5
  %bf.load52 = load i8, i8* %unified_p, align 8
  %bf.lshr53 = lshr i8 %bf.load52, 5
  %bf.clear54 = and i8 %bf.lshr53, 1
  %bf.cast55 = trunc i8 %bf.clear54 to i1
  br i1 %bf.cast55, label %cond.true.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.51
  %22 = load %struct.charset*, %struct.charset** %repertory, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %22, i32 0, i32 9
  %23 = load i32, i32* %method, align 4
  %cmp57 = icmp eq i32 %23, 2
  br i1 %cmp57, label %cond.true.63, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false
  %24 = load %struct.charset*, %struct.charset** %repertory, align 8
  %method60 = getelementptr inbounds %struct.charset, %struct.charset* %24, i32 0, i32 9
  %25 = load i32, i32* %method60, align 4
  %cmp61 = icmp eq i32 %25, 3
  br i1 %cmp61, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %lor.lhs.false.59, %lor.lhs.false, %cond.false.51
  %26 = load %struct.charset*, %struct.charset** %repertory, align 8
  %27 = load i32, i32* %c.addr, align 4
  %call64 = call i32 @encode_char(%struct.charset* %26, i32 %27)
  br label %cond.end.128

cond.false.65:                                    ; preds = %lor.lhs.false.59
  %28 = load i32, i32* %c.addr, align 4
  %29 = load %struct.charset*, %struct.charset** %repertory, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %29, i32 0, i32 13
  %30 = load i32, i32* %min_char, align 4
  %cmp66 = icmp slt i32 %28, %30
  br i1 %cmp66, label %cond.true.71, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %cond.false.65
  %31 = load i32, i32* %c.addr, align 4
  %32 = load %struct.charset*, %struct.charset** %repertory, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %32, i32 0, i32 14
  %33 = load i32, i32* %max_char, align 4
  %cmp69 = icmp sgt i32 %31, %33
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %lor.lhs.false.68, %cond.false.65
  %34 = load %struct.charset*, %struct.charset** %repertory, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %34, i32 0, i32 15
  %35 = load i32, i32* %invalid_code, align 4
  br label %cond.end.126

cond.false.72:                                    ; preds = %lor.lhs.false.68
  %36 = load %struct.charset*, %struct.charset** %repertory, align 8
  %method73 = getelementptr inbounds %struct.charset, %struct.charset* %36, i32 0, i32 9
  %37 = load i32, i32* %method73, align 4
  %cmp74 = icmp eq i32 %37, 0
  br i1 %cmp74, label %cond.true.76, label %cond.false.85

cond.true.76:                                     ; preds = %cond.false.72
  %38 = load %struct.charset*, %struct.charset** %repertory, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 5
  %bf.load77 = load i8, i8* %code_linear_p, align 8
  %bf.clear78 = and i8 %bf.load77, 1
  %bf.cast79 = trunc i8 %bf.clear78 to i1
  br i1 %bf.cast79, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.true.76
  %39 = load i32, i32* %c.addr, align 4
  %40 = load %struct.charset*, %struct.charset** %repertory, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 17
  %41 = load i32, i32* %code_offset, align 4
  %sub = sub nsw i32 %39, %41
  %42 = load %struct.charset*, %struct.charset** %repertory, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 10
  %43 = load i32, i32* %min_code, align 4
  %add82 = add i32 %sub, %43
  br label %cond.end

cond.false.83:                                    ; preds = %cond.true.76
  %44 = load %struct.charset*, %struct.charset** %repertory, align 8
  %45 = load i32, i32* %c.addr, align 4
  %call84 = call i32 @encode_char(%struct.charset* %44, i32 %45)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.83, %cond.true.81
  %cond = phi i32 [ %add82, %cond.true.81 ], [ %call84, %cond.false.83 ]
  br label %cond.end.124

cond.false.85:                                    ; preds = %cond.false.72
  %46 = load %struct.charset*, %struct.charset** %repertory, align 8
  %method86 = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 9
  %47 = load i32, i32* %method86, align 4
  %cmp87 = icmp eq i32 %47, 1
  br i1 %cmp87, label %cond.true.89, label %cond.false.120

cond.true.89:                                     ; preds = %cond.false.85
  %48 = load %struct.charset*, %struct.charset** %repertory, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %48, i32 0, i32 5
  %bf.load90 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr91 = lshr i8 %bf.load90, 4
  %bf.clear92 = and i8 %bf.lshr91, 1
  %bf.cast93 = trunc i8 %bf.clear92 to i1
  br i1 %bf.cast93, label %land.lhs.true.95, label %cond.false.116

land.lhs.true.95:                                 ; preds = %cond.true.89
  %49 = load i64, i64* @Vcharset_hash_table, align 8
  %call96 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %49)
  %50 = load %struct.charset*, %struct.charset** %repertory, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %50, i32 0, i32 1
  %51 = load i64, i64* %hash_index, align 8
  %call97 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call96, i64 %51)
  %call98 = call i64 @AREF(i64 %call97, i64 5)
  %call99 = call zeroext i1 @CHAR_TABLE_P(i64 %call98)
  br i1 %call99, label %cond.true.101, label %cond.false.116

cond.true.101:                                    ; preds = %land.lhs.true.95
  %52 = load i64, i64* @Vcharset_hash_table, align 8
  %call102 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %52)
  %53 = load %struct.charset*, %struct.charset** %repertory, align 8
  %hash_index103 = getelementptr inbounds %struct.charset, %struct.charset* %53, i32 0, i32 1
  %54 = load i64, i64* %hash_index103, align 8
  %call104 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call102, i64 %54)
  %call105 = call i64 @AREF(i64 %call104, i64 5)
  %55 = load i32, i32* %c.addr, align 4
  %call106 = call i64 @CHAR_TABLE_REF(i64 %call105, i32 %55)
  store i64 %call106, i64* @charset_work, align 8
  %56 = load i64, i64* @charset_work, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp108 = icmp eq i64 %56, %call107
  br i1 %cmp108, label %cond.true.110, label %cond.false.112

cond.true.110:                                    ; preds = %cond.true.101
  %57 = load %struct.charset*, %struct.charset** %repertory, align 8
  %invalid_code111 = getelementptr inbounds %struct.charset, %struct.charset* %57, i32 0, i32 15
  %58 = load i32, i32* %invalid_code111, align 4
  br label %cond.end.114

cond.false.112:                                   ; preds = %cond.true.101
  %59 = load i64, i64* @charset_work, align 8
  %shr = ashr i64 %59, 2
  %conv113 = trunc i64 %shr to i32
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.112, %cond.true.110
  %cond115 = phi i32 [ %58, %cond.true.110 ], [ %conv113, %cond.false.112 ]
  br label %cond.end.118

cond.false.116:                                   ; preds = %land.lhs.true.95, %cond.true.89
  %60 = load %struct.charset*, %struct.charset** %repertory, align 8
  %61 = load i32, i32* %c.addr, align 4
  %call117 = call i32 @encode_char(%struct.charset* %60, i32 %61)
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.116, %cond.end.114
  %cond119 = phi i32 [ %cond115, %cond.end.114 ], [ %call117, %cond.false.116 ]
  br label %cond.end.122

cond.false.120:                                   ; preds = %cond.false.85
  %62 = load %struct.charset*, %struct.charset** %repertory, align 8
  %63 = load i32, i32* %c.addr, align 4
  %call121 = call i32 @encode_char(%struct.charset* %62, i32 %63)
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.120, %cond.end.118
  %cond123 = phi i32 [ %cond119, %cond.end.118 ], [ %call121, %cond.false.120 ]
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end.122, %cond.end
  %cond125 = phi i32 [ %cond, %cond.end ], [ %cond123, %cond.end.122 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.71
  %cond127 = phi i32 [ %35, %cond.true.71 ], [ %cond125, %cond.end.124 ]
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.end.126, %cond.true.63
  %cond129 = phi i32 [ %call64, %cond.true.63 ], [ %cond127, %cond.end.126 ]
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.end.128, %cond.true.50
  %cond131 = phi i32 [ %20, %cond.true.50 ], [ %cond129, %cond.end.128 ]
  %64 = load %struct.charset*, %struct.charset** %repertory, align 8
  %invalid_code132 = getelementptr inbounds %struct.charset, %struct.charset* %64, i32 0, i32 15
  %65 = load i32, i32* %invalid_code132, align 4
  %cmp133 = icmp ne i32 %cond131, %65
  %conv134 = zext i1 %cmp133 to i32
  store i32 %conv134, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.130, %if.then.32, %if.then.30, %if.then.21
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @xfont_encode_char(%struct.font* %font, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.font*, align 8
  %c.addr = alloca i32, align 4
  %xfont = alloca %struct.XFontStruct*, align 8
  %charset = alloca %struct.charset*, align 8
  %code = alloca i32, align 4
  %char2b = alloca %struct.XChar2b, align 1
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.xfont_info*
  %xfont1 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %1, i32 0, i32 2
  %2 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont1, align 8
  store %struct.XFontStruct* %2, %struct.XFontStruct** %xfont, align 8
  %3 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %4 = load %struct.font*, %struct.font** %font.addr, align 8
  %encoding_charset = getelementptr inbounds %struct.font, %struct.font* %4, i32 0, i32 16
  %5 = load i32, i32* %encoding_charset, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %3, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %charset, align 8
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %c.addr, align 4
  %add = add i32 %6, 0
  %cmp = icmp ult i32 %add, 128
  br i1 %cmp, label %land.lhs.true, label %cond.false.7

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %7 to i64
  %add2 = add i64 %conv, 0
  %cmp3 = icmp ult i64 %add2, 128
  br i1 %cmp3, label %land.lhs.true, label %cond.false.7

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %8 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %8, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %land.lhs.true
  %9 = load i32, i32* %c.addr, align 4
  br label %cond.end.85

cond.false.7:                                     ; preds = %land.lhs.true, %cond.false, %cond.true
  %10 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %10, i32 0, i32 5
  %bf.load8 = load i8, i8* %unified_p, align 8
  %bf.lshr9 = lshr i8 %bf.load8, 5
  %bf.clear10 = and i8 %bf.lshr9, 1
  %bf.cast11 = trunc i8 %bf.clear10 to i1
  br i1 %bf.cast11, label %cond.true.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.7
  %11 = load %struct.charset*, %struct.charset** %charset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %11, i32 0, i32 9
  %12 = load i32, i32* %method, align 4
  %cmp13 = icmp eq i32 %12, 2
  br i1 %cmp13, label %cond.true.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %13 = load %struct.charset*, %struct.charset** %charset, align 8
  %method16 = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 9
  %14 = load i32, i32* %method16, align 4
  %cmp17 = icmp eq i32 %14, 3
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %lor.lhs.false.15, %lor.lhs.false, %cond.false.7
  %15 = load %struct.charset*, %struct.charset** %charset, align 8
  %16 = load i32, i32* %c.addr, align 4
  %call = call i32 @encode_char(%struct.charset* %15, i32 %16)
  br label %cond.end.83

cond.false.20:                                    ; preds = %lor.lhs.false.15
  %17 = load i32, i32* %c.addr, align 4
  %18 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %18, i32 0, i32 13
  %19 = load i32, i32* %min_char, align 4
  %cmp21 = icmp slt i32 %17, %19
  br i1 %cmp21, label %cond.true.26, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %cond.false.20
  %20 = load i32, i32* %c.addr, align 4
  %21 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %21, i32 0, i32 14
  %22 = load i32, i32* %max_char, align 4
  %cmp24 = icmp sgt i32 %20, %22
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %lor.lhs.false.23, %cond.false.20
  %23 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %23, i32 0, i32 15
  %24 = load i32, i32* %invalid_code, align 4
  br label %cond.end.81

cond.false.27:                                    ; preds = %lor.lhs.false.23
  %25 = load %struct.charset*, %struct.charset** %charset, align 8
  %method28 = getelementptr inbounds %struct.charset, %struct.charset* %25, i32 0, i32 9
  %26 = load i32, i32* %method28, align 4
  %cmp29 = icmp eq i32 %26, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.40

cond.true.31:                                     ; preds = %cond.false.27
  %27 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %27, i32 0, i32 5
  %bf.load32 = load i8, i8* %code_linear_p, align 8
  %bf.clear33 = and i8 %bf.load32, 1
  %bf.cast34 = trunc i8 %bf.clear33 to i1
  br i1 %bf.cast34, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.true.31
  %28 = load i32, i32* %c.addr, align 4
  %29 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %29, i32 0, i32 17
  %30 = load i32, i32* %code_offset, align 4
  %sub = sub nsw i32 %28, %30
  %31 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %31, i32 0, i32 10
  %32 = load i32, i32* %min_code, align 4
  %add37 = add i32 %sub, %32
  br label %cond.end

cond.false.38:                                    ; preds = %cond.true.31
  %33 = load %struct.charset*, %struct.charset** %charset, align 8
  %34 = load i32, i32* %c.addr, align 4
  %call39 = call i32 @encode_char(%struct.charset* %33, i32 %34)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.38, %cond.true.36
  %cond = phi i32 [ %add37, %cond.true.36 ], [ %call39, %cond.false.38 ]
  br label %cond.end.79

cond.false.40:                                    ; preds = %cond.false.27
  %35 = load %struct.charset*, %struct.charset** %charset, align 8
  %method41 = getelementptr inbounds %struct.charset, %struct.charset* %35, i32 0, i32 9
  %36 = load i32, i32* %method41, align 4
  %cmp42 = icmp eq i32 %36, 1
  br i1 %cmp42, label %cond.true.44, label %cond.false.75

cond.true.44:                                     ; preds = %cond.false.40
  %37 = load %struct.charset*, %struct.charset** %charset, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %37, i32 0, i32 5
  %bf.load45 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr46 = lshr i8 %bf.load45, 4
  %bf.clear47 = and i8 %bf.lshr46, 1
  %bf.cast48 = trunc i8 %bf.clear47 to i1
  br i1 %bf.cast48, label %land.lhs.true.50, label %cond.false.71

land.lhs.true.50:                                 ; preds = %cond.true.44
  %38 = load i64, i64* @Vcharset_hash_table, align 8
  %call51 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %38)
  %39 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %39, i32 0, i32 1
  %40 = load i64, i64* %hash_index, align 8
  %call52 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call51, i64 %40)
  %call53 = call i64 @AREF(i64 %call52, i64 5)
  %call54 = call zeroext i1 @CHAR_TABLE_P(i64 %call53)
  br i1 %call54, label %cond.true.56, label %cond.false.71

cond.true.56:                                     ; preds = %land.lhs.true.50
  %41 = load i64, i64* @Vcharset_hash_table, align 8
  %call57 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %41)
  %42 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index58 = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 1
  %43 = load i64, i64* %hash_index58, align 8
  %call59 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call57, i64 %43)
  %call60 = call i64 @AREF(i64 %call59, i64 5)
  %44 = load i32, i32* %c.addr, align 4
  %call61 = call i64 @CHAR_TABLE_REF(i64 %call60, i32 %44)
  store i64 %call61, i64* @charset_work, align 8
  %45 = load i64, i64* @charset_work, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %45, %call62
  br i1 %cmp63, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %cond.true.56
  %46 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code66 = getelementptr inbounds %struct.charset, %struct.charset* %46, i32 0, i32 15
  %47 = load i32, i32* %invalid_code66, align 4
  br label %cond.end.69

cond.false.67:                                    ; preds = %cond.true.56
  %48 = load i64, i64* @charset_work, align 8
  %shr = ashr i64 %48, 2
  %conv68 = trunc i64 %shr to i32
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.65
  %cond70 = phi i32 [ %47, %cond.true.65 ], [ %conv68, %cond.false.67 ]
  br label %cond.end.73

cond.false.71:                                    ; preds = %land.lhs.true.50, %cond.true.44
  %49 = load %struct.charset*, %struct.charset** %charset, align 8
  %50 = load i32, i32* %c.addr, align 4
  %call72 = call i32 @encode_char(%struct.charset* %49, i32 %50)
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.end.69
  %cond74 = phi i32 [ %cond70, %cond.end.69 ], [ %call72, %cond.false.71 ]
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.false.40
  %51 = load %struct.charset*, %struct.charset** %charset, align 8
  %52 = load i32, i32* %c.addr, align 4
  %call76 = call i32 @encode_char(%struct.charset* %51, i32 %52)
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.end.73
  %cond78 = phi i32 [ %cond74, %cond.end.73 ], [ %call76, %cond.false.75 ]
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.end.77, %cond.end
  %cond80 = phi i32 [ %cond, %cond.end ], [ %cond78, %cond.end.77 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.26
  %cond82 = phi i32 [ %24, %cond.true.26 ], [ %cond80, %cond.end.79 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.19
  %cond84 = phi i32 [ %call, %cond.true.19 ], [ %cond82, %cond.end.81 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.6
  %cond86 = phi i32 [ %9, %cond.true.6 ], [ %cond84, %cond.end.83 ]
  store i32 %cond86, i32* %code, align 4
  %53 = load i32, i32* %code, align 4
  %54 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code87 = getelementptr inbounds %struct.charset, %struct.charset* %54, i32 0, i32 15
  %55 = load i32, i32* %invalid_code87, align 4
  %cmp88 = icmp eq i32 %53, %55
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.85
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.85
  %56 = load %struct.font*, %struct.font** %font.addr, align 8
  %repertory_charset = getelementptr inbounds %struct.font, %struct.font* %56, i32 0, i32 17
  %57 = load i32, i32* %repertory_charset, align 4
  %cmp90 = icmp sge i32 %57, 0
  br i1 %cmp90, label %if.then.92, label %if.end.216

if.then.92:                                       ; preds = %if.end
  %58 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %59 = load %struct.font*, %struct.font** %font.addr, align 8
  %repertory_charset93 = getelementptr inbounds %struct.font, %struct.font* %59, i32 0, i32 17
  %60 = load i32, i32* %repertory_charset93, align 4
  %idx.ext94 = sext i32 %60 to i64
  %add.ptr95 = getelementptr inbounds %struct.charset, %struct.charset* %58, i64 %idx.ext94
  store %struct.charset* %add.ptr95, %struct.charset** %charset, align 8
  br i1 true, label %cond.true.96, label %cond.false.100

cond.true.96:                                     ; preds = %if.then.92
  %61 = load i32, i32* %c.addr, align 4
  %add97 = add i32 %61, 0
  %cmp98 = icmp ult i32 %add97, 128
  br i1 %cmp98, label %land.lhs.true.105, label %cond.false.113

cond.false.100:                                   ; preds = %if.then.92
  %62 = load i32, i32* %c.addr, align 4
  %conv101 = sext i32 %62 to i64
  %add102 = add i64 %conv101, 0
  %cmp103 = icmp ult i64 %add102, 128
  br i1 %cmp103, label %land.lhs.true.105, label %cond.false.113

land.lhs.true.105:                                ; preds = %cond.false.100, %cond.true.96
  %63 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p106 = getelementptr inbounds %struct.charset, %struct.charset* %63, i32 0, i32 5
  %bf.load107 = load i8, i8* %ascii_compatible_p106, align 8
  %bf.lshr108 = lshr i8 %bf.load107, 2
  %bf.clear109 = and i8 %bf.lshr108, 1
  %bf.cast110 = trunc i8 %bf.clear109 to i1
  br i1 %bf.cast110, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %land.lhs.true.105
  %64 = load i32, i32* %c.addr, align 4
  br label %cond.end.207

cond.false.113:                                   ; preds = %land.lhs.true.105, %cond.false.100, %cond.true.96
  %65 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p114 = getelementptr inbounds %struct.charset, %struct.charset* %65, i32 0, i32 5
  %bf.load115 = load i8, i8* %unified_p114, align 8
  %bf.lshr116 = lshr i8 %bf.load115, 5
  %bf.clear117 = and i8 %bf.lshr116, 1
  %bf.cast118 = trunc i8 %bf.clear117 to i1
  br i1 %bf.cast118, label %cond.true.128, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %cond.false.113
  %66 = load %struct.charset*, %struct.charset** %charset, align 8
  %method121 = getelementptr inbounds %struct.charset, %struct.charset* %66, i32 0, i32 9
  %67 = load i32, i32* %method121, align 4
  %cmp122 = icmp eq i32 %67, 2
  br i1 %cmp122, label %cond.true.128, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %lor.lhs.false.120
  %68 = load %struct.charset*, %struct.charset** %charset, align 8
  %method125 = getelementptr inbounds %struct.charset, %struct.charset* %68, i32 0, i32 9
  %69 = load i32, i32* %method125, align 4
  %cmp126 = icmp eq i32 %69, 3
  br i1 %cmp126, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %lor.lhs.false.124, %lor.lhs.false.120, %cond.false.113
  %70 = load %struct.charset*, %struct.charset** %charset, align 8
  %71 = load i32, i32* %c.addr, align 4
  %call129 = call i32 @encode_char(%struct.charset* %70, i32 %71)
  br label %cond.end.205

cond.false.130:                                   ; preds = %lor.lhs.false.124
  %72 = load i32, i32* %c.addr, align 4
  %73 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_char131 = getelementptr inbounds %struct.charset, %struct.charset* %73, i32 0, i32 13
  %74 = load i32, i32* %min_char131, align 4
  %cmp132 = icmp slt i32 %72, %74
  br i1 %cmp132, label %cond.true.138, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %cond.false.130
  %75 = load i32, i32* %c.addr, align 4
  %76 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char135 = getelementptr inbounds %struct.charset, %struct.charset* %76, i32 0, i32 14
  %77 = load i32, i32* %max_char135, align 4
  %cmp136 = icmp sgt i32 %75, %77
  br i1 %cmp136, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %lor.lhs.false.134, %cond.false.130
  %78 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code139 = getelementptr inbounds %struct.charset, %struct.charset* %78, i32 0, i32 15
  %79 = load i32, i32* %invalid_code139, align 4
  br label %cond.end.203

cond.false.140:                                   ; preds = %lor.lhs.false.134
  %80 = load %struct.charset*, %struct.charset** %charset, align 8
  %method141 = getelementptr inbounds %struct.charset, %struct.charset* %80, i32 0, i32 9
  %81 = load i32, i32* %method141, align 4
  %cmp142 = icmp eq i32 %81, 0
  br i1 %cmp142, label %cond.true.144, label %cond.false.159

cond.true.144:                                    ; preds = %cond.false.140
  %82 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p145 = getelementptr inbounds %struct.charset, %struct.charset* %82, i32 0, i32 5
  %bf.load146 = load i8, i8* %code_linear_p145, align 8
  %bf.clear147 = and i8 %bf.load146, 1
  %bf.cast148 = trunc i8 %bf.clear147 to i1
  br i1 %bf.cast148, label %cond.true.150, label %cond.false.155

cond.true.150:                                    ; preds = %cond.true.144
  %83 = load i32, i32* %c.addr, align 4
  %84 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset151 = getelementptr inbounds %struct.charset, %struct.charset* %84, i32 0, i32 17
  %85 = load i32, i32* %code_offset151, align 4
  %sub152 = sub nsw i32 %83, %85
  %86 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code153 = getelementptr inbounds %struct.charset, %struct.charset* %86, i32 0, i32 10
  %87 = load i32, i32* %min_code153, align 4
  %add154 = add i32 %sub152, %87
  br label %cond.end.157

cond.false.155:                                   ; preds = %cond.true.144
  %88 = load %struct.charset*, %struct.charset** %charset, align 8
  %89 = load i32, i32* %c.addr, align 4
  %call156 = call i32 @encode_char(%struct.charset* %88, i32 %89)
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.150
  %cond158 = phi i32 [ %add154, %cond.true.150 ], [ %call156, %cond.false.155 ]
  br label %cond.end.201

cond.false.159:                                   ; preds = %cond.false.140
  %90 = load %struct.charset*, %struct.charset** %charset, align 8
  %method160 = getelementptr inbounds %struct.charset, %struct.charset* %90, i32 0, i32 9
  %91 = load i32, i32* %method160, align 4
  %cmp161 = icmp eq i32 %91, 1
  br i1 %cmp161, label %cond.true.163, label %cond.false.197

cond.true.163:                                    ; preds = %cond.false.159
  %92 = load %struct.charset*, %struct.charset** %charset, align 8
  %compact_codes_p164 = getelementptr inbounds %struct.charset, %struct.charset* %92, i32 0, i32 5
  %bf.load165 = load i8, i8* %compact_codes_p164, align 8
  %bf.lshr166 = lshr i8 %bf.load165, 4
  %bf.clear167 = and i8 %bf.lshr166, 1
  %bf.cast168 = trunc i8 %bf.clear167 to i1
  br i1 %bf.cast168, label %land.lhs.true.170, label %cond.false.193

land.lhs.true.170:                                ; preds = %cond.true.163
  %93 = load i64, i64* @Vcharset_hash_table, align 8
  %call171 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %93)
  %94 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index172 = getelementptr inbounds %struct.charset, %struct.charset* %94, i32 0, i32 1
  %95 = load i64, i64* %hash_index172, align 8
  %call173 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call171, i64 %95)
  %call174 = call i64 @AREF(i64 %call173, i64 5)
  %call175 = call zeroext i1 @CHAR_TABLE_P(i64 %call174)
  br i1 %call175, label %cond.true.177, label %cond.false.193

cond.true.177:                                    ; preds = %land.lhs.true.170
  %96 = load i64, i64* @Vcharset_hash_table, align 8
  %call178 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %96)
  %97 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index179 = getelementptr inbounds %struct.charset, %struct.charset* %97, i32 0, i32 1
  %98 = load i64, i64* %hash_index179, align 8
  %call180 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call178, i64 %98)
  %call181 = call i64 @AREF(i64 %call180, i64 5)
  %99 = load i32, i32* %c.addr, align 4
  %call182 = call i64 @CHAR_TABLE_REF(i64 %call181, i32 %99)
  store i64 %call182, i64* @charset_work, align 8
  %100 = load i64, i64* @charset_work, align 8
  %call183 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp184 = icmp eq i64 %100, %call183
  br i1 %cmp184, label %cond.true.186, label %cond.false.188

cond.true.186:                                    ; preds = %cond.true.177
  %101 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code187 = getelementptr inbounds %struct.charset, %struct.charset* %101, i32 0, i32 15
  %102 = load i32, i32* %invalid_code187, align 4
  br label %cond.end.191

cond.false.188:                                   ; preds = %cond.true.177
  %103 = load i64, i64* @charset_work, align 8
  %shr189 = ashr i64 %103, 2
  %conv190 = trunc i64 %shr189 to i32
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.188, %cond.true.186
  %cond192 = phi i32 [ %102, %cond.true.186 ], [ %conv190, %cond.false.188 ]
  br label %cond.end.195

cond.false.193:                                   ; preds = %land.lhs.true.170, %cond.true.163
  %104 = load %struct.charset*, %struct.charset** %charset, align 8
  %105 = load i32, i32* %c.addr, align 4
  %call194 = call i32 @encode_char(%struct.charset* %104, i32 %105)
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.193, %cond.end.191
  %cond196 = phi i32 [ %cond192, %cond.end.191 ], [ %call194, %cond.false.193 ]
  br label %cond.end.199

cond.false.197:                                   ; preds = %cond.false.159
  %106 = load %struct.charset*, %struct.charset** %charset, align 8
  %107 = load i32, i32* %c.addr, align 4
  %call198 = call i32 @encode_char(%struct.charset* %106, i32 %107)
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.197, %cond.end.195
  %cond200 = phi i32 [ %cond196, %cond.end.195 ], [ %call198, %cond.false.197 ]
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.end.199, %cond.end.157
  %cond202 = phi i32 [ %cond158, %cond.end.157 ], [ %cond200, %cond.end.199 ]
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.end.201, %cond.true.138
  %cond204 = phi i32 [ %79, %cond.true.138 ], [ %cond202, %cond.end.201 ]
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.end.203, %cond.true.128
  %cond206 = phi i32 [ %call129, %cond.true.128 ], [ %cond204, %cond.end.203 ]
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.end.205, %cond.true.112
  %cond208 = phi i32 [ %64, %cond.true.112 ], [ %cond206, %cond.end.205 ]
  %108 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code209 = getelementptr inbounds %struct.charset, %struct.charset* %108, i32 0, i32 15
  %109 = load i32, i32* %invalid_code209, align 4
  %cmp210 = icmp ne i32 %cond208, %109
  br i1 %cmp210, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %cond.end.207
  %110 = load i32, i32* %code, align 4
  br label %cond.end.214

cond.false.213:                                   ; preds = %cond.end.207
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.213, %cond.true.212
  %cond215 = phi i32 [ %110, %cond.true.212 ], [ -1, %cond.false.213 ]
  store i32 %cond215, i32* %retval
  br label %return

if.end.216:                                       ; preds = %if.end
  %111 = load i32, i32* %code, align 4
  %shr217 = lshr i32 %111, 8
  %conv218 = trunc i32 %shr217 to i8
  %byte1 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 0
  store i8 %conv218, i8* %byte1, align 1
  %112 = load i32, i32* %code, align 4
  %and = and i32 %112, 255
  %conv219 = trunc i32 %and to i8
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 1
  store i8 %conv219, i8* %byte2, align 1
  %113 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call220 = call %struct.XCharStruct* @xfont_get_pcm(%struct.XFontStruct* %113, %struct.XChar2b* %char2b)
  %tobool = icmp ne %struct.XCharStruct* %call220, null
  br i1 %tobool, label %cond.true.221, label %cond.false.222

cond.true.221:                                    ; preds = %if.end.216
  %114 = load i32, i32* %code, align 4
  br label %cond.end.223

cond.false.222:                                   ; preds = %if.end.216
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.222, %cond.true.221
  %cond224 = phi i32 [ %114, %cond.true.221 ], [ -1, %cond.false.222 ]
  store i32 %cond224, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.223, %cond.end.214, %if.then
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal void @xfont_text_extents(%struct.font* %font, i32* %code, i32 %nglyphs, %struct.font_metrics* %metrics) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %code.addr = alloca i32*, align 8
  %nglyphs.addr = alloca i32, align 4
  %metrics.addr = alloca %struct.font_metrics*, align 8
  %xfont = alloca %struct.XFontStruct*, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %first = alloca i8, align 1
  %char2b = alloca %struct.XChar2b, align 1
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32* %code, i32** %code.addr, align 8
  store i32 %nglyphs, i32* %nglyphs.addr, align 4
  store %struct.font_metrics* %metrics, %struct.font_metrics** %metrics.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.xfont_info*
  %xfont1 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %1, i32 0, i32 2
  %2 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont1, align 8
  store %struct.XFontStruct* %2, %struct.XFontStruct** %xfont, align 8
  store i32 0, i32* %width, align 4
  store i32 0, i32* %i, align 4
  store i8 1, i8* %first, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nglyphs.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %code.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp uge i32 %7, 65536
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32*, i32** %code.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  %shr = lshr i32 %10, 8
  %conv = trunc i32 %shr to i8
  %byte1 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 0
  store i8 %conv, i8* %byte1, align 1
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i32*, i32** %code.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %and = and i32 %13, 255
  %conv7 = trunc i32 %and to i8
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 1
  store i8 %conv7, i8* %byte2, align 1
  %14 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call = call %struct.XCharStruct* @xfont_get_pcm(%struct.XFontStruct* %14, %struct.XChar2b* %char2b)
  store %struct.XCharStruct* %call, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %15 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %tobool = icmp ne %struct.XCharStruct* %15, null
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  br label %for.inc

if.end.9:                                         ; preds = %if.end
  %16 = load i8, i8* %first, align 1
  %tobool10 = trunc i8 %16 to i1
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %lbearing = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %17, i32 0, i32 0
  %18 = load i16, i16* %lbearing, align 2
  %19 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing12 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %19, i32 0, i32 0
  store i16 %18, i16* %lbearing12, align 2
  %20 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %rbearing = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %20, i32 0, i32 1
  %21 = load i16, i16* %rbearing, align 2
  %22 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing13 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %22, i32 0, i32 1
  store i16 %21, i16* %rbearing13, align 2
  %23 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %ascent = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %23, i32 0, i32 3
  %24 = load i16, i16* %ascent, align 2
  %25 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent14 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %25, i32 0, i32 3
  store i16 %24, i16* %ascent14, align 2
  %26 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %descent = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %26, i32 0, i32 4
  %27 = load i16, i16* %descent, align 2
  %28 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent15 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %28, i32 0, i32 4
  store i16 %27, i16* %descent15, align 2
  store i8 0, i8* %first, align 1
  br label %if.end.63

if.else:                                          ; preds = %if.end.9
  %29 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing16 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %29, i32 0, i32 0
  %30 = load i16, i16* %lbearing16, align 2
  %conv17 = sext i16 %30 to i32
  %31 = load i32, i32* %width, align 4
  %32 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %lbearing18 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %32, i32 0, i32 0
  %33 = load i16, i16* %lbearing18, align 2
  %conv19 = sext i16 %33 to i32
  %add = add nsw i32 %31, %conv19
  %cmp20 = icmp sgt i32 %conv17, %add
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.else
  %34 = load i32, i32* %width, align 4
  %35 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %lbearing23 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %35, i32 0, i32 0
  %36 = load i16, i16* %lbearing23, align 2
  %conv24 = sext i16 %36 to i32
  %add25 = add nsw i32 %34, %conv24
  %conv26 = trunc i32 %add25 to i16
  %37 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing27 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %37, i32 0, i32 0
  store i16 %conv26, i16* %lbearing27, align 2
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.else
  %38 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing29 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %38, i32 0, i32 1
  %39 = load i16, i16* %rbearing29, align 2
  %conv30 = sext i16 %39 to i32
  %40 = load i32, i32* %width, align 4
  %41 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %rbearing31 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %41, i32 0, i32 1
  %42 = load i16, i16* %rbearing31, align 2
  %conv32 = sext i16 %42 to i32
  %add33 = add nsw i32 %40, %conv32
  %cmp34 = icmp slt i32 %conv30, %add33
  br i1 %cmp34, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.28
  %43 = load i32, i32* %width, align 4
  %44 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %rbearing37 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %44, i32 0, i32 1
  %45 = load i16, i16* %rbearing37, align 2
  %conv38 = sext i16 %45 to i32
  %add39 = add nsw i32 %43, %conv38
  %conv40 = trunc i32 %add39 to i16
  %46 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing41 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %46, i32 0, i32 1
  store i16 %conv40, i16* %rbearing41, align 2
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.end.28
  %47 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent43 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %47, i32 0, i32 3
  %48 = load i16, i16* %ascent43, align 2
  %conv44 = sext i16 %48 to i32
  %49 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %ascent45 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %49, i32 0, i32 3
  %50 = load i16, i16* %ascent45, align 2
  %conv46 = sext i16 %50 to i32
  %cmp47 = icmp slt i32 %conv44, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.42
  %51 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %ascent50 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %51, i32 0, i32 3
  %52 = load i16, i16* %ascent50, align 2
  %53 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent51 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %53, i32 0, i32 3
  store i16 %52, i16* %ascent51, align 2
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.42
  %54 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent53 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %54, i32 0, i32 4
  %55 = load i16, i16* %descent53, align 2
  %conv54 = sext i16 %55 to i32
  %56 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %descent55 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %56, i32 0, i32 4
  %57 = load i16, i16* %descent55, align 2
  %conv56 = sext i16 %57 to i32
  %cmp57 = icmp slt i32 %conv54, %conv56
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.52
  %58 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %descent60 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %58, i32 0, i32 4
  %59 = load i16, i16* %descent60, align 2
  %60 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent61 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %60, i32 0, i32 4
  store i16 %59, i16* %descent61, align 2
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.52
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.11
  %61 = load %struct.XCharStruct*, %struct.XCharStruct** @xfont_text_extents.pcm, align 8
  %width64 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %61, i32 0, i32 2
  %62 = load i16, i16* %width64, align 2
  %conv65 = sext i16 %62 to i32
  %63 = load i32, i32* %width, align 4
  %add66 = add nsw i32 %63, %conv65
  store i32 %add66, i32* %width, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.63, %if.then.8, %if.then
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load i32, i32* %width, align 4
  %conv67 = trunc i32 %65 to i16
  %66 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %width68 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %66, i32 0, i32 2
  store i16 %conv67, i16* %width68, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xfont_draw(%struct.glyph_string* %s, i32 %from, i32 %to, i32 %x, i32 %y, i1 zeroext %with_background) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.glyph_string*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %with_background.addr = alloca i8, align 1
  %xfont = alloca %struct.XFontStruct*, align 8
  %len = alloca i32, align 4
  %gc = alloca %struct._XGC*, align 8
  %i = alloca i32, align 4
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %str = alloca i8*, align 8
  store %struct.glyph_string* %s, %struct.glyph_string** %s.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %frombool = zext i1 %with_background to i8
  store i8 %frombool, i8* %with_background.addr, align 1
  %0 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %font = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %0, i32 0, i32 18
  %1 = load %struct.font*, %struct.font** %font, align 8
  %2 = bitcast %struct.font* %1 to %struct.xfont_info*
  %xfont1 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %2, i32 0, i32 2
  %3 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont1, align 8
  store %struct.XFontStruct* %3, %struct.XFontStruct** %xfont, align 8
  %4 = load i32, i32* %to.addr, align 4
  %5 = load i32, i32* %from.addr, align 4
  %sub = sub nsw i32 %4, %5
  store i32 %sub, i32* %len, align 4
  %6 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc2 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %6, i32 0, i32 24
  %7 = load %struct._XGC*, %struct._XGC** %gc2, align 8
  store %struct._XGC* %7, %struct._XGC** %gc, align 8
  %8 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %gc3 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %8, i32 0, i32 24
  %9 = load %struct._XGC*, %struct._XGC** %gc3, align 8
  %10 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %face = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %10, i32 0, i32 17
  %11 = load %struct.face*, %struct.face** %face, align 8
  %gc4 = getelementptr inbounds %struct.face, %struct.face* %11, i32 0, i32 2
  %12 = load %struct._XGC*, %struct._XGC** %gc4, align 8
  %cmp = icmp ne %struct._XGC* %9, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @block_input()
  %13 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %display = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %13, i32 0, i32 10
  %14 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %15 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %16 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %fid = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %16, i32 0, i32 1
  %17 = load i64, i64* %fid, align 8
  %call = call i32 @XSetFont(%struct._XDisplay* %14, %struct._XGC* %15, i64 %17)
  call void @unblock_input()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %min_byte1 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %18, i32 0, i32 5
  %19 = load i32, i32* %min_byte1, align 4
  %cmp5 = icmp eq i32 %19, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %max_byte1 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %20, i32 0, i32 6
  %21 = load i32, i32* %max_byte1, align 4
  %cmp6 = icmp eq i32 %21, 0
  br i1 %cmp6, label %if.then.7, label %if.end.92

if.then.7:                                        ; preds = %land.lhs.true
  store i64 16384, i64* %sa_avail, align 8
  %call8 = call i64 @SPECPDL_INDEX()
  store i64 %call8, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %22 = load i32, i32* %len, align 4
  %conv = sext i32 %22 to i64
  %23 = load i64, i64* %sa_avail, align 8
  %cmp9 = icmp sle i64 %conv, %23
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %24 = load i32, i32* %len, align 4
  %conv11 = sext i32 %24 to i64
  %25 = load i64, i64* %sa_avail, align 8
  %sub12 = sub nsw i64 %25, %conv11
  store i64 %sub12, i64* %sa_avail, align 8
  %26 = load i32, i32* %len, align 4
  %conv13 = sext i32 %26 to i64
  %27 = alloca i8, i64 %conv13
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  store i8 1, i8* %sa_must_free, align 1
  %28 = load i32, i32* %len, align 4
  %conv14 = sext i32 %28 to i64
  %call15 = call i8* @record_xmalloc(i64 %conv14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %27, %cond.true ], [ %call15, %cond.false ]
  store i8* %cond, i8** %str, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %len, align 4
  %cmp16 = icmp slt i32 %29, %30
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %31, i32 0, i32 14
  %32 = load %struct.XChar2b*, %struct.XChar2b** %char2b, align 8
  %33 = load i32, i32* %from.addr, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %32, i64 %idx.ext
  %34 = load i32, i32* %i, align 4
  %idx.ext18 = sext i32 %34 to i64
  %add.ptr19 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr, i64 %idx.ext18
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr19, i32 0, i32 1
  %35 = load i8, i8* %byte2, align 1
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %idxprom
  store i8 %35, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @block_input()
  %39 = load i8, i8* %with_background.addr, align 1
  %tobool = trunc i8 %39 to i1
  br i1 %tobool, label %if.then.20, label %if.else.48

if.then.20:                                       ; preds = %for.end
  %40 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %padding_p = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %40, i32 0, i32 23
  %bf.load = load i8, i8* %padding_p, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = trunc i8 %bf.lshr to i1
  br i1 %bf.cast, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.20
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.34, %if.then.21
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %len, align 4
  %cmp23 = icmp slt i32 %41, %42
  br i1 %cmp23, label %for.body.25, label %for.end.36

for.body.25:                                      ; preds = %for.cond.22
  %43 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %43, i32 0, i32 8
  %44 = load %struct.frame*, %struct.frame** %f, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 62
  %x26 = bitcast %union.output_data* %output_data to %struct.x_output**
  %45 = load %struct.x_output*, %struct.x_output** %x26, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %45, i32 0, i32 44
  %46 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display27 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %46, i32 0, i32 2
  %47 = load %struct._XDisplay*, %struct._XDisplay** %display27, align 8
  %48 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f28 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %48, i32 0, i32 8
  %49 = load %struct.frame*, %struct.frame** %f28, align 8
  %output_data29 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 62
  %x30 = bitcast %union.output_data* %output_data29 to %struct.x_output**
  %50 = load %struct.x_output*, %struct.x_output** %x30, align 8
  %window_desc = getelementptr inbounds %struct.x_output, %struct.x_output* %50, i32 0, i32 9
  %51 = load i64, i64* %window_desc, align 8
  %52 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %53 = load i32, i32* %x.addr, align 4
  %54 = load i32, i32* %i, align 4
  %add = add nsw i32 %53, %54
  %55 = load i32, i32* %y.addr, align 4
  %56 = load i8*, i8** %str, align 8
  %57 = load i32, i32* %i, align 4
  %idx.ext31 = sext i32 %57 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %56, i64 %idx.ext31
  %call33 = call i32 @XDrawImageString(%struct._XDisplay* %47, i64 %51, %struct._XGC* %52, i32 %add, i32 %55, i8* %add.ptr32, i32 1)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.25
  %58 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %58, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.22

for.end.36:                                       ; preds = %for.cond.22
  br label %if.end.47

if.else:                                          ; preds = %if.then.20
  %59 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f37 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %59, i32 0, i32 8
  %60 = load %struct.frame*, %struct.frame** %f37, align 8
  %output_data38 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 62
  %x39 = bitcast %union.output_data* %output_data38 to %struct.x_output**
  %61 = load %struct.x_output*, %struct.x_output** %x39, align 8
  %display_info40 = getelementptr inbounds %struct.x_output, %struct.x_output* %61, i32 0, i32 44
  %62 = load %struct.x_display_info*, %struct.x_display_info** %display_info40, align 8
  %display41 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %62, i32 0, i32 2
  %63 = load %struct._XDisplay*, %struct._XDisplay** %display41, align 8
  %64 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f42 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %64, i32 0, i32 8
  %65 = load %struct.frame*, %struct.frame** %f42, align 8
  %output_data43 = getelementptr inbounds %struct.frame, %struct.frame* %65, i32 0, i32 62
  %x44 = bitcast %union.output_data* %output_data43 to %struct.x_output**
  %66 = load %struct.x_output*, %struct.x_output** %x44, align 8
  %window_desc45 = getelementptr inbounds %struct.x_output, %struct.x_output* %66, i32 0, i32 9
  %67 = load i64, i64* %window_desc45, align 8
  %68 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %69 = load i32, i32* %x.addr, align 4
  %70 = load i32, i32* %y.addr, align 4
  %71 = load i8*, i8** %str, align 8
  %72 = load i32, i32* %len, align 4
  %call46 = call i32 @XDrawImageString(%struct._XDisplay* %63, i64 %67, %struct._XGC* %68, i32 %69, i32 %70, i8* %71, i32 %72)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %for.end.36
  br label %if.end.86

if.else.48:                                       ; preds = %for.end
  %73 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %padding_p49 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %73, i32 0, i32 23
  %bf.load50 = load i8, i8* %padding_p49, align 8
  %bf.lshr51 = lshr i8 %bf.load50, 7
  %bf.cast52 = trunc i8 %bf.lshr51 to i1
  br i1 %bf.cast52, label %if.then.53, label %if.else.74

if.then.53:                                       ; preds = %if.else.48
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.71, %if.then.53
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %len, align 4
  %cmp55 = icmp slt i32 %74, %75
  br i1 %cmp55, label %for.body.57, label %for.end.73

for.body.57:                                      ; preds = %for.cond.54
  %76 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f58 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %76, i32 0, i32 8
  %77 = load %struct.frame*, %struct.frame** %f58, align 8
  %output_data59 = getelementptr inbounds %struct.frame, %struct.frame* %77, i32 0, i32 62
  %x60 = bitcast %union.output_data* %output_data59 to %struct.x_output**
  %78 = load %struct.x_output*, %struct.x_output** %x60, align 8
  %display_info61 = getelementptr inbounds %struct.x_output, %struct.x_output* %78, i32 0, i32 44
  %79 = load %struct.x_display_info*, %struct.x_display_info** %display_info61, align 8
  %display62 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %79, i32 0, i32 2
  %80 = load %struct._XDisplay*, %struct._XDisplay** %display62, align 8
  %81 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f63 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %81, i32 0, i32 8
  %82 = load %struct.frame*, %struct.frame** %f63, align 8
  %output_data64 = getelementptr inbounds %struct.frame, %struct.frame* %82, i32 0, i32 62
  %x65 = bitcast %union.output_data* %output_data64 to %struct.x_output**
  %83 = load %struct.x_output*, %struct.x_output** %x65, align 8
  %window_desc66 = getelementptr inbounds %struct.x_output, %struct.x_output* %83, i32 0, i32 9
  %84 = load i64, i64* %window_desc66, align 8
  %85 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %86 = load i32, i32* %x.addr, align 4
  %87 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %86, %87
  %88 = load i32, i32* %y.addr, align 4
  %89 = load i8*, i8** %str, align 8
  %90 = load i32, i32* %i, align 4
  %idx.ext68 = sext i32 %90 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %89, i64 %idx.ext68
  %call70 = call i32 @XDrawString(%struct._XDisplay* %80, i64 %84, %struct._XGC* %85, i32 %add67, i32 %88, i8* %add.ptr69, i32 1)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.57
  %91 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %91, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.54

for.end.73:                                       ; preds = %for.cond.54
  br label %if.end.85

if.else.74:                                       ; preds = %if.else.48
  %92 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f75 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %92, i32 0, i32 8
  %93 = load %struct.frame*, %struct.frame** %f75, align 8
  %output_data76 = getelementptr inbounds %struct.frame, %struct.frame* %93, i32 0, i32 62
  %x77 = bitcast %union.output_data* %output_data76 to %struct.x_output**
  %94 = load %struct.x_output*, %struct.x_output** %x77, align 8
  %display_info78 = getelementptr inbounds %struct.x_output, %struct.x_output* %94, i32 0, i32 44
  %95 = load %struct.x_display_info*, %struct.x_display_info** %display_info78, align 8
  %display79 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %95, i32 0, i32 2
  %96 = load %struct._XDisplay*, %struct._XDisplay** %display79, align 8
  %97 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f80 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %97, i32 0, i32 8
  %98 = load %struct.frame*, %struct.frame** %f80, align 8
  %output_data81 = getelementptr inbounds %struct.frame, %struct.frame* %98, i32 0, i32 62
  %x82 = bitcast %union.output_data* %output_data81 to %struct.x_output**
  %99 = load %struct.x_output*, %struct.x_output** %x82, align 8
  %window_desc83 = getelementptr inbounds %struct.x_output, %struct.x_output* %99, i32 0, i32 9
  %100 = load i64, i64* %window_desc83, align 8
  %101 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %102 = load i32, i32* %x.addr, align 4
  %103 = load i32, i32* %y.addr, align 4
  %104 = load i8*, i8** %str, align 8
  %105 = load i32, i32* %len, align 4
  %call84 = call i32 @XDrawString(%struct._XDisplay* %96, i64 %100, %struct._XGC* %101, i32 %102, i32 %103, i8* %104, i32 %105)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.74, %for.end.73
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.47
  call void @unblock_input()
  br label %do.body

do.body:                                          ; preds = %if.end.86
  %106 = load i8, i8* %sa_must_free, align 1
  %tobool87 = trunc i8 %106 to i1
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %107 = load i64, i64* %sa_count, align 8
  %call89 = call i64 @builtin_lisp_symbol(i32 0)
  %call90 = call i64 @unbind_to(i64 %107, i64 %call89)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.91
  %108 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %nchars = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %108, i32 0, i32 15
  %109 = load i32, i32* %nchars, align 4
  store i32 %109, i32* %retval
  br label %return

if.end.92:                                        ; preds = %land.lhs.true, %if.end
  call void @block_input()
  %110 = load i8, i8* %with_background.addr, align 1
  %tobool93 = trunc i8 %110 to i1
  br i1 %tobool93, label %if.then.94, label %if.else.138

if.then.94:                                       ; preds = %if.end.92
  %111 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %padding_p95 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %111, i32 0, i32 23
  %bf.load96 = load i8, i8* %padding_p95, align 8
  %bf.lshr97 = lshr i8 %bf.load96, 7
  %bf.cast98 = trunc i8 %bf.lshr97 to i1
  br i1 %bf.cast98, label %if.then.99, label %if.else.123

if.then.99:                                       ; preds = %if.then.94
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.120, %if.then.99
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* %len, align 4
  %cmp101 = icmp slt i32 %112, %113
  br i1 %cmp101, label %for.body.103, label %for.end.122

for.body.103:                                     ; preds = %for.cond.100
  %114 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f104 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %114, i32 0, i32 8
  %115 = load %struct.frame*, %struct.frame** %f104, align 8
  %output_data105 = getelementptr inbounds %struct.frame, %struct.frame* %115, i32 0, i32 62
  %x106 = bitcast %union.output_data* %output_data105 to %struct.x_output**
  %116 = load %struct.x_output*, %struct.x_output** %x106, align 8
  %display_info107 = getelementptr inbounds %struct.x_output, %struct.x_output* %116, i32 0, i32 44
  %117 = load %struct.x_display_info*, %struct.x_display_info** %display_info107, align 8
  %display108 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %117, i32 0, i32 2
  %118 = load %struct._XDisplay*, %struct._XDisplay** %display108, align 8
  %119 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f109 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %119, i32 0, i32 8
  %120 = load %struct.frame*, %struct.frame** %f109, align 8
  %output_data110 = getelementptr inbounds %struct.frame, %struct.frame* %120, i32 0, i32 62
  %x111 = bitcast %union.output_data* %output_data110 to %struct.x_output**
  %121 = load %struct.x_output*, %struct.x_output** %x111, align 8
  %window_desc112 = getelementptr inbounds %struct.x_output, %struct.x_output* %121, i32 0, i32 9
  %122 = load i64, i64* %window_desc112, align 8
  %123 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %124 = load i32, i32* %x.addr, align 4
  %125 = load i32, i32* %i, align 4
  %add113 = add nsw i32 %124, %125
  %126 = load i32, i32* %y.addr, align 4
  %127 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b114 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %127, i32 0, i32 14
  %128 = load %struct.XChar2b*, %struct.XChar2b** %char2b114, align 8
  %129 = load i32, i32* %from.addr, align 4
  %idx.ext115 = sext i32 %129 to i64
  %add.ptr116 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %128, i64 %idx.ext115
  %130 = load i32, i32* %i, align 4
  %idx.ext117 = sext i32 %130 to i64
  %add.ptr118 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr116, i64 %idx.ext117
  %call119 = call i32 @XDrawImageString16(%struct._XDisplay* %118, i64 %122, %struct._XGC* %123, i32 %add113, i32 %126, %struct.XChar2b* %add.ptr118, i32 1)
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.103
  %131 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %131, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.100

for.end.122:                                      ; preds = %for.cond.100
  br label %if.end.137

if.else.123:                                      ; preds = %if.then.94
  %132 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f124 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %132, i32 0, i32 8
  %133 = load %struct.frame*, %struct.frame** %f124, align 8
  %output_data125 = getelementptr inbounds %struct.frame, %struct.frame* %133, i32 0, i32 62
  %x126 = bitcast %union.output_data* %output_data125 to %struct.x_output**
  %134 = load %struct.x_output*, %struct.x_output** %x126, align 8
  %display_info127 = getelementptr inbounds %struct.x_output, %struct.x_output* %134, i32 0, i32 44
  %135 = load %struct.x_display_info*, %struct.x_display_info** %display_info127, align 8
  %display128 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %135, i32 0, i32 2
  %136 = load %struct._XDisplay*, %struct._XDisplay** %display128, align 8
  %137 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f129 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %137, i32 0, i32 8
  %138 = load %struct.frame*, %struct.frame** %f129, align 8
  %output_data130 = getelementptr inbounds %struct.frame, %struct.frame* %138, i32 0, i32 62
  %x131 = bitcast %union.output_data* %output_data130 to %struct.x_output**
  %139 = load %struct.x_output*, %struct.x_output** %x131, align 8
  %window_desc132 = getelementptr inbounds %struct.x_output, %struct.x_output* %139, i32 0, i32 9
  %140 = load i64, i64* %window_desc132, align 8
  %141 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %142 = load i32, i32* %x.addr, align 4
  %143 = load i32, i32* %y.addr, align 4
  %144 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b133 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %144, i32 0, i32 14
  %145 = load %struct.XChar2b*, %struct.XChar2b** %char2b133, align 8
  %146 = load i32, i32* %from.addr, align 4
  %idx.ext134 = sext i32 %146 to i64
  %add.ptr135 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %145, i64 %idx.ext134
  %147 = load i32, i32* %len, align 4
  %call136 = call i32 @XDrawImageString16(%struct._XDisplay* %136, i64 %140, %struct._XGC* %141, i32 %142, i32 %143, %struct.XChar2b* %add.ptr135, i32 %147)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.123, %for.end.122
  br label %if.end.182

if.else.138:                                      ; preds = %if.end.92
  %148 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %padding_p139 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %148, i32 0, i32 23
  %bf.load140 = load i8, i8* %padding_p139, align 8
  %bf.lshr141 = lshr i8 %bf.load140, 7
  %bf.cast142 = trunc i8 %bf.lshr141 to i1
  br i1 %bf.cast142, label %if.then.143, label %if.else.167

if.then.143:                                      ; preds = %if.else.138
  store i32 0, i32* %i, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.164, %if.then.143
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* %len, align 4
  %cmp145 = icmp slt i32 %149, %150
  br i1 %cmp145, label %for.body.147, label %for.end.166

for.body.147:                                     ; preds = %for.cond.144
  %151 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f148 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %151, i32 0, i32 8
  %152 = load %struct.frame*, %struct.frame** %f148, align 8
  %output_data149 = getelementptr inbounds %struct.frame, %struct.frame* %152, i32 0, i32 62
  %x150 = bitcast %union.output_data* %output_data149 to %struct.x_output**
  %153 = load %struct.x_output*, %struct.x_output** %x150, align 8
  %display_info151 = getelementptr inbounds %struct.x_output, %struct.x_output* %153, i32 0, i32 44
  %154 = load %struct.x_display_info*, %struct.x_display_info** %display_info151, align 8
  %display152 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %154, i32 0, i32 2
  %155 = load %struct._XDisplay*, %struct._XDisplay** %display152, align 8
  %156 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f153 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %156, i32 0, i32 8
  %157 = load %struct.frame*, %struct.frame** %f153, align 8
  %output_data154 = getelementptr inbounds %struct.frame, %struct.frame* %157, i32 0, i32 62
  %x155 = bitcast %union.output_data* %output_data154 to %struct.x_output**
  %158 = load %struct.x_output*, %struct.x_output** %x155, align 8
  %window_desc156 = getelementptr inbounds %struct.x_output, %struct.x_output* %158, i32 0, i32 9
  %159 = load i64, i64* %window_desc156, align 8
  %160 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %161 = load i32, i32* %x.addr, align 4
  %162 = load i32, i32* %i, align 4
  %add157 = add nsw i32 %161, %162
  %163 = load i32, i32* %y.addr, align 4
  %164 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b158 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %164, i32 0, i32 14
  %165 = load %struct.XChar2b*, %struct.XChar2b** %char2b158, align 8
  %166 = load i32, i32* %from.addr, align 4
  %idx.ext159 = sext i32 %166 to i64
  %add.ptr160 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %165, i64 %idx.ext159
  %167 = load i32, i32* %i, align 4
  %idx.ext161 = sext i32 %167 to i64
  %add.ptr162 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %add.ptr160, i64 %idx.ext161
  %call163 = call i32 @XDrawString16(%struct._XDisplay* %155, i64 %159, %struct._XGC* %160, i32 %add157, i32 %163, %struct.XChar2b* %add.ptr162, i32 1)
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.147
  %168 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %168, 1
  store i32 %inc165, i32* %i, align 4
  br label %for.cond.144

for.end.166:                                      ; preds = %for.cond.144
  br label %if.end.181

if.else.167:                                      ; preds = %if.else.138
  %169 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f168 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %169, i32 0, i32 8
  %170 = load %struct.frame*, %struct.frame** %f168, align 8
  %output_data169 = getelementptr inbounds %struct.frame, %struct.frame* %170, i32 0, i32 62
  %x170 = bitcast %union.output_data* %output_data169 to %struct.x_output**
  %171 = load %struct.x_output*, %struct.x_output** %x170, align 8
  %display_info171 = getelementptr inbounds %struct.x_output, %struct.x_output* %171, i32 0, i32 44
  %172 = load %struct.x_display_info*, %struct.x_display_info** %display_info171, align 8
  %display172 = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %172, i32 0, i32 2
  %173 = load %struct._XDisplay*, %struct._XDisplay** %display172, align 8
  %174 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %f173 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %174, i32 0, i32 8
  %175 = load %struct.frame*, %struct.frame** %f173, align 8
  %output_data174 = getelementptr inbounds %struct.frame, %struct.frame* %175, i32 0, i32 62
  %x175 = bitcast %union.output_data* %output_data174 to %struct.x_output**
  %176 = load %struct.x_output*, %struct.x_output** %x175, align 8
  %window_desc176 = getelementptr inbounds %struct.x_output, %struct.x_output* %176, i32 0, i32 9
  %177 = load i64, i64* %window_desc176, align 8
  %178 = load %struct._XGC*, %struct._XGC** %gc, align 8
  %179 = load i32, i32* %x.addr, align 4
  %180 = load i32, i32* %y.addr, align 4
  %181 = load %struct.glyph_string*, %struct.glyph_string** %s.addr, align 8
  %char2b177 = getelementptr inbounds %struct.glyph_string, %struct.glyph_string* %181, i32 0, i32 14
  %182 = load %struct.XChar2b*, %struct.XChar2b** %char2b177, align 8
  %183 = load i32, i32* %from.addr, align 4
  %idx.ext178 = sext i32 %183 to i64
  %add.ptr179 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %182, i64 %idx.ext178
  %184 = load i32, i32* %len, align 4
  %call180 = call i32 @XDrawString16(%struct._XDisplay* %173, i64 %177, %struct._XGC* %178, i32 %179, i32 %180, %struct.XChar2b* %add.ptr179, i32 %184)
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.167, %for.end.166
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.137
  call void @unblock_input()
  %185 = load i32, i32* %len, align 4
  store i32 %185, i32* %retval
  br label %return

return:                                           ; preds = %if.end.182, %do.end
  %186 = load i32, i32* %retval
  ret i32 %186
}

; Function Attrs: nounwind uwtable
define internal i32 @xfont_check(%struct.frame* %f, %struct.font* %font) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %font.addr = alloca %struct.font*, align 8
  %xfont = alloca %struct.xfont_info*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.xfont_info*
  store %struct.xfont_info* %1, %struct.xfont_info** %xfont, align 8
  %2 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %output_data = getelementptr inbounds %struct.frame, %struct.frame* %2, i32 0, i32 62
  %x = bitcast %union.output_data* %output_data to %struct.x_output**
  %3 = load %struct.x_output*, %struct.x_output** %x, align 8
  %display_info = getelementptr inbounds %struct.x_output, %struct.x_output* %3, i32 0, i32 44
  %4 = load %struct.x_display_info*, %struct.x_display_info** %display_info, align 8
  %display = getelementptr inbounds %struct.x_display_info, %struct.x_display_info* %4, i32 0, i32 2
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display, align 8
  %6 = load %struct.xfont_info*, %struct.xfont_info** %xfont, align 8
  %display1 = getelementptr inbounds %struct.xfont_info, %struct.xfont_info* %6, i32 0, i32 1
  %7 = load %struct._XDisplay*, %struct._XDisplay** %display1, align 8
  %cmp = icmp eq %struct._XDisplay* %5, %7
  %cond = select i1 %cmp, i32 0, i32 -1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @syms_of_xfont() #0 {
entry:
  %.compoundliteral = alloca [2 x i64], align 8
  call void @staticpro(i64* @xfont_scripts_cache)
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call = call i64 @builtin_lisp_symbol(i32 129)
  store i64 %call, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %call1 = call i64 @builtin_lisp_symbol(i32 371)
  store i64 %call1, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call2 = call i64 @Fmake_hash_table(i64 2, i64* %arraydecay)
  store i64 %call2, i64* @xfont_scripts_cache, align 8
  call void @staticpro(i64* @xfont_scratch_props)
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @Fmake_vector(i64 34, i64 %call3)
  store i64 %call4, i64* @xfont_scratch_props, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 1045)
  store i64 %call5, i64* getelementptr inbounds (%struct.font_driver, %struct.font_driver* bitcast ({ i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }* @xfont_driver to %struct.font_driver*), i32 0, i32 0), align 8
  call void @register_font_driver(%struct.font_driver* bitcast ({ i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }* @xfont_driver to %struct.font_driver*), %struct.frame* null)
  ret void
}

declare void @staticpro(i64*) #1

declare i64 @Fmake_hash_table(i64, i64*) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @Fmake_vector(i64, i64) #1

declare void @register_font_driver(%struct.font_driver*, %struct.frame*) #1

declare i64 @AREF(i64, i64) #1

declare i64 @assq_no_quit(i64, i64) #1

declare i64 @font_unparse_xlfd(i64, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @xfont_encode_coding_xlfd(i8* %xlfd) #0 {
entry:
  %retval = alloca i32, align 4
  %xlfd.addr = alloca i8*, align 8
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %len = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %xlfd, i8** %xlfd.addr, align 8
  %0 = load i8*, i8** %xlfd.addr, align 8
  store i8* %0, i8** %p0, align 8
  %1 = load i8*, i8** %xlfd.addr, align 8
  store i8* %1, i8** %p1, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %p0, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %p0, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 128
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  %6 = load i8*, i8** %p0, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p0, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = zext i8 %7 to i32
  br label %cond.end.42

cond.false:                                       ; preds = %while.body
  %8 = load i8*, i8** %p0, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %and5 = and i32 %conv4, 32
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.false.18, label %cond.true.7

cond.true.7:                                      ; preds = %cond.false
  %10 = load i8*, i8** %p0, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %p0, align 8
  %11 = load i8*, i8** %p0, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 -2
  %12 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %and10 = and i32 %conv9, 31
  %shl = shl i32 %and10, 6
  %13 = load i8*, i8** %p0, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %conv12, 63
  %or = or i32 %shl, %and13
  %15 = load i8*, i8** %p0, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 -2
  %16 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %cmp = icmp slt i32 %conv15, 194
  %cond = select i1 %cmp, i32 4194176, i32 0
  %or17 = or i32 %or, %cond
  br label %cond.end.40

cond.false.18:                                    ; preds = %cond.false
  %17 = load i8*, i8** %p0, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %and21 = and i32 %conv20, 16
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.false.38, label %cond.true.23

cond.true.23:                                     ; preds = %cond.false.18
  %19 = load i8*, i8** %p0, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %19, i64 3
  store i8* %add.ptr24, i8** %p0, align 8
  %20 = load i8*, i8** %p0, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 -3
  %21 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %and27 = and i32 %conv26, 15
  %shl28 = shl i32 %and27, 12
  %22 = load i8*, i8** %p0, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 -2
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %and31 = and i32 %conv30, 63
  %shl32 = shl i32 %and31, 6
  %or33 = or i32 %shl28, %shl32
  %24 = load i8*, i8** %p0, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %24, i64 -1
  %25 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %25 to i32
  %and36 = and i32 %conv35, 63
  %or37 = or i32 %or33, %and36
  br label %cond.end

cond.false.38:                                    ; preds = %cond.false.18
  %26 = load i8*, i8** %p0, align 8
  %call = call i32 @string_char(i8* %26, i8** %p0, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.38, %cond.true.23
  %cond39 = phi i32 [ %or37, %cond.true.23 ], [ %call, %cond.false.38 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end, %cond.true.7
  %cond41 = phi i32 [ %or17, %cond.true.7 ], [ %cond39, %cond.end ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end.40, %cond.true
  %cond43 = phi i32 [ %conv2, %cond.true ], [ %cond41, %cond.end.40 ]
  store i32 %cond43, i32* %c, align 4
  %27 = load i32, i32* %c, align 4
  %cmp44 = icmp sge i32 %27, 256
  br i1 %cmp44, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.42
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.42
  %28 = load i32, i32* %c, align 4
  %conv46 = trunc i32 %28 to i8
  %29 = load i8*, i8** %p1, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr47, i8** %p1, align 8
  store i8 %conv46, i8* %29, align 1
  %30 = load i32, i32* %len, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load i8*, i8** %p1, align 8
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %len, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i64 @CDR(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @xfont_list_pattern(%struct._XDisplay* %display, i8* %pattern, i64 %registry, i64 %script) #0 {
entry:
  %retval = alloca i64, align 8
  %display.addr = alloca %struct._XDisplay*, align 8
  %pattern.addr = alloca i8*, align 8
  %registry.addr = alloca i64, align 8
  %script.addr = alloca i64, align 8
  %list = alloca i64, align 8
  %chars = alloca i64, align 8
  %encoding = alloca %struct.charset*, align 8
  %repertory = alloca %struct.charset*, align 8
  %i = alloca i32, align 4
  %limit = alloca i32, align 4
  %num_fonts = alloca i32, align 4
  %names = alloca i8**, align 8
  %buf = alloca [512 x i8], align 16
  %indices = alloca i8**, align 8
  %props = alloca i64*, align 8
  %scripts = alloca i64, align 8
  %entity = alloca i64, align 8
  %skipped_some_scalable_fonts = alloca i8, align 1
  %i_pass = alloca i32, align 4
  %len = alloca i64, align 8
  %size = alloca i32, align 4
  %tail = alloca i64, align 8
  %elt = alloca i64, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i64 %registry, i64* %registry.addr, align 8
  store i64 %script, i64* %script.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %list, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %chars, align 8
  store %struct.charset* null, %struct.charset** %repertory, align 8
  %0 = load i64, i64* %registry.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %registry.addr, align 8
  %call3 = call i32 @font_registry_charsets(i64 %1, %struct.charset** %encoding, %struct.charset** %repertory)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %script.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %2, %call6
  br i1 %cmp7, label %if.end.22, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %3 = load i64, i64* %script.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 260), align 8
  %call9 = call i64 @assq_no_quit(i64 %3, i64 %4)
  store i64 %call9, i64* %chars, align 8
  %5 = load i64, i64* %chars, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %5, %call10
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.8
  %6 = load i64, i64* %chars, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  store i64 %9, i64* %chars, align 8
  %10 = load %struct.charset*, %struct.charset** %repertory, align 8
  %tobool = icmp ne %struct.charset* %10, null
  br i1 %tobool, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end.14
  %11 = load i64, i64* %chars, align 8
  %12 = load %struct.charset*, %struct.charset** %encoding, align 8
  %13 = load %struct.charset*, %struct.charset** %repertory, align 8
  %call16 = call zeroext i1 @xfont_chars_supported(i64 %11, %struct.XFontStruct* null, %struct.charset* %12, %struct.charset* %13)
  br i1 %call16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.then.15
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call18, i64* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* %script.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.end.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  call void @block_input()
  %14 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  call void @x_catch_errors(%struct._XDisplay* %14)
  store i32 512, i32* %limit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %15 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %16 = load i8*, i8** %pattern.addr, align 8
  %17 = load i32, i32* %limit, align 4
  %call23 = call i8** @XListFonts(%struct._XDisplay* %15, i8* %16, i32 %17, i32* %num_fonts)
  store i8** %call23, i8*** %names, align 8
  %18 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %call24 = call zeroext i1 @x_had_errors_p(%struct._XDisplay* %18)
  br i1 %call24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.cond
  %19 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  call void @x_clear_errors(%struct._XDisplay* %19)
  store i32 0, i32* %num_fonts, align 4
  br label %for.end

if.end.26:                                        ; preds = %for.cond
  %20 = load i32, i32* %num_fonts, align 4
  %21 = load i32, i32* %limit, align 4
  %cmp27 = icmp slt i32 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  br label %for.end

if.end.29:                                        ; preds = %if.end.26
  %22 = load i8**, i8*** %names, align 8
  %call30 = call i32 @XFreeFontNames(i8** %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %23 = load i32, i32* %limit, align 4
  %mul = mul nsw i32 %23, 2
  store i32 %mul, i32* %limit, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %if.then.25
  %24 = load i32, i32* %num_fonts, align 4
  %cmp31 = icmp sgt i32 %24, 0
  br i1 %cmp31, label %if.then.32, label %if.end.259

if.then.32:                                       ; preds = %for.end
  %25 = load i32, i32* %num_fonts, align 4
  %conv = sext i32 %25 to i64
  %mul33 = mul i64 8, %conv
  %26 = alloca i8, i64 %mul33
  %27 = bitcast i8* %26 to i8**
  store i8** %27, i8*** %indices, align 8
  %28 = load i64, i64* @xfont_scratch_props, align 8
  %call34 = call %struct.Lisp_Vector* @XVECTOR(i64 %28)
  %contents = getelementptr inbounds %struct.Lisp_Vector, %struct.Lisp_Vector* %call34, i32 0, i32 1
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %contents, i32 0, i32 0
  store i64* %arraydecay, i64** %props, align 8
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %scripts, align 8
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call36, i64* %entity, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.44, %if.then.32
  %29 = load i32, i32* %i, align 4
  %conv38 = sext i32 %29 to i64
  %30 = load i64, i64* @xfont_scratch_props, align 8
  %call39 = call i64 @ASIZE(i64 %30)
  %cmp40 = icmp slt i64 %conv38, %call39
  br i1 %cmp40, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond.37
  %31 = load i64, i64* @xfont_scratch_props, align 8
  %32 = load i32, i32* %i, align 4
  %conv42 = sext i32 %32 to i64
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  call void @ASET(i64 %31, i64 %conv42, i64 %call43)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.37

for.end.45:                                       ; preds = %for.cond.37
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.52, %for.end.45
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %num_fonts, align 4
  %cmp47 = icmp slt i32 %34, %35
  br i1 %cmp47, label %for.body.49, label %for.end.54

for.body.49:                                      ; preds = %for.cond.46
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load i8**, i8*** %names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  %38 = load i8*, i8** %arrayidx, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %39 to i64
  %40 = load i8**, i8*** %indices, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %40, i64 %idxprom50
  store i8* %38, i8** %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.49
  %41 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %41, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.46

for.end.54:                                       ; preds = %for.cond.46
  %42 = load i8**, i8*** %indices, align 8
  %43 = bitcast i8** %42 to i8*
  %44 = load i32, i32* %num_fonts, align 4
  %conv55 = sext i32 %44 to i64
  call void @qsort(i8* %43, i64 %conv55, i64 8, i32 (i8*, i8*)* @compare_font_names)
  store i8 0, i8* %skipped_some_scalable_fonts, align 1
  store i32 0, i32* %i_pass, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.255, %for.end.54
  %45 = load i32, i32* %i_pass, align 4
  %cmp57 = icmp eq i32 %45, 0
  br i1 %cmp57, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond.56
  %46 = load i32, i32* %i_pass, align 4
  %cmp59 = icmp eq i32 %46, 1
  br i1 %cmp59, label %land.lhs.true.61, label %land.end

land.lhs.true.61:                                 ; preds = %lor.rhs
  %47 = load i64, i64* %list, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %47, %call62
  br i1 %cmp63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.61
  %48 = load i8, i8* %skipped_some_scalable_fonts, align 1
  %tobool65 = trunc i8 %48 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.61, %lor.rhs
  %49 = phi i1 [ false, %land.lhs.true.61 ], [ false, %lor.rhs ], [ %tobool65, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %for.cond.56
  %50 = phi i1 [ true, %for.cond.56 ], [ %49, %land.end ]
  br i1 %50, label %for.body.67, label %for.end.257

for.body.67:                                      ; preds = %lor.end
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.252, %for.body.67
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %num_fonts, align 4
  %cmp69 = icmp slt i32 %51, %52
  br i1 %cmp69, label %for.body.71, label %for.end.254

for.body.71:                                      ; preds = %for.cond.68
  %53 = load i32, i32* %i, align 4
  %cmp72 = icmp sgt i32 %53, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.84

land.lhs.true.74:                                 ; preds = %for.body.71
  %54 = load i32, i32* %i, align 4
  %sub75 = sub nsw i32 %54, 1
  %idxprom76 = sext i32 %sub75 to i64
  %55 = load i8**, i8*** %indices, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %55, i64 %idxprom76
  %56 = load i8*, i8** %arrayidx77, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %57 to i64
  %58 = load i8**, i8*** %indices, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %58, i64 %idxprom78
  %59 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i32 @xstrcasecmp(i8* %56, i8* %59)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %land.lhs.true.74
  br label %for.inc.252

if.end.84:                                        ; preds = %land.lhs.true.74, %for.body.71
  %60 = load i64, i64* %entity, align 8
  %call85 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp86 = icmp eq i64 %60, %call85
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.end.84
  %call89 = call i64 @font_make_entity()
  store i64 %call89, i64* %entity, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end.84
  %61 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %61 to i64
  %62 = load i8**, i8*** %indices, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %62, i64 %idxprom91
  %63 = load i8*, i8** %arrayidx92, align 8
  %arraydecay93 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call94 = call i64 @xfont_decode_coding_xlfd(i8* %63, i32 -1, i8* %arraydecay93)
  store i64 %call94, i64* %len, align 8
  %arraydecay95 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %64 = load i64, i64* %len, align 8
  %65 = load i64, i64* %entity, align 8
  %call96 = call i32 @font_parse_xlfd(i8* %arraydecay95, i64 %64, i64 %65)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.90
  br label %for.inc.252

if.end.100:                                       ; preds = %if.end.90
  %66 = load i64, i64* %entity, align 8
  %call101 = call i64 @builtin_lisp_symbol(i32 1045)
  call void @ASET(i64 %66, i64 0, i64 %call101)
  %67 = load i64, i64* %entity, align 8
  %call102 = call i64 @AREF(i64 %67, i64 9)
  %and = and i64 %call102, 7
  %conv103 = trunc i64 %and to i32
  %and104 = and i32 %conv103, -5
  %cmp105 = icmp eq i32 %and104, 2
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.124

land.lhs.true.107:                                ; preds = %if.end.100
  %68 = load i64, i64* %entity, align 8
  %call108 = call i64 @AREF(i64 %68, i64 11)
  %and109 = and i64 %call108, 7
  %conv110 = trunc i64 %and109 to i32
  %and111 = and i32 %conv110, -5
  %cmp112 = icmp eq i32 %and111, 2
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.124

land.lhs.true.114:                                ; preds = %land.lhs.true.107
  %69 = load i64, i64* %entity, align 8
  %call115 = call i64 @AREF(i64 %69, i64 9)
  %shr = ashr i64 %call115, 2
  %cmp116 = icmp ne i64 %shr, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.124

land.lhs.true.118:                                ; preds = %land.lhs.true.114
  %70 = load i64, i64* %entity, align 8
  %call119 = call i64 @AREF(i64 %70, i64 11)
  %shr120 = ashr i64 %call119, 2
  %cmp121 = icmp eq i64 %shr120, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %land.lhs.true.118
  br label %for.inc.252

if.end.124:                                       ; preds = %land.lhs.true.118, %land.lhs.true.114, %land.lhs.true.107, %if.end.100
  %71 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 259), align 8
  %call125 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp126 = icmp eq i64 %71, %call125
  br i1 %cmp126, label %if.then.128, label %if.else.157

if.then.128:                                      ; preds = %if.end.124
  store i32 0, i32* %size, align 4
  %72 = load i64, i64* %entity, align 8
  %call129 = call i64 @AREF(i64 %72, i64 8)
  %and130 = and i64 %call129, 7
  %conv131 = trunc i64 %and130 to i32
  %and132 = and i32 %conv131, -5
  %cmp133 = icmp eq i32 %and132, 2
  br i1 %cmp133, label %if.then.135, label %if.else

if.then.135:                                      ; preds = %if.then.128
  %73 = load i64, i64* %entity, align 8
  %call136 = call i64 @AREF(i64 %73, i64 8)
  %shr137 = ashr i64 %call136, 2
  %conv138 = trunc i64 %shr137 to i32
  store i32 %conv138, i32* %size, align 4
  br label %if.end.149

if.else:                                          ; preds = %if.then.128
  %74 = load i64, i64* %entity, align 8
  %call139 = call i64 @AREF(i64 %74, i64 8)
  %and140 = and i64 %call139, 7
  %conv141 = trunc i64 %and140 to i32
  %cmp142 = icmp eq i32 %conv141, 7
  br i1 %cmp142, label %if.then.144, label %if.end.148

if.then.144:                                      ; preds = %if.else
  %75 = load i64, i64* %entity, align 8
  %call145 = call i64 @AREF(i64 %75, i64 8)
  %call146 = call double @XFLOAT_DATA(i64 %call145)
  %conv147 = fptosi double %call146 to i32
  store i32 %conv147, i32* %size, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.144, %if.else
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.135
  %76 = load i32, i32* %size, align 4
  %cmp150 = icmp eq i32 %76, 0
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.156

land.lhs.true.152:                                ; preds = %if.end.149
  %77 = load i32, i32* %i_pass, align 4
  %cmp153 = icmp eq i32 %77, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %land.lhs.true.152
  store i8 1, i8* %skipped_some_scalable_fonts, align 1
  br label %for.inc.252

if.end.156:                                       ; preds = %land.lhs.true.152, %if.end.149
  br label %if.end.192

if.else.157:                                      ; preds = %if.end.124
  %78 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 259), align 8
  %and158 = and i64 %78, 7
  %conv159 = trunc i64 %and158 to i32
  %cmp160 = icmp eq i32 %conv159, 3
  br i1 %cmp160, label %if.then.162, label %if.end.191

if.then.162:                                      ; preds = %if.else.157
  %79 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 259), align 8
  store i64 %79, i64* %tail, align 8
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.180, %if.then.162
  %80 = load i64, i64* %tail, align 8
  %and164 = and i64 %80, 7
  %conv165 = trunc i64 %and164 to i32
  %cmp166 = icmp eq i32 %conv165, 3
  br i1 %cmp166, label %for.body.168, label %for.end.184

for.body.168:                                     ; preds = %for.cond.163
  %81 = load i64, i64* %tail, align 8
  %sub169 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub169 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 0
  %84 = load i64, i64* %car, align 8
  store i64 %84, i64* %elt, align 8
  %85 = load i64, i64* %elt, align 8
  %call170 = call zeroext i1 @STRINGP(i64 %85)
  br i1 %call170, label %land.lhs.true.172, label %if.end.179

land.lhs.true.172:                                ; preds = %for.body.168
  %86 = load i64, i64* %elt, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %87 to i64
  %88 = load i8**, i8*** %indices, align 8
  %arrayidx174 = getelementptr inbounds i8*, i8** %88, i64 %idxprom173
  %89 = load i8*, i8** %arrayidx174, align 8
  %90 = load i64, i64* %len, align 8
  %call175 = call i64 @fast_c_string_match_ignore_case(i64 %86, i8* %89, i64 %90)
  %cmp176 = icmp sge i64 %call175, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %land.lhs.true.172
  br label %for.end.184

if.end.179:                                       ; preds = %land.lhs.true.172, %for.body.168
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %91 = load i64, i64* %tail, align 8
  %sub181 = sub nsw i64 %91, 3
  %92 = inttoptr i64 %sub181 to i8*
  %93 = bitcast i8* %92 to %struct.Lisp_Cons*
  %u182 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %93, i32 0, i32 1
  %cdr183 = bitcast %union.anon.10* %u182 to i64*
  %94 = load i64, i64* %cdr183, align 8
  store i64 %94, i64* %tail, align 8
  br label %for.cond.163

for.end.184:                                      ; preds = %if.then.178, %for.cond.163
  %95 = load i64, i64* %tail, align 8
  %and185 = and i64 %95, 7
  %conv186 = trunc i64 %and185 to i32
  %cmp187 = icmp eq i32 %conv186, 3
  br i1 %cmp187, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %for.end.184
  br label %for.inc.252

if.end.190:                                       ; preds = %for.end.184
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.else.157
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.end.156
  %96 = load i64, i64* %entity, align 8
  %call193 = call i64 @AREF(i64 %96, i64 4)
  %call194 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp195 = icmp eq i64 %call193, %call194
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.end.192
  br label %for.inc.252

if.end.198:                                       ; preds = %if.end.192
  %97 = load i64, i64* %registry.addr, align 8
  %98 = load i64, i64* %entity, align 8
  %call199 = call i64 @AREF(i64 %98, i64 4)
  %cmp200 = icmp eq i64 %97, %call199
  br i1 %cmp200, label %if.end.209, label %if.then.202

if.then.202:                                      ; preds = %if.end.198
  %99 = load i64, i64* %entity, align 8
  %call203 = call i64 @AREF(i64 %99, i64 4)
  store i64 %call203, i64* %registry.addr, align 8
  %100 = load i64, i64* %registry.addr, align 8
  %call204 = call i32 @font_registry_charsets(i64 %100, %struct.charset** %encoding, %struct.charset** %repertory)
  %cmp205 = icmp slt i32 %call204, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.then.202
  store %struct.charset* null, %struct.charset** %encoding, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %if.then.202
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.198
  %101 = load %struct.charset*, %struct.charset** %encoding, align 8
  %tobool210 = icmp ne %struct.charset* %101, null
  br i1 %tobool210, label %if.end.212, label %if.then.211

if.then.211:                                      ; preds = %if.end.209
  br label %for.inc.252

if.end.212:                                       ; preds = %if.end.209
  %102 = load %struct.charset*, %struct.charset** %repertory, align 8
  %tobool213 = icmp ne %struct.charset* %102, null
  br i1 %tobool213, label %if.then.214, label %if.end.224

if.then.214:                                      ; preds = %if.end.212
  %103 = load i64, i64* %script.addr, align 8
  %call215 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp216 = icmp eq i64 %103, %call215
  br i1 %cmp216, label %if.then.220, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.214
  %104 = load i64, i64* %chars, align 8
  %105 = load %struct.charset*, %struct.charset** %encoding, align 8
  %106 = load %struct.charset*, %struct.charset** %repertory, align 8
  %call218 = call zeroext i1 @xfont_chars_supported(i64 %104, %struct.XFontStruct* null, %struct.charset* %105, %struct.charset* %106)
  br i1 %call218, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %lor.lhs.false, %if.then.214
  %107 = load i64, i64* %entity, align 8
  %108 = load i64, i64* %list, align 8
  %call221 = call i64 @Fcons(i64 %107, i64 %108)
  store i64 %call221, i64* %list, align 8
  %call222 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call222, i64* %entity, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %lor.lhs.false
  br label %for.inc.252

if.end.224:                                       ; preds = %if.end.212
  %109 = load i64*, i64** %props, align 8
  %110 = bitcast i64* %109 to i8*
  %111 = load i64, i64* %entity, align 8
  %call225 = call i64* @aref_addr(i64 %111, i64 1)
  %112 = bitcast i64* %call225 to i8*
  %call226 = call i32 @memcmp(i8* %110, i8* %112, i64 56) #5
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then.233, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %if.end.224
  %113 = load i64, i64* %entity, align 8
  %call229 = call i64 @AREF(i64 %113, i64 10)
  %114 = load i64*, i64** %props, align 8
  %arrayidx230 = getelementptr inbounds i64, i64* %114, i64 7
  %115 = load i64, i64* %arrayidx230, align 8
  %cmp231 = icmp eq i64 %call229, %115
  br i1 %cmp231, label %if.end.239, label %if.then.233

if.then.233:                                      ; preds = %lor.lhs.false.228, %if.end.224
  %116 = load i64, i64* @xfont_scratch_props, align 8
  %117 = load i64, i64* %entity, align 8
  %call234 = call i64* @aref_addr(i64 %117, i64 1)
  call void @vcopy(i64 %116, i64 0, i64* %call234, i64 7)
  %118 = load i64, i64* @xfont_scratch_props, align 8
  %119 = load i64, i64* %entity, align 8
  %call235 = call i64 @AREF(i64 %119, i64 10)
  call void @ASET(i64 %118, i64 7, i64 %call235)
  %120 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %121 to i64
  %122 = load i8**, i8*** %indices, align 8
  %arrayidx237 = getelementptr inbounds i8*, i8** %122, i64 %idxprom236
  %123 = load i8*, i8** %arrayidx237, align 8
  %124 = load i64, i64* @xfont_scratch_props, align 8
  %125 = load %struct.charset*, %struct.charset** %encoding, align 8
  %call238 = call i64 @xfont_supported_scripts(%struct._XDisplay* %120, i8* %123, i64 %124, %struct.charset* %125)
  store i64 %call238, i64* %scripts, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.233, %lor.lhs.false.228
  %126 = load i64, i64* %script.addr, align 8
  %call240 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp241 = icmp eq i64 %126, %call240
  br i1 %cmp241, label %if.then.248, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.end.239
  %127 = load i64, i64* %script.addr, align 8
  %128 = load i64, i64* %scripts, align 8
  %call244 = call i64 @Fmemq(i64 %127, i64 %128)
  %call245 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp246 = icmp eq i64 %call244, %call245
  br i1 %cmp246, label %if.end.251, label %if.then.248

if.then.248:                                      ; preds = %lor.lhs.false.243, %if.end.239
  %129 = load i64, i64* %entity, align 8
  %130 = load i64, i64* %list, align 8
  %call249 = call i64 @Fcons(i64 %129, i64 %130)
  store i64 %call249, i64* %list, align 8
  %call250 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call250, i64* %entity, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.248, %lor.lhs.false.243
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251, %if.end.223, %if.then.211, %if.then.197, %if.then.189, %if.then.155, %if.then.123, %if.then.99, %if.then.83
  %131 = load i32, i32* %i, align 4
  %inc253 = add nsw i32 %131, 1
  store i32 %inc253, i32* %i, align 4
  br label %for.cond.68

for.end.254:                                      ; preds = %for.cond.68
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.end.254
  %132 = load i32, i32* %i_pass, align 4
  %inc256 = add nsw i32 %132, 1
  store i32 %inc256, i32* %i_pass, align 4
  br label %for.cond.56

for.end.257:                                      ; preds = %lor.end
  %133 = load i8**, i8*** %names, align 8
  %call258 = call i32 @XFreeFontNames(i8** %133)
  br label %if.end.259

if.end.259:                                       ; preds = %for.end.257, %for.end
  call void @x_uncatch_errors()
  call void @unblock_input()
  br label %do.body

do.body:                                          ; preds = %if.end.259
  %134 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call260 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp261 = icmp eq i64 %134, %call260
  br i1 %cmp261, label %if.end.265, label %if.then.263

if.then.263:                                      ; preds = %do.body
  %135 = load i8*, i8** %pattern.addr, align 8
  %call264 = call i64 @build_string(i8* %135)
  %136 = load i64, i64* %list, align 8
  call void @font_add_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 %call264, i64 %136)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.265
  %137 = load i64, i64* %list, align 8
  store i64 %137, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.17, %if.then.12, %if.then
  %138 = load i64, i64* %retval
  ret i64 %138
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i64 @Fassoc(i64, i64) #1

declare i64 @SYMBOL_NAME(i64) #1

declare i64 @SBYTES(i64) #1

declare zeroext i1 @STRINGP(i64) #1

declare i8* @lispstpcpy(i8*, i64) #1

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @string_char(i8*, i8**, i32*) #1

declare i32 @font_registry_charsets(i64, %struct.charset**, %struct.charset**) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @xfont_chars_supported(i64 %chars, %struct.XFontStruct* %xfont, %struct.charset* %encoding, %struct.charset* %repertory) #0 {
entry:
  %retval = alloca i1, align 1
  %chars.addr = alloca i64, align 8
  %xfont.addr = alloca %struct.XFontStruct*, align 8
  %encoding.addr = alloca %struct.charset*, align 8
  %repertory.addr = alloca %struct.charset*, align 8
  %charset = alloca %struct.charset*, align 8
  %c = alloca i32, align 4
  %code = alloca i32, align 4
  %char2b = alloca %struct.XChar2b, align 1
  %i = alloca i64, align 8
  %c132 = alloca i32, align 4
  %code136 = alloca i32, align 4
  %char2b250 = alloca %struct.XChar2b, align 1
  store i64 %chars, i64* %chars.addr, align 8
  store %struct.XFontStruct* %xfont, %struct.XFontStruct** %xfont.addr, align 8
  store %struct.charset* %encoding, %struct.charset** %encoding.addr, align 8
  store %struct.charset* %repertory, %struct.charset** %repertory.addr, align 8
  %0 = load %struct.charset*, %struct.charset** %repertory.addr, align 8
  %tobool = icmp ne %struct.charset* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.charset*, %struct.charset** %repertory.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.charset*, %struct.charset** %encoding.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.charset* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct.charset* %cond, %struct.charset** %charset, align 8
  %3 = load i64, i64* %chars.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i64, i64* %chars.addr, align 8
  %and2 = and i64 %4, 7
  %conv3 = trunc i64 %and2 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %chars.addr, align 8
  %sub = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 0
  %8 = load i64, i64* %car, align 8
  %shr = ashr i64 %8, 2
  %conv6 = trunc i64 %shr to i32
  store i32 %conv6, i32* %c, align 4
  br i1 true, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %for.body
  %9 = load i32, i32* %c, align 4
  %add = add i32 %9, 0
  %cmp8 = icmp ult i32 %add, 128
  br i1 %cmp8, label %land.lhs.true, label %cond.false.17

cond.false.10:                                    ; preds = %for.body
  %10 = load i32, i32* %c, align 4
  %conv11 = sext i32 %10 to i64
  %add12 = add i64 %conv11, 0
  %cmp13 = icmp ult i64 %add12, 128
  br i1 %cmp13, label %land.lhs.true, label %cond.false.17

land.lhs.true:                                    ; preds = %cond.false.10, %cond.true.7
  %11 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %11, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %land.lhs.true
  %12 = load i32, i32* %c, align 4
  br label %cond.end.99

cond.false.17:                                    ; preds = %land.lhs.true, %cond.false.10, %cond.true.7
  %13 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 5
  %bf.load18 = load i8, i8* %unified_p, align 8
  %bf.lshr19 = lshr i8 %bf.load18, 5
  %bf.clear20 = and i8 %bf.lshr19, 1
  %bf.cast21 = trunc i8 %bf.clear20 to i1
  br i1 %bf.cast21, label %cond.true.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.17
  %14 = load %struct.charset*, %struct.charset** %charset, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %14, i32 0, i32 9
  %15 = load i32, i32* %method, align 4
  %cmp23 = icmp eq i32 %15, 2
  br i1 %cmp23, label %cond.true.29, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %16 = load %struct.charset*, %struct.charset** %charset, align 8
  %method26 = getelementptr inbounds %struct.charset, %struct.charset* %16, i32 0, i32 9
  %17 = load i32, i32* %method26, align 4
  %cmp27 = icmp eq i32 %17, 3
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %lor.lhs.false.25, %lor.lhs.false, %cond.false.17
  %18 = load %struct.charset*, %struct.charset** %charset, align 8
  %19 = load i32, i32* %c, align 4
  %call = call i32 @encode_char(%struct.charset* %18, i32 %19)
  br label %cond.end.97

cond.false.30:                                    ; preds = %lor.lhs.false.25
  %20 = load i32, i32* %c, align 4
  %21 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %21, i32 0, i32 13
  %22 = load i32, i32* %min_char, align 4
  %cmp31 = icmp slt i32 %20, %22
  br i1 %cmp31, label %cond.true.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %cond.false.30
  %23 = load i32, i32* %c, align 4
  %24 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %24, i32 0, i32 14
  %25 = load i32, i32* %max_char, align 4
  %cmp34 = icmp sgt i32 %23, %25
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %lor.lhs.false.33, %cond.false.30
  %26 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %26, i32 0, i32 15
  %27 = load i32, i32* %invalid_code, align 4
  br label %cond.end.95

cond.false.37:                                    ; preds = %lor.lhs.false.33
  %28 = load %struct.charset*, %struct.charset** %charset, align 8
  %method38 = getelementptr inbounds %struct.charset, %struct.charset* %28, i32 0, i32 9
  %29 = load i32, i32* %method38, align 4
  %cmp39 = icmp eq i32 %29, 0
  br i1 %cmp39, label %cond.true.41, label %cond.false.53

cond.true.41:                                     ; preds = %cond.false.37
  %30 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 5
  %bf.load42 = load i8, i8* %code_linear_p, align 8
  %bf.clear43 = and i8 %bf.load42, 1
  %bf.cast44 = trunc i8 %bf.clear43 to i1
  br i1 %bf.cast44, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.true.41
  %31 = load i32, i32* %c, align 4
  %32 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %32, i32 0, i32 17
  %33 = load i32, i32* %code_offset, align 4
  %sub47 = sub nsw i32 %31, %33
  %34 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %34, i32 0, i32 10
  %35 = load i32, i32* %min_code, align 4
  %add48 = add i32 %sub47, %35
  br label %cond.end.51

cond.false.49:                                    ; preds = %cond.true.41
  %36 = load %struct.charset*, %struct.charset** %charset, align 8
  %37 = load i32, i32* %c, align 4
  %call50 = call i32 @encode_char(%struct.charset* %36, i32 %37)
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.46
  %cond52 = phi i32 [ %add48, %cond.true.46 ], [ %call50, %cond.false.49 ]
  br label %cond.end.93

cond.false.53:                                    ; preds = %cond.false.37
  %38 = load %struct.charset*, %struct.charset** %charset, align 8
  %method54 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 9
  %39 = load i32, i32* %method54, align 4
  %cmp55 = icmp eq i32 %39, 1
  br i1 %cmp55, label %cond.true.57, label %cond.false.89

cond.true.57:                                     ; preds = %cond.false.53
  %40 = load %struct.charset*, %struct.charset** %charset, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 5
  %bf.load58 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr59 = lshr i8 %bf.load58, 4
  %bf.clear60 = and i8 %bf.lshr59, 1
  %bf.cast61 = trunc i8 %bf.clear60 to i1
  br i1 %bf.cast61, label %land.lhs.true.63, label %cond.false.85

land.lhs.true.63:                                 ; preds = %cond.true.57
  %41 = load i64, i64* @Vcharset_hash_table, align 8
  %call64 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %41)
  %42 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 1
  %43 = load i64, i64* %hash_index, align 8
  %call65 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call64, i64 %43)
  %call66 = call i64 @AREF(i64 %call65, i64 5)
  %call67 = call zeroext i1 @CHAR_TABLE_P(i64 %call66)
  br i1 %call67, label %cond.true.69, label %cond.false.85

cond.true.69:                                     ; preds = %land.lhs.true.63
  %44 = load i64, i64* @Vcharset_hash_table, align 8
  %call70 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %44)
  %45 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index71 = getelementptr inbounds %struct.charset, %struct.charset* %45, i32 0, i32 1
  %46 = load i64, i64* %hash_index71, align 8
  %call72 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call70, i64 %46)
  %call73 = call i64 @AREF(i64 %call72, i64 5)
  %47 = load i32, i32* %c, align 4
  %call74 = call i64 @CHAR_TABLE_REF(i64 %call73, i32 %47)
  store i64 %call74, i64* @charset_work, align 8
  %48 = load i64, i64* @charset_work, align 8
  %call75 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp76 = icmp eq i64 %48, %call75
  br i1 %cmp76, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %cond.true.69
  %49 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code79 = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 15
  %50 = load i32, i32* %invalid_code79, align 4
  br label %cond.end.83

cond.false.80:                                    ; preds = %cond.true.69
  %51 = load i64, i64* @charset_work, align 8
  %shr81 = ashr i64 %51, 2
  %conv82 = trunc i64 %shr81 to i32
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.80, %cond.true.78
  %cond84 = phi i32 [ %50, %cond.true.78 ], [ %conv82, %cond.false.80 ]
  br label %cond.end.87

cond.false.85:                                    ; preds = %land.lhs.true.63, %cond.true.57
  %52 = load %struct.charset*, %struct.charset** %charset, align 8
  %53 = load i32, i32* %c, align 4
  %call86 = call i32 @encode_char(%struct.charset* %52, i32 %53)
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.end.83
  %cond88 = phi i32 [ %cond84, %cond.end.83 ], [ %call86, %cond.false.85 ]
  br label %cond.end.91

cond.false.89:                                    ; preds = %cond.false.53
  %54 = load %struct.charset*, %struct.charset** %charset, align 8
  %55 = load i32, i32* %c, align 4
  %call90 = call i32 @encode_char(%struct.charset* %54, i32 %55)
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.end.87
  %cond92 = phi i32 [ %cond88, %cond.end.87 ], [ %call90, %cond.false.89 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.end.51
  %cond94 = phi i32 [ %cond52, %cond.end.51 ], [ %cond92, %cond.end.91 ]
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.end.93, %cond.true.36
  %cond96 = phi i32 [ %27, %cond.true.36 ], [ %cond94, %cond.end.93 ]
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.end.95, %cond.true.29
  %cond98 = phi i32 [ %call, %cond.true.29 ], [ %cond96, %cond.end.95 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.16
  %cond100 = phi i32 [ %12, %cond.true.16 ], [ %cond98, %cond.end.97 ]
  store i32 %cond100, i32* %code, align 4
  %56 = load i32, i32* %code, align 4
  %57 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code101 = getelementptr inbounds %struct.charset, %struct.charset* %57, i32 0, i32 15
  %58 = load i32, i32* %invalid_code101, align 4
  %cmp102 = icmp eq i32 %56, %58
  br i1 %cmp102, label %if.then.104, label %if.end

if.then.104:                                      ; preds = %cond.end.99
  br label %for.end

if.end:                                           ; preds = %cond.end.99
  %59 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %tobool105 = icmp ne %struct.XFontStruct* %59, null
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %if.end
  br label %for.inc

if.end.107:                                       ; preds = %if.end
  %60 = load i32, i32* %code, align 4
  %cmp108 = icmp uge i32 %60, 65536
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.107
  br label %for.end

if.end.111:                                       ; preds = %if.end.107
  %61 = load i32, i32* %code, align 4
  %shr112 = lshr i32 %61, 8
  %conv113 = trunc i32 %shr112 to i8
  %byte1 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 0
  store i8 %conv113, i8* %byte1, align 1
  %62 = load i32, i32* %code, align 4
  %and114 = and i32 %62, 255
  %conv115 = trunc i32 %and114 to i8
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b, i32 0, i32 1
  store i8 %conv115, i8* %byte2, align 1
  %63 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %call116 = call %struct.XCharStruct* @xfont_get_pcm(%struct.XFontStruct* %63, %struct.XChar2b* %char2b)
  %tobool117 = icmp ne %struct.XCharStruct* %call116, null
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %if.end.111
  br label %for.end

if.end.119:                                       ; preds = %if.end.111
  br label %for.inc

for.inc:                                          ; preds = %if.end.119, %if.then.106
  %64 = load i64, i64* %chars.addr, align 8
  %sub120 = sub nsw i64 %64, 3
  %65 = inttoptr i64 %sub120 to i8*
  %66 = bitcast i8* %65 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %66, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %67 = load i64, i64* %cdr, align 8
  store i64 %67, i64* %chars.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.118, %if.then.110, %if.then.104, %for.cond
  %68 = load i64, i64* %chars.addr, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp122 = icmp eq i64 %68, %call121
  store i1 %cmp122, i1* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %69 = load i64, i64* %chars.addr, align 8
  %call124 = call zeroext i1 @VECTORP(i64 %69)
  br i1 %call124, label %if.then.125, label %if.end.277

if.then.125:                                      ; preds = %if.else
  %70 = load i64, i64* %chars.addr, align 8
  %call126 = call i64 @ASIZE(i64 %70)
  %sub127 = sub nsw i64 %call126, 1
  store i64 %sub127, i64* %i, align 8
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.273, %if.then.125
  %71 = load i64, i64* %i, align 8
  %cmp129 = icmp sge i64 %71, 0
  br i1 %cmp129, label %for.body.131, label %for.end.274

for.body.131:                                     ; preds = %for.cond.128
  %72 = load i64, i64* %chars.addr, align 8
  %73 = load i64, i64* %i, align 8
  %call133 = call i64 @AREF(i64 %72, i64 %73)
  %shr134 = ashr i64 %call133, 2
  %conv135 = trunc i64 %shr134 to i32
  store i32 %conv135, i32* %c132, align 4
  br i1 true, label %cond.true.137, label %cond.false.141

cond.true.137:                                    ; preds = %for.body.131
  %74 = load i32, i32* %c132, align 4
  %add138 = add i32 %74, 0
  %cmp139 = icmp ult i32 %add138, 128
  br i1 %cmp139, label %land.lhs.true.146, label %cond.false.154

cond.false.141:                                   ; preds = %for.body.131
  %75 = load i32, i32* %c132, align 4
  %conv142 = sext i32 %75 to i64
  %add143 = add i64 %conv142, 0
  %cmp144 = icmp ult i64 %add143, 128
  br i1 %cmp144, label %land.lhs.true.146, label %cond.false.154

land.lhs.true.146:                                ; preds = %cond.false.141, %cond.true.137
  %76 = load %struct.charset*, %struct.charset** %charset, align 8
  %ascii_compatible_p147 = getelementptr inbounds %struct.charset, %struct.charset* %76, i32 0, i32 5
  %bf.load148 = load i8, i8* %ascii_compatible_p147, align 8
  %bf.lshr149 = lshr i8 %bf.load148, 2
  %bf.clear150 = and i8 %bf.lshr149, 1
  %bf.cast151 = trunc i8 %bf.clear150 to i1
  br i1 %bf.cast151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %land.lhs.true.146
  %77 = load i32, i32* %c132, align 4
  br label %cond.end.248

cond.false.154:                                   ; preds = %land.lhs.true.146, %cond.false.141, %cond.true.137
  %78 = load %struct.charset*, %struct.charset** %charset, align 8
  %unified_p155 = getelementptr inbounds %struct.charset, %struct.charset* %78, i32 0, i32 5
  %bf.load156 = load i8, i8* %unified_p155, align 8
  %bf.lshr157 = lshr i8 %bf.load156, 5
  %bf.clear158 = and i8 %bf.lshr157, 1
  %bf.cast159 = trunc i8 %bf.clear158 to i1
  br i1 %bf.cast159, label %cond.true.169, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %cond.false.154
  %79 = load %struct.charset*, %struct.charset** %charset, align 8
  %method162 = getelementptr inbounds %struct.charset, %struct.charset* %79, i32 0, i32 9
  %80 = load i32, i32* %method162, align 4
  %cmp163 = icmp eq i32 %80, 2
  br i1 %cmp163, label %cond.true.169, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %lor.lhs.false.161
  %81 = load %struct.charset*, %struct.charset** %charset, align 8
  %method166 = getelementptr inbounds %struct.charset, %struct.charset* %81, i32 0, i32 9
  %82 = load i32, i32* %method166, align 4
  %cmp167 = icmp eq i32 %82, 3
  br i1 %cmp167, label %cond.true.169, label %cond.false.171

cond.true.169:                                    ; preds = %lor.lhs.false.165, %lor.lhs.false.161, %cond.false.154
  %83 = load %struct.charset*, %struct.charset** %charset, align 8
  %84 = load i32, i32* %c132, align 4
  %call170 = call i32 @encode_char(%struct.charset* %83, i32 %84)
  br label %cond.end.246

cond.false.171:                                   ; preds = %lor.lhs.false.165
  %85 = load i32, i32* %c132, align 4
  %86 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_char172 = getelementptr inbounds %struct.charset, %struct.charset* %86, i32 0, i32 13
  %87 = load i32, i32* %min_char172, align 4
  %cmp173 = icmp slt i32 %85, %87
  br i1 %cmp173, label %cond.true.179, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %cond.false.171
  %88 = load i32, i32* %c132, align 4
  %89 = load %struct.charset*, %struct.charset** %charset, align 8
  %max_char176 = getelementptr inbounds %struct.charset, %struct.charset* %89, i32 0, i32 14
  %90 = load i32, i32* %max_char176, align 4
  %cmp177 = icmp sgt i32 %88, %90
  br i1 %cmp177, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %lor.lhs.false.175, %cond.false.171
  %91 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code180 = getelementptr inbounds %struct.charset, %struct.charset* %91, i32 0, i32 15
  %92 = load i32, i32* %invalid_code180, align 4
  br label %cond.end.244

cond.false.181:                                   ; preds = %lor.lhs.false.175
  %93 = load %struct.charset*, %struct.charset** %charset, align 8
  %method182 = getelementptr inbounds %struct.charset, %struct.charset* %93, i32 0, i32 9
  %94 = load i32, i32* %method182, align 4
  %cmp183 = icmp eq i32 %94, 0
  br i1 %cmp183, label %cond.true.185, label %cond.false.200

cond.true.185:                                    ; preds = %cond.false.181
  %95 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_linear_p186 = getelementptr inbounds %struct.charset, %struct.charset* %95, i32 0, i32 5
  %bf.load187 = load i8, i8* %code_linear_p186, align 8
  %bf.clear188 = and i8 %bf.load187, 1
  %bf.cast189 = trunc i8 %bf.clear188 to i1
  br i1 %bf.cast189, label %cond.true.191, label %cond.false.196

cond.true.191:                                    ; preds = %cond.true.185
  %96 = load i32, i32* %c132, align 4
  %97 = load %struct.charset*, %struct.charset** %charset, align 8
  %code_offset192 = getelementptr inbounds %struct.charset, %struct.charset* %97, i32 0, i32 17
  %98 = load i32, i32* %code_offset192, align 4
  %sub193 = sub nsw i32 %96, %98
  %99 = load %struct.charset*, %struct.charset** %charset, align 8
  %min_code194 = getelementptr inbounds %struct.charset, %struct.charset* %99, i32 0, i32 10
  %100 = load i32, i32* %min_code194, align 4
  %add195 = add i32 %sub193, %100
  br label %cond.end.198

cond.false.196:                                   ; preds = %cond.true.185
  %101 = load %struct.charset*, %struct.charset** %charset, align 8
  %102 = load i32, i32* %c132, align 4
  %call197 = call i32 @encode_char(%struct.charset* %101, i32 %102)
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.196, %cond.true.191
  %cond199 = phi i32 [ %add195, %cond.true.191 ], [ %call197, %cond.false.196 ]
  br label %cond.end.242

cond.false.200:                                   ; preds = %cond.false.181
  %103 = load %struct.charset*, %struct.charset** %charset, align 8
  %method201 = getelementptr inbounds %struct.charset, %struct.charset* %103, i32 0, i32 9
  %104 = load i32, i32* %method201, align 4
  %cmp202 = icmp eq i32 %104, 1
  br i1 %cmp202, label %cond.true.204, label %cond.false.238

cond.true.204:                                    ; preds = %cond.false.200
  %105 = load %struct.charset*, %struct.charset** %charset, align 8
  %compact_codes_p205 = getelementptr inbounds %struct.charset, %struct.charset* %105, i32 0, i32 5
  %bf.load206 = load i8, i8* %compact_codes_p205, align 8
  %bf.lshr207 = lshr i8 %bf.load206, 4
  %bf.clear208 = and i8 %bf.lshr207, 1
  %bf.cast209 = trunc i8 %bf.clear208 to i1
  br i1 %bf.cast209, label %land.lhs.true.211, label %cond.false.234

land.lhs.true.211:                                ; preds = %cond.true.204
  %106 = load i64, i64* @Vcharset_hash_table, align 8
  %call212 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %106)
  %107 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index213 = getelementptr inbounds %struct.charset, %struct.charset* %107, i32 0, i32 1
  %108 = load i64, i64* %hash_index213, align 8
  %call214 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call212, i64 %108)
  %call215 = call i64 @AREF(i64 %call214, i64 5)
  %call216 = call zeroext i1 @CHAR_TABLE_P(i64 %call215)
  br i1 %call216, label %cond.true.218, label %cond.false.234

cond.true.218:                                    ; preds = %land.lhs.true.211
  %109 = load i64, i64* @Vcharset_hash_table, align 8
  %call219 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %109)
  %110 = load %struct.charset*, %struct.charset** %charset, align 8
  %hash_index220 = getelementptr inbounds %struct.charset, %struct.charset* %110, i32 0, i32 1
  %111 = load i64, i64* %hash_index220, align 8
  %call221 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call219, i64 %111)
  %call222 = call i64 @AREF(i64 %call221, i64 5)
  %112 = load i32, i32* %c132, align 4
  %call223 = call i64 @CHAR_TABLE_REF(i64 %call222, i32 %112)
  store i64 %call223, i64* @charset_work, align 8
  %113 = load i64, i64* @charset_work, align 8
  %call224 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp225 = icmp eq i64 %113, %call224
  br i1 %cmp225, label %cond.true.227, label %cond.false.229

cond.true.227:                                    ; preds = %cond.true.218
  %114 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code228 = getelementptr inbounds %struct.charset, %struct.charset* %114, i32 0, i32 15
  %115 = load i32, i32* %invalid_code228, align 4
  br label %cond.end.232

cond.false.229:                                   ; preds = %cond.true.218
  %116 = load i64, i64* @charset_work, align 8
  %shr230 = ashr i64 %116, 2
  %conv231 = trunc i64 %shr230 to i32
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.229, %cond.true.227
  %cond233 = phi i32 [ %115, %cond.true.227 ], [ %conv231, %cond.false.229 ]
  br label %cond.end.236

cond.false.234:                                   ; preds = %land.lhs.true.211, %cond.true.204
  %117 = load %struct.charset*, %struct.charset** %charset, align 8
  %118 = load i32, i32* %c132, align 4
  %call235 = call i32 @encode_char(%struct.charset* %117, i32 %118)
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.234, %cond.end.232
  %cond237 = phi i32 [ %cond233, %cond.end.232 ], [ %call235, %cond.false.234 ]
  br label %cond.end.240

cond.false.238:                                   ; preds = %cond.false.200
  %119 = load %struct.charset*, %struct.charset** %charset, align 8
  %120 = load i32, i32* %c132, align 4
  %call239 = call i32 @encode_char(%struct.charset* %119, i32 %120)
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.false.238, %cond.end.236
  %cond241 = phi i32 [ %cond237, %cond.end.236 ], [ %call239, %cond.false.238 ]
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.end.240, %cond.end.198
  %cond243 = phi i32 [ %cond199, %cond.end.198 ], [ %cond241, %cond.end.240 ]
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.end.242, %cond.true.179
  %cond245 = phi i32 [ %92, %cond.true.179 ], [ %cond243, %cond.end.242 ]
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.end.244, %cond.true.169
  %cond247 = phi i32 [ %call170, %cond.true.169 ], [ %cond245, %cond.end.244 ]
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end.246, %cond.true.153
  %cond249 = phi i32 [ %77, %cond.true.153 ], [ %cond247, %cond.end.246 ]
  store i32 %cond249, i32* %code136, align 4
  %121 = load i32, i32* %code136, align 4
  %122 = load %struct.charset*, %struct.charset** %charset, align 8
  %invalid_code251 = getelementptr inbounds %struct.charset, %struct.charset* %122, i32 0, i32 15
  %123 = load i32, i32* %invalid_code251, align 4
  %cmp252 = icmp eq i32 %121, %123
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %cond.end.248
  br label %for.inc.273

if.end.255:                                       ; preds = %cond.end.248
  %124 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %tobool256 = icmp ne %struct.XFontStruct* %124, null
  br i1 %tobool256, label %if.end.258, label %if.then.257

if.then.257:                                      ; preds = %if.end.255
  br label %for.end.274

if.end.258:                                       ; preds = %if.end.255
  %125 = load i32, i32* %code136, align 4
  %cmp259 = icmp uge i32 %125, 65536
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %if.end.258
  br label %for.inc.273

if.end.262:                                       ; preds = %if.end.258
  %126 = load i32, i32* %code136, align 4
  %shr263 = lshr i32 %126, 8
  %conv264 = trunc i32 %shr263 to i8
  %byte1265 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b250, i32 0, i32 0
  store i8 %conv264, i8* %byte1265, align 1
  %127 = load i32, i32* %code136, align 4
  %and266 = and i32 %127, 255
  %conv267 = trunc i32 %and266 to i8
  %byte2268 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %char2b250, i32 0, i32 1
  store i8 %conv267, i8* %byte2268, align 1
  %128 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %call269 = call %struct.XCharStruct* @xfont_get_pcm(%struct.XFontStruct* %128, %struct.XChar2b* %char2b250)
  %tobool270 = icmp ne %struct.XCharStruct* %call269, null
  br i1 %tobool270, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.end.262
  br label %for.end.274

if.end.272:                                       ; preds = %if.end.262
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272, %if.then.261, %if.then.254
  %129 = load i64, i64* %i, align 8
  %dec = add nsw i64 %129, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond.128

for.end.274:                                      ; preds = %if.then.271, %if.then.257, %for.cond.128
  %130 = load i64, i64* %i, align 8
  %cmp275 = icmp sge i64 %130, 0
  store i1 %cmp275, i1* %retval
  br label %return

if.end.277:                                       ; preds = %if.else
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.278, %for.end.274, %for.end
  %131 = load i1, i1* %retval
  ret i1 %131
}

declare void @block_input() #1

declare void @x_catch_errors(%struct._XDisplay*) #1

declare i8** @XListFonts(%struct._XDisplay*, i8*, i32, i32*) #1

declare zeroext i1 @x_had_errors_p(%struct._XDisplay*) #1

declare void @x_clear_errors(%struct._XDisplay*) #1

declare i32 @XFreeFontNames(i8**) #1

declare %struct.Lisp_Vector* @XVECTOR(i64) #1

declare i64 @ASIZE(i64) #1

declare void @ASET(i64, i64, i64) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_font_names(i8* %name1, i8* %name2) #0 {
entry:
  %name1.addr = alloca i8*, align 8
  %name2.addr = alloca i8*, align 8
  %n1 = alloca i8**, align 8
  %n2 = alloca i8**, align 8
  store i8* %name1, i8** %name1.addr, align 8
  store i8* %name2, i8** %name2.addr, align 8
  %0 = load i8*, i8** %name1.addr, align 8
  %1 = bitcast i8* %0 to i8**
  store i8** %1, i8*** %n1, align 8
  %2 = load i8*, i8** %name2.addr, align 8
  %3 = bitcast i8* %2 to i8**
  store i8** %3, i8*** %n2, align 8
  %4 = load i8**, i8*** %n1, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8**, i8*** %n2, align 8
  %7 = load i8*, i8** %6, align 8
  %call = call i32 @xstrcasecmp(i8* %5, i8* %7)
  ret i32 %call
}

declare i32 @xstrcasecmp(i8*, i8*) #1

declare i64 @font_make_entity() #1

; Function Attrs: nounwind uwtable
define internal i64 @xfont_decode_coding_xlfd(i8* %xlfd, i32 %len, i8* %output) #0 {
entry:
  %xlfd.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %xlfd, i8** %xlfd.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %xlfd.addr, align 8
  store i8* %0, i8** %p0, align 8
  %1 = load i8*, i8** %output.addr, align 8
  store i8* %1, i8** %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %p0, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %p0, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p0, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %c, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %6 = load i32, i32* %c, align 4
  %add = add i32 %6, 0
  %cmp = icmp ule i32 %add, 127
  br i1 %cmp, label %cond.true.6, label %cond.false.8

cond.false:                                       ; preds = %while.body
  %7 = load i32, i32* %c, align 4
  %conv2 = sext i32 %7 to i64
  %add3 = add i64 %conv2, 0
  %cmp4 = icmp ule i64 %add3, 127
  br i1 %cmp4, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false, %cond.true
  %8 = load i32, i32* %c, align 4
  %conv7 = trunc i32 %8 to i8
  %9 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %conv7, i8* %arrayidx, align 1
  br label %cond.end.51

cond.false.8:                                     ; preds = %cond.false, %cond.true
  br i1 true, label %cond.true.9, label %cond.false.13

cond.true.9:                                      ; preds = %cond.false.8
  %10 = load i32, i32* %c, align 4
  %add10 = add i32 %10, 0
  %cmp11 = icmp ule i32 %add10, 2047
  br i1 %cmp11, label %cond.true.18, label %cond.false.24

cond.false.13:                                    ; preds = %cond.false.8
  %11 = load i32, i32* %c, align 4
  %conv14 = sext i32 %11 to i64
  %add15 = add i64 %conv14, 0
  %cmp16 = icmp ule i64 %add15, 2047
  br i1 %cmp16, label %cond.true.18, label %cond.false.24

cond.true.18:                                     ; preds = %cond.false.13, %cond.true.9
  %12 = load i32, i32* %c, align 4
  %shr = ashr i32 %12, 6
  %or = or i32 192, %shr
  %conv19 = trunc i32 %or to i8
  %13 = load i8*, i8** %p1, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %conv19, i8* %arrayidx20, align 1
  %14 = load i32, i32* %c, align 4
  %and = and i32 %14, 63
  %or21 = or i32 128, %and
  %conv22 = trunc i32 %or21 to i8
  %15 = load i8*, i8** %p1, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  br label %cond.end.49

cond.false.24:                                    ; preds = %cond.false.13, %cond.true.9
  br i1 true, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %cond.false.24
  %16 = load i32, i32* %c, align 4
  %add26 = add i32 %16, 0
  %cmp27 = icmp ule i32 %add26, 65535
  br i1 %cmp27, label %cond.true.34, label %cond.false.48

cond.false.29:                                    ; preds = %cond.false.24
  %17 = load i32, i32* %c, align 4
  %conv30 = sext i32 %17 to i64
  %add31 = add i64 %conv30, 0
  %cmp32 = icmp ule i64 %add31, 65535
  br i1 %cmp32, label %cond.true.34, label %cond.false.48

cond.true.34:                                     ; preds = %cond.false.29, %cond.true.25
  %18 = load i32, i32* %c, align 4
  %shr35 = ashr i32 %18, 12
  %or36 = or i32 224, %shr35
  %conv37 = trunc i32 %or36 to i8
  %19 = load i8*, i8** %p1, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %conv37, i8* %arrayidx38, align 1
  %20 = load i32, i32* %c, align 4
  %shr39 = ashr i32 %20, 6
  %and40 = and i32 %shr39, 63
  %or41 = or i32 128, %and40
  %conv42 = trunc i32 %or41 to i8
  %21 = load i8*, i8** %p1, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %conv42, i8* %arrayidx43, align 1
  %22 = load i32, i32* %c, align 4
  %and44 = and i32 %22, 63
  %or45 = or i32 128, %and44
  %conv46 = trunc i32 %or45 to i8
  %23 = load i8*, i8** %p1, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %conv46, i8* %arrayidx47, align 1
  br label %cond.end

cond.false.48:                                    ; preds = %cond.false.29, %cond.true.25
  %24 = load i32, i32* %c, align 4
  %25 = load i8*, i8** %p1, align 8
  %call = call i32 @char_string(i32 %24, i8* %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.48, %cond.true.34
  %cond = phi i32 [ 3, %cond.true.34 ], [ %call, %cond.false.48 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end, %cond.true.18
  %cond50 = phi i32 [ 2, %cond.true.18 ], [ %cond, %cond.end ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true.6
  %cond52 = phi i32 [ 1, %cond.true.6 ], [ %cond50, %cond.end.49 ]
  %26 = load i8*, i8** %p1, align 8
  %idx.ext = sext i32 %cond52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %p1, align 8
  %27 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %len.addr, align 4
  %cmp53 = icmp eq i32 %dec, 0
  br i1 %cmp53, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.51
  br label %while.end

if.end:                                           ; preds = %cond.end.51
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %28 = load i8*, i8** %p1, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %p1, align 8
  %30 = load i8*, i8** %output.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

declare i32 @font_parse_xlfd(i8*, i64, i64) #1

declare double @XFLOAT_DATA(i64) #1

declare i64 @fast_c_string_match_ignore_case(i64, i8*, i64) #1

declare i64 @Fcons(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i64* @aref_addr(i64, i64) #1

declare void @vcopy(i64, i64, i64*, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @xfont_supported_scripts(%struct._XDisplay* %display, i8* %fontname, i64 %props, %struct.charset* %encoding) #0 {
entry:
  %retval = alloca i64, align 8
  %display.addr = alloca %struct._XDisplay*, align 8
  %fontname.addr = alloca i8*, align 8
  %props.addr = alloca i64, align 8
  %encoding.addr = alloca %struct.charset*, align 8
  %scripts = alloca i64, align 8
  %xfont = alloca %struct.XFontStruct*, align 8
  %val = alloca i64, align 8
  %script = alloca i64, align 8
  %chars = alloca i64, align 8
  store %struct._XDisplay* %display, %struct._XDisplay** %display.addr, align 8
  store i8* %fontname, i8** %fontname.addr, align 8
  store i64 %props, i64* %props.addr, align 8
  store %struct.charset* %encoding, %struct.charset** %encoding.addr, align 8
  %0 = load i64, i64* %props.addr, align 8
  %call = call i64 @AREF(i64 %0, i64 2)
  %call1 = call i64 @builtin_lisp_symbol(i32 583)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @intern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i64 @intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i64 @list2(i64 %call2, i64 %call3)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %props.addr, align 8
  %call5 = call i64 @AREF(i64 %1, i64 2)
  %call6 = call i64 @builtin_lisp_symbol(i32 597)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %call9 = call i64 @intern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %call10 = call i64 @list1(i64 %call9)
  store i64 %call10, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %2 = load i64, i64* %props.addr, align 8
  %3 = load i64, i64* @xfont_scripts_cache, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 901)
  %call13 = call i64 @Fgethash(i64 %2, i64 %3, i64 %call12)
  store i64 %call13, i64* %scripts, align 8
  %4 = load i64, i64* %scripts, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp15 = icmp eq i64 %4, %call14
  br i1 %cmp15, label %if.then.16, label %if.end.71

if.then.16:                                       ; preds = %if.end.11
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %scripts, align 8
  %5 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %6 = load i8*, i8** %fontname.addr, align 8
  %call18 = call %struct.XFontStruct* @XLoadQueryFont(%struct._XDisplay* %5, i8* %6)
  store %struct.XFontStruct* %call18, %struct.XFontStruct** %xfont, align 8
  %7 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %tobool = icmp ne %struct.XFontStruct* %7, null
  br i1 %tobool, label %if.then.19, label %if.end.54

if.then.19:                                       ; preds = %if.then.16
  %8 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %per_char = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %8, i32 0, i32 13
  %9 = load %struct.XCharStruct*, %struct.XCharStruct** %per_char, align 8
  %tobool20 = icmp ne %struct.XCharStruct* %9, null
  br i1 %tobool20, label %if.then.21, label %if.end.52

if.then.21:                                       ; preds = %if.then.19
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 260), align 8
  store i64 %10, i64* %val, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %11 = load i64, i64* %val, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp22 = icmp eq i32 %conv, 3
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 0
  %15 = load i64, i64* %car, align 8
  %and24 = and i64 %15, 7
  %conv25 = trunc i64 %and24 to i32
  %cmp26 = icmp eq i32 %conv25, 3
  br i1 %cmp26, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.body
  %16 = load i64, i64* %val, align 8
  %sub28 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub28 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %car29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 0
  %19 = load i64, i64* %car29, align 8
  %sub30 = sub nsw i64 %19, 3
  %20 = inttoptr i64 %sub30 to i8*
  %21 = bitcast i8* %20 to %struct.Lisp_Cons*
  %car31 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %21, i32 0, i32 0
  %22 = load i64, i64* %car31, align 8
  %and32 = and i64 %22, 7
  %conv33 = trunc i64 %and32 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %land.lhs.true
  %23 = load i64, i64* %val, align 8
  %sub37 = sub nsw i64 %23, 3
  %24 = inttoptr i64 %sub37 to i8*
  %25 = bitcast i8* %24 to %struct.Lisp_Cons*
  %car38 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %25, i32 0, i32 0
  %26 = load i64, i64* %car38, align 8
  %sub39 = sub nsw i64 %26, 3
  %27 = inttoptr i64 %sub39 to i8*
  %28 = bitcast i8* %27 to %struct.Lisp_Cons*
  %car40 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %28, i32 0, i32 0
  %29 = load i64, i64* %car40, align 8
  store i64 %29, i64* %script, align 8
  %30 = load i64, i64* %val, align 8
  %sub41 = sub nsw i64 %30, 3
  %31 = inttoptr i64 %sub41 to i8*
  %32 = bitcast i8* %31 to %struct.Lisp_Cons*
  %car42 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %32, i32 0, i32 0
  %33 = load i64, i64* %car42, align 8
  %sub43 = sub nsw i64 %33, 3
  %34 = inttoptr i64 %sub43 to i8*
  %35 = bitcast i8* %34 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %35, i32 0, i32 1
  %cdr = bitcast %union.anon.10* %u to i64*
  %36 = load i64, i64* %cdr, align 8
  store i64 %36, i64* %chars, align 8
  %37 = load i64, i64* %chars, align 8
  %38 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %39 = load %struct.charset*, %struct.charset** %encoding.addr, align 8
  %call44 = call zeroext i1 @xfont_chars_supported(i64 %37, %struct.XFontStruct* %38, %struct.charset* %39, %struct.charset* null)
  br i1 %call44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.36
  %40 = load i64, i64* %script, align 8
  %41 = load i64, i64* %scripts, align 8
  %call46 = call i64 @Fcons(i64 %40, i64 %41)
  store i64 %call46, i64* %scripts, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.36
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %42 = load i64, i64* %val, align 8
  %sub49 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub49 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u50 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr51 = bitcast %union.anon.10* %u50 to i64*
  %45 = load i64, i64* %cdr51, align 8
  store i64 %45, i64* %val, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.end.52:                                        ; preds = %for.end, %if.then.19
  %46 = load %struct._XDisplay*, %struct._XDisplay** %display.addr, align 8
  %47 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont, align 8
  %call53 = call i32 @XFreeFont(%struct._XDisplay* %46, %struct.XFontStruct* %47)
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.52, %if.then.16
  %48 = load i64, i64* %props.addr, align 8
  %call55 = call i64 @AREF(i64 %48, i64 3)
  %call56 = call i64 @builtin_lisp_symbol(i32 578)
  %cmp57 = icmp eq i64 %call55, %call56
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.68

land.lhs.true.59:                                 ; preds = %if.end.54
  %call60 = call i64 @builtin_lisp_symbol(i32 605)
  %49 = load i64, i64* %scripts, align 8
  %call61 = call i64 @Fmemq(i64 %call60, i64 %49)
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %call61, %call62
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %land.lhs.true.59
  %call66 = call i64 @builtin_lisp_symbol(i32 605)
  %50 = load i64, i64* %scripts, align 8
  %call67 = call i64 @Fcons(i64 %call66, i64 %50)
  store i64 %call67, i64* %scripts, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %land.lhs.true.59, %if.end.54
  %51 = load i64, i64* %props.addr, align 8
  %call69 = call i64 @Fcopy_sequence(i64 %51)
  %52 = load i64, i64* %scripts, align 8
  %53 = load i64, i64* @xfont_scripts_cache, align 8
  %call70 = call i64 @Fputhash(i64 %call69, i64 %52, i64 %53)
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.68, %if.end.11
  %54 = load i64, i64* %scripts, align 8
  store i64 %54, i64* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.8, %if.then
  %55 = load i64, i64* %retval
  ret i64 %55
}

declare i64 @Fmemq(i64, i64) #1

declare void @x_uncatch_errors() #1

declare void @unblock_input() #1

declare void @font_add_log(i8*, i64, i64) #1

declare i64 @build_string(i8*) #1

declare i32 @encode_char(%struct.charset*, i32) #1

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @CHAR_TABLE_REF(i64, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.XCharStruct* @xfont_get_pcm(%struct.XFontStruct* %xfont, %struct.XChar2b* %char2b) #0 {
entry:
  %xfont.addr = alloca %struct.XFontStruct*, align 8
  %char2b.addr = alloca %struct.XChar2b*, align 8
  %pcm = alloca %struct.XCharStruct*, align 8
  store %struct.XFontStruct* %xfont, %struct.XFontStruct** %xfont.addr, align 8
  store %struct.XChar2b* %char2b, %struct.XChar2b** %char2b.addr, align 8
  store %struct.XCharStruct* null, %struct.XCharStruct** %pcm, align 8
  %0 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %per_char = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %0, i32 0, i32 13
  %1 = load %struct.XCharStruct*, %struct.XCharStruct** %per_char, align 8
  %cmp = icmp ne %struct.XCharStruct* %1, null
  br i1 %cmp, label %if.then, label %if.else.63

if.then:                                          ; preds = %entry
  %2 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_byte1 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %2, i32 0, i32 5
  %3 = load i32, i32* %min_byte1, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %max_byte1 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %4, i32 0, i32 6
  %5 = load i32, i32* %max_byte1, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte1 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %6, i32 0, i32 0
  %7 = load i8, i8* %byte1, align 1
  %conv = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then.3
  %8 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte2 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %8, i32 0, i32 1
  %9 = load i8, i8* %byte2, align 1
  %conv7 = zext i8 %9 to i32
  %10 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_char_or_byte2 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %10, i32 0, i32 3
  %11 = load i32, i32* %min_char_or_byte2, align 4
  %cmp8 = icmp uge i32 %conv7, %11
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %12 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte211 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %12, i32 0, i32 1
  %13 = load i8, i8* %byte211, align 1
  %conv12 = zext i8 %13 to i32
  %14 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %max_char_or_byte2 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %14, i32 0, i32 4
  %15 = load i32, i32* %max_char_or_byte2, align 4
  %cmp13 = icmp ule i32 %conv12, %15
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.10
  %16 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %per_char16 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %16, i32 0, i32 13
  %17 = load %struct.XCharStruct*, %struct.XCharStruct** %per_char16, align 8
  %18 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte217 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %18, i32 0, i32 1
  %19 = load i8, i8* %byte217, align 1
  %conv18 = zext i8 %19 to i32
  %idx.ext = sext i32 %conv18 to i64
  %add.ptr = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %17, i64 %idx.ext
  %20 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_char_or_byte219 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %20, i32 0, i32 3
  %21 = load i32, i32* %min_char_or_byte219, align 4
  %idx.ext20 = zext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext20
  %add.ptr21 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %add.ptr, i64 %idx.neg
  store %struct.XCharStruct* %add.ptr21, %struct.XCharStruct** %pcm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true.10, %land.lhs.true.6, %if.then.3
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true, %if.then
  %22 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte122 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %22, i32 0, i32 0
  %23 = load i8, i8* %byte122, align 1
  %conv23 = zext i8 %23 to i32
  %24 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_byte124 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %24, i32 0, i32 5
  %25 = load i32, i32* %min_byte124, align 4
  %cmp25 = icmp uge i32 %conv23, %25
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.61

land.lhs.true.27:                                 ; preds = %if.else
  %26 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte128 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %26, i32 0, i32 0
  %27 = load i8, i8* %byte128, align 1
  %conv29 = zext i8 %27 to i32
  %28 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %max_byte130 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %28, i32 0, i32 6
  %29 = load i32, i32* %max_byte130, align 4
  %cmp31 = icmp ule i32 %conv29, %29
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.61

land.lhs.true.33:                                 ; preds = %land.lhs.true.27
  %30 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte234 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %30, i32 0, i32 1
  %31 = load i8, i8* %byte234, align 1
  %conv35 = zext i8 %31 to i32
  %32 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_char_or_byte236 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %32, i32 0, i32 3
  %33 = load i32, i32* %min_char_or_byte236, align 4
  %cmp37 = icmp uge i32 %conv35, %33
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.61

land.lhs.true.39:                                 ; preds = %land.lhs.true.33
  %34 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte240 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %34, i32 0, i32 1
  %35 = load i8, i8* %byte240, align 1
  %conv41 = zext i8 %35 to i32
  %36 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %max_char_or_byte242 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %36, i32 0, i32 4
  %37 = load i32, i32* %max_char_or_byte242, align 4
  %cmp43 = icmp ule i32 %conv41, %37
  br i1 %cmp43, label %if.then.45, label %if.end.61

if.then.45:                                       ; preds = %land.lhs.true.39
  %38 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %per_char46 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %38, i32 0, i32 13
  %39 = load %struct.XCharStruct*, %struct.XCharStruct** %per_char46, align 8
  %40 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %max_char_or_byte247 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %40, i32 0, i32 4
  %41 = load i32, i32* %max_char_or_byte247, align 4
  %42 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_char_or_byte248 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %42, i32 0, i32 3
  %43 = load i32, i32* %min_char_or_byte248, align 4
  %sub = sub i32 %41, %43
  %add = add i32 %sub, 1
  %44 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte149 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %44, i32 0, i32 0
  %45 = load i8, i8* %byte149, align 1
  %conv50 = zext i8 %45 to i32
  %46 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_byte151 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %46, i32 0, i32 5
  %47 = load i32, i32* %min_byte151, align 4
  %sub52 = sub i32 %conv50, %47
  %mul = mul i32 %add, %sub52
  %idx.ext53 = zext i32 %mul to i64
  %add.ptr54 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %39, i64 %idx.ext53
  %48 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte255 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %48, i32 0, i32 1
  %49 = load i8, i8* %byte255, align 1
  %conv56 = zext i8 %49 to i32
  %50 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_char_or_byte257 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %50, i32 0, i32 3
  %51 = load i32, i32* %min_char_or_byte257, align 4
  %sub58 = sub i32 %conv56, %51
  %idx.ext59 = zext i32 %sub58 to i64
  %add.ptr60 = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %add.ptr54, i64 %idx.ext59
  store %struct.XCharStruct* %add.ptr60, %struct.XCharStruct** %pcm, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.45, %land.lhs.true.39, %land.lhs.true.33, %land.lhs.true.27, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end
  br label %if.end.77

if.else.63:                                       ; preds = %entry
  %52 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte264 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %52, i32 0, i32 1
  %53 = load i8, i8* %byte264, align 1
  %conv65 = zext i8 %53 to i32
  %54 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %min_char_or_byte266 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %54, i32 0, i32 3
  %55 = load i32, i32* %min_char_or_byte266, align 4
  %cmp67 = icmp uge i32 %conv65, %55
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.76

land.lhs.true.69:                                 ; preds = %if.else.63
  %56 = load %struct.XChar2b*, %struct.XChar2b** %char2b.addr, align 8
  %byte270 = getelementptr inbounds %struct.XChar2b, %struct.XChar2b* %56, i32 0, i32 1
  %57 = load i8, i8* %byte270, align 1
  %conv71 = zext i8 %57 to i32
  %58 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %max_char_or_byte272 = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %58, i32 0, i32 4
  %59 = load i32, i32* %max_char_or_byte272, align 4
  %cmp73 = icmp ule i32 %conv71, %59
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.69
  %60 = load %struct.XFontStruct*, %struct.XFontStruct** %xfont.addr, align 8
  %max_bounds = getelementptr inbounds %struct.XFontStruct, %struct.XFontStruct* %60, i32 0, i32 12
  store %struct.XCharStruct* %max_bounds, %struct.XCharStruct** %pcm, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %land.lhs.true.69, %if.else.63
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.62
  %61 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %cmp78 = icmp eq %struct.XCharStruct* %61, null
  br i1 %cmp78, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.77
  %62 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %width = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %62, i32 0, i32 2
  %63 = load i16, i16* %width, align 2
  %conv80 = sext i16 %63 to i32
  %cmp81 = icmp eq i32 %conv80, 0
  br i1 %cmp81, label %land.lhs.true.83, label %cond.false

land.lhs.true.83:                                 ; preds = %lor.lhs.false
  %64 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %rbearing = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %64, i32 0, i32 1
  %65 = load i16, i16* %rbearing, align 2
  %conv84 = sext i16 %65 to i32
  %66 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  %lbearing = getelementptr inbounds %struct.XCharStruct, %struct.XCharStruct* %66, i32 0, i32 0
  %67 = load i16, i16* %lbearing, align 2
  %conv85 = sext i16 %67 to i32
  %sub86 = sub nsw i32 %conv84, %conv85
  %cmp87 = icmp eq i32 %sub86, 0
  br i1 %cmp87, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.83, %if.end.77
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.83, %lor.lhs.false
  %68 = load %struct.XCharStruct*, %struct.XCharStruct** %pcm, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.XCharStruct* [ null, %cond.true ], [ %68, %cond.false ]
  ret %struct.XCharStruct* %cond
}

declare zeroext i1 @VECTORP(i64) #1

declare i32 @char_string(i32, i8*) #1

declare i64 @list2(i64, i64) #1

declare i64 @intern(i8*) #1

declare i64 @list1(i64) #1

declare i64 @Fgethash(i64, i64, i64) #1

declare %struct.XFontStruct* @XLoadQueryFont(%struct._XDisplay*, i8*) #1

declare i32 @XFreeFont(%struct._XDisplay*, %struct.XFontStruct*) #1

declare i64 @Fputhash(i64, i64, i64) #1

declare i64 @Fcopy_sequence(i64) #1

declare i32 @XGetFontProperty(%struct.XFontStruct*, i64, i64*) #1

declare i8* @XGetAtomName(%struct._XDisplay*, i64) #1

declare i32 @XFree(i8*) #1

declare i64 @font_intern_prop(i8*, i64, i1 zeroext) #1

declare i64 @copy_font_spec(i64) #1

declare i64 @Fdowncase(i64) #1

declare i64 @make_string(i8*, i64) #1

declare i64 @font_make_object(i32, i64, i32) #1

declare i8* @SSDATA(i64) #1

declare %struct.font* @XFONT_OBJECT(i64) #1

declare i64 @Ffont_get(i64, i64) #1

declare i64 @fast_string_match_ignore_case(i64, i64) #1

declare %struct.x_display_info* @x_display_info_for_display(%struct._XDisplay*) #1

declare i32 @XSetFont(%struct._XDisplay*, %struct._XGC*, i64) #1

declare i64 @SPECPDL_INDEX() #1

declare i8* @record_xmalloc(i64) #1

declare i32 @XDrawImageString(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, i8*, i32) #1

declare i32 @XDrawString(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, i8*, i32) #1

declare i64 @unbind_to(i64, i64) #1

declare i32 @XDrawImageString16(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, %struct.XChar2b*, i32) #1

declare i32 @XDrawString16(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, %struct.XChar2b*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
